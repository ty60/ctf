
powerpc-elf.x:     file format elf32-powerpc


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	4e 80 00 20 	blr

00fe1404 <return_zero>:
  fe1404:	38 60 00 00 	li      r3,0
  fe1408:	4e 80 00 20 	blr

00fe140c <return_one>:
  fe140c:	38 60 00 01 	li      r3,1
  fe1410:	4e 80 00 20 	blr

00fe1414 <return_int_size>:
  fe1414:	38 60 00 04 	li      r3,4
  fe1418:	4e 80 00 20 	blr

00fe141c <return_pointer_size>:
  fe141c:	38 60 00 04 	li      r3,4
  fe1420:	4e 80 00 20 	blr

00fe1424 <return_short_size>:
  fe1424:	38 60 00 02 	li      r3,2
  fe1428:	4e 80 00 20 	blr

00fe142c <return_long_size>:
  fe142c:	38 60 00 04 	li      r3,4
  fe1430:	4e 80 00 20 	blr

00fe1434 <return_short>:
  fe1434:	38 60 77 88 	li      r3,30600
  fe1438:	4e 80 00 20 	blr

00fe143c <return_long>:
  fe143c:	3c 60 77 88 	lis     r3,30600
  fe1440:	60 63 99 aa 	ori     r3,r3,39338
  fe1444:	4e 80 00 20 	blr

00fe1448 <return_short_upper>:
  fe1448:	38 60 ff ee 	li      r3,-18
  fe144c:	4e 80 00 20 	blr

00fe1450 <return_long_upper>:
  fe1450:	3c 60 ff ee 	lis     r3,-18
  fe1454:	60 63 dd cc 	ori     r3,r3,56780
  fe1458:	4e 80 00 20 	blr

00fe145c <return_arg1>:
  fe145c:	4e 80 00 20 	blr

00fe1460 <return_arg2>:
  fe1460:	7c 83 23 78 	mr      r3,r4
  fe1464:	4e 80 00 20 	blr

00fe1468 <add>:
  fe1468:	7c 63 22 14 	add     r3,r3,r4
  fe146c:	4e 80 00 20 	blr

00fe1470 <add3>:
  fe1470:	7c 63 22 14 	add     r3,r3,r4
  fe1474:	7c 63 2a 14 	add     r3,r3,r5
  fe1478:	4e 80 00 20 	blr

00fe147c <add_two>:
  fe147c:	38 63 00 02 	addi    r3,r3,2
  fe1480:	4e 80 00 20 	blr

00fe1484 <inc>:
  fe1484:	38 63 00 01 	addi    r3,r3,1
  fe1488:	4e 80 00 20 	blr

00fe148c <or>:
  fe148c:	7c 83 1b 78 	or      r3,r4,r3
  fe1490:	4e 80 00 20 	blr

00fe1494 <or_one>:
  fe1494:	60 63 00 01 	ori     r3,r3,1
  fe1498:	4e 80 00 20 	blr

00fe149c <load>:
  fe149c:	80 63 00 00 	lwz     r3,0(r3)
  fe14a0:	4e 80 00 20 	blr

00fe14a4 <store>:
  fe14a4:	39 20 00 ff 	li      r9,255
  fe14a8:	91 23 00 00 	stw     r9,0(r3)
  fe14ac:	4e 80 00 20 	blr

00fe14b0 <load_long>:
  fe14b0:	80 63 00 00 	lwz     r3,0(r3)
  fe14b4:	4e 80 00 20 	blr

00fe14b8 <store_long>:
  fe14b8:	3d 20 11 22 	lis     r9,4386
  fe14bc:	61 29 33 44 	ori     r9,r9,13124
  fe14c0:	91 23 00 00 	stw     r9,0(r3)
  fe14c4:	4e 80 00 20 	blr

00fe14c8 <member>:
  fe14c8:	39 20 00 01 	li      r9,1
  fe14cc:	91 23 00 04 	stw     r9,4(r3)
  fe14d0:	80 63 00 08 	lwz     r3,8(r3)
  fe14d4:	4e 80 00 20 	blr

00fe14d8 <get_static_value_addr>:
  fe14d8:	3c 60 00 fe 	lis     r3,254
  fe14dc:	38 63 18 04 	addi    r3,r3,6148
  fe14e0:	4e 80 00 20 	blr

00fe14e4 <get_static_value>:
  fe14e4:	3d 20 00 fe 	lis     r9,254
  fe14e8:	80 69 18 04 	lwz     r3,6148(r9)
  fe14ec:	4e 80 00 20 	blr

00fe14f0 <set_static_value>:
  fe14f0:	3d 20 00 fe 	lis     r9,254
  fe14f4:	90 69 18 04 	stw     r3,6148(r9)
  fe14f8:	4e 80 00 20 	blr

00fe14fc <set_stack>:
  fe14fc:	94 21 ff e0 	stwu    r1,-32(r1)
  fe1500:	39 20 00 fe 	li      r9,254
  fe1504:	91 21 00 08 	stw     r9,8(r1)
  fe1508:	39 20 00 ff 	li      r9,255
  fe150c:	91 21 00 0c 	stw     r9,12(r1)
  fe1510:	38 21 00 20 	addi    r1,r1,32
  fe1514:	4e 80 00 20 	blr

00fe1518 <use_stack>:
  fe1518:	94 21 ff e0 	stwu    r1,-32(r1)
  fe151c:	39 20 00 fe 	li      r9,254
  fe1520:	91 21 00 08 	stw     r9,8(r1)
  fe1524:	39 20 00 ff 	li      r9,255
  fe1528:	91 21 00 0c 	stw     r9,12(r1)
  fe152c:	80 61 00 08 	lwz     r3,8(r1)
  fe1530:	81 21 00 0c 	lwz     r9,12(r1)
  fe1534:	7c 63 4a 14 	add     r3,r3,r9
  fe1538:	38 21 00 20 	addi    r1,r1,32
  fe153c:	4e 80 00 20 	blr

00fe1540 <call_self>:
  fe1540:	94 21 ff f0 	stwu    r1,-16(r1)
  fe1544:	7c 08 02 a6 	mflr    r0
  fe1548:	90 01 00 14 	stw     r0,20(r1)
  fe154c:	4b ff ff f5 	bl      fe1540 <call_self>
  fe1550:	80 01 00 14 	lwz     r0,20(r1)
  fe1554:	7c 08 03 a6 	mtlr    r0
  fe1558:	38 21 00 10 	addi    r1,r1,16
  fe155c:	4e 80 00 20 	blr

00fe1560 <call_simple>:
  fe1560:	94 21 ff f0 	stwu    r1,-16(r1)
  fe1564:	7c 08 02 a6 	mflr    r0
  fe1568:	90 01 00 14 	stw     r0,20(r1)
  fe156c:	4b ff fe f1 	bl      fe145c <return_arg1>
  fe1570:	80 01 00 14 	lwz     r0,20(r1)
  fe1574:	7c 08 03 a6 	mtlr    r0
  fe1578:	38 21 00 10 	addi    r1,r1,16
  fe157c:	4e 80 00 20 	blr

00fe1580 <call_complex1>:
  fe1580:	94 21 ff f0 	stwu    r1,-16(r1)
  fe1584:	7c 08 02 a6 	mflr    r0
  fe1588:	90 01 00 14 	stw     r0,20(r1)
  fe158c:	38 60 00 fe 	li      r3,254
  fe1590:	4b ff fe cd 	bl      fe145c <return_arg1>
  fe1594:	38 63 00 01 	addi    r3,r3,1
  fe1598:	80 01 00 14 	lwz     r0,20(r1)
  fe159c:	7c 08 03 a6 	mtlr    r0
  fe15a0:	38 21 00 10 	addi    r1,r1,16
  fe15a4:	4e 80 00 20 	blr

00fe15a8 <call_complex2>:
  fe15a8:	94 21 ff f0 	stwu    r1,-16(r1)
  fe15ac:	7c 08 02 a6 	mflr    r0
  fe15b0:	90 01 00 14 	stw     r0,20(r1)
  fe15b4:	93 e1 00 0c 	stw     r31,12(r1)
  fe15b8:	7c 9f 23 78 	mr      r31,r4
  fe15bc:	7c 83 23 78 	mr      r3,r4
  fe15c0:	4b ff fe 9d 	bl      fe145c <return_arg1>
  fe15c4:	3d 20 00 fe 	lis     r9,254
  fe15c8:	90 69 18 04 	stw     r3,6148(r9)
  fe15cc:	7f e3 fb 78 	mr      r3,r31
  fe15d0:	80 01 00 14 	lwz     r0,20(r1)
  fe15d4:	7c 08 03 a6 	mtlr    r0
  fe15d8:	83 e1 00 0c 	lwz     r31,12(r1)
  fe15dc:	38 21 00 10 	addi    r1,r1,16
  fe15e0:	4e 80 00 20 	blr

00fe15e4 <call_pointer>:
  fe15e4:	94 21 ff f0 	stwu    r1,-16(r1)
  fe15e8:	7c 08 02 a6 	mflr    r0
  fe15ec:	90 01 00 14 	stw     r0,20(r1)
  fe15f0:	7c 69 03 a6 	mtctr   r3
  fe15f4:	4e 80 04 21 	bctrl
  fe15f8:	80 01 00 14 	lwz     r0,20(r1)
  fe15fc:	7c 08 03 a6 	mtlr    r0
  fe1600:	38 21 00 10 	addi    r1,r1,16
  fe1604:	4e 80 00 20 	blr

00fe1608 <condition>:
  fe1608:	7f 83 20 00 	cmpw    cr7,r3,r4
  fe160c:	40 be 00 08 	bne+    cr7,fe1614 <condition+0xc>
  fe1610:	38 80 00 01 	li      r4,1
  fe1614:	38 64 00 01 	addi    r3,r4,1
  fe1618:	4e 80 00 20 	blr

00fe161c <loop>:
  fe161c:	7c 6a 1b 79 	mr.     r10,r3
  fe1620:	40 81 00 24 	ble-    fe1644 <loop+0x28>
  fe1624:	38 60 00 00 	li      r3,0
  fe1628:	39 20 00 00 	li      r9,0
  fe162c:	7d 49 50 50 	subf    r10,r9,r10
  fe1630:	7d 49 03 a6 	mtctr   r10
  fe1634:	7c 63 4a 14 	add     r3,r3,r9
  fe1638:	39 29 00 01 	addi    r9,r9,1
  fe163c:	42 00 ff f8 	bdnz+   fe1634 <loop+0x18>
  fe1640:	4e 80 00 20 	blr
  fe1644:	38 60 00 00 	li      r3,0
  fe1648:	4e 80 00 20 	blr

00fe164c <many_args>:
  fe164c:	7c 63 32 14 	add     r3,r3,r6
  fe1650:	7c 63 42 14 	add     r3,r3,r8
  fe1654:	7c 63 52 14 	add     r3,r3,r10
  fe1658:	4e 80 00 20 	blr

00fe165c <call_many_args>:
  fe165c:	94 21 ff f0 	stwu    r1,-16(r1)
  fe1660:	7c 08 02 a6 	mflr    r0
  fe1664:	90 01 00 14 	stw     r0,20(r1)
  fe1668:	38 60 00 00 	li      r3,0
  fe166c:	38 80 00 01 	li      r4,1
  fe1670:	38 a0 00 02 	li      r5,2
  fe1674:	38 c0 00 03 	li      r6,3
  fe1678:	38 e0 00 04 	li      r7,4
  fe167c:	39 00 00 05 	li      r8,5
  fe1680:	39 20 00 06 	li      r9,6
  fe1684:	39 40 00 07 	li      r10,7
  fe1688:	4b ff ff c5 	bl      fe164c <many_args>
  fe168c:	80 01 00 14 	lwz     r0,20(r1)
  fe1690:	7c 08 03 a6 	mtlr    r0
  fe1694:	38 21 00 10 	addi    r1,r1,16
  fe1698:	4e 80 00 20 	blr

00fe169c <direct>:
  fe169c:	60 00 00 00 	nop
  fe16a0:	4e 80 00 20 	blr

00fe16a4 <binary>:
  fe16a4:	60 00 00 00 	nop
  fe16a8:	60 00 00 00 	nop
  fe16ac:	60 00 00 00 	nop
  fe16b0:	00 00 00 00 	.long 0x0
  fe16b4:	4e 80 00 20 	blr

00fe16b8 <main>:
  fe16b8:	38 60 00 00 	li      r3,0
  fe16bc:	4e 80 00 20 	blr
