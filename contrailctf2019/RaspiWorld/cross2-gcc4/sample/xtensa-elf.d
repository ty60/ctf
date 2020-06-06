
xtensa-elf.x:     file format elf32-xtensa-be


Disassembly of section .literal:

00fe1200 <mem2+0xfe11e4>:
  fe1200:	000077               	excw
  fe1203:	8877                	l32i.n	a8, a7, 28
  fe1205:	8899                	l32i.n	a8, a9, 36
  fe1207:	aaff                	add.n	a15, a15, a10
  fe1209:	eeddcc1122334400 	{ l32r	a14, fd4580 <_.tmp+0xfd4540>; excw; excw }
  fe1211:	fe                      	.byte 0xfe
  fe1212:	1804                	l32i.n	a1, a4, 0

Disassembly of section .text:

00fe1400 <null>:
  fe1400:	364100               	entry	a1, 32
  fe1403:	1df0                	retw.n
  fe1405:	000000               	ill

00fe1408 <return_zero>:
  fe1408:	364100               	entry	a1, 32
  fe140b:	0c02                	movi.n	a2, 0
  fe140d:	1df0                	retw.n
	...

00fe1410 <return_one>:
  fe1410:	364100               	entry	a1, 32
  fe1413:	0c12                	movi.n	a2, 1
  fe1415:	1df0                	retw.n
	...

00fe1418 <return_int_size>:
  fe1418:	364100               	entry	a1, 32
  fe141b:	0c42                	movi.n	a2, 4
  fe141d:	1df0                	retw.n
	...

00fe1420 <return_pointer_size>:
  fe1420:	364100               	entry	a1, 32
  fe1423:	0c42                	movi.n	a2, 4
  fe1425:	1df0                	retw.n
	...

00fe1428 <return_short_size>:
  fe1428:	364100               	entry	a1, 32
  fe142b:	0c22                	movi.n	a2, 2
  fe142d:	1df0                	retw.n
	...

00fe1430 <return_long_size>:
  fe1430:	364100               	entry	a1, 32
  fe1433:	0c42                	movi.n	a2, 4
  fe1435:	1df0                	retw.n
	...

00fe1438 <return_short>:
  fe1438:	364100               	entry	a1, 32
  fe143b:	2171ff               	l32r	a2, fe1200 <_.tmp+0xfe11c0>
  fe143e:	1df0                	retw.n

00fe1440 <return_long>:
  fe1440:	364100               	entry	a1, 32
  fe1443:	2170ff               	l32r	a2, fe1204 <_.tmp+0xfe11c4>
  fe1446:	1df0                	retw.n

00fe1448 <return_short_upper>:
  fe1448:	364100               	entry	a1, 32
  fe144b:	6ce2                	movi.n	a2, -18
  fe144d:	1df0                	retw.n
	...

00fe1450 <return_long_upper>:
  fe1450:	364100               	entry	a1, 32
  fe1453:	216dff               	l32r	a2, fe1208 <_.tmp+0xfe11c8>
  fe1456:	1df0                	retw.n

00fe1458 <return_arg1>:
  fe1458:	364100               	entry	a1, 32
  fe145b:	1df0                	retw.n
  fe145d:	000000               	ill

00fe1460 <return_arg2>:
  fe1460:	364100               	entry	a1, 32
  fe1463:	2d03                	mov.n	a2, a3
  fe1465:	1df0                	retw.n
	...

00fe1468 <add>:
  fe1468:	364100               	entry	a1, 32
  fe146b:	3a22                	add.n	a2, a2, a3
  fe146d:	1df0                	retw.n
	...

00fe1470 <add3>:
  fe1470:	364100               	entry	a1, 32
  fe1473:	3a22                	add.n	a2, a2, a3
  fe1475:	4a22                	add.n	a2, a2, a4
  fe1477:	1df0                	retw.n
  fe1479:	000000               	ill

00fe147c <add_two>:
  fe147c:	364100               	entry	a1, 32
  fe147f:	2b22                	addi.n	a2, a2, 2
  fe1481:	1df0                	retw.n
	...

00fe1484 <inc>:
  fe1484:	364100               	entry	a1, 32
  fe1487:	1b22                	addi.n	a2, a2, 1
  fe1489:	1df0                	retw.n
	...

00fe148c <or>:
  fe148c:	364100               	entry	a1, 32
  fe148f:	202320               	or	a2, a3, a2
  fe1492:	1df0                	retw.n

00fe1494 <or_one>:
  fe1494:	364100               	entry	a1, 32
  fe1497:	0c18                	movi.n	a8, 1
  fe1499:	802220               	or	a2, a2, a8
  fe149c:	1df0                	retw.n
	...

00fe14a0 <load>:
  fe14a0:	364100               	entry	a1, 32
  fe14a3:	c02000               	memw
  fe14a6:	2802                	l32i.n	a2, a2, 0
  fe14a8:	1df0                	retw.n
	...

00fe14ac <store>:
  fe14ac:	364100               	entry	a1, 32
  fe14af:	82a0ff               	movi	a8, 255
  fe14b2:	c02000               	memw
  fe14b5:	8902                	s32i.n	a8, a2, 0
  fe14b7:	1df0                	retw.n
  fe14b9:	000000               	ill

00fe14bc <load_long>:
  fe14bc:	364100               	entry	a1, 32
  fe14bf:	c02000               	memw
  fe14c2:	2802                	l32i.n	a2, a2, 0
  fe14c4:	1df0                	retw.n
	...

00fe14c8 <store_long>:
  fe14c8:	364100               	entry	a1, 32
  fe14cb:	8150ff               	l32r	a8, fe120c <_.tmp+0xfe11cc>
  fe14ce:	c02000               	memw
  fe14d1:	8902                	s32i.n	a8, a2, 0
  fe14d3:	1df0                	retw.n
  fe14d5:	000000               	ill

00fe14d8 <member>:
  fe14d8:	364100               	entry	a1, 32
  fe14db:	0c18                	movi.n	a8, 1
  fe14dd:	8912                	s32i.n	a8, a2, 4
  fe14df:	2822                	l32i.n	a2, a2, 8
  fe14e1:	1df0                	retw.n
	...

00fe14e4 <get_static_value_addr>:
  fe14e4:	364100               	entry	a1, 32
  fe14e7:	214aff               	l32r	a2, fe1210 <_.tmp+0xfe11d0>
  fe14ea:	1df0                	retw.n

00fe14ec <get_static_value>:
  fe14ec:	364100               	entry	a1, 32
  fe14ef:	8148ff               	l32r	a8, fe1210 <_.tmp+0xfe11d0>
  fe14f2:	2808                	l32i.n	a2, a8, 0
  fe14f4:	1df0                	retw.n
	...

00fe14f8 <set_static_value>:
  fe14f8:	364100               	entry	a1, 32
  fe14fb:	8145ff               	l32r	a8, fe1210 <_.tmp+0xfe11d0>
  fe14fe:	2908                	s32i.n	a2, a8, 0
  fe1500:	1df0                	retw.n
	...

00fe1504 <set_stack>:
  fe1504:	366100               	entry	a1, 48
  fe1507:	82a0fe               	movi	a8, 254
  fe150a:	c02000               	memw
  fe150d:	8901                	s32i.n	a8, a1, 0
  fe150f:	82a0ff               	movi	a8, 255
  fe1512:	c02000               	memw
  fe1515:	8911                	s32i.n	a8, a1, 4
  fe1517:	1df0                	retw.n
  fe1519:	000000               	ill

00fe151c <use_stack>:
  fe151c:	366100               	entry	a1, 48
  fe151f:	22a0fe               	movi	a2, 254
  fe1522:	c02000               	memw
  fe1525:	2901                	s32i.n	a2, a1, 0
  fe1527:	22a0ff               	movi	a2, 255
  fe152a:	c02000               	memw
  fe152d:	2911                	s32i.n	a2, a1, 4
  fe152f:	c02000               	memw
  fe1532:	2801                	l32i.n	a2, a1, 0
  fe1534:	c02000               	memw
  fe1537:	8811                	l32i.n	a8, a1, 4
  fe1539:	8a22                	add.n	a2, a2, a8
  fe153b:	1df0                	retw.n
  fe153d:	000000               	ill

00fe1540 <call_self>:
  fe1540:	364100               	entry	a1, 32
  fe1543:	e5ffff               	call8	fe1540 <call_self>
  fe1546:	1df0                	retw.n

00fe1548 <call_simple>:
  fe1548:	364100               	entry	a1, 32
  fe154b:	ad02                	mov.n	a10, a2
  fe154d:	a5f0ff               	call8	fe1458 <return_arg1>
  fe1550:	2d0a                	mov.n	a2, a10
  fe1552:	1df0                	retw.n

00fe1554 <call_complex1>:
  fe1554:	364100               	entry	a1, 32
  fe1557:	a2a0fe               	movi	a10, 254
  fe155a:	e5efff               	call8	fe1458 <return_arg1>
  fe155d:	1b2a                	addi.n	a2, a10, 1
  fe155f:	1df0                	retw.n
  fe1561:	000000               	ill

00fe1564 <call_complex2>:
  fe1564:	364100               	entry	a1, 32
  fe1567:	302320               	or	a2, a3, a3
  fe156a:	30a320               	or	a10, a3, a3
  fe156d:	a5eeff               	call8	fe1458 <return_arg1>
  fe1570:	8128ff               	l32r	a8, fe1210 <_.tmp+0xfe11d0>
  fe1573:	a908                	s32i.n	a10, a8, 0
  fe1575:	1df0                	retw.n
	...

00fe1578 <call_pointer>:
  fe1578:	364100               	entry	a1, 32
  fe157b:	e00200               	callx8	a2
  fe157e:	1df0                	retw.n

00fe1580 <condition>:
  fe1580:	364100               	entry	a1, 32
  fe1583:	3022c0               	sub	a2, a2, a3
  fe1586:	0c18                	movi.n	a8, 1
  fe1588:	203883               	moveqz	a3, a8, a2
  fe158b:	8a23                	add.n	a2, a3, a8
  fe158d:	1df0                	retw.n
	...

00fe1590 <loop>:
  fe1590:	364100               	entry	a1, 32
  fe1593:	a6120d               	blti	a2, 1, fe15a4 <loop+0x14>
  fe1596:	0c09                	movi.n	a9, 0
  fe1598:	8d09                	mov.n	a8, a9
  fe159a:	8a99                	add.n	a9, a9, a8
  fe159c:	1b88                	addi.n	a8, a8, 1
  fe159e:	2798f8               	bne	a8, a2, fe159a <loop+0xa>
  fe15a1:	460000               	j	fe15a6 <loop+0x16>
  fe15a4:	0c09                	movi.n	a9, 0
  fe15a6:	2d09                	mov.n	a2, a9
  fe15a8:	1df0                	retw.n
	...

00fe15ac <many_args>:
  fe15ac:	364100               	entry	a1, 32
  fe15af:	5a22                	add.n	a2, a2, a5
  fe15b1:	7a72                	add.n	a7, a2, a7
  fe15b3:	2891                	l32i.n	a2, a1, 36
  fe15b5:	2a27                	add.n	a2, a7, a2
  fe15b7:	1df0                	retw.n
  fe15b9:	000000               	ill

00fe15bc <call_many_args>:
  fe15bc:	366100               	entry	a1, 48
  fe15bf:	0c68                	movi.n	a8, 6
  fe15c1:	8901                	s32i.n	a8, a1, 0
  fe15c3:	0c78                	movi.n	a8, 7
  fe15c5:	8911                	s32i.n	a8, a1, 4
  fe15c7:	0c0a                	movi.n	a10, 0
  fe15c9:	0c1b                	movi.n	a11, 1
  fe15cb:	0c2c                	movi.n	a12, 2
  fe15cd:	0c3d                	movi.n	a13, 3
  fe15cf:	0c4e                	movi.n	a14, 4
  fe15d1:	0c5f                	movi.n	a15, 5
  fe15d3:	a5fdff               	call8	fe15ac <many_args>
  fe15d6:	2d0a                	mov.n	a2, a10
  fe15d8:	1df0                	retw.n
	...

00fe15dc <direct>:
  fe15dc:	364100               	entry	a1, 32
  fe15df:	3df0                	nop.n
  fe15e1:	1df0                	retw.n
	...

00fe15e4 <binary>:
  fe15e4:	364100               	entry	a1, 32
  fe15e7:	000000               	ill
  fe15ea:	00001d               	excw
  fe15ed:	f00000               	callx12	a0

00fe15f0 <main>:
  fe15f0:	364100               	entry	a1, 32
  fe15f3:	0c02                	movi.n	a2, 0
  fe15f5:	1df0                	retw.n
