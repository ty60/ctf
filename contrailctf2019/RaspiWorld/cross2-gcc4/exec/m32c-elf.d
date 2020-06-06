
m32c-elf.x:     file format elf32-m32c


Disassembly of section .text:

00001400 <_start>:
    1400:	eb 50 10 1c 	ldc #7184,sp
    1404:	fd 0b 15 00 	jsr.a 150b <_main>
    1408:	73 01       	mov.w:g r0,r1

0000140a <___exit>:
    140a:	d9 10       	mov.w:q #1,r0
    140c:	73 0f 00 04 	mov.w:g r0,0x400
    1410:	f3          	rts

00001411 <___read>:
    1411:	d9 40       	mov.w:q #4,r0
    1413:	73 0f 00 04 	mov.w:g r0,0x400
    1417:	f3          	rts

00001418 <___write>:
    1418:	d9 50       	mov.w:q #5,r0
    141a:	73 0f 00 04 	mov.w:g r0,0x400
    141e:	f3          	rts

0000141f <___open>:
    141f:	d9 20       	mov.w:q #2,r0
    1421:	73 0f 00 04 	mov.w:g r0,0x400
    1425:	f3          	rts

00001426 <___close>:
    1426:	d9 30       	mov.w:q #3,r0
    1428:	73 0f 00 04 	mov.w:g r0,0x400
    142c:	f3          	rts
    142d:	04          	nop
    142e:	04          	nop
    142f:	04          	nop

00001430 <_exit>:
    1430:	fd 0a 14 00 	jsr.a 140a <___exit>

00001434 <_write1>:
    1434:	7c f2 00    	enter #0x0
    1437:	7d e2 01 00 	push.w:g #1
    143b:	7b f2       	stc fb,r2
    143d:	c9 52       	add.w:q #5,r2
    143f:	fd 18 14 00 	jsr.a 1418 <___write>
    1443:	7d b2       	add.b:q #2,sp
    1445:	7d f2       	exitd

00001447 <_putchar>:
    1447:	7c f2 02    	enter #0x2
    144a:	73 2b fe    	mov.w:g r2,-2[fb]
    144d:	74 4b fe    	push.b:g -2[fb]
    1450:	fd 34 14 00 	jsr.a 1434 <_write1>
    1454:	7d b1       	add.b:q #1,sp
    1456:	73 b0 fe    	mov.w:g -2[fb],r0
    1459:	7d f2       	exitd

0000145b <_puts>:
    145b:	7c f2 04    	enter #0x4
    145e:	73 1b fc    	mov.w:g r1,-4[fb]
    1461:	73 2b fe    	mov.w:g r2,-2[fb]
    1464:	73 24       	mov.w:g r2,a0
    1466:	72 60       	mov.b:g [a0],r0l
    1468:	e4 00       	cmp.b:s #0,r0l
    146a:	6a 18       	jeq 1483 <_puts+0x28>
    146c:	7c 60       	exts.b r0l
    146e:	73 02       	mov.w:g r0,r2
    1470:	73 b1 fc    	mov.w:g -4[fb],r1
    1473:	fd 47 14 00 	jsr.a 1447 <_putchar>
    1477:	c9 1b fe    	add.w:q #1,-2[fb]
    147a:	73 b4 fe    	mov.w:g -2[fb],a0
    147d:	72 60       	mov.b:g [a0],r0l
    147f:	e4 00       	cmp.b:s #0,r0l
    1481:	6e ea       	jne 146c <_puts+0x11>
    1483:	d9 00       	mov.w:q #0,r0
    1485:	7d f2       	exitd

00001487 <_putxval>:
    1487:	7c f2 1b    	enter #0x1b
    148a:	73 1b e7    	mov.w:g r1,-25[fb]
    148d:	73 b0 07    	mov.w:g 7[fb],r0
    1490:	73 0b ed    	mov.w:g r0,-19[fb]
    1493:	73 b2 05    	mov.w:g 5[fb],r2
    1496:	73 2b eb    	mov.w:g r2,-21[fb]
    1499:	73 b1 09    	mov.w:g 9[fb],r1
    149c:	b6 ff       	mov.b:z #0,-1[fb]
    149e:	73 20       	mov.w:g r2,r0
    14a0:	99 b0 ed    	or.w:g -19[fb],r0
    14a3:	d1 00       	cmp.w:q #0,r0
    14a5:	6e 07       	jne 14ad <_putxval+0x26>
    14a7:	d1 01       	cmp.w:q #0,r1
    14a9:	6e 03       	jne 14ad <_putxval+0x26>
    14ab:	d9 11       	mov.w:q #1,r1
    14ad:	eb 4b fe    	mova -2[fb],a0
    14b0:	75 c3 3a 15 	mov.w:g #5434,r3
    14b4:	73 1b e5    	mov.w:g r1,-27[fb]
    14b7:	73 3b e9    	mov.w:g r3,-23[fb]
    14ba:	73 b3 ed    	mov.w:g -19[fb],r3
    14bd:	73 b1 eb    	mov.w:g -21[fb],r1
    14c0:	fc e9 14 00 	jmp.a 14e9 <_putxval+0x62>
    14c4:	73 32       	mov.w:g r3,r2
    14c6:	73 10       	mov.w:g r1,r0
    14c8:	77 20 0f 00 	and.w:g #15,r0
    14cc:	77 22 00 00 	and.w:g #0,r2
    14d0:	73 b5 e9    	mov.w:g -23[fb],a1
    14d3:	a1 05       	add.w:g r0,a1
    14d5:	72 70       	mov.b:g [a1],r0l
    14d7:	72 06       	mov.b:g r0l,[a0]
    14d9:	eb 9b       	shl.l #-4,r3r1
    14db:	d1 0b e5    	cmp.w:q #0,-27[fb]
    14de:	6a 06       	jeq 14e5 <_putxval+0x5e>
    14e0:	77 5b e5 01 	sub.w:g #1,-27[fb]
    14e4:	00 
    14e5:	77 54 01 00 	sub.w:g #1,a0
    14e9:	73 10       	mov.w:g r1,r0
    14eb:	99 30       	or.w:g r3,r0
    14ed:	d1 00       	cmp.w:q #0,r0
    14ef:	6e d4       	jne 14c4 <_putxval+0x3d>
    14f1:	d1 0b e5    	cmp.w:q #0,-27[fb]
    14f4:	6a 08       	jeq 14fd <_putxval+0x76>
    14f6:	74 c6 30    	mov.b:g #48,[a0]
    14f9:	fc e0 14 00 	jmp.a 14e0 <_putxval+0x59>
    14fd:	eb 28 01    	mova 0x1[a0],r2
    1500:	73 b1 e7    	mov.w:g -25[fb],r1
    1503:	fd 5b 14 00 	jsr.a 145b <_puts>
    1507:	d9 00       	mov.w:q #0,r0
    1509:	7d f2       	exitd

0000150b <_main>:
    150b:	7c f2 00    	enter #0x0
    150e:	75 c2 4b 15 	mov.w:g #5451,r2
    1512:	d9 11       	mov.w:q #1,r1
    1514:	fd 5b 14 00 	jsr.a 145b <_puts>
    1518:	7d e2 00 00 	push.w:g #0
    151c:	75 4f 02 18 	push.w:g 0x1802
    1520:	75 4f 00 18 	push.w:g 0x1800
    1524:	d9 11       	mov.w:q #1,r1
    1526:	fd 87 14 00 	jsr.a 1487 <_putxval>
    152a:	75 c2 59 15 	mov.w:g #5465,r2
    152e:	d9 11       	mov.w:q #1,r1
    1530:	fd 5b 14 00 	jsr.a 145b <_puts>
    1534:	d9 01       	mov.w:q #0,r1
    1536:	fd 30 14 00 	jsr.a 1430 <_exit>
