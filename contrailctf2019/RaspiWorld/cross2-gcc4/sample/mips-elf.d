
mips-elf.x:     file format elf32-bigmips


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	03e00008 	jr	ra
  fe1404:	00000000 	nop

00fe1408 <return_zero>:
  fe1408:	03e00008 	jr	ra
  fe140c:	00001021 	move	v0,zero

00fe1410 <return_one>:
  fe1410:	03e00008 	jr	ra
  fe1414:	24020001 	li	v0,1

00fe1418 <return_int_size>:
  fe1418:	03e00008 	jr	ra
  fe141c:	24020004 	li	v0,4

00fe1420 <return_pointer_size>:
  fe1420:	03e00008 	jr	ra
  fe1424:	24020004 	li	v0,4

00fe1428 <return_short_size>:
  fe1428:	03e00008 	jr	ra
  fe142c:	24020002 	li	v0,2

00fe1430 <return_long_size>:
  fe1430:	03e00008 	jr	ra
  fe1434:	24020004 	li	v0,4

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
  fe1454:	3c02ffee 	lui	v0,0xffee
  fe1458:	03e00008 	jr	ra
  fe145c:	3442ddcc 	ori	v0,v0,0xddcc

00fe1460 <return_arg1>:
  fe1460:	03e00008 	jr	ra
  fe1464:	00801021 	move	v0,a0

00fe1468 <return_arg2>:
  fe1468:	03e00008 	jr	ra
  fe146c:	00a01021 	move	v0,a1

00fe1470 <add>:
  fe1470:	03e00008 	jr	ra
  fe1474:	00851021 	addu	v0,a0,a1

00fe1478 <add3>:
  fe1478:	00851021 	addu	v0,a0,a1
  fe147c:	03e00008 	jr	ra
  fe1480:	00461021 	addu	v0,v0,a2

00fe1484 <add_two>:
  fe1484:	03e00008 	jr	ra
  fe1488:	24820002 	addiu	v0,a0,2

00fe148c <inc>:
  fe148c:	03e00008 	jr	ra
  fe1490:	24820001 	addiu	v0,a0,1

00fe1494 <or>:
  fe1494:	03e00008 	jr	ra
  fe1498:	00a41025 	or	v0,a1,a0

00fe149c <or_one>:
  fe149c:	03e00008 	jr	ra
  fe14a0:	34820001 	ori	v0,a0,0x1

00fe14a4 <load>:
  fe14a4:	8c820000 	lw	v0,0(a0)
  fe14a8:	03e00008 	jr	ra
  fe14ac:	00000000 	nop

00fe14b0 <store>:
  fe14b0:	240200ff 	li	v0,255
  fe14b4:	ac820000 	sw	v0,0(a0)
  fe14b8:	03e00008 	jr	ra
  fe14bc:	00000000 	nop

00fe14c0 <load_long>:
  fe14c0:	8c820000 	lw	v0,0(a0)
  fe14c4:	03e00008 	jr	ra
  fe14c8:	00000000 	nop

00fe14cc <store_long>:
  fe14cc:	3c021122 	lui	v0,0x1122
  fe14d0:	24423344 	addiu	v0,v0,13124
  fe14d4:	ac820000 	sw	v0,0(a0)
  fe14d8:	03e00008 	jr	ra
  fe14dc:	00000000 	nop

00fe14e0 <member>:
  fe14e0:	24020001 	li	v0,1
  fe14e4:	ac820004 	sw	v0,4(a0)
  fe14e8:	8c820008 	lw	v0,8(a0)
  fe14ec:	03e00008 	jr	ra
  fe14f0:	00000000 	nop

00fe14f4 <get_static_value_addr>:
  fe14f4:	03e00008 	jr	ra
  fe14f8:	2782fff8 	addiu	v0,gp,-8

00fe14fc <get_static_value>:
  fe14fc:	8f82fff8 	lw	v0,-8(gp)
  fe1500:	03e00008 	jr	ra
  fe1504:	00000000 	nop

00fe1508 <set_static_value>:
  fe1508:	03e00008 	jr	ra
  fe150c:	af84fff8 	sw	a0,-8(gp)

00fe1510 <set_stack>:
  fe1510:	27bdfff8 	addiu	sp,sp,-8
  fe1514:	240200fe 	li	v0,254
  fe1518:	afa20000 	sw	v0,0(sp)
  fe151c:	240200ff 	li	v0,255
  fe1520:	afa20004 	sw	v0,4(sp)
  fe1524:	03e00008 	jr	ra
  fe1528:	27bd0008 	addiu	sp,sp,8

00fe152c <use_stack>:
  fe152c:	27bdfff8 	addiu	sp,sp,-8
  fe1530:	240200fe 	li	v0,254
  fe1534:	afa20000 	sw	v0,0(sp)
  fe1538:	240200ff 	li	v0,255
  fe153c:	afa20004 	sw	v0,4(sp)
  fe1540:	8fa30000 	lw	v1,0(sp)
  fe1544:	8fa20004 	lw	v0,4(sp)
  fe1548:	00000000 	nop
  fe154c:	00621021 	addu	v0,v1,v0
  fe1550:	03e00008 	jr	ra
  fe1554:	27bd0008 	addiu	sp,sp,8

00fe1558 <call_self>:
  fe1558:	27bdffe8 	addiu	sp,sp,-24
  fe155c:	afbf0014 	sw	ra,20(sp)
  fe1560:	0c3f8556 	jal	fe1558 <call_self>
  fe1564:	00000000 	nop
  fe1568:	8fbf0014 	lw	ra,20(sp)
  fe156c:	00000000 	nop
  fe1570:	03e00008 	jr	ra
  fe1574:	27bd0018 	addiu	sp,sp,24

00fe1578 <call_simple>:
  fe1578:	27bdffe8 	addiu	sp,sp,-24
  fe157c:	afbf0014 	sw	ra,20(sp)
  fe1580:	0c3f8518 	jal	fe1460 <return_arg1>
  fe1584:	00000000 	nop
  fe1588:	8fbf0014 	lw	ra,20(sp)
  fe158c:	00000000 	nop
  fe1590:	03e00008 	jr	ra
  fe1594:	27bd0018 	addiu	sp,sp,24

00fe1598 <call_complex1>:
  fe1598:	27bdffe8 	addiu	sp,sp,-24
  fe159c:	afbf0014 	sw	ra,20(sp)
  fe15a0:	0c3f8518 	jal	fe1460 <return_arg1>
  fe15a4:	240400fe 	li	a0,254
  fe15a8:	24420001 	addiu	v0,v0,1
  fe15ac:	8fbf0014 	lw	ra,20(sp)
  fe15b0:	00000000 	nop
  fe15b4:	03e00008 	jr	ra
  fe15b8:	27bd0018 	addiu	sp,sp,24

00fe15bc <call_complex2>:
  fe15bc:	27bdffe8 	addiu	sp,sp,-24
  fe15c0:	afbf0014 	sw	ra,20(sp)
  fe15c4:	afb00010 	sw	s0,16(sp)
  fe15c8:	00a08021 	move	s0,a1
  fe15cc:	0c3f8518 	jal	fe1460 <return_arg1>
  fe15d0:	00a02021 	move	a0,a1
  fe15d4:	af82fff8 	sw	v0,-8(gp)
  fe15d8:	02001021 	move	v0,s0
  fe15dc:	8fbf0014 	lw	ra,20(sp)
  fe15e0:	8fb00010 	lw	s0,16(sp)
  fe15e4:	03e00008 	jr	ra
  fe15e8:	27bd0018 	addiu	sp,sp,24

00fe15ec <call_pointer>:
  fe15ec:	27bdffe8 	addiu	sp,sp,-24
  fe15f0:	afbf0014 	sw	ra,20(sp)
  fe15f4:	0080f809 	jalr	a0
  fe15f8:	00000000 	nop
  fe15fc:	8fbf0014 	lw	ra,20(sp)
  fe1600:	00000000 	nop
  fe1604:	03e00008 	jr	ra
  fe1608:	27bd0018 	addiu	sp,sp,24

00fe160c <condition>:
  fe160c:	14850002 	bne	a0,a1,fe1618 <condition+0xc>
  fe1610:	00000000 	nop
  fe1614:	24050001 	li	a1,1
  fe1618:	03e00008 	jr	ra
  fe161c:	24a20001 	addiu	v0,a1,1

00fe1620 <loop>:
  fe1620:	18800008 	blez	a0,fe1644 <loop+0x24>
  fe1624:	00001821 	move	v1,zero
  fe1628:	00001021 	move	v0,zero
  fe162c:	00431021 	addu	v0,v0,v1
  fe1630:	24630001 	addiu	v1,v1,1
  fe1634:	1464fffe 	bne	v1,a0,fe1630 <loop+0x10>
  fe1638:	00431021 	addu	v0,v0,v1
  fe163c:	03e00008 	jr	ra
  fe1640:	00431023 	subu	v0,v0,v1
  fe1644:	03e00008 	jr	ra
  fe1648:	00001021 	move	v0,zero

00fe164c <many_args>:
  fe164c:	00872021 	addu	a0,a0,a3
  fe1650:	8fa20014 	lw	v0,20(sp)
  fe1654:	00000000 	nop
  fe1658:	00822021 	addu	a0,a0,v0
  fe165c:	8fa2001c 	lw	v0,28(sp)
  fe1660:	03e00008 	jr	ra
  fe1664:	00821021 	addu	v0,a0,v0

00fe1668 <call_many_args>:
  fe1668:	27bdffd8 	addiu	sp,sp,-40
  fe166c:	afbf0024 	sw	ra,36(sp)
  fe1670:	24020004 	li	v0,4
  fe1674:	afa20010 	sw	v0,16(sp)
  fe1678:	24020005 	li	v0,5
  fe167c:	afa20014 	sw	v0,20(sp)
  fe1680:	24020006 	li	v0,6
  fe1684:	afa20018 	sw	v0,24(sp)
  fe1688:	24020007 	li	v0,7
  fe168c:	afa2001c 	sw	v0,28(sp)
  fe1690:	00002021 	move	a0,zero
  fe1694:	24050001 	li	a1,1
  fe1698:	24060002 	li	a2,2
  fe169c:	0c3f8593 	jal	fe164c <many_args>
  fe16a0:	24070003 	li	a3,3
  fe16a4:	8fbf0024 	lw	ra,36(sp)
  fe16a8:	00000000 	nop
  fe16ac:	03e00008 	jr	ra
  fe16b0:	27bd0028 	addiu	sp,sp,40

00fe16b4 <direct>:
  fe16b4:	03e00008 	jr	ra
  fe16b8:	00000000 	nop
  fe16bc:	00000000 	nop

00fe16c0 <binary>:
  fe16c0:	00000000 	nop
  fe16c4:	03e00008 	jr	ra
  fe16c8:	00000000 	nop

00fe16cc <main>:
  fe16cc:	03e00008 	jr	ra
  fe16d0:	00001021 	move	v0,zero
	...
