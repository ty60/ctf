
h8300-elf.x:     file format elf32-h8300


Disassembly of section .text:

00001400 <_start>:
    1400:	79 07 1c 10 	mov.w	#0x1c10,r7
    1404:	5e 00 15 0c 	jsr	@0x150c:24

00001408 <___exit>:
    1408:	79 01 de ad 	mov.w	#0xdead,r1
    140c:	79 02 be ef 	mov.w	#0xbeef,r2
    1410:	01 80       	sleep	
    1412:	54 70       	rts	

00001414 <___read>:
    1414:	5e 00 00 c6 	jsr	@0xc6:24
    1418:	54 70       	rts	

0000141a <___write>:
    141a:	5e 00 00 c7 	jsr	@0xc7:24
    141e:	54 70       	rts	

00001420 <___open>:
    1420:	6d f1       	mov.w	r1,@-r7
    1422:	1b 87       	subs	#2,r7
    1424:	5e 00 00 c5 	jsr	@0xc5:24
    1428:	0b 87       	adds	#2,r7
    142a:	0b 87       	adds	#2,r7
    142c:	54 70       	rts	

0000142e <___close>:
    142e:	5e 00 00 c9 	jsr	@0xc9:24
    1432:	54 70       	rts	

00001434 <_exit>:
    1434:	5e 00 14 08 	jsr	@0x1408:24

00001438 <_write1>:
    1438:	1b 87       	subs	#2,r7
    143a:	0d 73       	mov.w	r7,r3
    143c:	0b 83       	adds	#2,r3
    143e:	6c b9       	mov.b	r1l,@-r3
    1440:	79 02 00 01 	mov.w	#0x1,r2
    1444:	0d 31       	mov.w	r3,r1
    1446:	5e 00 14 1a 	jsr	@0x141a:24
    144a:	0b 87       	adds	#2,r7
    144c:	54 70       	rts	

0000144e <_putchar>:
    144e:	6d f4       	mov.w	r4,@-r7
    1450:	0d 14       	mov.w	r1,r4
    1452:	5e 00 14 38 	jsr	@0x1438:24
    1456:	0d 40       	mov.w	r4,r0
    1458:	6d 74       	mov.w	@r7+,r4
    145a:	54 70       	rts	

0000145c <_puts>:
    145c:	6d f4       	mov.w	r4,@-r7
    145e:	6d f5       	mov.w	r5,@-r7
    1460:	0d 05       	mov.w	r0,r5
    1462:	0d 14       	mov.w	r1,r4
    1464:	68 19       	mov.b	@r1,r1l
    1466:	47 0e       	beq	.+14 (0x1476)

00001468 <.L7>:
    1468:	f1 00       	mov.b	#0x0,r1h
    146a:	0d 50       	mov.w	r5,r0
    146c:	5e 00 14 4e 	jsr	@0x144e:24
    1470:	0b 04       	adds	#1,r4
    1472:	68 49       	mov.b	@r4,r1l
    1474:	46 f2       	bne	.-14 (0x1468)

00001476 <.L5>:
    1476:	19 00       	sub.w	r0,r0
    1478:	6d 75       	mov.w	@r7+,r5
    147a:	6d 74       	mov.w	@r7+,r4
    147c:	54 70       	rts	

0000147e <_putxval>:
    147e:	6d f4       	mov.w	r4,@-r7
    1480:	6d f5       	mov.w	r5,@-r7
    1482:	6d f6       	mov.w	r6,@-r7
    1484:	79 03 ff ec 	mov.w	#0xffec,r3
    1488:	09 37       	add.w	r3,r7
    148a:	69 f0       	mov.w	r0,@r7
    148c:	0d 23       	mov.w	r2,r3
    148e:	0d 12       	mov.w	r1,r2
    1490:	6f 75 00 1c 	mov.w	@(0x1c:16,r7),r5
    1494:	18 88       	sub.b	r0l,r0l
    1496:	6e f8 00 13 	mov.b	r0l,@(0x13:16,r7)
    149a:	0d 20       	mov.w	r2,r0
    149c:	14 b8       	or.b	r3l,r0l
    149e:	14 30       	or.b	r3h,r0h
    14a0:	0d 00       	mov.w	r0,r0
    14a2:	46 06       	bne	.+6 (0x14aa)
    14a4:	0d 55       	mov.w	r5,r5
    14a6:	46 02       	bne	.+2 (0x14aa)
    14a8:	fd 01       	mov.b	#0x1,r5l

000014aa <.L10>:
    14aa:	0d 74       	mov.w	r7,r4
    14ac:	8c 12       	add.b	#0x12,r4l
    14ae:	94 00       	addx	#0x0,r4h
    14b0:	79 06 15 3e 	mov.w	#0x153e,r6
    14b4:	40 28       	bra	.+40 (0x14de)

000014b6 <.L13>:
    14b6:	0d 20       	mov.w	r2,r0
    14b8:	0d 31       	mov.w	r3,r1
    14ba:	e9 0f       	and.b	#0xf,r1l
    14bc:	e1 00       	and.b	#0x0,r1h
    14be:	19 00       	sub.w	r0,r0
    14c0:	0d 60       	mov.w	r6,r0
    14c2:	09 10       	add.w	r1,r0
    14c4:	68 08       	mov.b	@r0,r0l
    14c6:	68 c8       	mov.b	r0l,@r4
    14c8:	f8 04       	mov.b	#0x4,r0l

000014ca <.Llt1>:
    14ca:	11 02       	shlr.b	r2h
    14cc:	13 0a       	rotxr.b	r2l
    14ce:	13 03       	rotxr.b	r3h
    14d0:	13 0b       	rotxr.b	r3l
    14d2:	88 ff       	add.b	#0xff,r0l
    14d4:	46 f4       	bne	.-12 (0x14ca)
    14d6:	0d 55       	mov.w	r5,r5
    14d8:	47 02       	beq	.+2 (0x14dc)

000014da <.L15>:
    14da:	1b 05       	subs	#1,r5

000014dc <.L12>:
    14dc:	1b 04       	subs	#1,r4

000014de <.L11>:
    14de:	0d 41       	mov.w	r4,r1
    14e0:	0d 20       	mov.w	r2,r0
    14e2:	14 b8       	or.b	r3l,r0l
    14e4:	14 30       	or.b	r3h,r0h
    14e6:	0d 00       	mov.w	r0,r0
    14e8:	46 cc       	bne	.-52 (0x14b6)
    14ea:	0d 55       	mov.w	r5,r5
    14ec:	47 06       	beq	.+6 (0x14f4)
    14ee:	f8 30       	mov.b	#0x30,r0l
    14f0:	68 c8       	mov.b	r0l,@r4
    14f2:	40 e6       	bra	.-26 (0x14da)

000014f4 <.L18>:
    14f4:	0b 01       	adds	#1,r1
    14f6:	69 70       	mov.w	@r7,r0
    14f8:	5e 00 14 5c 	jsr	@0x145c:24
    14fc:	19 00       	sub.w	r0,r0
    14fe:	79 03 00 14 	mov.w	#0x14,r3
    1502:	09 37       	add.w	r3,r7
    1504:	6d 76       	mov.w	@r7+,r6
    1506:	6d 75       	mov.w	@r7+,r5
    1508:	6d 74       	mov.w	@r7+,r4
    150a:	54 70       	rts	

0000150c <_main>:
    150c:	79 01 15 4f 	mov.w	#0x154f,r1
    1510:	79 00 00 01 	mov.w	#0x1,r0
    1514:	5e 00 14 5c 	jsr	@0x145c:24
    1518:	19 22       	sub.w	r2,r2
    151a:	6d f2       	mov.w	r2,@-r7
    151c:	6b 01 18 00 	mov.w	@0x1800:16,r1
    1520:	6b 02 18 02 	mov.w	@0x1802:16,r2
    1524:	79 00 00 01 	mov.w	#0x1,r0
    1528:	5e 00 14 7e 	jsr	@0x147e:24
    152c:	79 01 15 5d 	mov.w	#0x155d,r1
    1530:	79 00 00 01 	mov.w	#0x1,r0
    1534:	5e 00 14 5c 	jsr	@0x145c:24
    1538:	19 00       	sub.w	r0,r0
    153a:	5e 00 14 34 	jsr	@0x1434:24
