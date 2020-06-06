
moxie-elf.x:     file format elf32-moxie


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	04 00       	ret

00fe1402 <return_zero>:
  fe1402:	2e 22       	xor	$r0, $r0
  fe1404:	04 00       	ret

00fe1406 <return_one>:
  fe1406:	01 20 00 00 	ldi.l	$r0, 0x1
  fe140a:	00 01 
  fe140c:	04 00       	ret

00fe140e <return_int_size>:
  fe140e:	01 20 00 00 	ldi.l	$r0, 0x4
  fe1412:	00 04 
  fe1414:	04 00       	ret

00fe1416 <return_pointer_size>:
  fe1416:	01 20 00 00 	ldi.l	$r0, 0x4
  fe141a:	00 04 
  fe141c:	04 00       	ret

00fe141e <return_short_size>:
  fe141e:	01 20 00 00 	ldi.l	$r0, 0x2
  fe1422:	00 02 
  fe1424:	04 00       	ret

00fe1426 <return_long_size>:
  fe1426:	01 20 00 00 	ldi.l	$r0, 0x4
  fe142a:	00 04 
  fe142c:	04 00       	ret

00fe142e <return_short>:
  fe142e:	20 20 00 00 	ldi.s	$r0, 0x7788
  fe1432:	77 88 
  fe1434:	04 00       	ret

00fe1436 <return_long>:
  fe1436:	01 20 77 88 	ldi.l	$r0, 0x778899aa
  fe143a:	99 aa 
  fe143c:	04 00       	ret

00fe143e <return_short_upper>:
  fe143e:	20 20 ff ff 	ldi.s	$r0, 0xffffffee
  fe1442:	ff ee 
  fe1444:	04 00       	ret

00fe1446 <return_long_upper>:
  fe1446:	01 20 ff ee 	ldi.l	$r0, 0xffeeddcc
  fe144a:	dd cc 
  fe144c:	04 00       	ret

00fe144e <return_arg1>:
  fe144e:	04 00       	ret

00fe1450 <return_arg2>:
  fe1450:	02 23       	mov	$r0, $r1
  fe1452:	04 00       	ret

00fe1454 <add>:
  fe1454:	05 23       	add.l	$r0, $r1
  fe1456:	04 00       	ret

00fe1458 <add3>:
  fe1458:	05 23       	add.l	$r0, $r1
  fe145a:	05 24       	add.l	$r0, $r2
  fe145c:	04 00       	ret

00fe145e <add_two>:
  fe145e:	82 02       	inc	$r0, 0x2
  fe1460:	04 00       	ret

00fe1462 <inc>:
  fe1462:	82 01       	inc	$r0, 0x1
  fe1464:	04 00       	ret

00fe1466 <or>:
  fe1466:	2b 32       	or	$r1, $r0
  fe1468:	02 23       	mov	$r0, $r1
  fe146a:	04 00       	ret

00fe146c <or_one>:
  fe146c:	01 30 00 00 	ldi.l	$r1, 0x1
  fe1470:	00 01 
  fe1472:	2b 23       	or	$r0, $r1
  fe1474:	04 00       	ret

00fe1476 <load>:
  fe1476:	0a 22       	ld.l	$r0, ($r0)
  fe1478:	04 00       	ret

00fe147a <store>:
  fe147a:	01 30 00 00 	ldi.l	$r1, 0xff
  fe147e:	00 ff 
  fe1480:	0b 23       	st.l	($r0), $r1
  fe1482:	04 00       	ret

00fe1484 <load_long>:
  fe1484:	0a 22       	ld.l	$r0, ($r0)
  fe1486:	04 00       	ret

00fe1488 <store_long>:
  fe1488:	01 30 11 22 	ldi.l	$r1, 0x11223344
  fe148c:	33 44 
  fe148e:	0b 23       	st.l	($r0), $r1
  fe1490:	04 00       	ret

00fe1492 <member>:
  fe1492:	01 30 00 00 	ldi.l	$r1, 0x1
  fe1496:	00 01 
  fe1498:	0d 23 00 00 	sto.l	0x4($r0), $r1
  fe149c:	00 04 
  fe149e:	0c 22 00 00 	ldo.l	$r0, 0x8($r0)
  fe14a2:	00 08 
  fe14a4:	04 00       	ret

00fe14a6 <get_static_value_addr>:
  fe14a6:	01 20 00 fe 	ldi.l	$r0, 0xfe1804
  fe14aa:	18 04 
  fe14ac:	04 00       	ret

00fe14ae <get_static_value>:
  fe14ae:	08 20 00 fe 	lda.l	$r0, 0xfe1804
  fe14b2:	18 04 
  fe14b4:	04 00       	ret

00fe14b6 <set_static_value>:
  fe14b6:	09 20 00 fe 	sta.l	0xfe1804, $r0
  fe14ba:	18 04 
  fe14bc:	04 00       	ret

00fe14be <set_stack>:
  fe14be:	91 08       	dec	$sp, 0x8
  fe14c0:	01 20 00 00 	ldi.l	$r0, 0xfe
  fe14c4:	00 fe 
  fe14c6:	0d 02 ff ff 	sto.l	0xfffffffc($fp), $r0
  fe14ca:	ff fc 
  fe14cc:	01 20 00 00 	ldi.l	$r0, 0xff
  fe14d0:	00 ff 
  fe14d2:	0d 02 ff ff 	sto.l	0xfffffff8($fp), $r0
  fe14d6:	ff f8 
  fe14d8:	04 00       	ret

00fe14da <use_stack>:
  fe14da:	91 08       	dec	$sp, 0x8
  fe14dc:	01 20 00 00 	ldi.l	$r0, 0xfe
  fe14e0:	00 fe 
  fe14e2:	0d 02 ff ff 	sto.l	0xfffffffc($fp), $r0
  fe14e6:	ff fc 
  fe14e8:	01 20 00 00 	ldi.l	$r0, 0xff
  fe14ec:	00 ff 
  fe14ee:	0d 02 ff ff 	sto.l	0xfffffff8($fp), $r0
  fe14f2:	ff f8 
  fe14f4:	0c 20 ff ff 	ldo.l	$r0, 0xfffffffc($fp)
  fe14f8:	ff fc 
  fe14fa:	0c 30 ff ff 	ldo.l	$r1, 0xfffffff8($fp)
  fe14fe:	ff f8 
  fe1500:	05 23       	add.l	$r0, $r1
  fe1502:	04 00       	ret

00fe1504 <call_self>:
  fe1504:	91 18       	dec	$sp, 0x18
  fe1506:	03 00 00 fe 	jsra	fe1504 <call_self>
  fe150a:	15 04 
  fe150c:	04 00       	ret

00fe150e <call_simple>:
  fe150e:	91 18       	dec	$sp, 0x18
  fe1510:	03 00 00 fe 	jsra	fe144e <return_arg1>
  fe1514:	14 4e 
  fe1516:	04 00       	ret

00fe1518 <call_complex1>:
  fe1518:	91 18       	dec	$sp, 0x18
  fe151a:	01 20 00 00 	ldi.l	$r0, 0xfe
  fe151e:	00 fe 
  fe1520:	03 00 00 fe 	jsra	fe144e <return_arg1>
  fe1524:	14 4e 
  fe1526:	82 01       	inc	$r0, 0x1
  fe1528:	04 00       	ret

00fe152a <call_complex2>:
  fe152a:	06 18       	push	$sp, $r6
  fe152c:	91 18       	dec	$sp, 0x18
  fe152e:	02 83       	mov	$r6, $r1
  fe1530:	02 23       	mov	$r0, $r1
  fe1532:	03 00 00 fe 	jsra	fe144e <return_arg1>
  fe1536:	14 4e 
  fe1538:	09 20 00 fe 	sta.l	0xfe1804, $r0
  fe153c:	18 04 
  fe153e:	02 28       	mov	$r0, $r6
  fe1540:	02 70       	mov	$r5, $fp
  fe1542:	97 04       	dec	$r5, 0x4
  fe1544:	07 78       	pop	$r5, $r6
  fe1546:	04 00       	ret

00fe1548 <call_pointer>:
  fe1548:	91 18       	dec	$sp, 0x18
  fe154a:	19 20       	jsr	$r0
  fe154c:	04 00       	ret

00fe154e <condition>:
  fe154e:	06 1b       	push	$sp, $r9
  fe1550:	0e 23       	cmp	$r0, $r1
  fe1552:	c4 04       	bne	fe155a <condition+0xc>
  fe1554:	01 30 00 00 	ldi.l	$r1, 0x1
  fe1558:	00 01 
  fe155a:	02 23       	mov	$r0, $r1
  fe155c:	82 01       	inc	$r0, 0x1
  fe155e:	02 70       	mov	$r5, $fp
  fe1560:	97 04       	dec	$r5, 0x4
  fe1562:	07 7b       	pop	$r5, $r9
  fe1564:	04 00       	ret

00fe1566 <loop>:
  fe1566:	06 1b       	push	$sp, $r9
  fe1568:	02 42       	mov	$r2, $r0
  fe156a:	2e 22       	xor	$r0, $r0
  fe156c:	0e 42       	cmp	$r2, $r0
  fe156e:	dc 09       	ble	fe1580 <loop+0x1a>
  fe1570:	02 32       	mov	$r1, $r0
  fe1572:	05 23       	add.l	$r0, $r1
  fe1574:	83 01       	inc	$r1, 0x1
  fe1576:	0e 34       	cmp	$r1, $r2
  fe1578:	c7 fd       	bne	fe1572 <loop+0xc>
  fe157a:	1a 00 00 fe 	jmpa	fe1582 <loop+0x1c>
  fe157e:	15 82 
  fe1580:	2e 22       	xor	$r0, $r0
  fe1582:	02 70       	mov	$r5, $fp
  fe1584:	97 04       	dec	$r5, 0x4
  fe1586:	07 7b       	pop	$r5, $r9
  fe1588:	04 00       	ret

00fe158a <many_args>:
  fe158a:	05 25       	add.l	$r0, $r3
  fe158c:	05 27       	add.l	$r0, $r5
  fe158e:	0c 30 00 00 	ldo.l	$r1, 0x28($fp)
  fe1592:	00 28 
  fe1594:	05 23       	add.l	$r0, $r1
  fe1596:	04 00       	ret

00fe1598 <call_many_args>:
  fe1598:	91 20       	dec	$sp, 0x20
  fe159a:	01 20 00 00 	ldi.l	$r0, 0x6
  fe159e:	00 06 
  fe15a0:	0d 12 00 00 	sto.l	0x18($sp), $r0
  fe15a4:	00 18 
  fe15a6:	01 20 00 00 	ldi.l	$r0, 0x7
  fe15aa:	00 07 
  fe15ac:	0d 12 00 00 	sto.l	0x1c($sp), $r0
  fe15b0:	00 1c 
  fe15b2:	2e 22       	xor	$r0, $r0
  fe15b4:	01 30 00 00 	ldi.l	$r1, 0x1
  fe15b8:	00 01 
  fe15ba:	01 40 00 00 	ldi.l	$r2, 0x2
  fe15be:	00 02 
  fe15c0:	01 50 00 00 	ldi.l	$r3, 0x3
  fe15c4:	00 03 
  fe15c6:	01 60 00 00 	ldi.l	$r4, 0x4
  fe15ca:	00 04 
  fe15cc:	01 70 00 00 	ldi.l	$r5, 0x5
  fe15d0:	00 05 
  fe15d2:	03 00 00 fe 	jsra	fe158a <many_args>
  fe15d6:	15 8a 
  fe15d8:	04 00       	ret

00fe15da <direct>:
  fe15da:	0f 00       	nop
  fe15dc:	04 00       	ret

00fe15de <binary>:
  fe15de:	00 00       	bad
  fe15e0:	00 00       	bad
  fe15e2:	00 00       	bad
  fe15e4:	04 00       	ret

00fe15e6 <main>:
  fe15e6:	2e 22       	xor	$r0, $r0
  fe15e8:	04 00       	ret
