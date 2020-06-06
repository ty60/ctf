
alpha-elf.x:     file format elf64-alpha


Disassembly of section .text:

0000000000fe1400 <null>:
  fe1400:	01 80 fa 6b 	ret

0000000000fe1404 <return_zero>:
  fe1404:	00 04 ff 47 	clr	v0
  fe1408:	01 80 fa 6b 	ret

0000000000fe140c <return_one>:
  fe140c:	01 00 1f 20 	lda	v0,1
  fe1410:	01 80 fa 6b 	ret

0000000000fe1414 <return_int_size>:
  fe1414:	04 00 1f 20 	lda	v0,4
  fe1418:	01 80 fa 6b 	ret

0000000000fe141c <return_pointer_size>:
  fe141c:	08 00 1f 20 	lda	v0,8
  fe1420:	01 80 fa 6b 	ret

0000000000fe1424 <return_short_size>:
  fe1424:	02 00 1f 20 	lda	v0,2
  fe1428:	01 80 fa 6b 	ret

0000000000fe142c <return_long_size>:
  fe142c:	08 00 1f 20 	lda	v0,8
  fe1430:	01 80 fa 6b 	ret

0000000000fe1434 <return_short>:
  fe1434:	88 77 1f 20 	lda	v0,30600
  fe1438:	01 80 fa 6b 	ret

0000000000fe143c <return_long>:
  fe143c:	89 77 1f 24 	ldah	v0,30601
  fe1440:	aa 99 00 20 	lda	v0,-26198(v0)
  fe1444:	01 80 fa 6b 	ret

0000000000fe1448 <return_short_upper>:
  fe1448:	ee ff 1f 20 	lda	v0,-18
  fe144c:	01 80 fa 6b 	ret

0000000000fe1450 <return_long_upper>:
  fe1450:	fc 3f 1f 24 	ldah	v0,16380
  fe1454:	73 b7 00 20 	lda	v0,-18573(v0)
  fe1458:	40 14 00 40 	s4addq	v0,0,v0
  fe145c:	01 80 fa 6b 	ret

0000000000fe1460 <return_arg1>:
  fe1460:	00 04 f0 47 	mov	a0,v0
  fe1464:	01 80 fa 6b 	ret

0000000000fe1468 <return_arg2>:
  fe1468:	00 04 f1 47 	mov	a1,v0
  fe146c:	01 80 fa 6b 	ret

0000000000fe1470 <add>:
  fe1470:	00 00 11 42 	addl	a0,a1,v0
  fe1474:	01 80 fa 6b 	ret

0000000000fe1478 <add3>:
  fe1478:	11 00 11 42 	addl	a0,a1,a1
  fe147c:	00 00 32 42 	addl	a1,a2,v0
  fe1480:	01 80 fa 6b 	ret

0000000000fe1484 <add_two>:
  fe1484:	00 50 00 42 	addl	a0,0x2,v0
  fe1488:	01 80 fa 6b 	ret

0000000000fe148c <inc>:
  fe148c:	00 30 00 42 	addl	a0,0x1,v0
  fe1490:	01 80 fa 6b 	ret

0000000000fe1494 <or>:
  fe1494:	00 04 30 46 	or	a1,a0,v0
  fe1498:	01 80 fa 6b 	ret

0000000000fe149c <or_one>:
  fe149c:	00 34 00 46 	or	a0,0x1,v0
  fe14a0:	01 80 fa 6b 	ret

0000000000fe14a4 <load>:
  fe14a4:	00 00 10 a0 	ldl	v0,0(a0)
  fe14a8:	00 00 e0 43 	sextl	v0,v0
  fe14ac:	01 80 fa 6b 	ret

0000000000fe14b0 <store>:
  fe14b0:	ff 00 3f 20 	lda	t0,255
  fe14b4:	00 00 30 b0 	stl	t0,0(a0)
  fe14b8:	01 80 fa 6b 	ret

0000000000fe14bc <load_long>:
  fe14bc:	00 00 10 a4 	ldq	v0,0(a0)
  fe14c0:	01 80 fa 6b 	ret

0000000000fe14c4 <store_long>:
  fe14c4:	22 11 3f 24 	ldah	t0,4386
  fe14c8:	44 33 21 20 	lda	t0,13124(t0)
  fe14cc:	00 00 30 b4 	stq	t0,0(a0)
  fe14d0:	01 80 fa 6b 	ret

0000000000fe14d4 <member>:
  fe14d4:	01 00 3f 20 	lda	t0,1
  fe14d8:	04 00 30 b0 	stl	t0,4(a0)
  fe14dc:	08 00 10 a0 	ldl	v0,8(a0)
  fe14e0:	01 80 fa 6b 	ret

0000000000fe14e4 <get_static_value_addr>:
  fe14e4:	01 00 bb 27 	ldah	gp,1(t12)
  fe14e8:	2c 83 bd 23 	lda	gp,-31956(gp)
  fe14ec:	00 80 1d a4 	ldq	v0,-32768(gp)
  fe14f0:	01 80 fa 6b 	ret

0000000000fe14f4 <get_static_value>:
  fe14f4:	01 00 bb 27 	ldah	gp,1(t12)
  fe14f8:	1c 83 bd 23 	lda	gp,-31972(gp)
  fe14fc:	00 80 3d a4 	ldq	t0,-32768(gp)
  fe1500:	00 00 01 a0 	ldl	v0,0(t0)
  fe1504:	01 80 fa 6b 	ret

0000000000fe1508 <set_static_value>:
  fe1508:	01 00 bb 27 	ldah	gp,1(t12)
  fe150c:	08 83 bd 23 	lda	gp,-31992(gp)
  fe1510:	00 80 3d a4 	ldq	t0,-32768(gp)
  fe1514:	00 00 01 b2 	stl	a0,0(t0)
  fe1518:	01 80 fa 6b 	ret

0000000000fe151c <set_stack>:
  fe151c:	f0 ff de 23 	lda	sp,-16(sp)
  fe1520:	fe 00 3f 20 	lda	t0,254
  fe1524:	00 00 3e b0 	stl	t0,0(sp)
  fe1528:	ff 00 3f 20 	lda	t0,255
  fe152c:	04 00 3e b0 	stl	t0,4(sp)
  fe1530:	10 00 de 23 	lda	sp,16(sp)
  fe1534:	01 80 fa 6b 	ret

0000000000fe1538 <use_stack>:
  fe1538:	f0 ff de 23 	lda	sp,-16(sp)
  fe153c:	fe 00 3f 20 	lda	t0,254
  fe1540:	00 00 3e b0 	stl	t0,0(sp)
  fe1544:	ff 00 3f 20 	lda	t0,255
  fe1548:	04 00 3e b0 	stl	t0,4(sp)
  fe154c:	00 00 1e a0 	ldl	v0,0(sp)
  fe1550:	04 00 3e a0 	ldl	t0,4(sp)
  fe1554:	00 00 01 40 	addl	v0,t0,v0
  fe1558:	10 00 de 23 	lda	sp,16(sp)
  fe155c:	01 80 fa 6b 	ret

0000000000fe1560 <call_self>:
  fe1560:	01 00 bb 27 	ldah	gp,1(t12)
  fe1564:	b0 82 bd 23 	lda	gp,-32080(gp)
  fe1568:	f0 ff de 23 	lda	sp,-16(sp)
  fe156c:	00 00 5e b7 	stq	ra,0(sp)
  fe1570:	08 80 7d a7 	ldq	t12,-32760(gp)
  fe1574:	fa 7f 5b 6b 	jsr	ra,(t12),fe1560 <call_self>
  fe1578:	01 00 ba 27 	ldah	gp,1(ra)
  fe157c:	98 82 bd 23 	lda	gp,-32104(gp)
  fe1580:	00 00 5e a7 	ldq	ra,0(sp)
  fe1584:	10 00 de 23 	lda	sp,16(sp)
  fe1588:	01 80 fa 6b 	ret

0000000000fe158c <call_simple>:
  fe158c:	01 00 bb 27 	ldah	gp,1(t12)
  fe1590:	84 82 bd 23 	lda	gp,-32124(gp)
  fe1594:	f0 ff de 23 	lda	sp,-16(sp)
  fe1598:	00 00 5e b7 	stq	ra,0(sp)
  fe159c:	18 80 7d a7 	ldq	t12,-32744(gp)
  fe15a0:	af 7f 5b 6b 	jsr	ra,(t12),fe1460 <return_arg1>
  fe15a4:	01 00 ba 27 	ldah	gp,1(ra)
  fe15a8:	6c 82 bd 23 	lda	gp,-32148(gp)
  fe15ac:	00 00 5e a7 	ldq	ra,0(sp)
  fe15b0:	10 00 de 23 	lda	sp,16(sp)
  fe15b4:	01 80 fa 6b 	ret

0000000000fe15b8 <call_complex1>:
  fe15b8:	01 00 bb 27 	ldah	gp,1(t12)
  fe15bc:	58 82 bd 23 	lda	gp,-32168(gp)
  fe15c0:	f0 ff de 23 	lda	sp,-16(sp)
  fe15c4:	00 00 5e b7 	stq	ra,0(sp)
  fe15c8:	fe 00 1f 22 	lda	a0,254
  fe15cc:	18 80 7d a7 	ldq	t12,-32744(gp)
  fe15d0:	a3 7f 5b 6b 	jsr	ra,(t12),fe1460 <return_arg1>
  fe15d4:	01 00 ba 27 	ldah	gp,1(ra)
  fe15d8:	3c 82 bd 23 	lda	gp,-32196(gp)
  fe15dc:	00 30 00 40 	addl	v0,0x1,v0
  fe15e0:	00 00 5e a7 	ldq	ra,0(sp)
  fe15e4:	10 00 de 23 	lda	sp,16(sp)
  fe15e8:	01 80 fa 6b 	ret

0000000000fe15ec <call_complex2>:
  fe15ec:	01 00 bb 27 	ldah	gp,1(t12)
  fe15f0:	24 82 bd 23 	lda	gp,-32220(gp)
  fe15f4:	f0 ff de 23 	lda	sp,-16(sp)
  fe15f8:	00 00 5e b7 	stq	ra,0(sp)
  fe15fc:	08 00 3e b5 	stq	s0,8(sp)
  fe1600:	09 04 f1 47 	mov	a1,s0
  fe1604:	10 04 f1 47 	mov	a1,a0
  fe1608:	18 80 7d a7 	ldq	t12,-32744(gp)
  fe160c:	94 7f 5b 6b 	jsr	ra,(t12),fe1460 <return_arg1>
  fe1610:	01 00 ba 27 	ldah	gp,1(ra)
  fe1614:	00 82 bd 23 	lda	gp,-32256(gp)
  fe1618:	00 80 3d a4 	ldq	t0,-32768(gp)
  fe161c:	00 00 01 b0 	stl	v0,0(t0)
  fe1620:	00 04 e9 47 	mov	s0,v0
  fe1624:	00 00 5e a7 	ldq	ra,0(sp)
  fe1628:	08 00 3e a5 	ldq	s0,8(sp)
  fe162c:	10 00 de 23 	lda	sp,16(sp)
  fe1630:	01 80 fa 6b 	ret

0000000000fe1634 <call_pointer>:
  fe1634:	01 00 bb 27 	ldah	gp,1(t12)
  fe1638:	dc 81 bd 23 	lda	gp,-32292(gp)
  fe163c:	f0 ff de 23 	lda	sp,-16(sp)
  fe1640:	00 00 5e b7 	stq	ra,0(sp)
  fe1644:	1b 04 f0 47 	mov	a0,t12
  fe1648:	00 40 5b 6b 	jsr	ra,(t12),fe164c <call_pointer+0x18>
  fe164c:	01 00 ba 27 	ldah	gp,1(ra)
  fe1650:	c4 81 bd 23 	lda	gp,-32316(gp)
  fe1654:	00 00 5e a7 	ldq	ra,0(sp)
  fe1658:	10 00 de 23 	lda	sp,16(sp)
  fe165c:	01 80 fa 6b 	ret

0000000000fe1660 <condition>:
  fe1660:	30 05 11 42 	subq	a0,a1,a0
  fe1664:	91 34 00 46 	cmoveq	a0,0x1,a1
  fe1668:	00 30 20 42 	addl	a1,0x1,v0
  fe166c:	01 80 fa 6b 	ret

0000000000fe1670 <loop>:
  fe1670:	00 04 ff 47 	clr	v0
  fe1674:	05 00 00 ee 	ble	a0,fe168c <loop+0x1c>
  fe1678:	01 04 ff 47 	clr	t0
  fe167c:	00 00 01 40 	addl	v0,t0,v0
  fe1680:	01 30 20 40 	addl	t0,0x1,t0
  fe1684:	a2 05 30 40 	cmpeq	t0,a0,t1
  fe1688:	fc ff 5f e4 	beq	t1,fe167c <loop+0xc>
  fe168c:	01 80 fa 6b 	ret

0000000000fe1690 <many_args>:
  fe1690:	13 00 13 42 	addl	a0,a3,a3
  fe1694:	15 00 75 42 	addl	a3,a5,a5
  fe1698:	08 00 3e a0 	ldl	t0,8(sp)
  fe169c:	00 00 a1 42 	addl	a5,t0,v0
  fe16a0:	01 80 fa 6b 	ret

0000000000fe16a4 <call_many_args>:
  fe16a4:	01 00 bb 27 	ldah	gp,1(t12)
  fe16a8:	6c 81 bd 23 	lda	gp,-32404(gp)
  fe16ac:	e0 ff de 23 	lda	sp,-32(sp)
  fe16b0:	10 00 5e b7 	stq	ra,16(sp)
  fe16b4:	06 00 3f 20 	lda	t0,6
  fe16b8:	00 00 3e b4 	stq	t0,0(sp)
  fe16bc:	07 00 3f 20 	lda	t0,7
  fe16c0:	08 00 3e b4 	stq	t0,8(sp)
  fe16c4:	10 04 ff 47 	clr	a0
  fe16c8:	01 00 3f 22 	lda	a1,1
  fe16cc:	02 00 5f 22 	lda	a2,2
  fe16d0:	03 00 7f 22 	lda	a3,3
  fe16d4:	04 00 9f 22 	lda	a4,4
  fe16d8:	05 00 bf 22 	lda	a5,5
  fe16dc:	10 80 7d a7 	ldq	t12,-32752(gp)
  fe16e0:	eb 7f 5b 6b 	jsr	ra,(t12),fe1690 <many_args>
  fe16e4:	01 00 ba 27 	ldah	gp,1(ra)
  fe16e8:	2c 81 bd 23 	lda	gp,-32468(gp)
  fe16ec:	10 00 5e a7 	ldq	ra,16(sp)
  fe16f0:	20 00 de 23 	lda	sp,32(sp)
  fe16f4:	01 80 fa 6b 	ret

0000000000fe16f8 <direct>:
  fe16f8:	1f 04 ff 47 	nop	
  fe16fc:	01 80 fa 6b 	ret

0000000000fe1700 <binary>:
  fe1700:	00 00 00 00 	halt
  fe1704:	01 80 fa 6b 	ret

0000000000fe1708 <main>:
  fe1708:	00 04 ff 47 	clr	v0
  fe170c:	01 80 fa 6b 	ret
