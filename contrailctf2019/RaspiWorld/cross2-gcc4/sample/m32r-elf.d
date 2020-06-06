
m32r-elf.x:     file format elf32-m32r


Disassembly of section .text:

00fe1400 <null>:
  fe1400:	1f ce f0 00 	jmp lr || nop

00fe1404 <return_zero>:
  fe1404:	60 00 1f ce 	ldi r0,#0 -> jmp lr

00fe1408 <return_one>:
  fe1408:	60 01 1f ce 	ldi r0,#1 -> jmp lr

00fe140c <return_int_size>:
  fe140c:	60 04 1f ce 	ldi r0,#4 -> jmp lr

00fe1410 <return_pointer_size>:
  fe1410:	60 04 1f ce 	ldi r0,#4 -> jmp lr

00fe1414 <return_short_size>:
  fe1414:	60 02 1f ce 	ldi r0,#2 -> jmp lr

00fe1418 <return_long_size>:
  fe1418:	60 04 1f ce 	ldi r0,#4 -> jmp lr

00fe141c <return_short>:
  fe141c:	90 f0 77 88 	ldi r0,#30600
  fe1420:	1f ce f0 00 	jmp lr || nop

00fe1424 <return_long>:
  fe1424:	d0 c0 77 88 	seth r0,#0x7788
  fe1428:	80 e0 99 aa 	or3 r0,r0,#0x99aa
  fe142c:	1f ce f0 00 	jmp lr || nop

00fe1430 <return_short_upper>:
  fe1430:	60 ee 1f ce 	ldi r0,#-18 -> jmp lr

00fe1434 <return_long_upper>:
  fe1434:	e0 11 22 33 	ld24 r0,112233 <_.tmp+0x1121f3>
  fe1438:	00 b0 1f ce 	not r0,r0 -> jmp lr

00fe143c <return_arg1>:
  fe143c:	1f ce f0 00 	jmp lr || nop

00fe1440 <return_arg2>:
  fe1440:	10 81 f0 00 	mv r0,r1 || nop
  fe1444:	1f ce f0 00 	jmp lr || nop

00fe1448 <add>:
  fe1448:	00 a1 f0 00 	add r0,r1 || nop
  fe144c:	1f ce f0 00 	jmp lr || nop

00fe1450 <add3>:
  fe1450:	00 a1 f0 00 	add r0,r1 || nop
  fe1454:	00 a2 1f ce 	add r0,r2 -> jmp lr

00fe1458 <add_two>:
  fe1458:	40 02 f0 00 	addi r0,#2 || nop
  fe145c:	1f ce f0 00 	jmp lr || nop

00fe1460 <inc>:
  fe1460:	40 01 f0 00 	addi r0,#1 || nop
  fe1464:	1f ce f0 00 	jmp lr || nop

00fe1468 <or>:
  fe1468:	00 e1 f0 00 	or r0,r1 || nop
  fe146c:	1f ce f0 00 	jmp lr || nop

00fe1470 <or_one>:
  fe1470:	80 e0 00 01 	or3 r0,r0,#0x1
  fe1474:	1f ce f0 00 	jmp lr || nop

00fe1478 <load>:
  fe1478:	20 c0 f0 00 	ld r0,@r0 || nop
  fe147c:	1f ce f0 00 	jmp lr || nop

00fe1480 <store>:
  fe1480:	94 f0 00 ff 	ldi r4,#255
  fe1484:	24 40 1f ce 	st r4,@r0 -> jmp lr

00fe1488 <load_long>:
  fe1488:	20 c0 f0 00 	ld r0,@r0 || nop
  fe148c:	1f ce f0 00 	jmp lr || nop

00fe1490 <store_long>:
  fe1490:	d4 c0 11 22 	seth r4,#0x1122
  fe1494:	84 e4 33 44 	or3 r4,r4,#0x3344
  fe1498:	24 40 1f ce 	st r4,@r0 -> jmp lr

00fe149c <member>:
  fe149c:	64 01 f0 00 	ldi r4,#1 || nop
  fe14a0:	a4 40 00 04 	st r4,@(4,r0)
  fe14a4:	a0 c0 00 08 	ld r0,@(8,r0)
  fe14a8:	1f ce f0 00 	jmp lr || nop

00fe14ac <get_static_value_addr>:
  fe14ac:	e0 fe 18 04 	ld24 r0,fe1804 <static_value>
  fe14b0:	1f ce f0 00 	jmp lr || nop

00fe14b4 <get_static_value>:
  fe14b4:	e4 fe 18 04 	ld24 r4,fe1804 <static_value>
  fe14b8:	20 c4 1f ce 	ld r0,@r4 -> jmp lr

00fe14bc <set_static_value>:
  fe14bc:	e4 fe 18 04 	ld24 r4,fe1804 <static_value>
  fe14c0:	20 44 1f ce 	st r0,@r4 -> jmp lr

00fe14c4 <set_stack>:
  fe14c4:	4f f8 f0 00 	addi sp,#-8 || nop
  fe14c8:	94 f0 00 fe 	ldi r4,#254
  fe14cc:	24 4f f0 00 	st r4,@sp || nop
  fe14d0:	94 f0 00 ff 	ldi r4,#255
  fe14d4:	a4 4f 00 04 	st r4,@(4,sp)
  fe14d8:	4f 08 1f ce 	addi sp,#8 -> jmp lr

00fe14dc <use_stack>:
  fe14dc:	4f f8 f0 00 	addi sp,#-8 || nop
  fe14e0:	94 f0 00 fe 	ldi r4,#254
  fe14e4:	24 4f f0 00 	st r4,@sp || nop
  fe14e8:	94 f0 00 ff 	ldi r4,#255
  fe14ec:	a4 4f 00 04 	st r4,@(4,sp)
  fe14f0:	20 cf f0 00 	ld r0,@sp || nop
  fe14f4:	a4 cf 00 04 	ld r4,@(4,sp)
  fe14f8:	00 a4 4f 08 	add r0,r4 -> addi sp,#8
  fe14fc:	1f ce f0 00 	jmp lr || nop

00fe1500 <call_self>:
  fe1500:	2e 7f f0 00 	push lr || nop
  fe1504:	fe ff ff ff 	bl fe1500 <call_self>
  fe1508:	2e ef 1f ce 	pop lr -> jmp lr

00fe150c <call_simple>:
  fe150c:	2e 7f f0 00 	push lr || nop
  fe1510:	fe ff ff cb 	bl fe143c <return_arg1>
  fe1514:	2e ef 1f ce 	pop lr -> jmp lr

00fe1518 <call_complex1>:
  fe1518:	2e 7f f0 00 	push lr || nop
  fe151c:	90 f0 00 fe 	ldi r0,#254
  fe1520:	fe ff ff c7 	bl fe143c <return_arg1>
  fe1524:	40 01 2e ef 	addi r0,#1 -> pop lr
  fe1528:	1f ce f0 00 	jmp lr || nop

00fe152c <call_complex2>:
  fe152c:	28 7f 2e 7f 	push r8 -> push lr
  fe1530:	18 81 f0 00 	mv r8,r1 || nop
  fe1534:	10 81 f0 00 	mv r0,r1 || nop
  fe1538:	fe ff ff c1 	bl fe143c <return_arg1>
  fe153c:	e4 fe 18 04 	ld24 r4,fe1804 <static_value>
  fe1540:	20 44 f0 00 	st r0,@r4 || nop
  fe1544:	10 88 2e ef 	mv r0,r8 -> pop lr
  fe1548:	28 ef f0 00 	pop r8 || nop
  fe154c:	1f ce f0 00 	jmp lr || nop

00fe1550 <call_pointer>:
  fe1550:	2e 7f f0 00 	push lr || nop
  fe1554:	1e c0 f0 00 	jl r0 || nop
  fe1558:	2e ef 1f ce 	pop lr -> jmp lr

00fe155c <condition>:
  fe155c:	b0 11 00 02 	bne r0,r1,fe1564 <condition+0x8>
  fe1560:	61 01 f0 00 	ldi r1,#1 || nop
  fe1564:	80 a1 00 01 	add3 r0,r1,#1
  fe1568:	1f ce f0 00 	jmp lr || nop

00fe156c <loop>:
  fe156c:	b0 c0 00 07 	blez r0,fe1588 <loop+0x1c>
  fe1570:	65 00 f0 00 	ldi r5,#0 || nop
  fe1574:	64 00 f0 00 	ldi r4,#0 || nop
  fe1578:	05 a4 f0 00 	add r5,r4 || nop
  fe157c:	44 01 f0 00 	addi r4,#1 || nop
  fe1580:	b4 10 ff fe 	bne r4,r0,fe1578 <loop+0xc>
  fe1584:	7f 02 f0 00 	bra fe158c <loop+0x20> || nop
  fe1588:	65 00 f0 00 	ldi r5,#0 || nop
  fe158c:	10 85 f0 00 	mv r0,r5 || nop
  fe1590:	1f ce f0 00 	jmp lr || nop

00fe1594 <many_args>:
  fe1594:	03 a0 f0 00 	add r3,r0 || nop
  fe1598:	a4 cf 00 04 	ld r4,@(4,sp)
  fe159c:	03 a4 f0 00 	add r3,r4 || nop
  fe15a0:	a0 cf 00 0c 	ld r0,@(12,sp)
  fe15a4:	00 a3 1f ce 	add r0,r3 -> jmp lr

00fe15a8 <call_many_args>:
  fe15a8:	2e 7f 4f f0 	push lr -> addi sp,#-16
  fe15ac:	64 04 24 4f 	ldi r4,#4 -> st r4,@sp
  fe15b0:	64 05 f0 00 	ldi r4,#5 || nop
  fe15b4:	a4 4f 00 04 	st r4,@(4,sp)
  fe15b8:	64 06 f0 00 	ldi r4,#6 || nop
  fe15bc:	a4 4f 00 08 	st r4,@(8,sp)
  fe15c0:	64 07 f0 00 	ldi r4,#7 || nop
  fe15c4:	a4 4f 00 0c 	st r4,@(12,sp)
  fe15c8:	60 00 61 01 	ldi r0,#0 -> ldi r1,#1
  fe15cc:	62 02 63 03 	ldi r2,#2 -> ldi r3,#3
  fe15d0:	fe ff ff f1 	bl fe1594 <many_args>
  fe15d4:	4f 10 2e ef 	addi sp,#16 -> pop lr
  fe15d8:	1f ce f0 00 	jmp lr || nop

00fe15dc <direct>:
  fe15dc:	70 00 1f ce 	nop -> jmp lr

00fe15e0 <binary>:
  fe15e0:	00 00 00 00 	subv r0,r0 -> subv r0,r0
  fe15e4:	1f ce f0 00 	jmp lr || nop

00fe15e8 <main>:
  fe15e8:	60 00 1f ce 	ldi r0,#0 -> jmp lr
  fe15ec:	70 00 f0 00 	nop || nop
