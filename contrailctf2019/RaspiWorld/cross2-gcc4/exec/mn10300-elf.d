
mn10300-elf.x:     file format elf32-mn10300


Disassembly of section .text:

00001400 <_start>:
    1400:	fc dc 10 1c 	mov	7184,a0
    1404:	00 00 
    1406:	f2 f0       	mov	a0,sp
    1408:	dd 3d 01 00 	call	1545 <_main>,[],0
    140c:	00 00 00 
    140f:	81          	mov	d0,d1

00001410 <___r_exit>:
    1410:	80 01       	mov	1,d0
    1412:	f0 c0       	syscall	
    1414:	f0 fc       	rets	

00001416 <___r_read>:
    1416:	80 04       	mov	4,d0
    1418:	f0 c0       	syscall	
    141a:	f0 fc       	rets	

0000141c <___r_write>:
    141c:	80 05       	mov	5,d0
    141e:	f0 c0       	syscall	
    1420:	f0 fc       	rets	

00001422 <___r_open>:
    1422:	80 02       	mov	2,d0
    1424:	f0 c0       	syscall	
    1426:	f0 fc       	rets	

00001428 <___r_close>:
    1428:	80 03       	mov	3,d0
    142a:	f0 c0       	syscall	
    142c:	f0 fc       	rets	

0000142e <___exit>:
    142e:	f8 fe f4    	add	-12,sp

00001431 <.LCFI0>:
    1431:	81          	mov	d0,d1

00001432 <.Loc.9.1>:
    1432:	80 00       	mov	0,d0

00001434 <.LVL1>:
    1434:	dd dc ff ff 	call	1410 <___r_exit>,[],0
    1438:	ff 00 00 

0000143b <___read>:
    143b:	f8 fe ec    	add	-20,sp

0000143e <.LCFI1>:
    143e:	f1 e0       	mov	d0,a0

00001440 <.Loc.13.1>:
    1440:	46 0c       	mov	d1,(12,sp)
    1442:	58 20       	mov	(32,sp),d0

00001444 <.LVL4>:
    1444:	42 10       	mov	d0,(16,sp)
    1446:	80 00       	mov	0,d0
    1448:	f1 d1       	mov	a0,d1

0000144a <.LVL5>:
    144a:	dd cc ff ff 	call	1416 <___r_read>,[],0
    144e:	ff 00 00 

00001451 <.LVL6>:
    1451:	df 00 14    	ret	[],20

00001454 <___write>:
    1454:	f8 fe ec    	add	-20,sp

00001457 <.LCFI2>:
    1457:	f1 e0       	mov	d0,a0

00001459 <.Loc.17.1>:
    1459:	46 0c       	mov	d1,(12,sp)
    145b:	58 20       	mov	(32,sp),d0

0000145d <.LVL8>:
    145d:	42 10       	mov	d0,(16,sp)
    145f:	80 00       	mov	0,d0
    1461:	f1 d1       	mov	a0,d1

00001463 <.LVL9>:
    1463:	dd b9 ff ff 	call	141c <___r_write>,[],0
    1467:	ff 00 00 

0000146a <.LVL10>:
    146a:	df 00 14    	ret	[],20

0000146d <___open>:
    146d:	f8 fe ec    	add	-20,sp

00001470 <.LCFI3>:
    1470:	f1 e0       	mov	d0,a0

00001472 <.Loc.21.1>:
    1472:	46 0c       	mov	d1,(12,sp)
    1474:	58 20       	mov	(32,sp),d0

00001476 <.LVL12>:
    1476:	42 10       	mov	d0,(16,sp)
    1478:	80 00       	mov	0,d0
    147a:	f1 d1       	mov	a0,d1

0000147c <.LVL13>:
    147c:	dd a6 ff ff 	call	1422 <___r_open>,[],0
    1480:	ff 00 00 

00001483 <.LVL14>:
    1483:	df 00 14    	ret	[],20

00001486 <___close>:
    1486:	f8 fe f4    	add	-12,sp

00001489 <.LCFI4>:
    1489:	81          	mov	d0,d1

0000148a <.Loc.25.1>:
    148a:	80 00       	mov	0,d0

0000148c <.LVL16>:
    148c:	dd 9c ff ff 	call	1428 <___r_close>,[],0
    1490:	ff 00 00 

00001493 <.LVL17>:
    1493:	df 00 0c    	ret	[],12

00001496 <_exit>:
    1496:	f8 fe f4    	add	-12,sp

00001499 <.LCFI5>:
    1499:	cd 95 ff 00 	call	142e <___exit>,[],0
    149d:	00 

0000149e <_write1>:
    149e:	f8 fe f0    	add	-16,sp

000014a1 <.LCFI6>:
    14a1:	f8 96 18    	movbu	d1,(24,sp)

000014a4 <.Loc.36.1>:
    14a4:	85 01       	mov	1,d1

000014a6 <.LVL21>:
    14a6:	46 0c       	mov	d1,(12,sp)
    14a8:	3c          	mov	sp,a0
    14a9:	20 18       	add	24,a0
    14ab:	f1 d1       	mov	a0,d1
    14ad:	cd a7 ff 00 	call	1454 <___write>,[],0
    14b1:	00 

000014b2 <.LVL22>:
    14b2:	df 00 10    	ret	[],16

000014b5 <_putchar>:
    14b5:	cf 80       	movm	[d2],(sp)

000014b7 <.LCFI7>:
    14b7:	f8 fe f4    	add	-12,sp

000014ba <.LCFI8>:
    14ba:	86          	mov	d1,d2

000014bb <.Loc.41.1>:
    14bb:	15          	extbu	d1

000014bc <.LVL24>:
    14bc:	cd e2 ff 00 	call	149e <_write1>,[],0
    14c0:	00 

000014c1 <.LVL25>:
    14c1:	88          	mov	d2,d0
    14c2:	df 80 10    	ret	[d2],16

000014c5 <_puts>:
    14c5:	cf e0       	movm	[d2,d3,a2],(sp)

000014c7 <.LCFI9>:
    14c7:	f8 fe f4    	add	-12,sp

000014ca <.LCFI10>:
    14ca:	83          	mov	d0,d3
    14cb:	f1 e6       	mov	d1,a2

000014cd <.Loc.47.1>:
    14cd:	f0 46       	movbu	(a2),d1

000014cf <.LVL27>:
    14cf:	84          	mov	d1,d0

000014d0 <.LVL28>:
    14d0:	14          	extbu	d0
    14d1:	a0 00       	cmp	0,d0
    14d3:	c8 12       	beq	14e5 <.L10>

000014d5 <.L12>:
    14d5:	8c          	mov	d3,d0
    14d6:	15          	extbu	d1
    14d7:	cd de ff 00 	call	14b5 <_putchar>,[],0
    14db:	00 

000014dc <.LVL29>:
    14dc:	49          	inc	a2
    14dd:	f0 46       	movbu	(a2),d1
    14df:	86          	mov	d1,d2
    14e0:	16          	extbu	d2
    14e1:	aa 00       	cmp	0,d2
    14e3:	c9 f2       	bne	14d5 <.L12>

000014e5 <.L10>:
    14e5:	80 00       	mov	0,d0
    14e7:	df e0 18    	ret	[d2,d3,a2],24

000014ea <_putxval>:
    14ea:	cf f0       	movm	[d2,d3,a2,a3],(sp)

000014ec <.LCFI11>:
    14ec:	f8 fe e0    	add	-32,sp

000014ef <.LCFI12>:
    14ef:	f1 e3       	mov	d0,a3
    14f1:	5d 3c       	mov	(60,sp),a1

000014f3 <.LVL32>:
    14f3:	8a 00       	mov	0,d2
    14f5:	f8 9a 1f    	movbu	d2,(31,sp)

000014f8 <.LVL33>:
    14f8:	a5 00       	cmp	0,d1
    14fa:	c9 08       	bne	1502 <.L15>

000014fc <.Loc.90.1>:
    14fc:	b5 00       	cmp	0,a1
    14fe:	c9 04       	bne	1502 <.L15>

00001500 <.Loc.91.1>:
    1500:	95 01       	mov	1,a1

00001502 <.L15>:
    1502:	3c          	mov	sp,a0
    1503:	20 1d       	add	29,a0

00001505 <.Loc.94.1>:
    1505:	80 30       	mov	48,d0

00001507 <.LVL34>:
    1507:	fc cf 7b 15 	mov	5499,d3
    150b:	00 00 
    150d:	ca 1a       	bra	1527 <.L16>

0000150f <.L18>:
    150f:	86          	mov	d1,d2

00001510 <.LVL36>:
    1510:	f8 e2 0f    	and	15,d2
    1513:	f1 ea       	mov	d2,a2
    1515:	f1 6e       	add	d3,a2
    1517:	f0 4a       	movbu	(a2),d2
    1519:	f8 58 01    	movbu	d2,(1,a0)

0000151c <.LVL37>:
    151c:	f8 c5 04    	lsr	4,d1

0000151f <.LVL38>:
    151f:	b5 00       	cmp	0,a1
    1521:	c8 04       	beq	1525 <.L17>

00001523 <.L20>:
    1523:	21 ff       	add	-1,a1

00001525 <.L17>:
    1525:	20 ff       	add	-1,a0

00001527 <.L16>:
    1527:	f1 d2       	mov	a0,d2
    1529:	48          	inc	d2

0000152a <.LVL42>:
    152a:	a5 00       	cmp	0,d1
    152c:	c9 e3       	bne	150f <.L18>

0000152e <.Loc.93.1>:
    152e:	b5 00       	cmp	0,a1
    1530:	c8 07       	beq	1537 <.L23>

00001532 <.Loc.94.1>:
    1532:	f8 50 01    	movbu	d0,(1,a0)

00001535 <.LVL43>:
    1535:	ca ee       	bra	1523 <.L20>

00001537 <.L23>:
    1537:	f1 dc       	mov	a3,d0
    1539:	89          	mov	d2,d1

0000153a <.LVL45>:
    153a:	44          	inc	d1
    153b:	cd 8a ff 00 	call	14c5 <_puts>,[],0
    153f:	00 

00001540 <.LVL46>:
    1540:	80 00       	mov	0,d0
    1542:	df f0 30    	ret	[d2,d3,a2,a3],48

00001545 <_main>:
    1545:	cf 80       	movm	[d2],(sp)

00001547 <.LCFI13>:
    1547:	f8 fe f0    	add	-16,sp

0000154a <.LCFI14>:
    154a:	80 01       	mov	1,d0
    154c:	fc cd 8c 15 	mov	5516,d1
    1550:	00 00 
    1552:	cd 73 ff 00 	call	14c5 <_puts>,[],0
    1556:	00 

00001557 <.LVL48>:
    1557:	8a 00       	mov	0,d2
    1559:	4a 0c       	mov	d2,(12,sp)
    155b:	80 01       	mov	1,d0
    155d:	fc a5 00 18 	mov	(1800 <_data_value>),d1
    1561:	00 00 
    1563:	cd 87 ff 00 	call	14ea <_putxval>,[],0
    1567:	00 

00001568 <.LVL49>:
    1568:	80 01       	mov	1,d0
    156a:	fc cd 9a 15 	mov	5530,d1
    156e:	00 00 
    1570:	cd 55 ff 00 	call	14c5 <_puts>,[],0
    1574:	00 

00001575 <.LVL50>:
    1575:	88          	mov	d2,d0
    1576:	cd 20 ff 00 	call	1496 <_exit>,[],0
    157a:	00 
