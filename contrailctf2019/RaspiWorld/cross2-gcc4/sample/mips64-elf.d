
mips64-elf.x:     file format elf32-bigmips


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	03e00008 	jr	ra
  fe1404:	00000000 	nop

00fe1408 <return_zero>:
  fe1408:	03e00008 	jr	ra
  fe140c:	0000102d 	move	v0,zero

00fe1410 <return_one>:
  fe1410:	03e00008 	jr	ra
  fe1414:	24020001 	li	v0,1

00fe1418 <return_int_size>:
  fe1418:	03e00008 	jr	ra
  fe141c:	24020004 	li	v0,4

00fe1420 <return_pointer_size>:
  fe1420:	03e00008 	jr	ra
  fe1424:	24020008 	li	v0,8

00fe1428 <return_short_size>:
  fe1428:	03e00008 	jr	ra
  fe142c:	24020002 	li	v0,2

00fe1430 <return_long_size>:
  fe1430:	03e00008 	jr	ra
  fe1434:	24020008 	li	v0,8

00fe1438 <return_short>:
  fe1438:	03e00008 	jr	ra
  fe143c:	24027788 	li	v0,30600

00fe1440 <return_long>:
  fe1440:	3c027788 	lui	v0,0x7788
  fe1444:	03e00008 	jr	ra
  fe1448:	344299aa 	ori	v0,v0,0x99aa

00fe144c <return_short_upper>:
  fe144c:	03e00008 	jr	ra
  fe1450:	2402ffee 	li	v0,-18

00fe1454 <return_long_upper>:
  fe1454:	3c023ffb 	lui	v0,0x3ffb
  fe1458:	3442b773 	ori	v0,v0,0xb773
  fe145c:	03e00008 	jr	ra
  fe1460:	000210b8 	dsll	v0,v0,0x2

00fe1464 <return_arg1>:
  fe1464:	03e00008 	jr	ra
  fe1468:	0080102d 	move	v0,a0

00fe146c <return_arg2>:
  fe146c:	03e00008 	jr	ra
  fe1470:	00a0102d 	move	v0,a1

00fe1474 <add>:
  fe1474:	03e00008 	jr	ra
  fe1478:	00851021 	addu	v0,a0,a1

00fe147c <add3>:
  fe147c:	00851021 	addu	v0,a0,a1
  fe1480:	03e00008 	jr	ra
  fe1484:	00461021 	addu	v0,v0,a2

00fe1488 <add_two>:
  fe1488:	03e00008 	jr	ra
  fe148c:	24820002 	addiu	v0,a0,2

00fe1490 <inc>:
  fe1490:	03e00008 	jr	ra
  fe1494:	24820001 	addiu	v0,a0,1

00fe1498 <or>:
  fe1498:	03e00008 	jr	ra
  fe149c:	00851025 	or	v0,a0,a1

00fe14a0 <or_one>:
  fe14a0:	03e00008 	jr	ra
  fe14a4:	34820001 	ori	v0,a0,0x1

00fe14a8 <load>:
  fe14a8:	8c820000 	lw	v0,0(a0)
  fe14ac:	03e00008 	jr	ra
  fe14b0:	00000000 	nop

00fe14b4 <store>:
  fe14b4:	240200ff 	li	v0,255
  fe14b8:	ac820000 	sw	v0,0(a0)
  fe14bc:	03e00008 	jr	ra
  fe14c0:	00000000 	nop

00fe14c4 <load_long>:
  fe14c4:	dc820000 	ld	v0,0(a0)
  fe14c8:	03e00008 	jr	ra
  fe14cc:	00000000 	nop

00fe14d0 <store_long>:
  fe14d0:	3c021122 	lui	v0,0x1122
  fe14d4:	64423344 	daddiu	v0,v0,13124
  fe14d8:	fc820000 	sd	v0,0(a0)
  fe14dc:	03e00008 	jr	ra
  fe14e0:	00000000 	nop

00fe14e4 <member>:
  fe14e4:	24020001 	li	v0,1
  fe14e8:	ac820004 	sw	v0,4(a0)
  fe14ec:	03e00008 	jr	ra
  fe14f0:	8c820008 	lw	v0,8(a0)

00fe14f4 <get_static_value_addr>:
  fe14f4:	03e00008 	jr	ra
  fe14f8:	6782fff4 	daddiu	v0,gp,-12

00fe14fc <get_static_value>:
  fe14fc:	03e00008 	jr	ra
  fe1500:	8f82fff4 	lw	v0,-12(gp)

00fe1504 <set_static_value>:
  fe1504:	03e00008 	jr	ra
  fe1508:	af84fff4 	sw	a0,-12(gp)

00fe150c <set_stack>:
  fe150c:	67bdfff8 	daddiu	sp,sp,-8
  fe1510:	240200fe 	li	v0,254
  fe1514:	afa20000 	sw	v0,0(sp)
  fe1518:	240200ff 	li	v0,255
  fe151c:	afa20004 	sw	v0,4(sp)
  fe1520:	03e00008 	jr	ra
  fe1524:	67bd0008 	daddiu	sp,sp,8

00fe1528 <use_stack>:
  fe1528:	67bdfff8 	daddiu	sp,sp,-8
  fe152c:	240200fe 	li	v0,254
  fe1530:	afa20000 	sw	v0,0(sp)
  fe1534:	240200ff 	li	v0,255
  fe1538:	afa20004 	sw	v0,4(sp)
  fe153c:	8fa30000 	lw	v1,0(sp)
  fe1540:	8fa20004 	lw	v0,4(sp)
  fe1544:	00621021 	addu	v0,v1,v0
  fe1548:	03e00008 	jr	ra
  fe154c:	67bd0008 	daddiu	sp,sp,8

00fe1550 <call_self>:
  fe1550:	67bdffd8 	daddiu	sp,sp,-40
  fe1554:	ffbf0020 	sd	ra,32(sp)
  fe1558:	0c3f8554 	jal	fe1550 <call_self>
  fe155c:	00000000 	nop
  fe1560:	dfbf0020 	ld	ra,32(sp)
  fe1564:	03e00008 	jr	ra
  fe1568:	67bd0028 	daddiu	sp,sp,40

00fe156c <call_simple>:
  fe156c:	67bdffd8 	daddiu	sp,sp,-40
  fe1570:	ffbf0020 	sd	ra,32(sp)
  fe1574:	0c3f8519 	jal	fe1464 <return_arg1>
  fe1578:	00000000 	nop
  fe157c:	dfbf0020 	ld	ra,32(sp)
  fe1580:	03e00008 	jr	ra
  fe1584:	67bd0028 	daddiu	sp,sp,40

00fe1588 <call_complex1>:
  fe1588:	67bdffd8 	daddiu	sp,sp,-40
  fe158c:	ffbf0020 	sd	ra,32(sp)
  fe1590:	0c3f8519 	jal	fe1464 <return_arg1>
  fe1594:	240400fe 	li	a0,254
  fe1598:	24420001 	addiu	v0,v0,1
  fe159c:	dfbf0020 	ld	ra,32(sp)
  fe15a0:	03e00008 	jr	ra
  fe15a4:	67bd0028 	daddiu	sp,sp,40

00fe15a8 <call_complex2>:
  fe15a8:	67bdffd0 	daddiu	sp,sp,-48
  fe15ac:	ffbf0028 	sd	ra,40(sp)
  fe15b0:	ffb00020 	sd	s0,32(sp)
  fe15b4:	00a0802d 	move	s0,a1
  fe15b8:	0c3f8519 	jal	fe1464 <return_arg1>
  fe15bc:	00a0202d 	move	a0,a1
  fe15c0:	af82fff4 	sw	v0,-12(gp)
  fe15c4:	0200102d 	move	v0,s0
  fe15c8:	dfbf0028 	ld	ra,40(sp)
  fe15cc:	dfb00020 	ld	s0,32(sp)
  fe15d0:	03e00008 	jr	ra
  fe15d4:	67bd0030 	daddiu	sp,sp,48

00fe15d8 <call_pointer>:
  fe15d8:	67bdffd8 	daddiu	sp,sp,-40
  fe15dc:	ffbf0020 	sd	ra,32(sp)
  fe15e0:	0080f809 	jalr	a0
  fe15e4:	00000000 	nop
  fe15e8:	dfbf0020 	ld	ra,32(sp)
  fe15ec:	03e00008 	jr	ra
  fe15f0:	67bd0028 	daddiu	sp,sp,40

00fe15f4 <condition>:
  fe15f4:	00852026 	xor	a0,a0,a1
  fe15f8:	24020001 	li	v0,1
  fe15fc:	0044280a 	movz	a1,v0,a0
  fe1600:	03e00008 	jr	ra
  fe1604:	24a20001 	addiu	v0,a1,1

00fe1608 <loop>:
  fe1608:	18800008 	blez	a0,fe162c <loop+0x24>
  fe160c:	0000182d 	move	v1,zero
  fe1610:	0000102d 	move	v0,zero
  fe1614:	00431021 	addu	v0,v0,v1
  fe1618:	24630001 	addiu	v1,v1,1
  fe161c:	1464fffd 	bne	v1,a0,fe1614 <loop+0xc>
  fe1620:	00000000 	nop
  fe1624:	03e00008 	jr	ra
  fe1628:	00000000 	nop
  fe162c:	03e00008 	jr	ra
  fe1630:	0000102d 	move	v0,zero

00fe1634 <many_args>:
  fe1634:	00872021 	addu	a0,a0,a3
  fe1638:	8fa2002c 	lw	v0,44(sp)
  fe163c:	00822021 	addu	a0,a0,v0
  fe1640:	8fa2003c 	lw	v0,60(sp)
  fe1644:	03e00008 	jr	ra
  fe1648:	00821021 	addu	v0,a0,v0

00fe164c <call_many_args>:
  fe164c:	67bdffb8 	daddiu	sp,sp,-72
  fe1650:	ffbf0040 	sd	ra,64(sp)
  fe1654:	24020004 	li	v0,4
  fe1658:	ffa20020 	sd	v0,32(sp)
  fe165c:	24020005 	li	v0,5
  fe1660:	ffa20028 	sd	v0,40(sp)
  fe1664:	24020006 	li	v0,6
  fe1668:	ffa20030 	sd	v0,48(sp)
  fe166c:	24020007 	li	v0,7
  fe1670:	ffa20038 	sd	v0,56(sp)
  fe1674:	0000202d 	move	a0,zero
  fe1678:	24050001 	li	a1,1
  fe167c:	24060002 	li	a2,2
  fe1680:	0c3f858d 	jal	fe1634 <many_args>
  fe1684:	24070003 	li	a3,3
  fe1688:	dfbf0040 	ld	ra,64(sp)
  fe168c:	03e00008 	jr	ra
  fe1690:	67bd0048 	daddiu	sp,sp,72

00fe1694 <direct>:
  fe1694:	03e00008 	jr	ra
  fe1698:	00000000 	nop
  fe169c:	00000000 	nop

00fe16a0 <binary>:
  fe16a0:	00000000 	nop
  fe16a4:	03e00008 	jr	ra
  fe16a8:	00000000 	nop

00fe16ac <main>:
  fe16ac:	03e00008 	jr	ra
  fe16b0:	0000102d 	move	v0,zero
	...
