
sparc-elf.x:     file format elf32-sparc


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	81 c3 e0 08 	retl 
  fe1404:	01 00 00 00 	nop 

00fe1408 <return_zero>:
  fe1408:	81 c3 e0 08 	retl 
  fe140c:	90 10 20 00 	clr  %o0	! 0 <_.frame-0x4>

00fe1410 <return_one>:
  fe1410:	81 c3 e0 08 	retl 
  fe1414:	90 10 20 01 	mov  1, %o0

00fe1418 <return_int_size>:
  fe1418:	81 c3 e0 08 	retl 
  fe141c:	90 10 20 04 	mov  4, %o0

00fe1420 <return_pointer_size>:
  fe1420:	81 c3 e0 08 	retl 
  fe1424:	90 10 20 04 	mov  4, %o0

00fe1428 <return_short_size>:
  fe1428:	81 c3 e0 08 	retl 
  fe142c:	90 10 20 02 	mov  2, %o0

00fe1430 <return_long_size>:
  fe1430:	81 c3 e0 08 	retl 
  fe1434:	90 10 20 04 	mov  4, %o0

00fe1438 <return_short>:
  fe1438:	11 00 00 1d 	sethi  %hi(0x7400), %o0
  fe143c:	81 c3 e0 08 	retl 
  fe1440:	90 12 23 88 	or  %o0, 0x388, %o0	! 7788 <_.tmp+0x7748>

00fe1444 <return_long>:
  fe1444:	11 1d e2 26 	sethi  %hi(0x77889800), %o0
  fe1448:	81 c3 e0 08 	retl 
  fe144c:	90 12 21 aa 	or  %o0, 0x1aa, %o0	! 778899aa <_end+0x768a8192>

00fe1450 <return_short_upper>:
  fe1450:	81 c3 e0 08 	retl 
  fe1454:	90 10 3f ee 	mov  -18, %o0

00fe1458 <return_long_upper>:
  fe1458:	11 3f fb b7 	sethi  %hi(0xffeedc00), %o0
  fe145c:	81 c3 e0 08 	retl 
  fe1460:	90 12 21 cc 	or  %o0, 0x1cc, %o0	! ffeeddcc <_end+0xfef0c5b4>

00fe1464 <return_arg1>:
  fe1464:	81 c3 e0 08 	retl 
  fe1468:	01 00 00 00 	nop 

00fe146c <return_arg2>:
  fe146c:	81 c3 e0 08 	retl 
  fe1470:	90 10 00 09 	mov  %o1, %o0

00fe1474 <add>:
  fe1474:	81 c3 e0 08 	retl 
  fe1478:	90 02 00 09 	add  %o0, %o1, %o0

00fe147c <add3>:
  fe147c:	90 02 00 09 	add  %o0, %o1, %o0
  fe1480:	81 c3 e0 08 	retl 
  fe1484:	90 02 00 0a 	add  %o0, %o2, %o0

00fe1488 <add_two>:
  fe1488:	81 c3 e0 08 	retl 
  fe148c:	90 02 20 02 	add  %o0, 2, %o0

00fe1490 <inc>:
  fe1490:	81 c3 e0 08 	retl 
  fe1494:	90 02 20 01 	inc  %o0

00fe1498 <or>:
  fe1498:	81 c3 e0 08 	retl 
  fe149c:	90 12 40 08 	or  %o1, %o0, %o0

00fe14a0 <or_one>:
  fe14a0:	81 c3 e0 08 	retl 
  fe14a4:	90 12 20 01 	or  %o0, 1, %o0

00fe14a8 <load>:
  fe14a8:	d0 02 00 00 	ld  [ %o0 ], %o0
  fe14ac:	81 c3 e0 08 	retl 
  fe14b0:	01 00 00 00 	nop 

00fe14b4 <store>:
  fe14b4:	82 10 20 ff 	mov  0xff, %g1	! ff <_.tmp+0xbf>
  fe14b8:	c2 22 00 00 	st  %g1, [ %o0 ]
  fe14bc:	81 c3 e0 08 	retl 
  fe14c0:	01 00 00 00 	nop 

00fe14c4 <load_long>:
  fe14c4:	d0 02 00 00 	ld  [ %o0 ], %o0
  fe14c8:	81 c3 e0 08 	retl 
  fe14cc:	01 00 00 00 	nop 

00fe14d0 <store_long>:
  fe14d0:	03 04 48 8c 	sethi  %hi(0x11223000), %g1
  fe14d4:	82 10 63 44 	or  %g1, 0x344, %g1	! 11223344 <_end+0x10241b2c>
  fe14d8:	c2 22 00 00 	st  %g1, [ %o0 ]
  fe14dc:	81 c3 e0 08 	retl 
  fe14e0:	01 00 00 00 	nop 

00fe14e4 <member>:
  fe14e4:	82 10 20 01 	mov  1, %g1	! 1 <_.frame-0x3>
  fe14e8:	c2 22 20 04 	st  %g1, [ %o0 + 4 ]
  fe14ec:	81 c3 e0 08 	retl 
  fe14f0:	d0 02 20 08 	ld  [ %o0 + 8 ], %o0

00fe14f4 <get_static_value_addr>:
  fe14f4:	11 00 3f 86 	sethi  %hi(0xfe1800), %o0
  fe14f8:	81 c3 e0 08 	retl 
  fe14fc:	90 12 20 04 	or  %o0, 4, %o0	! fe1804 <static_value>

00fe1500 <get_static_value>:
  fe1500:	03 00 3f 86 	sethi  %hi(0xfe1800), %g1
  fe1504:	81 c3 e0 08 	retl 
  fe1508:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0	! fe1804 <static_value>

00fe150c <set_static_value>:
  fe150c:	03 00 3f 86 	sethi  %hi(0xfe1800), %g1
  fe1510:	81 c3 e0 08 	retl 
  fe1514:	d0 20 60 04 	st  %o0, [ %g1 + 4 ]	! fe1804 <static_value>

00fe1518 <set_stack>:
  fe1518:	9c 03 bf b0 	add  %sp, -80, %sp
  fe151c:	82 10 20 fe 	mov  0xfe, %g1
  fe1520:	c2 23 a0 4c 	st  %g1, [ %sp + 0x4c ]
  fe1524:	82 10 20 ff 	mov  0xff, %g1
  fe1528:	c2 23 a0 48 	st  %g1, [ %sp + 0x48 ]
  fe152c:	81 c3 e0 08 	retl 
  fe1530:	9c 23 bf b0 	sub  %sp, -80, %sp

00fe1534 <use_stack>:
  fe1534:	9c 03 bf b0 	add  %sp, -80, %sp
  fe1538:	82 10 20 fe 	mov  0xfe, %g1
  fe153c:	c2 23 a0 4c 	st  %g1, [ %sp + 0x4c ]
  fe1540:	82 10 20 ff 	mov  0xff, %g1
  fe1544:	c2 23 a0 48 	st  %g1, [ %sp + 0x48 ]
  fe1548:	d0 03 a0 4c 	ld  [ %sp + 0x4c ], %o0
  fe154c:	c2 03 a0 48 	ld  [ %sp + 0x48 ], %g1
  fe1550:	90 02 00 01 	add  %o0, %g1, %o0
  fe1554:	81 c3 e0 08 	retl 
  fe1558:	9c 23 bf b0 	sub  %sp, -80, %sp

00fe155c <call_self>:
  fe155c:	9d e3 bf a0 	save  %sp, -96, %sp
  fe1560:	7f ff ff ff 	call  fe155c <call_self>
  fe1564:	01 00 00 00 	nop 
  fe1568:	81 c7 e0 08 	ret 
  fe156c:	81 e8 00 00 	restore 

00fe1570 <call_simple>:
  fe1570:	9d e3 bf a0 	save  %sp, -96, %sp
  fe1574:	7f ff ff bc 	call  fe1464 <return_arg1>
  fe1578:	90 10 00 18 	mov  %i0, %o0
  fe157c:	81 c7 e0 08 	ret 
  fe1580:	91 e8 00 08 	restore  %g0, %o0, %o0

00fe1584 <call_complex1>:
  fe1584:	9d e3 bf a0 	save  %sp, -96, %sp
  fe1588:	7f ff ff b7 	call  fe1464 <return_arg1>
  fe158c:	90 10 20 fe 	mov  0xfe, %o0
  fe1590:	81 c7 e0 08 	ret 
  fe1594:	91 ea 20 01 	restore  %o0, 1, %o0

00fe1598 <call_complex2>:
  fe1598:	9d e3 bf a0 	save  %sp, -96, %sp
  fe159c:	7f ff ff b2 	call  fe1464 <return_arg1>
  fe15a0:	90 10 00 19 	mov  %i1, %o0
  fe15a4:	03 00 3f 86 	sethi  %hi(0xfe1800), %g1
  fe15a8:	d0 20 60 04 	st  %o0, [ %g1 + 4 ]	! fe1804 <static_value>
  fe15ac:	81 c7 e0 08 	ret 
  fe15b0:	91 e8 00 19 	restore  %g0, %i1, %o0

00fe15b4 <call_pointer>:
  fe15b4:	9d e3 bf a0 	save  %sp, -96, %sp
  fe15b8:	9f c6 00 00 	call  %i0
  fe15bc:	01 00 00 00 	nop 
  fe15c0:	81 c7 e0 08 	ret 
  fe15c4:	81 e8 00 00 	restore 

00fe15c8 <condition>:
  fe15c8:	80 a2 00 09 	cmp  %o0, %o1
  fe15cc:	22 80 00 02 	be,a   fe15d4 <condition+0xc>
  fe15d0:	92 10 20 01 	mov  1, %o1
  fe15d4:	81 c3 e0 08 	retl 
  fe15d8:	90 02 60 01 	add  %o1, 1, %o0

00fe15dc <loop>:
  fe15dc:	80 a2 20 00 	cmp  %o0, 0
  fe15e0:	04 80 00 0a 	ble  fe1608 <loop+0x2c>
  fe15e4:	84 10 20 00 	clr  %g2
  fe15e8:	82 10 20 00 	clr  %g1
  fe15ec:	84 00 80 01 	add  %g2, %g1, %g2
  fe15f0:	82 00 60 01 	inc  %g1
  fe15f4:	80 a0 40 08 	cmp  %g1, %o0
  fe15f8:	32 bf ff fe 	bne,a   fe15f0 <loop+0x14>
  fe15fc:	84 00 80 01 	add  %g2, %g1, %g2
  fe1600:	81 c3 e0 08 	retl 
  fe1604:	90 10 00 02 	mov  %g2, %o0
  fe1608:	90 10 00 02 	mov  %g2, %o0
  fe160c:	81 c3 e0 08 	retl 
  fe1610:	01 00 00 00 	nop 

00fe1614 <many_args>:
  fe1614:	90 02 00 0b 	add  %o0, %o3, %o0
  fe1618:	90 02 00 0d 	add  %o0, %o5, %o0
  fe161c:	c2 03 a0 60 	ld  [ %sp + 0x60 ], %g1
  fe1620:	81 c3 e0 08 	retl 
  fe1624:	90 02 00 01 	add  %o0, %g1, %o0

00fe1628 <call_many_args>:
  fe1628:	9d e3 bf 98 	save  %sp, -104, %sp
  fe162c:	82 10 20 06 	mov  6, %g1
  fe1630:	c2 23 a0 5c 	st  %g1, [ %sp + 0x5c ]
  fe1634:	82 10 20 07 	mov  7, %g1
  fe1638:	c2 23 a0 60 	st  %g1, [ %sp + 0x60 ]
  fe163c:	90 10 20 00 	clr  %o0
  fe1640:	92 10 20 01 	mov  1, %o1
  fe1644:	94 10 20 02 	mov  2, %o2
  fe1648:	96 10 20 03 	mov  3, %o3
  fe164c:	98 10 20 04 	mov  4, %o4
  fe1650:	7f ff ff f1 	call  fe1614 <many_args>
  fe1654:	9a 10 20 05 	mov  5, %o5
  fe1658:	81 c7 e0 08 	ret 
  fe165c:	91 e8 00 08 	restore  %g0, %o0, %o0

00fe1660 <direct>:
  fe1660:	01 00 00 00 	nop 
  fe1664:	81 c3 e0 08 	retl 
  fe1668:	01 00 00 00 	nop 

00fe166c <binary>:
  fe166c:	00 00 00 00 	unimp  0
  fe1670:	81 c3 e0 08 	retl 
  fe1674:	01 00 00 00 	nop 

00fe1678 <main>:
  fe1678:	81 c3 e0 08 	retl 
  fe167c:	90 10 20 00 	clr  %o0	! 0 <_.frame-0x4>
