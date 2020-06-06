
frv-elf.x:     file format elf32-frv


Disassembly of section .text:

00001400 <_start>:
    1400:	82 f8 00 00 	sethi hi(0x0),sp
    1404:	82 f4 1c 10 	setlo 0x1c10,sp
    1408:	a0 f8 00 00 	sethi hi(0x0),gr16
    140c:	a0 f4 18 00 	setlo 0x1800,gr16
    1410:	80 3c 00 84 	call 1620 <main>
    1414:	80 88 00 00 	nop
    1418:	80 88 00 00 	nop
    141c:	80 88 00 00 	nop

00001420 <__exit>:
    1420:	8e fc 00 01 	setlos 0x1,gr7
    1424:	c0 70 00 00 	tira gr0,0
    1428:	c0 3a 40 00 	bralr
    142c:	80 88 00 00 	nop

00001430 <__read>:
    1430:	8e fc 00 04 	setlos 0x4,gr7
    1434:	c0 70 00 00 	tira gr0,0
    1438:	c0 3a 40 00 	bralr
    143c:	80 88 00 00 	nop

00001440 <__write>:
    1440:	8e fc 00 05 	setlos 0x5,gr7
    1444:	c0 70 00 00 	tira gr0,0
    1448:	c0 3a 40 00 	bralr
    144c:	80 88 00 00 	nop

00001450 <__open>:
    1450:	8e fc 00 02 	setlos 0x2,gr7
    1454:	c0 70 00 00 	tira gr0,0
    1458:	c0 3a 40 00 	bralr
    145c:	80 88 00 00 	nop

00001460 <__close>:
    1460:	8e fc 00 03 	setlos 0x3,gr7
    1464:	c0 70 00 00 	tira gr0,0
    1468:	c0 3a 40 00 	bralr
    146c:	80 88 00 00 	nop

00001470 <__main>:
    1470:	c0 3a 40 00 	bralr
    1474:	80 88 00 00 	nop
    1478:	80 88 00 00 	nop
    147c:	80 88 00 00 	nop

00001480 <exit>:
    1480:	82 40 1f f0 	addi sp,-16,sp
    1484:	85 48 10 00 	sti fp,@(sp,0)
    1488:	84 88 10 00 	ori sp,0,fp
    148c:	88 0d 01 c5 	movsg lr,gr5
    1490:	8b 48 20 08 	sti gr5,@(fp,8)
    1494:	fe 3f ff e3 	call 1420 <__exit>
    1498:	80 88 00 00 	nop
    149c:	80 88 00 00 	nop

000014a0 <write1>:
    14a0:	82 40 1f e8 	addi sp,-24,sp
    14a4:	85 48 10 08 	sti fp,@(sp,8)
    14a8:	84 40 10 08 	addi sp,8,fp
    14ac:	88 0d 01 c5 	movsg lr,gr5
    14b0:	8b 48 20 08 	sti gr5,@(fp,8)
    14b4:	93 40 2f ff 	stbi gr9,@(fp,-1)
    14b8:	92 40 2f ff 	addi fp,-1,gr9
    14bc:	94 fc 00 01 	setlos 0x1,gr10
    14c0:	fe 3f ff e0 	call 1440 <__write>
    14c4:	8a c8 20 08 	ldi @(fp,8),gr5
    14c8:	84 08 21 00 	ld @(fp,gr0),fp
    14cc:	82 40 10 18 	addi sp,24,sp
    14d0:	80 30 50 00 	jmpl @(gr5,gr0)
    14d4:	80 88 00 00 	nop
    14d8:	80 88 00 00 	nop
    14dc:	80 88 00 00 	nop

000014e0 <putchar>:
    14e0:	82 40 1f e8 	addi sp,-24,sp
    14e4:	85 48 10 08 	sti fp,@(sp,8)
    14e8:	84 40 10 08 	addi sp,8,fp
    14ec:	88 0d 01 c5 	movsg lr,gr5
    14f0:	8b 48 20 08 	sti gr5,@(fp,8)
    14f4:	a5 48 10 00 	sti gr18,@(sp,0)
    14f8:	a4 88 90 00 	ori gr9,0,gr18
    14fc:	fe 3f ff e9 	call 14a0 <write1>
    1500:	90 89 20 00 	ori gr18,0,gr8
    1504:	a4 c8 10 00 	ldi @(sp,0),gr18
    1508:	8a c8 20 08 	ldi @(fp,8),gr5
    150c:	84 08 21 00 	ld @(fp,gr0),fp
    1510:	82 40 10 18 	addi sp,24,sp
    1514:	80 30 50 00 	jmpl @(gr5,gr0)
    1518:	80 88 00 00 	nop
    151c:	80 88 00 00 	nop

00001520 <puts>:
    1520:	82 40 1f e8 	addi sp,-24,sp
    1524:	85 48 10 08 	sti fp,@(sp,8)
    1528:	84 40 10 08 	addi sp,8,fp
    152c:	88 0d 01 c5 	movsg lr,gr5
    1530:	8b 48 20 08 	sti gr5,@(fp,8)
    1534:	a5 4c 10 00 	stdi gr18,@(sp,0)
    1538:	a6 88 80 00 	ori gr8,0,gr19
    153c:	a4 88 90 00 	ori gr9,0,gr18
    1540:	92 08 90 00 	ldsb @(gr9,gr0),gr9
    1544:	80 54 90 00 	subicc gr9,0,gr0,icc0
    1548:	a0 18 00 07 	beq icc0,0x0,1564 <puts+0x44>
    154c:	90 89 30 00 	ori gr19,0,gr8
    1550:	fe 3f ff e4 	call 14e0 <putchar>
    1554:	a4 41 20 01 	addi gr18,1,gr18
    1558:	92 09 20 00 	ldsb @(gr18,gr0),gr9
    155c:	80 54 90 00 	subicc gr9,0,gr0,icc0
    1560:	e0 1a ff fb 	bne icc0,0x2,154c <puts+0x2c>
    1564:	90 fc 00 00 	setlos lo(0x0),gr8
    1568:	a4 cc 10 00 	lddi @(sp,0),gr18
    156c:	8a c8 20 08 	ldi @(fp,8),gr5
    1570:	84 08 21 00 	ld @(fp,gr0),fp
    1574:	82 40 10 18 	addi sp,24,sp
    1578:	80 30 50 00 	jmpl @(gr5,gr0)
    157c:	80 88 00 00 	nop

00001580 <putxval>:
    1580:	82 40 1f d8 	addi sp,-40,sp
    1584:	85 48 10 18 	sti fp,@(sp,24)
    1588:	84 40 10 18 	addi sp,24,fp
    158c:	88 0d 01 c5 	movsg lr,gr5
    1590:	8b 48 20 08 	sti gr5,@(fp,8)
    1594:	81 40 2f ff 	stbi gr0,@(fp,-1)
    1598:	80 54 90 00 	subicc gr9,0,gr0,icc0
    159c:	e0 1a 00 05 	bne icc0,0x2,15b0 <putxval+0x30>
    15a0:	80 54 a0 00 	subicc gr10,0,gr0,icc0
    15a4:	88 fc 00 01 	setlos 0x1,gr4
    15a8:	e0 20 00 00 	ckne icc0,cc4
    15ac:	95 68 48 40 	cor gr4,gr0,gr10,cc4,0x0
    15b0:	88 40 2f fd 	addi fp,-3,gr4
    15b4:	8e fc 00 30 	setlos 0x30,gr7
    15b8:	8c f8 00 00 	sethi hi(0x0),gr6
    15bc:	8c f4 16 70 	setlo 0x1670,gr6
    15c0:	c0 1a 00 09 	bra 15e4 <putxval+0x64>
    15c4:	8a 80 90 0f 	andi gr9,15,gr5
    15c8:	8a 08 60 05 	ldsb @(gr6,gr5),gr5
    15cc:	8b 40 40 01 	stbi gr5,@(gr4,1)
    15d0:	92 a8 90 04 	srli gr9,4,gr9
    15d4:	80 54 a0 00 	subicc gr10,0,gr0,icc0
    15d8:	a0 1a 00 02 	beq icc0,0x2,15e0 <putxval+0x60>
    15dc:	94 40 af ff 	addi gr10,-1,gr10
    15e0:	88 40 4f ff 	addi gr4,-1,gr4
    15e4:	8a 40 40 01 	addi gr4,1,gr5
    15e8:	80 54 90 00 	subicc gr9,0,gr0,icc0
    15ec:	e0 1a ff f6 	bne icc0,0x2,15c4 <putxval+0x44>
    15f0:	80 54 a0 00 	subicc gr10,0,gr0,icc0
    15f4:	a0 18 00 03 	beq icc0,0x0,1600 <putxval+0x80>
    15f8:	8f 40 40 01 	stbi gr7,@(gr4,1)
    15fc:	c0 1a ff f8 	bra 15dc <putxval+0x5c>
    1600:	92 40 50 01 	addi gr5,1,gr9
    1604:	fe 3f ff c7 	call 1520 <puts>
    1608:	90 fc 00 00 	setlos lo(0x0),gr8
    160c:	8a c8 20 08 	ldi @(fp,8),gr5
    1610:	84 08 21 00 	ld @(fp,gr0),fp
    1614:	82 40 10 28 	addi sp,40,sp
    1618:	80 30 50 00 	jmpl @(gr5,gr0)
    161c:	80 88 00 00 	nop

00001620 <main>:
    1620:	82 40 1f f0 	addi sp,-16,sp
    1624:	85 48 10 00 	sti fp,@(sp,0)
    1628:	84 88 10 00 	ori sp,0,fp
    162c:	88 0d 01 c5 	movsg lr,gr5
    1630:	8b 48 20 08 	sti gr5,@(fp,8)
    1634:	fe 3f ff 8f 	call 1470 <__main>
    1638:	90 fc 00 01 	setlos 0x1,gr8
    163c:	92 f8 00 00 	sethi hi(0x0),gr9
    1640:	92 f4 16 84 	setlo 0x1684,gr9
    1644:	fe 3f ff b7 	call 1520 <puts>
    1648:	92 c9 00 00 	ldi @(gr16,0),gr9
    164c:	90 fc 00 01 	setlos 0x1,gr8
    1650:	94 fc 00 00 	setlos lo(0x0),gr10
    1654:	fe 3f ff cb 	call 1580 <putxval>
    1658:	90 fc 00 01 	setlos 0x1,gr8
    165c:	92 f8 00 00 	sethi hi(0x0),gr9
    1660:	92 f4 16 94 	setlo 0x1694,gr9
    1664:	fe 3f ff af 	call 1520 <puts>
    1668:	90 fc 00 00 	setlos lo(0x0),gr8
    166c:	fe 3f ff 85 	call 1480 <exit>
