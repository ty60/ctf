
v850-elf.x:     file format elf32-v850


Disassembly of section .text:

00fe1400 <_null>:
  fe1400:	7f 00       	jmp	[lp]
	...

00fe1404 <_return_zero>:
  fe1404:	00 52       	mov	0, r10
  fe1406:	7f 00       	jmp	[lp]

00fe1408 <_return_one>:
  fe1408:	01 52       	mov	1, r10
  fe140a:	7f 00       	jmp	[lp]

00fe140c <_return_int_size>:
  fe140c:	04 52       	mov	4, r10
  fe140e:	7f 00       	jmp	[lp]

00fe1410 <_return_pointer_size>:
  fe1410:	04 52       	mov	4, r10
  fe1412:	7f 00       	jmp	[lp]

00fe1414 <_return_short_size>:
  fe1414:	02 52       	mov	2, r10
  fe1416:	7f 00       	jmp	[lp]

00fe1418 <_return_long_size>:
  fe1418:	04 52       	mov	4, r10
  fe141a:	7f 00       	jmp	[lp]

00fe141c <_return_short>:
  fe141c:	20 56 88 77 	movea	30600, r0, r10
  fe1420:	7f 00       	jmp	[lp]
	...

00fe1424 <_return_long>:
  fe1424:	40 56 89 77 	movhi	30601, r0, r10
  fe1428:	2a 56 aa 99 	movea	-26198, r10, r10
  fe142c:	7f 00       	jmp	[lp]
	...

00fe1430 <_return_short_upper>:
  fe1430:	20 56 ee ff 	movea	-18, r0, r10
  fe1434:	7f 00       	jmp	[lp]
	...

00fe1438 <_return_long_upper>:
  fe1438:	40 56 ef ff 	movhi	-17, r0, r10
  fe143c:	2a 56 cc dd 	movea	-8756, r10, r10
  fe1440:	7f 00       	jmp	[lp]
	...

00fe1444 <_return_arg1>:
  fe1444:	06 50       	mov	r6, r10
  fe1446:	7f 00       	jmp	[lp]

00fe1448 <_return_arg2>:
  fe1448:	07 50       	mov	r7, r10
  fe144a:	7f 00       	jmp	[lp]

00fe144c <_add>:
  fe144c:	06 50       	mov	r6, r10
  fe144e:	c7 51       	add	r7, r10
  fe1450:	7f 00       	jmp	[lp]
	...

00fe1454 <_add3>:
  fe1454:	06 50       	mov	r6, r10
  fe1456:	c7 51       	add	r7, r10
  fe1458:	c8 51       	add	r8, r10
  fe145a:	7f 00       	jmp	[lp]

00fe145c <_add_two>:
  fe145c:	06 56 02 00 	addi	2, r6, r10
  fe1460:	7f 00       	jmp	[lp]
	...

00fe1464 <_inc>:
  fe1464:	06 56 01 00 	addi	1, r6, r10
  fe1468:	7f 00       	jmp	[lp]
	...

00fe146c <_or>:
  fe146c:	07 50       	mov	r7, r10
  fe146e:	06 51       	or	r6, r10
  fe1470:	7f 00       	jmp	[lp]
	...

00fe1474 <_or_one>:
  fe1474:	86 56 01 00 	ori	1, r6, r10
  fe1478:	7f 00       	jmp	[lp]
	...

00fe147c <_load>:
  fe147c:	26 57 01 00 	ld.w	0[r6], r10
  fe1480:	7f 00       	jmp	[lp]
	...

00fe1484 <_store>:
  fe1484:	20 56 ff 00 	movea	255, r0, r10
  fe1488:	66 57 01 00 	st.w	r10, 0[r6]
  fe148c:	7f 00       	jmp	[lp]
	...

00fe1490 <_load_long>:
  fe1490:	26 57 01 00 	ld.w	0[r6], r10
  fe1494:	7f 00       	jmp	[lp]
	...

00fe1498 <_store_long>:
  fe1498:	40 56 22 11 	movhi	4386, r0, r10
  fe149c:	2a 56 44 33 	movea	13124, r10, r10
  fe14a0:	66 57 01 00 	st.w	r10, 0[r6]
  fe14a4:	7f 00       	jmp	[lp]
	...

00fe14a8 <_member>:
  fe14a8:	01 52       	mov	1, r10
  fe14aa:	66 57 05 00 	st.w	r10, 4[r6]
  fe14ae:	26 57 09 00 	ld.w	8[r6], r10
  fe14b2:	7f 00       	jmp	[lp]

00fe14b4 <_get_static_value_addr>:
  fe14b4:	40 56 fe 00 	movhi	254, r0, r10
  fe14b8:	2a 56 04 18 	movea	6148, r10, r10
  fe14bc:	7f 00       	jmp	[lp]
	...

00fe14c0 <_get_static_value>:
  fe14c0:	40 56 fe 00 	movhi	254, r0, r10
  fe14c4:	2a 57 05 18 	ld.w	6148[r10], r10
  fe14c8:	7f 00       	jmp	[lp]
	...

00fe14cc <_set_static_value>:
  fe14cc:	40 56 fe 00 	movhi	254, r0, r10
  fe14d0:	6a 37 05 18 	st.w	r6, 6148[r10]
  fe14d4:	7f 00       	jmp	[lp]
	...

00fe14d8 <_set_stack>:
  fe14d8:	58 1a       	add	-8, sp
  fe14da:	20 56 fe 00 	movea	254, r0, r10
  fe14de:	63 57 05 00 	st.w	r10, 4[sp]
  fe14e2:	20 56 ff 00 	movea	255, r0, r10
  fe14e6:	63 57 01 00 	st.w	r10, 0[sp]
  fe14ea:	48 1a       	add	8, sp
  fe14ec:	7f 00       	jmp	[lp]
	...

00fe14f0 <_use_stack>:
  fe14f0:	58 1a       	add	-8, sp
  fe14f2:	20 56 fe 00 	movea	254, r0, r10
  fe14f6:	63 57 05 00 	st.w	r10, 4[sp]
  fe14fa:	20 56 ff 00 	movea	255, r0, r10
  fe14fe:	63 57 01 00 	st.w	r10, 0[sp]
  fe1502:	23 5f 05 00 	ld.w	4[sp], r11
  fe1506:	23 57 01 00 	ld.w	0[sp], r10
  fe150a:	cb 51       	add	r11, r10
  fe150c:	48 1a       	add	8, sp
  fe150e:	7f 00       	jmp	[lp]

00fe1510 <_call_self>:
  fe1510:	5c 1a       	add	-4, sp
  fe1512:	63 ff 01 00 	st.w	lp, 0[sp]
  fe1516:	bf ff fa ff 	jarl	fe1510 <_call_self>, lp
  fe151a:	80 07 1a 01 	jr	fe1634 <__return_r31>
	...

00fe1520 <_call_simple>:
  fe1520:	5c 1a       	add	-4, sp
  fe1522:	63 ff 01 00 	st.w	lp, 0[sp]
  fe1526:	bf ff 1e ff 	jarl	fe1444 <_return_arg1>, lp
  fe152a:	80 07 0a 01 	jr	fe1634 <__return_r31>
	...

00fe1530 <_call_complex1>:
  fe1530:	5c 1a       	add	-4, sp
  fe1532:	63 ff 01 00 	st.w	lp, 0[sp]
  fe1536:	20 36 fe 00 	movea	254, r0, r6
  fe153a:	bf ff 0a ff 	jarl	fe1444 <_return_arg1>, lp
  fe153e:	41 52       	add	1, r10
  fe1540:	80 07 f4 00 	jr	fe1634 <__return_r31>

00fe1544 <_call_complex2>:
  fe1544:	58 1a       	add	-8, sp
  fe1546:	63 ff 05 00 	st.w	lp, 4[sp]
  fe154a:	63 ef 01 00 	st.w	r29, 0[sp]
  fe154e:	07 e8       	mov	r7, r29
  fe1550:	07 30       	mov	r7, r6
  fe1552:	bf ff f2 fe 	jarl	fe1444 <_return_arg1>, lp
  fe1556:	40 5e fe 00 	movhi	254, r0, r11
  fe155a:	6b 57 05 18 	st.w	r10, 6148[r11]
  fe155e:	1d 50       	mov	r29, r10
  fe1560:	80 07 c4 00 	jr	fe1624 <__return_r29_r31>

00fe1564 <_call_pointer>:
  fe1564:	5c 1a       	add	-4, sp
  fe1566:	63 ff 01 00 	st.w	lp, 0[sp]
  fe156a:	80 ff 04 00 	jarl	fe156e <_call_pointer+0xa>, lp
  fe156e:	44 fa       	add	4, lp
  fe1570:	66 00       	jmp	[r6]
  fe1572:	80 07 c2 00 	jr	fe1634 <__return_r31>
	...

00fe1578 <_condition>:
  fe1578:	e7 31       	cmp	r7, r6
  fe157a:	aa 05       	bne	fe157e <_condition+0x6>
  fe157c:	01 3a       	mov	1, r7
  fe157e:	07 56 01 00 	addi	1, r7, r10
  fe1582:	7f 00       	jmp	[lp]

00fe1584 <_loop>:
  fe1584:	60 32       	cmp	0, r6
  fe1586:	87 0d       	ble	fe1596 <_loop+0x12>
  fe1588:	00 52       	mov	0, r10
  fe158a:	00 5a       	mov	0, r11
  fe158c:	cb 51       	add	r11, r10
  fe158e:	41 5a       	add	1, r11
  fe1590:	e6 59       	cmp	r6, r11
  fe1592:	da fd       	bne	fe158c <_loop+0x8>
  fe1594:	a5 05       	br	fe1598 <_loop+0x14>
  fe1596:	00 52       	mov	0, r10
  fe1598:	7f 00       	jmp	[lp]
	...

00fe159c <_many_args>:
  fe159c:	c9 31       	add	r9, r6
  fe159e:	23 57 05 00 	ld.w	4[sp], r10
  fe15a2:	ca 31       	add	r10, r6
  fe15a4:	23 57 0d 00 	ld.w	12[sp], r10
  fe15a8:	c6 51       	add	r6, r10
  fe15aa:	7f 00       	jmp	[lp]

00fe15ac <_call_many_args>:
  fe15ac:	03 1e ec ff 	addi	-20, sp, sp
  fe15b0:	63 ff 11 00 	st.w	lp, 16[sp]
  fe15b4:	04 52       	mov	4, r10
  fe15b6:	63 57 01 00 	st.w	r10, 0[sp]
  fe15ba:	05 52       	mov	5, r10
  fe15bc:	63 57 05 00 	st.w	r10, 4[sp]
  fe15c0:	06 52       	mov	6, r10
  fe15c2:	63 57 09 00 	st.w	r10, 8[sp]
  fe15c6:	07 52       	mov	7, r10
  fe15c8:	63 57 0d 00 	st.w	r10, 12[sp]
  fe15cc:	00 32       	mov	0, r6
  fe15ce:	01 3a       	mov	1, r7
  fe15d0:	02 42       	mov	2, r8
  fe15d2:	03 4a       	mov	3, r9
  fe15d4:	bf ff c8 ff 	jarl	fe159c <_many_args>, lp
  fe15d8:	03 1e 10 00 	addi	16, sp, sp
  fe15dc:	80 07 58 00 	jr	fe1634 <__return_r31>

00fe15e0 <_direct>:
  fe15e0:	00 00       	nop	
  fe15e2:	7f 00       	jmp	[lp]

00fe15e4 <_binary>:
	...
  fe15f4:	7f 00       	jmp	[lp]
	...

00fe15f8 <_main>:
  fe15f8:	00 52       	mov	0, r10
  fe15fa:	7f 00       	jmp	[lp]
  fe15fc:	00 00       	nop	
	...
