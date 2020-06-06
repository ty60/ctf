
cris-elf.x:     file format elf32-us-cris


Disassembly of section .text:

00001400 <_start>:
    1400:	6fee 101c 0000      	move.d 1c10 <_end>,sp
    1406:	3fbd 0015 0000      	jsr 1500 <_main>
    140c:	0f05                	nop 

0000140e <___exit>:
    140e:	4192                	moveq 1,r9
    1410:	3de9                	break 13
    1412:	7fb6                	ret 
    1414:	0f05                	nop 

00001416 <___read>:
    1416:	4392                	moveq 3,r9
    1418:	3de9                	break 13
    141a:	7fb6                	ret 
    141c:	0f05                	nop 

0000141e <___write>:
    141e:	4492                	moveq 4,r9
    1420:	3de9                	break 13
    1422:	7fb6                	ret 
    1424:	0f05                	nop 

00001426 <___open>:
    1426:	6fbe 4202 0000      	move.d 242 <_.tmp+0x202>,r11
    142c:	4592                	moveq 5,r9
    142e:	3de9                	break 13
    1430:	7fb6                	ret 
    1432:	0f05                	nop 

00001434 <___close>:
    1434:	4692                	moveq 6,r9
    1436:	3de9                	break 13
    1438:	7fb6                	ret 
    143a:	0f05                	nop 

0000143c <_exit>:
    143c:	84e2                	subq 4,sp
    143e:	7eba                	move srp,[sp]
    1440:	3fbd 0e14 0000      	jsr 140e <___exit>

00001446 <_write1>:
    1446:	84e2                	subq 4,sp
    1448:	7eba                	move srp,[sp]
    144a:	82e2                	subq 2,sp
    144c:	01e1 cbbb           	move.b r11,[sp+1]
    1450:	6eb6                	move.d sp,r11
    1452:	01b2                	addq 1,r11
    1454:	41c2                	moveq 1,r12
    1456:	3fbd 1e14 0000      	jsr 141e <___write>
    145c:	02e2                	addq 2,sp
    145e:	3e0d                	jump [sp+]

00001460 <_putchar>:
    1460:	84e2                	subq 4,sp
    1462:	7eba                	move srp,[sp]
    1464:	84e2                	subq 4,sp
    1466:	ee0b                	move.d r0,[sp]
    1468:	6b06                	move.d r11,r0
    146a:	4bb4                	movu.b r11,r11
    146c:	3fbd 4614 0000      	jsr 1446 <_write1>
    1472:	60a6                	move.d r0,r10
    1474:	6e0e                	pop r0
    1476:	3e0d                	jump [sp+]

00001478 <_puts>:
    1478:	84e2                	subq 4,sp
    147a:	7eba                	move srp,[sp]
    147c:	8ce2                	subq 12,sp
    147e:	fe2b                	movem r2,[sp]
    1480:	4b9a                	move.b [r11],r9
    1482:	1830                	beq 149c <_puts+0x24>
    1484:	6a16                	move.d r10,r1
    1486:	6b06                	move.d r11,r0
    1488:	0102                	addq 1,r0
    148a:	6f2e 6014 0000      	move.d 1460 <_putchar>,r2
    1490:	61a6                	move.d r1,r10
    1492:	69b4                	movs.b r9,r11
    1494:	b2b9                	jsr r2
    1496:	409e                	move.b [r0+],r9
    1498:	f720                	bne 1490 <_puts+0x18>
    149a:	0f05                	nop 
    149c:	7a86                	clear.d r10
    149e:	be2f                	movem [sp+],r2
    14a0:	3e0d                	jump [sp+]

000014a2 <_putxval>:
    14a2:	84e2                	subq 4,sp
    14a4:	7eba                	move srp,[sp]
    14a6:	9ae2                	subq 26,sp
    14a8:	fe1b                	movem r1,[sp]
    14aa:	19e1 700a           	clear.b [sp+25]
    14ae:	6bb6                	test.d r11
    14b0:	0c20                	bne 14be <_putxval+0x1c>
    14b2:	6e96                	move.d sp,r9
    14b4:	6cc6                	test.d r12
    14b6:	0620                	bne 14be <_putxval+0x1c>
    14b8:	0f05                	nop 
    14ba:	4fce 0100           	move.b 0x1,r12
    14be:	6f0e 3c15 0000      	move.d 153c <_etext>,r0
    14c4:	14e0                	ba 14da <_putxval+0x38>
    14c6:	1892                	addq 24,r9
    14c8:	0fd3                	andq 15,r13
    14ca:	40d5 4dda           	move.b [r0+r13.b],r13
    14ce:	c9db                	move.b r13,[r9]
    14d0:	6cc6                	test.d r12
    14d2:	0430                	beq 14d8 <_putxval+0x36>
    14d4:	e4b3                	lsrq 4,r11
    14d6:	81c2                	subq 1,r12
    14d8:	8192                	subq 1,r9
    14da:	6bb6                	test.d r11
    14dc:	eb20                	bne 14c8 <_putxval+0x26>
    14de:	6bd6                	move.d r11,r13
    14e0:	6cc6                	test.d r12
    14e2:	0a30                	beq 14ee <_putxval+0x4c>
    14e4:	0f05                	nop 
    14e6:	4f1e 3000           	move.b 0x30,r1
    14ea:	ebe0                	ba 14d6 <_putxval+0x34>
    14ec:	c91b                	move.b r1,[r9]
    14ee:	69b6                	move.d r9,r11
    14f0:	01b2                	addq 1,r11
    14f2:	3fbd 7814 0000      	jsr 1478 <_puts>
    14f8:	7a86                	clear.d r10
    14fa:	be1f                	movem [sp+],r1
    14fc:	12e2                	addq 18,sp
    14fe:	3e0d                	jump [sp+]

00001500 <_main>:
    1500:	84e2                	subq 4,sp
    1502:	7eba                	move srp,[sp]
    1504:	84e2                	subq 4,sp
    1506:	ee0b                	move.d r0,[sp]
    1508:	6f0e 7814 0000      	move.d 1478 <_puts>,r0
    150e:	41a2                	moveq 1,r10
    1510:	6fbe 4e15 0000      	move.d 154e <_etext+0x12>,r11
    1516:	b0b9                	jsr r0
    1518:	41a2                	moveq 1,r10
    151a:	6fbe 0018 0000      	move.d 1800 <_data_value>,r11
    1520:	6bba                	move.d [r11],r11
    1522:	7c86                	clear.d r12
    1524:	3fbd a214 0000      	jsr 14a2 <_putxval>
    152a:	41a2                	moveq 1,r10
    152c:	6fbe 5c15 0000      	move.d 155c <_etext+0x20>,r11
    1532:	b0b9                	jsr r0
    1534:	7a86                	clear.d r10
    1536:	3fbd 3c14 0000      	jsr 143c <_exit>
