
m68k-elf.x:     file format elf32-m68k


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	4e75           	rts

00fe1402 <return_zero>:
  fe1402:	4280           	clrl %d0
  fe1404:	4e75           	rts

00fe1406 <return_one>:
  fe1406:	7001           	moveq #1,%d0
  fe1408:	4e75           	rts

00fe140a <return_int_size>:
  fe140a:	7004           	moveq #4,%d0
  fe140c:	4e75           	rts

00fe140e <return_pointer_size>:
  fe140e:	7004           	moveq #4,%d0
  fe1410:	4e75           	rts

00fe1412 <return_short_size>:
  fe1412:	7002           	moveq #2,%d0
  fe1414:	4e75           	rts

00fe1416 <return_long_size>:
  fe1416:	7004           	moveq #4,%d0
  fe1418:	4e75           	rts

00fe141a <return_short>:
  fe141a:	303c 7788      	movew #30600,%d0
  fe141e:	4e75           	rts

00fe1420 <return_long>:
  fe1420:	203c 7788 99aa 	movel #2005440938,%d0
  fe1426:	4e75           	rts

00fe1428 <return_short_upper>:
  fe1428:	70ee           	moveq #-18,%d0
  fe142a:	4e75           	rts

00fe142c <return_long_upper>:
  fe142c:	203c ffee ddcc 	movel #-1122868,%d0
  fe1432:	4e75           	rts

00fe1434 <return_arg1>:
  fe1434:	202f 0004      	movel %sp@(4),%d0
  fe1438:	4e75           	rts

00fe143a <return_arg2>:
  fe143a:	202f 0008      	movel %sp@(8),%d0
  fe143e:	4e75           	rts

00fe1440 <add>:
  fe1440:	202f 0004      	movel %sp@(4),%d0
  fe1444:	d0af 0008      	addl %sp@(8),%d0
  fe1448:	4e75           	rts

00fe144a <add3>:
  fe144a:	202f 0004      	movel %sp@(4),%d0
  fe144e:	d0af 0008      	addl %sp@(8),%d0
  fe1452:	d0af 000c      	addl %sp@(12),%d0
  fe1456:	4e75           	rts

00fe1458 <add_two>:
  fe1458:	202f 0004      	movel %sp@(4),%d0
  fe145c:	5480           	addql #2,%d0
  fe145e:	4e75           	rts

00fe1460 <inc>:
  fe1460:	202f 0004      	movel %sp@(4),%d0
  fe1464:	5280           	addql #1,%d0
  fe1466:	4e75           	rts

00fe1468 <or>:
  fe1468:	202f 0008      	movel %sp@(8),%d0
  fe146c:	80af 0004      	orl %sp@(4),%d0
  fe1470:	4e75           	rts

00fe1472 <or_one>:
  fe1472:	7001           	moveq #1,%d0
  fe1474:	80af 0004      	orl %sp@(4),%d0
  fe1478:	4e75           	rts

00fe147a <load>:
  fe147a:	206f 0004      	moveal %sp@(4),%a0
  fe147e:	2010           	movel %a0@,%d0
  fe1480:	4e75           	rts

00fe1482 <store>:
  fe1482:	206f 0004      	moveal %sp@(4),%a0
  fe1486:	20bc 0000 00ff 	movel #255,%a0@
  fe148c:	4e75           	rts

00fe148e <load_long>:
  fe148e:	206f 0004      	moveal %sp@(4),%a0
  fe1492:	2010           	movel %a0@,%d0
  fe1494:	4e75           	rts

00fe1496 <store_long>:
  fe1496:	206f 0004      	moveal %sp@(4),%a0
  fe149a:	20bc 1122 3344 	movel #287454020,%a0@
  fe14a0:	4e75           	rts

00fe14a2 <member>:
  fe14a2:	206f 0004      	moveal %sp@(4),%a0
  fe14a6:	7001           	moveq #1,%d0
  fe14a8:	2140 0004      	movel %d0,%a0@(4)
  fe14ac:	2028 0008      	movel %a0@(8),%d0
  fe14b0:	4e75           	rts

00fe14b2 <get_static_value_addr>:
  fe14b2:	203c 00fe 1804 	movel #16652292,%d0
  fe14b8:	4e75           	rts

00fe14ba <get_static_value>:
  fe14ba:	2039 00fe 1804 	movel fe1804 <static_value>,%d0
  fe14c0:	4e75           	rts

00fe14c2 <set_static_value>:
  fe14c2:	23ef 0004 00fe 	movel %sp@(4),fe1804 <static_value>
  fe14c8:	1804 
  fe14ca:	4e75           	rts

00fe14cc <set_stack>:
  fe14cc:	518f           	subql #8,%sp
  fe14ce:	2f7c 0000 00fe 	movel #254,%sp@(4)
  fe14d4:	0004 
  fe14d6:	2ebc 0000 00ff 	movel #255,%sp@
  fe14dc:	508f           	addql #8,%sp
  fe14de:	4e75           	rts

00fe14e0 <use_stack>:
  fe14e0:	518f           	subql #8,%sp
  fe14e2:	2f7c 0000 00fe 	movel #254,%sp@(4)
  fe14e8:	0004 
  fe14ea:	2ebc 0000 00ff 	movel #255,%sp@
  fe14f0:	222f 0004      	movel %sp@(4),%d1
  fe14f4:	2017           	movel %sp@,%d0
  fe14f6:	d081           	addl %d1,%d0
  fe14f8:	508f           	addql #8,%sp
  fe14fa:	4e75           	rts

00fe14fc <call_self>:
  fe14fc:	4eba fffe      	jsr %pc@(fe14fc <call_self>)
  fe1500:	4e75           	rts

00fe1502 <call_simple>:
  fe1502:	2f2f 0004      	movel %sp@(4),%sp@-
  fe1506:	4eba ff2c      	jsr %pc@(fe1434 <return_arg1>)
  fe150a:	588f           	addql #4,%sp
  fe150c:	4e75           	rts

00fe150e <call_complex1>:
  fe150e:	4878 00fe      	pea fe <_.tmp+0xbe>
  fe1512:	4eba ff20      	jsr %pc@(fe1434 <return_arg1>)
  fe1516:	588f           	addql #4,%sp
  fe1518:	5280           	addql #1,%d0
  fe151a:	4e75           	rts

00fe151c <call_complex2>:
  fe151c:	2f02           	movel %d2,%sp@-
  fe151e:	242f 000c      	movel %sp@(12),%d2
  fe1522:	2f02           	movel %d2,%sp@-
  fe1524:	4eba ff0e      	jsr %pc@(fe1434 <return_arg1>)
  fe1528:	588f           	addql #4,%sp
  fe152a:	23c0 00fe 1804 	movel %d0,fe1804 <static_value>
  fe1530:	2002           	movel %d2,%d0
  fe1532:	241f           	movel %sp@+,%d2
  fe1534:	4e75           	rts

00fe1536 <call_pointer>:
  fe1536:	206f 0004      	moveal %sp@(4),%a0
  fe153a:	4e90           	jsr %a0@
  fe153c:	4e75           	rts

00fe153e <condition>:
  fe153e:	202f 0008      	movel %sp@(8),%d0
  fe1542:	b0af 0004      	cmpl %sp@(4),%d0
  fe1546:	6602           	bnes fe154a <condition+0xc>
  fe1548:	7001           	moveq #1,%d0
  fe154a:	5280           	addql #1,%d0
  fe154c:	4e75           	rts

00fe154e <loop>:
  fe154e:	206f 0004      	moveal %sp@(4),%a0
  fe1552:	4a88           	tstl %a0
  fe1554:	6f0e           	bles fe1564 <loop+0x16>
  fe1556:	4280           	clrl %d0
  fe1558:	4281           	clrl %d1
  fe155a:	d081           	addl %d1,%d0
  fe155c:	5281           	addql #1,%d1
  fe155e:	b1c1           	cmpal %d1,%a0
  fe1560:	66f8           	bnes fe155a <loop+0xc>
  fe1562:	4e75           	rts
  fe1564:	4280           	clrl %d0
  fe1566:	4e75           	rts

00fe1568 <many_args>:
  fe1568:	202f 0004      	movel %sp@(4),%d0
  fe156c:	d0af 0010      	addl %sp@(16),%d0
  fe1570:	d0af 0018      	addl %sp@(24),%d0
  fe1574:	d0af 0020      	addl %sp@(32),%d0
  fe1578:	4e75           	rts

00fe157a <call_many_args>:
  fe157a:	4878 0007      	pea 7 <_.frame+0x3>
  fe157e:	4878 0006      	pea 6 <_.frame+0x2>
  fe1582:	4878 0005      	pea 5 <_.frame+0x1>
  fe1586:	4878 0004      	pea 4 <_.frame>
  fe158a:	4878 0003      	pea 3 <_.frame-0x1>
  fe158e:	4878 0002      	pea 2 <_.frame-0x2>
  fe1592:	4878 0001      	pea 1 <_.frame-0x3>
  fe1596:	42a7           	clrl %sp@-
  fe1598:	4eba ffce      	jsr %pc@(fe1568 <many_args>)
  fe159c:	4fef 0020      	lea %sp@(32),%sp
  fe15a0:	4e75           	rts

00fe15a2 <direct>:
  fe15a2:	4e71           	nop
  fe15a4:	4e75           	rts

00fe15a6 <binary>:
  fe15a6:	0000 0000      	orib #0,%d0
  fe15aa:	0000 4e75      	orib #117,%d0

00fe15ae <main>:
  fe15ae:	4280           	clrl %d0
  fe15b0:	4e75           	rts
