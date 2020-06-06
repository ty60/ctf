
bfin-elf.x:     file format elf32-bfin


Disassembly of section .text:

00fe1400 <_null>:
	...
  fe1408:	10 00       	RTS;
	...

00fe140c <_return_zero>:
  fe140c:	00 00       	NOP;
  fe140e:	00 00       	NOP;
  fe1410:	00 00       	NOP;
  fe1412:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
  fe1414:	10 00       	RTS;
	...

00fe1418 <_return_one>:
  fe1418:	00 00       	NOP;
  fe141a:	00 00       	NOP;
  fe141c:	00 00       	NOP;
  fe141e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
  fe1420:	10 00       	RTS;
	...

00fe1424 <_return_int_size>:
  fe1424:	00 00       	NOP;
  fe1426:	00 00       	NOP;
  fe1428:	00 00       	NOP;
  fe142a:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
  fe142c:	10 00       	RTS;
	...

00fe1430 <_return_pointer_size>:
  fe1430:	00 00       	NOP;
  fe1432:	00 00       	NOP;
  fe1434:	00 00       	NOP;
  fe1436:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
  fe1438:	10 00       	RTS;
	...

00fe143c <_return_short_size>:
  fe143c:	00 00       	NOP;
  fe143e:	00 00       	NOP;
  fe1440:	00 00       	NOP;
  fe1442:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
  fe1444:	10 00       	RTS;
	...

00fe1448 <_return_long_size>:
  fe1448:	00 00       	NOP;
  fe144a:	00 00       	NOP;
  fe144c:	00 00       	NOP;
  fe144e:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
  fe1450:	10 00       	RTS;
	...

00fe1454 <_return_short>:
  fe1454:	00 00       	NOP;
  fe1456:	00 00       	NOP;
  fe1458:	00 00       	NOP;
  fe145a:	20 e1 88 77 	R0 = 0x7788 (X);		/*		R0=0x7788(30600) */
  fe145e:	10 00       	RTS;

00fe1460 <_return_long>:
  fe1460:	00 00       	NOP;
  fe1462:	00 00       	NOP;
  fe1464:	40 e1 88 77 	R0.H = 0x7788;		/* (30600)	R0=0x77887788(2005432200) */
  fe1468:	00 e1 aa 99 	R0.L = 0x99aa;		/* (-26198)	R0=0x778899aa(2005440938) */
  fe146c:	10 00       	RTS;
	...

00fe1470 <_return_short_upper>:
  fe1470:	00 00       	NOP;
  fe1472:	00 00       	NOP;
  fe1474:	00 00       	NOP;
  fe1476:	70 63       	R0 = -0x12 (X);		/*		R0=0xffffffee(-18) */
  fe1478:	10 00       	RTS;
	...

00fe147c <_return_long_upper>:
  fe147c:	00 00       	NOP;
  fe147e:	00 00       	NOP;
  fe1480:	40 e1 ee ff 	R0.H = 0xffee;		/* (-18)	R0=0xffeeffee(-1114130) */
  fe1484:	00 e1 cc dd 	R0.L = 0xddcc;		/* (-8756)	R0=0xffeeddcc(-1122868) */
  fe1488:	10 00       	RTS;
	...

00fe148c <_return_arg1>:
	...
  fe1494:	10 00       	RTS;
	...

00fe1498 <_return_arg2>:
  fe1498:	00 00       	NOP;
  fe149a:	00 00       	NOP;
  fe149c:	00 00       	NOP;
  fe149e:	01 30       	R0 = R1;
  fe14a0:	10 00       	RTS;
	...

00fe14a4 <_add>:
  fe14a4:	00 00       	NOP;
  fe14a6:	00 00       	NOP;
  fe14a8:	00 00       	NOP;
  fe14aa:	08 50       	R0 = R0 + R1;
  fe14ac:	10 00       	RTS;
	...

00fe14b0 <_add3>:
  fe14b0:	00 00       	NOP;
  fe14b2:	00 00       	NOP;
  fe14b4:	08 50       	R0 = R0 + R1;
  fe14b6:	10 50       	R0 = R0 + R2;
  fe14b8:	10 00       	RTS;
	...

00fe14bc <_add_two>:
  fe14bc:	00 00       	NOP;
  fe14be:	00 00       	NOP;
  fe14c0:	00 00       	NOP;
  fe14c2:	10 64       	R0 += 0x2;		/* (  2) */
  fe14c4:	10 00       	RTS;
	...

00fe14c8 <_inc>:
  fe14c8:	00 00       	NOP;
  fe14ca:	00 00       	NOP;
  fe14cc:	00 00       	NOP;
  fe14ce:	08 64       	R0 += 0x1;		/* (  1) */
  fe14d0:	10 00       	RTS;
	...

00fe14d4 <_or>:
  fe14d4:	00 00       	NOP;
  fe14d6:	00 00       	NOP;
  fe14d8:	00 00       	NOP;
  fe14da:	01 56       	R0 = R1 | R0;
  fe14dc:	10 00       	RTS;
	...

00fe14e0 <_or_one>:
  fe14e0:	00 00       	NOP;
  fe14e2:	00 00       	NOP;
  fe14e4:	00 00       	NOP;
  fe14e6:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
  fe14e8:	10 00       	RTS;
	...

00fe14ec <_load>:
  fe14ec:	00 00       	NOP;
  fe14ee:	00 00       	NOP;
  fe14f0:	10 32       	P2 = R0;
  fe14f2:	10 91       	R0 = [P2];
  fe14f4:	10 00       	RTS;
	...

00fe14f8 <_store>:
  fe14f8:	00 00       	NOP;
  fe14fa:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
  fe14fe:	10 32       	P2 = R0;
  fe1500:	11 93       	[P2] = R1;
  fe1502:	10 00       	RTS;

00fe1504 <_load_long>:
  fe1504:	00 00       	NOP;
  fe1506:	00 00       	NOP;
  fe1508:	10 32       	P2 = R0;
  fe150a:	10 91       	R0 = [P2];
  fe150c:	10 00       	RTS;
	...

00fe1510 <_store_long>:
  fe1510:	41 e1 22 11 	R1.H = 0x1122;		/* (4386)	R1=0x112200ff(287441151) */
  fe1514:	01 e1 44 33 	R1.L = 0x3344;		/* (13124)	R1=0x11223344(287454020) */
  fe1518:	10 32       	P2 = R0;
  fe151a:	11 93       	[P2] = R1;
  fe151c:	10 00       	RTS;
	...

00fe1520 <_member>:
  fe1520:	10 32       	P2 = R0;
  fe1522:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
  fe1524:	50 b0       	[P2 + 0x4] = R0;
  fe1526:	90 a0       	R0 = [P2 + 0x8];
  fe1528:	10 00       	RTS;
	...

00fe152c <_get_static_value_addr>:
  fe152c:	00 00       	NOP;
  fe152e:	00 00       	NOP;
  fe1530:	40 e1 fe 00 	R0.H = 0xfe;		/* (254)	R0=0xfe0001(16646145) */
  fe1534:	00 e1 04 18 	R0.L = 0x1804;		/* (6148)	R0=0xfe1804 <_static_value>(16652292) */
  fe1538:	10 00       	RTS;
	...

00fe153c <_get_static_value>:
  fe153c:	00 00       	NOP;
  fe153e:	4a e1 fe 00 	P2.H = 0xfe;		/* (254)	P2=0xfe0000 */
  fe1542:	0a e1 04 18 	P2.L = 0x1804;		/* (6148)	P2=0xfe1804 <_static_value> */
  fe1546:	10 91       	R0 = [P2];
  fe1548:	10 00       	RTS;
	...

00fe154c <_set_static_value>:
  fe154c:	00 00       	NOP;
  fe154e:	4a e1 fe 00 	P2.H = 0xfe;		/* (254)	P2=0xfe1804 <_static_value> */
  fe1552:	0a e1 04 18 	P2.L = 0x1804;		/* (6148)	P2=0xfe1804 <_static_value> */
  fe1556:	10 93       	[P2] = R0;
  fe1558:	10 00       	RTS;
	...

00fe155c <_set_stack>:
  fe155c:	c6 6f       	SP += -0x8;		/* ( -8) */
  fe155e:	20 e1 fe 00 	R0 = 0xfe (X);		/*		R0=0xfe(254) */
  fe1562:	70 b0       	[SP + 0x4] = R0;
  fe1564:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
  fe1568:	30 93       	[SP] = R0;
  fe156a:	46 6c       	SP += 0x8;		/* (  8) */
  fe156c:	10 00       	RTS;
	...

00fe1570 <_use_stack>:
  fe1570:	c6 6f       	SP += -0x8;		/* ( -8) */
  fe1572:	20 e1 fe 00 	R0 = 0xfe (X);		/*		R0=0xfe(254) */
  fe1576:	70 b0       	[SP + 0x4] = R0;
  fe1578:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
  fe157c:	30 93       	[SP] = R0;
  fe157e:	71 a0       	R1 = [SP + 0x4];
  fe1580:	30 91       	R0 = [SP];
  fe1582:	01 50       	R0 = R1 + R0;
  fe1584:	46 6c       	SP += 0x8;		/* (  8) */
  fe1586:	10 00       	RTS;

00fe1588 <_call_self>:
  fe1588:	67 01       	[--SP] = RETS;
  fe158a:	a6 6f       	SP += -0xc;		/* (-12) */
  fe158c:	ff e3 fe ff 	CALL 0xfe1588 <_call_self>;
  fe1590:	66 6c       	SP += 0xc;		/* ( 12) */
  fe1592:	27 01       	RETS = [SP++];
  fe1594:	10 00       	RTS;
	...

00fe1598 <_call_simple>:
  fe1598:	67 01       	[--SP] = RETS;
  fe159a:	a6 6f       	SP += -0xc;		/* (-12) */
  fe159c:	ff e3 78 ff 	CALL 0xfe148c <_return_arg1>;
  fe15a0:	66 6c       	SP += 0xc;		/* ( 12) */
  fe15a2:	27 01       	RETS = [SP++];
  fe15a4:	10 00       	RTS;
	...

00fe15a8 <_call_complex1>:
  fe15a8:	67 01       	[--SP] = RETS;
  fe15aa:	a6 6f       	SP += -0xc;		/* (-12) */
  fe15ac:	20 e1 fe 00 	R0 = 0xfe (X);		/*		R0=0xfe(254) */
  fe15b0:	ff e3 6e ff 	CALL 0xfe148c <_return_arg1>;
  fe15b4:	08 64       	R0 += 0x1;		/* (  1) */
  fe15b6:	66 6c       	SP += 0xc;		/* ( 12) */
  fe15b8:	27 01       	RETS = [SP++];
  fe15ba:	10 00       	RTS;

00fe15bc <_call_complex2>:
  fe15bc:	78 05       	[--SP] = (R7:7);
  fe15be:	67 01       	[--SP] = RETS;
  fe15c0:	a6 6f       	SP += -0xc;		/* (-12) */
  fe15c2:	39 30       	R7 = R1;
  fe15c4:	01 30       	R0 = R1;
  fe15c6:	ff e3 63 ff 	CALL 0xfe148c <_return_arg1>;
  fe15ca:	4a e1 fe 00 	P2.H = 0xfe;		/* (254)	P2=0xfe1804 <_static_value> */
  fe15ce:	0a e1 04 18 	P2.L = 0x1804;		/* (6148)	P2=0xfe1804 <_static_value> */
  fe15d2:	10 93       	[P2] = R0;
  fe15d4:	07 30       	R0 = R7;
  fe15d6:	66 6c       	SP += 0xc;		/* ( 12) */
  fe15d8:	27 01       	RETS = [SP++];
  fe15da:	38 05       	(R7:7) = [SP++];
  fe15dc:	10 00       	RTS;
	...

00fe15e0 <_call_pointer>:
  fe15e0:	67 01       	[--SP] = RETS;
  fe15e2:	a6 6f       	SP += -0xc;		/* (-12) */
  fe15e4:	10 32       	P2 = R0;
  fe15e6:	62 00       	CALL (P2);
  fe15e8:	66 6c       	SP += 0xc;		/* ( 12) */
  fe15ea:	27 01       	RETS = [SP++];
  fe15ec:	10 00       	RTS;
	...

00fe15f0 <_condition>:
  fe15f0:	08 08       	CC = R0 == R1;
  fe15f2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
  fe15f4:	08 07       	IF CC R1 = R0;
  fe15f6:	01 30       	R0 = R1;
  fe15f8:	08 64       	R0 += 0x1;		/* (  1) */
  fe15fa:	10 00       	RTS;

00fe15fc <_loop>:
  fe15fc:	00 0d       	CC = R0 <= 0x0;
  fe15fe:	0a 18       	IF CC JUMP 0xfe1612 <_loop+0x16>;
  fe1600:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
  fe1602:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
  fe1604:	c8 52       	R3 = R0 - R1;
  fe1606:	13 32       	P2 = R3;
  fe1608:	b2 e0 03 20 	LSETUP(0xfe160c <_loop+0x10>, 0xfe160e <_loop+0x12>) LC1 = P2;
  fe160c:	8a 50       	R2 = R2 + R1;
  fe160e:	09 64       	R1 += 0x1;		/* (  1) */
  fe1610:	02 20       	JUMP.S 0xfe1614 <_loop+0x18>;
  fe1612:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
  fe1614:	02 30       	R0 = R2;
  fe1616:	10 00       	RTS;

00fe1618 <_many_args>:
  fe1618:	f1 a0       	R1 = [SP + 0xc];
  fe161a:	08 50       	R0 = R0 + R1;
  fe161c:	71 a1       	R1 = [SP + 0x14];
  fe161e:	08 50       	R0 = R0 + R1;
  fe1620:	f1 a1       	R1 = [SP + 0x1c];
  fe1622:	08 50       	R0 = R0 + R1;
  fe1624:	10 00       	RTS;
	...

00fe1628 <_call_many_args>:
  fe1628:	67 01       	[--SP] = RETS;
  fe162a:	06 6f       	SP += -0x20;		/* (-32) */
  fe162c:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
  fe162e:	f0 b0       	[SP + 0xc] = R0;
  fe1630:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
  fe1632:	30 b1       	[SP + 0x10] = R0;
  fe1634:	28 60       	R0 = 0x5 (X);		/*		R0=0x5(  5) */
  fe1636:	70 b1       	[SP + 0x14] = R0;
  fe1638:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
  fe163a:	b0 b1       	[SP + 0x18] = R0;
  fe163c:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
  fe163e:	f0 b1       	[SP + 0x1c] = R0;
  fe1640:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
  fe1642:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
  fe1644:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
  fe1646:	ff e3 e9 ff 	CALL 0xfe1618 <_many_args>;
  fe164a:	06 6d       	SP += 0x20;		/* ( 32) */
  fe164c:	27 01       	RETS = [SP++];
  fe164e:	10 00       	RTS;

00fe1650 <_direct>:
	...
  fe1658:	00 00       	NOP;
  fe165a:	10 00       	RTS;

00fe165c <_binary>:
	...
  fe1668:	10 00       	RTS;
	...

00fe166c <_main>:
  fe166c:	00 00       	NOP;
  fe166e:	00 00       	NOP;
  fe1670:	00 00       	NOP;
  fe1672:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
  fe1674:	10 00       	RTS;
	...
