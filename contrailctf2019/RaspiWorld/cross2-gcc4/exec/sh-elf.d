
sh-elf.x:     file format elf32-sh


Disassembly of section .text:

00001400 <_start>:
    1400:	df 0f       	mov.l	1440 <_stack_addr>,r15	! 1c10 <_end>
    1402:	d1 10       	mov.l	1444 <_main_addr>,r1	! 15a8 <_main>
    1404:	41 0b       	jsr	@r1
    1406:	00 09       	nop	
    1408:	65 03       	mov	r0,r5

0000140a <___r_exit>:
    140a:	e4 01       	mov	#1,r4
    140c:	c3 22       	trapa	#34
    140e:	00 0b       	rts	
    1410:	00 09       	nop	

00001412 <___r_read>:
    1412:	e4 03       	mov	#3,r4
    1414:	c3 22       	trapa	#34
    1416:	00 0b       	rts	
    1418:	00 09       	nop	

0000141a <___r_write>:
    141a:	e4 04       	mov	#4,r4
    141c:	c3 22       	trapa	#34
    141e:	00 0b       	rts	
    1420:	00 09       	nop	

00001422 <___r_open>:
    1422:	e4 05       	mov	#5,r4
    1424:	c3 22       	trapa	#34
    1426:	00 0b       	rts	
    1428:	00 09       	nop	

0000142a <___r_close>:
    142a:	e4 06       	mov	#6,r4
    142c:	c3 22       	trapa	#34
    142e:	00 0b       	rts	
    1430:	00 09       	nop	
    1432:	00 09       	nop	
    1434:	00 09       	nop	
    1436:	00 09       	nop	
    1438:	00 09       	nop	
    143a:	00 09       	nop	
    143c:	00 09       	nop	
    143e:	00 09       	nop	

00001440 <_stack_addr>:
    1440:	00 00       	.word 0x0000
    1442:	1c 10       	mov.l	r1,@(0,r12)

00001444 <_main_addr>:
    1444:	00 00       	.word 0x0000
    1446:	15 a8       	mov.l	r10,@(32,r5)
    1448:	00 09       	nop	
    144a:	00 09       	nop	
    144c:	00 09       	nop	
    144e:	00 09       	nop	

00001450 <___exit>:
    1450:	4f 22       	sts.l	pr,@-r15
    1452:	65 43       	mov	r4,r5
    1454:	d1 01       	mov.l	145c <___exit+0xc>,r1	! 140a <___r_exit>
    1456:	41 0b       	jsr	@r1
    1458:	e4 00       	mov	#0,r4
    145a:	00 09       	nop	
    145c:	00 00       	.word 0x0000
    145e:	14 0a       	mov.l	r0,@(40,r4)

00001460 <___read>:
    1460:	4f 22       	sts.l	pr,@-r15
    1462:	62 43       	mov	r4,r2
    1464:	61 53       	mov	r5,r1
    1466:	67 63       	mov	r6,r7
    1468:	e4 00       	mov	#0,r4
    146a:	65 23       	mov	r2,r5
    146c:	d0 02       	mov.l	1478 <___read+0x18>,r0	! 1412 <___r_read>
    146e:	40 0b       	jsr	@r0
    1470:	66 13       	mov	r1,r6
    1472:	4f 26       	lds.l	@r15+,pr
    1474:	00 0b       	rts	
    1476:	00 09       	nop	
    1478:	00 00       	.word 0x0000
    147a:	14 12       	mov.l	r1,@(8,r4)

0000147c <___write>:
    147c:	4f 22       	sts.l	pr,@-r15
    147e:	62 43       	mov	r4,r2
    1480:	61 53       	mov	r5,r1
    1482:	67 63       	mov	r6,r7
    1484:	e4 00       	mov	#0,r4
    1486:	65 23       	mov	r2,r5
    1488:	d0 02       	mov.l	1494 <___write+0x18>,r0	! 141a <___r_write>
    148a:	40 0b       	jsr	@r0
    148c:	66 13       	mov	r1,r6
    148e:	4f 26       	lds.l	@r15+,pr
    1490:	00 0b       	rts	
    1492:	00 09       	nop	
    1494:	00 00       	.word 0x0000
    1496:	14 1a       	mov.l	r1,@(40,r4)

00001498 <___open>:
    1498:	4f 22       	sts.l	pr,@-r15
    149a:	62 43       	mov	r4,r2
    149c:	61 53       	mov	r5,r1
    149e:	67 63       	mov	r6,r7
    14a0:	e4 00       	mov	#0,r4
    14a2:	65 23       	mov	r2,r5
    14a4:	d0 02       	mov.l	14b0 <___open+0x18>,r0	! 1422 <___r_open>
    14a6:	40 0b       	jsr	@r0
    14a8:	66 13       	mov	r1,r6
    14aa:	4f 26       	lds.l	@r15+,pr
    14ac:	00 0b       	rts	
    14ae:	00 09       	nop	
    14b0:	00 00       	.word 0x0000
    14b2:	14 22       	mov.l	r2,@(8,r4)

000014b4 <___close>:
    14b4:	4f 22       	sts.l	pr,@-r15
    14b6:	65 43       	mov	r4,r5
    14b8:	d0 02       	mov.l	14c4 <___close+0x10>,r0	! 142a <___r_close>
    14ba:	40 0b       	jsr	@r0
    14bc:	e4 00       	mov	#0,r4
    14be:	4f 26       	lds.l	@r15+,pr
    14c0:	00 0b       	rts	
    14c2:	00 09       	nop	
    14c4:	00 00       	.word 0x0000
    14c6:	14 2a       	mov.l	r2,@(40,r4)

000014c8 <_exit>:
    14c8:	4f 22       	sts.l	pr,@-r15
    14ca:	d1 01       	mov.l	14d0 <_exit+0x8>,r1	! 1450 <___exit>
    14cc:	41 0b       	jsr	@r1
    14ce:	00 09       	nop	
    14d0:	00 00       	.word 0x0000
    14d2:	14 50       	mov.l	r5,@(0,r4)

000014d4 <_write1>:
    14d4:	4f 22       	sts.l	pr,@-r15
    14d6:	7f fc       	add	#-4,r15
    14d8:	2f 50       	mov.b	r5,@r15
    14da:	65 f3       	mov	r15,r5
    14dc:	d0 03       	mov.l	14ec <_write1+0x18>,r0	! 147c <___write>
    14de:	40 0b       	jsr	@r0
    14e0:	e6 01       	mov	#1,r6
    14e2:	7f 04       	add	#4,r15
    14e4:	4f 26       	lds.l	@r15+,pr
    14e6:	00 0b       	rts	
    14e8:	00 09       	nop	
    14ea:	00 09       	nop	
    14ec:	00 00       	.word 0x0000
    14ee:	14 7c       	mov.l	r7,@(48,r4)

000014f0 <_putchar>:
    14f0:	2f 86       	mov.l	r8,@-r15
    14f2:	4f 22       	sts.l	pr,@-r15
    14f4:	68 53       	mov	r5,r8
    14f6:	d0 04       	mov.l	1508 <_putchar+0x18>,r0	! 14d4 <_write1>
    14f8:	40 0b       	jsr	@r0
    14fa:	65 5c       	extu.b	r5,r5
    14fc:	60 83       	mov	r8,r0
    14fe:	4f 26       	lds.l	@r15+,pr
    1500:	68 f6       	mov.l	@r15+,r8
    1502:	00 0b       	rts	
    1504:	00 09       	nop	
    1506:	00 09       	nop	
    1508:	00 00       	.word 0x0000
    150a:	14 d4       	mov.l	r13,@(16,r4)

0000150c <_puts>:
    150c:	2f 86       	mov.l	r8,@-r15
    150e:	2f 96       	mov.l	r9,@-r15
    1510:	2f a6       	mov.l	r10,@-r15
    1512:	4f 22       	sts.l	pr,@-r15
    1514:	69 43       	mov	r4,r9
    1516:	68 53       	mov	r5,r8
    1518:	65 50       	mov.b	@r5,r5
    151a:	25 58       	tst	r5,r5
    151c:	89 06       	bt	152c <_puts+0x20>
    151e:	78 01       	add	#1,r8
    1520:	da 06       	mov.l	153c <_puts+0x30>,r10	! 14f0 <_putchar>
    1522:	4a 0b       	jsr	@r10
    1524:	64 93       	mov	r9,r4
    1526:	65 84       	mov.b	@r8+,r5
    1528:	25 58       	tst	r5,r5
    152a:	8b fa       	bf	1522 <_puts+0x16>
    152c:	e0 00       	mov	#0,r0
    152e:	4f 26       	lds.l	@r15+,pr
    1530:	6a f6       	mov.l	@r15+,r10
    1532:	69 f6       	mov.l	@r15+,r9
    1534:	68 f6       	mov.l	@r15+,r8
    1536:	00 0b       	rts	
    1538:	00 09       	nop	
    153a:	00 09       	nop	
    153c:	00 00       	.word 0x0000
    153e:	14 f0       	mov.l	r15,@(0,r4)

00001540 <_putxval>:
    1540:	2f 86       	mov.l	r8,@-r15
    1542:	4f 22       	sts.l	pr,@-r15
    1544:	7f ec       	add	#-20,r15
    1546:	68 53       	mov	r5,r8
    1548:	e2 00       	mov	#0,r2
    154a:	61 f3       	mov	r15,r1
    154c:	71 10       	add	#16,r1
    154e:	21 20       	mov.b	r2,@r1
    1550:	26 68       	tst	r6,r6
    1552:	8b 02       	bf	155a <_putxval+0x1a>
    1554:	25 58       	tst	r5,r5
    1556:	01 29       	movt	r1
    1558:	36 1c       	add	r1,r6
    155a:	65 f3       	mov	r15,r5
    155c:	75 0f       	add	#15,r5
    155e:	d7 10       	mov.l	15a0 <_putxval+0x60>,r7	! 15e4 <_etext>
    1560:	a0 0b       	bra	157a <_putxval+0x3a>
    1562:	e2 ff       	mov	#-1,r2
    1564:	e3 0f       	mov	#15,r3
    1566:	23 89       	and	r8,r3
    1568:	60 33       	mov	r3,r0
    156a:	03 7c       	mov.b	@(r0,r7),r3
    156c:	25 30       	mov.b	r3,@r5
    156e:	75 ff       	add	#-1,r5
    1570:	48 09       	shlr2	r8
    1572:	48 09       	shlr2	r8
    1574:	21 18       	tst	r1,r1
    1576:	89 00       	bt	157a <_putxval+0x3a>
    1578:	76 ff       	add	#-1,r6
    157a:	26 68       	tst	r6,r6
    157c:	61 2a       	negc	r2,r1
    157e:	61 1c       	extu.b	r1,r1
    1580:	21 18       	tst	r1,r1
    1582:	8b ef       	bf	1564 <_putxval+0x24>
    1584:	28 88       	tst	r8,r8
    1586:	63 2a       	negc	r2,r3
    1588:	63 3c       	extu.b	r3,r3
    158a:	23 38       	tst	r3,r3
    158c:	8b ea       	bf	1564 <_putxval+0x24>
    158e:	d0 05       	mov.l	15a4 <_putxval+0x64>,r0	! 150c <_puts>
    1590:	40 0b       	jsr	@r0
    1592:	75 01       	add	#1,r5
    1594:	e0 00       	mov	#0,r0
    1596:	7f 14       	add	#20,r15
    1598:	4f 26       	lds.l	@r15+,pr
    159a:	68 f6       	mov.l	@r15+,r8
    159c:	00 0b       	rts	
    159e:	00 09       	nop	
    15a0:	00 00       	.word 0x0000
    15a2:	15 e4       	mov.l	r14,@(16,r5)
    15a4:	00 00       	.word 0x0000
    15a6:	15 0c       	mov.l	r0,@(48,r5)

000015a8 <_main>:
    15a8:	2f 86       	mov.l	r8,@-r15
    15aa:	4f 22       	sts.l	pr,@-r15
    15ac:	d8 07       	mov.l	15cc <_main+0x24>,r8	! 150c <_puts>
    15ae:	d5 08       	mov.l	15d0 <_main+0x28>,r5	! 15f8
    15b0:	48 0b       	jsr	@r8
    15b2:	e4 01       	mov	#1,r4
    15b4:	e4 01       	mov	#1,r4
    15b6:	d1 07       	mov.l	15d4 <_main+0x2c>,r1	! 1800 <_data_value>
    15b8:	65 12       	mov.l	@r1,r5
    15ba:	d0 07       	mov.l	15d8 <_main+0x30>,r0	! 1540 <_putxval>
    15bc:	40 0b       	jsr	@r0
    15be:	e6 00       	mov	#0,r6
    15c0:	d5 06       	mov.l	15dc <_main+0x34>,r5	! 1608
    15c2:	48 0b       	jsr	@r8
    15c4:	e4 01       	mov	#1,r4
    15c6:	d1 06       	mov.l	15e0 <_main+0x38>,r1	! 14c8 <_exit>
    15c8:	41 0b       	jsr	@r1
    15ca:	e4 00       	mov	#0,r4
    15cc:	00 00       	.word 0x0000
    15ce:	15 0c       	mov.l	r0,@(48,r5)
    15d0:	00 00       	.word 0x0000
    15d2:	15 f8       	mov.l	r15,@(32,r5)
    15d4:	00 00       	.word 0x0000
    15d6:	18 00       	mov.l	r0,@(0,r8)
    15d8:	00 00       	.word 0x0000
    15da:	15 40       	mov.l	r4,@(0,r5)
    15dc:	00 00       	.word 0x0000
    15de:	16 08       	mov.l	r0,@(32,r6)
    15e0:	00 00       	.word 0x0000
    15e2:	14 c8       	mov.l	r12,@(32,r4)
