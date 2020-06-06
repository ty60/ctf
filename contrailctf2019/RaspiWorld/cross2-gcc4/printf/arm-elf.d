
arm-elf.x:     file format elf32-littlearm


Disassembly of section .text:

00001400 <_start>:
    1400:	e59fd038 	ldr	sp, [pc, #56]	; 1440 <_stack_addr>
    1404:	eb000054 	bl	155c <_startmain>

00001408 <__exit>:
    1408:	ef000011 	svc	0x00000011
    140c:	e1a0f00e 	mov	pc, lr

00001410 <__read>:
    1410:	ef00006a 	svc	0x0000006a
    1414:	e1a0f00e 	mov	pc, lr

00001418 <__write>:
    1418:	ef000069 	svc	0x00000069
    141c:	e1a0f00e 	mov	pc, lr

00001420 <__open>:
    1420:	e3a01006 	mov	r1, #6
    1424:	ef000066 	svc	0x00000066
    1428:	e1a0f00e 	mov	pc, lr

0000142c <__close>:
    142c:	ef000068 	svc	0x00000068
    1430:	e1a0f00e 	mov	pc, lr
    1434:	e1a00000 	nop			; (mov r0, r0)
    1438:	e1a00000 	nop			; (mov r0, r0)
    143c:	e1a00000 	nop			; (mov r0, r0)

00001440 <_stack_addr>:
    1440:	0000f910 	.word	0x0000f910
    1444:	e1a00000 	nop			; (mov r0, r0)
    1448:	e1a00000 	nop			; (mov r0, r0)
    144c:	e1a00000 	nop			; (mov r0, r0)

00001450 <_exit>:
    1450:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1454:	ebffffeb 	bl	1408 <__exit>

00001458 <read>:
    1458:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    145c:	ebffffeb 	bl	1410 <__read>
    1460:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001464 <write>:
    1464:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1468:	ebffffea 	bl	1418 <__write>
    146c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001470 <open>:
    1470:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1474:	ebffffe9 	bl	1420 <__open>
    1478:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0000147c <close>:
    147c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1480:	ebffffe9 	bl	142c <__close>
    1484:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001488 <fstat>:
    1488:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    148c:	e1a00001 	mov	r0, r1
    1490:	e3a01000 	mov	r1, #0
    1494:	e3a0203c 	mov	r2, #60	; 0x3c
    1498:	eb000046 	bl	15b8 <memset>
    149c:	e3a00000 	mov	r0, #0
    14a0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

000014a4 <lseek>:
    14a4:	e1a00001 	mov	r0, r1
    14a8:	e12fff1e 	bx	lr

000014ac <sbrk>:
    14ac:	e59f2010 	ldr	r2, [pc, #16]	; 14c4 <sbrk+0x18>
    14b0:	e5923000 	ldr	r3, [r2]
    14b4:	e0830000 	add	r0, r3, r0
    14b8:	e5820000 	str	r0, [r2]
    14bc:	e1a00003 	mov	r0, r3
    14c0:	e12fff1e 	bx	lr
    14c4:	0000ac00 	.word	0x0000ac00

000014c8 <isatty>:
    14c8:	e3a00001 	mov	r0, #1
    14cc:	e12fff1e 	bx	lr

000014d0 <_read>:
    14d0:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    14d4:	ebffffdf 	bl	1458 <read>
    14d8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

000014dc <_write>:
    14dc:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    14e0:	ebffffdf 	bl	1464 <write>
    14e4:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

000014e8 <_open>:
    14e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    14ec:	ebffffdf 	bl	1470 <open>
    14f0:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

000014f4 <_close>:
    14f4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    14f8:	ebffffdf 	bl	147c <close>
    14fc:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001500 <_fstat>:
    1500:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1504:	ebffffdf 	bl	1488 <fstat>
    1508:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

0000150c <_lseek>:
    150c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1510:	ebffffe3 	bl	14a4 <lseek>
    1514:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001518 <_sbrk>:
    1518:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    151c:	ebffffe2 	bl	14ac <sbrk>
    1520:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001524 <_isatty>:
    1524:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1528:	ebffffe6 	bl	14c8 <isatty>
    152c:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00001530 <main>:
    1530:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1534:	e59f0014 	ldr	r0, [pc, #20]	; 1550 <main+0x20>
    1538:	e59f3014 	ldr	r3, [pc, #20]	; 1554 <main+0x24>
    153c:	e5931004 	ldr	r1, [r3, #4]
    1540:	e59f2010 	ldr	r2, [pc, #16]	; 1558 <main+0x28>
    1544:	eb000066 	bl	16e4 <printf>
    1548:	e3a00000 	mov	r0, #0
    154c:	eb00000c 	bl	1584 <exit>
    1550:	0000a828 	.word	0x0000a828
    1554:	0000ac00 	.word	0x0000ac00
    1558:	0000a854 	.word	0x0000a854

0000155c <_startmain>:
    155c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1560:	e59f3014 	ldr	r3, [pc, #20]	; 157c <_startmain+0x20>
    1564:	e1a00003 	mov	r0, r3
    1568:	e3a01000 	mov	r1, #0
    156c:	e59f200c 	ldr	r2, [pc, #12]	; 1580 <_startmain+0x24>
    1570:	e0632002 	rsb	r2, r3, r2
    1574:	eb00000f 	bl	15b8 <memset>
    1578:	ebffffec 	bl	1530 <main>
    157c:	0000b4c0 	.word	0x0000b4c0
    1580:	0000f508 	.word	0x0000f508

00001584 <exit>:
    1584:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    1588:	e3a01000 	mov	r1, #0
    158c:	e1a04000 	mov	r4, r0
    1590:	eb000881 	bl	379c <__call_exitprocs>
    1594:	e59f3018 	ldr	r3, [pc, #24]	; 15b4 <exit+0x30>
    1598:	e5930000 	ldr	r0, [r3]
    159c:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    15a0:	e3530000 	cmp	r3, #0
    15a4:	11a0e00f 	movne	lr, pc
    15a8:	112fff13 	bxne	r3
    15ac:	e1a00004 	mov	r0, r4
    15b0:	ebffffa6 	bl	1450 <_exit>
    15b4:	0000a85c 	.word	0x0000a85c

000015b8 <memset>:
    15b8:	e3100003 	tst	r0, #3
    15bc:	e92d0030 	push	{r4, r5}
    15c0:	e1a03000 	mov	r3, r0
    15c4:	0a000037 	beq	16a8 <memset+0xf0>
    15c8:	e3520000 	cmp	r2, #0
    15cc:	e2422001 	sub	r2, r2, #1
    15d0:	0a000032 	beq	16a0 <memset+0xe8>
    15d4:	e20140ff 	and	r4, r1, #255	; 0xff
    15d8:	ea000002 	b	15e8 <memset+0x30>
    15dc:	e3520000 	cmp	r2, #0
    15e0:	e2422001 	sub	r2, r2, #1
    15e4:	0a00002d 	beq	16a0 <memset+0xe8>
    15e8:	e4c34001 	strb	r4, [r3], #1
    15ec:	e3130003 	tst	r3, #3
    15f0:	e1a0c003 	mov	ip, r3
    15f4:	1afffff8 	bne	15dc <memset+0x24>
    15f8:	e3520003 	cmp	r2, #3
    15fc:	9a000020 	bls	1684 <memset+0xcc>
    1600:	e20140ff 	and	r4, r1, #255	; 0xff
    1604:	e352000f 	cmp	r2, #15
    1608:	e1844404 	orr	r4, r4, r4, lsl #8
    160c:	e1844804 	orr	r4, r4, r4, lsl #16
    1610:	81a0300c 	movhi	r3, ip
    1614:	81a05002 	movhi	r5, r2
    1618:	9a00000e 	bls	1658 <memset+0xa0>
    161c:	e2455010 	sub	r5, r5, #16
    1620:	e355000f 	cmp	r5, #15
    1624:	e5834000 	str	r4, [r3]
    1628:	e5834004 	str	r4, [r3, #4]
    162c:	e5834008 	str	r4, [r3, #8]
    1630:	e583400c 	str	r4, [r3, #12]
    1634:	e2833010 	add	r3, r3, #16
    1638:	8afffff7 	bhi	161c <memset+0x64>
    163c:	e2423010 	sub	r3, r2, #16
    1640:	e3c3300f 	bic	r3, r3, #15
    1644:	e202200f 	and	r2, r2, #15
    1648:	e2833010 	add	r3, r3, #16
    164c:	e3520003 	cmp	r2, #3
    1650:	e08cc003 	add	ip, ip, r3
    1654:	9a00000a 	bls	1684 <memset+0xcc>
    1658:	e1a0500c 	mov	r5, ip
    165c:	e1a03002 	mov	r3, r2
    1660:	e2433004 	sub	r3, r3, #4
    1664:	e3530003 	cmp	r3, #3
    1668:	e4854004 	str	r4, [r5], #4
    166c:	8afffffb 	bhi	1660 <memset+0xa8>
    1670:	e2423004 	sub	r3, r2, #4
    1674:	e3c33003 	bic	r3, r3, #3
    1678:	e2833004 	add	r3, r3, #4
    167c:	e2022003 	and	r2, r2, #3
    1680:	e08cc003 	add	ip, ip, r3
    1684:	e3520000 	cmp	r2, #0
    1688:	120110ff 	andne	r1, r1, #255	; 0xff
    168c:	108c2002 	addne	r2, ip, r2
    1690:	0a000002 	beq	16a0 <memset+0xe8>
    1694:	e4cc1001 	strb	r1, [ip], #1
    1698:	e15c0002 	cmp	ip, r2
    169c:	1afffffc 	bne	1694 <memset+0xdc>
    16a0:	e8bd0030 	pop	{r4, r5}
    16a4:	e12fff1e 	bx	lr
    16a8:	e1a0c000 	mov	ip, r0
    16ac:	eaffffd1 	b	15f8 <memset+0x40>

000016b0 <_printf_r>:
    16b0:	e92d000e 	push	{r1, r2, r3}
    16b4:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    16b8:	e24dd004 	sub	sp, sp, #4
    16bc:	e28dc00c 	add	ip, sp, #12
    16c0:	e5901008 	ldr	r1, [r0, #8]
    16c4:	e59d2008 	ldr	r2, [sp, #8]
    16c8:	e1a0300c 	mov	r3, ip
    16cc:	e58dc000 	str	ip, [sp]
    16d0:	eb000013 	bl	1724 <_vfprintf_r>
    16d4:	e28dd004 	add	sp, sp, #4
    16d8:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    16dc:	e28dd00c 	add	sp, sp, #12
    16e0:	e12fff1e 	bx	lr

000016e4 <printf>:
    16e4:	e92d000f 	push	{r0, r1, r2, r3}
    16e8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    16ec:	e59f302c 	ldr	r3, [pc, #44]	; 1720 <printf+0x3c>
    16f0:	e24dd004 	sub	sp, sp, #4
    16f4:	e5930000 	ldr	r0, [r3]
    16f8:	e28dc00c 	add	ip, sp, #12
    16fc:	e5901008 	ldr	r1, [r0, #8]
    1700:	e59d2008 	ldr	r2, [sp, #8]
    1704:	e1a0300c 	mov	r3, ip
    1708:	e58dc000 	str	ip, [sp]
    170c:	eb000004 	bl	1724 <_vfprintf_r>
    1710:	e28dd004 	add	sp, sp, #4
    1714:	e49de004 	pop	{lr}		; (ldr lr, [sp], #4)
    1718:	e28dd010 	add	sp, sp, #16
    171c:	e12fff1e 	bx	lr
    1720:	0000ac08 	.word	0x0000ac08

00001724 <_vfprintf_r>:
    1724:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1728:	e24dde53 	sub	sp, sp, #1328	; 0x530
    172c:	e24dd008 	sub	sp, sp, #8
    1730:	e1a09001 	mov	r9, r1
    1734:	e1a04002 	mov	r4, r2
    1738:	e58d3030 	str	r3, [sp, #48]	; 0x30
    173c:	e58d0024 	str	r0, [sp, #36]	; 0x24
    1740:	eb001126 	bl	5be0 <_localeconv_r>
    1744:	e5900000 	ldr	r0, [r0]
    1748:	e58d0050 	str	r0, [sp, #80]	; 0x50
    174c:	eb0017f2 	bl	771c <strlen>
    1750:	e59d7024 	ldr	r7, [sp, #36]	; 0x24
    1754:	e3a0b000 	mov	fp, #0
    1758:	e3a0c000 	mov	ip, #0
    175c:	e3570000 	cmp	r7, #0
    1760:	e58d005c 	str	r0, [sp, #92]	; 0x5c
    1764:	e58db060 	str	fp, [sp, #96]	; 0x60
    1768:	e58dc064 	str	ip, [sp, #100]	; 0x64
    176c:	0a000002 	beq	177c <_vfprintf_r+0x58>
    1770:	e5973038 	ldr	r3, [r7, #56]	; 0x38
    1774:	e3530000 	cmp	r3, #0
    1778:	0a000100 	beq	1b80 <_vfprintf_r+0x45c>
    177c:	e1d980bc 	ldrh	r8, [r9, #12]
    1780:	e3180a02 	tst	r8, #8192	; 0x2000
    1784:	05993064 	ldreq	r3, [r9, #100]	; 0x64
    1788:	03888a02 	orreq	r8, r8, #8192	; 0x2000
    178c:	03c33a02 	biceq	r3, r3, #8192	; 0x2000
    1790:	01c980bc 	strheq	r8, [r9, #12]
    1794:	05893064 	streq	r3, [r9, #100]	; 0x64
    1798:	e3180008 	tst	r8, #8
    179c:	0a0000a8 	beq	1a44 <_vfprintf_r+0x320>
    17a0:	e5993010 	ldr	r3, [r9, #16]
    17a4:	e3530000 	cmp	r3, #0
    17a8:	0a0000a5 	beq	1a44 <_vfprintf_r+0x320>
    17ac:	e208301a 	and	r3, r8, #26
    17b0:	e353000a 	cmp	r3, #10
    17b4:	0a0000c1 	beq	1ac0 <_vfprintf_r+0x39c>
    17b8:	e28d70d0 	add	r7, sp, #208	; 0xd0
    17bc:	e28db0cf 	add	fp, sp, #207	; 0xcf
    17c0:	e3a03000 	mov	r3, #0
    17c4:	e28dcf4e 	add	ip, sp, #312	; 0x138
    17c8:	e58d704c 	str	r7, [sp, #76]	; 0x4c
    17cc:	e06b7007 	rsb	r7, fp, r7
    17d0:	e58d303c 	str	r3, [sp, #60]	; 0x3c
    17d4:	e58db054 	str	fp, [sp, #84]	; 0x54
    17d8:	e58dc09c 	str	ip, [sp, #156]	; 0x9c
    17dc:	e58d30a4 	str	r3, [sp, #164]	; 0xa4
    17e0:	e58d30a0 	str	r3, [sp, #160]	; 0xa0
    17e4:	e58d306c 	str	r3, [sp, #108]	; 0x6c
    17e8:	e58d3068 	str	r3, [sp, #104]	; 0x68
    17ec:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    17f0:	e58d7074 	str	r7, [sp, #116]	; 0x74
    17f4:	e58d9014 	str	r9, [sp, #20]
    17f8:	e58d4018 	str	r4, [sp, #24]
    17fc:	e1a0a00c 	mov	sl, ip
    1800:	e1a04003 	mov	r4, r3
    1804:	e59dc018 	ldr	ip, [sp, #24]
    1808:	e5dc3000 	ldrb	r3, [ip]
    180c:	e3530025 	cmp	r3, #37	; 0x25
    1810:	13530000 	cmpne	r3, #0
    1814:	0a0000dc 	beq	1b8c <_vfprintf_r+0x468>
    1818:	e28c3001 	add	r3, ip, #1
    181c:	e1a06003 	mov	r6, r3
    1820:	e5d33000 	ldrb	r3, [r3]
    1824:	e3530025 	cmp	r3, #37	; 0x25
    1828:	13530000 	cmpne	r3, #0
    182c:	e2863001 	add	r3, r6, #1
    1830:	1afffff9 	bne	181c <_vfprintf_r+0xf8>
    1834:	e59d4018 	ldr	r4, [sp, #24]
    1838:	e0567004 	subs	r7, r6, r4
    183c:	0a00000e 	beq	187c <_vfprintf_r+0x158>
    1840:	e28d40a0 	add	r4, sp, #160	; 0xa0
    1844:	e8940030 	ldm	r4, {r4, r5}
    1848:	e59dc018 	ldr	ip, [sp, #24]
    184c:	e2844001 	add	r4, r4, #1
    1850:	e0855007 	add	r5, r5, r7
    1854:	e3540007 	cmp	r4, #7
    1858:	e58ac000 	str	ip, [sl]
    185c:	e58a7004 	str	r7, [sl, #4]
    1860:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    1864:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    1868:	d28aa008 	addle	sl, sl, #8
    186c:	ca000080 	bgt	1a74 <_vfprintf_r+0x350>
    1870:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
    1874:	e0844007 	add	r4, r4, r7
    1878:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    187c:	e5d63000 	ldrb	r3, [r6]
    1880:	e3530000 	cmp	r3, #0
    1884:	0a000627 	beq	3128 <_vfprintf_r+0x1a04>
    1888:	e3a03000 	mov	r3, #0
    188c:	e2866001 	add	r6, r6, #1
    1890:	e58d3028 	str	r3, [sp, #40]	; 0x28
    1894:	e58d6018 	str	r6, [sp, #24]
    1898:	e5cd307b 	strb	r3, [sp, #123]	; 0x7b
    189c:	e58d3010 	str	r3, [sp, #16]
    18a0:	e3e04000 	mvn	r4, #0
    18a4:	e3a01020 	mov	r1, #32
    18a8:	e3a0202b 	mov	r2, #43	; 0x2b
    18ac:	e1a00006 	mov	r0, r6
    18b0:	e4d07001 	ldrb	r7, [r0], #1
    18b4:	e2473020 	sub	r3, r7, #32
    18b8:	e3530058 	cmp	r3, #88	; 0x58
    18bc:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    18c0:	ea0001fb 	b	20b4 <_vfprintf_r+0x990>
    18c4:	000020f0 	.word	0x000020f0
    18c8:	000020b4 	.word	0x000020b4
    18cc:	000020b4 	.word	0x000020b4
    18d0:	00002100 	.word	0x00002100
    18d4:	000020b4 	.word	0x000020b4
    18d8:	000020b4 	.word	0x000020b4
    18dc:	000020b4 	.word	0x000020b4
    18e0:	000020b4 	.word	0x000020b4
    18e4:	000020b4 	.word	0x000020b4
    18e8:	000020b4 	.word	0x000020b4
    18ec:	00002110 	.word	0x00002110
    18f0:	00001b94 	.word	0x00001b94
    18f4:	000020b4 	.word	0x000020b4
    18f8:	00001a34 	.word	0x00001a34
    18fc:	00001b9c 	.word	0x00001b9c
    1900:	000020b4 	.word	0x000020b4
    1904:	00001be4 	.word	0x00001be4
    1908:	00001bf4 	.word	0x00001bf4
    190c:	00001bf4 	.word	0x00001bf4
    1910:	00001bf4 	.word	0x00001bf4
    1914:	00001bf4 	.word	0x00001bf4
    1918:	00001bf4 	.word	0x00001bf4
    191c:	00001bf4 	.word	0x00001bf4
    1920:	00001bf4 	.word	0x00001bf4
    1924:	00001bf4 	.word	0x00001bf4
    1928:	00001bf4 	.word	0x00001bf4
    192c:	000020b4 	.word	0x000020b4
    1930:	000020b4 	.word	0x000020b4
    1934:	000020b4 	.word	0x000020b4
    1938:	000020b4 	.word	0x000020b4
    193c:	000020b4 	.word	0x000020b4
    1940:	000020b4 	.word	0x000020b4
    1944:	000020b4 	.word	0x000020b4
    1948:	000020b4 	.word	0x000020b4
    194c:	000020b4 	.word	0x000020b4
    1950:	000020b4 	.word	0x000020b4
    1954:	00001c24 	.word	0x00001c24
    1958:	00001e2c 	.word	0x00001e2c
    195c:	000020b4 	.word	0x000020b4
    1960:	00001e2c 	.word	0x00001e2c
    1964:	000020b4 	.word	0x000020b4
    1968:	000020b4 	.word	0x000020b4
    196c:	000020b4 	.word	0x000020b4
    1970:	000020b4 	.word	0x000020b4
    1974:	00001ed0 	.word	0x00001ed0
    1978:	000020b4 	.word	0x000020b4
    197c:	000020b4 	.word	0x000020b4
    1980:	00001ee0 	.word	0x00001ee0
    1984:	000020b4 	.word	0x000020b4
    1988:	000020b4 	.word	0x000020b4
    198c:	000020b4 	.word	0x000020b4
    1990:	000020b4 	.word	0x000020b4
    1994:	000020b4 	.word	0x000020b4
    1998:	00001f24 	.word	0x00001f24
    199c:	000020b4 	.word	0x000020b4
    19a0:	000020b4 	.word	0x000020b4
    19a4:	00001f60 	.word	0x00001f60
    19a8:	000020b4 	.word	0x000020b4
    19ac:	000020b4 	.word	0x000020b4
    19b0:	000020b4 	.word	0x000020b4
    19b4:	000020b4 	.word	0x000020b4
    19b8:	000020b4 	.word	0x000020b4
    19bc:	000020b4 	.word	0x000020b4
    19c0:	000020b4 	.word	0x000020b4
    19c4:	000020b4 	.word	0x000020b4
    19c8:	000020b4 	.word	0x000020b4
    19cc:	000020b4 	.word	0x000020b4
    19d0:	00002220 	.word	0x00002220
    19d4:	000021d4 	.word	0x000021d4
    19d8:	00001e2c 	.word	0x00001e2c
    19dc:	00001e2c 	.word	0x00001e2c
    19e0:	00001e2c 	.word	0x00001e2c
    19e4:	00002210 	.word	0x00002210
    19e8:	000021d4 	.word	0x000021d4
    19ec:	000020b4 	.word	0x000020b4
    19f0:	000020b4 	.word	0x000020b4
    19f4:	0000203c 	.word	0x0000203c
    19f8:	000020b4 	.word	0x000020b4
    19fc:	0000204c 	.word	0x0000204c
    1a00:	00002078 	.word	0x00002078
    1a04:	00002258 	.word	0x00002258
    1a08:	00001fa4 	.word	0x00001fa4
    1a0c:	000020b4 	.word	0x000020b4
    1a10:	00001fb4 	.word	0x00001fb4
    1a14:	000020b4 	.word	0x000020b4
    1a18:	00002134 	.word	0x00002134
    1a1c:	000020b4 	.word	0x000020b4
    1a20:	000020b4 	.word	0x000020b4
    1a24:	0000215c 	.word	0x0000215c
    1a28:	e26bb000 	rsb	fp, fp, #0
    1a2c:	e58db028 	str	fp, [sp, #40]	; 0x28
    1a30:	e58d3030 	str	r3, [sp, #48]	; 0x30
    1a34:	e59d7010 	ldr	r7, [sp, #16]
    1a38:	e3877004 	orr	r7, r7, #4
    1a3c:	e58d7010 	str	r7, [sp, #16]
    1a40:	eaffff9a 	b	18b0 <_vfprintf_r+0x18c>
    1a44:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1a48:	e1a01009 	mov	r1, r9
    1a4c:	eb0006fd 	bl	3648 <__swsetup_r>
    1a50:	e3500000 	cmp	r0, #0
    1a54:	01d980bc 	ldrheq	r8, [r9, #12]
    1a58:	0affff53 	beq	17ac <_vfprintf_r+0x88>
    1a5c:	e3e0c000 	mvn	ip, #0
    1a60:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    1a64:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
    1a68:	e28ddf4e 	add	sp, sp, #312	; 0x138
    1a6c:	e28ddb01 	add	sp, sp, #1024	; 0x400
    1a70:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1a74:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1a78:	e59d1014 	ldr	r1, [sp, #20]
    1a7c:	e28d209c 	add	r2, sp, #156	; 0x9c
    1a80:	eb00173d 	bl	777c <__sprint_r>
    1a84:	e3500000 	cmp	r0, #0
    1a88:	1a000007 	bne	1aac <_vfprintf_r+0x388>
    1a8c:	e28daf4e 	add	sl, sp, #312	; 0x138
    1a90:	eaffff76 	b	1870 <_vfprintf_r+0x14c>
    1a94:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1a98:	e59d1014 	ldr	r1, [sp, #20]
    1a9c:	e28d209c 	add	r2, sp, #156	; 0x9c
    1aa0:	eb001735 	bl	777c <__sprint_r>
    1aa4:	e3500000 	cmp	r0, #0
    1aa8:	0a0002a9 	beq	2554 <_vfprintf_r+0xe30>
    1aac:	e59d9014 	ldr	r9, [sp, #20]
    1ab0:	e1d930bc 	ldrh	r3, [r9, #12]
    1ab4:	e3130040 	tst	r3, #64	; 0x40
    1ab8:	1affffe7 	bne	1a5c <_vfprintf_r+0x338>
    1abc:	eaffffe8 	b	1a64 <_vfprintf_r+0x340>
    1ac0:	e1d9c0be 	ldrh	ip, [r9, #14]
    1ac4:	e31c0902 	tst	ip, #32768	; 0x8000
    1ac8:	1affff3a 	bne	17b8 <_vfprintf_r+0x94>
    1acc:	e1a02004 	mov	r2, r4
    1ad0:	e28dbe53 	add	fp, sp, #1328	; 0x530
    1ad4:	e59f4fa0 	ldr	r4, [pc, #4000]	; 2a7c <_vfprintf_r+0x1358>
    1ad8:	e28bb008 	add	fp, fp, #8
    1adc:	e3c88002 	bic	r8, r8, #2
    1ae0:	e18b80b4 	strh	r8, [fp, r4]
    1ae4:	e5997064 	ldr	r7, [r9, #100]	; 0x64
    1ae8:	e599601c 	ldr	r6, [r9, #28]
    1aec:	e599a024 	ldr	sl, [r9, #36]	; 0x24
    1af0:	e2844002 	add	r4, r4, #2
    1af4:	e3a0eb01 	mov	lr, #1024	; 0x400
    1af8:	e28d5f4e 	add	r5, sp, #312	; 0x138
    1afc:	e18bc0b4 	strh	ip, [fp, r4]
    1b00:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1b04:	e3a0c000 	mov	ip, #0
    1b08:	e28d10d0 	add	r1, sp, #208	; 0xd0
    1b0c:	e59d3030 	ldr	r3, [sp, #48]	; 0x30
    1b10:	e58d7134 	str	r7, [sp, #308]	; 0x134
    1b14:	e58d60ec 	str	r6, [sp, #236]	; 0xec
    1b18:	e58da0f4 	str	sl, [sp, #244]	; 0xf4
    1b1c:	e58d50d0 	str	r5, [sp, #208]	; 0xd0
    1b20:	e58d50e0 	str	r5, [sp, #224]	; 0xe0
    1b24:	e58de0d8 	str	lr, [sp, #216]	; 0xd8
    1b28:	e58de0e4 	str	lr, [sp, #228]	; 0xe4
    1b2c:	e58dc0e8 	str	ip, [sp, #232]	; 0xe8
    1b30:	ebfffefb 	bl	1724 <_vfprintf_r>
    1b34:	e3500000 	cmp	r0, #0
    1b38:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    1b3c:	ba000006 	blt	1b5c <_vfprintf_r+0x438>
    1b40:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1b44:	e28d10d0 	add	r1, sp, #208	; 0xd0
    1b48:	eb000e1f 	bl	53cc <_fflush_r>
    1b4c:	e59dc02c 	ldr	ip, [sp, #44]	; 0x2c
    1b50:	e3500000 	cmp	r0, #0
    1b54:	13e0c000 	mvnne	ip, #0
    1b58:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    1b5c:	e59f3f18 	ldr	r3, [pc, #3864]	; 2a7c <_vfprintf_r+0x1358>
    1b60:	e28d0e53 	add	r0, sp, #1328	; 0x530
    1b64:	e2800008 	add	r0, r0, #8
    1b68:	e19030b3 	ldrh	r3, [r0, r3]
    1b6c:	e3130040 	tst	r3, #64	; 0x40
    1b70:	11d930bc 	ldrhne	r3, [r9, #12]
    1b74:	13833040 	orrne	r3, r3, #64	; 0x40
    1b78:	11c930bc 	strhne	r3, [r9, #12]
    1b7c:	eaffffb8 	b	1a64 <_vfprintf_r+0x340>
    1b80:	e1a00007 	mov	r0, r7
    1b84:	eb000e6a 	bl	5534 <__sinit>
    1b88:	eafffefb 	b	177c <_vfprintf_r+0x58>
    1b8c:	e59d6018 	ldr	r6, [sp, #24]
    1b90:	eaffff39 	b	187c <_vfprintf_r+0x158>
    1b94:	e5cd207b 	strb	r2, [sp, #123]	; 0x7b
    1b98:	eaffff44 	b	18b0 <_vfprintf_r+0x18c>
    1b9c:	e4d07001 	ldrb	r7, [r0], #1
    1ba0:	e357002a 	cmp	r7, #42	; 0x2a
    1ba4:	0a000683 	beq	35b8 <_vfprintf_r+0x1e94>
    1ba8:	e2473030 	sub	r3, r7, #48	; 0x30
    1bac:	e3530009 	cmp	r3, #9
    1bb0:	83a04000 	movhi	r4, #0
    1bb4:	8affff3e 	bhi	18b4 <_vfprintf_r+0x190>
    1bb8:	e1a0c000 	mov	ip, r0
    1bbc:	e3a04000 	mov	r4, #0
    1bc0:	e4dc7001 	ldrb	r7, [ip], #1
    1bc4:	e0844104 	add	r4, r4, r4, lsl #2
    1bc8:	e0834084 	add	r4, r3, r4, lsl #1
    1bcc:	e2473030 	sub	r3, r7, #48	; 0x30
    1bd0:	e3530009 	cmp	r3, #9
    1bd4:	e1a0000c 	mov	r0, ip
    1bd8:	9afffff8 	bls	1bc0 <_vfprintf_r+0x49c>
    1bdc:	e1844fc4 	orr	r4, r4, r4, asr #31
    1be0:	eaffff33 	b	18b4 <_vfprintf_r+0x190>
    1be4:	e59dc010 	ldr	ip, [sp, #16]
    1be8:	e38cc080 	orr	ip, ip, #128	; 0x80
    1bec:	e58dc010 	str	ip, [sp, #16]
    1bf0:	eaffff2e 	b	18b0 <_vfprintf_r+0x18c>
    1bf4:	e1a0c000 	mov	ip, r0
    1bf8:	e3a03000 	mov	r3, #0
    1bfc:	e2470030 	sub	r0, r7, #48	; 0x30
    1c00:	e4dc7001 	ldrb	r7, [ip], #1
    1c04:	e2475030 	sub	r5, r7, #48	; 0x30
    1c08:	e0833103 	add	r3, r3, r3, lsl #2
    1c0c:	e3550009 	cmp	r5, #9
    1c10:	e0803083 	add	r3, r0, r3, lsl #1
    1c14:	e1a0000c 	mov	r0, ip
    1c18:	9afffff7 	bls	1bfc <_vfprintf_r+0x4d8>
    1c1c:	e58d3028 	str	r3, [sp, #40]	; 0x28
    1c20:	eaffff23 	b	18b4 <_vfprintf_r+0x190>
    1c24:	e59db010 	ldr	fp, [sp, #16]
    1c28:	e38bb010 	orr	fp, fp, #16
    1c2c:	e58db010 	str	fp, [sp, #16]
    1c30:	e59dc010 	ldr	ip, [sp, #16]
    1c34:	e31c0010 	tst	ip, #16
    1c38:	e58d0018 	str	r0, [sp, #24]
    1c3c:	0a000168 	beq	21e4 <_vfprintf_r+0xac0>
    1c40:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    1c44:	e59b3000 	ldr	r3, [fp]
    1c48:	e28bb004 	add	fp, fp, #4
    1c4c:	e58db030 	str	fp, [sp, #48]	; 0x30
    1c50:	e3530000 	cmp	r3, #0
    1c54:	ba00046f 	blt	2e18 <_vfprintf_r+0x16f4>
    1c58:	03a02000 	moveq	r2, #0
    1c5c:	13a02001 	movne	r2, #1
    1c60:	e3a01001 	mov	r1, #1
    1c64:	e3540000 	cmp	r4, #0
    1c68:	a59dc010 	ldrge	ip, [sp, #16]
    1c6c:	a3ccc080 	bicge	ip, ip, #128	; 0x80
    1c70:	a58dc010 	strge	ip, [sp, #16]
    1c74:	e3540000 	cmp	r4, #0
    1c78:	13822001 	orrne	r2, r2, #1
    1c7c:	e21220ff 	ands	r2, r2, #255	; 0xff
    1c80:	0a000282 	beq	2690 <_vfprintf_r+0xf6c>
    1c84:	e3510001 	cmp	r1, #1
    1c88:	0a000365 	beq	2a24 <_vfprintf_r+0x1300>
    1c8c:	e3510002 	cmp	r1, #2
    1c90:	e59d2054 	ldr	r2, [sp, #84]	; 0x54
    1c94:	0a000355 	beq	29f0 <_vfprintf_r+0x12cc>
    1c98:	e2031007 	and	r1, r3, #7
    1c9c:	e2811030 	add	r1, r1, #48	; 0x30
    1ca0:	e1b031a3 	lsrs	r3, r3, #3
    1ca4:	e1a00002 	mov	r0, r2
    1ca8:	e5c21000 	strb	r1, [r2]
    1cac:	e2422001 	sub	r2, r2, #1
    1cb0:	1afffff8 	bne	1c98 <_vfprintf_r+0x574>
    1cb4:	e59db010 	ldr	fp, [sp, #16]
    1cb8:	e31b0001 	tst	fp, #1
    1cbc:	e58d0044 	str	r0, [sp, #68]	; 0x44
    1cc0:	1a00044b 	bne	2df4 <_vfprintf_r+0x16d0>
    1cc4:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    1cc8:	e060c00c 	rsb	ip, r0, ip
    1ccc:	e58dc034 	str	ip, [sp, #52]	; 0x34
    1cd0:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
    1cd4:	e58d4038 	str	r4, [sp, #56]	; 0x38
    1cd8:	e15c0004 	cmp	ip, r4
    1cdc:	b1a0c004 	movlt	ip, r4
    1ce0:	e3a04000 	mov	r4, #0
    1ce4:	e58dc01c 	str	ip, [sp, #28]
    1ce8:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    1cec:	e58d4058 	str	r4, [sp, #88]	; 0x58
    1cf0:	e3530000 	cmp	r3, #0
    1cf4:	0a000002 	beq	1d04 <_vfprintf_r+0x5e0>
    1cf8:	e59db01c 	ldr	fp, [sp, #28]
    1cfc:	e28bb001 	add	fp, fp, #1
    1d00:	e58db01c 	str	fp, [sp, #28]
    1d04:	e59dc010 	ldr	ip, [sp, #16]
    1d08:	e21cc002 	ands	ip, ip, #2
    1d0c:	159d401c 	ldrne	r4, [sp, #28]
    1d10:	e59db010 	ldr	fp, [sp, #16]
    1d14:	12844002 	addne	r4, r4, #2
    1d18:	158d401c 	strne	r4, [sp, #28]
    1d1c:	e21bb084 	ands	fp, fp, #132	; 0x84
    1d20:	e58dc040 	str	ip, [sp, #64]	; 0x40
    1d24:	e58db048 	str	fp, [sp, #72]	; 0x48
    1d28:	1a00015c 	bne	22a0 <_vfprintf_r+0xb7c>
    1d2c:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    1d30:	e59d401c 	ldr	r4, [sp, #28]
    1d34:	e064600c 	rsb	r6, r4, ip
    1d38:	e3560000 	cmp	r6, #0
    1d3c:	da000157 	ble	22a0 <_vfprintf_r+0xb7c>
    1d40:	e28d40a0 	add	r4, sp, #160	; 0xa0
    1d44:	e3560010 	cmp	r6, #16
    1d48:	e8940030 	ldm	r4, {r4, r5}
    1d4c:	e59f9d2c 	ldr	r9, [pc, #3372]	; 2a80 <_vfprintf_r+0x135c>
    1d50:	da000023 	ble	1de4 <_vfprintf_r+0x6c0>
    1d54:	e28d809c 	add	r8, sp, #156	; 0x9c
    1d58:	e1a03009 	mov	r3, r9
    1d5c:	e58d7070 	str	r7, [sp, #112]	; 0x70
    1d60:	e1a09006 	mov	r9, r6
    1d64:	e1a07008 	mov	r7, r8
    1d68:	e3a0b010 	mov	fp, #16
    1d6c:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
    1d70:	e1a06003 	mov	r6, r3
    1d74:	ea000002 	b	1d84 <_vfprintf_r+0x660>
    1d78:	e2499010 	sub	r9, r9, #16
    1d7c:	e3590010 	cmp	r9, #16
    1d80:	da000013 	ble	1dd4 <_vfprintf_r+0x6b0>
    1d84:	e2844001 	add	r4, r4, #1
    1d88:	e3540007 	cmp	r4, #7
    1d8c:	e2855010 	add	r5, r5, #16
    1d90:	e88a0840 	stm	sl, {r6, fp}
    1d94:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    1d98:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    1d9c:	d28aa008 	addle	sl, sl, #8
    1da0:	dafffff4 	ble	1d78 <_vfprintf_r+0x654>
    1da4:	e1a00008 	mov	r0, r8
    1da8:	e59d1014 	ldr	r1, [sp, #20]
    1dac:	e1a02007 	mov	r2, r7
    1db0:	eb001671 	bl	777c <__sprint_r>
    1db4:	e3500000 	cmp	r0, #0
    1db8:	1affff3b 	bne	1aac <_vfprintf_r+0x388>
    1dbc:	e2499010 	sub	r9, r9, #16
    1dc0:	e28d40a0 	add	r4, sp, #160	; 0xa0
    1dc4:	e3590010 	cmp	r9, #16
    1dc8:	e8940030 	ldm	r4, {r4, r5}
    1dcc:	e28daf4e 	add	sl, sp, #312	; 0x138
    1dd0:	caffffeb 	bgt	1d84 <_vfprintf_r+0x660>
    1dd4:	e1a03006 	mov	r3, r6
    1dd8:	e59d7070 	ldr	r7, [sp, #112]	; 0x70
    1ddc:	e1a06009 	mov	r6, r9
    1de0:	e1a09003 	mov	r9, r3
    1de4:	e2844001 	add	r4, r4, #1
    1de8:	e0855006 	add	r5, r5, r6
    1dec:	e3540007 	cmp	r4, #7
    1df0:	e58a9000 	str	r9, [sl]
    1df4:	e58a6004 	str	r6, [sl, #4]
    1df8:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    1dfc:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    1e00:	d28aa008 	addle	sl, sl, #8
    1e04:	da000126 	ble	22a4 <_vfprintf_r+0xb80>
    1e08:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    1e0c:	e59d1014 	ldr	r1, [sp, #20]
    1e10:	e28d209c 	add	r2, sp, #156	; 0x9c
    1e14:	eb001658 	bl	777c <__sprint_r>
    1e18:	e3500000 	cmp	r0, #0
    1e1c:	1affff22 	bne	1aac <_vfprintf_r+0x388>
    1e20:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    1e24:	e28daf4e 	add	sl, sp, #312	; 0x138
    1e28:	ea00011d 	b	22a4 <_vfprintf_r+0xb80>
    1e2c:	e59db010 	ldr	fp, [sp, #16]
    1e30:	e31b0008 	tst	fp, #8
    1e34:	e58d0018 	str	r0, [sp, #24]
    1e38:	0a000455 	beq	2f94 <_vfprintf_r+0x1870>
    1e3c:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    1e40:	e89c0140 	ldm	ip, {r6, r8}
    1e44:	e1a00006 	mov	r0, r6
    1e48:	e1a01008 	mov	r1, r8
    1e4c:	e28cc008 	add	ip, ip, #8
    1e50:	e58d0060 	str	r0, [sp, #96]	; 0x60
    1e54:	e58d1064 	str	r1, [sp, #100]	; 0x64
    1e58:	e58dc030 	str	ip, [sp, #48]	; 0x30
    1e5c:	e1a01008 	mov	r1, r8
    1e60:	e1a00006 	mov	r0, r6
    1e64:	eb001545 	bl	7380 <__fpclassifyd>
    1e68:	e3500001 	cmp	r0, #1
    1e6c:	e1a01008 	mov	r1, r8
    1e70:	e1a00006 	mov	r0, r6
    1e74:	1a0003ee 	bne	2e34 <_vfprintf_r+0x1710>
    1e78:	e3a03000 	mov	r3, #0
    1e7c:	e3a02000 	mov	r2, #0
    1e80:	eb002208 	bl	a6a8 <__ledf2>
    1e84:	e3500000 	cmp	r0, #0
    1e88:	b3a0302d 	movlt	r3, #45	; 0x2d
    1e8c:	e59dc010 	ldr	ip, [sp, #16]
    1e90:	e59f2bec 	ldr	r2, [pc, #3052]	; 2a84 <_vfprintf_r+0x1360>
    1e94:	e59f1bec 	ldr	r1, [pc, #3052]	; 2a88 <_vfprintf_r+0x1364>
    1e98:	a5dd307b 	ldrbge	r3, [sp, #123]	; 0x7b
    1e9c:	b5cd307b 	strblt	r3, [sp, #123]	; 0x7b
    1ea0:	e3570047 	cmp	r7, #71	; 0x47
    1ea4:	e3a04003 	mov	r4, #3
    1ea8:	e3a0b000 	mov	fp, #0
    1eac:	d1a01002 	movle	r1, r2
    1eb0:	e3ccc080 	bic	ip, ip, #128	; 0x80
    1eb4:	e58d401c 	str	r4, [sp, #28]
    1eb8:	e58db038 	str	fp, [sp, #56]	; 0x38
    1ebc:	e58d1044 	str	r1, [sp, #68]	; 0x44
    1ec0:	e58dc010 	str	ip, [sp, #16]
    1ec4:	e58d4034 	str	r4, [sp, #52]	; 0x34
    1ec8:	e58db058 	str	fp, [sp, #88]	; 0x58
    1ecc:	eaffff87 	b	1cf0 <_vfprintf_r+0x5cc>
    1ed0:	e59d7010 	ldr	r7, [sp, #16]
    1ed4:	e3877008 	orr	r7, r7, #8
    1ed8:	e58d7010 	str	r7, [sp, #16]
    1edc:	eafffe73 	b	18b0 <_vfprintf_r+0x18c>
    1ee0:	e59dc010 	ldr	ip, [sp, #16]
    1ee4:	e38cc010 	orr	ip, ip, #16
    1ee8:	e58dc010 	str	ip, [sp, #16]
    1eec:	e59db010 	ldr	fp, [sp, #16]
    1ef0:	e21b2010 	ands	r2, fp, #16
    1ef4:	e58d0018 	str	r0, [sp, #24]
    1ef8:	0a000062 	beq	2088 <_vfprintf_r+0x964>
    1efc:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    1f00:	e59c3000 	ldr	r3, [ip]
    1f04:	e3a01000 	mov	r1, #0
    1f08:	e28cc004 	add	ip, ip, #4
    1f0c:	e0532001 	subs	r2, r3, r1
    1f10:	e58dc030 	str	ip, [sp, #48]	; 0x30
    1f14:	13a02001 	movne	r2, #1
    1f18:	e3a00000 	mov	r0, #0
    1f1c:	e5cd007b 	strb	r0, [sp, #123]	; 0x7b
    1f20:	eaffff4f 	b	1c64 <_vfprintf_r+0x540>
    1f24:	e59db010 	ldr	fp, [sp, #16]
    1f28:	e38bb010 	orr	fp, fp, #16
    1f2c:	e58db010 	str	fp, [sp, #16]
    1f30:	e59dc010 	ldr	ip, [sp, #16]
    1f34:	e31c0010 	tst	ip, #16
    1f38:	e58d0018 	str	r0, [sp, #24]
    1f3c:	0a000080 	beq	2144 <_vfprintf_r+0xa20>
    1f40:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    1f44:	e59b3000 	ldr	r3, [fp]
    1f48:	e2932000 	adds	r2, r3, #0
    1f4c:	e28bb004 	add	fp, fp, #4
    1f50:	e3a01001 	mov	r1, #1
    1f54:	13a02001 	movne	r2, #1
    1f58:	e58db030 	str	fp, [sp, #48]	; 0x30
    1f5c:	eaffffed 	b	1f18 <_vfprintf_r+0x7f4>
    1f60:	e59db010 	ldr	fp, [sp, #16]
    1f64:	e59fcb20 	ldr	ip, [pc, #2848]	; 2a8c <_vfprintf_r+0x1368>
    1f68:	e31b0010 	tst	fp, #16
    1f6c:	e58d0018 	str	r0, [sp, #24]
    1f70:	e58dc06c 	str	ip, [sp, #108]	; 0x6c
    1f74:	0a00007e 	beq	2174 <_vfprintf_r+0xa50>
    1f78:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    1f7c:	e59c3000 	ldr	r3, [ip]
    1f80:	e28cc004 	add	ip, ip, #4
    1f84:	e58dc030 	str	ip, [sp, #48]	; 0x30
    1f88:	e59dc010 	ldr	ip, [sp, #16]
    1f8c:	e31c0001 	tst	ip, #1
    1f90:	1a000084 	bne	21a8 <_vfprintf_r+0xa84>
    1f94:	e2932000 	adds	r2, r3, #0
    1f98:	13a02001 	movne	r2, #1
    1f9c:	e3a01002 	mov	r1, #2
    1fa0:	eaffffdc 	b	1f18 <_vfprintf_r+0x7f4>
    1fa4:	e59d7010 	ldr	r7, [sp, #16]
    1fa8:	e3877010 	orr	r7, r7, #16
    1fac:	e58d7010 	str	r7, [sp, #16]
    1fb0:	eafffe3e 	b	18b0 <_vfprintf_r+0x18c>
    1fb4:	e3a05000 	mov	r5, #0
    1fb8:	e5cd507b 	strb	r5, [sp, #123]	; 0x7b
    1fbc:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    1fc0:	e59cc000 	ldr	ip, [ip]
    1fc4:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    1fc8:	e15c0005 	cmp	ip, r5
    1fcc:	e58d0018 	str	r0, [sp, #24]
    1fd0:	e58dc044 	str	ip, [sp, #68]	; 0x44
    1fd4:	e28b6004 	add	r6, fp, #4
    1fd8:	0a0004c0 	beq	32e0 <_vfprintf_r+0x1bbc>
    1fdc:	e3540000 	cmp	r4, #0
    1fe0:	e59d0044 	ldr	r0, [sp, #68]	; 0x44
    1fe4:	ba00049e 	blt	3264 <_vfprintf_r+0x1b40>
    1fe8:	e1a01005 	mov	r1, r5
    1fec:	e1a02004 	mov	r2, r4
    1ff0:	eb001123 	bl	6484 <memchr>
    1ff4:	e3500000 	cmp	r0, #0
    1ff8:	0a00050c 	beq	3430 <_vfprintf_r+0x1d0c>
    1ffc:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    2000:	e06c0000 	rsb	r0, ip, r0
    2004:	e58d0034 	str	r0, [sp, #52]	; 0x34
    2008:	e1500004 	cmp	r0, r4
    200c:	d59dc034 	ldrle	ip, [sp, #52]	; 0x34
    2010:	c1c4bfc4 	bicgt	fp, r4, r4, asr #31
    2014:	d1cccfcc 	bicle	ip, ip, ip, asr #31
    2018:	e58d5038 	str	r5, [sp, #56]	; 0x38
    201c:	c58db01c 	strgt	fp, [sp, #28]
    2020:	c5dd307b 	ldrbgt	r3, [sp, #123]	; 0x7b
    2024:	c58d4034 	strgt	r4, [sp, #52]	; 0x34
    2028:	d58dc01c 	strle	ip, [sp, #28]
    202c:	d5dd307b 	ldrble	r3, [sp, #123]	; 0x7b
    2030:	e58d6030 	str	r6, [sp, #48]	; 0x30
    2034:	e58d5058 	str	r5, [sp, #88]	; 0x58
    2038:	eaffff2c 	b	1cf0 <_vfprintf_r+0x5cc>
    203c:	e59dc010 	ldr	ip, [sp, #16]
    2040:	e38cc010 	orr	ip, ip, #16
    2044:	e58dc010 	str	ip, [sp, #16]
    2048:	eafffe18 	b	18b0 <_vfprintf_r+0x18c>
    204c:	e59dc010 	ldr	ip, [sp, #16]
    2050:	e31c0010 	tst	ip, #16
    2054:	e58d0018 	str	r0, [sp, #24]
    2058:	0a0003e5 	beq	2ff4 <_vfprintf_r+0x18d0>
    205c:	e59d4030 	ldr	r4, [sp, #48]	; 0x30
    2060:	e59d702c 	ldr	r7, [sp, #44]	; 0x2c
    2064:	e5943000 	ldr	r3, [r4]
    2068:	e2844004 	add	r4, r4, #4
    206c:	e58d4030 	str	r4, [sp, #48]	; 0x30
    2070:	e5837000 	str	r7, [r3]
    2074:	eafffde2 	b	1804 <_vfprintf_r+0xe0>
    2078:	e59db010 	ldr	fp, [sp, #16]
    207c:	e21b2010 	ands	r2, fp, #16
    2080:	e58d0018 	str	r0, [sp, #24]
    2084:	1affff9c 	bne	1efc <_vfprintf_r+0x7d8>
    2088:	e59db010 	ldr	fp, [sp, #16]
    208c:	e21b1040 	ands	r1, fp, #64	; 0x40
    2090:	0a0003c8 	beq	2fb8 <_vfprintf_r+0x1894>
    2094:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    2098:	e1dc30b0 	ldrh	r3, [ip]
    209c:	e1a01002 	mov	r1, r2
    20a0:	e28cc004 	add	ip, ip, #4
    20a4:	e2932000 	adds	r2, r3, #0
    20a8:	13a02001 	movne	r2, #1
    20ac:	e58dc030 	str	ip, [sp, #48]	; 0x30
    20b0:	eaffff98 	b	1f18 <_vfprintf_r+0x7f4>
    20b4:	e3570000 	cmp	r7, #0
    20b8:	e58d0018 	str	r0, [sp, #24]
    20bc:	0a000419 	beq	3128 <_vfprintf_r+0x1a04>
    20c0:	e3a0b001 	mov	fp, #1
    20c4:	e3a03000 	mov	r3, #0
    20c8:	e28dc0a8 	add	ip, sp, #168	; 0xa8
    20cc:	e58db01c 	str	fp, [sp, #28]
    20d0:	e5cd70a8 	strb	r7, [sp, #168]	; 0xa8
    20d4:	e5cd307b 	strb	r3, [sp, #123]	; 0x7b
    20d8:	e58db034 	str	fp, [sp, #52]	; 0x34
    20dc:	e58dc044 	str	ip, [sp, #68]	; 0x44
    20e0:	e3a04000 	mov	r4, #0
    20e4:	e58d4038 	str	r4, [sp, #56]	; 0x38
    20e8:	e58d4058 	str	r4, [sp, #88]	; 0x58
    20ec:	eaffff04 	b	1d04 <_vfprintf_r+0x5e0>
    20f0:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    20f4:	e3530000 	cmp	r3, #0
    20f8:	05cd107b 	strbeq	r1, [sp, #123]	; 0x7b
    20fc:	eafffdeb 	b	18b0 <_vfprintf_r+0x18c>
    2100:	e59d7010 	ldr	r7, [sp, #16]
    2104:	e3877001 	orr	r7, r7, #1
    2108:	e58d7010 	str	r7, [sp, #16]
    210c:	eafffde7 	b	18b0 <_vfprintf_r+0x18c>
    2110:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    2114:	e59bb000 	ldr	fp, [fp]
    2118:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    211c:	e35b0000 	cmp	fp, #0
    2120:	e58db028 	str	fp, [sp, #40]	; 0x28
    2124:	e28c3004 	add	r3, ip, #4
    2128:	bafffe3e 	blt	1a28 <_vfprintf_r+0x304>
    212c:	e58d3030 	str	r3, [sp, #48]	; 0x30
    2130:	eafffdde 	b	18b0 <_vfprintf_r+0x18c>
    2134:	e59dc010 	ldr	ip, [sp, #16]
    2138:	e31c0010 	tst	ip, #16
    213c:	e58d0018 	str	r0, [sp, #24]
    2140:	1affff7e 	bne	1f40 <_vfprintf_r+0x81c>
    2144:	e59dc010 	ldr	ip, [sp, #16]
    2148:	e31c0040 	tst	ip, #64	; 0x40
    214c:	0a0003a0 	beq	2fd4 <_vfprintf_r+0x18b0>
    2150:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    2154:	e1db30b0 	ldrh	r3, [fp]
    2158:	eaffff7a 	b	1f48 <_vfprintf_r+0x824>
    215c:	e59db010 	ldr	fp, [sp, #16]
    2160:	e59fc928 	ldr	ip, [pc, #2344]	; 2a90 <_vfprintf_r+0x136c>
    2164:	e31b0010 	tst	fp, #16
    2168:	e58d0018 	str	r0, [sp, #24]
    216c:	e58dc06c 	str	ip, [sp, #108]	; 0x6c
    2170:	1affff80 	bne	1f78 <_vfprintf_r+0x854>
    2174:	e59db010 	ldr	fp, [sp, #16]
    2178:	e31b0040 	tst	fp, #64	; 0x40
    217c:	159dc030 	ldrne	ip, [sp, #48]	; 0x30
    2180:	059db030 	ldreq	fp, [sp, #48]	; 0x30
    2184:	11dc30b0 	ldrhne	r3, [ip]
    2188:	128cc004 	addne	ip, ip, #4
    218c:	158dc030 	strne	ip, [sp, #48]	; 0x30
    2190:	e59dc010 	ldr	ip, [sp, #16]
    2194:	059b3000 	ldreq	r3, [fp]
    2198:	028bb004 	addeq	fp, fp, #4
    219c:	058db030 	streq	fp, [sp, #48]	; 0x30
    21a0:	e31c0001 	tst	ip, #1
    21a4:	0affff7a 	beq	1f94 <_vfprintf_r+0x870>
    21a8:	e3530000 	cmp	r3, #0
    21ac:	159db010 	ldrne	fp, [sp, #16]
    21b0:	13a02030 	movne	r2, #48	; 0x30
    21b4:	138bb002 	orrne	fp, fp, #2
    21b8:	15cd207c 	strbne	r2, [sp, #124]	; 0x7c
    21bc:	15cd707d 	strbne	r7, [sp, #125]	; 0x7d
    21c0:	158db010 	strne	fp, [sp, #16]
    21c4:	13a02001 	movne	r2, #1
    21c8:	01a02003 	moveq	r2, r3
    21cc:	e3a01002 	mov	r1, #2
    21d0:	eaffff50 	b	1f18 <_vfprintf_r+0x7f4>
    21d4:	e59dc010 	ldr	ip, [sp, #16]
    21d8:	e31c0010 	tst	ip, #16
    21dc:	e58d0018 	str	r0, [sp, #24]
    21e0:	1afffe96 	bne	1c40 <_vfprintf_r+0x51c>
    21e4:	e59dc010 	ldr	ip, [sp, #16]
    21e8:	e31c0040 	tst	ip, #64	; 0x40
    21ec:	159db030 	ldrne	fp, [sp, #48]	; 0x30
    21f0:	059dc030 	ldreq	ip, [sp, #48]	; 0x30
    21f4:	11db30f0 	ldrshne	r3, [fp]
    21f8:	059c3000 	ldreq	r3, [ip]
    21fc:	128bb004 	addne	fp, fp, #4
    2200:	028cc004 	addeq	ip, ip, #4
    2204:	158db030 	strne	fp, [sp, #48]	; 0x30
    2208:	058dc030 	streq	ip, [sp, #48]	; 0x30
    220c:	eafffe8f 	b	1c50 <_vfprintf_r+0x52c>
    2210:	e59db010 	ldr	fp, [sp, #16]
    2214:	e38bb040 	orr	fp, fp, #64	; 0x40
    2218:	e58db010 	str	fp, [sp, #16]
    221c:	eafffda3 	b	18b0 <_vfprintf_r+0x18c>
    2220:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    2224:	e59b3000 	ldr	r3, [fp]
    2228:	e3a0c001 	mov	ip, #1
    222c:	e5cd30a8 	strb	r3, [sp, #168]	; 0xa8
    2230:	e28bb004 	add	fp, fp, #4
    2234:	e3a03000 	mov	r3, #0
    2238:	e28d40a8 	add	r4, sp, #168	; 0xa8
    223c:	e58d0018 	str	r0, [sp, #24]
    2240:	e58dc01c 	str	ip, [sp, #28]
    2244:	e5cd307b 	strb	r3, [sp, #123]	; 0x7b
    2248:	e58db030 	str	fp, [sp, #48]	; 0x30
    224c:	e58dc034 	str	ip, [sp, #52]	; 0x34
    2250:	e58d4044 	str	r4, [sp, #68]	; 0x44
    2254:	eaffffa1 	b	20e0 <_vfprintf_r+0x9bc>
    2258:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    225c:	e59db010 	ldr	fp, [sp, #16]
    2260:	e59c3000 	ldr	r3, [ip]
    2264:	e28cc004 	add	ip, ip, #4
    2268:	e3a02030 	mov	r2, #48	; 0x30
    226c:	e58dc030 	str	ip, [sp, #48]	; 0x30
    2270:	e59fc818 	ldr	ip, [pc, #2072]	; 2a90 <_vfprintf_r+0x136c>
    2274:	e3a07078 	mov	r7, #120	; 0x78
    2278:	e38bb002 	orr	fp, fp, #2
    227c:	e5cd207c 	strb	r2, [sp, #124]	; 0x7c
    2280:	e2932000 	adds	r2, r3, #0
    2284:	e58d0018 	str	r0, [sp, #24]
    2288:	e58db010 	str	fp, [sp, #16]
    228c:	e5cd707d 	strb	r7, [sp, #125]	; 0x7d
    2290:	13a02001 	movne	r2, #1
    2294:	e58dc06c 	str	ip, [sp, #108]	; 0x6c
    2298:	e3a01002 	mov	r1, #2
    229c:	eaffff1d 	b	1f18 <_vfprintf_r+0x7f4>
    22a0:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    22a4:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    22a8:	e3530000 	cmp	r3, #0
    22ac:	0a00000c 	beq	22e4 <_vfprintf_r+0xbc0>
    22b0:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    22b4:	e28d307b 	add	r3, sp, #123	; 0x7b
    22b8:	e2844001 	add	r4, r4, #1
    22bc:	e58a3000 	str	r3, [sl]
    22c0:	e2855001 	add	r5, r5, #1
    22c4:	e3540007 	cmp	r4, #7
    22c8:	e3a03001 	mov	r3, #1
    22cc:	e58a3004 	str	r3, [sl, #4]
    22d0:	e28db088 	add	fp, sp, #136	; 0x88
    22d4:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    22d8:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    22dc:	d28aa008 	addle	sl, sl, #8
    22e0:	ca000171 	bgt	28ac <_vfprintf_r+0x1188>
    22e4:	e59d3040 	ldr	r3, [sp, #64]	; 0x40
    22e8:	e3530000 	cmp	r3, #0
    22ec:	0a00000c 	beq	2324 <_vfprintf_r+0xc00>
    22f0:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    22f4:	e28d307c 	add	r3, sp, #124	; 0x7c
    22f8:	e2844001 	add	r4, r4, #1
    22fc:	e58a3000 	str	r3, [sl]
    2300:	e2855002 	add	r5, r5, #2
    2304:	e3540007 	cmp	r4, #7
    2308:	e3a03002 	mov	r3, #2
    230c:	e58a3004 	str	r3, [sl, #4]
    2310:	e28db088 	add	fp, sp, #136	; 0x88
    2314:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2318:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    231c:	d28aa008 	addle	sl, sl, #8
    2320:	ca00016a 	bgt	28d0 <_vfprintf_r+0x11ac>
    2324:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    2328:	e3530080 	cmp	r3, #128	; 0x80
    232c:	0a0000e3 	beq	26c0 <_vfprintf_r+0xf9c>
    2330:	e59d4038 	ldr	r4, [sp, #56]	; 0x38
    2334:	e59db034 	ldr	fp, [sp, #52]	; 0x34
    2338:	e06b9004 	rsb	r9, fp, r4
    233c:	e3590000 	cmp	r9, #0
    2340:	da000031 	ble	240c <_vfprintf_r+0xce8>
    2344:	e3590010 	cmp	r9, #16
    2348:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    234c:	e59f6748 	ldr	r6, [pc, #1864]	; 2a9c <_vfprintf_r+0x1378>
    2350:	da00001d 	ble	23cc <_vfprintf_r+0xca8>
    2354:	e28d809c 	add	r8, sp, #156	; 0x9c
    2358:	e58d7038 	str	r7, [sp, #56]	; 0x38
    235c:	e3a0b010 	mov	fp, #16
    2360:	e1a07008 	mov	r7, r8
    2364:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
    2368:	ea000002 	b	2378 <_vfprintf_r+0xc54>
    236c:	e2499010 	sub	r9, r9, #16
    2370:	e3590010 	cmp	r9, #16
    2374:	da000013 	ble	23c8 <_vfprintf_r+0xca4>
    2378:	e2844001 	add	r4, r4, #1
    237c:	e3540007 	cmp	r4, #7
    2380:	e2855010 	add	r5, r5, #16
    2384:	e88a0840 	stm	sl, {r6, fp}
    2388:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    238c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2390:	d28aa008 	addle	sl, sl, #8
    2394:	dafffff4 	ble	236c <_vfprintf_r+0xc48>
    2398:	e1a00008 	mov	r0, r8
    239c:	e59d1014 	ldr	r1, [sp, #20]
    23a0:	e1a02007 	mov	r2, r7
    23a4:	eb0014f4 	bl	777c <__sprint_r>
    23a8:	e3500000 	cmp	r0, #0
    23ac:	1afffdbe 	bne	1aac <_vfprintf_r+0x388>
    23b0:	e2499010 	sub	r9, r9, #16
    23b4:	e28d40a0 	add	r4, sp, #160	; 0xa0
    23b8:	e3590010 	cmp	r9, #16
    23bc:	e8940030 	ldm	r4, {r4, r5}
    23c0:	e28daf4e 	add	sl, sp, #312	; 0x138
    23c4:	caffffeb 	bgt	2378 <_vfprintf_r+0xc54>
    23c8:	e59d7038 	ldr	r7, [sp, #56]	; 0x38
    23cc:	e2844001 	add	r4, r4, #1
    23d0:	e0855009 	add	r5, r5, r9
    23d4:	e3540007 	cmp	r4, #7
    23d8:	e88a0240 	stm	sl, {r6, r9}
    23dc:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    23e0:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    23e4:	d28aa008 	addle	sl, sl, #8
    23e8:	da000007 	ble	240c <_vfprintf_r+0xce8>
    23ec:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    23f0:	e59d1014 	ldr	r1, [sp, #20]
    23f4:	e28d209c 	add	r2, sp, #156	; 0x9c
    23f8:	eb0014df 	bl	777c <__sprint_r>
    23fc:	e3500000 	cmp	r0, #0
    2400:	1afffda9 	bne	1aac <_vfprintf_r+0x388>
    2404:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2408:	e28daf4e 	add	sl, sp, #312	; 0x138
    240c:	e59d4010 	ldr	r4, [sp, #16]
    2410:	e3140c01 	tst	r4, #256	; 0x100
    2414:	1a000052 	bne	2564 <_vfprintf_r+0xe40>
    2418:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    241c:	e59d7034 	ldr	r7, [sp, #52]	; 0x34
    2420:	e2844001 	add	r4, r4, #1
    2424:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    2428:	e0855007 	add	r5, r5, r7
    242c:	e3540007 	cmp	r4, #7
    2430:	e58ac000 	str	ip, [sl]
    2434:	e58a7004 	str	r7, [sl, #4]
    2438:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    243c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2440:	ca00010c 	bgt	2878 <_vfprintf_r+0x1154>
    2444:	e28aa008 	add	sl, sl, #8
    2448:	e59d4010 	ldr	r4, [sp, #16]
    244c:	e3140004 	tst	r4, #4
    2450:	0a000036 	beq	2530 <_vfprintf_r+0xe0c>
    2454:	e59db028 	ldr	fp, [sp, #40]	; 0x28
    2458:	e59dc01c 	ldr	ip, [sp, #28]
    245c:	e06c700b 	rsb	r7, ip, fp
    2460:	e3570000 	cmp	r7, #0
    2464:	da000031 	ble	2530 <_vfprintf_r+0xe0c>
    2468:	e3570010 	cmp	r7, #16
    246c:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2470:	e59f9608 	ldr	r9, [pc, #1544]	; 2a80 <_vfprintf_r+0x135c>
    2474:	da00001e 	ble	24f4 <_vfprintf_r+0xdd0>
    2478:	e28d609c 	add	r6, sp, #156	; 0x9c
    247c:	e1a03006 	mov	r3, r6
    2480:	e3a08010 	mov	r8, #16
    2484:	e1a06009 	mov	r6, r9
    2488:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    248c:	e1a09003 	mov	r9, r3
    2490:	ea000002 	b	24a0 <_vfprintf_r+0xd7c>
    2494:	e2477010 	sub	r7, r7, #16
    2498:	e3570010 	cmp	r7, #16
    249c:	da000013 	ble	24f0 <_vfprintf_r+0xdcc>
    24a0:	e2844001 	add	r4, r4, #1
    24a4:	e3540007 	cmp	r4, #7
    24a8:	e2855010 	add	r5, r5, #16
    24ac:	e88a0140 	stm	sl, {r6, r8}
    24b0:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    24b4:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    24b8:	d28aa008 	addle	sl, sl, #8
    24bc:	dafffff4 	ble	2494 <_vfprintf_r+0xd70>
    24c0:	e1a0000b 	mov	r0, fp
    24c4:	e59d1014 	ldr	r1, [sp, #20]
    24c8:	e1a02009 	mov	r2, r9
    24cc:	eb0014aa 	bl	777c <__sprint_r>
    24d0:	e3500000 	cmp	r0, #0
    24d4:	1afffd74 	bne	1aac <_vfprintf_r+0x388>
    24d8:	e2477010 	sub	r7, r7, #16
    24dc:	e28d40a0 	add	r4, sp, #160	; 0xa0
    24e0:	e3570010 	cmp	r7, #16
    24e4:	e8940030 	ldm	r4, {r4, r5}
    24e8:	e28daf4e 	add	sl, sp, #312	; 0x138
    24ec:	caffffeb 	bgt	24a0 <_vfprintf_r+0xd7c>
    24f0:	e1a09006 	mov	r9, r6
    24f4:	e2844001 	add	r4, r4, #1
    24f8:	e0875005 	add	r5, r7, r5
    24fc:	e3540007 	cmp	r4, #7
    2500:	e58a9000 	str	r9, [sl]
    2504:	e58a7004 	str	r7, [sl, #4]
    2508:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    250c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2510:	da000006 	ble	2530 <_vfprintf_r+0xe0c>
    2514:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2518:	e59d1014 	ldr	r1, [sp, #20]
    251c:	e28d209c 	add	r2, sp, #156	; 0x9c
    2520:	eb001495 	bl	777c <__sprint_r>
    2524:	e3500000 	cmp	r0, #0
    2528:	1afffd5f 	bne	1aac <_vfprintf_r+0x388>
    252c:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2530:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
    2534:	e59d701c 	ldr	r7, [sp, #28]
    2538:	e59db028 	ldr	fp, [sp, #40]	; 0x28
    253c:	e157000b 	cmp	r7, fp
    2540:	a0844007 	addge	r4, r4, r7
    2544:	b084400b 	addlt	r4, r4, fp
    2548:	e3550000 	cmp	r5, #0
    254c:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    2550:	1afffd4f 	bne	1a94 <_vfprintf_r+0x370>
    2554:	e3a03000 	mov	r3, #0
    2558:	e58d30a0 	str	r3, [sp, #160]	; 0xa0
    255c:	e28daf4e 	add	sl, sp, #312	; 0x138
    2560:	eafffca7 	b	1804 <_vfprintf_r+0xe0>
    2564:	e3570065 	cmp	r7, #101	; 0x65
    2568:	da00008c 	ble	27a0 <_vfprintf_r+0x107c>
    256c:	e28d1060 	add	r1, sp, #96	; 0x60
    2570:	e8910003 	ldm	r1, {r0, r1}
    2574:	e3a02000 	mov	r2, #0
    2578:	e3a03000 	mov	r3, #0
    257c:	eb00204b 	bl	a6b0 <__cmpdf2>
    2580:	e3500000 	cmp	r0, #0
    2584:	1a0000da 	bne	28f4 <_vfprintf_r+0x11d0>
    2588:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    258c:	e59f3504 	ldr	r3, [pc, #1284]	; 2a98 <_vfprintf_r+0x1374>
    2590:	e2844001 	add	r4, r4, #1
    2594:	e58a3000 	str	r3, [sl]
    2598:	e2855001 	add	r5, r5, #1
    259c:	e3540007 	cmp	r4, #7
    25a0:	e3a03001 	mov	r3, #1
    25a4:	e58a3004 	str	r3, [sl, #4]
    25a8:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    25ac:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    25b0:	d28aa008 	addle	sl, sl, #8
    25b4:	ca000298 	bgt	301c <_vfprintf_r+0x18f8>
    25b8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    25bc:	e59d703c 	ldr	r7, [sp, #60]	; 0x3c
    25c0:	e1530007 	cmp	r3, r7
    25c4:	ba000002 	blt	25d4 <_vfprintf_r+0xeb0>
    25c8:	e59db010 	ldr	fp, [sp, #16]
    25cc:	e31b0001 	tst	fp, #1
    25d0:	0affff9c 	beq	2448 <_vfprintf_r+0xd24>
    25d4:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    25d8:	e59dc05c 	ldr	ip, [sp, #92]	; 0x5c
    25dc:	e2844001 	add	r4, r4, #1
    25e0:	e59d7050 	ldr	r7, [sp, #80]	; 0x50
    25e4:	e085500c 	add	r5, r5, ip
    25e8:	e3540007 	cmp	r4, #7
    25ec:	e88a1080 	stm	sl, {r7, ip}
    25f0:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    25f4:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    25f8:	d28aa008 	addle	sl, sl, #8
    25fc:	ca0002fa 	bgt	31ec <_vfprintf_r+0x1ac8>
    2600:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    2604:	e24c8001 	sub	r8, ip, #1
    2608:	e3580000 	cmp	r8, #0
    260c:	daffff8d 	ble	2448 <_vfprintf_r+0xd24>
    2610:	e3580010 	cmp	r8, #16
    2614:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2618:	e59f647c 	ldr	r6, [pc, #1148]	; 2a9c <_vfprintf_r+0x1378>
    261c:	da000139 	ble	2b08 <_vfprintf_r+0x13e4>
    2620:	e28d709c 	add	r7, sp, #156	; 0x9c
    2624:	e1a03007 	mov	r3, r7
    2628:	e3a09010 	mov	r9, #16
    262c:	e1a07006 	mov	r7, r6
    2630:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    2634:	e1a06003 	mov	r6, r3
    2638:	ea000002 	b	2648 <_vfprintf_r+0xf24>
    263c:	e2488010 	sub	r8, r8, #16
    2640:	e3580010 	cmp	r8, #16
    2644:	da00012e 	ble	2b04 <_vfprintf_r+0x13e0>
    2648:	e2844001 	add	r4, r4, #1
    264c:	e3540007 	cmp	r4, #7
    2650:	e2855010 	add	r5, r5, #16
    2654:	e88a0280 	stm	sl, {r7, r9}
    2658:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    265c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2660:	d28aa008 	addle	sl, sl, #8
    2664:	dafffff4 	ble	263c <_vfprintf_r+0xf18>
    2668:	e1a0000b 	mov	r0, fp
    266c:	e59d1014 	ldr	r1, [sp, #20]
    2670:	e1a02006 	mov	r2, r6
    2674:	eb001440 	bl	777c <__sprint_r>
    2678:	e3500000 	cmp	r0, #0
    267c:	1afffd0a 	bne	1aac <_vfprintf_r+0x388>
    2680:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2684:	e8940030 	ldm	r4, {r4, r5}
    2688:	e28daf4e 	add	sl, sp, #312	; 0x138
    268c:	eaffffea 	b	263c <_vfprintf_r+0xf18>
    2690:	e3510000 	cmp	r1, #0
    2694:	1a000080 	bne	289c <_vfprintf_r+0x1178>
    2698:	e59db010 	ldr	fp, [sp, #16]
    269c:	e31b0001 	tst	fp, #1
    26a0:	0a0000ce 	beq	29e0 <_vfprintf_r+0x12bc>
    26a4:	e59dc074 	ldr	ip, [sp, #116]	; 0x74
    26a8:	e59db054 	ldr	fp, [sp, #84]	; 0x54
    26ac:	e3a03030 	mov	r3, #48	; 0x30
    26b0:	e5cd30cf 	strb	r3, [sp, #207]	; 0xcf
    26b4:	e58dc034 	str	ip, [sp, #52]	; 0x34
    26b8:	e58db044 	str	fp, [sp, #68]	; 0x44
    26bc:	eafffd83 	b	1cd0 <_vfprintf_r+0x5ac>
    26c0:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    26c4:	e59db01c 	ldr	fp, [sp, #28]
    26c8:	e06b9004 	rsb	r9, fp, r4
    26cc:	e3590000 	cmp	r9, #0
    26d0:	daffff16 	ble	2330 <_vfprintf_r+0xc0c>
    26d4:	e3590010 	cmp	r9, #16
    26d8:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    26dc:	e59f63b8 	ldr	r6, [pc, #952]	; 2a9c <_vfprintf_r+0x1378>
    26e0:	da00001d 	ble	275c <_vfprintf_r+0x1038>
    26e4:	e28d809c 	add	r8, sp, #156	; 0x9c
    26e8:	e58d7040 	str	r7, [sp, #64]	; 0x40
    26ec:	e3a0b010 	mov	fp, #16
    26f0:	e1a07008 	mov	r7, r8
    26f4:	e59d8024 	ldr	r8, [sp, #36]	; 0x24
    26f8:	ea000002 	b	2708 <_vfprintf_r+0xfe4>
    26fc:	e2499010 	sub	r9, r9, #16
    2700:	e3590010 	cmp	r9, #16
    2704:	da000013 	ble	2758 <_vfprintf_r+0x1034>
    2708:	e2844001 	add	r4, r4, #1
    270c:	e3540007 	cmp	r4, #7
    2710:	e2855010 	add	r5, r5, #16
    2714:	e88a0840 	stm	sl, {r6, fp}
    2718:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    271c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2720:	d28aa008 	addle	sl, sl, #8
    2724:	dafffff4 	ble	26fc <_vfprintf_r+0xfd8>
    2728:	e1a00008 	mov	r0, r8
    272c:	e59d1014 	ldr	r1, [sp, #20]
    2730:	e1a02007 	mov	r2, r7
    2734:	eb001410 	bl	777c <__sprint_r>
    2738:	e3500000 	cmp	r0, #0
    273c:	1afffcda 	bne	1aac <_vfprintf_r+0x388>
    2740:	e2499010 	sub	r9, r9, #16
    2744:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2748:	e3590010 	cmp	r9, #16
    274c:	e8940030 	ldm	r4, {r4, r5}
    2750:	e28daf4e 	add	sl, sp, #312	; 0x138
    2754:	caffffeb 	bgt	2708 <_vfprintf_r+0xfe4>
    2758:	e59d7040 	ldr	r7, [sp, #64]	; 0x40
    275c:	e2844001 	add	r4, r4, #1
    2760:	e0855009 	add	r5, r5, r9
    2764:	e3540007 	cmp	r4, #7
    2768:	e88a0240 	stm	sl, {r6, r9}
    276c:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2770:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2774:	d28aa008 	addle	sl, sl, #8
    2778:	dafffeec 	ble	2330 <_vfprintf_r+0xc0c>
    277c:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2780:	e59d1014 	ldr	r1, [sp, #20]
    2784:	e28d209c 	add	r2, sp, #156	; 0x9c
    2788:	eb0013fb 	bl	777c <__sprint_r>
    278c:	e3500000 	cmp	r0, #0
    2790:	1afffcc5 	bne	1aac <_vfprintf_r+0x388>
    2794:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2798:	e28daf4e 	add	sl, sp, #312	; 0x138
    279c:	eafffee3 	b	2330 <_vfprintf_r+0xc0c>
    27a0:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    27a4:	e3540001 	cmp	r4, #1
    27a8:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    27ac:	e2855001 	add	r5, r5, #1
    27b0:	e2844001 	add	r4, r4, #1
    27b4:	da000144 	ble	2ccc <_vfprintf_r+0x15a8>
    27b8:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    27bc:	e3540007 	cmp	r4, #7
    27c0:	e3a03001 	mov	r3, #1
    27c4:	e58ac000 	str	ip, [sl]
    27c8:	e58a3004 	str	r3, [sl, #4]
    27cc:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    27d0:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    27d4:	d28aa008 	addle	sl, sl, #8
    27d8:	ca000158 	bgt	2d40 <_vfprintf_r+0x161c>
    27dc:	e59d705c 	ldr	r7, [sp, #92]	; 0x5c
    27e0:	e2844001 	add	r4, r4, #1
    27e4:	e59db050 	ldr	fp, [sp, #80]	; 0x50
    27e8:	e0855007 	add	r5, r5, r7
    27ec:	e3540007 	cmp	r4, #7
    27f0:	e58ab000 	str	fp, [sl]
    27f4:	e58a7004 	str	r7, [sl, #4]
    27f8:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    27fc:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2800:	d28aa008 	addle	sl, sl, #8
    2804:	ca000143 	bgt	2d18 <_vfprintf_r+0x15f4>
    2808:	e28d1060 	add	r1, sp, #96	; 0x60
    280c:	e8910003 	ldm	r1, {r0, r1}
    2810:	e3a02000 	mov	r2, #0
    2814:	e3a03000 	mov	r3, #0
    2818:	eb001fa4 	bl	a6b0 <__cmpdf2>
    281c:	e3500000 	cmp	r0, #0
    2820:	e59d703c 	ldr	r7, [sp, #60]	; 0x3c
    2824:	0a000087 	beq	2a48 <_vfprintf_r+0x1324>
    2828:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    282c:	e2473001 	sub	r3, r7, #1
    2830:	e2844001 	add	r4, r4, #1
    2834:	e28c2001 	add	r2, ip, #1
    2838:	e0855003 	add	r5, r5, r3
    283c:	e3540007 	cmp	r4, #7
    2840:	e88a000c 	stm	sl, {r2, r3}
    2844:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2848:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    284c:	ca00014d 	bgt	2d88 <_vfprintf_r+0x1664>
    2850:	e28aa008 	add	sl, sl, #8
    2854:	e59dc068 	ldr	ip, [sp, #104]	; 0x68
    2858:	e2844001 	add	r4, r4, #1
    285c:	e085500c 	add	r5, r5, ip
    2860:	e28d308c 	add	r3, sp, #140	; 0x8c
    2864:	e3540007 	cmp	r4, #7
    2868:	e88a1008 	stm	sl, {r3, ip}
    286c:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2870:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2874:	dafffef2 	ble	2444 <_vfprintf_r+0xd20>
    2878:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    287c:	e59d1014 	ldr	r1, [sp, #20]
    2880:	e28d209c 	add	r2, sp, #156	; 0x9c
    2884:	eb0013bc 	bl	777c <__sprint_r>
    2888:	e3500000 	cmp	r0, #0
    288c:	1afffc86 	bne	1aac <_vfprintf_r+0x388>
    2890:	e28daf4e 	add	sl, sp, #312	; 0x138
    2894:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2898:	eafffeea 	b	2448 <_vfprintf_r+0xd24>
    289c:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    28a0:	e58d2034 	str	r2, [sp, #52]	; 0x34
    28a4:	e58dc044 	str	ip, [sp, #68]	; 0x44
    28a8:	eafffd08 	b	1cd0 <_vfprintf_r+0x5ac>
    28ac:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    28b0:	e59d1014 	ldr	r1, [sp, #20]
    28b4:	e28d209c 	add	r2, sp, #156	; 0x9c
    28b8:	eb0013af 	bl	777c <__sprint_r>
    28bc:	e3500000 	cmp	r0, #0
    28c0:	1afffc79 	bne	1aac <_vfprintf_r+0x388>
    28c4:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    28c8:	e28daf4e 	add	sl, sp, #312	; 0x138
    28cc:	eafffe84 	b	22e4 <_vfprintf_r+0xbc0>
    28d0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    28d4:	e59d1014 	ldr	r1, [sp, #20]
    28d8:	e28d209c 	add	r2, sp, #156	; 0x9c
    28dc:	eb0013a6 	bl	777c <__sprint_r>
    28e0:	e3500000 	cmp	r0, #0
    28e4:	1afffc70 	bne	1aac <_vfprintf_r+0x388>
    28e8:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    28ec:	e28daf4e 	add	sl, sp, #312	; 0x138
    28f0:	eafffe8b 	b	2324 <_vfprintf_r+0xc00>
    28f4:	e59d7080 	ldr	r7, [sp, #128]	; 0x80
    28f8:	e3570000 	cmp	r7, #0
    28fc:	da0001d0 	ble	3044 <_vfprintf_r+0x1920>
    2900:	e59d603c 	ldr	r6, [sp, #60]	; 0x3c
    2904:	e59d4058 	ldr	r4, [sp, #88]	; 0x58
    2908:	e59d7044 	ldr	r7, [sp, #68]	; 0x44
    290c:	e1560004 	cmp	r6, r4
    2910:	a1a06004 	movge	r6, r4
    2914:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    2918:	e3560000 	cmp	r6, #0
    291c:	e087b00c 	add	fp, r7, ip
    2920:	da000009 	ble	294c <_vfprintf_r+0x1228>
    2924:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2928:	e2844001 	add	r4, r4, #1
    292c:	e0855006 	add	r5, r5, r6
    2930:	e3540007 	cmp	r4, #7
    2934:	e58a7000 	str	r7, [sl]
    2938:	e58a6004 	str	r6, [sl, #4]
    293c:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2940:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2944:	d28aa008 	addle	sl, sl, #8
    2948:	ca00024e 	bgt	3288 <_vfprintf_r+0x1b64>
    294c:	e59d4058 	ldr	r4, [sp, #88]	; 0x58
    2950:	e1c66fc6 	bic	r6, r6, r6, asr #31
    2954:	e0668004 	rsb	r8, r6, r4
    2958:	e3580000 	cmp	r8, #0
    295c:	da000083 	ble	2b70 <_vfprintf_r+0x144c>
    2960:	e3580010 	cmp	r8, #16
    2964:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2968:	e59f612c 	ldr	r6, [pc, #300]	; 2a9c <_vfprintf_r+0x1378>
    296c:	da00006f 	ble	2b30 <_vfprintf_r+0x140c>
    2970:	e28d709c 	add	r7, sp, #156	; 0x9c
    2974:	e58db034 	str	fp, [sp, #52]	; 0x34
    2978:	e3a09010 	mov	r9, #16
    297c:	e1a0b008 	mov	fp, r8
    2980:	e1a08007 	mov	r8, r7
    2984:	e59d7024 	ldr	r7, [sp, #36]	; 0x24
    2988:	ea000002 	b	2998 <_vfprintf_r+0x1274>
    298c:	e24bb010 	sub	fp, fp, #16
    2990:	e35b0010 	cmp	fp, #16
    2994:	da000063 	ble	2b28 <_vfprintf_r+0x1404>
    2998:	e2844001 	add	r4, r4, #1
    299c:	e3540007 	cmp	r4, #7
    29a0:	e2855010 	add	r5, r5, #16
    29a4:	e88a0240 	stm	sl, {r6, r9}
    29a8:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    29ac:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    29b0:	d28aa008 	addle	sl, sl, #8
    29b4:	dafffff4 	ble	298c <_vfprintf_r+0x1268>
    29b8:	e1a00007 	mov	r0, r7
    29bc:	e59d1014 	ldr	r1, [sp, #20]
    29c0:	e1a02008 	mov	r2, r8
    29c4:	eb00136c 	bl	777c <__sprint_r>
    29c8:	e3500000 	cmp	r0, #0
    29cc:	1afffc36 	bne	1aac <_vfprintf_r+0x388>
    29d0:	e28d40a0 	add	r4, sp, #160	; 0xa0
    29d4:	e8940030 	ldm	r4, {r4, r5}
    29d8:	e28daf4e 	add	sl, sp, #312	; 0x138
    29dc:	eaffffea 	b	298c <_vfprintf_r+0x1268>
    29e0:	e59db04c 	ldr	fp, [sp, #76]	; 0x4c
    29e4:	e58d1034 	str	r1, [sp, #52]	; 0x34
    29e8:	e58db044 	str	fp, [sp, #68]	; 0x44
    29ec:	eafffcb7 	b	1cd0 <_vfprintf_r+0x5ac>
    29f0:	e59dc06c 	ldr	ip, [sp, #108]	; 0x6c
    29f4:	e203100f 	and	r1, r3, #15
    29f8:	e7dc0001 	ldrb	r0, [ip, r1]
    29fc:	e1b03223 	lsrs	r3, r3, #4
    2a00:	e1a01002 	mov	r1, r2
    2a04:	e5c20000 	strb	r0, [r2]
    2a08:	e2422001 	sub	r2, r2, #1
    2a0c:	1afffff8 	bne	29f4 <_vfprintf_r+0x12d0>
    2a10:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    2a14:	e061c00c 	rsb	ip, r1, ip
    2a18:	e58d1044 	str	r1, [sp, #68]	; 0x44
    2a1c:	e58dc034 	str	ip, [sp, #52]	; 0x34
    2a20:	eafffcaa 	b	1cd0 <_vfprintf_r+0x5ac>
    2a24:	e3530009 	cmp	r3, #9
    2a28:	8a0000e0 	bhi	2db0 <_vfprintf_r+0x168c>
    2a2c:	e59db074 	ldr	fp, [sp, #116]	; 0x74
    2a30:	e59dc054 	ldr	ip, [sp, #84]	; 0x54
    2a34:	e2833030 	add	r3, r3, #48	; 0x30
    2a38:	e5cd30cf 	strb	r3, [sp, #207]	; 0xcf
    2a3c:	e58db034 	str	fp, [sp, #52]	; 0x34
    2a40:	e58dc044 	str	ip, [sp, #68]	; 0x44
    2a44:	eafffca1 	b	1cd0 <_vfprintf_r+0x5ac>
    2a48:	e2478001 	sub	r8, r7, #1
    2a4c:	e3580000 	cmp	r8, #0
    2a50:	daffff7f 	ble	2854 <_vfprintf_r+0x1130>
    2a54:	e3580010 	cmp	r8, #16
    2a58:	e59f603c 	ldr	r6, [pc, #60]	; 2a9c <_vfprintf_r+0x1378>
    2a5c:	da0000c2 	ble	2d6c <_vfprintf_r+0x1648>
    2a60:	e28d709c 	add	r7, sp, #156	; 0x9c
    2a64:	e1a03007 	mov	r3, r7
    2a68:	e3a09010 	mov	r9, #16
    2a6c:	e1a07006 	mov	r7, r6
    2a70:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    2a74:	e1a06003 	mov	r6, r3
    2a78:	ea00000f 	b	2abc <_vfprintf_r+0x1398>
    2a7c:	fffffba4 	.word	0xfffffba4
    2a80:	0000a864 	.word	0x0000a864
    2a84:	0000a884 	.word	0x0000a884
    2a88:	0000a888 	.word	0x0000a888
    2a8c:	0000a894 	.word	0x0000a894
    2a90:	0000a8a8 	.word	0x0000a8a8
    2a94:	cccccccd 	.word	0xcccccccd
    2a98:	0000a8c4 	.word	0x0000a8c4
    2a9c:	0000a874 	.word	0x0000a874
    2aa0:	0000a88c 	.word	0x0000a88c
    2aa4:	0000a890 	.word	0x0000a890
    2aa8:	0000a8bc 	.word	0x0000a8bc
    2aac:	66666667 	.word	0x66666667
    2ab0:	e2488010 	sub	r8, r8, #16
    2ab4:	e3580010 	cmp	r8, #16
    2ab8:	da0000aa 	ble	2d68 <_vfprintf_r+0x1644>
    2abc:	e2844001 	add	r4, r4, #1
    2ac0:	e3540007 	cmp	r4, #7
    2ac4:	e2855010 	add	r5, r5, #16
    2ac8:	e88a0280 	stm	sl, {r7, r9}
    2acc:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2ad0:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2ad4:	d28aa008 	addle	sl, sl, #8
    2ad8:	dafffff4 	ble	2ab0 <_vfprintf_r+0x138c>
    2adc:	e1a0000b 	mov	r0, fp
    2ae0:	e59d1014 	ldr	r1, [sp, #20]
    2ae4:	e1a02006 	mov	r2, r6
    2ae8:	eb001323 	bl	777c <__sprint_r>
    2aec:	e3500000 	cmp	r0, #0
    2af0:	1afffbed 	bne	1aac <_vfprintf_r+0x388>
    2af4:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2af8:	e8940030 	ldm	r4, {r4, r5}
    2afc:	e28daf4e 	add	sl, sp, #312	; 0x138
    2b00:	eaffffea 	b	2ab0 <_vfprintf_r+0x138c>
    2b04:	e1a06007 	mov	r6, r7
    2b08:	e2844001 	add	r4, r4, #1
    2b0c:	e0855008 	add	r5, r5, r8
    2b10:	e3540007 	cmp	r4, #7
    2b14:	e88a0140 	stm	sl, {r6, r8}
    2b18:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2b1c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2b20:	dafffe47 	ble	2444 <_vfprintf_r+0xd20>
    2b24:	eaffff53 	b	2878 <_vfprintf_r+0x1154>
    2b28:	e1a0800b 	mov	r8, fp
    2b2c:	e59db034 	ldr	fp, [sp, #52]	; 0x34
    2b30:	e2844001 	add	r4, r4, #1
    2b34:	e0855008 	add	r5, r5, r8
    2b38:	e3540007 	cmp	r4, #7
    2b3c:	e88a0140 	stm	sl, {r6, r8}
    2b40:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2b44:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2b48:	d28aa008 	addle	sl, sl, #8
    2b4c:	da000007 	ble	2b70 <_vfprintf_r+0x144c>
    2b50:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2b54:	e59d1014 	ldr	r1, [sp, #20]
    2b58:	e28d209c 	add	r2, sp, #156	; 0x9c
    2b5c:	eb001306 	bl	777c <__sprint_r>
    2b60:	e3500000 	cmp	r0, #0
    2b64:	1afffbd0 	bne	1aac <_vfprintf_r+0x388>
    2b68:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2b6c:	e28daf4e 	add	sl, sp, #312	; 0x138
    2b70:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    2b74:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    2b78:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    2b7c:	e1530004 	cmp	r3, r4
    2b80:	e59d4058 	ldr	r4, [sp, #88]	; 0x58
    2b84:	e08c7004 	add	r7, ip, r4
    2b88:	ba000038 	blt	2c70 <_vfprintf_r+0x154c>
    2b8c:	e59dc010 	ldr	ip, [sp, #16]
    2b90:	e31c0001 	tst	ip, #1
    2b94:	1a000035 	bne	2c70 <_vfprintf_r+0x154c>
    2b98:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    2b9c:	e067600b 	rsb	r6, r7, fp
    2ba0:	e0633004 	rsb	r3, r3, r4
    2ba4:	e1530006 	cmp	r3, r6
    2ba8:	b1a06003 	movlt	r6, r3
    2bac:	a1a06006 	movge	r6, r6
    2bb0:	e3560000 	cmp	r6, #0
    2bb4:	da000009 	ble	2be0 <_vfprintf_r+0x14bc>
    2bb8:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2bbc:	e2844001 	add	r4, r4, #1
    2bc0:	e0855006 	add	r5, r5, r6
    2bc4:	e3540007 	cmp	r4, #7
    2bc8:	e58a7000 	str	r7, [sl]
    2bcc:	e58a6004 	str	r6, [sl, #4]
    2bd0:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2bd4:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2bd8:	d28aa008 	addle	sl, sl, #8
    2bdc:	ca0001b2 	bgt	32ac <_vfprintf_r+0x1b88>
    2be0:	e1c66fc6 	bic	r6, r6, r6, asr #31
    2be4:	e0668003 	rsb	r8, r6, r3
    2be8:	e3580000 	cmp	r8, #0
    2bec:	dafffe15 	ble	2448 <_vfprintf_r+0xd24>
    2bf0:	e3580010 	cmp	r8, #16
    2bf4:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2bf8:	e51f6164 	ldr	r6, [pc, #-356]	; 2a9c <_vfprintf_r+0x1378>
    2bfc:	daffffc1 	ble	2b08 <_vfprintf_r+0x13e4>
    2c00:	e28d709c 	add	r7, sp, #156	; 0x9c
    2c04:	e1a03007 	mov	r3, r7
    2c08:	e3a09010 	mov	r9, #16
    2c0c:	e1a07006 	mov	r7, r6
    2c10:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    2c14:	e1a06003 	mov	r6, r3
    2c18:	ea000002 	b	2c28 <_vfprintf_r+0x1504>
    2c1c:	e2488010 	sub	r8, r8, #16
    2c20:	e3580010 	cmp	r8, #16
    2c24:	daffffb6 	ble	2b04 <_vfprintf_r+0x13e0>
    2c28:	e2844001 	add	r4, r4, #1
    2c2c:	e3540007 	cmp	r4, #7
    2c30:	e2855010 	add	r5, r5, #16
    2c34:	e88a0280 	stm	sl, {r7, r9}
    2c38:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2c3c:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2c40:	d28aa008 	addle	sl, sl, #8
    2c44:	dafffff4 	ble	2c1c <_vfprintf_r+0x14f8>
    2c48:	e1a0000b 	mov	r0, fp
    2c4c:	e59d1014 	ldr	r1, [sp, #20]
    2c50:	e1a02006 	mov	r2, r6
    2c54:	eb0012c8 	bl	777c <__sprint_r>
    2c58:	e3500000 	cmp	r0, #0
    2c5c:	1afffb92 	bne	1aac <_vfprintf_r+0x388>
    2c60:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2c64:	e8940030 	ldm	r4, {r4, r5}
    2c68:	e28daf4e 	add	sl, sp, #312	; 0x138
    2c6c:	eaffffea 	b	2c1c <_vfprintf_r+0x14f8>
    2c70:	e59dc05c 	ldr	ip, [sp, #92]	; 0x5c
    2c74:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    2c78:	e085500c 	add	r5, r5, ip
    2c7c:	e59dc050 	ldr	ip, [sp, #80]	; 0x50
    2c80:	e2844001 	add	r4, r4, #1
    2c84:	e58ac000 	str	ip, [sl]
    2c88:	e59dc05c 	ldr	ip, [sp, #92]	; 0x5c
    2c8c:	e3540007 	cmp	r4, #7
    2c90:	e58ac004 	str	ip, [sl, #4]
    2c94:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2c98:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2c9c:	d28aa008 	addle	sl, sl, #8
    2ca0:	daffffbc 	ble	2b98 <_vfprintf_r+0x1474>
    2ca4:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2ca8:	e59d1014 	ldr	r1, [sp, #20]
    2cac:	e28d209c 	add	r2, sp, #156	; 0x9c
    2cb0:	eb0012b1 	bl	777c <__sprint_r>
    2cb4:	e3500000 	cmp	r0, #0
    2cb8:	1afffb7b 	bne	1aac <_vfprintf_r+0x388>
    2cbc:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    2cc0:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    2cc4:	e28daf4e 	add	sl, sp, #312	; 0x138
    2cc8:	eaffffb2 	b	2b98 <_vfprintf_r+0x1474>
    2ccc:	e59d7010 	ldr	r7, [sp, #16]
    2cd0:	e3170001 	tst	r7, #1
    2cd4:	1afffeb7 	bne	27b8 <_vfprintf_r+0x1094>
    2cd8:	e59d7044 	ldr	r7, [sp, #68]	; 0x44
    2cdc:	e3a03001 	mov	r3, #1
    2ce0:	e3540007 	cmp	r4, #7
    2ce4:	e58a7000 	str	r7, [sl]
    2ce8:	e58a3004 	str	r3, [sl, #4]
    2cec:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2cf0:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2cf4:	dafffed5 	ble	2850 <_vfprintf_r+0x112c>
    2cf8:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2cfc:	e59d1014 	ldr	r1, [sp, #20]
    2d00:	e28d209c 	add	r2, sp, #156	; 0x9c
    2d04:	eb00129c 	bl	777c <__sprint_r>
    2d08:	e3500000 	cmp	r0, #0
    2d0c:	e28db0a8 	add	fp, sp, #168	; 0xa8
    2d10:	0a000022 	beq	2da0 <_vfprintf_r+0x167c>
    2d14:	eafffb64 	b	1aac <_vfprintf_r+0x388>
    2d18:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2d1c:	e59d1014 	ldr	r1, [sp, #20]
    2d20:	e28d209c 	add	r2, sp, #156	; 0x9c
    2d24:	eb001294 	bl	777c <__sprint_r>
    2d28:	e3500000 	cmp	r0, #0
    2d2c:	1afffb5e 	bne	1aac <_vfprintf_r+0x388>
    2d30:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2d34:	e8940030 	ldm	r4, {r4, r5}
    2d38:	e28daf4e 	add	sl, sp, #312	; 0x138
    2d3c:	eafffeb1 	b	2808 <_vfprintf_r+0x10e4>
    2d40:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2d44:	e59d1014 	ldr	r1, [sp, #20]
    2d48:	e28d209c 	add	r2, sp, #156	; 0x9c
    2d4c:	eb00128a 	bl	777c <__sprint_r>
    2d50:	e3500000 	cmp	r0, #0
    2d54:	1afffb54 	bne	1aac <_vfprintf_r+0x388>
    2d58:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2d5c:	e8940030 	ldm	r4, {r4, r5}
    2d60:	e28daf4e 	add	sl, sp, #312	; 0x138
    2d64:	eafffe9c 	b	27dc <_vfprintf_r+0x10b8>
    2d68:	e1a06007 	mov	r6, r7
    2d6c:	e2844001 	add	r4, r4, #1
    2d70:	e0855008 	add	r5, r5, r8
    2d74:	e3540007 	cmp	r4, #7
    2d78:	e88a0140 	stm	sl, {r6, r8}
    2d7c:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    2d80:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    2d84:	dafffeb1 	ble	2850 <_vfprintf_r+0x112c>
    2d88:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2d8c:	e59d1014 	ldr	r1, [sp, #20]
    2d90:	e28d209c 	add	r2, sp, #156	; 0x9c
    2d94:	eb001278 	bl	777c <__sprint_r>
    2d98:	e3500000 	cmp	r0, #0
    2d9c:	1afffb42 	bne	1aac <_vfprintf_r+0x388>
    2da0:	e28d40a0 	add	r4, sp, #160	; 0xa0
    2da4:	e28daf4e 	add	sl, sp, #312	; 0x138
    2da8:	e8940030 	ldm	r4, {r4, r5}
    2dac:	eafffea8 	b	2854 <_vfprintf_r+0x1130>
    2db0:	e51f0324 	ldr	r0, [pc, #-804]	; 2a94 <_vfprintf_r+0x1370>
    2db4:	e59d1054 	ldr	r1, [sp, #84]	; 0x54
    2db8:	e082b390 	umull	fp, r2, r0, r3
    2dbc:	e1a021a2 	lsr	r2, r2, #3
    2dc0:	e082c102 	add	ip, r2, r2, lsl #2
    2dc4:	e043308c 	sub	r3, r3, ip, lsl #1
    2dc8:	e1a0c001 	mov	ip, r1
    2dcc:	e2831030 	add	r1, r3, #48	; 0x30
    2dd0:	e2523000 	subs	r3, r2, #0
    2dd4:	e5cc1000 	strb	r1, [ip]
    2dd8:	e24c1001 	sub	r1, ip, #1
    2ddc:	1afffff5 	bne	2db8 <_vfprintf_r+0x1694>
    2de0:	e59db04c 	ldr	fp, [sp, #76]	; 0x4c
    2de4:	e58dc044 	str	ip, [sp, #68]	; 0x44
    2de8:	e06cc00b 	rsb	ip, ip, fp
    2dec:	e58dc034 	str	ip, [sp, #52]	; 0x34
    2df0:	eafffbb6 	b	1cd0 <_vfprintf_r+0x5ac>
    2df4:	e3510030 	cmp	r1, #48	; 0x30
    2df8:	158d2044 	strne	r2, [sp, #68]	; 0x44
    2dfc:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    2e00:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    2e04:	13a02030 	movne	r2, #48	; 0x30
    2e08:	e06c3003 	rsb	r3, ip, r3
    2e0c:	15402001 	strbne	r2, [r0, #-1]
    2e10:	e58d3034 	str	r3, [sp, #52]	; 0x34
    2e14:	eafffbad 	b	1cd0 <_vfprintf_r+0x5ac>
    2e18:	e3a0202d 	mov	r2, #45	; 0x2d
    2e1c:	e2633000 	rsb	r3, r3, #0
    2e20:	e5cd207b 	strb	r2, [sp, #123]	; 0x7b
    2e24:	e2932000 	adds	r2, r3, #0
    2e28:	13a02001 	movne	r2, #1
    2e2c:	e3a01001 	mov	r1, #1
    2e30:	eafffb8b 	b	1c64 <_vfprintf_r+0x540>
    2e34:	eb001151 	bl	7380 <__fpclassifyd>
    2e38:	e3500000 	cmp	r0, #0
    2e3c:	0a0000c9 	beq	3168 <_vfprintf_r+0x1a44>
    2e40:	e3740001 	cmn	r4, #1
    2e44:	e3c79020 	bic	r9, r7, #32
    2e48:	03a04006 	moveq	r4, #6
    2e4c:	0a000003 	beq	2e60 <_vfprintf_r+0x173c>
    2e50:	e3590047 	cmp	r9, #71	; 0x47
    2e54:	1a000001 	bne	2e60 <_vfprintf_r+0x173c>
    2e58:	e3540000 	cmp	r4, #0
    2e5c:	03a04001 	moveq	r4, #1
    2e60:	e3560000 	cmp	r6, #0
    2e64:	b2866102 	addlt	r6, r6, #-2147483648	; 0x80000000
    2e68:	b3a0b02d 	movlt	fp, #45	; 0x2d
    2e6c:	a3a0b000 	movge	fp, #0
    2e70:	e2593046 	subs	r3, r9, #70	; 0x46
    2e74:	e2735000 	rsbs	r5, r3, #0
    2e78:	e59dc010 	ldr	ip, [sp, #16]
    2e7c:	e0b55003 	adcs	r5, r5, r3
    2e80:	e38ccc01 	orr	ip, ip, #256	; 0x100
    2e84:	e3550000 	cmp	r5, #0
    2e88:	e58dc038 	str	ip, [sp, #56]	; 0x38
    2e8c:	1a00011c 	bne	3304 <_vfprintf_r+0x1be0>
    2e90:	e3590045 	cmp	r9, #69	; 0x45
    2e94:	1a000178 	bne	347c <_vfprintf_r+0x1d58>
    2e98:	e28d1088 	add	r1, sp, #136	; 0x88
    2e9c:	e2845001 	add	r5, r4, #1
    2ea0:	e28dc080 	add	ip, sp, #128	; 0x80
    2ea4:	e28d0084 	add	r0, sp, #132	; 0x84
    2ea8:	e88d1020 	stm	sp, {r5, ip}
    2eac:	e58d0008 	str	r0, [sp, #8]
    2eb0:	e58d100c 	str	r1, [sp, #12]
    2eb4:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    2eb8:	e1a01006 	mov	r1, r6
    2ebc:	e1a02008 	mov	r2, r8
    2ec0:	e3a03002 	mov	r3, #2
    2ec4:	eb000307 	bl	3ae8 <_dtoa_r>
    2ec8:	e58d0044 	str	r0, [sp, #68]	; 0x44
    2ecc:	e0805005 	add	r5, r0, r5
    2ed0:	e1a00006 	mov	r0, r6
    2ed4:	e1a01008 	mov	r1, r8
    2ed8:	e3a02000 	mov	r2, #0
    2edc:	e3a03000 	mov	r3, #0
    2ee0:	eb001df2 	bl	a6b0 <__cmpdf2>
    2ee4:	e3500000 	cmp	r0, #0
    2ee8:	0a000008 	beq	2f10 <_vfprintf_r+0x17ec>
    2eec:	e59d3088 	ldr	r3, [sp, #136]	; 0x88
    2ef0:	e1550003 	cmp	r5, r3
    2ef4:	91a05003 	movls	r5, r3
    2ef8:	9a000004 	bls	2f10 <_vfprintf_r+0x17ec>
    2efc:	e3a02030 	mov	r2, #48	; 0x30
    2f00:	e4c32001 	strb	r2, [r3], #1
    2f04:	e1530005 	cmp	r3, r5
    2f08:	e58d3088 	str	r3, [sp, #136]	; 0x88
    2f0c:	1afffffb 	bne	2f00 <_vfprintf_r+0x17dc>
    2f10:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    2f14:	e3590047 	cmp	r9, #71	; 0x47
    2f18:	e06c5005 	rsb	r5, ip, r5
    2f1c:	e58d503c 	str	r5, [sp, #60]	; 0x3c
    2f20:	0a00011b 	beq	3394 <_vfprintf_r+0x1c70>
    2f24:	e3570065 	cmp	r7, #101	; 0x65
    2f28:	da0001b7 	ble	360c <_vfprintf_r+0x1ee8>
    2f2c:	e3570066 	cmp	r7, #102	; 0x66
    2f30:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    2f34:	0a00015c 	beq	34ac <_vfprintf_r+0x1d88>
    2f38:	e59d703c 	ldr	r7, [sp, #60]	; 0x3c
    2f3c:	e1530007 	cmp	r3, r7
    2f40:	ba00014f 	blt	3484 <_vfprintf_r+0x1d60>
    2f44:	e59dc010 	ldr	ip, [sp, #16]
    2f48:	e31c0001 	tst	ip, #1
    2f4c:	12837001 	addne	r7, r3, #1
    2f50:	11c7cfc7 	bicne	ip, r7, r7, asr #31
    2f54:	01c34fc3 	biceq	r4, r3, r3, asr #31
    2f58:	058d401c 	streq	r4, [sp, #28]
    2f5c:	058d3034 	streq	r3, [sp, #52]	; 0x34
    2f60:	158dc01c 	strne	ip, [sp, #28]
    2f64:	158d7034 	strne	r7, [sp, #52]	; 0x34
    2f68:	e3a07067 	mov	r7, #103	; 0x67
    2f6c:	e58d3058 	str	r3, [sp, #88]	; 0x58
    2f70:	e35b0000 	cmp	fp, #0
    2f74:	0a0000fe 	beq	3374 <_vfprintf_r+0x1c50>
    2f78:	e59d4038 	ldr	r4, [sp, #56]	; 0x38
    2f7c:	e3a0302d 	mov	r3, #45	; 0x2d
    2f80:	e3a0b000 	mov	fp, #0
    2f84:	e5cd307b 	strb	r3, [sp, #123]	; 0x7b
    2f88:	e58d4010 	str	r4, [sp, #16]
    2f8c:	e58db038 	str	fp, [sp, #56]	; 0x38
    2f90:	eafffb58 	b	1cf8 <_vfprintf_r+0x5d4>
    2f94:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    2f98:	e89b0140 	ldm	fp, {r6, r8}
    2f9c:	e28bb008 	add	fp, fp, #8
    2fa0:	e1a00006 	mov	r0, r6
    2fa4:	e1a01008 	mov	r1, r8
    2fa8:	e58d0060 	str	r0, [sp, #96]	; 0x60
    2fac:	e58d1064 	str	r1, [sp, #100]	; 0x64
    2fb0:	e58db030 	str	fp, [sp, #48]	; 0x30
    2fb4:	eafffba8 	b	1e5c <_vfprintf_r+0x738>
    2fb8:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    2fbc:	e59b3000 	ldr	r3, [fp]
    2fc0:	e28bb004 	add	fp, fp, #4
    2fc4:	e2932000 	adds	r2, r3, #0
    2fc8:	13a02001 	movne	r2, #1
    2fcc:	e58db030 	str	fp, [sp, #48]	; 0x30
    2fd0:	eafffbd0 	b	1f18 <_vfprintf_r+0x7f4>
    2fd4:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    2fd8:	e59c3000 	ldr	r3, [ip]
    2fdc:	e28cc004 	add	ip, ip, #4
    2fe0:	e2932000 	adds	r2, r3, #0
    2fe4:	e3a01001 	mov	r1, #1
    2fe8:	13a02001 	movne	r2, #1
    2fec:	e58dc030 	str	ip, [sp, #48]	; 0x30
    2ff0:	eafffbc8 	b	1f18 <_vfprintf_r+0x7f4>
    2ff4:	e59db010 	ldr	fp, [sp, #16]
    2ff8:	e31b0040 	tst	fp, #64	; 0x40
    2ffc:	0a000052 	beq	314c <_vfprintf_r+0x1a28>
    3000:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    3004:	e59d402c 	ldr	r4, [sp, #44]	; 0x2c
    3008:	e59c3000 	ldr	r3, [ip]
    300c:	e28cc004 	add	ip, ip, #4
    3010:	e58dc030 	str	ip, [sp, #48]	; 0x30
    3014:	e1c340b0 	strh	r4, [r3]
    3018:	eafff9f9 	b	1804 <_vfprintf_r+0xe0>
    301c:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    3020:	e59d1014 	ldr	r1, [sp, #20]
    3024:	e28d209c 	add	r2, sp, #156	; 0x9c
    3028:	eb0011d3 	bl	777c <__sprint_r>
    302c:	e3500000 	cmp	r0, #0
    3030:	e28d40a8 	add	r4, sp, #168	; 0xa8
    3034:	1afffa9c 	bne	1aac <_vfprintf_r+0x388>
    3038:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    303c:	e28daf4e 	add	sl, sp, #312	; 0x138
    3040:	eafffd5c 	b	25b8 <_vfprintf_r+0xe94>
    3044:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    3048:	e51f35b8 	ldr	r3, [pc, #-1464]	; 2a98 <_vfprintf_r+0x1374>
    304c:	e2844001 	add	r4, r4, #1
    3050:	e58a3000 	str	r3, [sl]
    3054:	e2855001 	add	r5, r5, #1
    3058:	e3540007 	cmp	r4, #7
    305c:	e3a03001 	mov	r3, #1
    3060:	e58a3004 	str	r3, [sl, #4]
    3064:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    3068:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    306c:	d28aa008 	addle	sl, sl, #8
    3070:	ca000052 	bgt	31c0 <_vfprintf_r+0x1a9c>
    3074:	e3570000 	cmp	r7, #0
    3078:	0a000049 	beq	31a4 <_vfprintf_r+0x1a80>
    307c:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    3080:	e59db05c 	ldr	fp, [sp, #92]	; 0x5c
    3084:	e2844001 	add	r4, r4, #1
    3088:	e59dc050 	ldr	ip, [sp, #80]	; 0x50
    308c:	e085500b 	add	r5, r5, fp
    3090:	e3540007 	cmp	r4, #7
    3094:	e58ac000 	str	ip, [sl]
    3098:	e58ab004 	str	fp, [sl, #4]
    309c:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    30a0:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    30a4:	d28aa008 	addle	sl, sl, #8
    30a8:	ca0000e8 	bgt	3450 <_vfprintf_r+0x1d2c>
    30ac:	e2677000 	rsb	r7, r7, #0
    30b0:	e3570000 	cmp	r7, #0
    30b4:	da000067 	ble	3258 <_vfprintf_r+0x1b34>
    30b8:	e3570010 	cmp	r7, #16
    30bc:	e51f6628 	ldr	r6, [pc, #-1576]	; 2a9c <_vfprintf_r+0x1378>
    30c0:	da000053 	ble	3214 <_vfprintf_r+0x1af0>
    30c4:	e3a08010 	mov	r8, #16
    30c8:	e28d909c 	add	r9, sp, #156	; 0x9c
    30cc:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    30d0:	ea000002 	b	30e0 <_vfprintf_r+0x19bc>
    30d4:	e2477010 	sub	r7, r7, #16
    30d8:	e3570010 	cmp	r7, #16
    30dc:	da00004c 	ble	3214 <_vfprintf_r+0x1af0>
    30e0:	e2844001 	add	r4, r4, #1
    30e4:	e3540007 	cmp	r4, #7
    30e8:	e2855010 	add	r5, r5, #16
    30ec:	e88a0140 	stm	sl, {r6, r8}
    30f0:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    30f4:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    30f8:	d28aa008 	addle	sl, sl, #8
    30fc:	dafffff4 	ble	30d4 <_vfprintf_r+0x19b0>
    3100:	e1a0000b 	mov	r0, fp
    3104:	e59d1014 	ldr	r1, [sp, #20]
    3108:	e1a02009 	mov	r2, r9
    310c:	eb00119a 	bl	777c <__sprint_r>
    3110:	e3500000 	cmp	r0, #0
    3114:	1afffa64 	bne	1aac <_vfprintf_r+0x388>
    3118:	e28d40a0 	add	r4, sp, #160	; 0xa0
    311c:	e8940030 	ldm	r4, {r4, r5}
    3120:	e28daf4e 	add	sl, sp, #312	; 0x138
    3124:	eaffffea 	b	30d4 <_vfprintf_r+0x19b0>
    3128:	e59d30a4 	ldr	r3, [sp, #164]	; 0xa4
    312c:	e3530000 	cmp	r3, #0
    3130:	e59d9014 	ldr	r9, [sp, #20]
    3134:	0afffa5d 	beq	1ab0 <_vfprintf_r+0x38c>
    3138:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    313c:	e1a01009 	mov	r1, r9
    3140:	e28d209c 	add	r2, sp, #156	; 0x9c
    3144:	eb00118c 	bl	777c <__sprint_r>
    3148:	eafffa58 	b	1ab0 <_vfprintf_r+0x38c>
    314c:	e59d7030 	ldr	r7, [sp, #48]	; 0x30
    3150:	e59db02c 	ldr	fp, [sp, #44]	; 0x2c
    3154:	e5973000 	ldr	r3, [r7]
    3158:	e2877004 	add	r7, r7, #4
    315c:	e58d7030 	str	r7, [sp, #48]	; 0x30
    3160:	e583b000 	str	fp, [r3]
    3164:	eafff9a6 	b	1804 <_vfprintf_r+0xe0>
    3168:	e51f36d0 	ldr	r3, [pc, #-1744]	; 2aa0 <_vfprintf_r+0x137c>
    316c:	e59db010 	ldr	fp, [sp, #16]
    3170:	e51f26d4 	ldr	r2, [pc, #-1748]	; 2aa4 <_vfprintf_r+0x1380>
    3174:	e3570047 	cmp	r7, #71	; 0x47
    3178:	e3a04003 	mov	r4, #3
    317c:	d1a02003 	movle	r2, r3
    3180:	e3cbb080 	bic	fp, fp, #128	; 0x80
    3184:	e58d401c 	str	r4, [sp, #28]
    3188:	e58d0038 	str	r0, [sp, #56]	; 0x38
    318c:	e58d2044 	str	r2, [sp, #68]	; 0x44
    3190:	e58db010 	str	fp, [sp, #16]
    3194:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    3198:	e58d4034 	str	r4, [sp, #52]	; 0x34
    319c:	e58d0058 	str	r0, [sp, #88]	; 0x58
    31a0:	eafffad2 	b	1cf0 <_vfprintf_r+0x5cc>
    31a4:	e59db03c 	ldr	fp, [sp, #60]	; 0x3c
    31a8:	e35b0000 	cmp	fp, #0
    31ac:	1affffb2 	bne	307c <_vfprintf_r+0x1958>
    31b0:	e59dc010 	ldr	ip, [sp, #16]
    31b4:	e31c0001 	tst	ip, #1
    31b8:	0afffca2 	beq	2448 <_vfprintf_r+0xd24>
    31bc:	eaffffae 	b	307c <_vfprintf_r+0x1958>
    31c0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    31c4:	e59d1014 	ldr	r1, [sp, #20]
    31c8:	e28d209c 	add	r2, sp, #156	; 0x9c
    31cc:	eb00116a 	bl	777c <__sprint_r>
    31d0:	e3500000 	cmp	r0, #0
    31d4:	e28d40a8 	add	r4, sp, #168	; 0xa8
    31d8:	1afffa33 	bne	1aac <_vfprintf_r+0x388>
    31dc:	e59d7080 	ldr	r7, [sp, #128]	; 0x80
    31e0:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    31e4:	e28daf4e 	add	sl, sp, #312	; 0x138
    31e8:	eaffffa1 	b	3074 <_vfprintf_r+0x1950>
    31ec:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    31f0:	e59d1014 	ldr	r1, [sp, #20]
    31f4:	e28d209c 	add	r2, sp, #156	; 0x9c
    31f8:	eb00115f 	bl	777c <__sprint_r>
    31fc:	e3500000 	cmp	r0, #0
    3200:	e28db0a8 	add	fp, sp, #168	; 0xa8
    3204:	1afffa28 	bne	1aac <_vfprintf_r+0x388>
    3208:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    320c:	e28daf4e 	add	sl, sp, #312	; 0x138
    3210:	eafffcfa 	b	2600 <_vfprintf_r+0xedc>
    3214:	e2844001 	add	r4, r4, #1
    3218:	e0855007 	add	r5, r5, r7
    321c:	e3540007 	cmp	r4, #7
    3220:	e88a00c0 	stm	sl, {r6, r7}
    3224:	e58d50a4 	str	r5, [sp, #164]	; 0xa4
    3228:	e58d40a0 	str	r4, [sp, #160]	; 0xa0
    322c:	d28aa008 	addle	sl, sl, #8
    3230:	da000008 	ble	3258 <_vfprintf_r+0x1b34>
    3234:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    3238:	e59d1014 	ldr	r1, [sp, #20]
    323c:	e28d209c 	add	r2, sp, #156	; 0x9c
    3240:	eb00114d 	bl	777c <__sprint_r>
    3244:	e3500000 	cmp	r0, #0
    3248:	1afffa17 	bne	1aac <_vfprintf_r+0x388>
    324c:	e28d40a0 	add	r4, sp, #160	; 0xa0
    3250:	e8940030 	ldm	r4, {r4, r5}
    3254:	e28daf4e 	add	sl, sp, #312	; 0x138
    3258:	e2844001 	add	r4, r4, #1
    325c:	e59d703c 	ldr	r7, [sp, #60]	; 0x3c
    3260:	eafffc6f 	b	2424 <_vfprintf_r+0xd00>
    3264:	eb00112c 	bl	771c <strlen>
    3268:	e1c04fc0 	bic	r4, r0, r0, asr #31
    326c:	e58d0034 	str	r0, [sp, #52]	; 0x34
    3270:	e58d5038 	str	r5, [sp, #56]	; 0x38
    3274:	e58d401c 	str	r4, [sp, #28]
    3278:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    327c:	e58d6030 	str	r6, [sp, #48]	; 0x30
    3280:	e58d5058 	str	r5, [sp, #88]	; 0x58
    3284:	eafffa99 	b	1cf0 <_vfprintf_r+0x5cc>
    3288:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    328c:	e59d1014 	ldr	r1, [sp, #20]
    3290:	e28d209c 	add	r2, sp, #156	; 0x9c
    3294:	eb001138 	bl	777c <__sprint_r>
    3298:	e3500000 	cmp	r0, #0
    329c:	1afffa02 	bne	1aac <_vfprintf_r+0x388>
    32a0:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    32a4:	e28daf4e 	add	sl, sp, #312	; 0x138
    32a8:	eafffda7 	b	294c <_vfprintf_r+0x1228>
    32ac:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    32b0:	e59d1014 	ldr	r1, [sp, #20]
    32b4:	e28d209c 	add	r2, sp, #156	; 0x9c
    32b8:	eb00112f 	bl	777c <__sprint_r>
    32bc:	e3500000 	cmp	r0, #0
    32c0:	e28d70a8 	add	r7, sp, #168	; 0xa8
    32c4:	1afff9f8 	bne	1aac <_vfprintf_r+0x388>
    32c8:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    32cc:	e59db03c 	ldr	fp, [sp, #60]	; 0x3c
    32d0:	e59d50a4 	ldr	r5, [sp, #164]	; 0xa4
    32d4:	e063300b 	rsb	r3, r3, fp
    32d8:	e28daf4e 	add	sl, sp, #312	; 0x138
    32dc:	eafffe3f 	b	2be0 <_vfprintf_r+0x14bc>
    32e0:	e3540006 	cmp	r4, #6
    32e4:	23a04006 	movcs	r4, #6
    32e8:	e1c4cfc4 	bic	ip, r4, r4, asr #31
    32ec:	e58d4034 	str	r4, [sp, #52]	; 0x34
    32f0:	e51f4850 	ldr	r4, [pc, #-2128]	; 2aa8 <_vfprintf_r+0x1384>
    32f4:	e58dc01c 	str	ip, [sp, #28]
    32f8:	e58d6030 	str	r6, [sp, #48]	; 0x30
    32fc:	e58d4044 	str	r4, [sp, #68]	; 0x44
    3300:	eafffb76 	b	20e0 <_vfprintf_r+0x9bc>
    3304:	e3a03003 	mov	r3, #3
    3308:	e28d2088 	add	r2, sp, #136	; 0x88
    330c:	e58d601c 	str	r6, [sp, #28]
    3310:	e28d0080 	add	r0, sp, #128	; 0x80
    3314:	e28d1084 	add	r1, sp, #132	; 0x84
    3318:	e58d8020 	str	r8, [sp, #32]
    331c:	e98d0007 	stmib	sp, {r0, r1, r2}
    3320:	e58d4000 	str	r4, [sp]
    3324:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    3328:	e28d201c 	add	r2, sp, #28
    332c:	e8920006 	ldm	r2, {r1, r2}
    3330:	eb0001ec 	bl	3ae8 <_dtoa_r>
    3334:	e3590047 	cmp	r9, #71	; 0x47
    3338:	e58d0044 	str	r0, [sp, #68]	; 0x44
    333c:	1a000002 	bne	334c <_vfprintf_r+0x1c28>
    3340:	e59dc010 	ldr	ip, [sp, #16]
    3344:	e31c0001 	tst	ip, #1
    3348:	0a00000e 	beq	3388 <_vfprintf_r+0x1c64>
    334c:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    3350:	e3550000 	cmp	r5, #0
    3354:	e08c5004 	add	r5, ip, r4
    3358:	0afffedc 	beq	2ed0 <_vfprintf_r+0x17ac>
    335c:	e5dc3000 	ldrb	r3, [ip]
    3360:	e3530030 	cmp	r3, #48	; 0x30
    3364:	0a000080 	beq	356c <_vfprintf_r+0x1e48>
    3368:	e59d3080 	ldr	r3, [sp, #128]	; 0x80
    336c:	e0855003 	add	r5, r5, r3
    3370:	eafffed6 	b	2ed0 <_vfprintf_r+0x17ac>
    3374:	e59d4038 	ldr	r4, [sp, #56]	; 0x38
    3378:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    337c:	e58d4010 	str	r4, [sp, #16]
    3380:	e58db038 	str	fp, [sp, #56]	; 0x38
    3384:	eafffa59 	b	1cf0 <_vfprintf_r+0x5cc>
    3388:	e59d3088 	ldr	r3, [sp, #136]	; 0x88
    338c:	e0603003 	rsb	r3, r0, r3
    3390:	e58d303c 	str	r3, [sp, #60]	; 0x3c
    3394:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
    3398:	e3700003 	cmn	r0, #3
    339c:	e1a03000 	mov	r3, r0
    33a0:	ba000001 	blt	33ac <_vfprintf_r+0x1c88>
    33a4:	e1540000 	cmp	r4, r0
    33a8:	aafffee2 	bge	2f38 <_vfprintf_r+0x1814>
    33ac:	e2477002 	sub	r7, r7, #2
    33b0:	e2400001 	sub	r0, r0, #1
    33b4:	e3500000 	cmp	r0, #0
    33b8:	e58d0080 	str	r0, [sp, #128]	; 0x80
    33bc:	b2600000 	rsblt	r0, r0, #0
    33c0:	b3a0302d 	movlt	r3, #45	; 0x2d
    33c4:	a3a0302b 	movge	r3, #43	; 0x2b
    33c8:	e3500009 	cmp	r0, #9
    33cc:	e5cd708c 	strb	r7, [sp, #140]	; 0x8c
    33d0:	e5cd308d 	strb	r3, [sp, #141]	; 0x8d
    33d4:	ca00003f 	bgt	34d8 <_vfprintf_r+0x1db4>
    33d8:	e2800030 	add	r0, r0, #48	; 0x30
    33dc:	e3a02030 	mov	r2, #48	; 0x30
    33e0:	e28d3098 	add	r3, sp, #152	; 0x98
    33e4:	e5cd008f 	strb	r0, [sp, #143]	; 0x8f
    33e8:	e5cd208e 	strb	r2, [sp, #142]	; 0x8e
    33ec:	e2432008 	sub	r2, r3, #8
    33f0:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    33f4:	e243300c 	sub	r3, r3, #12
    33f8:	e0633002 	rsb	r3, r3, r2
    33fc:	e58d3068 	str	r3, [sp, #104]	; 0x68
    3400:	e35c0001 	cmp	ip, #1
    3404:	e08c3003 	add	r3, ip, r3
    3408:	e58d3034 	str	r3, [sp, #52]	; 0x34
    340c:	da000071 	ble	35d8 <_vfprintf_r+0x1eb4>
    3410:	e59d3034 	ldr	r3, [sp, #52]	; 0x34
    3414:	e2833001 	add	r3, r3, #1
    3418:	e1c34fc3 	bic	r4, r3, r3, asr #31
    341c:	e3a0c000 	mov	ip, #0
    3420:	e58d3034 	str	r3, [sp, #52]	; 0x34
    3424:	e58d401c 	str	r4, [sp, #28]
    3428:	e58dc058 	str	ip, [sp, #88]	; 0x58
    342c:	eafffecf 	b	2f70 <_vfprintf_r+0x184c>
    3430:	e1c4bfc4 	bic	fp, r4, r4, asr #31
    3434:	e58d0038 	str	r0, [sp, #56]	; 0x38
    3438:	e58db01c 	str	fp, [sp, #28]
    343c:	e5dd307b 	ldrb	r3, [sp, #123]	; 0x7b
    3440:	e58d4034 	str	r4, [sp, #52]	; 0x34
    3444:	e58d6030 	str	r6, [sp, #48]	; 0x30
    3448:	e58d0058 	str	r0, [sp, #88]	; 0x58
    344c:	eafffa27 	b	1cf0 <_vfprintf_r+0x5cc>
    3450:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    3454:	e59d1014 	ldr	r1, [sp, #20]
    3458:	e28d209c 	add	r2, sp, #156	; 0x9c
    345c:	eb0010c6 	bl	777c <__sprint_r>
    3460:	e3500000 	cmp	r0, #0
    3464:	1afff990 	bne	1aac <_vfprintf_r+0x388>
    3468:	e28d40a0 	add	r4, sp, #160	; 0xa0
    346c:	e59d7080 	ldr	r7, [sp, #128]	; 0x80
    3470:	e8940030 	ldm	r4, {r4, r5}
    3474:	e28daf4e 	add	sl, sp, #312	; 0x138
    3478:	eaffff0b 	b	30ac <_vfprintf_r+0x1988>
    347c:	e3a03002 	mov	r3, #2
    3480:	eaffffa0 	b	3308 <_vfprintf_r+0x1be4>
    3484:	e3530000 	cmp	r3, #0
    3488:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    348c:	d2632002 	rsble	r2, r3, #2
    3490:	c3a02001 	movgt	r2, #1
    3494:	e0822004 	add	r2, r2, r4
    3498:	e1c27fc2 	bic	r7, r2, r2, asr #31
    349c:	e58d701c 	str	r7, [sp, #28]
    34a0:	e58d2034 	str	r2, [sp, #52]	; 0x34
    34a4:	e3a07067 	mov	r7, #103	; 0x67
    34a8:	eafffeaf 	b	2f6c <_vfprintf_r+0x1848>
    34ac:	e3530000 	cmp	r3, #0
    34b0:	da000037 	ble	3594 <_vfprintf_r+0x1e70>
    34b4:	e3540000 	cmp	r4, #0
    34b8:	1a000025 	bne	3554 <_vfprintf_r+0x1e30>
    34bc:	e59dc010 	ldr	ip, [sp, #16]
    34c0:	e31c0001 	tst	ip, #1
    34c4:	1a000022 	bne	3554 <_vfprintf_r+0x1e30>
    34c8:	e1c34fc3 	bic	r4, r3, r3, asr #31
    34cc:	e58d401c 	str	r4, [sp, #28]
    34d0:	e58d3034 	str	r3, [sp, #52]	; 0x34
    34d4:	eafffea4 	b	2f6c <_vfprintf_r+0x1848>
    34d8:	e28d3098 	add	r3, sp, #152	; 0x98
    34dc:	e2832002 	add	r2, r3, #2
    34e0:	e51f1a3c 	ldr	r1, [pc, #-2620]	; 2aac <_vfprintf_r+0x1388>
    34e4:	e0cc4091 	smull	r4, ip, r1, r0
    34e8:	e1a01fc0 	asr	r1, r0, #31
    34ec:	e061114c 	rsb	r1, r1, ip, asr #2
    34f0:	e081c101 	add	ip, r1, r1, lsl #2
    34f4:	e040c08c 	sub	ip, r0, ip, lsl #1
    34f8:	e1a00001 	mov	r0, r1
    34fc:	e3500009 	cmp	r0, #9
    3500:	e1a01002 	mov	r1, r2
    3504:	e28c2030 	add	r2, ip, #48	; 0x30
    3508:	e5c12000 	strb	r2, [r1]
    350c:	e2412001 	sub	r2, r1, #1
    3510:	cafffff2 	bgt	34e0 <_vfprintf_r+0x1dbc>
    3514:	e2800030 	add	r0, r0, #48	; 0x30
    3518:	e2834003 	add	r4, r3, #3
    351c:	e20000ff 	and	r0, r0, #255	; 0xff
    3520:	e1540002 	cmp	r4, r2
    3524:	e5410001 	strb	r0, [r1, #-1]
    3528:	9a000039 	bls	3614 <_vfprintf_r+0x1ef0>
    352c:	e243c00b 	sub	ip, r3, #11
    3530:	e1a02001 	mov	r2, r1
    3534:	ea000000 	b	353c <_vfprintf_r+0x1e18>
    3538:	e4d20001 	ldrb	r0, [r2], #1
    353c:	e1520004 	cmp	r2, r4
    3540:	e5ec0001 	strb	r0, [ip, #1]!
    3544:	1afffffb 	bne	3538 <_vfprintf_r+0x1e14>
    3548:	e0612083 	rsb	r2, r1, r3, lsl #1
    354c:	e2422006 	sub	r2, r2, #6
    3550:	eaffffa6 	b	33f0 <_vfprintf_r+0x1ccc>
    3554:	e2844001 	add	r4, r4, #1
    3558:	e0834004 	add	r4, r3, r4
    355c:	e1c4cfc4 	bic	ip, r4, r4, asr #31
    3560:	e58d4034 	str	r4, [sp, #52]	; 0x34
    3564:	e58dc01c 	str	ip, [sp, #28]
    3568:	eafffe7f 	b	2f6c <_vfprintf_r+0x1848>
    356c:	e3a03000 	mov	r3, #0
    3570:	e1a00006 	mov	r0, r6
    3574:	e1a01008 	mov	r1, r8
    3578:	e3a02000 	mov	r2, #0
    357c:	eb001c4b 	bl	a6b0 <__cmpdf2>
    3580:	e3500000 	cmp	r0, #0
    3584:	12643001 	rsbne	r3, r4, #1
    3588:	158d3080 	strne	r3, [sp, #128]	; 0x80
    358c:	1affff76 	bne	336c <_vfprintf_r+0x1c48>
    3590:	eaffff74 	b	3368 <_vfprintf_r+0x1c44>
    3594:	e3540000 	cmp	r4, #0
    3598:	1a000016 	bne	35f8 <_vfprintf_r+0x1ed4>
    359c:	e59dc010 	ldr	ip, [sp, #16]
    35a0:	e31c0001 	tst	ip, #1
    35a4:	1a000013 	bne	35f8 <_vfprintf_r+0x1ed4>
    35a8:	e3a0c001 	mov	ip, #1
    35ac:	e58dc01c 	str	ip, [sp, #28]
    35b0:	e58dc034 	str	ip, [sp, #52]	; 0x34
    35b4:	eafffe6c 	b	2f6c <_vfprintf_r+0x1848>
    35b8:	e59db030 	ldr	fp, [sp, #48]	; 0x30
    35bc:	e59b4000 	ldr	r4, [fp]
    35c0:	e3540000 	cmp	r4, #0
    35c4:	e28b3004 	add	r3, fp, #4
    35c8:	aafffad7 	bge	212c <_vfprintf_r+0xa08>
    35cc:	e58d3030 	str	r3, [sp, #48]	; 0x30
    35d0:	e3e04000 	mvn	r4, #0
    35d4:	eafff8b5 	b	18b0 <_vfprintf_r+0x18c>
    35d8:	e59d4010 	ldr	r4, [sp, #16]
    35dc:	e2143001 	ands	r3, r4, #1
    35e0:	1affff8a 	bne	3410 <_vfprintf_r+0x1cec>
    35e4:	e59dc034 	ldr	ip, [sp, #52]	; 0x34
    35e8:	e1cccfcc 	bic	ip, ip, ip, asr #31
    35ec:	e58dc01c 	str	ip, [sp, #28]
    35f0:	e58d3058 	str	r3, [sp, #88]	; 0x58
    35f4:	eafffe5d 	b	2f70 <_vfprintf_r+0x184c>
    35f8:	e2844002 	add	r4, r4, #2
    35fc:	e58d4034 	str	r4, [sp, #52]	; 0x34
    3600:	e1c44fc4 	bic	r4, r4, r4, asr #31
    3604:	e58d401c 	str	r4, [sp, #28]
    3608:	eafffe57 	b	2f6c <_vfprintf_r+0x1848>
    360c:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
    3610:	eaffff66 	b	33b0 <_vfprintf_r+0x1c8c>
    3614:	e243200a 	sub	r2, r3, #10
    3618:	eaffff74 	b	33f0 <_vfprintf_r+0x1ccc>

0000361c <vfprintf>:
    361c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    3620:	e1a03002 	mov	r3, r2
    3624:	e59f2018 	ldr	r2, [pc, #24]	; 3644 <vfprintf+0x28>
    3628:	e1a04000 	mov	r4, r0
    362c:	e1a0c001 	mov	ip, r1
    3630:	e5920000 	ldr	r0, [r2]
    3634:	e1a01004 	mov	r1, r4
    3638:	e1a0200c 	mov	r2, ip
    363c:	e8bd0010 	ldmfd	sp!, {r4}
    3640:	eafff837 	b	1724 <_vfprintf_r>
    3644:	0000ac08 	.word	0x0000ac08

00003648 <__swsetup_r>:
    3648:	e59f3148 	ldr	r3, [pc, #328]	; 3798 <__swsetup_r+0x150>
    364c:	e5933000 	ldr	r3, [r3]
    3650:	e3530000 	cmp	r3, #0
    3654:	e92d4030 	push	{r4, r5, lr}
    3658:	e1a05000 	mov	r5, r0
    365c:	e1a04001 	mov	r4, r1
    3660:	0a000002 	beq	3670 <__swsetup_r+0x28>
    3664:	e5932038 	ldr	r2, [r3, #56]	; 0x38
    3668:	e3520000 	cmp	r2, #0
    366c:	0a00002f 	beq	3730 <__swsetup_r+0xe8>
    3670:	e1d430bc 	ldrh	r3, [r4, #12]
    3674:	e3130008 	tst	r3, #8
    3678:	e1a02003 	mov	r2, r3
    367c:	0a00000b 	beq	36b0 <__swsetup_r+0x68>
    3680:	e5942010 	ldr	r2, [r4, #16]
    3684:	e3520000 	cmp	r2, #0
    3688:	0a000011 	beq	36d4 <__swsetup_r+0x8c>
    368c:	e2131001 	ands	r1, r3, #1
    3690:	1a000018 	bne	36f8 <__swsetup_r+0xb0>
    3694:	e3130002 	tst	r3, #2
    3698:	05941014 	ldreq	r1, [r4, #20]
    369c:	e3520000 	cmp	r2, #0
    36a0:	e5841008 	str	r1, [r4, #8]
    36a4:	0a00001a 	beq	3714 <__swsetup_r+0xcc>
    36a8:	e3a00000 	mov	r0, #0
    36ac:	e8bd8030 	pop	{r4, r5, pc}
    36b0:	e3130010 	tst	r3, #16
    36b4:	0a000031 	beq	3780 <__swsetup_r+0x138>
    36b8:	e3120004 	tst	r2, #4
    36bc:	1a00001e 	bne	373c <__swsetup_r+0xf4>
    36c0:	e5942010 	ldr	r2, [r4, #16]
    36c4:	e3833008 	orr	r3, r3, #8
    36c8:	e3520000 	cmp	r2, #0
    36cc:	e1c430bc 	strh	r3, [r4, #12]
    36d0:	1affffed 	bne	368c <__swsetup_r+0x44>
    36d4:	e2031d0a 	and	r1, r3, #640	; 0x280
    36d8:	e3510c02 	cmp	r1, #512	; 0x200
    36dc:	0affffea 	beq	368c <__swsetup_r+0x44>
    36e0:	e1a00005 	mov	r0, r5
    36e4:	e1a01004 	mov	r1, r4
    36e8:	eb000949 	bl	5c14 <__smakebuf_r>
    36ec:	e1d430bc 	ldrh	r3, [r4, #12]
    36f0:	e5942010 	ldr	r2, [r4, #16]
    36f4:	eaffffe4 	b	368c <__swsetup_r+0x44>
    36f8:	e5943014 	ldr	r3, [r4, #20]
    36fc:	e3a01000 	mov	r1, #0
    3700:	e2633000 	rsb	r3, r3, #0
    3704:	e3520000 	cmp	r2, #0
    3708:	e5841008 	str	r1, [r4, #8]
    370c:	e5843018 	str	r3, [r4, #24]
    3710:	1affffe4 	bne	36a8 <__swsetup_r+0x60>
    3714:	e1d430bc 	ldrh	r3, [r4, #12]
    3718:	e3130080 	tst	r3, #128	; 0x80
    371c:	0affffe1 	beq	36a8 <__swsetup_r+0x60>
    3720:	e3833040 	orr	r3, r3, #64	; 0x40
    3724:	e1c430bc 	strh	r3, [r4, #12]
    3728:	e3e00000 	mvn	r0, #0
    372c:	e8bd8030 	pop	{r4, r5, pc}
    3730:	e1a00003 	mov	r0, r3
    3734:	eb00077e 	bl	5534 <__sinit>
    3738:	eaffffcc 	b	3670 <__swsetup_r+0x28>
    373c:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    3740:	e3510000 	cmp	r1, #0
    3744:	0a000007 	beq	3768 <__swsetup_r+0x120>
    3748:	e2842040 	add	r2, r4, #64	; 0x40
    374c:	e1510002 	cmp	r1, r2
    3750:	0a000002 	beq	3760 <__swsetup_r+0x118>
    3754:	e1a00005 	mov	r0, r5
    3758:	eb00081c 	bl	57d0 <_free_r>
    375c:	e1d430bc 	ldrh	r3, [r4, #12]
    3760:	e3a02000 	mov	r2, #0
    3764:	e5842030 	str	r2, [r4, #48]	; 0x30
    3768:	e5942010 	ldr	r2, [r4, #16]
    376c:	e3a01000 	mov	r1, #0
    3770:	e3c33024 	bic	r3, r3, #36	; 0x24
    3774:	e5841004 	str	r1, [r4, #4]
    3778:	e5842000 	str	r2, [r4]
    377c:	eaffffd0 	b	36c4 <__swsetup_r+0x7c>
    3780:	e3822040 	orr	r2, r2, #64	; 0x40
    3784:	e3a03009 	mov	r3, #9
    3788:	e5853000 	str	r3, [r5]
    378c:	e3e00000 	mvn	r0, #0
    3790:	e1c420bc 	strh	r2, [r4, #12]
    3794:	e8bd8030 	pop	{r4, r5, pc}
    3798:	0000ac08 	.word	0x0000ac08

0000379c <__call_exitprocs>:
    379c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    37a0:	e59f3164 	ldr	r3, [pc, #356]	; 390c <__call_exitprocs+0x170>
    37a4:	e5933000 	ldr	r3, [r3]
    37a8:	e24dd00c 	sub	sp, sp, #12
    37ac:	e58d3000 	str	r3, [sp]
    37b0:	e2833f52 	add	r3, r3, #328	; 0x148
    37b4:	e58d0004 	str	r0, [sp, #4]
    37b8:	e58d3008 	str	r3, [sp, #8]
    37bc:	e1a06001 	mov	r6, r1
    37c0:	e3a0a001 	mov	sl, #1
    37c4:	e59d3000 	ldr	r3, [sp]
    37c8:	e5937148 	ldr	r7, [r3, #328]	; 0x148
    37cc:	e3570000 	cmp	r7, #0
    37d0:	e59db008 	ldr	fp, [sp, #8]
    37d4:	0a000033 	beq	38a8 <__call_exitprocs+0x10c>
    37d8:	e5975004 	ldr	r5, [r7, #4]
    37dc:	e2554001 	subs	r4, r5, #1
    37e0:	4a00002d 	bmi	389c <__call_exitprocs+0x100>
    37e4:	e2878088 	add	r8, r7, #136	; 0x88
    37e8:	e285501f 	add	r5, r5, #31
    37ec:	e0885105 	add	r5, r8, r5, lsl #2
    37f0:	ea000006 	b	3810 <__call_exitprocs+0x74>
    37f4:	e5953000 	ldr	r3, [r5]
    37f8:	e1530006 	cmp	r3, r6
    37fc:	0a000005 	beq	3818 <__call_exitprocs+0x7c>
    3800:	e2444001 	sub	r4, r4, #1
    3804:	e3740001 	cmn	r4, #1
    3808:	e2455004 	sub	r5, r5, #4
    380c:	0a000022 	beq	389c <__call_exitprocs+0x100>
    3810:	e3560000 	cmp	r6, #0
    3814:	1afffff6 	bne	37f4 <__call_exitprocs+0x58>
    3818:	e5973004 	ldr	r3, [r7, #4]
    381c:	e0682005 	rsb	r2, r8, r5
    3820:	e2433001 	sub	r3, r3, #1
    3824:	e0872002 	add	r2, r7, r2
    3828:	e1530004 	cmp	r3, r4
    382c:	e5123078 	ldr	r3, [r2, #-120]	; 0x78
    3830:	13a01000 	movne	r1, #0
    3834:	05874004 	streq	r4, [r7, #4]
    3838:	15021078 	strne	r1, [r2, #-120]	; 0x78
    383c:	e3530000 	cmp	r3, #0
    3840:	0affffee 	beq	3800 <__call_exitprocs+0x64>
    3844:	e1a0241a 	lsl	r2, sl, r4
    3848:	e5971188 	ldr	r1, [r7, #392]	; 0x188
    384c:	e1120001 	tst	r2, r1
    3850:	e5979004 	ldr	r9, [r7, #4]
    3854:	0a000015 	beq	38b0 <__call_exitprocs+0x114>
    3858:	e597118c 	ldr	r1, [r7, #396]	; 0x18c
    385c:	e1120001 	tst	r2, r1
    3860:	1a000015 	bne	38bc <__call_exitprocs+0x120>
    3864:	e59d0004 	ldr	r0, [sp, #4]
    3868:	e5151080 	ldr	r1, [r5, #-128]	; 0x80
    386c:	e1a0e00f 	mov	lr, pc
    3870:	e12fff13 	bx	r3
    3874:	e5973004 	ldr	r3, [r7, #4]
    3878:	e1530009 	cmp	r3, r9
    387c:	1affffd0 	bne	37c4 <__call_exitprocs+0x28>
    3880:	e59b3000 	ldr	r3, [fp]
    3884:	e1530007 	cmp	r3, r7
    3888:	1affffcd 	bne	37c4 <__call_exitprocs+0x28>
    388c:	e2444001 	sub	r4, r4, #1
    3890:	e3740001 	cmn	r4, #1
    3894:	e2455004 	sub	r5, r5, #4
    3898:	1affffdc 	bne	3810 <__call_exitprocs+0x74>
    389c:	e59f306c 	ldr	r3, [pc, #108]	; 3910 <__call_exitprocs+0x174>
    38a0:	e3530000 	cmp	r3, #0
    38a4:	1a000008 	bne	38cc <__call_exitprocs+0x130>
    38a8:	e28dd00c 	add	sp, sp, #12
    38ac:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    38b0:	e1a0e00f 	mov	lr, pc
    38b4:	e12fff13 	bx	r3
    38b8:	eaffffed 	b	3874 <__call_exitprocs+0xd8>
    38bc:	e5150080 	ldr	r0, [r5, #-128]	; 0x80
    38c0:	e1a0e00f 	mov	lr, pc
    38c4:	e12fff13 	bx	r3
    38c8:	eaffffe9 	b	3874 <__call_exitprocs+0xd8>
    38cc:	e5973004 	ldr	r3, [r7, #4]
    38d0:	e3530000 	cmp	r3, #0
    38d4:	e5973000 	ldr	r3, [r7]
    38d8:	1a000008 	bne	3900 <__call_exitprocs+0x164>
    38dc:	e3530000 	cmp	r3, #0
    38e0:	0a000006 	beq	3900 <__call_exitprocs+0x164>
    38e4:	e1a00007 	mov	r0, r7
    38e8:	e58b3000 	str	r3, [fp]
    38ec:	e1a00000 	nop			; (mov r0, r0)
    38f0:	e59b7000 	ldr	r7, [fp]
    38f4:	e3570000 	cmp	r7, #0
    38f8:	1affffb6 	bne	37d8 <__call_exitprocs+0x3c>
    38fc:	eaffffe9 	b	38a8 <__call_exitprocs+0x10c>
    3900:	e1a0b007 	mov	fp, r7
    3904:	e1a07003 	mov	r7, r3
    3908:	eafffff9 	b	38f4 <__call_exitprocs+0x158>
    390c:	0000a85c 	.word	0x0000a85c
    3910:	00000000 	.word	0x00000000

00003914 <quorem>:
    3914:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    3918:	e5903010 	ldr	r3, [r0, #16]
    391c:	e5916010 	ldr	r6, [r1, #16]
    3920:	e1560003 	cmp	r6, r3
    3924:	e1a0a000 	mov	sl, r0
    3928:	e1a05001 	mov	r5, r1
    392c:	ca00006b 	bgt	3ae0 <quorem+0x1cc>
    3930:	e2869004 	add	r9, r6, #4
    3934:	e7911109 	ldr	r1, [r1, r9, lsl #2]
    3938:	e7900109 	ldr	r0, [r0, r9, lsl #2]
    393c:	e2811001 	add	r1, r1, #1
    3940:	eb0018f3 	bl	9d14 <__aeabi_uidiv>
    3944:	e2507000 	subs	r7, r0, #0
    3948:	e2466001 	sub	r6, r6, #1
    394c:	e0859109 	add	r9, r5, r9, lsl #2
    3950:	e2854014 	add	r4, r5, #20
    3954:	e28a8014 	add	r8, sl, #20
    3958:	0a000030 	beq	3a20 <quorem+0x10c>
    395c:	e3a0c000 	mov	ip, #0
    3960:	e1a02008 	mov	r2, r8
    3964:	e1a03004 	mov	r3, r4
    3968:	e1a0000c 	mov	r0, ip
    396c:	e493e004 	ldr	lr, [r3], #4
    3970:	e1a0b80e 	lsl	fp, lr, #16
    3974:	e1a0b82b 	lsr	fp, fp, #16
    3978:	e1a0e82e 	lsr	lr, lr, #16
    397c:	e02bcb97 	mla	fp, r7, fp, ip
    3980:	e00c0e97 	mul	ip, r7, lr
    3984:	e592e000 	ldr	lr, [r2]
    3988:	e08cc82b 	add	ip, ip, fp, lsr #16
    398c:	e1a0180e 	lsl	r1, lr, #16
    3990:	e0801821 	add	r1, r0, r1, lsr #16
    3994:	e1a0b80b 	lsl	fp, fp, #16
    3998:	e1a0080c 	lsl	r0, ip, #16
    399c:	e041182b 	sub	r1, r1, fp, lsr #16
    39a0:	e1a00820 	lsr	r0, r0, #16
    39a4:	e060082e 	rsb	r0, r0, lr, lsr #16
    39a8:	e1a0b801 	lsl	fp, r1, #16
    39ac:	e0800841 	add	r0, r0, r1, asr #16
    39b0:	e1a0182b 	lsr	r1, fp, #16
    39b4:	e1811800 	orr	r1, r1, r0, lsl #16
    39b8:	e1590003 	cmp	r9, r3
    39bc:	e1a0c82c 	lsr	ip, ip, #16
    39c0:	e1a00840 	asr	r0, r0, #16
    39c4:	e4821004 	str	r1, [r2], #4
    39c8:	2affffe7 	bcs	396c <quorem+0x58>
    39cc:	e2863005 	add	r3, r6, #5
    39d0:	e79a2103 	ldr	r2, [sl, r3, lsl #2]
    39d4:	e3520000 	cmp	r2, #0
    39d8:	1a000010 	bne	3a20 <quorem+0x10c>
    39dc:	e08a3103 	add	r3, sl, r3, lsl #2
    39e0:	e2432004 	sub	r2, r3, #4
    39e4:	e1580002 	cmp	r8, r2
    39e8:	2a00000b 	bcs	3a1c <quorem+0x108>
    39ec:	e5132004 	ldr	r2, [r3, #-4]
    39f0:	e3520000 	cmp	r2, #0
    39f4:	1a000008 	bne	3a1c <quorem+0x108>
    39f8:	e2433008 	sub	r3, r3, #8
    39fc:	ea000003 	b	3a10 <quorem+0xfc>
    3a00:	e5932000 	ldr	r2, [r3]
    3a04:	e3520000 	cmp	r2, #0
    3a08:	e2433004 	sub	r3, r3, #4
    3a0c:	1a000002 	bne	3a1c <quorem+0x108>
    3a10:	e1580003 	cmp	r8, r3
    3a14:	e2466001 	sub	r6, r6, #1
    3a18:	3afffff8 	bcc	3a00 <quorem+0xec>
    3a1c:	e58a6010 	str	r6, [sl, #16]
    3a20:	e1a0000a 	mov	r0, sl
    3a24:	e1a01005 	mov	r1, r5
    3a28:	eb000cea 	bl	6dd8 <__mcmp>
    3a2c:	e3500000 	cmp	r0, #0
    3a30:	ba000028 	blt	3ad8 <quorem+0x1c4>
    3a34:	e2877001 	add	r7, r7, #1
    3a38:	e1a03008 	mov	r3, r8
    3a3c:	e3a02000 	mov	r2, #0
    3a40:	e4945004 	ldr	r5, [r4], #4
    3a44:	e593c000 	ldr	ip, [r3]
    3a48:	e1a01805 	lsl	r1, r5, #16
    3a4c:	e1a0080c 	lsl	r0, ip, #16
    3a50:	e1a01821 	lsr	r1, r1, #16
    3a54:	e0611820 	rsb	r1, r1, r0, lsr #16
    3a58:	e0811002 	add	r1, r1, r2
    3a5c:	e1a02825 	lsr	r2, r5, #16
    3a60:	e062282c 	rsb	r2, r2, ip, lsr #16
    3a64:	e1a00801 	lsl	r0, r1, #16
    3a68:	e0822841 	add	r2, r2, r1, asr #16
    3a6c:	e1a01820 	lsr	r1, r0, #16
    3a70:	e1811802 	orr	r1, r1, r2, lsl #16
    3a74:	e1590004 	cmp	r9, r4
    3a78:	e1a02842 	asr	r2, r2, #16
    3a7c:	e4831004 	str	r1, [r3], #4
    3a80:	2affffee 	bcs	3a40 <quorem+0x12c>
    3a84:	e2863005 	add	r3, r6, #5
    3a88:	e79a2103 	ldr	r2, [sl, r3, lsl #2]
    3a8c:	e3520000 	cmp	r2, #0
    3a90:	1a000010 	bne	3ad8 <quorem+0x1c4>
    3a94:	e08a3103 	add	r3, sl, r3, lsl #2
    3a98:	e2432004 	sub	r2, r3, #4
    3a9c:	e1580002 	cmp	r8, r2
    3aa0:	2a00000b 	bcs	3ad4 <quorem+0x1c0>
    3aa4:	e5132004 	ldr	r2, [r3, #-4]
    3aa8:	e3520000 	cmp	r2, #0
    3aac:	1a000008 	bne	3ad4 <quorem+0x1c0>
    3ab0:	e2433008 	sub	r3, r3, #8
    3ab4:	ea000003 	b	3ac8 <quorem+0x1b4>
    3ab8:	e5932000 	ldr	r2, [r3]
    3abc:	e3520000 	cmp	r2, #0
    3ac0:	e2433004 	sub	r3, r3, #4
    3ac4:	1a000002 	bne	3ad4 <quorem+0x1c0>
    3ac8:	e1580003 	cmp	r8, r3
    3acc:	e2466001 	sub	r6, r6, #1
    3ad0:	3afffff8 	bcc	3ab8 <quorem+0x1a4>
    3ad4:	e58a6010 	str	r6, [sl, #16]
    3ad8:	e1a00007 	mov	r0, r7
    3adc:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3ae0:	e3a00000 	mov	r0, #0
    3ae4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00003ae8 <_dtoa_r>:
    3ae8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    3aec:	e590c040 	ldr	ip, [r0, #64]	; 0x40
    3af0:	e24dd070 	sub	sp, sp, #112	; 0x70
    3af4:	e35c0000 	cmp	ip, #0
    3af8:	e1a06000 	mov	r6, r0
    3afc:	e1a0b003 	mov	fp, r3
    3b00:	e59d409c 	ldr	r4, [sp, #156]	; 0x9c
    3b04:	e58d100c 	str	r1, [sp, #12]
    3b08:	e58d2010 	str	r2, [sp, #16]
    3b0c:	0a000008 	beq	3b34 <_dtoa_r+0x4c>
    3b10:	e5903044 	ldr	r3, [r0, #68]	; 0x44
    3b14:	e3a02001 	mov	r2, #1
    3b18:	e1a02312 	lsl	r2, r2, r3
    3b1c:	e58c3004 	str	r3, [ip, #4]
    3b20:	e58c2008 	str	r2, [ip, #8]
    3b24:	e1a0100c 	mov	r1, ip
    3b28:	eb000afd 	bl	6724 <_Bfree>
    3b2c:	e3a03000 	mov	r3, #0
    3b30:	e5863040 	str	r3, [r6, #64]	; 0x40
    3b34:	e59da00c 	ldr	sl, [sp, #12]
    3b38:	e35a0000 	cmp	sl, #0
    3b3c:	b3a03001 	movlt	r3, #1
    3b40:	a3a03000 	movge	r3, #0
    3b44:	b5843000 	strlt	r3, [r4]
    3b48:	a5843000 	strge	r3, [r4]
    3b4c:	e59f3550 	ldr	r3, [pc, #1360]	; 40a4 <_dtoa_r+0x5bc>
    3b50:	b3caa102 	biclt	sl, sl, #-2147483648	; 0x80000000
    3b54:	e59f2548 	ldr	r2, [pc, #1352]	; 40a4 <_dtoa_r+0x5bc>
    3b58:	b1a0100a 	movlt	r1, sl
    3b5c:	e00a3003 	and	r3, sl, r3
    3b60:	b58d100c 	strlt	r1, [sp, #12]
    3b64:	e1530002 	cmp	r3, r2
    3b68:	0a000015 	beq	3bc4 <_dtoa_r+0xdc>
    3b6c:	e28d500c 	add	r5, sp, #12
    3b70:	e8950030 	ldm	r5, {r4, r5}
    3b74:	e3a02000 	mov	r2, #0
    3b78:	e1a00004 	mov	r0, r4
    3b7c:	e1a01005 	mov	r1, r5
    3b80:	e3a03000 	mov	r3, #0
    3b84:	eb001ac9 	bl	a6b0 <__cmpdf2>
    3b88:	e3500000 	cmp	r0, #0
    3b8c:	1a00001d 	bne	3c08 <_dtoa_r+0x120>
    3b90:	e59d40a0 	ldr	r4, [sp, #160]	; 0xa0
    3b94:	e59dc098 	ldr	ip, [sp, #152]	; 0x98
    3b98:	e3a03001 	mov	r3, #1
    3b9c:	e3540000 	cmp	r4, #0
    3ba0:	e58c3000 	str	r3, [ip]
    3ba4:	0a000094 	beq	3dfc <_dtoa_r+0x314>
    3ba8:	e59f44c8 	ldr	r4, [pc, #1224]	; 4078 <_dtoa_r+0x590>
    3bac:	e59dc0a0 	ldr	ip, [sp, #160]	; 0xa0
    3bb0:	e58c4000 	str	r4, [ip]
    3bb4:	e2444001 	sub	r4, r4, #1
    3bb8:	e1a00004 	mov	r0, r4
    3bbc:	e28dd070 	add	sp, sp, #112	; 0x70
    3bc0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3bc4:	e59d2010 	ldr	r2, [sp, #16]
    3bc8:	e59f34ac 	ldr	r3, [pc, #1196]	; 407c <_dtoa_r+0x594>
    3bcc:	e59d4098 	ldr	r4, [sp, #152]	; 0x98
    3bd0:	e3520000 	cmp	r2, #0
    3bd4:	e5843000 	str	r3, [r4]
    3bd8:	0a000074 	beq	3db0 <_dtoa_r+0x2c8>
    3bdc:	e59f449c 	ldr	r4, [pc, #1180]	; 4080 <_dtoa_r+0x598>
    3be0:	e59dc0a0 	ldr	ip, [sp, #160]	; 0xa0
    3be4:	e35c0000 	cmp	ip, #0
    3be8:	0afffff2 	beq	3bb8 <_dtoa_r+0xd0>
    3bec:	e5d43003 	ldrb	r3, [r4, #3]
    3bf0:	e59dc0a0 	ldr	ip, [sp, #160]	; 0xa0
    3bf4:	e3530000 	cmp	r3, #0
    3bf8:	12843008 	addne	r3, r4, #8
    3bfc:	02843003 	addeq	r3, r4, #3
    3c00:	e58c3000 	str	r3, [ip]
    3c04:	eaffffeb 	b	3bb8 <_dtoa_r+0xd0>
    3c08:	e28d3068 	add	r3, sp, #104	; 0x68
    3c0c:	e58d3000 	str	r3, [sp]
    3c10:	e1a00006 	mov	r0, r6
    3c14:	e1a01004 	mov	r1, r4
    3c18:	e1a02005 	mov	r2, r5
    3c1c:	e28d306c 	add	r3, sp, #108	; 0x6c
    3c20:	eb000d1f 	bl	70a4 <__d2b>
    3c24:	e1a0708a 	lsl	r7, sl, #1
    3c28:	e1b07aa7 	lsrs	r7, r7, #21
    3c2c:	e58d0034 	str	r0, [sp, #52]	; 0x34
    3c30:	1a000066 	bne	3dd0 <_dtoa_r+0x2e8>
    3c34:	e59d8068 	ldr	r8, [sp, #104]	; 0x68
    3c38:	e59d706c 	ldr	r7, [sp, #108]	; 0x6c
    3c3c:	e3e03e41 	mvn	r3, #1040	; 0x410
    3c40:	e0887007 	add	r7, r8, r7
    3c44:	e1570003 	cmp	r7, r3
    3c48:	ba0001d2 	blt	4398 <_dtoa_r+0x8b0>
    3c4c:	e2870e41 	add	r0, r7, #1040	; 0x410
    3c50:	e59dc010 	ldr	ip, [sp, #16]
    3c54:	e2800002 	add	r0, r0, #2
    3c58:	e1a0003c 	lsr	r0, ip, r0
    3c5c:	e283301f 	add	r3, r3, #31
    3c60:	e0673003 	rsb	r3, r7, r3
    3c64:	e180031a 	orr	r0, r0, sl, lsl r3
    3c68:	eb00192b 	bl	a11c <__aeabi_ui2d>
    3c6c:	e3a04001 	mov	r4, #1
    3c70:	e58d404c 	str	r4, [sp, #76]	; 0x4c
    3c74:	e240061f 	sub	r0, r0, #32505856	; 0x1f00000
    3c78:	e2477001 	sub	r7, r7, #1
    3c7c:	e59f2400 	ldr	r2, [pc, #1024]	; 4084 <_dtoa_r+0x59c>
    3c80:	e3a03000 	mov	r3, #0
    3c84:	eb00186b 	bl	9e38 <__aeabi_dsub>
    3c88:	e28f3e3d 	add	r3, pc, #976	; 0x3d0
    3c8c:	e893000c 	ldm	r3, {r2, r3}
    3c90:	eb001966 	bl	a230 <__aeabi_dmul>
    3c94:	e28f3ff3 	add	r3, pc, #972	; 0x3cc
    3c98:	e893000c 	ldm	r3, {r2, r3}
    3c9c:	eb001866 	bl	9e3c <__adddf3>
    3ca0:	e1a04000 	mov	r4, r0
    3ca4:	e1a00007 	mov	r0, r7
    3ca8:	e1a05001 	mov	r5, r1
    3cac:	eb001924 	bl	a144 <__aeabi_i2d>
    3cb0:	e28f3fee 	add	r3, pc, #952	; 0x3b8
    3cb4:	e893000c 	ldm	r3, {r2, r3}
    3cb8:	eb00195c 	bl	a230 <__aeabi_dmul>
    3cbc:	e1a02000 	mov	r2, r0
    3cc0:	e1a03001 	mov	r3, r1
    3cc4:	e1a00004 	mov	r0, r4
    3cc8:	e1a01005 	mov	r1, r5
    3ccc:	eb00185a 	bl	9e3c <__adddf3>
    3cd0:	e1a04000 	mov	r4, r0
    3cd4:	e1a05001 	mov	r5, r1
    3cd8:	eb001abb 	bl	a7cc <__aeabi_d2iz>
    3cdc:	e1a01005 	mov	r1, r5
    3ce0:	e1a09000 	mov	r9, r0
    3ce4:	e3a02000 	mov	r2, #0
    3ce8:	e1a00004 	mov	r0, r4
    3cec:	e3a03000 	mov	r3, #0
    3cf0:	eb001a6c 	bl	a6a8 <__ledf2>
    3cf4:	e3500000 	cmp	r0, #0
    3cf8:	ba00019e 	blt	4378 <_dtoa_r+0x890>
    3cfc:	e3590016 	cmp	r9, #22
    3d00:	83a04001 	movhi	r4, #1
    3d04:	858d4048 	strhi	r4, [sp, #72]	; 0x48
    3d08:	8a000009 	bhi	3d34 <_dtoa_r+0x24c>
    3d0c:	e59f3388 	ldr	r3, [pc, #904]	; 409c <_dtoa_r+0x5b4>
    3d10:	e0833189 	add	r3, r3, r9, lsl #3
    3d14:	e8930003 	ldm	r3, {r0, r1}
    3d18:	e28d300c 	add	r3, sp, #12
    3d1c:	e893000c 	ldm	r3, {r2, r3}
    3d20:	eb001a5e 	bl	a6a0 <__gedf2>
    3d24:	e3a0c000 	mov	ip, #0
    3d28:	e3500000 	cmp	r0, #0
    3d2c:	e58dc048 	str	ip, [sp, #72]	; 0x48
    3d30:	c2499001 	subgt	r9, r9, #1
    3d34:	e0677008 	rsb	r7, r7, r8
    3d38:	e2573001 	subs	r3, r7, #1
    3d3c:	42633000 	rsbmi	r3, r3, #0
    3d40:	43a04000 	movmi	r4, #0
    3d44:	53a0c000 	movpl	ip, #0
    3d48:	458d3024 	strmi	r3, [sp, #36]	; 0x24
    3d4c:	458d4018 	strmi	r4, [sp, #24]
    3d50:	558d3018 	strpl	r3, [sp, #24]
    3d54:	558dc024 	strpl	ip, [sp, #36]	; 0x24
    3d58:	e3590000 	cmp	r9, #0
    3d5c:	ba00017d 	blt	4358 <_dtoa_r+0x870>
    3d60:	e59d4018 	ldr	r4, [sp, #24]
    3d64:	e3a0c000 	mov	ip, #0
    3d68:	e0844009 	add	r4, r4, r9
    3d6c:	e58d4018 	str	r4, [sp, #24]
    3d70:	e58d9044 	str	r9, [sp, #68]	; 0x44
    3d74:	e58dc038 	str	ip, [sp, #56]	; 0x38
    3d78:	e35b0009 	cmp	fp, #9
    3d7c:	8a000020 	bhi	3e04 <_dtoa_r+0x31c>
    3d80:	e35b0005 	cmp	fp, #5
    3d84:	c24bb004 	subgt	fp, fp, #4
    3d88:	e24b3002 	sub	r3, fp, #2
    3d8c:	c3a04000 	movgt	r4, #0
    3d90:	d3a04001 	movle	r4, #1
    3d94:	e3530003 	cmp	r3, #3
    3d98:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    3d9c:	ea000019 	b	3e08 <_dtoa_r+0x320>
    3da0:	0000442c 	.word	0x0000442c
    3da4:	000047c0 	.word	0x000047c0
    3da8:	000047b4 	.word	0x000047b4
    3dac:	00004780 	.word	0x00004780
    3db0:	e3ca44ff 	bic	r4, sl, #-16777216	; 0xff000000
    3db4:	e3c4460f 	bic	r4, r4, #15728640	; 0xf00000
    3db8:	e59f32c0 	ldr	r3, [pc, #704]	; 4080 <_dtoa_r+0x598>
    3dbc:	e59f22c4 	ldr	r2, [pc, #708]	; 4088 <_dtoa_r+0x5a0>
    3dc0:	e3540000 	cmp	r4, #0
    3dc4:	01a04002 	moveq	r4, r2
    3dc8:	11a04003 	movne	r4, r3
    3dcc:	eaffff83 	b	3be0 <_dtoa_r+0xf8>
    3dd0:	e3c434ff 	bic	r3, r4, #-16777216	; 0xff000000
    3dd4:	e3c3360f 	bic	r3, r3, #15728640	; 0xf00000
    3dd8:	e38335ff 	orr	r3, r3, #1069547520	; 0x3fc00000
    3ddc:	e2477fff 	sub	r7, r7, #1020	; 0x3fc
    3de0:	e3a04000 	mov	r4, #0
    3de4:	e1a01005 	mov	r1, r5
    3de8:	e3830603 	orr	r0, r3, #3145728	; 0x300000
    3dec:	e2477003 	sub	r7, r7, #3
    3df0:	e59d8068 	ldr	r8, [sp, #104]	; 0x68
    3df4:	e58d404c 	str	r4, [sp, #76]	; 0x4c
    3df8:	eaffff9f 	b	3c7c <_dtoa_r+0x194>
    3dfc:	e59f4288 	ldr	r4, [pc, #648]	; 408c <_dtoa_r+0x5a4>
    3e00:	eaffff6c 	b	3bb8 <_dtoa_r+0xd0>
    3e04:	e3a0b000 	mov	fp, #0
    3e08:	e3a04000 	mov	r4, #0
    3e0c:	e5864044 	str	r4, [r6, #68]	; 0x44
    3e10:	e1a00006 	mov	r0, r6
    3e14:	e1a01004 	mov	r1, r4
    3e18:	eb000a1f 	bl	669c <_Balloc>
    3e1c:	e3e0c000 	mvn	ip, #0
    3e20:	e58dc040 	str	ip, [sp, #64]	; 0x40
    3e24:	e58dc028 	str	ip, [sp, #40]	; 0x28
    3e28:	e3a0c001 	mov	ip, #1
    3e2c:	e58d0020 	str	r0, [sp, #32]
    3e30:	e5860040 	str	r0, [r6, #64]	; 0x40
    3e34:	e58dc03c 	str	ip, [sp, #60]	; 0x3c
    3e38:	e58d4094 	str	r4, [sp, #148]	; 0x94
    3e3c:	e59d306c 	ldr	r3, [sp, #108]	; 0x6c
    3e40:	e3530000 	cmp	r3, #0
    3e44:	ba0000aa 	blt	40f4 <_dtoa_r+0x60c>
    3e48:	e359000e 	cmp	r9, #14
    3e4c:	ca0000a8 	bgt	40f4 <_dtoa_r+0x60c>
    3e50:	e59d4094 	ldr	r4, [sp, #148]	; 0x94
    3e54:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    3e58:	e59f323c 	ldr	r3, [pc, #572]	; 409c <_dtoa_r+0x5b4>
    3e5c:	e1a02fa4 	lsr	r2, r4, #31
    3e60:	e35c0000 	cmp	ip, #0
    3e64:	c3a02000 	movgt	r2, #0
    3e68:	d2022001 	andle	r2, r2, #1
    3e6c:	e0833189 	add	r3, r3, r9, lsl #3
    3e70:	e3520000 	cmp	r2, #0
    3e74:	e8930006 	ldm	r3, {r1, r2}
    3e78:	e58d1018 	str	r1, [sp, #24]
    3e7c:	e58d201c 	str	r2, [sp, #28]
    3e80:	1a000344 	bne	4b98 <_dtoa_r+0x10b0>
    3e84:	e28d500c 	add	r5, sp, #12
    3e88:	e8950030 	ldm	r5, {r4, r5}
    3e8c:	e1a03002 	mov	r3, r2
    3e90:	e1a00004 	mov	r0, r4
    3e94:	e1a02001 	mov	r2, r1
    3e98:	e1a01005 	mov	r1, r5
    3e9c:	eb00197e 	bl	a49c <__aeabi_ddiv>
    3ea0:	eb001a49 	bl	a7cc <__aeabi_d2iz>
    3ea4:	e1a07000 	mov	r7, r0
    3ea8:	eb0018a5 	bl	a144 <__aeabi_i2d>
    3eac:	e28d3018 	add	r3, sp, #24
    3eb0:	e893000c 	ldm	r3, {r2, r3}
    3eb4:	eb0018dd 	bl	a230 <__aeabi_dmul>
    3eb8:	e1a03001 	mov	r3, r1
    3ebc:	e1a02000 	mov	r2, r0
    3ec0:	e1a01005 	mov	r1, r5
    3ec4:	e1a00004 	mov	r0, r4
    3ec8:	eb0017da 	bl	9e38 <__aeabi_dsub>
    3ecc:	e59dc020 	ldr	ip, [sp, #32]
    3ed0:	e2873030 	add	r3, r7, #48	; 0x30
    3ed4:	e4cc3001 	strb	r3, [ip], #1
    3ed8:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    3edc:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    3ee0:	e35c0001 	cmp	ip, #1
    3ee4:	e1a04000 	mov	r4, r0
    3ee8:	e1a05001 	mov	r5, r1
    3eec:	e59dc02c 	ldr	ip, [sp, #44]	; 0x2c
    3ef0:	0a000039 	beq	3fdc <_dtoa_r+0x4f4>
    3ef4:	e59f21ac 	ldr	r2, [pc, #428]	; 40a8 <_dtoa_r+0x5c0>
    3ef8:	e3a03000 	mov	r3, #0
    3efc:	eb0018cb 	bl	a230 <__aeabi_dmul>
    3f00:	e3a02000 	mov	r2, #0
    3f04:	e3a03000 	mov	r3, #0
    3f08:	e1a04000 	mov	r4, r0
    3f0c:	e1a05001 	mov	r5, r1
    3f10:	eb0019e6 	bl	a6b0 <__cmpdf2>
    3f14:	e3500000 	cmp	r0, #0
    3f18:	0a000483 	beq	512c <_dtoa_r+0x1644>
    3f1c:	e59dc020 	ldr	ip, [sp, #32]
    3f20:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    3f24:	e08c8001 	add	r8, ip, r1
    3f28:	e1a0b009 	mov	fp, r9
    3f2c:	e58d800c 	str	r8, [sp, #12]
    3f30:	e28ca002 	add	sl, ip, #2
    3f34:	e28d9018 	add	r9, sp, #24
    3f38:	e8990300 	ldm	r9, {r8, r9}
    3f3c:	e58d6014 	str	r6, [sp, #20]
    3f40:	ea000008 	b	3f68 <_dtoa_r+0x480>
    3f44:	eb0018b9 	bl	a230 <__aeabi_dmul>
    3f48:	e3a02000 	mov	r2, #0
    3f4c:	e3a03000 	mov	r3, #0
    3f50:	e1a04000 	mov	r4, r0
    3f54:	e1a05001 	mov	r5, r1
    3f58:	eb0019d4 	bl	a6b0 <__cmpdf2>
    3f5c:	e3500000 	cmp	r0, #0
    3f60:	e28aa001 	add	sl, sl, #1
    3f64:	0a0003ae 	beq	4e24 <_dtoa_r+0x133c>
    3f68:	e1a02008 	mov	r2, r8
    3f6c:	e1a03009 	mov	r3, r9
    3f70:	e1a00004 	mov	r0, r4
    3f74:	e1a01005 	mov	r1, r5
    3f78:	eb001947 	bl	a49c <__aeabi_ddiv>
    3f7c:	eb001a12 	bl	a7cc <__aeabi_d2iz>
    3f80:	e1a07000 	mov	r7, r0
    3f84:	eb00186e 	bl	a144 <__aeabi_i2d>
    3f88:	e1a02008 	mov	r2, r8
    3f8c:	e1a03009 	mov	r3, r9
    3f90:	eb0018a6 	bl	a230 <__aeabi_dmul>
    3f94:	e1a02000 	mov	r2, r0
    3f98:	e1a03001 	mov	r3, r1
    3f9c:	e1a00004 	mov	r0, r4
    3fa0:	e1a01005 	mov	r1, r5
    3fa4:	eb0017a3 	bl	9e38 <__aeabi_dsub>
    3fa8:	e59dc00c 	ldr	ip, [sp, #12]
    3fac:	e15a000c 	cmp	sl, ip
    3fb0:	e287c030 	add	ip, r7, #48	; 0x30
    3fb4:	e1a04000 	mov	r4, r0
    3fb8:	e1a05001 	mov	r5, r1
    3fbc:	e59f20e4 	ldr	r2, [pc, #228]	; 40a8 <_dtoa_r+0x5c0>
    3fc0:	e3a03000 	mov	r3, #0
    3fc4:	e54ac001 	strb	ip, [sl, #-1]
    3fc8:	e1a0600a 	mov	r6, sl
    3fcc:	1affffdc 	bne	3f44 <_dtoa_r+0x45c>
    3fd0:	e59d6014 	ldr	r6, [sp, #20]
    3fd4:	e1a0900b 	mov	r9, fp
    3fd8:	e1a0c00a 	mov	ip, sl
    3fdc:	e1a02004 	mov	r2, r4
    3fe0:	e1a03005 	mov	r3, r5
    3fe4:	e1a00004 	mov	r0, r4
    3fe8:	e1a01005 	mov	r1, r5
    3fec:	e58dc004 	str	ip, [sp, #4]
    3ff0:	eb001791 	bl	9e3c <__adddf3>
    3ff4:	e1a04000 	mov	r4, r0
    3ff8:	e1a05001 	mov	r5, r1
    3ffc:	e1a02004 	mov	r2, r4
    4000:	e28d1018 	add	r1, sp, #24
    4004:	e8910003 	ldm	r1, {r0, r1}
    4008:	e1a03005 	mov	r3, r5
    400c:	eb0019a5 	bl	a6a8 <__ledf2>
    4010:	e3500000 	cmp	r0, #0
    4014:	e59dc004 	ldr	ip, [sp, #4]
    4018:	ba00000a 	blt	4048 <_dtoa_r+0x560>
    401c:	e28d1018 	add	r1, sp, #24
    4020:	e8910003 	ldm	r1, {r0, r1}
    4024:	e1a02004 	mov	r2, r4
    4028:	e1a03005 	mov	r3, r5
    402c:	e58dc004 	str	ip, [sp, #4]
    4030:	eb00199e 	bl	a6b0 <__cmpdf2>
    4034:	e3500000 	cmp	r0, #0
    4038:	e59dc004 	ldr	ip, [sp, #4]
    403c:	1a00037b 	bne	4e30 <_dtoa_r+0x1348>
    4040:	e3170001 	tst	r7, #1
    4044:	0a000379 	beq	4e30 <_dtoa_r+0x1348>
    4048:	e55c8001 	ldrb	r8, [ip, #-1]
    404c:	e59d4020 	ldr	r4, [sp, #32]
    4050:	e58d9060 	str	r9, [sp, #96]	; 0x60
    4054:	e1a0900c 	mov	r9, ip
    4058:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
    405c:	ea000016 	b	40bc <_dtoa_r+0x5d4>
    4060:	3fd287a7 	.word	0x3fd287a7
    4064:	636f4361 	.word	0x636f4361
    4068:	3fc68a28 	.word	0x3fc68a28
    406c:	8b60c8b3 	.word	0x8b60c8b3
    4070:	3fd34413 	.word	0x3fd34413
    4074:	509f79fb 	.word	0x509f79fb
    4078:	0000a8c5 	.word	0x0000a8c5
    407c:	0000270f 	.word	0x0000270f
    4080:	0000a8d4 	.word	0x0000a8d4
    4084:	3ff80000 	.word	0x3ff80000
    4088:	0000a8c8 	.word	0x0000a8c8
    408c:	0000a8c4 	.word	0x0000a8c4
    4090:	fffffbee 	.word	0xfffffbee
    4094:	3ff00000 	.word	0x3ff00000
    4098:	0000a9e0 	.word	0x0000a9e0
    409c:	0000a8f0 	.word	0x0000a8f0
    40a0:	40140000 	.word	0x40140000
    40a4:	7ff00000 	.word	0x7ff00000
    40a8:	40240000 	.word	0x40240000
    40ac:	401c0000 	.word	0x401c0000
    40b0:	3fe00000 	.word	0x3fe00000
    40b4:	e5598002 	ldrb	r8, [r9, #-2]
    40b8:	e1a09003 	mov	r9, r3
    40bc:	e3580039 	cmp	r8, #57	; 0x39
    40c0:	e1a02009 	mov	r2, r9
    40c4:	e2493001 	sub	r3, r9, #1
    40c8:	1a0003c7 	bne	4fec <_dtoa_r+0x1504>
    40cc:	e1590001 	cmp	r9, r1
    40d0:	1afffff7 	bne	40b4 <_dtoa_r+0x5cc>
    40d4:	e59dc060 	ldr	ip, [sp, #96]	; 0x60
    40d8:	e58d2020 	str	r2, [sp, #32]
    40dc:	e3a02030 	mov	r2, #48	; 0x30
    40e0:	e5c32000 	strb	r2, [r3]
    40e4:	e28c9001 	add	r9, ip, #1
    40e8:	e3a02031 	mov	r2, #49	; 0x31
    40ec:	e5c32000 	strb	r2, [r3]
    40f0:	ea000089 	b	431c <_dtoa_r+0x834>
    40f4:	e59d403c 	ldr	r4, [sp, #60]	; 0x3c
    40f8:	e3540000 	cmp	r4, #0
    40fc:	1a0000aa 	bne	43ac <_dtoa_r+0x8c4>
    4100:	e59d5038 	ldr	r5, [sp, #56]	; 0x38
    4104:	e59d4024 	ldr	r4, [sp, #36]	; 0x24
    4108:	e59da03c 	ldr	sl, [sp, #60]	; 0x3c
    410c:	e59dc018 	ldr	ip, [sp, #24]
    4110:	e35c0000 	cmp	ip, #0
    4114:	c3540000 	cmpgt	r4, #0
    4118:	da000009 	ble	4144 <_dtoa_r+0x65c>
    411c:	e1a0300c 	mov	r3, ip
    4120:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    4124:	e1530004 	cmp	r3, r4
    4128:	a1a03004 	movge	r3, r4
    412c:	e063c00c 	rsb	ip, r3, ip
    4130:	e58dc024 	str	ip, [sp, #36]	; 0x24
    4134:	e59dc018 	ldr	ip, [sp, #24]
    4138:	e063c00c 	rsb	ip, r3, ip
    413c:	e58dc018 	str	ip, [sp, #24]
    4140:	e0634004 	rsb	r4, r3, r4
    4144:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    4148:	e35c0000 	cmp	ip, #0
    414c:	da000015 	ble	41a8 <_dtoa_r+0x6c0>
    4150:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    4154:	e35c0000 	cmp	ip, #0
    4158:	0a00032b 	beq	4e0c <_dtoa_r+0x1324>
    415c:	e3550000 	cmp	r5, #0
    4160:	da00000d 	ble	419c <_dtoa_r+0x6b4>
    4164:	e1a0100a 	mov	r1, sl
    4168:	e1a02005 	mov	r2, r5
    416c:	e1a00006 	mov	r0, r6
    4170:	eb000a9c 	bl	6be8 <__pow5mult>
    4174:	e1a0a000 	mov	sl, r0
    4178:	e1a0100a 	mov	r1, sl
    417c:	e59d2034 	ldr	r2, [sp, #52]	; 0x34
    4180:	e1a00006 	mov	r0, r6
    4184:	eb000a1f 	bl	6a08 <__multiply>
    4188:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    418c:	e1a07000 	mov	r7, r0
    4190:	e1a00006 	mov	r0, r6
    4194:	eb000962 	bl	6724 <_Bfree>
    4198:	e58d7034 	str	r7, [sp, #52]	; 0x34
    419c:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    41a0:	e05c2005 	subs	r2, ip, r5
    41a4:	1a000347 	bne	4ec8 <_dtoa_r+0x13e0>
    41a8:	e1a00006 	mov	r0, r6
    41ac:	e3a01001 	mov	r1, #1
    41b0:	eb000a0c 	bl	69e8 <__i2b>
    41b4:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    41b8:	e35c0000 	cmp	ip, #0
    41bc:	e1a07000 	mov	r7, r0
    41c0:	da000004 	ble	41d8 <_dtoa_r+0x6f0>
    41c4:	e1a01007 	mov	r1, r7
    41c8:	e1a00006 	mov	r0, r6
    41cc:	e1a0200c 	mov	r2, ip
    41d0:	eb000a84 	bl	6be8 <__pow5mult>
    41d4:	e1a07000 	mov	r7, r0
    41d8:	e35b0001 	cmp	fp, #1
    41dc:	da00027d 	ble	4bd8 <_dtoa_r+0x10f0>
    41e0:	e3a05000 	mov	r5, #0
    41e4:	e59dc044 	ldr	ip, [sp, #68]	; 0x44
    41e8:	e35c0000 	cmp	ip, #0
    41ec:	03a00001 	moveq	r0, #1
    41f0:	1a000247 	bne	4b14 <_dtoa_r+0x102c>
    41f4:	e59dc018 	ldr	ip, [sp, #24]
    41f8:	e080300c 	add	r3, r0, ip
    41fc:	e213301f 	ands	r3, r3, #31
    4200:	0a0001d4 	beq	4958 <_dtoa_r+0xe70>
    4204:	e2632020 	rsb	r2, r3, #32
    4208:	e3520004 	cmp	r2, #4
    420c:	da0003e1 	ble	5198 <_dtoa_r+0x16b0>
    4210:	e263301c 	rsb	r3, r3, #28
    4214:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    4218:	e08cc003 	add	ip, ip, r3
    421c:	e58dc024 	str	ip, [sp, #36]	; 0x24
    4220:	e59dc018 	ldr	ip, [sp, #24]
    4224:	e08cc003 	add	ip, ip, r3
    4228:	e58dc018 	str	ip, [sp, #24]
    422c:	e0844003 	add	r4, r4, r3
    4230:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    4234:	e35c0000 	cmp	ip, #0
    4238:	da000004 	ble	4250 <_dtoa_r+0x768>
    423c:	e1a00006 	mov	r0, r6
    4240:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    4244:	e1a0200c 	mov	r2, ip
    4248:	eb000aa2 	bl	6cd8 <__lshift>
    424c:	e58d0034 	str	r0, [sp, #52]	; 0x34
    4250:	e59dc018 	ldr	ip, [sp, #24]
    4254:	e35c0000 	cmp	ip, #0
    4258:	da000004 	ble	4270 <_dtoa_r+0x788>
    425c:	e1a01007 	mov	r1, r7
    4260:	e1a00006 	mov	r0, r6
    4264:	e1a0200c 	mov	r2, ip
    4268:	eb000a9a 	bl	6cd8 <__lshift>
    426c:	e1a07000 	mov	r7, r0
    4270:	e59dc048 	ldr	ip, [sp, #72]	; 0x48
    4274:	e35c0000 	cmp	ip, #0
    4278:	1a00022b 	bne	4b2c <_dtoa_r+0x1044>
    427c:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    4280:	e35b0002 	cmp	fp, #2
    4284:	d3a03000 	movle	r3, #0
    4288:	c3a03001 	movgt	r3, #1
    428c:	e35c0000 	cmp	ip, #0
    4290:	c3a03000 	movgt	r3, #0
    4294:	e3530000 	cmp	r3, #0
    4298:	0a00016f 	beq	485c <_dtoa_r+0xd74>
    429c:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    42a0:	e3540000 	cmp	r4, #0
    42a4:	1a000167 	bne	4848 <_dtoa_r+0xd60>
    42a8:	e1a01007 	mov	r1, r7
    42ac:	e3a02005 	mov	r2, #5
    42b0:	e1a03004 	mov	r3, r4
    42b4:	e1a00006 	mov	r0, r6
    42b8:	eb000920 	bl	6740 <__multadd>
    42bc:	e1a07000 	mov	r7, r0
    42c0:	e1a01007 	mov	r1, r7
    42c4:	e59d0034 	ldr	r0, [sp, #52]	; 0x34
    42c8:	eb000ac2 	bl	6dd8 <__mcmp>
    42cc:	e3500000 	cmp	r0, #0
    42d0:	da00015c 	ble	4848 <_dtoa_r+0xd60>
    42d4:	e59d3020 	ldr	r3, [sp, #32]
    42d8:	e3a02031 	mov	r2, #49	; 0x31
    42dc:	e4c32001 	strb	r2, [r3], #1
    42e0:	e59d4020 	ldr	r4, [sp, #32]
    42e4:	e58d3020 	str	r3, [sp, #32]
    42e8:	e2899001 	add	r9, r9, #1
    42ec:	e3a05000 	mov	r5, #0
    42f0:	e1a00006 	mov	r0, r6
    42f4:	e1a01007 	mov	r1, r7
    42f8:	eb000909 	bl	6724 <_Bfree>
    42fc:	e35a0000 	cmp	sl, #0
    4300:	0a000005 	beq	431c <_dtoa_r+0x834>
    4304:	e155000a 	cmp	r5, sl
    4308:	13550000 	cmpne	r5, #0
    430c:	1a000199 	bne	4978 <_dtoa_r+0xe90>
    4310:	e1a00006 	mov	r0, r6
    4314:	e1a0100a 	mov	r1, sl
    4318:	eb000901 	bl	6724 <_Bfree>
    431c:	e1a00006 	mov	r0, r6
    4320:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    4324:	eb0008fe 	bl	6724 <_Bfree>
    4328:	e59dc0a0 	ldr	ip, [sp, #160]	; 0xa0
    432c:	e35c0000 	cmp	ip, #0
    4330:	e59dc020 	ldr	ip, [sp, #32]
    4334:	e3a02000 	mov	r2, #0
    4338:	e5cc2000 	strb	r2, [ip]
    433c:	e59dc098 	ldr	ip, [sp, #152]	; 0x98
    4340:	e2893001 	add	r3, r9, #1
    4344:	e58c3000 	str	r3, [ip]
    4348:	159dc020 	ldrne	ip, [sp, #32]
    434c:	159d10a0 	ldrne	r1, [sp, #160]	; 0xa0
    4350:	1581c000 	strne	ip, [r1]
    4354:	eafffe17 	b	3bb8 <_dtoa_r+0xd0>
    4358:	e59d4024 	ldr	r4, [sp, #36]	; 0x24
    435c:	e0694004 	rsb	r4, r9, r4
    4360:	e58d4024 	str	r4, [sp, #36]	; 0x24
    4364:	e269c000 	rsb	ip, r9, #0
    4368:	e3a04000 	mov	r4, #0
    436c:	e58dc038 	str	ip, [sp, #56]	; 0x38
    4370:	e58d4044 	str	r4, [sp, #68]	; 0x44
    4374:	eafffe7f 	b	3d78 <_dtoa_r+0x290>
    4378:	e1a00009 	mov	r0, r9
    437c:	eb001770 	bl	a144 <__aeabi_i2d>
    4380:	e1a02004 	mov	r2, r4
    4384:	e1a03005 	mov	r3, r5
    4388:	eb0018c8 	bl	a6b0 <__cmpdf2>
    438c:	e3500000 	cmp	r0, #0
    4390:	12499001 	subne	r9, r9, #1
    4394:	eafffe58 	b	3cfc <_dtoa_r+0x214>
    4398:	e51f0310 	ldr	r0, [pc, #-784]	; 4090 <_dtoa_r+0x5a8>
    439c:	e59d1010 	ldr	r1, [sp, #16]
    43a0:	e0670000 	rsb	r0, r7, r0
    43a4:	e1a00011 	lsl	r0, r1, r0
    43a8:	eafffe2e 	b	3c68 <_dtoa_r+0x180>
    43ac:	e35b0001 	cmp	fp, #1
    43b0:	da0002df 	ble	4f34 <_dtoa_r+0x144c>
    43b4:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    43b8:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    43bc:	e2445001 	sub	r5, r4, #1
    43c0:	e15c0005 	cmp	ip, r5
    43c4:	b59d4038 	ldrlt	r4, [sp, #56]	; 0x38
    43c8:	b59dc044 	ldrlt	ip, [sp, #68]	; 0x44
    43cc:	b0643005 	rsblt	r3, r4, r5
    43d0:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    43d4:	b08cc003 	addlt	ip, ip, r3
    43d8:	b58dc044 	strlt	ip, [sp, #68]	; 0x44
    43dc:	b58d5038 	strlt	r5, [sp, #56]	; 0x38
    43e0:	a065500c 	rsbge	r5, r5, ip
    43e4:	b3a05000 	movlt	r5, #0
    43e8:	e3540000 	cmp	r4, #0
    43ec:	b59dc024 	ldrlt	ip, [sp, #36]	; 0x24
    43f0:	a59d4024 	ldrge	r4, [sp, #36]	; 0x24
    43f4:	a59d3028 	ldrge	r3, [sp, #40]	; 0x28
    43f8:	b064400c 	rsblt	r4, r4, ip
    43fc:	b3a03000 	movlt	r3, #0
    4400:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    4404:	e08cc003 	add	ip, ip, r3
    4408:	e58dc024 	str	ip, [sp, #36]	; 0x24
    440c:	e59dc018 	ldr	ip, [sp, #24]
    4410:	e1a00006 	mov	r0, r6
    4414:	e08cc003 	add	ip, ip, r3
    4418:	e3a01001 	mov	r1, #1
    441c:	e58dc018 	str	ip, [sp, #24]
    4420:	eb000970 	bl	69e8 <__i2b>
    4424:	e1a0a000 	mov	sl, r0
    4428:	eaffff37 	b	410c <_dtoa_r+0x624>
    442c:	e3a0c000 	mov	ip, #0
    4430:	e58dc03c 	str	ip, [sp, #60]	; 0x3c
    4434:	e59d1094 	ldr	r1, [sp, #148]	; 0x94
    4438:	e3510000 	cmp	r1, #0
    443c:	da000265 	ble	4dd8 <_dtoa_r+0x12f0>
    4440:	e58d1040 	str	r1, [sp, #64]	; 0x40
    4444:	e58d1028 	str	r1, [sp, #40]	; 0x28
    4448:	e1a08001 	mov	r8, r1
    444c:	e351000e 	cmp	r1, #14
    4450:	83a04000 	movhi	r4, #0
    4454:	92044001 	andls	r4, r4, #1
    4458:	e3a01000 	mov	r1, #0
    445c:	e3580017 	cmp	r8, #23
    4460:	e5861044 	str	r1, [r6, #68]	; 0x44
    4464:	9a000008 	bls	448c <_dtoa_r+0x9a4>
    4468:	e3a02001 	mov	r2, #1
    446c:	e3a03004 	mov	r3, #4
    4470:	e1a03083 	lsl	r3, r3, #1
    4474:	e2830014 	add	r0, r3, #20
    4478:	e1500008 	cmp	r0, r8
    447c:	e1a01002 	mov	r1, r2
    4480:	e2822001 	add	r2, r2, #1
    4484:	9afffff9 	bls	4470 <_dtoa_r+0x988>
    4488:	e5861044 	str	r1, [r6, #68]	; 0x44
    448c:	e1a00006 	mov	r0, r6
    4490:	eb000881 	bl	669c <_Balloc>
    4494:	e3540000 	cmp	r4, #0
    4498:	e58d0020 	str	r0, [sp, #32]
    449c:	e5860040 	str	r0, [r6, #64]	; 0x40
    44a0:	0afffe65 	beq	3e3c <_dtoa_r+0x354>
    44a4:	e3590000 	cmp	r9, #0
    44a8:	da000136 	ble	4988 <_dtoa_r+0xea0>
    44ac:	e51f3418 	ldr	r3, [pc, #-1048]	; 409c <_dtoa_r+0x5b4>
    44b0:	e209200f 	and	r2, r9, #15
    44b4:	e1a07249 	asr	r7, r9, #4
    44b8:	e0833182 	add	r3, r3, r2, lsl #3
    44bc:	e3170010 	tst	r7, #16
    44c0:	e8930030 	ldm	r3, {r4, r5}
    44c4:	0a000125 	beq	4960 <_dtoa_r+0xe78>
    44c8:	e51f3438 	ldr	r3, [pc, #-1080]	; 4098 <_dtoa_r+0x5b0>
    44cc:	e28d100c 	add	r1, sp, #12
    44d0:	e8910003 	ldm	r1, {r0, r1}
    44d4:	e2833020 	add	r3, r3, #32
    44d8:	e893000c 	ldm	r3, {r2, r3}
    44dc:	eb0017ee 	bl	a49c <__aeabi_ddiv>
    44e0:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    44e4:	e58d1030 	str	r1, [sp, #48]	; 0x30
    44e8:	e207700f 	and	r7, r7, #15
    44ec:	e3a08003 	mov	r8, #3
    44f0:	e3570000 	cmp	r7, #0
    44f4:	0a00000c 	beq	452c <_dtoa_r+0xa44>
    44f8:	e51fa468 	ldr	sl, [pc, #-1128]	; 4098 <_dtoa_r+0x5b0>
    44fc:	e1a00004 	mov	r0, r4
    4500:	e1a01005 	mov	r1, r5
    4504:	e3170001 	tst	r7, #1
    4508:	0a000002 	beq	4518 <_dtoa_r+0xa30>
    450c:	e89a000c 	ldm	sl, {r2, r3}
    4510:	eb001746 	bl	a230 <__aeabi_dmul>
    4514:	e2888001 	add	r8, r8, #1
    4518:	e1b070c7 	asrs	r7, r7, #1
    451c:	e28aa008 	add	sl, sl, #8
    4520:	1afffff7 	bne	4504 <_dtoa_r+0xa1c>
    4524:	e1a04000 	mov	r4, r0
    4528:	e1a05001 	mov	r5, r1
    452c:	e28d102c 	add	r1, sp, #44	; 0x2c
    4530:	e8910003 	ldm	r1, {r0, r1}
    4534:	e1a02004 	mov	r2, r4
    4538:	e1a03005 	mov	r3, r5
    453c:	eb0017d6 	bl	a49c <__aeabi_ddiv>
    4540:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    4544:	e58d1030 	str	r1, [sp, #48]	; 0x30
    4548:	e59d4048 	ldr	r4, [sp, #72]	; 0x48
    454c:	e3540000 	cmp	r4, #0
    4550:	0a000006 	beq	4570 <_dtoa_r+0xa88>
    4554:	e28d102c 	add	r1, sp, #44	; 0x2c
    4558:	e8910003 	ldm	r1, {r0, r1}
    455c:	e51f24d0 	ldr	r2, [pc, #-1232]	; 4094 <_dtoa_r+0x5ac>
    4560:	e3a03000 	mov	r3, #0
    4564:	eb00184f 	bl	a6a8 <__ledf2>
    4568:	e3500000 	cmp	r0, #0
    456c:	ba000238 	blt	4e54 <_dtoa_r+0x136c>
    4570:	e1a00008 	mov	r0, r8
    4574:	eb0016f2 	bl	a144 <__aeabi_i2d>
    4578:	e28d302c 	add	r3, sp, #44	; 0x2c
    457c:	e893000c 	ldm	r3, {r2, r3}
    4580:	eb00172a 	bl	a230 <__aeabi_dmul>
    4584:	e51f24e0 	ldr	r2, [pc, #-1248]	; 40ac <_dtoa_r+0x5c4>
    4588:	e3a03000 	mov	r3, #0
    458c:	eb00162a 	bl	9e3c <__adddf3>
    4590:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    4594:	e35c0000 	cmp	ip, #0
    4598:	e1a05001 	mov	r5, r1
    459c:	e240450d 	sub	r4, r0, #54525952	; 0x3400000
    45a0:	0a000093 	beq	47f4 <_dtoa_r+0xd0c>
    45a4:	e58d9060 	str	r9, [sp, #96]	; 0x60
    45a8:	e59da028 	ldr	sl, [sp, #40]	; 0x28
    45ac:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    45b0:	e35c0000 	cmp	ip, #0
    45b4:	0a000111 	beq	4a00 <_dtoa_r+0xf18>
    45b8:	e51f3524 	ldr	r3, [pc, #-1316]	; 409c <_dtoa_r+0x5b4>
    45bc:	e083318a 	add	r3, r3, sl, lsl #3
    45c0:	e913000c 	ldmdb	r3, {r2, r3}
    45c4:	e51f051c 	ldr	r0, [pc, #-1308]	; 40b0 <_dtoa_r+0x5c8>
    45c8:	e3a01000 	mov	r1, #0
    45cc:	eb0017b2 	bl	a49c <__aeabi_ddiv>
    45d0:	e1a02004 	mov	r2, r4
    45d4:	e1a03005 	mov	r3, r5
    45d8:	eb001616 	bl	9e38 <__aeabi_dsub>
    45dc:	e58d0050 	str	r0, [sp, #80]	; 0x50
    45e0:	e58d1054 	str	r1, [sp, #84]	; 0x54
    45e4:	e28d102c 	add	r1, sp, #44	; 0x2c
    45e8:	e8910003 	ldm	r1, {r0, r1}
    45ec:	eb001876 	bl	a7cc <__aeabi_d2iz>
    45f0:	e1a07000 	mov	r7, r0
    45f4:	eb0016d2 	bl	a144 <__aeabi_i2d>
    45f8:	e1a02000 	mov	r2, r0
    45fc:	e1a03001 	mov	r3, r1
    4600:	e28d102c 	add	r1, sp, #44	; 0x2c
    4604:	e8910003 	ldm	r1, {r0, r1}
    4608:	eb00160a 	bl	9e38 <__aeabi_dsub>
    460c:	e2877030 	add	r7, r7, #48	; 0x30
    4610:	e59dc020 	ldr	ip, [sp, #32]
    4614:	e20780ff 	and	r8, r7, #255	; 0xff
    4618:	e4cc8001 	strb	r8, [ip], #1
    461c:	e1a04000 	mov	r4, r0
    4620:	e1a05001 	mov	r5, r1
    4624:	e1a02004 	mov	r2, r4
    4628:	e28d1050 	add	r1, sp, #80	; 0x50
    462c:	e8910003 	ldm	r1, {r0, r1}
    4630:	e1a03005 	mov	r3, r5
    4634:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    4638:	eb001818 	bl	a6a0 <__gedf2>
    463c:	e3500000 	cmp	r0, #0
    4640:	e59dc02c 	ldr	ip, [sp, #44]	; 0x2c
    4644:	ca0002ce 	bgt	5184 <_dtoa_r+0x169c>
    4648:	e1a02004 	mov	r2, r4
    464c:	e1a03005 	mov	r3, r5
    4650:	e51f05c4 	ldr	r0, [pc, #-1476]	; 4094 <_dtoa_r+0x5ac>
    4654:	e3a01000 	mov	r1, #0
    4658:	e58dc004 	str	ip, [sp, #4]
    465c:	eb0015f5 	bl	9e38 <__aeabi_dsub>
    4660:	e1a02000 	mov	r2, r0
    4664:	e1a03001 	mov	r3, r1
    4668:	e28d1050 	add	r1, sp, #80	; 0x50
    466c:	e8910003 	ldm	r1, {r0, r1}
    4670:	eb00180a 	bl	a6a0 <__gedf2>
    4674:	e3500000 	cmp	r0, #0
    4678:	e59dc004 	ldr	ip, [sp, #4]
    467c:	ca000238 	bgt	4f64 <_dtoa_r+0x147c>
    4680:	e35a0001 	cmp	sl, #1
    4684:	dafffdec 	ble	3e3c <_dtoa_r+0x354>
    4688:	e59dc020 	ldr	ip, [sp, #32]
    468c:	e59d702c 	ldr	r7, [sp, #44]	; 0x2c
    4690:	e08ca00a 	add	sl, ip, sl
    4694:	e58d9064 	str	r9, [sp, #100]	; 0x64
    4698:	e58d6058 	str	r6, [sp, #88]	; 0x58
    469c:	e1a0900a 	mov	r9, sl
    46a0:	e1a0a007 	mov	sl, r7
    46a4:	e28d7050 	add	r7, sp, #80	; 0x50
    46a8:	e89700c0 	ldm	r7, {r6, r7}
    46ac:	e58db050 	str	fp, [sp, #80]	; 0x50
    46b0:	ea000007 	b	46d4 <_dtoa_r+0xbec>
    46b4:	eb0015df 	bl	9e38 <__aeabi_dsub>
    46b8:	e1a02006 	mov	r2, r6
    46bc:	e1a03007 	mov	r3, r7
    46c0:	eb0017f8 	bl	a6a8 <__ledf2>
    46c4:	e3500000 	cmp	r0, #0
    46c8:	ba000223 	blt	4f5c <_dtoa_r+0x1474>
    46cc:	e15a0009 	cmp	sl, r9
    46d0:	0a000241 	beq	4fdc <_dtoa_r+0x14f4>
    46d4:	e51f2634 	ldr	r2, [pc, #-1588]	; 40a8 <_dtoa_r+0x5c0>
    46d8:	e3a03000 	mov	r3, #0
    46dc:	e1a00006 	mov	r0, r6
    46e0:	e1a01007 	mov	r1, r7
    46e4:	eb0016d1 	bl	a230 <__aeabi_dmul>
    46e8:	e51f2648 	ldr	r2, [pc, #-1608]	; 40a8 <_dtoa_r+0x5c0>
    46ec:	e3a03000 	mov	r3, #0
    46f0:	e1a06000 	mov	r6, r0
    46f4:	e1a07001 	mov	r7, r1
    46f8:	e1a00004 	mov	r0, r4
    46fc:	e1a01005 	mov	r1, r5
    4700:	eb0016ca 	bl	a230 <__aeabi_dmul>
    4704:	e1a05001 	mov	r5, r1
    4708:	e1a04000 	mov	r4, r0
    470c:	eb00182e 	bl	a7cc <__aeabi_d2iz>
    4710:	e1a08000 	mov	r8, r0
    4714:	eb00168a 	bl	a144 <__aeabi_i2d>
    4718:	e1a02000 	mov	r2, r0
    471c:	e1a03001 	mov	r3, r1
    4720:	e1a00004 	mov	r0, r4
    4724:	e1a01005 	mov	r1, r5
    4728:	eb0015c2 	bl	9e38 <__aeabi_dsub>
    472c:	e2888030 	add	r8, r8, #48	; 0x30
    4730:	e20880ff 	and	r8, r8, #255	; 0xff
    4734:	e4ca8001 	strb	r8, [sl], #1
    4738:	e1a02006 	mov	r2, r6
    473c:	e1a03007 	mov	r3, r7
    4740:	e1a05001 	mov	r5, r1
    4744:	e1a04000 	mov	r4, r0
    4748:	eb0017d6 	bl	a6a8 <__ledf2>
    474c:	e3500000 	cmp	r0, #0
    4750:	e1a02004 	mov	r2, r4
    4754:	e1a03005 	mov	r3, r5
    4758:	e51f06cc 	ldr	r0, [pc, #-1740]	; 4094 <_dtoa_r+0x5ac>
    475c:	e3a01000 	mov	r1, #0
    4760:	e1a0b00a 	mov	fp, sl
    4764:	aaffffd2 	bge	46b4 <_dtoa_r+0xbcc>
    4768:	e59d4020 	ldr	r4, [sp, #32]
    476c:	e1a0700a 	mov	r7, sl
    4770:	e59d6058 	ldr	r6, [sp, #88]	; 0x58
    4774:	e59d9060 	ldr	r9, [sp, #96]	; 0x60
    4778:	e58da020 	str	sl, [sp, #32]
    477c:	eafffee6 	b	431c <_dtoa_r+0x834>
    4780:	e3a0c001 	mov	ip, #1
    4784:	e58dc03c 	str	ip, [sp, #60]	; 0x3c
    4788:	e59dc094 	ldr	ip, [sp, #148]	; 0x94
    478c:	e08cc009 	add	ip, ip, r9
    4790:	e28c8001 	add	r8, ip, #1
    4794:	e3580000 	cmp	r8, #0
    4798:	e58dc040 	str	ip, [sp, #64]	; 0x40
    479c:	da000195 	ble	4df8 <_dtoa_r+0x1310>
    47a0:	e358000e 	cmp	r8, #14
    47a4:	83a04000 	movhi	r4, #0
    47a8:	92044001 	andls	r4, r4, #1
    47ac:	e58d8028 	str	r8, [sp, #40]	; 0x28
    47b0:	eaffff28 	b	4458 <_dtoa_r+0x970>
    47b4:	e3a0c001 	mov	ip, #1
    47b8:	e58dc03c 	str	ip, [sp, #60]	; 0x3c
    47bc:	eaffff1c 	b	4434 <_dtoa_r+0x94c>
    47c0:	e3a0c000 	mov	ip, #0
    47c4:	e58dc03c 	str	ip, [sp, #60]	; 0x3c
    47c8:	eaffffee 	b	4788 <_dtoa_r+0xca0>
    47cc:	e1a00008 	mov	r0, r8
    47d0:	eb00165b 	bl	a144 <__aeabi_i2d>
    47d4:	e28d302c 	add	r3, sp, #44	; 0x2c
    47d8:	e893000c 	ldm	r3, {r2, r3}
    47dc:	eb001693 	bl	a230 <__aeabi_dmul>
    47e0:	e51f273c 	ldr	r2, [pc, #-1852]	; 40ac <_dtoa_r+0x5c4>
    47e4:	e3a03000 	mov	r3, #0
    47e8:	eb001593 	bl	9e3c <__adddf3>
    47ec:	e1a05001 	mov	r5, r1
    47f0:	e240450d 	sub	r4, r0, #54525952	; 0x3400000
    47f4:	e51f275c 	ldr	r2, [pc, #-1884]	; 40a0 <_dtoa_r+0x5b8>
    47f8:	e3a03000 	mov	r3, #0
    47fc:	e28d102c 	add	r1, sp, #44	; 0x2c
    4800:	e8910003 	ldm	r1, {r0, r1}
    4804:	eb00158b 	bl	9e38 <__aeabi_dsub>
    4808:	e1a02004 	mov	r2, r4
    480c:	e1a03005 	mov	r3, r5
    4810:	e1a07000 	mov	r7, r0
    4814:	e1a08001 	mov	r8, r1
    4818:	eb0017a0 	bl	a6a0 <__gedf2>
    481c:	e3500000 	cmp	r0, #0
    4820:	ca000073 	bgt	49f4 <_dtoa_r+0xf0c>
    4824:	e2842102 	add	r2, r4, #-2147483648	; 0x80000000
    4828:	e1a03005 	mov	r3, r5
    482c:	e1a00007 	mov	r0, r7
    4830:	e1a01008 	mov	r1, r8
    4834:	eb00179b 	bl	a6a8 <__ledf2>
    4838:	e3500000 	cmp	r0, #0
    483c:	aafffd7e 	bge	3e3c <_dtoa_r+0x354>
    4840:	e3a07000 	mov	r7, #0
    4844:	e1a0a007 	mov	sl, r7
    4848:	e59dc094 	ldr	ip, [sp, #148]	; 0x94
    484c:	e59d4020 	ldr	r4, [sp, #32]
    4850:	e1e0900c 	mvn	r9, ip
    4854:	e3a05000 	mov	r5, #0
    4858:	eafffea4 	b	42f0 <_dtoa_r+0x808>
    485c:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    4860:	e35c0000 	cmp	ip, #0
    4864:	1a0000ef 	bne	4c28 <_dtoa_r+0x1140>
    4868:	e3a04000 	mov	r4, #0
    486c:	e59d5034 	ldr	r5, [sp, #52]	; 0x34
    4870:	e59d8028 	ldr	r8, [sp, #40]	; 0x28
    4874:	e59db020 	ldr	fp, [sp, #32]
    4878:	ea000005 	b	4894 <_dtoa_r+0xdac>
    487c:	e1a01005 	mov	r1, r5
    4880:	e1a00006 	mov	r0, r6
    4884:	e3a0200a 	mov	r2, #10
    4888:	e3a03000 	mov	r3, #0
    488c:	eb0007ab 	bl	6740 <__multadd>
    4890:	e1a05000 	mov	r5, r0
    4894:	e1a01007 	mov	r1, r7
    4898:	e1a00005 	mov	r0, r5
    489c:	ebfffc1c 	bl	3914 <quorem>
    48a0:	e2800030 	add	r0, r0, #48	; 0x30
    48a4:	e7cb0004 	strb	r0, [fp, r4]
    48a8:	e2844001 	add	r4, r4, #1
    48ac:	e1540008 	cmp	r4, r8
    48b0:	bafffff1 	blt	487c <_dtoa_r+0xd94>
    48b4:	e59dc020 	ldr	ip, [sp, #32]
    48b8:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    48bc:	e58d5034 	str	r5, [sp, #52]	; 0x34
    48c0:	e1a03000 	mov	r3, r0
    48c4:	e3540001 	cmp	r4, #1
    48c8:	a08cc004 	addge	ip, ip, r4
    48cc:	b28cc001 	addlt	ip, ip, #1
    48d0:	e3a05000 	mov	r5, #0
    48d4:	e3a02001 	mov	r2, #1
    48d8:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    48dc:	e1a00006 	mov	r0, r6
    48e0:	e58d3008 	str	r3, [sp, #8]
    48e4:	e58dc004 	str	ip, [sp, #4]
    48e8:	eb0008fa 	bl	6cd8 <__lshift>
    48ec:	e1a01007 	mov	r1, r7
    48f0:	e58d0034 	str	r0, [sp, #52]	; 0x34
    48f4:	eb000937 	bl	6dd8 <__mcmp>
    48f8:	e3500000 	cmp	r0, #0
    48fc:	e59d3008 	ldr	r3, [sp, #8]
    4900:	e59dc004 	ldr	ip, [sp, #4]
    4904:	da0001bd 	ble	5000 <_dtoa_r+0x1518>
    4908:	e59d4020 	ldr	r4, [sp, #32]
    490c:	e2844001 	add	r4, r4, #1
    4910:	e55c3001 	ldrb	r3, [ip, #-1]
    4914:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    4918:	e1a0b00c 	mov	fp, ip
    491c:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
    4920:	ea000001 	b	492c <_dtoa_r+0xe44>
    4924:	e55b3002 	ldrb	r3, [fp, #-2]
    4928:	e1a0b002 	mov	fp, r2
    492c:	e3530039 	cmp	r3, #57	; 0x39
    4930:	e24b2001 	sub	r2, fp, #1
    4934:	1a0001cd 	bne	5070 <_dtoa_r+0x1588>
    4938:	e15b0001 	cmp	fp, r1
    493c:	1afffff8 	bne	4924 <_dtoa_r+0xe3c>
    4940:	e3a03031 	mov	r3, #49	; 0x31
    4944:	e59d4020 	ldr	r4, [sp, #32]
    4948:	e2899001 	add	r9, r9, #1
    494c:	e5c23000 	strb	r3, [r2]
    4950:	e58db020 	str	fp, [sp, #32]
    4954:	eafffe65 	b	42f0 <_dtoa_r+0x808>
    4958:	e3a0301c 	mov	r3, #28
    495c:	eafffe2c 	b	4214 <_dtoa_r+0x72c>
    4960:	e28d300c 	add	r3, sp, #12
    4964:	e893000c 	ldm	r3, {r2, r3}
    4968:	e3a08002 	mov	r8, #2
    496c:	e58d202c 	str	r2, [sp, #44]	; 0x2c
    4970:	e58d3030 	str	r3, [sp, #48]	; 0x30
    4974:	eafffedd 	b	44f0 <_dtoa_r+0xa08>
    4978:	e1a00006 	mov	r0, r6
    497c:	e1a01005 	mov	r1, r5
    4980:	eb000767 	bl	6724 <_Bfree>
    4984:	eafffe61 	b	4310 <_dtoa_r+0x828>
    4988:	e2694000 	rsb	r4, r9, #0
    498c:	e3540000 	cmp	r4, #0
    4990:	0a000129 	beq	4e3c <_dtoa_r+0x1354>
    4994:	e51f3900 	ldr	r3, [pc, #-2304]	; 409c <_dtoa_r+0x5b4>
    4998:	e204200f 	and	r2, r4, #15
    499c:	e0833182 	add	r3, r3, r2, lsl #3
    49a0:	e28d100c 	add	r1, sp, #12
    49a4:	e8910003 	ldm	r1, {r0, r1}
    49a8:	e893000c 	ldm	r3, {r2, r3}
    49ac:	eb00161f 	bl	a230 <__aeabi_dmul>
    49b0:	e1b04244 	asrs	r4, r4, #4
    49b4:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    49b8:	e58d1030 	str	r1, [sp, #48]	; 0x30
    49bc:	0a0001d8 	beq	5124 <_dtoa_r+0x163c>
    49c0:	e51f5930 	ldr	r5, [pc, #-2352]	; 4098 <_dtoa_r+0x5b0>
    49c4:	e3a08002 	mov	r8, #2
    49c8:	e3140001 	tst	r4, #1
    49cc:	0a000002 	beq	49dc <_dtoa_r+0xef4>
    49d0:	e895000c 	ldm	r5, {r2, r3}
    49d4:	eb001615 	bl	a230 <__aeabi_dmul>
    49d8:	e2888001 	add	r8, r8, #1
    49dc:	e1b040c4 	asrs	r4, r4, #1
    49e0:	e2855008 	add	r5, r5, #8
    49e4:	1afffff7 	bne	49c8 <_dtoa_r+0xee0>
    49e8:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    49ec:	e58d1030 	str	r1, [sp, #48]	; 0x30
    49f0:	eafffed4 	b	4548 <_dtoa_r+0xa60>
    49f4:	e3a07000 	mov	r7, #0
    49f8:	e1a0a007 	mov	sl, r7
    49fc:	eafffe34 	b	42d4 <_dtoa_r+0x7ec>
    4a00:	e51f196c 	ldr	r1, [pc, #-2412]	; 409c <_dtoa_r+0x5b4>
    4a04:	e24ac001 	sub	ip, sl, #1
    4a08:	e081118c 	add	r1, r1, ip, lsl #3
    4a0c:	e1a02004 	mov	r2, r4
    4a10:	e1a03005 	mov	r3, r5
    4a14:	e8910003 	ldm	r1, {r0, r1}
    4a18:	e58dc050 	str	ip, [sp, #80]	; 0x50
    4a1c:	eb001603 	bl	a230 <__aeabi_dmul>
    4a20:	e58d0058 	str	r0, [sp, #88]	; 0x58
    4a24:	e58d105c 	str	r1, [sp, #92]	; 0x5c
    4a28:	e28d102c 	add	r1, sp, #44	; 0x2c
    4a2c:	e8910003 	ldm	r1, {r0, r1}
    4a30:	eb001765 	bl	a7cc <__aeabi_d2iz>
    4a34:	e1a07000 	mov	r7, r0
    4a38:	eb0015c1 	bl	a144 <__aeabi_i2d>
    4a3c:	e1a02000 	mov	r2, r0
    4a40:	e1a03001 	mov	r3, r1
    4a44:	e28d102c 	add	r1, sp, #44	; 0x2c
    4a48:	e8910003 	ldm	r1, {r0, r1}
    4a4c:	eb0014f9 	bl	9e38 <__aeabi_dsub>
    4a50:	e59dc020 	ldr	ip, [sp, #32]
    4a54:	e2877030 	add	r7, r7, #48	; 0x30
    4a58:	e4cc7001 	strb	r7, [ip], #1
    4a5c:	e35a0001 	cmp	sl, #1
    4a60:	e1a04000 	mov	r4, r0
    4a64:	e1a05001 	mov	r5, r1
    4a68:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    4a6c:	0a000019 	beq	4ad8 <_dtoa_r+0xff0>
    4a70:	e59dc020 	ldr	ip, [sp, #32]
    4a74:	e24c3001 	sub	r3, ip, #1
    4a78:	e1a0700c 	mov	r7, ip
    4a7c:	e083a00a 	add	sl, r3, sl
    4a80:	e51f29e0 	ldr	r2, [pc, #-2528]	; 40a8 <_dtoa_r+0x5c0>
    4a84:	e3a03000 	mov	r3, #0
    4a88:	eb0015e8 	bl	a230 <__aeabi_dmul>
    4a8c:	e1a05001 	mov	r5, r1
    4a90:	e1a04000 	mov	r4, r0
    4a94:	eb00174c 	bl	a7cc <__aeabi_d2iz>
    4a98:	e1a08000 	mov	r8, r0
    4a9c:	eb0015a8 	bl	a144 <__aeabi_i2d>
    4aa0:	e2888030 	add	r8, r8, #48	; 0x30
    4aa4:	e1a02000 	mov	r2, r0
    4aa8:	e1a03001 	mov	r3, r1
    4aac:	e1a00004 	mov	r0, r4
    4ab0:	e1a01005 	mov	r1, r5
    4ab4:	eb0014df 	bl	9e38 <__aeabi_dsub>
    4ab8:	e5e78001 	strb	r8, [r7, #1]!
    4abc:	e157000a 	cmp	r7, sl
    4ac0:	1affffee 	bne	4a80 <_dtoa_r+0xf98>
    4ac4:	e1a05001 	mov	r5, r1
    4ac8:	e59d2050 	ldr	r2, [sp, #80]	; 0x50
    4acc:	e59d102c 	ldr	r1, [sp, #44]	; 0x2c
    4ad0:	e1a04000 	mov	r4, r0
    4ad4:	e081c002 	add	ip, r1, r2
    4ad8:	e51f2a30 	ldr	r2, [pc, #-2608]	; 40b0 <_dtoa_r+0x5c8>
    4adc:	e3a03000 	mov	r3, #0
    4ae0:	e28d1058 	add	r1, sp, #88	; 0x58
    4ae4:	e8910003 	ldm	r1, {r0, r1}
    4ae8:	e58dc004 	str	ip, [sp, #4]
    4aec:	eb0014d2 	bl	9e3c <__adddf3>
    4af0:	e1a02004 	mov	r2, r4
    4af4:	e1a03005 	mov	r3, r5
    4af8:	eb0016ea 	bl	a6a8 <__ledf2>
    4afc:	e3500000 	cmp	r0, #0
    4b00:	e59dc004 	ldr	ip, [sp, #4]
    4b04:	aa0000f4 	bge	4edc <_dtoa_r+0x13f4>
    4b08:	e55c8001 	ldrb	r8, [ip, #-1]
    4b0c:	e59d4020 	ldr	r4, [sp, #32]
    4b10:	eafffd4f 	b	4054 <_dtoa_r+0x56c>
    4b14:	e5973010 	ldr	r3, [r7, #16]
    4b18:	e2833004 	add	r3, r3, #4
    4b1c:	e7970103 	ldr	r0, [r7, r3, lsl #2]
    4b20:	eb000777 	bl	6904 <__hi0bits>
    4b24:	e2600020 	rsb	r0, r0, #32
    4b28:	eafffdb1 	b	41f4 <_dtoa_r+0x70c>
    4b2c:	e59d0034 	ldr	r0, [sp, #52]	; 0x34
    4b30:	e1a01007 	mov	r1, r7
    4b34:	eb0008a7 	bl	6dd8 <__mcmp>
    4b38:	e3500000 	cmp	r0, #0
    4b3c:	aafffdce 	bge	427c <_dtoa_r+0x794>
    4b40:	e1a00006 	mov	r0, r6
    4b44:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    4b48:	e3a0200a 	mov	r2, #10
    4b4c:	e3a03000 	mov	r3, #0
    4b50:	eb0006fa 	bl	6740 <__multadd>
    4b54:	e59dc03c 	ldr	ip, [sp, #60]	; 0x3c
    4b58:	e35c0000 	cmp	ip, #0
    4b5c:	e58d0034 	str	r0, [sp, #52]	; 0x34
    4b60:	e2499001 	sub	r9, r9, #1
    4b64:	1a000174 	bne	513c <_dtoa_r+0x1654>
    4b68:	e59d4040 	ldr	r4, [sp, #64]	; 0x40
    4b6c:	e3540000 	cmp	r4, #0
    4b70:	c3a03000 	movgt	r3, #0
    4b74:	d3a03001 	movle	r3, #1
    4b78:	e35b0002 	cmp	fp, #2
    4b7c:	d3a03000 	movle	r3, #0
    4b80:	e3530000 	cmp	r3, #0
    4b84:	058d4028 	streq	r4, [sp, #40]	; 0x28
    4b88:	0affff36 	beq	4868 <_dtoa_r+0xd80>
    4b8c:	e59dc040 	ldr	ip, [sp, #64]	; 0x40
    4b90:	e58dc028 	str	ip, [sp, #40]	; 0x28
    4b94:	eafffdc0 	b	429c <_dtoa_r+0x7b4>
    4b98:	e59d4028 	ldr	r4, [sp, #40]	; 0x28
    4b9c:	e3540000 	cmp	r4, #0
    4ba0:	1affff26 	bne	4840 <_dtoa_r+0xd58>
    4ba4:	e51f2b0c 	ldr	r2, [pc, #-2828]	; 40a0 <_dtoa_r+0x5b8>
    4ba8:	e3a03000 	mov	r3, #0
    4bac:	e28d1018 	add	r1, sp, #24
    4bb0:	e8910003 	ldm	r1, {r0, r1}
    4bb4:	eb00159d 	bl	a230 <__aeabi_dmul>
    4bb8:	e28d300c 	add	r3, sp, #12
    4bbc:	e893000c 	ldm	r3, {r2, r3}
    4bc0:	eb0016b6 	bl	a6a0 <__gedf2>
    4bc4:	e59d7028 	ldr	r7, [sp, #40]	; 0x28
    4bc8:	e3500000 	cmp	r0, #0
    4bcc:	e1a0a007 	mov	sl, r7
    4bd0:	aaffff1c 	bge	4848 <_dtoa_r+0xd60>
    4bd4:	eafffdbe 	b	42d4 <_dtoa_r+0x7ec>
    4bd8:	e59d1010 	ldr	r1, [sp, #16]
    4bdc:	e3510000 	cmp	r1, #0
    4be0:	1afffd7e 	bne	41e0 <_dtoa_r+0x6f8>
    4be4:	e59d300c 	ldr	r3, [sp, #12]
    4be8:	e3c324ff 	bic	r2, r3, #-16777216	; 0xff000000
    4bec:	e3c2260f 	bic	r2, r2, #15728640	; 0xf00000
    4bf0:	e3520000 	cmp	r2, #0
    4bf4:	1a000122 	bne	5084 <_dtoa_r+0x159c>
    4bf8:	e51f5b5c 	ldr	r5, [pc, #-2908]	; 40a4 <_dtoa_r+0x5bc>
    4bfc:	e0035005 	and	r5, r3, r5
    4c00:	e3550000 	cmp	r5, #0
    4c04:	0afffd76 	beq	41e4 <_dtoa_r+0x6fc>
    4c08:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    4c0c:	e28cc001 	add	ip, ip, #1
    4c10:	e58dc024 	str	ip, [sp, #36]	; 0x24
    4c14:	e59dc018 	ldr	ip, [sp, #24]
    4c18:	e28cc001 	add	ip, ip, #1
    4c1c:	e58dc018 	str	ip, [sp, #24]
    4c20:	e3a05001 	mov	r5, #1
    4c24:	eafffd6e 	b	41e4 <_dtoa_r+0x6fc>
    4c28:	e3540000 	cmp	r4, #0
    4c2c:	da000004 	ble	4c44 <_dtoa_r+0x115c>
    4c30:	e1a0100a 	mov	r1, sl
    4c34:	e1a00006 	mov	r0, r6
    4c38:	e1a02004 	mov	r2, r4
    4c3c:	eb000825 	bl	6cd8 <__lshift>
    4c40:	e1a0a000 	mov	sl, r0
    4c44:	e3550000 	cmp	r5, #0
    4c48:	01a0800a 	moveq	r8, sl
    4c4c:	1a0000f7 	bne	5030 <_dtoa_r+0x1548>
    4c50:	e59d1028 	ldr	r1, [sp, #40]	; 0x28
    4c54:	e59dc020 	ldr	ip, [sp, #32]
    4c58:	e08cc001 	add	ip, ip, r1
    4c5c:	e59d4020 	ldr	r4, [sp, #32]
    4c60:	e58dc028 	str	ip, [sp, #40]	; 0x28
    4c64:	e59dc010 	ldr	ip, [sp, #16]
    4c68:	e2844001 	add	r4, r4, #1
    4c6c:	e20cc001 	and	ip, ip, #1
    4c70:	e58d9038 	str	r9, [sp, #56]	; 0x38
    4c74:	e58d402c 	str	r4, [sp, #44]	; 0x2c
    4c78:	e1a09007 	mov	r9, r7
    4c7c:	e1a0500a 	mov	r5, sl
    4c80:	e58dc018 	str	ip, [sp, #24]
    4c84:	e59d7034 	ldr	r7, [sp, #52]	; 0x34
    4c88:	ea00002d 	b	4d44 <_dtoa_r+0x125c>
    4c8c:	e1a01003 	mov	r1, r3
    4c90:	e1a00006 	mov	r0, r6
    4c94:	e58d2008 	str	r2, [sp, #8]
    4c98:	eb0006a1 	bl	6724 <_Bfree>
    4c9c:	e59d2008 	ldr	r2, [sp, #8]
    4ca0:	e192300b 	orrs	r3, r2, fp
    4ca4:	1a000002 	bne	4cb4 <_dtoa_r+0x11cc>
    4ca8:	e59dc018 	ldr	ip, [sp, #24]
    4cac:	e35c0000 	cmp	ip, #0
    4cb0:	0a00010d 	beq	50ec <_dtoa_r+0x1604>
    4cb4:	e35a0000 	cmp	sl, #0
    4cb8:	ba0000ab 	blt	4f6c <_dtoa_r+0x1484>
    4cbc:	e19aa00b 	orrs	sl, sl, fp
    4cc0:	1a000002 	bne	4cd0 <_dtoa_r+0x11e8>
    4cc4:	e59dc018 	ldr	ip, [sp, #24]
    4cc8:	e35c0000 	cmp	ip, #0
    4ccc:	0a0000a6 	beq	4f6c <_dtoa_r+0x1484>
    4cd0:	e3520000 	cmp	r2, #0
    4cd4:	ca0000ec 	bgt	508c <_dtoa_r+0x15a4>
    4cd8:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    4cdc:	e59d2014 	ldr	r2, [sp, #20]
    4ce0:	e154000c 	cmp	r4, ip
    4ce4:	e5442001 	strb	r2, [r4, #-1]
    4ce8:	e1a0c004 	mov	ip, r4
    4cec:	0a0000f3 	beq	50c0 <_dtoa_r+0x15d8>
    4cf0:	e1a01007 	mov	r1, r7
    4cf4:	e1a00006 	mov	r0, r6
    4cf8:	e3a0200a 	mov	r2, #10
    4cfc:	e3a03000 	mov	r3, #0
    4d00:	eb00068e 	bl	6740 <__multadd>
    4d04:	e1550008 	cmp	r5, r8
    4d08:	e1a07000 	mov	r7, r0
    4d0c:	0a000029 	beq	4db8 <_dtoa_r+0x12d0>
    4d10:	e1a01005 	mov	r1, r5
    4d14:	e3a0200a 	mov	r2, #10
    4d18:	e3a03000 	mov	r3, #0
    4d1c:	e1a00006 	mov	r0, r6
    4d20:	eb000686 	bl	6740 <__multadd>
    4d24:	e1a01008 	mov	r1, r8
    4d28:	e1a05000 	mov	r5, r0
    4d2c:	e3a0200a 	mov	r2, #10
    4d30:	e1a00006 	mov	r0, r6
    4d34:	e3a03000 	mov	r3, #0
    4d38:	eb000680 	bl	6740 <__multadd>
    4d3c:	e1a08000 	mov	r8, r0
    4d40:	e2844001 	add	r4, r4, #1
    4d44:	e1a01009 	mov	r1, r9
    4d48:	e1a00007 	mov	r0, r7
    4d4c:	ebfffaf0 	bl	3914 <quorem>
    4d50:	e1a01005 	mov	r1, r5
    4d54:	e58d000c 	str	r0, [sp, #12]
    4d58:	e1a00007 	mov	r0, r7
    4d5c:	eb00081d 	bl	6dd8 <__mcmp>
    4d60:	e1a02008 	mov	r2, r8
    4d64:	e1a0a000 	mov	sl, r0
    4d68:	e1a01009 	mov	r1, r9
    4d6c:	e1a00006 	mov	r0, r6
    4d70:	eb00082f 	bl	6e34 <__mdiff>
    4d74:	e590200c 	ldr	r2, [r0, #12]
    4d78:	e3520000 	cmp	r2, #0
    4d7c:	e59d200c 	ldr	r2, [sp, #12]
    4d80:	e244c001 	sub	ip, r4, #1
    4d84:	e2822030 	add	r2, r2, #48	; 0x30
    4d88:	e58d2014 	str	r2, [sp, #20]
    4d8c:	e1a03000 	mov	r3, r0
    4d90:	e58dc024 	str	ip, [sp, #36]	; 0x24
    4d94:	13a02001 	movne	r2, #1
    4d98:	1affffbb 	bne	4c8c <_dtoa_r+0x11a4>
    4d9c:	e1a01003 	mov	r1, r3
    4da0:	e1a00007 	mov	r0, r7
    4da4:	e58d3008 	str	r3, [sp, #8]
    4da8:	eb00080a 	bl	6dd8 <__mcmp>
    4dac:	e59d3008 	ldr	r3, [sp, #8]
    4db0:	e1a02000 	mov	r2, r0
    4db4:	eaffffb4 	b	4c8c <_dtoa_r+0x11a4>
    4db8:	e1a01005 	mov	r1, r5
    4dbc:	e1a00006 	mov	r0, r6
    4dc0:	e3a0200a 	mov	r2, #10
    4dc4:	e3a03000 	mov	r3, #0
    4dc8:	eb00065c 	bl	6740 <__multadd>
    4dcc:	e1a05000 	mov	r5, r0
    4dd0:	e1a08000 	mov	r8, r0
    4dd4:	eaffffd9 	b	4d40 <_dtoa_r+0x1258>
    4dd8:	e3a03001 	mov	r3, #1
    4ddc:	e58d3040 	str	r3, [sp, #64]	; 0x40
    4de0:	e58d3028 	str	r3, [sp, #40]	; 0x28
    4de4:	e58d3094 	str	r3, [sp, #148]	; 0x94
    4de8:	e3a01000 	mov	r1, #0
    4dec:	e5861044 	str	r1, [r6, #68]	; 0x44
    4df0:	e0034004 	and	r4, r3, r4
    4df4:	eafffda4 	b	448c <_dtoa_r+0x9a4>
    4df8:	e358000e 	cmp	r8, #14
    4dfc:	83a03000 	movhi	r3, #0
    4e00:	93a03001 	movls	r3, #1
    4e04:	e58d8028 	str	r8, [sp, #40]	; 0x28
    4e08:	eafffff6 	b	4de8 <_dtoa_r+0x1300>
    4e0c:	e28d1034 	add	r1, sp, #52	; 0x34
    4e10:	e1a00006 	mov	r0, r6
    4e14:	e8910006 	ldm	r1, {r1, r2}
    4e18:	eb000772 	bl	6be8 <__pow5mult>
    4e1c:	e58d0034 	str	r0, [sp, #52]	; 0x34
    4e20:	eafffce0 	b	41a8 <_dtoa_r+0x6c0>
    4e24:	e1a0c006 	mov	ip, r6
    4e28:	e59d6014 	ldr	r6, [sp, #20]
    4e2c:	e1a0900b 	mov	r9, fp
    4e30:	e59d4020 	ldr	r4, [sp, #32]
    4e34:	e58dc020 	str	ip, [sp, #32]
    4e38:	eafffd37 	b	431c <_dtoa_r+0x834>
    4e3c:	e28d400c 	add	r4, sp, #12
    4e40:	e8940018 	ldm	r4, {r3, r4}
    4e44:	e3a08002 	mov	r8, #2
    4e48:	e58d302c 	str	r3, [sp, #44]	; 0x2c
    4e4c:	e58d4030 	str	r4, [sp, #48]	; 0x30
    4e50:	eafffdbc 	b	4548 <_dtoa_r+0xa60>
    4e54:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    4e58:	e35c0000 	cmp	ip, #0
    4e5c:	0afffe5a 	beq	47cc <_dtoa_r+0xce4>
    4e60:	e59d4040 	ldr	r4, [sp, #64]	; 0x40
    4e64:	e3540000 	cmp	r4, #0
    4e68:	dafffbf3 	ble	3e3c <_dtoa_r+0x354>
    4e6c:	e51f2dcc 	ldr	r2, [pc, #-3532]	; 40a8 <_dtoa_r+0x5c0>
    4e70:	e3a03000 	mov	r3, #0
    4e74:	e28d102c 	add	r1, sp, #44	; 0x2c
    4e78:	e8910003 	ldm	r1, {r0, r1}
    4e7c:	eb0014eb 	bl	a230 <__aeabi_dmul>
    4e80:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    4e84:	e58d1030 	str	r1, [sp, #48]	; 0x30
    4e88:	e2880001 	add	r0, r8, #1
    4e8c:	eb0014ac 	bl	a144 <__aeabi_i2d>
    4e90:	e1a02000 	mov	r2, r0
    4e94:	e1a03001 	mov	r3, r1
    4e98:	e28d102c 	add	r1, sp, #44	; 0x2c
    4e9c:	e8910003 	ldm	r1, {r0, r1}
    4ea0:	eb0014e2 	bl	a230 <__aeabi_dmul>
    4ea4:	e51f2e00 	ldr	r2, [pc, #-3584]	; 40ac <_dtoa_r+0x5c4>
    4ea8:	e3a03000 	mov	r3, #0
    4eac:	eb0013e2 	bl	9e3c <__adddf3>
    4eb0:	e249c001 	sub	ip, r9, #1
    4eb4:	e1a05001 	mov	r5, r1
    4eb8:	e58dc060 	str	ip, [sp, #96]	; 0x60
    4ebc:	e240450d 	sub	r4, r0, #54525952	; 0x3400000
    4ec0:	e59da040 	ldr	sl, [sp, #64]	; 0x40
    4ec4:	eafffdb8 	b	45ac <_dtoa_r+0xac4>
    4ec8:	e1a00006 	mov	r0, r6
    4ecc:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    4ed0:	eb000744 	bl	6be8 <__pow5mult>
    4ed4:	e58d0034 	str	r0, [sp, #52]	; 0x34
    4ed8:	eafffcb2 	b	41a8 <_dtoa_r+0x6c0>
    4edc:	e28d3058 	add	r3, sp, #88	; 0x58
    4ee0:	e893000c 	ldm	r3, {r2, r3}
    4ee4:	e51f0e3c 	ldr	r0, [pc, #-3644]	; 40b0 <_dtoa_r+0x5c8>
    4ee8:	e3a01000 	mov	r1, #0
    4eec:	e58dc004 	str	ip, [sp, #4]
    4ef0:	eb0013d0 	bl	9e38 <__aeabi_dsub>
    4ef4:	e1a02004 	mov	r2, r4
    4ef8:	e1a03005 	mov	r3, r5
    4efc:	eb0015e7 	bl	a6a0 <__gedf2>
    4f00:	e3500000 	cmp	r0, #0
    4f04:	e59dc004 	ldr	ip, [sp, #4]
    4f08:	dafffbcb 	ble	3e3c <_dtoa_r+0x354>
    4f0c:	e1a0900c 	mov	r9, ip
    4f10:	e5592001 	ldrb	r2, [r9, #-1]
    4f14:	e3520030 	cmp	r2, #48	; 0x30
    4f18:	e1a03009 	mov	r3, r9
    4f1c:	e2499001 	sub	r9, r9, #1
    4f20:	0afffffa 	beq	4f10 <_dtoa_r+0x1428>
    4f24:	e59d4020 	ldr	r4, [sp, #32]
    4f28:	e59d9060 	ldr	r9, [sp, #96]	; 0x60
    4f2c:	e58d3020 	str	r3, [sp, #32]
    4f30:	eafffcf9 	b	431c <_dtoa_r+0x834>
    4f34:	e59dc04c 	ldr	ip, [sp, #76]	; 0x4c
    4f38:	e35c0000 	cmp	ip, #0
    4f3c:	059d3068 	ldreq	r3, [sp, #104]	; 0x68
    4f40:	12833e43 	addne	r3, r3, #1072	; 0x430
    4f44:	12833003 	addne	r3, r3, #3
    4f48:	159d5038 	ldrne	r5, [sp, #56]	; 0x38
    4f4c:	059d5038 	ldreq	r5, [sp, #56]	; 0x38
    4f50:	02633036 	rsbeq	r3, r3, #54	; 0x36
    4f54:	e59d4024 	ldr	r4, [sp, #36]	; 0x24
    4f58:	eafffd28 	b	4400 <_dtoa_r+0x918>
    4f5c:	e59d6058 	ldr	r6, [sp, #88]	; 0x58
    4f60:	e1a0c00b 	mov	ip, fp
    4f64:	e59d4020 	ldr	r4, [sp, #32]
    4f68:	eafffc39 	b	4054 <_dtoa_r+0x56c>
    4f6c:	e59d3014 	ldr	r3, [sp, #20]
    4f70:	e3520000 	cmp	r2, #0
    4f74:	e58d7034 	str	r7, [sp, #52]	; 0x34
    4f78:	e1a04003 	mov	r4, r3
    4f7c:	e1a07009 	mov	r7, r9
    4f80:	e59d9038 	ldr	r9, [sp, #56]	; 0x38
    4f84:	da00000e 	ble	4fc4 <_dtoa_r+0x14dc>
    4f88:	e3a02001 	mov	r2, #1
    4f8c:	e59d1034 	ldr	r1, [sp, #52]	; 0x34
    4f90:	e1a00006 	mov	r0, r6
    4f94:	e58d3008 	str	r3, [sp, #8]
    4f98:	eb00074e 	bl	6cd8 <__lshift>
    4f9c:	e1a01007 	mov	r1, r7
    4fa0:	e58d0034 	str	r0, [sp, #52]	; 0x34
    4fa4:	eb00078b 	bl	6dd8 <__mcmp>
    4fa8:	e3500000 	cmp	r0, #0
    4fac:	e59d3008 	ldr	r3, [sp, #8]
    4fb0:	da000057 	ble	5114 <_dtoa_r+0x162c>
    4fb4:	e3540039 	cmp	r4, #57	; 0x39
    4fb8:	e59d400c 	ldr	r4, [sp, #12]
    4fbc:	e2843031 	add	r3, r4, #49	; 0x31
    4fc0:	0a000044 	beq	50d8 <_dtoa_r+0x15f0>
    4fc4:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    4fc8:	e4cb3001 	strb	r3, [fp], #1
    4fcc:	e59d4020 	ldr	r4, [sp, #32]
    4fd0:	e1a0a008 	mov	sl, r8
    4fd4:	e58db020 	str	fp, [sp, #32]
    4fd8:	eafffcc4 	b	42f0 <_dtoa_r+0x808>
    4fdc:	e59d9064 	ldr	r9, [sp, #100]	; 0x64
    4fe0:	e59d6058 	ldr	r6, [sp, #88]	; 0x58
    4fe4:	e59db050 	ldr	fp, [sp, #80]	; 0x50
    4fe8:	eafffb93 	b	3e3c <_dtoa_r+0x354>
    4fec:	e2882001 	add	r2, r8, #1
    4ff0:	e58d9020 	str	r9, [sp, #32]
    4ff4:	e20220ff 	and	r2, r2, #255	; 0xff
    4ff8:	e59d9060 	ldr	r9, [sp, #96]	; 0x60
    4ffc:	eafffc3a 	b	40ec <_dtoa_r+0x604>
    5000:	1a000001 	bne	500c <_dtoa_r+0x1524>
    5004:	e3130001 	tst	r3, #1
    5008:	1afffe3e 	bne	4908 <_dtoa_r+0xe20>
    500c:	e1a0b00c 	mov	fp, ip
    5010:	e55b2001 	ldrb	r2, [fp, #-1]
    5014:	e3520030 	cmp	r2, #48	; 0x30
    5018:	e1a0300b 	mov	r3, fp
    501c:	e24bb001 	sub	fp, fp, #1
    5020:	0afffffa 	beq	5010 <_dtoa_r+0x1528>
    5024:	e59d4020 	ldr	r4, [sp, #32]
    5028:	e58d3020 	str	r3, [sp, #32]
    502c:	eafffcaf 	b	42f0 <_dtoa_r+0x808>
    5030:	e59a1004 	ldr	r1, [sl, #4]
    5034:	e1a00006 	mov	r0, r6
    5038:	eb000597 	bl	669c <_Balloc>
    503c:	e59a2010 	ldr	r2, [sl, #16]
    5040:	e2822002 	add	r2, r2, #2
    5044:	e1a04000 	mov	r4, r0
    5048:	e1a02102 	lsl	r2, r2, #2
    504c:	e28a100c 	add	r1, sl, #12
    5050:	e280000c 	add	r0, r0, #12
    5054:	eb000551 	bl	65a0 <memcpy>
    5058:	e1a00006 	mov	r0, r6
    505c:	e1a01004 	mov	r1, r4
    5060:	e3a02001 	mov	r2, #1
    5064:	eb00071b 	bl	6cd8 <__lshift>
    5068:	e1a08000 	mov	r8, r0
    506c:	eafffef7 	b	4c50 <_dtoa_r+0x1168>
    5070:	e2833001 	add	r3, r3, #1
    5074:	e59d4020 	ldr	r4, [sp, #32]
    5078:	e5c23000 	strb	r3, [r2]
    507c:	e58db020 	str	fp, [sp, #32]
    5080:	eafffc9a 	b	42f0 <_dtoa_r+0x808>
    5084:	e59d5010 	ldr	r5, [sp, #16]
    5088:	eafffc55 	b	41e4 <_dtoa_r+0x6fc>
    508c:	e59d3014 	ldr	r3, [sp, #20]
    5090:	e3530039 	cmp	r3, #57	; 0x39
    5094:	e58d7034 	str	r7, [sp, #52]	; 0x34
    5098:	e1a07009 	mov	r7, r9
    509c:	e59d9038 	ldr	r9, [sp, #56]	; 0x38
    50a0:	0a00000c 	beq	50d8 <_dtoa_r+0x15f0>
    50a4:	e59db024 	ldr	fp, [sp, #36]	; 0x24
    50a8:	e2833001 	add	r3, r3, #1
    50ac:	e4cb3001 	strb	r3, [fp], #1
    50b0:	e59d4020 	ldr	r4, [sp, #32]
    50b4:	e1a0a008 	mov	sl, r8
    50b8:	e58db020 	str	fp, [sp, #32]
    50bc:	eafffc8b 	b	42f0 <_dtoa_r+0x808>
    50c0:	e58d7034 	str	r7, [sp, #52]	; 0x34
    50c4:	e59d3014 	ldr	r3, [sp, #20]
    50c8:	e1a07009 	mov	r7, r9
    50cc:	e1a0a008 	mov	sl, r8
    50d0:	e59d9038 	ldr	r9, [sp, #56]	; 0x38
    50d4:	eafffdfe 	b	48d4 <_dtoa_r+0xdec>
    50d8:	e59dc024 	ldr	ip, [sp, #36]	; 0x24
    50dc:	e3a03039 	mov	r3, #57	; 0x39
    50e0:	e4cc3001 	strb	r3, [ip], #1
    50e4:	e1a0a008 	mov	sl, r8
    50e8:	eafffe0a 	b	4918 <_dtoa_r+0xe30>
    50ec:	e59d3014 	ldr	r3, [sp, #20]
    50f0:	e3530039 	cmp	r3, #57	; 0x39
    50f4:	e58d7034 	str	r7, [sp, #52]	; 0x34
    50f8:	e1a07009 	mov	r7, r9
    50fc:	e59d9038 	ldr	r9, [sp, #56]	; 0x38
    5100:	0afffff4 	beq	50d8 <_dtoa_r+0x15f0>
    5104:	e35a0000 	cmp	sl, #0
    5108:	c59d400c 	ldrgt	r4, [sp, #12]
    510c:	c2843031 	addgt	r3, r4, #49	; 0x31
    5110:	eaffffab 	b	4fc4 <_dtoa_r+0x14dc>
    5114:	1affffaa 	bne	4fc4 <_dtoa_r+0x14dc>
    5118:	e3130001 	tst	r3, #1
    511c:	0affffa8 	beq	4fc4 <_dtoa_r+0x14dc>
    5120:	eaffffa3 	b	4fb4 <_dtoa_r+0x14cc>
    5124:	e3a08002 	mov	r8, #2
    5128:	eafffd06 	b	4548 <_dtoa_r+0xa60>
    512c:	e59dc02c 	ldr	ip, [sp, #44]	; 0x2c
    5130:	e59d4020 	ldr	r4, [sp, #32]
    5134:	e58dc020 	str	ip, [sp, #32]
    5138:	eafffc77 	b	431c <_dtoa_r+0x834>
    513c:	e3a03000 	mov	r3, #0
    5140:	e1a0100a 	mov	r1, sl
    5144:	e1a00006 	mov	r0, r6
    5148:	e3a0200a 	mov	r2, #10
    514c:	eb00057b 	bl	6740 <__multadd>
    5150:	e59dc040 	ldr	ip, [sp, #64]	; 0x40
    5154:	e35c0000 	cmp	ip, #0
    5158:	c3a03000 	movgt	r3, #0
    515c:	d3a03001 	movle	r3, #1
    5160:	e35b0002 	cmp	fp, #2
    5164:	d3a03000 	movle	r3, #0
    5168:	e3530000 	cmp	r3, #0
    516c:	e1a0a000 	mov	sl, r0
    5170:	058dc028 	streq	ip, [sp, #40]	; 0x28
    5174:	0afffeab 	beq	4c28 <_dtoa_r+0x1140>
    5178:	e59d4040 	ldr	r4, [sp, #64]	; 0x40
    517c:	e58d4028 	str	r4, [sp, #40]	; 0x28
    5180:	eafffc45 	b	429c <_dtoa_r+0x7b4>
    5184:	e59dc02c 	ldr	ip, [sp, #44]	; 0x2c
    5188:	e59d4020 	ldr	r4, [sp, #32]
    518c:	e59d9060 	ldr	r9, [sp, #96]	; 0x60
    5190:	e58dc020 	str	ip, [sp, #32]
    5194:	eafffc60 	b	431c <_dtoa_r+0x834>
    5198:	1263303c 	rsbne	r3, r3, #60	; 0x3c
    519c:	0afffc23 	beq	4230 <_dtoa_r+0x748>
    51a0:	eafffc1b 	b	4214 <_dtoa_r+0x72c>

000051a4 <__sflush_r>:
    51a4:	e1d120bc 	ldrh	r2, [r1, #12]
    51a8:	e3120008 	tst	r2, #8
    51ac:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    51b0:	e1a05001 	mov	r5, r1
    51b4:	e1a07000 	mov	r7, r0
    51b8:	1a00002f 	bne	527c <__sflush_r+0xd8>
    51bc:	e5911004 	ldr	r1, [r1, #4]
    51c0:	e3823b02 	orr	r3, r2, #2048	; 0x800
    51c4:	e3510000 	cmp	r1, #0
    51c8:	e1c530bc 	strh	r3, [r5, #12]
    51cc:	da000048 	ble	52f4 <__sflush_r+0x150>
    51d0:	e595c028 	ldr	ip, [r5, #40]	; 0x28
    51d4:	e35c0000 	cmp	ip, #0
    51d8:	0a000048 	beq	5300 <__sflush_r+0x15c>
    51dc:	e3a01000 	mov	r1, #0
    51e0:	e2126a01 	ands	r6, r2, #4096	; 0x1000
    51e4:	e5974000 	ldr	r4, [r7]
    51e8:	e5871000 	str	r1, [r7]
    51ec:	0a000045 	beq	5308 <__sflush_r+0x164>
    51f0:	e5952050 	ldr	r2, [r5, #80]	; 0x50
    51f4:	e3130004 	tst	r3, #4
    51f8:	0a000005 	beq	5214 <__sflush_r+0x70>
    51fc:	e5951030 	ldr	r1, [r5, #48]	; 0x30
    5200:	e5953004 	ldr	r3, [r5, #4]
    5204:	e3510000 	cmp	r1, #0
    5208:	e0632002 	rsb	r2, r3, r2
    520c:	1595303c 	ldrne	r3, [r5, #60]	; 0x3c
    5210:	10632002 	rsbne	r2, r3, r2
    5214:	e1a00007 	mov	r0, r7
    5218:	e595101c 	ldr	r1, [r5, #28]
    521c:	e3a03000 	mov	r3, #0
    5220:	e1a0e00f 	mov	lr, pc
    5224:	e12fff1c 	bx	ip
    5228:	e3700001 	cmn	r0, #1
    522c:	0a000041 	beq	5338 <__sflush_r+0x194>
    5230:	e1d530bc 	ldrh	r3, [r5, #12]
    5234:	e5952010 	ldr	r2, [r5, #16]
    5238:	e3c31b02 	bic	r1, r3, #2048	; 0x800
    523c:	e3130a01 	tst	r3, #4096	; 0x1000
    5240:	e3a03000 	mov	r3, #0
    5244:	e1c510bc 	strh	r1, [r5, #12]
    5248:	e885000c 	stm	r5, {r2, r3}
    524c:	1a000043 	bne	5360 <__sflush_r+0x1bc>
    5250:	e5951030 	ldr	r1, [r5, #48]	; 0x30
    5254:	e3510000 	cmp	r1, #0
    5258:	e5874000 	str	r4, [r7]
    525c:	0a000027 	beq	5300 <__sflush_r+0x15c>
    5260:	e2853040 	add	r3, r5, #64	; 0x40
    5264:	e1510003 	cmp	r1, r3
    5268:	11a00007 	movne	r0, r7
    526c:	1b000157 	blne	57d0 <_free_r>
    5270:	e3a00000 	mov	r0, #0
    5274:	e5850030 	str	r0, [r5, #48]	; 0x30
    5278:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    527c:	e5916010 	ldr	r6, [r1, #16]
    5280:	e3560000 	cmp	r6, #0
    5284:	0a00001d 	beq	5300 <__sflush_r+0x15c>
    5288:	e5914000 	ldr	r4, [r1]
    528c:	e3120003 	tst	r2, #3
    5290:	05913014 	ldreq	r3, [r1, #20]
    5294:	e0664004 	rsb	r4, r6, r4
    5298:	13a03000 	movne	r3, #0
    529c:	e3540000 	cmp	r4, #0
    52a0:	e5816000 	str	r6, [r1]
    52a4:	e5813008 	str	r3, [r1, #8]
    52a8:	ca000003 	bgt	52bc <__sflush_r+0x118>
    52ac:	ea000013 	b	5300 <__sflush_r+0x15c>
    52b0:	e3540000 	cmp	r4, #0
    52b4:	e0866000 	add	r6, r6, r0
    52b8:	da000010 	ble	5300 <__sflush_r+0x15c>
    52bc:	e1a03004 	mov	r3, r4
    52c0:	e1a02006 	mov	r2, r6
    52c4:	e1a00007 	mov	r0, r7
    52c8:	e595101c 	ldr	r1, [r5, #28]
    52cc:	e1a0e00f 	mov	lr, pc
    52d0:	e595f024 	ldr	pc, [r5, #36]	; 0x24
    52d4:	e3500000 	cmp	r0, #0
    52d8:	e0604004 	rsb	r4, r0, r4
    52dc:	cafffff3 	bgt	52b0 <__sflush_r+0x10c>
    52e0:	e1d530bc 	ldrh	r3, [r5, #12]
    52e4:	e3833040 	orr	r3, r3, #64	; 0x40
    52e8:	e1c530bc 	strh	r3, [r5, #12]
    52ec:	e3e00000 	mvn	r0, #0
    52f0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    52f4:	e595103c 	ldr	r1, [r5, #60]	; 0x3c
    52f8:	e3510000 	cmp	r1, #0
    52fc:	caffffb3 	bgt	51d0 <__sflush_r+0x2c>
    5300:	e3a00000 	mov	r0, #0
    5304:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    5308:	e1a02006 	mov	r2, r6
    530c:	e1a00007 	mov	r0, r7
    5310:	e595101c 	ldr	r1, [r5, #28]
    5314:	e3a03001 	mov	r3, #1
    5318:	e1a0e00f 	mov	lr, pc
    531c:	e12fff1c 	bx	ip
    5320:	e3700001 	cmn	r0, #1
    5324:	e1a02000 	mov	r2, r0
    5328:	0a00001a 	beq	5398 <__sflush_r+0x1f4>
    532c:	e1d530bc 	ldrh	r3, [r5, #12]
    5330:	e595c028 	ldr	ip, [r5, #40]	; 0x28
    5334:	eaffffae 	b	51f4 <__sflush_r+0x50>
    5338:	e5973000 	ldr	r3, [r7]
    533c:	e3530000 	cmp	r3, #0
    5340:	1a000008 	bne	5368 <__sflush_r+0x1c4>
    5344:	e1d520bc 	ldrh	r2, [r5, #12]
    5348:	e5951010 	ldr	r1, [r5, #16]
    534c:	e3c2cb02 	bic	ip, r2, #2048	; 0x800
    5350:	e3120a01 	tst	r2, #4096	; 0x1000
    5354:	e1c5c0bc 	strh	ip, [r5, #12]
    5358:	e885000a 	stm	r5, {r1, r3}
    535c:	0affffbb 	beq	5250 <__sflush_r+0xac>
    5360:	e5850050 	str	r0, [r5, #80]	; 0x50
    5364:	eaffffb9 	b	5250 <__sflush_r+0xac>
    5368:	e353001d 	cmp	r3, #29
    536c:	0a000001 	beq	5378 <__sflush_r+0x1d4>
    5370:	e3530016 	cmp	r3, #22
    5374:	1a000010 	bne	53bc <__sflush_r+0x218>
    5378:	e1d520bc 	ldrh	r2, [r5, #12]
    537c:	e5953010 	ldr	r3, [r5, #16]
    5380:	e3c22b02 	bic	r2, r2, #2048	; 0x800
    5384:	e1c520bc 	strh	r2, [r5, #12]
    5388:	e3a02000 	mov	r2, #0
    538c:	e5852004 	str	r2, [r5, #4]
    5390:	e5853000 	str	r3, [r5]
    5394:	eaffffad 	b	5250 <__sflush_r+0xac>
    5398:	e5973000 	ldr	r3, [r7]
    539c:	e3530000 	cmp	r3, #0
    53a0:	0affffe1 	beq	532c <__sflush_r+0x188>
    53a4:	e353001d 	cmp	r3, #29
    53a8:	13530016 	cmpne	r3, #22
    53ac:	1affffcb 	bne	52e0 <__sflush_r+0x13c>
    53b0:	e5874000 	str	r4, [r7]
    53b4:	e1a00006 	mov	r0, r6
    53b8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    53bc:	e1d530bc 	ldrh	r3, [r5, #12]
    53c0:	e3833040 	orr	r3, r3, #64	; 0x40
    53c4:	e1c530bc 	strh	r3, [r5, #12]
    53c8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

000053cc <_fflush_r>:
    53cc:	e92d4010 	push	{r4, lr}
    53d0:	e2504000 	subs	r4, r0, #0
    53d4:	e24dd004 	sub	sp, sp, #4
    53d8:	0a000002 	beq	53e8 <_fflush_r+0x1c>
    53dc:	e5943038 	ldr	r3, [r4, #56]	; 0x38
    53e0:	e3530000 	cmp	r3, #0
    53e4:	0a000008 	beq	540c <_fflush_r+0x40>
    53e8:	e1d100fc 	ldrsh	r0, [r1, #12]
    53ec:	e3500000 	cmp	r0, #0
    53f0:	1a000001 	bne	53fc <_fflush_r+0x30>
    53f4:	e28dd004 	add	sp, sp, #4
    53f8:	e8bd8010 	pop	{r4, pc}
    53fc:	e1a00004 	mov	r0, r4
    5400:	e28dd004 	add	sp, sp, #4
    5404:	e8bd4010 	pop	{r4, lr}
    5408:	eaffff65 	b	51a4 <__sflush_r>
    540c:	e58d1000 	str	r1, [sp]
    5410:	eb000047 	bl	5534 <__sinit>
    5414:	e59d1000 	ldr	r1, [sp]
    5418:	eafffff2 	b	53e8 <_fflush_r+0x1c>

0000541c <fflush>:
    541c:	e2501000 	subs	r1, r0, #0
    5420:	0a000002 	beq	5430 <fflush+0x14>
    5424:	e59f3014 	ldr	r3, [pc, #20]	; 5440 <fflush+0x24>
    5428:	e5930000 	ldr	r0, [r3]
    542c:	eaffffe6 	b	53cc <_fflush_r>
    5430:	e59f300c 	ldr	r3, [pc, #12]	; 5444 <fflush+0x28>
    5434:	e59f100c 	ldr	r1, [pc, #12]	; 5448 <fflush+0x2c>
    5438:	e5930000 	ldr	r0, [r3]
    543c:	ea00019e 	b	5abc <_fwalk_reent>
    5440:	0000ac08 	.word	0x0000ac08
    5444:	0000a85c 	.word	0x0000a85c
    5448:	000053cc 	.word	0x000053cc

0000544c <__fp_lock>:
    544c:	e3a00000 	mov	r0, #0
    5450:	e12fff1e 	bx	lr

00005454 <__fp_unlock>:
    5454:	e3a00000 	mov	r0, #0
    5458:	e12fff1e 	bx	lr

0000545c <_cleanup_r>:
    545c:	e59f1000 	ldr	r1, [pc]	; 5464 <_cleanup_r+0x8>
    5460:	ea000174 	b	5a38 <_fwalk>
    5464:	00008ac0 	.word	0x00008ac0

00005468 <std.isra.0>:
    5468:	e3a03000 	mov	r3, #0
    546c:	e92d4010 	push	{r4, lr}
    5470:	e1a04000 	mov	r4, r0
    5474:	e1c010bc 	strh	r1, [r0, #12]
    5478:	e1c020be 	strh	r2, [r0, #14]
    547c:	e5803000 	str	r3, [r0]
    5480:	e5803004 	str	r3, [r0, #4]
    5484:	e5803008 	str	r3, [r0, #8]
    5488:	e5803064 	str	r3, [r0, #100]	; 0x64
    548c:	e5803010 	str	r3, [r0, #16]
    5490:	e5803014 	str	r3, [r0, #20]
    5494:	e5803018 	str	r3, [r0, #24]
    5498:	e1a01003 	mov	r1, r3
    549c:	e280005c 	add	r0, r0, #92	; 0x5c
    54a0:	e3a02008 	mov	r2, #8
    54a4:	ebfff043 	bl	15b8 <memset>
    54a8:	e59f3020 	ldr	r3, [pc, #32]	; 54d0 <std.isra.0+0x68>
    54ac:	e5843020 	str	r3, [r4, #32]
    54b0:	e59f301c 	ldr	r3, [pc, #28]	; 54d4 <std.isra.0+0x6c>
    54b4:	e5843024 	str	r3, [r4, #36]	; 0x24
    54b8:	e59f3018 	ldr	r3, [pc, #24]	; 54d8 <std.isra.0+0x70>
    54bc:	e5843028 	str	r3, [r4, #40]	; 0x28
    54c0:	e59f3014 	ldr	r3, [pc, #20]	; 54dc <std.isra.0+0x74>
    54c4:	e584401c 	str	r4, [r4, #28]
    54c8:	e584302c 	str	r3, [r4, #44]	; 0x2c
    54cc:	e8bd8010 	pop	{r4, pc}
    54d0:	00007428 	.word	0x00007428
    54d4:	00007460 	.word	0x00007460
    54d8:	000074b4 	.word	0x000074b4
    54dc:	000074e4 	.word	0x000074e4

000054e0 <__sfmoreglue>:
    54e0:	e92d4070 	push	{r4, r5, r6, lr}
    54e4:	e0816081 	add	r6, r1, r1, lsl #1
    54e8:	e0816106 	add	r6, r1, r6, lsl #2
    54ec:	e1a06186 	lsl	r6, r6, #3
    54f0:	e1a05001 	mov	r5, r1
    54f4:	e286100c 	add	r1, r6, #12
    54f8:	eb00021b 	bl	5d6c <_malloc_r>
    54fc:	e2504000 	subs	r4, r0, #0
    5500:	0a000005 	beq	551c <__sfmoreglue+0x3c>
    5504:	e284000c 	add	r0, r4, #12
    5508:	e3a01000 	mov	r1, #0
    550c:	e8840022 	stm	r4, {r1, r5}
    5510:	e5840008 	str	r0, [r4, #8]
    5514:	e1a02006 	mov	r2, r6
    5518:	ebfff026 	bl	15b8 <memset>
    551c:	e1a00004 	mov	r0, r4
    5520:	e8bd8070 	pop	{r4, r5, r6, pc}

00005524 <_cleanup>:
    5524:	e59f3004 	ldr	r3, [pc, #4]	; 5530 <_cleanup+0xc>
    5528:	e5930000 	ldr	r0, [r3]
    552c:	eaffffca 	b	545c <_cleanup_r>
    5530:	0000a85c 	.word	0x0000a85c

00005534 <__sinit>:
    5534:	e5903038 	ldr	r3, [r0, #56]	; 0x38
    5538:	e3530000 	cmp	r3, #0
    553c:	e92d4030 	push	{r4, r5, lr}
    5540:	e1a04000 	mov	r4, r0
    5544:	18bd8030 	popne	{r4, r5, pc}
    5548:	e59fe050 	ldr	lr, [pc, #80]	; 55a0 <__sinit+0x6c>
    554c:	e280cfbb 	add	ip, r0, #748	; 0x2ec
    5550:	e3a05001 	mov	r5, #1
    5554:	e1a02003 	mov	r2, r3
    5558:	e58432e0 	str	r3, [r4, #736]	; 0x2e0
    555c:	e3a03003 	mov	r3, #3
    5560:	e584e03c 	str	lr, [r4, #60]	; 0x3c
    5564:	e58432e4 	str	r3, [r4, #740]	; 0x2e4
    5568:	e584c2e8 	str	ip, [r4, #744]	; 0x2e8
    556c:	e5900004 	ldr	r0, [r0, #4]
    5570:	e3a01004 	mov	r1, #4
    5574:	e5845038 	str	r5, [r4, #56]	; 0x38
    5578:	ebffffba 	bl	5468 <std.isra.0>
    557c:	e5940008 	ldr	r0, [r4, #8]
    5580:	e1a02005 	mov	r2, r5
    5584:	e3a01009 	mov	r1, #9
    5588:	ebffffb6 	bl	5468 <std.isra.0>
    558c:	e594000c 	ldr	r0, [r4, #12]
    5590:	e3a01012 	mov	r1, #18
    5594:	e3a02002 	mov	r2, #2
    5598:	e8bd4030 	pop	{r4, r5, lr}
    559c:	eaffffb1 	b	5468 <std.isra.0>
    55a0:	0000545c 	.word	0x0000545c

000055a4 <__sfp>:
    55a4:	e59f30e8 	ldr	r3, [pc, #232]	; 5694 <__sfp+0xf0>
    55a8:	e92d4070 	push	{r4, r5, r6, lr}
    55ac:	e5935000 	ldr	r5, [r3]
    55b0:	e5953038 	ldr	r3, [r5, #56]	; 0x38
    55b4:	e3530000 	cmp	r3, #0
    55b8:	e1a06000 	mov	r6, r0
    55bc:	0a000027 	beq	5660 <__sfp+0xbc>
    55c0:	e2855e2e 	add	r5, r5, #736	; 0x2e0
    55c4:	e5953004 	ldr	r3, [r5, #4]
    55c8:	e2533001 	subs	r3, r3, #1
    55cc:	e5954008 	ldr	r4, [r5, #8]
    55d0:	5a000004 	bpl	55e8 <__sfp+0x44>
    55d4:	ea00001c 	b	564c <__sfp+0xa8>
    55d8:	e2433001 	sub	r3, r3, #1
    55dc:	e3730001 	cmn	r3, #1
    55e0:	e2844068 	add	r4, r4, #104	; 0x68
    55e4:	0a000018 	beq	564c <__sfp+0xa8>
    55e8:	e1d420fc 	ldrsh	r2, [r4, #12]
    55ec:	e3520000 	cmp	r2, #0
    55f0:	1afffff8 	bne	55d8 <__sfp+0x34>
    55f4:	e3e03000 	mvn	r3, #0
    55f8:	e3a05000 	mov	r5, #0
    55fc:	e1c430be 	strh	r3, [r4, #14]
    5600:	e3a03001 	mov	r3, #1
    5604:	e1c430bc 	strh	r3, [r4, #12]
    5608:	e5845064 	str	r5, [r4, #100]	; 0x64
    560c:	e5845000 	str	r5, [r4]
    5610:	e5845008 	str	r5, [r4, #8]
    5614:	e5845004 	str	r5, [r4, #4]
    5618:	e5845010 	str	r5, [r4, #16]
    561c:	e5845014 	str	r5, [r4, #20]
    5620:	e5845018 	str	r5, [r4, #24]
    5624:	e284005c 	add	r0, r4, #92	; 0x5c
    5628:	e1a01005 	mov	r1, r5
    562c:	e3a02008 	mov	r2, #8
    5630:	ebffefe0 	bl	15b8 <memset>
    5634:	e5845030 	str	r5, [r4, #48]	; 0x30
    5638:	e5845034 	str	r5, [r4, #52]	; 0x34
    563c:	e5845044 	str	r5, [r4, #68]	; 0x44
    5640:	e5845048 	str	r5, [r4, #72]	; 0x48
    5644:	e1a00004 	mov	r0, r4
    5648:	e8bd8070 	pop	{r4, r5, r6, pc}
    564c:	e5950000 	ldr	r0, [r5]
    5650:	e3500000 	cmp	r0, #0
    5654:	0a000004 	beq	566c <__sfp+0xc8>
    5658:	e1a05000 	mov	r5, r0
    565c:	eaffffd8 	b	55c4 <__sfp+0x20>
    5660:	e1a00005 	mov	r0, r5
    5664:	ebffffb2 	bl	5534 <__sinit>
    5668:	eaffffd4 	b	55c0 <__sfp+0x1c>
    566c:	e1a00006 	mov	r0, r6
    5670:	e3a01004 	mov	r1, #4
    5674:	ebffff99 	bl	54e0 <__sfmoreglue>
    5678:	e3500000 	cmp	r0, #0
    567c:	e5850000 	str	r0, [r5]
    5680:	1afffff4 	bne	5658 <__sfp+0xb4>
    5684:	e3a0300c 	mov	r3, #12
    5688:	e5863000 	str	r3, [r6]
    568c:	e1a04000 	mov	r4, r0
    5690:	eaffffeb 	b	5644 <__sfp+0xa0>
    5694:	0000a85c 	.word	0x0000a85c

00005698 <__sfp_lock_acquire>:
    5698:	e12fff1e 	bx	lr

0000569c <__sfp_lock_release>:
    569c:	e12fff1e 	bx	lr

000056a0 <__sinit_lock_acquire>:
    56a0:	e12fff1e 	bx	lr

000056a4 <__sinit_lock_release>:
    56a4:	e12fff1e 	bx	lr

000056a8 <__fp_lock_all>:
    56a8:	e59f3008 	ldr	r3, [pc, #8]	; 56b8 <__fp_lock_all+0x10>
    56ac:	e59f1008 	ldr	r1, [pc, #8]	; 56bc <__fp_lock_all+0x14>
    56b0:	e5930000 	ldr	r0, [r3]
    56b4:	ea0000df 	b	5a38 <_fwalk>
    56b8:	0000ac08 	.word	0x0000ac08
    56bc:	0000544c 	.word	0x0000544c

000056c0 <__fp_unlock_all>:
    56c0:	e59f3008 	ldr	r3, [pc, #8]	; 56d0 <__fp_unlock_all+0x10>
    56c4:	e59f1008 	ldr	r1, [pc, #8]	; 56d4 <__fp_unlock_all+0x14>
    56c8:	e5930000 	ldr	r0, [r3]
    56cc:	ea0000d9 	b	5a38 <_fwalk>
    56d0:	0000ac08 	.word	0x0000ac08
    56d4:	00005454 	.word	0x00005454

000056d8 <_malloc_trim_r>:
    56d8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    56dc:	e59f50e0 	ldr	r5, [pc, #224]	; 57c4 <_malloc_trim_r+0xec>
    56e0:	e1a07001 	mov	r7, r1
    56e4:	e1a04000 	mov	r4, r0
    56e8:	eb0003e9 	bl	6694 <__malloc_lock>
    56ec:	e5953008 	ldr	r3, [r5, #8]
    56f0:	e5936004 	ldr	r6, [r3, #4]
    56f4:	e3c66003 	bic	r6, r6, #3
    56f8:	e2863efe 	add	r3, r6, #4064	; 0xfe0
    56fc:	e283300f 	add	r3, r3, #15
    5700:	e0677003 	rsb	r7, r7, r3
    5704:	e1a07627 	lsr	r7, r7, #12
    5708:	e2477001 	sub	r7, r7, #1
    570c:	e1a07607 	lsl	r7, r7, #12
    5710:	e3570a01 	cmp	r7, #4096	; 0x1000
    5714:	ba000006 	blt	5734 <_malloc_trim_r+0x5c>
    5718:	e1a00004 	mov	r0, r4
    571c:	e3a01000 	mov	r1, #0
    5720:	eb000732 	bl	73f0 <_sbrk_r>
    5724:	e5953008 	ldr	r3, [r5, #8]
    5728:	e0833006 	add	r3, r3, r6
    572c:	e1500003 	cmp	r0, r3
    5730:	0a000003 	beq	5744 <_malloc_trim_r+0x6c>
    5734:	e1a00004 	mov	r0, r4
    5738:	eb0003d6 	bl	6698 <__malloc_unlock>
    573c:	e3a00000 	mov	r0, #0
    5740:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    5744:	e1a00004 	mov	r0, r4
    5748:	e2671000 	rsb	r1, r7, #0
    574c:	eb000727 	bl	73f0 <_sbrk_r>
    5750:	e3700001 	cmn	r0, #1
    5754:	0a00000b 	beq	5788 <_malloc_trim_r+0xb0>
    5758:	e59f3068 	ldr	r3, [pc, #104]	; 57c8 <_malloc_trim_r+0xf0>
    575c:	e5952008 	ldr	r2, [r5, #8]
    5760:	e5931000 	ldr	r1, [r3]
    5764:	e0676006 	rsb	r6, r7, r6
    5768:	e3866001 	orr	r6, r6, #1
    576c:	e0677001 	rsb	r7, r7, r1
    5770:	e1a00004 	mov	r0, r4
    5774:	e5826004 	str	r6, [r2, #4]
    5778:	e5837000 	str	r7, [r3]
    577c:	eb0003c5 	bl	6698 <__malloc_unlock>
    5780:	e3a00001 	mov	r0, #1
    5784:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    5788:	e1a00004 	mov	r0, r4
    578c:	e3a01000 	mov	r1, #0
    5790:	eb000716 	bl	73f0 <_sbrk_r>
    5794:	e5953008 	ldr	r3, [r5, #8]
    5798:	e0632000 	rsb	r2, r3, r0
    579c:	e352000f 	cmp	r2, #15
    57a0:	daffffe3 	ble	5734 <_malloc_trim_r+0x5c>
    57a4:	e59f1020 	ldr	r1, [pc, #32]	; 57cc <_malloc_trim_r+0xf4>
    57a8:	e5911000 	ldr	r1, [r1]
    57ac:	e0610000 	rsb	r0, r1, r0
    57b0:	e59f1010 	ldr	r1, [pc, #16]	; 57c8 <_malloc_trim_r+0xf0>
    57b4:	e3822001 	orr	r2, r2, #1
    57b8:	e5810000 	str	r0, [r1]
    57bc:	e5832004 	str	r2, [r3, #4]
    57c0:	eaffffdb 	b	5734 <_malloc_trim_r+0x5c>
    57c4:	0000b0ac 	.word	0x0000b0ac
    57c8:	0000b4d0 	.word	0x0000b4d0
    57cc:	0000b4b4 	.word	0x0000b4b4

000057d0 <_free_r>:
    57d0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    57d4:	e2515000 	subs	r5, r1, #0
    57d8:	e1a07000 	mov	r7, r0
    57dc:	08bd81f0 	popeq	{r4, r5, r6, r7, r8, pc}
    57e0:	eb0003ab 	bl	6694 <__malloc_lock>
    57e4:	e5154004 	ldr	r4, [r5, #-4]
    57e8:	e59f1234 	ldr	r1, [pc, #564]	; 5a24 <_free_r+0x254>
    57ec:	e245c008 	sub	ip, r5, #8
    57f0:	e3c43001 	bic	r3, r4, #1
    57f4:	e08c2003 	add	r2, ip, r3
    57f8:	e5910008 	ldr	r0, [r1, #8]
    57fc:	e5926004 	ldr	r6, [r2, #4]
    5800:	e1500002 	cmp	r0, r2
    5804:	e3c66003 	bic	r6, r6, #3
    5808:	0a000049 	beq	5934 <_free_r+0x164>
    580c:	e2144001 	ands	r4, r4, #1
    5810:	e5826004 	str	r6, [r2, #4]
    5814:	13a04000 	movne	r4, #0
    5818:	1a000009 	bne	5844 <_free_r+0x74>
    581c:	e5155008 	ldr	r5, [r5, #-8]
    5820:	e065c00c 	rsb	ip, r5, ip
    5824:	e59c0008 	ldr	r0, [ip, #8]
    5828:	e2818008 	add	r8, r1, #8
    582c:	e1500008 	cmp	r0, r8
    5830:	e0833005 	add	r3, r3, r5
    5834:	159c500c 	ldrne	r5, [ip, #12]
    5838:	1580500c 	strne	r5, [r0, #12]
    583c:	15850008 	strne	r0, [r5, #8]
    5840:	03a04001 	moveq	r4, #1
    5844:	e0820006 	add	r0, r2, r6
    5848:	e5900004 	ldr	r0, [r0, #4]
    584c:	e3100001 	tst	r0, #1
    5850:	1a000009 	bne	587c <_free_r+0xac>
    5854:	e3540000 	cmp	r4, #0
    5858:	e5920008 	ldr	r0, [r2, #8]
    585c:	e0833006 	add	r3, r3, r6
    5860:	1a000002 	bne	5870 <_free_r+0xa0>
    5864:	e59f51bc 	ldr	r5, [pc, #444]	; 5a28 <_free_r+0x258>
    5868:	e1500005 	cmp	r0, r5
    586c:	0a000046 	beq	598c <_free_r+0x1bc>
    5870:	e592200c 	ldr	r2, [r2, #12]
    5874:	e580200c 	str	r2, [r0, #12]
    5878:	e5820008 	str	r0, [r2, #8]
    587c:	e3832001 	orr	r2, r3, #1
    5880:	e3540000 	cmp	r4, #0
    5884:	e58c2004 	str	r2, [ip, #4]
    5888:	e78c3003 	str	r3, [ip, r3]
    588c:	1a000018 	bne	58f4 <_free_r+0x124>
    5890:	e3530c02 	cmp	r3, #512	; 0x200
    5894:	3a000019 	bcc	5900 <_free_r+0x130>
    5898:	e1a024a3 	lsr	r2, r3, #9
    589c:	e3520004 	cmp	r2, #4
    58a0:	8a000041 	bhi	59ac <_free_r+0x1dc>
    58a4:	e1a04323 	lsr	r4, r3, #6
    58a8:	e2844038 	add	r4, r4, #56	; 0x38
    58ac:	e1a00084 	lsl	r0, r4, #1
    58b0:	e0810100 	add	r0, r1, r0, lsl #2
    58b4:	e5902008 	ldr	r2, [r0, #8]
    58b8:	e1520000 	cmp	r2, r0
    58bc:	e59f1160 	ldr	r1, [pc, #352]	; 5a24 <_free_r+0x254>
    58c0:	0a000043 	beq	59d4 <_free_r+0x204>
    58c4:	e5921004 	ldr	r1, [r2, #4]
    58c8:	e3c11003 	bic	r1, r1, #3
    58cc:	e1530001 	cmp	r3, r1
    58d0:	2a000002 	bcs	58e0 <_free_r+0x110>
    58d4:	e5922008 	ldr	r2, [r2, #8]
    58d8:	e1500002 	cmp	r0, r2
    58dc:	1afffff8 	bne	58c4 <_free_r+0xf4>
    58e0:	e592300c 	ldr	r3, [r2, #12]
    58e4:	e58c300c 	str	r3, [ip, #12]
    58e8:	e58c2008 	str	r2, [ip, #8]
    58ec:	e582c00c 	str	ip, [r2, #12]
    58f0:	e583c008 	str	ip, [r3, #8]
    58f4:	e1a00007 	mov	r0, r7
    58f8:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    58fc:	ea000365 	b	6698 <__malloc_unlock>
    5900:	e5912004 	ldr	r2, [r1, #4]
    5904:	e1a031a3 	lsr	r3, r3, #3
    5908:	e1a00143 	asr	r0, r3, #2
    590c:	e3a04001 	mov	r4, #1
    5910:	e1820014 	orr	r0, r2, r4, lsl r0
    5914:	e0813183 	add	r3, r1, r3, lsl #3
    5918:	e5932008 	ldr	r2, [r3, #8]
    591c:	e58c300c 	str	r3, [ip, #12]
    5920:	e58c2008 	str	r2, [ip, #8]
    5924:	e5810004 	str	r0, [r1, #4]
    5928:	e583c008 	str	ip, [r3, #8]
    592c:	e582c00c 	str	ip, [r2, #12]
    5930:	eaffffef 	b	58f4 <_free_r+0x124>
    5934:	e3140001 	tst	r4, #1
    5938:	e0863003 	add	r3, r6, r3
    593c:	1a000006 	bne	595c <_free_r+0x18c>
    5940:	e5152008 	ldr	r2, [r5, #-8]
    5944:	e062c00c 	rsb	ip, r2, ip
    5948:	e59c000c 	ldr	r0, [ip, #12]
    594c:	e59c4008 	ldr	r4, [ip, #8]
    5950:	e584000c 	str	r0, [r4, #12]
    5954:	e5804008 	str	r4, [r0, #8]
    5958:	e0833002 	add	r3, r3, r2
    595c:	e59f20c8 	ldr	r2, [pc, #200]	; 5a2c <_free_r+0x25c>
    5960:	e5920000 	ldr	r0, [r2]
    5964:	e3832001 	orr	r2, r3, #1
    5968:	e1530000 	cmp	r3, r0
    596c:	e58c2004 	str	r2, [ip, #4]
    5970:	e581c008 	str	ip, [r1, #8]
    5974:	3affffde 	bcc	58f4 <_free_r+0x124>
    5978:	e59f30b0 	ldr	r3, [pc, #176]	; 5a30 <_free_r+0x260>
    597c:	e1a00007 	mov	r0, r7
    5980:	e5931000 	ldr	r1, [r3]
    5984:	ebffff53 	bl	56d8 <_malloc_trim_r>
    5988:	eaffffd9 	b	58f4 <_free_r+0x124>
    598c:	e3832001 	orr	r2, r3, #1
    5990:	e581c014 	str	ip, [r1, #20]
    5994:	e581c010 	str	ip, [r1, #16]
    5998:	e58c000c 	str	r0, [ip, #12]
    599c:	e58c0008 	str	r0, [ip, #8]
    59a0:	e58c2004 	str	r2, [ip, #4]
    59a4:	e78c3003 	str	r3, [ip, r3]
    59a8:	eaffffd1 	b	58f4 <_free_r+0x124>
    59ac:	e3520014 	cmp	r2, #20
    59b0:	9282405b 	addls	r4, r2, #91	; 0x5b
    59b4:	91a00084 	lslls	r0, r4, #1
    59b8:	9affffbc 	bls	58b0 <_free_r+0xe0>
    59bc:	e3520054 	cmp	r2, #84	; 0x54
    59c0:	8a00000a 	bhi	59f0 <_free_r+0x220>
    59c4:	e1a04623 	lsr	r4, r3, #12
    59c8:	e284406e 	add	r4, r4, #110	; 0x6e
    59cc:	e1a00084 	lsl	r0, r4, #1
    59d0:	eaffffb6 	b	58b0 <_free_r+0xe0>
    59d4:	e5913004 	ldr	r3, [r1, #4]
    59d8:	e1a04144 	asr	r4, r4, #2
    59dc:	e3a00001 	mov	r0, #1
    59e0:	e1830410 	orr	r0, r3, r0, lsl r4
    59e4:	e1a03002 	mov	r3, r2
    59e8:	e5810004 	str	r0, [r1, #4]
    59ec:	eaffffbc 	b	58e4 <_free_r+0x114>
    59f0:	e3520f55 	cmp	r2, #340	; 0x154
    59f4:	91a047a3 	lsrls	r4, r3, #15
    59f8:	92844077 	addls	r4, r4, #119	; 0x77
    59fc:	91a00084 	lslls	r0, r4, #1
    5a00:	9affffaa 	bls	58b0 <_free_r+0xe0>
    5a04:	e59f0028 	ldr	r0, [pc, #40]	; 5a34 <_free_r+0x264>
    5a08:	e1520000 	cmp	r2, r0
    5a0c:	91a04923 	lsrls	r4, r3, #18
    5a10:	9284407c 	addls	r4, r4, #124	; 0x7c
    5a14:	91a00084 	lslls	r0, r4, #1
    5a18:	83a000fc 	movhi	r0, #252	; 0xfc
    5a1c:	83a0407e 	movhi	r4, #126	; 0x7e
    5a20:	eaffffa2 	b	58b0 <_free_r+0xe0>
    5a24:	0000b0ac 	.word	0x0000b0ac
    5a28:	0000b0b4 	.word	0x0000b0b4
    5a2c:	0000b4b8 	.word	0x0000b4b8
    5a30:	0000b4cc 	.word	0x0000b4cc
    5a34:	00000554 	.word	0x00000554

00005a38 <_fwalk>:
    5a38:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    5a3c:	e2906e2e 	adds	r6, r0, #736	; 0x2e0
    5a40:	e1a08001 	mov	r8, r1
    5a44:	0a000019 	beq	5ab0 <_fwalk+0x78>
    5a48:	e3a07000 	mov	r7, #0
    5a4c:	e5965004 	ldr	r5, [r6, #4]
    5a50:	e2555001 	subs	r5, r5, #1
    5a54:	e5964008 	ldr	r4, [r6, #8]
    5a58:	4a00000f 	bmi	5a9c <_fwalk+0x64>
    5a5c:	e1d430bc 	ldrh	r3, [r4, #12]
    5a60:	e3530000 	cmp	r3, #0
    5a64:	e2455001 	sub	r5, r5, #1
    5a68:	0a000008 	beq	5a90 <_fwalk+0x58>
    5a6c:	e3530001 	cmp	r3, #1
    5a70:	9a000006 	bls	5a90 <_fwalk+0x58>
    5a74:	e1d430fe 	ldrsh	r3, [r4, #14]
    5a78:	e3730001 	cmn	r3, #1
    5a7c:	e1a00004 	mov	r0, r4
    5a80:	0a000002 	beq	5a90 <_fwalk+0x58>
    5a84:	e1a0e00f 	mov	lr, pc
    5a88:	e12fff18 	bx	r8
    5a8c:	e1877000 	orr	r7, r7, r0
    5a90:	e3750001 	cmn	r5, #1
    5a94:	e2844068 	add	r4, r4, #104	; 0x68
    5a98:	1affffef 	bne	5a5c <_fwalk+0x24>
    5a9c:	e5966000 	ldr	r6, [r6]
    5aa0:	e3560000 	cmp	r6, #0
    5aa4:	1affffe8 	bne	5a4c <_fwalk+0x14>
    5aa8:	e1a00007 	mov	r0, r7
    5aac:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    5ab0:	e1a07006 	mov	r7, r6
    5ab4:	e1a00007 	mov	r0, r7
    5ab8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

00005abc <_fwalk_reent>:
    5abc:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    5ac0:	e2906e2e 	adds	r6, r0, #736	; 0x2e0
    5ac4:	e1a08000 	mov	r8, r0
    5ac8:	e1a0a001 	mov	sl, r1
    5acc:	0a00001a 	beq	5b3c <_fwalk_reent+0x80>
    5ad0:	e3a07000 	mov	r7, #0
    5ad4:	e5965004 	ldr	r5, [r6, #4]
    5ad8:	e2555001 	subs	r5, r5, #1
    5adc:	e5964008 	ldr	r4, [r6, #8]
    5ae0:	4a000010 	bmi	5b28 <_fwalk_reent+0x6c>
    5ae4:	e1d430bc 	ldrh	r3, [r4, #12]
    5ae8:	e3530000 	cmp	r3, #0
    5aec:	e2455001 	sub	r5, r5, #1
    5af0:	0a000009 	beq	5b1c <_fwalk_reent+0x60>
    5af4:	e3530001 	cmp	r3, #1
    5af8:	9a000007 	bls	5b1c <_fwalk_reent+0x60>
    5afc:	e1d430fe 	ldrsh	r3, [r4, #14]
    5b00:	e3730001 	cmn	r3, #1
    5b04:	e1a01004 	mov	r1, r4
    5b08:	e1a00008 	mov	r0, r8
    5b0c:	0a000002 	beq	5b1c <_fwalk_reent+0x60>
    5b10:	e1a0e00f 	mov	lr, pc
    5b14:	e12fff1a 	bx	sl
    5b18:	e1877000 	orr	r7, r7, r0
    5b1c:	e3750001 	cmn	r5, #1
    5b20:	e2844068 	add	r4, r4, #104	; 0x68
    5b24:	1affffee 	bne	5ae4 <_fwalk_reent+0x28>
    5b28:	e5966000 	ldr	r6, [r6]
    5b2c:	e3560000 	cmp	r6, #0
    5b30:	1affffe7 	bne	5ad4 <_fwalk_reent+0x18>
    5b34:	e1a00007 	mov	r0, r7
    5b38:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    5b3c:	e1a07006 	mov	r7, r6
    5b40:	e1a00007 	mov	r0, r7
    5b44:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}

00005b48 <_setlocale_r>:
    5b48:	e92d4010 	push	{r4, lr}
    5b4c:	e2524000 	subs	r4, r2, #0
    5b50:	0a000004 	beq	5b68 <_setlocale_r+0x20>
    5b54:	e1a00004 	mov	r0, r4
    5b58:	e59f1044 	ldr	r1, [pc, #68]	; 5ba4 <_setlocale_r+0x5c>
    5b5c:	eb000662 	bl	74ec <strcmp>
    5b60:	e3500000 	cmp	r0, #0
    5b64:	1a000001 	bne	5b70 <_setlocale_r+0x28>
    5b68:	e59f0038 	ldr	r0, [pc, #56]	; 5ba8 <_setlocale_r+0x60>
    5b6c:	e8bd8010 	pop	{r4, pc}
    5b70:	e1a00004 	mov	r0, r4
    5b74:	e59f102c 	ldr	r1, [pc, #44]	; 5ba8 <_setlocale_r+0x60>
    5b78:	eb00065b 	bl	74ec <strcmp>
    5b7c:	e3500000 	cmp	r0, #0
    5b80:	0afffff8 	beq	5b68 <_setlocale_r+0x20>
    5b84:	e1a00004 	mov	r0, r4
    5b88:	e59f101c 	ldr	r1, [pc, #28]	; 5bac <_setlocale_r+0x64>
    5b8c:	eb000656 	bl	74ec <strcmp>
    5b90:	e59f3010 	ldr	r3, [pc, #16]	; 5ba8 <_setlocale_r+0x60>
    5b94:	e3500000 	cmp	r0, #0
    5b98:	01a00003 	moveq	r0, r3
    5b9c:	13a00000 	movne	r0, #0
    5ba0:	e8bd8010 	pop	{r4, pc}
    5ba4:	0000a8d8 	.word	0x0000a8d8
    5ba8:	0000a860 	.word	0x0000a860
    5bac:	0000a8a4 	.word	0x0000a8a4

00005bb0 <__locale_charset>:
    5bb0:	e59f0000 	ldr	r0, [pc]	; 5bb8 <__locale_charset+0x8>
    5bb4:	e12fff1e 	bx	lr
    5bb8:	0000b030 	.word	0x0000b030

00005bbc <__locale_mb_cur_max>:
    5bbc:	e59f3004 	ldr	r3, [pc, #4]	; 5bc8 <__locale_mb_cur_max+0xc>
    5bc0:	e5930020 	ldr	r0, [r3, #32]
    5bc4:	e12fff1e 	bx	lr
    5bc8:	0000b030 	.word	0x0000b030

00005bcc <__locale_msgcharset>:
    5bcc:	e59f0000 	ldr	r0, [pc]	; 5bd4 <__locale_msgcharset+0x8>
    5bd0:	e12fff1e 	bx	lr
    5bd4:	0000b054 	.word	0x0000b054

00005bd8 <__locale_cjk_lang>:
    5bd8:	e3a00000 	mov	r0, #0
    5bdc:	e12fff1e 	bx	lr

00005be0 <_localeconv_r>:
    5be0:	e59f0000 	ldr	r0, [pc]	; 5be8 <_localeconv_r+0x8>
    5be4:	e12fff1e 	bx	lr
    5be8:	0000b074 	.word	0x0000b074

00005bec <setlocale>:
    5bec:	e1a02001 	mov	r2, r1
    5bf0:	e59f100c 	ldr	r1, [pc, #12]	; 5c04 <setlocale+0x18>
    5bf4:	e1a03000 	mov	r3, r0
    5bf8:	e5910000 	ldr	r0, [r1]
    5bfc:	e1a01003 	mov	r1, r3
    5c00:	eaffffd0 	b	5b48 <_setlocale_r>
    5c04:	0000ac08 	.word	0x0000ac08

00005c08 <localeconv>:
    5c08:	e59f0000 	ldr	r0, [pc]	; 5c10 <localeconv+0x8>
    5c0c:	e12fff1e 	bx	lr
    5c10:	0000b074 	.word	0x0000b074

00005c14 <__smakebuf_r>:
    5c14:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    5c18:	e1d130bc 	ldrh	r3, [r1, #12]
    5c1c:	e3130002 	tst	r3, #2
    5c20:	e24dd03c 	sub	sp, sp, #60	; 0x3c
    5c24:	e1a04001 	mov	r4, r1
    5c28:	e1a05000 	mov	r5, r0
    5c2c:	1a00002a 	bne	5cdc <__smakebuf_r+0xc8>
    5c30:	e1d110fe 	ldrsh	r1, [r1, #14]
    5c34:	e3510000 	cmp	r1, #0
    5c38:	ba000010 	blt	5c80 <__smakebuf_r+0x6c>
    5c3c:	e1a0200d 	mov	r2, sp
    5c40:	eb000c09 	bl	8c6c <_fstat_r>
    5c44:	e3500000 	cmp	r0, #0
    5c48:	ba00000b 	blt	5c7c <__smakebuf_r+0x68>
    5c4c:	e59d3004 	ldr	r3, [sp, #4]
    5c50:	e2033a0f 	and	r3, r3, #61440	; 0xf000
    5c54:	e2532a02 	subs	r2, r3, #8192	; 0x2000
    5c58:	e2727000 	rsbs	r7, r2, #0
    5c5c:	e0b77002 	adcs	r7, r7, r2
    5c60:	e3530902 	cmp	r3, #32768	; 0x8000
    5c64:	0a000022 	beq	5cf4 <__smakebuf_r+0xe0>
    5c68:	e1d430bc 	ldrh	r3, [r4, #12]
    5c6c:	e3833b02 	orr	r3, r3, #2048	; 0x800
    5c70:	e1c430bc 	strh	r3, [r4, #12]
    5c74:	e3a06b01 	mov	r6, #1024	; 0x400
    5c78:	ea000006 	b	5c98 <__smakebuf_r+0x84>
    5c7c:	e1d430bc 	ldrh	r3, [r4, #12]
    5c80:	e3130080 	tst	r3, #128	; 0x80
    5c84:	e3833b02 	orr	r3, r3, #2048	; 0x800
    5c88:	e1c430bc 	strh	r3, [r4, #12]
    5c8c:	03a06b01 	moveq	r6, #1024	; 0x400
    5c90:	13a06040 	movne	r6, #64	; 0x40
    5c94:	e3a07000 	mov	r7, #0
    5c98:	e1a00005 	mov	r0, r5
    5c9c:	e1a01006 	mov	r1, r6
    5ca0:	eb000031 	bl	5d6c <_malloc_r>
    5ca4:	e3500000 	cmp	r0, #0
    5ca8:	e1d430bc 	ldrh	r3, [r4, #12]
    5cac:	0a000022 	beq	5d3c <__smakebuf_r+0x128>
    5cb0:	e59f20ac 	ldr	r2, [pc, #172]	; 5d64 <__smakebuf_r+0x150>
    5cb4:	e3833080 	orr	r3, r3, #128	; 0x80
    5cb8:	e3570000 	cmp	r7, #0
    5cbc:	e585203c 	str	r2, [r5, #60]	; 0x3c
    5cc0:	e1c430bc 	strh	r3, [r4, #12]
    5cc4:	e5840000 	str	r0, [r4]
    5cc8:	e5840010 	str	r0, [r4, #16]
    5ccc:	e5846014 	str	r6, [r4, #20]
    5cd0:	1a000011 	bne	5d1c <__smakebuf_r+0x108>
    5cd4:	e28dd03c 	add	sp, sp, #60	; 0x3c
    5cd8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    5cdc:	e2813043 	add	r3, r1, #67	; 0x43
    5ce0:	e5813000 	str	r3, [r1]
    5ce4:	e5813010 	str	r3, [r1, #16]
    5ce8:	e3a03001 	mov	r3, #1
    5cec:	e5813014 	str	r3, [r1, #20]
    5cf0:	eafffff7 	b	5cd4 <__smakebuf_r+0xc0>
    5cf4:	e5942028 	ldr	r2, [r4, #40]	; 0x28
    5cf8:	e59f3068 	ldr	r3, [pc, #104]	; 5d68 <__smakebuf_r+0x154>
    5cfc:	e1520003 	cmp	r2, r3
    5d00:	1affffd8 	bne	5c68 <__smakebuf_r+0x54>
    5d04:	e1d430bc 	ldrh	r3, [r4, #12]
    5d08:	e3a06b01 	mov	r6, #1024	; 0x400
    5d0c:	e1833006 	orr	r3, r3, r6
    5d10:	e1c430bc 	strh	r3, [r4, #12]
    5d14:	e584604c 	str	r6, [r4, #76]	; 0x4c
    5d18:	eaffffde 	b	5c98 <__smakebuf_r+0x84>
    5d1c:	e1a00005 	mov	r0, r5
    5d20:	e1d410fe 	ldrsh	r1, [r4, #14]
    5d24:	eb000d0b 	bl	9158 <_isatty_r>
    5d28:	e3500000 	cmp	r0, #0
    5d2c:	11d430bc 	ldrhne	r3, [r4, #12]
    5d30:	13833001 	orrne	r3, r3, #1
    5d34:	11c430bc 	strhne	r3, [r4, #12]
    5d38:	eaffffe5 	b	5cd4 <__smakebuf_r+0xc0>
    5d3c:	e3130c02 	tst	r3, #512	; 0x200
    5d40:	1affffe3 	bne	5cd4 <__smakebuf_r+0xc0>
    5d44:	e3833002 	orr	r3, r3, #2
    5d48:	e2842043 	add	r2, r4, #67	; 0x43
    5d4c:	e1c430bc 	strh	r3, [r4, #12]
    5d50:	e3a03001 	mov	r3, #1
    5d54:	e5842000 	str	r2, [r4]
    5d58:	e5842010 	str	r2, [r4, #16]
    5d5c:	e5843014 	str	r3, [r4, #20]
    5d60:	eaffffdb 	b	5cd4 <__smakebuf_r+0xc0>
    5d64:	0000545c 	.word	0x0000545c
    5d68:	000074b4 	.word	0x000074b4

00005d6c <_malloc_r>:
    5d6c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    5d70:	e281500b 	add	r5, r1, #11
    5d74:	e3550016 	cmp	r5, #22
    5d78:	83c55007 	bichi	r5, r5, #7
    5d7c:	81a03fa5 	lsrhi	r3, r5, #31
    5d80:	93a03000 	movls	r3, #0
    5d84:	93a05010 	movls	r5, #16
    5d88:	e1550001 	cmp	r5, r1
    5d8c:	21a01003 	movcs	r1, r3
    5d90:	33831001 	orrcc	r1, r3, #1
    5d94:	e3510000 	cmp	r1, #0
    5d98:	13a0300c 	movne	r3, #12
    5d9c:	e24dd004 	sub	sp, sp, #4
    5da0:	e1a06000 	mov	r6, r0
    5da4:	15803000 	strne	r3, [r0]
    5da8:	13a04000 	movne	r4, #0
    5dac:	1a000015 	bne	5e08 <_malloc_r+0x9c>
    5db0:	eb000237 	bl	6694 <__malloc_lock>
    5db4:	e3550f7e 	cmp	r5, #504	; 0x1f8
    5db8:	2a000015 	bcs	5e14 <_malloc_r+0xa8>
    5dbc:	e59f76b4 	ldr	r7, [pc, #1716]	; 6478 <_malloc_r+0x70c>
    5dc0:	e1a0e1a5 	lsr	lr, r5, #3
    5dc4:	e087318e 	add	r3, r7, lr, lsl #3
    5dc8:	e593400c 	ldr	r4, [r3, #12]
    5dcc:	e1540003 	cmp	r4, r3
    5dd0:	0a00014a 	beq	6300 <_malloc_r+0x594>
    5dd4:	e5943004 	ldr	r3, [r4, #4]
    5dd8:	e3c33003 	bic	r3, r3, #3
    5ddc:	e0843003 	add	r3, r4, r3
    5de0:	e5930004 	ldr	r0, [r3, #4]
    5de4:	e2841008 	add	r1, r4, #8
    5de8:	e8910006 	ldm	r1, {r1, r2}
    5dec:	e3800001 	orr	r0, r0, #1
    5df0:	e5830004 	str	r0, [r3, #4]
    5df4:	e581200c 	str	r2, [r1, #12]
    5df8:	e5821008 	str	r1, [r2, #8]
    5dfc:	e1a00006 	mov	r0, r6
    5e00:	eb000224 	bl	6698 <__malloc_unlock>
    5e04:	e2844008 	add	r4, r4, #8
    5e08:	e1a00004 	mov	r0, r4
    5e0c:	e28dd004 	add	sp, sp, #4
    5e10:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5e14:	e1b0e4a5 	lsrs	lr, r5, #9
    5e18:	01a0e1a5 	lsreq	lr, r5, #3
    5e1c:	01a0108e 	lsleq	r1, lr, #1
    5e20:	1a000061 	bne	5fac <_malloc_r+0x240>
    5e24:	e59f764c 	ldr	r7, [pc, #1612]	; 6478 <_malloc_r+0x70c>
    5e28:	e0871101 	add	r1, r7, r1, lsl #2
    5e2c:	e591400c 	ldr	r4, [r1, #12]
    5e30:	e1510004 	cmp	r1, r4
    5e34:	1a000005 	bne	5e50 <_malloc_r+0xe4>
    5e38:	ea00000a 	b	5e68 <_malloc_r+0xfc>
    5e3c:	e3530000 	cmp	r3, #0
    5e40:	aa0000d7 	bge	61a4 <_malloc_r+0x438>
    5e44:	e594400c 	ldr	r4, [r4, #12]
    5e48:	e1510004 	cmp	r1, r4
    5e4c:	0a000005 	beq	5e68 <_malloc_r+0xfc>
    5e50:	e5942004 	ldr	r2, [r4, #4]
    5e54:	e3c22003 	bic	r2, r2, #3
    5e58:	e0653002 	rsb	r3, r5, r2
    5e5c:	e353000f 	cmp	r3, #15
    5e60:	dafffff5 	ble	5e3c <_malloc_r+0xd0>
    5e64:	e24ee001 	sub	lr, lr, #1
    5e68:	e28ee001 	add	lr, lr, #1
    5e6c:	e59f3604 	ldr	r3, [pc, #1540]	; 6478 <_malloc_r+0x70c>
    5e70:	e5974010 	ldr	r4, [r7, #16]
    5e74:	e2838008 	add	r8, r3, #8
    5e78:	e1540008 	cmp	r4, r8
    5e7c:	05931004 	ldreq	r1, [r3, #4]
    5e80:	0a000016 	beq	5ee0 <_malloc_r+0x174>
    5e84:	e5942004 	ldr	r2, [r4, #4]
    5e88:	e3c22003 	bic	r2, r2, #3
    5e8c:	e0651002 	rsb	r1, r5, r2
    5e90:	e351000f 	cmp	r1, #15
    5e94:	ca0000f7 	bgt	6278 <_malloc_r+0x50c>
    5e98:	e3510000 	cmp	r1, #0
    5e9c:	e5838014 	str	r8, [r3, #20]
    5ea0:	e5838010 	str	r8, [r3, #16]
    5ea4:	aa000046 	bge	5fc4 <_malloc_r+0x258>
    5ea8:	e3520c02 	cmp	r2, #512	; 0x200
    5eac:	2a0000d2 	bcs	61fc <_malloc_r+0x490>
    5eb0:	e5930004 	ldr	r0, [r3, #4]
    5eb4:	e1a021a2 	lsr	r2, r2, #3
    5eb8:	e1a01142 	asr	r1, r2, #2
    5ebc:	e3a0c001 	mov	ip, #1
    5ec0:	e180111c 	orr	r1, r0, ip, lsl r1
    5ec4:	e0832182 	add	r2, r3, r2, lsl #3
    5ec8:	e5920008 	ldr	r0, [r2, #8]
    5ecc:	e584200c 	str	r2, [r4, #12]
    5ed0:	e5840008 	str	r0, [r4, #8]
    5ed4:	e5831004 	str	r1, [r3, #4]
    5ed8:	e5824008 	str	r4, [r2, #8]
    5edc:	e580400c 	str	r4, [r0, #12]
    5ee0:	e1a0314e 	asr	r3, lr, #2
    5ee4:	e3a00001 	mov	r0, #1
    5ee8:	e1a00310 	lsl	r0, r0, r3
    5eec:	e1500001 	cmp	r0, r1
    5ef0:	8a00003b 	bhi	5fe4 <_malloc_r+0x278>
    5ef4:	e1110000 	tst	r1, r0
    5ef8:	1a000008 	bne	5f20 <_malloc_r+0x1b4>
    5efc:	e1a00080 	lsl	r0, r0, #1
    5f00:	e3cee003 	bic	lr, lr, #3
    5f04:	e1110000 	tst	r1, r0
    5f08:	e28ee004 	add	lr, lr, #4
    5f0c:	1a000003 	bne	5f20 <_malloc_r+0x1b4>
    5f10:	e1a00080 	lsl	r0, r0, #1
    5f14:	e1110000 	tst	r1, r0
    5f18:	e28ee004 	add	lr, lr, #4
    5f1c:	0afffffb 	beq	5f10 <_malloc_r+0x1a4>
    5f20:	e087a18e 	add	sl, r7, lr, lsl #3
    5f24:	e1a0c00a 	mov	ip, sl
    5f28:	e1a0400e 	mov	r4, lr
    5f2c:	e59c300c 	ldr	r3, [ip, #12]
    5f30:	e15c0003 	cmp	ip, r3
    5f34:	1a000005 	bne	5f50 <_malloc_r+0x1e4>
    5f38:	ea0000db 	b	62ac <_malloc_r+0x540>
    5f3c:	e3520000 	cmp	r2, #0
    5f40:	aa0000f4 	bge	6318 <_malloc_r+0x5ac>
    5f44:	e593300c 	ldr	r3, [r3, #12]
    5f48:	e15c0003 	cmp	ip, r3
    5f4c:	0a0000d6 	beq	62ac <_malloc_r+0x540>
    5f50:	e5931004 	ldr	r1, [r3, #4]
    5f54:	e3c11003 	bic	r1, r1, #3
    5f58:	e0652001 	rsb	r2, r5, r1
    5f5c:	e352000f 	cmp	r2, #15
    5f60:	dafffff5 	ble	5f3c <_malloc_r+0x1d0>
    5f64:	e1a04003 	mov	r4, r3
    5f68:	e593000c 	ldr	r0, [r3, #12]
    5f6c:	e5b4c008 	ldr	ip, [r4, #8]!
    5f70:	e0831005 	add	r1, r3, r5
    5f74:	e382e001 	orr	lr, r2, #1
    5f78:	e3855001 	orr	r5, r5, #1
    5f7c:	e58c000c 	str	r0, [ip, #12]
    5f80:	e580c008 	str	ip, [r0, #8]
    5f84:	e5835004 	str	r5, [r3, #4]
    5f88:	e5871014 	str	r1, [r7, #20]
    5f8c:	e5871010 	str	r1, [r7, #16]
    5f90:	e581800c 	str	r8, [r1, #12]
    5f94:	e5818008 	str	r8, [r1, #8]
    5f98:	e581e004 	str	lr, [r1, #4]
    5f9c:	e7812002 	str	r2, [r1, r2]
    5fa0:	e1a00006 	mov	r0, r6
    5fa4:	eb0001bb 	bl	6698 <__malloc_unlock>
    5fa8:	eaffff96 	b	5e08 <_malloc_r+0x9c>
    5fac:	e35e0004 	cmp	lr, #4
    5fb0:	8a000087 	bhi	61d4 <_malloc_r+0x468>
    5fb4:	e1a0e325 	lsr	lr, r5, #6
    5fb8:	e28ee038 	add	lr, lr, #56	; 0x38
    5fbc:	e1a0108e 	lsl	r1, lr, #1
    5fc0:	eaffff97 	b	5e24 <_malloc_r+0xb8>
    5fc4:	e0842002 	add	r2, r4, r2
    5fc8:	e5923004 	ldr	r3, [r2, #4]
    5fcc:	e3833001 	orr	r3, r3, #1
    5fd0:	e5823004 	str	r3, [r2, #4]
    5fd4:	e1a00006 	mov	r0, r6
    5fd8:	eb0001ae 	bl	6698 <__malloc_unlock>
    5fdc:	e2844008 	add	r4, r4, #8
    5fe0:	eaffff88 	b	5e08 <_malloc_r+0x9c>
    5fe4:	e5974008 	ldr	r4, [r7, #8]
    5fe8:	e594a004 	ldr	sl, [r4, #4]
    5fec:	e3caa003 	bic	sl, sl, #3
    5ff0:	e155000a 	cmp	r5, sl
    5ff4:	8a000002 	bhi	6004 <_malloc_r+0x298>
    5ff8:	e065300a 	rsb	r3, r5, sl
    5ffc:	e353000f 	cmp	r3, #15
    6000:	ca00005d 	bgt	617c <_malloc_r+0x410>
    6004:	e59f9470 	ldr	r9, [pc, #1136]	; 647c <_malloc_r+0x710>
    6008:	e5973408 	ldr	r3, [r7, #1032]	; 0x408
    600c:	e599b000 	ldr	fp, [r9]
    6010:	e3730001 	cmn	r3, #1
    6014:	e085b00b 	add	fp, r5, fp
    6018:	128bba01 	addne	fp, fp, #4096	; 0x1000
    601c:	128bb00f 	addne	fp, fp, #15
    6020:	13cbbeff 	bicne	fp, fp, #4080	; 0xff0
    6024:	028bb010 	addeq	fp, fp, #16
    6028:	13cbb00f 	bicne	fp, fp, #15
    602c:	e084200a 	add	r2, r4, sl
    6030:	e1a00006 	mov	r0, r6
    6034:	e1a0100b 	mov	r1, fp
    6038:	e58d2000 	str	r2, [sp]
    603c:	eb0004eb 	bl	73f0 <_sbrk_r>
    6040:	e3700001 	cmn	r0, #1
    6044:	e1a08000 	mov	r8, r0
    6048:	e59d2000 	ldr	r2, [sp]
    604c:	0a0000e2 	beq	63dc <_malloc_r+0x670>
    6050:	e1520000 	cmp	r2, r0
    6054:	8a0000bf 	bhi	6358 <_malloc_r+0x5ec>
    6058:	e5993004 	ldr	r3, [r9, #4]
    605c:	e1520008 	cmp	r2, r8
    6060:	e08b3003 	add	r3, fp, r3
    6064:	e5893004 	str	r3, [r9, #4]
    6068:	0a0000df 	beq	63ec <_malloc_r+0x680>
    606c:	e5971408 	ldr	r1, [r7, #1032]	; 0x408
    6070:	e3710001 	cmn	r1, #1
    6074:	10622008 	rsbne	r2, r2, r8
    6078:	059f33f8 	ldreq	r3, [pc, #1016]	; 6478 <_malloc_r+0x70c>
    607c:	10833002 	addne	r3, r3, r2
    6080:	05838408 	streq	r8, [r3, #1032]	; 0x408
    6084:	15893004 	strne	r3, [r9, #4]
    6088:	e2183007 	ands	r3, r8, #7
    608c:	12632008 	rsbne	r2, r3, #8
    6090:	10888002 	addne	r8, r8, r2
    6094:	12633a01 	rsbne	r3, r3, #4096	; 0x1000
    6098:	12832008 	addne	r2, r3, #8
    609c:	e088300b 	add	r3, r8, fp
    60a0:	03a02a01 	moveq	r2, #4096	; 0x1000
    60a4:	e1a03a03 	lsl	r3, r3, #20
    60a8:	e042ba23 	sub	fp, r2, r3, lsr #20
    60ac:	e1a0100b 	mov	r1, fp
    60b0:	e1a00006 	mov	r0, r6
    60b4:	eb0004cd 	bl	73f0 <_sbrk_r>
    60b8:	e3700001 	cmn	r0, #1
    60bc:	10682000 	rsbne	r2, r8, r0
    60c0:	e5993004 	ldr	r3, [r9, #4]
    60c4:	108b2002 	addne	r2, fp, r2
    60c8:	03a0b000 	moveq	fp, #0
    60cc:	13822001 	orrne	r2, r2, #1
    60d0:	03a02001 	moveq	r2, #1
    60d4:	e08b3003 	add	r3, fp, r3
    60d8:	e1540007 	cmp	r4, r7
    60dc:	e5893004 	str	r3, [r9, #4]
    60e0:	e5878008 	str	r8, [r7, #8]
    60e4:	e5882004 	str	r2, [r8, #4]
    60e8:	0a00000d 	beq	6124 <_malloc_r+0x3b8>
    60ec:	e35a000f 	cmp	sl, #15
    60f0:	9a0000ac 	bls	63a8 <_malloc_r+0x63c>
    60f4:	e594c004 	ldr	ip, [r4, #4]
    60f8:	e24a200c 	sub	r2, sl, #12
    60fc:	e3c22007 	bic	r2, r2, #7
    6100:	e20cc001 	and	ip, ip, #1
    6104:	e0841002 	add	r1, r4, r2
    6108:	e3a00005 	mov	r0, #5
    610c:	e182c00c 	orr	ip, r2, ip
    6110:	e352000f 	cmp	r2, #15
    6114:	e584c004 	str	ip, [r4, #4]
    6118:	e5810004 	str	r0, [r1, #4]
    611c:	e5810008 	str	r0, [r1, #8]
    6120:	8a0000b8 	bhi	6408 <_malloc_r+0x69c>
    6124:	e599202c 	ldr	r2, [r9, #44]	; 0x2c
    6128:	e1530002 	cmp	r3, r2
    612c:	859f2348 	ldrhi	r2, [pc, #840]	; 647c <_malloc_r+0x710>
    6130:	8582302c 	strhi	r3, [r2, #44]	; 0x2c
    6134:	e5992030 	ldr	r2, [r9, #48]	; 0x30
    6138:	e5974008 	ldr	r4, [r7, #8]
    613c:	e1530002 	cmp	r3, r2
    6140:	95943004 	ldrls	r3, [r4, #4]
    6144:	85942004 	ldrhi	r2, [r4, #4]
    6148:	859f132c 	ldrhi	r1, [pc, #812]	; 647c <_malloc_r+0x710>
    614c:	93c33003 	bicls	r3, r3, #3
    6150:	85813030 	strhi	r3, [r1, #48]	; 0x30
    6154:	83c23003 	bichi	r3, r2, #3
    6158:	e1550003 	cmp	r5, r3
    615c:	e0653003 	rsb	r3, r5, r3
    6160:	8a000001 	bhi	616c <_malloc_r+0x400>
    6164:	e353000f 	cmp	r3, #15
    6168:	ca000003 	bgt	617c <_malloc_r+0x410>
    616c:	e1a00006 	mov	r0, r6
    6170:	eb000148 	bl	6698 <__malloc_unlock>
    6174:	e3a04000 	mov	r4, #0
    6178:	eaffff22 	b	5e08 <_malloc_r+0x9c>
    617c:	e0842005 	add	r2, r4, r5
    6180:	e3833001 	orr	r3, r3, #1
    6184:	e3855001 	orr	r5, r5, #1
    6188:	e5845004 	str	r5, [r4, #4]
    618c:	e1a00006 	mov	r0, r6
    6190:	e5823004 	str	r3, [r2, #4]
    6194:	e5872008 	str	r2, [r7, #8]
    6198:	e2844008 	add	r4, r4, #8
    619c:	eb00013d 	bl	6698 <__malloc_unlock>
    61a0:	eaffff18 	b	5e08 <_malloc_r+0x9c>
    61a4:	e0842002 	add	r2, r4, r2
    61a8:	e5920004 	ldr	r0, [r2, #4]
    61ac:	e2841008 	add	r1, r4, #8
    61b0:	e891000a 	ldm	r1, {r1, r3}
    61b4:	e3800001 	orr	r0, r0, #1
    61b8:	e5820004 	str	r0, [r2, #4]
    61bc:	e581300c 	str	r3, [r1, #12]
    61c0:	e5831008 	str	r1, [r3, #8]
    61c4:	e1a00006 	mov	r0, r6
    61c8:	eb000132 	bl	6698 <__malloc_unlock>
    61cc:	e2844008 	add	r4, r4, #8
    61d0:	eaffff0c 	b	5e08 <_malloc_r+0x9c>
    61d4:	e35e0014 	cmp	lr, #20
    61d8:	928ee05b 	addls	lr, lr, #91	; 0x5b
    61dc:	91a0108e 	lslls	r1, lr, #1
    61e0:	9affff0f 	bls	5e24 <_malloc_r+0xb8>
    61e4:	e35e0054 	cmp	lr, #84	; 0x54
    61e8:	8a000061 	bhi	6374 <_malloc_r+0x608>
    61ec:	e1a0e625 	lsr	lr, r5, #12
    61f0:	e28ee06e 	add	lr, lr, #110	; 0x6e
    61f4:	e1a0108e 	lsl	r1, lr, #1
    61f8:	eaffff09 	b	5e24 <_malloc_r+0xb8>
    61fc:	e1a034a2 	lsr	r3, r2, #9
    6200:	e3530004 	cmp	r3, #4
    6204:	9a00004f 	bls	6348 <_malloc_r+0x5dc>
    6208:	e3530014 	cmp	r3, #20
    620c:	9283a05b 	addls	sl, r3, #91	; 0x5b
    6210:	91a0008a 	lslls	r0, sl, #1
    6214:	9a000004 	bls	622c <_malloc_r+0x4c0>
    6218:	e3530054 	cmp	r3, #84	; 0x54
    621c:	8a00007f 	bhi	6420 <_malloc_r+0x6b4>
    6220:	e1a0a622 	lsr	sl, r2, #12
    6224:	e28aa06e 	add	sl, sl, #110	; 0x6e
    6228:	e1a0008a 	lsl	r0, sl, #1
    622c:	e0870100 	add	r0, r7, r0, lsl #2
    6230:	e5903008 	ldr	r3, [r0, #8]
    6234:	e1530000 	cmp	r3, r0
    6238:	e59fc238 	ldr	ip, [pc, #568]	; 6478 <_malloc_r+0x70c>
    623c:	0a000052 	beq	638c <_malloc_r+0x620>
    6240:	e5931004 	ldr	r1, [r3, #4]
    6244:	e3c11003 	bic	r1, r1, #3
    6248:	e1520001 	cmp	r2, r1
    624c:	2a000002 	bcs	625c <_malloc_r+0x4f0>
    6250:	e5933008 	ldr	r3, [r3, #8]
    6254:	e1500003 	cmp	r0, r3
    6258:	1afffff8 	bne	6240 <_malloc_r+0x4d4>
    625c:	e593200c 	ldr	r2, [r3, #12]
    6260:	e5971004 	ldr	r1, [r7, #4]
    6264:	e584200c 	str	r2, [r4, #12]
    6268:	e5843008 	str	r3, [r4, #8]
    626c:	e583400c 	str	r4, [r3, #12]
    6270:	e5824008 	str	r4, [r2, #8]
    6274:	eaffff19 	b	5ee0 <_malloc_r+0x174>
    6278:	e0842005 	add	r2, r4, r5
    627c:	e3810001 	orr	r0, r1, #1
    6280:	e3855001 	orr	r5, r5, #1
    6284:	e5845004 	str	r5, [r4, #4]
    6288:	e5832014 	str	r2, [r3, #20]
    628c:	e5832010 	str	r2, [r3, #16]
    6290:	e582800c 	str	r8, [r2, #12]
    6294:	e9820101 	stmib	r2, {r0, r8}
    6298:	e7821001 	str	r1, [r2, r1]
    629c:	e1a00006 	mov	r0, r6
    62a0:	eb0000fc 	bl	6698 <__malloc_unlock>
    62a4:	e2844008 	add	r4, r4, #8
    62a8:	eafffed6 	b	5e08 <_malloc_r+0x9c>
    62ac:	e2844001 	add	r4, r4, #1
    62b0:	e3140003 	tst	r4, #3
    62b4:	e28cc008 	add	ip, ip, #8
    62b8:	1affff1b 	bne	5f2c <_malloc_r+0x1c0>
    62bc:	e31e0003 	tst	lr, #3
    62c0:	e24a3008 	sub	r3, sl, #8
    62c4:	0a000062 	beq	6454 <_malloc_r+0x6e8>
    62c8:	e59aa000 	ldr	sl, [sl]
    62cc:	e15a0003 	cmp	sl, r3
    62d0:	e24ee001 	sub	lr, lr, #1
    62d4:	0afffff8 	beq	62bc <_malloc_r+0x550>
    62d8:	e5973004 	ldr	r3, [r7, #4]
    62dc:	e1a00080 	lsl	r0, r0, #1
    62e0:	e1500003 	cmp	r0, r3
    62e4:	8affff3e 	bhi	5fe4 <_malloc_r+0x278>
    62e8:	e3500000 	cmp	r0, #0
    62ec:	0affff3c 	beq	5fe4 <_malloc_r+0x278>
    62f0:	e1130000 	tst	r3, r0
    62f4:	0a00005a 	beq	6464 <_malloc_r+0x6f8>
    62f8:	e1a0e004 	mov	lr, r4
    62fc:	eaffff07 	b	5f20 <_malloc_r+0x1b4>
    6300:	e2843008 	add	r3, r4, #8
    6304:	e5944014 	ldr	r4, [r4, #20]
    6308:	e1530004 	cmp	r3, r4
    630c:	028ee002 	addeq	lr, lr, #2
    6310:	0afffed5 	beq	5e6c <_malloc_r+0x100>
    6314:	eafffeae 	b	5dd4 <_malloc_r+0x68>
    6318:	e0831001 	add	r1, r3, r1
    631c:	e5910004 	ldr	r0, [r1, #4]
    6320:	e1a04003 	mov	r4, r3
    6324:	e5b42008 	ldr	r2, [r4, #8]!
    6328:	e593300c 	ldr	r3, [r3, #12]
    632c:	e3800001 	orr	r0, r0, #1
    6330:	e5810004 	str	r0, [r1, #4]
    6334:	e582300c 	str	r3, [r2, #12]
    6338:	e5832008 	str	r2, [r3, #8]
    633c:	e1a00006 	mov	r0, r6
    6340:	eb0000d4 	bl	6698 <__malloc_unlock>
    6344:	eafffeaf 	b	5e08 <_malloc_r+0x9c>
    6348:	e1a0a322 	lsr	sl, r2, #6
    634c:	e28aa038 	add	sl, sl, #56	; 0x38
    6350:	e1a0008a 	lsl	r0, sl, #1
    6354:	eaffffb4 	b	622c <_malloc_r+0x4c0>
    6358:	e1540007 	cmp	r4, r7
    635c:	0affff3d 	beq	6058 <_malloc_r+0x2ec>
    6360:	e59f3110 	ldr	r3, [pc, #272]	; 6478 <_malloc_r+0x70c>
    6364:	e5934008 	ldr	r4, [r3, #8]
    6368:	e5943004 	ldr	r3, [r4, #4]
    636c:	e3c33003 	bic	r3, r3, #3
    6370:	eaffff78 	b	6158 <_malloc_r+0x3ec>
    6374:	e35e0f55 	cmp	lr, #340	; 0x154
    6378:	8a00000f 	bhi	63bc <_malloc_r+0x650>
    637c:	e1a0e7a5 	lsr	lr, r5, #15
    6380:	e28ee077 	add	lr, lr, #119	; 0x77
    6384:	e1a0108e 	lsl	r1, lr, #1
    6388:	eafffea5 	b	5e24 <_malloc_r+0xb8>
    638c:	e59c2004 	ldr	r2, [ip, #4]
    6390:	e1a0a14a 	asr	sl, sl, #2
    6394:	e3a01001 	mov	r1, #1
    6398:	e1821a11 	orr	r1, r2, r1, lsl sl
    639c:	e1a02003 	mov	r2, r3
    63a0:	e58c1004 	str	r1, [ip, #4]
    63a4:	eaffffae 	b	6264 <_malloc_r+0x4f8>
    63a8:	e3a03001 	mov	r3, #1
    63ac:	e5883004 	str	r3, [r8, #4]
    63b0:	e1a04008 	mov	r4, r8
    63b4:	e3a03000 	mov	r3, #0
    63b8:	eaffff66 	b	6158 <_malloc_r+0x3ec>
    63bc:	e59f30bc 	ldr	r3, [pc, #188]	; 6480 <_malloc_r+0x714>
    63c0:	e15e0003 	cmp	lr, r3
    63c4:	91a0e925 	lsrls	lr, r5, #18
    63c8:	928ee07c 	addls	lr, lr, #124	; 0x7c
    63cc:	91a0108e 	lslls	r1, lr, #1
    63d0:	83a010fc 	movhi	r1, #252	; 0xfc
    63d4:	83a0e07e 	movhi	lr, #126	; 0x7e
    63d8:	eafffe91 	b	5e24 <_malloc_r+0xb8>
    63dc:	e5974008 	ldr	r4, [r7, #8]
    63e0:	e5943004 	ldr	r3, [r4, #4]
    63e4:	e3c33003 	bic	r3, r3, #3
    63e8:	eaffff5a 	b	6158 <_malloc_r+0x3ec>
    63ec:	e1b01a02 	lsls	r1, r2, #20
    63f0:	1affff1d 	bne	606c <_malloc_r+0x300>
    63f4:	e5972008 	ldr	r2, [r7, #8]
    63f8:	e08b100a 	add	r1, fp, sl
    63fc:	e3811001 	orr	r1, r1, #1
    6400:	e5821004 	str	r1, [r2, #4]
    6404:	eaffff46 	b	6124 <_malloc_r+0x3b8>
    6408:	e1a00006 	mov	r0, r6
    640c:	e2841008 	add	r1, r4, #8
    6410:	ebfffcee 	bl	57d0 <_free_r>
    6414:	e59f3060 	ldr	r3, [pc, #96]	; 647c <_malloc_r+0x710>
    6418:	e5933004 	ldr	r3, [r3, #4]
    641c:	eaffff40 	b	6124 <_malloc_r+0x3b8>
    6420:	e3530f55 	cmp	r3, #340	; 0x154
    6424:	91a0a7a2 	lsrls	sl, r2, #15
    6428:	928aa077 	addls	sl, sl, #119	; 0x77
    642c:	91a0008a 	lslls	r0, sl, #1
    6430:	9affff7d 	bls	622c <_malloc_r+0x4c0>
    6434:	e59f1044 	ldr	r1, [pc, #68]	; 6480 <_malloc_r+0x714>
    6438:	e1530001 	cmp	r3, r1
    643c:	91a0a922 	lsrls	sl, r2, #18
    6440:	928aa07c 	addls	sl, sl, #124	; 0x7c
    6444:	91a0008a 	lslls	r0, sl, #1
    6448:	83a000fc 	movhi	r0, #252	; 0xfc
    644c:	83a0a07e 	movhi	sl, #126	; 0x7e
    6450:	eaffff75 	b	622c <_malloc_r+0x4c0>
    6454:	e5973004 	ldr	r3, [r7, #4]
    6458:	e1c33000 	bic	r3, r3, r0
    645c:	e5873004 	str	r3, [r7, #4]
    6460:	eaffff9d 	b	62dc <_malloc_r+0x570>
    6464:	e1a00080 	lsl	r0, r0, #1
    6468:	e1130000 	tst	r3, r0
    646c:	e2844004 	add	r4, r4, #4
    6470:	1affffa0 	bne	62f8 <_malloc_r+0x58c>
    6474:	eafffffa 	b	6464 <_malloc_r+0x6f8>
    6478:	0000b0ac 	.word	0x0000b0ac
    647c:	0000b4cc 	.word	0x0000b4cc
    6480:	00000554 	.word	0x00000554

00006484 <memchr>:
    6484:	e3100003 	tst	r0, #3
    6488:	e92d0070 	push	{r4, r5, r6}
    648c:	e20110ff 	and	r1, r1, #255	; 0xff
    6490:	0a00003c 	beq	6588 <memchr+0x104>
    6494:	e3520000 	cmp	r2, #0
    6498:	e242c001 	sub	ip, r2, #1
    649c:	0a00003b 	beq	6590 <memchr+0x10c>
    64a0:	e5d03000 	ldrb	r3, [r0]
    64a4:	e1530001 	cmp	r3, r1
    64a8:	0a00001f 	beq	652c <memchr+0xa8>
    64ac:	e2803001 	add	r3, r0, #1
    64b0:	ea000006 	b	64d0 <memchr+0x4c>
    64b4:	e35c0000 	cmp	ip, #0
    64b8:	0a00001d 	beq	6534 <memchr+0xb0>
    64bc:	e5d02000 	ldrb	r2, [r0]
    64c0:	e1520001 	cmp	r2, r1
    64c4:	e2833001 	add	r3, r3, #1
    64c8:	e24cc001 	sub	ip, ip, #1
    64cc:	0a000016 	beq	652c <memchr+0xa8>
    64d0:	e3130003 	tst	r3, #3
    64d4:	e1a00003 	mov	r0, r3
    64d8:	1afffff5 	bne	64b4 <memchr+0x30>
    64dc:	e35c0003 	cmp	ip, #3
    64e0:	8a000015 	bhi	653c <memchr+0xb8>
    64e4:	e35c0000 	cmp	ip, #0
    64e8:	e24c4001 	sub	r4, ip, #1
    64ec:	0a000010 	beq	6534 <memchr+0xb0>
    64f0:	e5d03000 	ldrb	r3, [r0]
    64f4:	e1530001 	cmp	r3, r1
    64f8:	0a00000b 	beq	652c <memchr+0xa8>
    64fc:	e2802001 	add	r2, r0, #1
    6500:	e3a03000 	mov	r3, #0
    6504:	ea000004 	b	651c <memchr+0x98>
    6508:	e5d0c000 	ldrb	ip, [r0]
    650c:	e15c0001 	cmp	ip, r1
    6510:	e2822001 	add	r2, r2, #1
    6514:	e2833001 	add	r3, r3, #1
    6518:	0a000003 	beq	652c <memchr+0xa8>
    651c:	e1540003 	cmp	r4, r3
    6520:	e1a00002 	mov	r0, r2
    6524:	1afffff7 	bne	6508 <memchr+0x84>
    6528:	e3a00000 	mov	r0, #0
    652c:	e8bd0070 	pop	{r4, r5, r6}
    6530:	e12fff1e 	bx	lr
    6534:	e1a0000c 	mov	r0, ip
    6538:	eafffffb 	b	652c <memchr+0xa8>
    653c:	e1816401 	orr	r6, r1, r1, lsl #8
    6540:	e1866806 	orr	r6, r6, r6, lsl #16
    6544:	e5903000 	ldr	r3, [r0]
    6548:	e59f4048 	ldr	r4, [pc, #72]	; 6598 <memchr+0x114>
    654c:	e0263003 	eor	r3, r6, r3
    6550:	e0834004 	add	r4, r3, r4
    6554:	e59f2040 	ldr	r2, [pc, #64]	; 659c <memchr+0x118>
    6558:	e1c44003 	bic	r4, r4, r3
    655c:	e0042002 	and	r2, r4, r2
    6560:	e3520000 	cmp	r2, #0
    6564:	e1a05000 	mov	r5, r0
    6568:	e2800004 	add	r0, r0, #4
    656c:	1a000003 	bne	6580 <memchr+0xfc>
    6570:	e24cc004 	sub	ip, ip, #4
    6574:	e35c0003 	cmp	ip, #3
    6578:	8afffff1 	bhi	6544 <memchr+0xc0>
    657c:	eaffffd8 	b	64e4 <memchr+0x60>
    6580:	e1a00005 	mov	r0, r5
    6584:	eaffffd6 	b	64e4 <memchr+0x60>
    6588:	e1a0c002 	mov	ip, r2
    658c:	eaffffd2 	b	64dc <memchr+0x58>
    6590:	e1a00002 	mov	r0, r2
    6594:	eaffffe4 	b	652c <memchr+0xa8>
    6598:	fefefeff 	.word	0xfefefeff
    659c:	80808080 	.word	0x80808080

000065a0 <memcpy>:
    65a0:	e352000f 	cmp	r2, #15
    65a4:	e92d00f0 	push	{r4, r5, r6, r7}
    65a8:	9a00002a 	bls	6658 <memcpy+0xb8>
    65ac:	e1813000 	orr	r3, r1, r0
    65b0:	e3130003 	tst	r3, #3
    65b4:	1a000032 	bne	6684 <memcpy+0xe4>
    65b8:	e1a0c001 	mov	ip, r1
    65bc:	e1a03000 	mov	r3, r0
    65c0:	e1a04002 	mov	r4, r2
    65c4:	e59c5000 	ldr	r5, [ip]
    65c8:	e5835000 	str	r5, [r3]
    65cc:	e59c5004 	ldr	r5, [ip, #4]
    65d0:	e5835004 	str	r5, [r3, #4]
    65d4:	e59c5008 	ldr	r5, [ip, #8]
    65d8:	e5835008 	str	r5, [r3, #8]
    65dc:	e2444010 	sub	r4, r4, #16
    65e0:	e59c500c 	ldr	r5, [ip, #12]
    65e4:	e354000f 	cmp	r4, #15
    65e8:	e583500c 	str	r5, [r3, #12]
    65ec:	e28cc010 	add	ip, ip, #16
    65f0:	e2833010 	add	r3, r3, #16
    65f4:	8afffff2 	bhi	65c4 <memcpy+0x24>
    65f8:	e2424010 	sub	r4, r2, #16
    65fc:	e3c4400f 	bic	r4, r4, #15
    6600:	e202c00f 	and	ip, r2, #15
    6604:	e2844010 	add	r4, r4, #16
    6608:	e35c0003 	cmp	ip, #3
    660c:	e0803004 	add	r3, r0, r4
    6610:	e0811004 	add	r1, r1, r4
    6614:	9a00001c 	bls	668c <memcpy+0xec>
    6618:	e24cc004 	sub	ip, ip, #4
    661c:	e1a0712c 	lsr	r7, ip, #2
    6620:	e0816107 	add	r6, r1, r7, lsl #2
    6624:	e1a0c001 	mov	ip, r1
    6628:	e2866004 	add	r6, r6, #4
    662c:	e1a04003 	mov	r4, r3
    6630:	e49c5004 	ldr	r5, [ip], #4
    6634:	e15c0006 	cmp	ip, r6
    6638:	e4845004 	str	r5, [r4], #4
    663c:	1afffffb 	bne	6630 <memcpy+0x90>
    6640:	e287c001 	add	ip, r7, #1
    6644:	e1a0c10c 	lsl	ip, ip, #2
    6648:	e2022003 	and	r2, r2, #3
    664c:	e081100c 	add	r1, r1, ip
    6650:	e083300c 	add	r3, r3, ip
    6654:	ea000000 	b	665c <memcpy+0xbc>
    6658:	e1a03000 	mov	r3, r0
    665c:	e3520000 	cmp	r2, #0
    6660:	0a000005 	beq	667c <memcpy+0xdc>
    6664:	e2411001 	sub	r1, r1, #1
    6668:	e0832002 	add	r2, r3, r2
    666c:	e5f1c001 	ldrb	ip, [r1, #1]!
    6670:	e4c3c001 	strb	ip, [r3], #1
    6674:	e1530002 	cmp	r3, r2
    6678:	1afffffb 	bne	666c <memcpy+0xcc>
    667c:	e8bd00f0 	pop	{r4, r5, r6, r7}
    6680:	e12fff1e 	bx	lr
    6684:	e1a03000 	mov	r3, r0
    6688:	eafffff5 	b	6664 <memcpy+0xc4>
    668c:	e1a0200c 	mov	r2, ip
    6690:	eafffff1 	b	665c <memcpy+0xbc>

00006694 <__malloc_lock>:
    6694:	e12fff1e 	bx	lr

00006698 <__malloc_unlock>:
    6698:	e12fff1e 	bx	lr

0000669c <_Balloc>:
    669c:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
    66a0:	e3530000 	cmp	r3, #0
    66a4:	e92d4070 	push	{r4, r5, r6, lr}
    66a8:	e1a05000 	mov	r5, r0
    66ac:	e1a04001 	mov	r4, r1
    66b0:	0a000008 	beq	66d8 <_Balloc+0x3c>
    66b4:	e7930104 	ldr	r0, [r3, r4, lsl #2]
    66b8:	e3500000 	cmp	r0, #0
    66bc:	0a00000e 	beq	66fc <_Balloc+0x60>
    66c0:	e5902000 	ldr	r2, [r0]
    66c4:	e7832104 	str	r2, [r3, r4, lsl #2]
    66c8:	e3a03000 	mov	r3, #0
    66cc:	e5803010 	str	r3, [r0, #16]
    66d0:	e580300c 	str	r3, [r0, #12]
    66d4:	e8bd8070 	pop	{r4, r5, r6, pc}
    66d8:	e3a01004 	mov	r1, #4
    66dc:	e3a02021 	mov	r2, #33	; 0x21
    66e0:	eb000888 	bl	8908 <_calloc_r>
    66e4:	e3500000 	cmp	r0, #0
    66e8:	e1a03000 	mov	r3, r0
    66ec:	e585004c 	str	r0, [r5, #76]	; 0x4c
    66f0:	1affffef 	bne	66b4 <_Balloc+0x18>
    66f4:	e3a00000 	mov	r0, #0
    66f8:	e8bd8070 	pop	{r4, r5, r6, pc}
    66fc:	e3a01001 	mov	r1, #1
    6700:	e1a06411 	lsl	r6, r1, r4
    6704:	e2862005 	add	r2, r6, #5
    6708:	e1a00005 	mov	r0, r5
    670c:	e1a02102 	lsl	r2, r2, #2
    6710:	eb00087c 	bl	8908 <_calloc_r>
    6714:	e3500000 	cmp	r0, #0
    6718:	0afffff5 	beq	66f4 <_Balloc+0x58>
    671c:	e9800050 	stmib	r0, {r4, r6}
    6720:	eaffffe8 	b	66c8 <_Balloc+0x2c>

00006724 <_Bfree>:
    6724:	e3510000 	cmp	r1, #0
    6728:	1590304c 	ldrne	r3, [r0, #76]	; 0x4c
    672c:	15912004 	ldrne	r2, [r1, #4]
    6730:	17930102 	ldrne	r0, [r3, r2, lsl #2]
    6734:	15810000 	strne	r0, [r1]
    6738:	17831102 	strne	r1, [r3, r2, lsl #2]
    673c:	e12fff1e 	bx	lr

00006740 <__multadd>:
    6740:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    6744:	e5917010 	ldr	r7, [r1, #16]
    6748:	e24dd004 	sub	sp, sp, #4
    674c:	e1a08001 	mov	r8, r1
    6750:	e1a0a000 	mov	sl, r0
    6754:	e2814014 	add	r4, r1, #20
    6758:	e3a0c000 	mov	ip, #0
    675c:	e5946000 	ldr	r6, [r4]
    6760:	e1a05806 	lsl	r5, r6, #16
    6764:	e1a05825 	lsr	r5, r5, #16
    6768:	e0253592 	mla	r5, r2, r5, r3
    676c:	e1a03826 	lsr	r3, r6, #16
    6770:	e0030392 	mul	r3, r2, r3
    6774:	e1a01805 	lsl	r1, r5, #16
    6778:	e0833825 	add	r3, r3, r5, lsr #16
    677c:	e1a01821 	lsr	r1, r1, #16
    6780:	e28cc001 	add	ip, ip, #1
    6784:	e0811803 	add	r1, r1, r3, lsl #16
    6788:	e157000c 	cmp	r7, ip
    678c:	e1a03823 	lsr	r3, r3, #16
    6790:	e4841004 	str	r1, [r4], #4
    6794:	cafffff0 	bgt	675c <__multadd+0x1c>
    6798:	e3530000 	cmp	r3, #0
    679c:	0a000006 	beq	67bc <__multadd+0x7c>
    67a0:	e5982008 	ldr	r2, [r8, #8]
    67a4:	e1570002 	cmp	r7, r2
    67a8:	aa000006 	bge	67c8 <__multadd+0x88>
    67ac:	e2872005 	add	r2, r7, #5
    67b0:	e2877001 	add	r7, r7, #1
    67b4:	e7883102 	str	r3, [r8, r2, lsl #2]
    67b8:	e5887010 	str	r7, [r8, #16]
    67bc:	e1a00008 	mov	r0, r8
    67c0:	e28dd004 	add	sp, sp, #4
    67c4:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    67c8:	e5981004 	ldr	r1, [r8, #4]
    67cc:	e1a0000a 	mov	r0, sl
    67d0:	e2811001 	add	r1, r1, #1
    67d4:	e58d3000 	str	r3, [sp]
    67d8:	ebffffaf 	bl	669c <_Balloc>
    67dc:	e5982010 	ldr	r2, [r8, #16]
    67e0:	e2822002 	add	r2, r2, #2
    67e4:	e288100c 	add	r1, r8, #12
    67e8:	e1a04000 	mov	r4, r0
    67ec:	e1a02102 	lsl	r2, r2, #2
    67f0:	e280000c 	add	r0, r0, #12
    67f4:	ebffff69 	bl	65a0 <memcpy>
    67f8:	e5981004 	ldr	r1, [r8, #4]
    67fc:	e59a204c 	ldr	r2, [sl, #76]	; 0x4c
    6800:	e7920101 	ldr	r0, [r2, r1, lsl #2]
    6804:	e59d3000 	ldr	r3, [sp]
    6808:	e5880000 	str	r0, [r8]
    680c:	e7828101 	str	r8, [r2, r1, lsl #2]
    6810:	e1a08004 	mov	r8, r4
    6814:	eaffffe4 	b	67ac <__multadd+0x6c>

00006818 <__s2b>:
    6818:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    681c:	e283c008 	add	ip, r3, #8
    6820:	e1a07003 	mov	r7, r3
    6824:	e59f30d4 	ldr	r3, [pc, #212]	; 6900 <__s2b+0xe8>
    6828:	e0c3e39c 	smull	lr, r3, ip, r3
    682c:	e1a0cfcc 	asr	ip, ip, #31
    6830:	e06c30c3 	rsb	r3, ip, r3, asr #1
    6834:	e3530001 	cmp	r3, #1
    6838:	e1a05000 	mov	r5, r0
    683c:	e1a04001 	mov	r4, r1
    6840:	e1a08002 	mov	r8, r2
    6844:	da00002b 	ble	68f8 <__s2b+0xe0>
    6848:	e3a0c001 	mov	ip, #1
    684c:	e3a01000 	mov	r1, #0
    6850:	e1a0c08c 	lsl	ip, ip, #1
    6854:	e153000c 	cmp	r3, ip
    6858:	e2811001 	add	r1, r1, #1
    685c:	cafffffb 	bgt	6850 <__s2b+0x38>
    6860:	e1a00005 	mov	r0, r5
    6864:	ebffff8c 	bl	669c <_Balloc>
    6868:	e59d301c 	ldr	r3, [sp, #28]
    686c:	e3580009 	cmp	r8, #9
    6870:	e5803014 	str	r3, [r0, #20]
    6874:	e3a03001 	mov	r3, #1
    6878:	e1a01000 	mov	r1, r0
    687c:	e5803010 	str	r3, [r0, #16]
    6880:	d284400a 	addle	r4, r4, #10
    6884:	d3a08009 	movle	r8, #9
    6888:	da00000c 	ble	68c0 <__s2b+0xa8>
    688c:	e284a009 	add	sl, r4, #9
    6890:	e1a0600a 	mov	r6, sl
    6894:	e0844008 	add	r4, r4, r8
    6898:	e4d63001 	ldrb	r3, [r6], #1
    689c:	e1a00005 	mov	r0, r5
    68a0:	e3a0200a 	mov	r2, #10
    68a4:	e2433030 	sub	r3, r3, #48	; 0x30
    68a8:	ebffffa4 	bl	6740 <__multadd>
    68ac:	e1560004 	cmp	r6, r4
    68b0:	e1a01000 	mov	r1, r0
    68b4:	1afffff7 	bne	6898 <__s2b+0x80>
    68b8:	e08a4008 	add	r4, sl, r8
    68bc:	e2444008 	sub	r4, r4, #8
    68c0:	e1570008 	cmp	r7, r8
    68c4:	da000009 	ble	68f0 <__s2b+0xd8>
    68c8:	e0687007 	rsb	r7, r8, r7
    68cc:	e0847007 	add	r7, r4, r7
    68d0:	e4d43001 	ldrb	r3, [r4], #1
    68d4:	e1a00005 	mov	r0, r5
    68d8:	e3a0200a 	mov	r2, #10
    68dc:	e2433030 	sub	r3, r3, #48	; 0x30
    68e0:	ebffff96 	bl	6740 <__multadd>
    68e4:	e1540007 	cmp	r4, r7
    68e8:	e1a01000 	mov	r1, r0
    68ec:	1afffff7 	bne	68d0 <__s2b+0xb8>
    68f0:	e1a00001 	mov	r0, r1
    68f4:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    68f8:	e3a01000 	mov	r1, #0
    68fc:	eaffffd7 	b	6860 <__s2b+0x48>
    6900:	38e38e39 	.word	0x38e38e39

00006904 <__hi0bits>:
    6904:	e1b02820 	lsrs	r2, r0, #16
    6908:	e1a03000 	mov	r3, r0
    690c:	01a03800 	lsleq	r3, r0, #16
    6910:	13a00000 	movne	r0, #0
    6914:	03a00010 	moveq	r0, #16
    6918:	e31304ff 	tst	r3, #-16777216	; 0xff000000
    691c:	01a03403 	lsleq	r3, r3, #8
    6920:	02800008 	addeq	r0, r0, #8
    6924:	e313020f 	tst	r3, #-268435456	; 0xf0000000
    6928:	01a03203 	lsleq	r3, r3, #4
    692c:	02800004 	addeq	r0, r0, #4
    6930:	e3130103 	tst	r3, #-1073741824	; 0xc0000000
    6934:	01a03103 	lsleq	r3, r3, #2
    6938:	02800002 	addeq	r0, r0, #2
    693c:	e3530000 	cmp	r3, #0
    6940:	b12fff1e 	bxlt	lr
    6944:	e3130101 	tst	r3, #1073741824	; 0x40000000
    6948:	12800001 	addne	r0, r0, #1
    694c:	03a00020 	moveq	r0, #32
    6950:	e12fff1e 	bx	lr

00006954 <__lo0bits>:
    6954:	e5903000 	ldr	r3, [r0]
    6958:	e1a02000 	mov	r2, r0
    695c:	e2130007 	ands	r0, r3, #7
    6960:	0a000009 	beq	698c <__lo0bits+0x38>
    6964:	e3130001 	tst	r3, #1
    6968:	1a00001c 	bne	69e0 <__lo0bits+0x8c>
    696c:	e3130002 	tst	r3, #2
    6970:	11a030a3 	lsrne	r3, r3, #1
    6974:	01a03123 	lsreq	r3, r3, #2
    6978:	13a00001 	movne	r0, #1
    697c:	15823000 	strne	r3, [r2]
    6980:	05823000 	streq	r3, [r2]
    6984:	03a00002 	moveq	r0, #2
    6988:	e12fff1e 	bx	lr
    698c:	e1b01803 	lsls	r1, r3, #16
    6990:	01a03823 	lsreq	r3, r3, #16
    6994:	03a00010 	moveq	r0, #16
    6998:	e31300ff 	tst	r3, #255	; 0xff
    699c:	01a03423 	lsreq	r3, r3, #8
    69a0:	02800008 	addeq	r0, r0, #8
    69a4:	e313000f 	tst	r3, #15
    69a8:	01a03223 	lsreq	r3, r3, #4
    69ac:	02800004 	addeq	r0, r0, #4
    69b0:	e3130003 	tst	r3, #3
    69b4:	01a03123 	lsreq	r3, r3, #2
    69b8:	02800002 	addeq	r0, r0, #2
    69bc:	e3130001 	tst	r3, #1
    69c0:	1a000004 	bne	69d8 <__lo0bits+0x84>
    69c4:	e1b030a3 	lsrs	r3, r3, #1
    69c8:	1a000001 	bne	69d4 <__lo0bits+0x80>
    69cc:	e3a00020 	mov	r0, #32
    69d0:	e12fff1e 	bx	lr
    69d4:	e2800001 	add	r0, r0, #1
    69d8:	e5823000 	str	r3, [r2]
    69dc:	e12fff1e 	bx	lr
    69e0:	e3a00000 	mov	r0, #0
    69e4:	e12fff1e 	bx	lr

000069e8 <__i2b>:
    69e8:	e92d4010 	push	{r4, lr}
    69ec:	e1a04001 	mov	r4, r1
    69f0:	e3a01001 	mov	r1, #1
    69f4:	ebffff28 	bl	669c <_Balloc>
    69f8:	e3a02001 	mov	r2, #1
    69fc:	e5804014 	str	r4, [r0, #20]
    6a00:	e5802010 	str	r2, [r0, #16]
    6a04:	e8bd8010 	pop	{r4, pc}

00006a08 <__multiply>:
    6a08:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6a0c:	e5918010 	ldr	r8, [r1, #16]
    6a10:	e5924010 	ldr	r4, [r2, #16]
    6a14:	e1580004 	cmp	r8, r4
    6a18:	e24dd00c 	sub	sp, sp, #12
    6a1c:	e1a06001 	mov	r6, r1
    6a20:	e1a0a002 	mov	sl, r2
    6a24:	aa000004 	bge	6a3c <__multiply+0x34>
    6a28:	e1a02008 	mov	r2, r8
    6a2c:	e1a0600a 	mov	r6, sl
    6a30:	e1a08004 	mov	r8, r4
    6a34:	e1a0a001 	mov	sl, r1
    6a38:	e1a04002 	mov	r4, r2
    6a3c:	e5963008 	ldr	r3, [r6, #8]
    6a40:	e0885004 	add	r5, r8, r4
    6a44:	e5961004 	ldr	r1, [r6, #4]
    6a48:	e1550003 	cmp	r5, r3
    6a4c:	c2811001 	addgt	r1, r1, #1
    6a50:	ebffff11 	bl	669c <_Balloc>
    6a54:	e2857005 	add	r7, r5, #5
    6a58:	e2803014 	add	r3, r0, #20
    6a5c:	e0807107 	add	r7, r0, r7, lsl #2
    6a60:	e1530007 	cmp	r3, r7
    6a64:	e58d0000 	str	r0, [sp]
    6a68:	33a00000 	movcc	r0, #0
    6a6c:	2a000002 	bcs	6a7c <__multiply+0x74>
    6a70:	e4830004 	str	r0, [r3], #4
    6a74:	e1570003 	cmp	r7, r3
    6a78:	8afffffc 	bhi	6a70 <__multiply+0x68>
    6a7c:	e2843005 	add	r3, r4, #5
    6a80:	e08a3103 	add	r3, sl, r3, lsl #2
    6a84:	e28a4014 	add	r4, sl, #20
    6a88:	e288c005 	add	ip, r8, #5
    6a8c:	e1540003 	cmp	r4, r3
    6a90:	e2862014 	add	r2, r6, #20
    6a94:	e086c10c 	add	ip, r6, ip, lsl #2
    6a98:	2a000041 	bcs	6ba4 <__multiply+0x19c>
    6a9c:	e59d1000 	ldr	r1, [sp]
    6aa0:	e58d7004 	str	r7, [sp, #4]
    6aa4:	e58d5008 	str	r5, [sp, #8]
    6aa8:	e2816018 	add	r6, r1, #24
    6aac:	e1a07003 	mov	r7, r3
    6ab0:	e1a05002 	mov	r5, r2
    6ab4:	e4948004 	ldr	r8, [r4], #4
    6ab8:	e1a0a808 	lsl	sl, r8, #16
    6abc:	e1b0a82a 	lsrs	sl, sl, #16
    6ac0:	0a000017 	beq	6b24 <__multiply+0x11c>
    6ac4:	e1a02005 	mov	r2, r5
    6ac8:	e2463004 	sub	r3, r6, #4
    6acc:	e3a08000 	mov	r8, #0
    6ad0:	e4920004 	ldr	r0, [r2], #4
    6ad4:	e5931000 	ldr	r1, [r3]
    6ad8:	e1a0b800 	lsl	fp, r0, #16
    6adc:	e1a09801 	lsl	r9, r1, #16
    6ae0:	e1a0b82b 	lsr	fp, fp, #16
    6ae4:	e1a09829 	lsr	r9, r9, #16
    6ae8:	e0299b9a 	mla	r9, sl, fp, r9
    6aec:	e1a01821 	lsr	r1, r1, #16
    6af0:	e1a00820 	lsr	r0, r0, #16
    6af4:	e020109a 	mla	r0, sl, r0, r1
    6af8:	e0898008 	add	r8, r9, r8
    6afc:	e1a01808 	lsl	r1, r8, #16
    6b00:	e1a01821 	lsr	r1, r1, #16
    6b04:	e0808828 	add	r8, r0, r8, lsr #16
    6b08:	e1811808 	orr	r1, r1, r8, lsl #16
    6b0c:	e15c0002 	cmp	ip, r2
    6b10:	e1a08828 	lsr	r8, r8, #16
    6b14:	e4831004 	str	r1, [r3], #4
    6b18:	8affffec 	bhi	6ad0 <__multiply+0xc8>
    6b1c:	e5838000 	str	r8, [r3]
    6b20:	e5148004 	ldr	r8, [r4, #-4]
    6b24:	e1b08828 	lsrs	r8, r8, #16
    6b28:	0a000018 	beq	6b90 <__multiply+0x188>
    6b2c:	e516a004 	ldr	sl, [r6, #-4]
    6b30:	e1a02005 	mov	r2, r5
    6b34:	e1a03006 	mov	r3, r6
    6b38:	e1a0100a 	mov	r1, sl
    6b3c:	e3a09000 	mov	r9, #0
    6b40:	e1d200b0 	ldrh	r0, [r2]
    6b44:	e1a01821 	lsr	r1, r1, #16
    6b48:	e0211098 	mla	r1, r8, r0, r1
    6b4c:	e1a0a80a 	lsl	sl, sl, #16
    6b50:	e0819009 	add	r9, r1, r9
    6b54:	e1a0a82a 	lsr	sl, sl, #16
    6b58:	e18aa809 	orr	sl, sl, r9, lsl #16
    6b5c:	e503a004 	str	sl, [r3, #-4]
    6b60:	e1a0b003 	mov	fp, r3
    6b64:	e4931004 	ldr	r1, [r3], #4
    6b68:	e492a004 	ldr	sl, [r2], #4
    6b6c:	e1a00801 	lsl	r0, r1, #16
    6b70:	e1a0a82a 	lsr	sl, sl, #16
    6b74:	e1a00820 	lsr	r0, r0, #16
    6b78:	e02a0a98 	mla	sl, r8, sl, r0
    6b7c:	e15c0002 	cmp	ip, r2
    6b80:	e08aa829 	add	sl, sl, r9, lsr #16
    6b84:	e1a0982a 	lsr	r9, sl, #16
    6b88:	8affffec 	bhi	6b40 <__multiply+0x138>
    6b8c:	e58ba000 	str	sl, [fp]
    6b90:	e1570004 	cmp	r7, r4
    6b94:	e2866004 	add	r6, r6, #4
    6b98:	8affffc5 	bhi	6ab4 <__multiply+0xac>
    6b9c:	e59d7004 	ldr	r7, [sp, #4]
    6ba0:	e59d5008 	ldr	r5, [sp, #8]
    6ba4:	e3550000 	cmp	r5, #0
    6ba8:	da000009 	ble	6bd4 <__multiply+0x1cc>
    6bac:	e5173004 	ldr	r3, [r7, #-4]
    6bb0:	e3530000 	cmp	r3, #0
    6bb4:	e2477004 	sub	r7, r7, #4
    6bb8:	0a000003 	beq	6bcc <__multiply+0x1c4>
    6bbc:	ea000004 	b	6bd4 <__multiply+0x1cc>
    6bc0:	e5373004 	ldr	r3, [r7, #-4]!
    6bc4:	e3530000 	cmp	r3, #0
    6bc8:	1a000001 	bne	6bd4 <__multiply+0x1cc>
    6bcc:	e2555001 	subs	r5, r5, #1
    6bd0:	1afffffa 	bne	6bc0 <__multiply+0x1b8>
    6bd4:	e59d2000 	ldr	r2, [sp]
    6bd8:	e5825010 	str	r5, [r2, #16]
    6bdc:	e1a00002 	mov	r0, r2
    6be0:	e28dd00c 	add	sp, sp, #12
    6be4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}

00006be8 <__pow5mult>:
    6be8:	e2123003 	ands	r3, r2, #3
    6bec:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    6bf0:	e1a04002 	mov	r4, r2
    6bf4:	e1a08000 	mov	r8, r0
    6bf8:	e1a07001 	mov	r7, r1
    6bfc:	1a000024 	bne	6c94 <__pow5mult+0xac>
    6c00:	e1b04144 	asrs	r4, r4, #2
    6c04:	0a000018 	beq	6c6c <__pow5mult+0x84>
    6c08:	e5986048 	ldr	r6, [r8, #72]	; 0x48
    6c0c:	e3560000 	cmp	r6, #0
    6c10:	1a000006 	bne	6c30 <__pow5mult+0x48>
    6c14:	ea000025 	b	6cb0 <__pow5mult+0xc8>
    6c18:	e1b040c4 	asrs	r4, r4, #1
    6c1c:	0a000012 	beq	6c6c <__pow5mult+0x84>
    6c20:	e5965000 	ldr	r5, [r6]
    6c24:	e3550000 	cmp	r5, #0
    6c28:	11a06005 	movne	r6, r5
    6c2c:	0a000010 	beq	6c74 <__pow5mult+0x8c>
    6c30:	e3140001 	tst	r4, #1
    6c34:	0afffff7 	beq	6c18 <__pow5mult+0x30>
    6c38:	e1a01007 	mov	r1, r7
    6c3c:	e1a02006 	mov	r2, r6
    6c40:	e1a00008 	mov	r0, r8
    6c44:	ebffff6f 	bl	6a08 <__multiply>
    6c48:	e3570000 	cmp	r7, #0
    6c4c:	15972004 	ldrne	r2, [r7, #4]
    6c50:	1598304c 	ldrne	r3, [r8, #76]	; 0x4c
    6c54:	17931102 	ldrne	r1, [r3, r2, lsl #2]
    6c58:	15871000 	strne	r1, [r7]
    6c5c:	17837102 	strne	r7, [r3, r2, lsl #2]
    6c60:	e1b040c4 	asrs	r4, r4, #1
    6c64:	e1a07000 	mov	r7, r0
    6c68:	1affffec 	bne	6c20 <__pow5mult+0x38>
    6c6c:	e1a00007 	mov	r0, r7
    6c70:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    6c74:	e1a01006 	mov	r1, r6
    6c78:	e1a02006 	mov	r2, r6
    6c7c:	e1a00008 	mov	r0, r8
    6c80:	ebffff60 	bl	6a08 <__multiply>
    6c84:	e5860000 	str	r0, [r6]
    6c88:	e5805000 	str	r5, [r0]
    6c8c:	e1a06000 	mov	r6, r0
    6c90:	eaffffe6 	b	6c30 <__pow5mult+0x48>
    6c94:	e59f2034 	ldr	r2, [pc, #52]	; 6cd0 <__pow5mult+0xe8>
    6c98:	e2433001 	sub	r3, r3, #1
    6c9c:	e7922103 	ldr	r2, [r2, r3, lsl #2]
    6ca0:	e3a03000 	mov	r3, #0
    6ca4:	ebfffea5 	bl	6740 <__multadd>
    6ca8:	e1a07000 	mov	r7, r0
    6cac:	eaffffd3 	b	6c00 <__pow5mult+0x18>
    6cb0:	e1a00008 	mov	r0, r8
    6cb4:	e59f1018 	ldr	r1, [pc, #24]	; 6cd4 <__pow5mult+0xec>
    6cb8:	ebffff4a 	bl	69e8 <__i2b>
    6cbc:	e3a03000 	mov	r3, #0
    6cc0:	e5880048 	str	r0, [r8, #72]	; 0x48
    6cc4:	e1a06000 	mov	r6, r0
    6cc8:	e5803000 	str	r3, [r0]
    6ccc:	eaffffd7 	b	6c30 <__pow5mult+0x48>
    6cd0:	0000a8e4 	.word	0x0000a8e4
    6cd4:	00000271 	.word	0x00000271

00006cd8 <__lshift>:
    6cd8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    6cdc:	e591a010 	ldr	sl, [r1, #16]
    6ce0:	e1a042c2 	asr	r4, r2, #5
    6ce4:	e5913008 	ldr	r3, [r1, #8]
    6ce8:	e084a00a 	add	sl, r4, sl
    6cec:	e28a5001 	add	r5, sl, #1
    6cf0:	e1550003 	cmp	r5, r3
    6cf4:	e1a07001 	mov	r7, r1
    6cf8:	e1a09002 	mov	r9, r2
    6cfc:	e1a08000 	mov	r8, r0
    6d00:	e5911004 	ldr	r1, [r1, #4]
    6d04:	da000003 	ble	6d18 <__lshift+0x40>
    6d08:	e1a03083 	lsl	r3, r3, #1
    6d0c:	e1550003 	cmp	r5, r3
    6d10:	e2811001 	add	r1, r1, #1
    6d14:	cafffffb 	bgt	6d08 <__lshift+0x30>
    6d18:	e1a00008 	mov	r0, r8
    6d1c:	ebfffe5e 	bl	669c <_Balloc>
    6d20:	e3540000 	cmp	r4, #0
    6d24:	e280c014 	add	ip, r0, #20
    6d28:	da000007 	ble	6d4c <__lshift+0x74>
    6d2c:	e3a03000 	mov	r3, #0
    6d30:	e1a06003 	mov	r6, r3
    6d34:	e2833001 	add	r3, r3, #1
    6d38:	e1530004 	cmp	r3, r4
    6d3c:	e48c6004 	str	r6, [ip], #4
    6d40:	1afffffb 	bne	6d34 <__lshift+0x5c>
    6d44:	e2833005 	add	r3, r3, #5
    6d48:	e080c103 	add	ip, r0, r3, lsl #2
    6d4c:	e5972010 	ldr	r2, [r7, #16]
    6d50:	e219901f 	ands	r9, r9, #31
    6d54:	e2822005 	add	r2, r2, #5
    6d58:	e2874014 	add	r4, r7, #20
    6d5c:	e0872102 	add	r2, r7, r2, lsl #2
    6d60:	0a000013 	beq	6db4 <__lshift+0xdc>
    6d64:	e2693020 	rsb	r3, r9, #32
    6d68:	e3a01000 	mov	r1, #0
    6d6c:	e5946000 	ldr	r6, [r4]
    6d70:	e1811916 	orr	r1, r1, r6, lsl r9
    6d74:	e48c1004 	str	r1, [ip], #4
    6d78:	e4941004 	ldr	r1, [r4], #4
    6d7c:	e1520004 	cmp	r2, r4
    6d80:	e1a01331 	lsr	r1, r1, r3
    6d84:	8afffff8 	bhi	6d6c <__lshift+0x94>
    6d88:	e3510000 	cmp	r1, #0
    6d8c:	e58c1000 	str	r1, [ip]
    6d90:	128a5002 	addne	r5, sl, #2
    6d94:	e598304c 	ldr	r3, [r8, #76]	; 0x4c
    6d98:	e5972004 	ldr	r2, [r7, #4]
    6d9c:	e7931102 	ldr	r1, [r3, r2, lsl #2]
    6da0:	e2455001 	sub	r5, r5, #1
    6da4:	e5805010 	str	r5, [r0, #16]
    6da8:	e5871000 	str	r1, [r7]
    6dac:	e7837102 	str	r7, [r3, r2, lsl #2]
    6db0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    6db4:	e4943004 	ldr	r3, [r4], #4
    6db8:	e1520004 	cmp	r2, r4
    6dbc:	e48c3004 	str	r3, [ip], #4
    6dc0:	9afffff3 	bls	6d94 <__lshift+0xbc>
    6dc4:	e4943004 	ldr	r3, [r4], #4
    6dc8:	e1520004 	cmp	r2, r4
    6dcc:	e48c3004 	str	r3, [ip], #4
    6dd0:	8afffff7 	bhi	6db4 <__lshift+0xdc>
    6dd4:	eaffffee 	b	6d94 <__lshift+0xbc>

00006dd8 <__mcmp>:
    6dd8:	e1a03000 	mov	r3, r0
    6ddc:	e5912010 	ldr	r2, [r1, #16]
    6de0:	e5900010 	ldr	r0, [r0, #16]
    6de4:	e0500002 	subs	r0, r0, r2
    6de8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    6dec:	1a00000a 	bne	6e1c <__mcmp+0x44>
    6df0:	e2822005 	add	r2, r2, #5
    6df4:	e1a02102 	lsl	r2, r2, #2
    6df8:	e2834014 	add	r4, r3, #20
    6dfc:	e0811002 	add	r1, r1, r2
    6e00:	e0833002 	add	r3, r3, r2
    6e04:	e5332004 	ldr	r2, [r3, #-4]!
    6e08:	e531c004 	ldr	ip, [r1, #-4]!
    6e0c:	e152000c 	cmp	r2, ip
    6e10:	1a000003 	bne	6e24 <__mcmp+0x4c>
    6e14:	e1540003 	cmp	r4, r3
    6e18:	3afffff9 	bcc	6e04 <__mcmp+0x2c>
    6e1c:	e8bd0010 	ldmfd	sp!, {r4}
    6e20:	e12fff1e 	bx	lr
    6e24:	e15c0002 	cmp	ip, r2
    6e28:	93a00001 	movls	r0, #1
    6e2c:	83e00000 	mvnhi	r0, #0
    6e30:	eafffff9 	b	6e1c <__mcmp+0x44>

00006e34 <__mdiff>:
    6e34:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    6e38:	e1a06001 	mov	r6, r1
    6e3c:	e1a05000 	mov	r5, r0
    6e40:	e1a01002 	mov	r1, r2
    6e44:	e1a00006 	mov	r0, r6
    6e48:	e1a04002 	mov	r4, r2
    6e4c:	ebffffe1 	bl	6dd8 <__mcmp>
    6e50:	e2507000 	subs	r7, r0, #0
    6e54:	0a000041 	beq	6f60 <__mdiff+0x12c>
    6e58:	b1a03006 	movlt	r3, r6
    6e5c:	b1a06004 	movlt	r6, r4
    6e60:	e5961004 	ldr	r1, [r6, #4]
    6e64:	e1a00005 	mov	r0, r5
    6e68:	b1a04003 	movlt	r4, r3
    6e6c:	a3a09000 	movge	r9, #0
    6e70:	b3a09001 	movlt	r9, #1
    6e74:	ebfffe08 	bl	669c <_Balloc>
    6e78:	e5967010 	ldr	r7, [r6, #16]
    6e7c:	e594a010 	ldr	sl, [r4, #16]
    6e80:	e2878005 	add	r8, r7, #5
    6e84:	e28aa005 	add	sl, sl, #5
    6e88:	e580900c 	str	r9, [r0, #12]
    6e8c:	e0868108 	add	r8, r6, r8, lsl #2
    6e90:	e084a10a 	add	sl, r4, sl, lsl #2
    6e94:	e2866014 	add	r6, r6, #20
    6e98:	e2842014 	add	r2, r4, #20
    6e9c:	e2801014 	add	r1, r0, #20
    6ea0:	e3a05000 	mov	r5, #0
    6ea4:	e496c004 	ldr	ip, [r6], #4
    6ea8:	e4924004 	ldr	r4, [r2], #4
    6eac:	e1a0380c 	lsl	r3, ip, #16
    6eb0:	e0855823 	add	r5, r5, r3, lsr #16
    6eb4:	e1a09804 	lsl	r9, r4, #16
    6eb8:	e0453829 	sub	r3, r5, r9, lsr #16
    6ebc:	e1a05824 	lsr	r5, r4, #16
    6ec0:	e065582c 	rsb	r5, r5, ip, lsr #16
    6ec4:	e1a04803 	lsl	r4, r3, #16
    6ec8:	e0855843 	add	r5, r5, r3, asr #16
    6ecc:	e1a04824 	lsr	r4, r4, #16
    6ed0:	e1a03001 	mov	r3, r1
    6ed4:	e1844805 	orr	r4, r4, r5, lsl #16
    6ed8:	e4834004 	str	r4, [r3], #4
    6edc:	e15a0002 	cmp	sl, r2
    6ee0:	e1a0c006 	mov	ip, r6
    6ee4:	e1a05845 	asr	r5, r5, #16
    6ee8:	e1a01003 	mov	r1, r3
    6eec:	8affffec 	bhi	6ea4 <__mdiff+0x70>
    6ef0:	e1580006 	cmp	r8, r6
    6ef4:	9a000010 	bls	6f3c <__mdiff+0x108>
    6ef8:	e49c2004 	ldr	r2, [ip], #4
    6efc:	e1a04802 	lsl	r4, r2, #16
    6f00:	e0855824 	add	r5, r5, r4, lsr #16
    6f04:	e1a04805 	lsl	r4, r5, #16
    6f08:	e1a02822 	lsr	r2, r2, #16
    6f0c:	e0825845 	add	r5, r2, r5, asr #16
    6f10:	e1a04824 	lsr	r4, r4, #16
    6f14:	e1844805 	orr	r4, r4, r5, lsl #16
    6f18:	e158000c 	cmp	r8, ip
    6f1c:	e1a05845 	asr	r5, r5, #16
    6f20:	e4834004 	str	r4, [r3], #4
    6f24:	8afffff3 	bhi	6ef8 <__mdiff+0xc4>
    6f28:	e1e03006 	mvn	r3, r6
    6f2c:	e0833008 	add	r3, r3, r8
    6f30:	e3c33003 	bic	r3, r3, #3
    6f34:	e2833004 	add	r3, r3, #4
    6f38:	e0813003 	add	r3, r1, r3
    6f3c:	e3540000 	cmp	r4, #0
    6f40:	e2433004 	sub	r3, r3, #4
    6f44:	1a000003 	bne	6f58 <__mdiff+0x124>
    6f48:	e5332004 	ldr	r2, [r3, #-4]!
    6f4c:	e3520000 	cmp	r2, #0
    6f50:	e2477001 	sub	r7, r7, #1
    6f54:	0afffffb 	beq	6f48 <__mdiff+0x114>
    6f58:	e5807010 	str	r7, [r0, #16]
    6f5c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    6f60:	e1a00005 	mov	r0, r5
    6f64:	e1a01007 	mov	r1, r7
    6f68:	ebfffdcb 	bl	669c <_Balloc>
    6f6c:	e3a03001 	mov	r3, #1
    6f70:	e5803010 	str	r3, [r0, #16]
    6f74:	e5807014 	str	r7, [r0, #20]
    6f78:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

00006f7c <__ulp>:
    6f7c:	e59f3058 	ldr	r3, [pc, #88]	; 6fdc <__ulp+0x60>
    6f80:	e0003003 	and	r3, r0, r3
    6f84:	e243350d 	sub	r3, r3, #54525952	; 0x3400000
    6f88:	e3530000 	cmp	r3, #0
    6f8c:	da000002 	ble	6f9c <__ulp+0x20>
    6f90:	e1a00003 	mov	r0, r3
    6f94:	e3a01000 	mov	r1, #0
    6f98:	e12fff1e 	bx	lr
    6f9c:	e2633000 	rsb	r3, r3, #0
    6fa0:	e1a03a43 	asr	r3, r3, #20
    6fa4:	e3530013 	cmp	r3, #19
    6fa8:	da000007 	ble	6fcc <__ulp+0x50>
    6fac:	e3530032 	cmp	r3, #50	; 0x32
    6fb0:	d2633033 	rsble	r3, r3, #51	; 0x33
    6fb4:	d3a02001 	movle	r2, #1
    6fb8:	d1a03312 	lslle	r3, r2, r3
    6fbc:	c3a03001 	movgt	r3, #1
    6fc0:	e3a00000 	mov	r0, #0
    6fc4:	e1a01003 	mov	r1, r3
    6fc8:	e12fff1e 	bx	lr
    6fcc:	e3a02702 	mov	r2, #524288	; 0x80000
    6fd0:	e1a00352 	asr	r0, r2, r3
    6fd4:	e3a01000 	mov	r1, #0
    6fd8:	e12fff1e 	bx	lr
    6fdc:	7ff00000 	.word	0x7ff00000

00006fe0 <__b2d>:
    6fe0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    6fe4:	e5904010 	ldr	r4, [r0, #16]
    6fe8:	e2844005 	add	r4, r4, #5
    6fec:	e0804104 	add	r4, r0, r4, lsl #2
    6ff0:	e5145004 	ldr	r5, [r4, #-4]
    6ff4:	e1a03000 	mov	r3, r0
    6ff8:	e1a00005 	mov	r0, r5
    6ffc:	e1a07001 	mov	r7, r1
    7000:	e2836014 	add	r6, r3, #20
    7004:	ebfffe3e 	bl	6904 <__hi0bits>
    7008:	e2603020 	rsb	r3, r0, #32
    700c:	e350000a 	cmp	r0, #10
    7010:	e244c004 	sub	ip, r4, #4
    7014:	e5873000 	str	r3, [r7]
    7018:	ca00000c 	bgt	7050 <__b2d+0x70>
    701c:	e156000c 	cmp	r6, ip
    7020:	3514c008 	ldrcc	ip, [r4, #-8]
    7024:	e260100b 	rsb	r1, r0, #11
    7028:	e1a07135 	lsr	r7, r5, r1
    702c:	31a0113c 	lsrcc	r1, ip, r1
    7030:	23a01000 	movcs	r1, #0
    7034:	e2800015 	add	r0, r0, #21
    7038:	e1813015 	orr	r3, r1, r5, lsl r0
    703c:	e38775ff 	orr	r7, r7, #1069547520	; 0x3fc00000
    7040:	e3872603 	orr	r2, r7, #3145728	; 0x300000
    7044:	e1a00002 	mov	r0, r2
    7048:	e1a01003 	mov	r1, r3
    704c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    7050:	e156000c 	cmp	r6, ip
    7054:	3244c008 	subcc	ip, r4, #8
    7058:	35141008 	ldrcc	r1, [r4, #-8]
    705c:	23a01000 	movcs	r1, #0
    7060:	e250400b 	subs	r4, r0, #11
    7064:	0a00000a 	beq	7094 <__b2d+0xb4>
    7068:	e1a05415 	lsl	r5, r5, r4
    706c:	e15c0006 	cmp	ip, r6
    7070:	e38555ff 	orr	r5, r5, #1069547520	; 0x3fc00000
    7074:	851cc004 	ldrhi	ip, [ip, #-4]
    7078:	e260002b 	rsb	r0, r0, #43	; 0x2b
    707c:	e3855603 	orr	r5, r5, #3145728	; 0x300000
    7080:	e1852031 	orr	r2, r5, r1, lsr r0
    7084:	81a0003c 	lsrhi	r0, ip, r0
    7088:	93a00000 	movls	r0, #0
    708c:	e1803411 	orr	r3, r0, r1, lsl r4
    7090:	eaffffeb 	b	7044 <__b2d+0x64>
    7094:	e38555ff 	orr	r5, r5, #1069547520	; 0x3fc00000
    7098:	e3852603 	orr	r2, r5, #3145728	; 0x300000
    709c:	e1a03001 	mov	r3, r1
    70a0:	eaffffe7 	b	7044 <__b2d+0x64>

000070a4 <__d2b>:
    70a4:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    70a8:	e1a04001 	mov	r4, r1
    70ac:	e24dd008 	sub	sp, sp, #8
    70b0:	e3a01001 	mov	r1, #1
    70b4:	e1a05002 	mov	r5, r2
    70b8:	e1a08003 	mov	r8, r3
    70bc:	e59d7024 	ldr	r7, [sp, #36]	; 0x24
    70c0:	ebfffd75 	bl	669c <_Balloc>
    70c4:	e3c42102 	bic	r2, r4, #-2147483648	; 0x80000000
    70c8:	e3c414ff 	bic	r1, r4, #-16777216	; 0xff000000
    70cc:	e1b0aa22 	lsrs	sl, r2, #20
    70d0:	e3c1160f 	bic	r1, r1, #15728640	; 0xf00000
    70d4:	13811601 	orrne	r1, r1, #1048576	; 0x100000
    70d8:	e3550000 	cmp	r5, #0
    70dc:	e1a06000 	mov	r6, r0
    70e0:	e58d1004 	str	r1, [sp, #4]
    70e4:	0a00001f 	beq	7168 <__d2b+0xc4>
    70e8:	e28d0008 	add	r0, sp, #8
    70ec:	e5205008 	str	r5, [r0, #-8]!
    70f0:	e1a0000d 	mov	r0, sp
    70f4:	ebfffe16 	bl	6954 <__lo0bits>
    70f8:	e3500000 	cmp	r0, #0
    70fc:	e59d3004 	ldr	r3, [sp, #4]
    7100:	159d2000 	ldrne	r2, [sp]
    7104:	12601020 	rsbne	r1, r0, #32
    7108:	11822113 	orrne	r2, r2, r3, lsl r1
    710c:	11a03033 	lsrne	r3, r3, r0
    7110:	059d2000 	ldreq	r2, [sp]
    7114:	15862014 	strne	r2, [r6, #20]
    7118:	158d3004 	strne	r3, [sp, #4]
    711c:	05862014 	streq	r2, [r6, #20]
    7120:	e3530000 	cmp	r3, #0
    7124:	03a04001 	moveq	r4, #1
    7128:	13a04002 	movne	r4, #2
    712c:	e35a0000 	cmp	sl, #0
    7130:	e5863018 	str	r3, [r6, #24]
    7134:	e5864010 	str	r4, [r6, #16]
    7138:	1a000013 	bne	718c <__d2b+0xe8>
    713c:	e2400e43 	sub	r0, r0, #1072	; 0x430
    7140:	e2403002 	sub	r3, r0, #2
    7144:	e2842004 	add	r2, r4, #4
    7148:	e7960102 	ldr	r0, [r6, r2, lsl #2]
    714c:	e5883000 	str	r3, [r8]
    7150:	ebfffdeb 	bl	6904 <__hi0bits>
    7154:	e0600284 	rsb	r0, r0, r4, lsl #5
    7158:	e5870000 	str	r0, [r7]
    715c:	e1a00006 	mov	r0, r6
    7160:	e28dd008 	add	sp, sp, #8
    7164:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    7168:	e28d0004 	add	r0, sp, #4
    716c:	ebfffdf8 	bl	6954 <__lo0bits>
    7170:	e59d3004 	ldr	r3, [sp, #4]
    7174:	e3a04001 	mov	r4, #1
    7178:	e35a0000 	cmp	sl, #0
    717c:	e5863014 	str	r3, [r6, #20]
    7180:	e5864010 	str	r4, [r6, #16]
    7184:	e2800020 	add	r0, r0, #32
    7188:	0affffeb 	beq	713c <__d2b+0x98>
    718c:	e24aae43 	sub	sl, sl, #1072	; 0x430
    7190:	e24aa003 	sub	sl, sl, #3
    7194:	e08aa000 	add	sl, sl, r0
    7198:	e2600035 	rsb	r0, r0, #53	; 0x35
    719c:	e588a000 	str	sl, [r8]
    71a0:	e5870000 	str	r0, [r7]
    71a4:	eaffffec 	b	715c <__d2b+0xb8>

000071a8 <__ratio>:
    71a8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    71ac:	e24dd008 	sub	sp, sp, #8
    71b0:	e1a06001 	mov	r6, r1
    71b4:	e1a0100d 	mov	r1, sp
    71b8:	e1a07000 	mov	r7, r0
    71bc:	ebffff87 	bl	6fe0 <__b2d>
    71c0:	e1a04000 	mov	r4, r0
    71c4:	e1a05001 	mov	r5, r1
    71c8:	e1a00006 	mov	r0, r6
    71cc:	e28d1004 	add	r1, sp, #4
    71d0:	ebffff82 	bl	6fe0 <__b2d>
    71d4:	e597c010 	ldr	ip, [r7, #16]
    71d8:	e1a02000 	mov	r2, r0
    71dc:	e1a03001 	mov	r3, r1
    71e0:	e5960010 	ldr	r0, [r6, #16]
    71e4:	e59d1004 	ldr	r1, [sp, #4]
    71e8:	e59de000 	ldr	lr, [sp]
    71ec:	e060c00c 	rsb	ip, r0, ip
    71f0:	e061100e 	rsb	r1, r1, lr
    71f4:	e081c28c 	add	ip, r1, ip, lsl #5
    71f8:	e35c0000 	cmp	ip, #0
    71fc:	e1a00004 	mov	r0, r4
    7200:	c0840a0c 	addgt	r0, r4, ip, lsl #20
    7204:	e1a06002 	mov	r6, r2
    7208:	c1a04000 	movgt	r4, r0
    720c:	c1a05005 	movgt	r5, r5
    7210:	d0426a0c 	suble	r6, r2, ip, lsl #20
    7214:	e1a07003 	mov	r7, r3
    7218:	d1a02006 	movle	r2, r6
    721c:	d1a03003 	movle	r3, r3
    7220:	e1a00004 	mov	r0, r4
    7224:	e1a01005 	mov	r1, r5
    7228:	eb000c9b 	bl	a49c <__aeabi_ddiv>
    722c:	e28dd008 	add	sp, sp, #8
    7230:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

00007234 <_mprec_log10>:
    7234:	e3500017 	cmp	r0, #23
    7238:	e92d4010 	push	{r4, lr}
    723c:	e1a04000 	mov	r4, r0
    7240:	da000007 	ble	7264 <_mprec_log10+0x30>
    7244:	e59f002c 	ldr	r0, [pc, #44]	; 7278 <_mprec_log10+0x44>
    7248:	e3a01000 	mov	r1, #0
    724c:	e59f2028 	ldr	r2, [pc, #40]	; 727c <_mprec_log10+0x48>
    7250:	e3a03000 	mov	r3, #0
    7254:	eb000bf5 	bl	a230 <__aeabi_dmul>
    7258:	e2544001 	subs	r4, r4, #1
    725c:	1afffffa 	bne	724c <_mprec_log10+0x18>
    7260:	e8bd8010 	pop	{r4, pc}
    7264:	e59f3014 	ldr	r3, [pc, #20]	; 7280 <_mprec_log10+0x4c>
    7268:	e0834180 	add	r4, r3, r0, lsl #3
    726c:	e284100c 	add	r1, r4, #12
    7270:	e8910003 	ldm	r1, {r0, r1}
    7274:	e8bd8010 	pop	{r4, pc}
    7278:	3ff00000 	.word	0x3ff00000
    727c:	40240000 	.word	0x40240000
    7280:	0000a8e4 	.word	0x0000a8e4

00007284 <__copybits>:
    7284:	e92d0030 	push	{r4, r5}
    7288:	e5924010 	ldr	r4, [r2, #16]
    728c:	e2411001 	sub	r1, r1, #1
    7290:	e2844005 	add	r4, r4, #5
    7294:	e1a052c1 	asr	r5, r1, #5
    7298:	e2823014 	add	r3, r2, #20
    729c:	e0824104 	add	r4, r2, r4, lsl #2
    72a0:	e2855001 	add	r5, r5, #1
    72a4:	e1530004 	cmp	r3, r4
    72a8:	e0805105 	add	r5, r0, r5, lsl #2
    72ac:	2a000009 	bcs	72d8 <__copybits+0x54>
    72b0:	e1a01000 	mov	r1, r0
    72b4:	e493c004 	ldr	ip, [r3], #4
    72b8:	e1540003 	cmp	r4, r3
    72bc:	e481c004 	str	ip, [r1], #4
    72c0:	8afffffb 	bhi	72b4 <__copybits+0x30>
    72c4:	e0623004 	rsb	r3, r2, r4
    72c8:	e2433015 	sub	r3, r3, #21
    72cc:	e3c33003 	bic	r3, r3, #3
    72d0:	e2833004 	add	r3, r3, #4
    72d4:	e0800003 	add	r0, r0, r3
    72d8:	e1550000 	cmp	r5, r0
    72dc:	9a000003 	bls	72f0 <__copybits+0x6c>
    72e0:	e3a03000 	mov	r3, #0
    72e4:	e4803004 	str	r3, [r0], #4
    72e8:	e1550000 	cmp	r5, r0
    72ec:	8afffffc 	bhi	72e4 <__copybits+0x60>
    72f0:	e8bd0030 	pop	{r4, r5}
    72f4:	e12fff1e 	bx	lr

000072f8 <__any_on>:
    72f8:	e5902010 	ldr	r2, [r0, #16]
    72fc:	e1a032c1 	asr	r3, r1, #5
    7300:	e1520003 	cmp	r2, r3
    7304:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    7308:	e280c014 	add	ip, r0, #20
    730c:	b1a03002 	movlt	r3, r2
    7310:	ba000000 	blt	7318 <__any_on+0x20>
    7314:	ca00000f 	bgt	7358 <__any_on+0x60>
    7318:	e2833005 	add	r3, r3, #5
    731c:	e0800103 	add	r0, r0, r3, lsl #2
    7320:	e15c0000 	cmp	ip, r0
    7324:	2a000013 	bcs	7378 <__any_on+0x80>
    7328:	e5103004 	ldr	r3, [r0, #-4]
    732c:	e3530000 	cmp	r3, #0
    7330:	e2403004 	sub	r3, r0, #4
    7334:	1a000004 	bne	734c <__any_on+0x54>
    7338:	e15c0003 	cmp	ip, r3
    733c:	2a00000d 	bcs	7378 <__any_on+0x80>
    7340:	e5332004 	ldr	r2, [r3, #-4]!
    7344:	e3520000 	cmp	r2, #0
    7348:	0afffffa 	beq	7338 <__any_on+0x40>
    734c:	e3a00001 	mov	r0, #1
    7350:	e8bd0010 	ldmfd	sp!, {r4}
    7354:	e12fff1e 	bx	lr
    7358:	e211101f 	ands	r1, r1, #31
    735c:	0affffed 	beq	7318 <__any_on+0x20>
    7360:	e2832005 	add	r2, r3, #5
    7364:	e7902102 	ldr	r2, [r0, r2, lsl #2]
    7368:	e1a04132 	lsr	r4, r2, r1
    736c:	e1520114 	cmp	r2, r4, lsl r1
    7370:	1afffff5 	bne	734c <__any_on+0x54>
    7374:	eaffffe7 	b	7318 <__any_on+0x20>
    7378:	e3a00000 	mov	r0, #0
    737c:	eafffff3 	b	7350 <__any_on+0x58>

00007380 <__fpclassifyd>:
    7380:	e1a03001 	mov	r3, r1
    7384:	e1931000 	orrs	r1, r3, r0
    7388:	1a000001 	bne	7394 <__fpclassifyd+0x14>
    738c:	e3a00002 	mov	r0, #2
    7390:	e12fff1e 	bx	lr
    7394:	e2731001 	rsbs	r1, r3, #1
    7398:	33a01000 	movcc	r1, #0
    739c:	e3500102 	cmp	r0, #-2147483648	; 0x80000000
    73a0:	03530000 	cmpeq	r3, #0
    73a4:	0afffff8 	beq	738c <__fpclassifyd+0xc>
    73a8:	e3c02102 	bic	r2, r0, #-2147483648	; 0x80000000
    73ac:	e59f3034 	ldr	r3, [pc, #52]	; 73e8 <__fpclassifyd+0x68>
    73b0:	e2420601 	sub	r0, r2, #1048576	; 0x100000
    73b4:	e1500003 	cmp	r0, r3
    73b8:	8a000001 	bhi	73c4 <__fpclassifyd+0x44>
    73bc:	e3a00004 	mov	r0, #4
    73c0:	e12fff1e 	bx	lr
    73c4:	e3520601 	cmp	r2, #1048576	; 0x100000
    73c8:	2a000001 	bcs	73d4 <__fpclassifyd+0x54>
    73cc:	e3a00003 	mov	r0, #3
    73d0:	e12fff1e 	bx	lr
    73d4:	e59f0010 	ldr	r0, [pc, #16]	; 73ec <__fpclassifyd+0x6c>
    73d8:	e1520000 	cmp	r2, r0
    73dc:	13a00000 	movne	r0, #0
    73e0:	02010001 	andeq	r0, r1, #1
    73e4:	e12fff1e 	bx	lr
    73e8:	7fdfffff 	.word	0x7fdfffff
    73ec:	7ff00000 	.word	0x7ff00000

000073f0 <_sbrk_r>:
    73f0:	e92d4030 	push	{r4, r5, lr}
    73f4:	e59f4028 	ldr	r4, [pc, #40]	; 7424 <_sbrk_r+0x34>
    73f8:	e3a03000 	mov	r3, #0
    73fc:	e1a05000 	mov	r5, r0
    7400:	e1a00001 	mov	r0, r1
    7404:	e5843000 	str	r3, [r4]
    7408:	ebffe842 	bl	1518 <_sbrk>
    740c:	e3700001 	cmn	r0, #1
    7410:	18bd8030 	popne	{r4, r5, pc}
    7414:	e5943000 	ldr	r3, [r4]
    7418:	e3530000 	cmp	r3, #0
    741c:	15853000 	strne	r3, [r5]
    7420:	e8bd8030 	pop	{r4, r5, pc}
    7424:	0000b504 	.word	0x0000b504

00007428 <__sread>:
    7428:	e92d4010 	push	{r4, lr}
    742c:	e1a04001 	mov	r4, r1
    7430:	e1d110fe 	ldrsh	r1, [r1, #14]
    7434:	eb0007b2 	bl	9304 <_read_r>
    7438:	e3500000 	cmp	r0, #0
    743c:	a5943050 	ldrge	r3, [r4, #80]	; 0x50
    7440:	b1d430bc 	ldrhlt	r3, [r4, #12]
    7444:	a0833000 	addge	r3, r3, r0
    7448:	b3c33a01 	biclt	r3, r3, #4096	; 0x1000
    744c:	a5843050 	strge	r3, [r4, #80]	; 0x50
    7450:	b1c430bc 	strhlt	r3, [r4, #12]
    7454:	e8bd8010 	pop	{r4, pc}

00007458 <__seofread>:
    7458:	e3a00000 	mov	r0, #0
    745c:	e12fff1e 	bx	lr

00007460 <__swrite>:
    7460:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    7464:	e1a04001 	mov	r4, r1
    7468:	e1d110bc 	ldrh	r1, [r1, #12]
    746c:	e3110c01 	tst	r1, #256	; 0x100
    7470:	e1a07000 	mov	r7, r0
    7474:	e1a06002 	mov	r6, r2
    7478:	e1a05003 	mov	r5, r3
    747c:	0a000004 	beq	7494 <__swrite+0x34>
    7480:	e1d410fe 	ldrsh	r1, [r4, #14]
    7484:	e3a02000 	mov	r2, #0
    7488:	e3a03002 	mov	r3, #2
    748c:	eb00073f 	bl	9190 <_lseek_r>
    7490:	e1d410bc 	ldrh	r1, [r4, #12]
    7494:	e3c11a01 	bic	r1, r1, #4096	; 0x1000
    7498:	e1c410bc 	strh	r1, [r4, #12]
    749c:	e1d410fe 	ldrsh	r1, [r4, #14]
    74a0:	e1a00007 	mov	r0, r7
    74a4:	e1a02006 	mov	r2, r6
    74a8:	e1a03005 	mov	r3, r5
    74ac:	e8bd40f0 	pop	{r4, r5, r6, r7, lr}
    74b0:	ea000504 	b	88c8 <_write_r>

000074b4 <__sseek>:
    74b4:	e92d4010 	push	{r4, lr}
    74b8:	e1a04001 	mov	r4, r1
    74bc:	e1d110fe 	ldrsh	r1, [r1, #14]
    74c0:	eb000732 	bl	9190 <_lseek_r>
    74c4:	e1d430bc 	ldrh	r3, [r4, #12]
    74c8:	e3700001 	cmn	r0, #1
    74cc:	03c33a01 	biceq	r3, r3, #4096	; 0x1000
    74d0:	13833a01 	orrne	r3, r3, #4096	; 0x1000
    74d4:	01c430bc 	strheq	r3, [r4, #12]
    74d8:	11c430bc 	strhne	r3, [r4, #12]
    74dc:	15840050 	strne	r0, [r4, #80]	; 0x50
    74e0:	e8bd8010 	pop	{r4, pc}

000074e4 <__sclose>:
    74e4:	e1d110fe 	ldrsh	r1, [r1, #14]
    74e8:	ea00052b 	b	899c <_close_r>

000074ec <strcmp>:
    74ec:	e0202001 	eor	r2, r0, r1
    74f0:	e3120003 	tst	r2, #3
    74f4:	1a000021 	bne	7580 <strcmp_unaligned>
    74f8:	e2102003 	ands	r2, r0, #3
    74fc:	e3c00003 	bic	r0, r0, #3
    7500:	e3c11003 	bic	r1, r1, #3
    7504:	e490c004 	ldr	ip, [r0], #4
    7508:	04913004 	ldreq	r3, [r1], #4
    750c:	0a000006 	beq	752c <strcmp+0x40>
    7510:	e2222003 	eor	r2, r2, #3
    7514:	e1a02182 	lsl	r2, r2, #3
    7518:	e3e034ff 	mvn	r3, #-16777216	; 0xff000000
    751c:	e1a02233 	lsr	r2, r3, r2
    7520:	e4913004 	ldr	r3, [r1], #4
    7524:	e18cc002 	orr	ip, ip, r2
    7528:	e1833002 	orr	r3, r3, r2
    752c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    7530:	e3a04001 	mov	r4, #1
    7534:	e1844404 	orr	r4, r4, r4, lsl #8
    7538:	e1844804 	orr	r4, r4, r4, lsl #16
    753c:	e04c2004 	sub	r2, ip, r4
    7540:	e15c0003 	cmp	ip, r3
    7544:	01c2200c 	biceq	r2, r2, ip
    7548:	01120384 	tsteq	r2, r4, lsl #7
    754c:	0490c004 	ldreq	ip, [r0], #4
    7550:	04913004 	ldreq	r3, [r1], #4
    7554:	0afffff8 	beq	753c <strcmp+0x50>
    7558:	e1a00c0c 	lsl	r0, ip, #24
    755c:	e1a0c42c 	lsr	ip, ip, #8
    7560:	e3500001 	cmp	r0, #1
    7564:	21500c03 	cmpcs	r0, r3, lsl #24
    7568:	01a03423 	lsreq	r3, r3, #8
    756c:	0afffff9 	beq	7558 <strcmp+0x6c>
    7570:	e20330ff 	and	r3, r3, #255	; 0xff
    7574:	e0630c20 	rsb	r0, r3, r0, lsr #24
    7578:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    757c:	e12fff1e 	bx	lr

00007580 <strcmp_unaligned>:
    7580:	e3100003 	tst	r0, #3
    7584:	0a000006 	beq	75a4 <strcmp_unaligned+0x24>
    7588:	e4d02001 	ldrb	r2, [r0], #1
    758c:	e4d13001 	ldrb	r3, [r1], #1
    7590:	e3520001 	cmp	r2, #1
    7594:	21520003 	cmpcs	r2, r3
    7598:	0afffff8 	beq	7580 <strcmp_unaligned>
    759c:	e0420003 	sub	r0, r2, r3
    75a0:	e12fff1e 	bx	lr
    75a4:	e52d5004 	push	{r5}		; (str r5, [sp, #-4]!)
    75a8:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    75ac:	e3a02001 	mov	r2, #1
    75b0:	e1822402 	orr	r2, r2, r2, lsl #8
    75b4:	e1822802 	orr	r2, r2, r2, lsl #16
    75b8:	e201c003 	and	ip, r1, #3
    75bc:	e3c11003 	bic	r1, r1, #3
    75c0:	e4904004 	ldr	r4, [r0], #4
    75c4:	e4915004 	ldr	r5, [r1], #4
    75c8:	e35c0002 	cmp	ip, #2
    75cc:	0a000017 	beq	7630 <strcmp_unaligned+0xb0>
    75d0:	8a00002d 	bhi	768c <strcmp_unaligned+0x10c>
    75d4:	e3c4c4ff 	bic	ip, r4, #-16777216	; 0xff000000
    75d8:	e15c0425 	cmp	ip, r5, lsr #8
    75dc:	e0443002 	sub	r3, r4, r2
    75e0:	e1c33004 	bic	r3, r3, r4
    75e4:	1a000007 	bne	7608 <strcmp_unaligned+0x88>
    75e8:	e0133382 	ands	r3, r3, r2, lsl #7
    75ec:	04915004 	ldreq	r5, [r1], #4
    75f0:	1a000006 	bne	7610 <strcmp_unaligned+0x90>
    75f4:	e02cc004 	eor	ip, ip, r4
    75f8:	e15c0c05 	cmp	ip, r5, lsl #24
    75fc:	1a000008 	bne	7624 <strcmp_unaligned+0xa4>
    7600:	e4904004 	ldr	r4, [r0], #4
    7604:	eafffff2 	b	75d4 <strcmp_unaligned+0x54>
    7608:	e1a05425 	lsr	r5, r5, #8
    760c:	ea000037 	b	76f0 <strcmp_unaligned+0x170>
    7610:	e3d334ff 	bics	r3, r3, #-16777216	; 0xff000000
    7614:	1a000031 	bne	76e0 <strcmp_unaligned+0x160>
    7618:	e5d15000 	ldrb	r5, [r1]
    761c:	e1a0cc24 	lsr	ip, r4, #24
    7620:	ea000032 	b	76f0 <strcmp_unaligned+0x170>
    7624:	e1a0cc24 	lsr	ip, r4, #24
    7628:	e20550ff 	and	r5, r5, #255	; 0xff
    762c:	ea00002f 	b	76f0 <strcmp_unaligned+0x170>
    7630:	e1a0c804 	lsl	ip, r4, #16
    7634:	e0443002 	sub	r3, r4, r2
    7638:	e1a0c82c 	lsr	ip, ip, #16
    763c:	e1c33004 	bic	r3, r3, r4
    7640:	e15c0825 	cmp	ip, r5, lsr #16
    7644:	1a00000e 	bne	7684 <strcmp_unaligned+0x104>
    7648:	e0133382 	ands	r3, r3, r2, lsl #7
    764c:	04915004 	ldreq	r5, [r1], #4
    7650:	1a000004 	bne	7668 <strcmp_unaligned+0xe8>
    7654:	e02cc004 	eor	ip, ip, r4
    7658:	e15c0805 	cmp	ip, r5, lsl #16
    765c:	1a000006 	bne	767c <strcmp_unaligned+0xfc>
    7660:	e4904004 	ldr	r4, [r0], #4
    7664:	eafffff1 	b	7630 <strcmp_unaligned+0xb0>
    7668:	e1b03803 	lsls	r3, r3, #16
    766c:	1a00001b 	bne	76e0 <strcmp_unaligned+0x160>
    7670:	e1d150b0 	ldrh	r5, [r1]
    7674:	e1a0c824 	lsr	ip, r4, #16
    7678:	ea00001c 	b	76f0 <strcmp_unaligned+0x170>
    767c:	e1a05805 	lsl	r5, r5, #16
    7680:	e1a0c824 	lsr	ip, r4, #16
    7684:	e1a05825 	lsr	r5, r5, #16
    7688:	ea000018 	b	76f0 <strcmp_unaligned+0x170>
    768c:	e204c0ff 	and	ip, r4, #255	; 0xff
    7690:	e15c0c25 	cmp	ip, r5, lsr #24
    7694:	e0443002 	sub	r3, r4, r2
    7698:	e1c33004 	bic	r3, r3, r4
    769c:	1a000007 	bne	76c0 <strcmp_unaligned+0x140>
    76a0:	e0133382 	ands	r3, r3, r2, lsl #7
    76a4:	04915004 	ldreq	r5, [r1], #4
    76a8:	1a000006 	bne	76c8 <strcmp_unaligned+0x148>
    76ac:	e02cc004 	eor	ip, ip, r4
    76b0:	e15c0405 	cmp	ip, r5, lsl #8
    76b4:	1a000006 	bne	76d4 <strcmp_unaligned+0x154>
    76b8:	e4904004 	ldr	r4, [r0], #4
    76bc:	eafffff2 	b	768c <strcmp_unaligned+0x10c>
    76c0:	e1a05c25 	lsr	r5, r5, #24
    76c4:	ea000009 	b	76f0 <strcmp_unaligned+0x170>
    76c8:	e31400ff 	tst	r4, #255	; 0xff
    76cc:	0a000003 	beq	76e0 <strcmp_unaligned+0x160>
    76d0:	e4915004 	ldr	r5, [r1], #4
    76d4:	e1a0c424 	lsr	ip, r4, #8
    76d8:	e3c554ff 	bic	r5, r5, #-16777216	; 0xff000000
    76dc:	ea000003 	b	76f0 <strcmp_unaligned+0x170>
    76e0:	e3a00000 	mov	r0, #0
    76e4:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    76e8:	e49d5004 	pop	{r5}		; (ldr r5, [sp], #4)
    76ec:	e12fff1e 	bx	lr
    76f0:	e20c20ff 	and	r2, ip, #255	; 0xff
    76f4:	e20500ff 	and	r0, r5, #255	; 0xff
    76f8:	e3500001 	cmp	r0, #1
    76fc:	21500002 	cmpcs	r0, r2
    7700:	01a0c42c 	lsreq	ip, ip, #8
    7704:	01a05425 	lsreq	r5, r5, #8
    7708:	0afffff8 	beq	76f0 <strcmp_unaligned+0x170>
    770c:	e0420000 	sub	r0, r2, r0
    7710:	e49d4004 	pop	{r4}		; (ldr r4, [sp], #4)
    7714:	e49d5004 	pop	{r5}		; (ldr r5, [sp], #4)
    7718:	e12fff1e 	bx	lr

0000771c <strlen>:
    771c:	e3c01003 	bic	r1, r0, #3
    7720:	e2100003 	ands	r0, r0, #3
    7724:	e2600000 	rsb	r0, r0, #0
    7728:	e4913004 	ldr	r3, [r1], #4
    772c:	e280c004 	add	ip, r0, #4
    7730:	e1a0c18c 	lsl	ip, ip, #3
    7734:	e3e02000 	mvn	r2, #0
    7738:	11833c32 	orrne	r3, r3, r2, lsr ip
    773c:	e3a0c001 	mov	ip, #1
    7740:	e18cc40c 	orr	ip, ip, ip, lsl #8
    7744:	e18cc80c 	orr	ip, ip, ip, lsl #16
    7748:	e043200c 	sub	r2, r3, ip
    774c:	e1c22003 	bic	r2, r2, r3
    7750:	e012238c 	ands	r2, r2, ip, lsl #7
    7754:	04913004 	ldreq	r3, [r1], #4
    7758:	02800004 	addeq	r0, r0, #4
    775c:	0afffff9 	beq	7748 <strlen+0x2c>
    7760:	e31300ff 	tst	r3, #255	; 0xff
    7764:	12800001 	addne	r0, r0, #1
    7768:	13130cff 	tstne	r3, #65280	; 0xff00
    776c:	12800001 	addne	r0, r0, #1
    7770:	131308ff 	tstne	r3, #16711680	; 0xff0000
    7774:	12800001 	addne	r0, r0, #1
    7778:	e12fff1e 	bx	lr

0000777c <__sprint_r>:
    777c:	e5923008 	ldr	r3, [r2, #8]
    7780:	e3530000 	cmp	r3, #0
    7784:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    7788:	e1a0a002 	mov	sl, r2
    778c:	e1a07000 	mov	r7, r0
    7790:	e1a06001 	mov	r6, r1
    7794:	0a000020 	beq	781c <__sprint_r+0xa0>
    7798:	e591c064 	ldr	ip, [r1, #100]	; 0x64
    779c:	e31c0a02 	tst	ip, #8192	; 0x2000
    77a0:	0a000020 	beq	7828 <__sprint_r+0xac>
    77a4:	e5929000 	ldr	r9, [r2]
    77a8:	e2899008 	add	r9, r9, #8
    77ac:	e5198004 	ldr	r8, [r9, #-4]
    77b0:	e5195008 	ldr	r5, [r9, #-8]
    77b4:	e1b08128 	lsrs	r8, r8, #2
    77b8:	12455004 	subne	r5, r5, #4
    77bc:	13a04000 	movne	r4, #0
    77c0:	1a000002 	bne	77d0 <__sprint_r+0x54>
    77c4:	ea00000d 	b	7800 <__sprint_r+0x84>
    77c8:	e1580004 	cmp	r8, r4
    77cc:	0a00000a 	beq	77fc <__sprint_r+0x80>
    77d0:	e1a00007 	mov	r0, r7
    77d4:	e5b51004 	ldr	r1, [r5, #4]!
    77d8:	e1a02006 	mov	r2, r6
    77dc:	eb0004bc 	bl	8ad4 <_fputwc_r>
    77e0:	e3700001 	cmn	r0, #1
    77e4:	e2844001 	add	r4, r4, #1
    77e8:	1afffff6 	bne	77c8 <__sprint_r+0x4c>
    77ec:	e3a03000 	mov	r3, #0
    77f0:	e58a3008 	str	r3, [sl, #8]
    77f4:	e58a3004 	str	r3, [sl, #4]
    77f8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    77fc:	e59a3008 	ldr	r3, [sl, #8]
    7800:	e0433108 	sub	r3, r3, r8, lsl #2
    7804:	e3530000 	cmp	r3, #0
    7808:	e58a3008 	str	r3, [sl, #8]
    780c:	e2899008 	add	r9, r9, #8
    7810:	1affffe5 	bne	77ac <__sprint_r+0x30>
    7814:	e1a00003 	mov	r0, r3
    7818:	eafffff3 	b	77ec <__sprint_r+0x70>
    781c:	e5823004 	str	r3, [r2, #4]
    7820:	e1a00003 	mov	r0, r3
    7824:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    7828:	eb00051e 	bl	8ca8 <__sfvwrite_r>
    782c:	eaffffee 	b	77ec <__sprint_r+0x70>

00007830 <_vfiprintf_r>:
    7830:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7834:	e250a000 	subs	sl, r0, #0
    7838:	e24dde4e 	sub	sp, sp, #1248	; 0x4e0
    783c:	e1a07001 	mov	r7, r1
    7840:	e1a04002 	mov	r4, r2
    7844:	e58d3014 	str	r3, [sp, #20]
    7848:	0a000002 	beq	7858 <_vfiprintf_r+0x28>
    784c:	e59a3038 	ldr	r3, [sl, #56]	; 0x38
    7850:	e3530000 	cmp	r3, #0
    7854:	0a000365 	beq	85f0 <_vfiprintf_r+0xdc0>
    7858:	e1d780bc 	ldrh	r8, [r7, #12]
    785c:	e3180a02 	tst	r8, #8192	; 0x2000
    7860:	05973064 	ldreq	r3, [r7, #100]	; 0x64
    7864:	03888a02 	orreq	r8, r8, #8192	; 0x2000
    7868:	03c33a02 	biceq	r3, r3, #8192	; 0x2000
    786c:	01c780bc 	strheq	r8, [r7, #12]
    7870:	05873064 	streq	r3, [r7, #100]	; 0x64
    7874:	e3180008 	tst	r8, #8
    7878:	0a000307 	beq	849c <_vfiprintf_r+0xc6c>
    787c:	e5973010 	ldr	r3, [r7, #16]
    7880:	e3530000 	cmp	r3, #0
    7884:	0a000304 	beq	849c <_vfiprintf_r+0xc6c>
    7888:	e208301a 	and	r3, r8, #26
    788c:	e353000a 	cmp	r3, #10
    7890:	0a00030a 	beq	84c0 <_vfiprintf_r+0xc90>
    7894:	e3a03000 	mov	r3, #0
    7898:	e28d6078 	add	r6, sp, #120	; 0x78
    789c:	e28dc077 	add	ip, sp, #119	; 0x77
    78a0:	e28d00e0 	add	r0, sp, #224	; 0xe0
    78a4:	e58d3030 	str	r3, [sp, #48]	; 0x30
    78a8:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    78ac:	e58d3048 	str	r3, [sp, #72]	; 0x48
    78b0:	e58d300c 	str	r3, [sp, #12]
    78b4:	e06c3006 	rsb	r3, ip, r6
    78b8:	e58d6028 	str	r6, [sp, #40]	; 0x28
    78bc:	e58dc02c 	str	ip, [sp, #44]	; 0x2c
    78c0:	e58d0044 	str	r0, [sp, #68]	; 0x44
    78c4:	e58d3038 	str	r3, [sp, #56]	; 0x38
    78c8:	e58da01c 	str	sl, [sp, #28]
    78cc:	e1a0b004 	mov	fp, r4
    78d0:	e1a08000 	mov	r8, r0
    78d4:	e5db3000 	ldrb	r3, [fp]
    78d8:	e3530025 	cmp	r3, #37	; 0x25
    78dc:	13530000 	cmpne	r3, #0
    78e0:	0a00027b 	beq	82d4 <_vfiprintf_r+0xaa4>
    78e4:	e28b3001 	add	r3, fp, #1
    78e8:	e1a04003 	mov	r4, r3
    78ec:	e5d33000 	ldrb	r3, [r3]
    78f0:	e3530025 	cmp	r3, #37	; 0x25
    78f4:	13530000 	cmpne	r3, #0
    78f8:	e2843001 	add	r3, r4, #1
    78fc:	1afffff9 	bne	78e8 <_vfiprintf_r+0xb8>
    7900:	e054500b 	subs	r5, r4, fp
    7904:	0a00000d 	beq	7940 <_vfiprintf_r+0x110>
    7908:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    790c:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    7910:	e2822001 	add	r2, r2, #1
    7914:	e0811005 	add	r1, r1, r5
    7918:	e3520007 	cmp	r2, #7
    791c:	e588b000 	str	fp, [r8]
    7920:	e5885004 	str	r5, [r8, #4]
    7924:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    7928:	e58d2048 	str	r2, [sp, #72]	; 0x48
    792c:	d2888008 	addle	r8, r8, #8
    7930:	ca000310 	bgt	8578 <_vfiprintf_r+0xd48>
    7934:	e59dc00c 	ldr	ip, [sp, #12]
    7938:	e08cc005 	add	ip, ip, r5
    793c:	e58dc00c 	str	ip, [sp, #12]
    7940:	e5d43000 	ldrb	r3, [r4]
    7944:	e3530000 	cmp	r3, #0
    7948:	0a00026e 	beq	8308 <_vfiprintf_r+0xad8>
    794c:	e3a03000 	mov	r3, #0
    7950:	e5cd303f 	strb	r3, [sp, #63]	; 0x3f
    7954:	e58d3018 	str	r3, [sp, #24]
    7958:	e58d3000 	str	r3, [sp]
    795c:	e284b001 	add	fp, r4, #1
    7960:	e1a01003 	mov	r1, r3
    7964:	e3e04000 	mvn	r4, #0
    7968:	e4db2001 	ldrb	r2, [fp], #1
    796c:	e2423020 	sub	r3, r2, #32
    7970:	e3530058 	cmp	r3, #88	; 0x58
    7974:	979ff103 	ldrls	pc, [pc, r3, lsl #2]
    7978:	ea00012e 	b	7e38 <_vfiprintf_r+0x608>
    797c:	00007f80 	.word	0x00007f80
    7980:	00007e38 	.word	0x00007e38
    7984:	00007e38 	.word	0x00007e38
    7988:	00007f70 	.word	0x00007f70
    798c:	00007e38 	.word	0x00007e38
    7990:	00007e38 	.word	0x00007e38
    7994:	00007e38 	.word	0x00007e38
    7998:	00007e38 	.word	0x00007e38
    799c:	00007e38 	.word	0x00007e38
    79a0:	00007e38 	.word	0x00007e38
    79a4:	00007be8 	.word	0x00007be8
    79a8:	00007f68 	.word	0x00007f68
    79ac:	00007e38 	.word	0x00007e38
    79b0:	00007c10 	.word	0x00007c10
    79b4:	00007fcc 	.word	0x00007fcc
    79b8:	00007e38 	.word	0x00007e38
    79bc:	00007fbc 	.word	0x00007fbc
    79c0:	00007f8c 	.word	0x00007f8c
    79c4:	00007f8c 	.word	0x00007f8c
    79c8:	00007f8c 	.word	0x00007f8c
    79cc:	00007f8c 	.word	0x00007f8c
    79d0:	00007f8c 	.word	0x00007f8c
    79d4:	00007f8c 	.word	0x00007f8c
    79d8:	00007f8c 	.word	0x00007f8c
    79dc:	00007f8c 	.word	0x00007f8c
    79e0:	00007f8c 	.word	0x00007f8c
    79e4:	00007e38 	.word	0x00007e38
    79e8:	00007e38 	.word	0x00007e38
    79ec:	00007e38 	.word	0x00007e38
    79f0:	00007e38 	.word	0x00007e38
    79f4:	00007e38 	.word	0x00007e38
    79f8:	00007e38 	.word	0x00007e38
    79fc:	00007e38 	.word	0x00007e38
    7a00:	00007e38 	.word	0x00007e38
    7a04:	00007e38 	.word	0x00007e38
    7a08:	00007e38 	.word	0x00007e38
    7a0c:	00007f54 	.word	0x00007f54
    7a10:	00007e38 	.word	0x00007e38
    7a14:	00007e38 	.word	0x00007e38
    7a18:	00007e38 	.word	0x00007e38
    7a1c:	00007e38 	.word	0x00007e38
    7a20:	00007e38 	.word	0x00007e38
    7a24:	00007e38 	.word	0x00007e38
    7a28:	00007e38 	.word	0x00007e38
    7a2c:	00007e38 	.word	0x00007e38
    7a30:	00007e38 	.word	0x00007e38
    7a34:	00007e38 	.word	0x00007e38
    7a38:	00007bb0 	.word	0x00007bb0
    7a3c:	00007e38 	.word	0x00007e38
    7a40:	00007e38 	.word	0x00007e38
    7a44:	00007e38 	.word	0x00007e38
    7a48:	00007e38 	.word	0x00007e38
    7a4c:	00007e38 	.word	0x00007e38
    7a50:	00007ae0 	.word	0x00007ae0
    7a54:	00007e38 	.word	0x00007e38
    7a58:	00007e38 	.word	0x00007e38
    7a5c:	00007de8 	.word	0x00007de8
    7a60:	00007e38 	.word	0x00007e38
    7a64:	00007e38 	.word	0x00007e38
    7a68:	00007e38 	.word	0x00007e38
    7a6c:	00007e38 	.word	0x00007e38
    7a70:	00007e38 	.word	0x00007e38
    7a74:	00007e38 	.word	0x00007e38
    7a78:	00007e38 	.word	0x00007e38
    7a7c:	00007e38 	.word	0x00007e38
    7a80:	00007e38 	.word	0x00007e38
    7a84:	00007e38 	.word	0x00007e38
    7a88:	00007c88 	.word	0x00007c88
    7a8c:	00007c40 	.word	0x00007c40
    7a90:	00007e38 	.word	0x00007e38
    7a94:	00007e38 	.word	0x00007e38
    7a98:	00007e38 	.word	0x00007e38
    7a9c:	00007c30 	.word	0x00007c30
    7aa0:	00007c40 	.word	0x00007c40
    7aa4:	00007e38 	.word	0x00007e38
    7aa8:	00007e38 	.word	0x00007e38
    7aac:	00007c20 	.word	0x00007c20
    7ab0:	00007e38 	.word	0x00007e38
    7ab4:	00007f1c 	.word	0x00007f1c
    7ab8:	00007bbc 	.word	0x00007bbc
    7abc:	00007ed8 	.word	0x00007ed8
    7ac0:	00007ec8 	.word	0x00007ec8
    7ac4:	00007e38 	.word	0x00007e38
    7ac8:	00007e64 	.word	0x00007e64
    7acc:	00007e38 	.word	0x00007e38
    7ad0:	00007aec 	.word	0x00007aec
    7ad4:	00007e38 	.word	0x00007e38
    7ad8:	00007e38 	.word	0x00007e38
    7adc:	00008014 	.word	0x00008014
    7ae0:	e59d5000 	ldr	r5, [sp]
    7ae4:	e3855010 	orr	r5, r5, #16
    7ae8:	e58d5000 	str	r5, [sp]
    7aec:	e59d6000 	ldr	r6, [sp]
    7af0:	e3160010 	tst	r6, #16
    7af4:	0a0002dd 	beq	8670 <_vfiprintf_r+0xe40>
    7af8:	e59dc014 	ldr	ip, [sp, #20]
    7afc:	e59c3000 	ldr	r3, [ip]
    7b00:	e28cc004 	add	ip, ip, #4
    7b04:	e2932000 	adds	r2, r3, #0
    7b08:	e58dc014 	str	ip, [sp, #20]
    7b0c:	e3a00001 	mov	r0, #1
    7b10:	13a02001 	movne	r2, #1
    7b14:	e3a01000 	mov	r1, #0
    7b18:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7b1c:	e3540000 	cmp	r4, #0
    7b20:	a59d5000 	ldrge	r5, [sp]
    7b24:	a3c55080 	bicge	r5, r5, #128	; 0x80
    7b28:	a58d5000 	strge	r5, [sp]
    7b2c:	e3540000 	cmp	r4, #0
    7b30:	13822001 	orrne	r2, r2, #1
    7b34:	e21220ff 	ands	r2, r2, #255	; 0xff
    7b38:	0a0001e7 	beq	82dc <_vfiprintf_r+0xaac>
    7b3c:	e3500001 	cmp	r0, #1
    7b40:	0a0002ac 	beq	85f8 <_vfiprintf_r+0xdc8>
    7b44:	e3500002 	cmp	r0, #2
    7b48:	e59d202c 	ldr	r2, [sp, #44]	; 0x2c
    7b4c:	0a0002bb 	beq	8640 <_vfiprintf_r+0xe10>
    7b50:	e2030007 	and	r0, r3, #7
    7b54:	e2800030 	add	r0, r0, #48	; 0x30
    7b58:	e1b031a3 	lsrs	r3, r3, #3
    7b5c:	e1a05002 	mov	r5, r2
    7b60:	e5c20000 	strb	r0, [r2]
    7b64:	e2422001 	sub	r2, r2, #1
    7b68:	1afffff8 	bne	7b50 <_vfiprintf_r+0x320>
    7b6c:	e59d6000 	ldr	r6, [sp]
    7b70:	e3160001 	tst	r6, #1
    7b74:	e1a03005 	mov	r3, r5
    7b78:	1a0002ed 	bne	8734 <_vfiprintf_r+0xf04>
    7b7c:	e59dc028 	ldr	ip, [sp, #40]	; 0x28
    7b80:	e065c00c 	rsb	ip, r5, ip
    7b84:	e58dc008 	str	ip, [sp, #8]
    7b88:	e58d4010 	str	r4, [sp, #16]
    7b8c:	e59d3008 	ldr	r3, [sp, #8]
    7b90:	e59d6010 	ldr	r6, [sp, #16]
    7b94:	e1530006 	cmp	r3, r6
    7b98:	b1a03006 	movlt	r3, r6
    7b9c:	e3510000 	cmp	r1, #0
    7ba0:	e58d3004 	str	r3, [sp, #4]
    7ba4:	12833001 	addne	r3, r3, #1
    7ba8:	158d3004 	strne	r3, [sp, #4]
    7bac:	ea000042 	b	7cbc <_vfiprintf_r+0x48c>
    7bb0:	e59d6000 	ldr	r6, [sp]
    7bb4:	e3866010 	orr	r6, r6, #16
    7bb8:	e58d6000 	str	r6, [sp]
    7bbc:	e59dc000 	ldr	ip, [sp]
    7bc0:	e21c2010 	ands	r2, ip, #16
    7bc4:	0a0002bf 	beq	86c8 <_vfiprintf_r+0xe98>
    7bc8:	e59d5014 	ldr	r5, [sp, #20]
    7bcc:	e5953000 	ldr	r3, [r5]
    7bd0:	e3a00000 	mov	r0, #0
    7bd4:	e0532000 	subs	r2, r3, r0
    7bd8:	e2855004 	add	r5, r5, #4
    7bdc:	13a02001 	movne	r2, #1
    7be0:	e58d5014 	str	r5, [sp, #20]
    7be4:	eaffffca 	b	7b14 <_vfiprintf_r+0x2e4>
    7be8:	e59d6014 	ldr	r6, [sp, #20]
    7bec:	e5966000 	ldr	r6, [r6]
    7bf0:	e59dc014 	ldr	ip, [sp, #20]
    7bf4:	e3560000 	cmp	r6, #0
    7bf8:	e58d6018 	str	r6, [sp, #24]
    7bfc:	e28c3004 	add	r3, ip, #4
    7c00:	aa0002bb 	bge	86f4 <_vfiprintf_r+0xec4>
    7c04:	e2666000 	rsb	r6, r6, #0
    7c08:	e58d6018 	str	r6, [sp, #24]
    7c0c:	e58d3014 	str	r3, [sp, #20]
    7c10:	e59d3000 	ldr	r3, [sp]
    7c14:	e3833004 	orr	r3, r3, #4
    7c18:	e58d3000 	str	r3, [sp]
    7c1c:	eaffff51 	b	7968 <_vfiprintf_r+0x138>
    7c20:	e59d3000 	ldr	r3, [sp]
    7c24:	e3833010 	orr	r3, r3, #16
    7c28:	e58d3000 	str	r3, [sp]
    7c2c:	eaffff4d 	b	7968 <_vfiprintf_r+0x138>
    7c30:	e59dc000 	ldr	ip, [sp]
    7c34:	e38cc040 	orr	ip, ip, #64	; 0x40
    7c38:	e58dc000 	str	ip, [sp]
    7c3c:	eaffff49 	b	7968 <_vfiprintf_r+0x138>
    7c40:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7c44:	e59d5000 	ldr	r5, [sp]
    7c48:	e3150010 	tst	r5, #16
    7c4c:	1a000002 	bne	7c5c <_vfiprintf_r+0x42c>
    7c50:	e59dc000 	ldr	ip, [sp]
    7c54:	e31c0040 	tst	ip, #64	; 0x40
    7c58:	1a0002c6 	bne	8778 <_vfiprintf_r+0xf48>
    7c5c:	e59d6014 	ldr	r6, [sp, #20]
    7c60:	e5963000 	ldr	r3, [r6]
    7c64:	e2866004 	add	r6, r6, #4
    7c68:	e3530000 	cmp	r3, #0
    7c6c:	e58d6014 	str	r6, [sp, #20]
    7c70:	ba0002c6 	blt	8790 <_vfiprintf_r+0xf60>
    7c74:	e5dd103f 	ldrb	r1, [sp, #63]	; 0x3f
    7c78:	03a02000 	moveq	r2, #0
    7c7c:	13a02001 	movne	r2, #1
    7c80:	e3a00001 	mov	r0, #1
    7c84:	eaffffa4 	b	7b1c <_vfiprintf_r+0x2ec>
    7c88:	e59d6014 	ldr	r6, [sp, #20]
    7c8c:	e5963000 	ldr	r3, [r6]
    7c90:	e3a0c001 	mov	ip, #1
    7c94:	e5cd3050 	strb	r3, [sp, #80]	; 0x50
    7c98:	e2866004 	add	r6, r6, #4
    7c9c:	e3a03000 	mov	r3, #0
    7ca0:	e58dc004 	str	ip, [sp, #4]
    7ca4:	e5cd303f 	strb	r3, [sp, #63]	; 0x3f
    7ca8:	e58d6014 	str	r6, [sp, #20]
    7cac:	e58dc008 	str	ip, [sp, #8]
    7cb0:	e28d5050 	add	r5, sp, #80	; 0x50
    7cb4:	e3a06000 	mov	r6, #0
    7cb8:	e58d6010 	str	r6, [sp, #16]
    7cbc:	e59dc000 	ldr	ip, [sp]
    7cc0:	e21cc002 	ands	ip, ip, #2
    7cc4:	159d3004 	ldrne	r3, [sp, #4]
    7cc8:	e59d6000 	ldr	r6, [sp]
    7ccc:	12833002 	addne	r3, r3, #2
    7cd0:	158d3004 	strne	r3, [sp, #4]
    7cd4:	e2166084 	ands	r6, r6, #132	; 0x84
    7cd8:	e58dc020 	str	ip, [sp, #32]
    7cdc:	e58d6024 	str	r6, [sp, #36]	; 0x24
    7ce0:	1a0000cf 	bne	8024 <_vfiprintf_r+0x7f4>
    7ce4:	e59dc018 	ldr	ip, [sp, #24]
    7ce8:	e59d3004 	ldr	r3, [sp, #4]
    7cec:	e063400c 	rsb	r4, r3, ip
    7cf0:	e3540000 	cmp	r4, #0
    7cf4:	da0000ca 	ble	8024 <_vfiprintf_r+0x7f4>
    7cf8:	e3540010 	cmp	r4, #16
    7cfc:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    7d00:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    7d04:	e59fab74 	ldr	sl, [pc, #2932]	; 8880 <_vfiprintf_r+0x1050>
    7d08:	da000023 	ble	7d9c <_vfiprintf_r+0x56c>
    7d0c:	e28d6044 	add	r6, sp, #68	; 0x44
    7d10:	e58d5034 	str	r5, [sp, #52]	; 0x34
    7d14:	e3a09010 	mov	r9, #16
    7d18:	e1a0500a 	mov	r5, sl
    7d1c:	e1a03002 	mov	r3, r2
    7d20:	e1a0a004 	mov	sl, r4
    7d24:	e1a04006 	mov	r4, r6
    7d28:	e59d601c 	ldr	r6, [sp, #28]
    7d2c:	ea000002 	b	7d3c <_vfiprintf_r+0x50c>
    7d30:	e24aa010 	sub	sl, sl, #16
    7d34:	e35a0010 	cmp	sl, #16
    7d38:	da000013 	ble	7d8c <_vfiprintf_r+0x55c>
    7d3c:	e2833001 	add	r3, r3, #1
    7d40:	e2811010 	add	r1, r1, #16
    7d44:	e3530007 	cmp	r3, #7
    7d48:	e8880220 	stm	r8, {r5, r9}
    7d4c:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    7d50:	e58d3048 	str	r3, [sp, #72]	; 0x48
    7d54:	d2888008 	addle	r8, r8, #8
    7d58:	dafffff4 	ble	7d30 <_vfiprintf_r+0x500>
    7d5c:	e1a00006 	mov	r0, r6
    7d60:	e1a01007 	mov	r1, r7
    7d64:	e1a02004 	mov	r2, r4
    7d68:	ebfffe83 	bl	777c <__sprint_r>
    7d6c:	e3500000 	cmp	r0, #0
    7d70:	1a00016d 	bne	832c <_vfiprintf_r+0xafc>
    7d74:	e24aa010 	sub	sl, sl, #16
    7d78:	e35a0010 	cmp	sl, #16
    7d7c:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    7d80:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    7d84:	e28d80e0 	add	r8, sp, #224	; 0xe0
    7d88:	caffffeb 	bgt	7d3c <_vfiprintf_r+0x50c>
    7d8c:	e1a0400a 	mov	r4, sl
    7d90:	e1a0a005 	mov	sl, r5
    7d94:	e59d5034 	ldr	r5, [sp, #52]	; 0x34
    7d98:	e1a02003 	mov	r2, r3
    7d9c:	e2822001 	add	r2, r2, #1
    7da0:	e0811004 	add	r1, r1, r4
    7da4:	e3520007 	cmp	r2, #7
    7da8:	e588a000 	str	sl, [r8]
    7dac:	e5884004 	str	r4, [r8, #4]
    7db0:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    7db4:	e58d2048 	str	r2, [sp, #72]	; 0x48
    7db8:	d2888008 	addle	r8, r8, #8
    7dbc:	da00009a 	ble	802c <_vfiprintf_r+0x7fc>
    7dc0:	e59d001c 	ldr	r0, [sp, #28]
    7dc4:	e1a01007 	mov	r1, r7
    7dc8:	e28d2044 	add	r2, sp, #68	; 0x44
    7dcc:	ebfffe6a 	bl	777c <__sprint_r>
    7dd0:	e3500000 	cmp	r0, #0
    7dd4:	1a000154 	bne	832c <_vfiprintf_r+0xafc>
    7dd8:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    7ddc:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    7de0:	e28d80e0 	add	r8, sp, #224	; 0xe0
    7de4:	ea000090 	b	802c <_vfiprintf_r+0x7fc>
    7de8:	e59f3a94 	ldr	r3, [pc, #2708]	; 8884 <_vfiprintf_r+0x1054>
    7dec:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7df0:	e58d3030 	str	r3, [sp, #48]	; 0x30
    7df4:	e59d3000 	ldr	r3, [sp]
    7df8:	e3130010 	tst	r3, #16
    7dfc:	1a000002 	bne	7e0c <_vfiprintf_r+0x5dc>
    7e00:	e59d6000 	ldr	r6, [sp]
    7e04:	e3160040 	tst	r6, #64	; 0x40
    7e08:	1a000275 	bne	87e4 <_vfiprintf_r+0xfb4>
    7e0c:	e59d5014 	ldr	r5, [sp, #20]
    7e10:	e5953000 	ldr	r3, [r5]
    7e14:	e2855004 	add	r5, r5, #4
    7e18:	e58d5014 	str	r5, [sp, #20]
    7e1c:	e59d6000 	ldr	r6, [sp]
    7e20:	e3160001 	tst	r6, #1
    7e24:	1a00021c 	bne	869c <_vfiprintf_r+0xe6c>
    7e28:	e2932000 	adds	r2, r3, #0
    7e2c:	13a02001 	movne	r2, #1
    7e30:	e3a00002 	mov	r0, #2
    7e34:	eaffff36 	b	7b14 <_vfiprintf_r+0x2e4>
    7e38:	e3520000 	cmp	r2, #0
    7e3c:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7e40:	0a000130 	beq	8308 <_vfiprintf_r+0xad8>
    7e44:	e3a0c001 	mov	ip, #1
    7e48:	e3a03000 	mov	r3, #0
    7e4c:	e58dc004 	str	ip, [sp, #4]
    7e50:	e5cd2050 	strb	r2, [sp, #80]	; 0x50
    7e54:	e5cd303f 	strb	r3, [sp, #63]	; 0x3f
    7e58:	e58dc008 	str	ip, [sp, #8]
    7e5c:	e28d5050 	add	r5, sp, #80	; 0x50
    7e60:	eaffff93 	b	7cb4 <_vfiprintf_r+0x484>
    7e64:	e59d6014 	ldr	r6, [sp, #20]
    7e68:	e5965000 	ldr	r5, [r6]
    7e6c:	e59dc014 	ldr	ip, [sp, #20]
    7e70:	e3a06000 	mov	r6, #0
    7e74:	e1550006 	cmp	r5, r6
    7e78:	e5cd603f 	strb	r6, [sp, #63]	; 0x3f
    7e7c:	e28ca004 	add	sl, ip, #4
    7e80:	0a000269 	beq	882c <_vfiprintf_r+0xffc>
    7e84:	e3540000 	cmp	r4, #0
    7e88:	e1a00005 	mov	r0, r5
    7e8c:	ba000259 	blt	87f8 <_vfiprintf_r+0xfc8>
    7e90:	e1a01006 	mov	r1, r6
    7e94:	e1a02004 	mov	r2, r4
    7e98:	ebfff979 	bl	6484 <memchr>
    7e9c:	e3500000 	cmp	r0, #0
    7ea0:	0a000269 	beq	884c <_vfiprintf_r+0x101c>
    7ea4:	e0650000 	rsb	r0, r5, r0
    7ea8:	e1500004 	cmp	r0, r4
    7eac:	e58d0008 	str	r0, [sp, #8]
    7eb0:	e5dd103f 	ldrb	r1, [sp, #63]	; 0x3f
    7eb4:	da000252 	ble	8804 <_vfiprintf_r+0xfd4>
    7eb8:	e58d4008 	str	r4, [sp, #8]
    7ebc:	e58da014 	str	sl, [sp, #20]
    7ec0:	e58d6010 	str	r6, [sp, #16]
    7ec4:	eaffff30 	b	7b8c <_vfiprintf_r+0x35c>
    7ec8:	e59d5000 	ldr	r5, [sp]
    7ecc:	e3855010 	orr	r5, r5, #16
    7ed0:	e58d5000 	str	r5, [sp]
    7ed4:	eafffea3 	b	7968 <_vfiprintf_r+0x138>
    7ed8:	e59d6014 	ldr	r6, [sp, #20]
    7edc:	e59dc000 	ldr	ip, [sp]
    7ee0:	e5963000 	ldr	r3, [r6]
    7ee4:	e3a02030 	mov	r2, #48	; 0x30
    7ee8:	e5cd2040 	strb	r2, [sp, #64]	; 0x40
    7eec:	e59f5994 	ldr	r5, [pc, #2452]	; 8888 <_vfiprintf_r+0x1058>
    7ef0:	e3a02078 	mov	r2, #120	; 0x78
    7ef4:	e38cc002 	orr	ip, ip, #2
    7ef8:	e5cd2041 	strb	r2, [sp, #65]	; 0x41
    7efc:	e2866004 	add	r6, r6, #4
    7f00:	e2932000 	adds	r2, r3, #0
    7f04:	e58dc000 	str	ip, [sp]
    7f08:	13a02001 	movne	r2, #1
    7f0c:	e58d6014 	str	r6, [sp, #20]
    7f10:	e58d5030 	str	r5, [sp, #48]	; 0x30
    7f14:	e3a00002 	mov	r0, #2
    7f18:	eafffefd 	b	7b14 <_vfiprintf_r+0x2e4>
    7f1c:	e59dc000 	ldr	ip, [sp]
    7f20:	e31c0010 	tst	ip, #16
    7f24:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7f28:	1a000226 	bne	87c8 <_vfiprintf_r+0xf98>
    7f2c:	e59dc000 	ldr	ip, [sp]
    7f30:	e31c0040 	tst	ip, #64	; 0x40
    7f34:	0a000235 	beq	8810 <_vfiprintf_r+0xfe0>
    7f38:	e59d5014 	ldr	r5, [sp, #20]
    7f3c:	e59d600c 	ldr	r6, [sp, #12]
    7f40:	e5953000 	ldr	r3, [r5]
    7f44:	e2855004 	add	r5, r5, #4
    7f48:	e58d5014 	str	r5, [sp, #20]
    7f4c:	e1c360b0 	strh	r6, [r3]
    7f50:	eafffe5f 	b	78d4 <_vfiprintf_r+0xa4>
    7f54:	e59d3000 	ldr	r3, [sp]
    7f58:	e3833010 	orr	r3, r3, #16
    7f5c:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    7f60:	e58d3000 	str	r3, [sp]
    7f64:	eaffff36 	b	7c44 <_vfiprintf_r+0x414>
    7f68:	e3a0102b 	mov	r1, #43	; 0x2b
    7f6c:	eafffe7d 	b	7968 <_vfiprintf_r+0x138>
    7f70:	e59d5000 	ldr	r5, [sp]
    7f74:	e3855001 	orr	r5, r5, #1
    7f78:	e58d5000 	str	r5, [sp]
    7f7c:	eafffe79 	b	7968 <_vfiprintf_r+0x138>
    7f80:	e3510000 	cmp	r1, #0
    7f84:	03a01020 	moveq	r1, #32
    7f88:	eafffe76 	b	7968 <_vfiprintf_r+0x138>
    7f8c:	e1a0000b 	mov	r0, fp
    7f90:	e3a03000 	mov	r3, #0
    7f94:	e242c030 	sub	ip, r2, #48	; 0x30
    7f98:	e4d02001 	ldrb	r2, [r0], #1
    7f9c:	e2425030 	sub	r5, r2, #48	; 0x30
    7fa0:	e0833103 	add	r3, r3, r3, lsl #2
    7fa4:	e3550009 	cmp	r5, #9
    7fa8:	e08c3083 	add	r3, ip, r3, lsl #1
    7fac:	e1a0b000 	mov	fp, r0
    7fb0:	9afffff7 	bls	7f94 <_vfiprintf_r+0x764>
    7fb4:	e58d3018 	str	r3, [sp, #24]
    7fb8:	eafffe6b 	b	796c <_vfiprintf_r+0x13c>
    7fbc:	e59d6000 	ldr	r6, [sp]
    7fc0:	e3866080 	orr	r6, r6, #128	; 0x80
    7fc4:	e58d6000 	str	r6, [sp]
    7fc8:	eafffe66 	b	7968 <_vfiprintf_r+0x138>
    7fcc:	e4db2001 	ldrb	r2, [fp], #1
    7fd0:	e352002a 	cmp	r2, #42	; 0x2a
    7fd4:	0a000221 	beq	8860 <_vfiprintf_r+0x1030>
    7fd8:	e2423030 	sub	r3, r2, #48	; 0x30
    7fdc:	e3530009 	cmp	r3, #9
    7fe0:	83a04000 	movhi	r4, #0
    7fe4:	8afffe60 	bhi	796c <_vfiprintf_r+0x13c>
    7fe8:	e1a0000b 	mov	r0, fp
    7fec:	e3a04000 	mov	r4, #0
    7ff0:	e4d02001 	ldrb	r2, [r0], #1
    7ff4:	e0844104 	add	r4, r4, r4, lsl #2
    7ff8:	e0834084 	add	r4, r3, r4, lsl #1
    7ffc:	e2423030 	sub	r3, r2, #48	; 0x30
    8000:	e3530009 	cmp	r3, #9
    8004:	e1a0b000 	mov	fp, r0
    8008:	9afffff8 	bls	7ff0 <_vfiprintf_r+0x7c0>
    800c:	e1844fc4 	orr	r4, r4, r4, asr #31
    8010:	eafffe55 	b	796c <_vfiprintf_r+0x13c>
    8014:	e59fc86c 	ldr	ip, [pc, #2156]	; 8888 <_vfiprintf_r+0x1058>
    8018:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    801c:	e58dc030 	str	ip, [sp, #48]	; 0x30
    8020:	eaffff73 	b	7df4 <_vfiprintf_r+0x5c4>
    8024:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    8028:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    802c:	e5dd303f 	ldrb	r3, [sp, #63]	; 0x3f
    8030:	e3530000 	cmp	r3, #0
    8034:	0a00000a 	beq	8064 <_vfiprintf_r+0x834>
    8038:	e2822001 	add	r2, r2, #1
    803c:	e28d303f 	add	r3, sp, #63	; 0x3f
    8040:	e5883000 	str	r3, [r8]
    8044:	e2811001 	add	r1, r1, #1
    8048:	e3520007 	cmp	r2, #7
    804c:	e3a03001 	mov	r3, #1
    8050:	e5883004 	str	r3, [r8, #4]
    8054:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    8058:	e58d2048 	str	r2, [sp, #72]	; 0x48
    805c:	d2888008 	addle	r8, r8, #8
    8060:	ca000157 	bgt	85c4 <_vfiprintf_r+0xd94>
    8064:	e59dc020 	ldr	ip, [sp, #32]
    8068:	e35c0000 	cmp	ip, #0
    806c:	0a00000a 	beq	809c <_vfiprintf_r+0x86c>
    8070:	e2822001 	add	r2, r2, #1
    8074:	e28d3040 	add	r3, sp, #64	; 0x40
    8078:	e5883000 	str	r3, [r8]
    807c:	e2811002 	add	r1, r1, #2
    8080:	e3520007 	cmp	r2, #7
    8084:	e3a03002 	mov	r3, #2
    8088:	e5883004 	str	r3, [r8, #4]
    808c:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    8090:	e58d2048 	str	r2, [sp, #72]	; 0x48
    8094:	d2888008 	addle	r8, r8, #8
    8098:	ca00013f 	bgt	859c <_vfiprintf_r+0xd6c>
    809c:	e59d6024 	ldr	r6, [sp, #36]	; 0x24
    80a0:	e3560080 	cmp	r6, #128	; 0x80
    80a4:	0a0000a8 	beq	834c <_vfiprintf_r+0xb1c>
    80a8:	e59d6010 	ldr	r6, [sp, #16]
    80ac:	e59dc008 	ldr	ip, [sp, #8]
    80b0:	e06c4006 	rsb	r4, ip, r6
    80b4:	e3540000 	cmp	r4, #0
    80b8:	da000038 	ble	81a0 <_vfiprintf_r+0x970>
    80bc:	e3540010 	cmp	r4, #16
    80c0:	e59fa7c4 	ldr	sl, [pc, #1988]	; 888c <_vfiprintf_r+0x105c>
    80c4:	da000023 	ble	8158 <_vfiprintf_r+0x928>
    80c8:	e28d6044 	add	r6, sp, #68	; 0x44
    80cc:	e58d5010 	str	r5, [sp, #16]
    80d0:	e3a09010 	mov	r9, #16
    80d4:	e1a0500a 	mov	r5, sl
    80d8:	e1a03002 	mov	r3, r2
    80dc:	e1a0a004 	mov	sl, r4
    80e0:	e1a04006 	mov	r4, r6
    80e4:	e59d601c 	ldr	r6, [sp, #28]
    80e8:	ea000002 	b	80f8 <_vfiprintf_r+0x8c8>
    80ec:	e24aa010 	sub	sl, sl, #16
    80f0:	e35a0010 	cmp	sl, #16
    80f4:	da000013 	ble	8148 <_vfiprintf_r+0x918>
    80f8:	e2833001 	add	r3, r3, #1
    80fc:	e2811010 	add	r1, r1, #16
    8100:	e3530007 	cmp	r3, #7
    8104:	e8880220 	stm	r8, {r5, r9}
    8108:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    810c:	e58d3048 	str	r3, [sp, #72]	; 0x48
    8110:	d2888008 	addle	r8, r8, #8
    8114:	dafffff4 	ble	80ec <_vfiprintf_r+0x8bc>
    8118:	e1a00006 	mov	r0, r6
    811c:	e1a01007 	mov	r1, r7
    8120:	e1a02004 	mov	r2, r4
    8124:	ebfffd94 	bl	777c <__sprint_r>
    8128:	e3500000 	cmp	r0, #0
    812c:	1a00007e 	bne	832c <_vfiprintf_r+0xafc>
    8130:	e24aa010 	sub	sl, sl, #16
    8134:	e35a0010 	cmp	sl, #16
    8138:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    813c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    8140:	e28d80e0 	add	r8, sp, #224	; 0xe0
    8144:	caffffeb 	bgt	80f8 <_vfiprintf_r+0x8c8>
    8148:	e1a0400a 	mov	r4, sl
    814c:	e1a0a005 	mov	sl, r5
    8150:	e59d5010 	ldr	r5, [sp, #16]
    8154:	e1a02003 	mov	r2, r3
    8158:	e2822001 	add	r2, r2, #1
    815c:	e0811004 	add	r1, r1, r4
    8160:	e3520007 	cmp	r2, #7
    8164:	e588a000 	str	sl, [r8]
    8168:	e5884004 	str	r4, [r8, #4]
    816c:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    8170:	e58d2048 	str	r2, [sp, #72]	; 0x48
    8174:	d2888008 	addle	r8, r8, #8
    8178:	da000008 	ble	81a0 <_vfiprintf_r+0x970>
    817c:	e59d001c 	ldr	r0, [sp, #28]
    8180:	e1a01007 	mov	r1, r7
    8184:	e28d2044 	add	r2, sp, #68	; 0x44
    8188:	ebfffd7b 	bl	777c <__sprint_r>
    818c:	e3500000 	cmp	r0, #0
    8190:	1a000065 	bne	832c <_vfiprintf_r+0xafc>
    8194:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    8198:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    819c:	e28d80e0 	add	r8, sp, #224	; 0xe0
    81a0:	e59d6008 	ldr	r6, [sp, #8]
    81a4:	e2822001 	add	r2, r2, #1
    81a8:	e0811006 	add	r1, r1, r6
    81ac:	e3520007 	cmp	r2, #7
    81b0:	e8880060 	stm	r8, {r5, r6}
    81b4:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    81b8:	e58d2048 	str	r2, [sp, #72]	; 0x48
    81bc:	d2888008 	addle	r8, r8, #8
    81c0:	ca0000a2 	bgt	8450 <_vfiprintf_r+0xc20>
    81c4:	e59d3000 	ldr	r3, [sp]
    81c8:	e3130004 	tst	r3, #4
    81cc:	0a000030 	beq	8294 <_vfiprintf_r+0xa64>
    81d0:	e59d6018 	ldr	r6, [sp, #24]
    81d4:	e59dc004 	ldr	ip, [sp, #4]
    81d8:	e06c5006 	rsb	r5, ip, r6
    81dc:	e3550000 	cmp	r5, #0
    81e0:	da00002b 	ble	8294 <_vfiprintf_r+0xa64>
    81e4:	e3550010 	cmp	r5, #16
    81e8:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    81ec:	e59fa68c 	ldr	sl, [pc, #1676]	; 8880 <_vfiprintf_r+0x1050>
    81f0:	da00001f 	ble	8274 <_vfiprintf_r+0xa44>
    81f4:	e3a06010 	mov	r6, #16
    81f8:	e28d4044 	add	r4, sp, #68	; 0x44
    81fc:	e59d901c 	ldr	r9, [sp, #28]
    8200:	e1a03002 	mov	r3, r2
    8204:	e1a0c001 	mov	ip, r1
    8208:	ea000002 	b	8218 <_vfiprintf_r+0x9e8>
    820c:	e2455010 	sub	r5, r5, #16
    8210:	e3550010 	cmp	r5, #16
    8214:	da000014 	ble	826c <_vfiprintf_r+0xa3c>
    8218:	e2833001 	add	r3, r3, #1
    821c:	e28cc010 	add	ip, ip, #16
    8220:	e3530007 	cmp	r3, #7
    8224:	e588a000 	str	sl, [r8]
    8228:	e5886004 	str	r6, [r8, #4]
    822c:	e58dc04c 	str	ip, [sp, #76]	; 0x4c
    8230:	e58d3048 	str	r3, [sp, #72]	; 0x48
    8234:	d2888008 	addle	r8, r8, #8
    8238:	dafffff3 	ble	820c <_vfiprintf_r+0x9dc>
    823c:	e1a00009 	mov	r0, r9
    8240:	e1a01007 	mov	r1, r7
    8244:	e1a02004 	mov	r2, r4
    8248:	ebfffd4b 	bl	777c <__sprint_r>
    824c:	e3500000 	cmp	r0, #0
    8250:	1a000035 	bne	832c <_vfiprintf_r+0xafc>
    8254:	e2455010 	sub	r5, r5, #16
    8258:	e28d3048 	add	r3, sp, #72	; 0x48
    825c:	e3550010 	cmp	r5, #16
    8260:	e8931008 	ldm	r3, {r3, ip}
    8264:	e28d80e0 	add	r8, sp, #224	; 0xe0
    8268:	caffffea 	bgt	8218 <_vfiprintf_r+0x9e8>
    826c:	e1a02003 	mov	r2, r3
    8270:	e1a0100c 	mov	r1, ip
    8274:	e2822001 	add	r2, r2, #1
    8278:	e0851001 	add	r1, r5, r1
    827c:	e3520007 	cmp	r2, #7
    8280:	e588a000 	str	sl, [r8]
    8284:	e5885004 	str	r5, [r8, #4]
    8288:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    828c:	e58d2048 	str	r2, [sp, #72]	; 0x48
    8290:	ca000119 	bgt	86fc <_vfiprintf_r+0xecc>
    8294:	e59d500c 	ldr	r5, [sp, #12]
    8298:	e59d6004 	ldr	r6, [sp, #4]
    829c:	e59dc018 	ldr	ip, [sp, #24]
    82a0:	e156000c 	cmp	r6, ip
    82a4:	a0855006 	addge	r5, r5, r6
    82a8:	b085500c 	addlt	r5, r5, ip
    82ac:	e3510000 	cmp	r1, #0
    82b0:	e58d500c 	str	r5, [sp, #12]
    82b4:	1a00006e 	bne	8474 <_vfiprintf_r+0xc44>
    82b8:	e3a03000 	mov	r3, #0
    82bc:	e58d3048 	str	r3, [sp, #72]	; 0x48
    82c0:	e5db3000 	ldrb	r3, [fp]
    82c4:	e3530025 	cmp	r3, #37	; 0x25
    82c8:	13530000 	cmpne	r3, #0
    82cc:	e28d80e0 	add	r8, sp, #224	; 0xe0
    82d0:	1afffd83 	bne	78e4 <_vfiprintf_r+0xb4>
    82d4:	e1a0400b 	mov	r4, fp
    82d8:	eafffd98 	b	7940 <_vfiprintf_r+0x110>
    82dc:	e3500000 	cmp	r0, #0
    82e0:	1a00006a 	bne	8490 <_vfiprintf_r+0xc60>
    82e4:	e59d5000 	ldr	r5, [sp]
    82e8:	e3150001 	tst	r5, #1
    82ec:	0a0000d0 	beq	8634 <_vfiprintf_r+0xe04>
    82f0:	e59d6038 	ldr	r6, [sp, #56]	; 0x38
    82f4:	e3a03030 	mov	r3, #48	; 0x30
    82f8:	e5cd3077 	strb	r3, [sp, #119]	; 0x77
    82fc:	e58d6008 	str	r6, [sp, #8]
    8300:	e59d502c 	ldr	r5, [sp, #44]	; 0x2c
    8304:	eafffe1f 	b	7b88 <_vfiprintf_r+0x358>
    8308:	e59d304c 	ldr	r3, [sp, #76]	; 0x4c
    830c:	e3530000 	cmp	r3, #0
    8310:	e59da01c 	ldr	sl, [sp, #28]
    8314:	0a000004 	beq	832c <_vfiprintf_r+0xafc>
    8318:	e1a0000a 	mov	r0, sl
    831c:	e1a01007 	mov	r1, r7
    8320:	e28d2044 	add	r2, sp, #68	; 0x44
    8324:	e28d5050 	add	r5, sp, #80	; 0x50
    8328:	ebfffd13 	bl	777c <__sprint_r>
    832c:	e1d730bc 	ldrh	r3, [r7, #12]
    8330:	e3130040 	tst	r3, #64	; 0x40
    8334:	0a000001 	beq	8340 <_vfiprintf_r+0xb10>
    8338:	e3e03000 	mvn	r3, #0
    833c:	e58d300c 	str	r3, [sp, #12]
    8340:	e59d000c 	ldr	r0, [sp, #12]
    8344:	e28dde4e 	add	sp, sp, #1248	; 0x4e0
    8348:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    834c:	e59dc018 	ldr	ip, [sp, #24]
    8350:	e59d3004 	ldr	r3, [sp, #4]
    8354:	e063600c 	rsb	r6, r3, ip
    8358:	e3560000 	cmp	r6, #0
    835c:	daffff51 	ble	80a8 <_vfiprintf_r+0x878>
    8360:	e3560010 	cmp	r6, #16
    8364:	e59fa520 	ldr	sl, [pc, #1312]	; 888c <_vfiprintf_r+0x105c>
    8368:	da000025 	ble	8404 <_vfiprintf_r+0xbd4>
    836c:	e28d4044 	add	r4, sp, #68	; 0x44
    8370:	e1a0000a 	mov	r0, sl
    8374:	e58d5020 	str	r5, [sp, #32]
    8378:	e1a0a006 	mov	sl, r6
    837c:	e1a05004 	mov	r5, r4
    8380:	e3a09010 	mov	r9, #16
    8384:	e1a03002 	mov	r3, r2
    8388:	e59d401c 	ldr	r4, [sp, #28]
    838c:	e1a06000 	mov	r6, r0
    8390:	ea000002 	b	83a0 <_vfiprintf_r+0xb70>
    8394:	e24aa010 	sub	sl, sl, #16
    8398:	e35a0010 	cmp	sl, #16
    839c:	da000013 	ble	83f0 <_vfiprintf_r+0xbc0>
    83a0:	e2833001 	add	r3, r3, #1
    83a4:	e2811010 	add	r1, r1, #16
    83a8:	e3530007 	cmp	r3, #7
    83ac:	e8880240 	stm	r8, {r6, r9}
    83b0:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    83b4:	e58d3048 	str	r3, [sp, #72]	; 0x48
    83b8:	d2888008 	addle	r8, r8, #8
    83bc:	dafffff4 	ble	8394 <_vfiprintf_r+0xb64>
    83c0:	e1a00004 	mov	r0, r4
    83c4:	e1a01007 	mov	r1, r7
    83c8:	e1a02005 	mov	r2, r5
    83cc:	ebfffcea 	bl	777c <__sprint_r>
    83d0:	e3500000 	cmp	r0, #0
    83d4:	1affffd4 	bne	832c <_vfiprintf_r+0xafc>
    83d8:	e24aa010 	sub	sl, sl, #16
    83dc:	e35a0010 	cmp	sl, #16
    83e0:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    83e4:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    83e8:	e28d80e0 	add	r8, sp, #224	; 0xe0
    83ec:	caffffeb 	bgt	83a0 <_vfiprintf_r+0xb70>
    83f0:	e1a00006 	mov	r0, r6
    83f4:	e59d5020 	ldr	r5, [sp, #32]
    83f8:	e1a0600a 	mov	r6, sl
    83fc:	e1a02003 	mov	r2, r3
    8400:	e1a0a000 	mov	sl, r0
    8404:	e2822001 	add	r2, r2, #1
    8408:	e0811006 	add	r1, r1, r6
    840c:	e3520007 	cmp	r2, #7
    8410:	e588a000 	str	sl, [r8]
    8414:	e5886004 	str	r6, [r8, #4]
    8418:	e58d104c 	str	r1, [sp, #76]	; 0x4c
    841c:	e58d2048 	str	r2, [sp, #72]	; 0x48
    8420:	d2888008 	addle	r8, r8, #8
    8424:	daffff1f 	ble	80a8 <_vfiprintf_r+0x878>
    8428:	e59d001c 	ldr	r0, [sp, #28]
    842c:	e1a01007 	mov	r1, r7
    8430:	e28d2044 	add	r2, sp, #68	; 0x44
    8434:	ebfffcd0 	bl	777c <__sprint_r>
    8438:	e3500000 	cmp	r0, #0
    843c:	1affffba 	bne	832c <_vfiprintf_r+0xafc>
    8440:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    8444:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    8448:	e28d80e0 	add	r8, sp, #224	; 0xe0
    844c:	eaffff15 	b	80a8 <_vfiprintf_r+0x878>
    8450:	e59d001c 	ldr	r0, [sp, #28]
    8454:	e1a01007 	mov	r1, r7
    8458:	e28d2044 	add	r2, sp, #68	; 0x44
    845c:	ebfffcc6 	bl	777c <__sprint_r>
    8460:	e3500000 	cmp	r0, #0
    8464:	1affffb0 	bne	832c <_vfiprintf_r+0xafc>
    8468:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    846c:	e28d80e0 	add	r8, sp, #224	; 0xe0
    8470:	eaffff53 	b	81c4 <_vfiprintf_r+0x994>
    8474:	e59d001c 	ldr	r0, [sp, #28]
    8478:	e1a01007 	mov	r1, r7
    847c:	e28d2044 	add	r2, sp, #68	; 0x44
    8480:	ebfffcbd 	bl	777c <__sprint_r>
    8484:	e3500000 	cmp	r0, #0
    8488:	0affff8a 	beq	82b8 <_vfiprintf_r+0xa88>
    848c:	eaffffa6 	b	832c <_vfiprintf_r+0xafc>
    8490:	e58d2008 	str	r2, [sp, #8]
    8494:	e59d5028 	ldr	r5, [sp, #40]	; 0x28
    8498:	eafffdba 	b	7b88 <_vfiprintf_r+0x358>
    849c:	e1a0000a 	mov	r0, sl
    84a0:	e1a01007 	mov	r1, r7
    84a4:	ebffec67 	bl	3648 <__swsetup_r>
    84a8:	e3500000 	cmp	r0, #0
    84ac:	01d780bc 	ldrheq	r8, [r7, #12]
    84b0:	1affffa0 	bne	8338 <_vfiprintf_r+0xb08>
    84b4:	e208301a 	and	r3, r8, #26
    84b8:	e353000a 	cmp	r3, #10
    84bc:	1afffcf4 	bne	7894 <_vfiprintf_r+0x64>
    84c0:	e1d7c0be 	ldrh	ip, [r7, #14]
    84c4:	e31c0902 	tst	ip, #32768	; 0x8000
    84c8:	1afffcf1 	bne	7894 <_vfiprintf_r+0x64>
    84cc:	e1a02004 	mov	r2, r4
    84d0:	e59f43b8 	ldr	r4, [pc, #952]	; 8890 <_vfiprintf_r+0x1060>
    84d4:	e28d6e4e 	add	r6, sp, #1248	; 0x4e0
    84d8:	e3c88002 	bic	r8, r8, #2
    84dc:	e18680b4 	strh	r8, [r6, r4]
    84e0:	e2844002 	add	r4, r4, #2
    84e4:	e186c0b4 	strh	ip, [r6, r4]
    84e8:	e597c01c 	ldr	ip, [r7, #28]
    84ec:	e597b064 	ldr	fp, [r7, #100]	; 0x64
    84f0:	e5979024 	ldr	r9, [r7, #36]	; 0x24
    84f4:	e3a0eb01 	mov	lr, #1024	; 0x400
    84f8:	e28d50e0 	add	r5, sp, #224	; 0xe0
    84fc:	e58dc094 	str	ip, [sp, #148]	; 0x94
    8500:	e1a0000a 	mov	r0, sl
    8504:	e3a0c000 	mov	ip, #0
    8508:	e28d1078 	add	r1, sp, #120	; 0x78
    850c:	e59d3014 	ldr	r3, [sp, #20]
    8510:	e58db0dc 	str	fp, [sp, #220]	; 0xdc
    8514:	e58d909c 	str	r9, [sp, #156]	; 0x9c
    8518:	e58d5078 	str	r5, [sp, #120]	; 0x78
    851c:	e58d5088 	str	r5, [sp, #136]	; 0x88
    8520:	e58de080 	str	lr, [sp, #128]	; 0x80
    8524:	e58de08c 	str	lr, [sp, #140]	; 0x8c
    8528:	e58dc090 	str	ip, [sp, #144]	; 0x90
    852c:	ebfffcbf 	bl	7830 <_vfiprintf_r>
    8530:	e3500000 	cmp	r0, #0
    8534:	e58d000c 	str	r0, [sp, #12]
    8538:	ba000006 	blt	8558 <_vfiprintf_r+0xd28>
    853c:	e1a0000a 	mov	r0, sl
    8540:	e28d1078 	add	r1, sp, #120	; 0x78
    8544:	ebfff3a0 	bl	53cc <_fflush_r>
    8548:	e59d300c 	ldr	r3, [sp, #12]
    854c:	e3500000 	cmp	r0, #0
    8550:	13e03000 	mvnne	r3, #0
    8554:	e58d300c 	str	r3, [sp, #12]
    8558:	e59f3330 	ldr	r3, [pc, #816]	; 8890 <_vfiprintf_r+0x1060>
    855c:	e28d5e4e 	add	r5, sp, #1248	; 0x4e0
    8560:	e19530b3 	ldrh	r3, [r5, r3]
    8564:	e3130040 	tst	r3, #64	; 0x40
    8568:	11d730bc 	ldrhne	r3, [r7, #12]
    856c:	13833040 	orrne	r3, r3, #64	; 0x40
    8570:	11c730bc 	strhne	r3, [r7, #12]
    8574:	eaffff71 	b	8340 <_vfiprintf_r+0xb10>
    8578:	e59d001c 	ldr	r0, [sp, #28]
    857c:	e1a01007 	mov	r1, r7
    8580:	e28d2044 	add	r2, sp, #68	; 0x44
    8584:	ebfffc7c 	bl	777c <__sprint_r>
    8588:	e3500000 	cmp	r0, #0
    858c:	e28d6050 	add	r6, sp, #80	; 0x50
    8590:	1affff65 	bne	832c <_vfiprintf_r+0xafc>
    8594:	e28d80e0 	add	r8, sp, #224	; 0xe0
    8598:	eafffce5 	b	7934 <_vfiprintf_r+0x104>
    859c:	e59d001c 	ldr	r0, [sp, #28]
    85a0:	e1a01007 	mov	r1, r7
    85a4:	e28d2044 	add	r2, sp, #68	; 0x44
    85a8:	ebfffc73 	bl	777c <__sprint_r>
    85ac:	e3500000 	cmp	r0, #0
    85b0:	1affff5d 	bne	832c <_vfiprintf_r+0xafc>
    85b4:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    85b8:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    85bc:	e28d80e0 	add	r8, sp, #224	; 0xe0
    85c0:	eafffeb5 	b	809c <_vfiprintf_r+0x86c>
    85c4:	e59d001c 	ldr	r0, [sp, #28]
    85c8:	e1a01007 	mov	r1, r7
    85cc:	e28d2044 	add	r2, sp, #68	; 0x44
    85d0:	ebfffc69 	bl	777c <__sprint_r>
    85d4:	e3500000 	cmp	r0, #0
    85d8:	e28d6050 	add	r6, sp, #80	; 0x50
    85dc:	1affff52 	bne	832c <_vfiprintf_r+0xafc>
    85e0:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    85e4:	e59d2048 	ldr	r2, [sp, #72]	; 0x48
    85e8:	e28d80e0 	add	r8, sp, #224	; 0xe0
    85ec:	eafffe9c 	b	8064 <_vfiprintf_r+0x834>
    85f0:	ebfff3cf 	bl	5534 <__sinit>
    85f4:	eafffc97 	b	7858 <_vfiprintf_r+0x28>
    85f8:	e3530009 	cmp	r3, #9
    85fc:	9a000046 	bls	871c <_vfiprintf_r+0xeec>
    8600:	e59d002c 	ldr	r0, [sp, #44]	; 0x2c
    8604:	e59f5288 	ldr	r5, [pc, #648]	; 8894 <_vfiprintf_r+0x1064>
    8608:	e0826395 	umull	r6, r2, r5, r3
    860c:	e1a021a2 	lsr	r2, r2, #3
    8610:	e082c102 	add	ip, r2, r2, lsl #2
    8614:	e043308c 	sub	r3, r3, ip, lsl #1
    8618:	e1a05000 	mov	r5, r0
    861c:	e2830030 	add	r0, r3, #48	; 0x30
    8620:	e2523000 	subs	r3, r2, #0
    8624:	e5c50000 	strb	r0, [r5]
    8628:	e2450001 	sub	r0, r5, #1
    862c:	1afffff4 	bne	8604 <_vfiprintf_r+0xdd4>
    8630:	eafffd51 	b	7b7c <_vfiprintf_r+0x34c>
    8634:	e58d0008 	str	r0, [sp, #8]
    8638:	e59d5028 	ldr	r5, [sp, #40]	; 0x28
    863c:	eafffd51 	b	7b88 <_vfiprintf_r+0x358>
    8640:	e59dc030 	ldr	ip, [sp, #48]	; 0x30
    8644:	e203000f 	and	r0, r3, #15
    8648:	e7dc0000 	ldrb	r0, [ip, r0]
    864c:	e1b03223 	lsrs	r3, r3, #4
    8650:	e1a05002 	mov	r5, r2
    8654:	e5c20000 	strb	r0, [r2]
    8658:	e2422001 	sub	r2, r2, #1
    865c:	1afffff8 	bne	8644 <_vfiprintf_r+0xe14>
    8660:	e59d3028 	ldr	r3, [sp, #40]	; 0x28
    8664:	e0653003 	rsb	r3, r5, r3
    8668:	e58d3008 	str	r3, [sp, #8]
    866c:	eafffd45 	b	7b88 <_vfiprintf_r+0x358>
    8670:	e59d3000 	ldr	r3, [sp]
    8674:	e3130040 	tst	r3, #64	; 0x40
    8678:	0a000036 	beq	8758 <_vfiprintf_r+0xf28>
    867c:	e59d5014 	ldr	r5, [sp, #20]
    8680:	e1d530b0 	ldrh	r3, [r5]
    8684:	e2855004 	add	r5, r5, #4
    8688:	e2932000 	adds	r2, r3, #0
    868c:	e3a00001 	mov	r0, #1
    8690:	13a02001 	movne	r2, #1
    8694:	e58d5014 	str	r5, [sp, #20]
    8698:	eafffd1d 	b	7b14 <_vfiprintf_r+0x2e4>
    869c:	e3530000 	cmp	r3, #0
    86a0:	159dc000 	ldrne	ip, [sp]
    86a4:	13a01030 	movne	r1, #48	; 0x30
    86a8:	138cc002 	orrne	ip, ip, #2
    86ac:	15cd2041 	strbne	r2, [sp, #65]	; 0x41
    86b0:	15cd1040 	strbne	r1, [sp, #64]	; 0x40
    86b4:	158dc000 	strne	ip, [sp]
    86b8:	13a02001 	movne	r2, #1
    86bc:	01a02003 	moveq	r2, r3
    86c0:	e3a00002 	mov	r0, #2
    86c4:	eafffd12 	b	7b14 <_vfiprintf_r+0x2e4>
    86c8:	e59d6000 	ldr	r6, [sp]
    86cc:	e2160040 	ands	r0, r6, #64	; 0x40
    86d0:	0a000035 	beq	87ac <_vfiprintf_r+0xf7c>
    86d4:	e59dc014 	ldr	ip, [sp, #20]
    86d8:	e1dc30b0 	ldrh	r3, [ip]
    86dc:	e1a00002 	mov	r0, r2
    86e0:	e28cc004 	add	ip, ip, #4
    86e4:	e2932000 	adds	r2, r3, #0
    86e8:	13a02001 	movne	r2, #1
    86ec:	e58dc014 	str	ip, [sp, #20]
    86f0:	eafffd07 	b	7b14 <_vfiprintf_r+0x2e4>
    86f4:	e58d3014 	str	r3, [sp, #20]
    86f8:	eafffc9a 	b	7968 <_vfiprintf_r+0x138>
    86fc:	e59d001c 	ldr	r0, [sp, #28]
    8700:	e1a01007 	mov	r1, r7
    8704:	e28d2044 	add	r2, sp, #68	; 0x44
    8708:	ebfffc1b 	bl	777c <__sprint_r>
    870c:	e3500000 	cmp	r0, #0
    8710:	1affff05 	bne	832c <_vfiprintf_r+0xafc>
    8714:	e59d104c 	ldr	r1, [sp, #76]	; 0x4c
    8718:	eafffedd 	b	8294 <_vfiprintf_r+0xa64>
    871c:	e59dc038 	ldr	ip, [sp, #56]	; 0x38
    8720:	e2833030 	add	r3, r3, #48	; 0x30
    8724:	e5cd3077 	strb	r3, [sp, #119]	; 0x77
    8728:	e58dc008 	str	ip, [sp, #8]
    872c:	e59d502c 	ldr	r5, [sp, #44]	; 0x2c
    8730:	eafffd14 	b	7b88 <_vfiprintf_r+0x358>
    8734:	e3500030 	cmp	r0, #48	; 0x30
    8738:	0affffc8 	beq	8660 <_vfiprintf_r+0xe30>
    873c:	e59d6028 	ldr	r6, [sp, #40]	; 0x28
    8740:	e1a05002 	mov	r5, r2
    8744:	e0656006 	rsb	r6, r5, r6
    8748:	e3a02030 	mov	r2, #48	; 0x30
    874c:	e5432001 	strb	r2, [r3, #-1]
    8750:	e58d6008 	str	r6, [sp, #8]
    8754:	eafffd0b 	b	7b88 <_vfiprintf_r+0x358>
    8758:	e59d6014 	ldr	r6, [sp, #20]
    875c:	e5963000 	ldr	r3, [r6]
    8760:	e2866004 	add	r6, r6, #4
    8764:	e2932000 	adds	r2, r3, #0
    8768:	e3a00001 	mov	r0, #1
    876c:	13a02001 	movne	r2, #1
    8770:	e58d6014 	str	r6, [sp, #20]
    8774:	eafffce6 	b	7b14 <_vfiprintf_r+0x2e4>
    8778:	e59d5014 	ldr	r5, [sp, #20]
    877c:	e1d530f0 	ldrsh	r3, [r5]
    8780:	e2855004 	add	r5, r5, #4
    8784:	e3530000 	cmp	r3, #0
    8788:	e58d5014 	str	r5, [sp, #20]
    878c:	aafffd38 	bge	7c74 <_vfiprintf_r+0x444>
    8790:	e2633000 	rsb	r3, r3, #0
    8794:	e3a0102d 	mov	r1, #45	; 0x2d
    8798:	e2932000 	adds	r2, r3, #0
    879c:	e5cd103f 	strb	r1, [sp, #63]	; 0x3f
    87a0:	13a02001 	movne	r2, #1
    87a4:	e3a00001 	mov	r0, #1
    87a8:	eafffcdb 	b	7b1c <_vfiprintf_r+0x2ec>
    87ac:	e59d5014 	ldr	r5, [sp, #20]
    87b0:	e5953000 	ldr	r3, [r5]
    87b4:	e2855004 	add	r5, r5, #4
    87b8:	e2932000 	adds	r2, r3, #0
    87bc:	13a02001 	movne	r2, #1
    87c0:	e58d5014 	str	r5, [sp, #20]
    87c4:	eafffcd2 	b	7b14 <_vfiprintf_r+0x2e4>
    87c8:	e59d5014 	ldr	r5, [sp, #20]
    87cc:	e59d600c 	ldr	r6, [sp, #12]
    87d0:	e5953000 	ldr	r3, [r5]
    87d4:	e2855004 	add	r5, r5, #4
    87d8:	e58d5014 	str	r5, [sp, #20]
    87dc:	e5836000 	str	r6, [r3]
    87e0:	eafffc3b 	b	78d4 <_vfiprintf_r+0xa4>
    87e4:	e59dc014 	ldr	ip, [sp, #20]
    87e8:	e1dc30b0 	ldrh	r3, [ip]
    87ec:	e28cc004 	add	ip, ip, #4
    87f0:	e58dc014 	str	ip, [sp, #20]
    87f4:	eafffd88 	b	7e1c <_vfiprintf_r+0x5ec>
    87f8:	ebfffbc7 	bl	771c <strlen>
    87fc:	e5dd103f 	ldrb	r1, [sp, #63]	; 0x3f
    8800:	e58d0008 	str	r0, [sp, #8]
    8804:	e58da014 	str	sl, [sp, #20]
    8808:	e58d6010 	str	r6, [sp, #16]
    880c:	eafffcde 	b	7b8c <_vfiprintf_r+0x35c>
    8810:	e59dc014 	ldr	ip, [sp, #20]
    8814:	e59d500c 	ldr	r5, [sp, #12]
    8818:	e59c3000 	ldr	r3, [ip]
    881c:	e28cc004 	add	ip, ip, #4
    8820:	e58dc014 	str	ip, [sp, #20]
    8824:	e5835000 	str	r5, [r3]
    8828:	eafffc29 	b	78d4 <_vfiprintf_r+0xa4>
    882c:	e3540006 	cmp	r4, #6
    8830:	23a04006 	movcs	r4, #6
    8834:	e1c43fc4 	bic	r3, r4, r4, asr #31
    8838:	e58d4008 	str	r4, [sp, #8]
    883c:	e58d3004 	str	r3, [sp, #4]
    8840:	e58da014 	str	sl, [sp, #20]
    8844:	e59f504c 	ldr	r5, [pc, #76]	; 8898 <_vfiprintf_r+0x1068>
    8848:	eafffd19 	b	7cb4 <_vfiprintf_r+0x484>
    884c:	e5dd103f 	ldrb	r1, [sp, #63]	; 0x3f
    8850:	e58d4008 	str	r4, [sp, #8]
    8854:	e58da014 	str	sl, [sp, #20]
    8858:	e58d0010 	str	r0, [sp, #16]
    885c:	eafffcca 	b	7b8c <_vfiprintf_r+0x35c>
    8860:	e59d5014 	ldr	r5, [sp, #20]
    8864:	e5954000 	ldr	r4, [r5]
    8868:	e3540000 	cmp	r4, #0
    886c:	e2853004 	add	r3, r5, #4
    8870:	aaffff9f 	bge	86f4 <_vfiprintf_r+0xec4>
    8874:	e58d3014 	str	r3, [sp, #20]
    8878:	e3e04000 	mvn	r4, #0
    887c:	eafffc39 	b	7968 <_vfiprintf_r+0x138>
    8880:	0000aa08 	.word	0x0000aa08
    8884:	0000a894 	.word	0x0000a894
    8888:	0000a8a8 	.word	0x0000a8a8
    888c:	0000aa18 	.word	0x0000aa18
    8890:	fffffba4 	.word	0xfffffba4
    8894:	cccccccd 	.word	0xcccccccd
    8898:	0000a8bc 	.word	0x0000a8bc

0000889c <vfiprintf>:
    889c:	e52d4004 	push	{r4}		; (str r4, [sp, #-4]!)
    88a0:	e1a03002 	mov	r3, r2
    88a4:	e59f2018 	ldr	r2, [pc, #24]	; 88c4 <vfiprintf+0x28>
    88a8:	e1a04000 	mov	r4, r0
    88ac:	e1a0c001 	mov	ip, r1
    88b0:	e5920000 	ldr	r0, [r2]
    88b4:	e1a01004 	mov	r1, r4
    88b8:	e1a0200c 	mov	r2, ip
    88bc:	e8bd0010 	ldmfd	sp!, {r4}
    88c0:	eafffbda 	b	7830 <_vfiprintf_r>
    88c4:	0000ac08 	.word	0x0000ac08

000088c8 <_write_r>:
    88c8:	e92d4030 	push	{r4, r5, lr}
    88cc:	e59f4030 	ldr	r4, [pc, #48]	; 8904 <_write_r+0x3c>
    88d0:	e1a05000 	mov	r5, r0
    88d4:	e1a00001 	mov	r0, r1
    88d8:	e1a01002 	mov	r1, r2
    88dc:	e1a02003 	mov	r2, r3
    88e0:	e3a03000 	mov	r3, #0
    88e4:	e5843000 	str	r3, [r4]
    88e8:	ebffe2fb 	bl	14dc <_write>
    88ec:	e3700001 	cmn	r0, #1
    88f0:	18bd8030 	popne	{r4, r5, pc}
    88f4:	e5943000 	ldr	r3, [r4]
    88f8:	e3530000 	cmp	r3, #0
    88fc:	15853000 	strne	r3, [r5]
    8900:	e8bd8030 	pop	{r4, r5, pc}
    8904:	0000b504 	.word	0x0000b504

00008908 <_calloc_r>:
    8908:	e92d4010 	push	{r4, lr}
    890c:	e0010192 	mul	r1, r2, r1
    8910:	ebfff515 	bl	5d6c <_malloc_r>
    8914:	e2504000 	subs	r4, r0, #0
    8918:	0a00000b 	beq	894c <_calloc_r+0x44>
    891c:	e5142004 	ldr	r2, [r4, #-4]
    8920:	e3c22003 	bic	r2, r2, #3
    8924:	e2422004 	sub	r2, r2, #4
    8928:	e3520024 	cmp	r2, #36	; 0x24
    892c:	8a000016 	bhi	898c <_calloc_r+0x84>
    8930:	e3520013 	cmp	r2, #19
    8934:	91a03004 	movls	r3, r4
    8938:	8a000005 	bhi	8954 <_calloc_r+0x4c>
    893c:	e3a02000 	mov	r2, #0
    8940:	e5832000 	str	r2, [r3]
    8944:	e5832004 	str	r2, [r3, #4]
    8948:	e5832008 	str	r2, [r3, #8]
    894c:	e1a00004 	mov	r0, r4
    8950:	e8bd8010 	pop	{r4, pc}
    8954:	e3a03000 	mov	r3, #0
    8958:	e352001b 	cmp	r2, #27
    895c:	e5843000 	str	r3, [r4]
    8960:	e5843004 	str	r3, [r4, #4]
    8964:	92843008 	addls	r3, r4, #8
    8968:	9afffff3 	bls	893c <_calloc_r+0x34>
    896c:	e3520024 	cmp	r2, #36	; 0x24
    8970:	e5843008 	str	r3, [r4, #8]
    8974:	e584300c 	str	r3, [r4, #12]
    8978:	05843010 	streq	r3, [r4, #16]
    897c:	05843014 	streq	r3, [r4, #20]
    8980:	12843010 	addne	r3, r4, #16
    8984:	02843018 	addeq	r3, r4, #24
    8988:	eaffffeb 	b	893c <_calloc_r+0x34>
    898c:	e3a01000 	mov	r1, #0
    8990:	ebffe308 	bl	15b8 <memset>
    8994:	e1a00004 	mov	r0, r4
    8998:	e8bd8010 	pop	{r4, pc}

0000899c <_close_r>:
    899c:	e92d4030 	push	{r4, r5, lr}
    89a0:	e59f4028 	ldr	r4, [pc, #40]	; 89d0 <_close_r+0x34>
    89a4:	e3a03000 	mov	r3, #0
    89a8:	e1a05000 	mov	r5, r0
    89ac:	e1a00001 	mov	r0, r1
    89b0:	e5843000 	str	r3, [r4]
    89b4:	ebffe2ce 	bl	14f4 <_close>
    89b8:	e3700001 	cmn	r0, #1
    89bc:	18bd8030 	popne	{r4, r5, pc}
    89c0:	e5943000 	ldr	r3, [r4]
    89c4:	e3530000 	cmp	r3, #0
    89c8:	15853000 	strne	r3, [r5]
    89cc:	e8bd8030 	pop	{r4, r5, pc}
    89d0:	0000b504 	.word	0x0000b504

000089d4 <_fclose_r>:
    89d4:	e92d4070 	push	{r4, r5, r6, lr}
    89d8:	e2514000 	subs	r4, r1, #0
    89dc:	e1a05000 	mov	r5, r0
    89e0:	0a000007 	beq	8a04 <_fclose_r+0x30>
    89e4:	e3500000 	cmp	r0, #0
    89e8:	0a000002 	beq	89f8 <_fclose_r+0x24>
    89ec:	e5903038 	ldr	r3, [r0, #56]	; 0x38
    89f0:	e3530000 	cmp	r3, #0
    89f4:	0a00002b 	beq	8aa8 <_fclose_r+0xd4>
    89f8:	e1d430fc 	ldrsh	r3, [r4, #12]
    89fc:	e3530000 	cmp	r3, #0
    8a00:	1a000002 	bne	8a10 <_fclose_r+0x3c>
    8a04:	e3a06000 	mov	r6, #0
    8a08:	e1a00006 	mov	r0, r6
    8a0c:	e8bd8070 	pop	{r4, r5, r6, pc}
    8a10:	e1a00005 	mov	r0, r5
    8a14:	e1a01004 	mov	r1, r4
    8a18:	ebfff26b 	bl	53cc <_fflush_r>
    8a1c:	e594302c 	ldr	r3, [r4, #44]	; 0x2c
    8a20:	e3530000 	cmp	r3, #0
    8a24:	e1a06000 	mov	r6, r0
    8a28:	0a000005 	beq	8a44 <_fclose_r+0x70>
    8a2c:	e1a00005 	mov	r0, r5
    8a30:	e594101c 	ldr	r1, [r4, #28]
    8a34:	e1a0e00f 	mov	lr, pc
    8a38:	e12fff13 	bx	r3
    8a3c:	e3500000 	cmp	r0, #0
    8a40:	b3e06000 	mvnlt	r6, #0
    8a44:	e1d430bc 	ldrh	r3, [r4, #12]
    8a48:	e3130080 	tst	r3, #128	; 0x80
    8a4c:	1a000017 	bne	8ab0 <_fclose_r+0xdc>
    8a50:	e5941030 	ldr	r1, [r4, #48]	; 0x30
    8a54:	e3510000 	cmp	r1, #0
    8a58:	0a000005 	beq	8a74 <_fclose_r+0xa0>
    8a5c:	e2843040 	add	r3, r4, #64	; 0x40
    8a60:	e1510003 	cmp	r1, r3
    8a64:	11a00005 	movne	r0, r5
    8a68:	1bfff358 	blne	57d0 <_free_r>
    8a6c:	e3a03000 	mov	r3, #0
    8a70:	e5843030 	str	r3, [r4, #48]	; 0x30
    8a74:	e5941044 	ldr	r1, [r4, #68]	; 0x44
    8a78:	e3510000 	cmp	r1, #0
    8a7c:	0a000003 	beq	8a90 <_fclose_r+0xbc>
    8a80:	e1a00005 	mov	r0, r5
    8a84:	ebfff351 	bl	57d0 <_free_r>
    8a88:	e3a03000 	mov	r3, #0
    8a8c:	e5843044 	str	r3, [r4, #68]	; 0x44
    8a90:	ebfff300 	bl	5698 <__sfp_lock_acquire>
    8a94:	e3a03000 	mov	r3, #0
    8a98:	e1c430bc 	strh	r3, [r4, #12]
    8a9c:	ebfff2fe 	bl	569c <__sfp_lock_release>
    8aa0:	e1a00006 	mov	r0, r6
    8aa4:	e8bd8070 	pop	{r4, r5, r6, pc}
    8aa8:	ebfff2a1 	bl	5534 <__sinit>
    8aac:	eaffffd1 	b	89f8 <_fclose_r+0x24>
    8ab0:	e1a00005 	mov	r0, r5
    8ab4:	e5941010 	ldr	r1, [r4, #16]
    8ab8:	ebfff344 	bl	57d0 <_free_r>
    8abc:	eaffffe3 	b	8a50 <_fclose_r+0x7c>

00008ac0 <fclose>:
    8ac0:	e59f3008 	ldr	r3, [pc, #8]	; 8ad0 <fclose+0x10>
    8ac4:	e1a01000 	mov	r1, r0
    8ac8:	e5930000 	ldr	r0, [r3]
    8acc:	eaffffc0 	b	89d4 <_fclose_r>
    8ad0:	0000ac08 	.word	0x0000ac08

00008ad4 <_fputwc_r>:
    8ad4:	e1d230bc 	ldrh	r3, [r2, #12]
    8ad8:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    8adc:	e3130a02 	tst	r3, #8192	; 0x2000
    8ae0:	e1a04002 	mov	r4, r2
    8ae4:	05922064 	ldreq	r2, [r2, #100]	; 0x64
    8ae8:	03833a02 	orreq	r3, r3, #8192	; 0x2000
    8aec:	03822a02 	orreq	r2, r2, #8192	; 0x2000
    8af0:	01c430bc 	strheq	r3, [r4, #12]
    8af4:	05842064 	streq	r2, [r4, #100]	; 0x64
    8af8:	e24dd004 	sub	sp, sp, #4
    8afc:	e1a07000 	mov	r7, r0
    8b00:	e1a06001 	mov	r6, r1
    8b04:	ebfff42c 	bl	5bbc <__locale_mb_cur_max>
    8b08:	e3500001 	cmp	r0, #1
    8b0c:	0a000038 	beq	8bf4 <_fputwc_r+0x120>
    8b10:	e1a00007 	mov	r0, r7
    8b14:	e1a0100d 	mov	r1, sp
    8b18:	e1a02006 	mov	r2, r6
    8b1c:	e284305c 	add	r3, r4, #92	; 0x5c
    8b20:	eb000412 	bl	9b70 <_wcrtomb_r>
    8b24:	e3700001 	cmn	r0, #1
    8b28:	e1a0800d 	mov	r8, sp
    8b2c:	e1a0a000 	mov	sl, r0
    8b30:	0a000022 	beq	8bc0 <_fputwc_r+0xec>
    8b34:	e3500000 	cmp	r0, #0
    8b38:	0a000034 	beq	8c10 <_fputwc_r+0x13c>
    8b3c:	e3a05000 	mov	r5, #0
    8b40:	ea000008 	b	8b68 <_fputwc_r+0x94>
    8b44:	e5943000 	ldr	r3, [r4]
    8b48:	e7d82005 	ldrb	r2, [r8, r5]
    8b4c:	e5c32000 	strb	r2, [r3]
    8b50:	e5943000 	ldr	r3, [r4]
    8b54:	e2833001 	add	r3, r3, #1
    8b58:	e5843000 	str	r3, [r4]
    8b5c:	e2855001 	add	r5, r5, #1
    8b60:	e155000a 	cmp	r5, sl
    8b64:	2a000029 	bcs	8c10 <_fputwc_r+0x13c>
    8b68:	e5943008 	ldr	r3, [r4, #8]
    8b6c:	e2433001 	sub	r3, r3, #1
    8b70:	e3530000 	cmp	r3, #0
    8b74:	e5843008 	str	r3, [r4, #8]
    8b78:	aafffff1 	bge	8b44 <_fputwc_r+0x70>
    8b7c:	e5942018 	ldr	r2, [r4, #24]
    8b80:	e1530002 	cmp	r3, r2
    8b84:	ba000012 	blt	8bd4 <_fputwc_r+0x100>
    8b88:	e5943000 	ldr	r3, [r4]
    8b8c:	e7d82005 	ldrb	r2, [r8, r5]
    8b90:	e5c32000 	strb	r2, [r3]
    8b94:	e5943000 	ldr	r3, [r4]
    8b98:	e5d31000 	ldrb	r1, [r3]
    8b9c:	e351000a 	cmp	r1, #10
    8ba0:	0a00001c 	beq	8c18 <_fputwc_r+0x144>
    8ba4:	e2833001 	add	r3, r3, #1
    8ba8:	e5843000 	str	r3, [r4]
    8bac:	e3a00000 	mov	r0, #0
    8bb0:	e3500000 	cmp	r0, #0
    8bb4:	0affffe8 	beq	8b5c <_fputwc_r+0x88>
    8bb8:	e3e00000 	mvn	r0, #0
    8bbc:	ea000002 	b	8bcc <_fputwc_r+0xf8>
    8bc0:	e1d430bc 	ldrh	r3, [r4, #12]
    8bc4:	e3833040 	orr	r3, r3, #64	; 0x40
    8bc8:	e1c430bc 	strh	r3, [r4, #12]
    8bcc:	e28dd004 	add	sp, sp, #4
    8bd0:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    8bd4:	e7d81005 	ldrb	r1, [r8, r5]
    8bd8:	e1a00007 	mov	r0, r7
    8bdc:	e1a02004 	mov	r2, r4
    8be0:	eb000396 	bl	9a40 <__swbuf_r>
    8be4:	e3700001 	cmn	r0, #1
    8be8:	13a00000 	movne	r0, #0
    8bec:	03a00001 	moveq	r0, #1
    8bf0:	eaffffee 	b	8bb0 <_fputwc_r+0xdc>
    8bf4:	e2463001 	sub	r3, r6, #1
    8bf8:	e35300fe 	cmp	r3, #254	; 0xfe
    8bfc:	8affffc3 	bhi	8b10 <_fputwc_r+0x3c>
    8c00:	e28d8004 	add	r8, sp, #4
    8c04:	e5686004 	strb	r6, [r8, #-4]!
    8c08:	e1a0a000 	mov	sl, r0
    8c0c:	eaffffca 	b	8b3c <_fputwc_r+0x68>
    8c10:	e1a00006 	mov	r0, r6
    8c14:	eaffffec 	b	8bcc <_fputwc_r+0xf8>
    8c18:	e1a00007 	mov	r0, r7
    8c1c:	eaffffee 	b	8bdc <_fputwc_r+0x108>

00008c20 <fputwc>:
    8c20:	e92d4070 	push	{r4, r5, r6, lr}
    8c24:	e59f403c 	ldr	r4, [pc, #60]	; 8c68 <fputwc+0x48>
    8c28:	e5943000 	ldr	r3, [r4]
    8c2c:	e3530000 	cmp	r3, #0
    8c30:	e1a06000 	mov	r6, r0
    8c34:	e1a05001 	mov	r5, r1
    8c38:	0a000005 	beq	8c54 <fputwc+0x34>
    8c3c:	e5932038 	ldr	r2, [r3, #56]	; 0x38
    8c40:	e3520000 	cmp	r2, #0
    8c44:	1a000002 	bne	8c54 <fputwc+0x34>
    8c48:	e1a00003 	mov	r0, r3
    8c4c:	ebfff238 	bl	5534 <__sinit>
    8c50:	e5943000 	ldr	r3, [r4]
    8c54:	e1a00003 	mov	r0, r3
    8c58:	e1a01006 	mov	r1, r6
    8c5c:	e1a02005 	mov	r2, r5
    8c60:	e8bd4070 	pop	{r4, r5, r6, lr}
    8c64:	eaffff9a 	b	8ad4 <_fputwc_r>
    8c68:	0000ac08 	.word	0x0000ac08

00008c6c <_fstat_r>:
    8c6c:	e92d4030 	push	{r4, r5, lr}
    8c70:	e59f402c 	ldr	r4, [pc, #44]	; 8ca4 <_fstat_r+0x38>
    8c74:	e3a03000 	mov	r3, #0
    8c78:	e1a05000 	mov	r5, r0
    8c7c:	e1a00001 	mov	r0, r1
    8c80:	e1a01002 	mov	r1, r2
    8c84:	e5843000 	str	r3, [r4]
    8c88:	ebffe21c 	bl	1500 <_fstat>
    8c8c:	e3700001 	cmn	r0, #1
    8c90:	18bd8030 	popne	{r4, r5, pc}
    8c94:	e5943000 	ldr	r3, [r4]
    8c98:	e3530000 	cmp	r3, #0
    8c9c:	15853000 	strne	r3, [r5]
    8ca0:	e8bd8030 	pop	{r4, r5, pc}
    8ca4:	0000b504 	.word	0x0000b504

00008ca8 <__sfvwrite_r>:
    8ca8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8cac:	e5923008 	ldr	r3, [r2, #8]
    8cb0:	e3530000 	cmp	r3, #0
    8cb4:	e24dd008 	sub	sp, sp, #8
    8cb8:	e1a07002 	mov	r7, r2
    8cbc:	e1a0a000 	mov	sl, r0
    8cc0:	e1a04001 	mov	r4, r1
    8cc4:	0a00001d 	beq	8d40 <__sfvwrite_r+0x98>
    8cc8:	e1d130bc 	ldrh	r3, [r1, #12]
    8ccc:	e3130008 	tst	r3, #8
    8cd0:	0a00001d 	beq	8d4c <__sfvwrite_r+0xa4>
    8cd4:	e5912010 	ldr	r2, [r1, #16]
    8cd8:	e3520000 	cmp	r2, #0
    8cdc:	0a00001a 	beq	8d4c <__sfvwrite_r+0xa4>
    8ce0:	e2132002 	ands	r2, r3, #2
    8ce4:	e5975000 	ldr	r5, [r7]
    8ce8:	0a000020 	beq	8d70 <__sfvwrite_r+0xc8>
    8cec:	e3a08000 	mov	r8, #0
    8cf0:	e1a06008 	mov	r6, r8
    8cf4:	e3560000 	cmp	r6, #0
    8cf8:	e1a02008 	mov	r2, r8
    8cfc:	e1a0000a 	mov	r0, sl
    8d00:	0a000048 	beq	8e28 <__sfvwrite_r+0x180>
    8d04:	e3560b01 	cmp	r6, #1024	; 0x400
    8d08:	31a03006 	movcc	r3, r6
    8d0c:	23a03b01 	movcs	r3, #1024	; 0x400
    8d10:	e594101c 	ldr	r1, [r4, #28]
    8d14:	e1a0e00f 	mov	lr, pc
    8d18:	e594f024 	ldr	pc, [r4, #36]	; 0x24
    8d1c:	e3500000 	cmp	r0, #0
    8d20:	da00004c 	ble	8e58 <__sfvwrite_r+0x1b0>
    8d24:	e5973008 	ldr	r3, [r7, #8]
    8d28:	e0603003 	rsb	r3, r0, r3
    8d2c:	e3530000 	cmp	r3, #0
    8d30:	e0888000 	add	r8, r8, r0
    8d34:	e0606006 	rsb	r6, r0, r6
    8d38:	e5873008 	str	r3, [r7, #8]
    8d3c:	1affffec 	bne	8cf4 <__sfvwrite_r+0x4c>
    8d40:	e3a00000 	mov	r0, #0
    8d44:	e28dd008 	add	sp, sp, #8
    8d48:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8d4c:	e1a0000a 	mov	r0, sl
    8d50:	e1a01004 	mov	r1, r4
    8d54:	ebffea3b 	bl	3648 <__swsetup_r>
    8d58:	e3500000 	cmp	r0, #0
    8d5c:	1a0000fb 	bne	9150 <__sfvwrite_r+0x4a8>
    8d60:	e1d430bc 	ldrh	r3, [r4, #12]
    8d64:	e2132002 	ands	r2, r3, #2
    8d68:	e5975000 	ldr	r5, [r7]
    8d6c:	1affffde 	bne	8cec <__sfvwrite_r+0x44>
    8d70:	e2139001 	ands	r9, r3, #1
    8d74:	1a00003c 	bne	8e6c <__sfvwrite_r+0x1c4>
    8d78:	e1a06009 	mov	r6, r9
    8d7c:	e3560000 	cmp	r6, #0
    8d80:	0a000024 	beq	8e18 <__sfvwrite_r+0x170>
    8d84:	e3130c02 	tst	r3, #512	; 0x200
    8d88:	e5948008 	ldr	r8, [r4, #8]
    8d8c:	e1a02003 	mov	r2, r3
    8d90:	0a000065 	beq	8f2c <__sfvwrite_r+0x284>
    8d94:	e1560008 	cmp	r6, r8
    8d98:	e1a0c008 	mov	ip, r8
    8d9c:	3a00008b 	bcc	8fd0 <__sfvwrite_r+0x328>
    8da0:	e2022d12 	and	r2, r2, #1152	; 0x480
    8da4:	e3520000 	cmp	r2, #0
    8da8:	1a0000a4 	bne	9040 <__sfvwrite_r+0x398>
    8dac:	e5940000 	ldr	r0, [r4]
    8db0:	e1a0b008 	mov	fp, r8
    8db4:	e1a03006 	mov	r3, r6
    8db8:	e1a08006 	mov	r8, r6
    8dbc:	e1a0200c 	mov	r2, ip
    8dc0:	e1a01009 	mov	r1, r9
    8dc4:	e58d3004 	str	r3, [sp, #4]
    8dc8:	e58dc000 	str	ip, [sp]
    8dcc:	eb0000ff 	bl	91d0 <memmove>
    8dd0:	e59dc000 	ldr	ip, [sp]
    8dd4:	e5941008 	ldr	r1, [r4, #8]
    8dd8:	e5942000 	ldr	r2, [r4]
    8ddc:	e06bb001 	rsb	fp, fp, r1
    8de0:	e082c00c 	add	ip, r2, ip
    8de4:	e584b008 	str	fp, [r4, #8]
    8de8:	e584c000 	str	ip, [r4]
    8dec:	e59d3004 	ldr	r3, [sp, #4]
    8df0:	e5972008 	ldr	r2, [r7, #8]
    8df4:	e0688002 	rsb	r8, r8, r2
    8df8:	e3580000 	cmp	r8, #0
    8dfc:	e0899003 	add	r9, r9, r3
    8e00:	e0636006 	rsb	r6, r3, r6
    8e04:	e5878008 	str	r8, [r7, #8]
    8e08:	0affffcc 	beq	8d40 <__sfvwrite_r+0x98>
    8e0c:	e3560000 	cmp	r6, #0
    8e10:	e1d430bc 	ldrh	r3, [r4, #12]
    8e14:	1affffda 	bne	8d84 <__sfvwrite_r+0xdc>
    8e18:	e5959000 	ldr	r9, [r5]
    8e1c:	e5956004 	ldr	r6, [r5, #4]
    8e20:	e2855008 	add	r5, r5, #8
    8e24:	eaffffd4 	b	8d7c <__sfvwrite_r+0xd4>
    8e28:	e5958000 	ldr	r8, [r5]
    8e2c:	e5956004 	ldr	r6, [r5, #4]
    8e30:	e2855008 	add	r5, r5, #8
    8e34:	eaffffae 	b	8cf4 <__sfvwrite_r+0x4c>
    8e38:	eb000141 	bl	9344 <_realloc_r>
    8e3c:	e2503000 	subs	r3, r0, #0
    8e40:	1a00009b 	bne	90b4 <__sfvwrite_r+0x40c>
    8e44:	e1a0000a 	mov	r0, sl
    8e48:	e5941010 	ldr	r1, [r4, #16]
    8e4c:	ebfff25f 	bl	57d0 <_free_r>
    8e50:	e3a0300c 	mov	r3, #12
    8e54:	e58a3000 	str	r3, [sl]
    8e58:	e1d430bc 	ldrh	r3, [r4, #12]
    8e5c:	e3833040 	orr	r3, r3, #64	; 0x40
    8e60:	e1c430bc 	strh	r3, [r4, #12]
    8e64:	e3e00000 	mvn	r0, #0
    8e68:	eaffffb5 	b	8d44 <__sfvwrite_r+0x9c>
    8e6c:	e1a09002 	mov	r9, r2
    8e70:	e1a0c002 	mov	ip, r2
    8e74:	e1a0b002 	mov	fp, r2
    8e78:	e1a08002 	mov	r8, r2
    8e7c:	e3580000 	cmp	r8, #0
    8e80:	0a000024 	beq	8f18 <__sfvwrite_r+0x270>
    8e84:	e35c0000 	cmp	ip, #0
    8e88:	0a000062 	beq	9018 <__sfvwrite_r+0x370>
    8e8c:	e5940000 	ldr	r0, [r4]
    8e90:	e5942010 	ldr	r2, [r4, #16]
    8e94:	e1590008 	cmp	r9, r8
    8e98:	31a03009 	movcc	r3, r9
    8e9c:	21a03008 	movcs	r3, r8
    8ea0:	e1500002 	cmp	r0, r2
    8ea4:	e5946008 	ldr	r6, [r4, #8]
    8ea8:	e594e014 	ldr	lr, [r4, #20]
    8eac:	9a000002 	bls	8ebc <__sfvwrite_r+0x214>
    8eb0:	e086600e 	add	r6, r6, lr
    8eb4:	e1530006 	cmp	r3, r6
    8eb8:	ca000088 	bgt	90e0 <__sfvwrite_r+0x438>
    8ebc:	e153000e 	cmp	r3, lr
    8ec0:	ba00002b 	blt	8f74 <__sfvwrite_r+0x2cc>
    8ec4:	e594101c 	ldr	r1, [r4, #28]
    8ec8:	e1a0000a 	mov	r0, sl
    8ecc:	e58dc000 	str	ip, [sp]
    8ed0:	e1a0200b 	mov	r2, fp
    8ed4:	e1a0300e 	mov	r3, lr
    8ed8:	e1a0e00f 	mov	lr, pc
    8edc:	e594f024 	ldr	pc, [r4, #36]	; 0x24
    8ee0:	e2506000 	subs	r6, r0, #0
    8ee4:	e59dc000 	ldr	ip, [sp]
    8ee8:	daffffda 	ble	8e58 <__sfvwrite_r+0x1b0>
    8eec:	e0599006 	subs	r9, r9, r6
    8ef0:	0a00002f 	beq	8fb4 <__sfvwrite_r+0x30c>
    8ef4:	e5973008 	ldr	r3, [r7, #8]
    8ef8:	e0663003 	rsb	r3, r6, r3
    8efc:	e3530000 	cmp	r3, #0
    8f00:	e08bb006 	add	fp, fp, r6
    8f04:	e0668008 	rsb	r8, r6, r8
    8f08:	e5873008 	str	r3, [r7, #8]
    8f0c:	0affff8b 	beq	8d40 <__sfvwrite_r+0x98>
    8f10:	e3580000 	cmp	r8, #0
    8f14:	1affffda 	bne	8e84 <__sfvwrite_r+0x1dc>
    8f18:	e595b000 	ldr	fp, [r5]
    8f1c:	e5958004 	ldr	r8, [r5, #4]
    8f20:	e3a0c000 	mov	ip, #0
    8f24:	e2855008 	add	r5, r5, #8
    8f28:	eaffffd3 	b	8e7c <__sfvwrite_r+0x1d4>
    8f2c:	e5940000 	ldr	r0, [r4]
    8f30:	e5943010 	ldr	r3, [r4, #16]
    8f34:	e1500003 	cmp	r0, r3
    8f38:	9a000001 	bls	8f44 <__sfvwrite_r+0x29c>
    8f3c:	e1560008 	cmp	r6, r8
    8f40:	8a000074 	bhi	9118 <__sfvwrite_r+0x470>
    8f44:	e5943014 	ldr	r3, [r4, #20]
    8f48:	e1560003 	cmp	r6, r3
    8f4c:	3a000025 	bcc	8fe8 <__sfvwrite_r+0x340>
    8f50:	e1a0000a 	mov	r0, sl
    8f54:	e594101c 	ldr	r1, [r4, #28]
    8f58:	e1a02009 	mov	r2, r9
    8f5c:	e1a0e00f 	mov	lr, pc
    8f60:	e594f024 	ldr	pc, [r4, #36]	; 0x24
    8f64:	e2508000 	subs	r8, r0, #0
    8f68:	daffffba 	ble	8e58 <__sfvwrite_r+0x1b0>
    8f6c:	e1a03008 	mov	r3, r8
    8f70:	eaffff9e 	b	8df0 <__sfvwrite_r+0x148>
    8f74:	e1a02003 	mov	r2, r3
    8f78:	e1a0100b 	mov	r1, fp
    8f7c:	e58d3004 	str	r3, [sp, #4]
    8f80:	e58dc000 	str	ip, [sp]
    8f84:	eb000091 	bl	91d0 <memmove>
    8f88:	e59d3004 	ldr	r3, [sp, #4]
    8f8c:	e5941008 	ldr	r1, [r4, #8]
    8f90:	e5942000 	ldr	r2, [r4]
    8f94:	e1a06003 	mov	r6, r3
    8f98:	e0631001 	rsb	r1, r3, r1
    8f9c:	e0822003 	add	r2, r2, r3
    8fa0:	e0599006 	subs	r9, r9, r6
    8fa4:	e5841008 	str	r1, [r4, #8]
    8fa8:	e5842000 	str	r2, [r4]
    8fac:	e59dc000 	ldr	ip, [sp]
    8fb0:	1affffcf 	bne	8ef4 <__sfvwrite_r+0x24c>
    8fb4:	e1a0000a 	mov	r0, sl
    8fb8:	e1a01004 	mov	r1, r4
    8fbc:	ebfff102 	bl	53cc <_fflush_r>
    8fc0:	e3500000 	cmp	r0, #0
    8fc4:	1affffa3 	bne	8e58 <__sfvwrite_r+0x1b0>
    8fc8:	e1a0c009 	mov	ip, r9
    8fcc:	eaffffc8 	b	8ef4 <__sfvwrite_r+0x24c>
    8fd0:	e5940000 	ldr	r0, [r4]
    8fd4:	e1a0b006 	mov	fp, r6
    8fd8:	e1a03006 	mov	r3, r6
    8fdc:	e1a08006 	mov	r8, r6
    8fe0:	e1a0c006 	mov	ip, r6
    8fe4:	eaffff74 	b	8dbc <__sfvwrite_r+0x114>
    8fe8:	e1a02006 	mov	r2, r6
    8fec:	e1a01009 	mov	r1, r9
    8ff0:	eb000076 	bl	91d0 <memmove>
    8ff4:	e5942008 	ldr	r2, [r4, #8]
    8ff8:	e5943000 	ldr	r3, [r4]
    8ffc:	e0662002 	rsb	r2, r6, r2
    9000:	e0833006 	add	r3, r3, r6
    9004:	e5843000 	str	r3, [r4]
    9008:	e5842008 	str	r2, [r4, #8]
    900c:	e1a08006 	mov	r8, r6
    9010:	e1a03006 	mov	r3, r6
    9014:	eaffff75 	b	8df0 <__sfvwrite_r+0x148>
    9018:	e1a0000b 	mov	r0, fp
    901c:	e3a0100a 	mov	r1, #10
    9020:	e1a02008 	mov	r2, r8
    9024:	ebfff516 	bl	6484 <memchr>
    9028:	e3500000 	cmp	r0, #0
    902c:	12809001 	addne	r9, r0, #1
    9030:	106b9009 	rsbne	r9, fp, r9
    9034:	02889001 	addeq	r9, r8, #1
    9038:	e3a0c001 	mov	ip, #1
    903c:	eaffff92 	b	8e8c <__sfvwrite_r+0x1e4>
    9040:	e5941010 	ldr	r1, [r4, #16]
    9044:	e594b000 	ldr	fp, [r4]
    9048:	e5948014 	ldr	r8, [r4, #20]
    904c:	e061b00b 	rsb	fp, r1, fp
    9050:	e0888088 	add	r8, r8, r8, lsl #1
    9054:	e0888fa8 	add	r8, r8, r8, lsr #31
    9058:	e28b0001 	add	r0, fp, #1
    905c:	e1a080c8 	asr	r8, r8, #1
    9060:	e0800006 	add	r0, r0, r6
    9064:	e1580000 	cmp	r8, r0
    9068:	e1a02008 	mov	r2, r8
    906c:	31a08000 	movcc	r8, r0
    9070:	31a02008 	movcc	r2, r8
    9074:	e3130b01 	tst	r3, #1024	; 0x400
    9078:	e1a0000a 	mov	r0, sl
    907c:	0affff6d 	beq	8e38 <__sfvwrite_r+0x190>
    9080:	e1a01002 	mov	r1, r2
    9084:	ebfff338 	bl	5d6c <_malloc_r>
    9088:	e2503000 	subs	r3, r0, #0
    908c:	0affff6f 	beq	8e50 <__sfvwrite_r+0x1a8>
    9090:	e5941010 	ldr	r1, [r4, #16]
    9094:	e1a0200b 	mov	r2, fp
    9098:	e58d3004 	str	r3, [sp, #4]
    909c:	ebfff53f 	bl	65a0 <memcpy>
    90a0:	e1d420bc 	ldrh	r2, [r4, #12]
    90a4:	e3c22d12 	bic	r2, r2, #1152	; 0x480
    90a8:	e3822080 	orr	r2, r2, #128	; 0x80
    90ac:	e1c420bc 	strh	r2, [r4, #12]
    90b0:	e59d3004 	ldr	r3, [sp, #4]
    90b4:	e083000b 	add	r0, r3, fp
    90b8:	e06b2008 	rsb	r2, fp, r8
    90bc:	e5843010 	str	r3, [r4, #16]
    90c0:	e5848014 	str	r8, [r4, #20]
    90c4:	e5840000 	str	r0, [r4]
    90c8:	e1a0b006 	mov	fp, r6
    90cc:	e5842008 	str	r2, [r4, #8]
    90d0:	e1a03006 	mov	r3, r6
    90d4:	e1a08006 	mov	r8, r6
    90d8:	e1a0c006 	mov	ip, r6
    90dc:	eaffff36 	b	8dbc <__sfvwrite_r+0x114>
    90e0:	e1a0100b 	mov	r1, fp
    90e4:	e1a02006 	mov	r2, r6
    90e8:	e58dc000 	str	ip, [sp]
    90ec:	eb000037 	bl	91d0 <memmove>
    90f0:	e5943000 	ldr	r3, [r4]
    90f4:	e0833006 	add	r3, r3, r6
    90f8:	e5843000 	str	r3, [r4]
    90fc:	e1a0000a 	mov	r0, sl
    9100:	e1a01004 	mov	r1, r4
    9104:	ebfff0b0 	bl	53cc <_fflush_r>
    9108:	e3500000 	cmp	r0, #0
    910c:	e59dc000 	ldr	ip, [sp]
    9110:	0affff75 	beq	8eec <__sfvwrite_r+0x244>
    9114:	eaffff4f 	b	8e58 <__sfvwrite_r+0x1b0>
    9118:	e1a01009 	mov	r1, r9
    911c:	e1a02008 	mov	r2, r8
    9120:	e58d8004 	str	r8, [sp, #4]
    9124:	eb000029 	bl	91d0 <memmove>
    9128:	e5942000 	ldr	r2, [r4]
    912c:	e0822008 	add	r2, r2, r8
    9130:	e5842000 	str	r2, [r4]
    9134:	e1a0000a 	mov	r0, sl
    9138:	e1a01004 	mov	r1, r4
    913c:	ebfff0a2 	bl	53cc <_fflush_r>
    9140:	e3500000 	cmp	r0, #0
    9144:	e59d3004 	ldr	r3, [sp, #4]
    9148:	0affff28 	beq	8df0 <__sfvwrite_r+0x148>
    914c:	eaffff41 	b	8e58 <__sfvwrite_r+0x1b0>
    9150:	e3e00000 	mvn	r0, #0
    9154:	eafffefa 	b	8d44 <__sfvwrite_r+0x9c>

00009158 <_isatty_r>:
    9158:	e92d4030 	push	{r4, r5, lr}
    915c:	e59f4028 	ldr	r4, [pc, #40]	; 918c <_isatty_r+0x34>
    9160:	e3a03000 	mov	r3, #0
    9164:	e1a05000 	mov	r5, r0
    9168:	e1a00001 	mov	r0, r1
    916c:	e5843000 	str	r3, [r4]
    9170:	ebffe0eb 	bl	1524 <_isatty>
    9174:	e3700001 	cmn	r0, #1
    9178:	18bd8030 	popne	{r4, r5, pc}
    917c:	e5943000 	ldr	r3, [r4]
    9180:	e3530000 	cmp	r3, #0
    9184:	15853000 	strne	r3, [r5]
    9188:	e8bd8030 	pop	{r4, r5, pc}
    918c:	0000b504 	.word	0x0000b504

00009190 <_lseek_r>:
    9190:	e92d4030 	push	{r4, r5, lr}
    9194:	e59f4030 	ldr	r4, [pc, #48]	; 91cc <_lseek_r+0x3c>
    9198:	e1a05000 	mov	r5, r0
    919c:	e1a00001 	mov	r0, r1
    91a0:	e1a01002 	mov	r1, r2
    91a4:	e1a02003 	mov	r2, r3
    91a8:	e3a03000 	mov	r3, #0
    91ac:	e5843000 	str	r3, [r4]
    91b0:	ebffe0d5 	bl	150c <_lseek>
    91b4:	e3700001 	cmn	r0, #1
    91b8:	18bd8030 	popne	{r4, r5, pc}
    91bc:	e5943000 	ldr	r3, [r4]
    91c0:	e3530000 	cmp	r3, #0
    91c4:	15853000 	strne	r3, [r5]
    91c8:	e8bd8030 	pop	{r4, r5, pc}
    91cc:	0000b504 	.word	0x0000b504

000091d0 <memmove>:
    91d0:	e1500001 	cmp	r0, r1
    91d4:	e92d00f0 	push	{r4, r5, r6, r7}
    91d8:	9a00000e 	bls	9218 <memmove+0x48>
    91dc:	e081c002 	add	ip, r1, r2
    91e0:	e150000c 	cmp	r0, ip
    91e4:	2a00000b 	bcs	9218 <memmove+0x48>
    91e8:	e3520000 	cmp	r2, #0
    91ec:	e0803002 	add	r3, r0, r2
    91f0:	e2422001 	sub	r2, r2, #1
    91f4:	0a000005 	beq	9210 <memmove+0x40>
    91f8:	e1a0100c 	mov	r1, ip
    91fc:	e571c001 	ldrb	ip, [r1, #-1]!
    9200:	e2422001 	sub	r2, r2, #1
    9204:	e3720001 	cmn	r2, #1
    9208:	e563c001 	strb	ip, [r3, #-1]!
    920c:	1afffffa 	bne	91fc <memmove+0x2c>
    9210:	e8bd00f0 	pop	{r4, r5, r6, r7}
    9214:	e12fff1e 	bx	lr
    9218:	e352000f 	cmp	r2, #15
    921c:	8a000009 	bhi	9248 <memmove+0x78>
    9220:	e1a03000 	mov	r3, r0
    9224:	e3520000 	cmp	r2, #0
    9228:	0afffff8 	beq	9210 <memmove+0x40>
    922c:	e2411001 	sub	r1, r1, #1
    9230:	e0832002 	add	r2, r3, r2
    9234:	e5f1c001 	ldrb	ip, [r1, #1]!
    9238:	e4c3c001 	strb	ip, [r3], #1
    923c:	e1530002 	cmp	r3, r2
    9240:	1afffffb 	bne	9234 <memmove+0x64>
    9244:	eafffff1 	b	9210 <memmove+0x40>
    9248:	e1813000 	orr	r3, r1, r0
    924c:	e3130003 	tst	r3, #3
    9250:	1a000027 	bne	92f4 <memmove+0x124>
    9254:	e1a0c001 	mov	ip, r1
    9258:	e1a03000 	mov	r3, r0
    925c:	e1a04002 	mov	r4, r2
    9260:	e59c5000 	ldr	r5, [ip]
    9264:	e5835000 	str	r5, [r3]
    9268:	e59c5004 	ldr	r5, [ip, #4]
    926c:	e5835004 	str	r5, [r3, #4]
    9270:	e59c5008 	ldr	r5, [ip, #8]
    9274:	e5835008 	str	r5, [r3, #8]
    9278:	e2444010 	sub	r4, r4, #16
    927c:	e59c500c 	ldr	r5, [ip, #12]
    9280:	e354000f 	cmp	r4, #15
    9284:	e583500c 	str	r5, [r3, #12]
    9288:	e28cc010 	add	ip, ip, #16
    928c:	e2833010 	add	r3, r3, #16
    9290:	8afffff2 	bhi	9260 <memmove+0x90>
    9294:	e2424010 	sub	r4, r2, #16
    9298:	e3c4400f 	bic	r4, r4, #15
    929c:	e202c00f 	and	ip, r2, #15
    92a0:	e2844010 	add	r4, r4, #16
    92a4:	e35c0003 	cmp	ip, #3
    92a8:	e0803004 	add	r3, r0, r4
    92ac:	e0811004 	add	r1, r1, r4
    92b0:	9a000011 	bls	92fc <memmove+0x12c>
    92b4:	e24cc004 	sub	ip, ip, #4
    92b8:	e1a0712c 	lsr	r7, ip, #2
    92bc:	e0816107 	add	r6, r1, r7, lsl #2
    92c0:	e1a0c001 	mov	ip, r1
    92c4:	e2866004 	add	r6, r6, #4
    92c8:	e1a04003 	mov	r4, r3
    92cc:	e49c5004 	ldr	r5, [ip], #4
    92d0:	e15c0006 	cmp	ip, r6
    92d4:	e4845004 	str	r5, [r4], #4
    92d8:	1afffffb 	bne	92cc <memmove+0xfc>
    92dc:	e287c001 	add	ip, r7, #1
    92e0:	e1a0c10c 	lsl	ip, ip, #2
    92e4:	e2022003 	and	r2, r2, #3
    92e8:	e081100c 	add	r1, r1, ip
    92ec:	e083300c 	add	r3, r3, ip
    92f0:	eaffffcb 	b	9224 <memmove+0x54>
    92f4:	e1a03000 	mov	r3, r0
    92f8:	eaffffcb 	b	922c <memmove+0x5c>
    92fc:	e1a0200c 	mov	r2, ip
    9300:	eaffffc7 	b	9224 <memmove+0x54>

00009304 <_read_r>:
    9304:	e92d4030 	push	{r4, r5, lr}
    9308:	e59f4030 	ldr	r4, [pc, #48]	; 9340 <_read_r+0x3c>
    930c:	e1a05000 	mov	r5, r0
    9310:	e1a00001 	mov	r0, r1
    9314:	e1a01002 	mov	r1, r2
    9318:	e1a02003 	mov	r2, r3
    931c:	e3a03000 	mov	r3, #0
    9320:	e5843000 	str	r3, [r4]
    9324:	ebffe069 	bl	14d0 <_read>
    9328:	e3700001 	cmn	r0, #1
    932c:	18bd8030 	popne	{r4, r5, pc}
    9330:	e5943000 	ldr	r3, [r4]
    9334:	e3530000 	cmp	r3, #0
    9338:	15853000 	strne	r3, [r5]
    933c:	e8bd8030 	pop	{r4, r5, pc}
    9340:	0000b504 	.word	0x0000b504

00009344 <_realloc_r>:
    9344:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    9348:	e2514000 	subs	r4, r1, #0
    934c:	e24dd004 	sub	sp, sp, #4
    9350:	e1a08000 	mov	r8, r0
    9354:	e1a0b002 	mov	fp, r2
    9358:	0a0000d0 	beq	96a0 <_realloc_r+0x35c>
    935c:	ebfff4cc 	bl	6694 <__malloc_lock>
    9360:	e28b500b 	add	r5, fp, #11
    9364:	e3550016 	cmp	r5, #22
    9368:	83c55007 	bichi	r5, r5, #7
    936c:	93a01010 	movls	r1, #16
    9370:	81a07fa5 	lsrhi	r7, r5, #31
    9374:	93a07000 	movls	r7, #0
    9378:	91a05001 	movls	r5, r1
    937c:	e5143004 	ldr	r3, [r4, #-4]
    9380:	81a01005 	movhi	r1, r5
    9384:	e155000b 	cmp	r5, fp
    9388:	33877001 	orrcc	r7, r7, #1
    938c:	e3570000 	cmp	r7, #0
    9390:	e3c36003 	bic	r6, r3, #3
    9394:	13a0300c 	movne	r3, #12
    9398:	e244a008 	sub	sl, r4, #8
    939c:	15883000 	strne	r3, [r8]
    93a0:	13a07000 	movne	r7, #0
    93a4:	1a00000f 	bne	93e8 <_realloc_r+0xa4>
    93a8:	e1560001 	cmp	r6, r1
    93ac:	ba000010 	blt	93f4 <_realloc_r+0xb0>
    93b0:	e1a07006 	mov	r7, r6
    93b4:	e0652007 	rsb	r2, r5, r7
    93b8:	e352000f 	cmp	r2, #15
    93bc:	e2033001 	and	r3, r3, #1
    93c0:	8a00005d 	bhi	953c <_realloc_r+0x1f8>
    93c4:	e1833007 	orr	r3, r3, r7
    93c8:	e58a3004 	str	r3, [sl, #4]
    93cc:	e08aa007 	add	sl, sl, r7
    93d0:	e59a3004 	ldr	r3, [sl, #4]
    93d4:	e3833001 	orr	r3, r3, #1
    93d8:	e58a3004 	str	r3, [sl, #4]
    93dc:	e1a00008 	mov	r0, r8
    93e0:	ebfff4ac 	bl	6698 <__malloc_unlock>
    93e4:	e1a07004 	mov	r7, r4
    93e8:	e1a00007 	mov	r0, r7
    93ec:	e28dd004 	add	sp, sp, #4
    93f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    93f4:	e59f24b4 	ldr	r2, [pc, #1204]	; 98b0 <_realloc_r+0x56c>
    93f8:	e592c008 	ldr	ip, [r2, #8]
    93fc:	e08a0006 	add	r0, sl, r6
    9400:	e15c0000 	cmp	ip, r0
    9404:	0a0000a9 	beq	96b0 <_realloc_r+0x36c>
    9408:	e590e004 	ldr	lr, [r0, #4]
    940c:	e3ce9001 	bic	r9, lr, #1
    9410:	e0809009 	add	r9, r0, r9
    9414:	e5999004 	ldr	r9, [r9, #4]
    9418:	e3190001 	tst	r9, #1
    941c:	11a0e007 	movne	lr, r7
    9420:	11a0000e 	movne	r0, lr
    9424:	0a00003b 	beq	9518 <_realloc_r+0x1d4>
    9428:	e3130001 	tst	r3, #1
    942c:	1a00004f 	bne	9570 <_realloc_r+0x22c>
    9430:	e5149008 	ldr	r9, [r4, #-8]
    9434:	e069900a 	rsb	r9, r9, sl
    9438:	e5993004 	ldr	r3, [r9, #4]
    943c:	e3500000 	cmp	r0, #0
    9440:	e3c33003 	bic	r3, r3, #3
    9444:	0a000067 	beq	95e8 <_realloc_r+0x2a4>
    9448:	e150000c 	cmp	r0, ip
    944c:	e083c006 	add	ip, r3, r6
    9450:	0a0000ce 	beq	9790 <_realloc_r+0x44c>
    9454:	e08e700c 	add	r7, lr, ip
    9458:	e1570001 	cmp	r7, r1
    945c:	ba000062 	blt	95ec <_realloc_r+0x2a8>
    9460:	e2802008 	add	r2, r0, #8
    9464:	e892000c 	ldm	r2, {r2, r3}
    9468:	e5832008 	str	r2, [r3, #8]
    946c:	e582300c 	str	r3, [r2, #12]
    9470:	e1a0a009 	mov	sl, r9
    9474:	e599300c 	ldr	r3, [r9, #12]
    9478:	e5ba1008 	ldr	r1, [sl, #8]!
    947c:	e2462004 	sub	r2, r6, #4
    9480:	e3520024 	cmp	r2, #36	; 0x24
    9484:	e581300c 	str	r3, [r1, #12]
    9488:	e5831008 	str	r1, [r3, #8]
    948c:	8a0000fa 	bhi	987c <_realloc_r+0x538>
    9490:	e3520013 	cmp	r2, #19
    9494:	91a0300a 	movls	r3, sl
    9498:	9a000014 	bls	94f0 <_realloc_r+0x1ac>
    949c:	e5943000 	ldr	r3, [r4]
    94a0:	e5893008 	str	r3, [r9, #8]
    94a4:	e5943004 	ldr	r3, [r4, #4]
    94a8:	e352001b 	cmp	r2, #27
    94ac:	e589300c 	str	r3, [r9, #12]
    94b0:	92844008 	addls	r4, r4, #8
    94b4:	92893010 	addls	r3, r9, #16
    94b8:	9a00000c 	bls	94f0 <_realloc_r+0x1ac>
    94bc:	e5943008 	ldr	r3, [r4, #8]
    94c0:	e5893010 	str	r3, [r9, #16]
    94c4:	e594300c 	ldr	r3, [r4, #12]
    94c8:	e5893014 	str	r3, [r9, #20]
    94cc:	e3520024 	cmp	r2, #36	; 0x24
    94d0:	05943010 	ldreq	r3, [r4, #16]
    94d4:	05893018 	streq	r3, [r9, #24]
    94d8:	05942014 	ldreq	r2, [r4, #20]
    94dc:	0589201c 	streq	r2, [r9, #28]
    94e0:	12893018 	addne	r3, r9, #24
    94e4:	12844010 	addne	r4, r4, #16
    94e8:	02893020 	addeq	r3, r9, #32
    94ec:	02844018 	addeq	r4, r4, #24
    94f0:	e5942000 	ldr	r2, [r4]
    94f4:	e5832000 	str	r2, [r3]
    94f8:	e5942004 	ldr	r2, [r4, #4]
    94fc:	e5832004 	str	r2, [r3, #4]
    9500:	e5942008 	ldr	r2, [r4, #8]
    9504:	e5832008 	str	r2, [r3, #8]
    9508:	e1a0400a 	mov	r4, sl
    950c:	e5993004 	ldr	r3, [r9, #4]
    9510:	e1a0a009 	mov	sl, r9
    9514:	eaffffa6 	b	93b4 <_realloc_r+0x70>
    9518:	e3cee003 	bic	lr, lr, #3
    951c:	e08e7006 	add	r7, lr, r6
    9520:	e1570001 	cmp	r7, r1
    9524:	baffffbf 	blt	9428 <_realloc_r+0xe4>
    9528:	e2801008 	add	r1, r0, #8
    952c:	e8910006 	ldm	r1, {r1, r2}
    9530:	e581200c 	str	r2, [r1, #12]
    9534:	e5821008 	str	r1, [r2, #8]
    9538:	eaffff9d 	b	93b4 <_realloc_r+0x70>
    953c:	e08a1005 	add	r1, sl, r5
    9540:	e3820001 	orr	r0, r2, #1
    9544:	e1835005 	orr	r5, r3, r5
    9548:	e58a5004 	str	r5, [sl, #4]
    954c:	e5810004 	str	r0, [r1, #4]
    9550:	e0812002 	add	r2, r1, r2
    9554:	e5923004 	ldr	r3, [r2, #4]
    9558:	e3833001 	orr	r3, r3, #1
    955c:	e5823004 	str	r3, [r2, #4]
    9560:	e1a00008 	mov	r0, r8
    9564:	e2811008 	add	r1, r1, #8
    9568:	ebfff098 	bl	57d0 <_free_r>
    956c:	eaffff9a 	b	93dc <_realloc_r+0x98>
    9570:	e1a00008 	mov	r0, r8
    9574:	e1a0100b 	mov	r1, fp
    9578:	ebfff1fb 	bl	5d6c <_malloc_r>
    957c:	e2507000 	subs	r7, r0, #0
    9580:	0a000015 	beq	95dc <_realloc_r+0x298>
    9584:	e5143004 	ldr	r3, [r4, #-4]
    9588:	e3c32001 	bic	r2, r3, #1
    958c:	e2471008 	sub	r1, r7, #8
    9590:	e08a2002 	add	r2, sl, r2
    9594:	e1510002 	cmp	r1, r2
    9598:	0a0000b3 	beq	986c <_realloc_r+0x528>
    959c:	e2462004 	sub	r2, r6, #4
    95a0:	e3520024 	cmp	r2, #36	; 0x24
    95a4:	8a000076 	bhi	9784 <_realloc_r+0x440>
    95a8:	e3520013 	cmp	r2, #19
    95ac:	91a03007 	movls	r3, r7
    95b0:	91a02004 	movls	r2, r4
    95b4:	8a000052 	bhi	9704 <_realloc_r+0x3c0>
    95b8:	e5921000 	ldr	r1, [r2]
    95bc:	e5831000 	str	r1, [r3]
    95c0:	e5921004 	ldr	r1, [r2, #4]
    95c4:	e5831004 	str	r1, [r3, #4]
    95c8:	e5922008 	ldr	r2, [r2, #8]
    95cc:	e5832008 	str	r2, [r3, #8]
    95d0:	e1a00008 	mov	r0, r8
    95d4:	e1a01004 	mov	r1, r4
    95d8:	ebfff07c 	bl	57d0 <_free_r>
    95dc:	e1a00008 	mov	r0, r8
    95e0:	ebfff42c 	bl	6698 <__malloc_unlock>
    95e4:	eaffff7f 	b	93e8 <_realloc_r+0xa4>
    95e8:	e083c006 	add	ip, r3, r6
    95ec:	e15c0001 	cmp	ip, r1
    95f0:	baffffde 	blt	9570 <_realloc_r+0x22c>
    95f4:	e1a07009 	mov	r7, r9
    95f8:	e599300c 	ldr	r3, [r9, #12]
    95fc:	e5b71008 	ldr	r1, [r7, #8]!
    9600:	e2462004 	sub	r2, r6, #4
    9604:	e3520024 	cmp	r2, #36	; 0x24
    9608:	e581300c 	str	r3, [r1, #12]
    960c:	e5831008 	str	r1, [r3, #8]
    9610:	8a000051 	bhi	975c <_realloc_r+0x418>
    9614:	e3520013 	cmp	r2, #19
    9618:	91a03007 	movls	r3, r7
    961c:	9a000014 	bls	9674 <_realloc_r+0x330>
    9620:	e5943000 	ldr	r3, [r4]
    9624:	e5893008 	str	r3, [r9, #8]
    9628:	e5943004 	ldr	r3, [r4, #4]
    962c:	e352001b 	cmp	r2, #27
    9630:	e589300c 	str	r3, [r9, #12]
    9634:	92844008 	addls	r4, r4, #8
    9638:	92893010 	addls	r3, r9, #16
    963c:	9a00000c 	bls	9674 <_realloc_r+0x330>
    9640:	e5943008 	ldr	r3, [r4, #8]
    9644:	e5893010 	str	r3, [r9, #16]
    9648:	e594300c 	ldr	r3, [r4, #12]
    964c:	e5893014 	str	r3, [r9, #20]
    9650:	e3520024 	cmp	r2, #36	; 0x24
    9654:	05943010 	ldreq	r3, [r4, #16]
    9658:	05893018 	streq	r3, [r9, #24]
    965c:	05942014 	ldreq	r2, [r4, #20]
    9660:	0589201c 	streq	r2, [r9, #28]
    9664:	12893018 	addne	r3, r9, #24
    9668:	12844010 	addne	r4, r4, #16
    966c:	02893020 	addeq	r3, r9, #32
    9670:	02844018 	addeq	r4, r4, #24
    9674:	e5942000 	ldr	r2, [r4]
    9678:	e5832000 	str	r2, [r3]
    967c:	e5942004 	ldr	r2, [r4, #4]
    9680:	e5832004 	str	r2, [r3, #4]
    9684:	e5942008 	ldr	r2, [r4, #8]
    9688:	e5832008 	str	r2, [r3, #8]
    968c:	e1a04007 	mov	r4, r7
    9690:	e5993004 	ldr	r3, [r9, #4]
    9694:	e1a0700c 	mov	r7, ip
    9698:	e1a0a009 	mov	sl, r9
    969c:	eaffff44 	b	93b4 <_realloc_r+0x70>
    96a0:	e1a01002 	mov	r1, r2
    96a4:	e28dd004 	add	sp, sp, #4
    96a8:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    96ac:	eafff1ae 	b	5d6c <_malloc_r>
    96b0:	e59ce004 	ldr	lr, [ip, #4]
    96b4:	e3cee003 	bic	lr, lr, #3
    96b8:	e08e0006 	add	r0, lr, r6
    96bc:	e2857010 	add	r7, r5, #16
    96c0:	e1500007 	cmp	r0, r7
    96c4:	b1a0000c 	movlt	r0, ip
    96c8:	baffff56 	blt	9428 <_realloc_r+0xe4>
    96cc:	e0653000 	rsb	r3, r5, r0
    96d0:	e08aa005 	add	sl, sl, r5
    96d4:	e3833001 	orr	r3, r3, #1
    96d8:	e58a3004 	str	r3, [sl, #4]
    96dc:	e5143004 	ldr	r3, [r4, #-4]
    96e0:	e2033001 	and	r3, r3, #1
    96e4:	e1855003 	orr	r5, r5, r3
    96e8:	e59f31c0 	ldr	r3, [pc, #448]	; 98b0 <_realloc_r+0x56c>
    96ec:	e5045004 	str	r5, [r4, #-4]
    96f0:	e1a00008 	mov	r0, r8
    96f4:	e583a008 	str	sl, [r3, #8]
    96f8:	e1a07004 	mov	r7, r4
    96fc:	ebfff3e5 	bl	6698 <__malloc_unlock>
    9700:	eaffff38 	b	93e8 <_realloc_r+0xa4>
    9704:	e5943000 	ldr	r3, [r4]
    9708:	e5873000 	str	r3, [r7]
    970c:	e5943004 	ldr	r3, [r4, #4]
    9710:	e352001b 	cmp	r2, #27
    9714:	e5873004 	str	r3, [r7, #4]
    9718:	92842008 	addls	r2, r4, #8
    971c:	92873008 	addls	r3, r7, #8
    9720:	9affffa4 	bls	95b8 <_realloc_r+0x274>
    9724:	e5943008 	ldr	r3, [r4, #8]
    9728:	e5873008 	str	r3, [r7, #8]
    972c:	e594300c 	ldr	r3, [r4, #12]
    9730:	e587300c 	str	r3, [r7, #12]
    9734:	e3520024 	cmp	r2, #36	; 0x24
    9738:	05943010 	ldreq	r3, [r4, #16]
    973c:	05873010 	streq	r3, [r7, #16]
    9740:	05942014 	ldreq	r2, [r4, #20]
    9744:	12873010 	addne	r3, r7, #16
    9748:	05872014 	streq	r2, [r7, #20]
    974c:	12842010 	addne	r2, r4, #16
    9750:	02873018 	addeq	r3, r7, #24
    9754:	02842018 	addeq	r2, r4, #24
    9758:	eaffff96 	b	95b8 <_realloc_r+0x274>
    975c:	e1a01004 	mov	r1, r4
    9760:	e1a00007 	mov	r0, r7
    9764:	e58dc000 	str	ip, [sp]
    9768:	ebfffe98 	bl	91d0 <memmove>
    976c:	e59dc000 	ldr	ip, [sp]
    9770:	e1a04007 	mov	r4, r7
    9774:	e5993004 	ldr	r3, [r9, #4]
    9778:	e1a0700c 	mov	r7, ip
    977c:	e1a0a009 	mov	sl, r9
    9780:	eaffff0b 	b	93b4 <_realloc_r+0x70>
    9784:	e1a01004 	mov	r1, r4
    9788:	ebfffe90 	bl	91d0 <memmove>
    978c:	eaffff8f 	b	95d0 <_realloc_r+0x28c>
    9790:	e08e300c 	add	r3, lr, ip
    9794:	e2850010 	add	r0, r5, #16
    9798:	e1530000 	cmp	r3, r0
    979c:	baffff92 	blt	95ec <_realloc_r+0x2a8>
    97a0:	e1a07009 	mov	r7, r9
    97a4:	e599100c 	ldr	r1, [r9, #12]
    97a8:	e5b70008 	ldr	r0, [r7, #8]!
    97ac:	e2462004 	sub	r2, r6, #4
    97b0:	e3520024 	cmp	r2, #36	; 0x24
    97b4:	e580100c 	str	r1, [r0, #12]
    97b8:	e5810008 	str	r0, [r1, #8]
    97bc:	8a000035 	bhi	9898 <_realloc_r+0x554>
    97c0:	e3520013 	cmp	r2, #19
    97c4:	91a02007 	movls	r2, r7
    97c8:	9a000014 	bls	9820 <_realloc_r+0x4dc>
    97cc:	e5941000 	ldr	r1, [r4]
    97d0:	e5891008 	str	r1, [r9, #8]
    97d4:	e5941004 	ldr	r1, [r4, #4]
    97d8:	e352001b 	cmp	r2, #27
    97dc:	e589100c 	str	r1, [r9, #12]
    97e0:	92892010 	addls	r2, r9, #16
    97e4:	92844008 	addls	r4, r4, #8
    97e8:	9a00000c 	bls	9820 <_realloc_r+0x4dc>
    97ec:	e5941008 	ldr	r1, [r4, #8]
    97f0:	e5891010 	str	r1, [r9, #16]
    97f4:	e594100c 	ldr	r1, [r4, #12]
    97f8:	e5891014 	str	r1, [r9, #20]
    97fc:	e3520024 	cmp	r2, #36	; 0x24
    9800:	05942010 	ldreq	r2, [r4, #16]
    9804:	05892018 	streq	r2, [r9, #24]
    9808:	05941014 	ldreq	r1, [r4, #20]
    980c:	0589101c 	streq	r1, [r9, #28]
    9810:	12892018 	addne	r2, r9, #24
    9814:	12844010 	addne	r4, r4, #16
    9818:	02892020 	addeq	r2, r9, #32
    981c:	02844018 	addeq	r4, r4, #24
    9820:	e5941000 	ldr	r1, [r4]
    9824:	e5821000 	str	r1, [r2]
    9828:	e5941004 	ldr	r1, [r4, #4]
    982c:	e5821004 	str	r1, [r2, #4]
    9830:	e5941008 	ldr	r1, [r4, #8]
    9834:	e5821008 	str	r1, [r2, #8]
    9838:	e0653003 	rsb	r3, r5, r3
    983c:	e0892005 	add	r2, r9, r5
    9840:	e3833001 	orr	r3, r3, #1
    9844:	e5823004 	str	r3, [r2, #4]
    9848:	e5993004 	ldr	r3, [r9, #4]
    984c:	e2033001 	and	r3, r3, #1
    9850:	e1855003 	orr	r5, r5, r3
    9854:	e59f3054 	ldr	r3, [pc, #84]	; 98b0 <_realloc_r+0x56c>
    9858:	e5895004 	str	r5, [r9, #4]
    985c:	e1a00008 	mov	r0, r8
    9860:	e5832008 	str	r2, [r3, #8]
    9864:	ebfff38b 	bl	6698 <__malloc_unlock>
    9868:	eafffede 	b	93e8 <_realloc_r+0xa4>
    986c:	e5177004 	ldr	r7, [r7, #-4]
    9870:	e3c77003 	bic	r7, r7, #3
    9874:	e0877006 	add	r7, r7, r6
    9878:	eafffecd 	b	93b4 <_realloc_r+0x70>
    987c:	e1a01004 	mov	r1, r4
    9880:	e1a0000a 	mov	r0, sl
    9884:	ebfffe51 	bl	91d0 <memmove>
    9888:	e1a0400a 	mov	r4, sl
    988c:	e5993004 	ldr	r3, [r9, #4]
    9890:	e1a0a009 	mov	sl, r9
    9894:	eafffec6 	b	93b4 <_realloc_r+0x70>
    9898:	e1a00007 	mov	r0, r7
    989c:	e1a01004 	mov	r1, r4
    98a0:	e58d3000 	str	r3, [sp]
    98a4:	ebfffe49 	bl	91d0 <memmove>
    98a8:	e59d3000 	ldr	r3, [sp]
    98ac:	eaffffe1 	b	9838 <_realloc_r+0x4f4>
    98b0:	0000b0ac 	.word	0x0000b0ac

000098b4 <cleanup_glue>:
    98b4:	e92d4030 	push	{r4, r5, lr}
    98b8:	e1a04001 	mov	r4, r1
    98bc:	e5911000 	ldr	r1, [r1]
    98c0:	e3510000 	cmp	r1, #0
    98c4:	e1a05000 	mov	r5, r0
    98c8:	1bfffff9 	blne	98b4 <cleanup_glue>
    98cc:	e1a00005 	mov	r0, r5
    98d0:	e1a01004 	mov	r1, r4
    98d4:	e8bd4030 	pop	{r4, r5, lr}
    98d8:	eaffefbc 	b	57d0 <_free_r>

000098dc <_reclaim_reent>:
    98dc:	e59f30e4 	ldr	r3, [pc, #228]	; 99c8 <_reclaim_reent+0xec>
    98e0:	e5933000 	ldr	r3, [r3]
    98e4:	e1500003 	cmp	r0, r3
    98e8:	e92d4070 	push	{r4, r5, r6, lr}
    98ec:	e1a05000 	mov	r5, r0
    98f0:	08bd8070 	popeq	{r4, r5, r6, pc}
    98f4:	e590204c 	ldr	r2, [r0, #76]	; 0x4c
    98f8:	e3520000 	cmp	r2, #0
    98fc:	0a000011 	beq	9948 <_reclaim_reent+0x6c>
    9900:	e3a03000 	mov	r3, #0
    9904:	e1a06003 	mov	r6, r3
    9908:	e7921103 	ldr	r1, [r2, r3, lsl #2]
    990c:	e3510000 	cmp	r1, #0
    9910:	0a000005 	beq	992c <_reclaim_reent+0x50>
    9914:	e5914000 	ldr	r4, [r1]
    9918:	e1a00005 	mov	r0, r5
    991c:	ebffefab 	bl	57d0 <_free_r>
    9920:	e2541000 	subs	r1, r4, #0
    9924:	1afffffa 	bne	9914 <_reclaim_reent+0x38>
    9928:	e595204c 	ldr	r2, [r5, #76]	; 0x4c
    992c:	e2866001 	add	r6, r6, #1
    9930:	e3560020 	cmp	r6, #32
    9934:	e1a03006 	mov	r3, r6
    9938:	1afffff2 	bne	9908 <_reclaim_reent+0x2c>
    993c:	e1a00005 	mov	r0, r5
    9940:	e1a01002 	mov	r1, r2
    9944:	ebffefa1 	bl	57d0 <_free_r>
    9948:	e5951040 	ldr	r1, [r5, #64]	; 0x40
    994c:	e3510000 	cmp	r1, #0
    9950:	11a00005 	movne	r0, r5
    9954:	1bffef9d 	blne	57d0 <_free_r>
    9958:	e5951148 	ldr	r1, [r5, #328]	; 0x148
    995c:	e3510000 	cmp	r1, #0
    9960:	0a000008 	beq	9988 <_reclaim_reent+0xac>
    9964:	e2856f53 	add	r6, r5, #332	; 0x14c
    9968:	e1510006 	cmp	r1, r6
    996c:	0a000005 	beq	9988 <_reclaim_reent+0xac>
    9970:	e5914000 	ldr	r4, [r1]
    9974:	e1a00005 	mov	r0, r5
    9978:	ebffef94 	bl	57d0 <_free_r>
    997c:	e1560004 	cmp	r6, r4
    9980:	e1a01004 	mov	r1, r4
    9984:	1afffff9 	bne	9970 <_reclaim_reent+0x94>
    9988:	e5951054 	ldr	r1, [r5, #84]	; 0x54
    998c:	e3510000 	cmp	r1, #0
    9990:	11a00005 	movne	r0, r5
    9994:	1bffef8d 	blne	57d0 <_free_r>
    9998:	e5953038 	ldr	r3, [r5, #56]	; 0x38
    999c:	e3530000 	cmp	r3, #0
    99a0:	08bd8070 	popeq	{r4, r5, r6, pc}
    99a4:	e1a00005 	mov	r0, r5
    99a8:	e1a0e00f 	mov	lr, pc
    99ac:	e595f03c 	ldr	pc, [r5, #60]	; 0x3c
    99b0:	e59512e0 	ldr	r1, [r5, #736]	; 0x2e0
    99b4:	e3510000 	cmp	r1, #0
    99b8:	08bd8070 	popeq	{r4, r5, r6, pc}
    99bc:	e1a00005 	mov	r0, r5
    99c0:	e8bd4070 	pop	{r4, r5, r6, lr}
    99c4:	eaffffba 	b	98b4 <cleanup_glue>
    99c8:	0000ac08 	.word	0x0000ac08

000099cc <_wrapup_reent>:
    99cc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    99d0:	e2507000 	subs	r7, r0, #0
    99d4:	059f3060 	ldreq	r3, [pc, #96]	; 9a3c <_wrapup_reent+0x70>
    99d8:	05937000 	ldreq	r7, [r3]
    99dc:	e5976148 	ldr	r6, [r7, #328]	; 0x148
    99e0:	e3560000 	cmp	r6, #0
    99e4:	0a00000d 	beq	9a20 <_wrapup_reent+0x54>
    99e8:	e5965004 	ldr	r5, [r6, #4]
    99ec:	e2554001 	subs	r4, r5, #1
    99f0:	52855002 	addpl	r5, r5, #2
    99f4:	50865105 	addpl	r5, r6, r5, lsl #2
    99f8:	4a000005 	bmi	9a14 <_wrapup_reent+0x48>
    99fc:	e5353004 	ldr	r3, [r5, #-4]!
    9a00:	e2444001 	sub	r4, r4, #1
    9a04:	e1a0e00f 	mov	lr, pc
    9a08:	e12fff13 	bx	r3
    9a0c:	e3740001 	cmn	r4, #1
    9a10:	1afffff9 	bne	99fc <_wrapup_reent+0x30>
    9a14:	e5966000 	ldr	r6, [r6]
    9a18:	e3560000 	cmp	r6, #0
    9a1c:	1afffff1 	bne	99e8 <_wrapup_reent+0x1c>
    9a20:	e597303c 	ldr	r3, [r7, #60]	; 0x3c
    9a24:	e3530000 	cmp	r3, #0
    9a28:	08bd80f0 	popeq	{r4, r5, r6, r7, pc}
    9a2c:	e1a00007 	mov	r0, r7
    9a30:	e1a0e00f 	mov	lr, pc
    9a34:	e12fff13 	bx	r3
    9a38:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    9a3c:	0000ac08 	.word	0x0000ac08

00009a40 <__swbuf_r>:
    9a40:	e92d4070 	push	{r4, r5, r6, lr}
    9a44:	e2506000 	subs	r6, r0, #0
    9a48:	e1a05001 	mov	r5, r1
    9a4c:	e1a04002 	mov	r4, r2
    9a50:	0a000002 	beq	9a60 <__swbuf_r+0x20>
    9a54:	e5963038 	ldr	r3, [r6, #56]	; 0x38
    9a58:	e3530000 	cmp	r3, #0
    9a5c:	0a00003a 	beq	9b4c <__swbuf_r+0x10c>
    9a60:	e1d430bc 	ldrh	r3, [r4, #12]
    9a64:	e5942018 	ldr	r2, [r4, #24]
    9a68:	e3130008 	tst	r3, #8
    9a6c:	e5842008 	str	r2, [r4, #8]
    9a70:	0a000025 	beq	9b0c <__swbuf_r+0xcc>
    9a74:	e5942010 	ldr	r2, [r4, #16]
    9a78:	e3520000 	cmp	r2, #0
    9a7c:	0a000022 	beq	9b0c <__swbuf_r+0xcc>
    9a80:	e3130a02 	tst	r3, #8192	; 0x2000
    9a84:	05941064 	ldreq	r1, [r4, #100]	; 0x64
    9a88:	03833a02 	orreq	r3, r3, #8192	; 0x2000
    9a8c:	03c11a02 	biceq	r1, r1, #8192	; 0x2000
    9a90:	01c430bc 	strheq	r3, [r4, #12]
    9a94:	e5943000 	ldr	r3, [r4]
    9a98:	05841064 	streq	r1, [r4, #100]	; 0x64
    9a9c:	e5941014 	ldr	r1, [r4, #20]
    9aa0:	e0622003 	rsb	r2, r2, r3
    9aa4:	e1520001 	cmp	r2, r1
    9aa8:	e20550ff 	and	r5, r5, #255	; 0xff
    9aac:	b2822001 	addlt	r2, r2, #1
    9ab0:	aa00001d 	bge	9b2c <__swbuf_r+0xec>
    9ab4:	e5941008 	ldr	r1, [r4, #8]
    9ab8:	e2411001 	sub	r1, r1, #1
    9abc:	e5841008 	str	r1, [r4, #8]
    9ac0:	e4c35001 	strb	r5, [r3], #1
    9ac4:	e5941014 	ldr	r1, [r4, #20]
    9ac8:	e1510002 	cmp	r1, r2
    9acc:	e5843000 	str	r3, [r4]
    9ad0:	0a000006 	beq	9af0 <__swbuf_r+0xb0>
    9ad4:	e1d430bc 	ldrh	r3, [r4, #12]
    9ad8:	e3130001 	tst	r3, #1
    9adc:	0a000001 	beq	9ae8 <__swbuf_r+0xa8>
    9ae0:	e355000a 	cmp	r5, #10
    9ae4:	0a000001 	beq	9af0 <__swbuf_r+0xb0>
    9ae8:	e1a00005 	mov	r0, r5
    9aec:	e8bd8070 	pop	{r4, r5, r6, pc}
    9af0:	e1a00006 	mov	r0, r6
    9af4:	e1a01004 	mov	r1, r4
    9af8:	ebffee33 	bl	53cc <_fflush_r>
    9afc:	e3500000 	cmp	r0, #0
    9b00:	0afffff8 	beq	9ae8 <__swbuf_r+0xa8>
    9b04:	e3e05000 	mvn	r5, #0
    9b08:	eafffff6 	b	9ae8 <__swbuf_r+0xa8>
    9b0c:	e1a00006 	mov	r0, r6
    9b10:	e1a01004 	mov	r1, r4
    9b14:	ebffe6cb 	bl	3648 <__swsetup_r>
    9b18:	e3500000 	cmp	r0, #0
    9b1c:	1afffff8 	bne	9b04 <__swbuf_r+0xc4>
    9b20:	e1d430bc 	ldrh	r3, [r4, #12]
    9b24:	e5942010 	ldr	r2, [r4, #16]
    9b28:	eaffffd4 	b	9a80 <__swbuf_r+0x40>
    9b2c:	e1a00006 	mov	r0, r6
    9b30:	e1a01004 	mov	r1, r4
    9b34:	ebffee24 	bl	53cc <_fflush_r>
    9b38:	e3500000 	cmp	r0, #0
    9b3c:	1afffff0 	bne	9b04 <__swbuf_r+0xc4>
    9b40:	e5943000 	ldr	r3, [r4]
    9b44:	e3a02001 	mov	r2, #1
    9b48:	eaffffd9 	b	9ab4 <__swbuf_r+0x74>
    9b4c:	ebffee78 	bl	5534 <__sinit>
    9b50:	eaffffc2 	b	9a60 <__swbuf_r+0x20>

00009b54 <__swbuf>:
    9b54:	e1a02001 	mov	r2, r1
    9b58:	e59f100c 	ldr	r1, [pc, #12]	; 9b6c <__swbuf+0x18>
    9b5c:	e1a03000 	mov	r3, r0
    9b60:	e5910000 	ldr	r0, [r1]
    9b64:	e1a01003 	mov	r1, r3
    9b68:	eaffffb4 	b	9a40 <__swbuf_r>
    9b6c:	0000ac08 	.word	0x0000ac08

00009b70 <_wcrtomb_r>:
    9b70:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9b74:	e2516000 	subs	r6, r1, #0
    9b78:	e1a05003 	mov	r5, r3
    9b7c:	e24dd010 	sub	sp, sp, #16
    9b80:	e1a04000 	mov	r4, r0
    9b84:	e1a07002 	mov	r7, r2
    9b88:	e59f3068 	ldr	r3, [pc, #104]	; 9bf8 <_wcrtomb_r+0x88>
    9b8c:	0a00000f 	beq	9bd0 <_wcrtomb_r+0x60>
    9b90:	e5938000 	ldr	r8, [r3]
    9b94:	ebfff005 	bl	5bb0 <__locale_charset>
    9b98:	e58d5000 	str	r5, [sp]
    9b9c:	e1a03000 	mov	r3, r0
    9ba0:	e1a01006 	mov	r1, r6
    9ba4:	e1a00004 	mov	r0, r4
    9ba8:	e1a02007 	mov	r2, r7
    9bac:	e1a0e00f 	mov	lr, pc
    9bb0:	e12fff18 	bx	r8
    9bb4:	e3700001 	cmn	r0, #1
    9bb8:	03a03000 	moveq	r3, #0
    9bbc:	05853000 	streq	r3, [r5]
    9bc0:	03a0308a 	moveq	r3, #138	; 0x8a
    9bc4:	05843000 	streq	r3, [r4]
    9bc8:	e28dd010 	add	sp, sp, #16
    9bcc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    9bd0:	e5937000 	ldr	r7, [r3]
    9bd4:	ebffeff5 	bl	5bb0 <__locale_charset>
    9bd8:	e58d5000 	str	r5, [sp]
    9bdc:	e1a03000 	mov	r3, r0
    9be0:	e28d1004 	add	r1, sp, #4
    9be4:	e1a00004 	mov	r0, r4
    9be8:	e1a02006 	mov	r2, r6
    9bec:	e1a0e00f 	mov	lr, pc
    9bf0:	e12fff17 	bx	r7
    9bf4:	eaffffee 	b	9bb4 <_wcrtomb_r+0x44>
    9bf8:	0000b4bc 	.word	0x0000b4bc

00009bfc <wcrtomb>:
    9bfc:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    9c00:	e2506000 	subs	r6, r0, #0
    9c04:	e24dd010 	sub	sp, sp, #16
    9c08:	e59f5084 	ldr	r5, [pc, #132]	; 9c94 <wcrtomb+0x98>
    9c0c:	e1a07001 	mov	r7, r1
    9c10:	e1a04002 	mov	r4, r2
    9c14:	0a000012 	beq	9c64 <wcrtomb+0x68>
    9c18:	e59f3078 	ldr	r3, [pc, #120]	; 9c98 <wcrtomb+0x9c>
    9c1c:	e595a000 	ldr	sl, [r5]
    9c20:	e5938000 	ldr	r8, [r3]
    9c24:	ebffefe1 	bl	5bb0 <__locale_charset>
    9c28:	e58d4000 	str	r4, [sp]
    9c2c:	e1a03000 	mov	r3, r0
    9c30:	e1a01006 	mov	r1, r6
    9c34:	e1a0000a 	mov	r0, sl
    9c38:	e1a02007 	mov	r2, r7
    9c3c:	e1a0e00f 	mov	lr, pc
    9c40:	e12fff18 	bx	r8
    9c44:	e3700001 	cmn	r0, #1
    9c48:	03a02000 	moveq	r2, #0
    9c4c:	05953000 	ldreq	r3, [r5]
    9c50:	05842000 	streq	r2, [r4]
    9c54:	03a0208a 	moveq	r2, #138	; 0x8a
    9c58:	05832000 	streq	r2, [r3]
    9c5c:	e28dd010 	add	sp, sp, #16
    9c60:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}
    9c64:	e59f302c 	ldr	r3, [pc, #44]	; 9c98 <wcrtomb+0x9c>
    9c68:	e5958000 	ldr	r8, [r5]
    9c6c:	e5937000 	ldr	r7, [r3]
    9c70:	ebffefce 	bl	5bb0 <__locale_charset>
    9c74:	e58d4000 	str	r4, [sp]
    9c78:	e1a03000 	mov	r3, r0
    9c7c:	e28d1004 	add	r1, sp, #4
    9c80:	e1a00008 	mov	r0, r8
    9c84:	e1a02006 	mov	r2, r6
    9c88:	e1a0e00f 	mov	lr, pc
    9c8c:	e12fff17 	bx	r7
    9c90:	eaffffeb 	b	9c44 <wcrtomb+0x48>
    9c94:	0000ac08 	.word	0x0000ac08
    9c98:	0000b4bc 	.word	0x0000b4bc

00009c9c <__ascii_wctomb>:
    9c9c:	e3510000 	cmp	r1, #0
    9ca0:	0a000006 	beq	9cc0 <__ascii_wctomb+0x24>
    9ca4:	e35200ff 	cmp	r2, #255	; 0xff
    9ca8:	83a0308a 	movhi	r3, #138	; 0x8a
    9cac:	85803000 	strhi	r3, [r0]
    9cb0:	95c12000 	strbls	r2, [r1]
    9cb4:	83e00000 	mvnhi	r0, #0
    9cb8:	93a00001 	movls	r0, #1
    9cbc:	e12fff1e 	bx	lr
    9cc0:	e1a00001 	mov	r0, r1
    9cc4:	e12fff1e 	bx	lr

00009cc8 <_wctomb_r>:
    9cc8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    9ccc:	e1a06003 	mov	r6, r3
    9cd0:	e59f3038 	ldr	r3, [pc, #56]	; 9d10 <_wctomb_r+0x48>
    9cd4:	e24dd004 	sub	sp, sp, #4
    9cd8:	e1a05000 	mov	r5, r0
    9cdc:	e1a08001 	mov	r8, r1
    9ce0:	e1a07002 	mov	r7, r2
    9ce4:	e5934000 	ldr	r4, [r3]
    9ce8:	ebffefb0 	bl	5bb0 <__locale_charset>
    9cec:	e58d6000 	str	r6, [sp]
    9cf0:	e1a03000 	mov	r3, r0
    9cf4:	e1a01008 	mov	r1, r8
    9cf8:	e1a00005 	mov	r0, r5
    9cfc:	e1a02007 	mov	r2, r7
    9d00:	e1a0e00f 	mov	lr, pc
    9d04:	e12fff14 	bx	r4
    9d08:	e28dd004 	add	sp, sp, #4
    9d0c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    9d10:	0000b4bc 	.word	0x0000b4bc

00009d14 <__aeabi_uidiv>:
    9d14:	e2512001 	subs	r2, r1, #1
    9d18:	012fff1e 	bxeq	lr
    9d1c:	3a000036 	bcc	9dfc <__aeabi_uidiv+0xe8>
    9d20:	e1500001 	cmp	r0, r1
    9d24:	9a000022 	bls	9db4 <__aeabi_uidiv+0xa0>
    9d28:	e1110002 	tst	r1, r2
    9d2c:	0a000023 	beq	9dc0 <__aeabi_uidiv+0xac>
    9d30:	e311020e 	tst	r1, #-536870912	; 0xe0000000
    9d34:	01a01181 	lsleq	r1, r1, #3
    9d38:	03a03008 	moveq	r3, #8
    9d3c:	13a03001 	movne	r3, #1
    9d40:	e3510201 	cmp	r1, #268435456	; 0x10000000
    9d44:	31510000 	cmpcc	r1, r0
    9d48:	31a01201 	lslcc	r1, r1, #4
    9d4c:	31a03203 	lslcc	r3, r3, #4
    9d50:	3afffffa 	bcc	9d40 <__aeabi_uidiv+0x2c>
    9d54:	e3510102 	cmp	r1, #-2147483648	; 0x80000000
    9d58:	31510000 	cmpcc	r1, r0
    9d5c:	31a01081 	lslcc	r1, r1, #1
    9d60:	31a03083 	lslcc	r3, r3, #1
    9d64:	3afffffa 	bcc	9d54 <__aeabi_uidiv+0x40>
    9d68:	e3a02000 	mov	r2, #0
    9d6c:	e1500001 	cmp	r0, r1
    9d70:	20400001 	subcs	r0, r0, r1
    9d74:	21822003 	orrcs	r2, r2, r3
    9d78:	e15000a1 	cmp	r0, r1, lsr #1
    9d7c:	204000a1 	subcs	r0, r0, r1, lsr #1
    9d80:	218220a3 	orrcs	r2, r2, r3, lsr #1
    9d84:	e1500121 	cmp	r0, r1, lsr #2
    9d88:	20400121 	subcs	r0, r0, r1, lsr #2
    9d8c:	21822123 	orrcs	r2, r2, r3, lsr #2
    9d90:	e15001a1 	cmp	r0, r1, lsr #3
    9d94:	204001a1 	subcs	r0, r0, r1, lsr #3
    9d98:	218221a3 	orrcs	r2, r2, r3, lsr #3
    9d9c:	e3500000 	cmp	r0, #0
    9da0:	11b03223 	lsrsne	r3, r3, #4
    9da4:	11a01221 	lsrne	r1, r1, #4
    9da8:	1affffef 	bne	9d6c <__aeabi_uidiv+0x58>
    9dac:	e1a00002 	mov	r0, r2
    9db0:	e12fff1e 	bx	lr
    9db4:	03a00001 	moveq	r0, #1
    9db8:	13a00000 	movne	r0, #0
    9dbc:	e12fff1e 	bx	lr
    9dc0:	e3510801 	cmp	r1, #65536	; 0x10000
    9dc4:	21a01821 	lsrcs	r1, r1, #16
    9dc8:	23a02010 	movcs	r2, #16
    9dcc:	33a02000 	movcc	r2, #0
    9dd0:	e3510c01 	cmp	r1, #256	; 0x100
    9dd4:	21a01421 	lsrcs	r1, r1, #8
    9dd8:	22822008 	addcs	r2, r2, #8
    9ddc:	e3510010 	cmp	r1, #16
    9de0:	21a01221 	lsrcs	r1, r1, #4
    9de4:	22822004 	addcs	r2, r2, #4
    9de8:	e3510004 	cmp	r1, #4
    9dec:	82822003 	addhi	r2, r2, #3
    9df0:	908220a1 	addls	r2, r2, r1, lsr #1
    9df4:	e1a00230 	lsr	r0, r0, r2
    9df8:	e12fff1e 	bx	lr
    9dfc:	e52de008 	str	lr, [sp, #-8]!
    9e00:	eb000009 	bl	9e2c <__div0>
    9e04:	e3a00000 	mov	r0, #0
    9e08:	e49df008 	ldr	pc, [sp], #8

00009e0c <__aeabi_uidivmod>:
    9e0c:	e3510000 	cmp	r1, #0
    9e10:	0afffff9 	beq	9dfc <__aeabi_uidiv+0xe8>
    9e14:	e92d4003 	push	{r0, r1, lr}
    9e18:	ebffffbd 	bl	9d14 <__aeabi_uidiv>
    9e1c:	e8bd4006 	pop	{r1, r2, lr}
    9e20:	e0030092 	mul	r3, r2, r0
    9e24:	e0411003 	sub	r1, r1, r3
    9e28:	e12fff1e 	bx	lr

00009e2c <__div0>:
    9e2c:	e12fff1e 	bx	lr

00009e30 <__aeabi_drsub>:
    9e30:	e2200102 	eor	r0, r0, #-2147483648	; 0x80000000
    9e34:	ea000000 	b	9e3c <__adddf3>

00009e38 <__aeabi_dsub>:
    9e38:	e2222102 	eor	r2, r2, #-2147483648	; 0x80000000

00009e3c <__adddf3>:
    9e3c:	e92d4030 	push	{r4, r5, lr}
    9e40:	e1a04080 	lsl	r4, r0, #1
    9e44:	e1a05082 	lsl	r5, r2, #1
    9e48:	e1340005 	teq	r4, r5
    9e4c:	01310003 	teqeq	r1, r3
    9e50:	1194c001 	orrsne	ip, r4, r1
    9e54:	1195c003 	orrsne	ip, r5, r3
    9e58:	11f0cac4 	mvnsne	ip, r4, asr #21
    9e5c:	11f0cac5 	mvnsne	ip, r5, asr #21
    9e60:	0a000086 	beq	a080 <__adddf3+0x244>
    9e64:	e1a04aa4 	lsr	r4, r4, #21
    9e68:	e0745aa5 	rsbs	r5, r4, r5, lsr #21
    9e6c:	b2655000 	rsblt	r5, r5, #0
    9e70:	da000006 	ble	9e90 <__adddf3+0x54>
    9e74:	e0844005 	add	r4, r4, r5
    9e78:	e0213003 	eor	r3, r1, r3
    9e7c:	e0202002 	eor	r2, r0, r2
    9e80:	e0231001 	eor	r1, r3, r1
    9e84:	e0220000 	eor	r0, r2, r0
    9e88:	e0213003 	eor	r3, r1, r3
    9e8c:	e0202002 	eor	r2, r0, r2
    9e90:	e3550036 	cmp	r5, #54	; 0x36
    9e94:	88bd8030 	pophi	{r4, r5, pc}
    9e98:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    9e9c:	e1a00600 	lsl	r0, r0, #12
    9ea0:	e3a0c601 	mov	ip, #1048576	; 0x100000
    9ea4:	e18c0620 	orr	r0, ip, r0, lsr #12
    9ea8:	0a000001 	beq	9eb4 <__adddf3+0x78>
    9eac:	e2711000 	rsbs	r1, r1, #0
    9eb0:	e2e00000 	rsc	r0, r0, #0
    9eb4:	e3120102 	tst	r2, #-2147483648	; 0x80000000
    9eb8:	e1a02602 	lsl	r2, r2, #12
    9ebc:	e18c2622 	orr	r2, ip, r2, lsr #12
    9ec0:	0a000001 	beq	9ecc <__adddf3+0x90>
    9ec4:	e2733000 	rsbs	r3, r3, #0
    9ec8:	e2e22000 	rsc	r2, r2, #0
    9ecc:	e1340005 	teq	r4, r5
    9ed0:	0a000064 	beq	a068 <__adddf3+0x22c>
    9ed4:	e2444001 	sub	r4, r4, #1
    9ed8:	e275e020 	rsbs	lr, r5, #32
    9edc:	ba000005 	blt	9ef8 <__adddf3+0xbc>
    9ee0:	e1a0ce13 	lsl	ip, r3, lr
    9ee4:	e0911533 	adds	r1, r1, r3, lsr r5
    9ee8:	e2a00000 	adc	r0, r0, #0
    9eec:	e0911e12 	adds	r1, r1, r2, lsl lr
    9ef0:	e0b00552 	adcs	r0, r0, r2, asr r5
    9ef4:	ea000006 	b	9f14 <__adddf3+0xd8>
    9ef8:	e2455020 	sub	r5, r5, #32
    9efc:	e28ee020 	add	lr, lr, #32
    9f00:	e3530001 	cmp	r3, #1
    9f04:	e1a0ce12 	lsl	ip, r2, lr
    9f08:	238cc002 	orrcs	ip, ip, #2
    9f0c:	e0911552 	adds	r1, r1, r2, asr r5
    9f10:	e0b00fc2 	adcs	r0, r0, r2, asr #31
    9f14:	e2005102 	and	r5, r0, #-2147483648	; 0x80000000
    9f18:	5a000002 	bpl	9f28 <__adddf3+0xec>
    9f1c:	e27cc000 	rsbs	ip, ip, #0
    9f20:	e2f11000 	rscs	r1, r1, #0
    9f24:	e2e00000 	rsc	r0, r0, #0
    9f28:	e3500601 	cmp	r0, #1048576	; 0x100000
    9f2c:	3a00000e 	bcc	9f6c <__adddf3+0x130>
    9f30:	e3500602 	cmp	r0, #2097152	; 0x200000
    9f34:	3a000006 	bcc	9f54 <__adddf3+0x118>
    9f38:	e1b000a0 	lsrs	r0, r0, #1
    9f3c:	e1b01061 	rrxs	r1, r1
    9f40:	e1a0c06c 	rrx	ip, ip
    9f44:	e2844001 	add	r4, r4, #1
    9f48:	e1a02a84 	lsl	r2, r4, #21
    9f4c:	e3720501 	cmn	r2, #4194304	; 0x400000
    9f50:	2a000062 	bcs	a0e0 <__adddf3+0x2a4>
    9f54:	e35c0102 	cmp	ip, #-2147483648	; 0x80000000
    9f58:	01b0c0a1 	lsrseq	ip, r1, #1
    9f5c:	e2b11000 	adcs	r1, r1, #0
    9f60:	e0a00a04 	adc	r0, r0, r4, lsl #20
    9f64:	e1800005 	orr	r0, r0, r5
    9f68:	e8bd8030 	pop	{r4, r5, pc}
    9f6c:	e1b0c08c 	lsls	ip, ip, #1
    9f70:	e0b11001 	adcs	r1, r1, r1
    9f74:	e0a00000 	adc	r0, r0, r0
    9f78:	e3100601 	tst	r0, #1048576	; 0x100000
    9f7c:	e2444001 	sub	r4, r4, #1
    9f80:	1afffff3 	bne	9f54 <__adddf3+0x118>
    9f84:	e3300000 	teq	r0, #0
    9f88:	13a03014 	movne	r3, #20
    9f8c:	03a03034 	moveq	r3, #52	; 0x34
    9f90:	01a00001 	moveq	r0, r1
    9f94:	03a01000 	moveq	r1, #0
    9f98:	e1a02000 	mov	r2, r0
    9f9c:	e3520801 	cmp	r2, #65536	; 0x10000
    9fa0:	21a02822 	lsrcs	r2, r2, #16
    9fa4:	22433010 	subcs	r3, r3, #16
    9fa8:	e3520c01 	cmp	r2, #256	; 0x100
    9fac:	21a02422 	lsrcs	r2, r2, #8
    9fb0:	22433008 	subcs	r3, r3, #8
    9fb4:	e3520010 	cmp	r2, #16
    9fb8:	21a02222 	lsrcs	r2, r2, #4
    9fbc:	22433004 	subcs	r3, r3, #4
    9fc0:	e3520004 	cmp	r2, #4
    9fc4:	22433002 	subcs	r3, r3, #2
    9fc8:	304330a2 	subcc	r3, r3, r2, lsr #1
    9fcc:	e04331a2 	sub	r3, r3, r2, lsr #3
    9fd0:	e2532020 	subs	r2, r3, #32
    9fd4:	aa000007 	bge	9ff8 <__adddf3+0x1bc>
    9fd8:	e292200c 	adds	r2, r2, #12
    9fdc:	da000004 	ble	9ff4 <__adddf3+0x1b8>
    9fe0:	e282c014 	add	ip, r2, #20
    9fe4:	e262200c 	rsb	r2, r2, #12
    9fe8:	e1a01c10 	lsl	r1, r0, ip
    9fec:	e1a00230 	lsr	r0, r0, r2
    9ff0:	ea000004 	b	a008 <__adddf3+0x1cc>
    9ff4:	e2822014 	add	r2, r2, #20
    9ff8:	d262c020 	rsble	ip, r2, #32
    9ffc:	e1a00210 	lsl	r0, r0, r2
    a000:	d1800c31 	orrle	r0, r0, r1, lsr ip
    a004:	d1a01211 	lslle	r1, r1, r2
    a008:	e0544003 	subs	r4, r4, r3
    a00c:	a0800a04 	addge	r0, r0, r4, lsl #20
    a010:	a1800005 	orrge	r0, r0, r5
    a014:	a8bd8030 	popge	{r4, r5, pc}
    a018:	e1e04004 	mvn	r4, r4
    a01c:	e254401f 	subs	r4, r4, #31
    a020:	aa00000d 	bge	a05c <__adddf3+0x220>
    a024:	e294400c 	adds	r4, r4, #12
    a028:	ca000005 	bgt	a044 <__adddf3+0x208>
    a02c:	e2844014 	add	r4, r4, #20
    a030:	e2642020 	rsb	r2, r4, #32
    a034:	e1a01431 	lsr	r1, r1, r4
    a038:	e1811210 	orr	r1, r1, r0, lsl r2
    a03c:	e1850430 	orr	r0, r5, r0, lsr r4
    a040:	e8bd8030 	pop	{r4, r5, pc}
    a044:	e264400c 	rsb	r4, r4, #12
    a048:	e2642020 	rsb	r2, r4, #32
    a04c:	e1a01231 	lsr	r1, r1, r2
    a050:	e1811410 	orr	r1, r1, r0, lsl r4
    a054:	e1a00005 	mov	r0, r5
    a058:	e8bd8030 	pop	{r4, r5, pc}
    a05c:	e1a01430 	lsr	r1, r0, r4
    a060:	e1a00005 	mov	r0, r5
    a064:	e8bd8030 	pop	{r4, r5, pc}
    a068:	e3340000 	teq	r4, #0
    a06c:	e2222601 	eor	r2, r2, #1048576	; 0x100000
    a070:	02200601 	eoreq	r0, r0, #1048576	; 0x100000
    a074:	02844001 	addeq	r4, r4, #1
    a078:	12455001 	subne	r5, r5, #1
    a07c:	eaffff94 	b	9ed4 <__adddf3+0x98>
    a080:	e1f0cac4 	mvns	ip, r4, asr #21
    a084:	11f0cac5 	mvnsne	ip, r5, asr #21
    a088:	0a000018 	beq	a0f0 <__adddf3+0x2b4>
    a08c:	e1340005 	teq	r4, r5
    a090:	01310003 	teqeq	r1, r3
    a094:	0a000003 	beq	a0a8 <__adddf3+0x26c>
    a098:	e194c001 	orrs	ip, r4, r1
    a09c:	01a00002 	moveq	r0, r2
    a0a0:	01a01003 	moveq	r1, r3
    a0a4:	e8bd8030 	pop	{r4, r5, pc}
    a0a8:	e1300002 	teq	r0, r2
    a0ac:	13a00000 	movne	r0, #0
    a0b0:	13a01000 	movne	r1, #0
    a0b4:	18bd8030 	popne	{r4, r5, pc}
    a0b8:	e1b0caa4 	lsrs	ip, r4, #21
    a0bc:	1a000003 	bne	a0d0 <__adddf3+0x294>
    a0c0:	e1b01081 	lsls	r1, r1, #1
    a0c4:	e0b00000 	adcs	r0, r0, r0
    a0c8:	23800102 	orrcs	r0, r0, #-2147483648	; 0x80000000
    a0cc:	e8bd8030 	pop	{r4, r5, pc}
    a0d0:	e2944501 	adds	r4, r4, #4194304	; 0x400000
    a0d4:	32800601 	addcc	r0, r0, #1048576	; 0x100000
    a0d8:	38bd8030 	popcc	{r4, r5, pc}
    a0dc:	e2005102 	and	r5, r0, #-2147483648	; 0x80000000
    a0e0:	e385047f 	orr	r0, r5, #2130706432	; 0x7f000000
    a0e4:	e380060f 	orr	r0, r0, #15728640	; 0xf00000
    a0e8:	e3a01000 	mov	r1, #0
    a0ec:	e8bd8030 	pop	{r4, r5, pc}
    a0f0:	e1f0cac4 	mvns	ip, r4, asr #21
    a0f4:	11a00002 	movne	r0, r2
    a0f8:	11a01003 	movne	r1, r3
    a0fc:	01f0cac5 	mvnseq	ip, r5, asr #21
    a100:	11a02000 	movne	r2, r0
    a104:	11a03001 	movne	r3, r1
    a108:	e1914600 	orrs	r4, r1, r0, lsl #12
    a10c:	01935602 	orrseq	r5, r3, r2, lsl #12
    a110:	01300002 	teqeq	r0, r2
    a114:	13800702 	orrne	r0, r0, #524288	; 0x80000
    a118:	e8bd8030 	pop	{r4, r5, pc}

0000a11c <__aeabi_ui2d>:
    a11c:	e3300000 	teq	r0, #0
    a120:	03a01000 	moveq	r1, #0
    a124:	012fff1e 	bxeq	lr
    a128:	e92d4030 	push	{r4, r5, lr}
    a12c:	e3a04b01 	mov	r4, #1024	; 0x400
    a130:	e2844032 	add	r4, r4, #50	; 0x32
    a134:	e3a05000 	mov	r5, #0
    a138:	e1a01000 	mov	r1, r0
    a13c:	e3a00000 	mov	r0, #0
    a140:	eaffff8f 	b	9f84 <__adddf3+0x148>

0000a144 <__aeabi_i2d>:
    a144:	e3300000 	teq	r0, #0
    a148:	03a01000 	moveq	r1, #0
    a14c:	012fff1e 	bxeq	lr
    a150:	e92d4030 	push	{r4, r5, lr}
    a154:	e3a04b01 	mov	r4, #1024	; 0x400
    a158:	e2844032 	add	r4, r4, #50	; 0x32
    a15c:	e2105102 	ands	r5, r0, #-2147483648	; 0x80000000
    a160:	42600000 	rsbmi	r0, r0, #0
    a164:	e1a01000 	mov	r1, r0
    a168:	e3a00000 	mov	r0, #0
    a16c:	eaffff84 	b	9f84 <__adddf3+0x148>

0000a170 <__aeabi_f2d>:
    a170:	e1b02080 	lsls	r2, r0, #1
    a174:	e1a001c2 	asr	r0, r2, #3
    a178:	e1a00060 	rrx	r0, r0
    a17c:	e1a01e02 	lsl	r1, r2, #28
    a180:	121234ff 	andsne	r3, r2, #-16777216	; 0xff000000
    a184:	133304ff 	teqne	r3, #-16777216	; 0xff000000
    a188:	1220030e 	eorne	r0, r0, #939524096	; 0x38000000
    a18c:	112fff1e 	bxne	lr
    a190:	e3320000 	teq	r2, #0
    a194:	133304ff 	teqne	r3, #-16777216	; 0xff000000
    a198:	012fff1e 	bxeq	lr
    a19c:	e92d4030 	push	{r4, r5, lr}
    a1a0:	e3a04d0e 	mov	r4, #896	; 0x380
    a1a4:	e2005102 	and	r5, r0, #-2147483648	; 0x80000000
    a1a8:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    a1ac:	eaffff74 	b	9f84 <__adddf3+0x148>

0000a1b0 <__aeabi_ul2d>:
    a1b0:	e1902001 	orrs	r2, r0, r1
    a1b4:	012fff1e 	bxeq	lr
    a1b8:	e92d4030 	push	{r4, r5, lr}
    a1bc:	e3a05000 	mov	r5, #0
    a1c0:	ea000006 	b	a1e0 <__aeabi_l2d+0x1c>

0000a1c4 <__aeabi_l2d>:
    a1c4:	e1902001 	orrs	r2, r0, r1
    a1c8:	012fff1e 	bxeq	lr
    a1cc:	e92d4030 	push	{r4, r5, lr}
    a1d0:	e2115102 	ands	r5, r1, #-2147483648	; 0x80000000
    a1d4:	5a000001 	bpl	a1e0 <__aeabi_l2d+0x1c>
    a1d8:	e2700000 	rsbs	r0, r0, #0
    a1dc:	e2e11000 	rsc	r1, r1, #0
    a1e0:	e3a04b01 	mov	r4, #1024	; 0x400
    a1e4:	e2844032 	add	r4, r4, #50	; 0x32
    a1e8:	e1a0c000 	mov	ip, r0
    a1ec:	e1a00001 	mov	r0, r1
    a1f0:	e1a0100c 	mov	r1, ip
    a1f4:	e1b0cb20 	lsrs	ip, r0, #22
    a1f8:	0affff4a 	beq	9f28 <__adddf3+0xec>
    a1fc:	e3a02003 	mov	r2, #3
    a200:	e1b0c1ac 	lsrs	ip, ip, #3
    a204:	12822003 	addne	r2, r2, #3
    a208:	e1b0c1ac 	lsrs	ip, ip, #3
    a20c:	12822003 	addne	r2, r2, #3
    a210:	e08221ac 	add	r2, r2, ip, lsr #3
    a214:	e2623020 	rsb	r3, r2, #32
    a218:	e1a0c311 	lsl	ip, r1, r3
    a21c:	e1a01231 	lsr	r1, r1, r2
    a220:	e1811310 	orr	r1, r1, r0, lsl r3
    a224:	e1a00230 	lsr	r0, r0, r2
    a228:	e0844002 	add	r4, r4, r2
    a22c:	eaffff3d 	b	9f28 <__adddf3+0xec>

0000a230 <__aeabi_dmul>:
    a230:	e92d4070 	push	{r4, r5, r6, lr}
    a234:	e3a0c0ff 	mov	ip, #255	; 0xff
    a238:	e38ccc07 	orr	ip, ip, #1792	; 0x700
    a23c:	e01c4a20 	ands	r4, ip, r0, lsr #20
    a240:	101c5a22 	andsne	r5, ip, r2, lsr #20
    a244:	1134000c 	teqne	r4, ip
    a248:	1135000c 	teqne	r5, ip
    a24c:	0b00006f 	bleq	a410 <__aeabi_dmul+0x1e0>
    a250:	e0844005 	add	r4, r4, r5
    a254:	e0206002 	eor	r6, r0, r2
    a258:	e1c00a8c 	bic	r0, r0, ip, lsl #21
    a25c:	e1c22a8c 	bic	r2, r2, ip, lsl #21
    a260:	e1915600 	orrs	r5, r1, r0, lsl #12
    a264:	11935602 	orrsne	r5, r3, r2, lsl #12
    a268:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    a26c:	e3822601 	orr	r2, r2, #1048576	; 0x100000
    a270:	0a00001c 	beq	a2e8 <__aeabi_dmul+0xb8>
    a274:	e08ec391 	umull	ip, lr, r1, r3
    a278:	e3a05000 	mov	r5, #0
    a27c:	e0a5e390 	umlal	lr, r5, r0, r3
    a280:	e2063102 	and	r3, r6, #-2147483648	; 0x80000000
    a284:	e0a5e291 	umlal	lr, r5, r1, r2
    a288:	e3a06000 	mov	r6, #0
    a28c:	e0a65290 	umlal	r5, r6, r0, r2
    a290:	e33c0000 	teq	ip, #0
    a294:	138ee001 	orrne	lr, lr, #1
    a298:	e24440ff 	sub	r4, r4, #255	; 0xff
    a29c:	e3560c02 	cmp	r6, #512	; 0x200
    a2a0:	e2c44c03 	sbc	r4, r4, #768	; 0x300
    a2a4:	2a000002 	bcs	a2b4 <__aeabi_dmul+0x84>
    a2a8:	e1b0e08e 	lsls	lr, lr, #1
    a2ac:	e0b55005 	adcs	r5, r5, r5
    a2b0:	e0a66006 	adc	r6, r6, r6
    a2b4:	e1830586 	orr	r0, r3, r6, lsl #11
    a2b8:	e1800aa5 	orr	r0, r0, r5, lsr #21
    a2bc:	e1a01585 	lsl	r1, r5, #11
    a2c0:	e1811aae 	orr	r1, r1, lr, lsr #21
    a2c4:	e1a0e58e 	lsl	lr, lr, #11
    a2c8:	e254c0fd 	subs	ip, r4, #253	; 0xfd
    a2cc:	835c0c07 	cmphi	ip, #1792	; 0x700
    a2d0:	8a00000f 	bhi	a314 <__aeabi_dmul+0xe4>
    a2d4:	e35e0102 	cmp	lr, #-2147483648	; 0x80000000
    a2d8:	01b0e0a1 	lsrseq	lr, r1, #1
    a2dc:	e2b11000 	adcs	r1, r1, #0
    a2e0:	e0a00a04 	adc	r0, r0, r4, lsl #20
    a2e4:	e8bd8070 	pop	{r4, r5, r6, pc}
    a2e8:	e2066102 	and	r6, r6, #-2147483648	; 0x80000000
    a2ec:	e1860000 	orr	r0, r6, r0
    a2f0:	e1811003 	orr	r1, r1, r3
    a2f4:	e0200002 	eor	r0, r0, r2
    a2f8:	e05440ac 	subs	r4, r4, ip, lsr #1
    a2fc:	c074500c 	rsbsgt	r5, r4, ip
    a300:	c1800a04 	orrgt	r0, r0, r4, lsl #20
    a304:	c8bd8070 	popgt	{r4, r5, r6, pc}
    a308:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    a30c:	e3a0e000 	mov	lr, #0
    a310:	e2544001 	subs	r4, r4, #1
    a314:	ca000058 	bgt	a47c <__aeabi_dmul+0x24c>
    a318:	e3740036 	cmn	r4, #54	; 0x36
    a31c:	d3a01000 	movle	r1, #0
    a320:	d2000102 	andle	r0, r0, #-2147483648	; 0x80000000
    a324:	d8bd8070 	pople	{r4, r5, r6, pc}
    a328:	e2644000 	rsb	r4, r4, #0
    a32c:	e2544020 	subs	r4, r4, #32
    a330:	aa000018 	bge	a398 <__aeabi_dmul+0x168>
    a334:	e294400c 	adds	r4, r4, #12
    a338:	ca00000b 	bgt	a36c <__aeabi_dmul+0x13c>
    a33c:	e2844014 	add	r4, r4, #20
    a340:	e2645020 	rsb	r5, r4, #32
    a344:	e1a03511 	lsl	r3, r1, r5
    a348:	e1a01431 	lsr	r1, r1, r4
    a34c:	e1811510 	orr	r1, r1, r0, lsl r5
    a350:	e2002102 	and	r2, r0, #-2147483648	; 0x80000000
    a354:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    a358:	e0911fa3 	adds	r1, r1, r3, lsr #31
    a35c:	e0a20430 	adc	r0, r2, r0, lsr r4
    a360:	e19ee083 	orrs	lr, lr, r3, lsl #1
    a364:	01c11fa3 	biceq	r1, r1, r3, lsr #31
    a368:	e8bd8070 	pop	{r4, r5, r6, pc}
    a36c:	e264400c 	rsb	r4, r4, #12
    a370:	e2645020 	rsb	r5, r4, #32
    a374:	e1a03411 	lsl	r3, r1, r4
    a378:	e1a01531 	lsr	r1, r1, r5
    a37c:	e1811410 	orr	r1, r1, r0, lsl r4
    a380:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    a384:	e0911fa3 	adds	r1, r1, r3, lsr #31
    a388:	e2a00000 	adc	r0, r0, #0
    a38c:	e19ee083 	orrs	lr, lr, r3, lsl #1
    a390:	01c11fa3 	biceq	r1, r1, r3, lsr #31
    a394:	e8bd8070 	pop	{r4, r5, r6, pc}
    a398:	e2645020 	rsb	r5, r4, #32
    a39c:	e18ee511 	orr	lr, lr, r1, lsl r5
    a3a0:	e1a03431 	lsr	r3, r1, r4
    a3a4:	e1833510 	orr	r3, r3, r0, lsl r5
    a3a8:	e1a01430 	lsr	r1, r0, r4
    a3ac:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    a3b0:	e1c11430 	bic	r1, r1, r0, lsr r4
    a3b4:	e0811fa3 	add	r1, r1, r3, lsr #31
    a3b8:	e19ee083 	orrs	lr, lr, r3, lsl #1
    a3bc:	01c11fa3 	biceq	r1, r1, r3, lsr #31
    a3c0:	e8bd8070 	pop	{r4, r5, r6, pc}
    a3c4:	e3340000 	teq	r4, #0
    a3c8:	1a000008 	bne	a3f0 <__aeabi_dmul+0x1c0>
    a3cc:	e2006102 	and	r6, r0, #-2147483648	; 0x80000000
    a3d0:	e1b01081 	lsls	r1, r1, #1
    a3d4:	e0a00000 	adc	r0, r0, r0
    a3d8:	e3100601 	tst	r0, #1048576	; 0x100000
    a3dc:	02444001 	subeq	r4, r4, #1
    a3e0:	0afffffa 	beq	a3d0 <__aeabi_dmul+0x1a0>
    a3e4:	e1800006 	orr	r0, r0, r6
    a3e8:	e3350000 	teq	r5, #0
    a3ec:	112fff1e 	bxne	lr
    a3f0:	e2026102 	and	r6, r2, #-2147483648	; 0x80000000
    a3f4:	e1b03083 	lsls	r3, r3, #1
    a3f8:	e0a22002 	adc	r2, r2, r2
    a3fc:	e3120601 	tst	r2, #1048576	; 0x100000
    a400:	02455001 	subeq	r5, r5, #1
    a404:	0afffffa 	beq	a3f4 <__aeabi_dmul+0x1c4>
    a408:	e1822006 	orr	r2, r2, r6
    a40c:	e12fff1e 	bx	lr
    a410:	e134000c 	teq	r4, ip
    a414:	e00c5a22 	and	r5, ip, r2, lsr #20
    a418:	1135000c 	teqne	r5, ip
    a41c:	0a000006 	beq	a43c <__aeabi_dmul+0x20c>
    a420:	e1916080 	orrs	r6, r1, r0, lsl #1
    a424:	11936082 	orrsne	r6, r3, r2, lsl #1
    a428:	1affffe5 	bne	a3c4 <__aeabi_dmul+0x194>
    a42c:	e0200002 	eor	r0, r0, r2
    a430:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    a434:	e3a01000 	mov	r1, #0
    a438:	e8bd8070 	pop	{r4, r5, r6, pc}
    a43c:	e1916080 	orrs	r6, r1, r0, lsl #1
    a440:	01a01003 	moveq	r1, r3
    a444:	01a00002 	moveq	r0, r2
    a448:	11936082 	orrsne	r6, r3, r2, lsl #1
    a44c:	0a00000f 	beq	a490 <__aeabi_dmul+0x260>
    a450:	e134000c 	teq	r4, ip
    a454:	1a000001 	bne	a460 <__aeabi_dmul+0x230>
    a458:	e1916600 	orrs	r6, r1, r0, lsl #12
    a45c:	1a00000b 	bne	a490 <__aeabi_dmul+0x260>
    a460:	e135000c 	teq	r5, ip
    a464:	1a000003 	bne	a478 <__aeabi_dmul+0x248>
    a468:	e1936602 	orrs	r6, r3, r2, lsl #12
    a46c:	11a01003 	movne	r1, r3
    a470:	11a00002 	movne	r0, r2
    a474:	1a000005 	bne	a490 <__aeabi_dmul+0x260>
    a478:	e0200002 	eor	r0, r0, r2
    a47c:	e2000102 	and	r0, r0, #-2147483648	; 0x80000000
    a480:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    a484:	e380060f 	orr	r0, r0, #15728640	; 0xf00000
    a488:	e3a01000 	mov	r1, #0
    a48c:	e8bd8070 	pop	{r4, r5, r6, pc}
    a490:	e380047f 	orr	r0, r0, #2130706432	; 0x7f000000
    a494:	e380073e 	orr	r0, r0, #16252928	; 0xf80000
    a498:	e8bd8070 	pop	{r4, r5, r6, pc}

0000a49c <__aeabi_ddiv>:
    a49c:	e92d4070 	push	{r4, r5, r6, lr}
    a4a0:	e3a0c0ff 	mov	ip, #255	; 0xff
    a4a4:	e38ccc07 	orr	ip, ip, #1792	; 0x700
    a4a8:	e01c4a20 	ands	r4, ip, r0, lsr #20
    a4ac:	101c5a22 	andsne	r5, ip, r2, lsr #20
    a4b0:	1134000c 	teqne	r4, ip
    a4b4:	1135000c 	teqne	r5, ip
    a4b8:	0b00005c 	bleq	a630 <__aeabi_ddiv+0x194>
    a4bc:	e0444005 	sub	r4, r4, r5
    a4c0:	e020e002 	eor	lr, r0, r2
    a4c4:	e1935602 	orrs	r5, r3, r2, lsl #12
    a4c8:	e1a00600 	lsl	r0, r0, #12
    a4cc:	0a00004b 	beq	a600 <__aeabi_ddiv+0x164>
    a4d0:	e1a02602 	lsl	r2, r2, #12
    a4d4:	e3a05201 	mov	r5, #268435456	; 0x10000000
    a4d8:	e1852222 	orr	r2, r5, r2, lsr #4
    a4dc:	e1822c23 	orr	r2, r2, r3, lsr #24
    a4e0:	e1a03403 	lsl	r3, r3, #8
    a4e4:	e1855220 	orr	r5, r5, r0, lsr #4
    a4e8:	e1855c21 	orr	r5, r5, r1, lsr #24
    a4ec:	e1a06401 	lsl	r6, r1, #8
    a4f0:	e20e0102 	and	r0, lr, #-2147483648	; 0x80000000
    a4f4:	e1550002 	cmp	r5, r2
    a4f8:	01560003 	cmpeq	r6, r3
    a4fc:	e2a440fd 	adc	r4, r4, #253	; 0xfd
    a500:	e2844c03 	add	r4, r4, #768	; 0x300
    a504:	2a000001 	bcs	a510 <__aeabi_ddiv+0x74>
    a508:	e1b020a2 	lsrs	r2, r2, #1
    a50c:	e1a03063 	rrx	r3, r3
    a510:	e0566003 	subs	r6, r6, r3
    a514:	e0c55002 	sbc	r5, r5, r2
    a518:	e1b020a2 	lsrs	r2, r2, #1
    a51c:	e1a03063 	rrx	r3, r3
    a520:	e3a01601 	mov	r1, #1048576	; 0x100000
    a524:	e3a0c702 	mov	ip, #524288	; 0x80000
    a528:	e056e003 	subs	lr, r6, r3
    a52c:	e0d5e002 	sbcs	lr, r5, r2
    a530:	20466003 	subcs	r6, r6, r3
    a534:	21a0500e 	movcs	r5, lr
    a538:	2181100c 	orrcs	r1, r1, ip
    a53c:	e1b020a2 	lsrs	r2, r2, #1
    a540:	e1a03063 	rrx	r3, r3
    a544:	e056e003 	subs	lr, r6, r3
    a548:	e0d5e002 	sbcs	lr, r5, r2
    a54c:	20466003 	subcs	r6, r6, r3
    a550:	21a0500e 	movcs	r5, lr
    a554:	218110ac 	orrcs	r1, r1, ip, lsr #1
    a558:	e1b020a2 	lsrs	r2, r2, #1
    a55c:	e1a03063 	rrx	r3, r3
    a560:	e056e003 	subs	lr, r6, r3
    a564:	e0d5e002 	sbcs	lr, r5, r2
    a568:	20466003 	subcs	r6, r6, r3
    a56c:	21a0500e 	movcs	r5, lr
    a570:	2181112c 	orrcs	r1, r1, ip, lsr #2
    a574:	e1b020a2 	lsrs	r2, r2, #1
    a578:	e1a03063 	rrx	r3, r3
    a57c:	e056e003 	subs	lr, r6, r3
    a580:	e0d5e002 	sbcs	lr, r5, r2
    a584:	20466003 	subcs	r6, r6, r3
    a588:	21a0500e 	movcs	r5, lr
    a58c:	218111ac 	orrcs	r1, r1, ip, lsr #3
    a590:	e195e006 	orrs	lr, r5, r6
    a594:	0a00000d 	beq	a5d0 <__aeabi_ddiv+0x134>
    a598:	e1a05205 	lsl	r5, r5, #4
    a59c:	e1855e26 	orr	r5, r5, r6, lsr #28
    a5a0:	e1a06206 	lsl	r6, r6, #4
    a5a4:	e1a02182 	lsl	r2, r2, #3
    a5a8:	e1822ea3 	orr	r2, r2, r3, lsr #29
    a5ac:	e1a03183 	lsl	r3, r3, #3
    a5b0:	e1b0c22c 	lsrs	ip, ip, #4
    a5b4:	1affffdb 	bne	a528 <__aeabi_ddiv+0x8c>
    a5b8:	e3100601 	tst	r0, #1048576	; 0x100000
    a5bc:	1a000006 	bne	a5dc <__aeabi_ddiv+0x140>
    a5c0:	e1800001 	orr	r0, r0, r1
    a5c4:	e3a01000 	mov	r1, #0
    a5c8:	e3a0c102 	mov	ip, #-2147483648	; 0x80000000
    a5cc:	eaffffd5 	b	a528 <__aeabi_ddiv+0x8c>
    a5d0:	e3100601 	tst	r0, #1048576	; 0x100000
    a5d4:	01800001 	orreq	r0, r0, r1
    a5d8:	03a01000 	moveq	r1, #0
    a5dc:	e254c0fd 	subs	ip, r4, #253	; 0xfd
    a5e0:	835c0c07 	cmphi	ip, #1792	; 0x700
    a5e4:	8affff4a 	bhi	a314 <__aeabi_dmul+0xe4>
    a5e8:	e055c002 	subs	ip, r5, r2
    a5ec:	0056c003 	subseq	ip, r6, r3
    a5f0:	01b0c0a1 	lsrseq	ip, r1, #1
    a5f4:	e2b11000 	adcs	r1, r1, #0
    a5f8:	e0a00a04 	adc	r0, r0, r4, lsl #20
    a5fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    a600:	e20ee102 	and	lr, lr, #-2147483648	; 0x80000000
    a604:	e18e0620 	orr	r0, lr, r0, lsr #12
    a608:	e09440ac 	adds	r4, r4, ip, lsr #1
    a60c:	c074500c 	rsbsgt	r5, r4, ip
    a610:	c1800a04 	orrgt	r0, r0, r4, lsl #20
    a614:	c8bd8070 	popgt	{r4, r5, r6, pc}
    a618:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    a61c:	e3a0e000 	mov	lr, #0
    a620:	e2544001 	subs	r4, r4, #1
    a624:	eaffff3a 	b	a314 <__aeabi_dmul+0xe4>
    a628:	e185e006 	orr	lr, r5, r6
    a62c:	eaffff38 	b	a314 <__aeabi_dmul+0xe4>
    a630:	e00c5a22 	and	r5, ip, r2, lsr #20
    a634:	e134000c 	teq	r4, ip
    a638:	0135000c 	teqeq	r5, ip
    a63c:	0affff93 	beq	a490 <__aeabi_dmul+0x260>
    a640:	e134000c 	teq	r4, ip
    a644:	1a000006 	bne	a664 <__aeabi_ddiv+0x1c8>
    a648:	e1914600 	orrs	r4, r1, r0, lsl #12
    a64c:	1affff8f 	bne	a490 <__aeabi_dmul+0x260>
    a650:	e135000c 	teq	r5, ip
    a654:	1affff87 	bne	a478 <__aeabi_dmul+0x248>
    a658:	e1a01003 	mov	r1, r3
    a65c:	e1a00002 	mov	r0, r2
    a660:	eaffff8a 	b	a490 <__aeabi_dmul+0x260>
    a664:	e135000c 	teq	r5, ip
    a668:	1a000004 	bne	a680 <__aeabi_ddiv+0x1e4>
    a66c:	e1935602 	orrs	r5, r3, r2, lsl #12
    a670:	0affff6d 	beq	a42c <__aeabi_dmul+0x1fc>
    a674:	e1a01003 	mov	r1, r3
    a678:	e1a00002 	mov	r0, r2
    a67c:	eaffff83 	b	a490 <__aeabi_dmul+0x260>
    a680:	e1916080 	orrs	r6, r1, r0, lsl #1
    a684:	11936082 	orrsne	r6, r3, r2, lsl #1
    a688:	1affff4d 	bne	a3c4 <__aeabi_dmul+0x194>
    a68c:	e1914080 	orrs	r4, r1, r0, lsl #1
    a690:	1affff78 	bne	a478 <__aeabi_dmul+0x248>
    a694:	e1935082 	orrs	r5, r3, r2, lsl #1
    a698:	1affff63 	bne	a42c <__aeabi_dmul+0x1fc>
    a69c:	eaffff7b 	b	a490 <__aeabi_dmul+0x260>

0000a6a0 <__gedf2>:
    a6a0:	e3e0c000 	mvn	ip, #0
    a6a4:	ea000002 	b	a6b4 <__cmpdf2+0x4>

0000a6a8 <__ledf2>:
    a6a8:	e3a0c001 	mov	ip, #1
    a6ac:	ea000000 	b	a6b4 <__cmpdf2+0x4>

0000a6b0 <__cmpdf2>:
    a6b0:	e3a0c001 	mov	ip, #1
    a6b4:	e52dc004 	push	{ip}		; (str ip, [sp, #-4]!)
    a6b8:	e1a0c080 	lsl	ip, r0, #1
    a6bc:	e1f0cacc 	mvns	ip, ip, asr #21
    a6c0:	e1a0c082 	lsl	ip, r2, #1
    a6c4:	11f0cacc 	mvnsne	ip, ip, asr #21
    a6c8:	0a00000e 	beq	a708 <__cmpdf2+0x58>
    a6cc:	e28dd004 	add	sp, sp, #4
    a6d0:	e191c080 	orrs	ip, r1, r0, lsl #1
    a6d4:	0193c082 	orrseq	ip, r3, r2, lsl #1
    a6d8:	11300002 	teqne	r0, r2
    a6dc:	01310003 	teqeq	r1, r3
    a6e0:	03a00000 	moveq	r0, #0
    a6e4:	012fff1e 	bxeq	lr
    a6e8:	e3700000 	cmn	r0, #0
    a6ec:	e1300002 	teq	r0, r2
    a6f0:	51500002 	cmppl	r0, r2
    a6f4:	01510003 	cmpeq	r1, r3
    a6f8:	21a00fc2 	asrcs	r0, r2, #31
    a6fc:	31e00fc2 	mvncc	r0, r2, asr #31
    a700:	e3800001 	orr	r0, r0, #1
    a704:	e12fff1e 	bx	lr
    a708:	e1a0c080 	lsl	ip, r0, #1
    a70c:	e1f0cacc 	mvns	ip, ip, asr #21
    a710:	1a000001 	bne	a71c <__cmpdf2+0x6c>
    a714:	e191c600 	orrs	ip, r1, r0, lsl #12
    a718:	1a000004 	bne	a730 <__cmpdf2+0x80>
    a71c:	e1a0c082 	lsl	ip, r2, #1
    a720:	e1f0cacc 	mvns	ip, ip, asr #21
    a724:	1affffe8 	bne	a6cc <__cmpdf2+0x1c>
    a728:	e193c602 	orrs	ip, r3, r2, lsl #12
    a72c:	0affffe6 	beq	a6cc <__cmpdf2+0x1c>
    a730:	e49d0004 	pop	{r0}		; (ldr r0, [sp], #4)
    a734:	e12fff1e 	bx	lr

0000a738 <__aeabi_cdrcmple>:
    a738:	e1a0c000 	mov	ip, r0
    a73c:	e1a00002 	mov	r0, r2
    a740:	e1a0200c 	mov	r2, ip
    a744:	e1a0c001 	mov	ip, r1
    a748:	e1a01003 	mov	r1, r3
    a74c:	e1a0300c 	mov	r3, ip
    a750:	eaffffff 	b	a754 <__aeabi_cdcmpeq>

0000a754 <__aeabi_cdcmpeq>:
    a754:	e92d4001 	push	{r0, lr}
    a758:	ebffffd4 	bl	a6b0 <__cmpdf2>
    a75c:	e3500000 	cmp	r0, #0
    a760:	43700000 	cmnmi	r0, #0
    a764:	e8bd8001 	pop	{r0, pc}

0000a768 <__aeabi_dcmpeq>:
    a768:	e52de008 	str	lr, [sp, #-8]!
    a76c:	ebfffff8 	bl	a754 <__aeabi_cdcmpeq>
    a770:	03a00001 	moveq	r0, #1
    a774:	13a00000 	movne	r0, #0
    a778:	e49df008 	ldr	pc, [sp], #8

0000a77c <__aeabi_dcmplt>:
    a77c:	e52de008 	str	lr, [sp, #-8]!
    a780:	ebfffff3 	bl	a754 <__aeabi_cdcmpeq>
    a784:	33a00001 	movcc	r0, #1
    a788:	23a00000 	movcs	r0, #0
    a78c:	e49df008 	ldr	pc, [sp], #8

0000a790 <__aeabi_dcmple>:
    a790:	e52de008 	str	lr, [sp, #-8]!
    a794:	ebffffee 	bl	a754 <__aeabi_cdcmpeq>
    a798:	93a00001 	movls	r0, #1
    a79c:	83a00000 	movhi	r0, #0
    a7a0:	e49df008 	ldr	pc, [sp], #8

0000a7a4 <__aeabi_dcmpge>:
    a7a4:	e52de008 	str	lr, [sp, #-8]!
    a7a8:	ebffffe2 	bl	a738 <__aeabi_cdrcmple>
    a7ac:	93a00001 	movls	r0, #1
    a7b0:	83a00000 	movhi	r0, #0
    a7b4:	e49df008 	ldr	pc, [sp], #8

0000a7b8 <__aeabi_dcmpgt>:
    a7b8:	e52de008 	str	lr, [sp, #-8]!
    a7bc:	ebffffdd 	bl	a738 <__aeabi_cdrcmple>
    a7c0:	33a00001 	movcc	r0, #1
    a7c4:	23a00000 	movcs	r0, #0
    a7c8:	e49df008 	ldr	pc, [sp], #8

0000a7cc <__aeabi_d2iz>:
    a7cc:	e1a02080 	lsl	r2, r0, #1
    a7d0:	e2922602 	adds	r2, r2, #2097152	; 0x200000
    a7d4:	2a00000c 	bcs	a80c <__aeabi_d2iz+0x40>
    a7d8:	5a000009 	bpl	a804 <__aeabi_d2iz+0x38>
    a7dc:	e3e03e3e 	mvn	r3, #992	; 0x3e0
    a7e0:	e0532ac2 	subs	r2, r3, r2, asr #21
    a7e4:	9a00000a 	bls	a814 <__aeabi_d2iz+0x48>
    a7e8:	e1a03580 	lsl	r3, r0, #11
    a7ec:	e3833102 	orr	r3, r3, #-2147483648	; 0x80000000
    a7f0:	e1833aa1 	orr	r3, r3, r1, lsr #21
    a7f4:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    a7f8:	e1a00233 	lsr	r0, r3, r2
    a7fc:	12600000 	rsbne	r0, r0, #0
    a800:	e12fff1e 	bx	lr
    a804:	e3a00000 	mov	r0, #0
    a808:	e12fff1e 	bx	lr
    a80c:	e1911600 	orrs	r1, r1, r0, lsl #12
    a810:	1a000002 	bne	a820 <__aeabi_d2iz+0x54>
    a814:	e2100102 	ands	r0, r0, #-2147483648	; 0x80000000
    a818:	03e00102 	mvneq	r0, #-2147483648	; 0x80000000
    a81c:	e12fff1e 	bx	lr
    a820:	e3a00000 	mov	r0, #0
    a824:	e12fff1e 	bx	lr
