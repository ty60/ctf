
bfin-elf.x:     file format elf32-bfin


Disassembly of section .text:

00001400 <_start>:
    1400:	4e e1 00 00 	SP.H = 0x0;		/* (  0)	SP=0x0 */
    1404:	0e e1 10 dd 	SP.L = 0xdd10;		/* (-8944)	SP=0xdd10 <__end> */
    1408:	00 e3 ac 00 	CALL 0x1560 <__startmain>;

0000140c <___exit>:
    140c:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    140e:	a0 00       	EXCPT 0x0;
    1410:	10 00       	RTS;

00001412 <___read>:
    1412:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    1414:	a0 00       	EXCPT 0x0;
    1416:	10 00       	RTS;

00001418 <___write>:
    1418:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
    141a:	a0 00       	EXCPT 0x0;
    141c:	10 00       	RTS;

0000141e <___open>:
    141e:	28 68       	P0 = 0x5 (X);		/*		P0=0x5(  5) */
    1420:	a0 00       	EXCPT 0x0;
    1422:	10 00       	RTS;

00001424 <___close>:
    1424:	30 68       	P0 = 0x6 (X);		/*		P0=0x6(  6) */
    1426:	a0 00       	EXCPT 0x0;
    1428:	10 00       	RTS;
	...

0000142c <__exit>:
    142c:	67 01       	[--SP] = RETS;
    142e:	a6 6f       	SP += -0xc;		/* (-12) */
    1430:	ff e3 ee ff 	CALL 0x140c <___exit>;

00001434 <_read>:
    1434:	67 01       	[--SP] = RETS;
    1436:	a6 6f       	SP += -0xc;		/* (-12) */
    1438:	ff e3 ed ff 	CALL 0x1412 <___read>;
    143c:	66 6c       	SP += 0xc;		/* ( 12) */
    143e:	27 01       	RETS = [SP++];
    1440:	10 00       	RTS;
	...

00001444 <_write>:
    1444:	67 01       	[--SP] = RETS;
    1446:	a6 6f       	SP += -0xc;		/* (-12) */
    1448:	ff e3 e8 ff 	CALL 0x1418 <___write>;
    144c:	66 6c       	SP += 0xc;		/* ( 12) */
    144e:	27 01       	RETS = [SP++];
    1450:	10 00       	RTS;
	...

00001454 <_open>:
    1454:	67 01       	[--SP] = RETS;
    1456:	a6 6f       	SP += -0xc;		/* (-12) */
    1458:	ff e3 e3 ff 	CALL 0x141e <___open>;
    145c:	66 6c       	SP += 0xc;		/* ( 12) */
    145e:	27 01       	RETS = [SP++];
    1460:	10 00       	RTS;
	...

00001464 <_close>:
    1464:	67 01       	[--SP] = RETS;
    1466:	a6 6f       	SP += -0xc;		/* (-12) */
    1468:	ff e3 de ff 	CALL 0x1424 <___close>;
    146c:	66 6c       	SP += 0xc;		/* ( 12) */
    146e:	27 01       	RETS = [SP++];
    1470:	10 00       	RTS;
	...

00001474 <_fstat>:
    1474:	67 01       	[--SP] = RETS;
    1476:	a6 6f       	SP += -0xc;		/* (-12) */
    1478:	01 30       	R0 = R1;
    147a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    147c:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
    147e:	00 e3 97 00 	CALL 0x15ac <_memset>;
    1482:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1484:	66 6c       	SP += 0xc;		/* ( 12) */
    1486:	27 01       	RETS = [SP++];
    1488:	10 00       	RTS;
	...

0000148c <_lseek>:
    148c:	00 00       	NOP;
    148e:	00 00       	NOP;
    1490:	00 00       	NOP;
    1492:	01 30       	R0 = R1;
    1494:	10 00       	RTS;
	...

00001498 <_sbrk>:
    1498:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x0 */
    149c:	0a e1 00 90 	P2.L = 0x9000;		/* (-28672)	P2=0x9000 <__gp> */
    14a0:	11 91       	R1 = [P2];
    14a2:	01 50       	R0 = R1 + R0;
    14a4:	10 93       	[P2] = R0;
    14a6:	01 30       	R0 = R1;
    14a8:	10 00       	RTS;
	...

000014ac <_isatty>:
    14ac:	00 00       	NOP;
    14ae:	00 00       	NOP;
    14b0:	00 00       	NOP;
    14b2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    14b4:	10 00       	RTS;
	...

000014b8 <__read>:
    14b8:	67 01       	[--SP] = RETS;
    14ba:	a6 6f       	SP += -0xc;		/* (-12) */
    14bc:	ff e3 bc ff 	CALL 0x1434 <_read>;
    14c0:	66 6c       	SP += 0xc;		/* ( 12) */
    14c2:	27 01       	RETS = [SP++];
    14c4:	10 00       	RTS;
	...

000014c8 <__write>:
    14c8:	67 01       	[--SP] = RETS;
    14ca:	a6 6f       	SP += -0xc;		/* (-12) */
    14cc:	ff e3 bc ff 	CALL 0x1444 <_write>;
    14d0:	66 6c       	SP += 0xc;		/* ( 12) */
    14d2:	27 01       	RETS = [SP++];
    14d4:	10 00       	RTS;
	...

000014d8 <__open>:
    14d8:	67 01       	[--SP] = RETS;
    14da:	a6 6f       	SP += -0xc;		/* (-12) */
    14dc:	ff e3 bc ff 	CALL 0x1454 <_open>;
    14e0:	66 6c       	SP += 0xc;		/* ( 12) */
    14e2:	27 01       	RETS = [SP++];
    14e4:	10 00       	RTS;
	...

000014e8 <__close>:
    14e8:	67 01       	[--SP] = RETS;
    14ea:	a6 6f       	SP += -0xc;		/* (-12) */
    14ec:	ff e3 bc ff 	CALL 0x1464 <_close>;
    14f0:	66 6c       	SP += 0xc;		/* ( 12) */
    14f2:	27 01       	RETS = [SP++];
    14f4:	10 00       	RTS;
	...

000014f8 <__fstat>:
    14f8:	67 01       	[--SP] = RETS;
    14fa:	a6 6f       	SP += -0xc;		/* (-12) */
    14fc:	ff e3 bc ff 	CALL 0x1474 <_fstat>;
    1500:	66 6c       	SP += 0xc;		/* ( 12) */
    1502:	27 01       	RETS = [SP++];
    1504:	10 00       	RTS;
	...

00001508 <__lseek>:
    1508:	67 01       	[--SP] = RETS;
    150a:	a6 6f       	SP += -0xc;		/* (-12) */
    150c:	ff e3 c0 ff 	CALL 0x148c <_lseek>;
    1510:	66 6c       	SP += 0xc;		/* ( 12) */
    1512:	27 01       	RETS = [SP++];
    1514:	10 00       	RTS;
	...

00001518 <__sbrk>:
    1518:	67 01       	[--SP] = RETS;
    151a:	a6 6f       	SP += -0xc;		/* (-12) */
    151c:	ff e3 be ff 	CALL 0x1498 <_sbrk>;
    1520:	66 6c       	SP += 0xc;		/* ( 12) */
    1522:	27 01       	RETS = [SP++];
    1524:	10 00       	RTS;
	...

00001528 <__isatty>:
    1528:	67 01       	[--SP] = RETS;
    152a:	a6 6f       	SP += -0xc;		/* (-12) */
    152c:	ff e3 c0 ff 	CALL 0x14ac <_isatty>;
    1530:	66 6c       	SP += 0xc;		/* ( 12) */
    1532:	27 01       	RETS = [SP++];
    1534:	10 00       	RTS;
	...

00001538 <_main>:
    1538:	67 01       	[--SP] = RETS;
    153a:	a6 6f       	SP += -0xc;		/* (-12) */
    153c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1(  1) */
    1540:	00 e1 64 87 	R0.L = 0x8764;		/* (-30876)	R0=0x8764 <__etext>(34660) */
    1544:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9000 <__gp> */
    1548:	0a e1 04 90 	P2.L = 0x9004;		/* (-28668)	P2=0x9004 <_data_value> */
    154c:	11 91       	R1 = [P2];
    154e:	42 e1 00 00 	R2.H = 0x0;		/* (  0)	R2=0x3c( 60) */
    1552:	02 e1 90 87 	R2.L = 0x8790;		/* (-30832)	R2=0x8790(34704) */
    1556:	00 e3 9b 00 	CALL 0x168c <_printf>;
    155a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    155c:	00 e3 12 00 	CALL 0x1580 <_exit>;

00001560 <__startmain>:
    1560:	67 01       	[--SP] = RETS;
    1562:	a6 6f       	SP += -0xc;		/* (-12) */
    1564:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
    1568:	00 e1 c0 98 	R0.L = 0x98c0;		/* (-26432)	R0=0x98c0 <__edata>(39104) */
    156c:	42 e1 00 00 	R2.H = 0x0;		/* (  0)	R2=0x8790(34704) */
    1570:	02 e1 08 d9 	R2.L = 0xd908;		/* (-9976)	R2=0xd908 <__ebss>(55560) */
    1574:	82 52       	R2 = R2 - R0;
    1576:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1578:	00 e3 1a 00 	CALL 0x15ac <_memset>;
    157c:	ff e3 de ff 	CALL 0x1538 <_main>;

00001580 <_exit>:
    1580:	78 05       	[--SP] = (R7:7);
    1582:	00 e8 03 00 	LINK 0xc;		/* (12) */
    1586:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1588:	38 30       	R7 = R0;
    158a:	00 e3 bd 0c 	CALL 0x2f04 <___call_exitprocs>;
    158e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9004 <_data_value> */
    1592:	0a e1 9c 87 	P2.L = 0x879c;		/* (-30820)	P2=0x879c <__global_impure_ptr> */
    1596:	10 91       	R0 = [P2];
    1598:	08 32       	P1 = R0;
    159a:	ca af       	P2 = [P1 + 0x3c];
    159c:	42 0c       	CC = P2 == 0x0;
    159e:	04 18       	IF CC JUMP 0x15a6 <_exit+0x26>;
    15a0:	00 00       	NOP;
    15a2:	00 00       	NOP;
    15a4:	62 00       	CALL (P2);
    15a6:	07 30       	R0 = R7;
    15a8:	ff e3 42 ff 	CALL 0x142c <__exit>;

000015ac <_memset>:
    15ac:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    15ae:	d8 54       	R3 = R0 & R3;
    15b0:	68 05       	[--SP] = (R7:5);
    15b2:	03 0c       	CC = R3 == 0x0;
    15b4:	00 e8 00 00 	LINK 0x0;		/* (0) */
    15b8:	10 32       	P2 = R0;
    15ba:	15 18       	IF CC JUMP 0x15e4 <_memset+0x38>;
    15bc:	1a 30       	R3 = R2;
    15be:	02 0c       	CC = R2 == 0x0;
    15c0:	fb 67       	R3 += -0x1;		/* ( -1) */
    15c2:	39 30       	R7 = R1;
    15c4:	0c 18       	IF CC JUMP 0x15dc <_memset+0x30>;
    15c6:	0a 32       	P1 = R2;
    15c8:	1e 60       	R6 = 0x3 (X);		/*		R6=0x3(  3) */
    15ca:	b2 e0 08 10 	LSETUP(0x15ce <_memset+0x22>, 0x15da <_memset+0x2e>) LC1 = P1;
    15ce:	17 9a       	B[P2++] = R7;
    15d0:	6a 30       	R5 = P2;
    15d2:	b5 54       	R2 = R5 & R6;
    15d4:	02 0c       	CC = R2 == 0x0;
    15d6:	42 32       	P0 = P2;
    15d8:	08 18       	IF CC JUMP 0x15e8 <_memset+0x3c>;
    15da:	fb 67       	R3 += -0x1;		/* ( -1) */
    15dc:	01 e8 00 00 	UNLINK;
    15e0:	28 05       	(R7:5) = [SP++];
    15e2:	10 00       	RTS;
    15e4:	00 32       	P0 = R0;
    15e6:	1a 30       	R3 = R2;
    15e8:	1b 0e       	CC = R3 <= 0x3 (IU);
    15ea:	33 1c       	IF CC JUMP 0x1650 <_memset+0xa4> (BP);
    15ec:	4a 43       	R2 = R1.B (Z);
    15ee:	82 c6 42 8e 	R7 = R2 << 0x8;
    15f2:	97 56       	R2 = R7 | R2;
    15f4:	82 c6 82 8e 	R7 = R2 << 0x10;
    15f8:	97 56       	R2 = R7 | R2;
    15fa:	7f 60       	R7 = 0xf (X);		/*		R7=0xf( 15) */
    15fc:	3b 0a       	CC = R3 <= R7 (IU);
    15fe:	35 18       	IF CC JUMP 0x1668 <_memset+0xbc>;
    1600:	3b 30       	R7 = R3;
    1602:	87 67       	R7 += -0x10;		/* (-16) */
    1604:	27 4e       	R7 >>= 0x4;
    1606:	0f 32       	P1 = R7;
    1608:	50 32       	P2 = P0;
    160a:	09 6c       	P1 += 0x1;		/* (  1) */
    160c:	b2 e0 06 10 	LSETUP(0x1610 <_memset+0x64>, 0x1618 <_memset+0x6c>) LC1 = P1;
    1610:	12 93       	[P2] = R2;
    1612:	52 b0       	[P2 + 0x4] = R2;
    1614:	92 b0       	[P2 + 0x8] = R2;
    1616:	d2 b0       	[P2 + 0xc] = R2;
    1618:	82 6c       	P2 += 0x10;		/* ( 16) */
    161a:	3b 30       	R7 = R3;
    161c:	87 67       	R7 += -0x10;		/* (-16) */
    161e:	27 4e       	R7 >>= 0x4;
    1620:	0f 64       	R7 += 0x1;		/* (  1) */
    1622:	27 4f       	R7 <<= 0x4;
    1624:	17 32       	P2 = R7;
    1626:	7f 60       	R7 = 0xf (X);		/*		R7=0xf( 15) */
    1628:	fb 54       	R3 = R3 & R7;
    162a:	1b 0e       	CC = R3 <= 0x3 (IU);
    162c:	50 5a       	P1 = P0 + P2;
    162e:	41 32       	P0 = P1;
    1630:	10 18       	IF CC JUMP 0x1650 <_memset+0xa4>;
    1632:	03 32       	P0 = R3;
    1634:	e0 6f       	P0 += -0x4;		/* ( -4) */
    1636:	c0 44       	P0 = P0 >> 0x2;
    1638:	08 6c       	P0 += 0x1;		/* (  1) */
    163a:	01 5e       	P0 = P1 + (P0 << 0x2);
    163c:	50 32       	P2 = P0;
    163e:	0a 44       	P2 -= P1;
    1640:	e2 6f       	P2 += -0x4;		/* ( -4) */
    1642:	d2 44       	P2 = P2 >> 0x2;
    1644:	0a 6c       	P2 += 0x1;		/* (  1) */
    1646:	b2 e0 02 20 	LSETUP(0x164a <_memset+0x9e>, 0x164a <_memset+0x9e>) LC1 = P2;
    164a:	0a 92       	[P1++] = R2;
    164c:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
    164e:	d3 54       	R3 = R3 & R2;
    1650:	03 0c       	CC = R3 == 0x0;
    1652:	c5 1b       	IF CC JUMP 0x15dc <_memset+0x30>;
    1654:	50 30       	R2 = P0;
    1656:	da 50       	R3 = R2 + R3;
    1658:	01 9a       	B[P0++] = R1;
    165a:	68 30       	R5 = P0;
    165c:	1d 08       	CC = R5 == R3;
    165e:	fd 17       	IF !CC JUMP 0x1658 <_memset+0xac> (BP);
    1660:	01 e8 00 00 	UNLINK;
    1664:	28 05       	(R7:5) = [SP++];
    1666:	10 00       	RTS;
    1668:	48 32       	P1 = P0;
    166a:	e4 2f       	JUMP.S 0x1632 <_memset+0x86>;

0000166c <__printf_r>:
    166c:	10 32       	P2 = R0;
    166e:	00 e8 04 00 	LINK 0x10;		/* (16) */
    1672:	5f 30       	R3 = FP;
    1674:	3a b1       	[FP + 0x10] = R2;
    1676:	83 64       	R3 += 0x10;		/* ( 16) */
    1678:	82 ce 01 c4 	R2 = ROT R1 BY 0x0 || R1 = [P2 + 0x8] || NOP;
    167c:	91 a0 00 00 
    1680:	f3 b0       	[SP + 0xc] = R3;
    1682:	00 e3 19 00 	CALL 0x16b4 <__vfprintf_r>;
    1686:	01 e8 00 00 	UNLINK;
    168a:	10 00       	RTS;

0000168c <_printf>:
    168c:	00 e8 04 00 	LINK 0x10;		/* (16) */
    1690:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x879c <__global_impure_ptr> */
    1694:	3a b1       	[FP + 0x10] = R2;
    1696:	f9 b0       	[FP + 0xc] = R1;
    1698:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    169c:	52 91       	P2 = [P2];
    169e:	10 30       	R2 = R0;
    16a0:	47 30       	R0 = FP;
    16a2:	60 64       	R0 += 0xc;		/* ( 12) */
    16a4:	91 a0       	R1 = [P2 + 0x8];
    16a6:	f0 b0       	[SP + 0xc] = R0;
    16a8:	42 30       	R0 = P2;
    16aa:	00 e3 05 00 	CALL 0x16b4 <__vfprintf_r>;
    16ae:	01 e8 00 00 	UNLINK;
    16b2:	10 00       	RTS;

000016b4 <__vfprintf_r>:
    16b4:	e3 05       	[--SP] = (R7:4, P5:3);
    16b6:	00 e8 50 01 	LINK 0x540;		/* (1344) */
    16ba:	21 30       	R4 = R1;
    16bc:	20 32       	P4 = R0;
    16be:	3a 30       	R7 = R2;
    16c0:	00 e3 82 19 	CALL 0x49c4 <__localeconv_r>;
    16c4:	00 32       	P0 = R0;
    16c6:	00 91       	R0 = [P0];
    16c8:	38 e6 c3 fe 	[FP + -0x4f4] = R0;
    16cc:	00 e3 ae 23 	CALL 0x5e28 <_strlen>;
    16d0:	38 e6 c1 fe 	[FP + -0x4fc] = R0;
    16d4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    16d6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    16d8:	44 0c       	CC = P4 == 0x0;
    16da:	38 e6 bf fe 	[FP + -0x504] = R0;
    16de:	39 e6 c0 fe 	[FP + -0x500] = R1;
    16e2:	06 18       	IF CC JUMP 0x16ee <__vfprintf_r+0x3a>;
    16e4:	a1 a3       	R1 = [P4 + 0x38];
    16e6:	01 0c       	CC = R1 == 0x0;
    16e8:	a4 19       	IF CC JUMP 0x1a30 <__vfprintf_r+0x37c>;
    16ea:	00 00       	NOP;
    16ec:	00 00       	NOP;
    16ee:	04 32       	P0 = R4;
    16f0:	80 a9       	R0 = W[P0 + 0xc] (X);
    16f2:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
    16f4:	08 14       	IF !CC JUMP 0x1704 <__vfprintf_r+0x50> (BP);
    16f6:	01 e4 19 00 	R1 = [P0 + 0x64];
    16fa:	68 4a       	BITSET (R0, 0xd);		/* bit 13 */
    16fc:	69 4c       	BITCLR (R1, 0xd);		/* bit 13 */
    16fe:	80 b5       	W[P0 + 0xc] = R0;
    1700:	01 e6 19 00 	[P0 + 0x64] = R1;
    1704:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
    1706:	48 54       	R1 = R0 & R1;
    1708:	89 42       	R1 = R1.L (X);
    170a:	01 0c       	CC = R1 == 0x0;
    170c:	10 19       	IF CC JUMP 0x192c <__vfprintf_r+0x278>;
    170e:	00 00       	NOP;
    1710:	00 00       	NOP;
    1712:	04 32       	P0 = R4;
    1714:	01 a1       	R1 = [P0 + 0x10];
    1716:	01 0c       	CC = R1 == 0x0;
    1718:	0a 19       	IF CC JUMP 0x192c <__vfprintf_r+0x278>;
    171a:	d1 60       	R1 = 0x1a (X);		/*		R1=0x1a( 26) */
    171c:	48 54       	R1 = R0 & R1;
    171e:	89 42       	R1 = R1.L (X);
    1720:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    1722:	11 08       	CC = R1 == R2;
    1724:	12 19       	IF CC JUMP 0x1948 <__vfprintf_r+0x294>;
    1726:	28 e1 70 fb 	P0 = -0x490 (X);		/*		P0=0xfffffb70(-1168) */
    172a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    172c:	38 5a       	P0 = P0 + FP;
    172e:	3b e6 c6 fe 	[FP + -0x4e8] = R3;
    1732:	3b e6 be fe 	[FP + -0x508] = R3;
    1736:	58 30       	R3 = P0;
    1738:	3b 65       	R3 += 0x27;		/* ( 39) */
    173a:	3b e6 c5 fe 	[FP + -0x4ec] = R3;
    173e:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1742:	0b 64       	R3 += 0x1;		/* (  1) */
    1744:	3d e4 c5 fe 	R5 = [FP + -0x4ec];
    1748:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    174a:	97 5a       	P2 = FP + P2;
    174c:	3b e6 c4 fe 	[FP + -0x4f0] = R3;
    1750:	eb 52       	R3 = R3 - R5;
    1752:	3a e7 d9 fe 	[FP + -0x49c] = P2;
    1756:	38 e6 db fe 	[FP + -0x494] = R0;
    175a:	38 e6 da fe 	[FP + -0x498] = R0;
    175e:	3f e6 cf fe 	[FP + -0x4c4] = R7;
    1762:	38 e6 bd fe 	[FP + -0x50c] = R0;
    1766:	38 e6 cd fe 	[FP + -0x4cc] = R0;
    176a:	3b e6 bc fe 	[FP + -0x510] = R3;
    176e:	38 e5 cf fe 	P0 = [FP + -0x4c4];
    1772:	40 99       	R0 = B[P0] (X);
    1774:	00 0c       	CC = R0 == 0x0;
    1776:	61 19       	IF CC JUMP 0x1a38 <__vfprintf_r+0x384>;
    1778:	29 61       	R1 = 0x25 (X);		/*		R1=0x25( 37) */
    177a:	08 08       	CC = R0 == R1;
    177c:	5e 19       	IF CC JUMP 0x1a38 <__vfprintf_r+0x384>;
    177e:	48 30       	R1 = P0;
    1780:	09 64       	R1 += 0x1;		/* (  1) */
    1782:	05 20       	JUMP.S 0x178c <__vfprintf_r+0xd8>;
    1784:	2d 61       	R5 = 0x25 (X);		/*		R5=0x25( 37) */
    1786:	28 08       	CC = R0 == R5;
    1788:	bd 18       	IF CC JUMP 0x1902 <__vfprintf_r+0x24e>;
    178a:	00 00       	NOP;
    178c:	29 32       	P5 = R1;
    178e:	09 64       	R1 += 0x1;		/* (  1) */
    1790:	68 99       	R0 = B[P5] (X);
    1792:	00 0c       	CC = R0 == 0x0;
    1794:	f8 17       	IF !CC JUMP 0x1784 <__vfprintf_r+0xd0> (BP);
    1796:	55 30       	R2 = P5;
    1798:	3b e4 cf fe 	R3 = [FP + -0x4c4];
    179c:	da 53       	R7 = R2 - R3;
    179e:	07 0c       	CC = R7 == 0x0;
    17a0:	18 18       	IF CC JUMP 0x17d0 <__vfprintf_r+0x11c>;
    17a2:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    17a4:	57 b0       	[P2 + 0x4] = R7;
    17a6:	38 e5 cf fe 	P0 = [FP + -0x4c4];
    17aa:	38 e4 da fe 	R0 = [FP + -0x498];
    17ae:	3b e4 db fe 	R3 = [FP + -0x494];
    17b2:	08 64       	R0 += 0x1;		/* (  1) */
    17b4:	fb 50       	R3 = R3 + R7;
    17b6:	08 09       	CC = R0 <= R1;
    17b8:	50 93       	[P2] = P0;
    17ba:	3b e6 db fe 	[FP + -0x494] = R3;
    17be:	38 e6 da fe 	[FP + -0x498] = R0;
    17c2:	29 11       	IF !CC JUMP 0x1a14 <__vfprintf_r+0x360>;
    17c4:	42 6c       	P2 += 0x8;		/* (  8) */
    17c6:	38 e4 cd fe 	R0 = [FP + -0x4cc];
    17ca:	38 50       	R0 = R0 + R7;
    17cc:	38 e6 cd fe 	[FP + -0x4cc] = R0;
    17d0:	68 99       	R0 = B[P5] (X);
    17d2:	00 0c       	CC = R0 == 0x0;
    17d4:	07 19       	IF CC JUMP 0x19e2 <__vfprintf_r+0x32e>;
    17d6:	0d 6c       	P5 += 0x1;		/* (  1) */
    17d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    17da:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    17dc:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    17e0:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    17e2:	3b e6 cb fe 	[FP + -0x4d4] = R3;
    17e6:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    17e8:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
    17ea:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
    17ec:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
    17ee:	4d 32       	P1 = P5;
    17f0:	00 00       	NOP;
    17f2:	4d 98       	R5 = B[P1++] (X);
    17f4:	05 32       	P0 = R5;
    17f6:	2b e1 58 00 	P3 = 0x58 (X);		/*		P3=0x58( 88) */
    17fa:	00 6f       	P0 += -0x20;		/* (-32) */
    17fc:	58 0a       	CC = P0 <= P3 (IU);
    17fe:	7b 1c       	IF CC JUMP 0x18f4 <__vfprintf_r+0x240> (BP);
    1800:	05 0c       	CC = R5 == 0x0;
    1802:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1806:	ee 18       	IF CC JUMP 0x19e2 <__vfprintf_r+0x32e>;
    1808:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    180a:	bd e6 70 fb 	B[FP + -0x490] = R5;
    180e:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    1812:	28 e1 70 fb 	P0 = -0x490 (X);		/*		P0=0xfffffb70(-1168) */
    1816:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    1818:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    181a:	38 5a       	P0 = P0 + FP;
    181c:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    1820:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    1824:	38 e7 c8 fe 	[FP + -0x4e0] = P0;
    1828:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
    182a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    182c:	39 e7 c7 fe 	[FP + -0x4e4] = P1;
    1830:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    1834:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    1836:	06 54       	R0 = R6 & R0;
    1838:	3b e4 ce fe 	R3 = [FP + -0x4c8];
    183c:	c3 50       	R3 = R3 + R0;
    183e:	38 e6 ca fe 	[FP + -0x4d8] = R0;
    1842:	20 e1 84 00 	R0 = 0x84 (X);		/*		R0=0x84(132) */
    1846:	06 54       	R0 = R6 & R0;
    1848:	00 0c       	CC = R0 == 0x0;
    184a:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    184e:	38 e6 c9 fe 	[FP + -0x4dc] = R0;
    1852:	02 18       	IF CC JUMP 0x1856 <__vfprintf_r+0x1a2>;
    1854:	bf 22       	JUMP.S 0x1dd2 <__vfprintf_r+0x71e>;
    1856:	3d e5 cb fe 	P5 = [FP + -0x4d4];
    185a:	38 e5 ce fe 	P0 = [FP + -0x4c8];
    185e:	05 44       	P5 -= P0;
    1860:	45 0d       	CC = P5 <= 0x0;
    1862:	02 14       	IF !CC JUMP 0x1866 <__vfprintf_r+0x1b2> (BP);
    1864:	b7 22       	JUMP.S 0x1dd2 <__vfprintf_r+0x71e>;
    1866:	81 68       	P1 = 0x10 (X);		/*		P1=0x10( 16) */
    1868:	4b e1 00 00 	P3.H = 0x0;		/* (  0)	P3=0x58 */
    186c:	4d 09       	CC = P5 <= P1;
    186e:	3b e4 db fe 	R3 = [FP + -0x494];
    1872:	3f e4 da fe 	R7 = [FP + -0x498];
    1876:	0b e1 4c 89 	P3.L = 0x894c;		/* (-30388)	P3=0x894c <_blanks.4059> */
    187a:	2e 18       	IF CC JUMP 0x18d6 <__vfprintf_r+0x222>;
    187c:	45 30       	R0 = P5;
    187e:	2e 32       	P5 = R6;
    1880:	30 30       	R6 = R0;
    1882:	06 20       	JUMP.S 0x188e <__vfprintf_r+0x1da>;
    1884:	86 67       	R6 += -0x10;		/* (-16) */
    1886:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1888:	06 09       	CC = R6 <= R0;
    188a:	42 6c       	P2 += 0x8;		/* (  8) */
    188c:	22 18       	IF CC JUMP 0x18d0 <__vfprintf_r+0x21c>;
    188e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1890:	50 b0       	[P2 + 0x4] = R0;
    1892:	0f 64       	R7 += 0x1;		/* (  1) */
    1894:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    1896:	83 64       	R3 += 0x10;		/* ( 16) */
    1898:	07 09       	CC = R7 <= R0;
    189a:	53 93       	[P2] = P3;
    189c:	3b e6 db fe 	[FP + -0x494] = R3;
    18a0:	3f e6 da fe 	[FP + -0x498] = R7;
    18a4:	f0 1f       	IF CC JUMP 0x1884 <__vfprintf_r+0x1d0> (BP);
    18a6:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    18aa:	38 5a       	P0 = P0 + FP;
    18ac:	44 30       	R0 = P4;
    18ae:	0c 30       	R1 = R4;
    18b0:	50 30       	R2 = P0;
    18b2:	00 e3 03 23 	CALL 0x5eb8 <___sprint_r>;
    18b6:	00 0c       	CC = R0 == 0x0;
    18b8:	a1 10       	IF !CC JUMP 0x19fa <__vfprintf_r+0x346>;
    18ba:	86 67       	R6 += -0x10;		/* (-16) */
    18bc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    18be:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    18c2:	06 09       	CC = R6 <= R0;
    18c4:	8f 5a       	P2 = FP + P1;
    18c6:	3b e4 db fe 	R3 = [FP + -0x494];
    18ca:	3f e4 da fe 	R7 = [FP + -0x498];
    18ce:	e0 17       	IF !CC JUMP 0x188e <__vfprintf_r+0x1da> (BP);
    18d0:	06 30       	R0 = R6;
    18d2:	75 30       	R6 = P5;
    18d4:	28 32       	P5 = R0;
    18d6:	0f 64       	R7 += 0x1;		/* (  1) */
    18d8:	4d 30       	R1 = P5;
    18da:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    18dc:	cb 50       	R3 = R3 + R1;
    18de:	17 09       	CC = R7 <= R2;
    18e0:	53 93       	[P2] = P3;
    18e2:	55 bc       	[P2 + 0x4] = P5;
    18e4:	3b e6 db fe 	[FP + -0x494] = R3;
    18e8:	3f e6 da fe 	[FP + -0x498] = R7;
    18ec:	02 1c       	IF CC JUMP 0x18f0 <__vfprintf_r+0x23c> (BP);
    18ee:	65 22       	JUMP.S 0x1db8 <__vfprintf_r+0x704>;
    18f0:	42 6c       	P2 += 0x8;		/* (  8) */
    18f2:	72 22       	JUMP.S 0x1dd6 <__vfprintf_r+0x722>;
    18f4:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x0 */
    18f8:	0d e1 e8 87 	P5.L = 0x87e8;		/* (-30744)	P5=0x87e8 */
    18fc:	05 5e       	P0 = P5 + (P0 << 0x2);
    18fe:	40 91       	P0 = [P0];
    1900:	50 00       	JUMP (P0);
    1902:	45 30       	R0 = P5;
    1904:	3b e4 cf fe 	R3 = [FP + -0x4c4];
    1908:	d8 53       	R7 = R0 - R3;
    190a:	4a 2f       	JUMP.S 0x179e <__vfprintf_r+0xea>;
    190c:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    190e:	71 2f       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1910:	38 af       	P0 = [FP + 0x30];
    1912:	3b a3       	R3 = [FP + 0x30];
    1914:	23 64       	R3 += 0x4;		/* (  4) */
    1916:	05 91       	R5 = [P0];
    1918:	85 0c       	CC = R5 < 0x0;
    191a:	3d e6 cb fe 	[FP + -0x4d4] = R5;
    191e:	cc 14       	IF !CC JUMP 0x1ab6 <__vfprintf_r+0x402> (BP);
    1920:	ad 43       	R5 = -R5;
    1922:	3d e6 cb fe 	[FP + -0x4d4] = R5;
    1926:	3b b3       	[FP + 0x30] = R3;
    1928:	16 4a       	BITSET (R6, 0x2);		/* bit  2 */
    192a:	63 2f       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    192c:	44 30       	R0 = P4;
    192e:	0c 30       	R1 = R4;
    1930:	00 e3 6e 0a 	CALL 0x2e0c <___swsetup_r>;
    1934:	00 0c       	CC = R0 == 0x0;
    1936:	66 10       	IF !CC JUMP 0x1a02 <__vfprintf_r+0x34e>;
    1938:	04 32       	P0 = R4;
    193a:	d1 60       	R1 = 0x1a (X);		/*		R1=0x1a( 26) */
    193c:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    193e:	80 a9       	R0 = W[P0 + 0xc] (X);
    1940:	48 54       	R1 = R0 & R1;
    1942:	89 42       	R1 = R1.L (X);
    1944:	11 08       	CC = R1 == R2;
    1946:	f0 16       	IF !CC JUMP 0x1726 <__vfprintf_r+0x72> (BP);
    1948:	04 32       	P0 = R4;
    194a:	c1 a9       	R1 = W[P0 + 0xe] (X);
    194c:	8a 42       	R2 = R1.L (X);
    194e:	82 0c       	CC = R2 < 0x0;
    1950:	eb 1e       	IF CC JUMP 0x1726 <__vfprintf_r+0x72> (BP);
    1952:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
    1954:	78 e6 d2 fd 	W[FP + -0x45c] = R0;
    1958:	00 e4 19 00 	R0 = [P0 + 0x64];
    195c:	38 e6 ff fe 	[FP + -0x404] = R0;
    1960:	39 af       	P1 = [FP + 0x30];
    1962:	c0 a1       	R0 = [P0 + 0x1c];
    1964:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1968:	97 5a       	P2 = FP + P2;
    196a:	38 e6 ed fe 	[FP + -0x44c] = R0;
    196e:	40 a2       	R0 = [P0 + 0x24];
    1970:	38 e6 ef fe 	[FP + -0x444] = R0;
    1974:	3a e7 e6 fe 	[FP + -0x468] = P2;
    1978:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
    197c:	3a e7 ea fe 	[FP + -0x458] = P2;
    1980:	2a e1 98 fb 	P2 = -0x468 (X);		/*		P2=0xfffffb98(-1128) */
    1984:	38 e6 e8 fe 	[FP + -0x460] = R0;
    1988:	38 e6 eb fe 	[FP + -0x454] = R0;
    198c:	ba 5a       	P2 = P2 + FP;
    198e:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0xc] = P1 || NOP;
    1992:	f1 bc 00 00 
    1996:	79 e6 d3 fd 	W[FP + -0x45a] = R1;
    199a:	38 e6 ec fe 	[FP + -0x450] = R0;
    199e:	4a 30       	R1 = P2;
    19a0:	44 30       	R0 = P4;
    19a2:	17 30       	R2 = R7;
    19a4:	ff e3 88 fe 	CALL 0x16b4 <__vfprintf_r>;
    19a8:	80 0c       	CC = R0 < 0x0;
    19aa:	38 e6 cd fe 	[FP + -0x4cc] = R0;
    19ae:	0f 18       	IF CC JUMP 0x19cc <__vfprintf_r+0x318>;
    19b0:	2b e1 98 fb 	P3 = -0x468 (X);		/*		P3=0xfffffb98(-1128) */
    19b4:	fb 5a       	P3 = P3 + FP;
    19b6:	44 30       	R0 = P4;
    19b8:	4b 30       	R1 = P3;
    19ba:	00 e3 65 14 	CALL 0x4284 <__fflush_r>;
    19be:	3d e5 cd fe 	P5 = [FP + -0x4cc];
    19c2:	00 0c       	CC = R0 == 0x0;
    19c4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    19c6:	a8 06       	IF !CC P5 = R0;
    19c8:	3d e7 cd fe 	[FP + -0x4cc] = P5;
    19cc:	78 e5 d2 fd 	R0 = W[FP + -0x45c] (X);
    19d0:	30 48       	CC = !BITTST (R0, 0x6);		/* bit  6 */
    19d2:	1b 18       	IF CC JUMP 0x1a08 <__vfprintf_r+0x354>;
    19d4:	00 00       	NOP;
    19d6:	00 00       	NOP;
    19d8:	04 32       	P0 = R4;
    19da:	80 a9       	R0 = W[P0 + 0xc] (X);
    19dc:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
    19de:	80 b5       	W[P0 + 0xc] = R0;
    19e0:	14 20       	JUMP.S 0x1a08 <__vfprintf_r+0x354>;
    19e2:	3d e4 db fe 	R5 = [FP + -0x494];
    19e6:	05 0c       	CC = R5 == 0x0;
    19e8:	09 1c       	IF CC JUMP 0x19fa <__vfprintf_r+0x346> (BP);
    19ea:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    19ee:	5f 30       	R3 = FP;
    19f0:	44 30       	R0 = P4;
    19f2:	0c 30       	R1 = R4;
    19f4:	93 50       	R2 = R3 + R2;
    19f6:	00 e3 61 22 	CALL 0x5eb8 <___sprint_r>;
    19fa:	04 32       	P0 = R4;
    19fc:	80 a9       	R0 = W[P0 + 0xc] (X);
    19fe:	30 48       	CC = !BITTST (R0, 0x6);		/* bit  6 */
    1a00:	04 1c       	IF CC JUMP 0x1a08 <__vfprintf_r+0x354> (BP);
    1a02:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    1a04:	38 e6 cd fe 	[FP + -0x4cc] = R0;
    1a08:	38 e4 cd fe 	R0 = [FP + -0x4cc];
    1a0c:	01 e8 00 00 	UNLINK;
    1a10:	a3 05       	(R7:4, P5:3) = [SP++];
    1a12:	10 00       	RTS;
    1a14:	5f 30       	R3 = FP;
    1a16:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    1a1a:	44 30       	R0 = P4;
    1a1c:	0c 30       	R1 = R4;
    1a1e:	93 50       	R2 = R3 + R2;
    1a20:	00 e3 4c 22 	CALL 0x5eb8 <___sprint_r>;
    1a24:	00 0c       	CC = R0 == 0x0;
    1a26:	ea 13       	IF !CC JUMP 0x19fa <__vfprintf_r+0x346>;
    1a28:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1a2c:	97 5a       	P2 = FP + P2;
    1a2e:	cc 2e       	JUMP.S 0x17c6 <__vfprintf_r+0x112>;
    1a30:	44 30       	R0 = P4;
    1a32:	00 e3 d9 14 	CALL 0x43e4 <___sinit>;
    1a36:	5c 2e       	JUMP.S 0x16ee <__vfprintf_r+0x3a>;
    1a38:	3d e5 cf fe 	P5 = [FP + -0x4c4];
    1a3c:	ca 2e       	JUMP.S 0x17d0 <__vfprintf_r+0x11c>;
    1a3e:	38 af       	P0 = [FP + 0x30];
    1a40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1a42:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    1a46:	3b af       	P3 = [FP + 0x30];
    1a48:	40 91       	P0 = [P0];
    1a4a:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1a4e:	23 6c       	P3 += 0x4;		/* (  4) */
    1a50:	40 0c       	CC = P0 == 0x0;
    1a52:	38 e7 c8 fe 	[FP + -0x4e0] = P0;
    1a56:	03 14       	IF !CC JUMP 0x1a5c <__vfprintf_r+0x3a8> (BP);
    1a58:	00 e2 35 08 	JUMP.L 0x2ac2 <__vfprintf_r+0x140e>;
    1a5c:	87 0c       	CC = R7 < 0x0;
    1a5e:	38 e4 c8 fe 	R0 = [FP + -0x4e0];
    1a62:	02 14       	IF !CC JUMP 0x1a66 <__vfprintf_r+0x3b2> (BP);
    1a64:	cb 27       	JUMP.S 0x29fa <__vfprintf_r+0x1346>;
    1a66:	17 30       	R2 = R7;
    1a68:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1a6a:	3a e7 ba fe 	[FP + -0x518] = P2;
    1a6e:	00 e3 f7 1a 	CALL 0x505c <_memchr>;
    1a72:	00 0c       	CC = R0 == 0x0;
    1a74:	3a e5 ba fe 	P2 = [FP + -0x518];
    1a78:	03 14       	IF !CC JUMP 0x1a7e <__vfprintf_r+0x3ca> (BP);
    1a7a:	00 e2 c3 08 	JUMP.L 0x2c00 <__vfprintf_r+0x154c>;
    1a7e:	3b e4 c8 fe 	R3 = [FP + -0x4e0];
    1a82:	18 52       	R0 = R0 - R3;
    1a84:	38 09       	CC = R0 <= R7;
    1a86:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    1a8a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1a8c:	02 10       	IF !CC JUMP 0x1a90 <__vfprintf_r+0x3dc>;
    1a8e:	42 27       	JUMP.S 0x2912 <__vfprintf_r+0x125e>;
    1a90:	07 cc 38 00 	R0 = MAX (R7, R0) || [FP + 0x30] = P3 || NOP;
    1a94:	3b bf 00 00 
    1a98:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    1a9a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    1a9c:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    1aa0:	3f e6 cc fe 	[FP + -0x4d0] = R7;
    1aa4:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    1aa8:	38 e7 c7 fe 	[FP + -0x4e4] = P0;
    1aac:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    1ab0:	47 20       	JUMP.S 0x1b3e <__vfprintf_r+0x48a>;
    1ab2:	06 4a       	BITSET (R6, 0x0);		/* bit  0 */
    1ab4:	9e 2e       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1ab6:	3b b3       	[FP + 0x30] = R3;
    1ab8:	9c 2e       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1aba:	3d af       	P5 = [FP + 0x30];
    1abc:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
    1abe:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x0(  0) */
    1ac2:	14 e1 c8 87 	M0.L = 0x87c8;		/* (-30776)	M0=0x87c8(34760) */
    1ac6:	28 91       	R0 = [P5];
    1ac8:	b9 e6 44 fb 	B[FP + -0x4bc] = R1;
    1acc:	21 e1 78 00 	R1 = 0x78 (X);		/*		R1=0x78(120) */
    1ad0:	b9 e6 45 fb 	B[FP + -0x4bb] = R1;
    1ad4:	25 6c       	P5 += 0x4;		/* (  4) */
    1ad6:	8c 30       	R1 = M0;
    1ad8:	39 e6 bd fe 	[FP + -0x50c] = R1;
    1adc:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1ae0:	0e 4a       	BITSET (R6, 0x1);		/* bit  1 */
    1ae2:	3d bf       	[FP + 0x30] = P5;
    1ae4:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    1ae6:	25 e1 78 00 	R5 = 0x78 (X);		/*		R5=0x78(120) */
    1aea:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    1aec:	ba e6 43 fb 	B[FP + -0x4bd] = R2;
    1af0:	16 30       	R2 = R6;
    1af2:	87 0c       	CC = R7 < 0x0;
    1af4:	3a 4c       	BITCLR (R2, 0x7);		/* bit  7 */
    1af6:	32 06       	IF !CC R6 = R2;
    1af8:	00 0c       	CC = R0 == 0x0;
    1afa:	49 43       	R1 = R1.B (Z);
    1afc:	ce 14       	IF !CC JUMP 0x1c98 <__vfprintf_r+0x5e4> (BP);
    1afe:	07 0c       	CC = R7 == 0x0;
    1b00:	cc 14       	IF !CC JUMP 0x1c98 <__vfprintf_r+0x5e4> (BP);
    1b02:	01 0c       	CC = R1 == 0x0;
    1b04:	02 18       	IF CC JUMP 0x1b08 <__vfprintf_r+0x454>;
    1b06:	08 24       	JUMP.S 0x2316 <__vfprintf_r+0xc62>;
    1b08:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    1b0a:	02 10       	IF !CC JUMP 0x1b0e <__vfprintf_r+0x45a>;
    1b0c:	05 24       	JUMP.S 0x2316 <__vfprintf_r+0xc62>;
    1b0e:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    1b10:	38 e5 c5 fe 	P0 = [FP + -0x4ec];
    1b14:	3b e4 bc fe 	R3 = [FP + -0x510];
    1b18:	b8 e6 97 fb 	B[FP + -0x469] = R0;
    1b1c:	3b e6 cc fe 	[FP + -0x4d0] = R3;
    1b20:	38 e7 c8 fe 	[FP + -0x4e0] = P0;
    1b24:	3b e4 cc fe 	R3 = [FP + -0x4d0];
    1b28:	07 c4 1f 06 	R3 = MAX (R3, R7);
    1b2c:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    1b30:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    1b32:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    1b36:	3f e6 c7 fe 	[FP + -0x4e4] = R7;
    1b3a:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    1b3e:	00 43       	R0 = R0.B (X);
    1b40:	00 0c       	CC = R0 == 0x0;
    1b42:	79 1a       	IF CC JUMP 0x1834 <__vfprintf_r+0x180>;
    1b44:	3b e4 ce fe 	R3 = [FP + -0x4c8];
    1b48:	0b 64       	R3 += 0x1;		/* (  1) */
    1b4a:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    1b4e:	73 2e       	JUMP.S 0x1834 <__vfprintf_r+0x180>;
    1b50:	4d 98       	R5 = B[P1++] (X);
    1b52:	53 61       	R3 = 0x2a (X);		/*		R3=0x2a( 42) */
    1b54:	1d 08       	CC = R5 == R3;
    1b56:	03 14       	IF !CC JUMP 0x1b5c <__vfprintf_r+0x4a8> (BP);
    1b58:	00 e2 1c 09 	JUMP.L 0x2d90 <__vfprintf_r+0x16dc>;
    1b5c:	05 32       	P0 = R5;
    1b5e:	4b 68       	P3 = 0x9 (X);		/*		P3=0x9(  9) */
    1b60:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    1b62:	80 6e       	P0 += -0x30;		/* (-48) */
    1b64:	58 0a       	CC = P0 <= P3 (IU);
    1b66:	47 12       	IF !CC JUMP 0x17f4 <__vfprintf_r+0x140>;
    1b68:	59 30       	R3 = P1;
    1b6a:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
    1b6c:	6d 5f       	P5 = P5 + (P5 << 0x2);
    1b6e:	68 5d       	P5 = P0 + (P5 << 0x1);
    1b70:	03 32       	P0 = R3;
    1b72:	4b 68       	P3 = 0x9 (X);		/*		P3=0x9(  9) */
    1b74:	0b 64       	R3 += 0x1;		/* (  1) */
    1b76:	0b 32       	P1 = R3;
    1b78:	45 98       	R5 = B[P0++] (X);
    1b7a:	05 32       	P0 = R5;
    1b7c:	80 6e       	P0 += -0x30;		/* (-48) */
    1b7e:	58 0a       	CC = P0 <= P3 (IU);
    1b80:	f6 1f       	IF CC JUMP 0x1b6c <__vfprintf_r+0x4b8> (BP);
    1b82:	5d 30       	R3 = P5;
    1b84:	07 c4 19 0e 	R7 = MAX (R3, R1);
    1b88:	36 2e       	JUMP.S 0x17f4 <__vfprintf_r+0x140>;
    1b8a:	1e 4a       	BITSET (R6, 0x3);		/* bit  3 */
    1b8c:	32 2e       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1b8e:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1b92:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    1b94:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1b96:	02 10       	IF !CC JUMP 0x1b9a <__vfprintf_r+0x4e6>;
    1b98:	64 24       	JUMP.S 0x2460 <__vfprintf_r+0xdac>;
    1b9a:	38 af       	P0 = [FP + 0x30];
    1b9c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1b9e:	00 91       	R0 = [P0];
    1ba0:	20 6c       	P0 += 0x4;		/* (  4) */
    1ba2:	38 bf       	[FP + 0x30] = P0;
    1ba4:	a3 2f       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    1ba6:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1baa:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    1bac:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1bae:	02 10       	IF !CC JUMP 0x1bb2 <__vfprintf_r+0x4fe>;
    1bb0:	50 24       	JUMP.S 0x2450 <__vfprintf_r+0xd9c>;
    1bb2:	38 af       	P0 = [FP + 0x30];
    1bb4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    1bb6:	00 91       	R0 = [P0];
    1bb8:	20 6c       	P0 += 0x4;		/* (  4) */
    1bba:	38 bf       	[FP + 0x30] = P0;
    1bbc:	97 2f       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    1bbe:	bb e5 43 fb 	R3 = B[FP + -0x4bd] (X);
    1bc2:	03 0c       	CC = R3 == 0x0;
    1bc4:	16 16       	IF !CC JUMP 0x17f0 <__vfprintf_r+0x13c> (BP);
    1bc6:	ba e6 43 fb 	B[FP + -0x4bd] = R2;
    1bca:	13 2e       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1bcc:	38 af       	P0 = [FP + 0x30];
    1bce:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1bd2:	40 99       	R0 = B[P0] (X);
    1bd4:	b8 e6 70 fb 	B[FP + -0x490] = R0;
    1bd8:	20 6c       	P0 += 0x4;		/* (  4) */
    1bda:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1bdc:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    1be0:	38 bf       	[FP + 0x30] = P0;
    1be2:	18 2e       	JUMP.S 0x1812 <__vfprintf_r+0x15e>;
    1be4:	36 4a       	BITSET (R6, 0x6);		/* bit  6 */
    1be6:	05 2e       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1be8:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x87c8(34760) */
    1bec:	14 e1 c8 87 	M0.L = 0x87c8;		/* (-30776)	M0=0x87c8(34760) */
    1bf0:	84 30       	R0 = M0;
    1bf2:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1bf4:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1bf8:	38 e6 bd fe 	[FP + -0x50c] = R0;
    1bfc:	2c 1c       	IF CC JUMP 0x1c54 <__vfprintf_r+0x5a0> (BP);
    1bfe:	38 af       	P0 = [FP + 0x30];
    1c00:	00 91       	R0 = [P0];
    1c02:	20 6c       	P0 += 0x4;		/* (  4) */
    1c04:	38 bf       	[FP + 0x30] = P0;
    1c06:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    1c08:	02 10       	IF !CC JUMP 0x1c0c <__vfprintf_r+0x558>;
    1c0a:	8e 23       	JUMP.S 0x2326 <__vfprintf_r+0xc72>;
    1c0c:	00 0c       	CC = R0 == 0x0;
    1c0e:	02 10       	IF !CC JUMP 0x1c12 <__vfprintf_r+0x55e>;
    1c10:	8b 23       	JUMP.S 0x2326 <__vfprintf_r+0xc72>;
    1c12:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
    1c14:	b9 e6 44 fb 	B[FP + -0x4bc] = R1;
    1c18:	bd e6 45 fb 	B[FP + -0x4bb] = R5;
    1c1c:	0e 4a       	BITSET (R6, 0x1);		/* bit  1 */
    1c1e:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    1c20:	65 2f       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    1c22:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1c24:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1c28:	c0 14       	IF !CC JUMP 0x1da8 <__vfprintf_r+0x6f4> (BP);
    1c2a:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    1c2c:	be 1c       	IF CC JUMP 0x1da8 <__vfprintf_r+0x6f4> (BP);
    1c2e:	38 af       	P0 = [FP + 0x30];
    1c30:	78 e5 9a fd 	R0 = W[FP + -0x4cc] (X);
    1c34:	41 91       	P1 = [P0];
    1c36:	20 6c       	P0 += 0x4;		/* (  4) */
    1c38:	38 bf       	[FP + 0x30] = P0;
    1c3a:	08 97       	W[P1] = R0;
    1c3c:	99 2d       	JUMP.S 0x176e <__vfprintf_r+0xba>;
    1c3e:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x87c8(34760) */
    1c42:	14 e1 b4 87 	M0.L = 0x87b4;		/* (-30796)	M0=0x87b4(34740) */
    1c46:	84 30       	R0 = M0;
    1c48:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1c4a:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1c4e:	38 e6 bd fe 	[FP + -0x50c] = R0;
    1c52:	d6 17       	IF !CC JUMP 0x1bfe <__vfprintf_r+0x54a> (BP);
    1c54:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    1c56:	02 10       	IF !CC JUMP 0x1c5a <__vfprintf_r+0x5a6>;
    1c58:	d1 25       	JUMP.S 0x27fa <__vfprintf_r+0x1146>;
    1c5a:	39 af       	P1 = [FP + 0x30];
    1c5c:	08 95       	R0 = W[P1] (Z);
    1c5e:	21 6c       	P1 += 0x4;		/* (  4) */
    1c60:	39 bf       	[FP + 0x30] = P1;
    1c62:	d2 2f       	JUMP.S 0x1c06 <__vfprintf_r+0x552>;
    1c64:	3e 4a       	BITSET (R6, 0x7);		/* bit  7 */
    1c66:	c5 2d       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1c68:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    1c6c:	c2 2d       	JUMP.S 0x17f0 <__vfprintf_r+0x13c>;
    1c6e:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1c72:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    1c74:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    1c76:	02 10       	IF !CC JUMP 0x1c7a <__vfprintf_r+0x5c6>;
    1c78:	e5 23       	JUMP.S 0x2442 <__vfprintf_r+0xd8e>;
    1c7a:	39 af       	P1 = [FP + 0x30];
    1c7c:	08 91       	R0 = [P1];
    1c7e:	21 6c       	P1 += 0x4;		/* (  4) */
    1c80:	39 bf       	[FP + 0x30] = P1;
    1c82:	80 0c       	CC = R0 < 0x0;
    1c84:	02 14       	IF !CC JUMP 0x1c88 <__vfprintf_r+0x5d4> (BP);
    1c86:	e4 24       	JUMP.S 0x264e <__vfprintf_r+0xf9a>;
    1c88:	16 30       	R2 = R6;
    1c8a:	87 0c       	CC = R7 < 0x0;
    1c8c:	3a 4c       	BITCLR (R2, 0x7);		/* bit  7 */
    1c8e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    1c90:	32 06       	IF !CC R6 = R2;
    1c92:	00 0c       	CC = R0 == 0x0;
    1c94:	49 43       	R1 = R1.B (Z);
    1c96:	34 1f       	IF CC JUMP 0x1afe <__vfprintf_r+0x44a> (BP);
    1c98:	09 0c       	CC = R1 == 0x1;
    1c9a:	02 14       	IF !CC JUMP 0x1c9e <__vfprintf_r+0x5ea> (BP);
    1c9c:	38 23       	JUMP.S 0x230c <__vfprintf_r+0xc58>;
    1c9e:	11 0c       	CC = R1 == 0x2;
    1ca0:	39 e4 c5 fe 	R1 = [FP + -0x4ec];
    1ca4:	02 14       	IF !CC JUMP 0x1ca8 <__vfprintf_r+0x5f4> (BP);
    1ca6:	6d 22       	JUMP.S 0x2180 <__vfprintf_r+0xacc>;
    1ca8:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    1caa:	09 32       	P1 = R1;
    1cac:	98 54       	R2 = R0 & R3;
    1cae:	18 4e       	R0 >>= 0x3;
    1cb0:	82 65       	R2 += 0x30;		/* ( 48) */
    1cb2:	00 0c       	CC = R0 == 0x0;
    1cb4:	0a 9b       	B[P1] = R2;
    1cb6:	f9 67       	R1 += -0x1;		/* ( -1) */
    1cb8:	f9 17       	IF !CC JUMP 0x1caa <__vfprintf_r+0x5f6> (BP);
    1cba:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    1cbc:	39 e7 c8 fe 	[FP + -0x4e0] = P1;
    1cc0:	02 10       	IF !CC JUMP 0x1cc4 <__vfprintf_r+0x610>;
    1cc2:	6f 22       	JUMP.S 0x21a0 <__vfprintf_r+0xaec>;
    1cc4:	12 43       	R2 = R2.B (X);
    1cc6:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    1cc8:	02 08       	CC = R2 == R0;
    1cca:	02 14       	IF !CC JUMP 0x1cce <__vfprintf_r+0x61a> (BP);
    1ccc:	6c 26       	JUMP.S 0x29a4 <__vfprintf_r+0x12f0>;
    1cce:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    1cd0:	88 e6 ff ff 	B[P1 + -0x1] = R0;
    1cd4:	39 e6 c8 fe 	[FP + -0x4e0] = R1;
    1cd8:	38 e4 c4 fe 	R0 = [FP + -0x4f0];
    1cdc:	08 52       	R0 = R0 - R1;
    1cde:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    1ce2:	21 2f       	JUMP.S 0x1b24 <__vfprintf_r+0x470>;
    1ce4:	1e 48       	CC = !BITTST (R6, 0x3);		/* bit  3 */
    1ce6:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1cea:	02 10       	IF !CC JUMP 0x1cee <__vfprintf_r+0x63a>;
    1cec:	78 25       	JUMP.S 0x27dc <__vfprintf_r+0x1128>;
    1cee:	38 af       	P0 = [FP + 0x30];
    1cf0:	43 ac       	P3 = [P0 + 0x4];
    1cf2:	03 91       	R3 = [P0];
    1cf4:	40 6c       	P0 += 0x8;		/* (  8) */
    1cf6:	3b e6 bf fe 	[FP + -0x504] = R3;
    1cfa:	3b e7 c0 fe 	[FP + -0x500] = P3;
    1cfe:	38 bf       	[FP + 0x30] = P0;
    1d00:	03 30       	R0 = R3;
    1d02:	4b 30       	R1 = P3;
    1d04:	3b e6 bb fe 	[FP + -0x514] = R3;
    1d08:	3a e7 ba fe 	[FP + -0x518] = P2;
    1d0c:	00 e3 74 1f 	CALL 0x5bf4 <___fpclassifyd>;
    1d10:	08 0c       	CC = R0 == 0x1;
    1d12:	3b e4 bb fe 	R3 = [FP + -0x514];
    1d16:	3a e5 ba fe 	P2 = [FP + -0x518];
    1d1a:	02 18       	IF CC JUMP 0x1d1e <__vfprintf_r+0x66a>;
    1d1c:	9f 24       	JUMP.S 0x265a <__vfprintf_r+0xfa6>;
    1d1e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1d20:	f0 b0       	[SP + 0xc] = R0;
    1d22:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    1d24:	03 30       	R0 = R3;
    1d26:	4b 30       	R1 = P3;
    1d28:	00 e3 02 32 	CALL 0x812c <___ltdf2>;
    1d2c:	80 0c       	CC = R0 < 0x0;
    1d2e:	3a e5 ba fe 	P2 = [FP + -0x518];
    1d32:	02 14       	IF !CC JUMP 0x1d36 <__vfprintf_r+0x682> (BP);
    1d34:	e6 26       	JUMP.S 0x2b00 <__vfprintf_r+0x144c>;
    1d36:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    1d3a:	21 e1 47 00 	R1 = 0x47 (X);		/*		R1=0x47( 71) */
    1d3e:	0d 09       	CC = R5 <= R1;
    1d40:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x0 */
    1d44:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x47( 71) */
    1d48:	01 e1 a4 87 	R1.L = 0x87a4;		/* (-30812)	R1=0x87a4(34724) */
    1d4c:	0d e1 a8 87 	P5.L = 0x87a8;		/* (-30808)	P5=0x87a8 */
    1d50:	a9 07       	IF CC P5 = R1;
    1d52:	3d e7 c8 fe 	[FP + -0x4e0] = P5;
    1d56:	3e 4c       	BITCLR (R6, 0x7);		/* bit  7 */
    1d58:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    1d5a:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    1d5e:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    1d60:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
    1d62:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    1d64:	38 e7 cc fe 	[FP + -0x4d0] = P0;
    1d68:	39 e7 c7 fe 	[FP + -0x4e4] = P1;
    1d6c:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    1d70:	e7 2e       	JUMP.S 0x1b3e <__vfprintf_r+0x48a>;
    1d72:	05 32       	P0 = R5;
    1d74:	59 30       	R3 = P1;
    1d76:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    1d78:	80 6e       	P0 += -0x30;		/* (-48) */
    1d7a:	db 5e       	P3 = P3 + (P3 << 0x2);
    1d7c:	d8 5c       	P3 = P0 + (P3 << 0x1);
    1d7e:	03 32       	P0 = R3;
    1d80:	4d 68       	P5 = 0x9 (X);		/*		P5=0x9(  9) */
    1d82:	0b 64       	R3 += 0x1;		/* (  1) */
    1d84:	0b 32       	P1 = R3;
    1d86:	45 98       	R5 = B[P0++] (X);
    1d88:	05 32       	P0 = R5;
    1d8a:	80 6e       	P0 += -0x30;		/* (-48) */
    1d8c:	68 0a       	CC = P0 <= P5 (IU);
    1d8e:	f6 1f       	IF CC JUMP 0x1d7a <__vfprintf_r+0x6c6> (BP);
    1d90:	3b e7 cb fe 	[FP + -0x4d4] = P3;
    1d94:	30 2d       	JUMP.S 0x17f4 <__vfprintf_r+0x140>;
    1d96:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1d9a:	09 2f       	JUMP.S 0x1bac <__vfprintf_r+0x4f8>;
    1d9c:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1da0:	fa 2e       	JUMP.S 0x1b94 <__vfprintf_r+0x4e0>;
    1da2:	39 e7 cf fe 	[FP + -0x4c4] = P1;
    1da6:	67 2f       	JUMP.S 0x1c74 <__vfprintf_r+0x5c0>;
    1da8:	3b af       	P3 = [FP + 0x30];
    1daa:	38 e4 cd fe 	R0 = [FP + -0x4cc];
    1dae:	59 91       	P1 = [P3];
    1db0:	23 6c       	P3 += 0x4;		/* (  4) */
    1db2:	08 93       	[P1] = R0;
    1db4:	3b bf       	[FP + 0x30] = P3;
    1db6:	dc 2c       	JUMP.S 0x176e <__vfprintf_r+0xba>;
    1db8:	5f 30       	R3 = FP;
    1dba:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    1dbe:	44 30       	R0 = P4;
    1dc0:	0c 30       	R1 = R4;
    1dc2:	93 50       	R2 = R3 + R2;
    1dc4:	00 e3 7a 20 	CALL 0x5eb8 <___sprint_r>;
    1dc8:	00 0c       	CC = R0 == 0x0;
    1dca:	18 12       	IF !CC JUMP 0x19fa <__vfprintf_r+0x346>;
    1dcc:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1dd0:	97 5a       	P2 = FP + P2;
    1dd2:	3b e4 db fe 	R3 = [FP + -0x494];
    1dd6:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    1dda:	00 0c       	CC = R0 == 0x0;
    1ddc:	14 1c       	IF CC JUMP 0x1e04 <__vfprintf_r+0x750> (BP);
    1dde:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    1de0:	50 b0       	[P2 + 0x4] = R0;
    1de2:	38 e4 da fe 	R0 = [FP + -0x498];
    1de6:	08 64       	R0 += 0x1;		/* (  1) */
    1de8:	29 e1 43 fb 	P1 = -0x4bd (X);		/*		P1=0xfffffb43(-1213) */
    1dec:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1dee:	4f 5a       	P1 = FP + P1;
    1df0:	0b 64       	R3 += 0x1;		/* (  1) */
    1df2:	08 09       	CC = R0 <= R1;
    1df4:	51 93       	[P2] = P1;
    1df6:	3b e6 db fe 	[FP + -0x494] = R3;
    1dfa:	38 e6 da fe 	[FP + -0x498] = R0;
    1dfe:	02 1c       	IF CC JUMP 0x1e02 <__vfprintf_r+0x74e> (BP);
    1e00:	64 22       	JUMP.S 0x22c8 <__vfprintf_r+0xc14>;
    1e02:	42 6c       	P2 += 0x8;		/* (  8) */
    1e04:	38 e4 ca fe 	R0 = [FP + -0x4d8];
    1e08:	00 0c       	CC = R0 == 0x0;
    1e0a:	14 1c       	IF CC JUMP 0x1e32 <__vfprintf_r+0x77e> (BP);
    1e0c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    1e0e:	50 b0       	[P2 + 0x4] = R0;
    1e10:	38 e4 da fe 	R0 = [FP + -0x498];
    1e14:	08 64       	R0 += 0x1;		/* (  1) */
    1e16:	29 e1 44 fb 	P1 = -0x4bc (X);		/*		P1=0xfffffb44(-1212) */
    1e1a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1e1c:	4f 5a       	P1 = FP + P1;
    1e1e:	13 64       	R3 += 0x2;		/* (  2) */
    1e20:	08 09       	CC = R0 <= R1;
    1e22:	51 93       	[P2] = P1;
    1e24:	3b e6 db fe 	[FP + -0x494] = R3;
    1e28:	38 e6 da fe 	[FP + -0x498] = R0;
    1e2c:	02 1c       	IF CC JUMP 0x1e30 <__vfprintf_r+0x77c> (BP);
    1e2e:	5e 22       	JUMP.S 0x22ea <__vfprintf_r+0xc36>;
    1e30:	42 6c       	P2 += 0x8;		/* (  8) */
    1e32:	21 e1 80 00 	R1 = 0x80 (X);		/*		R1=0x80(128) */
    1e36:	38 e4 c9 fe 	R0 = [FP + -0x4dc];
    1e3a:	08 08       	CC = R0 == R1;
    1e3c:	55 19       	IF CC JUMP 0x20e6 <__vfprintf_r+0xa32>;
    1e3e:	3b e5 c7 fe 	P3 = [FP + -0x4e4];
    1e42:	38 e5 cc fe 	P0 = [FP + -0x4d0];
    1e46:	03 44       	P3 -= P0;
    1e48:	43 0d       	CC = P3 <= 0x0;
    1e4a:	3f 18       	IF CC JUMP 0x1ec8 <__vfprintf_r+0x814>;
    1e4c:	81 68       	P1 = 0x10 (X);		/*		P1=0x10( 16) */
    1e4e:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9 */
    1e52:	4b 09       	CC = P3 <= P1;
    1e54:	3f e4 da fe 	R7 = [FP + -0x498];
    1e58:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    1e5c:	07 14       	IF !CC JUMP 0x1e6a <__vfprintf_r+0x7b6> (BP);
    1e5e:	28 20       	JUMP.S 0x1eae <__vfprintf_r+0x7fa>;
    1e60:	83 6f       	P3 += -0x10;		/* (-16) */
    1e62:	80 68       	P0 = 0x10 (X);		/*		P0=0x10( 16) */
    1e64:	43 09       	CC = P3 <= P0;
    1e66:	42 6c       	P2 += 0x8;		/* (  8) */
    1e68:	23 18       	IF CC JUMP 0x1eae <__vfprintf_r+0x7fa>;
    1e6a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1e6c:	50 b0       	[P2 + 0x4] = R0;
    1e6e:	0f 64       	R7 += 0x1;		/* (  1) */
    1e70:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    1e72:	83 64       	R3 += 0x10;		/* ( 16) */
    1e74:	07 09       	CC = R7 <= R0;
    1e76:	55 93       	[P2] = P5;
    1e78:	3b e6 db fe 	[FP + -0x494] = R3;
    1e7c:	3f e6 da fe 	[FP + -0x498] = R7;
    1e80:	f0 1f       	IF CC JUMP 0x1e60 <__vfprintf_r+0x7ac> (BP);
    1e82:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    1e86:	38 5a       	P0 = P0 + FP;
    1e88:	44 30       	R0 = P4;
    1e8a:	0c 30       	R1 = R4;
    1e8c:	50 30       	R2 = P0;
    1e8e:	00 e3 15 20 	CALL 0x5eb8 <___sprint_r>;
    1e92:	00 0c       	CC = R0 == 0x0;
    1e94:	02 1c       	IF CC JUMP 0x1e98 <__vfprintf_r+0x7e4> (BP);
    1e96:	b2 2d       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    1e98:	83 6f       	P3 += -0x10;		/* (-16) */
    1e9a:	80 68       	P0 = 0x10 (X);		/*		P0=0x10( 16) */
    1e9c:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    1ea0:	43 09       	CC = P3 <= P0;
    1ea2:	8f 5a       	P2 = FP + P1;
    1ea4:	3b e4 db fe 	R3 = [FP + -0x494];
    1ea8:	3f e4 da fe 	R7 = [FP + -0x498];
    1eac:	df 17       	IF !CC JUMP 0x1e6a <__vfprintf_r+0x7b6> (BP);
    1eae:	0f 64       	R7 += 0x1;		/* (  1) */
    1eb0:	43 30       	R0 = P3;
    1eb2:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1eb4:	c3 50       	R3 = R3 + R0;
    1eb6:	0f 09       	CC = R7 <= R1;
    1eb8:	55 93       	[P2] = P5;
    1eba:	53 bc       	[P2 + 0x4] = P3;
    1ebc:	3b e6 db fe 	[FP + -0x494] = R3;
    1ec0:	3f e6 da fe 	[FP + -0x498] = R7;
    1ec4:	f1 11       	IF !CC JUMP 0x22a6 <__vfprintf_r+0xbf2>;
    1ec6:	42 6c       	P2 += 0x8;		/* (  8) */
    1ec8:	46 48       	CC = !BITTST (R6, 0x8);		/* bit  8 */
    1eca:	95 14       	IF !CC JUMP 0x1ff4 <__vfprintf_r+0x940> (BP);
    1ecc:	38 e4 cc fe 	R0 = [FP + -0x4d0];
    1ed0:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    1ed4:	50 b0       	[P2 + 0x4] = R0;
    1ed6:	c3 50       	R3 = R3 + R0;
    1ed8:	38 e4 da fe 	R0 = [FP + -0x498];
    1edc:	08 64       	R0 += 0x1;		/* (  1) */
    1ede:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1ee0:	08 09       	CC = R0 <= R1;
    1ee2:	50 93       	[P2] = P0;
    1ee4:	3b e6 db fe 	[FP + -0x494] = R3;
    1ee8:	38 e6 da fe 	[FP + -0x498] = R0;
    1eec:	73 10       	IF !CC JUMP 0x1fd2 <__vfprintf_r+0x91e>;
    1eee:	42 6c       	P2 += 0x8;		/* (  8) */
    1ef0:	16 48       	CC = !BITTST (R6, 0x2);		/* bit  2 */
    1ef2:	51 1c       	IF CC JUMP 0x1f94 <__vfprintf_r+0x8e0> (BP);
    1ef4:	3d e4 cb fe 	R5 = [FP + -0x4d4];
    1ef8:	38 e4 ce fe 	R0 = [FP + -0x4c8];
    1efc:	85 53       	R6 = R5 - R0;
    1efe:	06 0d       	CC = R6 <= 0x0;
    1f00:	4a 18       	IF CC JUMP 0x1f94 <__vfprintf_r+0x8e0>;
    1f02:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
    1f04:	4b e1 00 00 	P3.H = 0x0;		/* (  0)	P3=0x0 */
    1f08:	0e 09       	CC = R6 <= R1;
    1f0a:	3f e4 da fe 	R7 = [FP + -0x498];
    1f0e:	0b e1 4c 89 	P3.L = 0x894c;		/* (-30388)	P3=0x894c <_blanks.4059> */
    1f12:	2d e1 00 fc 	P5 = -0x400 (X);		/*		P5=0xfffffc00(-1024) */
    1f16:	07 14       	IF !CC JUMP 0x1f24 <__vfprintf_r+0x870> (BP);
    1f18:	26 20       	JUMP.S 0x1f64 <__vfprintf_r+0x8b0>;
    1f1a:	86 67       	R6 += -0x10;		/* (-16) */
    1f1c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1f1e:	06 09       	CC = R6 <= R0;
    1f20:	42 6c       	P2 += 0x8;		/* (  8) */
    1f22:	21 18       	IF CC JUMP 0x1f64 <__vfprintf_r+0x8b0>;
    1f24:	0f 64       	R7 += 0x1;		/* (  1) */
    1f26:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    1f28:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1f2a:	83 64       	R3 += 0x10;		/* ( 16) */
    1f2c:	17 09       	CC = R7 <= R2;
    1f2e:	53 93       	[P2] = P3;
    1f30:	50 b0       	[P2 + 0x4] = R0;
    1f32:	3b e6 db fe 	[FP + -0x494] = R3;
    1f36:	3f e6 da fe 	[FP + -0x498] = R7;
    1f3a:	f0 1f       	IF CC JUMP 0x1f1a <__vfprintf_r+0x866> (BP);
    1f3c:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    1f40:	38 5a       	P0 = P0 + FP;
    1f42:	44 30       	R0 = P4;
    1f44:	0c 30       	R1 = R4;
    1f46:	50 30       	R2 = P0;
    1f48:	00 e3 b8 1f 	CALL 0x5eb8 <___sprint_r>;
    1f4c:	00 0c       	CC = R0 == 0x0;
    1f4e:	02 1c       	IF CC JUMP 0x1f52 <__vfprintf_r+0x89e> (BP);
    1f50:	55 2d       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    1f52:	86 67       	R6 += -0x10;		/* (-16) */
    1f54:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    1f56:	06 09       	CC = R6 <= R0;
    1f58:	af 5a       	P2 = FP + P5;
    1f5a:	3b e4 db fe 	R3 = [FP + -0x494];
    1f5e:	3f e4 da fe 	R7 = [FP + -0x498];
    1f62:	e1 17       	IF !CC JUMP 0x1f24 <__vfprintf_r+0x870> (BP);
    1f64:	0f 64       	R7 += 0x1;		/* (  1) */
    1f66:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1f68:	de 50       	R3 = R6 + R3;
    1f6a:	0f 09       	CC = R7 <= R1;
    1f6c:	53 93       	[P2] = P3;
    1f6e:	56 b0       	[P2 + 0x4] = R6;
    1f70:	3b e6 db fe 	[FP + -0x494] = R3;
    1f74:	3f e6 da fe 	[FP + -0x498] = R7;
    1f78:	0e 1c       	IF CC JUMP 0x1f94 <__vfprintf_r+0x8e0> (BP);
    1f7a:	5f 30       	R3 = FP;
    1f7c:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    1f80:	44 30       	R0 = P4;
    1f82:	0c 30       	R1 = R4;
    1f84:	93 50       	R2 = R3 + R2;
    1f86:	00 e3 99 1f 	CALL 0x5eb8 <___sprint_r>;
    1f8a:	00 0c       	CC = R0 == 0x0;
    1f8c:	02 1c       	IF CC JUMP 0x1f90 <__vfprintf_r+0x8dc> (BP);
    1f8e:	36 2d       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    1f90:	3b e4 db fe 	R3 = [FP + -0x494];
    1f94:	03 0c       	CC = R3 == 0x0;
    1f96:	3d e4 ce fe 	R5 = [FP + -0x4c8];
    1f9a:	39 e4 cb fe 	R1 = [FP + -0x4d4];
    1f9e:	3a e4 cd fe 	R2 = [FP + -0x4cc];
    1fa2:	07 c4 29 00 	R0 = MAX (R5, R1);
    1fa6:	82 50       	R2 = R2 + R0;
    1fa8:	3a e6 cd fe 	[FP + -0x4cc] = R2;
    1fac:	72 11       	IF !CC JUMP 0x2290 <__vfprintf_r+0xbdc>;
    1fae:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1fb0:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1fb4:	38 e6 da fe 	[FP + -0x498] = R0;
    1fb8:	97 5a       	P2 = FP + P2;
    1fba:	da 2b       	JUMP.S 0x176e <__vfprintf_r+0xba>;
    1fbc:	0f 64       	R7 += 0x1;		/* (  1) */
    1fbe:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    1fc0:	eb 50       	R3 = R3 + R5;
    1fc2:	0f 09       	CC = R7 <= R1;
    1fc4:	55 93       	[P2] = P5;
    1fc6:	55 b0       	[P2 + 0x4] = R5;
    1fc8:	3b e6 db fe 	[FP + -0x494] = R3;
    1fcc:	3f e6 da fe 	[FP + -0x498] = R7;
    1fd0:	8f 1f       	IF CC JUMP 0x1eee <__vfprintf_r+0x83a> (BP);
    1fd2:	5f 30       	R3 = FP;
    1fd4:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    1fd8:	44 30       	R0 = P4;
    1fda:	0c 30       	R1 = R4;
    1fdc:	93 50       	R2 = R3 + R2;
    1fde:	00 e3 6d 1f 	CALL 0x5eb8 <___sprint_r>;
    1fe2:	00 0c       	CC = R0 == 0x0;
    1fe4:	02 1c       	IF CC JUMP 0x1fe8 <__vfprintf_r+0x934> (BP);
    1fe6:	0a 2d       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    1fe8:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    1fec:	97 5a       	P2 = FP + P2;
    1fee:	3b e4 db fe 	R3 = [FP + -0x494];
    1ff2:	7f 2f       	JUMP.S 0x1ef0 <__vfprintf_r+0x83c>;
    1ff4:	20 e1 65 00 	R0 = 0x65 (X);		/*		R0=0x65(101) */
    1ff8:	05 09       	CC = R5 <= R0;
    1ffa:	da 1c       	IF CC JUMP 0x21ae <__vfprintf_r+0xafa> (BP);
    1ffc:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1ffe:	f0 b0       	[SP + 0xc] = R0;
    2000:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    2002:	38 e4 bf fe 	R0 = [FP + -0x504];
    2006:	39 e4 c0 fe 	R1 = [FP + -0x500];
    200a:	3b e6 bb fe 	[FP + -0x514] = R3;
    200e:	3a e7 ba fe 	[FP + -0x518] = P2;
    2012:	00 e3 f5 2f 	CALL 0x7ffc <___eqdf2>;
    2016:	00 0c       	CC = R0 == 0x0;
    2018:	3b e4 bb fe 	R3 = [FP + -0x514];
    201c:	3a e5 ba fe 	P2 = [FP + -0x518];
    2020:	85 15       	IF !CC JUMP 0x232a <__vfprintf_r+0xc76> (BP);
    2022:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
    2026:	00 e1 e4 87 	R0.L = 0x87e4;		/* (-30748)	R0=0x87e4(34788) */
    202a:	10 93       	[P2] = R0;
    202c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    202e:	50 b0       	[P2 + 0x4] = R0;
    2030:	38 e4 da fe 	R0 = [FP + -0x498];
    2034:	08 64       	R0 += 0x1;		/* (  1) */
    2036:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2038:	0b 64       	R3 += 0x1;		/* (  1) */
    203a:	08 09       	CC = R0 <= R1;
    203c:	3b e6 db fe 	[FP + -0x494] = R3;
    2040:	38 e6 da fe 	[FP + -0x498] = R0;
    2044:	02 1c       	IF CC JUMP 0x2048 <__vfprintf_r+0x994> (BP);
    2046:	f8 23       	JUMP.S 0x2836 <__vfprintf_r+0x1182>;
    2048:	42 6c       	P2 += 0x8;		/* (  8) */
    204a:	3d e4 d2 fe 	R5 = [FP + -0x4b8];
    204e:	38 e4 c6 fe 	R0 = [FP + -0x4e8];
    2052:	85 08       	CC = R5 < R0;
    2054:	03 1c       	IF CC JUMP 0x205a <__vfprintf_r+0x9a6> (BP);
    2056:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    2058:	4c 1f       	IF CC JUMP 0x1ef0 <__vfprintf_r+0x83c> (BP);
    205a:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    205c:	38 e4 c1 fe 	R0 = [FP + -0x4fc];
    2060:	50 b0       	[P2 + 0x4] = R0;
    2062:	c3 50       	R3 = R3 + R0;
    2064:	38 e4 da fe 	R0 = [FP + -0x498];
    2068:	08 64       	R0 += 0x1;		/* (  1) */
    206a:	3d e4 c3 fe 	R5 = [FP + -0x4f4];
    206e:	08 09       	CC = R0 <= R1;
    2070:	15 93       	[P2] = R5;
    2072:	3b e6 db fe 	[FP + -0x494] = R3;
    2076:	38 e6 da fe 	[FP + -0x498] = R0;
    207a:	02 1c       	IF CC JUMP 0x207e <__vfprintf_r+0x9ca> (BP);
    207c:	83 24       	JUMP.S 0x2982 <__vfprintf_r+0x12ce>;
    207e:	42 6c       	P2 += 0x8;		/* (  8) */
    2080:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    2084:	fd 67       	R5 += -0x1;		/* ( -1) */
    2086:	05 0d       	CC = R5 <= 0x0;
    2088:	34 1b       	IF CC JUMP 0x1ef0 <__vfprintf_r+0x83c>;
    208a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    208c:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0xfc00 */
    2090:	05 09       	CC = R5 <= R0;
    2092:	3f e4 da fe 	R7 = [FP + -0x498];
    2096:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    209a:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    209e:	07 14       	IF !CC JUMP 0x20ac <__vfprintf_r+0x9f8> (BP);
    20a0:	8e 2f       	JUMP.S 0x1fbc <__vfprintf_r+0x908>;
    20a2:	42 6c       	P2 += 0x8;		/* (  8) */
    20a4:	85 67       	R5 += -0x10;		/* (-16) */
    20a6:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    20a8:	05 09       	CC = R5 <= R0;
    20aa:	89 1b       	IF CC JUMP 0x1fbc <__vfprintf_r+0x908>;
    20ac:	0f 64       	R7 += 0x1;		/* (  1) */
    20ae:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    20b0:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    20b2:	83 64       	R3 += 0x10;		/* ( 16) */
    20b4:	0f 09       	CC = R7 <= R1;
    20b6:	55 93       	[P2] = P5;
    20b8:	50 b0       	[P2 + 0x4] = R0;
    20ba:	3b e6 db fe 	[FP + -0x494] = R3;
    20be:	3f e6 da fe 	[FP + -0x498] = R7;
    20c2:	f0 1f       	IF CC JUMP 0x20a2 <__vfprintf_r+0x9ee> (BP);
    20c4:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    20c8:	38 5a       	P0 = P0 + FP;
    20ca:	44 30       	R0 = P4;
    20cc:	0c 30       	R1 = R4;
    20ce:	50 30       	R2 = P0;
    20d0:	00 e3 f4 1e 	CALL 0x5eb8 <___sprint_r>;
    20d4:	00 0c       	CC = R0 == 0x0;
    20d6:	02 1c       	IF CC JUMP 0x20da <__vfprintf_r+0xa26> (BP);
    20d8:	91 2c       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    20da:	9f 5a       	P2 = FP + P3;
    20dc:	3b e4 db fe 	R3 = [FP + -0x494];
    20e0:	3f e4 da fe 	R7 = [FP + -0x498];
    20e4:	e0 2f       	JUMP.S 0x20a4 <__vfprintf_r+0x9f0>;
    20e6:	3b e5 cb fe 	P3 = [FP + -0x4d4];
    20ea:	38 e5 ce fe 	P0 = [FP + -0x4c8];
    20ee:	03 44       	P3 -= P0;
    20f0:	43 0d       	CC = P3 <= 0x0;
    20f2:	a6 1a       	IF CC JUMP 0x1e3e <__vfprintf_r+0x78a>;
    20f4:	81 68       	P1 = 0x10 (X);		/*		P1=0x10( 16) */
    20f6:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    20fa:	4b 09       	CC = P3 <= P1;
    20fc:	3f e4 da fe 	R7 = [FP + -0x498];
    2100:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    2104:	2f 18       	IF CC JUMP 0x2162 <__vfprintf_r+0xaae>;
    2106:	43 30       	R0 = P3;
    2108:	1e 32       	P3 = R6;
    210a:	30 30       	R6 = R0;
    210c:	06 20       	JUMP.S 0x2118 <__vfprintf_r+0xa64>;
    210e:	86 67       	R6 += -0x10;		/* (-16) */
    2110:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    2112:	06 09       	CC = R6 <= R0;
    2114:	42 6c       	P2 += 0x8;		/* (  8) */
    2116:	23 18       	IF CC JUMP 0x215c <__vfprintf_r+0xaa8>;
    2118:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    211a:	50 b0       	[P2 + 0x4] = R0;
    211c:	0f 64       	R7 += 0x1;		/* (  1) */
    211e:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    2120:	83 64       	R3 += 0x10;		/* ( 16) */
    2122:	07 09       	CC = R7 <= R0;
    2124:	55 93       	[P2] = P5;
    2126:	3b e6 db fe 	[FP + -0x494] = R3;
    212a:	3f e6 da fe 	[FP + -0x498] = R7;
    212e:	f0 1f       	IF CC JUMP 0x210e <__vfprintf_r+0xa5a> (BP);
    2130:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    2134:	38 5a       	P0 = P0 + FP;
    2136:	44 30       	R0 = P4;
    2138:	0c 30       	R1 = R4;
    213a:	50 30       	R2 = P0;
    213c:	00 e3 be 1e 	CALL 0x5eb8 <___sprint_r>;
    2140:	00 0c       	CC = R0 == 0x0;
    2142:	02 1c       	IF CC JUMP 0x2146 <__vfprintf_r+0xa92> (BP);
    2144:	5b 2c       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2146:	86 67       	R6 += -0x10;		/* (-16) */
    2148:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    214a:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    214e:	06 09       	CC = R6 <= R0;
    2150:	8f 5a       	P2 = FP + P1;
    2152:	3b e4 db fe 	R3 = [FP + -0x494];
    2156:	3f e4 da fe 	R7 = [FP + -0x498];
    215a:	df 17       	IF !CC JUMP 0x2118 <__vfprintf_r+0xa64> (BP);
    215c:	06 30       	R0 = R6;
    215e:	73 30       	R6 = P3;
    2160:	18 32       	P3 = R0;
    2162:	0f 64       	R7 += 0x1;		/* (  1) */
    2164:	4b 30       	R1 = P3;
    2166:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    2168:	cb 50       	R3 = R3 + R1;
    216a:	17 09       	CC = R7 <= R2;
    216c:	55 93       	[P2] = P5;
    216e:	53 bc       	[P2 + 0x4] = P3;
    2170:	3b e6 db fe 	[FP + -0x494] = R3;
    2174:	3f e6 da fe 	[FP + -0x498] = R7;
    2178:	02 1c       	IF CC JUMP 0x217c <__vfprintf_r+0xac8> (BP);
    217a:	59 22       	JUMP.S 0x262c <__vfprintf_r+0xf78>;
    217c:	42 6c       	P2 += 0x8;		/* (  8) */
    217e:	60 2e       	JUMP.S 0x1e3e <__vfprintf_r+0x78a>;
    2180:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
    2182:	3b e4 bd fe 	R3 = [FP + -0x50c];
    2186:	09 32       	P1 = R1;
    2188:	50 54       	R1 = R0 & R2;
    218a:	4b 50       	R1 = R3 + R1;
    218c:	01 32       	P0 = R1;
    218e:	20 4e       	R0 >>= 0x4;
    2190:	00 0c       	CC = R0 == 0x0;
    2192:	41 99       	R1 = B[P0] (X);
    2194:	09 9b       	B[P1] = R1;
    2196:	49 30       	R1 = P1;
    2198:	f9 67       	R1 += -0x1;		/* ( -1) */
    219a:	f6 17       	IF !CC JUMP 0x2186 <__vfprintf_r+0xad2> (BP);
    219c:	39 e7 c8 fe 	[FP + -0x4e0] = P1;
    21a0:	59 30       	R3 = P1;
    21a2:	38 e4 c4 fe 	R0 = [FP + -0x4f0];
    21a6:	18 52       	R0 = R0 - R3;
    21a8:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    21ac:	bc 2c       	JUMP.S 0x1b24 <__vfprintf_r+0x470>;
    21ae:	0b 64       	R3 += 0x1;		/* (  1) */
    21b0:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    21b4:	3f e4 da fe 	R7 = [FP + -0x498];
    21b8:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    21bc:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    21be:	0f 64       	R7 += 0x1;		/* (  1) */
    21c0:	0d 0d       	CC = R5 <= 0x1;
    21c2:	50 b0       	[P2 + 0x4] = R0;
    21c4:	50 93       	[P2] = P0;
    21c6:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    21c8:	3b e6 db fe 	[FP + -0x494] = R3;
    21cc:	3f e6 da fe 	[FP + -0x498] = R7;
    21d0:	48 18       	IF CC JUMP 0x2260 <__vfprintf_r+0xbac>;
    21d2:	07 09       	CC = R7 <= R0;
    21d4:	fa 11       	IF !CC JUMP 0x25c8 <__vfprintf_r+0xf14>;
    21d6:	42 6c       	P2 += 0x8;		/* (  8) */
    21d8:	38 e4 c1 fe 	R0 = [FP + -0x4fc];
    21dc:	0f 64       	R7 += 0x1;		/* (  1) */
    21de:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    21e0:	3d e4 c3 fe 	R5 = [FP + -0x4f4];
    21e4:	c3 50       	R3 = R3 + R0;
    21e6:	0f 09       	CC = R7 <= R1;
    21e8:	15 93       	[P2] = R5;
    21ea:	50 b0       	[P2 + 0x4] = R0;
    21ec:	3b e6 db fe 	[FP + -0x494] = R3;
    21f0:	3f e6 da fe 	[FP + -0x498] = R7;
    21f4:	fd 11       	IF !CC JUMP 0x25ee <__vfprintf_r+0xf3a>;
    21f6:	5a 32       	P3 = P2;
    21f8:	43 6c       	P3 += 0x8;		/* (  8) */
    21fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    21fc:	f0 b0       	[SP + 0xc] = R0;
    21fe:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    2200:	38 e4 bf fe 	R0 = [FP + -0x504];
    2204:	39 e4 c0 fe 	R1 = [FP + -0x500];
    2208:	3b e6 bb fe 	[FP + -0x514] = R3;
    220c:	00 e3 1e 2f 	CALL 0x8048 <___nedf2>;
    2210:	00 0c       	CC = R0 == 0x0;
    2212:	3b e4 bb fe 	R3 = [FP + -0x514];
    2216:	e5 1c       	IF CC JUMP 0x23e0 <__vfprintf_r+0xd2c> (BP);
    2218:	3d e5 c8 fe 	P5 = [FP + -0x4e0];
    221c:	38 e4 c6 fe 	R0 = [FP + -0x4e8];
    2220:	f8 67       	R0 += -0x1;		/* ( -1) */
    2222:	0f 64       	R7 += 0x1;		/* (  1) */
    2224:	3d 60       	R5 = 0x7 (X);		/*		R5=0x7(  7) */
    2226:	0d 6c       	P5 += 0x1;		/* (  1) */
    2228:	c3 50       	R3 = R3 + R0;
    222a:	2f 09       	CC = R7 <= R5;
    222c:	5d 93       	[P3] = P5;
    222e:	58 b0       	[P3 + 0x4] = R0;
    2230:	3b e6 db fe 	[FP + -0x494] = R3;
    2234:	3f e6 da fe 	[FP + -0x498] = R7;
    2238:	19 10       	IF !CC JUMP 0x226a <__vfprintf_r+0xbb6>;
    223a:	43 6c       	P3 += 0x8;		/* (  8) */
    223c:	3d e4 be fe 	R5 = [FP + -0x508];
    2240:	0f 64       	R7 += 0x1;		/* (  1) */
    2242:	2a e1 54 fb 	P2 = -0x4ac (X);		/*		P2=0xfffffb54(-1196) */
    2246:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    2248:	97 5a       	P2 = FP + P2;
    224a:	eb 50       	R3 = R3 + R5;
    224c:	07 09       	CC = R7 <= R0;
    224e:	5a 93       	[P3] = P2;
    2250:	5d b0       	[P3 + 0x4] = R5;
    2252:	3b e6 db fe 	[FP + -0x494] = R3;
    2256:	3f e6 da fe 	[FP + -0x498] = R7;
    225a:	bc 12       	IF !CC JUMP 0x1fd2 <__vfprintf_r+0x91e>;
    225c:	53 32       	P2 = P3;
    225e:	48 2e       	JUMP.S 0x1eee <__vfprintf_r+0x83a>;
    2260:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    2262:	b8 17       	IF !CC JUMP 0x21d2 <__vfprintf_r+0xb1e> (BP);
    2264:	07 09       	CC = R7 <= R0;
    2266:	02 10       	IF !CC JUMP 0x226a <__vfprintf_r+0xbb6>;
    2268:	78 23       	JUMP.S 0x2958 <__vfprintf_r+0x12a4>;
    226a:	5f 30       	R3 = FP;
    226c:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2270:	44 30       	R0 = P4;
    2272:	0c 30       	R1 = R4;
    2274:	93 50       	R2 = R3 + R2;
    2276:	00 e3 21 1e 	CALL 0x5eb8 <___sprint_r>;
    227a:	00 0c       	CC = R0 == 0x0;
    227c:	02 1c       	IF CC JUMP 0x2280 <__vfprintf_r+0xbcc> (BP);
    227e:	be 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2280:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    2284:	df 5a       	P3 = FP + P3;
    2286:	3b e4 db fe 	R3 = [FP + -0x494];
    228a:	3f e4 da fe 	R7 = [FP + -0x498];
    228e:	d7 2f       	JUMP.S 0x223c <__vfprintf_r+0xb88>;
    2290:	5f 30       	R3 = FP;
    2292:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2296:	44 30       	R0 = P4;
    2298:	0c 30       	R1 = R4;
    229a:	93 50       	R2 = R3 + R2;
    229c:	00 e3 0e 1e 	CALL 0x5eb8 <___sprint_r>;
    22a0:	00 0c       	CC = R0 == 0x0;
    22a2:	86 1e       	IF CC JUMP 0x1fae <__vfprintf_r+0x8fa> (BP);
    22a4:	ab 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    22a6:	5f 30       	R3 = FP;
    22a8:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    22ac:	44 30       	R0 = P4;
    22ae:	0c 30       	R1 = R4;
    22b0:	93 50       	R2 = R3 + R2;
    22b2:	00 e3 03 1e 	CALL 0x5eb8 <___sprint_r>;
    22b6:	00 0c       	CC = R0 == 0x0;
    22b8:	02 1c       	IF CC JUMP 0x22bc <__vfprintf_r+0xc08> (BP);
    22ba:	a0 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    22bc:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    22c0:	97 5a       	P2 = FP + P2;
    22c2:	3b e4 db fe 	R3 = [FP + -0x494];
    22c6:	01 2e       	JUMP.S 0x1ec8 <__vfprintf_r+0x814>;
    22c8:	5f 30       	R3 = FP;
    22ca:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    22ce:	44 30       	R0 = P4;
    22d0:	0c 30       	R1 = R4;
    22d2:	93 50       	R2 = R3 + R2;
    22d4:	00 e3 f2 1d 	CALL 0x5eb8 <___sprint_r>;
    22d8:	00 0c       	CC = R0 == 0x0;
    22da:	02 1c       	IF CC JUMP 0x22de <__vfprintf_r+0xc2a> (BP);
    22dc:	8f 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    22de:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    22e2:	97 5a       	P2 = FP + P2;
    22e4:	3b e4 db fe 	R3 = [FP + -0x494];
    22e8:	8e 2d       	JUMP.S 0x1e04 <__vfprintf_r+0x750>;
    22ea:	5f 30       	R3 = FP;
    22ec:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    22f0:	44 30       	R0 = P4;
    22f2:	0c 30       	R1 = R4;
    22f4:	93 50       	R2 = R3 + R2;
    22f6:	00 e3 e1 1d 	CALL 0x5eb8 <___sprint_r>;
    22fa:	00 0c       	CC = R0 == 0x0;
    22fc:	02 1c       	IF CC JUMP 0x2300 <__vfprintf_r+0xc4c> (BP);
    22fe:	7e 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2300:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2304:	97 5a       	P2 = FP + P2;
    2306:	3b e4 db fe 	R3 = [FP + -0x494];
    230a:	94 2d       	JUMP.S 0x1e32 <__vfprintf_r+0x77e>;
    230c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
    230e:	08 0a       	CC = R0 <= R1 (IU);
    2310:	b0 14       	IF !CC JUMP 0x2470 <__vfprintf_r+0xdbc> (BP);
    2312:	80 65       	R0 += 0x30;		/* ( 48) */
    2314:	fe 2b       	JUMP.S 0x1b10 <__vfprintf_r+0x45c>;
    2316:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2318:	3b e4 c4 fe 	R3 = [FP + -0x4f0];
    231c:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2320:	3b e6 c8 fe 	[FP + -0x4e0] = R3;
    2324:	00 2c       	JUMP.S 0x1b24 <__vfprintf_r+0x470>;
    2326:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    2328:	e1 2b       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    232a:	3d e4 d2 fe 	R5 = [FP + -0x4b8];
    232e:	05 0d       	CC = R5 <= 0x0;
    2330:	02 14       	IF !CC JUMP 0x2334 <__vfprintf_r+0xc80> (BP);
    2332:	93 22       	JUMP.S 0x2858 <__vfprintf_r+0x11a4>;
    2334:	39 e5 c6 fe 	P1 = [FP + -0x4e8];
    2338:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    233c:	38 e4 c2 fe 	R0 = [FP + -0x4f8];
    2340:	69 30       	R5 = P1;
    2342:	07 c4 28 4e 	R7 = MIN (R5, R0);
    2346:	08 5a       	P0 = P0 + P1;
    2348:	07 0d       	CC = R7 <= 0x0;
    234a:	38 e7 cc fe 	[FP + -0x4d0] = P0;
    234e:	12 18       	IF CC JUMP 0x2372 <__vfprintf_r+0xcbe>;
    2350:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2352:	fb 50       	R3 = R3 + R7;
    2354:	57 b0       	[P2 + 0x4] = R7;
    2356:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    235a:	38 e4 da fe 	R0 = [FP + -0x498];
    235e:	08 64       	R0 += 0x1;		/* (  1) */
    2360:	08 09       	CC = R0 <= R1;
    2362:	50 93       	[P2] = P0;
    2364:	3b e6 db fe 	[FP + -0x494] = R3;
    2368:	38 e6 da fe 	[FP + -0x498] = R0;
    236c:	02 1c       	IF CC JUMP 0x2370 <__vfprintf_r+0xcbc> (BP);
    236e:	60 23       	JUMP.S 0x2a2e <__vfprintf_r+0x137a>;
    2370:	42 6c       	P2 += 0x8;		/* (  8) */
    2372:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2374:	07 c4 38 0e 	R7 = MAX (R7, R0);
    2378:	38 e4 c2 fe 	R0 = [FP + -0x4f8];
    237c:	78 53       	R5 = R0 - R7;
    237e:	05 0d       	CC = R5 <= 0x0;
    2380:	b3 18       	IF CC JUMP 0x24e6 <__vfprintf_r+0xe32>;
    2382:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
    2384:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    2388:	0d 09       	CC = R5 <= R1;
    238a:	3f e4 da fe 	R7 = [FP + -0x498];
    238e:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    2392:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    2396:	08 14       	IF !CC JUMP 0x23a6 <__vfprintf_r+0xcf2> (BP);
    2398:	42 22       	JUMP.S 0x281c <__vfprintf_r+0x1168>;
    239a:	42 6c       	P2 += 0x8;		/* (  8) */
    239c:	85 67       	R5 += -0x10;		/* (-16) */
    239e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    23a0:	05 09       	CC = R5 <= R0;
    23a2:	02 14       	IF !CC JUMP 0x23a6 <__vfprintf_r+0xcf2> (BP);
    23a4:	3c 22       	JUMP.S 0x281c <__vfprintf_r+0x1168>;
    23a6:	0f 64       	R7 += 0x1;		/* (  1) */
    23a8:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    23aa:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    23ac:	83 64       	R3 += 0x10;		/* ( 16) */
    23ae:	17 09       	CC = R7 <= R2;
    23b0:	55 93       	[P2] = P5;
    23b2:	50 b0       	[P2 + 0x4] = R0;
    23b4:	3b e6 db fe 	[FP + -0x494] = R3;
    23b8:	3f e6 da fe 	[FP + -0x498] = R7;
    23bc:	ef 1f       	IF CC JUMP 0x239a <__vfprintf_r+0xce6> (BP);
    23be:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    23c2:	38 5a       	P0 = P0 + FP;
    23c4:	44 30       	R0 = P4;
    23c6:	0c 30       	R1 = R4;
    23c8:	50 30       	R2 = P0;
    23ca:	00 e3 77 1d 	CALL 0x5eb8 <___sprint_r>;
    23ce:	00 0c       	CC = R0 == 0x0;
    23d0:	02 1c       	IF CC JUMP 0x23d4 <__vfprintf_r+0xd20> (BP);
    23d2:	14 2b       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    23d4:	9f 5a       	P2 = FP + P3;
    23d6:	3b e4 db fe 	R3 = [FP + -0x494];
    23da:	3f e4 da fe 	R7 = [FP + -0x498];
    23de:	df 2f       	JUMP.S 0x239c <__vfprintf_r+0xce8>;
    23e0:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    23e4:	fd 67       	R5 += -0x1;		/* ( -1) */
    23e6:	05 0d       	CC = R5 <= 0x0;
    23e8:	2a 1b       	IF CC JUMP 0x223c <__vfprintf_r+0xb88>;
    23ea:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    23ec:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    23f0:	05 09       	CC = R5 <= R0;
    23f2:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    23f6:	07 14       	IF !CC JUMP 0x2404 <__vfprintf_r+0xd50> (BP);
    23f8:	0e 21       	JUMP.S 0x2614 <__vfprintf_r+0xf60>;
    23fa:	43 6c       	P3 += 0x8;		/* (  8) */
    23fc:	85 67       	R5 += -0x10;		/* (-16) */
    23fe:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    2400:	05 09       	CC = R5 <= R0;
    2402:	09 19       	IF CC JUMP 0x2614 <__vfprintf_r+0xf60>;
    2404:	0f 64       	R7 += 0x1;		/* (  1) */
    2406:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2408:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    240a:	83 64       	R3 += 0x10;		/* ( 16) */
    240c:	0f 09       	CC = R7 <= R1;
    240e:	5d 93       	[P3] = P5;
    2410:	58 b0       	[P3 + 0x4] = R0;
    2412:	3b e6 db fe 	[FP + -0x494] = R3;
    2416:	3f e6 da fe 	[FP + -0x498] = R7;
    241a:	f0 1f       	IF CC JUMP 0x23fa <__vfprintf_r+0xd46> (BP);
    241c:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    2420:	38 5a       	P0 = P0 + FP;
    2422:	44 30       	R0 = P4;
    2424:	0c 30       	R1 = R4;
    2426:	50 30       	R2 = P0;
    2428:	00 e3 48 1d 	CALL 0x5eb8 <___sprint_r>;
    242c:	00 0c       	CC = R0 == 0x0;
    242e:	02 1c       	IF CC JUMP 0x2432 <__vfprintf_r+0xd7e> (BP);
    2430:	e5 2a       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2432:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    2436:	cf 5a       	P3 = FP + P1;
    2438:	3b e4 db fe 	R3 = [FP + -0x494];
    243c:	3f e4 da fe 	R7 = [FP + -0x498];
    2440:	de 2f       	JUMP.S 0x23fc <__vfprintf_r+0xd48>;
    2442:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    2444:	d6 1d       	IF CC JUMP 0x27f0 <__vfprintf_r+0x113c> (BP);
    2446:	3b af       	P3 = [FP + 0x30];
    2448:	58 95       	R0 = W[P3] (X);
    244a:	23 6c       	P3 += 0x4;		/* (  4) */
    244c:	3b bf       	[FP + 0x30] = P3;
    244e:	1a 2c       	JUMP.S 0x1c82 <__vfprintf_r+0x5ce>;
    2450:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    2452:	d9 1d       	IF CC JUMP 0x2804 <__vfprintf_r+0x1150> (BP);
    2454:	39 af       	P1 = [FP + 0x30];
    2456:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    2458:	08 95       	R0 = W[P1] (Z);
    245a:	21 6c       	P1 += 0x4;		/* (  4) */
    245c:	39 bf       	[FP + 0x30] = P1;
    245e:	46 2b       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    2460:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    2462:	d7 1d       	IF CC JUMP 0x2810 <__vfprintf_r+0x115c> (BP);
    2464:	39 af       	P1 = [FP + 0x30];
    2466:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2468:	08 95       	R0 = W[P1] (Z);
    246a:	21 6c       	P1 += 0x4;		/* (  4) */
    246c:	39 bf       	[FP + 0x30] = P1;
    246e:	3e 2b       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    2470:	41 e1 cc cc 	R1.H = 0xcccc;		/* (-13108)	R1=0xcccc0000(-859045888) */
    2474:	3a e4 c5 fe 	R2 = [FP + -0x4ec];
    2478:	01 e1 cd cc 	R1.L = 0xcccd;		/* (-13107)	R1=0xcccccccd(-858993459) */
    247c:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
    2480:	83 c6 80 51 	A1 = A1 >> 0x10;
    2484:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
    2488:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
    248c:	83 c6 80 51 	A1 = A1 >> 0x10;
    2490:	0b c4 3f 80 	A0 += A1;
    2494:	02 32       	P0 = R2;
    2496:	8b c0 80 38 	R2 = A0 (FU);
    249a:	1a 4e       	R2 >>= 0x3;
    249c:	0a 32       	P1 = R2;
    249e:	49 5f       	P5 = P1 + (P1 << 0x2);
    24a0:	55 30       	R2 = P5;
    24a2:	0a 4f       	R2 <<= 0x1;
    24a4:	10 52       	R0 = R0 - R2;
    24a6:	80 65       	R0 += 0x30;		/* ( 48) */
    24a8:	00 9b       	B[P0] = R0;
    24aa:	41 30       	R0 = P1;
    24ac:	50 30       	R2 = P0;
    24ae:	00 0c       	CC = R0 == 0x0;
    24b0:	fa 67       	R2 += -0x1;		/* ( -1) */
    24b2:	e5 17       	IF !CC JUMP 0x247c <__vfprintf_r+0xdc8> (BP);
    24b4:	38 e4 c4 fe 	R0 = [FP + -0x4f0];
    24b8:	58 30       	R3 = P0;
    24ba:	18 52       	R0 = R0 - R3;
    24bc:	38 e7 c8 fe 	[FP + -0x4e0] = P0;
    24c0:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    24c4:	30 2b       	JUMP.S 0x1b24 <__vfprintf_r+0x470>;
    24c6:	5f 30       	R3 = FP;
    24c8:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    24cc:	44 30       	R0 = P4;
    24ce:	0c 30       	R1 = R4;
    24d0:	93 50       	R2 = R3 + R2;
    24d2:	00 e3 f3 1c 	CALL 0x5eb8 <___sprint_r>;
    24d6:	00 0c       	CC = R0 == 0x0;
    24d8:	02 1c       	IF CC JUMP 0x24dc <__vfprintf_r+0xe28> (BP);
    24da:	90 2a       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    24dc:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    24e0:	97 5a       	P2 = FP + P2;
    24e2:	3b e4 db fe 	R3 = [FP + -0x494];
    24e6:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    24ea:	39 e5 c2 fe 	P1 = [FP + -0x4f8];
    24ee:	39 e4 d2 fe 	R1 = [FP + -0x4b8];
    24f2:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    24f6:	a9 08       	CC = R1 < R5;
    24f8:	48 5b       	P5 = P0 + P1;
    24fa:	53 1c       	IF CC JUMP 0x25a0 <__vfprintf_r+0xeec> (BP);
    24fc:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    24fe:	51 14       	IF !CC JUMP 0x25a0 <__vfprintf_r+0xeec> (BP);
    2500:	3d e4 cc fe 	R5 = [FP + -0x4d0];
    2504:	45 30       	R0 = P5;
    2506:	c5 53       	R7 = R5 - R0;
    2508:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    250c:	4d 52       	R1 = R5 - R1;
    250e:	07 c4 0f 4e 	R7 = MIN (R1, R7);
    2512:	07 0d       	CC = R7 <= 0x0;
    2514:	10 18       	IF CC JUMP 0x2534 <__vfprintf_r+0xe80>;
    2516:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    2518:	fb 50       	R3 = R3 + R7;
    251a:	55 93       	[P2] = P5;
    251c:	38 e4 da fe 	R0 = [FP + -0x498];
    2520:	08 64       	R0 += 0x1;		/* (  1) */
    2522:	10 09       	CC = R0 <= R2;
    2524:	57 b0       	[P2 + 0x4] = R7;
    2526:	3b e6 db fe 	[FP + -0x494] = R3;
    252a:	38 e6 da fe 	[FP + -0x498] = R0;
    252e:	02 1c       	IF CC JUMP 0x2532 <__vfprintf_r+0xe7e> (BP);
    2530:	b2 22       	JUMP.S 0x2a94 <__vfprintf_r+0x13e0>;
    2532:	42 6c       	P2 += 0x8;		/* (  8) */
    2534:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2536:	07 c4 38 0e 	R7 = MAX (R7, R0);
    253a:	79 53       	R5 = R1 - R7;
    253c:	05 0d       	CC = R5 <= 0x0;
    253e:	02 14       	IF !CC JUMP 0x2542 <__vfprintf_r+0xe8e> (BP);
    2540:	d8 2c       	JUMP.S 0x1ef0 <__vfprintf_r+0x83c>;
    2542:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    2544:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    2548:	05 09       	CC = R5 <= R0;
    254a:	3f e4 da fe 	R7 = [FP + -0x498];
    254e:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    2552:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    2556:	08 14       	IF !CC JUMP 0x2566 <__vfprintf_r+0xeb2> (BP);
    2558:	32 2d       	JUMP.S 0x1fbc <__vfprintf_r+0x908>;
    255a:	42 6c       	P2 += 0x8;		/* (  8) */
    255c:	85 67       	R5 += -0x10;		/* (-16) */
    255e:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    2560:	05 09       	CC = R5 <= R0;
    2562:	02 14       	IF !CC JUMP 0x2566 <__vfprintf_r+0xeb2> (BP);
    2564:	2c 2d       	JUMP.S 0x1fbc <__vfprintf_r+0x908>;
    2566:	0f 64       	R7 += 0x1;		/* (  1) */
    2568:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    256a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    256c:	83 64       	R3 += 0x10;		/* ( 16) */
    256e:	0f 09       	CC = R7 <= R1;
    2570:	55 93       	[P2] = P5;
    2572:	50 b0       	[P2 + 0x4] = R0;
    2574:	3b e6 db fe 	[FP + -0x494] = R3;
    2578:	3f e6 da fe 	[FP + -0x498] = R7;
    257c:	ef 1f       	IF CC JUMP 0x255a <__vfprintf_r+0xea6> (BP);
    257e:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    2582:	38 5a       	P0 = P0 + FP;
    2584:	44 30       	R0 = P4;
    2586:	0c 30       	R1 = R4;
    2588:	50 30       	R2 = P0;
    258a:	00 e3 97 1c 	CALL 0x5eb8 <___sprint_r>;
    258e:	00 0c       	CC = R0 == 0x0;
    2590:	02 1c       	IF CC JUMP 0x2594 <__vfprintf_r+0xee0> (BP);
    2592:	34 2a       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2594:	9f 5a       	P2 = FP + P3;
    2596:	3b e4 db fe 	R3 = [FP + -0x494];
    259a:	3f e4 da fe 	R7 = [FP + -0x498];
    259e:	df 2f       	JUMP.S 0x255c <__vfprintf_r+0xea8>;
    25a0:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    25a2:	38 e4 c1 fe 	R0 = [FP + -0x4fc];
    25a6:	38 e5 c3 fe 	P0 = [FP + -0x4f4];
    25aa:	50 b0       	[P2 + 0x4] = R0;
    25ac:	c3 50       	R3 = R3 + R0;
    25ae:	38 e4 da fe 	R0 = [FP + -0x498];
    25b2:	08 64       	R0 += 0x1;		/* (  1) */
    25b4:	10 09       	CC = R0 <= R2;
    25b6:	50 93       	[P2] = P0;
    25b8:	3b e6 db fe 	[FP + -0x494] = R3;
    25bc:	38 e6 da fe 	[FP + -0x498] = R0;
    25c0:	02 1c       	IF CC JUMP 0x25c4 <__vfprintf_r+0xf10> (BP);
    25c2:	48 22       	JUMP.S 0x2a52 <__vfprintf_r+0x139e>;
    25c4:	42 6c       	P2 += 0x8;		/* (  8) */
    25c6:	9d 2f       	JUMP.S 0x2500 <__vfprintf_r+0xe4c>;
    25c8:	5f 30       	R3 = FP;
    25ca:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    25ce:	44 30       	R0 = P4;
    25d0:	0c 30       	R1 = R4;
    25d2:	93 50       	R2 = R3 + R2;
    25d4:	00 e3 72 1c 	CALL 0x5eb8 <___sprint_r>;
    25d8:	00 0c       	CC = R0 == 0x0;
    25da:	02 1c       	IF CC JUMP 0x25de <__vfprintf_r+0xf2a> (BP);
    25dc:	0f 2a       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    25de:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    25e2:	97 5a       	P2 = FP + P2;
    25e4:	3b e4 db fe 	R3 = [FP + -0x494];
    25e8:	3f e4 da fe 	R7 = [FP + -0x498];
    25ec:	f6 2d       	JUMP.S 0x21d8 <__vfprintf_r+0xb24>;
    25ee:	5f 30       	R3 = FP;
    25f0:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    25f4:	44 30       	R0 = P4;
    25f6:	0c 30       	R1 = R4;
    25f8:	93 50       	R2 = R3 + R2;
    25fa:	00 e3 5f 1c 	CALL 0x5eb8 <___sprint_r>;
    25fe:	00 0c       	CC = R0 == 0x0;
    2600:	02 1c       	IF CC JUMP 0x2604 <__vfprintf_r+0xf50> (BP);
    2602:	fc 29       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2604:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    2608:	df 5a       	P3 = FP + P3;
    260a:	3b e4 db fe 	R3 = [FP + -0x494];
    260e:	3f e4 da fe 	R7 = [FP + -0x498];
    2612:	f4 2d       	JUMP.S 0x21fa <__vfprintf_r+0xb46>;
    2614:	0f 64       	R7 += 0x1;		/* (  1) */
    2616:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2618:	eb 50       	R3 = R3 + R5;
    261a:	0f 09       	CC = R7 <= R1;
    261c:	5d 93       	[P3] = P5;
    261e:	5d b0       	[P3 + 0x4] = R5;
    2620:	3b e6 db fe 	[FP + -0x494] = R3;
    2624:	3f e6 da fe 	[FP + -0x498] = R7;
    2628:	09 1e       	IF CC JUMP 0x223a <__vfprintf_r+0xb86> (BP);
    262a:	20 2e       	JUMP.S 0x226a <__vfprintf_r+0xbb6>;
    262c:	5f 30       	R3 = FP;
    262e:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2632:	44 30       	R0 = P4;
    2634:	0c 30       	R1 = R4;
    2636:	93 50       	R2 = R3 + R2;
    2638:	00 e3 40 1c 	CALL 0x5eb8 <___sprint_r>;
    263c:	00 0c       	CC = R0 == 0x0;
    263e:	02 1c       	IF CC JUMP 0x2642 <__vfprintf_r+0xf8e> (BP);
    2640:	dd 29       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2642:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2646:	97 5a       	P2 = FP + P2;
    2648:	3b e4 db fe 	R3 = [FP + -0x494];
    264c:	f9 2b       	JUMP.S 0x1e3e <__vfprintf_r+0x78a>;
    264e:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
    2650:	b9 e6 43 fb 	B[FP + -0x4bd] = R1;
    2654:	80 43       	R0 = -R0;
    2656:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    2658:	4c 2a       	JUMP.S 0x1af0 <__vfprintf_r+0x43c>;
    265a:	03 30       	R0 = R3;
    265c:	4b 30       	R1 = P3;
    265e:	3b e6 bb fe 	[FP + -0x514] = R3;
    2662:	3a e7 ba fe 	[FP + -0x518] = P2;
    2666:	00 e3 c7 1a 	CALL 0x5bf4 <___fpclassifyd>;
    266a:	00 0c       	CC = R0 == 0x0;
    266c:	3b e4 bb fe 	R3 = [FP + -0x514];
    2670:	3a e5 ba fe 	P2 = [FP + -0x518];
    2674:	60 1d       	IF CC JUMP 0x2934 <__vfprintf_r+0x1280> (BP);
    2676:	3f 0c       	CC = R7 == -0x1;
    2678:	02 14       	IF !CC JUMP 0x267c <__vfprintf_r+0xfc8> (BP);
    267a:	ef 22       	JUMP.S 0x2c58 <__vfprintf_r+0x15a4>;
    267c:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
    2680:	05 08       	CC = R5 == R0;
    2682:	02 14       	IF !CC JUMP 0x2686 <__vfprintf_r+0xfd2> (BP);
    2684:	e6 22       	JUMP.S 0x2c50 <__vfprintf_r+0x159c>;
    2686:	21 e1 47 00 	R1 = 0x47 (X);		/*		R1=0x47( 71) */
    268a:	0d 08       	CC = R5 == R1;
    268c:	02 14       	IF !CC JUMP 0x2690 <__vfprintf_r+0xfdc> (BP);
    268e:	e1 22       	JUMP.S 0x2c50 <__vfprintf_r+0x159c>;
    2690:	16 30       	R2 = R6;
    2692:	43 30       	R0 = P3;
    2694:	42 4a       	BITSET (R2, 0x8);		/* bit  8 */
    2696:	80 0c       	CC = R0 < 0x0;
    2698:	3a e6 ca fe 	[FP + -0x4d8] = R2;
    269c:	02 14       	IF !CC JUMP 0x26a0 <__vfprintf_r+0xfec> (BP);
    269e:	f3 22       	JUMP.S 0x2c84 <__vfprintf_r+0x15d0>;
    26a0:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    26a2:	ba e6 24 fb 	B[FP + -0x4dc] = R2;
    26a6:	20 e1 66 00 	R0 = 0x66 (X);		/*		R0=0x66(102) */
    26aa:	05 08       	CC = R5 == R0;
    26ac:	02 14       	IF !CC JUMP 0x26b0 <__vfprintf_r+0xffc> (BP);
    26ae:	7c 22       	JUMP.S 0x2ba6 <__vfprintf_r+0x14f2>;
    26b0:	21 e1 46 00 	R1 = 0x46 (X);		/*		R1=0x46( 70) */
    26b4:	0d 08       	CC = R5 == R1;
    26b6:	02 14       	IF !CC JUMP 0x26ba <__vfprintf_r+0x1006> (BP);
    26b8:	77 22       	JUMP.S 0x2ba6 <__vfprintf_r+0x14f2>;
    26ba:	22 e1 65 00 	R2 = 0x65 (X);		/*		R2=0x65(101) */
    26be:	15 08       	CC = R5 == R2;
    26c0:	07 32       	P0 = R7;
    26c2:	02 14       	IF !CC JUMP 0x26c6 <__vfprintf_r+0x1012> (BP);
    26c4:	cc 22       	JUMP.S 0x2c5c <__vfprintf_r+0x15a8>;
    26c6:	20 e1 45 00 	R0 = 0x45 (X);		/*		R0=0x45( 69) */
    26ca:	05 08       	CC = R5 == R0;
    26cc:	02 14       	IF !CC JUMP 0x26d0 <__vfprintf_r+0x101c> (BP);
    26ce:	c7 22       	JUMP.S 0x2c5c <__vfprintf_r+0x15a8>;
    26d0:	29 e1 48 fb 	P1 = -0x4b8 (X);		/*		P1=0xfffffb48(-1208) */
    26d4:	4f 5a       	P1 = FP + P1;
    26d6:	71 bd       	[SP + 0x14] = P1;
    26d8:	29 e1 4c fb 	P1 = -0x4b4 (X);		/*		P1=0xfffffb4c(-1204) */
    26dc:	4f 5a       	P1 = FP + P1;
    26de:	b1 bd       	[SP + 0x18] = P1;
    26e0:	29 e1 50 fb 	P1 = -0x4b0 (X);		/*		P1=0xfffffb50(-1200) */
    26e4:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    26e6:	4f 5a       	P1 = FP + P1;
    26e8:	82 ce 03 c2 	R1 = ROT R3 BY 0x0 || [SP + 0xc] = R0 || NOP;
    26ec:	f0 b0 00 00 
    26f0:	30 bd       	[SP + 0x10] = P0;
    26f2:	f1 bd       	[SP + 0x1c] = P1;
    26f4:	44 30       	R0 = P4;
    26f6:	53 30       	R2 = P3;
    26f8:	3b e6 bb fe 	[FP + -0x514] = R3;
    26fc:	38 e7 b9 fe 	[FP + -0x51c] = P0;
    2700:	3a e7 ba fe 	[FP + -0x518] = P2;
    2704:	00 e3 2e 05 	CALL 0x3160 <__dtoa_r>;
    2708:	21 e1 67 00 	R1 = 0x67 (X);		/*		R1=0x67(103) */
    270c:	0d 08       	CC = R5 == R1;
    270e:	38 e6 c8 fe 	[FP + -0x4e0] = R0;
    2712:	3b e4 bb fe 	R3 = [FP + -0x514];
    2716:	38 e5 b9 fe 	P0 = [FP + -0x51c];
    271a:	3a e5 ba fe 	P2 = [FP + -0x518];
    271e:	05 18       	IF CC JUMP 0x2728 <__vfprintf_r+0x1074>;
    2720:	22 e1 47 00 	R2 = 0x47 (X);		/*		R2=0x47( 71) */
    2724:	15 08       	CC = R5 == R2;
    2726:	04 10       	IF !CC JUMP 0x272e <__vfprintf_r+0x107a>;
    2728:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    272a:	02 14       	IF !CC JUMP 0x272e <__vfprintf_r+0x107a> (BP);
    272c:	b2 22       	JUMP.S 0x2c90 <__vfprintf_r+0x15dc>;
    272e:	20 e1 46 00 	R0 = 0x46 (X);		/*		R0=0x46( 70) */
    2732:	05 08       	CC = R5 == R0;
    2734:	3d e5 c8 fe 	P5 = [FP + -0x4e0];
    2738:	45 5a       	P1 = P5 + P0;
    273a:	02 14       	IF !CC JUMP 0x273e <__vfprintf_r+0x108a> (BP);
    273c:	58 22       	JUMP.S 0x2bec <__vfprintf_r+0x1538>;
    273e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2740:	f0 b0       	[SP + 0xc] = R0;
    2742:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    2744:	03 30       	R0 = R3;
    2746:	4b 30       	R1 = P3;
    2748:	39 e7 b8 fe 	[FP + -0x520] = P1;
    274c:	3a e7 ba fe 	[FP + -0x518] = P2;
    2750:	00 e3 56 2c 	CALL 0x7ffc <___eqdf2>;
    2754:	00 0c       	CC = R0 == 0x0;
    2756:	39 e5 b8 fe 	P1 = [FP + -0x520];
    275a:	3a e5 ba fe 	P2 = [FP + -0x518];
    275e:	0c 1c       	IF CC JUMP 0x2776 <__vfprintf_r+0x10c2> (BP);
    2760:	38 e5 d4 fe 	P0 = [FP + -0x4b0];
    2764:	41 0a       	CC = P1 <= P0 (IU);
    2766:	02 14       	IF !CC JUMP 0x276a <__vfprintf_r+0x10b6> (BP);
    2768:	3b 23       	JUMP.S 0x2dde <__vfprintf_r+0x172a>;
    276a:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    276c:	00 9a       	B[P0++] = R0;
    276e:	41 08       	CC = P1 == P0;
    2770:	38 e7 d4 fe 	[FP + -0x4b0] = P0;
    2774:	fc 17       	IF !CC JUMP 0x276c <__vfprintf_r+0x10b8> (BP);
    2776:	20 e1 67 00 	R0 = 0x67 (X);		/*		R0=0x67(103) */
    277a:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    277e:	05 08       	CC = R5 == R0;
    2780:	01 44       	P1 -= P0;
    2782:	39 e7 c6 fe 	[FP + -0x4e8] = P1;
    2786:	c1 19       	IF CC JUMP 0x2b08 <__vfprintf_r+0x1454>;
    2788:	21 e1 47 00 	R1 = 0x47 (X);		/*		R1=0x47( 71) */
    278c:	0d 08       	CC = R5 == R1;
    278e:	bd 19       	IF CC JUMP 0x2b08 <__vfprintf_r+0x1454>;
    2790:	22 e1 66 00 	R2 = 0x66 (X);		/*		R2=0x66(102) */
    2794:	15 08       	CC = R5 == R2;
    2796:	02 1c       	IF CC JUMP 0x279a <__vfprintf_r+0x10e6> (BP);
    2798:	20 23       	JUMP.S 0x2dd8 <__vfprintf_r+0x1724>;
    279a:	38 e4 d2 fe 	R0 = [FP + -0x4b8];
    279e:	00 0d       	CC = R0 <= 0x0;
    27a0:	02 14       	IF !CC JUMP 0x27a4 <__vfprintf_r+0x10f0> (BP);
    27a2:	ec 22       	JUMP.S 0x2d7a <__vfprintf_r+0x16c6>;
    27a4:	07 0c       	CC = R7 == 0x0;
    27a6:	02 18       	IF CC JUMP 0x27aa <__vfprintf_r+0x10f6>;
    27a8:	df 22       	JUMP.S 0x2d66 <__vfprintf_r+0x16b2>;
    27aa:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    27ac:	02 18       	IF CC JUMP 0x27b0 <__vfprintf_r+0x10fc>;
    27ae:	dc 22       	JUMP.S 0x2d66 <__vfprintf_r+0x16b2>;
    27b0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    27b2:	07 c4 01 02 	R1 = MAX (R0, R1);
    27b6:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    27ba:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    27be:	38 e6 c2 fe 	[FP + -0x4f8] = R0;
    27c2:	b8 e5 24 fb 	R0 = B[FP + -0x4dc] (X);
    27c6:	00 0c       	CC = R0 == 0x0;
    27c8:	94 1d       	IF CC JUMP 0x2af0 <__vfprintf_r+0x143c> (BP);
    27ca:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
    27cc:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
    27ce:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    27d2:	3e e4 ca fe 	R6 = [FP + -0x4d8];
    27d6:	39 e7 c7 fe 	[FP + -0x4e4] = P1;
    27da:	b5 29       	JUMP.S 0x1b44 <__vfprintf_r+0x490>;
    27dc:	39 af       	P1 = [FP + 0x30];
    27de:	4b ac       	P3 = [P1 + 0x4];
    27e0:	0b 91       	R3 = [P1];
    27e2:	41 6c       	P1 += 0x8;		/* (  8) */
    27e4:	3b e6 bf fe 	[FP + -0x504] = R3;
    27e8:	3b e7 c0 fe 	[FP + -0x500] = P3;
    27ec:	39 bf       	[FP + 0x30] = P1;
    27ee:	89 2a       	JUMP.S 0x1d00 <__vfprintf_r+0x64c>;
    27f0:	3d af       	P5 = [FP + 0x30];
    27f2:	28 91       	R0 = [P5];
    27f4:	25 6c       	P5 += 0x4;		/* (  4) */
    27f6:	3d bf       	[FP + 0x30] = P5;
    27f8:	45 2a       	JUMP.S 0x1c82 <__vfprintf_r+0x5ce>;
    27fa:	3b af       	P3 = [FP + 0x30];
    27fc:	18 91       	R0 = [P3];
    27fe:	23 6c       	P3 += 0x4;		/* (  4) */
    2800:	3b bf       	[FP + 0x30] = P3;
    2802:	02 2a       	JUMP.S 0x1c06 <__vfprintf_r+0x552>;
    2804:	3b af       	P3 = [FP + 0x30];
    2806:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    2808:	18 91       	R0 = [P3];
    280a:	23 6c       	P3 += 0x4;		/* (  4) */
    280c:	3b bf       	[FP + 0x30] = P3;
    280e:	6e 29       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    2810:	3b af       	P3 = [FP + 0x30];
    2812:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2814:	18 91       	R0 = [P3];
    2816:	23 6c       	P3 += 0x4;		/* (  4) */
    2818:	3b bf       	[FP + 0x30] = P3;
    281a:	68 29       	JUMP.S 0x1aea <__vfprintf_r+0x436>;
    281c:	0f 64       	R7 += 0x1;		/* (  1) */
    281e:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2820:	eb 50       	R3 = R3 + R5;
    2822:	0f 09       	CC = R7 <= R1;
    2824:	55 93       	[P2] = P5;
    2826:	55 b0       	[P2 + 0x4] = R5;
    2828:	3b e6 db fe 	[FP + -0x494] = R3;
    282c:	3f e6 da fe 	[FP + -0x498] = R7;
    2830:	4b 12       	IF !CC JUMP 0x24c6 <__vfprintf_r+0xe12>;
    2832:	42 6c       	P2 += 0x8;		/* (  8) */
    2834:	59 2e       	JUMP.S 0x24e6 <__vfprintf_r+0xe32>;
    2836:	5f 30       	R3 = FP;
    2838:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    283c:	44 30       	R0 = P4;
    283e:	0c 30       	R1 = R4;
    2840:	93 50       	R2 = R3 + R2;
    2842:	00 e3 3b 1b 	CALL 0x5eb8 <___sprint_r>;
    2846:	00 0c       	CC = R0 == 0x0;
    2848:	02 1c       	IF CC JUMP 0x284c <__vfprintf_r+0x1198> (BP);
    284a:	d8 28       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    284c:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2850:	97 5a       	P2 = FP + P2;
    2852:	3b e4 db fe 	R3 = [FP + -0x494];
    2856:	fa 2b       	JUMP.S 0x204a <__vfprintf_r+0x996>;
    2858:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x2d( 45) */
    285c:	00 e1 e4 87 	R0.L = 0x87e4;		/* (-30748)	R0=0x87e4(34788) */
    2860:	10 93       	[P2] = R0;
    2862:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    2864:	50 b0       	[P2 + 0x4] = R0;
    2866:	38 e4 da fe 	R0 = [FP + -0x498];
    286a:	08 64       	R0 += 0x1;		/* (  1) */
    286c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    286e:	0b 64       	R3 += 0x1;		/* (  1) */
    2870:	08 09       	CC = R0 <= R1;
    2872:	3b e6 db fe 	[FP + -0x494] = R3;
    2876:	38 e6 da fe 	[FP + -0x498] = R0;
    287a:	71 10       	IF !CC JUMP 0x295c <__vfprintf_r+0x12a8>;
    287c:	42 6c       	P2 += 0x8;		/* (  8) */
    287e:	05 0c       	CC = R5 == 0x0;
    2880:	08 14       	IF !CC JUMP 0x2890 <__vfprintf_r+0x11dc> (BP);
    2882:	38 e4 c6 fe 	R0 = [FP + -0x4e8];
    2886:	00 0c       	CC = R0 == 0x0;
    2888:	04 14       	IF !CC JUMP 0x2890 <__vfprintf_r+0x11dc> (BP);
    288a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    288c:	02 10       	IF !CC JUMP 0x2890 <__vfprintf_r+0x11dc>;
    288e:	31 2b       	JUMP.S 0x1ef0 <__vfprintf_r+0x83c>;
    2890:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2892:	38 e5 c3 fe 	P0 = [FP + -0x4f4];
    2896:	3f e4 da fe 	R7 = [FP + -0x498];
    289a:	38 e4 c1 fe 	R0 = [FP + -0x4fc];
    289e:	0f 64       	R7 += 0x1;		/* (  1) */
    28a0:	c3 50       	R3 = R3 + R0;
    28a2:	0f 09       	CC = R7 <= R1;
    28a4:	50 93       	[P2] = P0;
    28a6:	50 b0       	[P2 + 0x4] = R0;
    28a8:	3b e6 db fe 	[FP + -0x494] = R3;
    28ac:	3f e6 da fe 	[FP + -0x498] = R7;
    28b0:	ba 11       	IF !CC JUMP 0x2c24 <__vfprintf_r+0x1570>;
    28b2:	42 6c       	P2 += 0x8;		/* (  8) */
    28b4:	ad 43       	R5 = -R5;
    28b6:	05 0d       	CC = R5 <= 0x0;
    28b8:	90 18       	IF CC JUMP 0x29d8 <__vfprintf_r+0x1324>;
    28ba:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    28bc:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    28c0:	05 09       	CC = R5 <= R0;
    28c2:	0d e1 5c 89 	P5.L = 0x895c;		/* (-30372)	P5=0x895c <_zeroes.4060> */
    28c6:	2b e1 00 fc 	P3 = -0x400 (X);		/*		P3=0xfffffc00(-1024) */
    28ca:	07 14       	IF !CC JUMP 0x28d8 <__vfprintf_r+0x1224> (BP);
    28cc:	d7 20       	JUMP.S 0x2a7a <__vfprintf_r+0x13c6>;
    28ce:	42 6c       	P2 += 0x8;		/* (  8) */
    28d0:	85 67       	R5 += -0x10;		/* (-16) */
    28d2:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    28d4:	05 09       	CC = R5 <= R0;
    28d6:	d2 18       	IF CC JUMP 0x2a7a <__vfprintf_r+0x13c6>;
    28d8:	0f 64       	R7 += 0x1;		/* (  1) */
    28da:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    28dc:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    28de:	83 64       	R3 += 0x10;		/* ( 16) */
    28e0:	0f 09       	CC = R7 <= R1;
    28e2:	55 93       	[P2] = P5;
    28e4:	50 b0       	[P2 + 0x4] = R0;
    28e6:	3b e6 db fe 	[FP + -0x494] = R3;
    28ea:	3f e6 da fe 	[FP + -0x498] = R7;
    28ee:	f0 1f       	IF CC JUMP 0x28ce <__vfprintf_r+0x121a> (BP);
    28f0:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    28f4:	38 5a       	P0 = P0 + FP;
    28f6:	44 30       	R0 = P4;
    28f8:	0c 30       	R1 = R4;
    28fa:	50 30       	R2 = P0;
    28fc:	00 e3 de 1a 	CALL 0x5eb8 <___sprint_r>;
    2900:	00 0c       	CC = R0 == 0x0;
    2902:	02 1c       	IF CC JUMP 0x2906 <__vfprintf_r+0x1252> (BP);
    2904:	7b 28       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2906:	9f 5a       	P2 = FP + P3;
    2908:	3b e4 db fe 	R3 = [FP + -0x494];
    290c:	3f e4 da fe 	R7 = [FP + -0x498];
    2910:	e0 2f       	JUMP.S 0x28d0 <__vfprintf_r+0x121c>;
    2912:	00 cc 1b c6 	R3 = R3 -|- R3 || [FP + 0x30] = P3 || NOP;
    2916:	3b bf 00 00 
    291a:	39 e4 cc fe 	R1 = [FP + -0x4d0];
    291e:	07 c4 08 00 	R0 = MAX (R1, R0);
    2922:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    2926:	3b e6 c7 fe 	[FP + -0x4e4] = R3;
    292a:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    292e:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    2932:	06 29       	JUMP.S 0x1b3e <__vfprintf_r+0x48a>;
    2934:	20 e1 47 00 	R0 = 0x47 (X);		/*		R0=0x47( 71) */
    2938:	05 09       	CC = R5 <= R0;
    293a:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x895c <_zeroes.4060> */
    293e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x47( 71) */
    2942:	00 e1 ac 87 	R0.L = 0x87ac;		/* (-30804)	R0=0x87ac(34732) */
    2946:	0d e1 b0 87 	P5.L = 0x87b0;		/* (-30800)	P5=0x87b0 */
    294a:	a8 07       	IF CC P5 = R0;
    294c:	3d e7 c8 fe 	[FP + -0x4e0] = P5;
    2950:	3e 4c       	BITCLR (R6, 0x7);		/* bit  7 */
    2952:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    2956:	01 2a       	JUMP.S 0x1d58 <__vfprintf_r+0x6a4>;
    2958:	5a 32       	P3 = P2;
    295a:	70 2c       	JUMP.S 0x223a <__vfprintf_r+0xb86>;
    295c:	5f 30       	R3 = FP;
    295e:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2962:	44 30       	R0 = P4;
    2964:	0c 30       	R1 = R4;
    2966:	93 50       	R2 = R3 + R2;
    2968:	00 e3 a8 1a 	CALL 0x5eb8 <___sprint_r>;
    296c:	00 0c       	CC = R0 == 0x0;
    296e:	02 1c       	IF CC JUMP 0x2972 <__vfprintf_r+0x12be> (BP);
    2970:	45 28       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2972:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2976:	97 5a       	P2 = FP + P2;
    2978:	3d e4 d2 fe 	R5 = [FP + -0x4b8];
    297c:	3b e4 db fe 	R3 = [FP + -0x494];
    2980:	7f 2f       	JUMP.S 0x287e <__vfprintf_r+0x11ca>;
    2982:	5f 30       	R3 = FP;
    2984:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2988:	44 30       	R0 = P4;
    298a:	0c 30       	R1 = R4;
    298c:	93 50       	R2 = R3 + R2;
    298e:	00 e3 95 1a 	CALL 0x5eb8 <___sprint_r>;
    2992:	00 0c       	CC = R0 == 0x0;
    2994:	02 1c       	IF CC JUMP 0x2998 <__vfprintf_r+0x12e4> (BP);
    2996:	32 28       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    2998:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    299c:	97 5a       	P2 = FP + P2;
    299e:	3b e4 db fe 	R3 = [FP + -0x494];
    29a2:	6f 2b       	JUMP.S 0x2080 <__vfprintf_r+0x9cc>;
    29a4:	38 e4 c4 fe 	R0 = [FP + -0x4f0];
    29a8:	3b e4 c8 fe 	R3 = [FP + -0x4e0];
    29ac:	18 52       	R0 = R0 - R3;
    29ae:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    29b2:	b9 28       	JUMP.S 0x1b24 <__vfprintf_r+0x470>;
    29b4:	5f 30       	R3 = FP;
    29b6:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    29ba:	44 30       	R0 = P4;
    29bc:	0c 30       	R1 = R4;
    29be:	93 50       	R2 = R3 + R2;
    29c0:	00 e3 7c 1a 	CALL 0x5eb8 <___sprint_r>;
    29c4:	00 0c       	CC = R0 == 0x0;
    29c6:	02 1c       	IF CC JUMP 0x29ca <__vfprintf_r+0x1316> (BP);
    29c8:	19 28       	JUMP.S 0x19fa <__vfprintf_r+0x346>;
    29ca:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    29ce:	97 5a       	P2 = FP + P2;
    29d0:	3b e4 db fe 	R3 = [FP + -0x494];
    29d4:	3f e4 da fe 	R7 = [FP + -0x498];
    29d8:	38 e5 c8 fe 	P0 = [FP + -0x4e0];
    29dc:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    29e0:	0f 64       	R7 += 0x1;		/* (  1) */
    29e2:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    29e4:	eb 50       	R3 = R3 + R5;
    29e6:	07 09       	CC = R7 <= R0;
    29e8:	50 93       	[P2] = P0;
    29ea:	55 b0       	[P2 + 0x4] = R5;
    29ec:	3b e6 db fe 	[FP + -0x494] = R3;
    29f0:	3f e6 da fe 	[FP + -0x498] = R7;
    29f4:	02 10       	IF !CC JUMP 0x29f8 <__vfprintf_r+0x1344>;
    29f6:	7c 2a       	JUMP.S 0x1eee <__vfprintf_r+0x83a>;
    29f8:	ed 2a       	JUMP.S 0x1fd2 <__vfprintf_r+0x91e>;
    29fa:	3a e7 ba fe 	[FP + -0x518] = P2;
    29fe:	00 e3 15 1a 	CALL 0x5e28 <_strlen>;
    2a02:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2a06:	39 e4 cc fe 	R1 = [FP + -0x4d0];
    2a0a:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP + 0x30] = P3 || NOP;
    2a0e:	3b bf 00 00 
    2a12:	07 c4 08 00 	R0 = MAX (R1, R0);
    2a16:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    2a18:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    2a1c:	3b e6 c7 fe 	[FP + -0x4e4] = R3;
    2a20:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    2a24:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    2a28:	3a e5 ba fe 	P2 = [FP + -0x518];
    2a2c:	89 28       	JUMP.S 0x1b3e <__vfprintf_r+0x48a>;
    2a2e:	5f 30       	R3 = FP;
    2a30:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2a34:	44 30       	R0 = P4;
    2a36:	0c 30       	R1 = R4;
    2a38:	93 50       	R2 = R3 + R2;
    2a3a:	00 e3 3f 1a 	CALL 0x5eb8 <___sprint_r>;
    2a3e:	00 0c       	CC = R0 == 0x0;
    2a40:	03 1c       	IF CC JUMP 0x2a46 <__vfprintf_r+0x1392> (BP);
    2a42:	ff e2 dc f7 	JUMP.L 0x19fa <__vfprintf_r+0x346>;
    2a46:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2a4a:	97 5a       	P2 = FP + P2;
    2a4c:	3b e4 db fe 	R3 = [FP + -0x494];
    2a50:	91 2c       	JUMP.S 0x2372 <__vfprintf_r+0xcbe>;
    2a52:	5f 30       	R3 = FP;
    2a54:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2a58:	44 30       	R0 = P4;
    2a5a:	0c 30       	R1 = R4;
    2a5c:	93 50       	R2 = R3 + R2;
    2a5e:	00 e3 2d 1a 	CALL 0x5eb8 <___sprint_r>;
    2a62:	00 0c       	CC = R0 == 0x0;
    2a64:	03 1c       	IF CC JUMP 0x2a6a <__vfprintf_r+0x13b6> (BP);
    2a66:	ff e2 ca f7 	JUMP.L 0x19fa <__vfprintf_r+0x346>;
    2a6a:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2a6e:	97 5a       	P2 = FP + P2;
    2a70:	39 e4 d2 fe 	R1 = [FP + -0x4b8];
    2a74:	3b e4 db fe 	R3 = [FP + -0x494];
    2a78:	44 2d       	JUMP.S 0x2500 <__vfprintf_r+0xe4c>;
    2a7a:	0f 64       	R7 += 0x1;		/* (  1) */
    2a7c:	39 60       	R1 = 0x7 (X);		/*		R1=0x7(  7) */
    2a7e:	eb 50       	R3 = R3 + R5;
    2a80:	0f 09       	CC = R7 <= R1;
    2a82:	55 93       	[P2] = P5;
    2a84:	55 b0       	[P2 + 0x4] = R5;
    2a86:	3b e6 db fe 	[FP + -0x494] = R3;
    2a8a:	3f e6 da fe 	[FP + -0x498] = R7;
    2a8e:	93 13       	IF !CC JUMP 0x29b4 <__vfprintf_r+0x1300>;
    2a90:	42 6c       	P2 += 0x8;		/* (  8) */
    2a92:	a3 2f       	JUMP.S 0x29d8 <__vfprintf_r+0x1324>;
    2a94:	5f 30       	R3 = FP;
    2a96:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2a9a:	44 30       	R0 = P4;
    2a9c:	0c 30       	R1 = R4;
    2a9e:	93 50       	R2 = R3 + R2;
    2aa0:	00 e3 0c 1a 	CALL 0x5eb8 <___sprint_r>;
    2aa4:	00 0c       	CC = R0 == 0x0;
    2aa6:	03 1c       	IF CC JUMP 0x2aac <__vfprintf_r+0x13f8> (BP);
    2aa8:	ff e2 a9 f7 	JUMP.L 0x19fa <__vfprintf_r+0x346>;
    2aac:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2ab0:	97 5a       	P2 = FP + P2;
    2ab2:	39 e4 d2 fe 	R1 = [FP + -0x4b8];
    2ab6:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    2aba:	4d 52       	R1 = R5 - R1;
    2abc:	3b e4 db fe 	R3 = [FP + -0x494];
    2ac0:	3a 2d       	JUMP.S 0x2534 <__vfprintf_r+0xe80>;
    2ac2:	37 0e       	CC = R7 <= 0x6 (IU);
    2ac4:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
    2ac6:	07 07       	IF CC R0 = R7;
    2ac8:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2acc:	39 e4 cc fe 	R1 = [FP + -0x4d0];
    2ad0:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP + 0x30] = P3 || NOP;
    2ad4:	3b bf 00 00 
    2ad8:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0xfb64 */
    2adc:	07 c4 08 00 	R0 = MAX (R1, R0);
    2ae0:	08 e1 dc 87 	P0.L = 0x87dc;		/* (-30756)	P0=0x87dc */
    2ae4:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    2ae8:	38 e7 c8 fe 	[FP + -0x4e0] = P0;
    2aec:	ff e2 9e f6 	JUMP.L 0x1828 <__vfprintf_r+0x174>;
    2af0:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
    2af2:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    2af6:	3e e4 ca fe 	R6 = [FP + -0x4d8];
    2afa:	39 e7 c7 fe 	[FP + -0x4e4] = P1;
    2afe:	20 28       	JUMP.S 0x1b3e <__vfprintf_r+0x48a>;
    2b00:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
    2b02:	b8 e6 43 fb 	B[FP + -0x4bd] = R0;
    2b06:	1a 29       	JUMP.S 0x1d3a <__vfprintf_r+0x686>;
    2b08:	38 e4 d2 fe 	R0 = [FP + -0x4b8];
    2b0c:	a8 0c       	CC = R0 < -0x3;
    2b0e:	08 30       	R1 = R0;
    2b10:	03 1c       	IF CC JUMP 0x2b16 <__vfprintf_r+0x1462> (BP);
    2b12:	87 08       	CC = R7 < R0;
    2b14:	39 14       	IF !CC JUMP 0x2b86 <__vfprintf_r+0x14d2> (BP);
    2b16:	f5 67       	R5 += -0x2;		/* ( -2) */
    2b18:	39 30       	R7 = R1;
    2b1a:	ff 67       	R7 += -0x1;		/* ( -1) */
    2b1c:	87 0c       	CC = R7 < 0x0;
    2b1e:	3f e6 d2 fe 	[FP + -0x4b8] = R7;
    2b22:	bd e6 54 fb 	B[FP + -0x4ac] = R5;
    2b26:	4a 19       	IF CC JUMP 0x2dba <__vfprintf_r+0x1706>;
    2b28:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
    2b2a:	b8 e6 55 fb 	B[FP + -0x4ab] = R0;
    2b2e:	4b 60       	R3 = 0x9 (X);		/*		R3=0x9(  9) */
    2b30:	1f 09       	CC = R7 <= R3;
    2b32:	b2 14       	IF !CC JUMP 0x2c96 <__vfprintf_r+0x15e2> (BP);
    2b34:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    2b36:	87 65       	R7 += 0x30;		/* ( 48) */
    2b38:	29 e1 58 fb 	P1 = -0x4a8 (X);		/*		P1=0xfffffb58(-1192) */
    2b3c:	b8 e6 56 fb 	B[FP + -0x4aa] = R0;
    2b40:	bf e6 57 fb 	B[FP + -0x4a9] = R7;
    2b44:	4f 5a       	P1 = FP + P1;
    2b46:	28 e1 54 fb 	P0 = -0x4ac (X);		/*		P0=0xfffffb54(-1196) */
    2b4a:	07 5a       	P0 = FP + P0;
    2b4c:	01 44       	P1 -= P0;
    2b4e:	59 30       	R3 = P1;
    2b50:	38 e4 c6 fe 	R0 = [FP + -0x4e8];
    2b54:	18 50       	R0 = R0 + R3;
    2b56:	3b e4 c6 fe 	R3 = [FP + -0x4e8];
    2b5a:	0b 0d       	CC = R3 <= 0x1;
    2b5c:	39 e7 be fe 	[FP + -0x508] = P1;
    2b60:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2b64:	30 19       	IF CC JUMP 0x2dc4 <__vfprintf_r+0x1710>;
    2b66:	38 e4 cc fe 	R0 = [FP + -0x4d0];
    2b6a:	08 64       	R0 += 0x1;		/* (  1) */
    2b6c:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2b70:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2b72:	39 e4 cc fe 	R1 = [FP + -0x4d0];
    2b76:	07 c4 08 00 	R0 = MAX (R1, R0);
    2b7a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    2b7c:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    2b80:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    2b84:	1f 2e       	JUMP.S 0x27c2 <__vfprintf_r+0x110e>;
    2b86:	3d e4 c6 fe 	R5 = [FP + -0x4e8];
    2b8a:	a8 08       	CC = R0 < R5;
    2b8c:	6a 1c       	IF CC JUMP 0x2c60 <__vfprintf_r+0x15ac> (BP);
    2b8e:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    2b90:	de 14       	IF !CC JUMP 0x2d4c <__vfprintf_r+0x1698> (BP);
    2b92:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2b94:	07 c4 01 02 	R1 = MAX (R0, R1);
    2b98:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    2b9c:	38 e6 cc fe 	[FP + -0x4d0] = R0;
    2ba0:	25 e1 67 00 	R5 = 0x67 (X);		/*		R5=0x67(103) */
    2ba4:	0d 2e       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2ba6:	29 e1 48 fb 	P1 = -0x4b8 (X);		/*		P1=0xfffffb48(-1208) */
    2baa:	4f 5a       	P1 = FP + P1;
    2bac:	71 bd       	[SP + 0x14] = P1;
    2bae:	29 e1 4c fb 	P1 = -0x4b4 (X);		/*		P1=0xfffffb4c(-1204) */
    2bb2:	4f 5a       	P1 = FP + P1;
    2bb4:	b1 bd       	[SP + 0x18] = P1;
    2bb6:	29 e1 50 fb 	P1 = -0x4b0 (X);		/*		P1=0xfffffb50(-1200) */
    2bba:	4f 5a       	P1 = FP + P1;
    2bbc:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    2bbe:	f0 b0       	[SP + 0xc] = R0;
    2bc0:	f1 bd       	[SP + 0x1c] = P1;
    2bc2:	82 ce 03 c2 	R1 = ROT R3 BY 0x0 || [SP + 0x10] = R7 || NOP;
    2bc6:	37 b1 00 00 
    2bca:	44 30       	R0 = P4;
    2bcc:	53 30       	R2 = P3;
    2bce:	3b e6 bb fe 	[FP + -0x514] = R3;
    2bd2:	3a e7 ba fe 	[FP + -0x518] = P2;
    2bd6:	00 e3 c5 02 	CALL 0x3160 <__dtoa_r>;
    2bda:	28 32       	P5 = R0;
    2bdc:	07 32       	P0 = R7;
    2bde:	38 e6 c8 fe 	[FP + -0x4e0] = R0;
    2be2:	3b e4 bb fe 	R3 = [FP + -0x514];
    2be6:	3a e5 ba fe 	P2 = [FP + -0x518];
    2bea:	45 5a       	P1 = P5 + P0;
    2bec:	3d e5 c8 fe 	P5 = [FP + -0x4e0];
    2bf0:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
    2bf2:	68 99       	R0 = B[P5] (X);
    2bf4:	08 08       	CC = R0 == R1;
    2bf6:	8a 18       	IF CC JUMP 0x2d0a <__vfprintf_r+0x1656>;
    2bf8:	38 e5 d2 fe 	P0 = [FP + -0x4b8];
    2bfc:	41 5a       	P1 = P1 + P0;
    2bfe:	a0 2d       	JUMP.S 0x273e <__vfprintf_r+0x108a>;
    2c00:	07 cc 38 00 	R0 = MAX (R7, R0) || [FP + 0x30] = P3 || NOP;
    2c04:	3b bf 00 00 
    2c08:	01 68       	P1 = 0x0 (X);		/*		P1=0x0(  0) */
    2c0a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    2c0c:	38 e6 ce fe 	[FP + -0x4c8] = R0;
    2c10:	3f e6 cc fe 	[FP + -0x4d0] = R7;
    2c14:	b8 e5 43 fb 	R0 = B[FP + -0x4bd] (X);
    2c18:	39 e7 c7 fe 	[FP + -0x4e4] = P1;
    2c1c:	3b e6 c2 fe 	[FP + -0x4f8] = R3;
    2c20:	ff e2 8f f7 	JUMP.L 0x1b3e <__vfprintf_r+0x48a>;
    2c24:	5f 30       	R3 = FP;
    2c26:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    2c2a:	44 30       	R0 = P4;
    2c2c:	0c 30       	R1 = R4;
    2c2e:	93 50       	R2 = R3 + R2;
    2c30:	00 e3 44 19 	CALL 0x5eb8 <___sprint_r>;
    2c34:	00 0c       	CC = R0 == 0x0;
    2c36:	03 1c       	IF CC JUMP 0x2c3c <__vfprintf_r+0x1588> (BP);
    2c38:	ff e2 e1 f6 	JUMP.L 0x19fa <__vfprintf_r+0x346>;
    2c3c:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    2c40:	97 5a       	P2 = FP + P2;
    2c42:	3d e4 d2 fe 	R5 = [FP + -0x4b8];
    2c46:	3b e4 db fe 	R3 = [FP + -0x494];
    2c4a:	3f e4 da fe 	R7 = [FP + -0x498];
    2c4e:	33 2e       	JUMP.S 0x28b4 <__vfprintf_r+0x1200>;
    2c50:	07 0c       	CC = R7 == 0x0;
    2c52:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    2c54:	38 07       	IF CC R7 = R0;
    2c56:	1d 2d       	JUMP.S 0x2690 <__vfprintf_r+0xfdc>;
    2c58:	37 60       	R7 = 0x6 (X);		/*		R7=0x6(  6) */
    2c5a:	1b 2d       	JUMP.S 0x2690 <__vfprintf_r+0xfdc>;
    2c5c:	08 6c       	P0 += 0x1;		/* (  1) */
    2c5e:	39 2d       	JUMP.S 0x26d0 <__vfprintf_r+0x101c>;
    2c60:	00 0d       	CC = R0 <= 0x0;
    2c62:	b4 18       	IF CC JUMP 0x2dca <__vfprintf_r+0x1716>;
    2c64:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    2c66:	3b e4 c6 fe 	R3 = [FP + -0x4e8];
    2c6a:	59 50       	R1 = R1 + R3;
    2c6c:	39 e6 cc fe 	[FP + -0x4d0] = R1;
    2c70:	3d e4 cc fe 	R5 = [FP + -0x4d0];
    2c74:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2c76:	07 c4 29 02 	R1 = MAX (R5, R1);
    2c7a:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    2c7e:	25 e1 67 00 	R5 = 0x67 (X);		/*		R5=0x67(103) */
    2c82:	9e 2d       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2c84:	f8 4b       	BITTGL (R0, 0x1f);		/* bit 31 */
    2c86:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
    2c88:	18 32       	P3 = R0;
    2c8a:	b9 e6 24 fb 	B[FP + -0x4dc] = R1;
    2c8e:	0c 2d       	JUMP.S 0x26a6 <__vfprintf_r+0xff2>;
    2c90:	39 e5 d4 fe 	P1 = [FP + -0x4b0];
    2c94:	71 2d       	JUMP.S 0x2776 <__vfprintf_r+0x10c2>;
    2c96:	29 e1 62 fb 	P1 = -0x49e (X);		/*		P1=0xfffffb62(-1182) */
    2c9a:	4f 5a       	P1 = FP + P1;
    2c9c:	14 30       	R2 = R4;
    2c9e:	69 32       	P5 = P1;
    2ca0:	26 30       	R4 = R6;
    2ca2:	72 30       	R6 = P2;
    2ca4:	07 30       	R0 = R7;
    2ca6:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    2ca8:	3a e6 bb fe 	[FP + -0x514] = R2;
    2cac:	00 e3 3e 26 	CALL 0x7928 <___modsi3>;
    2cb0:	80 65       	R0 += 0x30;		/* ( 48) */
    2cb2:	28 9b       	B[P5] = R0;
    2cb4:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    2cb6:	07 30       	R0 = R7;
    2cb8:	00 e3 14 26 	CALL 0x78e0 <___divsi3>;
    2cbc:	38 30       	R7 = R0;
    2cbe:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
    2cc0:	07 09       	CC = R7 <= R0;
    2cc2:	5d 32       	P3 = P5;
    2cc4:	3a e4 bb fe 	R2 = [FP + -0x514];
    2cc8:	fd 6f       	P5 += -0x1;		/* ( -1) */
    2cca:	ed 17       	IF !CC JUMP 0x2ca4 <__vfprintf_r+0x15f0> (BP);
    2ccc:	28 e1 63 fb 	P0 = -0x49d (X);		/*		P0=0xfffffb63(-1181) */
    2cd0:	4d 32       	P1 = P5;
    2cd2:	47 5b       	P5 = FP + P0;
    2cd4:	87 65       	R7 += 0x30;		/* ( 48) */
    2cd6:	4d 0a       	CC = P5 <= P1 (IU);
    2cd8:	16 32       	P2 = R6;
    2cda:	9f e6 ff ff 	B[P3 + -0x1] = R7;
    2cde:	34 30       	R6 = R4;
    2ce0:	22 30       	R4 = R2;
    2ce2:	77 18       	IF CC JUMP 0x2dd0 <__vfprintf_r+0x171c>;
    2ce4:	28 e1 56 fb 	P0 = -0x4aa (X);		/*		P0=0xfffffb56(-1194) */
    2ce8:	4b 32       	P1 = P3;
    2cea:	07 5a       	P0 = FP + P0;
    2cec:	03 20       	JUMP.S 0x2cf2 <__vfprintf_r+0x163e>;
    2cee:	00 00       	NOP;
    2cf0:	4f 98       	R7 = B[P1++] (X);
    2cf2:	69 08       	CC = P1 == P5;
    2cf4:	07 9a       	B[P0++] = R7;
    2cf6:	fc 17       	IF !CC JUMP 0x2cee <__vfprintf_r+0x163a> (BP);
    2cf8:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    2cfc:	29 e1 56 fb 	P1 = -0x4aa (X);		/*		P1=0xfffffb56(-1194) */
    2d00:	07 5a       	P0 = FP + P0;
    2d02:	4f 5a       	P1 = FP + P1;
    2d04:	18 44       	P0 -= P3;
    2d06:	41 5a       	P1 = P1 + P0;
    2d08:	1f 2f       	JUMP.S 0x2b46 <__vfprintf_r+0x1492>;
    2d0a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2d0c:	f0 b0       	[SP + 0xc] = R0;
    2d0e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    2d10:	03 30       	R0 = R3;
    2d12:	4b 30       	R1 = P3;
    2d14:	3b e6 bb fe 	[FP + -0x514] = R3;
    2d18:	38 e7 b9 fe 	[FP + -0x51c] = P0;
    2d1c:	39 e7 b8 fe 	[FP + -0x520] = P1;
    2d20:	3a e7 ba fe 	[FP + -0x518] = P2;
    2d24:	00 e3 92 29 	CALL 0x8048 <___nedf2>;
    2d28:	00 0c       	CC = R0 == 0x0;
    2d2a:	3b e4 bb fe 	R3 = [FP + -0x514];
    2d2e:	38 e5 b9 fe 	P0 = [FP + -0x51c];
    2d32:	39 e5 b8 fe 	P1 = [FP + -0x520];
    2d36:	3a e5 ba fe 	P2 = [FP + -0x518];
    2d3a:	5f 1f       	IF CC JUMP 0x2bf8 <__vfprintf_r+0x1544> (BP);
    2d3c:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    2d3e:	28 32       	P5 = R0;
    2d40:	05 44       	P5 -= P0;
    2d42:	45 32       	P0 = P5;
    2d44:	3d e7 d2 fe 	[FP + -0x4b8] = P5;
    2d48:	41 5a       	P1 = P1 + P0;
    2d4a:	fa 2c       	JUMP.S 0x273e <__vfprintf_r+0x108a>;
    2d4c:	00 32       	P0 = R0;
    2d4e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2d50:	25 e1 67 00 	R5 = 0x67 (X);		/*		R5=0x67(103) */
    2d54:	08 6c       	P0 += 0x1;		/* (  1) */
    2d56:	50 30       	R2 = P0;
    2d58:	07 c4 11 02 	R1 = MAX (R2, R1);
    2d5c:	38 e7 cc fe 	[FP + -0x4d0] = P0;
    2d60:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    2d64:	2d 2d       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2d66:	0f 64       	R7 += 0x1;		/* (  1) */
    2d68:	f8 51       	R7 = R0 + R7;
    2d6a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2d6c:	07 c4 39 02 	R1 = MAX (R7, R1);
    2d70:	3f e6 cc fe 	[FP + -0x4d0] = R7;
    2d74:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    2d78:	23 2d       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2d7a:	07 0c       	CC = R7 == 0x0;
    2d7c:	16 14       	IF !CC JUMP 0x2da8 <__vfprintf_r+0x16f4> (BP);
    2d7e:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    2d80:	14 14       	IF !CC JUMP 0x2da8 <__vfprintf_r+0x16f4> (BP);
    2d82:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    2d84:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    2d86:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    2d8a:	38 e7 cc fe 	[FP + -0x4d0] = P0;
    2d8e:	18 2d       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2d90:	3d af       	P5 = [FP + 0x30];
    2d92:	3b a3       	R3 = [FP + 0x30];
    2d94:	23 64       	R3 += 0x4;		/* (  4) */
    2d96:	2f 91       	R7 = [P5];
    2d98:	87 0c       	CC = R7 < 0x0;
    2d9a:	03 18       	IF CC JUMP 0x2da0 <__vfprintf_r+0x16ec>;
    2d9c:	ff e2 8d f6 	JUMP.L 0x1ab6 <__vfprintf_r+0x402>;
    2da0:	3b b3       	[FP + 0x30] = R3;
    2da2:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    2da4:	ff e2 26 f5 	JUMP.L 0x17f0 <__vfprintf_r+0x13c>;
    2da8:	17 64       	R7 += 0x2;		/* (  2) */
    2daa:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    2dac:	07 c4 39 02 	R1 = MAX (R7, R1);
    2db0:	3f e6 cc fe 	[FP + -0x4d0] = R7;
    2db4:	39 e6 ce fe 	[FP + -0x4c8] = R1;
    2db8:	03 2d       	JUMP.S 0x27be <__vfprintf_r+0x110a>;
    2dba:	68 61       	R0 = 0x2d (X);		/*		R0=0x2d( 45) */
    2dbc:	bf 43       	R7 = -R7;
    2dbe:	b8 e6 55 fb 	B[FP + -0x4ab] = R0;
    2dc2:	b6 2e       	JUMP.S 0x2b2e <__vfprintf_r+0x147a>;
    2dc4:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    2dc6:	d0 16       	IF !CC JUMP 0x2b66 <__vfprintf_r+0x14b2> (BP);
    2dc8:	d4 2e       	JUMP.S 0x2b70 <__vfprintf_r+0x14bc>;
    2dca:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    2dcc:	41 52       	R1 = R1 - R0;
    2dce:	4c 2f       	JUMP.S 0x2c66 <__vfprintf_r+0x15b2>;
    2dd0:	29 e1 56 fb 	P1 = -0x4aa (X);		/*		P1=0xfffffb56(-1194) */
    2dd4:	4f 5a       	P1 = FP + P1;
    2dd6:	b8 2e       	JUMP.S 0x2b46 <__vfprintf_r+0x1492>;
    2dd8:	39 e4 d2 fe 	R1 = [FP + -0x4b8];
    2ddc:	9e 2e       	JUMP.S 0x2b18 <__vfprintf_r+0x1464>;
    2dde:	48 32       	P1 = P0;
    2de0:	cb 2c       	JUMP.S 0x2776 <__vfprintf_r+0x10c2>;
	...

00002de4 <_vfprintf>:
    2de4:	10 32       	P2 = R0;
    2de6:	49 e1 00 00 	P1.H = 0x0;		/* (  0)	P1=0xfb56 */
    2dea:	00 e8 04 00 	LINK 0x10;		/* (16) */
    2dee:	82 ce 01 c6 	R3 = ROT R1 BY 0x0 || [SP + 0xc] = R2 || NOP;
    2df2:	f2 b0 00 00 
    2df6:	09 e1 08 90 	P1.L = 0x9008;		/* (-28664)	P1=0x9008 <__impure_ptr> */
    2dfa:	08 91       	R0 = [P1];
    2dfc:	4a 30       	R1 = P2;
    2dfe:	13 30       	R2 = R3;
    2e00:	ff e3 5a f4 	CALL 0x16b4 <__vfprintf_r>;
    2e04:	01 e8 00 00 	UNLINK;
    2e08:	10 00       	RTS;
	...

00002e0c <___swsetup_r>:
    2e0c:	c4 04       	[--SP] = (P5:4);
    2e0e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0xfc00 */
    2e12:	00 e8 03 00 	LINK 0xc;		/* (12) */
    2e16:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    2e1a:	52 91       	P2 = [P2];
    2e1c:	20 32       	P4 = R0;
    2e1e:	29 32       	P5 = R1;
    2e20:	42 0c       	CC = P2 == 0x0;
    2e22:	06 18       	IF CC JUMP 0x2e2e <___swsetup_r+0x22>;
    2e24:	90 a3       	R0 = [P2 + 0x38];
    2e26:	00 0c       	CC = R0 == 0x0;
    2e28:	48 18       	IF CC JUMP 0x2eb8 <___swsetup_r+0xac>;
    2e2a:	00 00       	NOP;
    2e2c:	00 00       	NOP;
    2e2e:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
    2e30:	aa a9       	R2 = W[P5 + 0xc] (X);
    2e32:	4a 54       	R1 = R2 & R1;
    2e34:	89 42       	R1 = R1.L (X);
    2e36:	01 0c       	CC = R1 == 0x0;
    2e38:	12 1c       	IF CC JUMP 0x2e5c <___swsetup_r+0x50> (BP);
    2e3a:	29 a1       	R1 = [P5 + 0x10];
    2e3c:	01 0c       	CC = R1 == 0x0;
    2e3e:	1e 18       	IF CC JUMP 0x2e7a <___swsetup_r+0x6e>;
    2e40:	02 48       	CC = !BITTST (R2, 0x0);		/* bit  0 */
    2e42:	2a 1c       	IF CC JUMP 0x2e96 <___swsetup_r+0x8a> (BP);
    2e44:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2e46:	a8 b0       	[P5 + 0x8] = R0;
    2e48:	68 a1       	R0 = [P5 + 0x14];
    2e4a:	80 43       	R0 = -R0;
    2e4c:	01 0c       	CC = R1 == 0x0;
    2e4e:	a8 b1       	[P5 + 0x18] = R0;
    2e50:	2c 18       	IF CC JUMP 0x2ea8 <___swsetup_r+0x9c>;
    2e52:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2e54:	01 e8 00 00 	UNLINK;
    2e58:	84 04       	(P5:4) = [SP++];
    2e5a:	10 00       	RTS;
    2e5c:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    2e5e:	02 54       	R0 = R2 & R0;
    2e60:	80 42       	R0 = R0.L (X);
    2e62:	00 0c       	CC = R0 == 0x0;
    2e64:	4a 18       	IF CC JUMP 0x2ef8 <___swsetup_r+0xec>;
    2e66:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    2e68:	02 54       	R0 = R2 & R0;
    2e6a:	80 42       	R0 = R0.L (X);
    2e6c:	00 0c       	CC = R0 == 0x0;
    2e6e:	2c 14       	IF !CC JUMP 0x2ec6 <___swsetup_r+0xba> (BP);
    2e70:	29 a1       	R1 = [P5 + 0x10];
    2e72:	1a 4a       	BITSET (R2, 0x3);		/* bit  3 */
    2e74:	01 0c       	CC = R1 == 0x0;
    2e76:	aa b5       	W[P5 + 0xc] = R2;
    2e78:	e4 17       	IF !CC JUMP 0x2e40 <___swsetup_r+0x34> (BP);
    2e7a:	20 e1 80 02 	R0 = 0x280 (X);		/*		R0=0x280(640) */
    2e7e:	02 54       	R0 = R2 & R0;
    2e80:	23 e1 00 02 	R3 = 0x200 (X);		/*		R3=0x200(512) */
    2e84:	18 08       	CC = R0 == R3;
    2e86:	dd 1b       	IF CC JUMP 0x2e40 <___swsetup_r+0x34>;
    2e88:	4d 30       	R1 = P5;
    2e8a:	44 30       	R0 = P4;
    2e8c:	00 e3 c0 0d 	CALL 0x4a0c <___smakebuf_r>;
    2e90:	aa a9       	R2 = W[P5 + 0xc] (X);
    2e92:	29 a1       	R1 = [P5 + 0x10];
    2e94:	d6 2f       	JUMP.S 0x2e40 <___swsetup_r+0x34>;
    2e96:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    2e98:	82 54       	R2 = R2 & R0;
    2e9a:	92 42       	R2 = R2.L (X);
    2e9c:	02 0c       	CC = R2 == 0x0;
    2e9e:	11 14       	IF !CC JUMP 0x2ec0 <___swsetup_r+0xb4> (BP);
    2ea0:	68 a1       	R0 = [P5 + 0x14];
    2ea2:	a8 b0       	[P5 + 0x8] = R0;
    2ea4:	01 0c       	CC = R1 == 0x0;
    2ea6:	d6 17       	IF !CC JUMP 0x2e52 <___swsetup_r+0x46> (BP);
    2ea8:	a9 a9       	R1 = W[P5 + 0xc] (X);
    2eaa:	39 48       	CC = !BITTST (R1, 0x7);		/* bit  7 */
    2eac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2eae:	d3 1f       	IF CC JUMP 0x2e54 <___swsetup_r+0x48> (BP);
    2eb0:	31 4a       	BITSET (R1, 0x6);		/* bit  6 */
    2eb2:	a9 b5       	W[P5 + 0xc] = R1;
    2eb4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    2eb6:	cf 2f       	JUMP.S 0x2e54 <___swsetup_r+0x48>;
    2eb8:	42 30       	R0 = P2;
    2eba:	00 e3 95 0a 	CALL 0x43e4 <___sinit>;
    2ebe:	b8 2f       	JUMP.S 0x2e2e <___swsetup_r+0x22>;
    2ec0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2ec2:	a8 b0       	[P5 + 0x8] = R0;
    2ec4:	f0 2f       	JUMP.S 0x2ea4 <___swsetup_r+0x98>;
    2ec6:	00 00       	NOP;
    2ec8:	29 a3       	R1 = [P5 + 0x30];
    2eca:	01 0c       	CC = R1 == 0x0;
    2ecc:	0d 18       	IF CC JUMP 0x2ee6 <___swsetup_r+0xda>;
    2ece:	5d 30       	R3 = P5;
    2ed0:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40 <_.tmp>( 64) */
    2ed4:	03 50       	R0 = R3 + R0;
    2ed6:	01 08       	CC = R1 == R0;
    2ed8:	05 18       	IF CC JUMP 0x2ee2 <___swsetup_r+0xd6>;
    2eda:	44 30       	R0 = P4;
    2edc:	00 e3 a8 0b 	CALL 0x462c <__free_r>;
    2ee0:	aa a9       	R2 = W[P5 + 0xc] (X);
    2ee2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2ee4:	28 b3       	[P5 + 0x30] = R0;
    2ee6:	d8 62       	R0 = -0x25 (X);		/*		R0=0xffffffdb(-37) */
    2ee8:	82 54       	R2 = R2 & R0;
    2eea:	29 a1       	R1 = [P5 + 0x10];
    2eec:	00 cc 00 c0 	R0 = R0 -|- R0 || [P5] = R1 || NOP;
    2ef0:	29 93 00 00 
    2ef4:	68 b0       	[P5 + 0x4] = R0;
    2ef6:	be 2f       	JUMP.S 0x2e72 <___swsetup_r+0x66>;
    2ef8:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
    2efa:	32 4a       	BITSET (R2, 0x6);		/* bit  6 */
    2efc:	20 93       	[P4] = R0;
    2efe:	aa b5       	W[P5 + 0xc] = R2;
    2f00:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    2f02:	a9 2f       	JUMP.S 0x2e54 <___swsetup_r+0x48>;

00002f04 <___call_exitprocs>:
    2f04:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    2f08:	0a e1 9c 87 	P2.L = 0x879c;		/* (-30820)	P2=0x879c <__global_impure_ptr> */
    2f0c:	52 91       	P2 = [P2];
    2f0e:	e3 05       	[--SP] = (R7:4, P5:3);
    2f10:	00 e8 07 00 	LINK 0x1c;		/* (28) */
    2f14:	78 b2       	[FP + 0x24] = R0;
    2f16:	21 30       	R4 = R1;
    2f18:	20 e1 48 01 	R0 = 0x148 (X);		/*		R0=0x148(328) */
    2f1c:	4a 30       	R1 = P2;
    2f1e:	01 50       	R0 = R1 + R0;
    2f20:	e0 bb       	[FP -0x8] = R0;
    2f22:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x148(328) */
    2f26:	00 e1 00 00 	R0.L = 0x0;		/* (  0)	R0=0x0(  0) */
    2f2a:	00 0c       	CC = R0 == 0x0;
    2f2c:	00 02       	R0 = CC;
    2f2e:	fa bb       	[FP -0x4] = P2;
    2f30:	b8 e6 f7 ff 	B[FP + -0x9] = R0;
    2f34:	f9 b9       	P1 = [FP -0x4];
    2f36:	ec b9       	P4 = [FP -0x8];
    2f38:	0b e5 52 00 	P3 = [P1 + 0x148];
    2f3c:	43 0c       	CC = P3 == 0x0;
    2f3e:	47 18       	IF CC JUMP 0x2fcc <___call_exitprocs+0xc8>;
    2f40:	5a ac       	P2 = [P3 + 0x4];
    2f42:	7a 30       	R7 = P2;
    2f44:	ff 67       	R7 += -0x1;		/* ( -1) */
    2f46:	87 0c       	CC = R7 < 0x0;
    2f48:	3e 18       	IF CC JUMP 0x2fc4 <___call_exitprocs+0xc0>;
    2f4a:	29 e1 88 00 	P1 = 0x88 (X);		/*		P1=0x88(136) */
    2f4e:	4b 5b       	P5 = P3 + P1;
    2f50:	4a 32       	P1 = P2;
    2f52:	f9 6c       	P1 += 0x1f;		/* ( 31) */
    2f54:	0a 6c       	P2 += 0x1;		/* (  1) */
    2f56:	04 0c       	CC = R4 == 0x0;
    2f58:	4d 5f       	P5 = P5 + (P1 << 0x2);
    2f5a:	93 5e       	P2 = P3 + (P2 << 0x2);
    2f5c:	05 02       	R5 = CC;
    2f5e:	09 20       	JUMP.S 0x2f70 <___call_exitprocs+0x6c>;
    2f60:	29 91       	R1 = [P5];
    2f62:	21 08       	CC = R1 == R4;
    2f64:	08 18       	IF CC JUMP 0x2f74 <___call_exitprocs+0x70>;
    2f66:	ff 67       	R7 += -0x1;		/* ( -1) */
    2f68:	3f 0c       	CC = R7 == -0x1;
    2f6a:	e5 6f       	P5 += -0x4;		/* ( -4) */
    2f6c:	e2 6f       	P2 += -0x4;		/* ( -4) */
    2f6e:	2b 18       	IF CC JUMP 0x2fc4 <___call_exitprocs+0xc0>;
    2f70:	0d 02       	CC = R5;
    2f72:	f7 17       	IF !CC JUMP 0x2f60 <___call_exitprocs+0x5c> (BP);
    2f74:	58 a0       	R0 = [P3 + 0x4];
    2f76:	f8 67       	R0 += -0x1;		/* ( -1) */
    2f78:	38 08       	CC = R0 == R7;
    2f7a:	51 91       	P1 = [P2];
    2f7c:	30 18       	IF CC JUMP 0x2fdc <___call_exitprocs+0xd8>;
    2f7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    2f80:	10 93       	[P2] = R0;
    2f82:	41 0c       	CC = P1 == 0x0;
    2f84:	f1 1b       	IF CC JUMP 0x2f66 <___call_exitprocs+0x62>;
    2f86:	00 00       	NOP;
    2f88:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    2f8a:	b8 40       	R0 <<= R7;
    2f8c:	19 e4 62 00 	R1 = [P3 + 0x188];
    2f90:	48 54       	R1 = R0 & R1;
    2f92:	01 0c       	CC = R1 == 0x0;
    2f94:	5e a0       	R6 = [P3 + 0x4];
    2f96:	1f 1c       	IF CC JUMP 0x2fd4 <___call_exitprocs+0xd0> (BP);
    2f98:	19 e4 63 00 	R1 = [P3 + 0x18c];
    2f9c:	08 54       	R0 = R0 & R1;
    2f9e:	00 0c       	CC = R0 == 0x0;
    2fa0:	20 14       	IF !CC JUMP 0x2fe0 <___call_exitprocs+0xdc> (BP);
    2fa2:	29 e4 e0 ff 	R1 = [P5 + -0x80];
    2fa6:	78 a2       	R0 = [FP + 0x24];
    2fa8:	ca bb       	[FP -0x10] = P2;
    2faa:	61 00       	CALL (P1);
    2fac:	ca b9       	P2 = [FP -0x10];
    2fae:	59 a0       	R1 = [P3 + 0x4];
    2fb0:	31 08       	CC = R1 == R6;
    2fb2:	c1 13       	IF !CC JUMP 0x2f34 <___call_exitprocs+0x30>;
    2fb4:	61 91       	P1 = [P4];
    2fb6:	59 08       	CC = P1 == P3;
    2fb8:	be 13       	IF !CC JUMP 0x2f34 <___call_exitprocs+0x30>;
    2fba:	ff 67       	R7 += -0x1;		/* ( -1) */
    2fbc:	3f 0c       	CC = R7 == -0x1;
    2fbe:	e5 6f       	P5 += -0x4;		/* ( -4) */
    2fc0:	e2 6f       	P2 += -0x4;		/* ( -4) */
    2fc2:	d7 17       	IF !CC JUMP 0x2f70 <___call_exitprocs+0x6c> (BP);
    2fc4:	b8 e4 f7 ff 	R0 = B[FP + -0x9] (Z);
    2fc8:	08 02       	CC = R0;
    2fca:	12 10       	IF !CC JUMP 0x2fee <___call_exitprocs+0xea>;
    2fcc:	01 e8 00 00 	UNLINK;
    2fd0:	a3 05       	(R7:4, P5:3) = [SP++];
    2fd2:	10 00       	RTS;
    2fd4:	ca bb       	[FP -0x10] = P2;
    2fd6:	61 00       	CALL (P1);
    2fd8:	ca b9       	P2 = [FP -0x10];
    2fda:	ea 2f       	JUMP.S 0x2fae <___call_exitprocs+0xaa>;
    2fdc:	58 b0       	[P3 + 0x4] = R0;
    2fde:	d2 2f       	JUMP.S 0x2f82 <___call_exitprocs+0x7e>;
    2fe0:	00 00       	NOP;
    2fe2:	28 e4 e0 ff 	R0 = [P5 + -0x80];
    2fe6:	ca bb       	[FP -0x10] = P2;
    2fe8:	61 00       	CALL (P1);
    2fea:	ca b9       	P2 = [FP -0x10];
    2fec:	e1 2f       	JUMP.S 0x2fae <___call_exitprocs+0xaa>;
    2fee:	59 a0       	R1 = [P3 + 0x4];
    2ff0:	01 0c       	CC = R1 == 0x0;
    2ff2:	18 91       	R0 = [P3];
    2ff4:	0d 14       	IF !CC JUMP 0x300e <___call_exitprocs+0x10a> (BP);
    2ff6:	00 0c       	CC = R0 == 0x0;
    2ff8:	0a 18       	IF CC JUMP 0x300c <___call_exitprocs+0x108>;
    2ffa:	49 e1 00 00 	P1.H = 0x0;		/* (  0)	P1=0x88 */
    2ffe:	20 93       	[P4] = R0;
    3000:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x0 */
    3004:	43 30       	R0 = P3;
    3006:	61 00       	CALL (P1);
    3008:	63 91       	P3 = [P4];
    300a:	99 2f       	JUMP.S 0x2f3c <___call_exitprocs+0x38>;
    300c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    300e:	63 32       	P4 = P3;
    3010:	18 32       	P3 = R0;
    3012:	95 2f       	JUMP.S 0x2f3c <___call_exitprocs+0x38>;

00003014 <_quorem>:
    3014:	e3 05       	[--SP] = (R7:4, P5:3);
    3016:	09 32       	P1 = R1;
    3018:	20 32       	P4 = R0;
    301a:	00 e8 03 00 	LINK 0xc;		/* (12) */
    301e:	21 30       	R4 = R1;
    3020:	08 a1       	R0 = [P1 + 0x10];
    3022:	21 a1       	R1 = [P4 + 0x10];
    3024:	08 09       	CC = R0 <= R1;
    3026:	97 10       	IF !CC JUMP 0x3154 <_quorem+0x140>;
    3028:	38 30       	R7 = R0;
    302a:	20 64       	R0 += 0x4;		/* (  4) */
    302c:	10 4f       	R0 <<= 0x2;
    302e:	84 50       	R2 = R4 + R0;
    3030:	08 32       	P1 = R0;
    3032:	1a 32       	P3 = R2;
    3034:	2c 32       	P5 = R4;
    3036:	6c 30       	R5 = P4;
    3038:	ff 67       	R7 += -0x1;		/* ( -1) */
    303a:	8c 5a       	P2 = P4 + P1;
    303c:	19 91       	R1 = [P3];
    303e:	09 64       	R1 += 0x1;		/* (  1) */
    3040:	10 91       	R0 = [P2];
    3042:	00 e3 63 24 	CALL 0x7908 <___udivsi3>;
    3046:	00 0c       	CC = R0 == 0x0;
    3048:	a5 6c       	P5 += 0x14;		/* ( 20) */
    304a:	a5 64       	R5 += 0x14;		/* ( 20) */
    304c:	30 30       	R6 = R0;
    304e:	46 1c       	IF CC JUMP 0x30da <_quorem+0xc6> (BP);
    3050:	4d 32       	P1 = P5;
    3052:	15 32       	P2 = R5;
    3054:	30 e1 00 00 	I0 = 0x0 (X);		/*		I0=0x0(  0) */
    3058:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    305a:	90 30       	R2 = I0;
    305c:	09 90       	R1 = [P1++];
    305e:	c8 42       	R0 = R1.L (Z);
    3060:	f0 40       	R0 *= R6;
    3062:	c2 50       	R3 = R2 + R0;
    3064:	82 ce 81 85 	R2 = R1 >> 0x10 || R1 = [P2] || NOP;
    3068:	11 91 00 00 
    306c:	f2 40       	R2 *= R6;
    306e:	09 34       	I1 = R1;
    3070:	82 c6 83 81 	R0 = R3 >> 0x10;
    3074:	90 50       	R2 = R0 + R2;
    3076:	82 c6 82 81 	R0 = R2 >> 0x10;
    307a:	00 34       	I0 = R0;
    307c:	c8 42       	R0 = R1.L (Z);
    307e:	48 30       	R1 = P0;
    3080:	08 50       	R0 = R0 + R1;
    3082:	db 42       	R3 = R3.L (Z);
    3084:	89 30       	R1 = I1;
    3086:	18 52       	R0 = R0 - R3;
    3088:	81 4e       	R1 >>= 0x10;
    308a:	d2 42       	R2 = R2.L (Z);
    308c:	91 52       	R2 = R1 - R2;
    308e:	82 c6 80 07 	R3 = R0 >>> 0x10;
    3092:	9a 50       	R2 = R2 + R3;
    3094:	82 c6 82 03 	R1 = R2 >>> 0x10;
    3098:	c0 42       	R0 = R0.L (Z);
    309a:	82 4f       	R2 <<= 0x10;
    309c:	02 56       	R0 = R2 | R0;
    309e:	cb 09       	CC = P3 < P1 (IU);
    30a0:	01 32       	P0 = R1;
    30a2:	10 92       	[P2++] = R0;
    30a4:	db 17       	IF !CC JUMP 0x305a <_quorem+0x46> (BP);
    30a6:	17 32       	P2 = R7;
    30a8:	2a 6c       	P2 += 0x5;		/* (  5) */
    30aa:	94 5e       	P2 = P4 + (P2 << 0x2);
    30ac:	12 91       	R2 = [P2];
    30ae:	02 0c       	CC = R2 == 0x0;
    30b0:	15 14       	IF !CC JUMP 0x30da <_quorem+0xc6> (BP);
    30b2:	42 30       	R0 = P2;
    30b4:	e0 67       	R0 += -0x4;		/* ( -4) */
    30b6:	85 09       	CC = R5 < R0 (IU);
    30b8:	10 10       	IF !CC JUMP 0x30d8 <_quorem+0xc4>;
    30ba:	10 e4 ff ff 	R0 = [P2 + -0x4];
    30be:	00 0c       	CC = R0 == 0x0;
    30c0:	0c 10       	IF !CC JUMP 0x30d8 <_quorem+0xc4>;
    30c2:	42 30       	R0 = P2;
    30c4:	c0 67       	R0 += -0x8;		/* ( -8) */
    30c6:	05 20       	JUMP.S 0x30d0 <_quorem+0xbc>;
    30c8:	e0 67       	R0 += -0x4;		/* ( -4) */
    30ca:	11 91       	R1 = [P2];
    30cc:	01 0c       	CC = R1 == 0x0;
    30ce:	05 10       	IF !CC JUMP 0x30d8 <_quorem+0xc4>;
    30d0:	85 09       	CC = R5 < R0 (IU);
    30d2:	ff 67       	R7 += -0x1;		/* ( -1) */
    30d4:	10 32       	P2 = R0;
    30d6:	f9 1f       	IF CC JUMP 0x30c8 <_quorem+0xb4> (BP);
    30d8:	27 b1       	[P4 + 0x10] = R7;
    30da:	44 30       	R0 = P4;
    30dc:	0c 30       	R1 = R4;
    30de:	00 e3 3f 13 	CALL 0x575c <___mcmp>;
    30e2:	80 0c       	CC = R0 < 0x0;
    30e4:	33 18       	IF CC JUMP 0x314a <_quorem+0x136>;
    30e6:	0e 64       	R6 += 0x1;		/* (  1) */
    30e8:	15 32       	P2 = R5;
    30ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    30ec:	00 00       	NOP;
    30ee:	12 91       	R2 = [P2];
    30f0:	2b 90       	R3 = [P5++];
    30f2:	d1 42       	R1 = R2.L (Z);
    30f4:	41 50       	R1 = R1 + R0;
    30f6:	dc 42       	R4 = R3.L (Z);
    30f8:	61 52       	R1 = R1 - R4;
    30fa:	82 4e       	R2 >>= 0x10;
    30fc:	83 4e       	R3 >>= 0x10;
    30fe:	82 c6 81 01 	R0 = R1 >>> 0x10;
    3102:	9a 52       	R2 = R2 - R3;
    3104:	82 50       	R2 = R2 + R0;
    3106:	82 c6 82 01 	R0 = R2 >>> 0x10;
    310a:	c9 42       	R1 = R1.L (Z);
    310c:	82 4f       	R2 <<= 0x10;
    310e:	4a 56       	R1 = R2 | R1;
    3110:	eb 09       	CC = P3 < P5 (IU);
    3112:	11 92       	[P2++] = R1;
    3114:	ec 17       	IF !CC JUMP 0x30ec <_quorem+0xd8> (BP);
    3116:	17 32       	P2 = R7;
    3118:	2a 6c       	P2 += 0x5;		/* (  5) */
    311a:	94 5e       	P2 = P4 + (P2 << 0x2);
    311c:	11 91       	R1 = [P2];
    311e:	01 0c       	CC = R1 == 0x0;
    3120:	15 14       	IF !CC JUMP 0x314a <_quorem+0x136> (BP);
    3122:	42 30       	R0 = P2;
    3124:	e0 67       	R0 += -0x4;		/* ( -4) */
    3126:	85 09       	CC = R5 < R0 (IU);
    3128:	10 10       	IF !CC JUMP 0x3148 <_quorem+0x134>;
    312a:	12 e4 ff ff 	R2 = [P2 + -0x4];
    312e:	02 0c       	CC = R2 == 0x0;
    3130:	0c 10       	IF !CC JUMP 0x3148 <_quorem+0x134>;
    3132:	4a 30       	R1 = P2;
    3134:	c1 67       	R1 += -0x8;		/* ( -8) */
    3136:	05 20       	JUMP.S 0x3140 <_quorem+0x12c>;
    3138:	e1 67       	R1 += -0x4;		/* ( -4) */
    313a:	10 91       	R0 = [P2];
    313c:	00 0c       	CC = R0 == 0x0;
    313e:	05 10       	IF !CC JUMP 0x3148 <_quorem+0x134>;
    3140:	8d 09       	CC = R5 < R1 (IU);
    3142:	ff 67       	R7 += -0x1;		/* ( -1) */
    3144:	11 32       	P2 = R1;
    3146:	f9 1f       	IF CC JUMP 0x3138 <_quorem+0x124> (BP);
    3148:	27 b1       	[P4 + 0x10] = R7;
    314a:	01 e8 00 00 	UNLINK;
    314e:	06 30       	R0 = R6;
    3150:	a3 05       	(R7:4, P5:3) = [SP++];
    3152:	10 00       	RTS;
    3154:	01 e8 00 00 	UNLINK;
    3158:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    315a:	a3 05       	(R7:4, P5:3) = [SP++];
    315c:	10 00       	RTS;
	...

00003160 <__dtoa_r>:
    3160:	e3 05       	[--SP] = (R7:4, P5:3);
    3162:	20 32       	P4 = R0;
    3164:	00 e8 1d 00 	LINK 0x74;		/* (116) */
    3168:	fd af       	P5 = [FP + 0x3c];
    316a:	31 30       	R6 = R1;
    316c:	3a 30       	R7 = R2;
    316e:	22 e5 10 00 	P2 = [P4 + 0x40];
    3172:	42 0c       	CC = P2 == 0x0;
    3174:	10 18       	IF CC JUMP 0x3194 <__dtoa_r+0x34>;
    3176:	00 00       	NOP;
    3178:	00 00       	NOP;
    317a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    317c:	21 e4 11 00 	R1 = [P4 + 0x44];
    3180:	88 40       	R0 <<= R1;
    3182:	51 b0       	[P2 + 0x4] = R1;
    3184:	90 b0       	[P2 + 0x8] = R0;
    3186:	4a 30       	R1 = P2;
    3188:	44 30       	R0 = P4;
    318a:	00 e3 6d 10 	CALL 0x5264 <__Bfree>;
    318e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    3190:	20 e6 10 00 	[P4 + 0x40] = R0;
    3194:	1f 32       	P3 = R7;
    3196:	c3 0c       	CC = P3 < 0x0;
    3198:	4c 18       	IF CC JUMP 0x3230 <__dtoa_r+0xd0>;
    319a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    319c:	28 93       	[P5] = R0;
    319e:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
    31a2:	a0 4f       	R0 <<= 0x14;
    31a4:	4b 30       	R1 = P3;
    31a6:	22 e1 ff 07 	R2 = 0x7ff (X);		/*		R2=0x7ff(2047) */
    31aa:	01 54       	R0 = R1 & R0;
    31ac:	a2 4f       	R2 <<= 0x14;
    31ae:	10 08       	CC = R0 == R2;
    31b0:	1e 18       	IF CC JUMP 0x31ec <__dtoa_r+0x8c>;
    31b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    31b4:	f0 b0       	[SP + 0xc] = R0;
    31b6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    31b8:	06 30       	R0 = R6;
    31ba:	0f 30       	R1 = R7;
    31bc:	00 e3 20 27 	CALL 0x7ffc <___eqdf2>;
    31c0:	00 0c       	CC = R0 == 0x0;
    31c2:	3e 10       	IF !CC JUMP 0x323e <__dtoa_r+0xde>;
    31c4:	ba af       	P2 = [FP + 0x38];
    31c6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    31c8:	39 e5 10 00 	P1 = [FP + 0x40];
    31cc:	10 93       	[P2] = R0;
    31ce:	41 0c       	CC = P1 == 0x0;
    31d0:	02 14       	IF !CC JUMP 0x31d4 <__dtoa_r+0x74> (BP);
    31d2:	7d 22       	JUMP.S 0x36cc <__dtoa_r+0x56c>;
    31d4:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1(  1) */
    31d8:	00 e1 e5 87 	R0.L = 0x87e5;		/* (-30747)	R0=0x87e5(34789) */
    31dc:	08 93       	[P1] = R0;
    31de:	f8 67       	R0 += -0x1;		/* ( -1) */
    31e0:	d0 bb       	[FP -0xc] = R0;
    31e2:	d0 b9       	R0 = [FP -0xc];
    31e4:	01 e8 00 00 	UNLINK;
    31e8:	a3 05       	(R7:4, P5:3) = [SP++];
    31ea:	10 00       	RTS;
    31ec:	b9 af       	P1 = [FP + 0x38];
    31ee:	20 e1 0f 27 	R0 = 0x270f (X);		/*		R0=0x270f(9999) */
    31f2:	06 0c       	CC = R6 == 0x0;
    31f4:	08 93       	[P1] = R0;
    31f6:	02 10       	IF !CC JUMP 0x31fa <__dtoa_r+0x9a>;
    31f8:	44 22       	JUMP.S 0x3680 <__dtoa_r+0x520>;
    31fa:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x270f(9999) */
    31fe:	00 e1 78 89 	R0.L = 0x8978;		/* (-30344)	R0=0x8978(35192) */
    3202:	d0 bb       	[FP -0xc] = R0;
    3204:	39 e5 10 00 	P1 = [FP + 0x40];
    3208:	41 0c       	CC = P1 == 0x0;
    320a:	ec 1b       	IF CC JUMP 0x31e2 <__dtoa_r+0x82>;
    320c:	00 00       	NOP;
    320e:	00 00       	NOP;
    3210:	da b9       	P2 = [FP -0xc];
    3212:	90 e5 03 00 	R0 = B[P2 + 0x3] (X);
    3216:	00 0c       	CC = R0 == 0x0;
    3218:	02 10       	IF !CC JUMP 0x321c <__dtoa_r+0xbc>;
    321a:	5f 22       	JUMP.S 0x36d8 <__dtoa_r+0x578>;
    321c:	42 30       	R0 = P2;
    321e:	40 64       	R0 += 0x8;		/* (  8) */
    3220:	39 e5 10 00 	P1 = [FP + 0x40];
    3224:	08 93       	[P1] = R0;
    3226:	d0 b9       	R0 = [FP -0xc];
    3228:	01 e8 00 00 	UNLINK;
    322c:	a3 05       	(R7:4, P5:3) = [SP++];
    322e:	10 00       	RTS;
    3230:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    3232:	28 93       	[P5] = R0;
    3234:	07 30       	R0 = R7;
    3236:	f8 4c       	BITCLR (R0, 0x1f);		/* bit 31 */
    3238:	18 32       	P3 = R0;
    323a:	38 30       	R7 = R0;
    323c:	b1 2f       	JUMP.S 0x319e <__dtoa_r+0x3e>;
    323e:	47 30       	R0 = FP;
    3240:	e0 67       	R0 += -0x4;		/* ( -4) */
    3242:	f0 b0       	[SP + 0xc] = R0;
    3244:	e0 67       	R0 += -0x4;		/* ( -4) */
    3246:	30 b1       	[SP + 0x10] = R0;
    3248:	17 30       	R2 = R7;
    324a:	44 30       	R0 = P4;
    324c:	0e 30       	R1 = R6;
    324e:	00 e3 b7 13 	CALL 0x59bc <___d2b>;
    3252:	53 30       	R2 = P3;
    3254:	0a 4f       	R2 <<= 0x1;
    3256:	aa 4e       	R2 >>= 0x15;
    3258:	02 0c       	CC = R2 == 0x0;
    325a:	50 bb       	[FP -0x2c] = R0;
    325c:	02 18       	IF CC JUMP 0x3260 <__dtoa_r+0x100>;
    325e:	21 22       	JUMP.S 0x36a0 <__dtoa_r+0x540>;
    3260:	e9 b9       	P1 = [FP -0x8];
    3262:	fa b9       	P2 = [FP -0x4];
    3264:	d9 bb       	[FP -0xc] = P1;
    3266:	51 5b       	P5 = P1 + P2;
    3268:	29 e1 ef fb 	P1 = -0x411 (X);		/*		P1=0xfffffbef(-1041) */
    326c:	cd 08       	CC = P5 < P1;
    326e:	02 10       	IF !CC JUMP 0x3272 <__dtoa_r+0x112>;
    3270:	46 24       	JUMP.S 0x3afc <__dtoa_r+0x99c>;
    3272:	45 30       	R0 = P5;
    3274:	21 e1 0e fc 	R1 = -0x3f2 (X);		/*		R1=0xfffffc0e(-1010) */
    3278:	41 52       	R1 = R1 - R0;
    327a:	53 30       	R2 = P3;
    327c:	8a 40       	R2 <<= R1;
    327e:	20 e1 12 04 	R0 = 0x412 (X);		/*		R0=0x412(1042) */
    3282:	5d 30       	R3 = P5;
    3284:	0a 30       	R1 = R2;
    3286:	03 50       	R0 = R3 + R0;
    3288:	16 30       	R2 = R6;
    328a:	42 40       	R2 >>= R0;
    328c:	11 56       	R0 = R1 | R2;
    328e:	00 e3 05 28 	CALL 0x8298 <___floatunsidf>;
    3292:	0a 63       	R2 = -0x1f (X);		/*		R2=0xffffffe1(-31) */
    3294:	a2 4f       	R2 <<= 0x14;
    3296:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    3298:	4a 50       	R1 = R2 + R1;
    329a:	fd 6f       	P5 += -0x1;		/* ( -1) */
    329c:	03 bb       	[FP -0x40] = R3;
    329e:	22 e1 ff 07 	R2 = 0x7ff (X);		/*		R2=0x7ff(2047) */
    32a2:	9a 4f       	R2 <<= 0x13;
    32a4:	f2 b0       	[SP + 0xc] = R2;
    32a6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    32a8:	00 e3 d0 24 	CALL 0x7c48 <___subdf3>;
    32ac:	42 e1 d2 3f 	R2.H = 0x3fd2;		/* (16338)	R2=0x3fd20000(1070727168) */
    32b0:	02 e1 a7 87 	R2.L = 0x87a7;		/* (-30809)	R2=0x3fd287a7(1070761895) */
    32b4:	f2 b0       	[SP + 0xc] = R2;
    32b6:	42 e1 6f 63 	R2.H = 0x636f;		/* (25455)	R2=0x636f87a7(1668253607) */
    32ba:	02 e1 61 43 	R2.L = 0x4361;		/* (17249)	R2=0x636f4361(1668236129) */
    32be:	00 e3 ed 24 	CALL 0x7c98 <___muldf3>;
    32c2:	42 e1 c6 3f 	R2.H = 0x3fc6;		/* (16326)	R2=0x3fc64361(1069957985) */
    32c6:	02 e1 28 8a 	R2.L = 0x8a28;		/* (-30168)	R2=0x3fc68a28(1069976104) */
    32ca:	f2 b0       	[SP + 0xc] = R2;
    32cc:	42 e1 60 8b 	R2.H = 0x8b60;		/* (-29856)	R2=0x8b608a28(-1956607448) */
    32d0:	02 e1 b3 c8 	R2.L = 0xc8b3;		/* (-14157)	R2=0x8b60c8b3(-1956591437) */
    32d4:	00 e3 96 24 	CALL 0x7c00 <___adddf3>;
    32d8:	20 30       	R4 = R0;
    32da:	45 30       	R0 = P5;
    32dc:	29 30       	R5 = R1;
    32de:	00 e3 4d 27 	CALL 0x8178 <___floatsidf>;
    32e2:	42 e1 d3 3f 	R2.H = 0x3fd3;		/* (16339)	R2=0x3fd3c8b3(1070844083) */
    32e6:	02 e1 13 44 	R2.L = 0x4413;		/* (17427)	R2=0x3fd34413(1070810131) */
    32ea:	f2 b0       	[SP + 0xc] = R2;
    32ec:	42 e1 9f 50 	R2.H = 0x509f;		/* (20639)	R2=0x509f4413(1352614931) */
    32f0:	02 e1 fb 79 	R2.L = 0x79fb;		/* (31227)	R2=0x509f79fb(1352628731) */
    32f4:	00 e3 d2 24 	CALL 0x7c98 <___muldf3>;
    32f8:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    32fc:	f1 b0 00 00 
    3300:	04 30       	R0 = R4;
    3302:	0d 30       	R1 = R5;
    3304:	00 e3 7e 24 	CALL 0x7c00 <___adddf3>;
    3308:	28 30       	R5 = R0;
    330a:	21 30       	R4 = R1;
    330c:	00 e3 80 27 	CALL 0x820c <___fixdfsi>;
    3310:	80 bb       	[FP -0x20] = R0;
    3312:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    3314:	f0 b0       	[SP + 0xc] = R0;
    3316:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    3318:	05 30       	R0 = R5;
    331a:	0c 30       	R1 = R4;
    331c:	00 e3 08 27 	CALL 0x812c <___ltdf2>;
    3320:	80 0c       	CC = R0 < 0x0;
    3322:	02 14       	IF !CC JUMP 0x3326 <__dtoa_r+0x1c6> (BP);
    3324:	ee 22       	JUMP.S 0x3900 <__dtoa_r+0x7a0>;
    3326:	80 b9       	R0 = [FP -0x20];
    3328:	b1 60       	R1 = 0x16 (X);		/*		R1=0x16( 22) */
    332a:	08 0a       	CC = R0 <= R1 (IU);
    332c:	02 18       	IF CC JUMP 0x3330 <__dtoa_r+0x1d0>;
    332e:	e6 22       	JUMP.S 0x38fa <__dtoa_r+0x79a>;
    3330:	18 4f       	R0 <<= 0x3;
    3332:	08 32       	P1 = R0;
    3334:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x879c <__global_impure_ptr> */
    3338:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    333c:	f7 b0       	[SP + 0xc] = R7;
    333e:	16 30       	R2 = R6;
    3340:	8a 5a       	P2 = P2 + P1;
    3342:	10 91       	R0 = [P2];
    3344:	51 a0       	R1 = [P2 + 0x4];
    3346:	00 e3 a7 26 	CALL 0x8094 <___gtdf2>;
    334a:	00 0d       	CC = R0 <= 0x0;
    334c:	02 10       	IF !CC JUMP 0x3350 <__dtoa_r+0x1f0>;
    334e:	df 23       	JUMP.S 0x3b0c <__dtoa_r+0x9ac>;
    3350:	80 b9       	R0 = [FP -0x20];
    3352:	f8 67       	R0 += -0x1;		/* ( -1) */
    3354:	00 cc 1b c6 	R3 = R3 -|- R3 || [FP -0x20] = R0 || NOP;
    3358:	80 bb 00 00 
    335c:	23 bb       	[FP -0x38] = R3;
    335e:	d3 b9       	R3 = [FP -0xc];
    3360:	4d 30       	R1 = P5;
    3362:	0b 52       	R0 = R3 - R1;
    3364:	f8 67       	R0 += -0x1;		/* ( -1) */
    3366:	80 0c       	CC = R0 < 0x0;
    3368:	02 14       	IF !CC JUMP 0x336c <__dtoa_r+0x20c> (BP);
    336a:	e2 22       	JUMP.S 0x392e <__dtoa_r+0x7ce>;
    336c:	00 cc 12 c4 	R2 = R2 -|- R2 || [FP -0x1c] = R0 || NOP;
    3370:	90 bb 00 00 
    3374:	72 bb       	[FP -0x24] = R2;
    3376:	80 b9       	R0 = [FP -0x20];
    3378:	80 0c       	CC = R0 < 0x0;
    337a:	02 14       	IF !CC JUMP 0x337e <__dtoa_r+0x21e> (BP);
    337c:	d0 22       	JUMP.S 0x391c <__dtoa_r+0x7bc>;
    337e:	10 32       	P2 = R0;
    3380:	99 b9       	P1 = [FP -0x1c];
    3382:	00 cc 12 c4 	R2 = R2 -|- R2 || [FP -0x30] = R0 || NOP;
    3386:	40 bb 00 00 
    338a:	a2 bb       	[FP -0x18] = R2;
    338c:	51 5a       	P1 = P1 + P2;
    338e:	99 bb       	[FP -0x1c] = P1;
    3390:	3b a3       	R3 = [FP + 0x30];
    3392:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
    3394:	03 0a       	CC = R3 <= R0 (IU);
    3396:	a4 15       	IF !CC JUMP 0x36de <__dtoa_r+0x57e> (BP);
    3398:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
    339a:	0b 09       	CC = R3 <= R1;
    339c:	02 14       	IF !CC JUMP 0x33a0 <__dtoa_r+0x240> (BP);
    339e:	b8 26       	JUMP.S 0x410e <__dtoa_r+0xfae>;
    33a0:	e3 67       	R3 += -0x4;		/* ( -4) */
    33a2:	3b b3       	[FP + 0x30] = R3;
    33a4:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    33a6:	3b a3       	R3 = [FP + 0x30];
    33a8:	1b 0c       	CC = R3 == 0x3;
    33aa:	02 14       	IF !CC JUMP 0x33ae <__dtoa_r+0x24e> (BP);
    33ac:	20 25       	JUMP.S 0x3dec <__dtoa_r+0xc8c>;
    33ae:	1b 0d       	CC = R3 <= 0x3;
    33b0:	02 18       	IF CC JUMP 0x33b4 <__dtoa_r+0x254>;
    33b2:	15 24       	JUMP.S 0x3bdc <__dtoa_r+0xa7c>;
    33b4:	13 0c       	CC = R3 == 0x2;
    33b6:	96 15       	IF !CC JUMP 0x36e2 <__dtoa_r+0x582> (BP);
    33b8:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    33ba:	3a bb       	[FP -0x34] = P2;
    33bc:	78 a3       	R0 = [FP + 0x34];
    33be:	00 0d       	CC = R0 <= 0x0;
    33c0:	02 14       	IF !CC JUMP 0x33c4 <__dtoa_r+0x264> (BP);
    33c2:	27 25       	JUMP.S 0x3e10 <__dtoa_r+0xcb0>;
    33c4:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || [FP -0x3c] = R0 || NOP;
    33c8:	10 bb 00 00 
    33cc:	60 bb       	[FP -0x28] = R0;
    33ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    33d0:	20 e6 11 00 	[P4 + 0x44] = R0;
    33d4:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
    33d6:	04 0a       	CC = R4 <= R0 (IU);
    33d8:	02 14       	IF !CC JUMP 0x33dc <__dtoa_r+0x27c> (BP);
    33da:	98 26       	JUMP.S 0x410a <__dtoa_r+0xfaa>;
    33dc:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    33de:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    33e0:	08 4f       	R0 <<= 0x1;
    33e2:	18 30       	R3 = R0;
    33e4:	a3 64       	R3 += 0x14;		/* ( 20) */
    33e6:	23 0a       	CC = R3 <= R4 (IU);
    33e8:	0a 30       	R1 = R2;
    33ea:	0a 64       	R2 += 0x1;		/* (  1) */
    33ec:	fa 1f       	IF CC JUMP 0x33e0 <__dtoa_r+0x280> (BP);
    33ee:	21 e6 11 00 	[P4 + 0x44] = R1;
    33f2:	44 30       	R0 = P4;
    33f4:	00 e3 04 0f 	CALL 0x51fc <__Balloc>;
    33f8:	71 60       	R1 = 0xe (X);		/*		R1=0xe( 14) */
    33fa:	0c 0a       	CC = R4 <= R1 (IU);
    33fc:	d0 bb       	[FP -0xc] = R0;
    33fe:	20 e6 10 00 	[P4 + 0x40] = R0;
    3402:	84 11       	IF !CC JUMP 0x370a <__dtoa_r+0x5aa>;
    3404:	05 0c       	CC = R5 == 0x0;
    3406:	82 1d       	IF CC JUMP 0x370a <__dtoa_r+0x5aa> (BP);
    3408:	80 b9       	R0 = [FP -0x20];
    340a:	00 0d       	CC = R0 <= 0x0;
    340c:	e6 ba       	[FP -0x48] = R6;
    340e:	d7 ba       	[FP -0x4c] = R7;
    3410:	02 14       	IF !CC JUMP 0x3414 <__dtoa_r+0x2b4> (BP);
    3412:	34 25       	JUMP.S 0x3e7a <__dtoa_r+0xd1a>;
    3414:	82 b9       	R2 = [FP -0x20];
    3416:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
    3418:	42 54       	R1 = R2 & R0;
    341a:	19 4f       	R1 <<= 0x3;
    341c:	09 32       	P1 = R1;
    341e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x0 */
    3422:	22 30       	R4 = R2;
    3424:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    3428:	24 4d       	R4 >>>= 0x4;
    342a:	8a 5a       	P2 = P2 + P1;
    342c:	24 48       	CC = !BITTST (R4, 0x4);		/* bit  4 */
    342e:	13 91       	R3 = [P2];
    3430:	53 ac       	P3 = [P2 + 0x4];
    3432:	02 10       	IF !CC JUMP 0x3436 <__dtoa_r+0x2d6>;
    3434:	ea 24       	JUMP.S 0x3e08 <__dtoa_r+0xca8>;
    3436:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x89d8 <___mprec_tens> */
    343a:	0a e1 b0 89 	P2.L = 0x89b0;		/* (-30288)	P2=0x89b0 <___mprec_bigtens> */
    343e:	04 55       	R4 = R4 & R0;
    3440:	50 a2       	R0 = [P2 + 0x24];
    3442:	f0 b0       	[SP + 0xc] = R0;
    3444:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || R2 = [P2 + 0x20] || NOP;
    3448:	12 a2 00 00 
    344c:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || [FP -0x60] = R3 || NOP;
    3450:	83 ba 00 00 
    3454:	00 e3 32 25 	CALL 0x7eb8 <___divdf3>;
    3458:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || R3 = [FP -0x60] || NOP;
    345c:	83 b8 00 00 
    3460:	31 30       	R6 = R1;
    3462:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
    3464:	04 0c       	CC = R4 == 0x0;
    3466:	17 18       	IF CC JUMP 0x3494 <__dtoa_r+0x334>;
    3468:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x87b0 */
    346c:	0d e1 b0 89 	P5.L = 0x89b0;		/* (-30288)	P5=0x89b0 <___mprec_bigtens> */
    3470:	04 48       	CC = !BITTST (R4, 0x0);		/* bit  0 */
    3472:	0d 1c       	IF CC JUMP 0x348c <__dtoa_r+0x32c> (BP);
    3474:	6a a0       	R2 = [P5 + 0x4];
    3476:	f2 b0       	[SP + 0xc] = R2;
    3478:	82 ce 03 c0 	R0 = ROT R3 BY 0x0 || R2 = [P5] || NOP;
    347c:	2a 91 00 00 
    3480:	4b 30       	R1 = P3;
    3482:	00 e3 0b 24 	CALL 0x7c98 <___muldf3>;
    3486:	0f 64       	R7 += 0x1;		/* (  1) */
    3488:	18 30       	R3 = R0;
    348a:	19 32       	P3 = R1;
    348c:	0c 4d       	R4 >>>= 0x1;
    348e:	04 0c       	CC = R4 == 0x0;
    3490:	45 6c       	P5 += 0x8;		/* (  8) */
    3492:	ef 17       	IF !CC JUMP 0x3470 <__dtoa_r+0x310> (BP);
    3494:	05 30       	R0 = R5;
    3496:	f3 bc       	[SP + 0xc] = P3;
    3498:	13 30       	R2 = R3;
    349a:	0e 30       	R1 = R6;
    349c:	00 e3 0e 25 	CALL 0x7eb8 <___divdf3>;
    34a0:	28 30       	R5 = R0;
    34a2:	21 30       	R4 = R1;
    34a4:	23 b9       	R3 = [FP -0x38];
    34a6:	03 0c       	CC = R3 == 0x0;
    34a8:	0d 1c       	IF CC JUMP 0x34c2 <__dtoa_r+0x362> (BP);
    34aa:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
    34ae:	a0 4f       	R0 <<= 0x14;
    34b0:	f0 b0       	[SP + 0xc] = R0;
    34b2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    34b4:	05 30       	R0 = R5;
    34b6:	0c 30       	R1 = R4;
    34b8:	00 e3 3a 26 	CALL 0x812c <___ltdf2>;
    34bc:	80 0c       	CC = R0 < 0x0;
    34be:	02 14       	IF !CC JUMP 0x34c2 <__dtoa_r+0x362> (BP);
    34c0:	b5 25       	JUMP.S 0x402a <__dtoa_r+0xeca>;
    34c2:	07 30       	R0 = R7;
    34c4:	00 e3 5a 26 	CALL 0x8178 <___floatsidf>;
    34c8:	82 ce 05 c4 	R2 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
    34cc:	f4 b0 00 00 
    34d0:	00 e3 e4 23 	CALL 0x7c98 <___muldf3>;
    34d4:	22 e1 07 10 	R2 = 0x1007 (X);		/*		R2=0x1007(4103) */
    34d8:	92 4f       	R2 <<= 0x12;
    34da:	f2 b0       	[SP + 0xc] = R2;
    34dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    34de:	00 e3 91 23 	CALL 0x7c00 <___adddf3>;
    34e2:	82 ce 00 cc 	R6 = ROT R0 BY 0x0 || R3 = [FP -0x28] || NOP;
    34e6:	63 b9 00 00 
    34ea:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
    34ec:	b0 4f       	R0 <<= 0x16;
    34ee:	03 0c       	CC = R3 == 0x0;
    34f0:	c8 51       	R7 = R0 + R1;
    34f2:	02 10       	IF !CC JUMP 0x34f6 <__dtoa_r+0x396>;
    34f4:	56 24       	JUMP.S 0x3da0 <__dtoa_r+0xc40>;
    34f6:	80 b9       	R0 = [FP -0x20];
    34f8:	a0 ba       	[FP -0x58] = R0;
    34fa:	63 b9       	R3 = [FP -0x28];
    34fc:	31 b9       	R1 = [FP -0x34];
    34fe:	01 0c       	CC = R1 == 0x0;
    3500:	02 10       	IF !CC JUMP 0x3504 <__dtoa_r+0x3a4>;
    3502:	1a 25       	JUMP.S 0x3f36 <__dtoa_r+0xdd6>;
    3504:	82 ce 03 c0 	R0 = ROT R3 BY 0x0 || [FP -0x60] = R3 || NOP;
    3508:	83 ba 00 00 
    350c:	f8 67       	R0 += -0x1;		/* ( -1) */
    350e:	18 4f       	R0 <<= 0x3;
    3510:	08 32       	P1 = R0;
    3512:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x89b0 <___mprec_bigtens> */
    3516:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    351a:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
    351e:	a9 4f       	R1 <<= 0x15;
    3520:	8a 5a       	P2 = P2 + P1;
    3522:	50 a0       	R0 = [P2 + 0x4];
    3524:	12 91       	R2 = [P2];
    3526:	f0 b0       	[SP + 0xc] = R0;
    3528:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    352a:	00 e3 c7 24 	CALL 0x7eb8 <___divdf3>;
    352e:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || [SP + 0xc] = R7 || NOP;
    3532:	f7 b0 00 00 
    3536:	00 e3 89 23 	CALL 0x7c48 <___subdf3>;
    353a:	c0 ba       	[FP -0x50] = R0;
    353c:	39 30       	R7 = R1;
    353e:	05 30       	R0 = R5;
    3540:	0c 30       	R1 = R4;
    3542:	00 e3 65 26 	CALL 0x820c <___fixdfsi>;
    3546:	28 32       	P5 = R0;
    3548:	00 e3 18 26 	CALL 0x8178 <___floatsidf>;
    354c:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    3550:	f1 b0 00 00 
    3554:	05 30       	R0 = R5;
    3556:	0c 30       	R1 = R4;
    3558:	00 e3 78 23 	CALL 0x7c48 <___subdf3>;
    355c:	db b9       	P3 = [FP -0xc];
    355e:	65 30       	R4 = P5;
    3560:	84 65       	R4 += 0x30;		/* ( 48) */
    3562:	10 30       	R2 = R0;
    3564:	1c 9a       	B[P3++] = R4;
    3566:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    356a:	f1 b0 00 00 
    356e:	82 ce 01 cc 	R6 = ROT R1 BY 0x0 || R0 = [FP -0x50] || NOP;
    3572:	c0 b8 00 00 
    3576:	0f 30       	R1 = R7;
    3578:	00 e3 8e 25 	CALL 0x8094 <___gtdf2>;
    357c:	00 0d       	CC = R0 <= 0x0;
    357e:	02 1c       	IF CC JUMP 0x3582 <__dtoa_r+0x422> (BP);
    3580:	a3 25       	JUMP.S 0x40c6 <__dtoa_r+0xf66>;
    3582:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
    3586:	82 ce 05 c4 	R2 = ROT R5 BY 0x0 || [SP + 0xc] = R6 || NOP;
    358a:	f6 b0 00 00 
    358e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    3590:	a1 4f       	R1 <<= 0x14;
    3592:	00 e3 5b 23 	CALL 0x7c48 <___subdf3>;
    3596:	f1 b0       	[SP + 0xc] = R1;
    3598:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R0 = [FP -0x50] || NOP;
    359c:	c0 b8 00 00 
    35a0:	0f 30       	R1 = R7;
    35a2:	00 e3 79 25 	CALL 0x8094 <___gtdf2>;
    35a6:	00 0d       	CC = R0 <= 0x0;
    35a8:	83 b8       	R3 = [FP -0x60];
    35aa:	02 1c       	IF CC JUMP 0x35ae <__dtoa_r+0x44e> (BP);
    35ac:	a5 25       	JUMP.S 0x40f6 <__dtoa_r+0xf96>;
    35ae:	0b 0d       	CC = R3 <= 0x1;
    35b0:	02 14       	IF !CC JUMP 0x35b4 <__dtoa_r+0x454> (BP);
    35b2:	61 24       	JUMP.S 0x3e74 <__dtoa_r+0xd14>;
    35b4:	d0 b9       	R0 = [FP -0xc];
    35b6:	d8 50       	R3 = R0 + R3;
    35b8:	bc ba       	[FP -0x54] = P4;
    35ba:	6b 32       	P5 = P3;
    35bc:	f3 ba       	[FP -0x44] = R3;
    35be:	cc b8       	P4 = [FP -0x50];
    35c0:	16 20       	JUMP.S 0x35ec <__dtoa_r+0x48c>;
    35c2:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
    35c6:	82 ce 05 c4 	R2 = ROT R5 BY 0x0 || [SP + 0xc] = R6 || NOP;
    35ca:	f6 b0 00 00 
    35ce:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    35d0:	a1 4f       	R1 <<= 0x14;
    35d2:	00 e3 3b 23 	CALL 0x7c48 <___subdf3>;
    35d6:	f7 b0       	[SP + 0xc] = R7;
    35d8:	54 30       	R2 = P4;
    35da:	00 e3 a9 25 	CALL 0x812c <___ltdf2>;
    35de:	80 0c       	CC = R0 < 0x0;
    35e0:	02 14       	IF !CC JUMP 0x35e4 <__dtoa_r+0x484> (BP);
    35e2:	75 25       	JUMP.S 0x40cc <__dtoa_r+0xf6c>;
    35e4:	f9 b8       	P1 = [FP -0x44];
    35e6:	4d 08       	CC = P5 == P1;
    35e8:	02 14       	IF !CC JUMP 0x35ec <__dtoa_r+0x48c> (BP);
    35ea:	44 24       	JUMP.S 0x3e72 <__dtoa_r+0xd12>;
    35ec:	4a e1 24 40 	P2.H = 0x4024;		/* (16420)	P2=0x402489d8 */
    35f0:	0a e1 00 00 	P2.L = 0x0;		/* (  0)	P2=0x40240000 */
    35f4:	f2 bc       	[SP + 0xc] = P2;
    35f6:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    35f8:	44 30       	R0 = P4;
    35fa:	0f 30       	R1 = R7;
    35fc:	00 e3 4e 23 	CALL 0x7c98 <___muldf3>;
    3600:	20 32       	P4 = R0;
    3602:	20 e1 09 10 	R0 = 0x1009 (X);		/*		R0=0x1009(4105) */
    3606:	90 4f       	R0 <<= 0x12;
    3608:	00 cc 12 c4 	R2 = R2 -|- R2 || [SP + 0xc] = R0 || NOP;
    360c:	f0 b0 00 00 
    3610:	39 30       	R7 = R1;
    3612:	05 30       	R0 = R5;
    3614:	0e 30       	R1 = R6;
    3616:	00 e3 41 23 	CALL 0x7c98 <___muldf3>;
    361a:	29 30       	R5 = R1;
    361c:	20 30       	R4 = R0;
    361e:	00 e3 f7 25 	CALL 0x820c <___fixdfsi>;
    3622:	18 32       	P3 = R0;
    3624:	00 e3 aa 25 	CALL 0x8178 <___floatsidf>;
    3628:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    362c:	f1 b0 00 00 
    3630:	04 30       	R0 = R4;
    3632:	0d 30       	R1 = R5;
    3634:	63 30       	R4 = P3;
    3636:	84 65       	R4 += 0x30;		/* ( 48) */
    3638:	00 e3 08 23 	CALL 0x7c48 <___subdf3>;
    363c:	2c 9a       	B[P5++] = R4;
    363e:	54 30       	R2 = P4;
    3640:	f7 b0       	[SP + 0xc] = R7;
    3642:	28 30       	R5 = R0;
    3644:	31 30       	R6 = R1;
    3646:	00 e3 73 25 	CALL 0x812c <___ltdf2>;
    364a:	80 0c       	CC = R0 < 0x0;
    364c:	5d 32       	P3 = P5;
    364e:	ba 17       	IF !CC JUMP 0x35c2 <__dtoa_r+0x462> (BP);
    3650:	a9 b8       	P1 = [FP -0x58];
    3652:	bc b8       	P4 = [FP -0x54];
    3654:	89 bb       	[FP -0x20] = P1;
    3656:	44 30       	R0 = P4;
    3658:	51 b9       	R1 = [FP -0x2c];
    365a:	00 e3 05 0e 	CALL 0x5264 <__Bfree>;
    365e:	39 e5 10 00 	P1 = [FP + 0x40];
    3662:	ba af       	P2 = [FP + 0x38];
    3664:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    3666:	18 9b       	B[P3] = R0;
    3668:	80 b9       	R0 = [FP -0x20];
    366a:	08 64       	R0 += 0x1;		/* (  1) */
    366c:	41 0c       	CC = P1 == 0x0;
    366e:	10 93       	[P2] = R0;
    3670:	02 14       	IF !CC JUMP 0x3674 <__dtoa_r+0x514> (BP);
    3672:	b8 2d       	JUMP.S 0x31e2 <__dtoa_r+0x82>;
    3674:	4b 93       	[P1] = P3;
    3676:	d0 b9       	R0 = [FP -0xc];
    3678:	01 e8 00 00 	UNLINK;
    367c:	a3 05       	(R7:4, P5:3) = [SP++];
    367e:	10 00       	RTS;
    3680:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    3682:	40 e1 0f 00 	R0.H = 0xf;		/* ( 15)	R0=0xfffff(1048575) */
    3686:	01 54       	R0 = R1 & R0;
    3688:	00 0c       	CC = R0 == 0x0;
    368a:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x3ff(1023) */
    368e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0xffff(65535) */
    3692:	00 e1 78 89 	R0.L = 0x8978;		/* (-30344)	R0=0x8978(35192) */
    3696:	01 e1 6c 89 	R1.L = 0x896c;		/* (-30356)	R1=0x896c(35180) */
    369a:	01 07       	IF CC R0 = R1;
    369c:	d0 bb       	[FP -0xc] = R0;
    369e:	b3 2d       	JUMP.S 0x3204 <__dtoa_r+0xa4>;
    36a0:	fd 63       	R5 = -0x1 (X);		/*		R5=0xffffffff( -1) */
    36a2:	45 e1 0f 00 	R5.H = 0xf;		/* ( 15)	R5=0xfffff(1048575) */
    36a6:	23 e1 ff 03 	R3 = 0x3ff (X);		/*		R3=0x3ff(1023) */
    36aa:	a3 4f       	R3 <<= 0x14;
    36ac:	6f 55       	R5 = R7 & R5;
    36ae:	ea b9       	P2 = [FP -0x8];
    36b0:	5d 56       	R1 = R5 | R3;
    36b2:	23 e1 01 fc 	R3 = -0x3ff (X);		/*		R3=0xfffffc01(-1023) */
    36b6:	da 50       	R3 = R2 + R3;
    36b8:	2b 32       	P5 = R3;
    36ba:	00 cc 1b c6 	R3 = R3 -|- R3 || [FP -0xc] = P2 || NOP;
    36be:	da bb 00 00 
    36c2:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || [FP -0x40] = R3 || NOP;
    36c6:	03 bb 00 00 
    36ca:	ea 2d       	JUMP.S 0x329e <__dtoa_r+0x13e>;
    36cc:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x8978(35192) */
    36d0:	00 e1 e4 87 	R0.L = 0x87e4;		/* (-30748)	R0=0x87e4(34788) */
    36d4:	d0 bb       	[FP -0xc] = R0;
    36d6:	86 2d       	JUMP.S 0x31e2 <__dtoa_r+0x82>;
    36d8:	d0 b9       	R0 = [FP -0xc];
    36da:	18 64       	R0 += 0x3;		/* (  3) */
    36dc:	a2 2d       	JUMP.S 0x3220 <__dtoa_r+0xc0>;
    36de:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    36e0:	3a bf       	[FP + 0x30] = P2;
    36e2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    36e4:	20 e6 11 00 	[P4 + 0x44] = R0;
    36e8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    36ea:	44 30       	R0 = P4;
    36ec:	00 e3 88 0d 	CALL 0x51fc <__Balloc>;
    36f0:	d0 bb       	[FP -0xc] = R0;
    36f2:	20 e6 10 00 	[P4 + 0x40] = R0;
    36f6:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    36f8:	00 cc 00 c0 	R0 = R0 -|- R0 || [FP -0x28] = R3 || NOP;
    36fc:	63 bb 00 00 
    3700:	f9 6b       	P1 = -0x1 (X);		/*		P1=0xffffffff( -1) */
    3702:	0a 68       	P2 = 0x1 (X);		/*		P2=0x1(  1) */
    3704:	78 b3       	[FP + 0x34] = R0;
    3706:	19 bb       	[FP -0x3c] = P1;
    3708:	3a bb       	[FP -0x34] = P2;
    370a:	f0 b9       	R0 = [FP -0x4];
    370c:	80 0c       	CC = R0 < 0x0;
    370e:	d5 18       	IF CC JUMP 0x38b8 <__dtoa_r+0x758>;
    3710:	81 b9       	R1 = [FP -0x20];
    3712:	72 60       	R2 = 0xe (X);		/*		R2=0xe( 14) */
    3714:	11 09       	CC = R1 <= R2;
    3716:	d1 14       	IF !CC JUMP 0x38b8 <__dtoa_r+0x758> (BP);
    3718:	01 30       	R0 = R1;
    371a:	18 4f       	R0 <<= 0x3;
    371c:	08 32       	P1 = R0;
    371e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x1 */
    3722:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    3726:	78 a3       	R0 = [FP + 0x34];
    3728:	80 0c       	CC = R0 < 0x0;
    372a:	8a 5a       	P2 = P2 + P1;
    372c:	13 91       	R3 = [P2];
    372e:	a3 bb       	[FP -0x18] = R3;
    3730:	54 a0       	R4 = [P2 + 0x4];
    3732:	02 14       	IF !CC JUMP 0x3736 <__dtoa_r+0x5d6> (BP);
    3734:	83 22       	JUMP.S 0x3c3a <__dtoa_r+0xada>;
    3736:	82 ce 06 ca 	R5 = ROT R6 BY 0x0 || R2 = [FP -0x18] || NOP;
    373a:	a2 b9 00 00 
    373e:	82 ce 07 c2 	R1 = ROT R7 BY 0x0 || [SP + 0xc] = R4 || NOP;
    3742:	f4 b0 00 00 
    3746:	05 30       	R0 = R5;
    3748:	00 e3 b8 23 	CALL 0x7eb8 <___divdf3>;
    374c:	00 e3 60 25 	CALL 0x820c <___fixdfsi>;
    3750:	37 30       	R6 = R7;
    3752:	38 30       	R7 = R0;
    3754:	00 e3 12 25 	CALL 0x8178 <___floatsidf>;
    3758:	a2 b9       	R2 = [FP -0x18];
    375a:	f4 b0       	[SP + 0xc] = R4;
    375c:	00 e3 9e 22 	CALL 0x7c98 <___muldf3>;
    3760:	f1 b0       	[SP + 0xc] = R1;
    3762:	10 30       	R2 = R0;
    3764:	0e 30       	R1 = R6;
    3766:	05 30       	R0 = R5;
    3768:	00 e3 70 22 	CALL 0x7c48 <___subdf3>;
    376c:	db b9       	P3 = [FP -0xc];
    376e:	18 30       	R3 = R0;
    3770:	11 32       	P2 = R1;
    3772:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || R1 = [FP -0x28] || NOP;
    3776:	61 b9 00 00 
    377a:	80 65       	R0 += 0x30;		/* ( 48) */
    377c:	09 0c       	CC = R1 == 0x1;
    377e:	18 9a       	B[P3++] = R0;
    3780:	61 18       	IF CC JUMP 0x3842 <__dtoa_r+0x6e2>;
    3782:	27 e1 09 10 	R7 = 0x1009 (X);		/*		R7=0x1009(4105) */
    3786:	97 4f       	R7 <<= 0x12;
    3788:	00 cc 12 c4 	R2 = R2 -|- R2 || [SP + 0xc] = R7 || NOP;
    378c:	f7 b0 00 00 
    3790:	03 30       	R0 = R3;
    3792:	4a 30       	R1 = P2;
    3794:	00 e3 82 22 	CALL 0x7c98 <___muldf3>;
    3798:	28 30       	R5 = R0;
    379a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    379c:	f0 b0       	[SP + 0xc] = R0;
    379e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    37a0:	05 30       	R0 = R5;
    37a2:	31 30       	R6 = R1;
    37a4:	00 e3 2c 24 	CALL 0x7ffc <___eqdf2>;
    37a8:	00 0c       	CC = R0 == 0x0;
    37aa:	56 1b       	IF CC JUMP 0x3656 <__dtoa_r+0x4f6>;
    37ac:	dd b9       	P5 = [FP -0xc];
    37ae:	d3 b9       	R3 = [FP -0xc];
    37b0:	60 b9       	R0 = [FP -0x28];
    37b2:	c3 50       	R3 = R3 + R0;
    37b4:	bc bb       	[FP -0x14] = P4;
    37b6:	15 6c       	P5 += 0x2;		/* (  2) */
    37b8:	26 32       	P4 = R6;
    37ba:	c3 bb       	[FP -0x10] = R3;
    37bc:	1d 32       	P3 = R5;
    37be:	a6 b9       	R6 = [FP -0x18];
    37c0:	17 20       	JUMP.S 0x37ee <__dtoa_r+0x68e>;
    37c2:	49 e1 24 40 	P1.H = 0x4024;		/* (16420)	P1=0x4024ffff */
    37c6:	09 e1 00 00 	P1.L = 0x0;		/* (  0)	P1=0x40240000 */
    37ca:	f1 bc       	[SP + 0xc] = P1;
    37cc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    37ce:	03 30       	R0 = R3;
    37d0:	4a 30       	R1 = P2;
    37d2:	00 e3 63 22 	CALL 0x7c98 <___muldf3>;
    37d6:	18 32       	P3 = R0;
    37d8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    37da:	f0 b0       	[SP + 0xc] = R0;
    37dc:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    37de:	21 32       	P4 = R1;
    37e0:	43 30       	R0 = P3;
    37e2:	00 e3 0d 24 	CALL 0x7ffc <___eqdf2>;
    37e6:	00 0c       	CC = R0 == 0x0;
    37e8:	0d 6c       	P5 += 0x1;		/* (  1) */
    37ea:	02 14       	IF !CC JUMP 0x37ee <__dtoa_r+0x68e> (BP);
    37ec:	c3 22       	JUMP.S 0x3d72 <__dtoa_r+0xc12>;
    37ee:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
    37f2:	f4 b0 00 00 
    37f6:	43 30       	R0 = P3;
    37f8:	4c 30       	R1 = P4;
    37fa:	00 e3 5f 23 	CALL 0x7eb8 <___divdf3>;
    37fe:	00 e3 07 25 	CALL 0x820c <___fixdfsi>;
    3802:	28 30       	R5 = R0;
    3804:	00 e3 ba 24 	CALL 0x8178 <___floatsidf>;
    3808:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
    380c:	f4 b0 00 00 
    3810:	00 e3 44 22 	CALL 0x7c98 <___muldf3>;
    3814:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    3818:	f1 b0 00 00 
    381c:	43 30       	R0 = P3;
    381e:	4c 30       	R1 = P4;
    3820:	00 e3 14 22 	CALL 0x7c48 <___subdf3>;
    3824:	c9 b9       	P1 = [FP -0x10];
    3826:	15 30       	R2 = R5;
    3828:	82 65       	R2 += 0x30;		/* ( 48) */
    382a:	18 30       	R3 = R0;
    382c:	4d 08       	CC = P5 == P1;
    382e:	11 32       	P2 = R1;
    3830:	7d 30       	R7 = P5;
    3832:	aa e6 ff ff 	B[P5 + -0x1] = R2;
    3836:	c6 17       	IF !CC JUMP 0x37c2 <__dtoa_r+0x662> (BP);
    3838:	5d 32       	P3 = P5;
    383a:	82 ce 05 ce 	R7 = ROT R5 BY 0x0 || P4 = [FP -0x14] || NOP;
    383e:	bc b9 00 00 
    3842:	13 30       	R2 = R3;
    3844:	f2 bc       	[SP + 0xc] = P2;
    3846:	03 30       	R0 = R3;
    3848:	4a 30       	R1 = P2;
    384a:	00 e3 db 21 	CALL 0x7c00 <___adddf3>;
    384e:	f1 b0       	[SP + 0xc] = R1;
    3850:	10 30       	R2 = R0;
    3852:	82 ce 00 ca 	R5 = ROT R0 BY 0x0 || R0 = [FP -0x18] || NOP;
    3856:	a0 b9 00 00 
    385a:	31 30       	R6 = R1;
    385c:	0c 30       	R1 = R4;
    385e:	00 e3 67 24 	CALL 0x812c <___ltdf2>;
    3862:	80 0c       	CC = R0 < 0x0;
    3864:	0d 1c       	IF CC JUMP 0x387e <__dtoa_r+0x71e> (BP);
    3866:	f6 b0       	[SP + 0xc] = R6;
    3868:	82 ce 05 c4 	R2 = ROT R5 BY 0x0 || R0 = [FP -0x18] || NOP;
    386c:	a0 b9 00 00 
    3870:	0c 30       	R1 = R4;
    3872:	00 e3 c5 23 	CALL 0x7ffc <___eqdf2>;
    3876:	00 0c       	CC = R0 == 0x0;
    3878:	ef 16       	IF !CC JUMP 0x3656 <__dtoa_r+0x4f6> (BP);
    387a:	07 48       	CC = !BITTST (R7, 0x0);		/* bit  0 */
    387c:	ed 1e       	IF CC JUMP 0x3656 <__dtoa_r+0x4f6> (BP);
    387e:	00 00       	NOP;
    3880:	9c e5 ff ff 	R4 = B[P3 + -0x1] (X);
    3884:	4b 32       	P1 = P3;
    3886:	f1 6f       	P1 += -0x2;		/* ( -2) */
    3888:	d1 b9       	R1 = [FP -0xc];
    388a:	03 20       	JUMP.S 0x3890 <__dtoa_r+0x730>;
    388c:	5a 32       	P3 = P2;
    388e:	cc 98       	R4 = B[P1--] (X);
    3890:	20 43       	R0 = R4.B (X);
    3892:	ca 61       	R2 = 0x39 (X);		/*		R2=0x39( 57) */
    3894:	53 32       	P2 = P3;
    3896:	10 08       	CC = R0 == R2;
    3898:	fa 6f       	P2 += -0x1;		/* ( -1) */
    389a:	02 1c       	IF CC JUMP 0x389e <__dtoa_r+0x73e> (BP);
    389c:	ba 23       	JUMP.S 0x4010 <__dtoa_r+0xeb0>;
    389e:	52 30       	R2 = P2;
    38a0:	11 08       	CC = R1 == R2;
    38a2:	f5 17       	IF !CC JUMP 0x388c <__dtoa_r+0x72c> (BP);
    38a4:	d9 b9       	P1 = [FP -0xc];
    38a6:	80 b9       	R0 = [FP -0x20];
    38a8:	08 64       	R0 += 0x1;		/* (  1) */
    38aa:	80 bb       	[FP -0x20] = R0;
    38ac:	51 32       	P2 = P1;
    38ae:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    38b0:	8c 61       	R4 = 0x31 (X);		/*		R4=0x31( 49) */
    38b2:	08 9b       	B[P1] = R0;
    38b4:	14 9b       	B[P2] = R4;
    38b6:	d0 2e       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    38b8:	33 b9       	R3 = [FP -0x34];
    38ba:	03 0c       	CC = R3 == 0x0;
    38bc:	40 1c       	IF CC JUMP 0x393c <__dtoa_r+0x7dc> (BP);
    38be:	3b a3       	R3 = [FP + 0x30];
    38c0:	0b 0d       	CC = R3 <= 0x1;
    38c2:	e7 19       	IF CC JUMP 0x3c90 <__dtoa_r+0xb30>;
    38c4:	60 b9       	R0 = [FP -0x28];
    38c6:	f8 67       	R0 += -0x1;		/* ( -1) */
    38c8:	a2 b9       	R2 = [FP -0x18];
    38ca:	82 08       	CC = R2 < R0;
    38cc:	02 10       	IF !CC JUMP 0x38d0 <__dtoa_r+0x770>;
    38ce:	95 22       	JUMP.S 0x3df8 <__dtoa_r+0xc98>;
    38d0:	1a 32       	P3 = R2;
    38d2:	08 32       	P1 = R0;
    38d4:	0b 44       	P3 -= P1;
    38d6:	63 b9       	R3 = [FP -0x28];
    38d8:	83 0c       	CC = R3 < 0x0;
    38da:	02 14       	IF !CC JUMP 0x38de <__dtoa_r+0x77e> (BP);
    38dc:	96 23       	JUMP.S 0x4008 <__dtoa_r+0xea8>;
    38de:	75 b9       	R5 = [FP -0x24];
    38e0:	60 b9       	R0 = [FP -0x28];
    38e2:	72 b9       	R2 = [FP -0x24];
    38e4:	82 50       	R2 = R2 + R0;
    38e6:	72 bb       	[FP -0x24] = R2;
    38e8:	92 b9       	R2 = [FP -0x1c];
    38ea:	82 50       	R2 = R2 + R0;
    38ec:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    38ee:	44 30       	R0 = P4;
    38f0:	92 bb       	[FP -0x1c] = R2;
    38f2:	00 e3 c9 0d 	CALL 0x5484 <___i2b>;
    38f6:	20 30       	R4 = R0;
    38f8:	25 20       	JUMP.S 0x3942 <__dtoa_r+0x7e2>;
    38fa:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
    38fc:	29 bb       	[FP -0x38] = P1;
    38fe:	30 2d       	JUMP.S 0x335e <__dtoa_r+0x1fe>;
    3900:	80 b9       	R0 = [FP -0x20];
    3902:	00 e3 3b 24 	CALL 0x8178 <___floatsidf>;
    3906:	f4 b0       	[SP + 0xc] = R4;
    3908:	15 30       	R2 = R5;
    390a:	00 e3 9f 23 	CALL 0x8048 <___nedf2>;
    390e:	81 b9       	R1 = [FP -0x20];
    3910:	00 0c       	CC = R0 == 0x0;
    3912:	f9 67       	R1 += -0x1;		/* ( -1) */
    3914:	80 b9       	R0 = [FP -0x20];
    3916:	01 06       	IF !CC R0 = R1;
    3918:	80 bb       	[FP -0x20] = R0;
    391a:	06 2d       	JUMP.S 0x3326 <__dtoa_r+0x1c6>;
    391c:	72 b9       	R2 = [FP -0x24];
    391e:	80 b9       	R0 = [FP -0x20];
    3920:	82 52       	R2 = R2 - R0;
    3922:	72 bb       	[FP -0x24] = R2;
    3924:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    3926:	82 43       	R2 = -R0;
    3928:	a2 bb       	[FP -0x18] = R2;
    392a:	43 bb       	[FP -0x30] = R3;
    392c:	32 2d       	JUMP.S 0x3390 <__dtoa_r+0x230>;
    392e:	80 43       	R0 = -R0;
    3930:	00 cc 12 c4 	R2 = R2 -|- R2 || [FP -0x24] = R0 || NOP;
    3934:	70 bb 00 00 
    3938:	92 bb       	[FP -0x1c] = R2;
    393a:	1e 2d       	JUMP.S 0x3376 <__dtoa_r+0x216>;
    393c:	ab b9       	P3 = [FP -0x18];
    393e:	75 b9       	R5 = [FP -0x24];
    3940:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    3942:	05 0c       	CC = R5 == 0x0;
    3944:	0d 18       	IF CC JUMP 0x395e <__dtoa_r+0x7fe>;
    3946:	92 b9       	R2 = [FP -0x1c];
    3948:	02 0d       	CC = R2 <= 0x0;
    394a:	0a 18       	IF CC JUMP 0x395e <__dtoa_r+0x7fe>;
    394c:	07 c4 15 40 	R0 = MIN (R2, R5);
    3950:	72 b9       	R2 = [FP -0x24];
    3952:	82 52       	R2 = R2 - R0;
    3954:	72 bb       	[FP -0x24] = R2;
    3956:	92 b9       	R2 = [FP -0x1c];
    3958:	82 52       	R2 = R2 - R0;
    395a:	45 53       	R5 = R5 - R0;
    395c:	92 bb       	[FP -0x1c] = R2;
    395e:	a2 b9       	R2 = [FP -0x18];
    3960:	02 0d       	CC = R2 <= 0x0;
    3962:	1d 18       	IF CC JUMP 0x399c <__dtoa_r+0x83c>;
    3964:	33 b9       	R3 = [FP -0x34];
    3966:	03 0c       	CC = R3 == 0x0;
    3968:	02 14       	IF !CC JUMP 0x396c <__dtoa_r+0x80c> (BP);
    396a:	3a 22       	JUMP.S 0x3dde <__dtoa_r+0xc7e>;
    396c:	43 0d       	CC = P3 <= 0x0;
    396e:	12 18       	IF CC JUMP 0x3992 <__dtoa_r+0x832>;
    3970:	0c 30       	R1 = R4;
    3972:	53 30       	R2 = P3;
    3974:	44 30       	R0 = P4;
    3976:	00 e3 39 0e 	CALL 0x55e8 <___pow5mult>;
    397a:	20 30       	R4 = R0;
    397c:	52 b9       	R2 = [FP -0x2c];
    397e:	0c 30       	R1 = R4;
    3980:	44 30       	R0 = P4;
    3982:	00 e3 91 0d 	CALL 0x54a4 <___multiply>;
    3986:	28 32       	P5 = R0;
    3988:	51 b9       	R1 = [FP -0x2c];
    398a:	44 30       	R0 = P4;
    398c:	00 e3 6c 0c 	CALL 0x5264 <__Bfree>;
    3990:	5d bb       	[FP -0x2c] = P5;
    3992:	a0 b9       	R0 = [FP -0x18];
    3994:	4b 30       	R1 = P3;
    3996:	88 52       	R2 = R0 - R1;
    3998:	02 0c       	CC = R2 == 0x0;
    399a:	75 11       	IF !CC JUMP 0x3c84 <__dtoa_r+0xb24>;
    399c:	44 30       	R0 = P4;
    399e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    39a0:	00 e3 72 0d 	CALL 0x5484 <___i2b>;
    39a4:	43 b9       	R3 = [FP -0x30];
    39a6:	03 0d       	CC = R3 <= 0x0;
    39a8:	a0 bb       	[FP -0x18] = R0;
    39aa:	07 18       	IF CC JUMP 0x39b8 <__dtoa_r+0x858>;
    39ac:	44 30       	R0 = P4;
    39ae:	a1 b9       	R1 = [FP -0x18];
    39b0:	13 30       	R2 = R3;
    39b2:	00 e3 1b 0e 	CALL 0x55e8 <___pow5mult>;
    39b6:	a0 bb       	[FP -0x18] = R0;
    39b8:	3b a3       	R3 = [FP + 0x30];
    39ba:	0b 0d       	CC = R3 <= 0x1;
    39bc:	29 19       	IF CC JUMP 0x3c0e <__dtoa_r+0xaae>;
    39be:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
    39c0:	43 b9       	R3 = [FP -0x30];
    39c2:	03 0c       	CC = R3 == 0x0;
    39c4:	9a 11       	IF !CC JUMP 0x3cf8 <__dtoa_r+0xb98>;
    39c6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    39c8:	92 b9       	R2 = [FP -0x1c];
    39ca:	51 50       	R1 = R1 + R2;
    39cc:	f8 60       	R0 = 0x1f (X);		/*		R0=0x1f( 31) */
    39ce:	01 54       	R0 = R1 & R0;
    39d0:	00 0c       	CC = R0 == 0x0;
    39d2:	93 1c       	IF CC JUMP 0x3af8 <__dtoa_r+0x998> (BP);
    39d4:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
    39d6:	41 52       	R1 = R1 - R0;
    39d8:	23 60       	R3 = 0x4 (X);		/*		R3=0x4(  4) */
    39da:	19 09       	CC = R1 <= R3;
    39dc:	02 14       	IF !CC JUMP 0x39e0 <__dtoa_r+0x880> (BP);
    39de:	8f 23       	JUMP.S 0x40fc <__dtoa_r+0xf9c>;
    39e0:	e1 60       	R1 = 0x1c (X);		/*		R1=0x1c( 28) */
    39e2:	01 52       	R0 = R1 - R0;
    39e4:	72 b9       	R2 = [FP -0x24];
    39e6:	82 50       	R2 = R2 + R0;
    39e8:	72 bb       	[FP -0x24] = R2;
    39ea:	92 b9       	R2 = [FP -0x1c];
    39ec:	82 50       	R2 = R2 + R0;
    39ee:	45 51       	R5 = R5 + R0;
    39f0:	92 bb       	[FP -0x1c] = R2;
    39f2:	72 b9       	R2 = [FP -0x24];
    39f4:	02 0d       	CC = R2 <= 0x0;
    39f6:	06 18       	IF CC JUMP 0x3a02 <__dtoa_r+0x8a2>;
    39f8:	44 30       	R0 = P4;
    39fa:	51 b9       	R1 = [FP -0x2c];
    39fc:	00 e3 56 0e 	CALL 0x56a8 <___lshift>;
    3a00:	50 bb       	[FP -0x2c] = R0;
    3a02:	92 b9       	R2 = [FP -0x1c];
    3a04:	02 0d       	CC = R2 <= 0x0;
    3a06:	06 18       	IF CC JUMP 0x3a12 <__dtoa_r+0x8b2>;
    3a08:	44 30       	R0 = P4;
    3a0a:	a1 b9       	R1 = [FP -0x18];
    3a0c:	00 e3 4e 0e 	CALL 0x56a8 <___lshift>;
    3a10:	a0 bb       	[FP -0x18] = R0;
    3a12:	23 b9       	R3 = [FP -0x38];
    3a14:	03 0c       	CC = R3 == 0x0;
    3a16:	7a 11       	IF !CC JUMP 0x3d0a <__dtoa_r+0xbaa>;
    3a18:	63 b9       	R3 = [FP -0x28];
    3a1a:	03 0d       	CC = R3 <= 0x0;
    3a1c:	8e 19       	IF CC JUMP 0x3d38 <__dtoa_r+0xbd8>;
    3a1e:	33 b9       	R3 = [FP -0x34];
    3a20:	03 0c       	CC = R3 == 0x0;
    3a22:	78 1c       	IF CC JUMP 0x3b12 <__dtoa_r+0x9b2> (BP);
    3a24:	05 0d       	CC = R5 <= 0x0;
    3a26:	07 18       	IF CC JUMP 0x3a34 <__dtoa_r+0x8d4>;
    3a28:	0c 30       	R1 = R4;
    3a2a:	44 30       	R0 = P4;
    3a2c:	15 30       	R2 = R5;
    3a2e:	00 e3 3d 0e 	CALL 0x56a8 <___lshift>;
    3a32:	20 30       	R4 = R0;
    3a34:	45 0c       	CC = P5 == 0x0;
    3a36:	02 1c       	IF CC JUMP 0x3a3a <__dtoa_r+0x8da> (BP);
    3a38:	55 22       	JUMP.S 0x3ee2 <__dtoa_r+0xd82>;
    3a3a:	2c 30       	R5 = R4;
    3a3c:	dd b9       	P5 = [FP -0xc];
    3a3e:	60 b9       	R0 = [FP -0x28];
    3a40:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    3a42:	d3 b9       	R3 = [FP -0xc];
    3a44:	c3 50       	R3 = R3 + R0;
    3a46:	00 02       	R0 = CC;
    3a48:	0d 6c       	P5 += 0x1;		/* (  1) */
    3a4a:	63 bb       	[FP -0x28] = R3;
    3a4c:	82 ce 04 ce 	R7 = ROT R4 BY 0x0 || R6 = [FP -0x2c] || NOP;
    3a50:	56 b9 00 00 
    3a54:	b8 e6 d0 ff 	B[FP + -0x30] = R0;
    3a58:	4d 32       	P1 = P5;
    3a5a:	f9 6f       	P1 += -0x1;		/* ( -1) */
    3a5c:	a1 b9       	R1 = [FP -0x18];
    3a5e:	06 30       	R0 = R6;
    3a60:	79 bb       	[FP -0x24] = P1;
    3a62:	ff e3 d9 fa 	CALL 0x3014 <_quorem>;
    3a66:	b0 bb       	[FP -0x14] = R0;
    3a68:	18 32       	P3 = R0;
    3a6a:	0f 30       	R1 = R7;
    3a6c:	06 30       	R0 = R6;
    3a6e:	00 e3 77 0e 	CALL 0x575c <___mcmp>;
    3a72:	82 ce 00 c8 	R4 = ROT R0 BY 0x0 || R1 = [FP -0x18] || NOP;
    3a76:	a1 b9 00 00 
    3a7a:	44 30       	R0 = P4;
    3a7c:	15 30       	R2 = R5;
    3a7e:	00 e3 93 0e 	CALL 0x57a4 <___mdiff>;
    3a82:	10 32       	P2 = R0;
    3a84:	83 6d       	P3 += 0x30;		/* ( 48) */
    3a86:	d0 a0       	R0 = [P2 + 0xc];
    3a88:	00 0c       	CC = R0 == 0x0;
    3a8a:	0c 19       	IF CC JUMP 0x3ca2 <__dtoa_r+0xb42>;
    3a8c:	44 30       	R0 = P4;
    3a8e:	4a 30       	R1 = P2;
    3a90:	00 e3 ea 0b 	CALL 0x5264 <__Bfree>;
    3a94:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    3a96:	84 0c       	CC = R4 < 0x0;
    3a98:	c3 19       	IF CC JUMP 0x3e1e <__dtoa_r+0xcbe>;
    3a9a:	04 0c       	CC = R4 == 0x0;
    3a9c:	08 14       	IF !CC JUMP 0x3aac <__dtoa_r+0x94c> (BP);
    3a9e:	3b a3       	R3 = [FP + 0x30];
    3aa0:	03 0c       	CC = R3 == 0x0;
    3aa2:	05 14       	IF !CC JUMP 0x3aac <__dtoa_r+0x94c> (BP);
    3aa4:	b8 e4 d0 ff 	R0 = B[FP + -0x30] (Z);
    3aa8:	08 02       	CC = R0;
    3aaa:	ba 19       	IF CC JUMP 0x3e1e <__dtoa_r+0xcbe>;
    3aac:	02 0d       	CC = R2 <= 0x0;
    3aae:	02 1c       	IF CC JUMP 0x3ab2 <__dtoa_r+0x952> (BP);
    3ab0:	2f 22       	JUMP.S 0x3f0e <__dtoa_r+0xdae>;
    3ab2:	69 b9       	P1 = [FP -0x28];
    3ab4:	43 30       	R0 = P3;
    3ab6:	a8 e6 ff ff 	B[P5 + -0x1] = R0;
    3aba:	4d 08       	CC = P5 == P1;
    3abc:	02 14       	IF !CC JUMP 0x3ac0 <__dtoa_r+0x960> (BP);
    3abe:	33 22       	JUMP.S 0x3f24 <__dtoa_r+0xdc4>;
    3ac0:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    3ac2:	82 ce 06 c2 	R1 = ROT R6 BY 0x0 || [SP + 0xc] = R4 || NOP;
    3ac6:	f4 b0 00 00 
    3aca:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    3acc:	44 30       	R0 = P4;
    3ace:	00 e3 df 0b 	CALL 0x528c <___multadd>;
    3ad2:	2f 08       	CC = R7 == R5;
    3ad4:	30 30       	R6 = R0;
    3ad6:	f4 b0       	[SP + 0xc] = R4;
    3ad8:	44 30       	R0 = P4;
    3ada:	0f 30       	R1 = R7;
    3adc:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    3ade:	07 19       	IF CC JUMP 0x3cec <__dtoa_r+0xb8c>;
    3ae0:	00 e3 d6 0b 	CALL 0x528c <___multadd>;
    3ae4:	38 30       	R7 = R0;
    3ae6:	f4 b0       	[SP + 0xc] = R4;
    3ae8:	0d 30       	R1 = R5;
    3aea:	44 30       	R0 = P4;
    3aec:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    3aee:	00 e3 cf 0b 	CALL 0x528c <___multadd>;
    3af2:	28 30       	R5 = R0;
    3af4:	0d 6c       	P5 += 0x1;		/* (  1) */
    3af6:	b1 2f       	JUMP.S 0x3a58 <__dtoa_r+0x8f8>;
    3af8:	e0 60       	R0 = 0x1c (X);		/*		R0=0x1c( 28) */
    3afa:	75 2f       	JUMP.S 0x39e4 <__dtoa_r+0x884>;
    3afc:	5d 30       	R3 = P5;
    3afe:	20 e1 ee fb 	R0 = -0x412 (X);		/*		R0=0xfffffbee(-1042) */
    3b02:	18 52       	R0 = R0 - R3;
    3b04:	0e 30       	R1 = R6;
    3b06:	81 40       	R1 <<= R0;
    3b08:	01 30       	R0 = R1;
    3b0a:	c2 2b       	JUMP.S 0x328e <__dtoa_r+0x12e>;
    3b0c:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    3b0e:	2a bb       	[FP -0x38] = P2;
    3b10:	27 2c       	JUMP.S 0x335e <__dtoa_r+0x1fe>;
    3b12:	dd b9       	P5 = [FP -0xc];
    3b14:	c4 bb       	[FP -0x10] = R4;
    3b16:	00 cc 3f ce 	R7 = R7 -|- R7 || R5 = [FP -0x28] || NOP;
    3b1a:	65 b9 00 00 
    3b1e:	54 b9       	R4 = [FP -0x2c];
    3b20:	ab b9       	P3 = [FP -0x18];
    3b22:	75 30       	R6 = P5;
    3b24:	0a 20       	JUMP.S 0x3b38 <__dtoa_r+0x9d8>;
    3b26:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [SP + 0xc] = R7 || NOP;
    3b2a:	f7 b0 00 00 
    3b2e:	44 30       	R0 = P4;
    3b30:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    3b32:	00 e3 ad 0b 	CALL 0x528c <___multadd>;
    3b36:	20 30       	R4 = R0;
    3b38:	4b 30       	R1 = P3;
    3b3a:	04 30       	R0 = R4;
    3b3c:	ff e3 6c fa 	CALL 0x3014 <_quorem>;
    3b40:	10 30       	R2 = R0;
    3b42:	82 65       	R2 += 0x30;		/* ( 48) */
    3b44:	2a 9a       	B[P5++] = R2;
    3b46:	4d 30       	R1 = P5;
    3b48:	31 52       	R0 = R1 - R6;
    3b4a:	05 09       	CC = R5 <= R0;
    3b4c:	ed 17       	IF !CC JUMP 0x3b26 <__dtoa_r+0x9c6> (BP);
    3b4e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
    3b50:	63 b9       	R3 = [FP -0x28];
    3b52:	07 cc 1f 0e 	R7 = MAX (R3, R7) || P1 = [FP -0xc] || NOP;
    3b56:	d9 b9 00 00 
    3b5a:	17 32       	P2 = R7;
    3b5c:	54 bb       	[FP -0x2c] = R4;
    3b5e:	82 ce 02 cc 	R6 = ROT R2 BY 0x0 || R4 = [FP -0x10] || NOP;
    3b62:	c4 b9 00 00 
    3b66:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    3b68:	d1 5a       	P3 = P1 + P2;
    3b6a:	51 b9       	R1 = [FP -0x2c];
    3b6c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    3b6e:	44 30       	R0 = P4;
    3b70:	00 e3 9c 0d 	CALL 0x56a8 <___lshift>;
    3b74:	a1 b9       	R1 = [FP -0x18];
    3b76:	50 bb       	[FP -0x2c] = R0;
    3b78:	00 e3 f2 0d 	CALL 0x575c <___mcmp>;
    3b7c:	00 0d       	CC = R0 <= 0x0;
    3b7e:	6c 19       	IF CC JUMP 0x3e56 <__dtoa_r+0xcf6>;
    3b80:	00 00       	NOP;
    3b82:	00 00       	NOP;
    3b84:	00 00       	NOP;
    3b86:	98 e5 ff ff 	R0 = B[P3 + -0x1] (X);
    3b8a:	4b 32       	P1 = P3;
    3b8c:	f1 6f       	P1 += -0x2;		/* ( -2) */
    3b8e:	d2 b9       	R2 = [FP -0xc];
    3b90:	03 20       	JUMP.S 0x3b96 <__dtoa_r+0xa36>;
    3b92:	5a 32       	P3 = P2;
    3b94:	c8 98       	R0 = B[P1--] (X);
    3b96:	01 43       	R1 = R0.B (X);
    3b98:	cb 61       	R3 = 0x39 (X);		/*		R3=0x39( 57) */
    3b9a:	53 32       	P2 = P3;
    3b9c:	19 08       	CC = R1 == R3;
    3b9e:	fa 6f       	P2 += -0x1;		/* ( -1) */
    3ba0:	9e 11       	IF !CC JUMP 0x3edc <__dtoa_r+0xd7c>;
    3ba2:	42 30       	R0 = P2;
    3ba4:	02 08       	CC = R2 == R0;
    3ba6:	f6 17       	IF !CC JUMP 0x3b92 <__dtoa_r+0xa32> (BP);
    3ba8:	d9 b9       	P1 = [FP -0xc];
    3baa:	80 b9       	R0 = [FP -0x20];
    3bac:	08 64       	R0 += 0x1;		/* (  1) */
    3bae:	80 bb       	[FP -0x20] = R0;
    3bb0:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
    3bb2:	08 9b       	B[P1] = R0;
    3bb4:	44 30       	R0 = P4;
    3bb6:	a1 b9       	R1 = [FP -0x18];
    3bb8:	00 e3 56 0b 	CALL 0x5264 <__Bfree>;
    3bbc:	04 0c       	CC = R4 == 0x0;
    3bbe:	02 14       	IF !CC JUMP 0x3bc2 <__dtoa_r+0xa62> (BP);
    3bc0:	4b 2d       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    3bc2:	07 0c       	CC = R7 == 0x0;
    3bc4:	07 18       	IF CC JUMP 0x3bd2 <__dtoa_r+0xa72>;
    3bc6:	27 08       	CC = R7 == R4;
    3bc8:	05 18       	IF CC JUMP 0x3bd2 <__dtoa_r+0xa72>;
    3bca:	44 30       	R0 = P4;
    3bcc:	0f 30       	R1 = R7;
    3bce:	00 e3 4b 0b 	CALL 0x5264 <__Bfree>;
    3bd2:	44 30       	R0 = P4;
    3bd4:	0c 30       	R1 = R4;
    3bd6:	00 e3 47 0b 	CALL 0x5264 <__Bfree>;
    3bda:	3e 2d       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    3bdc:	3b a3       	R3 = [FP + 0x30];
    3bde:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    3be0:	03 08       	CC = R3 == R0;
    3be2:	08 19       	IF CC JUMP 0x3df2 <__dtoa_r+0xc92>;
    3be4:	29 60       	R1 = 0x5 (X);		/*		R1=0x5(  5) */
    3be6:	0b 08       	CC = R3 == R1;
    3be8:	02 18       	IF CC JUMP 0x3bec <__dtoa_r+0xa8c>;
    3bea:	7c 2d       	JUMP.S 0x36e2 <__dtoa_r+0x582>;
    3bec:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
    3bee:	39 bb       	[FP -0x34] = P1;
    3bf0:	79 af       	P1 = [FP + 0x34];
    3bf2:	8a b9       	P2 = [FP -0x20];
    3bf4:	51 5a       	P1 = P1 + P2;
    3bf6:	61 30       	R4 = P1;
    3bf8:	0c 64       	R4 += 0x1;		/* (  1) */
    3bfa:	04 0d       	CC = R4 <= 0x0;
    3bfc:	19 bb       	[FP -0x3c] = P1;
    3bfe:	64 bb       	[FP -0x28] = R4;
    3c00:	02 18       	IF CC JUMP 0x3c04 <__dtoa_r+0xaa4>;
    3c02:	e6 2b       	JUMP.S 0x33ce <__dtoa_r+0x26e>;
    3c04:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    3c06:	20 e6 11 00 	[P4 + 0x44] = R0;
    3c0a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    3c0c:	f3 2b       	JUMP.S 0x33f2 <__dtoa_r+0x292>;
    3c0e:	06 0c       	CC = R6 == 0x0;
    3c10:	d7 16       	IF !CC JUMP 0x39be <__dtoa_r+0x85e> (BP);
    3c12:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
    3c14:	41 e1 0f 00 	R1.H = 0xf;		/* ( 15)	R1=0xfffff(1048575) */
    3c18:	4f 54       	R1 = R7 & R1;
    3c1a:	01 0c       	CC = R1 == 0x0;
    3c1c:	d1 16       	IF !CC JUMP 0x39be <__dtoa_r+0x85e> (BP);
    3c1e:	21 e1 ff 07 	R1 = 0x7ff (X);		/*		R1=0x7ff(2047) */
    3c22:	a1 4f       	R1 <<= 0x14;
    3c24:	0f 54       	R0 = R7 & R1;
    3c26:	00 0c       	CC = R0 == 0x0;
    3c28:	cb 1e       	IF CC JUMP 0x39be <__dtoa_r+0x85e> (BP);
    3c2a:	72 b9       	R2 = [FP -0x24];
    3c2c:	0a 64       	R2 += 0x1;		/* (  1) */
    3c2e:	72 bb       	[FP -0x24] = R2;
    3c30:	92 b9       	R2 = [FP -0x1c];
    3c32:	0a 64       	R2 += 0x1;		/* (  1) */
    3c34:	92 bb       	[FP -0x1c] = R2;
    3c36:	0d 68       	P5 = 0x1 (X);		/*		P5=0x1(  1) */
    3c38:	c4 2e       	JUMP.S 0x39c0 <__dtoa_r+0x860>;
    3c3a:	63 b9       	R3 = [FP -0x28];
    3c3c:	03 0d       	CC = R3 <= 0x0;
    3c3e:	02 18       	IF CC JUMP 0x3c42 <__dtoa_r+0xae2>;
    3c40:	7b 2d       	JUMP.S 0x3736 <__dtoa_r+0x5d6>;
    3c42:	03 0c       	CC = R3 == 0x0;
    3c44:	c9 10       	IF !CC JUMP 0x3dd6 <__dtoa_r+0xc76>;
    3c46:	20 e1 05 10 	R0 = 0x1005 (X);		/*		R0=0x1005(4101) */
    3c4a:	90 4f       	R0 <<= 0x12;
    3c4c:	f0 b0       	[SP + 0xc] = R0;
    3c4e:	00 cc 12 c4 	R2 = R2 -|- R2 || R0 = [FP -0x18] || NOP;
    3c52:	a0 b9 00 00 
    3c56:	0c 30       	R1 = R4;
    3c58:	00 e3 20 20 	CALL 0x7c98 <___muldf3>;
    3c5c:	f7 b0       	[SP + 0xc] = R7;
    3c5e:	16 30       	R2 = R6;
    3c60:	00 e3 40 22 	CALL 0x80e0 <___gedf2>;
    3c64:	80 0c       	CC = R0 < 0x0;
    3c66:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    3c68:	a1 bb       	[FP -0x18] = R1;
    3c6a:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    3c6c:	7c 1c       	IF CC JUMP 0x3d64 <__dtoa_r+0xc04> (BP);
    3c6e:	78 a3       	R0 = [FP + 0x34];
    3c70:	c0 43       	R0 =~ R0;
    3c72:	80 bb       	[FP -0x20] = R0;
    3c74:	db b9       	P3 = [FP -0xc];
    3c76:	44 30       	R0 = P4;
    3c78:	a1 b9       	R1 = [FP -0x18];
    3c7a:	00 e3 f5 0a 	CALL 0x5264 <__Bfree>;
    3c7e:	04 0c       	CC = R4 == 0x0;
    3c80:	a9 17       	IF !CC JUMP 0x3bd2 <__dtoa_r+0xa72> (BP);
    3c82:	ea 2c       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    3c84:	44 30       	R0 = P4;
    3c86:	51 b9       	R1 = [FP -0x2c];
    3c88:	00 e3 b0 0c 	CALL 0x55e8 <___pow5mult>;
    3c8c:	50 bb       	[FP -0x2c] = R0;
    3c8e:	87 2e       	JUMP.S 0x399c <__dtoa_r+0x83c>;
    3c90:	03 b9       	R3 = [FP -0x40];
    3c92:	03 0c       	CC = R3 == 0x0;
    3c94:	c1 1d       	IF CC JUMP 0x4016 <__dtoa_r+0xeb6> (BP);
    3c96:	21 e1 33 04 	R1 = 0x433 (X);		/*		R1=0x433(1075) */
    3c9a:	08 50       	R0 = R0 + R1;
    3c9c:	ab b9       	P3 = [FP -0x18];
    3c9e:	75 b9       	R5 = [FP -0x24];
    3ca0:	21 2e       	JUMP.S 0x38e2 <__dtoa_r+0x782>;
    3ca2:	4a 30       	R1 = P2;
    3ca4:	06 30       	R0 = R6;
    3ca6:	8a ba       	[FP -0x60] = P2;
    3ca8:	00 e3 5a 0d 	CALL 0x575c <___mcmp>;
    3cac:	8a b8       	P2 = [FP -0x60];
    3cae:	10 30       	R2 = R0;
    3cb0:	44 30       	R0 = P4;
    3cb2:	82 ba       	[FP -0x60] = R2;
    3cb4:	4a 30       	R1 = P2;
    3cb6:	00 e3 d7 0a 	CALL 0x5264 <__Bfree>;
    3cba:	82 b8       	R2 = [FP -0x60];
    3cbc:	02 0c       	CC = R2 == 0x0;
    3cbe:	ec 12       	IF !CC JUMP 0x3a96 <__dtoa_r+0x936>;
    3cc0:	3b a3       	R3 = [FP + 0x30];
    3cc2:	03 0c       	CC = R3 == 0x0;
    3cc4:	e9 16       	IF !CC JUMP 0x3a96 <__dtoa_r+0x936> (BP);
    3cc6:	b8 e4 d0 ff 	R0 = B[FP + -0x30] (Z);
    3cca:	08 02       	CC = R0;
    3ccc:	e5 16       	IF !CC JUMP 0x3a96 <__dtoa_r+0x936> (BP);
    3cce:	56 bb       	[FP -0x2c] = R6;
    3cd0:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
    3cd2:	73 30       	R6 = P3;
    3cd4:	0e 08       	CC = R6 == R1;
    3cd6:	bb b9       	P3 = [FP -0x14];
    3cd8:	da 19       	IF CC JUMP 0x408c <__dtoa_r+0xf2c>;
    3cda:	79 b9       	P1 = [FP -0x24];
    3cdc:	8b 6d       	P3 += 0x31;		/* ( 49) */
    3cde:	04 0d       	CC = R4 <= 0x0;
    3ce0:	5b 06       	IF !CC R3 = P3;
    3ce2:	1e 07       	IF CC R3 = R6;
    3ce4:	0b 9b       	B[P1] = R3;
    3ce6:	5d 32       	P3 = P5;
    3ce8:	25 30       	R4 = R5;
    3cea:	65 2f       	JUMP.S 0x3bb4 <__dtoa_r+0xa54>;
    3cec:	00 e3 d0 0a 	CALL 0x528c <___multadd>;
    3cf0:	38 30       	R7 = R0;
    3cf2:	28 30       	R5 = R0;
    3cf4:	0d 6c       	P5 += 0x1;		/* (  1) */
    3cf6:	b1 2e       	JUMP.S 0x3a58 <__dtoa_r+0x8f8>;
    3cf8:	a9 b9       	P1 = [FP -0x18];
    3cfa:	0a ad       	P2 = [P1 + 0x10];
    3cfc:	91 5e       	P2 = P1 + (P2 << 0x2);
    3cfe:	10 a1       	R0 = [P2 + 0x10];
    3d00:	00 e3 54 0b 	CALL 0x53a8 <___hi0bits>;
    3d04:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
    3d06:	41 52       	R1 = R1 - R0;
    3d08:	60 2e       	JUMP.S 0x39c8 <__dtoa_r+0x868>;
    3d0a:	50 b9       	R0 = [FP -0x2c];
    3d0c:	a1 b9       	R1 = [FP -0x18];
    3d0e:	00 e3 27 0d 	CALL 0x575c <___mcmp>;
    3d12:	80 0c       	CC = R0 < 0x0;
    3d14:	82 16       	IF !CC JUMP 0x3a18 <__dtoa_r+0x8b8> (BP);
    3d16:	80 b9       	R0 = [FP -0x20];
    3d18:	f8 67       	R0 += -0x1;		/* ( -1) */
    3d1a:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    3d1c:	80 bb       	[FP -0x20] = R0;
    3d1e:	f3 bc       	[SP + 0xc] = P3;
    3d20:	44 30       	R0 = P4;
    3d22:	51 b9       	R1 = [FP -0x2c];
    3d24:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    3d26:	00 e3 b3 0a 	CALL 0x528c <___multadd>;
    3d2a:	33 b9       	R3 = [FP -0x34];
    3d2c:	03 0c       	CC = R3 == 0x0;
    3d2e:	50 bb       	[FP -0x2c] = R0;
    3d30:	d7 11       	IF !CC JUMP 0x40de <__dtoa_r+0xf7e>;
    3d32:	1a b9       	P2 = [FP -0x3c];
    3d34:	6a bb       	[FP -0x28] = P2;
    3d36:	71 2e       	JUMP.S 0x3a18 <__dtoa_r+0x8b8>;
    3d38:	3b a3       	R3 = [FP + 0x30];
    3d3a:	13 0d       	CC = R3 <= 0x2;
    3d3c:	71 1e       	IF CC JUMP 0x3a1e <__dtoa_r+0x8be> (BP);
    3d3e:	63 b9       	R3 = [FP -0x28];
    3d40:	03 0c       	CC = R3 == 0x0;
    3d42:	96 13       	IF !CC JUMP 0x3c6e <__dtoa_r+0xb0e>;
    3d44:	00 cc 00 c0 	R0 = R0 -|- R0 || R1 = [FP -0x18] || NOP;
    3d48:	a1 b9 00 00 
    3d4c:	f0 b0       	[SP + 0xc] = R0;
    3d4e:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
    3d50:	44 30       	R0 = P4;
    3d52:	00 e3 9d 0a 	CALL 0x528c <___multadd>;
    3d56:	a0 bb       	[FP -0x18] = R0;
    3d58:	a1 b9       	R1 = [FP -0x18];
    3d5a:	50 b9       	R0 = [FP -0x2c];
    3d5c:	00 e3 00 0d 	CALL 0x575c <___mcmp>;
    3d60:	00 0d       	CC = R0 <= 0x0;
    3d62:	86 1b       	IF CC JUMP 0x3c6e <__dtoa_r+0xb0e>;
    3d64:	db b9       	P3 = [FP -0xc];
    3d66:	88 61       	R0 = 0x31 (X);		/*		R0=0x31( 49) */
    3d68:	18 9a       	B[P3++] = R0;
    3d6a:	80 b9       	R0 = [FP -0x20];
    3d6c:	08 64       	R0 += 0x1;		/* (  1) */
    3d6e:	80 bb       	[FP -0x20] = R0;
    3d70:	83 2f       	JUMP.S 0x3c76 <__dtoa_r+0xb16>;
    3d72:	1f 32       	P3 = R7;
    3d74:	bc b9       	P4 = [FP -0x14];
    3d76:	70 2c       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    3d78:	07 30       	R0 = R7;
    3d7a:	00 e3 ff 21 	CALL 0x8178 <___floatsidf>;
    3d7e:	82 ce 05 c4 	R2 = ROT R5 BY 0x0 || [SP + 0xc] = R4 || NOP;
    3d82:	f4 b0 00 00 
    3d86:	00 e3 89 1f 	CALL 0x7c98 <___muldf3>;
    3d8a:	22 e1 07 10 	R2 = 0x1007 (X);		/*		R2=0x1007(4103) */
    3d8e:	92 4f       	R2 <<= 0x12;
    3d90:	f2 b0       	[SP + 0xc] = R2;
    3d92:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    3d94:	00 e3 36 1f 	CALL 0x7c00 <___adddf3>;
    3d98:	30 30       	R6 = R0;
    3d9a:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
    3d9c:	b0 4f       	R0 <<= 0x16;
    3d9e:	c8 51       	R7 = R0 + R1;
    3da0:	20 e1 05 10 	R0 = 0x1005 (X);		/*		R0=0x1005(4101) */
    3da4:	90 4f       	R0 <<= 0x12;
    3da6:	f0 b0       	[SP + 0xc] = R0;
    3da8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    3daa:	05 30       	R0 = R5;
    3dac:	0c 30       	R1 = R4;
    3dae:	00 e3 4d 1f 	CALL 0x7c48 <___subdf3>;
    3db2:	f7 b0       	[SP + 0xc] = R7;
    3db4:	16 30       	R2 = R6;
    3db6:	20 30       	R4 = R0;
    3db8:	29 30       	R5 = R1;
    3dba:	00 e3 6d 21 	CALL 0x8094 <___gtdf2>;
    3dbe:	00 0d       	CC = R0 <= 0x0;
    3dc0:	b7 14       	IF !CC JUMP 0x3f2e <__dtoa_r+0xdce> (BP);
    3dc2:	07 30       	R0 = R7;
    3dc4:	f8 4b       	BITTGL (R0, 0x1f);		/* bit 31 */
    3dc6:	f0 b0       	[SP + 0xc] = R0;
    3dc8:	16 30       	R2 = R6;
    3dca:	04 30       	R0 = R4;
    3dcc:	0d 30       	R1 = R5;
    3dce:	00 e3 af 21 	CALL 0x812c <___ltdf2>;
    3dd2:	80 0c       	CC = R0 < 0x0;
    3dd4:	50 14       	IF !CC JUMP 0x3e74 <__dtoa_r+0xd14> (BP);
    3dd6:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    3dd8:	a1 bb       	[FP -0x18] = R1;
    3dda:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    3ddc:	49 2f       	JUMP.S 0x3c6e <__dtoa_r+0xb0e>;
    3dde:	44 30       	R0 = P4;
    3de0:	51 b9       	R1 = [FP -0x2c];
    3de2:	a2 b9       	R2 = [FP -0x18];
    3de4:	00 e3 02 0c 	CALL 0x55e8 <___pow5mult>;
    3de8:	50 bb       	[FP -0x2c] = R0;
    3dea:	d9 2d       	JUMP.S 0x399c <__dtoa_r+0x83c>;
    3dec:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    3dee:	33 bb       	[FP -0x34] = R3;
    3df0:	00 2f       	JUMP.S 0x3bf0 <__dtoa_r+0xa90>;
    3df2:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    3df4:	33 bb       	[FP -0x34] = R3;
    3df6:	e3 2a       	JUMP.S 0x33bc <__dtoa_r+0x25c>;
    3df8:	a2 b9       	R2 = [FP -0x18];
    3dfa:	43 b9       	R3 = [FP -0x30];
    3dfc:	50 52       	R1 = R0 - R2;
    3dfe:	cb 50       	R3 = R3 + R1;
    3e00:	43 bb       	[FP -0x30] = R3;
    3e02:	a0 bb       	[FP -0x18] = R0;
    3e04:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    3e06:	68 2d       	JUMP.S 0x38d6 <__dtoa_r+0x776>;
    3e08:	e5 b8       	R5 = [FP -0x48];
    3e0a:	d6 b8       	R6 = [FP -0x4c];
    3e0c:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
    3e0e:	2b 2b       	JUMP.S 0x3464 <__dtoa_r+0x304>;
    3e10:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    3e12:	09 68       	P1 = 0x1 (X);		/*		P1=0x1(  1) */
    3e14:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
    3e16:	13 bb       	[FP -0x3c] = R3;
    3e18:	63 bb       	[FP -0x28] = R3;
    3e1a:	79 bf       	[FP + 0x34] = P1;
    3e1c:	f4 2e       	JUMP.S 0x3c04 <__dtoa_r+0xaa4>;
    3e1e:	56 bb       	[FP -0x2c] = R6;
    3e20:	02 0d       	CC = R2 <= 0x0;
    3e22:	73 30       	R6 = P3;
    3e24:	82 ce 06 c8 	R4 = ROT R6 BY 0x0 || P3 = [FP -0x14] || NOP;
    3e28:	bb b9 00 00 
    3e2c:	11 18       	IF CC JUMP 0x3e4e <__dtoa_r+0xcee>;
    3e2e:	51 b9       	R1 = [FP -0x2c];
    3e30:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    3e32:	44 30       	R0 = P4;
    3e34:	00 e3 3a 0c 	CALL 0x56a8 <___lshift>;
    3e38:	a1 b9       	R1 = [FP -0x18];
    3e3a:	50 bb       	[FP -0x2c] = R0;
    3e3c:	00 e3 90 0c 	CALL 0x575c <___mcmp>;
    3e40:	00 0d       	CC = R0 <= 0x0;
    3e42:	49 19       	IF CC JUMP 0x40d4 <__dtoa_r+0xf74>;
    3e44:	c9 61       	R1 = 0x39 (X);		/*		R1=0x39( 57) */
    3e46:	73 30       	R6 = P3;
    3e48:	0c 08       	CC = R4 == R1;
    3e4a:	8e 65       	R6 += 0x31;		/* ( 49) */
    3e4c:	20 19       	IF CC JUMP 0x408c <__dtoa_r+0xf2c>;
    3e4e:	7b b9       	P3 = [FP -0x24];
    3e50:	25 30       	R4 = R5;
    3e52:	1e 9a       	B[P3++] = R6;
    3e54:	b0 2e       	JUMP.S 0x3bb4 <__dtoa_r+0xa54>;
    3e56:	00 0c       	CC = R0 == 0x0;
    3e58:	05 14       	IF !CC JUMP 0x3e62 <__dtoa_r+0xd02> (BP);
    3e5a:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    3e5c:	03 1c       	IF CC JUMP 0x3e62 <__dtoa_r+0xd02> (BP);
    3e5e:	94 2e       	JUMP.S 0x3b86 <__dtoa_r+0xa26>;
    3e60:	19 32       	P3 = R1;
    3e62:	82 61       	R2 = 0x30 (X);		/*		R2=0x30( 48) */
    3e64:	98 e5 ff ff 	R0 = B[P3 + -0x1] (X);
    3e68:	4b 30       	R1 = P3;
    3e6a:	10 08       	CC = R0 == R2;
    3e6c:	f9 67       	R1 += -0x1;		/* ( -1) */
    3e6e:	f9 1f       	IF CC JUMP 0x3e60 <__dtoa_r+0xd00> (BP);
    3e70:	a2 2e       	JUMP.S 0x3bb4 <__dtoa_r+0xa54>;
    3e72:	bc b8       	P4 = [FP -0x54];
    3e74:	e6 b8       	R6 = [FP -0x48];
    3e76:	d7 b8       	R7 = [FP -0x4c];
    3e78:	49 2c       	JUMP.S 0x370a <__dtoa_r+0x5aa>;
    3e7a:	80 b9       	R0 = [FP -0x20];
    3e7c:	86 43       	R6 = -R0;
    3e7e:	06 0c       	CC = R6 == 0x0;
    3e80:	d1 1c       	IF CC JUMP 0x4022 <__dtoa_r+0xec2> (BP);
    3e82:	78 60       	R0 = 0xf (X);		/*		R0=0xf( 15) */
    3e84:	06 54       	R0 = R6 & R0;
    3e86:	18 4f       	R0 <<= 0x3;
    3e88:	08 32       	P1 = R0;
    3e8a:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x0 */
    3e8e:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    3e92:	d1 b8       	R1 = [FP -0x4c];
    3e94:	26 4d       	R6 >>>= 0x4;
    3e96:	8a 5a       	P2 = P2 + P1;
    3e98:	50 a0       	R0 = [P2 + 0x4];
    3e9a:	f0 b0       	[SP + 0xc] = R0;
    3e9c:	12 91       	R2 = [P2];
    3e9e:	e0 b8       	R0 = [FP -0x48];
    3ea0:	00 e3 fc 1e 	CALL 0x7c98 <___muldf3>;
    3ea4:	06 0c       	CC = R6 == 0x0;
    3ea6:	28 30       	R5 = R0;
    3ea8:	21 30       	R4 = R1;
    3eaa:	24 19       	IF CC JUMP 0x40f2 <__dtoa_r+0xf92>;
    3eac:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x1 */
    3eb0:	0d e1 b0 89 	P5.L = 0x89b0;		/* (-30288)	P5=0x89b0 <___mprec_bigtens> */
    3eb4:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
    3eb6:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    3eb8:	0d 1c       	IF CC JUMP 0x3ed2 <__dtoa_r+0xd72> (BP);
    3eba:	6a a0       	R2 = [P5 + 0x4];
    3ebc:	f2 b0       	[SP + 0xc] = R2;
    3ebe:	82 ce 05 c0 	R0 = ROT R5 BY 0x0 || R2 = [P5] || NOP;
    3ec2:	2a 91 00 00 
    3ec6:	0c 30       	R1 = R4;
    3ec8:	00 e3 e8 1e 	CALL 0x7c98 <___muldf3>;
    3ecc:	0f 64       	R7 += 0x1;		/* (  1) */
    3ece:	28 30       	R5 = R0;
    3ed0:	21 30       	R4 = R1;
    3ed2:	0e 4d       	R6 >>>= 0x1;
    3ed4:	06 0c       	CC = R6 == 0x0;
    3ed6:	45 6c       	P5 += 0x8;		/* (  8) */
    3ed8:	ef 17       	IF !CC JUMP 0x3eb6 <__dtoa_r+0xd56> (BP);
    3eda:	e5 2a       	JUMP.S 0x34a4 <__dtoa_r+0x344>;
    3edc:	08 64       	R0 += 0x1;		/* (  1) */
    3ede:	10 9b       	B[P2] = R0;
    3ee0:	6a 2e       	JUMP.S 0x3bb4 <__dtoa_r+0xa54>;
    3ee2:	0c 32       	P1 = R4;
    3ee4:	44 30       	R0 = P4;
    3ee6:	49 a0       	R1 = [P1 + 0x4];
    3ee8:	00 e3 8a 09 	CALL 0x51fc <__Balloc>;
    3eec:	14 32       	P2 = R4;
    3eee:	0c 30       	R1 = R4;
    3ef0:	28 30       	R5 = R0;
    3ef2:	61 64       	R1 += 0xc;		/* ( 12) */
    3ef4:	60 64       	R0 += 0xc;		/* ( 12) */
    3ef6:	12 a1       	R2 = [P2 + 0x10];
    3ef8:	12 64       	R2 += 0x2;		/* (  2) */
    3efa:	12 4f       	R2 <<= 0x2;
    3efc:	00 e3 1e 09 	CALL 0x5138 <_memcpy>;
    3f00:	0d 30       	R1 = R5;
    3f02:	44 30       	R0 = P4;
    3f04:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    3f06:	00 e3 d1 0b 	CALL 0x56a8 <___lshift>;
    3f0a:	28 30       	R5 = R0;
    3f0c:	98 2d       	JUMP.S 0x3a3c <__dtoa_r+0x8dc>;
    3f0e:	56 bb       	[FP -0x2c] = R6;
    3f10:	ca 61       	R2 = 0x39 (X);		/*		R2=0x39( 57) */
    3f12:	73 30       	R6 = P3;
    3f14:	16 08       	CC = R6 == R2;
    3f16:	bb 18       	IF CC JUMP 0x408c <__dtoa_r+0xf2c>;
    3f18:	5b 30       	R3 = P3;
    3f1a:	7b b9       	P3 = [FP -0x24];
    3f1c:	0b 64       	R3 += 0x1;		/* (  1) */
    3f1e:	25 30       	R4 = R5;
    3f20:	1b 9a       	B[P3++] = R3;
    3f22:	49 2e       	JUMP.S 0x3bb4 <__dtoa_r+0xa54>;
    3f24:	56 bb       	[FP -0x2c] = R6;
    3f26:	25 30       	R4 = R5;
    3f28:	73 30       	R6 = P3;
    3f2a:	5d 32       	P3 = P5;
    3f2c:	1f 2e       	JUMP.S 0x3b6a <__dtoa_r+0xa0a>;
    3f2e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    3f30:	a1 bb       	[FP -0x18] = R1;
    3f32:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    3f34:	18 2f       	JUMP.S 0x3d64 <__dtoa_r+0xc04>;
    3f36:	0b 32       	P1 = R3;
    3f38:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x89d8 <___mprec_tens> */
    3f3c:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    3f40:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || [SP + 0xc] = R7 || NOP;
    3f44:	f7 b0 00 00 
    3f48:	83 ba       	[FP -0x60] = R3;
    3f4a:	f9 6f       	P1 += -0x1;		/* ( -1) */
    3f4c:	41 30       	R0 = P1;
    3f4e:	18 4f       	R0 <<= 0x3;
    3f50:	f9 ba       	[FP -0x44] = P1;
    3f52:	08 32       	P1 = R0;
    3f54:	8a 5a       	P2 = P2 + P1;
    3f56:	10 91       	R0 = [P2];
    3f58:	51 a0       	R1 = [P2 + 0x4];
    3f5a:	00 e3 9f 1e 	CALL 0x7c98 <___muldf3>;
    3f5e:	c0 ba       	[FP -0x50] = R0;
    3f60:	b1 ba       	[FP -0x54] = R1;
    3f62:	05 30       	R0 = R5;
    3f64:	0c 30       	R1 = R4;
    3f66:	00 e3 53 21 	CALL 0x820c <___fixdfsi>;
    3f6a:	28 32       	P5 = R0;
    3f6c:	00 e3 06 21 	CALL 0x8178 <___floatsidf>;
    3f70:	f1 b0       	[SP + 0xc] = R1;
    3f72:	10 30       	R2 = R0;
    3f74:	0c 30       	R1 = R4;
    3f76:	05 30       	R0 = R5;
    3f78:	00 e3 68 1e 	CALL 0x7c48 <___subdf3>;
    3f7c:	db b9       	P3 = [FP -0xc];
    3f7e:	38 30       	R7 = R0;
    3f80:	45 30       	R0 = P5;
    3f82:	80 65       	R0 += 0x30;		/* ( 48) */
    3f84:	18 9a       	B[P3++] = R0;
    3f86:	83 b8       	R3 = [FP -0x60];
    3f88:	0b 0c       	CC = R3 == 0x1;
    3f8a:	31 30       	R6 = R1;
    3f8c:	28 18       	IF CC JUMP 0x3fdc <__dtoa_r+0xe7c>;
    3f8e:	d0 b9       	R0 = [FP -0xc];
    3f90:	24 e1 09 10 	R4 = 0x1009 (X);		/*		R4=0x1009(4105) */
    3f94:	58 51       	R5 = R0 + R3;
    3f96:	6b 32       	P5 = P3;
    3f98:	94 4f       	R4 <<= 0x12;
    3f9a:	9c ba       	[FP -0x5c] = P4;
    3f9c:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [SP + 0xc] = R4 || NOP;
    3fa0:	f4 b0 00 00 
    3fa4:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    3fa6:	0e 30       	R1 = R6;
    3fa8:	00 e3 78 1e 	CALL 0x7c98 <___muldf3>;
    3fac:	39 30       	R7 = R1;
    3fae:	30 30       	R6 = R0;
    3fb0:	00 e3 2e 21 	CALL 0x820c <___fixdfsi>;
    3fb4:	20 32       	P4 = R0;
    3fb6:	00 e3 e1 20 	CALL 0x8178 <___floatsidf>;
    3fba:	f1 b0       	[SP + 0xc] = R1;
    3fbc:	10 30       	R2 = R0;
    3fbe:	0f 30       	R1 = R7;
    3fc0:	06 30       	R0 = R6;
    3fc2:	00 e3 43 1e 	CALL 0x7c48 <___subdf3>;
    3fc6:	5c 30       	R3 = P4;
    3fc8:	83 65       	R3 += 0x30;		/* ( 48) */
    3fca:	2b 9a       	B[P5++] = R3;
    3fcc:	31 30       	R6 = R1;
    3fce:	4d 30       	R1 = P5;
    3fd0:	29 08       	CC = R1 == R5;
    3fd2:	38 30       	R7 = R0;
    3fd4:	e4 17       	IF !CC JUMP 0x3f9c <__dtoa_r+0xe3c> (BP);
    3fd6:	f9 b8       	P1 = [FP -0x44];
    3fd8:	9c b8       	P4 = [FP -0x5c];
    3fda:	cb 5a       	P3 = P3 + P1;
    3fdc:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
    3fe0:	a8 4f       	R0 <<= 0x15;
    3fe2:	f0 b0       	[SP + 0xc] = R0;
    3fe4:	00 cc 12 c4 	R2 = R2 -|- R2 || R0 = [FP -0x50] || NOP;
    3fe8:	c0 b8 00 00 
    3fec:	b1 b8       	R1 = [FP -0x54];
    3fee:	00 e3 09 1e 	CALL 0x7c00 <___adddf3>;
    3ff2:	f6 b0       	[SP + 0xc] = R6;
    3ff4:	17 30       	R2 = R7;
    3ff6:	00 e3 9b 20 	CALL 0x812c <___ltdf2>;
    3ffa:	80 0c       	CC = R0 < 0x0;
    3ffc:	4d 14       	IF !CC JUMP 0x4096 <__dtoa_r+0xf36> (BP);
    3ffe:	aa b8       	P2 = [FP -0x58];
    4000:	9c e5 ff ff 	R4 = B[P3 + -0x1] (X);
    4004:	8a bb       	[FP -0x20] = P2;
    4006:	3f 2c       	JUMP.S 0x3884 <__dtoa_r+0x724>;
    4008:	72 b9       	R2 = [FP -0x24];
    400a:	5a 53       	R5 = R2 - R3;
    400c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    400e:	6a 2c       	JUMP.S 0x38e2 <__dtoa_r+0x782>;
    4010:	0c 64       	R4 += 0x1;		/* (  1) */
    4012:	14 9b       	B[P2] = R4;
    4014:	21 2b       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    4016:	e1 b9       	R1 = [FP -0x8];
    4018:	b0 61       	R0 = 0x36 (X);		/*		R0=0x36( 54) */
    401a:	08 52       	R0 = R0 - R1;
    401c:	ab b9       	P3 = [FP -0x18];
    401e:	75 b9       	R5 = [FP -0x24];
    4020:	61 2c       	JUMP.S 0x38e2 <__dtoa_r+0x782>;
    4022:	e5 b8       	R5 = [FP -0x48];
    4024:	d4 b8       	R4 = [FP -0x4c];
    4026:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
    4028:	3e 2a       	JUMP.S 0x34a4 <__dtoa_r+0x344>;
    402a:	63 b9       	R3 = [FP -0x28];
    402c:	03 0c       	CC = R3 == 0x0;
    402e:	a5 1a       	IF CC JUMP 0x3d78 <__dtoa_r+0xc18>;
    4030:	13 b9       	R3 = [FP -0x3c];
    4032:	03 0d       	CC = R3 <= 0x0;
    4034:	20 1b       	IF CC JUMP 0x3e74 <__dtoa_r+0xd14>;
    4036:	89 b9       	P1 = [FP -0x20];
    4038:	20 e1 09 10 	R0 = 0x1009 (X);		/*		R0=0x1009(4105) */
    403c:	90 4f       	R0 <<= 0x12;
    403e:	00 cc 12 c4 	R2 = R2 -|- R2 || [SP + 0xc] = R0 || NOP;
    4042:	f0 b0 00 00 
    4046:	f9 6f       	P1 += -0x1;		/* ( -1) */
    4048:	05 30       	R0 = R5;
    404a:	0c 30       	R1 = R4;
    404c:	a9 ba       	[FP -0x58] = P1;
    404e:	00 e3 25 1e 	CALL 0x7c98 <___muldf3>;
    4052:	28 30       	R5 = R0;
    4054:	07 30       	R0 = R7;
    4056:	08 64       	R0 += 0x1;		/* (  1) */
    4058:	21 30       	R4 = R1;
    405a:	00 e3 8f 20 	CALL 0x8178 <___floatsidf>;
    405e:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || [SP + 0xc] = R1 || NOP;
    4062:	f1 b0 00 00 
    4066:	05 30       	R0 = R5;
    4068:	0c 30       	R1 = R4;
    406a:	00 e3 17 1e 	CALL 0x7c98 <___muldf3>;
    406e:	22 e1 07 10 	R2 = 0x1007 (X);		/*		R2=0x1007(4103) */
    4072:	92 4f       	R2 <<= 0x12;
    4074:	f2 b0       	[SP + 0xc] = R2;
    4076:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    4078:	00 e3 c4 1d 	CALL 0x7c00 <___adddf3>;
    407c:	82 ce 00 cc 	R6 = ROT R0 BY 0x0 || R3 = [FP -0x3c] || NOP;
    4080:	13 b9 00 00 
    4084:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
    4086:	b0 4f       	R0 <<= 0x16;
    4088:	c8 51       	R7 = R0 + R1;
    408a:	39 2a       	JUMP.S 0x34fc <__dtoa_r+0x39c>;
    408c:	7b b9       	P3 = [FP -0x24];
    408e:	c8 61       	R0 = 0x39 (X);		/*		R0=0x39( 57) */
    4090:	25 30       	R4 = R5;
    4092:	18 9a       	B[P3++] = R0;
    4094:	7b 2d       	JUMP.S 0x3b8a <__dtoa_r+0xa2a>;
    4096:	b3 b8       	R3 = [FP -0x54];
    4098:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
    409c:	f3 b0       	[SP + 0xc] = R3;
    409e:	c2 b8       	R2 = [FP -0x50];
    40a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    40a2:	a9 4f       	R1 <<= 0x15;
    40a4:	00 e3 d2 1d 	CALL 0x7c48 <___subdf3>;
    40a8:	f6 b0       	[SP + 0xc] = R6;
    40aa:	17 30       	R2 = R7;
    40ac:	00 e3 f4 1f 	CALL 0x8094 <___gtdf2>;
    40b0:	00 0d       	CC = R0 <= 0x0;
    40b2:	03 14       	IF !CC JUMP 0x40b8 <__dtoa_r+0xf58> (BP);
    40b4:	e0 2e       	JUMP.S 0x3e74 <__dtoa_r+0xd14>;
    40b6:	19 32       	P3 = R1;
    40b8:	82 61       	R2 = 0x30 (X);		/*		R2=0x30( 48) */
    40ba:	98 e5 ff ff 	R0 = B[P3 + -0x1] (X);
    40be:	4b 30       	R1 = P3;
    40c0:	10 08       	CC = R0 == R2;
    40c2:	f9 67       	R1 += -0x1;		/* ( -1) */
    40c4:	f9 1f       	IF CC JUMP 0x40b6 <__dtoa_r+0xf56> (BP);
    40c6:	a3 b8       	R3 = [FP -0x58];
    40c8:	83 bb       	[FP -0x20] = R3;
    40ca:	c6 2a       	JUMP.S 0x3656 <__dtoa_r+0x4f6>;
    40cc:	a3 b8       	R3 = [FP -0x58];
    40ce:	bc b8       	P4 = [FP -0x54];
    40d0:	83 bb       	[FP -0x20] = R3;
    40d2:	d9 2b       	JUMP.S 0x3884 <__dtoa_r+0x724>;
    40d4:	00 0c       	CC = R0 == 0x0;
    40d6:	bc 16       	IF !CC JUMP 0x3e4e <__dtoa_r+0xcee> (BP);
    40d8:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    40da:	ba 1e       	IF CC JUMP 0x3e4e <__dtoa_r+0xcee> (BP);
    40dc:	b4 2e       	JUMP.S 0x3e44 <__dtoa_r+0xce4>;
    40de:	0c 30       	R1 = R4;
    40e0:	f3 bc       	[SP + 0xc] = P3;
    40e2:	44 30       	R0 = P4;
    40e4:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    40e6:	00 e3 d3 08 	CALL 0x528c <___multadd>;
    40ea:	19 b9       	P1 = [FP -0x3c];
    40ec:	20 30       	R4 = R0;
    40ee:	69 bb       	[FP -0x28] = P1;
    40f0:	94 2c       	JUMP.S 0x3a18 <__dtoa_r+0x8b8>;
    40f2:	17 60       	R7 = 0x2 (X);		/*		R7=0x2(  2) */
    40f4:	d8 29       	JUMP.S 0x34a4 <__dtoa_r+0x344>;
    40f6:	aa b8       	P2 = [FP -0x58];
    40f8:	8a bb       	[FP -0x20] = P2;
    40fa:	c5 2b       	JUMP.S 0x3884 <__dtoa_r+0x724>;
    40fc:	23 60       	R3 = 0x4 (X);		/*		R3=0x4(  4) */
    40fe:	19 08       	CC = R1 == R3;
    4100:	02 10       	IF !CC JUMP 0x4104 <__dtoa_r+0xfa4>;
    4102:	78 2c       	JUMP.S 0x39f2 <__dtoa_r+0x892>;
    4104:	e1 61       	R1 = 0x3c (X);		/*		R1=0x3c( 60) */
    4106:	01 52       	R0 = R1 - R0;
    4108:	6e 2c       	JUMP.S 0x39e4 <__dtoa_r+0x884>;
    410a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    410c:	73 29       	JUMP.S 0x33f2 <__dtoa_r+0x292>;
    410e:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
    4110:	4b 29       	JUMP.S 0x33a6 <__dtoa_r+0x246>;
	...

00004114 <___sflush_r>:
    4114:	f4 05       	[--SP] = (R7:6, P5:4);
    4116:	29 32       	P5 = R1;
    4118:	20 32       	P4 = R0;
    411a:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
    411c:	00 e8 04 00 	LINK 0x10;		/* (16) */
    4120:	a9 a9       	R1 = W[P5 + 0xc] (X);
    4122:	01 54       	R0 = R1 & R0;
    4124:	80 42       	R0 = R0.L (X);
    4126:	00 0c       	CC = R0 == 0x0;
    4128:	4b 14       	IF !CC JUMP 0x41be <___sflush_r+0xaa> (BP);
    412a:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || R2 = [P5 + 0x4] || NOP;
    412e:	6a a0 00 00 
    4132:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
    4134:	02 0d       	CC = R2 <= 0x0;
    4136:	a8 b5       	W[P5 + 0xc] = R0;
    4138:	79 18       	IF CC JUMP 0x422a <___sflush_r+0x116>;
    413a:	00 00       	NOP;
    413c:	00 00       	NOP;
    413e:	00 00       	NOP;
    4140:	aa ae       	P2 = [P5 + 0x28];
    4142:	42 0c       	CC = P2 == 0x0;
    4144:	6c 18       	IF CC JUMP 0x421c <___sflush_r+0x108>;
    4146:	00 00       	NOP;
    4148:	61 48       	CC = !BITTST (R1, 0xc);		/* bit 12 */
    414a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    414c:	27 91       	R7 = [P4];
    414e:	22 93       	[P4] = R2;
    4150:	72 18       	IF CC JUMP 0x4234 <___sflush_r+0x120>;
    4152:	00 00       	NOP;
    4154:	00 00       	NOP;
    4156:	00 00       	NOP;
    4158:	2a e4 14 00 	R2 = [P5 + 0x50];
    415c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    415e:	08 54       	R0 = R0 & R1;
    4160:	80 42       	R0 = R0.L (X);
    4162:	00 0c       	CC = R0 == 0x0;
    4164:	08 1c       	IF CC JUMP 0x4174 <___sflush_r+0x60> (BP);
    4166:	29 a3       	R1 = [P5 + 0x30];
    4168:	68 a0       	R0 = [P5 + 0x4];
    416a:	01 0c       	CC = R1 == 0x0;
    416c:	82 52       	R2 = R2 - R0;
    416e:	03 18       	IF CC JUMP 0x4174 <___sflush_r+0x60>;
    4170:	e8 a3       	R0 = [P5 + 0x3c];
    4172:	82 52       	R2 = R2 - R0;
    4174:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    4176:	e9 a1       	R1 = [P5 + 0x1c];
    4178:	f6 b0       	[SP + 0xc] = R6;
    417a:	44 30       	R0 = P4;
    417c:	62 00       	CALL (P2);
    417e:	38 0c       	CC = R0 == -0x1;
    4180:	6b 18       	IF CC JUMP 0x4256 <___sflush_r+0x142>;
    4182:	00 00       	NOP;
    4184:	00 00       	NOP;
    4186:	6e b0       	[P5 + 0x4] = R6;
    4188:	a9 a9       	R1 = W[P5 + 0xc] (X);
    418a:	11 30       	R2 = R1;
    418c:	5a 4c       	BITCLR (R2, 0xb);		/* bit 11 */
    418e:	aa b5       	W[P5 + 0xc] = R2;
    4190:	61 48       	CC = !BITTST (R1, 0xc);		/* bit 12 */
    4192:	2a a1       	R2 = [P5 + 0x10];
    4194:	2a 93       	[P5] = R2;
    4196:	74 14       	IF !CC JUMP 0x427e <___sflush_r+0x16a> (BP);
    4198:	29 a3       	R1 = [P5 + 0x30];
    419a:	01 0c       	CC = R1 == 0x0;
    419c:	27 93       	[P4] = R7;
    419e:	3f 18       	IF CC JUMP 0x421c <___sflush_r+0x108>;
    41a0:	55 30       	R2 = P5;
    41a2:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40 <_.tmp>( 64) */
    41a6:	02 50       	R0 = R2 + R0;
    41a8:	01 08       	CC = R1 == R0;
    41aa:	04 18       	IF CC JUMP 0x41b2 <___sflush_r+0x9e>;
    41ac:	44 30       	R0 = P4;
    41ae:	00 e3 3f 02 	CALL 0x462c <__free_r>;
    41b2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    41b4:	01 e8 00 00 	UNLINK;
    41b8:	28 b3       	[P5 + 0x30] = R0;
    41ba:	b4 05       	(R7:6, P5:4) = [SP++];
    41bc:	10 00       	RTS;
    41be:	00 00       	NOP;
    41c0:	2e a1       	R6 = [P5 + 0x10];
    41c2:	06 0c       	CC = R6 == 0x0;
    41c4:	2c 18       	IF CC JUMP 0x421c <___sflush_r+0x108>;
    41c6:	28 91       	R0 = [P5];
    41c8:	f0 53       	R7 = R0 - R6;
    41ca:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    41cc:	41 54       	R1 = R1 & R0;
    41ce:	89 42       	R1 = R1.L (X);
    41d0:	01 0c       	CC = R1 == 0x0;
    41d2:	2e 93       	[P5] = R6;
    41d4:	29 14       	IF !CC JUMP 0x4226 <___sflush_r+0x112> (BP);
    41d6:	68 a1       	R0 = [P5 + 0x14];
    41d8:	07 0d       	CC = R7 <= 0x0;
    41da:	a8 b0       	[P5 + 0x8] = R0;
    41dc:	06 14       	IF !CC JUMP 0x41e8 <___sflush_r+0xd4> (BP);
    41de:	1f 20       	JUMP.S 0x421c <___sflush_r+0x108>;
    41e0:	c7 53       	R7 = R7 - R0;
    41e2:	07 0d       	CC = R7 <= 0x0;
    41e4:	86 51       	R6 = R6 + R0;
    41e6:	1b 18       	IF CC JUMP 0x421c <___sflush_r+0x108>;
    41e8:	f7 b0       	[SP + 0xc] = R7;
    41ea:	44 30       	R0 = P4;
    41ec:	16 30       	R2 = R6;
    41ee:	6a ae       	P2 = [P5 + 0x24];
    41f0:	e9 a1       	R1 = [P5 + 0x1c];
    41f2:	62 00       	CALL (P2);
    41f4:	00 0d       	CC = R0 <= 0x0;
    41f6:	f5 17       	IF !CC JUMP 0x41e0 <___sflush_r+0xcc> (BP);
    41f8:	01 e8 00 00 	UNLINK;
    41fc:	a8 a9       	R0 = W[P5 + 0xc] (X);
    41fe:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
    4200:	a8 b5       	W[P5 + 0xc] = R0;
    4202:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    4204:	b4 05       	(R7:6, P5:4) = [SP++];
    4206:	10 00       	RTS;
    4208:	20 91       	R0 = [P4];
    420a:	00 0c       	CC = R0 == 0x0;
    420c:	21 1c       	IF CC JUMP 0x424e <___sflush_r+0x13a> (BP);
    420e:	e9 60       	R1 = 0x1d (X);		/*		R1=0x1d( 29) */
    4210:	08 08       	CC = R0 == R1;
    4212:	04 18       	IF CC JUMP 0x421a <___sflush_r+0x106>;
    4214:	b2 60       	R2 = 0x16 (X);		/*		R2=0x16( 22) */
    4216:	10 08       	CC = R0 == R2;
    4218:	f0 17       	IF !CC JUMP 0x41f8 <___sflush_r+0xe4> (BP);
    421a:	27 93       	[P4] = R7;
    421c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    421e:	01 e8 00 00 	UNLINK;
    4222:	b4 05       	(R7:6, P5:4) = [SP++];
    4224:	10 00       	RTS;
    4226:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4228:	d8 2f       	JUMP.S 0x41d8 <___sflush_r+0xc4>;
    422a:	ea a3       	R2 = [P5 + 0x3c];
    422c:	02 0d       	CC = R2 <= 0x0;
    422e:	88 17       	IF !CC JUMP 0x413e <___sflush_r+0x2a> (BP);
    4230:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4232:	f6 2f       	JUMP.S 0x421e <___sflush_r+0x10a>;
    4234:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4236:	f0 b0       	[SP + 0xc] = R0;
    4238:	00 cc 12 c4 	R2 = R2 -|- R2 || R1 = [P5 + 0x1c] || NOP;
    423c:	e9 a1 00 00 
    4240:	44 30       	R0 = P4;
    4242:	62 00       	CALL (P2);
    4244:	38 0c       	CC = R0 == -0x1;
    4246:	10 30       	R2 = R0;
    4248:	e0 1b       	IF CC JUMP 0x4208 <___sflush_r+0xf4>;
    424a:	00 00       	NOP;
    424c:	00 00       	NOP;
    424e:	00 00       	NOP;
    4250:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4252:	aa ae       	P2 = [P5 + 0x28];
    4254:	84 2f       	JUMP.S 0x415c <___sflush_r+0x48>;
    4256:	21 91       	R1 = [P4];
    4258:	01 0c       	CC = R1 == 0x0;
    425a:	96 1f       	IF CC JUMP 0x4186 <___sflush_r+0x72> (BP);
    425c:	ea 60       	R2 = 0x1d (X);		/*		R2=0x1d( 29) */
    425e:	11 08       	CC = R1 == R2;
    4260:	07 18       	IF CC JUMP 0x426e <___sflush_r+0x15a>;
    4262:	b0 60       	R0 = 0x16 (X);		/*		R0=0x16( 22) */
    4264:	01 08       	CC = R1 == R0;
    4266:	c9 13       	IF !CC JUMP 0x41f8 <___sflush_r+0xe4>;
    4268:	00 00       	NOP;
    426a:	00 00       	NOP;
    426c:	00 00       	NOP;
    426e:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4270:	58 4c       	BITCLR (R0, 0xb);		/* bit 11 */
    4272:	a8 b5       	W[P5 + 0xc] = R0;
    4274:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4276:	68 b0       	[P5 + 0x4] = R0;
    4278:	28 a1       	R0 = [P5 + 0x10];
    427a:	28 93       	[P5] = R0;
    427c:	8e 2f       	JUMP.S 0x4198 <___sflush_r+0x84>;
    427e:	28 e6 14 00 	[P5 + 0x50] = R0;
    4282:	8b 2f       	JUMP.S 0x4198 <___sflush_r+0x84>;

00004284 <__fflush_r>:
    4284:	c4 04       	[--SP] = (P5:4);
    4286:	28 32       	P5 = R0;
    4288:	00 e8 03 00 	LINK 0xc;		/* (12) */
    428c:	21 32       	P4 = R1;
    428e:	45 0c       	CC = P5 == 0x0;
    4290:	07 18       	IF CC JUMP 0x429e <__fflush_r+0x1a>;
    4292:	a8 a3       	R0 = [P5 + 0x38];
    4294:	00 0c       	CC = R0 == 0x0;
    4296:	13 18       	IF CC JUMP 0x42bc <__fflush_r+0x38>;
    4298:	00 00       	NOP;
    429a:	00 00       	NOP;
    429c:	00 00       	NOP;
    429e:	a0 a9       	R0 = W[P4 + 0xc] (X);
    42a0:	00 0c       	CC = R0 == 0x0;
    42a2:	06 10       	IF !CC JUMP 0x42ae <__fflush_r+0x2a>;
    42a4:	01 e8 00 00 	UNLINK;
    42a8:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    42aa:	84 04       	(P5:4) = [SP++];
    42ac:	10 00       	RTS;
    42ae:	01 e8 00 00 	UNLINK;
    42b2:	45 30       	R0 = P5;
    42b4:	4c 30       	R1 = P4;
    42b6:	84 04       	(P5:4) = [SP++];
    42b8:	ff e2 2e ff 	JUMP.L 0x4114 <___sflush_r>;
    42bc:	45 30       	R0 = P5;
    42be:	00 e3 93 00 	CALL 0x43e4 <___sinit>;
    42c2:	ee 2f       	JUMP.S 0x429e <__fflush_r+0x1a>;

000042c4 <_fflush>:
    42c4:	00 0c       	CC = R0 == 0x0;
    42c6:	00 e8 00 00 	LINK 0x0;		/* (0) */
    42ca:	08 30       	R1 = R0;
    42cc:	0a 18       	IF CC JUMP 0x42e0 <_fflush+0x1c>;
    42ce:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x89d8 <___mprec_tens> */
    42d2:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    42d6:	01 e8 00 00 	UNLINK;
    42da:	10 91       	R0 = [P2];
    42dc:	ff e2 d4 ff 	JUMP.L 0x4284 <__fflush_r>;
    42e0:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    42e4:	0a e1 9c 87 	P2.L = 0x879c;		/* (-30820)	P2=0x879c <__global_impure_ptr> */
    42e8:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x1d( 29) */
    42ec:	10 91       	R0 = [P2];
    42ee:	01 e1 84 42 	R1.L = 0x4284;		/* (17028)	R1=0x4284 <__fflush_r>(17028) */
    42f2:	01 e8 00 00 	UNLINK;
    42f6:	00 e2 d3 02 	JUMP.L 0x489c <__fwalk_reent>;
	...

000042fc <___fp_lock>:
    42fc:	00 00       	NOP;
    42fe:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4302:	01 e8 00 00 	UNLINK;
    4306:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4308:	10 00       	RTS;
	...

0000430c <___fp_unlock>:
    430c:	00 00       	NOP;
    430e:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4312:	01 e8 00 00 	UNLINK;
    4316:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4318:	10 00       	RTS;
	...

0000431c <__cleanup_r>:
    431c:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4320:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x4284 <__fflush_r>(17028) */
    4324:	01 e1 64 6b 	R1.L = 0x6b64;		/* (27492)	R1=0x6b64 <_fclose>(27492) */
    4328:	01 e8 00 00 	UNLINK;
    432c:	00 e2 80 02 	JUMP.L 0x482c <__fwalk>;

00004330 <_std.isra.0>:
    4330:	c5 04       	[--SP] = (P5:5);
    4332:	28 32       	P5 = R0;
    4334:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4336:	00 e8 03 00 	LINK 0xc;		/* (12) */
    433a:	28 93       	[P5] = R0;
    433c:	68 b0       	[P5 + 0x4] = R0;
    433e:	a8 b0       	[P5 + 0x8] = R0;
    4340:	a9 b5       	W[P5 + 0xc] = R1;
    4342:	28 e6 19 00 	[P5 + 0x64] = R0;
    4346:	28 b1       	[P5 + 0x10] = R0;
    4348:	68 b1       	[P5 + 0x14] = R0;
    434a:	a8 b1       	[P5 + 0x18] = R0;
    434c:	4d 30       	R1 = P5;
    434e:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
    4352:	ea b5       	W[P5 + 0xe] = R2;
    4354:	01 50       	R0 = R1 + R0;
    4356:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
    4358:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    435a:	ff e3 29 e9 	CALL 0x15ac <_memset>;
    435e:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x5c( 92) */
    4362:	00 e1 ac 5c 	R0.L = 0x5cac;		/* (23724)	R0=0x5cac <___sread>(23724) */
    4366:	28 b2       	[P5 + 0x20] = R0;
    4368:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x5cac <___sread>(23724) */
    436c:	00 e1 f4 5c 	R0.L = 0x5cf4;		/* (23796)	R0=0x5cf4 <___swrite>(23796) */
    4370:	68 b2       	[P5 + 0x24] = R0;
    4372:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x5cf4 <___swrite>(23796) */
    4376:	00 e1 38 5d 	R0.L = 0x5d38;		/* (23864)	R0=0x5d38 <___sseek>(23864) */
    437a:	a8 b2       	[P5 + 0x28] = R0;
    437c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x5d38 <___sseek>(23864) */
    4380:	00 e1 6c 5d 	R0.L = 0x5d6c;		/* (23916)	R0=0x5d6c <___sclose>(23916) */
    4384:	01 e8 00 00 	UNLINK;
    4388:	ed bd       	[P5 + 0x1c] = P5;
    438a:	e8 b2       	[P5 + 0x2c] = R0;
    438c:	85 04       	(P5:5) = [SP++];
    438e:	10 00       	RTS;

00004390 <___sfmoreglue>:
    4390:	fc 05       	[--SP] = (R7:7, P5:4);
    4392:	21 32       	P4 = R1;
    4394:	00 e8 03 00 	LINK 0xc;		/* (12) */
    4398:	a4 5c       	P2 = P4 + (P4 << 0x1);
    439a:	94 5e       	P2 = P4 + (P2 << 0x2);
    439c:	7a 30       	R7 = P2;
    439e:	1f 4f       	R7 <<= 0x3;
    43a0:	0f 30       	R1 = R7;
    43a2:	61 64       	R1 += 0xc;		/* ( 12) */
    43a4:	00 e3 ae 03 	CALL 0x4b00 <__malloc_r>;
    43a8:	28 32       	P5 = R0;
    43aa:	45 0c       	CC = P5 == 0x0;
    43ac:	0b 18       	IF CC JUMP 0x43c2 <___sfmoreglue+0x32>;
    43ae:	60 64       	R0 += 0xc;		/* ( 12) */
    43b0:	00 cc 09 c2 	R1 = R1 -|- R1 || [P5 + 0x4] = P4 || NOP;
    43b4:	6c bc 00 00 
    43b8:	29 93       	[P5] = R1;
    43ba:	a8 b0       	[P5 + 0x8] = R0;
    43bc:	17 30       	R2 = R7;
    43be:	ff e3 f7 e8 	CALL 0x15ac <_memset>;
    43c2:	01 e8 00 00 	UNLINK;
    43c6:	45 30       	R0 = P5;
    43c8:	bc 05       	(R7:7, P5:4) = [SP++];
    43ca:	10 00       	RTS;

000043cc <__cleanup>:
    43cc:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x879c <__global_impure_ptr> */
    43d0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    43d4:	0a e1 9c 87 	P2.L = 0x879c;		/* (-30820)	P2=0x879c <__global_impure_ptr> */
    43d8:	10 91       	R0 = [P2];
    43da:	01 e8 00 00 	UNLINK;
    43de:	ff e2 9f ff 	JUMP.L 0x431c <__cleanup_r>;
	...

000043e4 <___sinit>:
    43e4:	c5 04       	[--SP] = (P5:5);
    43e6:	28 32       	P5 = R0;
    43e8:	00 e8 03 00 	LINK 0xc;		/* (12) */
    43ec:	a8 a3       	R0 = [P5 + 0x38];
    43ee:	00 0c       	CC = R0 == 0x0;
    43f0:	05 18       	IF CC JUMP 0x43fa <___sinit+0x16>;
    43f2:	01 e8 00 00 	UNLINK;
    43f6:	85 04       	(P5:5) = [SP++];
    43f8:	10 00       	RTS;
    43fa:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x5d6c <___sclose>(23916) */
    43fe:	00 e1 1c 43 	R0.L = 0x431c;		/* (17180)	R0=0x431c <__cleanup_r>(17180) */
    4402:	e8 b3       	[P5 + 0x3c] = R0;
    4404:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4406:	a8 b3       	[P5 + 0x38] = R0;
    4408:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    440a:	28 e6 b8 00 	[P5 + 0x2e0] = R0;
    440e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    4410:	28 e6 b9 00 	[P5 + 0x2e4] = R0;
    4414:	4d 30       	R1 = P5;
    4416:	20 e1 ec 02 	R0 = 0x2ec (X);		/*		R0=0x2ec(748) */
    441a:	01 50       	R0 = R1 + R0;
    441c:	28 e6 ba 00 	[P5 + 0x2e8] = R0;
    4420:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    4422:	68 a0       	R0 = [P5 + 0x4];
    4424:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    4426:	ff e3 85 ff 	CALL 0x4330 <_std.isra.0>;
    442a:	a8 a0       	R0 = [P5 + 0x8];
    442c:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
    442e:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    4430:	ff e3 80 ff 	CALL 0x4330 <_std.isra.0>;
    4434:	01 e8 00 00 	UNLINK;
    4438:	e8 a0       	R0 = [P5 + 0xc];
    443a:	91 60       	R1 = 0x12 (X);		/*		R1=0x12( 18) */
    443c:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
    443e:	85 04       	(P5:5) = [SP++];
    4440:	ff e2 78 ff 	JUMP.L 0x4330 <_std.isra.0>;

00004444 <___sfp>:
    4444:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x879c <__global_impure_ptr> */
    4448:	0a e1 9c 87 	P2.L = 0x879c;		/* (-30820)	P2=0x879c <__global_impure_ptr> */
    444c:	fb 05       	[--SP] = (R7:7, P5:3);
    444e:	55 91       	P5 = [P2];
    4450:	00 e8 03 00 	LINK 0xc;		/* (12) */
    4454:	38 30       	R7 = R0;
    4456:	a8 a3       	R0 = [P5 + 0x38];
    4458:	00 0c       	CC = R0 == 0x0;
    445a:	3b 18       	IF CC JUMP 0x44d0 <___sfp+0x8c>;
    445c:	2b e1 e0 02 	P3 = 0x2e0 (X);		/*		P3=0x2e0(736) */
    4460:	dd 5a       	P3 = P5 + P3;
    4462:	2c e1 68 00 	P4 = 0x68 (X);		/*		P4=0x68(104) */
    4466:	5a ac       	P2 = [P3 + 0x4];
    4468:	9d ac       	P5 = [P3 + 0x8];
    446a:	4a 30       	R1 = P2;
    446c:	f9 67       	R1 += -0x1;		/* ( -1) */
    446e:	81 0c       	CC = R1 < 0x0;
    4470:	0b 18       	IF CC JUMP 0x4486 <___sfp+0x42>;
    4472:	00 00       	NOP;
    4474:	00 00       	NOP;
    4476:	b2 e0 07 20 	LSETUP(0x447a <___sfp+0x36>, 0x4484 <___sfp+0x40>) LC1 = P2;
    447a:	a9 a9       	R1 = W[P5 + 0xc] (X);
    447c:	01 0c       	CC = R1 == 0x0;
    447e:	09 18       	IF CC JUMP 0x4490 <___sfp+0x4c>;
    4480:	00 00       	NOP;
    4482:	00 00       	NOP;
    4484:	65 5b       	P5 = P5 + P4;
    4486:	18 91       	R0 = [P3];
    4488:	00 0c       	CC = R0 == 0x0;
    448a:	27 18       	IF CC JUMP 0x44d8 <___sfp+0x94>;
    448c:	18 32       	P3 = R0;
    448e:	ec 2f       	JUMP.S 0x4466 <___sfp+0x22>;
    4490:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    4492:	e8 b5       	W[P5 + 0xe] = R0;
    4494:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4496:	04 68       	P4 = 0x0 (X);		/*		P4=0x0(  0) */
    4498:	a8 b5       	W[P5 + 0xc] = R0;
    449a:	4d 30       	R1 = P5;
    449c:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
    44a0:	01 50       	R0 = R1 + R0;
    44a2:	2c e7 19 00 	[P5 + 0x64] = P4;
    44a6:	6c 93       	[P5] = P4;
    44a8:	ac bc       	[P5 + 0x8] = P4;
    44aa:	6c bc       	[P5 + 0x4] = P4;
    44ac:	2c bd       	[P5 + 0x10] = P4;
    44ae:	6c bd       	[P5 + 0x14] = P4;
    44b0:	ac bd       	[P5 + 0x18] = P4;
    44b2:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    44b4:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
    44b6:	ff e3 7b e8 	CALL 0x15ac <_memset>;
    44ba:	2c bf       	[P5 + 0x30] = P4;
    44bc:	6c bf       	[P5 + 0x34] = P4;
    44be:	2c e7 11 00 	[P5 + 0x44] = P4;
    44c2:	2c e7 12 00 	[P5 + 0x48] = P4;
    44c6:	01 e8 00 00 	UNLINK;
    44ca:	45 30       	R0 = P5;
    44cc:	bb 05       	(R7:7, P5:3) = [SP++];
    44ce:	10 00       	RTS;
    44d0:	45 30       	R0 = P5;
    44d2:	ff e3 89 ff 	CALL 0x43e4 <___sinit>;
    44d6:	c3 2f       	JUMP.S 0x445c <___sfp+0x18>;
    44d8:	07 30       	R0 = R7;
    44da:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    44dc:	ff e3 5a ff 	CALL 0x4390 <___sfmoreglue>;
    44e0:	00 0c       	CC = R0 == 0x0;
    44e2:	18 93       	[P3] = R0;
    44e4:	d4 17       	IF !CC JUMP 0x448c <___sfp+0x48> (BP);
    44e6:	17 32       	P2 = R7;
    44e8:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
    44ea:	05 68       	P5 = 0x0 (X);		/*		P5=0x0(  0) */
    44ec:	10 93       	[P2] = R0;
    44ee:	ec 2f       	JUMP.S 0x44c6 <___sfp+0x82>;

000044f0 <___sfp_lock_acquire>:
    44f0:	00 00       	NOP;
    44f2:	00 00       	NOP;
    44f4:	00 e8 00 00 	LINK 0x0;		/* (0) */
    44f8:	01 e8 00 00 	UNLINK;
    44fc:	10 00       	RTS;
	...

00004500 <___sfp_lock_release>:
    4500:	00 00       	NOP;
    4502:	00 00       	NOP;
    4504:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4508:	01 e8 00 00 	UNLINK;
    450c:	10 00       	RTS;
	...

00004510 <___sinit_lock_acquire>:
    4510:	00 00       	NOP;
    4512:	00 00       	NOP;
    4514:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4518:	01 e8 00 00 	UNLINK;
    451c:	10 00       	RTS;
	...

00004520 <___sinit_lock_release>:
    4520:	00 00       	NOP;
    4522:	00 00       	NOP;
    4524:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4528:	01 e8 00 00 	UNLINK;
    452c:	10 00       	RTS;
	...

00004530 <___fp_lock_all>:
    4530:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x879c <__global_impure_ptr> */
    4534:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4538:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    453c:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x4 <_.xy>(  4) */
    4540:	10 91       	R0 = [P2];
    4542:	01 e1 fc 42 	R1.L = 0x42fc;		/* (17148)	R1=0x42fc <___fp_lock>(17148) */
    4546:	01 e8 00 00 	UNLINK;
    454a:	00 e2 71 01 	JUMP.L 0x482c <__fwalk>;
	...

00004550 <___fp_unlock_all>:
    4550:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    4554:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4558:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    455c:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x42fc <___fp_lock>(17148) */
    4560:	10 91       	R0 = [P2];
    4562:	01 e1 0c 43 	R1.L = 0x430c;		/* (17164)	R1=0x430c <___fp_unlock>(17164) */
    4566:	01 e8 00 00 	UNLINK;
    456a:	00 e2 61 01 	JUMP.L 0x482c <__fwalk>;
	...

00004570 <__malloc_trim_r>:
    4570:	ed 05       	[--SP] = (R7:5, P5:5);
    4572:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x0 */
    4576:	00 e8 03 00 	LINK 0xc;		/* (12) */
    457a:	0d e1 b4 94 	P5.L = 0x94b4;		/* (-27468)	P5=0x94b4 <___malloc_av_> */
    457e:	29 30       	R5 = R1;
    4580:	38 30       	R7 = R0;
    4582:	00 e3 2d 06 	CALL 0x51dc <___malloc_lock>;
    4586:	aa ac       	P2 = [P5 + 0x8];
    4588:	e6 63       	R6 = -0x4 (X);		/*		R6=0xfffffffc( -4) */
    458a:	21 e1 ef 0f 	R1 = 0xfef (X);		/*		R1=0xfef(4079) */
    458e:	50 a0       	R0 = [P2 + 0x4];
    4590:	86 55       	R6 = R6 & R0;
    4592:	4e 50       	R1 = R6 + R1;
    4594:	69 52       	R1 = R1 - R5;
    4596:	61 4e       	R1 >>= 0xc;
    4598:	f9 67       	R1 += -0x1;		/* ( -1) */
    459a:	82 c6 61 8a 	R5 = R1 << 0xc;
    459e:	20 e1 ff 0f 	R0 = 0xfff (X);		/*		R0=0xfff(4095) */
    45a2:	05 09       	CC = R5 <= R0;
    45a4:	09 18       	IF CC JUMP 0x45b6 <__malloc_trim_r+0x46>;
    45a6:	07 30       	R0 = R7;
    45a8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    45aa:	00 e3 63 0b 	CALL 0x5c70 <__sbrk_r>;
    45ae:	aa a0       	R2 = [P5 + 0x8];
    45b0:	72 50       	R1 = R2 + R6;
    45b2:	08 08       	CC = R0 == R1;
    45b4:	09 18       	IF CC JUMP 0x45c6 <__malloc_trim_r+0x56>;
    45b6:	07 30       	R0 = R7;
    45b8:	00 e3 1a 06 	CALL 0x51ec <___malloc_unlock>;
    45bc:	01 e8 00 00 	UNLINK;
    45c0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    45c2:	ad 05       	(R7:5, P5:5) = [SP++];
    45c4:	10 00       	RTS;
    45c6:	a9 43       	R1 = -R5;
    45c8:	07 30       	R0 = R7;
    45ca:	00 e3 53 0b 	CALL 0x5c70 <__sbrk_r>;
    45ce:	38 0c       	CC = R0 == -0x1;
    45d0:	16 18       	IF CC JUMP 0x45fc <__malloc_trim_r+0x8c>;
    45d2:	ae 53       	R6 = R6 - R5;
    45d4:	06 4a       	BITSET (R6, 0x0);		/* bit  0 */
    45d6:	aa ac       	P2 = [P5 + 0x8];
    45d8:	56 b0       	[P2 + 0x4] = R6;
    45da:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    45de:	0a e1 cc 98 	P2.L = 0x98cc;		/* (-26420)	P2=0x98cc <___malloc_current_mallinfo> */
    45e2:	10 91       	R0 = [P2];
    45e4:	68 53       	R5 = R0 - R5;
    45e6:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || [P2] = R5 || NOP;
    45ea:	15 93 00 00 
    45ee:	00 e3 ff 05 	CALL 0x51ec <___malloc_unlock>;
    45f2:	01 e8 00 00 	UNLINK;
    45f6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    45f8:	ad 05       	(R7:5, P5:5) = [SP++];
    45fa:	10 00       	RTS;
    45fc:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    45fe:	07 30       	R0 = R7;
    4600:	00 e3 38 0b 	CALL 0x5c70 <__sbrk_r>;
    4604:	a9 a0       	R1 = [P5 + 0x8];
    4606:	88 52       	R2 = R0 - R1;
    4608:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    460a:	1a 09       	CC = R2 <= R3;
    460c:	d5 1b       	IF CC JUMP 0x45b6 <__malloc_trim_r+0x46>;
    460e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98cc <___malloc_current_mallinfo> */
    4612:	0a e1 ac 94 	P2.L = 0x94ac;		/* (-27476)	P2=0x94ac <___malloc_sbrk_base> */
    4616:	02 4a       	BITSET (R2, 0x0);		/* bit  0 */
    4618:	13 91       	R3 = [P2];
    461a:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x94ac <___malloc_sbrk_base> */
    461e:	0a e1 cc 98 	P2.L = 0x98cc;		/* (-26420)	P2=0x98cc <___malloc_current_mallinfo> */
    4622:	18 52       	R0 = R0 - R3;
    4624:	10 93       	[P2] = R0;
    4626:	11 32       	P2 = R1;
    4628:	52 b0       	[P2 + 0x4] = R2;
    462a:	c6 2f       	JUMP.S 0x45b6 <__malloc_trim_r+0x46>;

0000462c <__free_r>:
    462c:	fc 05       	[--SP] = (R7:7, P5:4);
    462e:	29 32       	P5 = R1;
    4630:	00 e8 03 00 	LINK 0xc;		/* (12) */
    4634:	38 30       	R7 = R0;
    4636:	45 0c       	CC = P5 == 0x0;
    4638:	6f 18       	IF CC JUMP 0x4716 <__free_r+0xea>;
    463a:	00 e3 d1 05 	CALL 0x51dc <___malloc_lock>;
    463e:	4d 32       	P1 = P5;
    4640:	c1 6f       	P1 += -0x8;		/* ( -8) */
    4642:	29 e4 ff ff 	R1 = [P5 + -0x4];
    4646:	11 30       	R2 = R1;
    4648:	02 4c       	BITCLR (R2, 0x0);		/* bit  0 */
    464a:	02 32       	P0 = R2;
    464c:	e3 63       	R3 = -0x4 (X);		/*		R3=0xfffffffc( -4) */
    464e:	81 5a       	P2 = P1 + P0;
    4650:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0x0 */
    4654:	08 e1 b4 94 	P0.L = 0x94b4;		/* (-27468)	P0=0x94b4 <___malloc_av_> */
    4658:	84 ac       	P4 = [P0 + 0x8];
    465a:	50 a0       	R0 = [P2 + 0x4];
    465c:	03 54       	R0 = R3 & R0;
    465e:	54 08       	CC = P4 == P2;
    4660:	87 18       	IF CC JUMP 0x476e <__free_r+0x142>;
    4662:	01 48       	CC = !BITTST (R1, 0x0);		/* bit  0 */
    4664:	50 b0       	[P2 + 0x4] = R0;
    4666:	45 1c       	IF CC JUMP 0x46f0 <__free_r+0xc4> (BP);
    4668:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    466a:	20 32       	P4 = R0;
    466c:	62 5b       	P5 = P2 + P4;
    466e:	6b a0       	R3 = [P5 + 0x4];
    4670:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
    4672:	09 14       	IF !CC JUMP 0x4684 <__free_r+0x58> (BP);
    4674:	01 0c       	CC = R1 == 0x0;
    4676:	82 50       	R2 = R2 + R0;
    4678:	95 ac       	P5 = [P2 + 0x8];
    467a:	68 1c       	IF CC JUMP 0x474a <__free_r+0x11e> (BP);
    467c:	00 00       	NOP;
    467e:	d2 ac       	P2 = [P2 + 0xc];
    4680:	ea bc       	[P5 + 0xc] = P2;
    4682:	95 bc       	[P2 + 0x8] = P5;
    4684:	22 32       	P4 = R2;
    4686:	02 30       	R0 = R2;
    4688:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    468a:	01 0c       	CC = R1 == 0x0;
    468c:	48 b0       	[P1 + 0x4] = R0;
    468e:	a1 5a       	P2 = P1 + P4;
    4690:	12 93       	[P2] = R2;
    4692:	29 10       	IF !CC JUMP 0x46e4 <__free_r+0xb8>;
    4694:	20 e1 ff 01 	R0 = 0x1ff (X);		/*		R0=0x1ff(511) */
    4698:	02 0a       	CC = R2 <= R0 (IU);
    469a:	42 1c       	IF CC JUMP 0x471e <__free_r+0xf2> (BP);
    469c:	82 c6 ba 81 	R0 = R2 >> 0x9;
    46a0:	20 0e       	CC = R0 <= 0x4 (IU);
    46a2:	8a 14       	IF !CC JUMP 0x47b6 <__free_r+0x18a> (BP);
    46a4:	82 c6 d2 81 	R0 = R2 >> 0x6;
    46a8:	c0 65       	R0 += 0x38;		/* ( 56) */
    46aa:	20 32       	P4 = R0;
    46ac:	a4 5a       	P2 = P4 << 0x1;
    46ae:	10 5e       	P0 = P0 + (P2 << 0x2);
    46b0:	82 ac       	P2 = [P0 + 0x8];
    46b2:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x94b4 <___malloc_av_> */
    46b6:	0d e1 b4 94 	P5.L = 0x94b4;		/* (-27468)	P5=0x94b4 <___malloc_av_> */
    46ba:	42 08       	CC = P2 == P0;
    46bc:	86 18       	IF CC JUMP 0x47c8 <__free_r+0x19c>;
    46be:	00 00       	NOP;
    46c0:	00 00       	NOP;
    46c2:	e0 63       	R0 = -0x4 (X);		/*		R0=0xfffffffc( -4) */
    46c4:	00 00       	NOP;
    46c6:	51 a0       	R1 = [P2 + 0x4];
    46c8:	48 54       	R1 = R0 & R1;
    46ca:	8a 09       	CC = R2 < R1 (IU);
    46cc:	07 10       	IF !CC JUMP 0x46da <__free_r+0xae>;
    46ce:	00 00       	NOP;
    46d0:	00 00       	NOP;
    46d2:	00 00       	NOP;
    46d4:	92 ac       	P2 = [P2 + 0x8];
    46d6:	50 08       	CC = P0 == P2;
    46d8:	f6 17       	IF !CC JUMP 0x46c4 <__free_r+0x98> (BP);
    46da:	d0 ac       	P0 = [P2 + 0xc];
    46dc:	c8 bc       	[P1 + 0xc] = P0;
    46de:	8a bc       	[P1 + 0x8] = P2;
    46e0:	81 bc       	[P0 + 0x8] = P1;
    46e2:	d1 bc       	[P2 + 0xc] = P1;
    46e4:	01 e8 00 00 	UNLINK;
    46e8:	07 30       	R0 = R7;
    46ea:	bc 05       	(R7:7, P5:4) = [SP++];
    46ec:	00 e2 80 05 	JUMP.L 0x51ec <___malloc_unlock>;
    46f0:	00 00       	NOP;
    46f2:	29 e4 fe ff 	R1 = [P5 + -0x8];
    46f6:	21 32       	P4 = R1;
    46f8:	8a 50       	R2 = R2 + R1;
    46fa:	48 30       	R1 = P0;
    46fc:	41 64       	R1 += 0x8;		/* (  8) */
    46fe:	21 44       	P1 -= P4;
    4700:	8d ac       	P5 = [P1 + 0x8];
    4702:	5d 30       	R3 = P5;
    4704:	0b 08       	CC = R3 == R1;
    4706:	56 18       	IF CC JUMP 0x47b2 <__free_r+0x186>;
    4708:	00 00       	NOP;
    470a:	00 00       	NOP;
    470c:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    470e:	cc ac       	P4 = [P1 + 0xc];
    4710:	ec bc       	[P5 + 0xc] = P4;
    4712:	a5 bc       	[P4 + 0x8] = P5;
    4714:	ab 2f       	JUMP.S 0x466a <__free_r+0x3e>;
    4716:	01 e8 00 00 	UNLINK;
    471a:	bc 05       	(R7:7, P5:4) = [SP++];
    471c:	10 00       	RTS;
    471e:	1a 4e       	R2 >>= 0x3;
    4720:	82 c6 f2 03 	R1 = R2 >>> 0x2;
    4724:	1a 4f       	R2 <<= 0x3;
    4726:	12 32       	P2 = R2;
    4728:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    472a:	88 40       	R0 <<= R1;
    472c:	41 a0       	R1 = [P0 + 0x4];
    472e:	08 56       	R0 = R0 | R1;
    4730:	40 b0       	[P0 + 0x4] = R0;
    4732:	10 5a       	P0 = P0 + P2;
    4734:	82 ac       	P2 = [P0 + 0x8];
    4736:	c8 bc       	[P1 + 0xc] = P0;
    4738:	07 30       	R0 = R7;
    473a:	8a bc       	[P1 + 0x8] = P2;
    473c:	81 bc       	[P0 + 0x8] = P1;
    473e:	d1 bc       	[P2 + 0xc] = P1;
    4740:	01 e8 00 00 	UNLINK;
    4744:	bc 05       	(R7:7, P5:4) = [SP++];
    4746:	00 e2 53 05 	JUMP.L 0x51ec <___malloc_unlock>;
    474a:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1(  1) */
    474e:	00 e1 bc 94 	R0.L = 0x94bc;		/* (-27460)	R0=0x94bc(38076) */
    4752:	5d 30       	R3 = P5;
    4754:	03 08       	CC = R3 == R0;
    4756:	93 17       	IF !CC JUMP 0x467c <__free_r+0x50> (BP);
    4758:	41 bd       	[P0 + 0x14] = P1;
    475a:	01 bd       	[P0 + 0x10] = P1;
    475c:	02 32       	P0 = R2;
    475e:	c8 b0       	[P1 + 0xc] = R0;
    4760:	88 b0       	[P1 + 0x8] = R0;
    4762:	02 30       	R0 = R2;
    4764:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4766:	48 b0       	[P1 + 0x4] = R0;
    4768:	41 5a       	P1 = P1 + P0;
    476a:	0a 93       	[P1] = R2;
    476c:	bc 2f       	JUMP.S 0x46e4 <__free_r+0xb8>;
    476e:	01 48       	CC = !BITTST (R1, 0x0);		/* bit  0 */
    4770:	90 50       	R2 = R0 + R2;
    4772:	0a 14       	IF !CC JUMP 0x4786 <__free_r+0x15a> (BP);
    4774:	28 e4 fe ff 	R0 = [P5 + -0x8];
    4778:	28 32       	P5 = R0;
    477a:	82 50       	R2 = R2 + R0;
    477c:	29 44       	P1 -= P5;
    477e:	ca ac       	P2 = [P1 + 0xc];
    4780:	8d ac       	P5 = [P1 + 0x8];
    4782:	ea bc       	[P5 + 0xc] = P2;
    4784:	95 bc       	[P2 + 0x8] = P5;
    4786:	02 30       	R0 = R2;
    4788:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98cc <___malloc_current_mallinfo> */
    478c:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    478e:	0a e1 b0 94 	P2.L = 0x94b0;		/* (-27472)	P2=0x94b0 <___malloc_trim_threshold> */
    4792:	48 b0       	[P1 + 0x4] = R0;
    4794:	10 91       	R0 = [P2];
    4796:	82 09       	CC = R2 < R0 (IU);
    4798:	81 bc       	[P0 + 0x8] = P1;
    479a:	a5 1f       	IF CC JUMP 0x46e4 <__free_r+0xb8> (BP);
    479c:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x94b0 <___malloc_trim_threshold> */
    47a0:	0a e1 fc 98 	P2.L = 0x98fc;		/* (-26372)	P2=0x98fc <___malloc_top_pad> */
    47a4:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || R1 = [P2] || NOP;
    47a8:	11 91 00 00 
    47ac:	ff e3 e2 fe 	CALL 0x4570 <__malloc_trim_r>;
    47b0:	9a 2f       	JUMP.S 0x46e4 <__free_r+0xb8>;
    47b2:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    47b4:	5b 2f       	JUMP.S 0x466a <__free_r+0x3e>;
    47b6:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
    47b8:	08 0a       	CC = R0 <= R1 (IU);
    47ba:	0f 14       	IF !CC JUMP 0x47d8 <__free_r+0x1ac> (BP);
    47bc:	21 e1 5b 00 	R1 = 0x5b (X);		/*		R1=0x5b( 91) */
    47c0:	08 50       	R0 = R0 + R1;
    47c2:	20 32       	P4 = R0;
    47c4:	a4 5a       	P2 = P4 << 0x1;
    47c6:	74 2f       	JUMP.S 0x46ae <__free_r+0x82>;
    47c8:	10 4d       	R0 >>>= 0x2;
    47ca:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    47cc:	81 40       	R1 <<= R0;
    47ce:	68 a0       	R0 = [P5 + 0x4];
    47d0:	01 56       	R0 = R1 | R0;
    47d2:	68 b0       	[P5 + 0x4] = R0;
    47d4:	42 32       	P0 = P2;
    47d6:	83 2f       	JUMP.S 0x46dc <__free_r+0xb0>;
    47d8:	21 e1 54 00 	R1 = 0x54 (X);		/*		R1=0x54( 84) */
    47dc:	08 0a       	CC = R0 <= R1 (IU);
    47de:	09 14       	IF !CC JUMP 0x47f0 <__free_r+0x1c4> (BP);
    47e0:	82 c6 a2 83 	R1 = R2 >> 0xc;
    47e4:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
    47e8:	01 50       	R0 = R1 + R0;
    47ea:	20 32       	P4 = R0;
    47ec:	a4 5a       	P2 = P4 << 0x1;
    47ee:	60 2f       	JUMP.S 0x46ae <__free_r+0x82>;
    47f0:	21 e1 54 01 	R1 = 0x154 (X);		/*		R1=0x154(340) */
    47f4:	08 0a       	CC = R0 <= R1 (IU);
    47f6:	09 14       	IF !CC JUMP 0x4808 <__free_r+0x1dc> (BP);
    47f8:	82 c6 8a 83 	R1 = R2 >> 0xf;
    47fc:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
    4800:	01 50       	R0 = R1 + R0;
    4802:	20 32       	P4 = R0;
    4804:	a4 5a       	P2 = P4 << 0x1;
    4806:	54 2f       	JUMP.S 0x46ae <__free_r+0x82>;
    4808:	21 e1 54 05 	R1 = 0x554 (X);		/*		R1=0x554(1364) */
    480c:	08 0a       	CC = R0 <= R1 (IU);
    480e:	09 14       	IF !CC JUMP 0x4820 <__free_r+0x1f4> (BP);
    4810:	82 c6 72 83 	R1 = R2 >> 0x12;
    4814:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
    4818:	01 50       	R0 = R1 + R0;
    481a:	20 32       	P4 = R0;
    481c:	a4 5a       	P2 = P4 << 0x1;
    481e:	48 2f       	JUMP.S 0x46ae <__free_r+0x82>;
    4820:	2a e1 fc 00 	P2 = 0xfc (X);		/*		P2=0xfc(252) */
    4824:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
    4828:	43 2f       	JUMP.S 0x46ae <__free_r+0x82>;
	...

0000482c <__fwalk>:
    482c:	e3 05       	[--SP] = (R7:4, P5:3);
    482e:	24 e1 e0 02 	R4 = 0x2e0 (X);		/*		R4=0x2e0(736) */
    4832:	20 51       	R4 = R0 + R4;
    4834:	04 0c       	CC = R4 == 0x0;
    4836:	00 e8 03 00 	LINK 0xc;		/* (12) */
    483a:	19 32       	P3 = R1;
    483c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    483e:	2a 18       	IF CC JUMP 0x4892 <__fwalk+0x66>;
    4840:	2c e1 68 00 	P4 = 0x68 (X);		/*		P4=0x68(104) */
    4844:	26 e1 98 ff 	R6 = -0x68 (X);		/*		R6=0xffffff98(-104) */
    4848:	0c 32       	P1 = R4;
    484a:	4f a0       	R7 = [P1 + 0x4];
    484c:	ff 67       	R7 += -0x1;		/* ( -1) */
    484e:	87 0c       	CC = R7 < 0x0;
    4850:	8d ac       	P5 = [P1 + 0x8];
    4852:	1c 18       	IF CC JUMP 0x488a <__fwalk+0x5e>;
    4854:	00 00       	NOP;
    4856:	65 5b       	P5 = P5 + P4;
    4858:	0e 32       	P1 = R6;
    485a:	6a e5 d2 ff 	R2 = W[P5 + -0x5c] (X);
    485e:	93 42       	R3 = R2.L (X);
    4860:	03 0c       	CC = R3 == 0x0;
    4862:	8d 5a       	P2 = P5 + P1;
    4864:	0f 1c       	IF CC JUMP 0x4882 <__fwalk+0x56> (BP);
    4866:	d2 42       	R2 = R2.L (Z);
    4868:	0a 0e       	CC = R2 <= 0x1 (IU);
    486a:	0c 18       	IF CC JUMP 0x4882 <__fwalk+0x56>;
    486c:	00 00       	NOP;
    486e:	00 00       	NOP;
    4870:	00 00       	NOP;
    4872:	68 e5 d3 ff 	R0 = W[P5 + -0x5a] (X);
    4876:	38 0c       	CC = R0 == -0x1;
    4878:	05 18       	IF CC JUMP 0x4882 <__fwalk+0x56>;
    487a:	00 00       	NOP;
    487c:	42 30       	R0 = P2;
    487e:	63 00       	CALL (P3);
    4880:	45 57       	R5 = R5 | R0;
    4882:	ff 67       	R7 += -0x1;		/* ( -1) */
    4884:	3f 0c       	CC = R7 == -0x1;
    4886:	65 5b       	P5 = P5 + P4;
    4888:	e8 17       	IF !CC JUMP 0x4858 <__fwalk+0x2c> (BP);
    488a:	14 32       	P2 = R4;
    488c:	14 91       	R4 = [P2];
    488e:	04 0c       	CC = R4 == 0x0;
    4890:	dc 17       	IF !CC JUMP 0x4848 <__fwalk+0x1c> (BP);
    4892:	01 e8 00 00 	UNLINK;
    4896:	05 30       	R0 = R5;
    4898:	a3 05       	(R7:4, P5:3) = [SP++];
    489a:	10 00       	RTS;

0000489c <__fwalk_reent>:
    489c:	08 32       	P1 = R0;
    489e:	2a e1 e0 02 	P2 = 0x2e0 (X);		/*		P2=0x2e0(736) */
    48a2:	e3 05       	[--SP] = (R7:4, P5:3);
    48a4:	00 e8 03 00 	LINK 0xc;		/* (12) */
    48a8:	78 b2       	[FP + 0x24] = R0;
    48aa:	51 5a       	P1 = P1 + P2;
    48ac:	71 30       	R6 = P1;
    48ae:	06 0c       	CC = R6 == 0x0;
    48b0:	19 32       	P3 = R1;
    48b2:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    48b4:	2a 18       	IF CC JUMP 0x4908 <__fwalk_reent+0x6c>;
    48b6:	2c e1 68 00 	P4 = 0x68 (X);		/*		P4=0x68(104) */
    48ba:	24 e1 98 ff 	R4 = -0x68 (X);		/*		R4=0xffffff98(-104) */
    48be:	16 32       	P2 = R6;
    48c0:	57 a0       	R7 = [P2 + 0x4];
    48c2:	ff 67       	R7 += -0x1;		/* ( -1) */
    48c4:	87 0c       	CC = R7 < 0x0;
    48c6:	95 ac       	P5 = [P2 + 0x8];
    48c8:	1c 18       	IF CC JUMP 0x4900 <__fwalk_reent+0x64>;
    48ca:	00 00       	NOP;
    48cc:	65 5b       	P5 = P5 + P4;
    48ce:	45 30       	R0 = P5;
    48d0:	6a e5 d2 ff 	R2 = W[P5 + -0x5c] (X);
    48d4:	93 42       	R3 = R2.L (X);
    48d6:	03 0c       	CC = R3 == 0x0;
    48d8:	60 50       	R1 = R0 + R4;
    48da:	0f 1c       	IF CC JUMP 0x48f8 <__fwalk_reent+0x5c> (BP);
    48dc:	d2 42       	R2 = R2.L (Z);
    48de:	0a 0e       	CC = R2 <= 0x1 (IU);
    48e0:	0c 18       	IF CC JUMP 0x48f8 <__fwalk_reent+0x5c>;
    48e2:	00 00       	NOP;
    48e4:	00 00       	NOP;
    48e6:	00 00       	NOP;
    48e8:	68 e5 d3 ff 	R0 = W[P5 + -0x5a] (X);
    48ec:	38 0c       	CC = R0 == -0x1;
    48ee:	05 18       	IF CC JUMP 0x48f8 <__fwalk_reent+0x5c>;
    48f0:	00 00       	NOP;
    48f2:	78 a2       	R0 = [FP + 0x24];
    48f4:	63 00       	CALL (P3);
    48f6:	45 57       	R5 = R5 | R0;
    48f8:	ff 67       	R7 += -0x1;		/* ( -1) */
    48fa:	3f 0c       	CC = R7 == -0x1;
    48fc:	65 5b       	P5 = P5 + P4;
    48fe:	e8 17       	IF !CC JUMP 0x48ce <__fwalk_reent+0x32> (BP);
    4900:	0e 32       	P1 = R6;
    4902:	0e 91       	R6 = [P1];
    4904:	06 0c       	CC = R6 == 0x0;
    4906:	dc 17       	IF !CC JUMP 0x48be <__fwalk_reent+0x22> (BP);
    4908:	01 e8 00 00 	UNLINK;
    490c:	05 30       	R0 = R5;
    490e:	a3 05       	(R7:4, P5:3) = [SP++];
    4910:	10 00       	RTS;
	...

00004914 <__setlocale_r>:
    4914:	78 05       	[--SP] = (R7:7);
    4916:	02 0c       	CC = R2 == 0x0;
    4918:	00 e8 03 00 	LINK 0xc;		/* (12) */
    491c:	3a 30       	R7 = R2;
    491e:	0a 18       	IF CC JUMP 0x4932 <__setlocale_r+0x1e>;
    4920:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x554(1364) */
    4924:	02 30       	R0 = R2;
    4926:	01 e1 7c 89 	R1.L = 0x897c;		/* (-30340)	R1=0x897c(35196) */
    492a:	00 e3 29 0a 	CALL 0x5d7c <_strcmp>;
    492e:	00 0c       	CC = R0 == 0x0;
    4930:	09 10       	IF !CC JUMP 0x4942 <__setlocale_r+0x2e>;
    4932:	01 e8 00 00 	UNLINK;
    4936:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x7e(126) */
    493a:	00 e1 a0 87 	R0.L = 0x87a0;		/* (-30816)	R0=0x87a0(34720) */
    493e:	38 05       	(R7:7) = [SP++];
    4940:	10 00       	RTS;
    4942:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x897c(35196) */
    4946:	07 30       	R0 = R7;
    4948:	01 e1 a0 87 	R1.L = 0x87a0;		/* (-30816)	R1=0x87a0(34720) */
    494c:	00 e3 18 0a 	CALL 0x5d7c <_strcmp>;
    4950:	00 0c       	CC = R0 == 0x0;
    4952:	f0 1f       	IF CC JUMP 0x4932 <__setlocale_r+0x1e> (BP);
    4954:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x87a0(34720) */
    4958:	07 30       	R0 = R7;
    495a:	01 e1 c4 87 	R1.L = 0x87c4;		/* (-30780)	R1=0x87c4(34756) */
    495e:	00 e3 0f 0a 	CALL 0x5d7c <_strcmp>;
    4962:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x87c4(34756) */
    4966:	00 0c       	CC = R0 == 0x0;
    4968:	01 e1 a0 87 	R1.L = 0x87a0;		/* (-30816)	R1=0x87a0(34720) */
    496c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    496e:	01 e8 00 00 	UNLINK;
    4972:	01 07       	IF CC R0 = R1;
    4974:	38 05       	(R7:7) = [SP++];
    4976:	10 00       	RTS;

00004978 <___locale_charset>:
    4978:	00 e8 00 00 	LINK 0x0;		/* (0) */
    497c:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
    4980:	01 e8 00 00 	UNLINK;
    4984:	00 e1 34 94 	R0.L = 0x9434;		/* (-27596)	R0=0x9434 <_lc_ctype_charset>(37940) */
    4988:	10 00       	RTS;
	...

0000498c <___locale_mb_cur_max>:
    498c:	00 e8 00 00 	LINK 0x0;		/* (0) */
    4990:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x2e0 */
    4994:	0a e1 30 94 	P2.L = 0x9430;		/* (-27600)	P2=0x9430 <___mb_cur_max> */
    4998:	01 e8 00 00 	UNLINK;
    499c:	10 91       	R0 = [P2];
    499e:	10 00       	RTS;

000049a0 <___locale_msgcharset>:
    49a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    49a4:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x9434 <_lc_ctype_charset>(37940) */
    49a8:	01 e8 00 00 	UNLINK;
    49ac:	00 e1 54 94 	R0.L = 0x9454;		/* (-27564)	R0=0x9454 <_lc_message_charset>(37972) */
    49b0:	10 00       	RTS;
	...

000049b4 <___locale_cjk_lang>:
    49b4:	00 00       	NOP;
    49b6:	00 e8 00 00 	LINK 0x0;		/* (0) */
    49ba:	01 e8 00 00 	UNLINK;
    49be:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    49c0:	10 00       	RTS;
	...

000049c4 <__localeconv_r>:
    49c4:	00 e8 00 00 	LINK 0x0;		/* (0) */
    49c8:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
    49cc:	01 e8 00 00 	UNLINK;
    49d0:	00 e1 74 94 	R0.L = 0x9474;		/* (-27532)	R0=0x9474 <_lconv>(38004) */
    49d4:	10 00       	RTS;
	...

000049d8 <_setlocale>:
    49d8:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9430 <___mb_cur_max> */
    49dc:	18 30       	R3 = R0;
    49de:	00 e8 00 00 	LINK 0x0;		/* (0) */
    49e2:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    49e6:	82 ce 01 c4 	R2 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
    49ea:	10 91 00 00 
    49ee:	0b 30       	R1 = R3;
    49f0:	01 e8 00 00 	UNLINK;
    49f4:	ff e2 90 ff 	JUMP.L 0x4914 <__setlocale_r>;

000049f8 <_localeconv>:
    49f8:	00 e8 00 00 	LINK 0x0;		/* (0) */
    49fc:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x9474 <_lconv>(38004) */
    4a00:	01 e8 00 00 	UNLINK;
    4a04:	00 e1 74 94 	R0.L = 0x9474;		/* (-27532)	R0=0x9474 <_lconv>(38004) */
    4a08:	10 00       	RTS;
	...

00004a0c <___smakebuf_r>:
    4a0c:	f4 05       	[--SP] = (R7:6, P5:4);
    4a0e:	29 32       	P5 = R1;
    4a10:	20 32       	P4 = R0;
    4a12:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    4a14:	00 e8 12 00 	LINK 0x48;		/* (72) */
    4a18:	aa a9       	R2 = W[P5 + 0xc] (X);
    4a1a:	02 54       	R0 = R2 & R0;
    4a1c:	80 42       	R0 = R0.L (X);
    4a1e:	00 0c       	CC = R0 == 0x0;
    4a20:	43 10       	IF !CC JUMP 0x4aa6 <___smakebuf_r+0x9a>;
    4a22:	00 00       	NOP;
    4a24:	00 00       	NOP;
    4a26:	00 00       	NOP;
    4a28:	e9 a9       	R1 = W[P5 + 0xe] (X);
    4a2a:	81 0c       	CC = R1 < 0x0;
    4a2c:	1d 18       	IF CC JUMP 0x4a66 <___smakebuf_r+0x5a>;
    4a2e:	57 30       	R2 = FP;
    4a30:	44 30       	R0 = P4;
    4a32:	22 66       	R2 += -0x3c;		/* (-60) */
    4a34:	00 e3 3e 11 	CALL 0x6cb0 <__fstat_r>;
    4a38:	80 0c       	CC = R0 < 0x0;
    4a3a:	15 18       	IF CC JUMP 0x4a64 <___smakebuf_r+0x58>;
    4a3c:	20 b9       	R0 = [FP -0x38];
    4a3e:	81 e1 00 f0 	R1 = 0xf000 (Z);		/*		R1=0xf000(61440) */
    4a42:	08 54       	R0 = R0 & R1;
    4a44:	21 e1 00 20 	R1 = 0x2000 (X);		/*		R1=0x2000(8192) */
    4a48:	08 08       	CC = R0 == R1;
    4a4a:	81 e1 00 80 	R1 = 0x8000 (Z);		/*		R1=0x8000(32768) */
    4a4e:	06 02       	R6 = CC;
    4a50:	08 08       	CC = R0 == R1;
    4a52:	35 18       	IF CC JUMP 0x4abc <___smakebuf_r+0xb0>;
    4a54:	00 00       	NOP;
    4a56:	00 00       	NOP;
    4a58:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
    4a5c:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4a5e:	58 4a       	BITSET (R0, 0xb);		/* bit 11 */
    4a60:	a8 b5       	W[P5 + 0xc] = R0;
    4a62:	0b 20       	JUMP.S 0x4a78 <___smakebuf_r+0x6c>;
    4a64:	aa a9       	R2 = W[P5 + 0xc] (X);
    4a66:	3a 48       	CC = !BITTST (R2, 0x7);		/* bit  7 */
    4a68:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40 <_.tmp>( 64) */
    4a6c:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
    4a70:	5a 4a       	BITSET (R2, 0xb);		/* bit 11 */
    4a72:	38 06       	IF !CC R7 = R0;
    4a74:	aa b5       	W[P5 + 0xc] = R2;
    4a76:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    4a78:	44 30       	R0 = P4;
    4a7a:	0f 30       	R1 = R7;
    4a7c:	00 e3 42 00 	CALL 0x4b00 <__malloc_r>;
    4a80:	00 0c       	CC = R0 == 0x0;
    4a82:	36 18       	IF CC JUMP 0x4aee <___smakebuf_r+0xe2>;
    4a84:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x8000(32768) */
    4a88:	01 e1 1c 43 	R1.L = 0x431c;		/* (17180)	R1=0x431c <__cleanup_r>(17180) */
    4a8c:	e1 b3       	[P4 + 0x3c] = R1;
    4a8e:	a9 a9       	R1 = W[P5 + 0xc] (X);
    4a90:	39 4a       	BITSET (R1, 0x7);		/* bit  7 */
    4a92:	06 0c       	CC = R6 == 0x0;
    4a94:	a9 b5       	W[P5 + 0xc] = R1;
    4a96:	28 93       	[P5] = R0;
    4a98:	28 b1       	[P5 + 0x10] = R0;
    4a9a:	6f b1       	[P5 + 0x14] = R7;
    4a9c:	1f 10       	IF !CC JUMP 0x4ada <___smakebuf_r+0xce>;
    4a9e:	01 e8 00 00 	UNLINK;
    4aa2:	b4 05       	(R7:6, P5:4) = [SP++];
    4aa4:	10 00       	RTS;
    4aa6:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
    4aaa:	01 50       	R0 = R1 + R0;
    4aac:	28 93       	[P5] = R0;
    4aae:	28 b1       	[P5 + 0x10] = R0;
    4ab0:	01 e8 00 00 	UNLINK;
    4ab4:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4ab6:	68 b1       	[P5 + 0x14] = R0;
    4ab8:	b4 05       	(R7:6, P5:4) = [SP++];
    4aba:	10 00       	RTS;
    4abc:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1(  1) */
    4ac0:	00 e1 38 5d 	R0.L = 0x5d38;		/* (23864)	R0=0x5d38 <___sseek>(23864) */
    4ac4:	a9 a2       	R1 = [P5 + 0x28];
    4ac6:	01 08       	CC = R1 == R0;
    4ac8:	c8 17       	IF !CC JUMP 0x4a58 <___smakebuf_r+0x4c> (BP);
    4aca:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4acc:	50 4a       	BITSET (R0, 0xa);		/* bit 10 */
    4ace:	27 e1 00 04 	R7 = 0x400 (X);		/*		R7=0x400(1024) */
    4ad2:	a8 b5       	W[P5 + 0xc] = R0;
    4ad4:	2f e6 13 00 	[P5 + 0x4c] = R7;
    4ad8:	d0 2f       	JUMP.S 0x4a78 <___smakebuf_r+0x6c>;
    4ada:	e9 a9       	R1 = W[P5 + 0xe] (X);
    4adc:	44 30       	R0 = P4;
    4ade:	00 e3 95 12 	CALL 0x7008 <__isatty_r>;
    4ae2:	00 0c       	CC = R0 == 0x0;
    4ae4:	dd 1f       	IF CC JUMP 0x4a9e <___smakebuf_r+0x92> (BP);
    4ae6:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4ae8:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4aea:	a8 b5       	W[P5 + 0xc] = R0;
    4aec:	d9 2f       	JUMP.S 0x4a9e <___smakebuf_r+0x92>;
    4aee:	a8 a9       	R0 = W[P5 + 0xc] (X);
    4af0:	48 48       	CC = !BITTST (R0, 0x9);		/* bit  9 */
    4af2:	d6 17       	IF !CC JUMP 0x4a9e <___smakebuf_r+0x92> (BP);
    4af4:	08 4a       	BITSET (R0, 0x1);		/* bit  1 */
    4af6:	a8 b5       	W[P5 + 0xc] = R0;
    4af8:	4d 30       	R1 = P5;
    4afa:	20 e1 43 00 	R0 = 0x43 (X);		/*		R0=0x43( 67) */
    4afe:	d6 2f       	JUMP.S 0x4aaa <___smakebuf_r+0x9e>;

00004b00 <__malloc_r>:
    4b00:	e3 05       	[--SP] = (R7:4, P5:3);
    4b02:	20 32       	P4 = R0;
    4b04:	01 30       	R0 = R1;
    4b06:	58 64       	R0 += 0xb;		/* ( 11) */
    4b08:	b2 60       	R2 = 0x16 (X);		/*		R2=0x16( 22) */
    4b0a:	10 0a       	CC = R0 <= R2 (IU);
    4b0c:	00 e8 05 00 	LINK 0x14;		/* (20) */
    4b10:	30 1c       	IF CC JUMP 0x4b70 <__malloc_r+0x70> (BP);
    4b12:	c7 63       	R7 = -0x8 (X);		/*		R7=0xfffffff8( -8) */
    4b14:	f8 55       	R7 = R0 & R7;
    4b16:	87 0c       	CC = R7 < 0x0;
    4b18:	2f 18       	IF CC JUMP 0x4b76 <__malloc_r+0x76>;
    4b1a:	39 0a       	CC = R1 <= R7 (IU);
    4b1c:	2d 10       	IF !CC JUMP 0x4b76 <__malloc_r+0x76>;
    4b1e:	44 30       	R0 = P4;
    4b20:	00 e3 5e 03 	CALL 0x51dc <___malloc_lock>;
    4b24:	23 e1 f7 01 	R3 = 0x1f7 (X);		/*		R3=0x1f7(503) */
    4b28:	1f 0a       	CC = R7 <= R3 (IU);
    4b2a:	2d 14       	IF !CC JUMP 0x4b84 <__malloc_r+0x84> (BP);
    4b2c:	07 32       	P0 = R7;
    4b2e:	4b e1 00 00 	P3.H = 0x0;		/* (  0)	P3=0x2e0 */
    4b32:	0b e1 b4 94 	P3.L = 0x94b4;		/* (-27468)	P3=0x94b4 <___malloc_av_> */
    4b36:	82 c6 ef 87 	R3 = R7 >> 0x3;
    4b3a:	83 5a       	P2 = P3 + P0;
    4b3c:	d5 ac       	P5 = [P2 + 0xc];
    4b3e:	55 08       	CC = P5 == P2;
    4b40:	e0 19       	IF CC JUMP 0x4f00 <__malloc_r+0x400>;
    4b42:	00 00       	NOP;
    4b44:	00 00       	NOP;
    4b46:	e1 63       	R1 = -0x4 (X);		/*		R1=0xfffffffc( -4) */
    4b48:	a8 ac       	P0 = [P5 + 0x8];
    4b4a:	e9 ac       	P1 = [P5 + 0xc];
    4b4c:	68 a0       	R0 = [P5 + 0x4];
    4b4e:	01 54       	R0 = R1 & R0;
    4b50:	c1 bc       	[P0 + 0xc] = P1;
    4b52:	88 bc       	[P1 + 0x8] = P0;
    4b54:	00 32       	P0 = R0;
    4b56:	85 5a       	P2 = P5 + P0;
    4b58:	50 a0       	R0 = [P2 + 0x4];
    4b5a:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4b5c:	50 b0       	[P2 + 0x4] = R0;
    4b5e:	44 30       	R0 = P4;
    4b60:	00 e3 46 03 	CALL 0x51ec <___malloc_unlock>;
    4b64:	45 30       	R0 = P5;
    4b66:	40 64       	R0 += 0x8;		/* (  8) */
    4b68:	01 e8 00 00 	UNLINK;
    4b6c:	a3 05       	(R7:4, P5:3) = [SP++];
    4b6e:	10 00       	RTS;
    4b70:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
    4b72:	39 0a       	CC = R1 <= R7 (IU);
    4b74:	d5 1f       	IF CC JUMP 0x4b1e <__malloc_r+0x1e> (BP);
    4b76:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
    4b78:	01 e8 00 00 	UNLINK;
    4b7c:	20 93       	[P4] = R0;
    4b7e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4b80:	a3 05       	(R7:4, P5:3) = [SP++];
    4b82:	10 00       	RTS;
    4b84:	82 c6 bf 81 	R0 = R7 >> 0x9;
    4b88:	00 0c       	CC = R0 == 0x0;
    4b8a:	9d 1c       	IF CC JUMP 0x4cc4 <__malloc_r+0x1c4> (BP);
    4b8c:	20 0e       	CC = R0 <= 0x4 (IU);
    4b8e:	4e 15       	IF !CC JUMP 0x4e2a <__malloc_r+0x32a> (BP);
    4b90:	82 c6 d7 81 	R0 = R7 >> 0x6;
    4b94:	c0 65       	R0 += 0x38;		/* ( 56) */
    4b96:	18 32       	P3 = R0;
    4b98:	9b 5a       	P2 = P3 << 0x1;
    4b9a:	4b e1 00 00 	P3.H = 0x0;		/* (  0)	P3=0x94b4 <___malloc_av_> */
    4b9e:	0b e1 b4 94 	P3.L = 0x94b4;		/* (-27468)	P3=0x94b4 <___malloc_av_> */
    4ba2:	93 5e       	P2 = P3 + (P2 << 0x2);
    4ba4:	d5 ac       	P5 = [P2 + 0xc];
    4ba6:	6a 08       	CC = P2 == P5;
    4ba8:	1b 18       	IF CC JUMP 0x4bde <__malloc_r+0xde>;
    4baa:	00 00       	NOP;
    4bac:	e2 63       	R2 = -0x4 (X);		/*		R2=0xfffffffc( -4) */
    4bae:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    4bb0:	69 a0       	R1 = [P5 + 0x4];
    4bb2:	8a 54       	R2 = R2 & R1;
    4bb4:	7a 52       	R1 = R2 - R7;
    4bb6:	19 09       	CC = R1 <= R3;
    4bb8:	8b 10       	IF !CC JUMP 0x4cce <__malloc_r+0x1ce>;
    4bba:	81 0c       	CC = R1 < 0x0;
    4bbc:	e3 63       	R3 = -0x4 (X);		/*		R3=0xfffffffc( -4) */
    4bbe:	0c 1c       	IF CC JUMP 0x4bd6 <__malloc_r+0xd6> (BP);
    4bc0:	89 20       	JUMP.S 0x4cd2 <__malloc_r+0x1d2>;
    4bc2:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
    4bc4:	6a a0       	R2 = [P5 + 0x4];
    4bc6:	93 54       	R2 = R3 & R2;
    4bc8:	7a 52       	R1 = R2 - R7;
    4bca:	21 09       	CC = R1 <= R4;
    4bcc:	81 10       	IF !CC JUMP 0x4cce <__malloc_r+0x1ce>;
    4bce:	81 0c       	CC = R1 < 0x0;
    4bd0:	81 10       	IF !CC JUMP 0x4cd2 <__malloc_r+0x1d2>;
    4bd2:	00 00       	NOP;
    4bd4:	00 00       	NOP;
    4bd6:	00 00       	NOP;
    4bd8:	ed ac       	P5 = [P5 + 0xc];
    4bda:	6a 08       	CC = P2 == P5;
    4bdc:	f3 17       	IF !CC JUMP 0x4bc2 <__malloc_r+0xc2> (BP);
    4bde:	18 30       	R3 = R0;
    4be0:	0b 64       	R3 += 0x1;		/* (  1) */
    4be2:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    4be6:	1d ad       	P5 = [P3 + 0x10];
    4be8:	0a e1 b4 94 	P2.L = 0x94b4;		/* (-27468)	P2=0x94b4 <___malloc_av_> */
    4bec:	4a 32       	P1 = P2;
    4bee:	41 6c       	P1 += 0x8;		/* (  8) */
    4bf0:	4d 08       	CC = P5 == P1;
    4bf2:	68 19       	IF CC JUMP 0x4ec2 <__malloc_r+0x3c2>;
    4bf4:	00 00       	NOP;
    4bf6:	e1 63       	R1 = -0x4 (X);		/*		R1=0xfffffffc( -4) */
    4bf8:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
    4bfa:	68 a0       	R0 = [P5 + 0x4];
    4bfc:	01 54       	R0 = R1 & R0;
    4bfe:	78 52       	R1 = R0 - R7;
    4c00:	11 09       	CC = R1 <= R2;
    4c02:	4c 11       	IF !CC JUMP 0x4e9a <__malloc_r+0x39a>;
    4c04:	81 0c       	CC = R1 < 0x0;
    4c06:	51 bd       	[P2 + 0x14] = P1;
    4c08:	11 bd       	[P2 + 0x10] = P1;
    4c0a:	6c 10       	IF !CC JUMP 0x4ce2 <__malloc_r+0x1e2>;
    4c0c:	21 e1 ff 01 	R1 = 0x1ff (X);		/*		R1=0x1ff(511) */
    4c10:	08 0a       	CC = R0 <= R1 (IU);
    4c12:	1b 15       	IF !CC JUMP 0x4e48 <__malloc_r+0x348> (BP);
    4c14:	18 4e       	R0 >>= 0x3;
    4c16:	82 c6 f0 03 	R1 = R0 >>> 0x2;
    4c1a:	18 4f       	R0 <<= 0x3;
    4c1c:	00 32       	P0 = R0;
    4c1e:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    4c20:	8a 40       	R2 <<= R1;
    4c22:	51 a0       	R1 = [P2 + 0x4];
    4c24:	4a 56       	R1 = R2 | R1;
    4c26:	51 b0       	[P2 + 0x4] = R1;
    4c28:	90 5a       	P2 = P0 + P2;
    4c2a:	90 ac       	P0 = [P2 + 0x8];
    4c2c:	ea bc       	[P5 + 0xc] = P2;
    4c2e:	a8 bc       	[P5 + 0x8] = P0;
    4c30:	c5 bc       	[P0 + 0xc] = P5;
    4c32:	95 bc       	[P2 + 0x8] = P5;
    4c34:	82 c6 f3 05 	R2 = R3 >>> 0x2;
    4c38:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4c3a:	90 40       	R0 <<= R2;
    4c3c:	08 0a       	CC = R0 <= R1 (IU);
    4c3e:	60 14       	IF !CC JUMP 0x4cfe <__malloc_r+0x1fe> (BP);
    4c40:	81 54       	R2 = R1 & R0;
    4c42:	02 0c       	CC = R2 == 0x0;
    4c44:	08 14       	IF !CC JUMP 0x4c54 <__malloc_r+0x154> (BP);
    4c46:	e2 63       	R2 = -0x4 (X);		/*		R2=0xfffffffc( -4) */
    4c48:	d3 54       	R3 = R3 & R2;
    4c4a:	08 4f       	R0 <<= 0x1;
    4c4c:	81 54       	R2 = R1 & R0;
    4c4e:	02 0c       	CC = R2 == 0x0;
    4c50:	23 64       	R3 += 0x4;		/* (  4) */
    4c52:	fc 1f       	IF CC JUMP 0x4c4a <__malloc_r+0x14a> (BP);
    4c54:	e6 63       	R6 = -0x4 (X);		/*		R6=0xfffffffc( -4) */
    4c56:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    4c58:	82 c6 1b 88 	R4 = R3 << 0x3;
    4c5c:	24 34       	M0 = R4;
    4c5e:	43 34       	I0 = P3;
    4c60:	2b 30       	R5 = R3;
    4c62:	60 9e       	I0 += M0;
    4c64:	90 32       	P2 = I0;
    4c66:	00 00       	NOP;
    4c68:	d5 ac       	P5 = [P2 + 0xc];
    4c6a:	6a 08       	CC = P2 == P5;
    4c6c:	0c 14       	IF !CC JUMP 0x4c84 <__malloc_r+0x184> (BP);
    4c6e:	2c 21       	JUMP.S 0x4ec6 <__malloc_r+0x3c6>;
    4c70:	81 0c       	CC = R1 < 0x0;
    4c72:	4f 11       	IF !CC JUMP 0x4f10 <__malloc_r+0x410>;
    4c74:	00 00       	NOP;
    4c76:	00 00       	NOP;
    4c78:	00 00       	NOP;
    4c7a:	ed ac       	P5 = [P5 + 0xc];
    4c7c:	6a 08       	CC = P2 == P5;
    4c7e:	24 19       	IF CC JUMP 0x4ec6 <__malloc_r+0x3c6>;
    4c80:	00 00       	NOP;
    4c82:	00 00       	NOP;
    4c84:	7c 60       	R4 = 0xf (X);		/*		R4=0xf( 15) */
    4c86:	6a a0       	R2 = [P5 + 0x4];
    4c88:	96 54       	R2 = R6 & R2;
    4c8a:	7a 52       	R1 = R2 - R7;
    4c8c:	21 09       	CC = R1 <= R4;
    4c8e:	f1 1f       	IF CC JUMP 0x4c70 <__malloc_r+0x170> (BP);
    4c90:	07 32       	P0 = R7;
    4c92:	a8 a0       	R0 = [P5 + 0x8];
    4c94:	ea a0       	R2 = [P5 + 0xc];
    4c96:	07 4a       	BITSET (R7, 0x0);		/* bit  0 */
    4c98:	6f b0       	[P5 + 0x4] = R7;
    4c9a:	85 5a       	P2 = P5 + P0;
    4c9c:	00 32       	P0 = R0;
    4c9e:	c2 b0       	[P0 + 0xc] = R2;
    4ca0:	02 32       	P0 = R2;
    4ca2:	5a bd       	[P3 + 0x14] = P2;
    4ca4:	d1 bc       	[P2 + 0xc] = P1;
    4ca6:	80 b0       	[P0 + 0x8] = R0;
    4ca8:	1a bd       	[P3 + 0x10] = P2;
    4caa:	91 bc       	[P2 + 0x8] = P1;
    4cac:	09 32       	P1 = R1;
    4cae:	01 30       	R0 = R1;
    4cb0:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4cb2:	50 b0       	[P2 + 0x4] = R0;
    4cb4:	44 30       	R0 = P4;
    4cb6:	8a 5a       	P2 = P2 + P1;
    4cb8:	11 93       	[P2] = R1;
    4cba:	00 e3 99 02 	CALL 0x51ec <___malloc_unlock>;
    4cbe:	45 30       	R0 = P5;
    4cc0:	40 64       	R0 += 0x8;		/* (  8) */
    4cc2:	53 2f       	JUMP.S 0x4b68 <__malloc_r+0x68>;
    4cc4:	82 c6 ef 81 	R0 = R7 >> 0x3;
    4cc8:	08 32       	P1 = R0;
    4cca:	89 5a       	P2 = P1 << 0x1;
    4ccc:	67 2f       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4cce:	f8 67       	R0 += -0x1;		/* ( -1) */
    4cd0:	87 2f       	JUMP.S 0x4bde <__malloc_r+0xde>;
    4cd2:	02 32       	P0 = R2;
    4cd4:	ea ac       	P2 = [P5 + 0xc];
    4cd6:	a9 ac       	P1 = [P5 + 0x8];
    4cd8:	ca bc       	[P1 + 0xc] = P2;
    4cda:	91 bc       	[P2 + 0x8] = P1;
    4cdc:	85 5a       	P2 = P5 + P0;
    4cde:	50 a0       	R0 = [P2 + 0x4];
    4ce0:	3d 2f       	JUMP.S 0x4b5a <__malloc_r+0x5a>;
    4ce2:	18 32       	P3 = R0;
    4ce4:	44 30       	R0 = P4;
    4ce6:	9d 5a       	P2 = P5 + P3;
    4ce8:	51 a0       	R1 = [P2 + 0x4];
    4cea:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    4cec:	51 b0       	[P2 + 0x4] = R1;
    4cee:	00 e3 7f 02 	CALL 0x51ec <___malloc_unlock>;
    4cf2:	45 30       	R0 = P5;
    4cf4:	01 e8 00 00 	UNLINK;
    4cf8:	40 64       	R0 += 0x8;		/* (  8) */
    4cfa:	a3 05       	(R7:4, P5:3) = [SP++];
    4cfc:	10 00       	RTS;
    4cfe:	e5 63       	R5 = -0x4 (X);		/*		R5=0xfffffffc( -4) */
    4d00:	9d ac       	P5 = [P3 + 0x8];
    4d02:	68 a0       	R0 = [P5 + 0x4];
    4d04:	45 55       	R5 = R5 & R0;
    4d06:	bd 09       	CC = R5 < R7 (IU);
    4d08:	05 18       	IF CC JUMP 0x4d12 <__malloc_r+0x212>;
    4d0a:	3d 52       	R0 = R5 - R7;
    4d0c:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    4d0e:	18 09       	CC = R0 <= R3;
    4d10:	86 14       	IF !CC JUMP 0x4e1c <__malloc_r+0x31c> (BP);
    4d12:	49 e1 00 00 	P1.H = 0x0;		/* (  0)	P1=0x1 */
    4d16:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x94b4 <___malloc_av_> */
    4d1a:	09 e1 ac 94 	P1.L = 0x94ac;		/* (-27476)	P1=0x94ac <___malloc_sbrk_base> */
    4d1e:	65 30       	R4 = P5;
    4d20:	0a e1 fc 98 	P2.L = 0x98fc;		/* (-26372)	P2=0x98fc <___malloc_top_pad> */
    4d24:	0e 91       	R6 = [P1];
    4d26:	ac 50       	R2 = R4 + R5;
    4d28:	3e 0c       	CC = R6 == -0x1;
    4d2a:	14 91       	R4 = [P2];
    4d2c:	27 51       	R4 = R7 + R4;
    4d2e:	41 19       	IF CC JUMP 0x4fb0 <__malloc_r+0x4b0>;
    4d30:	20 e1 0f 10 	R0 = 0x100f (X);		/*		R0=0x100f(4111) */
    4d34:	04 51       	R4 = R4 + R0;
    4d36:	64 4d       	R4 >>>= 0xc;
    4d38:	64 4f       	R4 <<= 0xc;
    4d3a:	44 30       	R0 = P4;
    4d3c:	82 ce 04 c2 	R1 = ROT R4 BY 0x0 || [FP -0x4] = R2 || NOP;
    4d40:	f2 bb 00 00 
    4d44:	e9 bb       	[FP -0x8] = P1;
    4d46:	00 e3 95 07 	CALL 0x5c70 <__sbrk_r>;
    4d4a:	38 0c       	CC = R0 == -0x1;
    4d4c:	30 30       	R6 = R0;
    4d4e:	f2 b9       	R2 = [FP -0x4];
    4d50:	e9 b9       	P1 = [FP -0x8];
    4d52:	56 18       	IF CC JUMP 0x4dfe <__malloc_r+0x2fe>;
    4d54:	02 0a       	CC = R2 <= R0 (IU);
    4d56:	f8 14       	IF !CC JUMP 0x4f46 <__malloc_r+0x446> (BP);
    4d58:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98fc <___malloc_top_pad> */
    4d5c:	0a e1 cc 98 	P2.L = 0x98cc;		/* (-26420)	P2=0x98cc <___malloc_current_mallinfo> */
    4d60:	11 91       	R1 = [P2];
    4d62:	0c 50       	R0 = R4 + R1;
    4d64:	32 08       	CC = R2 == R6;
    4d66:	10 93       	[P2] = R0;
    4d68:	32 19       	IF CC JUMP 0x4fcc <__malloc_r+0x4cc>;
    4d6a:	09 91       	R1 = [P1];
    4d6c:	39 0c       	CC = R1 == -0x1;
    4d6e:	3e 19       	IF CC JUMP 0x4fea <__malloc_r+0x4ea>;
    4d70:	96 52       	R2 = R6 - R2;
    4d72:	10 50       	R0 = R0 + R2;
    4d74:	10 93       	[P2] = R0;
    4d76:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    4d78:	06 54       	R0 = R6 & R0;
    4d7a:	00 0c       	CC = R0 == 0x0;
    4d7c:	fc 1c       	IF CC JUMP 0x4f74 <__malloc_r+0x474> (BP);
    4d7e:	86 53       	R6 = R6 - R0;
    4d80:	21 e1 08 10 	R1 = 0x1008 (X);		/*		R1=0x1008(4104) */
    4d84:	46 64       	R6 += 0x8;		/* (  8) */
    4d86:	01 52       	R0 = R1 - R0;
    4d88:	26 51       	R4 = R6 + R4;
    4d8a:	21 e1 ff 0f 	R1 = 0xfff (X);		/*		R1=0xfff(4095) */
    4d8e:	4c 54       	R1 = R4 & R1;
    4d90:	08 53       	R4 = R0 - R1;
    4d92:	0c 30       	R1 = R4;
    4d94:	44 30       	R0 = P4;
    4d96:	fa bb       	[FP -0x4] = P2;
    4d98:	00 e3 6c 07 	CALL 0x5c70 <__sbrk_r>;
    4d9c:	38 0c       	CC = R0 == -0x1;
    4d9e:	fa b9       	P2 = [FP -0x4];
    4da0:	2b 19       	IF CC JUMP 0x4ff6 <__malloc_r+0x4f6>;
    4da2:	30 52       	R0 = R0 - R6;
    4da4:	44 50       	R1 = R4 + R0;
    4da6:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    4da8:	06 32       	P0 = R6;
    4daa:	12 91       	R2 = [P2];
    4dac:	14 50       	R0 = R4 + R2;
    4dae:	5d 08       	CC = P5 == P3;
    4db0:	10 93       	[P2] = R0;
    4db2:	9e b0       	[P3 + 0x8] = R6;
    4db4:	41 b0       	[P0 + 0x4] = R1;
    4db6:	14 18       	IF CC JUMP 0x4dde <__malloc_r+0x2de>;
    4db8:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
    4dba:	0d 0a       	CC = R5 <= R1 (IU);
    4dbc:	df 18       	IF CC JUMP 0x4f7a <__malloc_r+0x47a>;
    4dbe:	a5 67       	R5 += -0xc;		/* (-12) */
    4dc0:	c1 63       	R1 = -0x8 (X);		/*		R1=0xfffffff8( -8) */
    4dc2:	4d 54       	R1 = R5 & R1;
    4dc4:	01 32       	P0 = R1;
    4dc6:	6a a0       	R2 = [P5 + 0x4];
    4dc8:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    4dca:	93 54       	R2 = R3 & R2;
    4dcc:	91 56       	R2 = R1 | R2;
    4dce:	6a b0       	[P5 + 0x4] = R2;
    4dd0:	85 5a       	P2 = P5 + P0;
    4dd2:	2a 60       	R2 = 0x5 (X);		/*		R2=0x5(  5) */
    4dd4:	52 b0       	[P2 + 0x4] = R2;
    4dd6:	92 b0       	[P2 + 0x8] = R2;
    4dd8:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
    4dda:	11 0a       	CC = R1 <= R2 (IU);
    4ddc:	10 11       	IF !CC JUMP 0x4ffc <__malloc_r+0x4fc>;
    4dde:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98cc <___malloc_current_mallinfo> */
    4de2:	0a e1 f8 98 	P2.L = 0x98f8;		/* (-26376)	P2=0x98f8 <___malloc_max_sbrked_mem> */
    4de6:	13 91       	R3 = [P2];
    4de8:	18 0a       	CC = R0 <= R3 (IU);
    4dea:	02 1c       	IF CC JUMP 0x4dee <__malloc_r+0x2ee> (BP);
    4dec:	10 93       	[P2] = R0;
    4dee:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98f8 <___malloc_max_sbrked_mem> */
    4df2:	0a e1 f4 98 	P2.L = 0x98f4;		/* (-26380)	P2=0x98f4 <___malloc_max_total_mem> */
    4df6:	14 91       	R4 = [P2];
    4df8:	20 0a       	CC = R0 <= R4 (IU);
    4dfa:	02 18       	IF CC JUMP 0x4dfe <__malloc_r+0x2fe>;
    4dfc:	10 93       	[P2] = R0;
    4dfe:	9d ac       	P5 = [P3 + 0x8];
    4e00:	e1 63       	R1 = -0x4 (X);		/*		R1=0xfffffffc( -4) */
    4e02:	68 a0       	R0 = [P5 + 0x4];
    4e04:	41 54       	R1 = R1 & R0;
    4e06:	b9 09       	CC = R1 < R7 (IU);
    4e08:	39 52       	R0 = R1 - R7;
    4e0a:	04 18       	IF CC JUMP 0x4e12 <__malloc_r+0x312>;
    4e0c:	7e 60       	R6 = 0xf (X);		/*		R6=0xf( 15) */
    4e0e:	30 09       	CC = R0 <= R6;
    4e10:	06 14       	IF !CC JUMP 0x4e1c <__malloc_r+0x31c> (BP);
    4e12:	44 30       	R0 = P4;
    4e14:	00 e3 ec 01 	CALL 0x51ec <___malloc_unlock>;
    4e18:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    4e1a:	a7 2e       	JUMP.S 0x4b68 <__malloc_r+0x68>;
    4e1c:	07 32       	P0 = R7;
    4e1e:	0f 30       	R1 = R7;
    4e20:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    4e22:	69 b0       	[P5 + 0x4] = R1;
    4e24:	85 5a       	P2 = P5 + P0;
    4e26:	9a bc       	[P3 + 0x8] = P2;
    4e28:	99 2e       	JUMP.S 0x4b5a <__malloc_r+0x5a>;
    4e2a:	a1 60       	R1 = 0x14 (X);		/*		R1=0x14( 20) */
    4e2c:	08 0a       	CC = R0 <= R1 (IU);
    4e2e:	80 1c       	IF CC JUMP 0x4f2e <__malloc_r+0x42e> (BP);
    4e30:	21 e1 54 00 	R1 = 0x54 (X);		/*		R1=0x54( 84) */
    4e34:	08 0a       	CC = R0 <= R1 (IU);
    4e36:	93 14       	IF !CC JUMP 0x4f5c <__malloc_r+0x45c> (BP);
    4e38:	82 c6 a7 83 	R1 = R7 >> 0xc;
    4e3c:	20 e1 6e 00 	R0 = 0x6e (X);		/*		R0=0x6e(110) */
    4e40:	01 50       	R0 = R1 + R0;
    4e42:	00 32       	P0 = R0;
    4e44:	80 5a       	P2 = P0 << 0x1;
    4e46:	aa 2e       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4e48:	82 c6 b8 83 	R1 = R0 >> 0x9;
    4e4c:	21 0e       	CC = R1 <= 0x4 (IU);
    4e4e:	76 1c       	IF CC JUMP 0x4f3a <__malloc_r+0x43a> (BP);
    4e50:	a2 60       	R2 = 0x14 (X);		/*		R2=0x14( 20) */
    4e52:	11 0a       	CC = R1 <= R2 (IU);
    4e54:	b0 14       	IF !CC JUMP 0x4fb4 <__malloc_r+0x4b4> (BP);
    4e56:	22 e1 5b 00 	R2 = 0x5b (X);		/*		R2=0x5b( 91) */
    4e5a:	51 50       	R1 = R1 + R2;
    4e5c:	11 32       	P2 = R1;
    4e5e:	12 5a       	P0 = P2 << 0x1;
    4e60:	03 5e       	P0 = P3 + (P0 << 0x2);
    4e62:	82 ac       	P2 = [P0 + 0x8];
    4e64:	42 e1 00 00 	R2.H = 0x0;		/* (  0)	R2=0x5b( 91) */
    4e68:	02 e1 b4 94 	R2.L = 0x94b4;		/* (-27468)	R2=0x94b4 <___malloc_av_>(38068) */
    4e6c:	42 08       	CC = P2 == P0;
    4e6e:	8b 18       	IF CC JUMP 0x4f84 <__malloc_r+0x484>;
    4e70:	00 00       	NOP;
    4e72:	00 00       	NOP;
    4e74:	e2 63       	R2 = -0x4 (X);		/*		R2=0xfffffffc( -4) */
    4e76:	00 00       	NOP;
    4e78:	51 a0       	R1 = [P2 + 0x4];
    4e7a:	4a 54       	R1 = R2 & R1;
    4e7c:	88 09       	CC = R0 < R1 (IU);
    4e7e:	07 10       	IF !CC JUMP 0x4e8c <__malloc_r+0x38c>;
    4e80:	00 00       	NOP;
    4e82:	00 00       	NOP;
    4e84:	00 00       	NOP;
    4e86:	92 ac       	P2 = [P2 + 0x8];
    4e88:	50 08       	CC = P0 == P2;
    4e8a:	f6 17       	IF !CC JUMP 0x4e76 <__malloc_r+0x376> (BP);
    4e8c:	d0 ac       	P0 = [P2 + 0xc];
    4e8e:	59 a0       	R1 = [P3 + 0x4];
    4e90:	e8 bc       	[P5 + 0xc] = P0;
    4e92:	aa bc       	[P5 + 0x8] = P2;
    4e94:	d5 bc       	[P2 + 0xc] = P5;
    4e96:	85 bc       	[P0 + 0x8] = P5;
    4e98:	ce 2e       	JUMP.S 0x4c34 <__malloc_r+0x134>;
    4e9a:	1f 32       	P3 = R7;
    4e9c:	01 30       	R0 = R1;
    4e9e:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4ea0:	07 4a       	BITSET (R7, 0x0);		/* bit  0 */
    4ea2:	6f b0       	[P5 + 0x4] = R7;
    4ea4:	1d 5a       	P0 = P5 + P3;
    4ea6:	50 bd       	[P2 + 0x14] = P0;
    4ea8:	10 bd       	[P2 + 0x10] = P0;
    4eaa:	c1 bc       	[P0 + 0xc] = P1;
    4eac:	81 bc       	[P0 + 0x8] = P1;
    4eae:	09 32       	P1 = R1;
    4eb0:	40 b0       	[P0 + 0x4] = R0;
    4eb2:	44 30       	R0 = P4;
    4eb4:	08 5a       	P0 = P0 + P1;
    4eb6:	01 93       	[P0] = R1;
    4eb8:	00 e3 9a 01 	CALL 0x51ec <___malloc_unlock>;
    4ebc:	45 30       	R0 = P5;
    4ebe:	40 64       	R0 += 0x8;		/* (  8) */
    4ec0:	54 2e       	JUMP.S 0x4b68 <__malloc_r+0x68>;
    4ec2:	51 a0       	R1 = [P2 + 0x4];
    4ec4:	b8 2e       	JUMP.S 0x4c34 <__malloc_r+0x134>;
    4ec6:	0d 64       	R5 += 0x1;		/* (  1) */
    4ec8:	50 30       	R2 = P0;
    4eca:	55 54       	R1 = R5 & R2;
    4ecc:	01 0c       	CC = R1 == 0x0;
    4ece:	42 6c       	P2 += 0x8;		/* (  8) */
    4ed0:	cb 16       	IF !CC JUMP 0x4c66 <__malloc_r+0x166> (BP);
    4ed2:	90 32       	P2 = I0;
    4ed4:	60 30       	R4 = P0;
    4ed6:	63 54       	R1 = R3 & R4;
    4ed8:	01 0c       	CC = R1 == 0x0;
    4eda:	b4 18       	IF CC JUMP 0x5042 <__malloc_r+0x542>;
    4edc:	4a 30       	R1 = P2;
    4ede:	c1 67       	R1 += -0x8;		/* ( -8) */
    4ee0:	fb 67       	R3 += -0x1;		/* ( -1) */
    4ee2:	52 91       	P2 = [P2];
    4ee4:	52 30       	R2 = P2;
    4ee6:	0a 08       	CC = R2 == R1;
    4ee8:	f6 1f       	IF CC JUMP 0x4ed4 <__malloc_r+0x3d4> (BP);
    4eea:	59 a0       	R1 = [P3 + 0x4];
    4eec:	08 4f       	R0 <<= 0x1;
    4eee:	08 0a       	CC = R0 <= R1 (IU);
    4ef0:	07 13       	IF !CC JUMP 0x4cfe <__malloc_r+0x1fe>;
    4ef2:	00 0c       	CC = R0 == 0x0;
    4ef4:	05 1b       	IF CC JUMP 0x4cfe <__malloc_r+0x1fe>;
    4ef6:	81 54       	R2 = R1 & R0;
    4ef8:	02 0c       	CC = R2 == 0x0;
    4efa:	a9 18       	IF CC JUMP 0x504c <__malloc_r+0x54c>;
    4efc:	1d 30       	R3 = R5;
    4efe:	ad 2e       	JUMP.S 0x4c58 <__malloc_r+0x158>;
    4f00:	45 30       	R0 = P5;
    4f02:	6d ad       	P5 = [P5 + 0x14];
    4f04:	40 64       	R0 += 0x8;		/* (  8) */
    4f06:	13 64       	R3 += 0x2;		/* (  2) */
    4f08:	4d 30       	R1 = P5;
    4f0a:	08 08       	CC = R0 == R1;
    4f0c:	6b 1e       	IF CC JUMP 0x4be2 <__malloc_r+0xe2> (BP);
    4f0e:	1c 2e       	JUMP.S 0x4b46 <__malloc_r+0x46>;
    4f10:	1a 32       	P3 = R2;
    4f12:	a9 ac       	P1 = [P5 + 0x8];
    4f14:	9d 5a       	P2 = P5 + P3;
    4f16:	50 a0       	R0 = [P2 + 0x4];
    4f18:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    4f1a:	50 b0       	[P2 + 0x4] = R0;
    4f1c:	ea ac       	P2 = [P5 + 0xc];
    4f1e:	44 30       	R0 = P4;
    4f20:	ca bc       	[P1 + 0xc] = P2;
    4f22:	91 bc       	[P2 + 0x8] = P1;
    4f24:	00 e3 64 01 	CALL 0x51ec <___malloc_unlock>;
    4f28:	45 30       	R0 = P5;
    4f2a:	40 64       	R0 += 0x8;		/* (  8) */
    4f2c:	1e 2e       	JUMP.S 0x4b68 <__malloc_r+0x68>;
    4f2e:	21 e1 5b 00 	R1 = 0x5b (X);		/*		R1=0x5b( 91) */
    4f32:	08 50       	R0 = R0 + R1;
    4f34:	00 32       	P0 = R0;
    4f36:	80 5a       	P2 = P0 << 0x1;
    4f38:	31 2e       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4f3a:	82 c6 d0 83 	R1 = R0 >> 0x6;
    4f3e:	c1 65       	R1 += 0x38;		/* ( 56) */
    4f40:	11 32       	P2 = R1;
    4f42:	12 5a       	P0 = P2 << 0x1;
    4f44:	8e 2f       	JUMP.S 0x4e60 <__malloc_r+0x360>;
    4f46:	5d 08       	CC = P5 == P3;
    4f48:	08 1b       	IF CC JUMP 0x4d58 <__malloc_r+0x258>;
    4f4a:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98f4 <___malloc_max_total_mem> */
    4f4e:	0a e1 b4 94 	P2.L = 0x94b4;		/* (-27468)	P2=0x94b4 <___malloc_av_> */
    4f52:	e1 63       	R1 = -0x4 (X);		/*		R1=0xfffffffc( -4) */
    4f54:	95 ac       	P5 = [P2 + 0x8];
    4f56:	68 a0       	R0 = [P5 + 0x4];
    4f58:	41 54       	R1 = R1 & R0;
    4f5a:	56 2f       	JUMP.S 0x4e06 <__malloc_r+0x306>;
    4f5c:	21 e1 54 01 	R1 = 0x154 (X);		/*		R1=0x154(340) */
    4f60:	08 0a       	CC = R0 <= R1 (IU);
    4f62:	1b 14       	IF !CC JUMP 0x4f98 <__malloc_r+0x498> (BP);
    4f64:	82 c6 8f 83 	R1 = R7 >> 0xf;
    4f68:	20 e1 77 00 	R0 = 0x77 (X);		/*		R0=0x77(119) */
    4f6c:	01 50       	R0 = R1 + R0;
    4f6e:	00 32       	P0 = R0;
    4f70:	80 5a       	P2 = P0 << 0x1;
    4f72:	14 2e       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4f74:	20 e1 00 10 	R0 = 0x1000 (X);		/*		R0=0x1000(4096) */
    4f78:	08 2f       	JUMP.S 0x4d88 <__malloc_r+0x288>;
    4f7a:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    4f7c:	40 b0       	[P0 + 0x4] = R0;
    4f7e:	2e 32       	P5 = R6;
    4f80:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    4f82:	42 2f       	JUMP.S 0x4e06 <__malloc_r+0x306>;
    4f84:	02 32       	P0 = R2;
    4f86:	82 c6 f1 01 	R0 = R1 >>> 0x2;
    4f8a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    4f8c:	81 40       	R1 <<= R0;
    4f8e:	40 a0       	R0 = [P0 + 0x4];
    4f90:	41 56       	R1 = R1 | R0;
    4f92:	41 b0       	[P0 + 0x4] = R1;
    4f94:	42 32       	P0 = P2;
    4f96:	7d 2f       	JUMP.S 0x4e90 <__malloc_r+0x390>;
    4f98:	21 e1 54 05 	R1 = 0x554 (X);		/*		R1=0x554(1364) */
    4f9c:	08 0a       	CC = R0 <= R1 (IU);
    4f9e:	21 14       	IF !CC JUMP 0x4fe0 <__malloc_r+0x4e0> (BP);
    4fa0:	82 c6 77 83 	R1 = R7 >> 0x12;
    4fa4:	20 e1 7c 00 	R0 = 0x7c (X);		/*		R0=0x7c(124) */
    4fa8:	01 50       	R0 = R1 + R0;
    4faa:	00 32       	P0 = R0;
    4fac:	80 5a       	P2 = P0 << 0x1;
    4fae:	f6 2d       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4fb0:	84 64       	R4 += 0x10;		/* ( 16) */
    4fb2:	c4 2e       	JUMP.S 0x4d3a <__malloc_r+0x23a>;
    4fb4:	22 e1 54 00 	R2 = 0x54 (X);		/*		R2=0x54( 84) */
    4fb8:	11 0a       	CC = R1 <= R2 (IU);
    4fba:	2c 14       	IF !CC JUMP 0x5012 <__malloc_r+0x512> (BP);
    4fbc:	82 c6 a0 85 	R2 = R0 >> 0xc;
    4fc0:	21 e1 6e 00 	R1 = 0x6e (X);		/*		R1=0x6e(110) */
    4fc4:	4a 50       	R1 = R2 + R1;
    4fc6:	11 32       	P2 = R1;
    4fc8:	12 5a       	P0 = P2 << 0x1;
    4fca:	4b 2f       	JUMP.S 0x4e60 <__malloc_r+0x360>;
    4fcc:	21 e1 ff 0f 	R1 = 0xfff (X);		/*		R1=0xfff(4095) */
    4fd0:	4a 54       	R1 = R2 & R1;
    4fd2:	01 0c       	CC = R1 == 0x0;
    4fd4:	cb 16       	IF !CC JUMP 0x4d6a <__malloc_r+0x26a> (BP);
    4fd6:	9a ac       	P2 = [P3 + 0x8];
    4fd8:	6c 51       	R5 = R4 + R5;
    4fda:	05 4a       	BITSET (R5, 0x0);		/* bit  0 */
    4fdc:	55 b0       	[P2 + 0x4] = R5;
    4fde:	00 2f       	JUMP.S 0x4dde <__malloc_r+0x2de>;
    4fe0:	2a e1 fc 00 	P2 = 0xfc (X);		/*		P2=0xfc(252) */
    4fe4:	20 e1 7e 00 	R0 = 0x7e (X);		/*		R0=0x7e(126) */
    4fe8:	d9 2d       	JUMP.S 0x4b9a <__malloc_r+0x9a>;
    4fea:	49 e1 00 00 	P1.H = 0x0;		/* (  0)	P1=0x94ac <___malloc_sbrk_base> */
    4fee:	09 e1 ac 94 	P1.L = 0x94ac;		/* (-27476)	P1=0x94ac <___malloc_sbrk_base> */
    4ff2:	0e 93       	[P1] = R6;
    4ff4:	c1 2e       	JUMP.S 0x4d76 <__malloc_r+0x276>;
    4ff6:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    4ff8:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    4ffa:	d7 2e       	JUMP.S 0x4da8 <__malloc_r+0x2a8>;
    4ffc:	4d 30       	R1 = P5;
    4ffe:	44 30       	R0 = P4;
    5000:	41 64       	R1 += 0x8;		/* (  8) */
    5002:	ff e3 15 fb 	CALL 0x462c <__free_r>;
    5006:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0xfc */
    500a:	0a e1 cc 98 	P2.L = 0x98cc;		/* (-26420)	P2=0x98cc <___malloc_current_mallinfo> */
    500e:	10 91       	R0 = [P2];
    5010:	e7 2e       	JUMP.S 0x4dde <__malloc_r+0x2de>;
    5012:	22 e1 54 01 	R2 = 0x154 (X);		/*		R2=0x154(340) */
    5016:	11 0a       	CC = R1 <= R2 (IU);
    5018:	09 14       	IF !CC JUMP 0x502a <__malloc_r+0x52a> (BP);
    501a:	82 c6 88 85 	R2 = R0 >> 0xf;
    501e:	21 e1 77 00 	R1 = 0x77 (X);		/*		R1=0x77(119) */
    5022:	4a 50       	R1 = R2 + R1;
    5024:	11 32       	P2 = R1;
    5026:	12 5a       	P0 = P2 << 0x1;
    5028:	1c 2f       	JUMP.S 0x4e60 <__malloc_r+0x360>;
    502a:	22 e1 54 05 	R2 = 0x554 (X);		/*		R2=0x554(1364) */
    502e:	11 0a       	CC = R1 <= R2 (IU);
    5030:	11 14       	IF !CC JUMP 0x5052 <__malloc_r+0x552> (BP);
    5032:	82 c6 70 85 	R2 = R0 >> 0x12;
    5036:	21 e1 7c 00 	R1 = 0x7c (X);		/*		R1=0x7c(124) */
    503a:	4a 50       	R1 = R2 + R1;
    503c:	11 32       	P2 = R1;
    503e:	12 5a       	P0 = P2 << 0x1;
    5040:	10 2f       	JUMP.S 0x4e60 <__malloc_r+0x360>;
    5042:	59 a0       	R1 = [P3 + 0x4];
    5044:	c2 43       	R2 =~ R0;
    5046:	4a 54       	R1 = R2 & R1;
    5048:	59 b0       	[P3 + 0x4] = R1;
    504a:	51 2f       	JUMP.S 0x4eec <__malloc_r+0x3ec>;
    504c:	25 64       	R5 += 0x4;		/* (  4) */
    504e:	08 4f       	R0 <<= 0x1;
    5050:	53 2f       	JUMP.S 0x4ef6 <__malloc_r+0x3f6>;
    5052:	28 e1 fc 00 	P0 = 0xfc (X);		/*		P0=0xfc(252) */
    5056:	21 e1 7e 00 	R1 = 0x7e (X);		/*		R1=0x7e(126) */
    505a:	03 2f       	JUMP.S 0x4e60 <__malloc_r+0x360>;

0000505c <_memchr>:
    505c:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    505e:	d8 54       	R3 = R0 & R3;
    5060:	60 05       	[--SP] = (R7:4);
    5062:	03 0c       	CC = R3 == 0x0;
    5064:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5068:	29 30       	R5 = R1;
    506a:	62 18       	IF CC JUMP 0x512e <_memchr+0xd2>;
    506c:	1a 30       	R3 = R2;
    506e:	02 0c       	CC = R2 == 0x0;
    5070:	fb 67       	R3 += -0x1;		/* ( -1) */
    5072:	11 18       	IF CC JUMP 0x5094 <_memchr+0x38>;
    5074:	00 00       	NOP;
    5076:	10 32       	P2 = R0;
    5078:	4f 43       	R7 = R1.B (Z);
    507a:	16 99       	R6 = B[P2] (Z);
    507c:	3e 08       	CC = R6 == R7;
    507e:	5b 18       	IF CC JUMP 0x5134 <_memchr+0xd8>;
    5080:	08 64       	R0 += 0x1;		/* (  1) */
    5082:	1e 60       	R6 = 0x3 (X);		/*		R6=0x3(  3) */
    5084:	0a 32       	P1 = R2;
    5086:	b0 54       	R2 = R0 & R6;
    5088:	02 0c       	CC = R2 == 0x0;
    508a:	10 32       	P2 = R0;
    508c:	13 18       	IF CC JUMP 0x50b2 <_memchr+0x56>;
    508e:	f9 6f       	P1 += -0x1;		/* ( -1) */
    5090:	41 0c       	CC = P1 == 0x0;
    5092:	07 10       	IF !CC JUMP 0x50a0 <_memchr+0x44>;
    5094:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    5096:	01 e8 00 00 	UNLINK;
    509a:	42 30       	R0 = P2;
    509c:	20 05       	(R7:4) = [SP++];
    509e:	10 00       	RTS;
    50a0:	08 64       	R0 += 0x1;		/* (  1) */
    50a2:	12 99       	R2 = B[P2] (Z);
    50a4:	3a 08       	CC = R2 == R7;
    50a6:	fb 67       	R3 += -0x1;		/* ( -1) */
    50a8:	f7 1b       	IF CC JUMP 0x5096 <_memchr+0x3a>;
    50aa:	b0 54       	R2 = R0 & R6;
    50ac:	02 0c       	CC = R2 == 0x0;
    50ae:	10 32       	P2 = R0;
    50b0:	ef 17       	IF !CC JUMP 0x508e <_memchr+0x32> (BP);
    50b2:	1b 0e       	CC = R3 <= 0x3 (IU);
    50b4:	1a 14       	IF !CC JUMP 0x50e8 <_memchr+0x8c> (BP);
    50b6:	03 0c       	CC = R3 == 0x0;
    50b8:	ee 1b       	IF CC JUMP 0x5094 <_memchr+0x38>;
    50ba:	00 00       	NOP;
    50bc:	00 00       	NOP;
    50be:	6f 43       	R7 = R5.B (Z);
    50c0:	10 99       	R0 = B[P2] (Z);
    50c2:	38 08       	CC = R0 == R7;
    50c4:	e9 1b       	IF CC JUMP 0x5096 <_memchr+0x3a>;
    50c6:	42 30       	R0 = P2;
    50c8:	08 64       	R0 += 0x1;		/* (  1) */
    50ca:	0b 32       	P1 = R3;
    50cc:	10 32       	P2 = R0;
    50ce:	f9 6f       	P1 += -0x1;		/* ( -1) */
    50d0:	41 0c       	CC = P1 == 0x0;
    50d2:	02 10       	IF !CC JUMP 0x50d6 <_memchr+0x7a>;
    50d4:	e0 2f       	JUMP.S 0x5094 <_memchr+0x38>;
    50d6:	08 64       	R0 += 0x1;		/* (  1) */
    50d8:	11 99       	R1 = B[P2] (Z);
    50da:	39 08       	CC = R1 == R7;
    50dc:	f8 17       	IF !CC JUMP 0x50cc <_memchr+0x70> (BP);
    50de:	01 e8 00 00 	UNLINK;
    50e2:	42 30       	R0 = P2;
    50e4:	20 05       	(R7:4) = [SP++];
    50e6:	10 00       	RTS;
    50e8:	0b 32       	P1 = R3;
    50ea:	49 43       	R1 = R1.B (Z);
    50ec:	82 c6 41 80 	R0 = R1 << 0x8;
    50f0:	08 56       	R0 = R0 | R1;
    50f2:	82 c6 80 8c 	R6 = R0 << 0x10;
    50f6:	e1 6f       	P1 += -0x4;		/* ( -4) */
    50f8:	47 e1 fe fe 	R7.H = 0xfefe;		/* (-258)	R7=0xfefe0010(-16908272) */
    50fc:	42 e1 80 80 	R2.H = 0x8080;		/* (-32640)	R2=0x80800554(-2139093676) */
    5100:	c9 44       	P1 = P1 >> 0x2;
    5102:	86 57       	R6 = R6 | R0;
    5104:	07 e1 ff fe 	R7.L = 0xfeff;		/* (-257)	R7=0xfefefeff(-16843009) */
    5108:	02 e1 80 80 	R2.L = 0x8080;		/* (-32640)	R2=0x80808080(-2139062144) */
    510c:	09 6c       	P1 += 0x1;		/* (  1) */
    510e:	b2 e0 0c 10 	LSETUP(0x5112 <_memchr+0xb6>, 0x5126 <_memchr+0xca>) LC1 = P1;
    5112:	42 32       	P0 = P2;
    5114:	00 91       	R0 = [P0];
    5116:	06 58       	R0 = R6 ^ R0;
    5118:	78 50       	R1 = R0 + R7;
    511a:	c0 43       	R0 =~ R0;
    511c:	01 54       	R0 = R1 & R0;
    511e:	10 54       	R0 = R0 & R2;
    5120:	00 0c       	CC = R0 == 0x0;
    5122:	22 6c       	P2 += 0x4;		/* (  4) */
    5124:	03 10       	IF !CC JUMP 0x512a <_memchr+0xce>;
    5126:	e3 67       	R3 += -0x4;		/* ( -4) */
    5128:	c7 2f       	JUMP.S 0x50b6 <_memchr+0x5a>;
    512a:	50 32       	P2 = P0;
    512c:	c5 2f       	JUMP.S 0x50b6 <_memchr+0x5a>;
    512e:	10 32       	P2 = R0;
    5130:	1a 30       	R3 = R2;
    5132:	c0 2f       	JUMP.S 0x50b2 <_memchr+0x56>;
    5134:	10 32       	P2 = R0;
    5136:	b0 2f       	JUMP.S 0x5096 <_memchr+0x3a>;

00005138 <_memcpy>:
    5138:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    513a:	fd 05       	[--SP] = (R7:7, P5:5);
    513c:	1a 0a       	CC = R2 <= R3 (IU);
    513e:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5142:	37 1c       	IF CC JUMP 0x51b0 <_memcpy+0x78> (BP);
    5144:	c1 57       	R7 = R1 | R0;
    5146:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    5148:	df 54       	R3 = R7 & R3;
    514a:	03 0c       	CC = R3 == 0x0;
    514c:	43 14       	IF !CC JUMP 0x51d2 <_memcpy+0x9a> (BP);
    514e:	3a 30       	R7 = R2;
    5150:	87 67       	R7 += -0x10;		/* (-16) */
    5152:	27 4e       	R7 >>= 0x4;
    5154:	2f 32       	P5 = R7;
    5156:	01 32       	P0 = R1;
    5158:	10 32       	P2 = R0;
    515a:	0d 6c       	P5 += 0x1;		/* (  1) */
    515c:	b2 e0 0b 50 	LSETUP(0x5160 <_memcpy+0x28>, 0x5172 <_memcpy+0x3a>) LC1 = P5;
    5160:	03 91       	R3 = [P0];
    5162:	13 93       	[P2] = R3;
    5164:	43 a0       	R3 = [P0 + 0x4];
    5166:	53 b0       	[P2 + 0x4] = R3;
    5168:	83 a0       	R3 = [P0 + 0x8];
    516a:	93 b0       	[P2 + 0x8] = R3;
    516c:	c3 a0       	R3 = [P0 + 0xc];
    516e:	d3 b0       	[P2 + 0xc] = R3;
    5170:	80 6c       	P0 += 0x10;		/* ( 16) */
    5172:	82 6c       	P2 += 0x10;		/* ( 16) */
    5174:	1f 30       	R3 = R7;
    5176:	0b 64       	R3 += 0x1;		/* (  1) */
    5178:	23 4f       	R3 <<= 0x4;
    517a:	d8 51       	R7 = R0 + R3;
    517c:	17 32       	P2 = R7;
    517e:	d9 51       	R7 = R1 + R3;
    5180:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    5182:	da 54       	R3 = R2 & R3;
    5184:	1b 0e       	CC = R3 <= 0x3 (IU);
    5186:	0f 32       	P1 = R7;
    5188:	28 18       	IF CC JUMP 0x51d8 <_memcpy+0xa0>;
    518a:	e3 67       	R3 += -0x4;		/* ( -4) */
    518c:	13 4e       	R3 >>= 0x2;
    518e:	03 32       	P0 = R3;
    5190:	6a 32       	P5 = P2;
    5192:	08 6c       	P0 += 0x1;		/* (  1) */
    5194:	b2 e0 03 00 	LSETUP(0x5198 <_memcpy+0x60>, 0x519a <_memcpy+0x62>) LC1 = P0;
    5198:	09 90       	R1 = [P1++];
    519a:	29 92       	[P5++] = R1;
    519c:	0b 64       	R3 += 0x1;		/* (  1) */
    519e:	82 c6 13 82 	R1 = R3 << 0x2;
    51a2:	01 32       	P0 = R1;
    51a4:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    51a6:	cf 51       	R7 = R7 + R1;
    51a8:	9a 54       	R2 = R2 & R3;
    51aa:	0f 32       	P1 = R7;
    51ac:	82 5a       	P2 = P2 + P0;
    51ae:	03 20       	JUMP.S 0x51b4 <_memcpy+0x7c>;
    51b0:	09 32       	P1 = R1;
    51b2:	10 32       	P2 = R0;
    51b4:	02 0c       	CC = R2 == 0x0;
    51b6:	0a 18       	IF CC JUMP 0x51ca <_memcpy+0x92>;
    51b8:	00 00       	NOP;
    51ba:	4a 30       	R1 = P2;
    51bc:	91 50       	R2 = R1 + R2;
    51be:	00 00       	NOP;
    51c0:	49 98       	R1 = B[P1++] (X);
    51c2:	11 9a       	B[P2++] = R1;
    51c4:	5a 30       	R3 = P2;
    51c6:	13 08       	CC = R3 == R2;
    51c8:	fb 17       	IF !CC JUMP 0x51be <_memcpy+0x86> (BP);
    51ca:	01 e8 00 00 	UNLINK;
    51ce:	bd 05       	(R7:7, P5:5) = [SP++];
    51d0:	10 00       	RTS;
    51d2:	10 32       	P2 = R0;
    51d4:	09 32       	P1 = R1;
    51d6:	f2 2f       	JUMP.S 0x51ba <_memcpy+0x82>;
    51d8:	13 30       	R2 = R3;
    51da:	ed 2f       	JUMP.S 0x51b4 <_memcpy+0x7c>;

000051dc <___malloc_lock>:
    51dc:	00 00       	NOP;
    51de:	00 00       	NOP;
    51e0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    51e4:	01 e8 00 00 	UNLINK;
    51e8:	10 00       	RTS;
	...

000051ec <___malloc_unlock>:
    51ec:	00 00       	NOP;
    51ee:	00 00       	NOP;
    51f0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    51f4:	01 e8 00 00 	UNLINK;
    51f8:	10 00       	RTS;
	...

000051fc <__Balloc>:
    51fc:	fc 05       	[--SP] = (R7:7, P5:4);
    51fe:	28 32       	P5 = R0;
    5200:	00 e8 03 00 	LINK 0xc;		/* (12) */
    5204:	21 32       	P4 = R1;
    5206:	2a e5 13 00 	P2 = [P5 + 0x4c];
    520a:	42 0c       	CC = P2 == 0x0;
    520c:	11 18       	IF CC JUMP 0x522e <__Balloc+0x32>;
    520e:	00 00       	NOP;
    5210:	00 00       	NOP;
    5212:	62 5e       	P1 = P2 + (P4 << 0x2);
    5214:	4a 91       	P2 = [P1];
    5216:	42 0c       	CC = P2 == 0x0;
    5218:	16 18       	IF CC JUMP 0x5244 <__Balloc+0x48>;
    521a:	10 91       	R0 = [P2];
    521c:	08 93       	[P1] = R0;
    521e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5220:	10 b1       	[P2 + 0x10] = R0;
    5222:	d0 b0       	[P2 + 0xc] = R0;
    5224:	01 e8 00 00 	UNLINK;
    5228:	42 30       	R0 = P2;
    522a:	bc 05       	(R7:7, P5:4) = [SP++];
    522c:	10 00       	RTS;
    522e:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    5230:	0a 61       	R2 = 0x21 (X);		/*		R2=0x21( 33) */
    5232:	00 e3 e1 0b 	CALL 0x69f4 <__calloc_r>;
    5236:	10 32       	P2 = R0;
    5238:	28 e6 13 00 	[P5 + 0x4c] = R0;
    523c:	42 0c       	CC = P2 == 0x0;
    523e:	ea 17       	IF !CC JUMP 0x5212 <__Balloc+0x16> (BP);
    5240:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    5242:	f1 2f       	JUMP.S 0x5224 <__Balloc+0x28>;
    5244:	44 30       	R0 = P4;
    5246:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
    5248:	87 40       	R7 <<= R0;
    524a:	17 30       	R2 = R7;
    524c:	2a 64       	R2 += 0x5;		/* (  5) */
    524e:	12 4f       	R2 <<= 0x2;
    5250:	45 30       	R0 = P5;
    5252:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    5254:	00 e3 d0 0b 	CALL 0x69f4 <__calloc_r>;
    5258:	10 32       	P2 = R0;
    525a:	42 0c       	CC = P2 == 0x0;
    525c:	f2 1b       	IF CC JUMP 0x5240 <__Balloc+0x44>;
    525e:	54 bc       	[P2 + 0x4] = P4;
    5260:	97 b0       	[P2 + 0x8] = R7;
    5262:	de 2f       	JUMP.S 0x521e <__Balloc+0x22>;

00005264 <__Bfree>:
    5264:	11 32       	P2 = R1;
    5266:	c5 04       	[--SP] = (P5:5);
    5268:	00 e8 00 00 	LINK 0x0;		/* (0) */
    526c:	42 0c       	CC = P2 == 0x0;
    526e:	0a 18       	IF CC JUMP 0x5282 <__Bfree+0x1e>;
    5270:	00 00       	NOP;
    5272:	28 32       	P5 = R0;
    5274:	51 ac       	P1 = [P2 + 0x4];
    5276:	28 e5 13 00 	P0 = [P5 + 0x4c];
    527a:	48 5e       	P1 = P0 + (P1 << 0x2);
    527c:	08 91       	R0 = [P1];
    527e:	10 93       	[P2] = R0;
    5280:	09 93       	[P1] = R1;
    5282:	01 e8 00 00 	UNLINK;
    5286:	85 04       	(P5:5) = [SP++];
    5288:	10 00       	RTS;
	...

0000528c <___multadd>:
    528c:	eb 05       	[--SP] = (R7:5, P5:3);
    528e:	09 32       	P1 = R1;
    5290:	21 32       	P4 = R1;
    5292:	00 e8 03 00 	LINK 0xc;		/* (12) */
    5296:	18 32       	P3 = R0;
    5298:	fd a2       	R5 = [FP + 0x2c];
    529a:	a1 6c       	P1 += 0x14;		/* ( 20) */
    529c:	25 ad       	P5 = [P4 + 0x10];
    529e:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    52a0:	0a 6c       	P2 += 0x1;		/* (  1) */
    52a2:	0e 91       	R6 = [P1];
    52a4:	f7 42       	R7 = R6.L (Z);
    52a6:	d7 40       	R7 *= R2;
    52a8:	82 c6 86 87 	R3 = R6 >> 0x10;
    52ac:	d3 40       	R3 *= R2;
    52ae:	ef 51       	R7 = R7 + R5;
    52b0:	82 c6 87 81 	R0 = R7 >> 0x10;
    52b4:	d8 50       	R3 = R0 + R3;
    52b6:	82 c6 83 8b 	R5 = R3 >> 0x10;
    52ba:	ff 42       	R7 = R7.L (Z);
    52bc:	83 4f       	R3 <<= 0x10;
    52be:	fb 50       	R3 = R3 + R7;
    52c0:	55 09       	CC = P5 <= P2;
    52c2:	0b 92       	[P1++] = R3;
    52c4:	ee 17       	IF !CC JUMP 0x52a0 <___multadd+0x14> (BP);
    52c6:	05 0c       	CC = R5 == 0x0;
    52c8:	08 18       	IF CC JUMP 0x52d8 <___multadd+0x4c>;
    52ca:	a2 ac       	P2 = [P4 + 0x8];
    52cc:	d5 08       	CC = P5 < P2;
    52ce:	0a 10       	IF !CC JUMP 0x52e2 <___multadd+0x56>;
    52d0:	ac 5e       	P2 = P4 + (P5 << 0x2);
    52d2:	0d 6c       	P5 += 0x1;		/* (  1) */
    52d4:	55 b1       	[P2 + 0x14] = R5;
    52d6:	25 bd       	[P4 + 0x10] = P5;
    52d8:	01 e8 00 00 	UNLINK;
    52dc:	44 30       	R0 = P4;
    52de:	ab 05       	(R7:5, P5:3) = [SP++];
    52e0:	10 00       	RTS;
    52e2:	61 a0       	R1 = [P4 + 0x4];
    52e4:	09 64       	R1 += 0x1;		/* (  1) */
    52e6:	43 30       	R0 = P3;
    52e8:	ff e3 8a ff 	CALL 0x51fc <__Balloc>;
    52ec:	22 a1       	R2 = [P4 + 0x10];
    52ee:	4c 30       	R1 = P4;
    52f0:	12 64       	R2 += 0x2;		/* (  2) */
    52f2:	38 30       	R7 = R0;
    52f4:	61 64       	R1 += 0xc;		/* ( 12) */
    52f6:	60 64       	R0 += 0xc;		/* ( 12) */
    52f8:	12 4f       	R2 <<= 0x2;
    52fa:	ff e3 1f ff 	CALL 0x5138 <_memcpy>;
    52fe:	62 ac       	P2 = [P4 + 0x4];
    5300:	19 e5 13 00 	P1 = [P3 + 0x4c];
    5304:	91 5e       	P2 = P1 + (P2 << 0x2);
    5306:	10 91       	R0 = [P2];
    5308:	20 93       	[P4] = R0;
    530a:	54 93       	[P2] = P4;
    530c:	27 32       	P4 = R7;
    530e:	e1 2f       	JUMP.S 0x52d0 <___multadd+0x44>;

00005310 <___s2b>:
    5310:	e4 05       	[--SP] = (R7:4, P5:4);
    5312:	00 e8 04 00 	LINK 0x10;		/* (16) */
    5316:	fe a2       	R6 = [FP + 0x2c];
    5318:	38 30       	R7 = R0;
    531a:	06 30       	R0 = R6;
    531c:	21 30       	R4 = R1;
    531e:	40 64       	R0 += 0x8;		/* (  8) */
    5320:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
    5322:	2a 30       	R5 = R2;
    5324:	00 e3 de 12 	CALL 0x78e0 <___divsi3>;
    5328:	08 0d       	CC = R0 <= 0x1;
    532a:	3d 18       	IF CC JUMP 0x53a4 <___s2b+0x94>;
    532c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    532e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    5330:	0b 4f       	R3 <<= 0x1;
    5332:	18 09       	CC = R0 <= R3;
    5334:	09 64       	R1 += 0x1;		/* (  1) */
    5336:	fd 17       	IF !CC JUMP 0x5330 <___s2b+0x20> (BP);
    5338:	07 30       	R0 = R7;
    533a:	ff e3 61 ff 	CALL 0x51fc <__Balloc>;
    533e:	08 30       	R1 = R0;
    5340:	38 a3       	R0 = [FP + 0x30];
    5342:	11 32       	P2 = R1;
    5344:	2c 32       	P5 = R4;
    5346:	50 b1       	[P2 + 0x14] = R0;
    5348:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    534a:	10 b1       	[P2 + 0x10] = R0;
    534c:	48 60       	R0 = 0x9 (X);		/*		R0=0x9(  9) */
    534e:	05 09       	CC = R5 <= R0;
    5350:	27 1c       	IF CC JUMP 0x539e <___s2b+0x8e> (BP);
    5352:	4d 6c       	P5 += 0x9;		/* (  9) */
    5354:	2c 51       	R4 = R4 + R5;
    5356:	65 32       	P4 = P5;
    5358:	07 30       	R0 = R7;
    535a:	63 98       	R3 = B[P4++] (X);
    535c:	83 66       	R3 += -0x30;		/* (-48) */
    535e:	f3 b0       	[SP + 0xc] = R3;
    5360:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    5362:	ff e3 95 ff 	CALL 0x528c <___multadd>;
    5366:	08 30       	R1 = R0;
    5368:	44 30       	R0 = P4;
    536a:	20 08       	CC = R0 == R4;
    536c:	f6 17       	IF !CC JUMP 0x5358 <___s2b+0x48> (BP);
    536e:	15 32       	P2 = R5;
    5370:	55 5b       	P5 = P5 + P2;
    5372:	c5 6f       	P5 += -0x8;		/* ( -8) */
    5374:	2e 09       	CC = R6 <= R5;
    5376:	0f 18       	IF CC JUMP 0x5394 <___s2b+0x84>;
    5378:	ae 53       	R6 = R6 - R5;
    537a:	45 30       	R0 = P5;
    537c:	b0 51       	R6 = R0 + R6;
    537e:	07 30       	R0 = R7;
    5380:	6b 98       	R3 = B[P5++] (X);
    5382:	83 66       	R3 += -0x30;		/* (-48) */
    5384:	f3 b0       	[SP + 0xc] = R3;
    5386:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    5388:	ff e3 82 ff 	CALL 0x528c <___multadd>;
    538c:	08 30       	R1 = R0;
    538e:	45 30       	R0 = P5;
    5390:	30 08       	CC = R0 == R6;
    5392:	f6 17       	IF !CC JUMP 0x537e <___s2b+0x6e> (BP);
    5394:	01 e8 00 00 	UNLINK;
    5398:	01 30       	R0 = R1;
    539a:	a4 05       	(R7:4, P5:4) = [SP++];
    539c:	10 00       	RTS;
    539e:	55 6c       	P5 += 0xa;		/* ( 10) */
    53a0:	4d 60       	R5 = 0x9 (X);		/*		R5=0x9(  9) */
    53a2:	e9 2f       	JUMP.S 0x5374 <___s2b+0x64>;
    53a4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    53a6:	c9 2f       	JUMP.S 0x5338 <___s2b+0x28>;

000053a8 <___hi0bits>:
    53a8:	08 30       	R1 = R0;
    53aa:	80 4d       	R0 >>>= 0x10;
    53ac:	80 4f       	R0 <<= 0x10;
    53ae:	00 0c       	CC = R0 == 0x0;
    53b0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    53b4:	20 14       	IF !CC JUMP 0x53f4 <___hi0bits+0x4c> (BP);
    53b6:	81 4f       	R1 <<= 0x10;
    53b8:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    53ba:	82 c6 41 05 	R2 = R1 >>> 0x18;
    53be:	c2 4f       	R2 <<= 0x18;
    53c0:	02 0c       	CC = R2 == 0x0;
    53c2:	03 14       	IF !CC JUMP 0x53c8 <___hi0bits+0x20> (BP);
    53c4:	40 64       	R0 += 0x8;		/* (  8) */
    53c6:	41 4f       	R1 <<= 0x8;
    53c8:	82 c6 21 05 	R2 = R1 >>> 0x1c;
    53cc:	e2 4f       	R2 <<= 0x1c;
    53ce:	02 0c       	CC = R2 == 0x0;
    53d0:	03 14       	IF !CC JUMP 0x53d6 <___hi0bits+0x2e> (BP);
    53d2:	20 64       	R0 += 0x4;		/* (  4) */
    53d4:	21 4f       	R1 <<= 0x4;
    53d6:	82 c6 11 05 	R2 = R1 >>> 0x1e;
    53da:	f2 4f       	R2 <<= 0x1e;
    53dc:	02 0c       	CC = R2 == 0x0;
    53de:	03 14       	IF !CC JUMP 0x53e4 <___hi0bits+0x3c> (BP);
    53e0:	10 64       	R0 += 0x2;		/* (  2) */
    53e2:	11 4f       	R1 <<= 0x2;
    53e4:	81 0c       	CC = R1 < 0x0;
    53e6:	04 18       	IF CC JUMP 0x53ee <___hi0bits+0x46>;
    53e8:	f1 48       	CC = !BITTST (R1, 0x1e);		/* bit 30 */
    53ea:	07 10       	IF !CC JUMP 0x53f8 <___hi0bits+0x50>;
    53ec:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
    53ee:	01 e8 00 00 	UNLINK;
    53f2:	10 00       	RTS;
    53f4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    53f6:	e2 2f       	JUMP.S 0x53ba <___hi0bits+0x12>;
    53f8:	01 e8 00 00 	UNLINK;
    53fc:	08 64       	R0 += 0x1;		/* (  1) */
    53fe:	10 00       	RTS;

00005400 <___lo0bits>:
    5400:	10 32       	P2 = R0;
    5402:	38 60       	R0 = 0x7 (X);		/*		R0=0x7(  7) */
    5404:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5408:	11 91       	R1 = [P2];
    540a:	01 54       	R0 = R1 & R0;
    540c:	00 0c       	CC = R0 == 0x0;
    540e:	0b 1c       	IF CC JUMP 0x5424 <___lo0bits+0x24> (BP);
    5410:	01 48       	CC = !BITTST (R1, 0x0);		/* bit  0 */
    5412:	2f 10       	IF !CC JUMP 0x5470 <___lo0bits+0x70>;
    5414:	09 48       	CC = !BITTST (R1, 0x1);		/* bit  1 */
    5416:	31 10       	IF !CC JUMP 0x5478 <___lo0bits+0x78>;
    5418:	11 4e       	R1 >>= 0x2;
    541a:	01 e8 00 00 	UNLINK;
    541e:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    5420:	11 93       	[P2] = R1;
    5422:	10 00       	RTS;
    5424:	c8 42       	R0 = R1.L (Z);
    5426:	00 0c       	CC = R0 == 0x0;
    5428:	1c 1c       	IF CC JUMP 0x5460 <___lo0bits+0x60> (BP);
    542a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    542c:	4a 43       	R2 = R1.B (Z);
    542e:	02 0c       	CC = R2 == 0x0;
    5430:	03 14       	IF !CC JUMP 0x5436 <___lo0bits+0x36> (BP);
    5432:	40 64       	R0 += 0x8;		/* (  8) */
    5434:	41 4e       	R1 >>= 0x8;
    5436:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
    5438:	91 54       	R2 = R1 & R2;
    543a:	02 0c       	CC = R2 == 0x0;
    543c:	03 14       	IF !CC JUMP 0x5442 <___lo0bits+0x42> (BP);
    543e:	20 64       	R0 += 0x4;		/* (  4) */
    5440:	21 4e       	R1 >>= 0x4;
    5442:	1a 60       	R2 = 0x3 (X);		/*		R2=0x3(  3) */
    5444:	91 54       	R2 = R1 & R2;
    5446:	02 0c       	CC = R2 == 0x0;
    5448:	03 14       	IF !CC JUMP 0x544e <___lo0bits+0x4e> (BP);
    544a:	10 64       	R0 += 0x2;		/* (  2) */
    544c:	11 4e       	R1 >>= 0x2;
    544e:	01 48       	CC = !BITTST (R1, 0x0);		/* bit  0 */
    5450:	0c 14       	IF !CC JUMP 0x5468 <___lo0bits+0x68> (BP);
    5452:	09 4e       	R1 >>= 0x1;
    5454:	01 0c       	CC = R1 == 0x0;
    5456:	08 10       	IF !CC JUMP 0x5466 <___lo0bits+0x66>;
    5458:	01 e8 00 00 	UNLINK;
    545c:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
    545e:	10 00       	RTS;
    5460:	81 4e       	R1 >>= 0x10;
    5462:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    5464:	e4 2f       	JUMP.S 0x542c <___lo0bits+0x2c>;
    5466:	08 64       	R0 += 0x1;		/* (  1) */
    5468:	01 e8 00 00 	UNLINK;
    546c:	11 93       	[P2] = R1;
    546e:	10 00       	RTS;
    5470:	01 e8 00 00 	UNLINK;
    5474:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5476:	10 00       	RTS;
    5478:	09 4e       	R1 >>= 0x1;
    547a:	01 e8 00 00 	UNLINK;
    547e:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    5480:	11 93       	[P2] = R1;
    5482:	10 00       	RTS;

00005484 <___i2b>:
    5484:	78 05       	[--SP] = (R7:7);
    5486:	00 e8 03 00 	LINK 0xc;		/* (12) */
    548a:	39 30       	R7 = R1;
    548c:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    548e:	ff e3 b7 fe 	CALL 0x51fc <__Balloc>;
    5492:	10 32       	P2 = R0;
    5494:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    5496:	57 b1       	[P2 + 0x14] = R7;
    5498:	11 b1       	[P2 + 0x10] = R1;
    549a:	01 e8 00 00 	UNLINK;
    549e:	38 05       	(R7:7) = [SP++];
    54a0:	10 00       	RTS;
	...

000054a4 <___multiply>:
    54a4:	e3 05       	[--SP] = (R7:4, P5:3);
    54a6:	21 32       	P4 = R1;
    54a8:	2a 32       	P5 = R2;
    54aa:	00 e8 03 00 	LINK 0xc;		/* (12) */
    54ae:	26 a1       	R6 = [P4 + 0x10];
    54b0:	2d a1       	R5 = [P5 + 0x10];
    54b2:	ae 08       	CC = R6 < R5;
    54b4:	07 14       	IF !CC JUMP 0x54c2 <___multiply+0x1e> (BP);
    54b6:	0e 30       	R1 = R6;
    54b8:	35 30       	R6 = R5;
    54ba:	29 30       	R5 = R1;
    54bc:	4c 30       	R1 = P4;
    54be:	29 32       	P5 = R1;
    54c0:	22 32       	P4 = R2;
    54c2:	ee 51       	R7 = R6 + R5;
    54c4:	61 a0       	R1 = [P4 + 0x4];
    54c6:	a3 a0       	R3 = [P4 + 0x8];
    54c8:	11 30       	R2 = R1;
    54ca:	1f 09       	CC = R7 <= R3;
    54cc:	0a 64       	R2 += 0x1;		/* (  1) */
    54ce:	0a 06       	IF !CC R1 = R2;
    54d0:	ff e3 96 fe 	CALL 0x51fc <__Balloc>;
    54d4:	1f 32       	P3 = R7;
    54d6:	08 32       	P1 = R0;
    54d8:	08 30       	R1 = R0;
    54da:	a1 64       	R1 += 0x14;		/* ( 20) */
    54dc:	10 34       	I2 = R0;
    54de:	2b 6c       	P3 += 0x5;		/* (  5) */
    54e0:	59 5e       	P1 = P1 + (P3 << 0x2);
    54e2:	41 30       	R0 = P1;
    54e4:	81 09       	CC = R1 < R0 (IU);
    54e6:	59 34       	I3 = P1;
    54e8:	11 32       	P2 = R1;
    54ea:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    54ec:	05 10       	IF !CC JUMP 0x54f6 <___multiply+0x52>;
    54ee:	13 92       	[P2++] = R3;
    54f0:	8b 32       	P1 = I3;
    54f2:	51 0a       	CC = P1 <= P2 (IU);
    54f4:	fd 17       	IF !CC JUMP 0x54ee <___multiply+0x4a> (BP);
    54f6:	06 32       	P0 = R6;
    54f8:	15 32       	P2 = R5;
    54fa:	64 30       	R4 = P4;
    54fc:	a4 64       	R4 += 0x14;		/* ( 20) */
    54fe:	28 6c       	P0 += 0x5;		/* (  5) */
    5500:	04 5e       	P0 = P4 + (P0 << 0x2);
    5502:	2a 6c       	P2 += 0x5;		/* (  5) */
    5504:	65 32       	P4 = P5;
    5506:	95 5e       	P2 = P5 + (P2 << 0x2);
    5508:	a4 6c       	P4 += 0x14;		/* ( 20) */
    550a:	d4 09       	CC = P4 < P2 (IU);
    550c:	42 34       	I0 = P2;
    550e:	29 32       	P5 = R1;
    5510:	4a 10       	IF !CC JUMP 0x55a4 <___multiply+0x100>;
    5512:	00 00       	NOP;
    5514:	00 00       	NOP;
    5516:	00 00       	NOP;
    5518:	26 90       	R6 = [P4++];
    551a:	f5 42       	R5 = R6.L (Z);
    551c:	05 0c       	CC = R5 == 0x0;
    551e:	1e 1c       	IF CC JUMP 0x555a <___multiply+0xb6> (BP);
    5520:	0c 32       	P1 = R4;
    5522:	55 32       	P2 = P5;
    5524:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    5526:	00 00       	NOP;
    5528:	09 90       	R1 = [P1++];
    552a:	ca 42       	R2 = R1.L (Z);
    552c:	ea 40       	R2 *= R5;
    552e:	13 91       	R3 = [P2];
    5530:	81 4e       	R1 >>= 0x10;
    5532:	d8 42       	R0 = R3.L (Z);
    5534:	e9 40       	R1 *= R5;
    5536:	82 50       	R2 = R2 + R0;
    5538:	b2 50       	R2 = R2 + R6;
    553a:	83 4e       	R3 >>= 0x10;
    553c:	82 c6 82 8d 	R6 = R2 >> 0x10;
    5540:	59 50       	R1 = R1 + R3;
    5542:	71 50       	R1 = R1 + R6;
    5544:	82 c6 81 8d 	R6 = R1 >> 0x10;
    5548:	d2 42       	R2 = R2.L (Z);
    554a:	81 4f       	R1 <<= 0x10;
    554c:	51 56       	R1 = R1 | R2;
    554e:	48 0a       	CC = P0 <= P1 (IU);
    5550:	11 92       	[P2++] = R1;
    5552:	ea 17       	IF !CC JUMP 0x5526 <___multiply+0x82> (BP);
    5554:	16 93       	[P2] = R6;
    5556:	26 e4 ff ff 	R6 = [P4 + -0x4];
    555a:	86 4e       	R6 >>= 0x10;
    555c:	06 0c       	CC = R6 == 0x0;
    555e:	1f 1c       	IF CC JUMP 0x559c <___multiply+0xf8> (BP);
    5560:	29 91       	R1 = [P5];
    5562:	4d 32       	P1 = P5;
    5564:	14 32       	P2 = R4;
    5566:	19 30       	R3 = R1;
    5568:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    556a:	4a 34       	I1 = P2;
    556c:	12 90       	R2 = [P2++];
    556e:	d2 42       	R2 = R2.L (Z);
    5570:	f2 40       	R2 *= R6;
    5572:	83 4e       	R3 >>= 0x10;
    5574:	9a 50       	R2 = R2 + R3;
    5576:	aa 50       	R2 = R2 + R5;
    5578:	82 c6 82 86 	R3 = R2 << 0x10;
    557c:	c9 42       	R1 = R1.L (Z);
    557e:	4b 56       	R1 = R3 | R1;
    5580:	09 92       	[P1++] = R1;
    5582:	99 32       	P3 = I1;
    5584:	59 a4       	R1 = W[P3 + 0x2] (Z);
    5586:	f1 40       	R1 *= R6;
    5588:	0b 91       	R3 = [P1];
    558a:	dd 42       	R5 = R3.L (Z);
    558c:	4d 50       	R1 = R5 + R1;
    558e:	82 4e       	R2 >>= 0x10;
    5590:	51 50       	R1 = R1 + R2;
    5592:	50 0a       	CC = P0 <= P2 (IU);
    5594:	82 c6 81 8b 	R5 = R1 >> 0x10;
    5598:	e9 17       	IF !CC JUMP 0x556a <___multiply+0xc6> (BP);
    559a:	09 93       	[P1] = R1;
    559c:	88 32       	P1 = I0;
    559e:	61 0a       	CC = P1 <= P4 (IU);
    55a0:	25 6c       	P5 += 0x4;		/* (  4) */
    55a2:	ba 17       	IF !CC JUMP 0x5516 <___multiply+0x72> (BP);
    55a4:	07 0d       	CC = R7 <= 0x0;
    55a6:	0f 18       	IF CC JUMP 0x55c4 <___multiply+0x120>;
    55a8:	00 00       	NOP;
    55aa:	00 00       	NOP;
    55ac:	8b 32       	P1 = I3;
    55ae:	08 e4 ff ff 	R0 = [P1 + -0x4];
    55b2:	00 0c       	CC = R0 == 0x0;
    55b4:	08 10       	IF !CC JUMP 0x55c4 <___multiply+0x120>;
    55b6:	9b 32       	P3 = I3;
    55b8:	c3 6f       	P3 += -0x8;		/* ( -8) */
    55ba:	17 32       	P2 = R7;
    55bc:	ff 67       	R7 += -0x1;		/* ( -1) */
    55be:	fa 6f       	P2 += -0x1;		/* ( -1) */
    55c0:	42 0c       	CC = P2 == 0x0;
    55c2:	08 10       	IF !CC JUMP 0x55d2 <___multiply+0x12e>;
    55c4:	92 32       	P2 = I2;
    55c6:	17 b1       	[P2 + 0x10] = R7;
    55c8:	01 e8 00 00 	UNLINK;
    55cc:	82 30       	R0 = I2;
    55ce:	a3 05       	(R7:4, P5:3) = [SP++];
    55d0:	10 00       	RTS;
    55d2:	99 90       	R1 = [P3--];
    55d4:	01 0c       	CC = R1 == 0x0;
    55d6:	f3 1f       	IF CC JUMP 0x55bc <___multiply+0x118> (BP);
    55d8:	92 32       	P2 = I2;
    55da:	17 b1       	[P2 + 0x10] = R7;
    55dc:	01 e8 00 00 	UNLINK;
    55e0:	82 30       	R0 = I2;
    55e2:	a3 05       	(R7:4, P5:3) = [SP++];
    55e4:	10 00       	RTS;
	...

000055e8 <___pow5mult>:
    55e8:	f3 05       	[--SP] = (R7:6, P5:3);
    55ea:	18 32       	P3 = R0;
    55ec:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    55ee:	02 54       	R0 = R2 & R0;
    55f0:	00 0c       	CC = R0 == 0x0;
    55f2:	00 e8 04 00 	LINK 0x10;		/* (16) */
    55f6:	21 32       	P4 = R1;
    55f8:	3a 30       	R7 = R2;
    55fa:	3d 10       	IF !CC JUMP 0x5674 <___pow5mult+0x8c>;
    55fc:	17 4d       	R7 >>>= 0x2;
    55fe:	07 0c       	CC = R7 == 0x0;
    5600:	29 18       	IF CC JUMP 0x5652 <___pow5mult+0x6a>;
    5602:	00 00       	NOP;
    5604:	00 00       	NOP;
    5606:	00 00       	NOP;
    5608:	1d e5 12 00 	P5 = [P3 + 0x48];
    560c:	45 0c       	CC = P5 == 0x0;
    560e:	42 18       	IF CC JUMP 0x5692 <___pow5mult+0xaa>;
    5610:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    5612:	0b 20       	JUMP.S 0x5628 <___pow5mult+0x40>;
    5614:	0f 4d       	R7 >>>= 0x1;
    5616:	07 0c       	CC = R7 == 0x0;
    5618:	1d 18       	IF CC JUMP 0x5652 <___pow5mult+0x6a>;
    561a:	00 00       	NOP;
    561c:	00 00       	NOP;
    561e:	00 00       	NOP;
    5620:	2b 91       	R3 = [P5];
    5622:	03 0c       	CC = R3 == 0x0;
    5624:	1c 18       	IF CC JUMP 0x565c <___pow5mult+0x74>;
    5626:	2b 32       	P5 = R3;
    5628:	07 48       	CC = !BITTST (R7, 0x0);		/* bit  0 */
    562a:	f5 1f       	IF CC JUMP 0x5614 <___pow5mult+0x2c> (BP);
    562c:	43 30       	R0 = P3;
    562e:	4c 30       	R1 = P4;
    5630:	55 30       	R2 = P5;
    5632:	ff e3 39 ff 	CALL 0x54a4 <___multiply>;
    5636:	44 0c       	CC = P4 == 0x0;
    5638:	1c 18       	IF CC JUMP 0x5670 <___pow5mult+0x88>;
    563a:	00 00       	NOP;
    563c:	0f 4d       	R7 >>>= 0x1;
    563e:	07 0c       	CC = R7 == 0x0;
    5640:	61 ac       	P1 = [P4 + 0x4];
    5642:	1a e5 13 00 	P2 = [P3 + 0x4c];
    5646:	8a 5e       	P2 = P2 + (P1 << 0x2);
    5648:	11 91       	R1 = [P2];
    564a:	21 93       	[P4] = R1;
    564c:	54 93       	[P2] = P4;
    564e:	20 32       	P4 = R0;
    5650:	e7 17       	IF !CC JUMP 0x561e <___pow5mult+0x36> (BP);
    5652:	01 e8 00 00 	UNLINK;
    5656:	44 30       	R0 = P4;
    5658:	b3 05       	(R7:6, P5:3) = [SP++];
    565a:	10 00       	RTS;
    565c:	4d 30       	R1 = P5;
    565e:	55 30       	R2 = P5;
    5660:	43 30       	R0 = P3;
    5662:	ff e3 21 ff 	CALL 0x54a4 <___multiply>;
    5666:	10 32       	P2 = R0;
    5668:	28 93       	[P5] = R0;
    566a:	28 32       	P5 = R0;
    566c:	16 93       	[P2] = R6;
    566e:	dd 2f       	JUMP.S 0x5628 <___pow5mult+0x40>;
    5670:	20 32       	P4 = R0;
    5672:	d1 2f       	JUMP.S 0x5614 <___pow5mult+0x2c>;
    5674:	08 32       	P1 = R0;
    5676:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x0 */
    567a:	0a e1 a0 8a 	P2.L = 0x8aa0;		/* (-30048)	P2=0x8aa0 <_p05.2563> */
    567e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5680:	f0 b0       	[SP + 0xc] = R0;
    5682:	8a 5e       	P2 = P2 + (P1 << 0x2);
    5684:	43 30       	R0 = P3;
    5686:	12 e4 ff ff 	R2 = [P2 + -0x4];
    568a:	ff e3 01 fe 	CALL 0x528c <___multadd>;
    568e:	20 32       	P4 = R0;
    5690:	b6 2f       	JUMP.S 0x55fc <___pow5mult+0x14>;
    5692:	43 30       	R0 = P3;
    5694:	21 e1 71 02 	R1 = 0x271 (X);		/*		R1=0x271(625) */
    5698:	ff e3 f6 fe 	CALL 0x5484 <___i2b>;
    569c:	28 32       	P5 = R0;
    569e:	18 e6 12 00 	[P3 + 0x48] = R0;
    56a2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    56a4:	28 93       	[P5] = R0;
    56a6:	b5 2f       	JUMP.S 0x5610 <___pow5mult+0x28>;

000056a8 <___lshift>:
    56a8:	e4 05       	[--SP] = (R7:4, P5:4);
    56aa:	29 32       	P5 = R1;
    56ac:	20 32       	P4 = R0;
    56ae:	82 c6 da 09 	R4 = R2 >>> 0x5;
    56b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
    56b6:	2a 30       	R5 = R2;
    56b8:	28 a1       	R0 = [P5 + 0x10];
    56ba:	84 51       	R6 = R4 + R0;
    56bc:	82 ce 06 ce 	R7 = ROT R6 BY 0x0 || R3 = [P5 + 0x8] || NOP;
    56c0:	ab a0 00 00 
    56c4:	0f 64       	R7 += 0x1;		/* (  1) */
    56c6:	1f 09       	CC = R7 <= R3;
    56c8:	69 a0       	R1 = [P5 + 0x4];
    56ca:	05 18       	IF CC JUMP 0x56d4 <___lshift+0x2c>;
    56cc:	0b 4f       	R3 <<= 0x1;
    56ce:	1f 09       	CC = R7 <= R3;
    56d0:	09 64       	R1 += 0x1;		/* (  1) */
    56d2:	fd 17       	IF !CC JUMP 0x56cc <___lshift+0x24> (BP);
    56d4:	44 30       	R0 = P4;
    56d6:	ff e3 93 fd 	CALL 0x51fc <__Balloc>;
    56da:	08 32       	P1 = R0;
    56dc:	04 0d       	CC = R4 <= 0x0;
    56de:	a1 6c       	P1 += 0x14;		/* ( 20) */
    56e0:	0a 18       	IF CC JUMP 0x56f4 <___lshift+0x4c>;
    56e2:	14 32       	P2 = R4;
    56e4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    56e6:	b2 e0 02 20 	LSETUP(0x56ea <___lshift+0x42>, 0x56ea <___lshift+0x42>) LC1 = P2;
    56ea:	09 92       	[P1++] = R1;
    56ec:	0c 32       	P1 = R4;
    56ee:	10 32       	P2 = R0;
    56f0:	29 6c       	P1 += 0x5;		/* (  5) */
    56f2:	4a 5e       	P1 = P2 + (P1 << 0x2);
    56f4:	28 ad       	P0 = [P5 + 0x10];
    56f6:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
    56f8:	4d 54       	R1 = R5 & R1;
    56fa:	55 32       	P2 = P5;
    56fc:	28 6c       	P0 += 0x5;		/* (  5) */
    56fe:	01 0c       	CC = R1 == 0x0;
    5700:	a2 6c       	P2 += 0x14;		/* ( 20) */
    5702:	05 5e       	P0 = P5 + (P0 << 0x2);
    5704:	1f 1c       	IF CC JUMP 0x5742 <___lshift+0x9a> (BP);
    5706:	05 61       	R5 = 0x20 (X);		/*		R5=0x20( 32) */
    5708:	4d 53       	R5 = R5 - R1;
    570a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    570c:	00 00       	NOP;
    570e:	12 91       	R2 = [P2];
    5710:	8a 40       	R2 <<= R1;
    5712:	d3 56       	R3 = R3 | R2;
    5714:	0b 92       	[P1++] = R3;
    5716:	13 90       	R3 = [P2++];
    5718:	50 0a       	CC = P0 <= P2 (IU);
    571a:	6b 40       	R3 >>= R5;
    571c:	f8 17       	IF !CC JUMP 0x570c <___lshift+0x64> (BP);
    571e:	16 64       	R6 += 0x2;		/* (  2) */
    5720:	03 0c       	CC = R3 == 0x0;
    5722:	0b 93       	[P1] = R3;
    5724:	3e 06       	IF !CC R7 = R6;
    5726:	10 32       	P2 = R0;
    5728:	ff 67       	R7 += -0x1;		/* ( -1) */
    572a:	21 e5 13 00 	P1 = [P4 + 0x4c];
    572e:	17 b1       	[P2 + 0x10] = R7;
    5730:	6a ac       	P2 = [P5 + 0x4];
    5732:	91 5e       	P2 = P1 + (P2 << 0x2);
    5734:	11 91       	R1 = [P2];
    5736:	29 93       	[P5] = R1;
    5738:	55 93       	[P2] = P5;
    573a:	01 e8 00 00 	UNLINK;
    573e:	a4 05       	(R7:4, P5:4) = [SP++];
    5740:	10 00       	RTS;
    5742:	00 00       	NOP;
    5744:	11 90       	R1 = [P2++];
    5746:	50 0a       	CC = P0 <= P2 (IU);
    5748:	09 92       	[P1++] = R1;
    574a:	ee 1b       	IF CC JUMP 0x5726 <___lshift+0x7e>;
    574c:	00 00       	NOP;
    574e:	00 00       	NOP;
    5750:	00 00       	NOP;
    5752:	11 90       	R1 = [P2++];
    5754:	50 0a       	CC = P0 <= P2 (IU);
    5756:	09 92       	[P1++] = R1;
    5758:	f5 17       	IF !CC JUMP 0x5742 <___lshift+0x9a> (BP);
    575a:	e6 2f       	JUMP.S 0x5726 <___lshift+0x7e>;

0000575c <___mcmp>:
    575c:	01 32       	P0 = R1;
    575e:	10 32       	P2 = R0;
    5760:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5764:	01 ad       	P1 = [P0 + 0x10];
    5766:	11 a1       	R1 = [P2 + 0x10];
    5768:	51 30       	R2 = P1;
    576a:	11 52       	R0 = R1 - R2;
    576c:	00 0c       	CC = R0 == 0x0;
    576e:	10 10       	IF !CC JUMP 0x578e <___mcmp+0x32>;
    5770:	29 6c       	P1 += 0x5;		/* (  5) */
    5772:	49 44       	P1 = P1 << 0x2;
    5774:	5a 30       	R3 = P2;
    5776:	8a 5a       	P2 = P2 + P1;
    5778:	48 5a       	P1 = P0 + P1;
    577a:	a3 64       	R3 += 0x14;		/* ( 20) */
    577c:	e1 6f       	P1 += -0x4;		/* ( -4) */
    577e:	e2 6f       	P2 += -0x4;		/* ( -4) */
    5780:	11 91       	R1 = [P2];
    5782:	8a 90       	R2 = [P1--];
    5784:	11 08       	CC = R1 == R2;
    5786:	07 10       	IF !CC JUMP 0x5794 <___mcmp+0x38>;
    5788:	4a 30       	R1 = P2;
    578a:	8b 09       	CC = R3 < R1 (IU);
    578c:	f9 1f       	IF CC JUMP 0x577e <___mcmp+0x22> (BP);
    578e:	01 e8 00 00 	UNLINK;
    5792:	10 00       	RTS;
    5794:	0a 0a       	CC = R2 <= R1 (IU);
    5796:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    5798:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    579a:	01 e8 00 00 	UNLINK;
    579e:	01 07       	IF CC R0 = R1;
    57a0:	10 00       	RTS;
	...

000057a4 <___mdiff>:
    57a4:	eb 05       	[--SP] = (R7:5, P5:3);
    57a6:	00 e8 03 00 	LINK 0xc;		/* (12) */
    57aa:	30 30       	R6 = R0;
    57ac:	29 32       	P5 = R1;
    57ae:	01 30       	R0 = R1;
    57b0:	0a 30       	R1 = R2;
    57b2:	3a 30       	R7 = R2;
    57b4:	ff e3 d4 ff 	CALL 0x575c <___mcmp>;
    57b8:	00 0c       	CC = R0 == 0x0;
    57ba:	61 18       	IF CC JUMP 0x587c <___mdiff+0xd8>;
    57bc:	80 0c       	CC = R0 < 0x0;
    57be:	5a 18       	IF CC JUMP 0x5872 <___mdiff+0xce>;
    57c0:	00 00       	NOP;
    57c2:	00 00       	NOP;
    57c4:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    57c6:	69 a0       	R1 = [P5 + 0x4];
    57c8:	06 30       	R0 = R6;
    57ca:	ff e3 19 fd 	CALL 0x51fc <__Balloc>;
    57ce:	2e a1       	R6 = [P5 + 0x10];
    57d0:	26 32       	P4 = R6;
    57d2:	0f 32       	P1 = R7;
    57d4:	10 32       	P2 = R0;
    57d6:	45 32       	P0 = P5;
    57d8:	a0 6c       	P0 += 0x14;		/* ( 20) */
    57da:	2c 6c       	P4 += 0x5;		/* (  5) */
    57dc:	25 5f       	P4 = P5 + (P4 << 0x2);
    57de:	0b ad       	P3 = [P1 + 0x10];
    57e0:	2f 32       	P5 = R7;
    57e2:	d5 b0       	[P2 + 0xc] = R5;
    57e4:	28 30       	R5 = R0;
    57e6:	2b 6c       	P3 += 0x5;		/* (  5) */
    57e8:	d9 5e       	P3 = P1 + (P3 << 0x2);
    57ea:	a5 6c       	P5 += 0x14;		/* ( 20) */
    57ec:	a5 64       	R5 += 0x14;		/* ( 20) */
    57ee:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    57f0:	15 32       	P2 = R5;
    57f2:	03 90       	R3 = [P0++];
    57f4:	2f 90       	R7 = [P5++];
    57f6:	da 42       	R2 = R3.L (Z);
    57f8:	4a 50       	R1 = R2 + R1;
    57fa:	fa 42       	R2 = R7.L (Z);
    57fc:	91 52       	R2 = R1 - R2;
    57fe:	83 4e       	R3 >>= 0x10;
    5800:	87 4e       	R7 >>= 0x10;
    5802:	82 c6 82 03 	R1 = R2 >>> 0x10;
    5806:	fb 52       	R3 = R3 - R7;
    5808:	cb 50       	R3 = R3 + R1;
    580a:	82 c6 83 03 	R1 = R3 >>> 0x10;
    580e:	d2 42       	R2 = R2.L (Z);
    5810:	83 4f       	R3 <<= 0x10;
    5812:	d3 56       	R3 = R3 | R2;
    5814:	13 92       	[P2++] = R3;
    5816:	6b 0a       	CC = P3 <= P5 (IU);
    5818:	48 32       	P1 = P0;
    581a:	6a 30       	R5 = P2;
    581c:	ea 17       	IF !CC JUMP 0x57f0 <___mdiff+0x4c> (BP);
    581e:	44 0a       	CC = P4 <= P0 (IU);
    5820:	6a 32       	P5 = P2;
    5822:	1a 18       	IF CC JUMP 0x5856 <___mdiff+0xb2>;
    5824:	00 00       	NOP;
    5826:	00 00       	NOP;
    5828:	00 00       	NOP;
    582a:	0f 90       	R7 = [P1++];
    582c:	fa 42       	R2 = R7.L (Z);
    582e:	8a 50       	R2 = R2 + R1;
    5830:	82 c6 82 07 	R3 = R2 >>> 0x10;
    5834:	87 4e       	R7 >>= 0x10;
    5836:	fb 50       	R3 = R3 + R7;
    5838:	82 c6 83 03 	R1 = R3 >>> 0x10;
    583c:	d2 42       	R2 = R2.L (Z);
    583e:	83 4f       	R3 <<= 0x10;
    5840:	d3 56       	R3 = R3 | R2;
    5842:	4c 0a       	CC = P4 <= P1 (IU);
    5844:	13 92       	[P2++] = R3;
    5846:	f1 17       	IF !CC JUMP 0x5828 <___mdiff+0x84> (BP);
    5848:	50 30       	R2 = P0;
    584a:	d1 43       	R1 =~ R2;
    584c:	09 32       	P1 = R1;
    584e:	a1 5a       	P2 = P1 + P4;
    5850:	d2 44       	P2 = P2 >> 0x2;
    5852:	0a 6c       	P2 += 0x1;		/* (  1) */
    5854:	95 5e       	P2 = P5 + (P2 << 0x2);
    5856:	03 0c       	CC = R3 == 0x0;
    5858:	07 10       	IF !CC JUMP 0x5866 <___mdiff+0xc2>;
    585a:	00 00       	NOP;
    585c:	c2 6f       	P2 += -0x8;		/* ( -8) */
    585e:	fe 67       	R6 += -0x1;		/* ( -1) */
    5860:	91 90       	R1 = [P2--];
    5862:	01 0c       	CC = R1 == 0x0;
    5864:	fd 1f       	IF CC JUMP 0x585e <___mdiff+0xba> (BP);
    5866:	10 32       	P2 = R0;
    5868:	16 b1       	[P2 + 0x10] = R6;
    586a:	01 e8 00 00 	UNLINK;
    586e:	ab 05       	(R7:5, P5:3) = [SP++];
    5870:	10 00       	RTS;
    5872:	45 30       	R0 = P5;
    5874:	0d 60       	R5 = 0x1 (X);		/*		R5=0x1(  1) */
    5876:	2f 32       	P5 = R7;
    5878:	38 30       	R7 = R0;
    587a:	a6 2f       	JUMP.S 0x57c6 <___mdiff+0x22>;
    587c:	06 30       	R0 = R6;
    587e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    5880:	ff e3 be fc 	CALL 0x51fc <__Balloc>;
    5884:	08 32       	P1 = R0;
    5886:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    5888:	09 b1       	[P1 + 0x10] = R1;
    588a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    588c:	49 b1       	[P1 + 0x14] = R1;
    588e:	01 e8 00 00 	UNLINK;
    5892:	ab 05       	(R7:5, P5:3) = [SP++];
    5894:	10 00       	RTS;
	...

00005898 <___ulp>:
    5898:	22 e1 ff 07 	R2 = 0x7ff (X);		/*		R2=0x7ff(2047) */
    589c:	a2 4f       	R2 <<= 0x14;
    589e:	98 63       	R0 = -0xd (X);		/*		R0=0xfffffff3(-13) */
    58a0:	91 54       	R2 = R1 & R2;
    58a2:	b0 4f       	R0 <<= 0x16;
    58a4:	82 50       	R2 = R2 + R0;
    58a6:	02 0d       	CC = R2 <= 0x0;
    58a8:	00 e8 00 00 	LINK 0x0;		/* (0) */
    58ac:	06 18       	IF CC JUMP 0x58b8 <___ulp+0x20>;
    58ae:	01 e8 00 00 	UNLINK;
    58b2:	0a 30       	R1 = R2;
    58b4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    58b6:	10 00       	RTS;
    58b8:	92 43       	R2 = -R2;
    58ba:	a2 4d       	R2 >>>= 0x14;
    58bc:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
    58be:	02 09       	CC = R2 <= R0;
    58c0:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    58c2:	0f 18       	IF CC JUMP 0x58e0 <___ulp+0x48>;
    58c4:	93 61       	R3 = 0x32 (X);		/*		R3=0x32( 50) */
    58c6:	1a 09       	CC = R2 <= R3;
    58c8:	09 14       	IF !CC JUMP 0x58da <___ulp+0x42> (BP);
    58ca:	9b 61       	R3 = 0x33 (X);		/*		R3=0x33( 51) */
    58cc:	93 52       	R2 = R3 - R2;
    58ce:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    58d0:	93 40       	R3 <<= R2;
    58d2:	03 30       	R0 = R3;
    58d4:	01 e8 00 00 	UNLINK;
    58d8:	10 00       	RTS;
    58da:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    58dc:	03 30       	R0 = R3;
    58de:	fb 2f       	JUMP.S 0x58d4 <___ulp+0x3c>;
    58e0:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    58e2:	9b 4f       	R3 <<= 0x13;
    58e4:	0b 30       	R1 = R3;
    58e6:	01 e8 00 00 	UNLINK;
    58ea:	11 40       	R1 >>>= R2;
    58ec:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    58ee:	10 00       	RTS;

000058f0 <___b2d>:
    58f0:	10 32       	P2 = R0;
    58f2:	e3 05       	[--SP] = (R7:4, P5:3);
    58f4:	00 e8 03 00 	LINK 0xc;		/* (12) */
    58f8:	19 32       	P3 = R1;
    58fa:	38 30       	R7 = R0;
    58fc:	11 ad       	P1 = [P2 + 0x10];
    58fe:	a7 64       	R7 += 0x14;		/* ( 20) */
    5900:	29 6c       	P1 += 0x5;		/* (  5) */
    5902:	4a 5f       	P5 = P2 + (P1 << 0x2);
    5904:	2e e4 ff ff 	R6 = [P5 + -0x4];
    5908:	06 30       	R0 = R6;
    590a:	ff e3 4f fd 	CALL 0x53a8 <___hi0bits>;
    590e:	10 30       	R2 = R0;
    5910:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
    5912:	10 52       	R0 = R0 - R2;
    5914:	18 93       	[P3] = R0;
    5916:	50 60       	R0 = 0xa (X);		/*		R0=0xa( 10) */
    5918:	65 32       	P4 = P5;
    591a:	02 09       	CC = R2 <= R0;
    591c:	e4 6f       	P4 += -0x4;		/* ( -4) */
    591e:	19 14       	IF !CC JUMP 0x5950 <___b2d+0x60> (BP);
    5920:	5d 60       	R5 = 0xb (X);		/*		R5=0xb( 11) */
    5922:	55 53       	R5 = R5 - R2;
    5924:	26 30       	R4 = R6;
    5926:	23 e1 ff 03 	R3 = 0x3ff (X);		/*		R3=0x3ff(1023) */
    592a:	a3 4f       	R3 <<= 0x14;
    592c:	6c 40       	R4 >>= R5;
    592e:	5c 56       	R1 = R4 | R3;
    5930:	5c 30       	R3 = P4;
    5932:	9f 09       	CC = R7 < R3 (IU);
    5934:	40 10       	IF !CC JUMP 0x59b4 <___b2d+0xc4>;
    5936:	00 00       	NOP;
    5938:	00 00       	NOP;
    593a:	00 00       	NOP;
    593c:	2b e4 fe ff 	R3 = [P5 + -0x8];
    5940:	6b 40       	R3 >>= R5;
    5942:	aa 64       	R2 += 0x15;		/* ( 21) */
    5944:	96 40       	R6 <<= R2;
    5946:	01 e8 00 00 	UNLINK;
    594a:	33 56       	R0 = R3 | R6;
    594c:	a3 05       	(R7:4, P5:3) = [SP++];
    594e:	10 00       	RTS;
    5950:	44 30       	R0 = P4;
    5952:	87 09       	CC = R7 < R0 (IU);
    5954:	1f 1c       	IF CC JUMP 0x5992 <___b2d+0xa2> (BP);
    5956:	1a 30       	R3 = R2;
    5958:	ab 67       	R3 += -0xb;		/* (-11) */
    595a:	03 0c       	CC = R3 == 0x0;
    595c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    595e:	22 1c       	IF CC JUMP 0x59a2 <___b2d+0xb2> (BP);
    5960:	58 61       	R0 = 0x2b (X);		/*		R0=0x2b( 43) */
    5962:	90 52       	R2 = R0 - R2;
    5964:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
    5968:	9e 40       	R6 <<= R3;
    596a:	a0 4f       	R0 <<= 0x14;
    596c:	25 30       	R4 = R5;
    596e:	86 57       	R6 = R6 | R0;
    5970:	54 40       	R4 >>= R2;
    5972:	66 56       	R1 = R6 | R4;
    5974:	74 30       	R6 = P4;
    5976:	3e 0a       	CC = R6 <= R7 (IU);
    5978:	20 18       	IF CC JUMP 0x59b8 <___b2d+0xc8>;
    597a:	00 00       	NOP;
    597c:	00 00       	NOP;
    597e:	00 00       	NOP;
    5980:	27 e4 ff ff 	R7 = [P4 + -0x4];
    5984:	57 40       	R7 >>= R2;
    5986:	9d 40       	R5 <<= R3;
    5988:	01 e8 00 00 	UNLINK;
    598c:	2f 56       	R0 = R7 | R5;
    598e:	a3 05       	(R7:4, P5:3) = [SP++];
    5990:	10 00       	RTS;
    5992:	1a 30       	R3 = R2;
    5994:	ab 67       	R3 += -0xb;		/* (-11) */
    5996:	65 32       	P4 = P5;
    5998:	03 0c       	CC = R3 == 0x0;
    599a:	c4 6f       	P4 += -0x8;		/* ( -8) */
    599c:	2d e4 fe ff 	R5 = [P5 + -0x8];
    59a0:	e0 17       	IF !CC JUMP 0x5960 <___b2d+0x70> (BP);
    59a2:	22 e1 ff 03 	R2 = 0x3ff (X);		/*		R2=0x3ff(1023) */
    59a6:	a2 4f       	R2 <<= 0x14;
    59a8:	01 e8 00 00 	UNLINK;
    59ac:	56 56       	R1 = R6 | R2;
    59ae:	05 30       	R0 = R5;
    59b0:	a3 05       	(R7:4, P5:3) = [SP++];
    59b2:	10 00       	RTS;
    59b4:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    59b6:	c6 2f       	JUMP.S 0x5942 <___b2d+0x52>;
    59b8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    59ba:	e6 2f       	JUMP.S 0x5986 <___b2d+0x96>;

000059bc <___d2b>:
    59bc:	ed 05       	[--SP] = (R7:5, P5:5);
    59be:	3a 30       	R7 = R2;
    59c0:	00 e8 05 00 	LINK 0x14;		/* (20) */
    59c4:	31 30       	R6 = R1;
    59c6:	2f 30       	R5 = R7;
    59c8:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    59ca:	ff e3 19 fc 	CALL 0x51fc <__Balloc>;
    59ce:	fd 4c       	BITCLR (R5, 0x1f);		/* bit 31 */
    59d0:	28 32       	P5 = R0;
    59d2:	a5 4e       	R5 >>= 0x14;
    59d4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    59d6:	40 e1 0f 00 	R0.H = 0xf;		/* ( 15)	R0=0xfffff(1048575) */
    59da:	05 0c       	CC = R5 == 0x0;
    59dc:	07 54       	R0 = R7 & R0;
    59de:	02 1c       	IF CC JUMP 0x59e2 <___d2b+0x26> (BP);
    59e0:	a0 4a       	BITSET (R0, 0x14);		/* bit 20 */
    59e2:	06 0c       	CC = R6 == 0x0;
    59e4:	f0 bb       	[FP -0x4] = R0;
    59e6:	22 1c       	IF CC JUMP 0x5a2a <___d2b+0x6e> (BP);
    59e8:	47 30       	R0 = FP;
    59ea:	c0 67       	R0 += -0x8;		/* ( -8) */
    59ec:	e6 bb       	[FP -0x8] = R6;
    59ee:	ff e3 09 fd 	CALL 0x5400 <___lo0bits>;
    59f2:	00 0c       	CC = R0 == 0x0;
    59f4:	3a 14       	IF !CC JUMP 0x5a68 <___d2b+0xac> (BP);
    59f6:	e1 b9       	R1 = [FP -0x8];
    59f8:	69 b1       	[P5 + 0x14] = R1;
    59fa:	f1 b9       	R1 = [FP -0x4];
    59fc:	01 0c       	CC = R1 == 0x0;
    59fe:	a9 b1       	[P5 + 0x18] = R1;
    5a00:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
    5a02:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    5a04:	39 06       	IF !CC R7 = R1;
    5a06:	05 0c       	CC = R5 == 0x0;
    5a08:	2f b1       	[P5 + 0x10] = R7;
    5a0a:	1c 1c       	IF CC JUMP 0x5a42 <___d2b+0x86> (BP);
    5a0c:	79 ae       	P1 = [FP + 0x24];
    5a0e:	ba ae       	P2 = [FP + 0x28];
    5a10:	21 e1 cd fb 	R1 = -0x433 (X);		/*		R1=0xfffffbcd(-1075) */
    5a14:	4d 51       	R5 = R5 + R1;
    5a16:	a9 61       	R1 = 0x35 (X);		/*		R1=0x35( 53) */
    5a18:	45 51       	R5 = R5 + R0;
    5a1a:	01 52       	R0 = R1 - R0;
    5a1c:	0d 93       	[P1] = R5;
    5a1e:	10 93       	[P2] = R0;
    5a20:	01 e8 00 00 	UNLINK;
    5a24:	45 30       	R0 = P5;
    5a26:	ad 05       	(R7:5, P5:5) = [SP++];
    5a28:	10 00       	RTS;
    5a2a:	47 30       	R0 = FP;
    5a2c:	e0 67       	R0 += -0x4;		/* ( -4) */
    5a2e:	ff e3 e9 fc 	CALL 0x5400 <___lo0bits>;
    5a32:	f1 b9       	R1 = [FP -0x4];
    5a34:	69 b1       	[P5 + 0x14] = R1;
    5a36:	05 0c       	CC = R5 == 0x0;
    5a38:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    5a3a:	29 b1       	[P5 + 0x10] = R1;
    5a3c:	00 65       	R0 += 0x20;		/* ( 32) */
    5a3e:	0f 60       	R7 = 0x1 (X);		/*		R7=0x1(  1) */
    5a40:	e6 13       	IF !CC JUMP 0x5a0c <___d2b+0x50>;
    5a42:	79 ae       	P1 = [FP + 0x24];
    5a44:	21 e1 ce fb 	R1 = -0x432 (X);		/*		R1=0xfffffbce(-1074) */
    5a48:	08 50       	R0 = R0 + R1;
    5a4a:	08 93       	[P1] = R0;
    5a4c:	0f 32       	P1 = R7;
    5a4e:	2f 4f       	R7 <<= 0x5;
    5a50:	8d 5e       	P2 = P5 + (P1 << 0x2);
    5a52:	10 a1       	R0 = [P2 + 0x10];
    5a54:	ff e3 aa fc 	CALL 0x53a8 <___hi0bits>;
    5a58:	ba ae       	P2 = [FP + 0x28];
    5a5a:	07 52       	R0 = R7 - R0;
    5a5c:	10 93       	[P2] = R0;
    5a5e:	01 e8 00 00 	UNLINK;
    5a62:	45 30       	R0 = P5;
    5a64:	ad 05       	(R7:5, P5:5) = [SP++];
    5a66:	10 00       	RTS;
    5a68:	f1 b9       	R1 = [FP -0x4];
    5a6a:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
    5a6c:	c3 52       	R3 = R3 - R0;
    5a6e:	11 30       	R2 = R1;
    5a70:	9a 40       	R2 <<= R3;
    5a72:	82 ce 02 c6 	R3 = ROT R2 BY 0x0 || R2 = [FP -0x8] || NOP;
    5a76:	e2 b9 00 00 
    5a7a:	93 56       	R2 = R3 | R2;
    5a7c:	41 40       	R1 >>= R0;
    5a7e:	6a b1       	[P5 + 0x14] = R2;
    5a80:	f1 bb       	[FP -0x4] = R1;
    5a82:	bd 2f       	JUMP.S 0x59fc <___d2b+0x40>;

00005a84 <___ratio>:
    5a84:	e4 05       	[--SP] = (R7:4, P5:4);
    5a86:	00 e8 06 00 	LINK 0x18;		/* (24) */
    5a8a:	29 32       	P5 = R1;
    5a8c:	4f 30       	R1 = FP;
    5a8e:	c1 67       	R1 += -0x8;		/* ( -8) */
    5a90:	20 32       	P4 = R0;
    5a92:	ff e3 2f ff 	CALL 0x58f0 <___b2d>;
    5a96:	39 30       	R7 = R1;
    5a98:	4f 30       	R1 = FP;
    5a9a:	30 30       	R6 = R0;
    5a9c:	e1 67       	R1 += -0x4;		/* ( -4) */
    5a9e:	45 30       	R0 = P5;
    5aa0:	ff e3 28 ff 	CALL 0x58f0 <___b2d>;
    5aa4:	82 ce 00 c4 	R2 = ROT R0 BY 0x0 || R3 = [FP -0x4] || NOP;
    5aa8:	f3 b9 00 00 
    5aac:	e0 b9       	R0 = [FP -0x8];
    5aae:	18 52       	R0 = R0 - R3;
    5ab0:	22 ad       	P2 = [P4 + 0x10];
    5ab2:	00 34       	I0 = R0;
    5ab4:	28 a1       	R0 = [P5 + 0x10];
    5ab6:	09 32       	P1 = R1;
    5ab8:	5a 30       	R3 = P2;
    5aba:	03 52       	R0 = R3 - R0;
    5abc:	28 4f       	R0 <<= 0x5;
    5abe:	98 30       	R3 = I0;
    5ac0:	03 50       	R0 = R3 + R0;
    5ac2:	00 0d       	CC = R0 <= 0x0;
    5ac4:	0d 18       	IF CC JUMP 0x5ade <___ratio+0x5a>;
    5ac6:	a0 4f       	R0 <<= 0x14;
    5ac8:	78 51       	R5 = R0 + R7;
    5aca:	3d 30       	R7 = R5;
    5acc:	f1 b0       	[SP + 0xc] = R1;
    5ace:	06 30       	R0 = R6;
    5ad0:	0f 30       	R1 = R7;
    5ad2:	00 e3 f3 11 	CALL 0x7eb8 <___divdf3>;
    5ad6:	01 e8 00 00 	UNLINK;
    5ada:	a4 05       	(R7:4, P5:4) = [SP++];
    5adc:	10 00       	RTS;
    5ade:	82 c6 a0 82 	R1 = R0 << 0x14;
    5ae2:	41 30       	R0 = P1;
    5ae4:	48 52       	R1 = R0 - R1;
    5ae6:	f3 2f       	JUMP.S 0x5acc <___ratio+0x48>;

00005ae8 <__mprec_log10>:
    5ae8:	70 05       	[--SP] = (R7:6);
    5aea:	38 30       	R7 = R0;
    5aec:	b8 60       	R0 = 0x17 (X);		/*		R0=0x17( 23) */
    5aee:	07 09       	CC = R7 <= R0;
    5af0:	00 e8 04 00 	LINK 0x10;		/* (16) */
    5af4:	13 18       	IF CC JUMP 0x5b1a <__mprec_log10+0x32>;
    5af6:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
    5afa:	26 e1 09 10 	R6 = 0x1009 (X);		/*		R6=0x1009(4105) */
    5afe:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5b00:	a1 4f       	R1 <<= 0x14;
    5b02:	96 4f       	R6 <<= 0x12;
    5b04:	f6 b0       	[SP + 0xc] = R6;
    5b06:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    5b08:	ff 67       	R7 += -0x1;		/* ( -1) */
    5b0a:	00 e3 c7 10 	CALL 0x7c98 <___muldf3>;
    5b0e:	07 0c       	CC = R7 == 0x0;
    5b10:	fa 17       	IF !CC JUMP 0x5b04 <__mprec_log10+0x1c> (BP);
    5b12:	01 e8 00 00 	UNLINK;
    5b16:	30 05       	(R7:6) = [SP++];
    5b18:	10 00       	RTS;
    5b1a:	1f 4f       	R7 <<= 0x3;
    5b1c:	0f 32       	P1 = R7;
    5b1e:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x8aa0 <_p05.2563> */
    5b22:	0a e1 d8 89 	P2.L = 0x89d8;		/* (-30248)	P2=0x89d8 <___mprec_tens> */
    5b26:	01 e8 00 00 	UNLINK;
    5b2a:	30 05       	(R7:6) = [SP++];
    5b2c:	8a 5a       	P2 = P2 + P1;
    5b2e:	10 91       	R0 = [P2];
    5b30:	51 a0       	R1 = [P2 + 0x4];
    5b32:	10 00       	RTS;

00005b34 <___copybits>:
    5b34:	c3 04       	[--SP] = (P5:3);
    5b36:	1a 32       	P3 = R2;
    5b38:	f9 67       	R1 += -0x1;		/* ( -1) */
    5b3a:	29 4d       	R1 >>>= 0x5;
    5b3c:	0a 32       	P1 = R2;
    5b3e:	21 32       	P4 = R1;
    5b40:	1d ad       	P5 = [P3 + 0x10];
    5b42:	10 32       	P2 = R0;
    5b44:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5b48:	a1 6c       	P1 += 0x14;		/* ( 20) */
    5b4a:	2d 6c       	P5 += 0x5;		/* (  5) */
    5b4c:	6b 5f       	P5 = P3 + (P5 << 0x2);
    5b4e:	0c 6c       	P4 += 0x1;		/* (  1) */
    5b50:	e9 09       	CC = P1 < P5 (IU);
    5b52:	22 5f       	P4 = P2 + (P4 << 0x2);
    5b54:	0e 10       	IF !CC JUMP 0x5b70 <___copybits+0x3c>;
    5b56:	00 00       	NOP;
    5b58:	00 00       	NOP;
    5b5a:	00 32       	P0 = R0;
    5b5c:	00 00       	NOP;
    5b5e:	08 90       	R0 = [P1++];
    5b60:	4d 0a       	CC = P5 <= P1 (IU);
    5b62:	00 92       	[P0++] = R0;
    5b64:	fc 17       	IF !CC JUMP 0x5b5c <___copybits+0x28> (BP);
    5b66:	1d 44       	P5 -= P3;
    5b68:	5d 6f       	P5 += -0x15;		/* (-21) */
    5b6a:	ed 44       	P5 = P5 >> 0x2;
    5b6c:	0d 6c       	P5 += 0x1;		/* (  1) */
    5b6e:	aa 5e       	P2 = P2 + (P5 << 0x2);
    5b70:	54 0a       	CC = P4 <= P2 (IU);
    5b72:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5b74:	04 18       	IF CC JUMP 0x5b7c <___copybits+0x48>;
    5b76:	10 92       	[P2++] = R0;
    5b78:	54 0a       	CC = P4 <= P2 (IU);
    5b7a:	fe 17       	IF !CC JUMP 0x5b76 <___copybits+0x42> (BP);
    5b7c:	01 e8 00 00 	UNLINK;
    5b80:	83 04       	(P5:3) = [SP++];
    5b82:	10 00       	RTS;

00005b84 <___any_on>:
    5b84:	10 32       	P2 = R0;
    5b86:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5b8a:	10 30       	R2 = R0;
    5b8c:	82 c6 d9 01 	R0 = R1 >>> 0x5;
    5b90:	a2 64       	R2 += 0x14;		/* ( 20) */
    5b92:	11 ad       	P1 = [P2 + 0x10];
    5b94:	59 30       	R3 = P1;
    5b96:	83 08       	CC = R3 < R0;
    5b98:	08 1c       	IF CC JUMP 0x5ba8 <___any_on+0x24> (BP);
    5b9a:	03 09       	CC = R3 <= R0;
    5b9c:	1d 1c       	IF CC JUMP 0x5bd6 <___any_on+0x52> (BP);
    5b9e:	fb 60       	R3 = 0x1f (X);		/*		R3=0x1f( 31) */
    5ba0:	59 54       	R1 = R1 & R3;
    5ba2:	01 0c       	CC = R1 == 0x0;
    5ba4:	08 32       	P1 = R0;
    5ba6:	1e 14       	IF !CC JUMP 0x5be2 <___any_on+0x5e> (BP);
    5ba8:	29 6c       	P1 += 0x5;		/* (  5) */
    5baa:	4a 5e       	P1 = P2 + (P1 << 0x2);
    5bac:	41 30       	R0 = P1;
    5bae:	82 09       	CC = R2 < R0 (IU);
    5bb0:	15 10       	IF !CC JUMP 0x5bda <___any_on+0x56>;
    5bb2:	00 00       	NOP;
    5bb4:	51 32       	P2 = P1;
    5bb6:	e2 6f       	P2 += -0x4;		/* ( -4) */
    5bb8:	08 e4 ff ff 	R0 = [P1 + -0x4];
    5bbc:	00 0c       	CC = R0 == 0x0;
    5bbe:	08 10       	IF !CC JUMP 0x5bce <___any_on+0x4a>;
    5bc0:	42 30       	R0 = P2;
    5bc2:	82 09       	CC = R2 < R0 (IU);
    5bc4:	0b 10       	IF !CC JUMP 0x5bda <___any_on+0x56>;
    5bc6:	e2 6f       	P2 += -0x4;		/* ( -4) */
    5bc8:	13 91       	R3 = [P2];
    5bca:	03 0c       	CC = R3 == 0x0;
    5bcc:	fa 1f       	IF CC JUMP 0x5bc0 <___any_on+0x3c> (BP);
    5bce:	01 e8 00 00 	UNLINK;
    5bd2:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    5bd4:	10 00       	RTS;
    5bd6:	08 32       	P1 = R0;
    5bd8:	e8 2f       	JUMP.S 0x5ba8 <___any_on+0x24>;
    5bda:	01 e8 00 00 	UNLINK;
    5bde:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5be0:	10 00       	RTS;
    5be2:	0a 5e       	P0 = P2 + (P1 << 0x2);
    5be4:	43 a1       	R3 = [P0 + 0x14];
    5be6:	03 30       	R0 = R3;
    5be8:	48 40       	R0 >>= R1;
    5bea:	88 40       	R0 <<= R1;
    5bec:	18 08       	CC = R0 == R3;
    5bee:	f0 17       	IF !CC JUMP 0x5bce <___any_on+0x4a> (BP);
    5bf0:	dc 2f       	JUMP.S 0x5ba8 <___any_on+0x24>;
	...

00005bf4 <___fpclassifyd>:
    5bf4:	01 0c       	CC = R1 == 0x0;
    5bf6:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5bfa:	11 1c       	IF CC JUMP 0x5c1c <___fpclassifyd+0x28> (BP);
    5bfc:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    5bfe:	fa 4f       	R2 <<= 0x1f;
    5c00:	11 08       	CC = R1 == R2;
    5c02:	0d 18       	IF CC JUMP 0x5c1c <___fpclassifyd+0x28>;
    5c04:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    5c06:	a2 4f       	R2 <<= 0x14;
    5c08:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    5c0a:	91 50       	R2 = R1 + R2;
    5c0c:	43 e1 df 7f 	R3.H = 0x7fdf;		/* (32735)	R3=0x7fdfffff(2145386495) */
    5c10:	1a 0a       	CC = R2 <= R3 (IU);
    5c12:	0b 10       	IF !CC JUMP 0x5c28 <___fpclassifyd+0x34>;
    5c14:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    5c16:	01 e8 00 00 	UNLINK;
    5c1a:	10 00       	RTS;
    5c1c:	00 0c       	CC = R0 == 0x0;
    5c1e:	f3 13       	IF !CC JUMP 0x5c04 <___fpclassifyd+0x10>;
    5c20:	01 e8 00 00 	UNLINK;
    5c24:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    5c26:	10 00       	RTS;
    5c28:	22 e1 ff 07 	R2 = 0x7ff (X);		/*		R2=0x7ff(2047) */
    5c2c:	a2 4f       	R2 <<= 0x14;
    5c2e:	91 50       	R2 = R1 + R2;
    5c30:	1a 0a       	CC = R2 <= R3 (IU);
    5c32:	f1 1f       	IF CC JUMP 0x5c14 <___fpclassifyd+0x20> (BP);
    5c34:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    5c36:	42 e1 0f 00 	R2.H = 0xf;		/* ( 15)	R2=0xfffff(1048575) */
    5c3a:	11 0a       	CC = R1 <= R2 (IU);
    5c3c:	03 10       	IF !CC JUMP 0x5c42 <___fpclassifyd+0x4e>;
    5c3e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    5c40:	eb 2f       	JUMP.S 0x5c16 <___fpclassifyd+0x22>;
    5c42:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    5c44:	fa 4f       	R2 <<= 0x1f;
    5c46:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    5c48:	91 50       	R2 = R1 + R2;
    5c4a:	43 e1 0f 00 	R3.H = 0xf;		/* ( 15)	R3=0xfffff(1048575) */
    5c4e:	1a 0a       	CC = R2 <= R3 (IU);
    5c50:	f7 1f       	IF CC JUMP 0x5c3e <___fpclassifyd+0x4a> (BP);
    5c52:	22 e1 ff 07 	R2 = 0x7ff (X);		/*		R2=0x7ff(2047) */
    5c56:	a2 4f       	R2 <<= 0x14;
    5c58:	11 08       	CC = R1 == R2;
    5c5a:	07 18       	IF CC JUMP 0x5c68 <___fpclassifyd+0x74>;
    5c5c:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    5c5e:	a3 4f       	R3 <<= 0x14;
    5c60:	19 08       	CC = R1 == R3;
    5c62:	03 18       	IF CC JUMP 0x5c68 <___fpclassifyd+0x74>;
    5c64:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5c66:	d8 2f       	JUMP.S 0x5c16 <___fpclassifyd+0x22>;
    5c68:	00 0c       	CC = R0 == 0x0;
    5c6a:	00 02       	R0 = CC;
    5c6c:	d5 2f       	JUMP.S 0x5c16 <___fpclassifyd+0x22>;
	...

00005c70 <__sbrk_r>:
    5c70:	c4 04       	[--SP] = (P5:4);
    5c72:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x94b4 <___malloc_av_> */
    5c76:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    5c78:	00 e8 03 00 	LINK 0xc;		/* (12) */
    5c7c:	20 32       	P4 = R0;
    5c7e:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    5c82:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R2 || NOP;
    5c86:	2a 93 00 00 
    5c8a:	ff e3 47 dc 	CALL 0x1518 <__sbrk>;
    5c8e:	38 0c       	CC = R0 == -0x1;
    5c90:	05 18       	IF CC JUMP 0x5c9a <__sbrk_r+0x2a>;
    5c92:	01 e8 00 00 	UNLINK;
    5c96:	84 04       	(P5:4) = [SP++];
    5c98:	10 00       	RTS;
    5c9a:	29 91       	R1 = [P5];
    5c9c:	01 0c       	CC = R1 == 0x0;
    5c9e:	fa 1b       	IF CC JUMP 0x5c92 <__sbrk_r+0x22>;
    5ca0:	01 e8 00 00 	UNLINK;
    5ca4:	21 93       	[P4] = R1;
    5ca6:	84 04       	(P5:4) = [SP++];
    5ca8:	10 00       	RTS;
	...

00005cac <___sread>:
    5cac:	c5 04       	[--SP] = (P5:5);
    5cae:	29 32       	P5 = R1;
    5cb0:	00 e8 04 00 	LINK 0x10;		/* (16) */
    5cb4:	bb a1       	R3 = [FP + 0x18];
    5cb6:	f3 b0       	[SP + 0xc] = R3;
    5cb8:	e9 a9       	R1 = W[P5 + 0xe] (X);
    5cba:	00 e3 53 0a 	CALL 0x7160 <__read_r>;
    5cbe:	80 0c       	CC = R0 < 0x0;
    5cc0:	0a 18       	IF CC JUMP 0x5cd4 <___sread+0x28>;
    5cc2:	01 e8 00 00 	UNLINK;
    5cc6:	2a e4 14 00 	R2 = [P5 + 0x50];
    5cca:	42 50       	R1 = R2 + R0;
    5ccc:	29 e6 14 00 	[P5 + 0x50] = R1;
    5cd0:	85 04       	(P5:5) = [SP++];
    5cd2:	10 00       	RTS;
    5cd4:	a9 a9       	R1 = W[P5 + 0xc] (X);
    5cd6:	61 4c       	BITCLR (R1, 0xc);		/* bit 12 */
    5cd8:	01 e8 00 00 	UNLINK;
    5cdc:	a9 b5       	W[P5 + 0xc] = R1;
    5cde:	85 04       	(P5:5) = [SP++];
    5ce0:	10 00       	RTS;
	...

00005ce4 <___seofread>:
    5ce4:	00 00       	NOP;
    5ce6:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5cea:	01 e8 00 00 	UNLINK;
    5cee:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5cf0:	10 00       	RTS;
	...

00005cf4 <___swrite>:
    5cf4:	ed 05       	[--SP] = (R7:5, P5:5);
    5cf6:	29 32       	P5 = R1;
    5cf8:	00 e8 04 00 	LINK 0x10;		/* (16) */
    5cfc:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || R5 = [FP + 0x24] || NOP;
    5d00:	7d a2 00 00 
    5d04:	32 30       	R6 = R2;
    5d06:	a9 a9       	R1 = W[P5 + 0xc] (X);
    5d08:	41 48       	CC = !BITTST (R1, 0x8);		/* bit  8 */
    5d0a:	09 1c       	IF CC JUMP 0x5d1c <___swrite+0x28> (BP);
    5d0c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    5d0e:	e9 a9       	R1 = W[P5 + 0xe] (X);
    5d10:	f0 b0       	[SP + 0xc] = R0;
    5d12:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    5d14:	07 30       	R0 = R7;
    5d16:	00 e3 97 09 	CALL 0x7044 <__lseek_r>;
    5d1a:	a9 a9       	R1 = W[P5 + 0xc] (X);
    5d1c:	61 4c       	BITCLR (R1, 0xc);		/* bit 12 */
    5d1e:	7d b2       	[FP + 0x24] = R5;
    5d20:	01 e8 00 00 	UNLINK;
    5d24:	a9 b5       	W[P5 + 0xc] = R1;
    5d26:	82 ce 07 c0 	R0 = ROT R7 BY 0x0 || R1 = W[P5 + 0xe] (X) || NOP;
    5d2a:	e9 a9 00 00 
    5d2e:	16 30       	R2 = R6;
    5d30:	ad 05       	(R7:5, P5:5) = [SP++];
    5d32:	00 e2 3f 06 	JUMP.L 0x69b0 <__write_r>;
	...

00005d38 <___sseek>:
    5d38:	c5 04       	[--SP] = (P5:5);
    5d3a:	29 32       	P5 = R1;
    5d3c:	00 e8 04 00 	LINK 0x10;		/* (16) */
    5d40:	bb a1       	R3 = [FP + 0x18];
    5d42:	f3 b0       	[SP + 0xc] = R3;
    5d44:	e9 a9       	R1 = W[P5 + 0xe] (X);
    5d46:	00 e3 7f 09 	CALL 0x7044 <__lseek_r>;
    5d4a:	38 0c       	CC = R0 == -0x1;
    5d4c:	a9 a9       	R1 = W[P5 + 0xc] (X);
    5d4e:	09 18       	IF CC JUMP 0x5d60 <___sseek+0x28>;
    5d50:	61 4a       	BITSET (R1, 0xc);		/* bit 12 */
    5d52:	01 e8 00 00 	UNLINK;
    5d56:	a9 b5       	W[P5 + 0xc] = R1;
    5d58:	28 e6 14 00 	[P5 + 0x50] = R0;
    5d5c:	85 04       	(P5:5) = [SP++];
    5d5e:	10 00       	RTS;
    5d60:	61 4c       	BITCLR (R1, 0xc);		/* bit 12 */
    5d62:	01 e8 00 00 	UNLINK;
    5d66:	a9 b5       	W[P5 + 0xc] = R1;
    5d68:	85 04       	(P5:5) = [SP++];
    5d6a:	10 00       	RTS;

00005d6c <___sclose>:
    5d6c:	11 32       	P2 = R1;
    5d6e:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5d72:	01 e8 00 00 	UNLINK;
    5d76:	d1 a9       	R1 = W[P2 + 0xe] (X);
    5d78:	00 e2 7e 06 	JUMP.L 0x6a74 <__close_r>;

00005d7c <_strcmp>:
    5d7c:	81 56       	R2 = R1 | R0;
    5d7e:	09 32       	P1 = R1;
    5d80:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
    5d82:	4a 54       	R1 = R2 & R1;
    5d84:	78 05       	[--SP] = (R7:7);
    5d86:	01 0c       	CC = R1 == 0x0;
    5d88:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5d8c:	27 14       	IF !CC JUMP 0x5dda <_strcmp+0x5e> (BP);
    5d8e:	10 32       	P2 = R0;
    5d90:	0a 91       	R2 = [P1];
    5d92:	11 91       	R1 = [P2];
    5d94:	11 08       	CC = R1 == R2;
    5d96:	22 10       	IF !CC JUMP 0x5dda <_strcmp+0x5e>;
    5d98:	48 e1 fe fe 	P0.H = 0xfefe;		/* (-258)	P0=0xfefe00fc */
    5d9c:	08 e1 ff fe 	P0.L = 0xfeff;		/* (-257)	P0=0xfefefeff */
    5da0:	58 30       	R3 = P0;
    5da2:	99 50       	R2 = R1 + R3;
    5da4:	c9 43       	R1 =~ R1;
    5da6:	43 e1 80 80 	R3.H = 0x8080;		/* (-32640)	R3=0x8080ffff(-2139029505) */
    5daa:	4a 54       	R1 = R2 & R1;
    5dac:	03 e1 80 80 	R3.L = 0x8080;		/* (-32640)	R3=0x80808080(-2139062144) */
    5db0:	59 54       	R1 = R1 & R3;
    5db2:	01 0c       	CC = R1 == 0x0;
    5db4:	34 10       	IF !CC JUMP 0x5e1c <_strcmp+0xa0>;
    5db6:	51 30       	R2 = P1;
    5db8:	22 6c       	P2 += 0x4;		/* (  4) */
    5dba:	22 64       	R2 += 0x4;		/* (  4) */
    5dbc:	08 20       	JUMP.S 0x5dcc <_strcmp+0x50>;
    5dbe:	78 30       	R7 = P0;
    5dc0:	39 50       	R0 = R1 + R7;
    5dc2:	c9 43       	R1 =~ R1;
    5dc4:	48 54       	R1 = R0 & R1;
    5dc6:	59 54       	R1 = R1 & R3;
    5dc8:	01 0c       	CC = R1 == 0x0;
    5dca:	29 10       	IF !CC JUMP 0x5e1c <_strcmp+0xa0>;
    5dcc:	0a 32       	P1 = R2;
    5dce:	42 30       	R0 = P2;
    5dd0:	22 64       	R2 += 0x4;		/* (  4) */
    5dd2:	11 90       	R1 = [P2++];
    5dd4:	0f 91       	R7 = [P1];
    5dd6:	39 08       	CC = R1 == R7;
    5dd8:	f3 1f       	IF CC JUMP 0x5dbe <_strcmp+0x42> (BP);
    5dda:	10 32       	P2 = R0;
    5ddc:	51 99       	R1 = B[P2] (X);
    5dde:	01 0c       	CC = R1 == 0x0;
    5de0:	16 18       	IF CC JUMP 0x5e0c <_strcmp+0x90>;
    5de2:	00 00       	NOP;
    5de4:	00 00       	NOP;
    5de6:	00 00       	NOP;
    5de8:	4a 99       	R2 = B[P1] (X);
    5dea:	11 08       	CC = R1 == R2;
    5dec:	10 10       	IF !CC JUMP 0x5e0c <_strcmp+0x90>;
    5dee:	10 32       	P2 = R0;
    5df0:	51 30       	R2 = P1;
    5df2:	0a 64       	R2 += 0x1;		/* (  1) */
    5df4:	0a 6c       	P2 += 0x1;		/* (  1) */
    5df6:	06 20       	JUMP.S 0x5e02 <_strcmp+0x86>;
    5df8:	0a 64       	R2 += 0x1;		/* (  1) */
    5dfa:	49 99       	R1 = B[P1] (X);
    5dfc:	0b 08       	CC = R3 == R1;
    5dfe:	07 10       	IF !CC JUMP 0x5e0c <_strcmp+0x90>;
    5e00:	00 00       	NOP;
    5e02:	42 30       	R0 = P2;
    5e04:	0a 32       	P1 = R2;
    5e06:	53 98       	R3 = B[P2++] (X);
    5e08:	03 0c       	CC = R3 == 0x0;
    5e0a:	f7 17       	IF !CC JUMP 0x5df8 <_strcmp+0x7c> (BP);
    5e0c:	10 32       	P2 = R0;
    5e0e:	01 e8 00 00 	UNLINK;
    5e12:	08 99       	R0 = B[P1] (Z);
    5e14:	38 05       	(R7:7) = [SP++];
    5e16:	11 99       	R1 = B[P2] (Z);
    5e18:	01 52       	R0 = R1 - R0;
    5e1a:	10 00       	RTS;
    5e1c:	01 e8 00 00 	UNLINK;
    5e20:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5e22:	38 05       	(R7:7) = [SP++];
    5e24:	10 00       	RTS;
	...

00005e28 <_strlen>:
    5e28:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
    5e2a:	48 54       	R1 = R0 & R1;
    5e2c:	78 05       	[--SP] = (R7:7);
    5e2e:	01 0c       	CC = R1 == 0x0;
    5e30:	00 e8 00 00 	LINK 0x0;		/* (0) */
    5e34:	10 32       	P2 = R0;
    5e36:	13 18       	IF CC JUMP 0x5e5c <_strlen+0x34>;
    5e38:	00 00       	NOP;
    5e3a:	00 00       	NOP;
    5e3c:	00 00       	NOP;
    5e3e:	51 99       	R1 = B[P2] (X);
    5e40:	01 0c       	CC = R1 == 0x0;
    5e42:	38 18       	IF CC JUMP 0x5eb2 <_strlen+0x8a>;
    5e44:	08 30       	R1 = R0;
    5e46:	09 64       	R1 += 0x1;		/* (  1) */
    5e48:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    5e4a:	05 20       	JUMP.S 0x5e54 <_strlen+0x2c>;
    5e4c:	09 64       	R1 += 0x1;		/* (  1) */
    5e4e:	52 99       	R2 = B[P2] (X);
    5e50:	02 0c       	CC = R2 == 0x0;
    5e52:	2a 18       	IF CC JUMP 0x5ea6 <_strlen+0x7e>;
    5e54:	99 54       	R2 = R1 & R3;
    5e56:	02 0c       	CC = R2 == 0x0;
    5e58:	11 32       	P2 = R1;
    5e5a:	f9 17       	IF !CC JUMP 0x5e4c <_strlen+0x24> (BP);
    5e5c:	48 e1 fe fe 	P0.H = 0xfefe;		/* (-258)	P0=0xfefefeff */
    5e60:	08 e1 ff fe 	P0.L = 0xfeff;		/* (-257)	P0=0xfefefeff */
    5e64:	11 91       	R1 = [P2];
    5e66:	58 30       	R3 = P0;
    5e68:	99 50       	R2 = R1 + R3;
    5e6a:	c9 43       	R1 =~ R1;
    5e6c:	8a 54       	R2 = R2 & R1;
    5e6e:	41 e1 80 80 	R1.H = 0x8080;		/* (-32640)	R1=0x80800003(-2139095037) */
    5e72:	01 e1 80 80 	R1.L = 0x8080;		/* (-32640)	R1=0x80808080(-2139062144) */
    5e76:	8a 54       	R2 = R2 & R1;
    5e78:	02 0c       	CC = R2 == 0x0;
    5e7a:	0c 10       	IF !CC JUMP 0x5e92 <_strlen+0x6a>;
    5e7c:	4a 32       	P1 = P2;
    5e7e:	21 6c       	P1 += 0x4;		/* (  4) */
    5e80:	51 32       	P2 = P1;
    5e82:	78 30       	R7 = P0;
    5e84:	0a 90       	R2 = [P1++];
    5e86:	fa 50       	R3 = R2 + R7;
    5e88:	d2 43       	R2 =~ R2;
    5e8a:	93 54       	R2 = R3 & R2;
    5e8c:	8a 54       	R2 = R2 & R1;
    5e8e:	02 0c       	CC = R2 == 0x0;
    5e90:	f8 1f       	IF CC JUMP 0x5e80 <_strlen+0x58> (BP);
    5e92:	51 99       	R1 = B[P2] (X);
    5e94:	01 0c       	CC = R1 == 0x0;
    5e96:	08 18       	IF CC JUMP 0x5ea6 <_strlen+0x7e>;
    5e98:	4a 30       	R1 = P2;
    5e9a:	09 64       	R1 += 0x1;		/* (  1) */
    5e9c:	11 32       	P2 = R1;
    5e9e:	09 64       	R1 += 0x1;		/* (  1) */
    5ea0:	52 99       	R2 = B[P2] (X);
    5ea2:	02 0c       	CC = R2 == 0x0;
    5ea4:	fc 17       	IF !CC JUMP 0x5e9c <_strlen+0x74> (BP);
    5ea6:	4a 30       	R1 = P2;
    5ea8:	01 52       	R0 = R1 - R0;
    5eaa:	01 e8 00 00 	UNLINK;
    5eae:	38 05       	(R7:7) = [SP++];
    5eb0:	10 00       	RTS;
    5eb2:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5eb4:	fb 2f       	JUMP.S 0x5eaa <_strlen+0x82>;
	...

00005eb8 <___sprint_r>:
    5eb8:	e3 05       	[--SP] = (R7:4, P5:3);
    5eba:	1a 32       	P3 = R2;
    5ebc:	28 30       	R5 = R0;
    5ebe:	00 e8 03 00 	LINK 0xc;		/* (12) */
    5ec2:	21 32       	P4 = R1;
    5ec4:	98 a0       	R0 = [P3 + 0x8];
    5ec6:	00 0c       	CC = R0 == 0x0;
    5ec8:	32 18       	IF CC JUMP 0x5f2c <___sprint_r+0x74>;
    5eca:	00 00       	NOP;
    5ecc:	00 00       	NOP;
    5ece:	00 00       	NOP;
    5ed0:	21 e4 19 00 	R1 = [P4 + 0x64];
    5ed4:	69 48       	CC = !BITTST (R1, 0xd);		/* bit 13 */
    5ed6:	30 18       	IF CC JUMP 0x5f36 <___sprint_r+0x7e>;
    5ed8:	00 00       	NOP;
    5eda:	00 00       	NOP;
    5edc:	00 00       	NOP;
    5ede:	1c 91       	R4 = [P3];
    5ee0:	44 64       	R4 += 0x8;		/* (  8) */
    5ee2:	14 32       	P2 = R4;
    5ee4:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    5ee6:	16 e4 ff ff 	R6 = [P2 + -0x4];
    5eea:	16 4e       	R6 >>= 0x2;
    5eec:	06 0d       	CC = R6 <= 0x0;
    5eee:	15 e5 fe ff 	P5 = [P2 + -0x8];
    5ef2:	06 14       	IF !CC JUMP 0x5efe <___sprint_r+0x46> (BP);
    5ef4:	15 20       	JUMP.S 0x5f1e <___sprint_r+0x66>;
    5ef6:	0f 64       	R7 += 0x1;		/* (  1) */
    5ef8:	3e 08       	CC = R6 == R7;
    5efa:	11 18       	IF CC JUMP 0x5f1c <___sprint_r+0x64>;
    5efc:	00 00       	NOP;
    5efe:	05 30       	R0 = R5;
    5f00:	54 30       	R2 = P4;
    5f02:	29 90       	R1 = [P5++];
    5f04:	00 e3 3e 06 	CALL 0x6b80 <__fputwc_r>;
    5f08:	38 0c       	CC = R0 == -0x1;
    5f0a:	f6 17       	IF !CC JUMP 0x5ef6 <___sprint_r+0x3e> (BP);
    5f0c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    5f0e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    5f10:	01 e8 00 00 	UNLINK;
    5f14:	99 b0       	[P3 + 0x8] = R1;
    5f16:	59 b0       	[P3 + 0x4] = R1;
    5f18:	a3 05       	(R7:4, P5:3) = [SP++];
    5f1a:	10 00       	RTS;
    5f1c:	98 a0       	R0 = [P3 + 0x8];
    5f1e:	16 4f       	R6 <<= 0x2;
    5f20:	30 52       	R0 = R0 - R6;
    5f22:	00 0c       	CC = R0 == 0x0;
    5f24:	98 b0       	[P3 + 0x8] = R0;
    5f26:	44 64       	R4 += 0x8;		/* (  8) */
    5f28:	dd 17       	IF !CC JUMP 0x5ee2 <___sprint_r+0x2a> (BP);
    5f2a:	f2 2f       	JUMP.S 0x5f0e <___sprint_r+0x56>;
    5f2c:	01 e8 00 00 	UNLINK;
    5f30:	58 b0       	[P3 + 0x4] = R0;
    5f32:	a3 05       	(R7:4, P5:3) = [SP++];
    5f34:	10 00       	RTS;
    5f36:	05 30       	R0 = R5;
    5f38:	4c 30       	R1 = P4;
    5f3a:	00 e3 d9 06 	CALL 0x6cec <___sfvwrite_r>;
    5f3e:	e8 2f       	JUMP.S 0x5f0e <___sprint_r+0x56>;

00005f40 <__vfiprintf_r>:
    5f40:	e3 05       	[--SP] = (R7:4, P5:3);
    5f42:	18 32       	P3 = R0;
    5f44:	00 e8 39 01 	LINK 0x4e4;		/* (1252) */
    5f48:	29 32       	P5 = R1;
    5f4a:	22 32       	P4 = R2;
    5f4c:	43 0c       	CC = P3 == 0x0;
    5f4e:	05 18       	IF CC JUMP 0x5f58 <__vfiprintf_r+0x18>;
    5f50:	98 a3       	R0 = [P3 + 0x38];
    5f52:	00 0c       	CC = R0 == 0x0;
    5f54:	02 14       	IF !CC JUMP 0x5f58 <__vfiprintf_r+0x18> (BP);
    5f56:	92 24       	JUMP.S 0x687a <__vfiprintf_r+0x93a>;
    5f58:	a8 a9       	R0 = W[P5 + 0xc] (X);
    5f5a:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
    5f5c:	08 14       	IF !CC JUMP 0x5f6c <__vfiprintf_r+0x2c> (BP);
    5f5e:	29 e4 19 00 	R1 = [P5 + 0x64];
    5f62:	68 4a       	BITSET (R0, 0xd);		/* bit 13 */
    5f64:	69 4c       	BITCLR (R1, 0xd);		/* bit 13 */
    5f66:	a8 b5       	W[P5 + 0xc] = R0;
    5f68:	29 e6 19 00 	[P5 + 0x64] = R1;
    5f6c:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
    5f6e:	48 54       	R1 = R0 & R1;
    5f70:	89 42       	R1 = R1.L (X);
    5f72:	01 0c       	CC = R1 == 0x0;
    5f74:	02 14       	IF !CC JUMP 0x5f78 <__vfiprintf_r+0x38> (BP);
    5f76:	9d 23       	JUMP.S 0x66b0 <__vfiprintf_r+0x770>;
    5f78:	29 a1       	R1 = [P5 + 0x10];
    5f7a:	01 0c       	CC = R1 == 0x0;
    5f7c:	02 14       	IF !CC JUMP 0x5f80 <__vfiprintf_r+0x40> (BP);
    5f7e:	99 23       	JUMP.S 0x66b0 <__vfiprintf_r+0x770>;
    5f80:	d1 60       	R1 = 0x1a (X);		/*		R1=0x1a( 26) */
    5f82:	48 54       	R1 = R0 & R1;
    5f84:	89 42       	R1 = R1.L (X);
    5f86:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    5f88:	11 08       	CC = R1 == R2;
    5f8a:	02 14       	IF !CC JUMP 0x5f8e <__vfiprintf_r+0x4e> (BP);
    5f8c:	a1 23       	JUMP.S 0x66ce <__vfiprintf_r+0x78e>;
    5f8e:	28 e1 70 fb 	P0 = -0x490 (X);		/*		P0=0xfffffb70(-1168) */
    5f92:	38 5a       	P0 = P0 + FP;
    5f94:	58 30       	R3 = P0;
    5f96:	3b 65       	R3 += 0x27;		/* ( 39) */
    5f98:	3b e6 cd fe 	[FP + -0x4cc] = R3;
    5f9c:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    5fa0:	0b 64       	R3 += 0x1;		/* (  1) */
    5fa2:	3c e4 cd fe 	R4 = [FP + -0x4cc];
    5fa6:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    5fa8:	97 5a       	P2 = FP + P2;
    5faa:	3b e6 ce fe 	[FP + -0x4c8] = R3;
    5fae:	e3 52       	R3 = R3 - R4;
    5fb0:	3a e7 d9 fe 	[FP + -0x49c] = P2;
    5fb4:	38 e6 db fe 	[FP + -0x494] = R0;
    5fb8:	38 e6 da fe 	[FP + -0x498] = R0;
    5fbc:	38 e6 cf fe 	[FP + -0x4c4] = R0;
    5fc0:	38 e6 d4 fe 	[FP + -0x4b0] = R0;
    5fc4:	3b e6 cc fe 	[FP + -0x4d0] = R3;
    5fc8:	60 99       	R0 = B[P4] (X);
    5fca:	00 0c       	CC = R0 == 0x0;
    5fcc:	02 14       	IF !CC JUMP 0x5fd0 <__vfiprintf_r+0x90> (BP);
    5fce:	f9 22       	JUMP.S 0x65c0 <__vfiprintf_r+0x680>;
    5fd0:	29 61       	R1 = 0x25 (X);		/*		R1=0x25( 37) */
    5fd2:	08 08       	CC = R0 == R1;
    5fd4:	02 14       	IF !CC JUMP 0x5fd8 <__vfiprintf_r+0x98> (BP);
    5fd6:	f5 22       	JUMP.S 0x65c0 <__vfiprintf_r+0x680>;
    5fd8:	4c 30       	R1 = P4;
    5fda:	09 64       	R1 += 0x1;		/* (  1) */
    5fdc:	05 20       	JUMP.S 0x5fe6 <__vfiprintf_r+0xa6>;
    5fde:	2c 61       	R4 = 0x25 (X);		/*		R4=0x25( 37) */
    5fe0:	20 08       	CC = R0 == R4;
    5fe2:	af 18       	IF CC JUMP 0x6140 <__vfiprintf_r+0x200>;
    5fe4:	00 00       	NOP;
    5fe6:	09 32       	P1 = R1;
    5fe8:	09 64       	R1 += 0x1;		/* (  1) */
    5fea:	48 99       	R0 = B[P1] (X);
    5fec:	00 0c       	CC = R0 == 0x0;
    5fee:	f8 17       	IF !CC JUMP 0x5fde <__vfiprintf_r+0x9e> (BP);
    5ff0:	51 30       	R2 = P1;
    5ff2:	5c 30       	R3 = P4;
    5ff4:	da 53       	R7 = R2 - R3;
    5ff6:	07 0c       	CC = R7 == 0x0;
    5ff8:	17 18       	IF CC JUMP 0x6026 <__vfiprintf_r+0xe6>;
    5ffa:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    5ffc:	54 93       	[P2] = P4;
    5ffe:	57 b0       	[P2 + 0x4] = R7;
    6000:	38 e4 da fe 	R0 = [FP + -0x498];
    6004:	39 e4 db fe 	R1 = [FP + -0x494];
    6008:	08 64       	R0 += 0x1;		/* (  1) */
    600a:	79 50       	R1 = R1 + R7;
    600c:	10 09       	CC = R0 <= R2;
    600e:	39 e6 db fe 	[FP + -0x494] = R1;
    6012:	38 e6 da fe 	[FP + -0x498] = R0;
    6016:	02 1c       	IF CC JUMP 0x601a <__vfiprintf_r+0xda> (BP);
    6018:	a8 23       	JUMP.S 0x6768 <__vfiprintf_r+0x828>;
    601a:	42 6c       	P2 += 0x8;		/* (  8) */
    601c:	38 e4 d4 fe 	R0 = [FP + -0x4b0];
    6020:	38 50       	R0 = R0 + R7;
    6022:	38 e6 d4 fe 	[FP + -0x4b0] = R0;
    6026:	48 99       	R0 = B[P1] (X);
    6028:	00 0c       	CC = R0 == 0x0;
    602a:	02 14       	IF !CC JUMP 0x602e <__vfiprintf_r+0xee> (BP);
    602c:	cc 22       	JUMP.S 0x65c4 <__vfiprintf_r+0x684>;
    602e:	61 32       	P4 = P1;
    6030:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    6032:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6034:	3b e6 d3 fe 	[FP + -0x4b4] = R3;
    6038:	0c 6c       	P4 += 0x1;		/* (  1) */
    603a:	b8 e6 5f fb 	B[FP + -0x4a1] = R0;
    603e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    6040:	fd 63       	R5 = -0x1 (X);		/*		R5=0xffffffff( -1) */
    6042:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    6044:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    6046:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
    6048:	61 98       	R1 = B[P4++] (X);
    604a:	09 32       	P1 = R1;
    604c:	28 e1 58 00 	P0 = 0x58 (X);		/*		P0=0x58( 88) */
    6050:	01 6f       	P1 += -0x20;		/* (-32) */
    6052:	41 0a       	CC = P1 <= P0 (IU);
    6054:	6f 1c       	IF CC JUMP 0x6132 <__vfiprintf_r+0x1f2> (BP);
    6056:	01 0c       	CC = R1 == 0x0;
    6058:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    605c:	02 14       	IF !CC JUMP 0x6060 <__vfiprintf_r+0x120> (BP);
    605e:	b3 22       	JUMP.S 0x65c4 <__vfiprintf_r+0x684>;
    6060:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6062:	b9 e6 70 fb 	B[FP + -0x490] = R1;
    6066:	b8 e6 5f fb 	B[FP + -0x4a1] = R0;
    606a:	28 e1 70 fb 	P0 = -0x490 (X);		/*		P0=0xfffffb70(-1168) */
    606e:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    6070:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    6072:	38 5a       	P0 = P0 + FP;
    6074:	3b e6 d6 fe 	[FP + -0x4a8] = R3;
    6078:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    607c:	78 30       	R7 = P0;
    607e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    6080:	3c e6 d0 fe 	[FP + -0x4c0] = R4;
    6084:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    6086:	06 54       	R0 = R6 & R0;
    6088:	3b e4 d6 fe 	R3 = [FP + -0x4a8];
    608c:	c3 50       	R3 = R3 + R0;
    608e:	38 e6 d2 fe 	[FP + -0x4b8] = R0;
    6092:	20 e1 84 00 	R0 = 0x84 (X);		/*		R0=0x84(132) */
    6096:	06 54       	R0 = R6 & R0;
    6098:	00 0c       	CC = R0 == 0x0;
    609a:	3b e6 d6 fe 	[FP + -0x4a8] = R3;
    609e:	38 e6 d1 fe 	[FP + -0x4bc] = R0;
    60a2:	af 15       	IF !CC JUMP 0x6400 <__vfiprintf_r+0x4c0> (BP);
    60a4:	3c e4 d3 fe 	R4 = [FP + -0x4b4];
    60a8:	3b e4 d6 fe 	R3 = [FP + -0x4a8];
    60ac:	5c 53       	R5 = R4 - R3;
    60ae:	05 0d       	CC = R5 <= 0x0;
    60b0:	a8 19       	IF CC JUMP 0x6400 <__vfiprintf_r+0x4c0>;
    60b2:	84 60       	R4 = 0x10 (X);		/*		R4=0x10( 16) */
    60b4:	25 09       	CC = R5 <= R4;
    60b6:	44 e1 00 00 	R4.H = 0x0;		/* (  0)	R4=0x10 <_.d1>( 16) */
    60ba:	39 e4 db fe 	R1 = [FP + -0x494];
    60be:	38 e4 da fe 	R0 = [FP + -0x498];
    60c2:	04 e1 10 8c 	R4.L = 0x8c10;		/* (-29680)	R4=0x8c10 <_blanks.4002>(35856) */
    60c6:	07 14       	IF !CC JUMP 0x60d4 <__vfiprintf_r+0x194> (BP);
    60c8:	28 20       	JUMP.S 0x6118 <__vfiprintf_r+0x1d8>;
    60ca:	85 67       	R5 += -0x10;		/* (-16) */
    60cc:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    60ce:	15 09       	CC = R5 <= R2;
    60d0:	42 6c       	P2 += 0x8;		/* (  8) */
    60d2:	23 18       	IF CC JUMP 0x6118 <__vfiprintf_r+0x1d8>;
    60d4:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    60d6:	08 64       	R0 += 0x1;		/* (  1) */
    60d8:	52 b0       	[P2 + 0x4] = R2;
    60da:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    60dc:	81 64       	R1 += 0x10;		/* ( 16) */
    60de:	10 09       	CC = R0 <= R2;
    60e0:	14 93       	[P2] = R4;
    60e2:	39 e6 db fe 	[FP + -0x494] = R1;
    60e6:	38 e6 da fe 	[FP + -0x498] = R0;
    60ea:	f0 1f       	IF CC JUMP 0x60ca <__vfiprintf_r+0x18a> (BP);
    60ec:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    60f0:	38 5a       	P0 = P0 + FP;
    60f2:	43 30       	R0 = P3;
    60f4:	4d 30       	R1 = P5;
    60f6:	50 30       	R2 = P0;
    60f8:	ff e3 e0 fe 	CALL 0x5eb8 <___sprint_r>;
    60fc:	00 0c       	CC = R0 == 0x0;
    60fe:	02 1c       	IF CC JUMP 0x6102 <__vfiprintf_r+0x1c2> (BP);
    6100:	6e 22       	JUMP.S 0x65dc <__vfiprintf_r+0x69c>;
    6102:	85 67       	R5 += -0x10;		/* (-16) */
    6104:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    6106:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    610a:	15 09       	CC = R5 <= R2;
    610c:	8f 5a       	P2 = FP + P1;
    610e:	39 e4 db fe 	R1 = [FP + -0x494];
    6112:	38 e4 da fe 	R0 = [FP + -0x498];
    6116:	df 17       	IF !CC JUMP 0x60d4 <__vfiprintf_r+0x194> (BP);
    6118:	08 64       	R0 += 0x1;		/* (  1) */
    611a:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    611c:	69 50       	R1 = R1 + R5;
    611e:	18 09       	CC = R0 <= R3;
    6120:	14 93       	[P2] = R4;
    6122:	55 b0       	[P2 + 0x4] = R5;
    6124:	39 e6 db fe 	[FP + -0x494] = R1;
    6128:	38 e6 da fe 	[FP + -0x498] = R0;
    612c:	5d 11       	IF !CC JUMP 0x63e6 <__vfiprintf_r+0x4a6>;
    612e:	42 6c       	P2 += 0x8;		/* (  8) */
    6130:	6c 21       	JUMP.S 0x6408 <__vfiprintf_r+0x4c8>;
    6132:	48 e1 00 00 	P0.H = 0x0;		/* (  0)	P0=0xfb64 */
    6136:	08 e1 ac 8a 	P0.L = 0x8aac;		/* (-30036)	P0=0x8aac */
    613a:	48 5e       	P1 = P0 + (P1 << 0x2);
    613c:	49 91       	P1 = [P1];
    613e:	51 00       	JUMP (P1);
    6140:	41 30       	R0 = P1;
    6142:	4c 30       	R1 = P4;
    6144:	c8 53       	R7 = R0 - R1;
    6146:	58 2f       	JUMP.S 0x5ff6 <__vfiprintf_r+0xb6>;
    6148:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    614a:	7f 2f       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    614c:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    614e:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    6150:	3b 14       	IF !CC JUMP 0x61c6 <__vfiprintf_r+0x286> (BP);
    6152:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    6154:	39 1c       	IF CC JUMP 0x61c6 <__vfiprintf_r+0x286> (BP);
    6156:	39 af       	P1 = [FP + 0x30];
    6158:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    615a:	08 95       	R0 = W[P1] (Z);
    615c:	21 6c       	P1 += 0x4;		/* (  4) */
    615e:	39 bf       	[FP + 0x30] = P1;
    6160:	0c 20       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    6162:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    6164:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    6166:	04 14       	IF !CC JUMP 0x616e <__vfiprintf_r+0x22e> (BP);
    6168:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    616a:	02 18       	IF CC JUMP 0x616e <__vfiprintf_r+0x22e>;
    616c:	bb 23       	JUMP.S 0x68e2 <__vfiprintf_r+0x9a2>;
    616e:	38 af       	P0 = [FP + 0x30];
    6170:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    6172:	00 91       	R0 = [P0];
    6174:	20 6c       	P0 += 0x4;		/* (  4) */
    6176:	38 bf       	[FP + 0x30] = P0;
    6178:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    617a:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    617e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    6180:	16 30       	R2 = R6;
    6182:	85 0c       	CC = R5 < 0x0;
    6184:	3a 4c       	BITCLR (R2, 0x7);		/* bit  7 */
    6186:	32 06       	IF !CC R6 = R2;
    6188:	00 0c       	CC = R0 == 0x0;
    618a:	49 43       	R1 = R1.B (Z);
    618c:	52 14       	IF !CC JUMP 0x6230 <__vfiprintf_r+0x2f0> (BP);
    618e:	05 0c       	CC = R5 == 0x0;
    6190:	50 14       	IF !CC JUMP 0x6230 <__vfiprintf_r+0x2f0> (BP);
    6192:	01 0c       	CC = R1 == 0x0;
    6194:	04 14       	IF !CC JUMP 0x619c <__vfiprintf_r+0x25c> (BP);
    6196:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    6198:	02 18       	IF CC JUMP 0x619c <__vfiprintf_r+0x25c>;
    619a:	8d 23       	JUMP.S 0x68b4 <__vfiprintf_r+0x974>;
    619c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    619e:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    61a2:	3f e4 ce fe 	R7 = [FP + -0x4c8];
    61a6:	3d e6 d0 fe 	[FP + -0x4c0] = R5;
    61aa:	38 e4 d0 fe 	R0 = [FP + -0x4c0];
    61ae:	3c e4 d5 fe 	R4 = [FP + -0x4ac];
    61b2:	07 c4 20 08 	R4 = MAX (R4, R0);
    61b6:	04 30       	R0 = R4;
    61b8:	19 43       	R1 = R3.B (X);
    61ba:	08 64       	R0 += 0x1;		/* (  1) */
    61bc:	01 0c       	CC = R1 == 0x0;
    61be:	20 06       	IF !CC R4 = R0;
    61c0:	3c e6 d6 fe 	[FP + -0x4a8] = R4;
    61c4:	60 2f       	JUMP.S 0x6084 <__vfiprintf_r+0x144>;
    61c6:	38 af       	P0 = [FP + 0x30];
    61c8:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    61ca:	00 91       	R0 = [P0];
    61cc:	20 6c       	P0 += 0x4;		/* (  4) */
    61ce:	38 bf       	[FP + 0x30] = P0;
    61d0:	d4 2f       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    61d2:	38 af       	P0 = [FP + 0x30];
    61d4:	38 a3       	R0 = [FP + 0x30];
    61d6:	20 64       	R0 += 0x4;		/* (  4) */
    61d8:	04 91       	R4 = [P0];
    61da:	84 0c       	CC = R4 < 0x0;
    61dc:	3c e6 d3 fe 	[FP + -0x4b4] = R4;
    61e0:	02 18       	IF CC JUMP 0x61e4 <__vfiprintf_r+0x2a4>;
    61e2:	5a 23       	JUMP.S 0x6896 <__vfiprintf_r+0x956>;
    61e4:	a4 43       	R4 = -R4;
    61e6:	3c e6 d3 fe 	[FP + -0x4b4] = R4;
    61ea:	38 b3       	[FP + 0x30] = R0;
    61ec:	16 4a       	BITSET (R6, 0x2);		/* bit  2 */
    61ee:	2d 2f       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    61f0:	10 43       	R0 = R2.B (X);
    61f2:	00 0c       	CC = R0 == 0x0;
    61f4:	13 07       	IF CC R2 = R3;
    61f6:	29 2f       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    61f8:	06 4a       	BITSET (R6, 0x0);		/* bit  0 */
    61fa:	27 2f       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    61fc:	36 4a       	BITSET (R6, 0x6);		/* bit  6 */
    61fe:	25 2f       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    6200:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    6204:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    6206:	04 14       	IF !CC JUMP 0x620e <__vfiprintf_r+0x2ce> (BP);
    6208:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    620a:	02 18       	IF CC JUMP 0x620e <__vfiprintf_r+0x2ce>;
    620c:	71 23       	JUMP.S 0x68ee <__vfiprintf_r+0x9ae>;
    620e:	39 af       	P1 = [FP + 0x30];
    6210:	08 91       	R0 = [P1];
    6212:	80 0c       	CC = R0 < 0x0;
    6214:	21 6c       	P1 += 0x4;		/* (  4) */
    6216:	39 bf       	[FP + 0x30] = P1;
    6218:	02 14       	IF !CC JUMP 0x621c <__vfiprintf_r+0x2dc> (BP);
    621a:	71 23       	JUMP.S 0x68fc <__vfiprintf_r+0x9bc>;
    621c:	16 30       	R2 = R6;
    621e:	85 0c       	CC = R5 < 0x0;
    6220:	3a 4c       	BITCLR (R2, 0x7);		/* bit  7 */
    6222:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    6224:	32 06       	IF !CC R6 = R2;
    6226:	00 0c       	CC = R0 == 0x0;
    6228:	bb e5 5f fb 	R3 = B[FP + -0x4a1] (X);
    622c:	49 43       	R1 = R1.B (Z);
    622e:	b0 1f       	IF CC JUMP 0x618e <__vfiprintf_r+0x24e> (BP);
    6230:	09 0c       	CC = R1 == 0x1;
    6232:	02 14       	IF !CC JUMP 0x6236 <__vfiprintf_r+0x2f6> (BP);
    6234:	d3 22       	JUMP.S 0x67da <__vfiprintf_r+0x89a>;
    6236:	11 0c       	CC = R1 == 0x2;
    6238:	39 e4 cd fe 	R1 = [FP + -0x4cc];
    623c:	02 14       	IF !CC JUMP 0x6240 <__vfiprintf_r+0x300> (BP);
    623e:	b9 22       	JUMP.S 0x67b0 <__vfiprintf_r+0x870>;
    6240:	3c 60       	R4 = 0x7 (X);		/*		R4=0x7(  7) */
    6242:	09 32       	P1 = R1;
    6244:	a0 54       	R2 = R0 & R4;
    6246:	18 4e       	R0 >>= 0x3;
    6248:	82 65       	R2 += 0x30;		/* ( 48) */
    624a:	00 0c       	CC = R0 == 0x0;
    624c:	39 30       	R7 = R1;
    624e:	0a 9b       	B[P1] = R2;
    6250:	f9 67       	R1 += -0x1;		/* ( -1) */
    6252:	f8 17       	IF !CC JUMP 0x6242 <__vfiprintf_r+0x302> (BP);
    6254:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    6256:	09 1c       	IF CC JUMP 0x6268 <__vfiprintf_r+0x328> (BP);
    6258:	12 43       	R2 = R2.B (X);
    625a:	84 61       	R4 = 0x30 (X);		/*		R4=0x30( 48) */
    625c:	22 08       	CC = R2 == R4;
    625e:	05 18       	IF CC JUMP 0x6268 <__vfiprintf_r+0x328>;
    6260:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    6262:	39 30       	R7 = R1;
    6264:	88 e6 ff ff 	B[P1 + -0x1] = R0;
    6268:	38 e4 ce fe 	R0 = [FP + -0x4c8];
    626c:	38 52       	R0 = R0 - R7;
    626e:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    6272:	9a 2f       	JUMP.S 0x61a6 <__vfiprintf_r+0x266>;
    6274:	39 af       	P1 = [FP + 0x30];
    6276:	48 99       	R0 = B[P1] (X);
    6278:	b8 e6 70 fb 	B[FP + -0x490] = R0;
    627c:	21 6c       	P1 += 0x4;		/* (  4) */
    627e:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6280:	b8 e6 5f fb 	B[FP + -0x4a1] = R0;
    6284:	39 bf       	[FP + 0x30] = P1;
    6286:	f2 2e       	JUMP.S 0x606a <__vfiprintf_r+0x12a>;
    6288:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x87b4(34740) */
    628c:	14 e1 b4 87 	M0.L = 0x87b4;		/* (-30796)	M0=0x87b4(34740) */
    6290:	84 30       	R0 = M0;
    6292:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    6296:	38 e6 cf fe 	[FP + -0x4c4] = R0;
    629a:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    629c:	04 14       	IF !CC JUMP 0x62a4 <__vfiprintf_r+0x364> (BP);
    629e:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    62a0:	02 18       	IF CC JUMP 0x62a4 <__vfiprintf_r+0x364>;
    62a2:	1b 23       	JUMP.S 0x68d8 <__vfiprintf_r+0x998>;
    62a4:	38 af       	P0 = [FP + 0x30];
    62a6:	00 91       	R0 = [P0];
    62a8:	20 6c       	P0 += 0x4;		/* (  4) */
    62aa:	38 bf       	[FP + 0x30] = P0;
    62ac:	06 48       	CC = !BITTST (R6, 0x0);		/* bit  0 */
    62ae:	0b 1c       	IF CC JUMP 0x62c4 <__vfiprintf_r+0x384> (BP);
    62b0:	00 0c       	CC = R0 == 0x0;
    62b2:	09 1c       	IF CC JUMP 0x62c4 <__vfiprintf_r+0x384> (BP);
    62b4:	82 61       	R2 = 0x30 (X);		/*		R2=0x30( 48) */
    62b6:	b9 e6 61 fb 	B[FP + -0x49f] = R1;
    62ba:	ba e6 60 fb 	B[FP + -0x4a0] = R2;
    62be:	0e 4a       	BITSET (R6, 0x1);		/* bit  1 */
    62c0:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    62c2:	5b 2f       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    62c4:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    62c6:	59 2f       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    62c8:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    62cc:	26 4a       	BITSET (R6, 0x4);		/* bit  4 */
    62ce:	9b 2f       	JUMP.S 0x6204 <__vfiprintf_r+0x2c4>;
    62d0:	09 32       	P1 = R1;
    62d2:	44 30       	R0 = P4;
    62d4:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    62d6:	81 6e       	P1 += -0x30;		/* (-48) */
    62d8:	24 32       	P4 = R4;
    62da:	24 5e       	P0 = P4 + (P4 << 0x2);
    62dc:	41 5c       	P1 = P1 + (P0 << 0x1);
    62de:	00 32       	P0 = R0;
    62e0:	61 30       	R4 = P1;
    62e2:	08 64       	R0 += 0x1;		/* (  1) */
    62e4:	20 32       	P4 = R0;
    62e6:	41 98       	R1 = B[P0++] (X);
    62e8:	09 32       	P1 = R1;
    62ea:	48 68       	P0 = 0x9 (X);		/*		P0=0x9(  9) */
    62ec:	81 6e       	P1 += -0x30;		/* (-48) */
    62ee:	41 0a       	CC = P1 <= P0 (IU);
    62f0:	f4 1f       	IF CC JUMP 0x62d8 <__vfiprintf_r+0x398> (BP);
    62f2:	3c e6 d3 fe 	[FP + -0x4b4] = R4;
    62f6:	aa 2e       	JUMP.S 0x604a <__vfiprintf_r+0x10a>;
    62f8:	38 af       	P0 = [FP + 0x30];
    62fa:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    62fc:	3c a3       	R4 = [FP + 0x30];
    62fe:	b8 e6 5f fb 	B[FP + -0x4a1] = R0;
    6302:	07 91       	R7 = [P0];
    6304:	07 0c       	CC = R7 == 0x0;
    6306:	24 64       	R4 += 0x4;		/* (  4) */
    6308:	02 14       	IF !CC JUMP 0x630c <__vfiprintf_r+0x3cc> (BP);
    630a:	12 23       	JUMP.S 0x692e <__vfiprintf_r+0x9ee>;
    630c:	85 0c       	CC = R5 < 0x0;
    630e:	07 30       	R0 = R7;
    6310:	02 14       	IF !CC JUMP 0x6314 <__vfiprintf_r+0x3d4> (BP);
    6312:	20 23       	JUMP.S 0x6952 <__vfiprintf_r+0xa12>;
    6314:	15 30       	R2 = R5;
    6316:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    6318:	3a e7 cb fe 	[FP + -0x4d4] = P2;
    631c:	ff e3 a0 f6 	CALL 0x505c <_memchr>;
    6320:	00 0c       	CC = R0 == 0x0;
    6322:	3a e5 cb fe 	P2 = [FP + -0x4d4];
    6326:	02 14       	IF !CC JUMP 0x632a <__vfiprintf_r+0x3ea> (BP);
    6328:	24 23       	JUMP.S 0x6970 <__vfiprintf_r+0xa30>;
    632a:	38 52       	R0 = R0 - R7;
    632c:	28 09       	CC = R0 <= R5;
    632e:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    6332:	bb e5 5f fb 	R3 = B[FP + -0x4a1] (X);
    6336:	03 1c       	IF CC JUMP 0x633c <__vfiprintf_r+0x3fc> (BP);
    6338:	3d e6 d5 fe 	[FP + -0x4ac] = R5;
    633c:	3c b3       	[FP + 0x30] = R4;
    633e:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    6340:	3c e6 d0 fe 	[FP + -0x4c0] = R4;
    6344:	33 2f       	JUMP.S 0x61aa <__vfiprintf_r+0x26a>;
    6346:	5a 61       	R2 = 0x2b (X);		/*		R2=0x2b( 43) */
    6348:	80 2e       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    634a:	3e 4a       	BITSET (R6, 0x7);		/* bit  7 */
    634c:	7e 2e       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    634e:	61 98       	R1 = B[P4++] (X);
    6350:	50 61       	R0 = 0x2a (X);		/*		R0=0x2a( 42) */
    6352:	01 08       	CC = R1 == R0;
    6354:	02 14       	IF !CC JUMP 0x6358 <__vfiprintf_r+0x418> (BP);
    6356:	10 23       	JUMP.S 0x6976 <__vfiprintf_r+0xa36>;
    6358:	09 32       	P1 = R1;
    635a:	48 68       	P0 = 0x9 (X);		/*		P0=0x9(  9) */
    635c:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    635e:	81 6e       	P1 += -0x30;		/* (-48) */
    6360:	41 0a       	CC = P1 <= P0 (IU);
    6362:	74 12       	IF !CC JUMP 0x604a <__vfiprintf_r+0x10a>;
    6364:	44 30       	R0 = P4;
    6366:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    6368:	25 32       	P4 = R5;
    636a:	24 5e       	P0 = P4 + (P4 << 0x2);
    636c:	41 5c       	P1 = P1 + (P0 << 0x1);
    636e:	00 32       	P0 = R0;
    6370:	69 30       	R5 = P1;
    6372:	08 64       	R0 += 0x1;		/* (  1) */
    6374:	20 32       	P4 = R0;
    6376:	41 98       	R1 = B[P0++] (X);
    6378:	09 32       	P1 = R1;
    637a:	48 68       	P0 = 0x9 (X);		/*		P0=0x9(  9) */
    637c:	81 6e       	P1 += -0x30;		/* (-48) */
    637e:	41 0a       	CC = P1 <= P0 (IU);
    6380:	f4 1f       	IF CC JUMP 0x6368 <__vfiprintf_r+0x428> (BP);
    6382:	07 c4 2f 0a 	R5 = MAX (R5, R7);
    6386:	62 2e       	JUMP.S 0x604a <__vfiprintf_r+0x10a>;
    6388:	26 48       	CC = !BITTST (R6, 0x4);		/* bit  4 */
    638a:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    638e:	02 18       	IF CC JUMP 0x6392 <__vfiprintf_r+0x452>;
    6390:	9c 22       	JUMP.S 0x68c8 <__vfiprintf_r+0x988>;
    6392:	36 48       	CC = !BITTST (R6, 0x6);		/* bit  6 */
    6394:	02 10       	IF !CC JUMP 0x6398 <__vfiprintf_r+0x458>;
    6396:	99 22       	JUMP.S 0x68c8 <__vfiprintf_r+0x988>;
    6398:	38 af       	P0 = [FP + 0x30];
    639a:	78 e5 a8 fd 	R0 = W[FP + -0x4b0] (X);
    639e:	41 91       	P1 = [P0];
    63a0:	20 6c       	P0 += 0x4;		/* (  4) */
    63a2:	38 bf       	[FP + 0x30] = P0;
    63a4:	08 97       	W[P1] = R0;
    63a6:	11 2e       	JUMP.S 0x5fc8 <__vfiprintf_r+0x88>;
    63a8:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x87b4(34740) */
    63ac:	14 e1 c8 87 	M0.L = 0x87c8;		/* (-30776)	M0=0x87c8(34760) */
    63b0:	84 30       	R0 = M0;
    63b2:	ba e6 5f fb 	B[FP + -0x4a1] = R2;
    63b6:	38 e6 cf fe 	[FP + -0x4c4] = R0;
    63ba:	70 2f       	JUMP.S 0x629a <__vfiprintf_r+0x35a>;
    63bc:	39 af       	P1 = [FP + 0x30];
    63be:	81 61       	R1 = 0x30 (X);		/*		R1=0x30( 48) */
    63c0:	54 e1 00 00 	M0.H = 0x0;		/* (  0)	M0=0x87c8(34760) */
    63c4:	b9 e6 60 fb 	B[FP + -0x4a0] = R1;
    63c8:	14 e1 c8 87 	M0.L = 0x87c8;		/* (-30776)	M0=0x87c8(34760) */
    63cc:	21 e1 78 00 	R1 = 0x78 (X);		/*		R1=0x78(120) */
    63d0:	08 91       	R0 = [P1];
    63d2:	b9 e6 61 fb 	B[FP + -0x49f] = R1;
    63d6:	21 6c       	P1 += 0x4;		/* (  4) */
    63d8:	8c 30       	R1 = M0;
    63da:	39 e6 cf fe 	[FP + -0x4c4] = R1;
    63de:	0e 4a       	BITSET (R6, 0x1);		/* bit  1 */
    63e0:	39 bf       	[FP + 0x30] = P1;
    63e2:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    63e4:	ca 2e       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    63e6:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    63ea:	67 30       	R4 = FP;
    63ec:	43 30       	R0 = P3;
    63ee:	4d 30       	R1 = P5;
    63f0:	94 50       	R2 = R4 + R2;
    63f2:	ff e3 63 fd 	CALL 0x5eb8 <___sprint_r>;
    63f6:	00 0c       	CC = R0 == 0x0;
    63f8:	f2 10       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    63fa:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    63fe:	97 5a       	P2 = FP + P2;
    6400:	39 e4 db fe 	R1 = [FP + -0x494];
    6404:	38 e4 da fe 	R0 = [FP + -0x498];
    6408:	ba e5 5f fb 	R2 = B[FP + -0x4a1] (X);
    640c:	02 0c       	CC = R2 == 0x0;
    640e:	12 1c       	IF CC JUMP 0x6432 <__vfiprintf_r+0x4f2> (BP);
    6410:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    6412:	08 64       	R0 += 0x1;		/* (  1) */
    6414:	29 e1 5f fb 	P1 = -0x4a1 (X);		/*		P1=0xfffffb5f(-1185) */
    6418:	52 b0       	[P2 + 0x4] = R2;
    641a:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    641c:	4f 5a       	P1 = FP + P1;
    641e:	09 64       	R1 += 0x1;		/* (  1) */
    6420:	10 09       	CC = R0 <= R2;
    6422:	51 93       	[P2] = P1;
    6424:	39 e6 db fe 	[FP + -0x494] = R1;
    6428:	38 e6 da fe 	[FP + -0x498] = R0;
    642c:	02 1c       	IF CC JUMP 0x6430 <__vfiprintf_r+0x4f0> (BP);
    642e:	02 22       	JUMP.S 0x6832 <__vfiprintf_r+0x8f2>;
    6430:	42 6c       	P2 += 0x8;		/* (  8) */
    6432:	3c e4 d2 fe 	R4 = [FP + -0x4b8];
    6436:	04 0c       	CC = R4 == 0x0;
    6438:	12 1c       	IF CC JUMP 0x645c <__vfiprintf_r+0x51c> (BP);
    643a:	12 60       	R2 = 0x2 (X);		/*		R2=0x2(  2) */
    643c:	08 64       	R0 += 0x1;		/* (  1) */
    643e:	29 e1 60 fb 	P1 = -0x4a0 (X);		/*		P1=0xfffffb60(-1184) */
    6442:	52 b0       	[P2 + 0x4] = R2;
    6444:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    6446:	4f 5a       	P1 = FP + P1;
    6448:	11 64       	R1 += 0x2;		/* (  2) */
    644a:	10 09       	CC = R0 <= R2;
    644c:	51 93       	[P2] = P1;
    644e:	39 e6 db fe 	[FP + -0x494] = R1;
    6452:	38 e6 da fe 	[FP + -0x498] = R0;
    6456:	02 1c       	IF CC JUMP 0x645a <__vfiprintf_r+0x51a> (BP);
    6458:	ff 21       	JUMP.S 0x6856 <__vfiprintf_r+0x916>;
    645a:	42 6c       	P2 += 0x8;		/* (  8) */
    645c:	22 e1 80 00 	R2 = 0x80 (X);		/*		R2=0x80(128) */
    6460:	3c e4 d1 fe 	R4 = [FP + -0x4bc];
    6464:	14 08       	CC = R4 == R2;
    6466:	c8 18       	IF CC JUMP 0x65f6 <__vfiprintf_r+0x6b6>;
    6468:	3b e4 d0 fe 	R3 = [FP + -0x4c0];
    646c:	3a e4 d5 fe 	R2 = [FP + -0x4ac];
    6470:	13 53       	R4 = R3 - R2;
    6472:	04 0d       	CC = R4 <= 0x0;
    6474:	3b 18       	IF CC JUMP 0x64ea <__vfiprintf_r+0x5aa>;
    6476:	83 60       	R3 = 0x10 (X);		/*		R3=0x10( 16) */
    6478:	45 e1 00 00 	R5.H = 0x0;		/* (  0)	R5=0x0(  0) */
    647c:	1c 09       	CC = R4 <= R3;
    647e:	05 e1 20 8c 	R5.L = 0x8c20;		/* (-29664)	R5=0x8c20 <_zeroes.4003>(35872) */
    6482:	07 14       	IF !CC JUMP 0x6490 <__vfiprintf_r+0x550> (BP);
    6484:	27 20       	JUMP.S 0x64d2 <__vfiprintf_r+0x592>;
    6486:	84 67       	R4 += -0x10;		/* (-16) */
    6488:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    648a:	14 09       	CC = R4 <= R2;
    648c:	42 6c       	P2 += 0x8;		/* (  8) */
    648e:	22 18       	IF CC JUMP 0x64d2 <__vfiprintf_r+0x592>;
    6490:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    6492:	08 64       	R0 += 0x1;		/* (  1) */
    6494:	52 b0       	[P2 + 0x4] = R2;
    6496:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    6498:	81 64       	R1 += 0x10;		/* ( 16) */
    649a:	10 09       	CC = R0 <= R2;
    649c:	15 93       	[P2] = R5;
    649e:	39 e6 db fe 	[FP + -0x494] = R1;
    64a2:	38 e6 da fe 	[FP + -0x498] = R0;
    64a6:	f0 1f       	IF CC JUMP 0x6486 <__vfiprintf_r+0x546> (BP);
    64a8:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    64ac:	38 5a       	P0 = P0 + FP;
    64ae:	43 30       	R0 = P3;
    64b0:	4d 30       	R1 = P5;
    64b2:	50 30       	R2 = P0;
    64b4:	ff e3 02 fd 	CALL 0x5eb8 <___sprint_r>;
    64b8:	00 0c       	CC = R0 == 0x0;
    64ba:	91 10       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    64bc:	84 67       	R4 += -0x10;		/* (-16) */
    64be:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    64c0:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    64c4:	14 09       	CC = R4 <= R2;
    64c6:	8f 5a       	P2 = FP + P1;
    64c8:	39 e4 db fe 	R1 = [FP + -0x494];
    64cc:	38 e4 da fe 	R0 = [FP + -0x498];
    64d0:	e0 17       	IF !CC JUMP 0x6490 <__vfiprintf_r+0x550> (BP);
    64d2:	08 64       	R0 += 0x1;		/* (  1) */
    64d4:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    64d6:	61 50       	R1 = R1 + R4;
    64d8:	18 09       	CC = R0 <= R3;
    64da:	15 93       	[P2] = R5;
    64dc:	54 b0       	[P2 + 0x4] = R4;
    64de:	39 e6 db fe 	[FP + -0x494] = R1;
    64e2:	38 e6 da fe 	[FP + -0x498] = R0;
    64e6:	53 11       	IF !CC JUMP 0x678c <__vfiprintf_r+0x84c>;
    64e8:	42 6c       	P2 += 0x8;		/* (  8) */
    64ea:	38 e5 d5 fe 	P0 = [FP + -0x4ac];
    64ee:	08 64       	R0 += 0x1;		/* (  1) */
    64f0:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    64f2:	18 09       	CC = R0 <= R3;
    64f4:	50 30       	R2 = P0;
    64f6:	51 50       	R1 = R1 + R2;
    64f8:	17 93       	[P2] = R7;
    64fa:	50 bc       	[P2 + 0x4] = P0;
    64fc:	39 e6 db fe 	[FP + -0x494] = R1;
    6500:	38 e6 da fe 	[FP + -0x498] = R0;
    6504:	bb 10       	IF !CC JUMP 0x667a <__vfiprintf_r+0x73a>;
    6506:	42 6c       	P2 += 0x8;		/* (  8) */
    6508:	16 48       	CC = !BITTST (R6, 0x2);		/* bit  2 */
    650a:	44 1c       	IF CC JUMP 0x6592 <__vfiprintf_r+0x652> (BP);
    650c:	3b e4 d3 fe 	R3 = [FP + -0x4b4];
    6510:	3c e4 d6 fe 	R4 = [FP + -0x4a8];
    6514:	a3 53       	R6 = R3 - R4;
    6516:	06 0d       	CC = R6 <= 0x0;
    6518:	3d 18       	IF CC JUMP 0x6592 <__vfiprintf_r+0x652>;
    651a:	80 60       	R0 = 0x10 (X);		/*		R0=0x10( 16) */
    651c:	06 09       	CC = R6 <= R0;
    651e:	44 e1 00 00 	R4.H = 0x0;		/* (  0)	R4=0x0(  0) */
    6522:	38 e4 da fe 	R0 = [FP + -0x498];
    6526:	04 e1 10 8c 	R4.L = 0x8c10;		/* (-29680)	R4=0x8c10 <_blanks.4002>(35856) */
    652a:	27 e1 00 fc 	R7 = -0x400 (X);		/*		R7=0xfffffc00(-1024) */
    652e:	07 14       	IF !CC JUMP 0x653c <__vfiprintf_r+0x5fc> (BP);
    6530:	26 20       	JUMP.S 0x657c <__vfiprintf_r+0x63c>;
    6532:	86 67       	R6 += -0x10;		/* (-16) */
    6534:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    6536:	16 09       	CC = R6 <= R2;
    6538:	42 6c       	P2 += 0x8;		/* (  8) */
    653a:	21 18       	IF CC JUMP 0x657c <__vfiprintf_r+0x63c>;
    653c:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    653e:	08 64       	R0 += 0x1;		/* (  1) */
    6540:	52 b0       	[P2 + 0x4] = R2;
    6542:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    6544:	81 64       	R1 += 0x10;		/* ( 16) */
    6546:	10 09       	CC = R0 <= R2;
    6548:	14 93       	[P2] = R4;
    654a:	39 e6 db fe 	[FP + -0x494] = R1;
    654e:	38 e6 da fe 	[FP + -0x498] = R0;
    6552:	f0 1f       	IF CC JUMP 0x6532 <__vfiprintf_r+0x5f2> (BP);
    6554:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    6558:	38 5a       	P0 = P0 + FP;
    655a:	43 30       	R0 = P3;
    655c:	4d 30       	R1 = P5;
    655e:	50 30       	R2 = P0;
    6560:	ff e3 ac fc 	CALL 0x5eb8 <___sprint_r>;
    6564:	00 0c       	CC = R0 == 0x0;
    6566:	3b 10       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    6568:	0f 32       	P1 = R7;
    656a:	86 67       	R6 += -0x10;		/* (-16) */
    656c:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    656e:	16 09       	CC = R6 <= R2;
    6570:	39 e4 db fe 	R1 = [FP + -0x494];
    6574:	8f 5a       	P2 = FP + P1;
    6576:	38 e4 da fe 	R0 = [FP + -0x498];
    657a:	e1 17       	IF !CC JUMP 0x653c <__vfiprintf_r+0x5fc> (BP);
    657c:	08 64       	R0 += 0x1;		/* (  1) */
    657e:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    6580:	4e 50       	R1 = R6 + R1;
    6582:	18 09       	CC = R0 <= R3;
    6584:	14 93       	[P2] = R4;
    6586:	56 b0       	[P2 + 0x4] = R6;
    6588:	39 e6 db fe 	[FP + -0x494] = R1;
    658c:	38 e6 da fe 	[FP + -0x498] = R0;
    6590:	85 11       	IF !CC JUMP 0x689a <__vfiprintf_r+0x95a>;
    6592:	01 0c       	CC = R1 == 0x0;
    6594:	3b e4 d6 fe 	R3 = [FP + -0x4a8];
    6598:	3c e4 d3 fe 	R4 = [FP + -0x4b4];
    659c:	38 e4 d4 fe 	R0 = [FP + -0x4b0];
    65a0:	07 c4 1c 0a 	R5 = MAX (R3, R4);
    65a4:	28 50       	R0 = R0 + R5;
    65a6:	38 e6 d4 fe 	[FP + -0x4b0] = R0;
    65aa:	78 10       	IF !CC JUMP 0x669a <__vfiprintf_r+0x75a>;
    65ac:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    65ae:	38 e6 da fe 	[FP + -0x498] = R0;
    65b2:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    65b6:	60 99       	R0 = B[P4] (X);
    65b8:	00 0c       	CC = R0 == 0x0;
    65ba:	97 5a       	P2 = FP + P2;
    65bc:	02 18       	IF CC JUMP 0x65c0 <__vfiprintf_r+0x680>;
    65be:	09 2d       	JUMP.S 0x5fd0 <__vfiprintf_r+0x90>;
    65c0:	4c 32       	P1 = P4;
    65c2:	32 2d       	JUMP.S 0x6026 <__vfiprintf_r+0xe6>;
    65c4:	3c e4 db fe 	R4 = [FP + -0x494];
    65c8:	04 0c       	CC = R4 == 0x0;
    65ca:	09 1c       	IF CC JUMP 0x65dc <__vfiprintf_r+0x69c> (BP);
    65cc:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    65d0:	5f 30       	R3 = FP;
    65d2:	43 30       	R0 = P3;
    65d4:	4d 30       	R1 = P5;
    65d6:	93 50       	R2 = R3 + R2;
    65d8:	ff e3 70 fc 	CALL 0x5eb8 <___sprint_r>;
    65dc:	00 00       	NOP;
    65de:	a8 a9       	R0 = W[P5 + 0xc] (X);
    65e0:	30 48       	CC = !BITTST (R0, 0x6);		/* bit  6 */
    65e2:	04 1c       	IF CC JUMP 0x65ea <__vfiprintf_r+0x6aa> (BP);
    65e4:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    65e6:	38 e6 d4 fe 	[FP + -0x4b0] = R0;
    65ea:	38 e4 d4 fe 	R0 = [FP + -0x4b0];
    65ee:	01 e8 00 00 	UNLINK;
    65f2:	a3 05       	(R7:4, P5:3) = [SP++];
    65f4:	10 00       	RTS;
    65f6:	3b e4 d3 fe 	R3 = [FP + -0x4b4];
    65fa:	3a e4 d6 fe 	R2 = [FP + -0x4a8];
    65fe:	13 53       	R4 = R3 - R2;
    6600:	04 0d       	CC = R4 <= 0x0;
    6602:	33 1b       	IF CC JUMP 0x6468 <__vfiprintf_r+0x528>;
    6604:	83 60       	R3 = 0x10 (X);		/*		R3=0x10( 16) */
    6606:	45 e1 00 00 	R5.H = 0x0;		/* (  0)	R5=0x8c20 <_zeroes.4003>(35872) */
    660a:	1c 09       	CC = R4 <= R3;
    660c:	05 e1 20 8c 	R5.L = 0x8c20;		/* (-29664)	R5=0x8c20 <_zeroes.4003>(35872) */
    6610:	07 14       	IF !CC JUMP 0x661e <__vfiprintf_r+0x6de> (BP);
    6612:	27 20       	JUMP.S 0x6660 <__vfiprintf_r+0x720>;
    6614:	84 67       	R4 += -0x10;		/* (-16) */
    6616:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    6618:	14 09       	CC = R4 <= R2;
    661a:	42 6c       	P2 += 0x8;		/* (  8) */
    661c:	22 18       	IF CC JUMP 0x6660 <__vfiprintf_r+0x720>;
    661e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    6620:	08 64       	R0 += 0x1;		/* (  1) */
    6622:	52 b0       	[P2 + 0x4] = R2;
    6624:	3a 60       	R2 = 0x7 (X);		/*		R2=0x7(  7) */
    6626:	81 64       	R1 += 0x10;		/* ( 16) */
    6628:	10 09       	CC = R0 <= R2;
    662a:	15 93       	[P2] = R5;
    662c:	39 e6 db fe 	[FP + -0x494] = R1;
    6630:	38 e6 da fe 	[FP + -0x498] = R0;
    6634:	f0 1f       	IF CC JUMP 0x6614 <__vfiprintf_r+0x6d4> (BP);
    6636:	28 e1 64 fb 	P0 = -0x49c (X);		/*		P0=0xfffffb64(-1180) */
    663a:	38 5a       	P0 = P0 + FP;
    663c:	43 30       	R0 = P3;
    663e:	4d 30       	R1 = P5;
    6640:	50 30       	R2 = P0;
    6642:	ff e3 3b fc 	CALL 0x5eb8 <___sprint_r>;
    6646:	00 0c       	CC = R0 == 0x0;
    6648:	ca 13       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    664a:	84 67       	R4 += -0x10;		/* (-16) */
    664c:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    664e:	29 e1 00 fc 	P1 = -0x400 (X);		/*		P1=0xfffffc00(-1024) */
    6652:	14 09       	CC = R4 <= R2;
    6654:	8f 5a       	P2 = FP + P1;
    6656:	39 e4 db fe 	R1 = [FP + -0x494];
    665a:	38 e4 da fe 	R0 = [FP + -0x498];
    665e:	e0 17       	IF !CC JUMP 0x661e <__vfiprintf_r+0x6de> (BP);
    6660:	08 64       	R0 += 0x1;		/* (  1) */
    6662:	3b 60       	R3 = 0x7 (X);		/*		R3=0x7(  7) */
    6664:	61 50       	R1 = R1 + R4;
    6666:	18 09       	CC = R0 <= R3;
    6668:	15 93       	[P2] = R5;
    666a:	54 b0       	[P2 + 0x4] = R4;
    666c:	39 e6 db fe 	[FP + -0x494] = R1;
    6670:	38 e6 da fe 	[FP + -0x498] = R0;
    6674:	4b 11       	IF !CC JUMP 0x690a <__vfiprintf_r+0x9ca>;
    6676:	42 6c       	P2 += 0x8;		/* (  8) */
    6678:	f8 2e       	JUMP.S 0x6468 <__vfiprintf_r+0x528>;
    667a:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    667e:	67 30       	R4 = FP;
    6680:	43 30       	R0 = P3;
    6682:	4d 30       	R1 = P5;
    6684:	94 50       	R2 = R4 + R2;
    6686:	ff e3 19 fc 	CALL 0x5eb8 <___sprint_r>;
    668a:	00 0c       	CC = R0 == 0x0;
    668c:	a8 13       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    668e:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    6692:	97 5a       	P2 = FP + P2;
    6694:	39 e4 db fe 	R1 = [FP + -0x494];
    6698:	38 2f       	JUMP.S 0x6508 <__vfiprintf_r+0x5c8>;
    669a:	5f 30       	R3 = FP;
    669c:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    66a0:	43 30       	R0 = P3;
    66a2:	4d 30       	R1 = P5;
    66a4:	93 50       	R2 = R3 + R2;
    66a6:	ff e3 09 fc 	CALL 0x5eb8 <___sprint_r>;
    66aa:	00 0c       	CC = R0 == 0x0;
    66ac:	80 1f       	IF CC JUMP 0x65ac <__vfiprintf_r+0x66c> (BP);
    66ae:	97 2f       	JUMP.S 0x65dc <__vfiprintf_r+0x69c>;
    66b0:	43 30       	R0 = P3;
    66b2:	4d 30       	R1 = P5;
    66b4:	ff e3 ac e3 	CALL 0x2e0c <___swsetup_r>;
    66b8:	00 0c       	CC = R0 == 0x0;
    66ba:	95 13       	IF !CC JUMP 0x65e4 <__vfiprintf_r+0x6a4>;
    66bc:	00 00       	NOP;
    66be:	d1 60       	R1 = 0x1a (X);		/*		R1=0x1a( 26) */
    66c0:	52 60       	R2 = 0xa (X);		/*		R2=0xa( 10) */
    66c2:	a8 a9       	R0 = W[P5 + 0xc] (X);
    66c4:	48 54       	R1 = R0 & R1;
    66c6:	89 42       	R1 = R1.L (X);
    66c8:	11 08       	CC = R1 == R2;
    66ca:	02 18       	IF CC JUMP 0x66ce <__vfiprintf_r+0x78e>;
    66cc:	61 2c       	JUMP.S 0x5f8e <__vfiprintf_r+0x4e>;
    66ce:	e9 a9       	R1 = W[P5 + 0xe] (X);
    66d0:	8a 42       	R2 = R1.L (X);
    66d2:	82 0c       	CC = R2 < 0x0;
    66d4:	02 10       	IF !CC JUMP 0x66d8 <__vfiprintf_r+0x798>;
    66d6:	5c 2c       	JUMP.S 0x5f8e <__vfiprintf_r+0x4e>;
    66d8:	08 4c       	BITCLR (R0, 0x1);		/* bit  1 */
    66da:	78 e6 d2 fd 	W[FP + -0x45c] = R0;
    66de:	28 e4 19 00 	R0 = [P5 + 0x64];
    66e2:	38 e6 ff fe 	[FP + -0x404] = R0;
    66e6:	38 af       	P0 = [FP + 0x30];
    66e8:	e8 a1       	R0 = [P5 + 0x1c];
    66ea:	38 e6 ed fe 	[FP + -0x44c] = R0;
    66ee:	68 a2       	R0 = [P5 + 0x24];
    66f0:	38 e6 ef fe 	[FP + -0x444] = R0;
    66f4:	29 e1 98 fb 	P1 = -0x468 (X);		/*		P1=0xfffffb98(-1128) */
    66f8:	20 e1 00 04 	R0 = 0x400 (X);		/*		R0=0x400(1024) */
    66fc:	38 e6 e8 fe 	[FP + -0x460] = R0;
    6700:	38 e6 eb fe 	[FP + -0x454] = R0;
    6704:	79 5a       	P1 = P1 + FP;
    6706:	00 cc 00 c0 	R0 = R0 -|- R0 || [SP + 0xc] = P0 || NOP;
    670a:	f0 bc 00 00 
    670e:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    6712:	97 5a       	P2 = FP + P2;
    6714:	79 e6 d3 fd 	W[FP + -0x45a] = R1;
    6718:	38 e6 ec fe 	[FP + -0x450] = R0;
    671c:	49 30       	R1 = P1;
    671e:	43 30       	R0 = P3;
    6720:	54 30       	R2 = P4;
    6722:	3a e7 e6 fe 	[FP + -0x468] = P2;
    6726:	3a e7 ea fe 	[FP + -0x458] = P2;
    672a:	ff e3 0b fc 	CALL 0x5f40 <__vfiprintf_r>;
    672e:	80 0c       	CC = R0 < 0x0;
    6730:	38 e6 d4 fe 	[FP + -0x4b0] = R0;
    6734:	0f 18       	IF CC JUMP 0x6752 <__vfiprintf_r+0x812>;
    6736:	2a e1 98 fb 	P2 = -0x468 (X);		/*		P2=0xfffffb98(-1128) */
    673a:	ba 5a       	P2 = P2 + FP;
    673c:	43 30       	R0 = P3;
    673e:	4a 30       	R1 = P2;
    6740:	ff e3 a2 ed 	CALL 0x4284 <__fflush_r>;
    6744:	3c e5 d4 fe 	P4 = [FP + -0x4b0];
    6748:	00 0c       	CC = R0 == 0x0;
    674a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    674c:	a0 06       	IF !CC P4 = R0;
    674e:	3c e7 d4 fe 	[FP + -0x4b0] = P4;
    6752:	78 e5 d2 fd 	R0 = W[FP + -0x45c] (X);
    6756:	30 48       	CC = !BITTST (R0, 0x6);		/* bit  6 */
    6758:	49 1b       	IF CC JUMP 0x65ea <__vfiprintf_r+0x6aa>;
    675a:	00 00       	NOP;
    675c:	00 00       	NOP;
    675e:	00 00       	NOP;
    6760:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6762:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
    6764:	a8 b5       	W[P5 + 0xc] = R0;
    6766:	42 2f       	JUMP.S 0x65ea <__vfiprintf_r+0x6aa>;
    6768:	5f 30       	R3 = FP;
    676a:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    676e:	43 30       	R0 = P3;
    6770:	4d 30       	R1 = P5;
    6772:	93 50       	R2 = R3 + R2;
    6774:	39 e7 cb fe 	[FP + -0x4d4] = P1;
    6778:	ff e3 a0 fb 	CALL 0x5eb8 <___sprint_r>;
    677c:	00 0c       	CC = R0 == 0x0;
    677e:	39 e5 cb fe 	P1 = [FP + -0x4d4];
    6782:	2d 13       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    6784:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    6788:	97 5a       	P2 = FP + P2;
    678a:	49 2c       	JUMP.S 0x601c <__vfiprintf_r+0xdc>;
    678c:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    6790:	67 30       	R4 = FP;
    6792:	43 30       	R0 = P3;
    6794:	4d 30       	R1 = P5;
    6796:	94 50       	R2 = R4 + R2;
    6798:	ff e3 90 fb 	CALL 0x5eb8 <___sprint_r>;
    679c:	00 0c       	CC = R0 == 0x0;
    679e:	1f 13       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    67a0:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    67a4:	97 5a       	P2 = FP + P2;
    67a6:	39 e4 db fe 	R1 = [FP + -0x494];
    67aa:	38 e4 da fe 	R0 = [FP + -0x498];
    67ae:	9e 2e       	JUMP.S 0x64ea <__vfiprintf_r+0x5aa>;
    67b0:	7a 60       	R2 = 0xf (X);		/*		R2=0xf( 15) */
    67b2:	39 30       	R7 = R1;
    67b4:	3c e4 cf fe 	R4 = [FP + -0x4c4];
    67b8:	50 54       	R1 = R0 & R2;
    67ba:	4c 50       	R1 = R4 + R1;
    67bc:	01 32       	P0 = R1;
    67be:	0f 32       	P1 = R7;
    67c0:	20 4e       	R0 >>= 0x4;
    67c2:	00 0c       	CC = R0 == 0x0;
    67c4:	41 99       	R1 = B[P0] (X);
    67c6:	09 9b       	B[P1] = R1;
    67c8:	0f 30       	R1 = R7;
    67ca:	f9 67       	R1 += -0x1;		/* ( -1) */
    67cc:	f3 17       	IF !CC JUMP 0x67b2 <__vfiprintf_r+0x872> (BP);
    67ce:	38 e4 ce fe 	R0 = [FP + -0x4c8];
    67d2:	38 52       	R0 = R0 - R7;
    67d4:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    67d8:	e7 2c       	JUMP.S 0x61a6 <__vfiprintf_r+0x266>;
    67da:	49 60       	R1 = 0x9 (X);		/*		R1=0x9(  9) */
    67dc:	08 0a       	CC = R0 <= R1 (IU);
    67de:	52 1c       	IF CC JUMP 0x6882 <__vfiprintf_r+0x942> (BP);
    67e0:	41 e1 cc cc 	R1.H = 0xcccc;		/* (-13108)	R1=0xcccc0009(-859045879) */
    67e4:	3a e4 cd fe 	R2 = [FP + -0x4cc];
    67e8:	01 e1 cd cc 	R1.L = 0xcccd;		/* (-13107)	R1=0xcccccccd(-858993459) */
    67ec:	80 c0 01 18 	A1 = R0.L * R1.L (FU);
    67f0:	83 c6 80 51 	A1 = A1 >> 0x10;
    67f4:	81 c0 01 86 	A1 += R0.H * R1.L, A0 = R0.H * R1.H (FU);
    67f8:	81 c0 08 98 	A1 += R1.H * R0.L (FU);
    67fc:	83 c6 80 51 	A1 = A1 >> 0x10;
    6800:	0b c4 3f 80 	A0 += A1;
    6804:	3a 30       	R7 = R2;
    6806:	8b c0 80 38 	R2 = A0 (FU);
    680a:	1a 4e       	R2 >>= 0x3;
    680c:	0a 32       	P1 = R2;
    680e:	09 5e       	P0 = P1 + (P1 << 0x2);
    6810:	50 30       	R2 = P0;
    6812:	07 32       	P0 = R7;
    6814:	0a 4f       	R2 <<= 0x1;
    6816:	10 52       	R0 = R0 - R2;
    6818:	80 65       	R0 += 0x30;		/* ( 48) */
    681a:	17 30       	R2 = R7;
    681c:	00 9b       	B[P0] = R0;
    681e:	41 30       	R0 = P1;
    6820:	00 0c       	CC = R0 == 0x0;
    6822:	fa 67       	R2 += -0x1;		/* ( -1) */
    6824:	e4 17       	IF !CC JUMP 0x67ec <__vfiprintf_r+0x8ac> (BP);
    6826:	38 e4 ce fe 	R0 = [FP + -0x4c8];
    682a:	38 52       	R0 = R0 - R7;
    682c:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    6830:	bb 2c       	JUMP.S 0x61a6 <__vfiprintf_r+0x266>;
    6832:	5f 30       	R3 = FP;
    6834:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    6838:	43 30       	R0 = P3;
    683a:	4d 30       	R1 = P5;
    683c:	93 50       	R2 = R3 + R2;
    683e:	ff e3 3d fb 	CALL 0x5eb8 <___sprint_r>;
    6842:	00 0c       	CC = R0 == 0x0;
    6844:	cc 12       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    6846:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    684a:	97 5a       	P2 = FP + P2;
    684c:	39 e4 db fe 	R1 = [FP + -0x494];
    6850:	38 e4 da fe 	R0 = [FP + -0x498];
    6854:	ef 2d       	JUMP.S 0x6432 <__vfiprintf_r+0x4f2>;
    6856:	5f 30       	R3 = FP;
    6858:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    685c:	43 30       	R0 = P3;
    685e:	4d 30       	R1 = P5;
    6860:	93 50       	R2 = R3 + R2;
    6862:	ff e3 2b fb 	CALL 0x5eb8 <___sprint_r>;
    6866:	00 0c       	CC = R0 == 0x0;
    6868:	ba 12       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    686a:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    686e:	97 5a       	P2 = FP + P2;
    6870:	39 e4 db fe 	R1 = [FP + -0x494];
    6874:	38 e4 da fe 	R0 = [FP + -0x498];
    6878:	f2 2d       	JUMP.S 0x645c <__vfiprintf_r+0x51c>;
    687a:	43 30       	R0 = P3;
    687c:	ff e3 b4 ed 	CALL 0x43e4 <___sinit>;
    6880:	6c 2b       	JUMP.S 0x5f58 <__vfiprintf_r+0x18>;
    6882:	80 65       	R0 += 0x30;		/* ( 48) */
    6884:	3c e4 cc fe 	R4 = [FP + -0x4d0];
    6888:	b8 e6 97 fb 	B[FP + -0x469] = R0;
    688c:	3c e6 d5 fe 	[FP + -0x4ac] = R4;
    6890:	3f e4 cd fe 	R7 = [FP + -0x4cc];
    6894:	89 2c       	JUMP.S 0x61a6 <__vfiprintf_r+0x266>;
    6896:	38 b3       	[FP + 0x30] = R0;
    6898:	d8 2b       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;
    689a:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    689e:	67 30       	R4 = FP;
    68a0:	43 30       	R0 = P3;
    68a2:	4d 30       	R1 = P5;
    68a4:	94 50       	R2 = R4 + R2;
    68a6:	ff e3 09 fb 	CALL 0x5eb8 <___sprint_r>;
    68aa:	00 0c       	CC = R0 == 0x0;
    68ac:	98 12       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    68ae:	39 e4 db fe 	R1 = [FP + -0x494];
    68b2:	70 2e       	JUMP.S 0x6592 <__vfiprintf_r+0x652>;
    68b4:	80 61       	R0 = 0x30 (X);		/*		R0=0x30( 48) */
    68b6:	3c e4 cc fe 	R4 = [FP + -0x4d0];
    68ba:	b8 e6 97 fb 	B[FP + -0x469] = R0;
    68be:	3c e6 d5 fe 	[FP + -0x4ac] = R4;
    68c2:	3f e4 cd fe 	R7 = [FP + -0x4cc];
    68c6:	70 2c       	JUMP.S 0x61a6 <__vfiprintf_r+0x266>;
    68c8:	38 af       	P0 = [FP + 0x30];
    68ca:	38 e4 d4 fe 	R0 = [FP + -0x4b0];
    68ce:	41 91       	P1 = [P0];
    68d0:	20 6c       	P0 += 0x4;		/* (  4) */
    68d2:	08 93       	[P1] = R0;
    68d4:	38 bf       	[FP + 0x30] = P0;
    68d6:	79 2b       	JUMP.S 0x5fc8 <__vfiprintf_r+0x88>;
    68d8:	39 af       	P1 = [FP + 0x30];
    68da:	08 95       	R0 = W[P1] (Z);
    68dc:	21 6c       	P1 += 0x4;		/* (  4) */
    68de:	39 bf       	[FP + 0x30] = P1;
    68e0:	e6 2c       	JUMP.S 0x62ac <__vfiprintf_r+0x36c>;
    68e2:	39 af       	P1 = [FP + 0x30];
    68e4:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    68e6:	08 95       	R0 = W[P1] (Z);
    68e8:	21 6c       	P1 += 0x4;		/* (  4) */
    68ea:	39 bf       	[FP + 0x30] = P1;
    68ec:	46 2c       	JUMP.S 0x6178 <__vfiprintf_r+0x238>;
    68ee:	38 af       	P0 = [FP + 0x30];
    68f0:	40 95       	R0 = W[P0] (X);
    68f2:	80 0c       	CC = R0 < 0x0;
    68f4:	20 6c       	P0 += 0x4;		/* (  4) */
    68f6:	38 bf       	[FP + 0x30] = P0;
    68f8:	02 18       	IF CC JUMP 0x68fc <__vfiprintf_r+0x9bc>;
    68fa:	91 2c       	JUMP.S 0x621c <__vfiprintf_r+0x2dc>;
    68fc:	69 61       	R1 = 0x2d (X);		/*		R1=0x2d( 45) */
    68fe:	b9 e6 5f fb 	B[FP + -0x4a1] = R1;
    6902:	80 43       	R0 = -R0;
    6904:	6b 61       	R3 = 0x2d (X);		/*		R3=0x2d( 45) */
    6906:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    6908:	3c 2c       	JUMP.S 0x6180 <__vfiprintf_r+0x240>;
    690a:	22 e1 64 fb 	R2 = -0x49c (X);		/*		R2=0xfffffb64(-1180) */
    690e:	67 30       	R4 = FP;
    6910:	43 30       	R0 = P3;
    6912:	4d 30       	R1 = P5;
    6914:	94 50       	R2 = R4 + R2;
    6916:	ff e3 d1 fa 	CALL 0x5eb8 <___sprint_r>;
    691a:	00 0c       	CC = R0 == 0x0;
    691c:	60 12       	IF !CC JUMP 0x65dc <__vfiprintf_r+0x69c>;
    691e:	2a e1 00 fc 	P2 = -0x400 (X);		/*		P2=0xfffffc00(-1024) */
    6922:	97 5a       	P2 = FP + P2;
    6924:	39 e4 db fe 	R1 = [FP + -0x494];
    6928:	38 e4 da fe 	R0 = [FP + -0x498];
    692c:	9e 2d       	JUMP.S 0x6468 <__vfiprintf_r+0x528>;
    692e:	35 0e       	CC = R5 <= 0x6 (IU);
    6930:	30 60       	R0 = 0x6 (X);		/*		R0=0x6(  6) */
    6932:	05 07       	IF CC R0 = R5;
    6934:	00 cc 2d ca 	R5 = R5 -|- R5 || [FP + 0x30] = R4 || NOP;
    6938:	3c b3 00 00 
    693c:	07 c4 05 0a 	R5 = MAX (R0, R5);
    6940:	47 e1 00 00 	R7.H = 0x0;		/* (  0)	R7=0xfc00(64512) */
    6944:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    6948:	3d e6 d6 fe 	[FP + -0x4a8] = R5;
    694c:	07 e1 dc 87 	R7.L = 0x87dc;		/* (-30756)	R7=0x87dc(34780) */
    6950:	97 2b       	JUMP.S 0x607e <__vfiprintf_r+0x13e>;
    6952:	3a e7 cb fe 	[FP + -0x4d4] = P2;
    6956:	ff e3 69 fa 	CALL 0x5e28 <_strlen>;
    695a:	3c b3       	[FP + 0x30] = R4;
    695c:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    695e:	38 e6 d5 fe 	[FP + -0x4ac] = R0;
    6962:	bb e5 5f fb 	R3 = B[FP + -0x4a1] (X);
    6966:	3c e6 d0 fe 	[FP + -0x4c0] = R4;
    696a:	3a e5 cb fe 	P2 = [FP + -0x4d4];
    696e:	1e 2c       	JUMP.S 0x61aa <__vfiprintf_r+0x26a>;
    6970:	bb e5 5f fb 	R3 = B[FP + -0x4a1] (X);
    6974:	e2 2c       	JUMP.S 0x6338 <__vfiprintf_r+0x3f8>;
    6976:	39 af       	P1 = [FP + 0x30];
    6978:	38 a3       	R0 = [FP + 0x30];
    697a:	20 64       	R0 += 0x4;		/* (  4) */
    697c:	0d 91       	R5 = [P1];
    697e:	85 0c       	CC = R5 < 0x0;
    6980:	8b 17       	IF !CC JUMP 0x6896 <__vfiprintf_r+0x956> (BP);
    6982:	38 b3       	[FP + 0x30] = R0;
    6984:	fd 63       	R5 = -0x1 (X);		/*		R5=0xffffffff( -1) */
    6986:	61 2b       	JUMP.S 0x6048 <__vfiprintf_r+0x108>;

00006988 <_vfiprintf>:
    6988:	10 32       	P2 = R0;
    698a:	49 e1 00 00 	P1.H = 0x0;		/* (  0)	P1=0xfb98 */
    698e:	00 e8 04 00 	LINK 0x10;		/* (16) */
    6992:	82 ce 01 c6 	R3 = ROT R1 BY 0x0 || [SP + 0xc] = R2 || NOP;
    6996:	f2 b0 00 00 
    699a:	09 e1 08 90 	P1.L = 0x9008;		/* (-28664)	P1=0x9008 <__impure_ptr> */
    699e:	08 91       	R0 = [P1];
    69a0:	4a 30       	R1 = P2;
    69a2:	13 30       	R2 = R3;
    69a4:	ff e3 ce fa 	CALL 0x5f40 <__vfiprintf_r>;
    69a8:	01 e8 00 00 	UNLINK;
    69ac:	10 00       	RTS;
	...

000069b0 <__write_r>:
    69b0:	c4 04       	[--SP] = (P5:4);
    69b2:	00 e8 03 00 	LINK 0xc;		/* (12) */
    69b6:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    69ba:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    69bc:	20 32       	P4 = R0;
    69be:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    69c2:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R3 || NOP;
    69c6:	2b 93 00 00 
    69ca:	82 ce 02 c2 	R1 = ROT R2 BY 0x0 || R2 = [FP + 0x1c] || NOP;
    69ce:	fa a1 00 00 
    69d2:	ff e3 7b d5 	CALL 0x14c8 <__write>;
    69d6:	38 0c       	CC = R0 == -0x1;
    69d8:	05 18       	IF CC JUMP 0x69e2 <__write_r+0x32>;
    69da:	01 e8 00 00 	UNLINK;
    69de:	84 04       	(P5:4) = [SP++];
    69e0:	10 00       	RTS;
    69e2:	29 91       	R1 = [P5];
    69e4:	01 0c       	CC = R1 == 0x0;
    69e6:	fa 1b       	IF CC JUMP 0x69da <__write_r+0x2a>;
    69e8:	01 e8 00 00 	UNLINK;
    69ec:	21 93       	[P4] = R1;
    69ee:	84 04       	(P5:4) = [SP++];
    69f0:	10 00       	RTS;
	...

000069f4 <__calloc_r>:
    69f4:	ca 40       	R2 *= R1;
    69f6:	c5 04       	[--SP] = (P5:5);
    69f8:	00 e8 03 00 	LINK 0xc;		/* (12) */
    69fc:	0a 30       	R1 = R2;
    69fe:	ff e3 81 f0 	CALL 0x4b00 <__malloc_r>;
    6a02:	28 32       	P5 = R0;
    6a04:	45 0c       	CC = P5 == 0x0;
    6a06:	13 18       	IF CC JUMP 0x6a2c <__calloc_r+0x38>;
    6a08:	00 00       	NOP;
    6a0a:	00 00       	NOP;
    6a0c:	e2 63       	R2 = -0x4 (X);		/*		R2=0xfffffffc( -4) */
    6a0e:	28 e4 ff ff 	R0 = [P5 + -0x4];
    6a12:	82 54       	R2 = R2 & R0;
    6a14:	e2 67       	R2 += -0x4;		/* ( -4) */
    6a16:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
    6a18:	02 0a       	CC = R2 <= R0 (IU);
    6a1a:	1c 10       	IF !CC JUMP 0x6a52 <__calloc_r+0x5e>;
    6a1c:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
    6a1e:	0a 0a       	CC = R2 <= R1 (IU);
    6a20:	0b 14       	IF !CC JUMP 0x6a36 <__calloc_r+0x42> (BP);
    6a22:	55 32       	P2 = P5;
    6a24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6a26:	10 93       	[P2] = R0;
    6a28:	50 b0       	[P2 + 0x4] = R0;
    6a2a:	90 b0       	[P2 + 0x8] = R0;
    6a2c:	01 e8 00 00 	UNLINK;
    6a30:	45 30       	R0 = P5;
    6a32:	85 04       	(P5:5) = [SP++];
    6a34:	10 00       	RTS;
    6a36:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
    6a38:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6a3a:	0a 0a       	CC = R2 <= R1 (IU);
    6a3c:	28 93       	[P5] = R0;
    6a3e:	68 b0       	[P5 + 0x4] = R0;
    6a40:	12 1c       	IF CC JUMP 0x6a64 <__calloc_r+0x70> (BP);
    6a42:	21 61       	R1 = 0x24 (X);		/*		R1=0x24( 36) */
    6a44:	0a 08       	CC = R2 == R1;
    6a46:	a8 b0       	[P5 + 0x8] = R0;
    6a48:	e8 b0       	[P5 + 0xc] = R0;
    6a4a:	10 1c       	IF CC JUMP 0x6a6a <__calloc_r+0x76> (BP);
    6a4c:	55 32       	P2 = P5;
    6a4e:	82 6c       	P2 += 0x10;		/* ( 16) */
    6a50:	ea 2f       	JUMP.S 0x6a24 <__calloc_r+0x30>;
    6a52:	45 30       	R0 = P5;
    6a54:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    6a56:	ff e3 ab d5 	CALL 0x15ac <_memset>;
    6a5a:	01 e8 00 00 	UNLINK;
    6a5e:	45 30       	R0 = P5;
    6a60:	85 04       	(P5:5) = [SP++];
    6a62:	10 00       	RTS;
    6a64:	55 32       	P2 = P5;
    6a66:	42 6c       	P2 += 0x8;		/* (  8) */
    6a68:	de 2f       	JUMP.S 0x6a24 <__calloc_r+0x30>;
    6a6a:	55 32       	P2 = P5;
    6a6c:	28 b1       	[P5 + 0x10] = R0;
    6a6e:	68 b1       	[P5 + 0x14] = R0;
    6a70:	c2 6c       	P2 += 0x18;		/* ( 24) */
    6a72:	d9 2f       	JUMP.S 0x6a24 <__calloc_r+0x30>;

00006a74 <__close_r>:
    6a74:	c4 04       	[--SP] = (P5:4);
    6a76:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    6a7a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    6a7c:	00 e8 03 00 	LINK 0xc;		/* (12) */
    6a80:	20 32       	P4 = R0;
    6a82:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    6a86:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R2 || NOP;
    6a8a:	2a 93 00 00 
    6a8e:	ff e3 2d d5 	CALL 0x14e8 <__close>;
    6a92:	38 0c       	CC = R0 == -0x1;
    6a94:	05 18       	IF CC JUMP 0x6a9e <__close_r+0x2a>;
    6a96:	01 e8 00 00 	UNLINK;
    6a9a:	84 04       	(P5:4) = [SP++];
    6a9c:	10 00       	RTS;
    6a9e:	29 91       	R1 = [P5];
    6aa0:	01 0c       	CC = R1 == 0x0;
    6aa2:	fa 1b       	IF CC JUMP 0x6a96 <__close_r+0x22>;
    6aa4:	01 e8 00 00 	UNLINK;
    6aa8:	21 93       	[P4] = R1;
    6aaa:	84 04       	(P5:4) = [SP++];
    6aac:	10 00       	RTS;
	...

00006ab0 <__fclose_r>:
    6ab0:	fc 05       	[--SP] = (R7:7, P5:4);
    6ab2:	29 32       	P5 = R1;
    6ab4:	00 e8 03 00 	LINK 0xc;		/* (12) */
    6ab8:	20 32       	P4 = R0;
    6aba:	45 0c       	CC = P5 == 0x0;
    6abc:	0c 18       	IF CC JUMP 0x6ad4 <__fclose_r+0x24>;
    6abe:	44 0c       	CC = P4 == 0x0;
    6ac0:	07 18       	IF CC JUMP 0x6ace <__fclose_r+0x1e>;
    6ac2:	a0 a3       	R0 = [P4 + 0x38];
    6ac4:	00 0c       	CC = R0 == 0x0;
    6ac6:	46 18       	IF CC JUMP 0x6b52 <__fclose_r+0xa2>;
    6ac8:	00 00       	NOP;
    6aca:	00 00       	NOP;
    6acc:	00 00       	NOP;
    6ace:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6ad0:	00 0c       	CC = R0 == 0x0;
    6ad2:	07 10       	IF !CC JUMP 0x6ae0 <__fclose_r+0x30>;
    6ad4:	01 e8 00 00 	UNLINK;
    6ad8:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    6ada:	07 30       	R0 = R7;
    6adc:	bc 05       	(R7:7, P5:4) = [SP++];
    6ade:	10 00       	RTS;
    6ae0:	44 30       	R0 = P4;
    6ae2:	4d 30       	R1 = P5;
    6ae4:	ff e3 d0 eb 	CALL 0x4284 <__fflush_r>;
    6ae8:	ea ae       	P2 = [P5 + 0x2c];
    6aea:	38 30       	R7 = R0;
    6aec:	42 0c       	CC = P2 == 0x0;
    6aee:	09 18       	IF CC JUMP 0x6b00 <__fclose_r+0x50>;
    6af0:	00 00       	NOP;
    6af2:	00 00       	NOP;
    6af4:	44 30       	R0 = P4;
    6af6:	e9 a1       	R1 = [P5 + 0x1c];
    6af8:	62 00       	CALL (P2);
    6afa:	80 0c       	CC = R0 < 0x0;
    6afc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    6afe:	38 07       	IF CC R7 = R0;
    6b00:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6b02:	38 48       	CC = !BITTST (R0, 0x7);		/* bit  7 */
    6b04:	2b 10       	IF !CC JUMP 0x6b5a <__fclose_r+0xaa>;
    6b06:	00 00       	NOP;
    6b08:	00 00       	NOP;
    6b0a:	00 00       	NOP;
    6b0c:	29 a3       	R1 = [P5 + 0x30];
    6b0e:	01 0c       	CC = R1 == 0x0;
    6b10:	0c 18       	IF CC JUMP 0x6b28 <__fclose_r+0x78>;
    6b12:	55 30       	R2 = P5;
    6b14:	20 e1 40 00 	R0 = 0x40 (X);		/*		R0=0x40 <_.tmp>( 64) */
    6b18:	02 50       	R0 = R2 + R0;
    6b1a:	01 08       	CC = R1 == R0;
    6b1c:	04 18       	IF CC JUMP 0x6b24 <__fclose_r+0x74>;
    6b1e:	44 30       	R0 = P4;
    6b20:	ff e3 86 ed 	CALL 0x462c <__free_r>;
    6b24:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6b26:	28 b3       	[P5 + 0x30] = R0;
    6b28:	29 e4 11 00 	R1 = [P5 + 0x44];
    6b2c:	01 0c       	CC = R1 == 0x0;
    6b2e:	07 18       	IF CC JUMP 0x6b3c <__fclose_r+0x8c>;
    6b30:	44 30       	R0 = P4;
    6b32:	ff e3 7d ed 	CALL 0x462c <__free_r>;
    6b36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6b38:	28 e6 11 00 	[P5 + 0x44] = R0;
    6b3c:	ff e3 da ec 	CALL 0x44f0 <___sfp_lock_acquire>;
    6b40:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6b42:	a8 b5       	W[P5 + 0xc] = R0;
    6b44:	ff e3 de ec 	CALL 0x4500 <___sfp_lock_release>;
    6b48:	01 e8 00 00 	UNLINK;
    6b4c:	07 30       	R0 = R7;
    6b4e:	bc 05       	(R7:7, P5:4) = [SP++];
    6b50:	10 00       	RTS;
    6b52:	44 30       	R0 = P4;
    6b54:	ff e3 48 ec 	CALL 0x43e4 <___sinit>;
    6b58:	bb 2f       	JUMP.S 0x6ace <__fclose_r+0x1e>;
    6b5a:	29 a1       	R1 = [P5 + 0x10];
    6b5c:	44 30       	R0 = P4;
    6b5e:	ff e3 67 ed 	CALL 0x462c <__free_r>;
    6b62:	d5 2f       	JUMP.S 0x6b0c <__fclose_r+0x5c>;

00006b64 <_fclose>:
    6b64:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0xfc00 */
    6b68:	00 e8 00 00 	LINK 0x0;		/* (0) */
    6b6c:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    6b70:	82 ce 00 c2 	R1 = ROT R0 BY 0x0 || R0 = [P2] || NOP;
    6b74:	10 91 00 00 
    6b78:	01 e8 00 00 	UNLINK;
    6b7c:	ff e2 9a ff 	JUMP.L 0x6ab0 <__fclose_r>;

00006b80 <__fputwc_r>:
    6b80:	e4 05       	[--SP] = (R7:4, P5:4);
    6b82:	2a 32       	P5 = R2;
    6b84:	28 30       	R5 = R0;
    6b86:	00 e8 05 00 	LINK 0x14;		/* (20) */
    6b8a:	31 30       	R6 = R1;
    6b8c:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6b8e:	68 48       	CC = !BITTST (R0, 0xd);		/* bit 13 */
    6b90:	09 10       	IF !CC JUMP 0x6ba2 <__fputwc_r+0x22>;
    6b92:	00 00       	NOP;
    6b94:	68 4a       	BITSET (R0, 0xd);		/* bit 13 */
    6b96:	a8 b5       	W[P5 + 0xc] = R0;
    6b98:	28 e4 19 00 	R0 = [P5 + 0x64];
    6b9c:	68 4a       	BITSET (R0, 0xd);		/* bit 13 */
    6b9e:	28 e6 19 00 	[P5 + 0x64] = R0;
    6ba2:	ff e3 f5 ee 	CALL 0x498c <___locale_mb_cur_max>;
    6ba6:	08 0c       	CC = R0 == 0x1;
    6ba8:	53 18       	IF CC JUMP 0x6c4e <__fputwc_r+0xce>;
    6baa:	4d 30       	R1 = P5;
    6bac:	67 32       	P4 = FP;
    6bae:	20 e1 5c 00 	R0 = 0x5c (X);		/*		R0=0x5c( 92) */
    6bb2:	01 50       	R0 = R1 + R0;
    6bb4:	fc 6f       	P4 += -0x1;		/* ( -1) */
    6bb6:	f0 b0       	[SP + 0xc] = R0;
    6bb8:	4c 30       	R1 = P4;
    6bba:	05 30       	R0 = R5;
    6bbc:	16 30       	R2 = R6;
    6bbe:	00 e3 fd 05 	CALL 0x77b8 <__wcrtomb_r>;
    6bc2:	38 0c       	CC = R0 == -0x1;
    6bc4:	20 30       	R4 = R0;
    6bc6:	2f 18       	IF CC JUMP 0x6c24 <__fputwc_r+0xa4>;
    6bc8:	00 0c       	CC = R0 == 0x0;
    6bca:	35 18       	IF CC JUMP 0x6c34 <__fputwc_r+0xb4>;
    6bcc:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    6bce:	0f 20       	JUMP.S 0x6bec <__fputwc_r+0x6c>;
    6bd0:	00 00       	NOP;
    6bd2:	6a 91       	P2 = [P5];
    6bd4:	61 99       	R1 = B[P4] (X);
    6bd6:	11 9b       	B[P2] = R1;
    6bd8:	2b 91       	R3 = [P5];
    6bda:	0b 64       	R3 += 0x1;		/* (  1) */
    6bdc:	2b 93       	[P5] = R3;
    6bde:	0f 64       	R7 += 0x1;		/* (  1) */
    6be0:	a7 09       	CC = R7 < R4 (IU);
    6be2:	0c 6c       	P4 += 0x1;		/* (  1) */
    6be4:	28 10       	IF !CC JUMP 0x6c34 <__fputwc_r+0xb4>;
    6be6:	00 00       	NOP;
    6be8:	00 00       	NOP;
    6bea:	00 00       	NOP;
    6bec:	ab a0       	R3 = [P5 + 0x8];
    6bee:	fb 67       	R3 += -0x1;		/* ( -1) */
    6bf0:	83 0c       	CC = R3 < 0x0;
    6bf2:	ab b0       	[P5 + 0x8] = R3;
    6bf4:	ee 17       	IF !CC JUMP 0x6bd0 <__fputwc_r+0x50> (BP);
    6bf6:	a8 a1       	R0 = [P5 + 0x18];
    6bf8:	83 08       	CC = R3 < R0;
    6bfa:	22 18       	IF CC JUMP 0x6c3e <__fputwc_r+0xbe>;
    6bfc:	00 00       	NOP;
    6bfe:	00 00       	NOP;
    6c00:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    6c02:	6a 91       	P2 = [P5];
    6c04:	60 99       	R0 = B[P4] (X);
    6c06:	10 9b       	B[P2] = R0;
    6c08:	6a 91       	P2 = [P5];
    6c0a:	10 99       	R0 = B[P2] (Z);
    6c0c:	08 08       	CC = R0 == R1;
    6c0e:	2c 18       	IF CC JUMP 0x6c66 <__fputwc_r+0xe6>;
    6c10:	0a 6c       	P2 += 0x1;		/* (  1) */
    6c12:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6c14:	6a 93       	[P5] = P2;
    6c16:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
    6c18:	e3 1f       	IF CC JUMP 0x6bde <__fputwc_r+0x5e> (BP);
    6c1a:	01 e8 00 00 	UNLINK;
    6c1e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    6c20:	a4 05       	(R7:4, P5:4) = [SP++];
    6c22:	10 00       	RTS;
    6c24:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6c26:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
    6c28:	01 e8 00 00 	UNLINK;
    6c2c:	a8 b5       	W[P5 + 0xc] = R0;
    6c2e:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    6c30:	a4 05       	(R7:4, P5:4) = [SP++];
    6c32:	10 00       	RTS;
    6c34:	01 e8 00 00 	UNLINK;
    6c38:	06 30       	R0 = R6;
    6c3a:	a4 05       	(R7:4, P5:4) = [SP++];
    6c3c:	10 00       	RTS;
    6c3e:	21 99       	R1 = B[P4] (Z);
    6c40:	05 30       	R0 = R5;
    6c42:	55 30       	R2 = P5;
    6c44:	00 e3 3e 05 	CALL 0x76c0 <___swbuf_r>;
    6c48:	38 0c       	CC = R0 == -0x1;
    6c4a:	00 02       	R0 = CC;
    6c4c:	e5 2f       	JUMP.S 0x6c16 <__fputwc_r+0x96>;
    6c4e:	06 0d       	CC = R6 <= 0x0;
    6c50:	ad 1b       	IF CC JUMP 0x6baa <__fputwc_r+0x2a>;
    6c52:	20 e1 ff 00 	R0 = 0xff (X);		/*		R0=0xff(255) */
    6c56:	06 09       	CC = R6 <= R0;
    6c58:	a9 17       	IF !CC JUMP 0x6baa <__fputwc_r+0x2a> (BP);
    6c5a:	67 32       	P4 = FP;
    6c5c:	be e6 ff ff 	B[FP + -0x1] = R6;
    6c60:	0c 60       	R4 = 0x1 (X);		/*		R4=0x1(  1) */
    6c62:	fc 6f       	P4 += -0x1;		/* ( -1) */
    6c64:	b4 2f       	JUMP.S 0x6bcc <__fputwc_r+0x4c>;
    6c66:	05 30       	R0 = R5;
    6c68:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    6c6a:	55 30       	R2 = P5;
    6c6c:	00 e3 2a 05 	CALL 0x76c0 <___swbuf_r>;
    6c70:	38 0c       	CC = R0 == -0x1;
    6c72:	00 02       	R0 = CC;
    6c74:	d1 2f       	JUMP.S 0x6c16 <__fputwc_r+0x96>;
	...

00006c78 <_fputwc>:
    6c78:	f5 05       	[--SP] = (R7:6, P5:5);
    6c7a:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    6c7e:	0d e1 08 90 	P5.L = 0x9008;		/* (-28664)	P5=0x9008 <__impure_ptr> */
    6c82:	6a 91       	P2 = [P5];
    6c84:	00 e8 03 00 	LINK 0xc;		/* (12) */
    6c88:	30 30       	R6 = R0;
    6c8a:	39 30       	R7 = R1;
    6c8c:	42 0c       	CC = P2 == 0x0;
    6c8e:	08 18       	IF CC JUMP 0x6c9e <_fputwc+0x26>;
    6c90:	90 a3       	R0 = [P2 + 0x38];
    6c92:	00 0c       	CC = R0 == 0x0;
    6c94:	05 14       	IF !CC JUMP 0x6c9e <_fputwc+0x26> (BP);
    6c96:	42 30       	R0 = P2;
    6c98:	ff e3 a6 eb 	CALL 0x43e4 <___sinit>;
    6c9c:	6a 91       	P2 = [P5];
    6c9e:	01 e8 00 00 	UNLINK;
    6ca2:	0e 30       	R1 = R6;
    6ca4:	17 30       	R2 = R7;
    6ca6:	42 30       	R0 = P2;
    6ca8:	b5 05       	(R7:6, P5:5) = [SP++];
    6caa:	ff e2 6b ff 	JUMP.L 0x6b80 <__fputwc_r>;
	...

00006cb0 <__fstat_r>:
    6cb0:	c4 04       	[--SP] = (P5:4);
    6cb2:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9008 <__impure_ptr> */
    6cb6:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    6cb8:	00 e8 03 00 	LINK 0xc;		/* (12) */
    6cbc:	20 32       	P4 = R0;
    6cbe:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    6cc2:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R3 || NOP;
    6cc6:	2b 93 00 00 
    6cca:	0a 30       	R1 = R2;
    6ccc:	ff e3 16 d4 	CALL 0x14f8 <__fstat>;
    6cd0:	38 0c       	CC = R0 == -0x1;
    6cd2:	05 18       	IF CC JUMP 0x6cdc <__fstat_r+0x2c>;
    6cd4:	01 e8 00 00 	UNLINK;
    6cd8:	84 04       	(P5:4) = [SP++];
    6cda:	10 00       	RTS;
    6cdc:	29 91       	R1 = [P5];
    6cde:	01 0c       	CC = R1 == 0x0;
    6ce0:	fa 1b       	IF CC JUMP 0x6cd4 <__fstat_r+0x24>;
    6ce2:	01 e8 00 00 	UNLINK;
    6ce6:	21 93       	[P4] = R1;
    6ce8:	84 04       	(P5:4) = [SP++];
    6cea:	10 00       	RTS;

00006cec <___sfvwrite_r>:
    6cec:	e3 05       	[--SP] = (R7:4, P5:3);
    6cee:	1a 32       	P3 = R2;
    6cf0:	00 e8 06 00 	LINK 0x18;		/* (24) */
    6cf4:	78 b2       	[FP + 0x24] = R0;
    6cf6:	29 32       	P5 = R1;
    6cf8:	98 a0       	R0 = [P3 + 0x8];
    6cfa:	00 0c       	CC = R0 == 0x0;
    6cfc:	2c 18       	IF CC JUMP 0x6d54 <___sfvwrite_r+0x68>;
    6cfe:	00 00       	NOP;
    6d00:	00 00       	NOP;
    6d02:	41 60       	R1 = 0x8 (X);		/*		R1=0x8(  8) */
    6d04:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6d06:	48 54       	R1 = R0 & R1;
    6d08:	89 42       	R1 = R1.L (X);
    6d0a:	01 0c       	CC = R1 == 0x0;
    6d0c:	29 18       	IF CC JUMP 0x6d5e <___sfvwrite_r+0x72>;
    6d0e:	29 a1       	R1 = [P5 + 0x10];
    6d10:	01 0c       	CC = R1 == 0x0;
    6d12:	26 18       	IF CC JUMP 0x6d5e <___sfvwrite_r+0x72>;
    6d14:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    6d16:	48 54       	R1 = R0 & R1;
    6d18:	89 42       	R1 = R1.L (X);
    6d1a:	01 0c       	CC = R1 == 0x0;
    6d1c:	5c 91       	P4 = [P3];
    6d1e:	2f 1c       	IF CC JUMP 0x6d7c <___sfvwrite_r+0x90> (BP);
    6d20:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    6d22:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    6d24:	26 e1 00 04 	R6 = 0x400 (X);		/*		R6=0x400(1024) */
    6d28:	07 0c       	CC = R7 == 0x0;
    6d2a:	64 1c       	IF CC JUMP 0x6df2 <___sfvwrite_r+0x106> (BP);
    6d2c:	22 e1 00 04 	R2 = 0x400 (X);		/*		R2=0x400(1024) */
    6d30:	6a ae       	P2 = [P5 + 0x24];
    6d32:	17 0a       	CC = R7 <= R2 (IU);
    6d34:	07 07       	IF CC R0 = R7;
    6d36:	06 06       	IF !CC R0 = R6;
    6d38:	f0 b0       	[SP + 0xc] = R0;
    6d3a:	e9 a1       	R1 = [P5 + 0x1c];
    6d3c:	78 a2       	R0 = [FP + 0x24];
    6d3e:	15 30       	R2 = R5;
    6d40:	62 00       	CALL (P2);
    6d42:	00 0d       	CC = R0 <= 0x0;
    6d44:	5f 18       	IF CC JUMP 0x6e02 <___sfvwrite_r+0x116>;
    6d46:	45 51       	R5 = R5 + R0;
    6d48:	c7 53       	R7 = R7 - R0;
    6d4a:	9b a0       	R3 = [P3 + 0x8];
    6d4c:	03 52       	R0 = R3 - R0;
    6d4e:	00 0c       	CC = R0 == 0x0;
    6d50:	98 b0       	[P3 + 0x8] = R0;
    6d52:	eb 17       	IF !CC JUMP 0x6d28 <___sfvwrite_r+0x3c> (BP);
    6d54:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    6d56:	01 e8 00 00 	UNLINK;
    6d5a:	a3 05       	(R7:4, P5:3) = [SP++];
    6d5c:	10 00       	RTS;
    6d5e:	78 a2       	R0 = [FP + 0x24];
    6d60:	4d 30       	R1 = P5;
    6d62:	ff e3 55 e0 	CALL 0x2e0c <___swsetup_r>;
    6d66:	00 0c       	CC = R0 == 0x0;
    6d68:	4d 11       	IF !CC JUMP 0x7002 <___sfvwrite_r+0x316>;
    6d6a:	00 00       	NOP;
    6d6c:	00 00       	NOP;
    6d6e:	11 60       	R1 = 0x2 (X);		/*		R1=0x2(  2) */
    6d70:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6d72:	48 54       	R1 = R0 & R1;
    6d74:	89 42       	R1 = R1.L (X);
    6d76:	01 0c       	CC = R1 == 0x0;
    6d78:	5c 91       	P4 = [P3];
    6d7a:	d3 17       	IF !CC JUMP 0x6d20 <___sfvwrite_r+0x34> (BP);
    6d7c:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
    6d7e:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    6d80:	49 14       	IF !CC JUMP 0x6e12 <___sfvwrite_r+0x126> (BP);
    6d82:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    6d84:	07 0c       	CC = R7 == 0x0;
    6d86:	31 1c       	IF CC JUMP 0x6de8 <___sfvwrite_r+0xfc> (BP);
    6d88:	22 e1 00 02 	R2 = 0x200 (X);		/*		R2=0x200(512) */
    6d8c:	42 54       	R1 = R2 & R0;
    6d8e:	01 0c       	CC = R1 == 0x0;
    6d90:	ae a0       	R6 = [P5 + 0x8];
    6d92:	72 1c       	IF CC JUMP 0x6e76 <___sfvwrite_r+0x18a> (BP);
    6d94:	b7 09       	CC = R7 < R6 (IU);
    6d96:	06 32       	P0 = R6;
    6d98:	a5 1c       	IF CC JUMP 0x6ee2 <___sfvwrite_r+0x1f6> (BP);
    6d9a:	23 e1 80 04 	R3 = 0x480 (X);		/*		R3=0x480(1152) */
    6d9e:	43 54       	R1 = R3 & R0;
    6da0:	89 42       	R1 = R1.L (X);
    6da2:	01 0c       	CC = R1 == 0x0;
    6da4:	be 14       	IF !CC JUMP 0x6f20 <___sfvwrite_r+0x234> (BP);
    6da6:	82 ce 06 c8 	R4 = ROT R6 BY 0x0 || R0 = [P5] || NOP;
    6daa:	28 91 00 00 
    6dae:	17 32       	P2 = R7;
    6db0:	37 30       	R6 = R7;
    6db2:	50 30       	R2 = P0;
    6db4:	0d 30       	R1 = R5;
    6db6:	f8 bb       	[FP -0x4] = P0;
    6db8:	ea bb       	[FP -0x8] = P2;
    6dba:	00 e3 67 01 	CALL 0x7088 <_memmove>;
    6dbe:	69 91       	P1 = [P5];
    6dc0:	f8 b9       	P0 = [FP -0x4];
    6dc2:	aa a0       	R2 = [P5 + 0x8];
    6dc4:	22 53       	R4 = R2 - R4;
    6dc6:	ac b0       	[P5 + 0x8] = R4;
    6dc8:	01 5a       	P0 = P1 + P0;
    6dca:	68 93       	[P5] = P0;
    6dcc:	ea b9       	P2 = [FP -0x8];
    6dce:	52 30       	R2 = P2;
    6dd0:	9b a0       	R3 = [P3 + 0x8];
    6dd2:	b3 53       	R6 = R3 - R6;
    6dd4:	06 0c       	CC = R6 == 0x0;
    6dd6:	55 51       	R5 = R5 + R2;
    6dd8:	d7 53       	R7 = R7 - R2;
    6dda:	9e b0       	[P3 + 0x8] = R6;
    6ddc:	bc 1b       	IF CC JUMP 0x6d54 <___sfvwrite_r+0x68>;
    6dde:	00 00       	NOP;
    6de0:	00 00       	NOP;
    6de2:	07 0c       	CC = R7 == 0x0;
    6de4:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6de6:	d1 17       	IF !CC JUMP 0x6d88 <___sfvwrite_r+0x9c> (BP);
    6de8:	00 00       	NOP;
    6dea:	25 91       	R5 = [P4];
    6dec:	67 a0       	R7 = [P4 + 0x4];
    6dee:	44 6c       	P4 += 0x8;		/* (  8) */
    6df0:	ca 2f       	JUMP.S 0x6d84 <___sfvwrite_r+0x98>;
    6df2:	00 00       	NOP;
    6df4:	25 91       	R5 = [P4];
    6df6:	67 a0       	R7 = [P4 + 0x4];
    6df8:	44 6c       	P4 += 0x8;		/* (  8) */
    6dfa:	97 2f       	JUMP.S 0x6d28 <___sfvwrite_r+0x3c>;
    6dfc:	79 ae       	P1 = [FP + 0x24];
    6dfe:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
    6e00:	08 93       	[P1] = R0;
    6e02:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6e04:	30 4a       	BITSET (R0, 0x6);		/* bit  6 */
    6e06:	01 e8 00 00 	UNLINK;
    6e0a:	a8 b5       	W[P5 + 0xc] = R0;
    6e0c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    6e0e:	a3 05       	(R7:4, P5:3) = [SP++];
    6e10:	10 00       	RTS;
    6e12:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    6e14:	04 60       	R4 = 0x0 (X);		/*		R4=0x0(  0) */
    6e16:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    6e18:	07 0c       	CC = R7 == 0x0;
    6e1a:	29 1c       	IF CC JUMP 0x6e6c <___sfvwrite_r+0x180> (BP);
    6e1c:	40 0c       	CC = P0 == 0x0;
    6e1e:	75 18       	IF CC JUMP 0x6f08 <___sfvwrite_r+0x21c>;
    6e20:	00 00       	NOP;
    6e22:	3d 0a       	CC = R5 <= R7 (IU);
    6e24:	1d 07       	IF CC R3 = R5;
    6e26:	1f 06       	IF !CC R3 = R7;
    6e28:	28 91       	R0 = [P5];
    6e2a:	29 a1       	R1 = [P5 + 0x10];
    6e2c:	08 0a       	CC = R0 <= R1 (IU);
    6e2e:	ae a0       	R6 = [P5 + 0x8];
    6e30:	6a a1       	R2 = [P5 + 0x14];
    6e32:	04 1c       	IF CC JUMP 0x6e3a <___sfvwrite_r+0x14e> (BP);
    6e34:	96 51       	R6 = R6 + R2;
    6e36:	33 09       	CC = R3 <= R6;
    6e38:	b0 10       	IF !CC JUMP 0x6f98 <___sfvwrite_r+0x2ac>;
    6e3a:	93 08       	CC = R3 < R2;
    6e3c:	35 1c       	IF CC JUMP 0x6ea6 <___sfvwrite_r+0x1ba> (BP);
    6e3e:	6a ae       	P2 = [P5 + 0x24];
    6e40:	f2 b0       	[SP + 0xc] = R2;
    6e42:	f8 bb       	[FP -0x4] = P0;
    6e44:	e9 a1       	R1 = [P5 + 0x1c];
    6e46:	78 a2       	R0 = [FP + 0x24];
    6e48:	14 30       	R2 = R4;
    6e4a:	62 00       	CALL (P2);
    6e4c:	00 0d       	CC = R0 <= 0x0;
    6e4e:	30 30       	R6 = R0;
    6e50:	f8 b9       	P0 = [FP -0x4];
    6e52:	d8 1b       	IF CC JUMP 0x6e02 <___sfvwrite_r+0x116>;
    6e54:	75 53       	R5 = R5 - R6;
    6e56:	05 0c       	CC = R5 == 0x0;
    6e58:	3d 18       	IF CC JUMP 0x6ed2 <___sfvwrite_r+0x1e6>;
    6e5a:	34 51       	R4 = R4 + R6;
    6e5c:	f7 53       	R7 = R7 - R6;
    6e5e:	9b a0       	R3 = [P3 + 0x8];
    6e60:	b3 53       	R6 = R3 - R6;
    6e62:	06 0c       	CC = R6 == 0x0;
    6e64:	9e b0       	[P3 + 0x8] = R6;
    6e66:	77 1b       	IF CC JUMP 0x6d54 <___sfvwrite_r+0x68>;
    6e68:	07 0c       	CC = R7 == 0x0;
    6e6a:	d9 17       	IF !CC JUMP 0x6e1c <___sfvwrite_r+0x130> (BP);
    6e6c:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    6e6e:	24 91       	R4 = [P4];
    6e70:	67 a0       	R7 = [P4 + 0x4];
    6e72:	44 6c       	P4 += 0x8;		/* (  8) */
    6e74:	d2 2f       	JUMP.S 0x6e18 <___sfvwrite_r+0x12c>;
    6e76:	00 00       	NOP;
    6e78:	28 91       	R0 = [P5];
    6e7a:	29 a1       	R1 = [P5 + 0x10];
    6e7c:	08 0a       	CC = R0 <= R1 (IU);
    6e7e:	05 1c       	IF CC JUMP 0x6e88 <___sfvwrite_r+0x19c> (BP);
    6e80:	37 0a       	CC = R7 <= R6 (IU);
    6e82:	9b 10       	IF !CC JUMP 0x6fb8 <___sfvwrite_r+0x2cc>;
    6e84:	00 00       	NOP;
    6e86:	00 00       	NOP;
    6e88:	00 00       	NOP;
    6e8a:	6a a1       	R2 = [P5 + 0x14];
    6e8c:	97 09       	CC = R7 < R2 (IU);
    6e8e:	30 1c       	IF CC JUMP 0x6eee <___sfvwrite_r+0x202> (BP);
    6e90:	6a ae       	P2 = [P5 + 0x24];
    6e92:	f2 b0       	[SP + 0xc] = R2;
    6e94:	e9 a1       	R1 = [P5 + 0x1c];
    6e96:	78 a2       	R0 = [FP + 0x24];
    6e98:	15 30       	R2 = R5;
    6e9a:	62 00       	CALL (P2);
    6e9c:	00 0d       	CC = R0 <= 0x0;
    6e9e:	30 30       	R6 = R0;
    6ea0:	b1 1b       	IF CC JUMP 0x6e02 <___sfvwrite_r+0x116>;
    6ea2:	10 32       	P2 = R0;
    6ea4:	95 2f       	JUMP.S 0x6dce <___sfvwrite_r+0xe2>;
    6ea6:	82 ce 03 c4 	R2 = ROT R3 BY 0x0 || [FP -0x8] = R3 || NOP;
    6eaa:	e3 bb 00 00 
    6eae:	0c 30       	R1 = R4;
    6eb0:	f8 bb       	[FP -0x4] = P0;
    6eb2:	00 e3 eb 00 	CALL 0x7088 <_memmove>;
    6eb6:	e3 b9       	R3 = [FP -0x8];
    6eb8:	a9 a0       	R1 = [P5 + 0x8];
    6eba:	82 ce 03 cc 	R6 = ROT R3 BY 0x0 || R2 = [P5] || NOP;
    6ebe:	2a 91 00 00 
    6ec2:	19 52       	R0 = R1 - R3;
    6ec4:	75 53       	R5 = R5 - R6;
    6ec6:	a8 b0       	[P5 + 0x8] = R0;
    6ec8:	05 0c       	CC = R5 == 0x0;
    6eca:	1a 50       	R0 = R2 + R3;
    6ecc:	28 93       	[P5] = R0;
    6ece:	f8 b9       	P0 = [FP -0x4];
    6ed0:	c5 17       	IF !CC JUMP 0x6e5a <___sfvwrite_r+0x16e> (BP);
    6ed2:	78 a2       	R0 = [FP + 0x24];
    6ed4:	4d 30       	R1 = P5;
    6ed6:	ff e3 d7 e9 	CALL 0x4284 <__fflush_r>;
    6eda:	00 0c       	CC = R0 == 0x0;
    6edc:	93 13       	IF !CC JUMP 0x6e02 <___sfvwrite_r+0x116>;
    6ede:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    6ee0:	bd 2f       	JUMP.S 0x6e5a <___sfvwrite_r+0x16e>;
    6ee2:	27 30       	R4 = R7;
    6ee4:	28 91       	R0 = [P5];
    6ee6:	17 32       	P2 = R7;
    6ee8:	37 30       	R6 = R7;
    6eea:	07 32       	P0 = R7;
    6eec:	63 2f       	JUMP.S 0x6db2 <___sfvwrite_r+0xc6>;
    6eee:	0d 30       	R1 = R5;
    6ef0:	17 30       	R2 = R7;
    6ef2:	00 e3 cb 00 	CALL 0x7088 <_memmove>;
    6ef6:	ab a0       	R3 = [P5 + 0x8];
    6ef8:	3b 52       	R0 = R3 - R7;
    6efa:	29 91       	R1 = [P5];
    6efc:	a8 b0       	[P5 + 0x8] = R0;
    6efe:	39 50       	R0 = R1 + R7;
    6f00:	37 30       	R6 = R7;
    6f02:	28 93       	[P5] = R0;
    6f04:	17 32       	P2 = R7;
    6f06:	64 2f       	JUMP.S 0x6dce <___sfvwrite_r+0xe2>;
    6f08:	04 30       	R0 = R4;
    6f0a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    6f0c:	17 30       	R2 = R7;
    6f0e:	ff e3 a7 f0 	CALL 0x505c <_memchr>;
    6f12:	00 0c       	CC = R0 == 0x0;
    6f14:	73 18       	IF CC JUMP 0x6ffa <___sfvwrite_r+0x30e>;
    6f16:	28 30       	R5 = R0;
    6f18:	0d 64       	R5 += 0x1;		/* (  1) */
    6f1a:	65 53       	R5 = R5 - R4;
    6f1c:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    6f1e:	82 2f       	JUMP.S 0x6e22 <___sfvwrite_r+0x136>;
    6f20:	00 00       	NOP;
    6f22:	29 a1       	R1 = [P5 + 0x10];
    6f24:	09 32       	P1 = R1;
    6f26:	68 ad       	P0 = [P5 + 0x14];
    6f28:	6a 91       	P2 = [P5];
    6f2a:	00 5c       	P0 = P0 + (P0 << 0x1);
    6f2c:	50 30       	R2 = P0;
    6f2e:	0a 44       	P2 -= P1;
    6f30:	82 c6 0a 8d 	R6 = R2 >> 0x1f;
    6f34:	62 30       	R4 = P2;
    6f36:	96 50       	R2 = R6 + R2;
    6f38:	0c 64       	R4 += 0x1;		/* (  1) */
    6f3a:	82 c6 fa 0d 	R6 = R2 >>> 0x1;
    6f3e:	3c 51       	R4 = R4 + R7;
    6f40:	a6 09       	CC = R6 < R4 (IU);
    6f42:	16 30       	R2 = R6;
    6f44:	03 14       	IF !CC JUMP 0x6f4a <___sfvwrite_r+0x25e> (BP);
    6f46:	34 30       	R6 = R4;
    6f48:	14 30       	R2 = R4;
    6f4a:	23 e1 00 04 	R3 = 0x400 (X);		/*		R3=0x400(1024) */
    6f4e:	03 54       	R0 = R3 & R0;
    6f50:	00 0c       	CC = R0 == 0x0;
    6f52:	78 a2       	R0 = [FP + 0x24];
    6f54:	44 1c       	IF CC JUMP 0x6fdc <___sfvwrite_r+0x2f0> (BP);
    6f56:	0a 30       	R1 = R2;
    6f58:	ea bb       	[FP -0x8] = P2;
    6f5a:	ff e3 d3 ed 	CALL 0x4b00 <__malloc_r>;
    6f5e:	00 0c       	CC = R0 == 0x0;
    6f60:	20 30       	R4 = R0;
    6f62:	ea b9       	P2 = [FP -0x8];
    6f64:	4c 1b       	IF CC JUMP 0x6dfc <___sfvwrite_r+0x110>;
    6f66:	00 00       	NOP;
    6f68:	52 30       	R2 = P2;
    6f6a:	ea bb       	[FP -0x8] = P2;
    6f6c:	29 a1       	R1 = [P5 + 0x10];
    6f6e:	ff e3 e5 f0 	CALL 0x5138 <_memcpy>;
    6f72:	a8 a9       	R0 = W[P5 + 0xc] (X);
    6f74:	21 e1 7f fb 	R1 = -0x481 (X);		/*		R1=0xfffffb7f(-1153) */
    6f78:	08 54       	R0 = R0 & R1;
    6f7a:	38 4a       	BITSET (R0, 0x7);		/* bit  7 */
    6f7c:	a8 b5       	W[P5 + 0xc] = R0;
    6f7e:	ea b9       	P2 = [FP -0x8];
    6f80:	4a 30       	R1 = P2;
    6f82:	0c 50       	R0 = R4 + R1;
    6f84:	6e b1       	[P5 + 0x14] = R6;
    6f86:	8e 53       	R6 = R6 - R1;
    6f88:	2c b1       	[P5 + 0x10] = R4;
    6f8a:	ae b0       	[P5 + 0x8] = R6;
    6f8c:	28 93       	[P5] = R0;
    6f8e:	27 30       	R4 = R7;
    6f90:	17 32       	P2 = R7;
    6f92:	37 30       	R6 = R7;
    6f94:	07 32       	P0 = R7;
    6f96:	0e 2f       	JUMP.S 0x6db2 <___sfvwrite_r+0xc6>;
    6f98:	0c 30       	R1 = R4;
    6f9a:	16 30       	R2 = R6;
    6f9c:	f8 bb       	[FP -0x4] = P0;
    6f9e:	00 e3 75 00 	CALL 0x7088 <_memmove>;
    6fa2:	2a 91       	R2 = [P5];
    6fa4:	32 50       	R0 = R2 + R6;
    6fa6:	28 93       	[P5] = R0;
    6fa8:	4d 30       	R1 = P5;
    6faa:	78 a2       	R0 = [FP + 0x24];
    6fac:	ff e3 6c e9 	CALL 0x4284 <__fflush_r>;
    6fb0:	00 0c       	CC = R0 == 0x0;
    6fb2:	f8 b9       	P0 = [FP -0x4];
    6fb4:	50 1f       	IF CC JUMP 0x6e54 <___sfvwrite_r+0x168> (BP);
    6fb6:	26 2f       	JUMP.S 0x6e02 <___sfvwrite_r+0x116>;
    6fb8:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x8] = R6 || NOP;
    6fbc:	e6 bb 00 00 
    6fc0:	16 30       	R2 = R6;
    6fc2:	00 e3 63 00 	CALL 0x7088 <_memmove>;
    6fc6:	2a 91       	R2 = [P5];
    6fc8:	32 50       	R0 = R2 + R6;
    6fca:	28 93       	[P5] = R0;
    6fcc:	4d 30       	R1 = P5;
    6fce:	78 a2       	R0 = [FP + 0x24];
    6fd0:	ff e3 5a e9 	CALL 0x4284 <__fflush_r>;
    6fd4:	00 0c       	CC = R0 == 0x0;
    6fd6:	ea b9       	P2 = [FP -0x8];
    6fd8:	fb 1e       	IF CC JUMP 0x6dce <___sfvwrite_r+0xe2> (BP);
    6fda:	14 2f       	JUMP.S 0x6e02 <___sfvwrite_r+0x116>;
    6fdc:	ea bb       	[FP -0x8] = P2;
    6fde:	00 e3 e3 00 	CALL 0x71a4 <__realloc_r>;
    6fe2:	00 0c       	CC = R0 == 0x0;
    6fe4:	20 30       	R4 = R0;
    6fe6:	ea b9       	P2 = [FP -0x8];
    6fe8:	cc 17       	IF !CC JUMP 0x6f80 <___sfvwrite_r+0x294> (BP);
    6fea:	78 a2       	R0 = [FP + 0x24];
    6fec:	29 a1       	R1 = [P5 + 0x10];
    6fee:	ff e3 1f eb 	CALL 0x462c <__free_r>;
    6ff2:	7a ae       	P2 = [FP + 0x24];
    6ff4:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
    6ff6:	10 93       	[P2] = R0;
    6ff8:	05 2f       	JUMP.S 0x6e02 <___sfvwrite_r+0x116>;
    6ffa:	2f 30       	R5 = R7;
    6ffc:	0d 64       	R5 += 0x1;		/* (  1) */
    6ffe:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    7000:	11 2f       	JUMP.S 0x6e22 <___sfvwrite_r+0x136>;
    7002:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    7004:	a9 2e       	JUMP.S 0x6d56 <___sfvwrite_r+0x6a>;
	...

00007008 <__isatty_r>:
    7008:	c4 04       	[--SP] = (P5:4);
    700a:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    700e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    7010:	00 e8 03 00 	LINK 0xc;		/* (12) */
    7014:	20 32       	P4 = R0;
    7016:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    701a:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R2 || NOP;
    701e:	2a 93 00 00 
    7022:	ff e3 83 d2 	CALL 0x1528 <__isatty>;
    7026:	38 0c       	CC = R0 == -0x1;
    7028:	05 18       	IF CC JUMP 0x7032 <__isatty_r+0x2a>;
    702a:	01 e8 00 00 	UNLINK;
    702e:	84 04       	(P5:4) = [SP++];
    7030:	10 00       	RTS;
    7032:	29 91       	R1 = [P5];
    7034:	01 0c       	CC = R1 == 0x0;
    7036:	fa 1b       	IF CC JUMP 0x702a <__isatty_r+0x22>;
    7038:	01 e8 00 00 	UNLINK;
    703c:	21 93       	[P4] = R1;
    703e:	84 04       	(P5:4) = [SP++];
    7040:	10 00       	RTS;
	...

00007044 <__lseek_r>:
    7044:	c4 04       	[--SP] = (P5:4);
    7046:	00 e8 03 00 	LINK 0xc;		/* (12) */
    704a:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    704e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    7050:	20 32       	P4 = R0;
    7052:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    7056:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R3 || NOP;
    705a:	2b 93 00 00 
    705e:	82 ce 02 c2 	R1 = ROT R2 BY 0x0 || R2 = [FP + 0x1c] || NOP;
    7062:	fa a1 00 00 
    7066:	ff e3 51 d2 	CALL 0x1508 <__lseek>;
    706a:	38 0c       	CC = R0 == -0x1;
    706c:	05 18       	IF CC JUMP 0x7076 <__lseek_r+0x32>;
    706e:	01 e8 00 00 	UNLINK;
    7072:	84 04       	(P5:4) = [SP++];
    7074:	10 00       	RTS;
    7076:	29 91       	R1 = [P5];
    7078:	01 0c       	CC = R1 == 0x0;
    707a:	fa 1b       	IF CC JUMP 0x706e <__lseek_r+0x2a>;
    707c:	01 e8 00 00 	UNLINK;
    7080:	21 93       	[P4] = R1;
    7082:	84 04       	(P5:4) = [SP++];
    7084:	10 00       	RTS;
	...

00007088 <_memmove>:
    7088:	fd 05       	[--SP] = (R7:7, P5:5);
    708a:	08 0a       	CC = R0 <= R1 (IU);
    708c:	00 e8 00 00 	LINK 0x0;		/* (0) */
    7090:	17 1c       	IF CC JUMP 0x70be <_memmove+0x36> (BP);
    7092:	d1 50       	R3 = R1 + R2;
    7094:	98 09       	CC = R0 < R3 (IU);
    7096:	0b 32       	P1 = R3;
    7098:	13 14       	IF !CC JUMP 0x70be <_memmove+0x36> (BP);
    709a:	02 0c       	CC = R2 == 0x0;
    709c:	50 50       	R1 = R0 + R2;
    709e:	0c 18       	IF CC JUMP 0x70b6 <_memmove+0x2e>;
    70a0:	11 32       	P2 = R1;
    70a2:	d2 43       	R2 =~ R2;
    70a4:	f9 6f       	P1 += -0x1;		/* ( -1) */
    70a6:	91 50       	R2 = R1 + R2;
    70a8:	fa 6f       	P2 += -0x1;		/* ( -1) */
    70aa:	00 00       	NOP;
    70ac:	c9 98       	R1 = B[P1--] (X);
    70ae:	91 9a       	B[P2--] = R1;
    70b0:	7a 30       	R7 = P2;
    70b2:	17 08       	CC = R7 == R2;
    70b4:	fb 17       	IF !CC JUMP 0x70aa <_memmove+0x22> (BP);
    70b6:	01 e8 00 00 	UNLINK;
    70ba:	bd 05       	(R7:7, P5:5) = [SP++];
    70bc:	10 00       	RTS;
    70be:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    70c0:	1a 0a       	CC = R2 <= R3 (IU);
    70c2:	12 14       	IF !CC JUMP 0x70e6 <_memmove+0x5e> (BP);
    70c4:	09 32       	P1 = R1;
    70c6:	10 32       	P2 = R0;
    70c8:	02 0c       	CC = R2 == 0x0;
    70ca:	f6 1b       	IF CC JUMP 0x70b6 <_memmove+0x2e>;
    70cc:	00 00       	NOP;
    70ce:	4a 30       	R1 = P2;
    70d0:	91 50       	R2 = R1 + R2;
    70d2:	00 00       	NOP;
    70d4:	49 98       	R1 = B[P1++] (X);
    70d6:	11 9a       	B[P2++] = R1;
    70d8:	5a 30       	R3 = P2;
    70da:	13 08       	CC = R3 == R2;
    70dc:	fb 17       	IF !CC JUMP 0x70d2 <_memmove+0x4a> (BP);
    70de:	01 e8 00 00 	UNLINK;
    70e2:	bd 05       	(R7:7, P5:5) = [SP++];
    70e4:	10 00       	RTS;
    70e6:	c1 57       	R7 = R1 | R0;
    70e8:	1b 60       	R3 = 0x3 (X);		/*		R3=0x3(  3) */
    70ea:	df 54       	R3 = R7 & R3;
    70ec:	03 0c       	CC = R3 == 0x0;
    70ee:	33 14       	IF !CC JUMP 0x7154 <_memmove+0xcc> (BP);
    70f0:	3a 30       	R7 = R2;
    70f2:	87 67       	R7 += -0x10;		/* (-16) */
    70f4:	27 4e       	R7 >>= 0x4;
    70f6:	2f 32       	P5 = R7;
    70f8:	01 32       	P0 = R1;
    70fa:	10 32       	P2 = R0;
    70fc:	0d 6c       	P5 += 0x1;		/* (  1) */
    70fe:	b2 e0 0b 50 	LSETUP(0x7102 <_memmove+0x7a>, 0x7114 <_memmove+0x8c>) LC1 = P5;
    7102:	03 91       	R3 = [P0];
    7104:	13 93       	[P2] = R3;
    7106:	43 a0       	R3 = [P0 + 0x4];
    7108:	53 b0       	[P2 + 0x4] = R3;
    710a:	83 a0       	R3 = [P0 + 0x8];
    710c:	93 b0       	[P2 + 0x8] = R3;
    710e:	c3 a0       	R3 = [P0 + 0xc];
    7110:	d3 b0       	[P2 + 0xc] = R3;
    7112:	80 6c       	P0 += 0x10;		/* ( 16) */
    7114:	82 6c       	P2 += 0x10;		/* ( 16) */
    7116:	1f 30       	R3 = R7;
    7118:	0b 64       	R3 += 0x1;		/* (  1) */
    711a:	23 4f       	R3 <<= 0x4;
    711c:	d8 51       	R7 = R0 + R3;
    711e:	59 50       	R1 = R1 + R3;
    7120:	7b 60       	R3 = 0xf (X);		/*		R3=0xf( 15) */
    7122:	da 54       	R3 = R2 & R3;
    7124:	1b 0e       	CC = R3 <= 0x3 (IU);
    7126:	17 32       	P2 = R7;
    7128:	09 32       	P1 = R1;
    712a:	18 18       	IF CC JUMP 0x715a <_memmove+0xd2>;
    712c:	e3 67       	R3 += -0x4;		/* ( -4) */
    712e:	82 c6 f3 8f 	R7 = R3 >> 0x2;
    7132:	07 32       	P0 = R7;
    7134:	6a 32       	P5 = P2;
    7136:	08 6c       	P0 += 0x1;		/* (  1) */
    7138:	b2 e0 03 00 	LSETUP(0x713c <_memmove+0xb4>, 0x713e <_memmove+0xb6>) LC1 = P0;
    713c:	0b 90       	R3 = [P1++];
    713e:	2b 92       	[P5++] = R3;
    7140:	1f 30       	R3 = R7;
    7142:	0b 64       	R3 += 0x1;		/* (  1) */
    7144:	13 4f       	R3 <<= 0x2;
    7146:	03 32       	P0 = R3;
    7148:	1f 60       	R7 = 0x3 (X);		/*		R7=0x3(  3) */
    714a:	59 50       	R1 = R1 + R3;
    714c:	ba 54       	R2 = R2 & R7;
    714e:	09 32       	P1 = R1;
    7150:	82 5a       	P2 = P2 + P0;
    7152:	bb 2f       	JUMP.S 0x70c8 <_memmove+0x40>;
    7154:	10 32       	P2 = R0;
    7156:	09 32       	P1 = R1;
    7158:	bb 2f       	JUMP.S 0x70ce <_memmove+0x46>;
    715a:	13 30       	R2 = R3;
    715c:	b6 2f       	JUMP.S 0x70c8 <_memmove+0x40>;
	...

00007160 <__read_r>:
    7160:	c4 04       	[--SP] = (P5:4);
    7162:	00 e8 03 00 	LINK 0xc;		/* (12) */
    7166:	4d e1 00 00 	P5.H = 0x0;		/* (  0)	P5=0x9904 <_errno> */
    716a:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    716c:	20 32       	P4 = R0;
    716e:	0d e1 04 99 	P5.L = 0x9904;		/* (-26364)	P5=0x9904 <_errno> */
    7172:	82 ce 01 c0 	R0 = ROT R1 BY 0x0 || [P5] = R3 || NOP;
    7176:	2b 93 00 00 
    717a:	82 ce 02 c2 	R1 = ROT R2 BY 0x0 || R2 = [FP + 0x1c] || NOP;
    717e:	fa a1 00 00 
    7182:	ff e3 9b d1 	CALL 0x14b8 <__read>;
    7186:	38 0c       	CC = R0 == -0x1;
    7188:	05 18       	IF CC JUMP 0x7192 <__read_r+0x32>;
    718a:	01 e8 00 00 	UNLINK;
    718e:	84 04       	(P5:4) = [SP++];
    7190:	10 00       	RTS;
    7192:	29 91       	R1 = [P5];
    7194:	01 0c       	CC = R1 == 0x0;
    7196:	fa 1b       	IF CC JUMP 0x718a <__read_r+0x2a>;
    7198:	01 e8 00 00 	UNLINK;
    719c:	21 93       	[P4] = R1;
    719e:	84 04       	(P5:4) = [SP++];
    71a0:	10 00       	RTS;
	...

000071a4 <__realloc_r>:
    71a4:	e3 05       	[--SP] = (R7:4, P5:3);
    71a6:	29 32       	P5 = R1;
    71a8:	00 e8 05 00 	LINK 0x14;		/* (20) */
    71ac:	20 32       	P4 = R0;
    71ae:	2a 30       	R5 = R2;
    71b0:	45 0c       	CC = P5 == 0x0;
    71b2:	d7 18       	IF CC JUMP 0x7360 <__realloc_r+0x1bc>;
    71b4:	ff e3 14 f0 	CALL 0x51dc <___malloc_lock>;
    71b8:	05 30       	R0 = R5;
    71ba:	58 64       	R0 += 0xb;		/* ( 11) */
    71bc:	b1 60       	R1 = 0x16 (X);		/*		R1=0x16( 22) */
    71be:	55 30       	R2 = P5;
    71c0:	2b e4 ff ff 	R3 = [P5 + -0x4];
    71c4:	e6 63       	R6 = -0x4 (X);		/*		R6=0xfffffffc( -4) */
    71c6:	08 0a       	CC = R0 <= R1 (IU);
    71c8:	c2 67       	R2 += -0x8;		/* ( -8) */
    71ca:	b3 55       	R6 = R3 & R6;
    71cc:	50 14       	IF !CC JUMP 0x726c <__realloc_r+0xc8> (BP);
    71ce:	30 e1 10 00 	I0 = 0x10 (X);		/*		I0=0x10 <_.d1>( 16) */
    71d2:	87 60       	R7 = 0x10 (X);		/*		R7=0x10( 16) */
    71d4:	3d 0a       	CC = R5 <= R7 (IU);
    71d6:	50 10       	IF !CC JUMP 0x7276 <__realloc_r+0xd2>;
    71d8:	80 30       	R0 = I0;
    71da:	86 08       	CC = R6 < R0;
    71dc:	55 14       	IF !CC JUMP 0x7286 <__realloc_r+0xe2> (BP);
    71de:	72 50       	R1 = R2 + R6;
    71e0:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    71e4:	01 32       	P0 = R1;
    71e6:	0a e1 b4 94 	P2.L = 0x94b4;		/* (-27468)	P2=0x94b4 <___malloc_av_> */
    71ea:	93 ac       	P3 = [P2 + 0x8];
    71ec:	43 08       	CC = P3 == P0;
    71ee:	bf 18       	IF CC JUMP 0x736c <__realloc_r+0x1c8>;
    71f0:	00 00       	NOP;
    71f2:	00 00       	NOP;
    71f4:	00 00       	NOP;
    71f6:	40 a0       	R0 = [P0 + 0x4];
    71f8:	08 30       	R1 = R0;
    71fa:	01 4c       	BITCLR (R1, 0x0);		/* bit  0 */
    71fc:	09 32       	P1 = R1;
    71fe:	48 5a       	P1 = P0 + P1;
    7200:	49 a0       	R1 = [P1 + 0x4];
    7202:	01 48       	CC = !BITTST (R1, 0x0);		/* bit  0 */
    7204:	59 1c       	IF CC JUMP 0x72b6 <__realloc_r+0x112> (BP);
    7206:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    7208:	00 68       	P0 = 0x0 (X);		/*		P0=0x0(  0) */
    720a:	03 48       	CC = !BITTST (R3, 0x0);		/* bit  0 */
    720c:	79 10       	IF !CC JUMP 0x72fe <__realloc_r+0x15a>;
    720e:	00 00       	NOP;
    7210:	e3 63       	R3 = -0x4 (X);		/*		R3=0xfffffffc( -4) */
    7212:	40 0c       	CC = P0 == 0x0;
    7214:	29 e4 fe ff 	R1 = [P5 + -0x8];
    7218:	4a 52       	R1 = R2 - R1;
    721a:	09 32       	P1 = R1;
    721c:	49 a0       	R1 = [P1 + 0x4];
    721e:	4b 54       	R1 = R3 & R1;
    7220:	71 50       	R1 = R1 + R6;
    7222:	6a 18       	IF CC JUMP 0x72f6 <__realloc_r+0x152>;
    7224:	58 08       	CC = P0 == P3;
    7226:	08 51       	R4 = R0 + R1;
    7228:	19 32       	P3 = R1;
    722a:	fb 18       	IF CC JUMP 0x7420 <__realloc_r+0x27c>;
    722c:	80 30       	R0 = I0;
    722e:	84 08       	CC = R4 < R0;
    7230:	64 1c       	IF CC JUMP 0x72f8 <__realloc_r+0x154> (BP);
    7232:	c2 ac       	P2 = [P0 + 0xc];
    7234:	80 ac       	P0 = [P0 + 0x8];
    7236:	16 30       	R2 = R6;
    7238:	e2 67       	R2 += -0x4;		/* ( -4) */
    723a:	21 61       	R1 = 0x24 (X);		/*		R1=0x24( 36) */
    723c:	c2 bc       	[P0 + 0xc] = P2;
    723e:	90 bc       	[P2 + 0x8] = P0;
    7240:	88 ac       	P0 = [P1 + 0x8];
    7242:	ca ac       	P2 = [P1 + 0xc];
    7244:	69 30       	R5 = P1;
    7246:	0a 0a       	CC = R2 <= R1 (IU);
    7248:	45 64       	R5 += 0x8;		/* (  8) */
    724a:	c2 bc       	[P0 + 0xc] = P2;
    724c:	90 bc       	[P2 + 0x8] = P0;
    724e:	2d 11       	IF !CC JUMP 0x74a8 <__realloc_r+0x304>;
    7250:	98 60       	R0 = 0x13 (X);		/*		R0=0x13( 19) */
    7252:	02 0a       	CC = R2 <= R0 (IU);
    7254:	c5 1c       	IF CC JUMP 0x73de <__realloc_r+0x23a> (BP);
    7256:	28 91       	R0 = [P5];
    7258:	88 b0       	[P1 + 0x8] = R0;
    725a:	d9 60       	R1 = 0x1b (X);		/*		R1=0x1b( 27) */
    725c:	68 a0       	R0 = [P5 + 0x4];
    725e:	0a 0a       	CC = R2 <= R1 (IU);
    7260:	c8 b0       	[P1 + 0xc] = R0;
    7262:	38 15       	IF !CC JUMP 0x74d2 <__realloc_r+0x32e> (BP);
    7264:	51 32       	P2 = P1;
    7266:	82 6c       	P2 += 0x10;		/* ( 16) */
    7268:	45 6c       	P5 += 0x8;		/* (  8) */
    726a:	bb 20       	JUMP.S 0x73e0 <__realloc_r+0x23c>;
    726c:	c7 63       	R7 = -0x8 (X);		/*		R7=0xfffffff8( -8) */
    726e:	f8 55       	R7 = R0 & R7;
    7270:	87 0c       	CC = R7 < 0x0;
    7272:	07 34       	I0 = R7;
    7274:	b0 17       	IF !CC JUMP 0x71d4 <__realloc_r+0x30> (BP);
    7276:	60 60       	R0 = 0xc (X);		/*		R0=0xc( 12) */
    7278:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    727a:	01 e8 00 00 	UNLINK;
    727e:	20 93       	[P4] = R0;
    7280:	43 30       	R0 = P3;
    7282:	a3 05       	(R7:4, P5:3) = [SP++];
    7284:	10 00       	RTS;
    7286:	26 30       	R4 = R6;
    7288:	0a 32       	P1 = R2;
    728a:	3c 52       	R0 = R4 - R7;
    728c:	79 60       	R1 = 0xf (X);		/*		R1=0xf( 15) */
    728e:	08 0a       	CC = R0 <= R1 (IU);
    7290:	1f 10       	IF !CC JUMP 0x72ce <__realloc_r+0x12a>;
    7292:	14 32       	P2 = R4;
    7294:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    7296:	c3 54       	R3 = R3 & R0;
    7298:	e3 56       	R3 = R3 | R4;
    729a:	4b b0       	[P1 + 0x4] = R3;
    729c:	51 5a       	P1 = P1 + P2;
    729e:	48 a0       	R0 = [P1 + 0x4];
    72a0:	00 4a       	BITSET (R0, 0x0);		/* bit  0 */
    72a2:	48 b0       	[P1 + 0x4] = R0;
    72a4:	44 30       	R0 = P4;
    72a6:	ff e3 a3 ef 	CALL 0x51ec <___malloc_unlock>;
    72aa:	5d 32       	P3 = P5;
    72ac:	01 e8 00 00 	UNLINK;
    72b0:	43 30       	R0 = P3;
    72b2:	a3 05       	(R7:4, P5:3) = [SP++];
    72b4:	10 00       	RTS;
    72b6:	e4 63       	R4 = -0x4 (X);		/*		R4=0xfffffffc( -4) */
    72b8:	20 54       	R0 = R0 & R4;
    72ba:	30 51       	R4 = R0 + R6;
    72bc:	88 30       	R1 = I0;
    72be:	8c 08       	CC = R4 < R1;
    72c0:	a5 1f       	IF CC JUMP 0x720a <__realloc_r+0x66> (BP);
    72c2:	81 ac       	P1 = [P0 + 0x8];
    72c4:	c2 ac       	P2 = [P0 + 0xc];
    72c6:	ca bc       	[P1 + 0xc] = P2;
    72c8:	91 bc       	[P2 + 0x8] = P1;
    72ca:	0a 32       	P1 = R2;
    72cc:	df 2f       	JUMP.S 0x728a <__realloc_r+0xe6>;
    72ce:	07 32       	P0 = R7;
    72d0:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    72d2:	cb 54       	R3 = R3 & R1;
    72d4:	08 30       	R1 = R0;
    72d6:	fb 57       	R7 = R3 | R7;
    72d8:	81 5a       	P2 = P1 + P0;
    72da:	00 32       	P0 = R0;
    72dc:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    72de:	4f b0       	[P1 + 0x4] = R7;
    72e0:	51 b0       	[P2 + 0x4] = R1;
    72e2:	44 30       	R0 = P4;
    72e4:	42 5a       	P1 = P2 + P0;
    72e6:	49 a0       	R1 = [P1 + 0x4];
    72e8:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    72ea:	49 b0       	[P1 + 0x4] = R1;
    72ec:	4a 30       	R1 = P2;
    72ee:	41 64       	R1 += 0x8;		/* (  8) */
    72f0:	ff e3 9e e9 	CALL 0x462c <__free_r>;
    72f4:	d8 2f       	JUMP.S 0x72a4 <__realloc_r+0x100>;
    72f6:	19 32       	P3 = R1;
    72f8:	80 32       	P0 = I0;
    72fa:	c3 08       	CC = P3 < P0;
    72fc:	42 14       	IF !CC JUMP 0x7380 <__realloc_r+0x1dc> (BP);
    72fe:	44 30       	R0 = P4;
    7300:	82 ce 05 c2 	R1 = ROT R5 BY 0x0 || [FP -0x4] = R2 || NOP;
    7304:	f2 bb 00 00 
    7308:	ff e3 fc eb 	CALL 0x4b00 <__malloc_r>;
    730c:	18 32       	P3 = R0;
    730e:	f2 b9       	R2 = [FP -0x4];
    7310:	43 0c       	CC = P3 == 0x0;
    7312:	1f 18       	IF CC JUMP 0x7350 <__realloc_r+0x1ac>;
    7314:	00 00       	NOP;
    7316:	08 30       	R1 = R0;
    7318:	c1 67       	R1 += -0x8;		/* ( -8) */
    731a:	2b e4 ff ff 	R3 = [P5 + -0x4];
    731e:	03 30       	R0 = R3;
    7320:	00 4c       	BITCLR (R0, 0x0);		/* bit  0 */
    7322:	02 50       	R0 = R2 + R0;
    7324:	01 08       	CC = R1 == R0;
    7326:	ba 18       	IF CC JUMP 0x749a <__realloc_r+0x2f6>;
    7328:	16 30       	R2 = R6;
    732a:	e2 67       	R2 += -0x4;		/* ( -4) */
    732c:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
    732e:	02 0a       	CC = R2 <= R0 (IU);
    7330:	73 10       	IF !CC JUMP 0x7416 <__realloc_r+0x272>;
    7332:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
    7334:	0a 0a       	CC = R2 <= R1 (IU);
    7336:	47 14       	IF !CC JUMP 0x73c4 <__realloc_r+0x220> (BP);
    7338:	53 32       	P2 = P3;
    733a:	4d 32       	P1 = P5;
    733c:	08 91       	R0 = [P1];
    733e:	10 93       	[P2] = R0;
    7340:	48 a0       	R0 = [P1 + 0x4];
    7342:	50 b0       	[P2 + 0x4] = R0;
    7344:	88 a0       	R0 = [P1 + 0x8];
    7346:	90 b0       	[P2 + 0x8] = R0;
    7348:	44 30       	R0 = P4;
    734a:	4d 30       	R1 = P5;
    734c:	ff e3 70 e9 	CALL 0x462c <__free_r>;
    7350:	44 30       	R0 = P4;
    7352:	ff e3 4d ef 	CALL 0x51ec <___malloc_unlock>;
    7356:	01 e8 00 00 	UNLINK;
    735a:	43 30       	R0 = P3;
    735c:	a3 05       	(R7:4, P5:3) = [SP++];
    735e:	10 00       	RTS;
    7360:	01 e8 00 00 	UNLINK;
    7364:	0a 30       	R1 = R2;
    7366:	a3 05       	(R7:4, P5:3) = [SP++];
    7368:	ff e2 cc eb 	JUMP.L 0x4b00 <__malloc_r>;
    736c:	e4 63       	R4 = -0x4 (X);		/*		R4=0xfffffffc( -4) */
    736e:	58 a0       	R0 = [P3 + 0x4];
    7370:	04 54       	R0 = R4 & R0;
    7372:	27 30       	R4 = R7;
    7374:	70 50       	R1 = R0 + R6;
    7376:	84 64       	R4 += 0x10;		/* ( 16) */
    7378:	a1 08       	CC = R1 < R4;
    737a:	3c 10       	IF !CC JUMP 0x73f2 <__realloc_r+0x24e>;
    737c:	43 32       	P0 = P3;
    737e:	46 2f       	JUMP.S 0x720a <__realloc_r+0x66>;
    7380:	16 30       	R2 = R6;
    7382:	ca ac       	P2 = [P1 + 0xc];
    7384:	88 ac       	P0 = [P1 + 0x8];
    7386:	e2 67       	R2 += -0x4;		/* ( -4) */
    7388:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
    738a:	69 30       	R5 = P1;
    738c:	02 0a       	CC = R2 <= R0 (IU);
    738e:	c2 bc       	[P0 + 0xc] = P2;
    7390:	90 bc       	[P2 + 0x8] = P0;
    7392:	45 64       	R5 += 0x8;		/* (  8) */
    7394:	95 10       	IF !CC JUMP 0x74be <__realloc_r+0x31a>;
    7396:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
    7398:	0a 0a       	CC = R2 <= R1 (IU);
    739a:	90 1c       	IF CC JUMP 0x74ba <__realloc_r+0x316> (BP);
    739c:	28 91       	R0 = [P5];
    739e:	88 b0       	[P1 + 0x8] = R0;
    73a0:	68 a0       	R0 = [P5 + 0x4];
    73a2:	c8 b0       	[P1 + 0xc] = R0;
    73a4:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
    73a6:	02 0a       	CC = R2 <= R0 (IU);
    73a8:	aa 14       	IF !CC JUMP 0x74fc <__realloc_r+0x358> (BP);
    73aa:	51 32       	P2 = P1;
    73ac:	82 6c       	P2 += 0x10;		/* ( 16) */
    73ae:	45 6c       	P5 += 0x8;		/* (  8) */
    73b0:	28 91       	R0 = [P5];
    73b2:	10 93       	[P2] = R0;
    73b4:	68 a0       	R0 = [P5 + 0x4];
    73b6:	50 b0       	[P2 + 0x4] = R0;
    73b8:	a8 a0       	R0 = [P5 + 0x8];
    73ba:	90 b0       	[P2 + 0x8] = R0;
    73bc:	4b a0       	R3 = [P1 + 0x4];
    73be:	2d 32       	P5 = R5;
    73c0:	63 30       	R4 = P3;
    73c2:	64 2f       	JUMP.S 0x728a <__realloc_r+0xe6>;
    73c4:	00 00       	NOP;
    73c6:	28 91       	R0 = [P5];
    73c8:	18 93       	[P3] = R0;
    73ca:	68 a0       	R0 = [P5 + 0x4];
    73cc:	58 b0       	[P3 + 0x4] = R0;
    73ce:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
    73d0:	02 0a       	CC = R2 <= R0 (IU);
    73d2:	58 14       	IF !CC JUMP 0x7482 <__realloc_r+0x2de> (BP);
    73d4:	53 32       	P2 = P3;
    73d6:	4d 32       	P1 = P5;
    73d8:	42 6c       	P2 += 0x8;		/* (  8) */
    73da:	41 6c       	P1 += 0x8;		/* (  8) */
    73dc:	b0 2f       	JUMP.S 0x733c <__realloc_r+0x198>;
    73de:	15 32       	P2 = R5;
    73e0:	28 91       	R0 = [P5];
    73e2:	10 93       	[P2] = R0;
    73e4:	68 a0       	R0 = [P5 + 0x4];
    73e6:	50 b0       	[P2 + 0x4] = R0;
    73e8:	a8 a0       	R0 = [P5 + 0x8];
    73ea:	90 b0       	[P2 + 0x8] = R0;
    73ec:	4b a0       	R3 = [P1 + 0x4];
    73ee:	2d 32       	P5 = R5;
    73f0:	4d 2f       	JUMP.S 0x728a <__realloc_r+0xe6>;
    73f2:	ba 50       	R2 = R2 + R7;
    73f4:	02 32       	P0 = R2;
    73f6:	79 52       	R1 = R1 - R7;
    73f8:	01 4a       	BITSET (R1, 0x0);		/* bit  0 */
    73fa:	92 b0       	[P2 + 0x8] = R2;
    73fc:	5d 32       	P3 = P5;
    73fe:	41 b0       	[P0 + 0x4] = R1;
    7400:	28 e4 ff ff 	R0 = [P5 + -0x4];
    7404:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    7406:	01 54       	R0 = R1 & R0;
    7408:	c7 57       	R7 = R7 | R0;
    740a:	2f e6 ff ff 	[P5 + -0x4] = R7;
    740e:	44 30       	R0 = P4;
    7410:	ff e3 ee ee 	CALL 0x51ec <___malloc_unlock>;
    7414:	4c 2f       	JUMP.S 0x72ac <__realloc_r+0x108>;
    7416:	43 30       	R0 = P3;
    7418:	4d 30       	R1 = P5;
    741a:	ff e3 37 fe 	CALL 0x7088 <_memmove>;
    741e:	95 2f       	JUMP.S 0x7348 <__realloc_r+0x1a4>;
    7420:	07 30       	R0 = R7;
    7422:	80 64       	R0 += 0x10;		/* ( 16) */
    7424:	84 08       	CC = R4 < R0;
    7426:	69 1f       	IF CC JUMP 0x72f8 <__realloc_r+0x154> (BP);
    7428:	8b ac       	P3 = [P1 + 0x8];
    742a:	c8 ac       	P0 = [P1 + 0xc];
    742c:	16 30       	R2 = R6;
    742e:	e2 67       	R2 += -0x4;		/* ( -4) */
    7430:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
    7432:	d8 bc       	[P3 + 0xc] = P0;
    7434:	83 bc       	[P0 + 0x8] = P3;
    7436:	02 0a       	CC = R2 <= R0 (IU);
    7438:	59 32       	P3 = P1;
    743a:	43 6c       	P3 += 0x8;		/* (  8) */
    743c:	7d 10       	IF !CC JUMP 0x7536 <__realloc_r+0x392>;
    743e:	99 60       	R1 = 0x13 (X);		/*		R1=0x13( 19) */
    7440:	0a 0a       	CC = R2 <= R1 (IU);
    7442:	70 1c       	IF CC JUMP 0x7522 <__realloc_r+0x37e> (BP);
    7444:	28 91       	R0 = [P5];
    7446:	88 b0       	[P1 + 0x8] = R0;
    7448:	68 a0       	R0 = [P5 + 0x4];
    744a:	c8 b0       	[P1 + 0xc] = R0;
    744c:	d8 60       	R0 = 0x1b (X);		/*		R0=0x1b( 27) */
    744e:	02 0a       	CC = R2 <= R0 (IU);
    7450:	7c 14       	IF !CC JUMP 0x7548 <__realloc_r+0x3a4> (BP);
    7452:	41 32       	P0 = P1;
    7454:	80 6c       	P0 += 0x10;		/* ( 16) */
    7456:	45 6c       	P5 += 0x8;		/* (  8) */
    7458:	28 91       	R0 = [P5];
    745a:	00 93       	[P0] = R0;
    745c:	68 a0       	R0 = [P5 + 0x4];
    745e:	40 b0       	[P0 + 0x4] = R0;
    7460:	a8 a0       	R0 = [P5 + 0x8];
    7462:	80 b0       	[P0 + 0x8] = R0;
    7464:	2f 32       	P5 = R7;
    7466:	3c 53       	R4 = R4 - R7;
    7468:	04 4a       	BITSET (R4, 0x0);		/* bit  0 */
    746a:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    746c:	29 5a       	P0 = P1 + P5;
    746e:	44 b0       	[P0 + 0x4] = R4;
    7470:	48 a0       	R0 = [P1 + 0x4];
    7472:	01 54       	R0 = R1 & R0;
    7474:	c7 57       	R7 = R7 | R0;
    7476:	90 bc       	[P2 + 0x8] = P0;
    7478:	4f b0       	[P1 + 0x4] = R7;
    747a:	44 30       	R0 = P4;
    747c:	ff e3 b8 ee 	CALL 0x51ec <___malloc_unlock>;
    7480:	16 2f       	JUMP.S 0x72ac <__realloc_r+0x108>;
    7482:	21 61       	R1 = 0x24 (X);		/*		R1=0x24( 36) */
    7484:	a8 a0       	R0 = [P5 + 0x8];
    7486:	98 b0       	[P3 + 0x8] = R0;
    7488:	e8 a0       	R0 = [P5 + 0xc];
    748a:	0a 08       	CC = R2 == R1;
    748c:	d8 b0       	[P3 + 0xc] = R0;
    748e:	2e 1c       	IF CC JUMP 0x74ea <__realloc_r+0x346> (BP);
    7490:	53 32       	P2 = P3;
    7492:	4d 32       	P1 = P5;
    7494:	82 6c       	P2 += 0x10;		/* ( 16) */
    7496:	81 6c       	P1 += 0x10;		/* ( 16) */
    7498:	52 2f       	JUMP.S 0x733c <__realloc_r+0x198>;
    749a:	18 e4 ff ff 	R0 = [P3 + -0x4];
    749e:	e4 63       	R4 = -0x4 (X);		/*		R4=0xfffffffc( -4) */
    74a0:	04 55       	R4 = R4 & R0;
    74a2:	34 51       	R4 = R4 + R6;
    74a4:	0a 32       	P1 = R2;
    74a6:	f2 2e       	JUMP.S 0x728a <__realloc_r+0xe6>;
    74a8:	4d 30       	R1 = P5;
    74aa:	05 30       	R0 = R5;
    74ac:	f9 bb       	[FP -0x4] = P1;
    74ae:	ff e3 ed fd 	CALL 0x7088 <_memmove>;
    74b2:	f9 b9       	P1 = [FP -0x4];
    74b4:	2d 32       	P5 = R5;
    74b6:	4b a0       	R3 = [P1 + 0x4];
    74b8:	e9 2e       	JUMP.S 0x728a <__realloc_r+0xe6>;
    74ba:	15 32       	P2 = R5;
    74bc:	7a 2f       	JUMP.S 0x73b0 <__realloc_r+0x20c>;
    74be:	4d 30       	R1 = P5;
    74c0:	05 30       	R0 = R5;
    74c2:	f9 bb       	[FP -0x4] = P1;
    74c4:	ff e3 e2 fd 	CALL 0x7088 <_memmove>;
    74c8:	f9 b9       	P1 = [FP -0x4];
    74ca:	2d 32       	P5 = R5;
    74cc:	63 30       	R4 = P3;
    74ce:	4b a0       	R3 = [P1 + 0x4];
    74d0:	dd 2e       	JUMP.S 0x728a <__realloc_r+0xe6>;
    74d2:	00 00       	NOP;
    74d4:	a8 a0       	R0 = [P5 + 0x8];
    74d6:	08 b1       	[P1 + 0x10] = R0;
    74d8:	e8 a0       	R0 = [P5 + 0xc];
    74da:	48 b1       	[P1 + 0x14] = R0;
    74dc:	20 61       	R0 = 0x24 (X);		/*		R0=0x24( 36) */
    74de:	02 08       	CC = R2 == R0;
    74e0:	19 1c       	IF CC JUMP 0x7512 <__realloc_r+0x36e> (BP);
    74e2:	51 32       	P2 = P1;
    74e4:	c2 6c       	P2 += 0x18;		/* ( 24) */
    74e6:	85 6c       	P5 += 0x10;		/* ( 16) */
    74e8:	7c 2f       	JUMP.S 0x73e0 <__realloc_r+0x23c>;
    74ea:	53 32       	P2 = P3;
    74ec:	28 a1       	R0 = [P5 + 0x10];
    74ee:	18 b1       	[P3 + 0x10] = R0;
    74f0:	68 a1       	R0 = [P5 + 0x14];
    74f2:	4d 32       	P1 = P5;
    74f4:	58 b1       	[P3 + 0x14] = R0;
    74f6:	c2 6c       	P2 += 0x18;		/* ( 24) */
    74f8:	c1 6c       	P1 += 0x18;		/* ( 24) */
    74fa:	21 2f       	JUMP.S 0x733c <__realloc_r+0x198>;
    74fc:	21 61       	R1 = 0x24 (X);		/*		R1=0x24( 36) */
    74fe:	a8 a0       	R0 = [P5 + 0x8];
    7500:	08 b1       	[P1 + 0x10] = R0;
    7502:	e8 a0       	R0 = [P5 + 0xc];
    7504:	0a 08       	CC = R2 == R1;
    7506:	48 b1       	[P1 + 0x14] = R0;
    7508:	0f 1c       	IF CC JUMP 0x7526 <__realloc_r+0x382> (BP);
    750a:	51 32       	P2 = P1;
    750c:	c2 6c       	P2 += 0x18;		/* ( 24) */
    750e:	85 6c       	P5 += 0x10;		/* ( 16) */
    7510:	50 2f       	JUMP.S 0x73b0 <__realloc_r+0x20c>;
    7512:	51 32       	P2 = P1;
    7514:	28 a1       	R0 = [P5 + 0x10];
    7516:	88 b1       	[P1 + 0x18] = R0;
    7518:	68 a1       	R0 = [P5 + 0x14];
    751a:	c8 b1       	[P1 + 0x1c] = R0;
    751c:	02 6d       	P2 += 0x20;		/* ( 32) */
    751e:	c5 6c       	P5 += 0x18;		/* ( 24) */
    7520:	60 2f       	JUMP.S 0x73e0 <__realloc_r+0x23c>;
    7522:	43 32       	P0 = P3;
    7524:	9a 2f       	JUMP.S 0x7458 <__realloc_r+0x2b4>;
    7526:	51 32       	P2 = P1;
    7528:	28 a1       	R0 = [P5 + 0x10];
    752a:	88 b1       	[P1 + 0x18] = R0;
    752c:	68 a1       	R0 = [P5 + 0x14];
    752e:	c8 b1       	[P1 + 0x1c] = R0;
    7530:	02 6d       	P2 += 0x20;		/* ( 32) */
    7532:	c5 6c       	P5 += 0x18;		/* ( 24) */
    7534:	3e 2f       	JUMP.S 0x73b0 <__realloc_r+0x20c>;
    7536:	43 30       	R0 = P3;
    7538:	4d 30       	R1 = P5;
    753a:	f9 bb       	[FP -0x4] = P1;
    753c:	ea bb       	[FP -0x8] = P2;
    753e:	ff e3 a5 fd 	CALL 0x7088 <_memmove>;
    7542:	ea b9       	P2 = [FP -0x8];
    7544:	f9 b9       	P1 = [FP -0x4];
    7546:	8f 2f       	JUMP.S 0x7464 <__realloc_r+0x2c0>;
    7548:	21 61       	R1 = 0x24 (X);		/*		R1=0x24( 36) */
    754a:	a8 a0       	R0 = [P5 + 0x8];
    754c:	08 b1       	[P1 + 0x10] = R0;
    754e:	e8 a0       	R0 = [P5 + 0xc];
    7550:	0a 08       	CC = R2 == R1;
    7552:	48 b1       	[P1 + 0x14] = R0;
    7554:	05 1c       	IF CC JUMP 0x755e <__realloc_r+0x3ba> (BP);
    7556:	41 32       	P0 = P1;
    7558:	c0 6c       	P0 += 0x18;		/* ( 24) */
    755a:	85 6c       	P5 += 0x10;		/* ( 16) */
    755c:	7e 2f       	JUMP.S 0x7458 <__realloc_r+0x2b4>;
    755e:	41 32       	P0 = P1;
    7560:	28 a1       	R0 = [P5 + 0x10];
    7562:	88 b1       	[P1 + 0x18] = R0;
    7564:	68 a1       	R0 = [P5 + 0x14];
    7566:	c8 b1       	[P1 + 0x1c] = R0;
    7568:	00 6d       	P0 += 0x20;		/* ( 32) */
    756a:	c5 6c       	P5 += 0x18;		/* ( 24) */
    756c:	76 2f       	JUMP.S 0x7458 <__realloc_r+0x2b4>;
	...

00007570 <_cleanup_glue>:
    7570:	fd 05       	[--SP] = (R7:7, P5:5);
    7572:	29 32       	P5 = R1;
    7574:	00 e8 03 00 	LINK 0xc;		/* (12) */
    7578:	38 30       	R7 = R0;
    757a:	29 91       	R1 = [P5];
    757c:	01 0c       	CC = R1 == 0x0;
    757e:	03 18       	IF CC JUMP 0x7584 <_cleanup_glue+0x14>;
    7580:	ff e3 f8 ff 	CALL 0x7570 <_cleanup_glue>;
    7584:	01 e8 00 00 	UNLINK;
    7588:	07 30       	R0 = R7;
    758a:	4d 30       	R1 = P5;
    758c:	bd 05       	(R7:7, P5:5) = [SP++];
    758e:	ff e2 4f e8 	JUMP.L 0x462c <__free_r>;
	...

00007594 <__reclaim_reent>:
    7594:	f5 05       	[--SP] = (R7:6, P5:5);
    7596:	28 32       	P5 = R0;
    7598:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x94b4 <___malloc_av_> */
    759c:	00 e8 03 00 	LINK 0xc;		/* (12) */
    75a0:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    75a4:	10 91       	R0 = [P2];
    75a6:	4d 30       	R1 = P5;
    75a8:	01 08       	CC = R1 == R0;
    75aa:	47 18       	IF CC JUMP 0x7638 <__reclaim_reent+0xa4>;
    75ac:	00 00       	NOP;
    75ae:	00 00       	NOP;
    75b0:	00 00       	NOP;
    75b2:	29 e5 13 00 	P1 = [P5 + 0x4c];
    75b6:	41 0c       	CC = P1 == 0x0;
    75b8:	1b 18       	IF CC JUMP 0x75ee <__reclaim_reent+0x5a>;
    75ba:	02 68       	P2 = 0x0 (X);		/*		P2=0x0(  0) */
    75bc:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    75be:	91 5e       	P2 = P1 + (P2 << 0x2);
    75c0:	52 91       	P2 = [P2];
    75c2:	42 0c       	CC = P2 == 0x0;
    75c4:	0c 18       	IF CC JUMP 0x75dc <__reclaim_reent+0x48>;
    75c6:	00 00       	NOP;
    75c8:	4a 30       	R1 = P2;
    75ca:	45 30       	R0 = P5;
    75cc:	17 91       	R7 = [P2];
    75ce:	ff e3 2f e8 	CALL 0x462c <__free_r>;
    75d2:	17 32       	P2 = R7;
    75d4:	42 0c       	CC = P2 == 0x0;
    75d6:	f9 17       	IF !CC JUMP 0x75c8 <__reclaim_reent+0x34> (BP);
    75d8:	29 e5 13 00 	P1 = [P5 + 0x4c];
    75dc:	0e 64       	R6 += 0x1;		/* (  1) */
    75de:	00 61       	R0 = 0x20 (X);		/*		R0=0x20( 32) */
    75e0:	06 08       	CC = R6 == R0;
    75e2:	16 32       	P2 = R6;
    75e4:	ed 17       	IF !CC JUMP 0x75be <__reclaim_reent+0x2a> (BP);
    75e6:	45 30       	R0 = P5;
    75e8:	49 30       	R1 = P1;
    75ea:	ff e3 21 e8 	CALL 0x462c <__free_r>;
    75ee:	29 e4 10 00 	R1 = [P5 + 0x40];
    75f2:	01 0c       	CC = R1 == 0x0;
    75f4:	04 18       	IF CC JUMP 0x75fc <__reclaim_reent+0x68>;
    75f6:	45 30       	R0 = P5;
    75f8:	ff e3 1a e8 	CALL 0x462c <__free_r>;
    75fc:	2a e5 52 00 	P2 = [P5 + 0x148];
    7600:	42 0c       	CC = P2 == 0x0;
    7602:	11 18       	IF CC JUMP 0x7624 <__reclaim_reent+0x90>;
    7604:	4d 30       	R1 = P5;
    7606:	26 e1 4c 01 	R6 = 0x14c (X);		/*		R6=0x14c(332) */
    760a:	b1 51       	R6 = R1 + R6;
    760c:	42 30       	R0 = P2;
    760e:	30 08       	CC = R0 == R6;
    7610:	0a 18       	IF CC JUMP 0x7624 <__reclaim_reent+0x90>;
    7612:	00 00       	NOP;
    7614:	4a 30       	R1 = P2;
    7616:	45 30       	R0 = P5;
    7618:	17 91       	R7 = [P2];
    761a:	ff e3 09 e8 	CALL 0x462c <__free_r>;
    761e:	3e 08       	CC = R6 == R7;
    7620:	17 32       	P2 = R7;
    7622:	f9 17       	IF !CC JUMP 0x7614 <__reclaim_reent+0x80> (BP);
    7624:	29 e4 15 00 	R1 = [P5 + 0x54];
    7628:	01 0c       	CC = R1 == 0x0;
    762a:	04 18       	IF CC JUMP 0x7632 <__reclaim_reent+0x9e>;
    762c:	45 30       	R0 = P5;
    762e:	ff e3 ff e7 	CALL 0x462c <__free_r>;
    7632:	a9 a3       	R1 = [P5 + 0x38];
    7634:	01 0c       	CC = R1 == 0x0;
    7636:	05 10       	IF !CC JUMP 0x7640 <__reclaim_reent+0xac>;
    7638:	01 e8 00 00 	UNLINK;
    763c:	b5 05       	(R7:6, P5:5) = [SP++];
    763e:	10 00       	RTS;
    7640:	ea af       	P2 = [P5 + 0x3c];
    7642:	45 30       	R0 = P5;
    7644:	62 00       	CALL (P2);
    7646:	29 e4 b8 00 	R1 = [P5 + 0x2e0];
    764a:	01 0c       	CC = R1 == 0x0;
    764c:	f6 1b       	IF CC JUMP 0x7638 <__reclaim_reent+0xa4>;
    764e:	01 e8 00 00 	UNLINK;
    7652:	45 30       	R0 = P5;
    7654:	b5 05       	(R7:6, P5:5) = [SP++];
    7656:	ff e2 8d ff 	JUMP.L 0x7570 <_cleanup_glue>;
	...

0000765c <__wrapup_reent>:
    765c:	fb 05       	[--SP] = (R7:7, P5:3);
    765e:	18 32       	P3 = R0;
    7660:	00 e8 03 00 	LINK 0xc;		/* (12) */
    7664:	43 0c       	CC = P3 == 0x0;
    7666:	26 18       	IF CC JUMP 0x76b2 <__wrapup_reent+0x56>;
    7668:	00 00       	NOP;
    766a:	00 00       	NOP;
    766c:	00 00       	NOP;
    766e:	1c e5 52 00 	P4 = [P3 + 0x148];
    7672:	44 0c       	CC = P4 == 0x0;
    7674:	13 18       	IF CC JUMP 0x769a <__wrapup_reent+0x3e>;
    7676:	00 00       	NOP;
    7678:	00 00       	NOP;
    767a:	00 00       	NOP;
    767c:	65 ac       	P5 = [P4 + 0x4];
    767e:	7d 30       	R7 = P5;
    7680:	ff 67       	R7 += -0x1;		/* ( -1) */
    7682:	87 0c       	CC = R7 < 0x0;
    7684:	08 18       	IF CC JUMP 0x7694 <__wrapup_reent+0x38>;
    7686:	0d 6c       	P5 += 0x1;		/* (  1) */
    7688:	6c 5f       	P5 = P4 + (P5 << 0x2);
    768a:	ff 67       	R7 += -0x1;		/* ( -1) */
    768c:	ea 90       	P2 = [P5--];
    768e:	62 00       	CALL (P2);
    7690:	3f 0c       	CC = R7 == -0x1;
    7692:	fc 17       	IF !CC JUMP 0x768a <__wrapup_reent+0x2e> (BP);
    7694:	64 91       	P4 = [P4];
    7696:	44 0c       	CC = P4 == 0x0;
    7698:	f1 17       	IF !CC JUMP 0x767a <__wrapup_reent+0x1e> (BP);
    769a:	da af       	P2 = [P3 + 0x3c];
    769c:	42 0c       	CC = P2 == 0x0;
    769e:	06 18       	IF CC JUMP 0x76aa <__wrapup_reent+0x4e>;
    76a0:	01 e8 00 00 	UNLINK;
    76a4:	43 30       	R0 = P3;
    76a6:	bb 05       	(R7:7, P5:3) = [SP++];
    76a8:	52 00       	JUMP (P2);
    76aa:	01 e8 00 00 	UNLINK;
    76ae:	bb 05       	(R7:7, P5:3) = [SP++];
    76b0:	10 00       	RTS;
    76b2:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x0 */
    76b6:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    76ba:	53 91       	P3 = [P2];
    76bc:	d9 2f       	JUMP.S 0x766e <__wrapup_reent+0x12>;
	...

000076c0 <___swbuf_r>:
    76c0:	fc 05       	[--SP] = (R7:7, P5:4);
    76c2:	20 32       	P4 = R0;
    76c4:	00 e8 03 00 	LINK 0xc;		/* (12) */
    76c8:	39 30       	R7 = R1;
    76ca:	2a 32       	P5 = R2;
    76cc:	44 0c       	CC = P4 == 0x0;
    76ce:	07 18       	IF CC JUMP 0x76dc <___swbuf_r+0x1c>;
    76d0:	a0 a3       	R0 = [P4 + 0x38];
    76d2:	00 0c       	CC = R0 == 0x0;
    76d4:	5e 18       	IF CC JUMP 0x7790 <___swbuf_r+0xd0>;
    76d6:	00 00       	NOP;
    76d8:	00 00       	NOP;
    76da:	00 00       	NOP;
    76dc:	a8 a1       	R0 = [P5 + 0x18];
    76de:	a8 b0       	[P5 + 0x8] = R0;
    76e0:	aa a9       	R2 = W[P5 + 0xc] (X);
    76e2:	40 60       	R0 = 0x8 (X);		/*		R0=0x8(  8) */
    76e4:	02 54       	R0 = R2 & R0;
    76e6:	80 42       	R0 = R0.L (X);
    76e8:	00 0c       	CC = R0 == 0x0;
    76ea:	47 18       	IF CC JUMP 0x7778 <___swbuf_r+0xb8>;
    76ec:	00 00       	NOP;
    76ee:	00 00       	NOP;
    76f0:	00 00       	NOP;
    76f2:	2b a1       	R3 = [P5 + 0x10];
    76f4:	03 0c       	CC = R3 == 0x0;
    76f6:	41 18       	IF CC JUMP 0x7778 <___swbuf_r+0xb8>;
    76f8:	6a 48       	CC = !BITTST (R2, 0xd);		/* bit 13 */
    76fa:	7f 43       	R7 = R7.B (Z);
    76fc:	1f 1c       	IF CC JUMP 0x773a <___swbuf_r+0x7a> (BP);
    76fe:	28 91       	R0 = [P5];
    7700:	d8 52       	R3 = R0 - R3;
    7702:	69 a1       	R1 = [P5 + 0x14];
    7704:	8b 08       	CC = R3 < R1;
    7706:	26 10       	IF !CC JUMP 0x7752 <___swbuf_r+0x92>;
    7708:	00 00       	NOP;
    770a:	0b 64       	R3 += 0x1;		/* (  1) */
    770c:	10 32       	P2 = R0;
    770e:	aa a0       	R2 = [P5 + 0x8];
    7710:	fa 67       	R2 += -0x1;		/* ( -1) */
    7712:	aa b0       	[P5 + 0x8] = R2;
    7714:	17 9a       	B[P2++] = R7;
    7716:	68 a1       	R0 = [P5 + 0x14];
    7718:	18 08       	CC = R0 == R3;
    771a:	6a 93       	[P5] = P2;
    771c:	26 18       	IF CC JUMP 0x7768 <___swbuf_r+0xa8>;
    771e:	00 00       	NOP;
    7720:	00 00       	NOP;
    7722:	00 00       	NOP;
    7724:	a8 a9       	R0 = W[P5 + 0xc] (X);
    7726:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
    7728:	04 1c       	IF CC JUMP 0x7730 <___swbuf_r+0x70> (BP);
    772a:	51 60       	R1 = 0xa (X);		/*		R1=0xa( 10) */
    772c:	0f 08       	CC = R7 == R1;
    772e:	1d 18       	IF CC JUMP 0x7768 <___swbuf_r+0xa8>;
    7730:	01 e8 00 00 	UNLINK;
    7734:	07 30       	R0 = R7;
    7736:	bc 05       	(R7:7, P5:4) = [SP++];
    7738:	10 00       	RTS;
    773a:	6a 4a       	BITSET (R2, 0xd);		/* bit 13 */
    773c:	28 e4 19 00 	R0 = [P5 + 0x64];
    7740:	68 4c       	BITCLR (R0, 0xd);		/* bit 13 */
    7742:	28 e6 19 00 	[P5 + 0x64] = R0;
    7746:	28 91       	R0 = [P5];
    7748:	d8 52       	R3 = R0 - R3;
    774a:	69 a1       	R1 = [P5 + 0x14];
    774c:	8b 08       	CC = R3 < R1;
    774e:	aa b5       	W[P5 + 0xc] = R2;
    7750:	dd 1f       	IF CC JUMP 0x770a <___swbuf_r+0x4a> (BP);
    7752:	44 30       	R0 = P4;
    7754:	4d 30       	R1 = P5;
    7756:	ff e3 97 e5 	CALL 0x4284 <__fflush_r>;
    775a:	00 0c       	CC = R0 == 0x0;
    775c:	0c 10       	IF !CC JUMP 0x7774 <___swbuf_r+0xb4>;
    775e:	00 00       	NOP;
    7760:	00 00       	NOP;
    7762:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    7764:	28 91       	R0 = [P5];
    7766:	d3 2f       	JUMP.S 0x770c <___swbuf_r+0x4c>;
    7768:	44 30       	R0 = P4;
    776a:	4d 30       	R1 = P5;
    776c:	ff e3 8c e5 	CALL 0x4284 <__fflush_r>;
    7770:	00 0c       	CC = R0 == 0x0;
    7772:	df 1f       	IF CC JUMP 0x7730 <___swbuf_r+0x70> (BP);
    7774:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    7776:	dd 2f       	JUMP.S 0x7730 <___swbuf_r+0x70>;
    7778:	44 30       	R0 = P4;
    777a:	4d 30       	R1 = P5;
    777c:	ff e3 48 db 	CALL 0x2e0c <___swsetup_r>;
    7780:	00 0c       	CC = R0 == 0x0;
    7782:	f9 13       	IF !CC JUMP 0x7774 <___swbuf_r+0xb4>;
    7784:	00 00       	NOP;
    7786:	00 00       	NOP;
    7788:	00 00       	NOP;
    778a:	aa a9       	R2 = W[P5 + 0xc] (X);
    778c:	2b a1       	R3 = [P5 + 0x10];
    778e:	b5 2f       	JUMP.S 0x76f8 <___swbuf_r+0x38>;
    7790:	44 30       	R0 = P4;
    7792:	ff e3 29 e6 	CALL 0x43e4 <___sinit>;
    7796:	a3 2f       	JUMP.S 0x76dc <___swbuf_r+0x1c>;

00007798 <___swbuf>:
    7798:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    779c:	18 30       	R3 = R0;
    779e:	00 e8 00 00 	LINK 0x0;		/* (0) */
    77a2:	0a e1 08 90 	P2.L = 0x9008;		/* (-28664)	P2=0x9008 <__impure_ptr> */
    77a6:	82 ce 01 c4 	R2 = ROT R1 BY 0x0 || R0 = [P2] || NOP;
    77aa:	10 91 00 00 
    77ae:	0b 30       	R1 = R3;
    77b0:	01 e8 00 00 	UNLINK;
    77b4:	ff e2 86 ff 	JUMP.L 0x76c0 <___swbuf_r>;

000077b8 <__wcrtomb_r>:
    77b8:	f3 05       	[--SP] = (R7:6, P5:3);
    77ba:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x9008 <__impure_ptr> */
    77be:	00 e8 08 00 	LINK 0x20;		/* (32) */
    77c2:	0a e1 bc 98 	P2.L = 0x98bc;		/* (-26436)	P2=0x98bc <___wctomb> */
    77c6:	01 0c       	CC = R1 == 0x0;
    77c8:	28 32       	P5 = R0;
    77ca:	82 ce 01 ce 	R7 = ROT R1 BY 0x0 || P4 = [FP + 0x28] || NOP;
    77ce:	bc ae 00 00 
    77d2:	82 ce 02 cc 	R6 = ROT R2 BY 0x0 || P3 = [P2] || NOP;
    77d6:	53 91 00 00 
    77da:	15 18       	IF CC JUMP 0x7804 <__wcrtomb_r+0x4c>;
    77dc:	ff e3 ce e8 	CALL 0x4978 <___locale_charset>;
    77e0:	f0 b0       	[SP + 0xc] = R0;
    77e2:	34 bd       	[SP + 0x10] = P4;
    77e4:	45 30       	R0 = P5;
    77e6:	0f 30       	R1 = R7;
    77e8:	16 30       	R2 = R6;
    77ea:	63 00       	CALL (P3);
    77ec:	38 0c       	CC = R0 == -0x1;
    77ee:	07 14       	IF !CC JUMP 0x77fc <__wcrtomb_r+0x44> (BP);
    77f0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    77f2:	20 93       	[P4] = R0;
    77f4:	20 e1 8a 00 	R0 = 0x8a (X);		/*		R0=0x8a(138) */
    77f8:	28 93       	[P5] = R0;
    77fa:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    77fc:	01 e8 00 00 	UNLINK;
    7800:	b3 05       	(R7:6, P5:3) = [SP++];
    7802:	10 00       	RTS;
    7804:	ff e3 ba e8 	CALL 0x4978 <___locale_charset>;
    7808:	4f 30       	R1 = FP;
    780a:	f0 b0       	[SP + 0xc] = R0;
    780c:	34 bd       	[SP + 0x10] = P4;
    780e:	45 30       	R0 = P5;
    7810:	a1 67       	R1 += -0xc;		/* (-12) */
    7812:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    7814:	63 00       	CALL (P3);
    7816:	eb 2f       	JUMP.S 0x77ec <__wcrtomb_r+0x34>;

00007818 <_wcrtomb>:
    7818:	eb 05       	[--SP] = (R7:5, P5:3);
    781a:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98bc <___wctomb> */
    781e:	00 e8 08 00 	LINK 0x20;		/* (32) */
    7822:	0a e1 bc 98 	P2.L = 0x98bc;		/* (-26436)	P2=0x98bc <___wctomb> */
    7826:	4c e1 00 00 	P4.H = 0x0;		/* (  0)	P4=0x68 */
    782a:	00 0c       	CC = R0 == 0x0;
    782c:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || P3 = [P2] || NOP;
    7830:	53 91 00 00 
    7834:	31 30       	R6 = R1;
    7836:	2a 32       	P5 = R2;
    7838:	0c e1 08 90 	P4.L = 0x9008;		/* (-28664)	P4=0x9008 <__impure_ptr> */
    783c:	17 18       	IF CC JUMP 0x786a <_wcrtomb+0x52>;
    783e:	25 91       	R5 = [P4];
    7840:	ff e3 9c e8 	CALL 0x4978 <___locale_charset>;
    7844:	f0 b0       	[SP + 0xc] = R0;
    7846:	35 bd       	[SP + 0x10] = P5;
    7848:	05 30       	R0 = R5;
    784a:	0f 30       	R1 = R7;
    784c:	16 30       	R2 = R6;
    784e:	63 00       	CALL (P3);
    7850:	38 0c       	CC = R0 == -0x1;
    7852:	08 14       	IF !CC JUMP 0x7862 <_wcrtomb+0x4a> (BP);
    7854:	62 91       	P2 = [P4];
    7856:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    7858:	28 93       	[P5] = R0;
    785a:	20 e1 8a 00 	R0 = 0x8a (X);		/*		R0=0x8a(138) */
    785e:	10 93       	[P2] = R0;
    7860:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    7862:	01 e8 00 00 	UNLINK;
    7866:	ab 05       	(R7:5, P5:3) = [SP++];
    7868:	10 00       	RTS;
    786a:	27 91       	R7 = [P4];
    786c:	ff e3 86 e8 	CALL 0x4978 <___locale_charset>;
    7870:	4f 30       	R1 = FP;
    7872:	f0 b0       	[SP + 0xc] = R0;
    7874:	35 bd       	[SP + 0x10] = P5;
    7876:	07 30       	R0 = R7;
    7878:	a1 67       	R1 += -0xc;		/* (-12) */
    787a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    787c:	63 00       	CALL (P3);
    787e:	e9 2f       	JUMP.S 0x7850 <_wcrtomb+0x38>;

00007880 <___ascii_wctomb>:
    7880:	11 32       	P2 = R1;
    7882:	00 e8 00 00 	LINK 0x0;		/* (0) */
    7886:	42 0c       	CC = P2 == 0x0;
    7888:	0a 18       	IF CC JUMP 0x789c <___ascii_wctomb+0x1c>;
    788a:	21 e1 ff 00 	R1 = 0xff (X);		/*		R1=0xff(255) */
    788e:	0a 0a       	CC = R2 <= R1 (IU);
    7890:	0a 10       	IF !CC JUMP 0x78a4 <___ascii_wctomb+0x24>;
    7892:	12 9b       	B[P2] = R2;
    7894:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    7896:	01 e8 00 00 	UNLINK;
    789a:	10 00       	RTS;
    789c:	01 e8 00 00 	UNLINK;
    78a0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    78a2:	10 00       	RTS;
    78a4:	10 32       	P2 = R0;
    78a6:	21 e1 8a 00 	R1 = 0x8a (X);		/*		R1=0x8a(138) */
    78aa:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    78ac:	11 93       	[P2] = R1;
    78ae:	f4 2f       	JUMP.S 0x7896 <___ascii_wctomb+0x16>;

000078b0 <__wctomb_r>:
    78b0:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x98bc <___wctomb> */
    78b4:	ed 05       	[--SP] = (R7:5, P5:5);
    78b6:	0a e1 bc 98 	P2.L = 0x98bc;		/* (-26436)	P2=0x98bc <___wctomb> */
    78ba:	00 e8 05 00 	LINK 0x14;		/* (20) */
    78be:	55 91       	P5 = [P2];
    78c0:	38 30       	R7 = R0;
    78c2:	29 30       	R5 = R1;
    78c4:	32 30       	R6 = R2;
    78c6:	ff e3 59 e8 	CALL 0x4978 <___locale_charset>;
    78ca:	f0 b0       	[SP + 0xc] = R0;
    78cc:	78 a2       	R0 = [FP + 0x24];
    78ce:	30 b1       	[SP + 0x10] = R0;
    78d0:	0d 30       	R1 = R5;
    78d2:	07 30       	R0 = R7;
    78d4:	16 30       	R2 = R6;
    78d6:	65 00       	CALL (P5);
    78d8:	01 e8 00 00 	UNLINK;
    78dc:	ad 05       	(R7:5, P5:5) = [SP++];
    78de:	10 00       	RTS;

000078e0 <___divsi3>:
    78e0:	67 01       	[--SP] = RETS;
    78e2:	47 01       	[--SP] = R7;
    78e4:	82 43       	R2 = -R0;
    78e6:	80 0c       	CC = R0 < 0x0;
    78e8:	02 07       	IF CC R0 = R2;
    78ea:	07 02       	R7 = CC;
    78ec:	8a 43       	R2 = -R1;
    78ee:	81 0c       	CC = R1 < 0x0;
    78f0:	0a 07       	IF CC R1 = R2;
    78f2:	02 02       	R2 = CC;
    78f4:	d7 59       	R7 = R7 ^ R2;
    78f6:	00 e3 09 00 	CALL 0x7908 <___udivsi3>;
    78fa:	0f 02       	CC = R7;
    78fc:	81 43       	R1 = -R0;
    78fe:	01 07       	IF CC R0 = R1;
    7900:	37 90       	R7 = [SP++];
    7902:	27 01       	RETS = [SP++];
    7904:	10 00       	RTS;
	...

00007908 <___udivsi3>:
    7908:	00 69       	P0 = 0x20 (X);		/*		P0=0x20( 32) */
    790a:	a3 e0 09 00 	LSETUP(0x7910 <___udivsi3+0x8>, 0x791c <___udivsi3+0x14>) LC0 = P0;
    790e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    7910:	82 c6 08 c0 	R0 = ROT R0 BY 0x1;
    7914:	82 c6 0b c6 	R3 = ROT R3 BY 0x1;
    7918:	8b 52       	R2 = R3 - R1;
    791a:	8b 09       	CC = R3 < R1 (IU);
    791c:	1a 06       	IF !CC R3 = R2;
    791e:	82 c6 08 c0 	R0 = ROT R0 BY 0x1;
    7922:	c0 43       	R0 =~ R0;
    7924:	10 00       	RTS;
	...

00007928 <___modsi3>:
    7928:	67 01       	[--SP] = RETS;
    792a:	40 01       	[--SP] = R0;
    792c:	41 01       	[--SP] = R1;
    792e:	ff e3 d9 ff 	CALL 0x78e0 <___divsi3>;
    7932:	32 90       	R2 = [SP++];
    7934:	31 90       	R1 = [SP++];
    7936:	c2 40       	R2 *= R0;
    7938:	11 52       	R0 = R1 - R2;
    793a:	27 01       	RETS = [SP++];
    793c:	10 00       	RTS;
	...

00007940 <__fpadd_parts>:
    7940:	00 32       	P0 = R0;
    7942:	e3 05       	[--SP] = (R7:4, P5:3);
    7944:	00 e8 00 00 	LINK 0x0;		/* (0) */
    7948:	09 32       	P1 = R1;
    794a:	12 32       	P2 = R2;
    794c:	03 91       	R3 = [P0];
    794e:	0b 0e       	CC = R3 <= 0x1 (IU);
    7950:	b7 18       	IF CC JUMP 0x7abe <__fpadd_parts+0x17e>;
    7952:	00 00       	NOP;
    7954:	00 00       	NOP;
    7956:	00 00       	NOP;
    7958:	0a 91       	R2 = [P1];
    795a:	0a 0e       	CC = R2 <= 0x1 (IU);
    795c:	01 19       	IF CC JUMP 0x7b5e <__fpadd_parts+0x21e>;
    795e:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    7960:	0b 08       	CC = R3 == R1;
    7962:	44 19       	IF CC JUMP 0x7bea <__fpadd_parts+0x2aa>;
    7964:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
    7966:	22 08       	CC = R2 == R4;
    7968:	fb 18       	IF CC JUMP 0x7b5e <__fpadd_parts+0x21e>;
    796a:	12 0c       	CC = R2 == 0x2;
    796c:	c6 18       	IF CC JUMP 0x7af8 <__fpadd_parts+0x1b8>;
    796e:	13 0c       	CC = R3 == 0x2;
    7970:	f7 18       	IF CC JUMP 0x7b5e <__fpadd_parts+0x21e>;
    7972:	00 00       	NOP;
    7974:	00 00       	NOP;
    7976:	20 32       	P4 = R0;
    7978:	82 a0       	R2 = [P0 + 0x8];
    797a:	8d a0       	R5 = [P1 + 0x8];
    797c:	e3 a0       	R3 = [P4 + 0xc];
    797e:	6a 52       	R1 = R2 - R5;
    7980:	13 34       	I2 = R3;
    7982:	01 32       	P0 = R1;
    7984:	fb 61       	R3 = 0x3f (X);		/*		R3=0x3f( 63) */
    7986:	07 cc 08 82 	R1 = ABS R1 || R4 = [P4 + 0x10] || NOP;
    798a:	24 a1 00 00 
    798e:	19 09       	CC = R1 <= R3;
    7990:	1c 34       	I3 = R4;
    7992:	ce a0       	R6 = [P1 + 0xc];
    7994:	0f a1       	R7 = [P1 + 0x10];
    7996:	98 14       	IF !CC JUMP 0x7ac6 <__fpadd_parts+0x186> (BP);
    7998:	40 0d       	CC = P0 <= 0x0;
    799a:	e7 18       	IF CC JUMP 0x7b68 <__fpadd_parts+0x228>;
    799c:	07 32       	P0 = R7;
    799e:	21 32       	P4 = R1;
    79a0:	21 30       	R4 = R1;
    79a2:	04 67       	R4 += -0x20;		/* (-32) */
    79a4:	2f 30       	R5 = R7;
    79a6:	40 5b       	P5 = P0 << 0x1;
    79a8:	f8 68       	P0 = 0x1f (X);		/*		P0=0x1f( 31) */
    79aa:	65 40       	R5 >>= R4;
    79ac:	20 44       	P0 -= P4;
    79ae:	05 34       	I0 = R5;
    79b0:	5d 30       	R3 = P5;
    79b2:	68 30       	R5 = P0;
    79b4:	ab 40       	R3 <<= R5;
    79b6:	2b 32       	P5 = R3;
    79b8:	1e 30       	R3 = R6;
    79ba:	4b 40       	R3 >>= R1;
    79bc:	84 0c       	CC = R4 < 0x0;
    79be:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    79c0:	6d 30       	R5 = P5;
    79c2:	5d 57       	R5 = R5 | R3;
    79c4:	05 32       	P0 = R5;
    79c6:	1f 30       	R3 = R7;
    79c8:	4b 40       	R3 >>= R1;
    79ca:	0d 68       	P5 = 0x1 (X);		/*		P5=0x1(  1) */
    79cc:	a8 30       	R5 = I0;
    79ce:	85 06       	IF !CC P0 = R5;
    79d0:	23 32       	P4 = R3;
    79d2:	6d 30       	R5 = P5;
    79d4:	8d 40       	R5 <<= R1;
    79d6:	5d 30       	R3 = P5;
    79d8:	2d 32       	P5 = R5;
    79da:	84 0c       	CC = R4 < 0x0;
    79dc:	a3 40       	R3 <<= R4;
    79de:	e3 06       	IF !CC P4 = P3;
    79e0:	0b 30       	R1 = R3;
    79e2:	84 0c       	CC = R4 < 0x0;
    79e4:	4b 07       	IF CC R1 = P3;
    79e6:	84 0c       	CC = R4 < 0x0;
    79e8:	eb 06       	IF !CC P5 = P3;
    79ea:	5d 30       	R3 = P5;
    79ec:	fb 67       	R3 += -0x1;		/* ( -1) */
    79ee:	0c 03       	CC = AC0;
    79f0:	04 02       	R4 = CC;
    79f2:	f9 67       	R1 += -0x1;		/* ( -1) */
    79f4:	61 50       	R1 = R1 + R4;
    79f6:	f3 54       	R3 = R3 & R6;
    79f8:	79 54       	R1 = R1 & R7;
    79fa:	4b 56       	R1 = R3 | R1;
    79fc:	07 c4 08 82 	R1 = ABS R1;
    7a00:	89 43       	R1 = -R1;
    7a02:	f9 4e       	R1 >>= 0x1f;
    7a04:	68 30       	R5 = P0;
    7a06:	a9 57       	R6 = R1 | R5;
    7a08:	7c 30       	R7 = P4;
    7a0a:	00 32       	P0 = R0;
    7a0c:	49 a0       	R1 = [P1 + 0x4];
    7a0e:	40 a0       	R0 = [P0 + 0x4];
    7a10:	08 08       	CC = R0 == R1;
    7a12:	63 18       	IF CC JUMP 0x7ad8 <__fpadd_parts+0x198>;
    7a14:	00 0c       	CC = R0 == 0x0;
    7a16:	85 1c       	IF CC JUMP 0x7b20 <__fpadd_parts+0x1e0> (BP);
    7a18:	82 30       	R0 = I2;
    7a1a:	c6 52       	R3 = R6 - R0;
    7a1c:	0c 03       	CC = AC0;
    7a1e:	18 02       	CC = !CC;
    7a20:	8b 30       	R1 = I3;
    7a22:	00 02       	R0 = CC;
    7a24:	cf 53       	R7 = R7 - R1;
    7a26:	c7 53       	R7 = R7 - R0;
    7a28:	87 0c       	CC = R7 < 0x0;
    7a2a:	85 18       	IF CC JUMP 0x7b34 <__fpadd_parts+0x1f4>;
    7a2c:	00 cc 00 c0 	R0 = R0 -|- R0 || [P2 + 0x8] = R2 || NOP;
    7a30:	92 b0 00 00 
    7a34:	50 b0       	[P2 + 0x4] = R0;
    7a36:	d3 b0       	[P2 + 0xc] = R3;
    7a38:	17 b1       	[P2 + 0x10] = R7;
    7a3a:	13 30       	R2 = R3;
    7a3c:	fa 67       	R2 += -0x1;		/* ( -1) */
    7a3e:	0c 03       	CC = AC0;
    7a40:	07 30       	R0 = R7;
    7a42:	01 02       	R1 = CC;
    7a44:	f8 67       	R0 += -0x1;		/* ( -1) */
    7a46:	fe 63       	R6 = -0x1 (X);		/*		R6=0xffffffff( -1) */
    7a48:	08 50       	R0 = R0 + R1;
    7a4a:	46 e1 ff 0f 	R6.H = 0xfff;		/* (4095)	R6=0xfffffff(268435455) */
    7a4e:	30 0a       	CC = R0 <= R6 (IU);
    7a50:	21 10       	IF !CC JUMP 0x7a92 <__fpadd_parts+0x152>;
    7a52:	30 08       	CC = R0 == R6;
    7a54:	c7 18       	IF CC JUMP 0x7be2 <__fpadd_parts+0x2a2>;
    7a56:	00 00       	NOP;
    7a58:	00 00       	NOP;
    7a5a:	00 00       	NOP;
    7a5c:	91 a0       	R1 = [P2 + 0x8];
    7a5e:	f9 67       	R1 += -0x1;		/* ( -1) */
    7a60:	03 20       	JUMP.S 0x7a66 <__fpadd_parts+0x126>;
    7a62:	20 08       	CC = R0 == R4;
    7a64:	46 18       	IF CC JUMP 0x7af0 <__fpadd_parts+0x1b0>;
    7a66:	80 08       	CC = R0 < R0;
    7a68:	82 c6 0b c6 	R3 = ROT R3 BY 0x1;
    7a6c:	82 c6 0f ce 	R7 = ROT R7 BY 0x1;
    7a70:	2b 30       	R5 = R3;
    7a72:	fd 67       	R5 += -0x1;		/* ( -1) */
    7a74:	0c 03       	CC = AC0;
    7a76:	07 30       	R0 = R7;
    7a78:	06 02       	R6 = CC;
    7a7a:	f8 67       	R0 += -0x1;		/* ( -1) */
    7a7c:	fc 63       	R4 = -0x1 (X);		/*		R4=0xffffffff( -1) */
    7a7e:	30 50       	R0 = R0 + R6;
    7a80:	44 e1 ff 0f 	R4.H = 0xfff;		/* (4095)	R4=0xfffffff(268435455) */
    7a84:	20 0a       	CC = R0 <= R4 (IU);
    7a86:	11 30       	R2 = R1;
    7a88:	f9 67       	R1 += -0x1;		/* ( -1) */
    7a8a:	ec 1f       	IF CC JUMP 0x7a62 <__fpadd_parts+0x122> (BP);
    7a8c:	d3 b0       	[P2 + 0xc] = R3;
    7a8e:	17 b1       	[P2 + 0x10] = R7;
    7a90:	92 b0       	[P2 + 0x8] = R2;
    7a92:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    7a94:	42 e1 ff 1f 	R2.H = 0x1fff;		/* (8191)	R2=0x1fffffff(536870911) */
    7a98:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    7a9a:	17 0a       	CC = R7 <= R2 (IU);
    7a9c:	10 93       	[P2] = R0;
    7a9e:	0f 1c       	IF CC JUMP 0x7abc <__fpadd_parts+0x17c> (BP);
    7aa0:	80 08       	CC = R0 < R0;
    7aa2:	82 c6 ff cf 	R7 = ROT R7 BY -0x1;
    7aa6:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    7aa8:	03 54       	R0 = R3 & R0;
    7aaa:	82 ce fb c7 	R3 = ROT R3 BY -0x1 || [P2 + 0x10] = R7 || NOP;
    7aae:	17 b1 00 00 
    7ab2:	18 56       	R0 = R0 | R3;
    7ab4:	d0 b0       	[P2 + 0xc] = R0;
    7ab6:	90 a0       	R0 = [P2 + 0x8];
    7ab8:	08 64       	R0 += 0x1;		/* (  1) */
    7aba:	90 b0       	[P2 + 0x8] = R0;
    7abc:	42 30       	R0 = P2;
    7abe:	01 e8 00 00 	UNLINK;
    7ac2:	a3 05       	(R7:4, P5:3) = [SP++];
    7ac4:	10 00       	RTS;
    7ac6:	2a 09       	CC = R2 <= R5;
    7ac8:	45 1c       	IF CC JUMP 0x7b52 <__fpadd_parts+0x212> (BP);
    7aca:	00 32       	P0 = R0;
    7acc:	49 a0       	R1 = [P1 + 0x4];
    7ace:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    7ad0:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    7ad2:	40 a0       	R0 = [P0 + 0x4];
    7ad4:	08 08       	CC = R0 == R1;
    7ad6:	9f 17       	IF !CC JUMP 0x7a14 <__fpadd_parts+0xd4> (BP);
    7ad8:	50 b0       	[P2 + 0x4] = R0;
    7ada:	82 30       	R0 = I2;
    7adc:	c6 50       	R3 = R6 + R0;
    7ade:	0c 03       	CC = AC0;
    7ae0:	8b 30       	R1 = I3;
    7ae2:	00 02       	R0 = CC;
    7ae4:	cf 51       	R7 = R7 + R1;
    7ae6:	c7 51       	R7 = R7 + R0;
    7ae8:	92 b0       	[P2 + 0x8] = R2;
    7aea:	d3 b0       	[P2 + 0xc] = R3;
    7aec:	17 b1       	[P2 + 0x10] = R7;
    7aee:	d2 2f       	JUMP.S 0x7a92 <__fpadd_parts+0x152>;
    7af0:	f6 63       	R6 = -0x2 (X);		/*		R6=0xfffffffe( -2) */
    7af2:	35 0a       	CC = R5 <= R6 (IU);
    7af4:	b9 1f       	IF CC JUMP 0x7a66 <__fpadd_parts+0x126> (BP);
    7af6:	cb 2f       	JUMP.S 0x7a8c <__fpadd_parts+0x14c>;
    7af8:	13 0c       	CC = R3 == 0x2;
    7afa:	e2 17       	IF !CC JUMP 0x7abe <__fpadd_parts+0x17e> (BP);
    7afc:	00 34       	I0 = R0;
    7afe:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
    7b00:	6a 32       	P5 = P2;
    7b02:	05 9c       	R5 = [I0++];
    7b04:	b2 e0 02 00 	LSETUP(0x7b08 <__fpadd_parts+0x1c8>, 0x7b08 <__fpadd_parts+0x1c8>) LC1 = P0;
    7b08:	03 c8 00 18 	MNOP || [P5++] = R5 || R5 = [I0++];
    7b0c:	2d 92 05 9c 
    7b10:	2d 92       	[P5++] = R5;
    7b12:	00 32       	P0 = R0;
    7b14:	49 a0       	R1 = [P1 + 0x4];
    7b16:	40 a0       	R0 = [P0 + 0x4];
    7b18:	01 54       	R0 = R1 & R0;
    7b1a:	50 b0       	[P2 + 0x4] = R0;
    7b1c:	42 30       	R0 = P2;
    7b1e:	d0 2f       	JUMP.S 0x7abe <__fpadd_parts+0x17e>;
    7b20:	a2 30       	R4 = I2;
    7b22:	f4 52       	R3 = R4 - R6;
    7b24:	0c 03       	CC = AC0;
    7b26:	18 02       	CC = !CC;
    7b28:	ab 30       	R5 = I3;
    7b2a:	00 02       	R0 = CC;
    7b2c:	fd 53       	R7 = R5 - R7;
    7b2e:	c7 53       	R7 = R7 - R0;
    7b30:	87 0c       	CC = R7 < 0x0;
    7b32:	7d 17       	IF !CC JUMP 0x7a2c <__fpadd_parts+0xec> (BP);
    7b34:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    7b36:	50 b0       	[P2 + 0x4] = R0;
    7b38:	00 cc 00 c0 	R0 = R0 -|- R0 || [P2 + 0x8] = R2 || NOP;
    7b3c:	92 b0 00 00 
    7b40:	d8 52       	R3 = R0 - R3;
    7b42:	0c 03       	CC = AC0;
    7b44:	18 02       	CC = !CC;
    7b46:	00 02       	R0 = CC;
    7b48:	bf 43       	R7 = -R7;
    7b4a:	c7 53       	R7 = R7 - R0;
    7b4c:	d3 b0       	[P2 + 0xc] = R3;
    7b4e:	17 b1       	[P2 + 0x10] = R7;
    7b50:	75 2f       	JUMP.S 0x7a3a <__fpadd_parts+0xfa>;
    7b52:	15 30       	R2 = R5;
    7b54:	32 e1 00 00 	I2 = 0x0 (X);		/*		I2=0x0(  0) */
    7b58:	33 e1 00 00 	I3 = 0x0 (X);		/*		I3=0x0(  0) */
    7b5c:	57 2f       	JUMP.S 0x7a0a <__fpadd_parts+0xca>;
    7b5e:	01 e8 00 00 	UNLINK;
    7b62:	41 30       	R0 = P1;
    7b64:	a3 05       	(R7:4, P5:3) = [SP++];
    7b66:	10 00       	RTS;
    7b68:	40 0c       	CC = P0 == 0x0;
    7b6a:	50 1f       	IF CC JUMP 0x7a0a <__fpadd_parts+0xca> (BP);
    7b6c:	21 32       	P4 = R1;
    7b6e:	83 32       	P0 = I3;
    7b70:	19 30       	R3 = R1;
    7b72:	03 67       	R3 += -0x20;		/* (-32) */
    7b74:	40 5b       	P5 = P0 << 0x1;
    7b76:	f8 68       	P0 = 0x1f (X);		/*		P0=0x1f( 31) */
    7b78:	5c 40       	R4 >>= R3;
    7b7a:	20 44       	P0 -= P4;
    7b7c:	68 30       	R5 = P0;
    7b7e:	04 34       	I0 = R4;
    7b80:	65 30       	R4 = P5;
    7b82:	ac 40       	R4 <<= R5;
    7b84:	2c 32       	P5 = R4;
    7b86:	a2 30       	R4 = I2;
    7b88:	4c 40       	R4 >>= R1;
    7b8a:	83 0c       	CC = R3 < 0x0;
    7b8c:	03 68       	P3 = 0x0 (X);		/*		P3=0x0(  0) */
    7b8e:	6d 30       	R5 = P5;
    7b90:	65 57       	R5 = R5 | R4;
    7b92:	05 32       	P0 = R5;
    7b94:	a3 30       	R4 = I3;
    7b96:	4c 40       	R4 >>= R1;
    7b98:	0d 68       	P5 = 0x1 (X);		/*		P5=0x1(  1) */
    7b9a:	a8 30       	R5 = I0;
    7b9c:	85 06       	IF !CC P0 = R5;
    7b9e:	24 32       	P4 = R4;
    7ba0:	6d 30       	R5 = P5;
    7ba2:	8d 40       	R5 <<= R1;
    7ba4:	65 30       	R4 = P5;
    7ba6:	2d 32       	P5 = R5;
    7ba8:	83 0c       	CC = R3 < 0x0;
    7baa:	9c 40       	R4 <<= R3;
    7bac:	e3 06       	IF !CC P4 = P3;
    7bae:	8a 50       	R2 = R2 + R1;
    7bb0:	83 0c       	CC = R3 < 0x0;
    7bb2:	0c 30       	R1 = R4;
    7bb4:	4b 07       	IF CC R1 = P3;
    7bb6:	83 0c       	CC = R3 < 0x0;
    7bb8:	eb 06       	IF !CC P5 = P3;
    7bba:	5d 30       	R3 = P5;
    7bbc:	fb 67       	R3 += -0x1;		/* ( -1) */
    7bbe:	0c 03       	CC = AC0;
    7bc0:	04 02       	R4 = CC;
    7bc2:	f9 67       	R1 += -0x1;		/* ( -1) */
    7bc4:	aa 30       	R5 = I2;
    7bc6:	61 50       	R1 = R1 + R4;
    7bc8:	a3 30       	R4 = I3;
    7bca:	eb 54       	R3 = R3 & R5;
    7bcc:	61 54       	R1 = R1 & R4;
    7bce:	4b 56       	R1 = R3 | R1;
    7bd0:	07 c4 08 82 	R1 = ABS R1;
    7bd4:	89 43       	R1 = -R1;
    7bd6:	f9 4e       	R1 >>= 0x1f;
    7bd8:	68 30       	R5 = P0;
    7bda:	69 57       	R5 = R1 | R5;
    7bdc:	15 34       	I2 = R5;
    7bde:	5c 34       	I3 = P4;
    7be0:	15 2f       	JUMP.S 0x7a0a <__fpadd_parts+0xca>;
    7be2:	f0 63       	R0 = -0x2 (X);		/*		R0=0xfffffffe( -2) */
    7be4:	02 0a       	CC = R2 <= R0 (IU);
    7be6:	3a 1f       	IF CC JUMP 0x7a5a <__fpadd_parts+0x11a> (BP);
    7be8:	55 2f       	JUMP.S 0x7a92 <__fpadd_parts+0x152>;
    7bea:	0a 08       	CC = R2 == R1;
    7bec:	69 17       	IF !CC JUMP 0x7abe <__fpadd_parts+0x17e> (BP);
    7bee:	49 a0       	R1 = [P1 + 0x4];
    7bf0:	42 a0       	R2 = [P0 + 0x4];
    7bf2:	0a 08       	CC = R2 == R1;
    7bf4:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x4 <_.xy>(  4) */
    7bf8:	01 e1 30 8c 	R1.L = 0x8c30;		/* (-29648)	R1=0x8c30 <___thenan_df>(35888) */
    7bfc:	01 06       	IF !CC R0 = R1;
    7bfe:	60 2f       	JUMP.S 0x7abe <__fpadd_parts+0x17e>;

00007c00 <___adddf3>:
    7c00:	00 e8 16 00 	LINK 0x58;		/* (88) */
    7c04:	3a b1       	[FP + 0x10] = R2;
    7c06:	d0 ba       	[FP -0x4c] = R0;
    7c08:	e1 ba       	[FP -0x48] = R1;
    7c0a:	38 a1       	R0 = [FP + 0x10];
    7c0c:	79 a1       	R1 = [FP + 0x14];
    7c0e:	f0 ba       	[FP -0x44] = R0;
    7c10:	01 bb       	[FP -0x40] = R1;
    7c12:	20 e1 b4 ff 	R0 = -0x4c (X);		/*		R0=0xffffffb4(-76) */
    7c16:	4f 30       	R1 = FP;
    7c18:	01 50       	R0 = R1 + R0;
    7c1a:	21 66       	R1 += -0x3c;		/* (-60) */
    7c1c:	00 e3 b2 04 	CALL 0x8580 <___unpack_d>;
    7c20:	4f 30       	R1 = FP;
    7c22:	20 e1 bc ff 	R0 = -0x44 (X);		/*		R0=0xffffffbc(-68) */
    7c26:	01 50       	R0 = R1 + R0;
    7c28:	c1 66       	R1 += -0x28;		/* (-40) */
    7c2a:	00 e3 ab 04 	CALL 0x8580 <___unpack_d>;
    7c2e:	47 30       	R0 = FP;
    7c30:	4f 30       	R1 = FP;
    7c32:	57 30       	R2 = FP;
    7c34:	c1 66       	R1 += -0x28;		/* (-40) */
    7c36:	62 67       	R2 += -0x14;		/* (-20) */
    7c38:	20 66       	R0 += -0x3c;		/* (-60) */
    7c3a:	ff e3 83 fe 	CALL 0x7940 <__fpadd_parts>;
    7c3e:	00 e3 df 03 	CALL 0x83fc <___pack_d>;
    7c42:	01 e8 00 00 	UNLINK;
    7c46:	10 00       	RTS;

00007c48 <___subdf3>:
    7c48:	00 e8 16 00 	LINK 0x58;		/* (88) */
    7c4c:	3a b1       	[FP + 0x10] = R2;
    7c4e:	d0 ba       	[FP -0x4c] = R0;
    7c50:	e1 ba       	[FP -0x48] = R1;
    7c52:	38 a1       	R0 = [FP + 0x10];
    7c54:	79 a1       	R1 = [FP + 0x14];
    7c56:	f0 ba       	[FP -0x44] = R0;
    7c58:	01 bb       	[FP -0x40] = R1;
    7c5a:	20 e1 b4 ff 	R0 = -0x4c (X);		/*		R0=0xffffffb4(-76) */
    7c5e:	4f 30       	R1 = FP;
    7c60:	01 50       	R0 = R1 + R0;
    7c62:	21 66       	R1 += -0x3c;		/* (-60) */
    7c64:	00 e3 8e 04 	CALL 0x8580 <___unpack_d>;
    7c68:	4f 30       	R1 = FP;
    7c6a:	20 e1 bc ff 	R0 = -0x44 (X);		/*		R0=0xffffffbc(-68) */
    7c6e:	01 50       	R0 = R1 + R0;
    7c70:	c1 66       	R1 += -0x28;		/* (-40) */
    7c72:	00 e3 87 04 	CALL 0x8580 <___unpack_d>;
    7c76:	70 b9       	R0 = [FP -0x24];
    7c78:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
    7c7a:	70 bb       	[FP -0x24] = R0;
    7c7c:	4f 30       	R1 = FP;
    7c7e:	47 30       	R0 = FP;
    7c80:	57 30       	R2 = FP;
    7c82:	c1 66       	R1 += -0x28;		/* (-40) */
    7c84:	62 67       	R2 += -0x14;		/* (-20) */
    7c86:	20 66       	R0 += -0x3c;		/* (-60) */
    7c88:	ff e3 5c fe 	CALL 0x7940 <__fpadd_parts>;
    7c8c:	00 e3 b8 03 	CALL 0x83fc <___pack_d>;
    7c90:	01 e8 00 00 	UNLINK;
    7c94:	10 00       	RTS;
	...

00007c98 <___muldf3>:
    7c98:	e3 05       	[--SP] = (R7:4, P5:3);
    7c9a:	00 e8 19 00 	LINK 0x64;		/* (100) */
    7c9e:	fa b2       	[FP + 0x2c] = R2;
    7ca0:	d0 ba       	[FP -0x4c] = R0;
    7ca2:	e1 ba       	[FP -0x48] = R1;
    7ca4:	f8 a2       	R0 = [FP + 0x2c];
    7ca6:	39 a3       	R1 = [FP + 0x30];
    7ca8:	f0 ba       	[FP -0x44] = R0;
    7caa:	01 bb       	[FP -0x40] = R1;
    7cac:	20 e1 b4 ff 	R0 = -0x4c (X);		/*		R0=0xffffffb4(-76) */
    7cb0:	4f 30       	R1 = FP;
    7cb2:	01 50       	R0 = R1 + R0;
    7cb4:	21 66       	R1 += -0x3c;		/* (-60) */
    7cb6:	00 e3 65 04 	CALL 0x8580 <___unpack_d>;
    7cba:	57 30       	R2 = FP;
    7cbc:	20 e1 bc ff 	R0 = -0x44 (X);		/*		R0=0xffffffbc(-68) */
    7cc0:	4f 30       	R1 = FP;
    7cc2:	02 50       	R0 = R2 + R0;
    7cc4:	c1 66       	R1 += -0x28;		/* (-40) */
    7cc6:	00 e3 5d 04 	CALL 0x8580 <___unpack_d>;
    7cca:	10 b9       	R0 = [FP -0x3c];
    7ccc:	08 0e       	CC = R0 <= 0x1 (IU);
    7cce:	0f 10       	IF !CC JUMP 0x7cec <___muldf3+0x54>;
    7cd0:	23 b9       	R3 = [FP -0x38];
    7cd2:	74 b9       	R4 = [FP -0x24];
    7cd4:	23 08       	CC = R3 == R4;
    7cd6:	00 02       	R0 = CC;
    7cd8:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
    7cda:	20 bb       	[FP -0x38] = R0;
    7cdc:	47 30       	R0 = FP;
    7cde:	20 66       	R0 += -0x3c;		/* (-60) */
    7ce0:	00 e3 8e 03 	CALL 0x83fc <___pack_d>;
    7ce4:	01 e8 00 00 	UNLINK;
    7ce8:	a3 05       	(R7:4, P5:3) = [SP++];
    7cea:	10 00       	RTS;
    7cec:	61 b9       	R1 = [FP -0x28];
    7cee:	09 0e       	CC = R1 <= 0x1 (IU);
    7cf0:	0f 10       	IF !CC JUMP 0x7d0e <___muldf3+0x76>;
    7cf2:	25 b9       	R5 = [FP -0x38];
    7cf4:	70 b9       	R0 = [FP -0x24];
    7cf6:	05 08       	CC = R5 == R0;
    7cf8:	00 02       	R0 = CC;
    7cfa:	00 4b       	BITTGL (R0, 0x0);		/* bit  0 */
    7cfc:	70 bb       	[FP -0x24] = R0;
    7cfe:	47 30       	R0 = FP;
    7d00:	c0 66       	R0 += -0x28;		/* (-40) */
    7d02:	00 e3 7d 03 	CALL 0x83fc <___pack_d>;
    7d06:	01 e8 00 00 	UNLINK;
    7d0a:	a3 05       	(R7:4, P5:3) = [SP++];
    7d0c:	10 00       	RTS;
    7d0e:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
    7d10:	10 08       	CC = R0 == R2;
    7d12:	08 10       	IF !CC JUMP 0x7d22 <___muldf3+0x8a>;
    7d14:	11 0c       	CC = R1 == 0x2;
    7d16:	dd 17       	IF !CC JUMP 0x7cd0 <___muldf3+0x38> (BP);
    7d18:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0xffbc(65468) */
    7d1c:	00 e1 30 8c 	R0.L = 0x8c30;		/* (-29648)	R0=0x8c30 <___thenan_df>(35888) */
    7d20:	e0 2f       	JUMP.S 0x7ce0 <___muldf3+0x48>;
    7d22:	25 60       	R5 = 0x4 (X);		/*		R5=0x4(  4) */
    7d24:	29 08       	CC = R1 == R5;
    7d26:	07 14       	IF !CC JUMP 0x7d34 <___muldf3+0x9c> (BP);
    7d28:	10 0c       	CC = R0 == 0x2;
    7d2a:	f7 1f       	IF CC JUMP 0x7d18 <___muldf3+0x80> (BP);
    7d2c:	20 b9       	R0 = [FP -0x38];
    7d2e:	71 b9       	R1 = [FP -0x24];
    7d30:	08 08       	CC = R0 == R1;
    7d32:	e3 2f       	JUMP.S 0x7cf8 <___muldf3+0x60>;
    7d34:	10 0c       	CC = R0 == 0x2;
    7d36:	aa 18       	IF CC JUMP 0x7e8a <___muldf3+0x1f2>;
    7d38:	11 0c       	CC = R1 == 0x2;
    7d3a:	ac 18       	IF CC JUMP 0x7e92 <___muldf3+0x1fa>;
    7d3c:	9d b9       	P5 = [FP -0x1c];
    7d3e:	00 cc 3f ce 	R7 = R7 -|- R7 || R6 = [FP -0x30] || NOP;
    7d42:	46 b9 00 00 
    7d46:	5b b9       	P3 = [FP -0x2c];
    7d48:	f7 b0       	[SP + 0xc] = R7;
    7d4a:	55 30       	R2 = P5;
    7d4c:	82 ce 06 c0 	R0 = ROT R6 BY 0x0 || R5 = [FP -0x18] || NOP;
    7d50:	a5 b9 00 00 
    7d54:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    7d56:	00 e3 01 03 	CALL 0x8358 <___muldi3>;
    7d5a:	c0 ba       	[FP -0x50] = R0;
    7d5c:	82 ce 06 c4 	R2 = ROT R6 BY 0x0 || [SP + 0xc] = R7 || NOP;
    7d60:	f7 b0 00 00 
    7d64:	05 30       	R0 = R5;
    7d66:	21 32       	P4 = R1;
    7d68:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    7d6a:	00 e3 f7 02 	CALL 0x8358 <___muldi3>;
    7d6e:	82 ce 01 c8 	R4 = ROT R1 BY 0x0 || [SP + 0xc] = R7 || NOP;
    7d72:	f7 b0 00 00 
    7d76:	15 30       	R2 = R5;
    7d78:	30 30       	R6 = R0;
    7d7a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    7d7c:	43 30       	R0 = P3;
    7d7e:	00 e3 ed 02 	CALL 0x8358 <___muldi3>;
    7d82:	b1 ba       	[FP -0x54] = R1;
    7d84:	f7 b0       	[SP + 0xc] = R7;
    7d86:	55 30       	R2 = P5;
    7d88:	28 30       	R5 = R0;
    7d8a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    7d8c:	43 30       	R0 = P3;
    7d8e:	00 e3 e5 02 	CALL 0x8358 <___muldi3>;
    7d92:	f0 51       	R7 = R0 + R6;
    7d94:	0c 03       	CC = AC0;
    7d96:	02 02       	R2 = CC;
    7d98:	21 50       	R0 = R1 + R4;
    7d9a:	10 50       	R0 = R0 + R2;
    7d9c:	04 0a       	CC = R4 <= R0 (IU);
    7d9e:	7e 14       	IF !CC JUMP 0x7e9a <___muldf3+0x202> (BP);
    7da0:	04 08       	CC = R4 == R0;
    7da2:	03 14       	IF !CC JUMP 0x7da8 <___muldf3+0x110> (BP);
    7da4:	3e 0a       	CC = R6 <= R7 (IU);
    7da6:	7a 14       	IF !CC JUMP 0x7e9a <___muldf3+0x202> (BP);
    7da8:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    7daa:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    7dac:	c4 b8       	R4 = [FP -0x50];
    7dae:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    7db0:	a6 51       	R6 = R6 + R4;
    7db2:	0c 03       	CC = AC0;
    7db4:	64 30       	R4 = P4;
    7db6:	01 02       	R1 = CC;
    7db8:	e7 51       	R7 = R7 + R4;
    7dba:	cf 51       	R7 = R7 + R1;
    7dbc:	3c 0a       	CC = R4 <= R7 (IU);
    7dbe:	06 14       	IF !CC JUMP 0x7dca <___muldf3+0x132> (BP);
    7dc0:	3c 08       	CC = R4 == R7;
    7dc2:	08 14       	IF !CC JUMP 0x7dd2 <___muldf3+0x13a> (BP);
    7dc4:	c4 b8       	R4 = [FP -0x50];
    7dc6:	34 0a       	CC = R4 <= R6 (IU);
    7dc8:	05 1c       	IF CC JUMP 0x7dd2 <___muldf3+0x13a> (BP);
    7dca:	0a 64       	R2 += 0x1;		/* (  1) */
    7dcc:	0c 03       	CC = AC0;
    7dce:	01 02       	R1 = CC;
    7dd0:	cb 50       	R3 = R3 + R1;
    7dd2:	28 50       	R0 = R0 + R5;
    7dd4:	0c 03       	CC = AC0;
    7dd6:	01 02       	R1 = CC;
    7dd8:	b5 b8       	R5 = [FP -0x54];
    7dda:	4d 50       	R1 = R5 + R1;
    7ddc:	10 50       	R0 = R0 + R2;
    7dde:	0c 03       	CC = AC0;
    7de0:	02 02       	R2 = CC;
    7de2:	59 50       	R1 = R1 + R3;
    7de4:	84 b9       	R4 = [FP -0x20];
    7de6:	33 b9       	R3 = [FP -0x34];
    7de8:	51 50       	R1 = R1 + R2;
    7dea:	a3 50       	R2 = R3 + R4;
    7dec:	82 ce 02 c6 	R3 = ROT R2 BY 0x0 || R5 = [FP -0x38] || NOP;
    7df0:	25 b9 00 00 
    7df4:	23 64       	R3 += 0x4;		/* (  4) */
    7df6:	d3 bb       	[FP -0xc] = R3;
    7df8:	73 b9       	R3 = [FP -0x24];
    7dfa:	1d 08       	CC = R5 == R3;
    7dfc:	fc 63       	R4 = -0x1 (X);		/*		R4=0xffffffff( -1) */
    7dfe:	03 02       	R3 = CC;
    7e00:	44 e1 ff 1f 	R4.H = 0x1fff;		/* (8191)	R4=0x1fffffff(536870911) */
    7e04:	03 4b       	BITTGL (R3, 0x0);		/* bit  0 */
    7e06:	21 0a       	CC = R1 <= R4 (IU);
    7e08:	c3 bb       	[FP -0x10] = R3;
    7e0a:	2a 64       	R2 += 0x5;		/* (  5) */
    7e0c:	16 18       	IF CC JUMP 0x7e38 <___muldf3+0x1a0>;
    7e0e:	00 48       	CC = !BITTST (R0, 0x0);		/* bit  0 */
    7e10:	1a 30       	R3 = R2;
    7e12:	07 1c       	IF CC JUMP 0x7e20 <___muldf3+0x188> (BP);
    7e14:	80 08       	CC = R0 < R0;
    7e16:	82 c6 ff cf 	R7 = ROT R7 BY -0x1;
    7e1a:	82 c6 fe cd 	R6 = ROT R6 BY -0x1;
    7e1e:	ff 4a       	BITSET (R7, 0x1f);		/* bit 31 */
    7e20:	80 08       	CC = R0 < R0;
    7e22:	fd 63       	R5 = -0x1 (X);		/*		R5=0xffffffff( -1) */
    7e24:	82 c6 f9 c3 	R1 = ROT R1 BY -0x1;
    7e28:	45 e1 ff 1f 	R5.H = 0x1fff;		/* (8191)	R5=0x1fffffff(536870911) */
    7e2c:	82 c6 f8 c1 	R0 = ROT R0 BY -0x1;
    7e30:	29 0a       	CC = R1 <= R5 (IU);
    7e32:	0a 64       	R2 += 0x1;		/* (  1) */
    7e34:	ed 17       	IF !CC JUMP 0x7e0e <___muldf3+0x176> (BP);
    7e36:	d3 bb       	[FP -0xc] = R3;
    7e38:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    7e3a:	42 e1 ff 0f 	R2.H = 0xfff;		/* (4095)	R2=0xfffffff(268435455) */
    7e3e:	11 0a       	CC = R1 <= R2 (IU);
    7e40:	19 10       	IF !CC JUMP 0x7e72 <___muldf3+0x1da>;
    7e42:	d2 b9       	R2 = [FP -0xc];
    7e44:	fa 67       	R2 += -0x1;		/* ( -1) */
    7e46:	80 08       	CC = R0 < R0;
    7e48:	82 c6 08 c0 	R0 = ROT R0 BY 0x1;
    7e4c:	18 30       	R3 = R0;
    7e4e:	82 c6 09 c2 	R1 = ROT R1 BY 0x1;
    7e52:	03 4a       	BITSET (R3, 0x0);		/* bit  0 */
    7e54:	87 0c       	CC = R7 < 0x0;
    7e56:	03 07       	IF CC R0 = R3;
    7e58:	80 08       	CC = R0 < R0;
    7e5a:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    7e5c:	82 c6 0e cc 	R6 = ROT R6 BY 0x1;
    7e60:	43 e1 ff 0f 	R3.H = 0xfff;		/* (4095)	R3=0xfffffff(268435455) */
    7e64:	82 c6 0f ce 	R7 = ROT R7 BY 0x1;
    7e68:	19 0a       	CC = R1 <= R3 (IU);
    7e6a:	12 32       	P2 = R2;
    7e6c:	fa 67       	R2 += -0x1;		/* ( -1) */
    7e6e:	ec 1f       	IF CC JUMP 0x7e46 <___muldf3+0x1ae> (BP);
    7e70:	da bb       	[FP -0xc] = P2;
    7e72:	42 43       	R2 = R0.B (Z);
    7e74:	24 e1 80 00 	R4 = 0x80 (X);		/*		R4=0x80(128) */
    7e78:	22 08       	CC = R2 == R4;
    7e7a:	13 18       	IF CC JUMP 0x7ea0 <___muldf3+0x208>;
    7e7c:	e0 bb       	[FP -0x8] = R0;
    7e7e:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    7e80:	b0 bb       	[FP -0x14] = R0;
    7e82:	47 30       	R0 = FP;
    7e84:	f1 bb       	[FP -0x4] = R1;
    7e86:	60 67       	R0 += -0x14;		/* (-20) */
    7e88:	2c 2f       	JUMP.S 0x7ce0 <___muldf3+0x48>;
    7e8a:	22 b9       	R2 = [FP -0x38];
    7e8c:	73 b9       	R3 = [FP -0x24];
    7e8e:	1a 08       	CC = R2 == R3;
    7e90:	23 2f       	JUMP.S 0x7cd6 <___muldf3+0x3e>;
    7e92:	24 b9       	R4 = [FP -0x38];
    7e94:	75 b9       	R5 = [FP -0x24];
    7e96:	2c 08       	CC = R4 == R5;
    7e98:	30 2f       	JUMP.S 0x7cf8 <___muldf3+0x60>;
    7e9a:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    7e9c:	0b 60       	R3 = 0x1 (X);		/*		R3=0x1(  1) */
    7e9e:	87 2f       	JUMP.S 0x7dac <___muldf3+0x114>;
    7ea0:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
    7ea2:	ed 17       	IF !CC JUMP 0x7e7c <___muldf3+0x1e4> (BP);
    7ea4:	fe 57       	R7 = R6 | R7;
    7ea6:	07 0c       	CC = R7 == 0x0;
    7ea8:	ea 1f       	IF CC JUMP 0x7e7c <___muldf3+0x1e4> (BP);
    7eaa:	20 50       	R0 = R0 + R4;
    7eac:	0c 03       	CC = AC0;
    7eae:	02 02       	R2 = CC;
    7eb0:	40 4d       	R0 >>>= 0x8;
    7eb2:	40 4f       	R0 <<= 0x8;
    7eb4:	51 50       	R1 = R1 + R2;
    7eb6:	e3 2f       	JUMP.S 0x7e7c <___muldf3+0x1e4>;

00007eb8 <___divdf3>:
    7eb8:	60 05       	[--SP] = (R7:4);
    7eba:	00 e8 11 00 	LINK 0x44;		/* (68) */
    7ebe:	3a b2       	[FP + 0x20] = R2;
    7ec0:	20 bb       	[FP -0x38] = R0;
    7ec2:	31 bb       	[FP -0x34] = R1;
    7ec4:	38 a2       	R0 = [FP + 0x20];
    7ec6:	79 a2       	R1 = [FP + 0x24];
    7ec8:	40 bb       	[FP -0x30] = R0;
    7eca:	51 bb       	[FP -0x2c] = R1;
    7ecc:	47 30       	R0 = FP;
    7ece:	4f 30       	R1 = FP;
    7ed0:	40 66       	R0 += -0x38;		/* (-56) */
    7ed2:	c1 66       	R1 += -0x28;		/* (-40) */
    7ed4:	00 e3 56 03 	CALL 0x8580 <___unpack_d>;
    7ed8:	47 30       	R0 = FP;
    7eda:	4f 30       	R1 = FP;
    7edc:	80 66       	R0 += -0x30;		/* (-48) */
    7ede:	61 67       	R1 += -0x14;		/* (-20) */
    7ee0:	00 e3 50 03 	CALL 0x8580 <___unpack_d>;
    7ee4:	60 b9       	R0 = [FP -0x28];
    7ee6:	08 0e       	CC = R0 <= 0x1 (IU);
    7ee8:	09 10       	IF !CC JUMP 0x7efa <___divdf3+0x42>;
    7eea:	47 30       	R0 = FP;
    7eec:	c0 66       	R0 += -0x28;		/* (-40) */
    7eee:	00 e3 87 02 	CALL 0x83fc <___pack_d>;
    7ef2:	01 e8 00 00 	UNLINK;
    7ef6:	20 05       	(R7:4) = [SP++];
    7ef8:	10 00       	RTS;
    7efa:	b1 b9       	R1 = [FP -0x14];
    7efc:	09 0e       	CC = R1 <= 0x1 (IU);
    7efe:	09 10       	IF !CC JUMP 0x7f10 <___divdf3+0x58>;
    7f00:	47 30       	R0 = FP;
    7f02:	60 67       	R0 += -0x14;		/* (-20) */
    7f04:	00 e3 7c 02 	CALL 0x83fc <___pack_d>;
    7f08:	01 e8 00 00 	UNLINK;
    7f0c:	20 05       	(R7:4) = [SP++];
    7f0e:	10 00       	RTS;
    7f10:	73 b9       	R3 = [FP -0x24];
    7f12:	c2 b9       	R2 = [FP -0x10];
    7f14:	93 58       	R2 = R3 ^ R2;
    7f16:	72 bb       	[FP -0x24] = R2;
    7f18:	22 60       	R2 = 0x4 (X);		/*		R2=0x4(  4) */
    7f1a:	10 08       	CC = R0 == R2;
    7f1c:	03 1c       	IF CC JUMP 0x7f22 <___divdf3+0x6a> (BP);
    7f1e:	10 0c       	CC = R0 == 0x2;
    7f20:	08 10       	IF !CC JUMP 0x7f30 <___divdf3+0x78>;
    7f22:	08 08       	CC = R0 == R1;
    7f24:	e3 17       	IF !CC JUMP 0x7eea <___divdf3+0x32> (BP);
    7f26:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x3(  3) */
    7f2a:	00 e1 30 8c 	R0.L = 0x8c30;		/* (-29648)	R0=0x8c30 <___thenan_df>(35888) */
    7f2e:	e0 2f       	JUMP.S 0x7eee <___divdf3+0x36>;
    7f30:	24 60       	R4 = 0x4 (X);		/*		R4=0x4(  4) */
    7f32:	21 08       	CC = R1 == R4;
    7f34:	46 18       	IF CC JUMP 0x7fc0 <___divdf3+0x108>;
    7f36:	11 0c       	CC = R1 == 0x2;
    7f38:	4f 18       	IF CC JUMP 0x7fd6 <___divdf3+0x11e>;
    7f3a:	f9 b9       	P1 = [FP -0x4];
    7f3c:	85 b9       	R5 = [FP -0x20];
    7f3e:	d1 b9       	R1 = [FP -0xc];
    7f40:	a7 b9       	R7 = [FP -0x18];
    7f42:	51 30       	R2 = P1;
    7f44:	0d 52       	R0 = R5 - R1;
    7f46:	3a 0a       	CC = R2 <= R7 (IU);
    7f48:	80 bb       	[FP -0x20] = R0;
    7f4a:	96 b9       	R6 = [FP -0x1c];
    7f4c:	e8 b9       	P0 = [FP -0x8];
    7f4e:	06 14       	IF !CC JUMP 0x7f5a <___divdf3+0xa2> (BP);
    7f50:	3a 08       	CC = R2 == R7;
    7f52:	0b 14       	IF !CC JUMP 0x7f68 <___divdf3+0xb0> (BP);
    7f54:	60 30       	R4 = P0;
    7f56:	34 0a       	CC = R4 <= R6 (IU);
    7f58:	08 1c       	IF CC JUMP 0x7f68 <___divdf3+0xb0> (BP);
    7f5a:	80 08       	CC = R0 < R0;
    7f5c:	82 c6 0e cc 	R6 = ROT R6 BY 0x1;
    7f60:	f8 67       	R0 += -0x1;		/* ( -1) */
    7f62:	82 c6 0f ce 	R7 = ROT R7 BY 0x1;
    7f66:	80 bb       	[FP -0x20] = R0;
    7f68:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    7f6a:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    7f6c:	e1 4f       	R1 <<= 0x1c;
    7f6e:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    7f70:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    7f72:	ea 69       	P2 = 0x3d (X);		/*		P2=0x3d( 61) */
    7f74:	b2 e0 1c 20 	LSETUP(0x7f78 <___divdf3+0xc0>, 0x7fac <___divdf3+0xf4>) LC1 = P2;
    7f78:	69 30       	R5 = P1;
    7f7a:	3d 0a       	CC = R5 <= R7 (IU);
    7f7c:	10 14       	IF !CC JUMP 0x7f9c <___divdf3+0xe4> (BP);
    7f7e:	3d 08       	CC = R5 == R7;
    7f80:	04 14       	IF !CC JUMP 0x7f88 <___divdf3+0xd0> (BP);
    7f82:	60 30       	R4 = P0;
    7f84:	34 0a       	CC = R4 <= R6 (IU);
    7f86:	0b 14       	IF !CC JUMP 0x7f9c <___divdf3+0xe4> (BP);
    7f88:	68 30       	R5 = P0;
    7f8a:	ae 53       	R6 = R6 - R5;
    7f8c:	0c 03       	CC = AC0;
    7f8e:	18 02       	CC = !CC;
    7f90:	69 30       	R5 = P1;
    7f92:	04 02       	R4 = CC;
    7f94:	ef 53       	R7 = R7 - R5;
    7f96:	82 56       	R2 = R2 | R0;
    7f98:	cb 56       	R3 = R3 | R1;
    7f9a:	e7 53       	R7 = R7 - R4;
    7f9c:	80 08       	CC = R0 < R0;
    7f9e:	82 c6 f9 c3 	R1 = ROT R1 BY -0x1;
    7fa2:	82 c6 f8 c1 	R0 = ROT R0 BY -0x1;
    7fa6:	80 08       	CC = R0 < R0;
    7fa8:	82 c6 0e cc 	R6 = ROT R6 BY 0x1;
    7fac:	82 c6 0f ce 	R7 = ROT R7 BY 0x1;
    7fb0:	51 43       	R1 = R2.B (Z);
    7fb2:	24 e1 80 00 	R4 = 0x80 (X);		/*		R4=0x80(128) */
    7fb6:	21 08       	CC = R1 == R4;
    7fb8:	14 18       	IF CC JUMP 0x7fe0 <___divdf3+0x128>;
    7fba:	92 bb       	[FP -0x1c] = R2;
    7fbc:	a3 bb       	[FP -0x18] = R3;
    7fbe:	96 2f       	JUMP.S 0x7eea <___divdf3+0x32>;
    7fc0:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    7fc2:	90 bb       	[FP -0x1c] = R0;
    7fc4:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    7fc6:	00 cc 09 c2 	R1 = R1 -|- R1 || [FP -0x20] = R0 || NOP;
    7fca:	80 bb 00 00 
    7fce:	47 30       	R0 = FP;
    7fd0:	a1 bb       	[FP -0x18] = R1;
    7fd2:	c0 66       	R0 += -0x28;		/* (-40) */
    7fd4:	8d 2f       	JUMP.S 0x7eee <___divdf3+0x36>;
    7fd6:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    7fd8:	60 bb       	[FP -0x28] = R0;
    7fda:	47 30       	R0 = FP;
    7fdc:	c0 66       	R0 += -0x28;		/* (-40) */
    7fde:	88 2f       	JUMP.S 0x7eee <___divdf3+0x36>;
    7fe0:	42 48       	CC = !BITTST (R2, 0x8);		/* bit  8 */
    7fe2:	ec 17       	IF !CC JUMP 0x7fba <___divdf3+0x102> (BP);
    7fe4:	fe 57       	R7 = R6 | R7;
    7fe6:	07 0c       	CC = R7 == 0x0;
    7fe8:	e9 1f       	IF CC JUMP 0x7fba <___divdf3+0x102> (BP);
    7fea:	22 50       	R0 = R2 + R4;
    7fec:	0c 03       	CC = AC0;
    7fee:	01 02       	R1 = CC;
    7ff0:	82 c6 c0 05 	R2 = R0 >>> 0x8;
    7ff4:	42 4f       	R2 <<= 0x8;
    7ff6:	cb 50       	R3 = R3 + R1;
    7ff8:	e1 2f       	JUMP.S 0x7fba <___divdf3+0x102>;
	...

00007ffc <___eqdf2>:
    7ffc:	00 e8 11 00 	LINK 0x44;		/* (68) */
    8000:	3a b1       	[FP + 0x10] = R2;
    8002:	20 bb       	[FP -0x38] = R0;
    8004:	31 bb       	[FP -0x34] = R1;
    8006:	38 a1       	R0 = [FP + 0x10];
    8008:	79 a1       	R1 = [FP + 0x14];
    800a:	40 bb       	[FP -0x30] = R0;
    800c:	51 bb       	[FP -0x2c] = R1;
    800e:	47 30       	R0 = FP;
    8010:	4f 30       	R1 = FP;
    8012:	40 66       	R0 += -0x38;		/* (-56) */
    8014:	c1 66       	R1 += -0x28;		/* (-40) */
    8016:	00 e3 b5 02 	CALL 0x8580 <___unpack_d>;
    801a:	47 30       	R0 = FP;
    801c:	4f 30       	R1 = FP;
    801e:	80 66       	R0 += -0x30;		/* (-48) */
    8020:	61 67       	R1 += -0x14;		/* (-20) */
    8022:	00 e3 af 02 	CALL 0x8580 <___unpack_d>;
    8026:	60 b9       	R0 = [FP -0x28];
    8028:	08 0e       	CC = R0 <= 0x1 (IU);
    802a:	0d 18       	IF CC JUMP 0x8044 <___eqdf2+0x48>;
    802c:	b0 b9       	R0 = [FP -0x14];
    802e:	08 0e       	CC = R0 <= 0x1 (IU);
    8030:	0a 18       	IF CC JUMP 0x8044 <___eqdf2+0x48>;
    8032:	47 30       	R0 = FP;
    8034:	4f 30       	R1 = FP;
    8036:	c0 66       	R0 += -0x28;		/* (-40) */
    8038:	61 67       	R1 += -0x14;		/* (-20) */
    803a:	00 e3 03 03 	CALL 0x8640 <___fpcmp_parts_d>;
    803e:	01 e8 00 00 	UNLINK;
    8042:	10 00       	RTS;
    8044:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8046:	fc 2f       	JUMP.S 0x803e <___eqdf2+0x42>;

00008048 <___nedf2>:
    8048:	00 e8 11 00 	LINK 0x44;		/* (68) */
    804c:	3a b1       	[FP + 0x10] = R2;
    804e:	20 bb       	[FP -0x38] = R0;
    8050:	31 bb       	[FP -0x34] = R1;
    8052:	38 a1       	R0 = [FP + 0x10];
    8054:	79 a1       	R1 = [FP + 0x14];
    8056:	40 bb       	[FP -0x30] = R0;
    8058:	51 bb       	[FP -0x2c] = R1;
    805a:	47 30       	R0 = FP;
    805c:	4f 30       	R1 = FP;
    805e:	40 66       	R0 += -0x38;		/* (-56) */
    8060:	c1 66       	R1 += -0x28;		/* (-40) */
    8062:	00 e3 8f 02 	CALL 0x8580 <___unpack_d>;
    8066:	47 30       	R0 = FP;
    8068:	4f 30       	R1 = FP;
    806a:	80 66       	R0 += -0x30;		/* (-48) */
    806c:	61 67       	R1 += -0x14;		/* (-20) */
    806e:	00 e3 89 02 	CALL 0x8580 <___unpack_d>;
    8072:	60 b9       	R0 = [FP -0x28];
    8074:	08 0e       	CC = R0 <= 0x1 (IU);
    8076:	0d 18       	IF CC JUMP 0x8090 <___nedf2+0x48>;
    8078:	b0 b9       	R0 = [FP -0x14];
    807a:	08 0e       	CC = R0 <= 0x1 (IU);
    807c:	0a 18       	IF CC JUMP 0x8090 <___nedf2+0x48>;
    807e:	47 30       	R0 = FP;
    8080:	4f 30       	R1 = FP;
    8082:	c0 66       	R0 += -0x28;		/* (-40) */
    8084:	61 67       	R1 += -0x14;		/* (-20) */
    8086:	00 e3 dd 02 	CALL 0x8640 <___fpcmp_parts_d>;
    808a:	01 e8 00 00 	UNLINK;
    808e:	10 00       	RTS;
    8090:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8092:	fc 2f       	JUMP.S 0x808a <___nedf2+0x42>;

00008094 <___gtdf2>:
    8094:	00 e8 11 00 	LINK 0x44;		/* (68) */
    8098:	3a b1       	[FP + 0x10] = R2;
    809a:	20 bb       	[FP -0x38] = R0;
    809c:	31 bb       	[FP -0x34] = R1;
    809e:	38 a1       	R0 = [FP + 0x10];
    80a0:	79 a1       	R1 = [FP + 0x14];
    80a2:	40 bb       	[FP -0x30] = R0;
    80a4:	51 bb       	[FP -0x2c] = R1;
    80a6:	47 30       	R0 = FP;
    80a8:	4f 30       	R1 = FP;
    80aa:	40 66       	R0 += -0x38;		/* (-56) */
    80ac:	c1 66       	R1 += -0x28;		/* (-40) */
    80ae:	00 e3 69 02 	CALL 0x8580 <___unpack_d>;
    80b2:	47 30       	R0 = FP;
    80b4:	4f 30       	R1 = FP;
    80b6:	80 66       	R0 += -0x30;		/* (-48) */
    80b8:	61 67       	R1 += -0x14;		/* (-20) */
    80ba:	00 e3 63 02 	CALL 0x8580 <___unpack_d>;
    80be:	60 b9       	R0 = [FP -0x28];
    80c0:	08 0e       	CC = R0 <= 0x1 (IU);
    80c2:	0d 18       	IF CC JUMP 0x80dc <___gtdf2+0x48>;
    80c4:	b0 b9       	R0 = [FP -0x14];
    80c6:	08 0e       	CC = R0 <= 0x1 (IU);
    80c8:	0a 18       	IF CC JUMP 0x80dc <___gtdf2+0x48>;
    80ca:	47 30       	R0 = FP;
    80cc:	4f 30       	R1 = FP;
    80ce:	c0 66       	R0 += -0x28;		/* (-40) */
    80d0:	61 67       	R1 += -0x14;		/* (-20) */
    80d2:	00 e3 b7 02 	CALL 0x8640 <___fpcmp_parts_d>;
    80d6:	01 e8 00 00 	UNLINK;
    80da:	10 00       	RTS;
    80dc:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    80de:	fc 2f       	JUMP.S 0x80d6 <___gtdf2+0x42>;

000080e0 <___gedf2>:
    80e0:	00 e8 11 00 	LINK 0x44;		/* (68) */
    80e4:	3a b1       	[FP + 0x10] = R2;
    80e6:	20 bb       	[FP -0x38] = R0;
    80e8:	31 bb       	[FP -0x34] = R1;
    80ea:	38 a1       	R0 = [FP + 0x10];
    80ec:	79 a1       	R1 = [FP + 0x14];
    80ee:	40 bb       	[FP -0x30] = R0;
    80f0:	51 bb       	[FP -0x2c] = R1;
    80f2:	47 30       	R0 = FP;
    80f4:	4f 30       	R1 = FP;
    80f6:	40 66       	R0 += -0x38;		/* (-56) */
    80f8:	c1 66       	R1 += -0x28;		/* (-40) */
    80fa:	00 e3 43 02 	CALL 0x8580 <___unpack_d>;
    80fe:	47 30       	R0 = FP;
    8100:	4f 30       	R1 = FP;
    8102:	80 66       	R0 += -0x30;		/* (-48) */
    8104:	61 67       	R1 += -0x14;		/* (-20) */
    8106:	00 e3 3d 02 	CALL 0x8580 <___unpack_d>;
    810a:	60 b9       	R0 = [FP -0x28];
    810c:	08 0e       	CC = R0 <= 0x1 (IU);
    810e:	0d 18       	IF CC JUMP 0x8128 <___gedf2+0x48>;
    8110:	b0 b9       	R0 = [FP -0x14];
    8112:	08 0e       	CC = R0 <= 0x1 (IU);
    8114:	0a 18       	IF CC JUMP 0x8128 <___gedf2+0x48>;
    8116:	47 30       	R0 = FP;
    8118:	4f 30       	R1 = FP;
    811a:	c0 66       	R0 += -0x28;		/* (-40) */
    811c:	61 67       	R1 += -0x14;		/* (-20) */
    811e:	00 e3 91 02 	CALL 0x8640 <___fpcmp_parts_d>;
    8122:	01 e8 00 00 	UNLINK;
    8126:	10 00       	RTS;
    8128:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    812a:	fc 2f       	JUMP.S 0x8122 <___gedf2+0x42>;

0000812c <___ltdf2>:
    812c:	00 e8 11 00 	LINK 0x44;		/* (68) */
    8130:	3a b1       	[FP + 0x10] = R2;
    8132:	20 bb       	[FP -0x38] = R0;
    8134:	31 bb       	[FP -0x34] = R1;
    8136:	38 a1       	R0 = [FP + 0x10];
    8138:	79 a1       	R1 = [FP + 0x14];
    813a:	40 bb       	[FP -0x30] = R0;
    813c:	51 bb       	[FP -0x2c] = R1;
    813e:	47 30       	R0 = FP;
    8140:	4f 30       	R1 = FP;
    8142:	40 66       	R0 += -0x38;		/* (-56) */
    8144:	c1 66       	R1 += -0x28;		/* (-40) */
    8146:	00 e3 1d 02 	CALL 0x8580 <___unpack_d>;
    814a:	47 30       	R0 = FP;
    814c:	4f 30       	R1 = FP;
    814e:	80 66       	R0 += -0x30;		/* (-48) */
    8150:	61 67       	R1 += -0x14;		/* (-20) */
    8152:	00 e3 17 02 	CALL 0x8580 <___unpack_d>;
    8156:	60 b9       	R0 = [FP -0x28];
    8158:	08 0e       	CC = R0 <= 0x1 (IU);
    815a:	0d 18       	IF CC JUMP 0x8174 <___ltdf2+0x48>;
    815c:	b0 b9       	R0 = [FP -0x14];
    815e:	08 0e       	CC = R0 <= 0x1 (IU);
    8160:	0a 18       	IF CC JUMP 0x8174 <___ltdf2+0x48>;
    8162:	47 30       	R0 = FP;
    8164:	4f 30       	R1 = FP;
    8166:	c0 66       	R0 += -0x28;		/* (-40) */
    8168:	61 67       	R1 += -0x14;		/* (-20) */
    816a:	00 e3 6b 02 	CALL 0x8640 <___fpcmp_parts_d>;
    816e:	01 e8 00 00 	UNLINK;
    8172:	10 00       	RTS;
    8174:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8176:	fc 2f       	JUMP.S 0x816e <___ltdf2+0x42>;

00008178 <___floatsidf>:
    8178:	60 05       	[--SP] = (R7:4);
    817a:	00 e8 08 00 	LINK 0x20;		/* (32) */
    817e:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
    8180:	b1 bb       	[FP -0x14] = R1;
    8182:	00 0c       	CC = R0 == 0x0;
    8184:	82 c6 08 83 	R1 = R0 >> 0x1f;
    8188:	c1 bb       	[FP -0x10] = R1;
    818a:	0b 14       	IF !CC JUMP 0x81a0 <___floatsidf+0x28> (BP);
    818c:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    818e:	b0 bb       	[FP -0x14] = R0;
    8190:	47 30       	R0 = FP;
    8192:	60 67       	R0 += -0x14;		/* (-20) */
    8194:	00 e3 34 01 	CALL 0x83fc <___pack_d>;
    8198:	01 e8 00 00 	UNLINK;
    819c:	20 05       	(R7:4) = [SP++];
    819e:	10 00       	RTS;
    81a0:	01 0c       	CC = R1 == 0x0;
    81a2:	e2 61       	R2 = 0x3c (X);		/*		R2=0x3c( 60) */
    81a4:	d2 bb       	[FP -0xc] = R2;
    81a6:	1e 14       	IF !CC JUMP 0x81e2 <___floatsidf+0x6a> (BP);
    81a8:	38 30       	R7 = R0;
    81aa:	07 30       	R0 = R7;
    81ac:	00 e3 fc 00 	CALL 0x83a4 <___clzsi2>;
    81b0:	08 30       	R1 = R0;
    81b2:	e9 64       	R1 += 0x1d;		/* ( 29) */
    81b4:	01 0d       	CC = R1 <= 0x0;
    81b6:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    81b8:	22 18       	IF CC JUMP 0x81fc <___floatsidf+0x84>;
    81ba:	10 30       	R2 = R0;
    81bc:	ea 67       	R2 += -0x3;		/* ( -3) */
    81be:	1f 30       	R3 = R7;
    81c0:	93 40       	R3 <<= R2;
    81c2:	0b 32       	P1 = R3;
    81c4:	fe 60       	R6 = 0x1f (X);		/*		R6=0x1f( 31) */
    81c6:	82 c6 ff 87 	R3 = R7 >> 0x1;
    81ca:	0e 53       	R4 = R6 - R1;
    81cc:	82 0c       	CC = R2 < 0x0;
    81ce:	63 40       	R3 >>= R4;
    81d0:	59 06       	IF !CC R3 = P1;
    81d2:	8f 40       	R7 <<= R1;
    81d4:	82 0c       	CC = R2 < 0x0;
    81d6:	2f 07       	IF CC R5 = R7;
    81d8:	06 52       	R0 = R6 - R0;
    81da:	f3 bb       	[FP -0x4] = R3;
    81dc:	e5 bb       	[FP -0x8] = R5;
    81de:	d0 bb       	[FP -0xc] = R0;
    81e0:	d8 2f       	JUMP.S 0x8190 <___floatsidf+0x18>;
    81e2:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
    81e4:	f9 4f       	R1 <<= 0x1f;
    81e6:	08 08       	CC = R0 == R1;
    81e8:	0d 18       	IF CC JUMP 0x8202 <___floatsidf+0x8a>;
    81ea:	87 43       	R7 = -R0;
    81ec:	07 30       	R0 = R7;
    81ee:	00 e3 db 00 	CALL 0x83a4 <___clzsi2>;
    81f2:	08 30       	R1 = R0;
    81f4:	e9 64       	R1 += 0x1d;		/* ( 29) */
    81f6:	01 0d       	CC = R1 <= 0x0;
    81f8:	05 60       	R5 = 0x0 (X);		/*		R5=0x0(  0) */
    81fa:	e0 17       	IF !CC JUMP 0x81ba <___floatsidf+0x42> (BP);
    81fc:	e7 bb       	[FP -0x8] = R7;
    81fe:	f5 bb       	[FP -0x4] = R5;
    8200:	c8 2f       	JUMP.S 0x8190 <___floatsidf+0x18>;
    8202:	21 e1 0f fe 	R1 = -0x1f1 (X);		/*		R1=0xfffffe0f(-497) */
    8206:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    8208:	a9 4f       	R1 <<= 0x15;
    820a:	c7 2f       	JUMP.S 0x8198 <___floatsidf+0x20>;

0000820c <___fixdfsi>:
    820c:	78 05       	[--SP] = (R7:7);
    820e:	00 e8 0a 00 	LINK 0x28;		/* (40) */
    8212:	90 bb       	[FP -0x1c] = R0;
    8214:	a1 bb       	[FP -0x18] = R1;
    8216:	47 30       	R0 = FP;
    8218:	4f 30       	R1 = FP;
    821a:	20 67       	R0 += -0x1c;		/* (-28) */
    821c:	61 67       	R1 += -0x14;		/* (-20) */
    821e:	00 e3 b1 01 	CALL 0x8580 <___unpack_d>;
    8222:	b0 b9       	R0 = [FP -0x14];
    8224:	10 0c       	CC = R0 == 0x2;
    8226:	33 18       	IF CC JUMP 0x828c <___fixdfsi+0x80>;
    8228:	08 0e       	CC = R0 <= 0x1 (IU);
    822a:	31 18       	IF CC JUMP 0x828c <___fixdfsi+0x80>;
    822c:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    822e:	08 08       	CC = R0 == R1;
    8230:	07 18       	IF CC JUMP 0x823e <___fixdfsi+0x32>;
    8232:	d0 b9       	R0 = [FP -0xc];
    8234:	80 0c       	CC = R0 < 0x0;
    8236:	2b 18       	IF CC JUMP 0x828c <___fixdfsi+0x80>;
    8238:	f1 60       	R1 = 0x1e (X);		/*		R1=0x1e( 30) */
    823a:	08 09       	CC = R0 <= R1;
    823c:	0d 1c       	IF CC JUMP 0x8256 <___fixdfsi+0x4a> (BP);
    823e:	c2 b9       	R2 = [FP -0x10];
    8240:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    8242:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
    8244:	02 0c       	CC = R2 == 0x0;
    8246:	f8 4f       	R0 <<= 0x1f;
    8248:	41 e1 ff 7f 	R1.H = 0x7fff;		/* (32767)	R1=0x7fffffff(2147483647) */
    824c:	01 e8 00 00 	UNLINK;
    8250:	01 07       	IF CC R0 = R1;
    8252:	38 05       	(R7:7) = [SP++];
    8254:	10 00       	RTS;
    8256:	e1 61       	R1 = 0x3c (X);		/*		R1=0x3c( 60) */
    8258:	01 52       	R0 = R1 - R0;
    825a:	f2 b9       	R2 = [FP -0x4];
    825c:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
    825e:	41 52       	R1 = R1 - R0;
    8260:	3a 30       	R7 = R2;
    8262:	0a 4f       	R2 <<= 0x1;
    8264:	8a 40       	R2 <<= R1;
    8266:	82 ce 00 c6 	R3 = ROT R0 BY 0x0 || R1 = [FP -0x8] || NOP;
    826a:	e1 b9 00 00 
    826e:	03 67       	R3 += -0x20;		/* (-32) */
    8270:	41 40       	R1 >>= R0;
    8272:	4a 56       	R1 = R2 | R1;
    8274:	5f 40       	R7 >>= R3;
    8276:	83 0c       	CC = R3 < 0x0;
    8278:	07 06       	IF !CC R0 = R7;
    827a:	01 07       	IF CC R0 = R1;
    827c:	c2 b9       	R2 = [FP -0x10];
    827e:	81 43       	R1 = -R0;
    8280:	02 0c       	CC = R2 == 0x0;
    8282:	01 e8 00 00 	UNLINK;
    8286:	01 06       	IF !CC R0 = R1;
    8288:	38 05       	(R7:7) = [SP++];
    828a:	10 00       	RTS;
    828c:	01 e8 00 00 	UNLINK;
    8290:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    8292:	38 05       	(R7:7) = [SP++];
    8294:	10 00       	RTS;
	...

00008298 <___floatunsidf>:
    8298:	60 05       	[--SP] = (R7:4);
    829a:	00 e8 08 00 	LINK 0x20;		/* (32) */
    829e:	06 60       	R6 = 0x0 (X);		/*		R6=0x0(  0) */
    82a0:	00 0c       	CC = R0 == 0x0;
    82a2:	82 ce 00 ce 	R7 = ROT R0 BY 0x0 || [FP -0x10] = R6 || NOP;
    82a6:	c6 bb 00 00 
    82aa:	29 18       	IF CC JUMP 0x82fc <___floatunsidf+0x64>;
    82ac:	18 60       	R0 = 0x3 (X);		/*		R0=0x3(  3) */
    82ae:	b0 bb       	[FP -0x14] = R0;
    82b0:	e0 61       	R0 = 0x3c (X);		/*		R0=0x3c( 60) */
    82b2:	d0 bb       	[FP -0xc] = R0;
    82b4:	07 30       	R0 = R7;
    82b6:	00 e3 77 00 	CALL 0x83a4 <___clzsi2>;
    82ba:	08 30       	R1 = R0;
    82bc:	e9 64       	R1 += 0x1d;		/* ( 29) */
    82be:	81 0c       	CC = R1 < 0x0;
    82c0:	28 18       	IF CC JUMP 0x8310 <___floatunsidf+0x78>;
    82c2:	01 0c       	CC = R1 == 0x0;
    82c4:	47 18       	IF CC JUMP 0x8352 <___floatunsidf+0xba>;
    82c6:	10 30       	R2 = R0;
    82c8:	ea 67       	R2 += -0x3;		/* ( -3) */
    82ca:	1f 30       	R3 = R7;
    82cc:	93 40       	R3 <<= R2;
    82ce:	0b 32       	P1 = R3;
    82d0:	fd 60       	R5 = 0x1f (X);		/*		R5=0x1f( 31) */
    82d2:	82 c6 ff 87 	R3 = R7 >> 0x1;
    82d6:	0d 53       	R4 = R5 - R1;
    82d8:	82 0c       	CC = R2 < 0x0;
    82da:	63 40       	R3 >>= R4;
    82dc:	59 06       	IF !CC R3 = P1;
    82de:	8f 40       	R7 <<= R1;
    82e0:	82 0c       	CC = R2 < 0x0;
    82e2:	37 07       	IF CC R6 = R7;
    82e4:	05 52       	R0 = R5 - R0;
    82e6:	f3 bb       	[FP -0x4] = R3;
    82e8:	e6 bb       	[FP -0x8] = R6;
    82ea:	d0 bb       	[FP -0xc] = R0;
    82ec:	47 30       	R0 = FP;
    82ee:	60 67       	R0 += -0x14;		/* (-20) */
    82f0:	00 e3 86 00 	CALL 0x83fc <___pack_d>;
    82f4:	01 e8 00 00 	UNLINK;
    82f8:	20 05       	(R7:4) = [SP++];
    82fa:	10 00       	RTS;
    82fc:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    82fe:	b0 bb       	[FP -0x14] = R0;
    8300:	47 30       	R0 = FP;
    8302:	60 67       	R0 += -0x14;		/* (-20) */
    8304:	00 e3 7c 00 	CALL 0x83fc <___pack_d>;
    8308:	01 e8 00 00 	UNLINK;
    830c:	20 05       	(R7:4) = [SP++];
    830e:	10 00       	RTS;
    8310:	89 43       	R1 = -R1;
    8312:	82 ce 01 c6 	R3 = ROT R1 BY 0x0 || [FP -0x4] = R6 || NOP;
    8316:	f6 bb 00 00 
    831a:	03 67       	R3 += -0x20;		/* (-32) */
    831c:	0a 60       	R2 = 0x1 (X);		/*		R2=0x1(  1) */
    831e:	83 0c       	CC = R3 < 0x0;
    8320:	8a 40       	R2 <<= R1;
    8322:	16 06       	IF !CC R2 = R6;
    8324:	fa 67       	R2 += -0x1;		/* ( -1) */
    8326:	0c 03       	CC = AC0;
    8328:	ba 54       	R2 = R2 & R7;
    832a:	07 c4 10 84 	R2 = ABS R2;
    832e:	4f 40       	R7 >>= R1;
    8330:	f9 60       	R1 = 0x1f (X);		/*		R1=0x1f( 31) */
    8332:	01 52       	R0 = R1 - R0;
    8334:	83 0c       	CC = R3 < 0x0;
    8336:	92 43       	R2 = -R2;
    8338:	3e 06       	IF !CC R7 = R6;
    833a:	d0 bb       	[FP -0xc] = R0;
    833c:	fa 4e       	R2 >>= 0x1f;
    833e:	47 30       	R0 = FP;
    8340:	fa 57       	R7 = R2 | R7;
    8342:	60 67       	R0 += -0x14;		/* (-20) */
    8344:	e7 bb       	[FP -0x8] = R7;
    8346:	00 e3 5b 00 	CALL 0x83fc <___pack_d>;
    834a:	01 e8 00 00 	UNLINK;
    834e:	20 05       	(R7:4) = [SP++];
    8350:	10 00       	RTS;
    8352:	e7 bb       	[FP -0x8] = R7;
    8354:	f6 bb       	[FP -0x4] = R6;
    8356:	cb 2f       	JUMP.S 0x82ec <___floatunsidf+0x54>;

00008358 <___muldi3>:
    8358:	80 c8 11 44 	A1 = R2.L * R1.H, A0 = R2.H * R1.L (FU) || R3 = [SP + 0xc] || NOP;
    835c:	f3 a0 00 00 
    8360:	81 c8 18 4c 	A1 += R3.L * R0.H, A0 += R3.H * R0.L (FU) || [SP] = R4 || NOP;
    8364:	34 93 00 00 
    8368:	0b c4 3f 80 	A0 += A1;
    836c:	21 31       	R4 = A0.W;
    836e:	83 c0 03 00 	A0 = R0.L * R3.L (FU);
    8372:	83 c0 11 08 	A0 += R2.L * R1.L (FU);
    8376:	80 c0 10 18 	A1 = R2.L * R0.L (FU);
    837a:	1b 31       	R3 = A1.W;
    837c:	83 c6 80 51 	A1 = A1 >> 0x10;
    8380:	81 c0 10 4e 	A1 += R2.L * R0.H, A0 += R2.H * R0.H (FU);
    8384:	81 c0 02 58 	A1 += R0.L * R2.H (FU);
    8388:	03 31       	R0 = A1.W;
    838a:	83 c6 80 51 	A1 = A1 >> 0x10;
    838e:	0b c4 3f 80 	A0 += A1;
    8392:	09 31       	R1 = A0.W;
    8394:	04 c6 18 00 	R0 = PACK (R0.L, R3.L);
    8398:	22 cc 0c 82 	R1.H = R1.H + R4.L (NS) || R4 = [SP] || NOP;
    839c:	34 91 00 00 
    83a0:	10 00       	RTS;
	...

000083a4 <___clzsi2>:
    83a4:	81 e1 ff ff 	R1 = 0xffff (Z);		/*		R1=0xffff(65535) */
    83a8:	08 0a       	CC = R0 <= R1 (IU);
    83aa:	00 e8 00 00 	LINK 0x0;		/* (0) */
    83ae:	19 14       	IF !CC JUMP 0x83e0 <___clzsi2+0x3c> (BP);
    83b0:	22 e1 ff 00 	R2 = 0xff (X);		/*		R2=0xff(255) */
    83b4:	10 0a       	CC = R0 <= R2 (IU);
    83b6:	01 61       	R1 = 0x20 (X);		/*		R1=0x20( 32) */
    83b8:	c2 60       	R2 = 0x18 (X);		/*		R2=0x18( 24) */
    83ba:	23 e1 ff 00 	R3 = 0xff (X);		/*		R3=0xff(255) */
    83be:	11 07       	IF CC R2 = R1;
    83c0:	42 68       	P2 = 0x8 (X);		/*		P2=0x8(  8) */
    83c2:	18 0a       	CC = R0 <= R3 (IU);
    83c4:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    83c6:	4a 06       	IF !CC R1 = P2;
    83c8:	48 40       	R0 >>= R1;
    83ca:	08 32       	P1 = R0;
    83cc:	4a e1 00 00 	P2.H = 0x0;		/* (  0)	P2=0x8 <_.z> */
    83d0:	0a e1 44 8c 	P2.L = 0x8c44;		/* (-29628)	P2=0x8c44 <___clz_tab> */
    83d4:	01 e8 00 00 	UNLINK;
    83d8:	8a 5a       	P2 = P2 + P1;
    83da:	11 99       	R1 = B[P2] (Z);
    83dc:	0a 52       	R0 = R2 - R1;
    83de:	10 00       	RTS;
    83e0:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    83e2:	42 e1 ff 00 	R2.H = 0xff;		/* (255)	R2=0xffffff(16777215) */
    83e6:	fb 63       	R3 = -0x1 (X);		/*		R3=0xffffffff( -1) */
    83e8:	10 0a       	CC = R0 <= R2 (IU);
    83ea:	81 60       	R1 = 0x10 (X);		/*		R1=0x10( 16) */
    83ec:	42 60       	R2 = 0x8 (X);		/*		R2=0x8(  8) */
    83ee:	43 e1 ff 00 	R3.H = 0xff;		/* (255)	R3=0xffffff(16777215) */
    83f2:	11 07       	IF CC R2 = R1;
    83f4:	c2 68       	P2 = 0x18 (X);		/*		P2=0x18( 24) */
    83f6:	18 0a       	CC = R0 <= R3 (IU);
    83f8:	4a 06       	IF !CC R1 = P2;
    83fa:	e7 2f       	JUMP.S 0x83c8 <___clzsi2+0x24>;

000083fc <___pack_d>:
    83fc:	10 32       	P2 = R0;
    83fe:	e4 05       	[--SP] = (R7:4, P5:4);
    8400:	00 e8 03 00 	LINK 0xc;		/* (12) */
    8404:	10 91       	R0 = [P2];
    8406:	08 0e       	CC = R0 <= 0x1 (IU);
    8408:	d7 a0       	R7 = [P2 + 0xc];
    840a:	16 a1       	R6 = [P2 + 0x10];
    840c:	55 a0       	R5 = [P2 + 0x4];
    840e:	65 18       	IF CC JUMP 0x84d8 <___pack_d+0xdc>;
    8410:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    8412:	08 08       	CC = R0 == R1;
    8414:	5d 18       	IF CC JUMP 0x84ce <___pack_d+0xd2>;
    8416:	10 0c       	CC = R0 == 0x2;
    8418:	31 18       	IF CC JUMP 0x847a <___pack_d+0x7e>;
    841a:	37 56       	R0 = R7 | R6;
    841c:	00 0c       	CC = R0 == 0x0;
    841e:	2e 18       	IF CC JUMP 0x847a <___pack_d+0x7e>;
    8420:	00 00       	NOP;
    8422:	00 00       	NOP;
    8424:	23 e1 02 fc 	R3 = -0x3fe (X);		/*		R3=0xfffffc02(-1022) */
    8428:	92 a0       	R2 = [P2 + 0x8];
    842a:	9a 08       	CC = R2 < R3;
    842c:	60 18       	IF CC JUMP 0x84ec <___pack_d+0xf0>;
    842e:	20 e1 ff 03 	R0 = 0x3ff (X);		/*		R0=0x3ff(1023) */
    8432:	02 09       	CC = R2 <= R0;
    8434:	4d 10       	IF !CC JUMP 0x84ce <___pack_d+0xd2>;
    8436:	78 43       	R0 = R7.B (Z);
    8438:	21 e1 80 00 	R1 = 0x80 (X);		/*		R1=0x80(128) */
    843c:	08 08       	CC = R0 == R1;
    843e:	41 18       	IF CC JUMP 0x84c0 <___pack_d+0xc4>;
    8440:	23 e1 7f 00 	R3 = 0x7f (X);		/*		R3=0x7f(127) */
    8444:	df 51       	R7 = R7 + R3;
    8446:	0c 03       	CC = AC0;
    8448:	00 02       	R0 = CC;
    844a:	86 51       	R6 = R6 + R0;
    844c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    844e:	40 e1 ff 1f 	R0.H = 0x1fff;		/* (8191)	R0=0x1fffffff(536870911) */
    8452:	06 0a       	CC = R6 <= R0 (IU);
    8454:	2d 14       	IF !CC JUMP 0x84ae <___pack_d+0xb2> (BP);
    8456:	21 e1 ff 03 	R1 = 0x3ff (X);		/*		R1=0x3ff(1023) */
    845a:	4a 50       	R1 = R2 + R1;
    845c:	82 c6 c6 80 	R0 = R6 << 0x18;
    8460:	82 c6 c7 85 	R2 = R7 >> 0x8;
    8464:	90 56       	R2 = R0 | R2;
    8466:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    8468:	40 e1 0f 00 	R0.H = 0xf;		/* ( 15)	R0=0xfffff(1048575) */
    846c:	82 c6 c6 87 	R3 = R6 >> 0x8;
    8470:	c3 54       	R3 = R3 & R0;
    8472:	20 e1 ff 07 	R0 = 0x7ff (X);		/*		R0=0x7ff(2047) */
    8476:	c1 55       	R7 = R1 & R0;
    8478:	04 20       	JUMP.S 0x8480 <___pack_d+0x84>;
    847a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    847c:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    847e:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    8480:	02 30       	R0 = R2;
    8482:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    8484:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    8486:	42 e1 0f 00 	R2.H = 0xf;		/* ( 15)	R2=0xfffff(1048575) */
    848a:	d3 54       	R3 = R3 & R2;
    848c:	11 30       	R2 = R1;
    848e:	a2 4d       	R2 >>>= 0x14;
    8490:	a2 4f       	R2 <<= 0x14;
    8492:	da 56       	R3 = R2 | R3;
    8494:	fa 63       	R2 = -0x1 (X);		/*		R2=0xffffffff( -1) */
    8496:	42 e1 0f 80 	R2.H = 0x800f;		/* (-32753)	R2=0x800fffff(-2146435073) */
    849a:	a7 4f       	R7 <<= 0x14;
    849c:	93 54       	R2 = R3 & R2;
    849e:	ba 56       	R2 = R2 | R7;
    84a0:	fd 4f       	R5 <<= 0x1f;
    84a2:	fa 4c       	BITCLR (R2, 0x1f);		/* bit 31 */
    84a4:	01 e8 00 00 	UNLINK;
    84a8:	6a 56       	R1 = R2 | R5;
    84aa:	a4 05       	(R7:4, P5:4) = [SP++];
    84ac:	10 00       	RTS;
    84ae:	80 08       	CC = R0 < R0;
    84b0:	82 c6 fe cd 	R6 = ROT R6 BY -0x1;
    84b4:	21 e1 00 04 	R1 = 0x400 (X);		/*		R1=0x400(1024) */
    84b8:	82 c6 ff cf 	R7 = ROT R7 BY -0x1;
    84bc:	4a 50       	R1 = R2 + R1;
    84be:	cf 2f       	JUMP.S 0x845c <___pack_d+0x60>;
    84c0:	47 48       	CC = !BITTST (R7, 0x8);		/* bit  8 */
    84c2:	c5 1f       	IF CC JUMP 0x844c <___pack_d+0x50> (BP);
    84c4:	cf 51       	R7 = R7 + R1;
    84c6:	0c 03       	CC = AC0;
    84c8:	00 02       	R0 = CC;
    84ca:	86 51       	R6 = R6 + R0;
    84cc:	c0 2f       	JUMP.S 0x844c <___pack_d+0x50>;
    84ce:	27 e1 ff 07 	R7 = 0x7ff (X);		/*		R7=0x7ff(2047) */
    84d2:	02 60       	R2 = 0x0 (X);		/*		R2=0x0(  0) */
    84d4:	03 60       	R3 = 0x0 (X);		/*		R3=0x0(  0) */
    84d6:	d5 2f       	JUMP.S 0x8480 <___pack_d+0x84>;
    84d8:	1e 30       	R3 = R6;
    84da:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    84dc:	9b 4a       	BITSET (R3, 0x13);		/* bit 19 */
    84de:	40 e1 0f 00 	R0.H = 0xf;		/* ( 15)	R0=0xfffff(1048575) */
    84e2:	17 30       	R2 = R7;
    84e4:	c3 54       	R3 = R3 & R0;
    84e6:	27 e1 ff 07 	R7 = 0x7ff (X);		/*		R7=0x7ff(2047) */
    84ea:	cb 2f       	JUMP.S 0x8480 <___pack_d+0x84>;
    84ec:	d3 52       	R3 = R3 - R2;
    84ee:	23 32       	P4 = R3;
    84f0:	c2 69       	P2 = 0x38 (X);		/*		P2=0x38( 56) */
    84f2:	54 09       	CC = P4 <= P2;
    84f4:	3c 14       	IF !CC JUMP 0x856c <___pack_d+0x170> (BP);
    84f6:	13 30       	R2 = R3;
    84f8:	07 30       	R0 = R7;
    84fa:	0e 30       	R1 = R6;
    84fc:	00 e3 00 01 	CALL 0x86fc <___lshrdi3>;
    8500:	20 30       	R4 = R0;
    8502:	29 32       	P5 = R1;
    8504:	54 30       	R2 = P4;
    8506:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8508:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    850a:	00 e3 13 01 	CALL 0x8730 <___ashldi3>;
    850e:	f8 67       	R0 += -0x1;		/* ( -1) */
    8510:	0c 03       	CC = AC0;
    8512:	02 02       	R2 = CC;
    8514:	f9 67       	R1 += -0x1;		/* ( -1) */
    8516:	51 50       	R1 = R1 + R2;
    8518:	71 54       	R1 = R1 & R6;
    851a:	b8 54       	R2 = R0 & R7;
    851c:	8a 56       	R2 = R2 | R1;
    851e:	07 c4 10 84 	R2 = ABS R2;
    8522:	92 43       	R2 = -R2;
    8524:	fa 4e       	R2 >>= 0x1f;
    8526:	22 56       	R0 = R2 | R4;
    8528:	42 43       	R2 = R0.B (Z);
    852a:	23 e1 80 00 	R3 = 0x80 (X);		/*		R3=0x80(128) */
    852e:	1a 08       	CC = R2 == R3;
    8530:	4d 30       	R1 = P5;
    8532:	1f 10       	IF !CC JUMP 0x8570 <___pack_d+0x174>;
    8534:	40 48       	CC = !BITTST (R0, 0x8);		/* bit  8 */
    8536:	05 1c       	IF CC JUMP 0x8540 <___pack_d+0x144> (BP);
    8538:	18 50       	R0 = R0 + R3;
    853a:	0c 03       	CC = AC0;
    853c:	02 02       	R2 = CC;
    853e:	51 50       	R1 = R1 + R2;
    8540:	82 c6 c1 8e 	R7 = R1 << 0x18;
    8544:	82 c6 c0 85 	R2 = R0 >> 0x8;
    8548:	97 56       	R2 = R7 | R2;
    854a:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    854c:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    854e:	82 c6 c1 87 	R3 = R1 >> 0x8;
    8552:	40 e1 0f 00 	R0.H = 0xf;		/* ( 15)	R0=0xfffff(1048575) */
    8556:	47 e1 ff 0f 	R7.H = 0xfff;		/* (4095)	R7=0xfffffff(268435455) */
    855a:	39 0a       	CC = R1 <= R7 (IU);
    855c:	c3 54       	R3 = R3 & R0;
    855e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    8560:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8562:	01 07       	IF CC R0 = R1;
    8564:	27 e1 ff 07 	R7 = 0x7ff (X);		/*		R7=0x7ff(2047) */
    8568:	c7 55       	R7 = R7 & R0;
    856a:	8b 2f       	JUMP.S 0x8480 <___pack_d+0x84>;
    856c:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    856e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    8570:	27 e1 7f 00 	R7 = 0x7f (X);		/*		R7=0x7f(127) */
    8574:	38 50       	R0 = R0 + R7;
    8576:	0c 03       	CC = AC0;
    8578:	02 02       	R2 = CC;
    857a:	51 50       	R1 = R1 + R2;
    857c:	e2 2f       	JUMP.S 0x8540 <___pack_d+0x144>;
	...

00008580 <___unpack_d>:
    8580:	08 32       	P1 = R0;
    8582:	11 32       	P2 = R1;
    8584:	f9 63       	R1 = -0x1 (X);		/*		R1=0xffffffff( -1) */
    8586:	41 e1 0f 00 	R1.H = 0xf;		/* ( 15)	R1=0xfffff(1048575) */
    858a:	78 05       	[--SP] = (R7:7);
    858c:	48 a0       	R0 = [P1 + 0x4];
    858e:	08 54       	R0 = R0 & R1;
    8590:	c9 a4       	R1 = W[P1 + 0x6] (Z);
    8592:	89 4f       	R1 <<= 0x11;
    8594:	8b e4 07 00 	R3 = B[P1 + 0x7] (Z);
    8598:	a9 4e       	R1 >>= 0x15;
    859a:	3b 4e       	R3 >>= 0x7;
    859c:	01 0c       	CC = R1 == 0x0;
    859e:	0a 91       	R2 = [P1];
    85a0:	00 e8 00 00 	LINK 0x0;		/* (0) */
    85a4:	53 b0       	[P2 + 0x4] = R3;
    85a6:	22 14       	IF !CC JUMP 0x85ea <___unpack_d+0x6a> (BP);
    85a8:	42 56       	R1 = R2 | R0;
    85aa:	01 0c       	CC = R1 == 0x0;
    85ac:	34 18       	IF CC JUMP 0x8614 <___unpack_d+0x94>;
    85ae:	21 e1 02 fc 	R1 = -0x3fe (X);		/*		R1=0xfffffc02(-1022) */
    85b2:	91 b0       	[P2 + 0x8] = R1;
    85b4:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
    85b6:	0d ce 10 80 	R0 = ALIGN24 (R0, R2) || [P2] = R1 || NOP;
    85ba:	11 93 00 00 
    85be:	42 4f       	R2 <<= 0x8;
    85c0:	23 e1 01 fc 	R3 = -0x3ff (X);		/*		R3=0xfffffc01(-1023) */
    85c4:	80 08       	CC = R0 < R0;
    85c6:	82 c6 0a c4 	R2 = ROT R2 BY 0x1;
    85ca:	ff 63       	R7 = -0x1 (X);		/*		R7=0xffffffff( -1) */
    85cc:	82 c6 08 c0 	R0 = ROT R0 BY 0x1;
    85d0:	47 e1 ff 0f 	R7.H = 0xfff;		/* (4095)	R7=0xfffffff(268435455) */
    85d4:	38 0a       	CC = R0 <= R7 (IU);
    85d6:	0b 30       	R1 = R3;
    85d8:	fb 67       	R3 += -0x1;		/* ( -1) */
    85da:	f5 1f       	IF CC JUMP 0x85c4 <___unpack_d+0x44> (BP);
    85dc:	01 e8 00 00 	UNLINK;
    85e0:	91 b0       	[P2 + 0x8] = R1;
    85e2:	d2 b0       	[P2 + 0xc] = R2;
    85e4:	10 b1       	[P2 + 0x10] = R0;
    85e6:	38 05       	(R7:7) = [SP++];
    85e8:	10 00       	RTS;
    85ea:	23 e1 ff 07 	R3 = 0x7ff (X);		/*		R3=0x7ff(2047) */
    85ee:	19 08       	CC = R1 == R3;
    85f0:	18 18       	IF CC JUMP 0x8620 <___unpack_d+0xa0>;
    85f2:	23 e1 01 fc 	R3 = -0x3ff (X);		/*		R3=0xfffffc01(-1023) */
    85f6:	59 50       	R1 = R1 + R3;
    85f8:	0d ce 10 80 	R0 = ALIGN24 (R0, R2) || [P2 + 0x8] = R1 || NOP;
    85fc:	91 b0 00 00 
    8600:	19 60       	R1 = 0x3 (X);		/*		R1=0x3(  3) */
    8602:	11 93       	[P2] = R1;
    8604:	42 4f       	R2 <<= 0x8;
    8606:	e0 4a       	BITSET (R0, 0x1c);		/* bit 28 */
    8608:	d2 b0       	[P2 + 0xc] = R2;
    860a:	10 b1       	[P2 + 0x10] = R0;
    860c:	01 e8 00 00 	UNLINK;
    8610:	38 05       	(R7:7) = [SP++];
    8612:	10 00       	RTS;
    8614:	10 60       	R0 = 0x2 (X);		/*		R0=0x2(  2) */
    8616:	01 e8 00 00 	UNLINK;
    861a:	10 93       	[P2] = R0;
    861c:	38 05       	(R7:7) = [SP++];
    861e:	10 00       	RTS;
    8620:	42 56       	R1 = R2 | R0;
    8622:	01 0c       	CC = R1 == 0x0;
    8624:	08 18       	IF CC JUMP 0x8634 <___unpack_d+0xb4>;
    8626:	82 c6 68 83 	R1 = R0 >> 0x13;
    862a:	01 0c       	CC = R1 == 0x0;
    862c:	07 1c       	IF CC JUMP 0x863a <___unpack_d+0xba> (BP);
    862e:	09 60       	R1 = 0x1 (X);		/*		R1=0x1(  1) */
    8630:	11 93       	[P2] = R1;
    8632:	eb 2f       	JUMP.S 0x8608 <___unpack_d+0x88>;
    8634:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    8636:	10 93       	[P2] = R0;
    8638:	ea 2f       	JUMP.S 0x860c <___unpack_d+0x8c>;
    863a:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    863c:	11 93       	[P2] = R1;
    863e:	e5 2f       	JUMP.S 0x8608 <___unpack_d+0x88>;

00008640 <___fpcmp_parts_d>:
    8640:	08 32       	P1 = R0;
    8642:	78 05       	[--SP] = (R7:7);
    8644:	00 e8 00 00 	LINK 0x0;		/* (0) */
    8648:	11 32       	P2 = R1;
    864a:	0a 91       	R2 = [P1];
    864c:	0a 0e       	CC = R2 <= 0x1 (IU);
    864e:	1a 18       	IF CC JUMP 0x8682 <___fpcmp_parts_d+0x42>;
    8650:	00 00       	NOP;
    8652:	00 00       	NOP;
    8654:	00 00       	NOP;
    8656:	13 91       	R3 = [P2];
    8658:	0b 0e       	CC = R3 <= 0x1 (IU);
    865a:	14 18       	IF CC JUMP 0x8682 <___fpcmp_parts_d+0x42>;
    865c:	20 60       	R0 = 0x4 (X);		/*		R0=0x4(  4) */
    865e:	02 08       	CC = R2 == R0;
    8660:	47 18       	IF CC JUMP 0x86ee <___fpcmp_parts_d+0xae>;
    8662:	21 60       	R1 = 0x4 (X);		/*		R1=0x4(  4) */
    8664:	0b 08       	CC = R3 == R1;
    8666:	18 18       	IF CC JUMP 0x8696 <___fpcmp_parts_d+0x56>;
    8668:	12 0c       	CC = R2 == 0x2;
    866a:	11 18       	IF CC JUMP 0x868c <___fpcmp_parts_d+0x4c>;
    866c:	13 0c       	CC = R3 == 0x2;
    866e:	1c 18       	IF CC JUMP 0x86a6 <___fpcmp_parts_d+0x66>;
    8670:	00 00       	NOP;
    8672:	00 00       	NOP;
    8674:	00 00       	NOP;
    8676:	48 a0       	R0 = [P1 + 0x4];
    8678:	57 a0       	R7 = [P2 + 0x4];
    867a:	38 08       	CC = R0 == R7;
    867c:	1b 18       	IF CC JUMP 0x86b2 <___fpcmp_parts_d+0x72>;
    867e:	00 0c       	CC = R0 == 0x0;
    8680:	0e 10       	IF !CC JUMP 0x869c <___fpcmp_parts_d+0x5c>;
    8682:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    8684:	01 e8 00 00 	UNLINK;
    8688:	38 05       	(R7:7) = [SP++];
    868a:	10 00       	RTS;
    868c:	13 0c       	CC = R3 == 0x2;
    868e:	2e 18       	IF CC JUMP 0x86ea <___fpcmp_parts_d+0xaa>;
    8690:	00 00       	NOP;
    8692:	00 00       	NOP;
    8694:	00 00       	NOP;
    8696:	50 a0       	R0 = [P2 + 0x4];
    8698:	00 0c       	CC = R0 == 0x0;
    869a:	f4 13       	IF !CC JUMP 0x8682 <___fpcmp_parts_d+0x42>;
    869c:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    869e:	01 e8 00 00 	UNLINK;
    86a2:	38 05       	(R7:7) = [SP++];
    86a4:	10 00       	RTS;
    86a6:	00 00       	NOP;
    86a8:	48 a0       	R0 = [P1 + 0x4];
    86aa:	00 0c       	CC = R0 == 0x0;
    86ac:	eb 1f       	IF CC JUMP 0x8682 <___fpcmp_parts_d+0x42> (BP);
    86ae:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    86b0:	f7 2f       	JUMP.S 0x869e <___fpcmp_parts_d+0x5e>;
    86b2:	8a a0       	R2 = [P1 + 0x8];
    86b4:	91 a0       	R1 = [P2 + 0x8];
    86b6:	0a 09       	CC = R2 <= R1;
    86b8:	e3 17       	IF !CC JUMP 0x867e <___fpcmp_parts_d+0x3e> (BP);
    86ba:	8a 08       	CC = R2 < R1;
    86bc:	13 1c       	IF CC JUMP 0x86e2 <___fpcmp_parts_d+0xa2> (BP);
    86be:	09 a1       	R1 = [P1 + 0x10];
    86c0:	12 a1       	R2 = [P2 + 0x10];
    86c2:	11 0a       	CC = R1 <= R2 (IU);
    86c4:	cb a0       	R3 = [P1 + 0xc];
    86c6:	d1 ac       	P1 = [P2 + 0xc];
    86c8:	db 17       	IF !CC JUMP 0x867e <___fpcmp_parts_d+0x3e> (BP);
    86ca:	11 08       	CC = R1 == R2;
    86cc:	04 14       	IF !CC JUMP 0x86d4 <___fpcmp_parts_d+0x94> (BP);
    86ce:	79 30       	R7 = P1;
    86d0:	3b 0a       	CC = R3 <= R7 (IU);
    86d2:	d6 17       	IF !CC JUMP 0x867e <___fpcmp_parts_d+0x3e> (BP);
    86d4:	0a 0a       	CC = R2 <= R1 (IU);
    86d6:	06 14       	IF !CC JUMP 0x86e2 <___fpcmp_parts_d+0xa2> (BP);
    86d8:	0a 08       	CC = R2 == R1;
    86da:	08 10       	IF !CC JUMP 0x86ea <___fpcmp_parts_d+0xaa>;
    86dc:	49 30       	R1 = P1;
    86de:	19 0a       	CC = R1 <= R3 (IU);
    86e0:	05 18       	IF CC JUMP 0x86ea <___fpcmp_parts_d+0xaa>;
    86e2:	00 0c       	CC = R0 == 0x0;
    86e4:	cf 13       	IF !CC JUMP 0x8682 <___fpcmp_parts_d+0x42>;
    86e6:	f8 63       	R0 = -0x1 (X);		/*		R0=0xffffffff( -1) */
    86e8:	db 2f       	JUMP.S 0x869e <___fpcmp_parts_d+0x5e>;
    86ea:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    86ec:	cc 2f       	JUMP.S 0x8684 <___fpcmp_parts_d+0x44>;
    86ee:	03 08       	CC = R3 == R0;
    86f0:	db 17       	IF !CC JUMP 0x86a6 <___fpcmp_parts_d+0x66> (BP);
    86f2:	51 a0       	R1 = [P2 + 0x4];
    86f4:	48 a0       	R0 = [P1 + 0x4];
    86f6:	01 52       	R0 = R1 - R0;
    86f8:	c6 2f       	JUMP.S 0x8684 <___fpcmp_parts_d+0x44>;
	...

000086fc <___lshrdi3>:
    86fc:	78 05       	[--SP] = (R7:7);
    86fe:	02 0c       	CC = R2 == 0x0;
    8700:	00 e8 00 00 	LINK 0x0;		/* (0) */
    8704:	0b 18       	IF CC JUMP 0x871a <___lshrdi3+0x1e>;
    8706:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
    8708:	d3 52       	R3 = R3 - R2;
    870a:	03 0d       	CC = R3 <= 0x0;
    870c:	0b 18       	IF CC JUMP 0x8722 <___lshrdi3+0x26>;
    870e:	39 30       	R7 = R1;
    8710:	57 40       	R7 >>= R2;
    8712:	99 40       	R1 <<= R3;
    8714:	50 40       	R0 >>= R2;
    8716:	01 56       	R0 = R1 | R0;
    8718:	0f 30       	R1 = R7;
    871a:	01 e8 00 00 	UNLINK;
    871e:	38 05       	(R7:7) = [SP++];
    8720:	10 00       	RTS;
    8722:	98 43       	R0 = -R3;
    8724:	41 40       	R1 >>= R0;
    8726:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    8728:	01 30       	R0 = R1;
    872a:	0f 30       	R1 = R7;
    872c:	f7 2f       	JUMP.S 0x871a <___lshrdi3+0x1e>;
	...

00008730 <___ashldi3>:
    8730:	78 05       	[--SP] = (R7:7);
    8732:	02 0c       	CC = R2 == 0x0;
    8734:	00 e8 00 00 	LINK 0x0;		/* (0) */
    8738:	0b 18       	IF CC JUMP 0x874e <___ashldi3+0x1e>;
    873a:	03 61       	R3 = 0x20 (X);		/*		R3=0x20( 32) */
    873c:	d3 52       	R3 = R3 - R2;
    873e:	03 0d       	CC = R3 <= 0x0;
    8740:	0b 18       	IF CC JUMP 0x8756 <___ashldi3+0x26>;
    8742:	38 30       	R7 = R0;
    8744:	97 40       	R7 <<= R2;
    8746:	58 40       	R0 >>= R3;
    8748:	91 40       	R1 <<= R2;
    874a:	48 56       	R1 = R0 | R1;
    874c:	07 30       	R0 = R7;
    874e:	01 e8 00 00 	UNLINK;
    8752:	38 05       	(R7:7) = [SP++];
    8754:	10 00       	RTS;
    8756:	99 43       	R1 = -R3;
    8758:	88 40       	R0 <<= R1;
    875a:	07 60       	R7 = 0x0 (X);		/*		R7=0x0(  0) */
    875c:	08 30       	R1 = R0;
    875e:	07 30       	R0 = R7;
    8760:	f7 2f       	JUMP.S 0x874e <___ashldi3+0x1e>;
	...
