
pdp11-aout.x:     file format a.out-pdp11


Disassembly of section .text:

00001400 <_null>:
    1400:	0087           	rts	pc

00001402 <_return_zero>:
    1402:	0a00           	clr	r0
    1404:	0087           	rts	pc

00001406 <_return_one>:
    1406:	15c0 0001      	mov	$1, r0
    140a:	0087           	rts	pc

0000140c <_return_int_size>:
    140c:	15c0 0002      	mov	$2, r0
    1410:	0087           	rts	pc

00001412 <_return_pointer_size>:
    1412:	15c0 0002      	mov	$2, r0
    1416:	0087           	rts	pc

00001418 <_return_short_size>:
    1418:	15c0 0002      	mov	$2, r0
    141c:	0087           	rts	pc

0000141e <_return_long_size>:
    141e:	15c0 0004      	mov	$4, r0
    1422:	0087           	rts	pc

00001424 <_return_short>:
    1424:	15c0 7788      	mov	$73610, r0
    1428:	0087           	rts	pc

0000142a <_return_long>:
    142a:	15c0 7788      	mov	$73610, r0
    142e:	15c1 99aa      	mov	$-63126, r1
    1432:	0087           	rts	pc

00001434 <_return_short_upper>:
    1434:	15c0 ffee      	mov	$-22, r0
    1438:	0087           	rts	pc

0000143a <_return_long_upper>:
    143a:	15c0 ffee      	mov	$-22, r0
    143e:	15c1 ddcc      	mov	$-21064, r1
    1442:	0087           	rts	pc

00001444 <_return_arg1>:
    1444:	1d80 0002      	mov	2(sp), r0
    1448:	0087           	rts	pc

0000144a <_return_arg2>:
    144a:	1d80 0004      	mov	4(sp), r0
    144e:	0087           	rts	pc

00001450 <_add>:
    1450:	1d80 0002      	mov	2(sp), r0
    1454:	6d80 0004      	add	4(sp), r0
    1458:	0087           	rts	pc

0000145a <_add3>:
    145a:	1d80 0002      	mov	2(sp), r0
    145e:	6d80 0004      	add	4(sp), r0
    1462:	6d80 0006      	add	6(sp), r0
    1466:	0087           	rts	pc

00001468 <_add_two>:
    1468:	1d80 0002      	mov	2(sp), r0
    146c:	65c0 0002      	add	$2, r0
    1470:	0087           	rts	pc

00001472 <_inc>:
    1472:	1d80 0002      	mov	2(sp), r0
    1476:	0a80           	inc	r0
    1478:	0087           	rts	pc

0000147a <_or>:
    147a:	1d80 0004      	mov	4(sp), r0
    147e:	5d80 0002      	bis	2(sp), r0
    1482:	0087           	rts	pc

00001484 <_or_one>:
    1484:	1d80 0002      	mov	2(sp), r0
    1488:	55c0 0001      	bis	$1, r0
    148c:	0087           	rts	pc

0000148e <_load>:
    148e:	1f80 0002      	mov	*2(sp), r0
    1492:	0087           	rts	pc

00001494 <_store>:
    1494:	15fe 00ff 0002 	mov	$377, *2(sp)
    149a:	0087           	rts	pc

0000149c <_load_long>:
    149c:	1d80 0002      	mov	2(sp), r0
    14a0:	1200           	mov	(r0), r0
    14a2:	1c01 0002      	mov	2(r0), r1
    14a6:	0087           	rts	pc

000014a8 <_store_long>:
    14a8:	1d80 0002      	mov	2(sp), r0
    14ac:	15c8 1122      	mov	$10442, (r0)
    14b0:	15f0 3344 0002 	mov	$31504, 2(r0)
    14b6:	0087           	rts	pc

000014b8 <_member>:
    14b8:	1d80 0002      	mov	2(sp), r0
    14bc:	15f0 0001 0002 	mov	$1, 2(r0)
    14c2:	1c00 0004      	mov	4(r0), r0
    14c6:	0087           	rts	pc

000014c8 <_get_static_value_addr>:
    14c8:	15c0 1804      	mov	$14004, r0
    14cc:	0087           	rts	pc

000014ce <_get_static_value>:
    14ce:	1dc0 0332      	mov	$1804 <_static_value>, r0
    14d2:	0087           	rts	pc

000014d4 <_set_static_value>:
    14d4:	1db7 0002 032a 	mov	2(sp), $1804 <_static_value>
    14da:	0087           	rts	pc

000014dc <_set_stack>:
    14dc:	65c6 fffc      	add	$-4, sp
    14e0:	15f6 00fe 0002 	mov	$376, 2(sp)
    14e6:	15ce 00ff      	mov	$377, (sp)
    14ea:	65c6 0004      	add	$4, sp
    14ee:	0087           	rts	pc

000014f0 <_use_stack>:
    14f0:	65c6 fffc      	add	$-4, sp
    14f4:	15f6 00fe 0002 	mov	$376, 2(sp)
    14fa:	15ce 00ff      	mov	$377, (sp)
    14fe:	1d81 0002      	mov	2(sp), r1
    1502:	1380           	mov	(sp), r0
    1504:	6040           	add	r1, r0
    1506:	65c6 0004      	add	$4, sp
    150a:	0087           	rts	pc

0000150c <_call_self>:
    150c:	09f7 fffc      	jsr	pc, 150c <_call_self>
    1510:	0087           	rts	pc

00001512 <_call_simple>:
    1512:	1da6 0002      	mov	2(sp), -(sp)
    1516:	09f7 ff2a      	jsr	pc, 1444 <_return_arg1>
    151a:	65c6 0002      	add	$2, sp
    151e:	0087           	rts	pc

00001520 <_call_complex1>:
    1520:	15e6 00fe      	mov	$376, -(sp)
    1524:	09f7 ff1c      	jsr	pc, 1444 <_return_arg1>
    1528:	65c6 0002      	add	$2, sp
    152c:	0a80           	inc	r0
    152e:	0087           	rts	pc

00001530 <_call_complex2>:
    1530:	10a6           	mov	r2, -(sp)
    1532:	1d82 0006      	mov	6(sp), r2
    1536:	10a6           	mov	r2, -(sp)
    1538:	09f7 ff08      	jsr	pc, 1444 <_return_arg1>
    153c:	65c6 0002      	add	$2, sp
    1540:	1037 02c0      	mov	r0, $1804 <_static_value>
    1544:	1080           	mov	r2, r0
    1546:	1582           	mov	(sp)+, r2
    1548:	0087           	rts	pc

0000154a <_call_pointer>:
    154a:	09fe 0002      	jsr	pc, *2(sp)
    154e:	0087           	rts	pc

00001550 <_condition>:
    1550:	1d80 0004      	mov	4(sp), r0
    1554:	2d80 0002      	cmp	2(sp), r0
    1558:	0202           	bne	155e <_condition+0xe>
    155a:	15c0 0001      	mov	$1, r0
    155e:	0a80           	inc	r0
    1560:	0087           	rts	pc

00001562 <_loop>:
    1562:	10a6           	mov	r2, -(sp)
    1564:	1d82 0004      	mov	4(sp), r2
    1568:	0707           	ble	1578 <_loop+0x16>
    156a:	0a00           	clr	r0
    156c:	0a01           	clr	r1
    156e:	6040           	add	r1, r0
    1570:	0a81           	inc	r1
    1572:	2042           	cmp	r1, r2
    1574:	02fc           	bne	156e <_loop+0xc>
    1576:	0101           	br	157a <_loop+0x18>
    1578:	0a00           	clr	r0
    157a:	1582           	mov	(sp)+, r2
    157c:	0087           	rts	pc

0000157e <_many_args>:
    157e:	1d80 0002      	mov	2(sp), r0
    1582:	6d80 0008      	add	10(sp), r0
    1586:	6d80 000c      	add	14(sp), r0
    158a:	6d80 0010      	add	20(sp), r0
    158e:	0087           	rts	pc

00001590 <_call_many_args>:
    1590:	15e6 0007      	mov	$7, -(sp)
    1594:	15e6 0006      	mov	$6, -(sp)
    1598:	15e6 0005      	mov	$5, -(sp)
    159c:	15e6 0004      	mov	$4, -(sp)
    15a0:	15e6 0003      	mov	$3, -(sp)
    15a4:	15e6 0002      	mov	$2, -(sp)
    15a8:	15e6 0001      	mov	$1, -(sp)
    15ac:	0a26           	clr	-(sp)
    15ae:	09f7 ffcc      	jsr	pc, 157e <_many_args>
    15b2:	65c6 0010      	add	$20, sp
    15b6:	0087           	rts	pc

000015b8 <_direct>:
    15b8:	00a0           	nop
    15ba:	0087           	rts	pc

000015bc <_binary>:
	...
    15c4:	0087           	rts	pc

000015c6 <_main>:
    15c6:	f009           	setd
    15c8:	f002           	seti
    15ca:	09f7 0022      	jsr	pc, 15f0 <__main+0x4>
    15ce:	0a00           	clr	r0
    15d0:	0087           	rts	pc
	...
