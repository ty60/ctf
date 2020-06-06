
cris-elf.x:     file format elf32-us-cris


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	7fb6                	ret 
  fe1402:	0f05                	nop 

00fe1404 <_return_zero>:
  fe1404:	7fb6                	ret 
  fe1406:	7a86                	clear.d r10

00fe1408 <_return_one>:
  fe1408:	7fb6                	ret 
  fe140a:	41a2                	moveq 1,r10

00fe140c <_return_int_size>:
  fe140c:	7fb6                	ret 
  fe140e:	44a2                	moveq 4,r10

00fe1410 <_return_pointer_size>:
  fe1410:	7fb6                	ret 
  fe1412:	44a2                	moveq 4,r10

00fe1414 <_return_short_size>:
  fe1414:	7fb6                	ret 
  fe1416:	42a2                	moveq 2,r10

00fe1418 <_return_long_size>:
  fe1418:	7fb6                	ret 
  fe141a:	44a2                	moveq 4,r10

00fe141c <_return_short>:
  fe141c:	5fae 8877           	move.w 0x7788,r10
  fe1420:	7fb6                	ret 
  fe1422:	0f05                	nop 

00fe1424 <_return_long>:
  fe1424:	6fae aa99 8877      	move.d 778899aa <_end+0x768a8192>,r10
  fe142a:	7fb6                	ret 
  fe142c:	0f05                	nop 

00fe142e <_return_short_upper>:
  fe142e:	7fb6                	ret 
  fe1430:	6ea2                	moveq -18,r10

00fe1432 <_return_long_upper>:
  fe1432:	6fae ccdd eeff      	move.d 0xffeeddcc,r10
  fe1438:	7fb6                	ret 
  fe143a:	0f05                	nop 

00fe143c <_return_arg1>:
  fe143c:	7fb6                	ret 
  fe143e:	0f05                	nop 

00fe1440 <_return_arg2>:
  fe1440:	7fb6                	ret 
  fe1442:	6ba6                	move.d r11,r10

00fe1444 <_add>:
  fe1444:	7fb6                	ret 
  fe1446:	2ba6                	add.d r11,r10

00fe1448 <_add3>:
  fe1448:	2ba6                	add.d r11,r10
  fe144a:	7fb6                	ret 
  fe144c:	2ca6                	add.d r12,r10

00fe144e <_add_two>:
  fe144e:	7fb6                	ret 
  fe1450:	02a2                	addq 2,r10

00fe1452 <_inc>:
  fe1452:	7fb6                	ret 
  fe1454:	01a2                	addq 1,r10

00fe1456 <_or>:
  fe1456:	7fb6                	ret 
  fe1458:	6ba7                	or.d r11,r10

00fe145a <_or_one>:
  fe145a:	7fb6                	ret 
  fe145c:	41a3                	orq 1,r10

00fe145e <_load>:
  fe145e:	6aaa                	move.d [r10],r10
  fe1460:	7fb6                	ret 
  fe1462:	0f05                	nop 

00fe1464 <_store>:
  fe1464:	4f9c ff00           	movu.b 0xff,r9
  fe1468:	ea9b                	move.d r9,[r10]
  fe146a:	7fb6                	ret 
  fe146c:	0f05                	nop 

00fe146e <_load_long>:
  fe146e:	6aaa                	move.d [r10],r10
  fe1470:	7fb6                	ret 
  fe1472:	0f05                	nop 

00fe1474 <_store_long>:
  fe1474:	6f9e 4433 2211      	move.d 11223344 <_end+0x10241b2c>,r9
  fe147a:	ea9b                	move.d r9,[r10]
  fe147c:	7fb6                	ret 
  fe147e:	0f05                	nop 

00fe1480 <_member>:
  fe1480:	4192                	moveq 1,r9
  fe1482:	04a1 e99b           	move.d r9,[r10+4]
  fe1486:	08a1 6aaa           	move.d [r10+8],r10
  fe148a:	7fb6                	ret 
  fe148c:	0f05                	nop 

00fe148e <_get_static_value_addr>:
  fe148e:	6fae 0418 fe00      	move.d fe1804 <_static_value>,r10
  fe1494:	7fb6                	ret 
  fe1496:	0f05                	nop 

00fe1498 <_get_static_value>:
  fe1498:	6fae 0418 fe00      	move.d fe1804 <_static_value>,r10
  fe149e:	7fb6                	ret 
  fe14a0:	6aaa                	move.d [r10],r10

00fe14a2 <_set_static_value>:
  fe14a2:	7f0d 0418 fe00 eaab 	move.d r10,[fe1804 <_static_value>]
  fe14aa:	7fb6                	ret 
  fe14ac:	0f05                	nop 

00fe14ae <_set_stack>:
  fe14ae:	88e2                	subq 8,sp
  fe14b0:	4f9c fe00           	movu.b 0xfe,r9
  fe14b4:	04e1 e99b           	move.d r9,[sp+4]
  fe14b8:	4f9e ffff           	move.b 0xffff,r9
  fe14bc:	ee9b                	move.d r9,[sp]
  fe14be:	7fb6                	ret 
  fe14c0:	08e2                	addq 8,sp

00fe14c2 <_use_stack>:
  fe14c2:	88e2                	subq 8,sp
  fe14c4:	4f9c fe00           	movu.b 0xfe,r9
  fe14c8:	04e1 e99b           	move.d r9,[sp+4]
  fe14cc:	4f9e ffff           	move.b 0xffff,r9
  fe14d0:	ee9b                	move.d r9,[sp]
  fe14d2:	04e1 6aaa           	move.d [sp+4],r10
  fe14d6:	6e9a                	move.d [sp],r9
  fe14d8:	29a6                	add.d r9,r10
  fe14da:	7fb6                	ret 
  fe14dc:	08e2                	addq 8,sp

00fe14de <_call_self>:
  fe14de:	84e2                	subq 4,sp
  fe14e0:	7eba                	move srp,[sp]
  fe14e2:	3fbd de14 fe00      	jsr fe14de <_call_self>
  fe14e8:	3e0d                	jump [sp+]

00fe14ea <_call_simple>:
  fe14ea:	84e2                	subq 4,sp
  fe14ec:	7eba                	move srp,[sp]
  fe14ee:	3fbd 3c14 fe00      	jsr fe143c <_return_arg1>
  fe14f4:	3e0d                	jump [sp+]

00fe14f6 <_call_complex1>:
  fe14f6:	84e2                	subq 4,sp
  fe14f8:	7eba                	move srp,[sp]
  fe14fa:	4fac fe00           	movu.b 0xfe,r10
  fe14fe:	3fbd 3c14 fe00      	jsr fe143c <_return_arg1>
  fe1504:	01a2                	addq 1,r10
  fe1506:	3e0d                	jump [sp+]

00fe1508 <_call_complex2>:
  fe1508:	84e2                	subq 4,sp
  fe150a:	7eba                	move srp,[sp]
  fe150c:	84e2                	subq 4,sp
  fe150e:	ee0b                	move.d r0,[sp]
  fe1510:	6b06                	move.d r11,r0
  fe1512:	6ba6                	move.d r11,r10
  fe1514:	3fbd 3c14 fe00      	jsr fe143c <_return_arg1>
  fe151a:	7f0d 0418 fe00 eaab 	move.d r10,[fe1804 <_static_value>]
  fe1522:	60a6                	move.d r0,r10
  fe1524:	6e0e                	pop r0
  fe1526:	3e0d                	jump [sp+]

00fe1528 <_call_pointer>:
  fe1528:	84e2                	subq 4,sp
  fe152a:	7eba                	move srp,[sp]
  fe152c:	bab9                	jsr r10
  fe152e:	3e0d                	jump [sp+]

00fe1530 <_condition>:
  fe1530:	eba6                	cmp.d r11,r10
  fe1532:	0420                	bne fe1538 <_condition+0x8>
  fe1534:	0f05                	nop 
  fe1536:	41b2                	moveq 1,r11
  fe1538:	6ba6                	move.d r11,r10
  fe153a:	7fb6                	ret 
  fe153c:	01a2                	addq 1,r10

00fe153e <_loop>:
  fe153e:	6aa6                	test.d r10
  fe1540:	14d0                	ble fe1556 <_loop+0x18>
  fe1542:	7d86                	clear.d r13
  fe1544:	7986                	clear.d r9
  fe1546:	29d6                	add.d r9,r13
  fe1548:	0192                	addq 1,r9
  fe154a:	ea96                	cmp.d r10,r9
  fe154c:	fb20                	bne fe1548 <_loop+0xa>
  fe154e:	29d6                	add.d r9,r13
  fe1550:	a9d6                	sub.d r9,r13
  fe1552:	7fb6                	ret 
  fe1554:	6da6                	move.d r13,r10
  fe1556:	6da6                	move.d r13,r10
  fe1558:	7fb6                	ret 
  fe155a:	0f05                	nop 

00fe155c <_many_args>:
  fe155c:	2da6                	add.d r13,r10
  fe155e:	04e1 2aaa           	add.d [sp+4],r10
  fe1562:	0ce1 2aaa           	add.d [sp+12],r10
  fe1566:	7fb6                	ret 
  fe1568:	0f05                	nop 

00fe156a <_call_many_args>:
  fe156a:	84e2                	subq 4,sp
  fe156c:	7eba                	move srp,[sp]
  fe156e:	90e2                	subq 16,sp
  fe1570:	4492                	moveq 4,r9
  fe1572:	ee9b                	move.d r9,[sp]
  fe1574:	4f9e 0500           	move.b 0x5,r9
  fe1578:	04e1 e99b           	move.d r9,[sp+4]
  fe157c:	4f9e 0600           	move.b 0x6,r9
  fe1580:	08e1 e99b           	move.d r9,[sp+8]
  fe1584:	4f9e 0700           	move.b 0x7,r9
  fe1588:	0ce1 e99b           	move.d r9,[sp+12]
  fe158c:	7a86                	clear.d r10
  fe158e:	41b2                	moveq 1,r11
  fe1590:	42c2                	moveq 2,r12
  fe1592:	43d2                	moveq 3,r13
  fe1594:	3fbd 5c15 fe00      	jsr fe155c <_many_args>
  fe159a:	10e2                	addq 16,sp
  fe159c:	3e0d                	jump [sp+]

00fe159e <_direct>:
  fe159e:	0f05                	nop 
  fe15a0:	7fb6                	ret 
  fe15a2:	0f05                	nop 

00fe15a4 <_binary>:
	...
  fe15b4:	7fb6                	ret 
  fe15b6:	0f05                	nop 

00fe15b8 <_main>:
  fe15b8:	7fb6                	ret 
  fe15ba:	7a86                	clear.d r10
