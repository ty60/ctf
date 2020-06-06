
cr16-elf.x:     file format elf32-cr16


Disassembly of section .text:

00001400 <_start>:
    1400:	bf 5a 10 1c 	movw	$0x1c10:m,r15
    1404:	00 c0 da 00 	bal	(ra),*+0x14de <_main>:m
    1408:	02 5b       	movw	r0,r2

0000140a <___exit>:
    140a:	10 5a       	movw	$0x1:s,r0
    140c:	c8 00       	excp	bpt
    140e:	ee 0a       	jump	(ra)

00001410 <___read>:
    1410:	40 5a       	movw	$0x4:s,r0
    1412:	c8 00       	excp	bpt
    1414:	ee 0a       	jump	(ra)

00001416 <___write>:
    1416:	50 5a       	movw	$0x5:s,r0
    1418:	c8 00       	excp	bpt
    141a:	ee 0a       	jump	(ra)

0000141c <___open>:
    141c:	20 5a       	movw	$0x2:s,r0
    141e:	c8 00       	excp	bpt
    1420:	ee 0a       	jump	(ra)

00001422 <___close>:
    1422:	30 5a       	movw	$0x3:s,r0
    1424:	c8 00       	excp	bpt
    1426:	ee 0a       	jump	(ra)

00001428 <_exit>:
    1428:	ff c0 e3 ff 	bal	(ra),*-0x140a <___exit>:m

0000142c <_write1>:
    142c:	1e 01       	push	RA
    142e:	bf 60 fc ff 	addd	$0xfffc:m,(sp)
    1432:	3f f0       	storb	r3,0x0:s(sp)
    1434:	15 5a       	movw	$0x1:s,r5
    1436:	f3 55       	movd	(sp),(r4,r3)
    1438:	ff c0 df ff 	bal	(ra),*-0x1416 <___write>:m

0000143c <.LVL4>:
    143c:	4f 60       	addd	$0x4:s,(sp)
    143e:	1e 03       	popret	RA

00001440 <_putchar>:
    1440:	1e 01       	push	RA
    1442:	07 01       	push	$0x1,r7
    1444:	37 5b       	movw	r3,r7
    1446:	ff c0 e7 ff 	bal	(ra),*-0x142c <_write1>:m

0000144a <.LVL6>:
    144a:	70 5b       	movw	r7,r0
    144c:	07 02       	pop	$0x1,r7
    144e:	1e 03       	popret	RA

00001450 <_puts>:
    1450:	1e 01       	push	RA
    1452:	27 01       	push	$0x3,r7
    1454:	27 5b       	movw	r2,r7
    1456:	38 55       	movd	(r4,r3),(r9,r8)
    1458:	33 b0       	loadb	0x0:s(r4,r3),r3
    145a:	03 50       	cmpb	$0x0:s,r3
    145c:	09 10       	beq	*+0x146e <.L5>:s

0000145e <.L7>:
    145e:	33 5c       	movxb	r3,r3
    1460:	72 5b       	movw	r7,r2
    1462:	ff c0 df ff 	bal	(ra),*-0x1440 <_putchar>:m

00001466 <.LVL10>:
    1466:	18 60       	addd	$0x1:s,(r9,r8)
    1468:	38 b0       	loadb	0x0:s(r9,r8),r3
    146a:	03 50       	cmpb	$0x0:s,r3
    146c:	19 1f       	bne	*-0x145e <.L7>:s

0000146e <.L5>:
    146e:	00 5a       	movw	$0x0:s,r0
    1470:	27 02       	pop	$0x3,r7
    1472:	1e 03       	popret	RA

00001474 <_putxval>:
    1474:	1e 01       	push	RA
    1476:	27 01       	push	$0x3,r7
    1478:	bf 60 ec ff 	addd	$0xffec:m,(sp)
    147c:	30 55       	movd	(r4,r3),(r1,r0)
    147e:	53 5b       	movw	r5,r3
    1480:	0f 83 10 00 	storb	$0x0:s,0x10:m(sp)
    1484:	05 52       	cmpw	$0x0:s,r5
    1486:	04 08       	seq	r4
    1488:	04 52       	cmpw	$0x0:s,r4
    148a:	06 10       	beq	*+0x1496 <.L10>:s
    148c:	04 5b       	movw	r0,r4
    148e:	14 27       	orw	r1,r4
    1490:	04 52       	cmpw	$0x0:s,r4
    1492:	04 08       	seq	r4
    1494:	43 33       	addw	r4,r3

00001496 <.L10>:
    1496:	f4 55       	movd	(sp),(r5,r4)
    1498:	f4 60       	addd	$0xf:s,(r5,r4)
    149a:	60 05 06 15 	movd	$0x1506:m,(r7,r6)
    149e:	ec 10       	br	*+0x14b6 <.L14>:s

000014a0 <.L13>:
    14a0:	0e 55       	movd	(r1,r0),(ra)
    14a2:	4e 00 00 00 	andd	$0xf:l,(ra)
    14a6:	0f 00 
    14a8:	6e 61       	addd	(r7,r6),(ra)
    14aa:	ee b0       	loadb	0x0:s(ra),r14
    14ac:	e4 f0       	storb	r14,0x0:s(r5,r4)
    14ae:	94 60       	addd	$-1:s,(r5,r4)
    14b0:	c0 4b       	lshd	$-4:s,(r1,r0)
    14b2:	18 22       	andw	$0x1:s,r8
    14b4:	83 3b       	subw	r8,r3

000014b6 <.L14>:
    14b6:	03 52       	cmpw	$0x0:s,r3
    14b8:	18 08       	sne	r8
    14ba:	08 50       	cmpb	$0x0:s,r8
    14bc:	12 1f       	bne	*-0x14a0 <.L13>:s
    14be:	09 5b       	movw	r0,r9
    14c0:	19 27       	orw	r1,r9
    14c2:	09 52       	cmpw	$0x0:s,r9
    14c4:	1e 08       	sne	r14
    14c6:	0e 52       	cmpw	$0x0:s,r14
    14c8:	1c 1e       	bne	*-0x14a0 <.L13>:s
    14ca:	43 55       	movd	(r5,r4),(r4,r3)
    14cc:	13 60       	addd	$0x1:s,(r4,r3)
    14ce:	ff c0 83 ff 	bal	(ra),*-0x1450 <_puts>:m

000014d2 <.LVL20>:
    14d2:	00 5a       	movw	$0x0:s,r0
    14d4:	bf 60 14 00 	addd	$0x14:m,(sp)
    14d8:	27 02       	pop	$0x3,r7
    14da:	1e 03       	popret	RA

000014dc <.LFE4>:
	...

000014de <_main>:
    14de:	30 05 18 15 	movd	$0x1518:m,(r4,r3)
    14e2:	12 5a       	movw	$0x1:s,r2
    14e4:	ff c0 6d ff 	bal	(ra),*-0x1450 <_puts>:m

000014e8 <.LVL22>:
    14e8:	05 5a       	movw	$0x0:s,r5
    14ea:	12 00 30 b0 	loadd	0x1800 <_data_value>:l,(r4,r3)
    14ee:	00 18 
    14f0:	12 5a       	movw	$0x1:s,r2
    14f2:	ff c0 83 ff 	bal	(ra),*-0x1474 <_putxval>:m

000014f6 <.LVL23>:
    14f6:	30 05 26 15 	movd	$0x1526:m,(r4,r3)
    14fa:	12 5a       	movw	$0x1:s,r2
    14fc:	ff c0 55 ff 	bal	(ra),*-0x1450 <_puts>:m

00001500 <.LVL24>:
    1500:	02 5a       	movw	$0x0:s,r2
    1502:	ff c0 27 ff 	bal	(ra),*-0x1428 <_exit>:m
