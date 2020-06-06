
powerpc-elf.x:     file format elf32-powerpc


Disassembly of section .text:

00001400 <_start>:
    1400:	3c 20 00 00 	lis     r1,0
    1404:	60 21 1c 10 	ori     r1,r1,7184
    1408:	38 21 ff f0 	addi    r1,r1,-16
    140c:	48 00 01 b1 	bl      15bc <main>

00001410 <__exit>:
    1410:	38 00 00 01 	li      r0,1
    1414:	44 00 00 02 	sc      
    1418:	48 00 00 34 	b       144c <_check_err>

0000141c <__read>:
    141c:	38 00 00 03 	li      r0,3
    1420:	44 00 00 02 	sc      
    1424:	48 00 00 28 	b       144c <_check_err>

00001428 <__write>:
    1428:	38 00 00 04 	li      r0,4
    142c:	44 00 00 02 	sc      
    1430:	48 00 00 1c 	b       144c <_check_err>

00001434 <__open>:
    1434:	38 00 00 05 	li      r0,5
    1438:	44 00 00 02 	sc      
    143c:	48 00 00 10 	b       144c <_check_err>

00001440 <__close>:
    1440:	38 00 00 06 	li      r0,6
    1444:	44 00 00 02 	sc      
    1448:	48 00 00 04 	b       144c <_check_err>

0000144c <_check_err>:
    144c:	41 83 00 08 	bso-    1454 <_err>
    1450:	4e 80 00 20 	blr

00001454 <_err>:
    1454:	38 60 ff ff 	li      r3,-1
    1458:	4e 80 00 20 	blr

0000145c <exit>:
    145c:	94 21 ff f0 	stwu    r1,-16(r1)
    1460:	7c 08 02 a6 	mflr    r0
    1464:	90 01 00 14 	stw     r0,20(r1)
    1468:	4b ff ff a9 	bl      1410 <__exit>

0000146c <write1>:
    146c:	94 21 ff f0 	stwu    r1,-16(r1)
    1470:	7c 08 02 a6 	mflr    r0
    1474:	90 01 00 14 	stw     r0,20(r1)
    1478:	7c 29 0b 78 	mr      r9,r1
    147c:	9c 89 00 08 	stbu    r4,8(r9)
    1480:	7d 24 4b 78 	mr      r4,r9
    1484:	38 a0 00 01 	li      r5,1
    1488:	4b ff ff a1 	bl      1428 <__write>
    148c:	80 01 00 14 	lwz     r0,20(r1)
    1490:	7c 08 03 a6 	mtlr    r0
    1494:	38 21 00 10 	addi    r1,r1,16
    1498:	4e 80 00 20 	blr

0000149c <putchar>:
    149c:	94 21 ff f0 	stwu    r1,-16(r1)
    14a0:	7c 08 02 a6 	mflr    r0
    14a4:	90 01 00 14 	stw     r0,20(r1)
    14a8:	93 e1 00 0c 	stw     r31,12(r1)
    14ac:	7c 9f 23 78 	mr      r31,r4
    14b0:	54 84 06 3e 	clrlwi  r4,r4,24
    14b4:	4b ff ff b9 	bl      146c <write1>
    14b8:	7f e3 fb 78 	mr      r3,r31
    14bc:	80 01 00 14 	lwz     r0,20(r1)
    14c0:	7c 08 03 a6 	mtlr    r0
    14c4:	83 e1 00 0c 	lwz     r31,12(r1)
    14c8:	38 21 00 10 	addi    r1,r1,16
    14cc:	4e 80 00 20 	blr

000014d0 <puts>:
    14d0:	94 21 ff f0 	stwu    r1,-16(r1)
    14d4:	7c 08 02 a6 	mflr    r0
    14d8:	90 01 00 14 	stw     r0,20(r1)
    14dc:	93 c1 00 08 	stw     r30,8(r1)
    14e0:	93 e1 00 0c 	stw     r31,12(r1)
    14e4:	7c 7e 1b 78 	mr      r30,r3
    14e8:	7c 9f 23 78 	mr      r31,r4
    14ec:	88 84 00 00 	lbz     r4,0(r4)
    14f0:	2f 84 00 00 	cmpwi   cr7,r4,0
    14f4:	41 9e 00 18 	beq-    cr7,150c <puts+0x3c>
    14f8:	7f c3 f3 78 	mr      r3,r30
    14fc:	4b ff ff a1 	bl      149c <putchar>
    1500:	8c 9f 00 01 	lbzu    r4,1(r31)
    1504:	2f 84 00 00 	cmpwi   cr7,r4,0
    1508:	40 9e ff f0 	bne+    cr7,14f8 <puts+0x28>
    150c:	38 60 00 00 	li      r3,0
    1510:	80 01 00 14 	lwz     r0,20(r1)
    1514:	7c 08 03 a6 	mtlr    r0
    1518:	83 c1 00 08 	lwz     r30,8(r1)
    151c:	83 e1 00 0c 	lwz     r31,12(r1)
    1520:	38 21 00 10 	addi    r1,r1,16
    1524:	4e 80 00 20 	blr

00001528 <putxval>:
    1528:	94 21 ff d0 	stwu    r1,-48(r1)
    152c:	7c 08 02 a6 	mflr    r0
    1530:	90 01 00 34 	stw     r0,52(r1)
    1534:	39 20 00 00 	li      r9,0
    1538:	99 21 00 18 	stb     r9,24(r1)
    153c:	7c 8a 23 79 	mr.     r10,r4
    1540:	40 82 00 10 	bne-    1550 <putxval+0x28>
    1544:	2f 85 00 00 	cmpwi   cr7,r5,0
    1548:	40 9e 00 08 	bne-    cr7,1550 <putxval+0x28>
    154c:	38 a0 00 01 	li      r5,1
    1550:	39 21 00 16 	addi    r9,r1,22
    1554:	39 60 00 30 	li      r11,48
    1558:	3c c0 00 00 	lis     r6,0
    155c:	48 00 00 28 	b       1584 <putxval+0x5c>
    1560:	38 e6 16 04 	addi    r7,r6,5636
    1564:	55 48 07 3e 	clrlwi  r8,r10,28
    1568:	7d 07 40 ae 	lbzx    r8,r7,r8
    156c:	99 09 00 01 	stb     r8,1(r9)
    1570:	55 4a e1 3e 	rlwinm  r10,r10,28,4,31
    1574:	2f 85 00 00 	cmpwi   cr7,r5,0
    1578:	41 be 00 08 	beq+    cr7,1580 <putxval+0x58>
    157c:	38 a5 ff ff 	addi    r5,r5,-1
    1580:	39 29 ff ff 	addi    r9,r9,-1
    1584:	38 89 00 01 	addi    r4,r9,1
    1588:	2f 8a 00 00 	cmpwi   cr7,r10,0
    158c:	40 be ff d4 	bne-    cr7,1560 <putxval+0x38>
    1590:	2f 85 00 00 	cmpwi   cr7,r5,0
    1594:	41 9e 00 0c 	beq-    cr7,15a0 <putxval+0x78>
    1598:	99 69 00 01 	stb     r11,1(r9)
    159c:	4b ff ff e0 	b       157c <putxval+0x54>
    15a0:	38 84 00 01 	addi    r4,r4,1
    15a4:	4b ff ff 2d 	bl      14d0 <puts>
    15a8:	38 60 00 00 	li      r3,0
    15ac:	80 01 00 34 	lwz     r0,52(r1)
    15b0:	7c 08 03 a6 	mtlr    r0
    15b4:	38 21 00 30 	addi    r1,r1,48
    15b8:	4e 80 00 20 	blr

000015bc <main>:
    15bc:	94 21 ff f0 	stwu    r1,-16(r1)
    15c0:	7c 08 02 a6 	mflr    r0
    15c4:	90 01 00 14 	stw     r0,20(r1)
    15c8:	38 60 00 01 	li      r3,1
    15cc:	3c 80 00 00 	lis     r4,0
    15d0:	38 84 16 18 	addi    r4,r4,5656
    15d4:	4b ff fe fd 	bl      14d0 <puts>
    15d8:	38 60 00 01 	li      r3,1
    15dc:	3d 20 00 00 	lis     r9,0
    15e0:	80 89 18 00 	lwz     r4,6144(r9)
    15e4:	38 a0 00 00 	li      r5,0
    15e8:	4b ff ff 41 	bl      1528 <putxval>
    15ec:	38 60 00 01 	li      r3,1
    15f0:	3c 80 00 00 	lis     r4,0
    15f4:	38 84 16 28 	addi    r4,r4,5672
    15f8:	4b ff fe d9 	bl      14d0 <puts>
    15fc:	38 60 00 00 	li      r3,0
    1600:	4b ff fe 5d 	bl      145c <exit>
