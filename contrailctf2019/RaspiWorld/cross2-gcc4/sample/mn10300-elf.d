
mn10300-elf.x:     file format elf32-mn10300


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	de 00 00    	retf	[],0

00fe1403 <_return_zero>:
  fe1403:	80 00       	mov	0,d0
  fe1405:	de 00 00    	retf	[],0

00fe1408 <_return_one>:
  fe1408:	80 01       	mov	1,d0
  fe140a:	de 00 00    	retf	[],0

00fe140d <_return_int_size>:
  fe140d:	80 04       	mov	4,d0
  fe140f:	de 00 00    	retf	[],0

00fe1412 <_return_pointer_size>:
  fe1412:	80 04       	mov	4,d0
  fe1414:	de 00 00    	retf	[],0

00fe1417 <_return_short_size>:
  fe1417:	80 02       	mov	2,d0
  fe1419:	de 00 00    	retf	[],0

00fe141c <_return_long_size>:
  fe141c:	80 04       	mov	4,d0
  fe141e:	de 00 00    	retf	[],0

00fe1421 <_return_short>:
  fe1421:	2c 88 77    	mov	30600,d0
  fe1424:	de 00 00    	retf	[],0

00fe1427 <_return_long>:
  fe1427:	fc cc aa 99 	mov	2005440938,d0
  fe142b:	88 77 
  fe142d:	de 00 00    	retf	[],0

00fe1430 <_return_short_upper>:
  fe1430:	80 ee       	mov	-18,d0
  fe1432:	de 00 00    	retf	[],0

00fe1435 <_return_long_upper>:
  fe1435:	fc cc cc dd 	mov	-1122868,d0
  fe1439:	ee ff 
  fe143b:	de 00 00    	retf	[],0

00fe143e <_return_arg1>:
  fe143e:	de 00 00    	retf	[],0

00fe1441 <_return_arg2>:
  fe1441:	84          	mov	d1,d0

00fe1442 <.LVL2>:
  fe1442:	de 00 00    	retf	[],0

00fe1445 <_add>:
  fe1445:	e4          	add	d1,d0

00fe1446 <.LVL4>:
  fe1446:	de 00 00    	retf	[],0

00fe1449 <_add3>:
  fe1449:	e4          	add	d1,d0

00fe144a <.LVL6>:
  fe144a:	5c 0c       	mov	(12,sp),a0
  fe144c:	f1 50       	add	a0,d0
  fe144e:	de 00 00    	retf	[],0

00fe1451 <_add_two>:
  fe1451:	28 02       	add	2,d0

00fe1453 <.LVL8>:
  fe1453:	de 00 00    	retf	[],0

00fe1456 <_inc>:
  fe1456:	40          	inc	d0

00fe1457 <.LVL10>:
  fe1457:	de 00 00    	retf	[],0

00fe145a <_or>:
  fe145a:	f2 14       	or	d1,d0

00fe145c <.LVL12>:
  fe145c:	de 00 00    	retf	[],0

00fe145f <_or_one>:
  fe145f:	f8 e4 01    	or	1,d0

00fe1462 <.LVL14>:
  fe1462:	de 00 00    	retf	[],0

00fe1465 <_load>:
  fe1465:	f1 e0       	mov	d0,a0
  fe1467:	70          	mov	(a0),d0

00fe1468 <.LVL16>:
  fe1468:	de 00 00    	retf	[],0

00fe146b <_store>:
  fe146b:	2d ff 00    	mov	255,d1
  fe146e:	f1 e0       	mov	d0,a0
  fe1470:	64          	mov	d1,(a0)
  fe1471:	de 00 00    	retf	[],0

00fe1474 <_load_long>:
  fe1474:	f1 e0       	mov	d0,a0
  fe1476:	70          	mov	(a0),d0

00fe1477 <.LVL19>:
  fe1477:	de 00 00    	retf	[],0

00fe147a <_store_long>:
  fe147a:	fc cd 44 33 	mov	287454020,d1
  fe147e:	22 11 
  fe1480:	f1 e0       	mov	d0,a0
  fe1482:	64          	mov	d1,(a0)
  fe1483:	de 00 00    	retf	[],0

00fe1486 <_member>:
  fe1486:	85 01       	mov	1,d1
  fe1488:	f1 e0       	mov	d0,a0
  fe148a:	f8 14 04    	mov	d1,(4,a0)

00fe148d <.Loc.126.1>:
  fe148d:	f8 00 08    	mov	(8,a0),d0

00fe1490 <.LVL22>:
  fe1490:	de 00 00    	retf	[],0

00fe1493 <_get_static_value_addr>:
  fe1493:	fc cc 04 18 	mov	16652292,d0
  fe1497:	fe 00 

00fe1499 <.Loc.134.1>:
  fe1499:	f1 e0       	mov	d0,a0
  fe149b:	de 00 00    	retf	[],0

00fe149e <_get_static_value>:
  fe149e:	fc a4 04 18 	mov	(fe1804 <_static_value>),d0
  fe14a2:	fe 00 
  fe14a4:	de 00 00    	retf	[],0

00fe14a7 <_set_static_value>:
  fe14a7:	fc 81 04 18 	mov	d0,(fe1804 <_static_value>)
  fe14ab:	fe 00 
  fe14ad:	de 00 00    	retf	[],0

00fe14b0 <_set_stack>:
  fe14b0:	f8 fe f8    	add	-8,sp

00fe14b3 <.LCFI0>:
  fe14b3:	2c fe 00    	mov	254,d0
  fe14b6:	42 04       	mov	d0,(4,sp)

00fe14b8 <.Loc.151.1>:
  fe14b8:	2c ff 00    	mov	255,d0
  fe14bb:	42 00       	mov	d0,(sp)

00fe14bd <.Loc.152.1>:
  fe14bd:	de 00 08    	retf	[],8

00fe14c0 <_use_stack>:
  fe14c0:	f8 fe f8    	add	-8,sp

00fe14c3 <.LCFI1>:
  fe14c3:	2c fe 00    	mov	254,d0
  fe14c6:	42 04       	mov	d0,(4,sp)

00fe14c8 <.Loc.157.1>:
  fe14c8:	2c ff 00    	mov	255,d0
  fe14cb:	42 00       	mov	d0,(sp)

00fe14cd <.Loc.158.1>:
  fe14cd:	59 04       	mov	(4,sp),d1
  fe14cf:	58 00       	mov	(sp),d0

00fe14d1 <.Loc.159.1>:
  fe14d1:	e4          	add	d1,d0
  fe14d2:	de 00 08    	retf	[],8

00fe14d5 <_call_self>:
  fe14d5:	f8 fe f4    	add	-12,sp

00fe14d8 <.LCFI2>:
  fe14d8:	cd fd ff 00 	call	fe14d5 <_call_self>,[],0
  fe14dc:	00 

00fe14dd <.LVL28>:
  fe14dd:	df 00 0c    	ret	[],12

00fe14e0 <_call_simple>:
  fe14e0:	f8 fe f4    	add	-12,sp

00fe14e3 <.LCFI3>:
  fe14e3:	cd 5b ff 00 	call	fe143e <_return_arg1>,[],0
  fe14e7:	00 

00fe14e8 <.LVL30>:
  fe14e8:	df 00 0c    	ret	[],12

00fe14eb <_call_complex1>:
  fe14eb:	f8 fe f4    	add	-12,sp

00fe14ee <.LCFI4>:
  fe14ee:	2c fe 00    	mov	254,d0
  fe14f1:	cd 4d ff 00 	call	fe143e <_return_arg1>,[],0
  fe14f5:	00 

00fe14f6 <.LVL31>:
  fe14f6:	40          	inc	d0
  fe14f7:	df 00 0c    	ret	[],12

00fe14fa <_call_complex2>:
  fe14fa:	cf 80       	movm	[d2],(sp)

00fe14fc <.LCFI5>:
  fe14fc:	f8 fe f4    	add	-12,sp

00fe14ff <.LCFI6>:
  fe14ff:	86          	mov	d1,d2

00fe1500 <.Loc.178.1>:
  fe1500:	84          	mov	d1,d0

00fe1501 <.LVL33>:
  fe1501:	cd 3d ff 00 	call	fe143e <_return_arg1>,[],0
  fe1505:	00 

00fe1506 <.LVL34>:
  fe1506:	fc 81 04 18 	mov	d0,(fe1804 <_static_value>)
  fe150a:	fe 00 

00fe150c <.Loc.180.1>:
  fe150c:	88          	mov	d2,d0
  fe150d:	df 80 10    	ret	[d2],16

00fe1510 <_call_pointer>:
  fe1510:	f8 fe f4    	add	-12,sp

00fe1513 <.LCFI7>:
  fe1513:	f1 e0       	mov	d0,a0
  fe1515:	f0 f0       	calls	(a0)

00fe1517 <.LVL36>:
  fe1517:	df 00 0c    	ret	[],12

00fe151a <_condition>:
  fe151a:	a4          	cmp	d1,d0
  fe151b:	c9 04       	bne	fe151f <.L36>

00fe151d <.Loc.190.1>:
  fe151d:	85 01       	mov	1,d1

00fe151f <.L36>:
  fe151f:	84          	mov	d1,d0

00fe1520 <.LVL39>:
  fe1520:	40          	inc	d0
  fe1521:	de 00 00    	retf	[],0

00fe1524 <_loop>:
  fe1524:	f1 e0       	mov	d0,a0

00fe1526 <.LVL41>:
  fe1526:	a0 00       	cmp	0,d0
  fe1528:	c3 0e       	ble	fe1536 <.L41>

00fe152a <.Loc.196.1>:
  fe152a:	80 00       	mov	0,d0

00fe152c <.LVL42>:
  fe152c:	81          	mov	d0,d1

00fe152d <.L40>:
  fe152d:	e4          	add	d1,d0

00fe152e <.LVL44>:
  fe152e:	44          	inc	d1

00fe152f <.LVL45>:
  fe152f:	f1 91       	cmp	a0,d1
  fe1531:	c9 fc       	bne	fe152d <.L40>
  fe1533:	de 00 00    	retf	[],0

00fe1536 <.L41>:
  fe1536:	80 00       	mov	0,d0

00fe1538 <.LVL47>:
  fe1538:	de 00 00    	retf	[],0

00fe153b <_many_args>:
  fe153b:	59 10       	mov	(16,sp),d1

00fe153d <.LVL49>:
  fe153d:	e4          	add	d1,d0

00fe153e <.LVL50>:
  fe153e:	5c 18       	mov	(24,sp),a0
  fe1540:	f1 50       	add	a0,d0

00fe1542 <.Loc.206.1>:
  fe1542:	5c 20       	mov	(32,sp),a0
  fe1544:	f1 50       	add	a0,d0
  fe1546:	de 00 00    	retf	[],0

00fe1549 <_call_many_args>:
  fe1549:	f8 fe dc    	add	-36,sp

00fe154c <.LCFI8>:
  fe154c:	80 02       	mov	2,d0
  fe154e:	42 0c       	mov	d0,(12,sp)
  fe1550:	80 03       	mov	3,d0
  fe1552:	42 10       	mov	d0,(16,sp)
  fe1554:	80 04       	mov	4,d0
  fe1556:	42 14       	mov	d0,(20,sp)
  fe1558:	80 05       	mov	5,d0
  fe155a:	42 18       	mov	d0,(24,sp)
  fe155c:	80 06       	mov	6,d0
  fe155e:	42 1c       	mov	d0,(28,sp)
  fe1560:	80 07       	mov	7,d0
  fe1562:	42 20       	mov	d0,(32,sp)
  fe1564:	80 00       	mov	0,d0
  fe1566:	85 01       	mov	1,d1
  fe1568:	cd d3 ff 00 	call	fe153b <_many_args>,[],0
  fe156c:	00 

00fe156d <.LVL51>:
  fe156d:	df 00 24    	ret	[],36

00fe1570 <_direct>:
  fe1570:	cb          	nop	
  fe1571:	de 00 00    	retf	[],0

00fe1574 <_binary>:
	...

00fe1584 <.Loc.225.1>:
  fe1584:	de 00 00    	retf	[],0

00fe1587 <_main>:
  fe1587:	80 00       	mov	0,d0
  fe1589:	de 00 00    	retf	[],0

00fe158c <L0>:
  fe158c:	00          	clr	d0
  fe158d:	00          	clr	d0
	...
