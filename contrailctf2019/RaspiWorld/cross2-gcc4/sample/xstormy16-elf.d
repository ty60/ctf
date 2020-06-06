
xstormy16-elf.x:     file format elf32-xstormy16


Disassembly of section .text:

00001400 <null>:
    1400:	03 00       	ret

00001402 <return_zero>:
    1402:	00 25       	mov r2,#0x0
    1404:	03 00       	ret

00001406 <return_one>:
    1406:	01 25       	mov r2,#0x1
    1408:	03 00       	ret

0000140a <return_int_size>:
    140a:	02 25       	mov r2,#0x2
    140c:	03 00       	ret

0000140e <return_pointer_size>:
    140e:	02 25       	mov r2,#0x2
    1410:	03 00       	ret

00001412 <return_short_size>:
    1412:	02 25       	mov r2,#0x2
    1414:	03 00       	ret

00001416 <return_long_size>:
    1416:	04 25       	mov r2,#0x4
    1418:	03 00       	ret

0000141a <return_short>:
    141a:	32 31 88 77 	mov r2,#0x7788
    141e:	03 00       	ret

00001420 <return_long>:
    1420:	32 31 aa 99 	mov r2,#0x99aa
    1424:	33 31 88 77 	mov r3,#0x7788
    1428:	03 00       	ret

0000142a <return_short_upper>:
    142a:	32 31 ee ff 	mov r2,#0xffee
    142e:	03 00       	ret

00001430 <return_long_upper>:
    1430:	32 31 cc dd 	mov r2,#0xddcc
    1434:	33 31 ee ff 	mov r3,#0xffee
    1438:	03 00       	ret

0000143a <return_arg1>:
    143a:	03 00       	ret

0000143c <return_arg2>:
    143c:	32 46       	mov r2,r3
    143e:	03 00       	ret

00001440 <add>:
    1440:	32 49       	add r2,r3
    1442:	03 00       	ret

00001444 <add3>:
    1444:	23 49       	add r3,r2
    1446:	32 46       	mov r2,r3
    1448:	42 49       	add r2,r4
    144a:	03 00       	ret

0000144c <add_two>:
    144c:	12 30       	inc r2,#0x1
    144e:	03 00       	ret

00001450 <inc>:
    1450:	02 30       	inc r2
    1452:	03 00       	ret

00001454 <or>:
    1454:	32 42       	or r2,r3
    1456:	03 00       	ret

00001458 <or_one>:
    1458:	02 09       	set1 r2,#0x0
    145a:	03 00       	ret

0000145c <load>:
    145c:	22 71       	mov.w r2,(r2)
    145e:	03 00       	ret

00001460 <store>:
    1460:	ff 2f       	mov r7,#0xff
    1462:	27 73       	mov.w (r2),r7
    1464:	03 00       	ret

00001466 <load_long>:
    1466:	26 71       	mov.w r6,(r2)
    1468:	2f 71 02 00 	mov.w r7,(r2,2)
    146c:	62 46       	mov r2,r6
    146e:	73 46       	mov r3,r7
    1470:	03 00       	ret

00001472 <store_long>:
    1472:	36 31 44 33 	mov r6,#0x3344
    1476:	37 31 22 11 	mov r7,#0x1122
    147a:	26 73       	mov.w (r2),r6
    147c:	2f 73 02 00 	mov.w (r2,2),r7
    1480:	03 00       	ret

00001482 <member>:
    1482:	01 2f       	mov r7,#0x1
    1484:	2f 73 02 00 	mov.w (r2,2),r7
    1488:	2a 71 04 00 	mov.w r2,(r2,4)
    148c:	03 00       	ret

0000148e <get_static_value_addr>:
    148e:	32 31 04 18 	mov r2,#0x1804
    1492:	03 00       	ret

00001494 <get_static_value>:
    1494:	37 31 04 18 	mov r7,#0x1804
    1498:	72 71       	mov.w r2,(r7)
    149a:	03 00       	ret

0000149c <set_static_value>:
    149c:	37 31 04 18 	mov r7,#0x1804
    14a0:	72 73       	mov.w (r7),r2
    14a2:	03 00       	ret

000014a4 <set_stack>:
    14a4:	3f 30       	inc r15,#0x3
    14a6:	fe 2f       	mov r7,#0xfe
    14a8:	ff 73 fc 0f 	mov.w (r15,-4),r7
    14ac:	ff 2f       	mov r7,#0xff
    14ae:	ff 73 fe 0f 	mov.w (r15,-2),r7
    14b2:	7f 30       	dec r15,#0x3
    14b4:	03 00       	ret

000014b6 <use_stack>:
    14b6:	3f 30       	inc r15,#0x3
    14b8:	fe 2f       	mov r7,#0xfe
    14ba:	ff 73 fc 0f 	mov.w (r15,-4),r7
    14be:	ff 2f       	mov r7,#0xff
    14c0:	ff 73 fe 0f 	mov.w (r15,-2),r7
    14c4:	fa 71 fc 0f 	mov.w r2,(r15,-4)
    14c8:	ff 71 fe 0f 	mov.w r7,(r15,-2)
    14cc:	72 49       	add r2,r7
    14ce:	7f 30       	dec r15,#0x3
    14d0:	03 00       	ret

000014d2 <call_self>:
    14d2:	d2 01 14 00 	callf 0x14d2
    14d6:	03 00       	ret

000014d8 <call_simple>:
    14d8:	3a 01 14 00 	callf 0x143a
    14dc:	03 00       	ret

000014de <call_complex1>:
    14de:	fe 25       	mov r2,#0xfe
    14e0:	3a 01 14 00 	callf 0x143a
    14e4:	02 30       	inc r2
    14e6:	03 00       	ret

000014e8 <call_complex2>:
    14e8:	8a 00       	push r10
    14ea:	3a 46       	mov r10,r3
    14ec:	32 46       	mov r2,r3
    14ee:	3a 01 14 00 	callf 0x143a
    14f2:	37 31 04 18 	mov r7,#0x1804
    14f6:	72 73       	mov.w (r7),r2
    14f8:	a2 46       	mov r2,r10
    14fa:	9a 00       	pop r10
    14fc:	03 00       	ret

000014fe <call_pointer>:
    14fe:	39 31 00 00 	mov r9,#0x0
    1502:	b2 00       	call r9,r2
    1504:	03 00       	ret

00001506 <condition>:
    1506:	32 0d 02 d0 	bnz r2,r3,0x150c
    150a:	01 27       	mov r3,#0x1
    150c:	32 46       	mov r2,r3
    150e:	02 30       	inc r2
    1510:	03 00       	ret

00001512 <loop>:
    1512:	00 2d       	mov r6,#0x0
    1514:	62 0d 0a 60 	ble r2,r6,0x1522
    1518:	67 46       	mov r7,r6
    151a:	76 49       	add r6,r7
    151c:	07 30       	inc r7
    151e:	27 0d f8 df 	bnz r7,r2,0x151a
    1522:	62 46       	mov r2,r6
    1524:	03 00       	ret

00001526 <many_args>:
    1526:	25 49       	add r5,r2
    1528:	57 49       	add r7,r5
    152a:	fe 71 f8 0f 	mov.w r6,(r15,-8)
    152e:	72 46       	mov r2,r7
    1530:	62 49       	add r2,r6
    1532:	03 00       	ret

00001534 <call_many_args>:
    1534:	07 2f       	mov r7,#0x7
    1536:	87 00       	push r7
    1538:	06 2f       	mov r7,#0x6
    153a:	87 00       	push r7
    153c:	05 2f       	mov r7,#0x5
    153e:	04 2d       	mov r6,#0x4
    1540:	03 2b       	mov r5,#0x3
    1542:	02 29       	mov r4,#0x2
    1544:	01 27       	mov r3,#0x1
    1546:	00 25       	mov r2,#0x0
    1548:	26 01 15 00 	callf 0x1526
    154c:	7f 30       	dec r15,#0x3
    154e:	03 00       	ret

00001550 <direct>:
    1550:	00 00       	nop
    1552:	03 00       	ret

00001554 <binary>:
	...
    1564:	03 00       	ret

00001566 <main>:
    1566:	00 25       	mov r2,#0x0
    1568:	03 00       	ret
    156a:	00 00       	nop
    156c:	00 00       	nop
	...
