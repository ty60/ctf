
xscale-elf.x:     file format elf32-littlearm


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	e12fff1e 	bx	lr

00fe1404 <return_zero>:
  fe1404:	e3a00000 	mov	r0, #0
  fe1408:	e12fff1e 	bx	lr

00fe140c <return_one>:
  fe140c:	e3a00001 	mov	r0, #1
  fe1410:	e12fff1e 	bx	lr

00fe1414 <return_int_size>:
  fe1414:	e3a00004 	mov	r0, #4
  fe1418:	e12fff1e 	bx	lr

00fe141c <return_pointer_size>:
  fe141c:	e3a00004 	mov	r0, #4
  fe1420:	e12fff1e 	bx	lr

00fe1424 <return_short_size>:
  fe1424:	e3a00002 	mov	r0, #2
  fe1428:	e12fff1e 	bx	lr

00fe142c <return_long_size>:
  fe142c:	e3a00004 	mov	r0, #4
  fe1430:	e12fff1e 	bx	lr

00fe1434 <return_short>:
  fe1434:	e59f0000 	ldr	r0, [pc]	; fe143c <return_short+0x8>
  fe1438:	e12fff1e 	bx	lr
  fe143c:	00007788 	.word	0x00007788

00fe1440 <return_long>:
  fe1440:	e59f0000 	ldr	r0, [pc]	; fe1448 <return_long+0x8>
  fe1444:	e12fff1e 	bx	lr
  fe1448:	778899aa 	.word	0x778899aa

00fe144c <return_short_upper>:
  fe144c:	e3e00011 	mvn	r0, #17
  fe1450:	e12fff1e 	bx	lr

00fe1454 <return_long_upper>:
  fe1454:	e59f0000 	ldr	r0, [pc]	; fe145c <return_long_upper+0x8>
  fe1458:	e12fff1e 	bx	lr
  fe145c:	ffeeddcc 	.word	0xffeeddcc

00fe1460 <return_arg1>:
  fe1460:	e12fff1e 	bx	lr

00fe1464 <return_arg2>:
  fe1464:	e1a00001 	mov	r0, r1
  fe1468:	e12fff1e 	bx	lr

00fe146c <add>:
  fe146c:	e0800001 	add	r0, r0, r1
  fe1470:	e12fff1e 	bx	lr

00fe1474 <add3>:
  fe1474:	e0800001 	add	r0, r0, r1
  fe1478:	e0800002 	add	r0, r0, r2
  fe147c:	e12fff1e 	bx	lr

00fe1480 <add_two>:
  fe1480:	e2800002 	add	r0, r0, #2
  fe1484:	e12fff1e 	bx	lr

00fe1488 <inc>:
  fe1488:	e2800001 	add	r0, r0, #1
  fe148c:	e12fff1e 	bx	lr

00fe1490 <or>:
  fe1490:	e1810000 	orr	r0, r1, r0
  fe1494:	e12fff1e 	bx	lr

00fe1498 <or_one>:
  fe1498:	e3800001 	orr	r0, r0, #1
  fe149c:	e12fff1e 	bx	lr

00fe14a0 <load>:
  fe14a0:	e5900000 	ldr	r0, [r0]
  fe14a4:	e12fff1e 	bx	lr

00fe14a8 <store>:
  fe14a8:	e3a030ff 	mov	r3, #255	; 0xff
  fe14ac:	e5803000 	str	r3, [r0]
  fe14b0:	e12fff1e 	bx	lr

00fe14b4 <load_long>:
  fe14b4:	e5900000 	ldr	r0, [r0]
  fe14b8:	e12fff1e 	bx	lr

00fe14bc <store_long>:
  fe14bc:	e59f3004 	ldr	r3, [pc, #4]	; fe14c8 <store_long+0xc>
  fe14c0:	e5803000 	str	r3, [r0]
  fe14c4:	e12fff1e 	bx	lr
  fe14c8:	11223344 	.word	0x11223344

00fe14cc <member>:
  fe14cc:	e3a03001 	mov	r3, #1
  fe14d0:	e5803004 	str	r3, [r0, #4]
  fe14d4:	e5900008 	ldr	r0, [r0, #8]
  fe14d8:	e12fff1e 	bx	lr

00fe14dc <get_static_value_addr>:
  fe14dc:	e59f0000 	ldr	r0, [pc]	; fe14e4 <get_static_value_addr+0x8>
  fe14e0:	e12fff1e 	bx	lr
  fe14e4:	00fe1800 	.word	0x00fe1800

00fe14e8 <get_static_value>:
  fe14e8:	e59f3004 	ldr	r3, [pc, #4]	; fe14f4 <get_static_value+0xc>
  fe14ec:	e5930000 	ldr	r0, [r3]
  fe14f0:	e12fff1e 	bx	lr
  fe14f4:	00fe1800 	.word	0x00fe1800

00fe14f8 <set_static_value>:
  fe14f8:	e59f3004 	ldr	r3, [pc, #4]	; fe1504 <set_static_value+0xc>
  fe14fc:	e5830000 	str	r0, [r3]
  fe1500:	e12fff1e 	bx	lr
  fe1504:	00fe1800 	.word	0x00fe1800

00fe1508 <set_stack>:
  fe1508:	e24dd008 	sub	sp, sp, #8
  fe150c:	e3a030fe 	mov	r3, #254	; 0xfe
  fe1510:	e58d3004 	str	r3, [sp, #4]
  fe1514:	e3a030ff 	mov	r3, #255	; 0xff
  fe1518:	e58d3000 	str	r3, [sp]
  fe151c:	e28dd008 	add	sp, sp, #8
  fe1520:	e12fff1e 	bx	lr

00fe1524 <use_stack>:
  fe1524:	e24dd008 	sub	sp, sp, #8
  fe1528:	e3a030fe 	mov	r3, #254	; 0xfe
  fe152c:	e58d3004 	str	r3, [sp, #4]
  fe1530:	e3a030ff 	mov	r3, #255	; 0xff
  fe1534:	e58d3000 	str	r3, [sp]
  fe1538:	e59d0004 	ldr	r0, [sp, #4]
  fe153c:	e59d3000 	ldr	r3, [sp]
  fe1540:	e0800003 	add	r0, r0, r3
  fe1544:	e28dd008 	add	sp, sp, #8
  fe1548:	e12fff1e 	bx	lr

00fe154c <call_self>:
  fe154c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  fe1550:	ebfffffd 	bl	fe154c <call_self>
  fe1554:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00fe1558 <call_simple>:
  fe1558:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  fe155c:	ebffffbf 	bl	fe1460 <return_arg1>
  fe1560:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00fe1564 <call_complex1>:
  fe1564:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  fe1568:	e3a000fe 	mov	r0, #254	; 0xfe
  fe156c:	ebffffbb 	bl	fe1460 <return_arg1>
  fe1570:	e2800001 	add	r0, r0, #1
  fe1574:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00fe1578 <call_complex2>:
  fe1578:	e92d4010 	push	{r4, lr}
  fe157c:	e1a04001 	mov	r4, r1
  fe1580:	e1a00001 	mov	r0, r1
  fe1584:	ebffffb5 	bl	fe1460 <return_arg1>
  fe1588:	e59f3008 	ldr	r3, [pc, #8]	; fe1598 <call_complex2+0x20>
  fe158c:	e5830000 	str	r0, [r3]
  fe1590:	e1a00004 	mov	r0, r4
  fe1594:	e8bd8010 	pop	{r4, pc}
  fe1598:	00fe1800 	.word	0x00fe1800

00fe159c <call_pointer>:
  fe159c:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  fe15a0:	e1a0e00f 	mov	lr, pc
  fe15a4:	e12fff10 	bx	r0
  fe15a8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)

00fe15ac <condition>:
  fe15ac:	e1500001 	cmp	r0, r1
  fe15b0:	03a01001 	moveq	r1, #1
  fe15b4:	e2810001 	add	r0, r1, #1
  fe15b8:	e12fff1e 	bx	lr

00fe15bc <loop>:
  fe15bc:	e2502000 	subs	r2, r0, #0
  fe15c0:	da000006 	ble	fe15e0 <loop+0x24>
  fe15c4:	e3a00000 	mov	r0, #0
  fe15c8:	e1a03000 	mov	r3, r0
  fe15cc:	e0800003 	add	r0, r0, r3
  fe15d0:	e2833001 	add	r3, r3, #1
  fe15d4:	e1530002 	cmp	r3, r2
  fe15d8:	1afffffb 	bne	fe15cc <loop+0x10>
  fe15dc:	e12fff1e 	bx	lr
  fe15e0:	e3a00000 	mov	r0, #0
  fe15e4:	e12fff1e 	bx	lr

00fe15e8 <many_args>:
  fe15e8:	e0800003 	add	r0, r0, r3
  fe15ec:	e59d2004 	ldr	r2, [sp, #4]
  fe15f0:	e0800002 	add	r0, r0, r2
  fe15f4:	e59d200c 	ldr	r2, [sp, #12]
  fe15f8:	e0800002 	add	r0, r0, r2
  fe15fc:	e12fff1e 	bx	lr

00fe1600 <call_many_args>:
  fe1600:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
  fe1604:	e24dd010 	sub	sp, sp, #16
  fe1608:	e3a03004 	mov	r3, #4
  fe160c:	e58d3000 	str	r3, [sp]
  fe1610:	e3a03005 	mov	r3, #5
  fe1614:	e58d3004 	str	r3, [sp, #4]
  fe1618:	e3a03006 	mov	r3, #6
  fe161c:	e58d3008 	str	r3, [sp, #8]
  fe1620:	e3a03007 	mov	r3, #7
  fe1624:	e58d300c 	str	r3, [sp, #12]
  fe1628:	e3a00000 	mov	r0, #0
  fe162c:	e3a01001 	mov	r1, #1
  fe1630:	e3a02002 	mov	r2, #2
  fe1634:	e3a03003 	mov	r3, #3
  fe1638:	ebffffea 	bl	fe15e8 <many_args>
  fe163c:	e28dd010 	add	sp, sp, #16
  fe1640:	e8bd8000 	ldmfd	sp!, {pc}

00fe1644 <direct>:
  fe1644:	e1a00000 	nop			; (mov r0, r0)
  fe1648:	e12fff1e 	bx	lr

00fe164c <binary>:
  fe164c:	e1a00000 	nop			; (mov r0, r0)
  fe1650:	00000000 	.word	0x00000000
  fe1654:	e12fff1e 	bx	lr

00fe1658 <main>:
  fe1658:	e3a00000 	mov	r0, #0
  fe165c:	e12fff1e 	bx	lr
