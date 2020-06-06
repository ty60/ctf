
m32c-elf.x:     file format elf32-m32c


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	f3          	rts

00fe1401 <_return_zero>:
  fe1401:	d9 00       	mov.w:q #0,r0
  fe1403:	f3          	rts

00fe1404 <_return_one>:
  fe1404:	d9 10       	mov.w:q #1,r0
  fe1406:	f3          	rts

00fe1407 <_return_int_size>:
  fe1407:	d9 20       	mov.w:q #2,r0
  fe1409:	f3          	rts

00fe140a <_return_pointer_size>:
  fe140a:	d9 20       	mov.w:q #2,r0
  fe140c:	f3          	rts

00fe140d <_return_short_size>:
  fe140d:	d9 20       	mov.w:q #2,r0
  fe140f:	f3          	rts

00fe1410 <_return_long_size>:
  fe1410:	d9 40       	mov.w:q #4,r0
  fe1412:	f3          	rts

00fe1413 <_return_short>:
  fe1413:	75 c0 88 77 	mov.w:g #30600,r0
  fe1417:	f3          	rts

00fe1418 <_return_long>:
  fe1418:	75 cf 1c 00 	mov.w:g #30600,0x1c
  fe141c:	88 77 
  fe141e:	75 cf 18 00 	mov.w:g #-26198,0x18
  fe1422:	aa 99 
  fe1424:	f3          	rts

00fe1425 <_return_short_upper>:
  fe1425:	75 c0 ee ff 	mov.w:g #-18,r0
  fe1429:	f3          	rts

00fe142a <_return_long_upper>:
  fe142a:	75 cf 1c 00 	mov.w:g #-18,0x1c
  fe142e:	ee ff 
  fe1430:	75 cf 18 00 	mov.w:g #-8756,0x18
  fe1434:	cc dd 
  fe1436:	f3          	rts

00fe1437 <_return_arg1>:
  fe1437:	73 10       	mov.w:g r1,r0
  fe1439:	f3          	rts

00fe143a <_return_arg2>:
  fe143a:	73 20       	mov.w:g r2,r0
  fe143c:	f3          	rts

00fe143d <_add>:
  fe143d:	73 10       	mov.w:g r1,r0
  fe143f:	a1 20       	add.w:g r2,r0
  fe1441:	f3          	rts

00fe1442 <_add3>:
  fe1442:	7c f2 00    	enter #0x0
  fe1445:	a1 21       	add.w:g r2,r1
  fe1447:	73 10       	mov.w:g r1,r0
  fe1449:	a1 b0 05    	add.w:g 5[fb],r0
  fe144c:	7d f2       	exitd

00fe144e <_add_two>:
  fe144e:	73 10       	mov.w:g r1,r0
  fe1450:	c9 20       	add.w:q #2,r0
  fe1452:	f3          	rts

00fe1453 <_inc>:
  fe1453:	73 10       	mov.w:g r1,r0
  fe1455:	c9 10       	add.w:q #1,r0
  fe1457:	f3          	rts

00fe1458 <_or>:
  fe1458:	73 20       	mov.w:g r2,r0
  fe145a:	99 10       	or.w:g r1,r0
  fe145c:	f3          	rts

00fe145d <_or_one>:
  fe145d:	73 10       	mov.w:g r1,r0
  fe145f:	7e 90 00    	bset:g 0x0,r0
  fe1462:	f3          	rts

00fe1463 <_load>:
  fe1463:	73 14       	mov.w:g r1,a0
  fe1465:	73 60       	mov.w:g [a0],r0
  fe1467:	f3          	rts

00fe1468 <_store>:
  fe1468:	73 14       	mov.w:g r1,a0
  fe146a:	75 c6 ff 00 	mov.w:g #255,[a0]
  fe146e:	f3          	rts

00fe146f <_load_long>:
  fe146f:	73 14       	mov.w:g r1,a0
  fe1471:	c9 24       	add.w:q #2,a0
  fe1473:	73 60       	mov.w:g [a0],r0
  fe1475:	73 14       	mov.w:g r1,a0
  fe1477:	73 62       	mov.w:g [a0],r2
  fe1479:	73 2f 18 00 	mov.w:g r2,0x18
  fe147d:	73 0f 1c 00 	mov.w:g r0,0x1c
  fe1481:	f3          	rts

00fe1482 <_store_long>:
  fe1482:	75 c0 22 11 	mov.w:g #4386,r0
  fe1486:	73 14       	mov.w:g r1,a0
  fe1488:	73 08 02    	mov.w:g r0,0x2[a0]
  fe148b:	75 c6 44 33 	mov.w:g #13124,[a0]
  fe148f:	f3          	rts

00fe1490 <_member>:
  fe1490:	d9 10       	mov.w:q #1,r0
  fe1492:	73 14       	mov.w:g r1,a0
  fe1494:	73 08 02    	mov.w:g r0,0x2[a0]
  fe1497:	c9 44       	add.w:q #4,a0
  fe1499:	73 60       	mov.w:g [a0],r0
  fe149b:	f3          	rts

00fe149c <_get_static_value_addr>:
  fe149c:	75 c0 70 15 	mov.w:g #5488,r0
  fe14a0:	f3          	rts

00fe14a1 <_get_static_value>:
  fe14a1:	73 f0 70 15 	mov.w:g 0x1570,r0
  fe14a5:	f3          	rts

00fe14a6 <_set_static_value>:
  fe14a6:	73 1f 70 15 	mov.w:g r1,0x1570
  fe14aa:	f3          	rts

00fe14ab <_set_stack>:
  fe14ab:	7c f2 04    	enter #0x4
  fe14ae:	75 cb fe fe 	mov.w:g #254,-2[fb]
  fe14b2:	00 
  fe14b3:	75 cb fc ff 	mov.w:g #255,-4[fb]
  fe14b7:	00 
  fe14b8:	7d f2       	exitd

00fe14ba <_use_stack>:
  fe14ba:	7c f2 04    	enter #0x4
  fe14bd:	75 cb fe fe 	mov.w:g #254,-2[fb]
  fe14c1:	00 
  fe14c2:	75 cb fc ff 	mov.w:g #255,-4[fb]
  fe14c6:	00 
  fe14c7:	73 b0 fe    	mov.w:g -2[fb],r0
  fe14ca:	a1 b0 fc    	add.w:g -4[fb],r0
  fe14cd:	7d f2       	exitd

00fe14cf <_call_self>:
  fe14cf:	fd cf 14 fe 	jsr.a fe14cf <_call_self>
  fe14d3:	f3          	rts

00fe14d4 <_call_simple>:
  fe14d4:	fd 37 14 fe 	jsr.a fe1437 <_return_arg1>
  fe14d8:	f3          	rts

00fe14d9 <_call_complex1>:
  fe14d9:	75 c1 fe 00 	mov.w:g #254,r1
  fe14dd:	fd 37 14 fe 	jsr.a fe1437 <_return_arg1>
  fe14e1:	c9 10       	add.w:q #1,r0
  fe14e3:	f3          	rts

00fe14e4 <_call_complex2>:
  fe14e4:	7c f2 02    	enter #0x2
  fe14e7:	73 2b fe    	mov.w:g r2,-2[fb]
  fe14ea:	73 21       	mov.w:g r2,r1
  fe14ec:	fd 37 14 fe 	jsr.a fe1437 <_return_arg1>
  fe14f0:	73 0f 70 15 	mov.w:g r0,0x1570
  fe14f4:	73 b0 fe    	mov.w:g -2[fb],r0
  fe14f7:	7d f2       	exitd

00fe14f9 <_call_pointer>:
  fe14f9:	73 14       	mov.w:g r1,a0
  fe14fb:	c2          	push.w:s a0
  fe14fc:	fd ac 15 fe 	jsr.a fe15ac <m32c_jsri16>
  fe1500:	f3          	rts

00fe1501 <_condition>:
  fe1501:	c1 21       	cmp.w:g r2,r1
  fe1503:	6e 03       	jne fe1507 <_condition+0x6>
  fe1505:	d9 12       	mov.w:q #1,r2
  fe1507:	73 20       	mov.w:g r2,r0
  fe1509:	c9 10       	add.w:q #1,r0
  fe150b:	f3          	rts

00fe150c <_loop>:
  fe150c:	d1 01       	cmp.w:q #0,r1
  fe150e:	7d c8 11    	jle fe1521 <_loop+0x15>
  fe1511:	d9 00       	mov.w:q #0,r0
  fe1513:	73 02       	mov.w:g r0,r2
  fe1515:	a1 20       	add.w:g r2,r0
  fe1517:	c9 12       	add.w:q #1,r2
  fe1519:	c1 12       	cmp.w:g r1,r2
  fe151b:	6e f9       	jne fe1515 <_loop+0x9>
  fe151d:	fc 23 15 fe 	jmp.a fe1523 <_loop+0x17>
  fe1521:	d9 00       	mov.w:q #0,r0
  fe1523:	f3          	rts

00fe1524 <_many_args>:
  fe1524:	7c f2 00    	enter #0x0
  fe1527:	73 10       	mov.w:g r1,r0
  fe1529:	a1 b0 07    	add.w:g 7[fb],r0
  fe152c:	a1 b0 0b    	add.w:g 11[fb],r0
  fe152f:	a1 b0 0f    	add.w:g 15[fb],r0
  fe1532:	7d f2       	exitd

00fe1534 <_call_many_args>:
  fe1534:	7c f2 00    	enter #0x0
  fe1537:	7d e2 07 00 	push.w:g #7
  fe153b:	7d e2 06 00 	push.w:g #6
  fe153f:	7d e2 05 00 	push.w:g #5
  fe1543:	7d e2 04 00 	push.w:g #4
  fe1547:	7d e2 03 00 	push.w:g #3
  fe154b:	7d e2 02 00 	push.w:g #2
  fe154f:	d9 12       	mov.w:q #1,r2
  fe1551:	d9 01       	mov.w:q #0,r1
  fe1553:	fd 24 15 fe 	jsr.a fe1524 <_many_args>
  fe1557:	7d eb 0c 00 	add.w:g #12,sp
  fe155b:	7d f2       	exitd

00fe155d <_direct>:
  fe155d:	04          	nop
  fe155e:	f3          	rts

00fe155f <_binary>:
  fe155f:	00          	brk
  fe1560:	00          	brk
  fe1561:	00          	brk
  fe1562:	00          	brk
  fe1563:	00          	brk
  fe1564:	f3          	rts

00fe1565 <_main>:
  fe1565:	d9 00       	mov.w:q #0,r0
  fe1567:	f3          	rts
	...

Disassembly of section .plt:

00fe1570 <_static_value.plt>:
  fe1570:	fc 04 18 fe 	jmp.a fe1804 <_static_value>
