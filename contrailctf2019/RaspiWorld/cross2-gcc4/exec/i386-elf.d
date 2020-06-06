
i386-elf.x:     file format elf32-i386


Disassembly of section .text:

08048400 <_start>:
 8048400:	bc 10 8c 04 08       	mov    $0x8048c10,%esp
 8048405:	e8 4c 01 00 00       	call   8048556 <main>
 804840a:	50                   	push   %eax
 804840b:	e8 00 00 00 00       	call   8048410 <__exit>

08048410 <__exit>:
 8048410:	b8 01 00 00 00       	mov    $0x1,%eax
 8048415:	eb 1c                	jmp    8048433 <_syscall>

08048417 <__read>:
 8048417:	b8 03 00 00 00       	mov    $0x3,%eax
 804841c:	eb 15                	jmp    8048433 <_syscall>

0804841e <__write>:
 804841e:	b8 04 00 00 00       	mov    $0x4,%eax
 8048423:	eb 0e                	jmp    8048433 <_syscall>

08048425 <__open>:
 8048425:	b8 05 00 00 00       	mov    $0x5,%eax
 804842a:	eb 07                	jmp    8048433 <_syscall>

0804842c <__close>:
 804842c:	b8 06 00 00 00       	mov    $0x6,%eax
 8048431:	eb 00                	jmp    8048433 <_syscall>

08048433 <_syscall>:
 8048433:	52                   	push   %edx
 8048434:	51                   	push   %ecx
 8048435:	53                   	push   %ebx
 8048436:	50                   	push   %eax
 8048437:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804843b:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 804843f:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048443:	8b 44 24 10          	mov    0x10(%esp),%eax
 8048447:	52                   	push   %edx
 8048448:	51                   	push   %ecx
 8048449:	53                   	push   %ebx
 804844a:	50                   	push   %eax
 804844b:	8b 44 24 10          	mov    0x10(%esp),%eax
 804844f:	f8                   	clc    
 8048450:	cd 80                	int    $0x80
 8048452:	73 07                	jae    804845b <ret>
 8048454:	83 f8 00             	cmp    $0x0,%eax
 8048457:	7e 02                	jle    804845b <ret>
 8048459:	f7 d8                	neg    %eax

0804845b <ret>:
 804845b:	5b                   	pop    %ebx
 804845c:	5b                   	pop    %ebx
 804845d:	5b                   	pop    %ebx
 804845e:	5b                   	pop    %ebx
 804845f:	5b                   	pop    %ebx
 8048460:	5b                   	pop    %ebx
 8048461:	59                   	pop    %ecx
 8048462:	5a                   	pop    %edx
 8048463:	c3                   	ret    

08048464 <exit>:
 8048464:	83 ec 1c             	sub    $0x1c,%esp
 8048467:	8b 44 24 20          	mov    0x20(%esp),%eax
 804846b:	89 04 24             	mov    %eax,(%esp)
 804846e:	e8 9d ff ff ff       	call   8048410 <__exit>

08048473 <write1>:
 8048473:	83 ec 2c             	sub    $0x2c,%esp
 8048476:	8b 44 24 34          	mov    0x34(%esp),%eax
 804847a:	88 44 24 1c          	mov    %al,0x1c(%esp)
 804847e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048485:	00 
 8048486:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804848a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804848e:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048492:	89 04 24             	mov    %eax,(%esp)
 8048495:	e8 84 ff ff ff       	call   804841e <__write>
 804849a:	83 c4 2c             	add    $0x2c,%esp
 804849d:	c3                   	ret    

0804849e <putchar>:
 804849e:	83 ec 1c             	sub    $0x1c,%esp
 80484a1:	0f b6 44 24 24       	movzbl 0x24(%esp),%eax
 80484a6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484aa:	8b 44 24 20          	mov    0x20(%esp),%eax
 80484ae:	89 04 24             	mov    %eax,(%esp)
 80484b1:	e8 bd ff ff ff       	call   8048473 <write1>
 80484b6:	8b 44 24 24          	mov    0x24(%esp),%eax
 80484ba:	83 c4 1c             	add    $0x1c,%esp
 80484bd:	c3                   	ret    

080484be <puts>:
 80484be:	56                   	push   %esi
 80484bf:	53                   	push   %ebx
 80484c0:	83 ec 14             	sub    $0x14,%esp
 80484c3:	8b 74 24 20          	mov    0x20(%esp),%esi
 80484c7:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 80484cb:	8a 03                	mov    (%ebx),%al
 80484cd:	84 c0                	test   %al,%al
 80484cf:	74 16                	je     80484e7 <puts+0x29>
 80484d1:	0f be c0             	movsbl %al,%eax
 80484d4:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484d8:	89 34 24             	mov    %esi,(%esp)
 80484db:	e8 be ff ff ff       	call   804849e <putchar>
 80484e0:	43                   	inc    %ebx
 80484e1:	8a 03                	mov    (%ebx),%al
 80484e3:	84 c0                	test   %al,%al
 80484e5:	75 ea                	jne    80484d1 <puts+0x13>
 80484e7:	b8 00 00 00 00       	mov    $0x0,%eax
 80484ec:	83 c4 14             	add    $0x14,%esp
 80484ef:	5b                   	pop    %ebx
 80484f0:	5e                   	pop    %esi
 80484f1:	c3                   	ret    

080484f2 <putxval>:
 80484f2:	53                   	push   %ebx
 80484f3:	83 ec 38             	sub    $0x38,%esp
 80484f6:	8b 54 24 44          	mov    0x44(%esp),%edx
 80484fa:	8b 4c 24 48          	mov    0x48(%esp),%ecx
 80484fe:	c6 44 24 2f 00       	movb   $0x0,0x2f(%esp)
 8048503:	85 d2                	test   %edx,%edx
 8048505:	75 06                	jne    804850d <putxval+0x1b>
 8048507:	85 c9                	test   %ecx,%ecx
 8048509:	75 02                	jne    804850d <putxval+0x1b>
 804850b:	b1 01                	mov    $0x1,%cl
 804850d:	8d 44 24 2d          	lea    0x2d(%esp),%eax
 8048511:	eb 17                	jmp    804852a <putxval+0x38>
 8048513:	89 d3                	mov    %edx,%ebx
 8048515:	83 e3 0f             	and    $0xf,%ebx
 8048518:	8a 9b b0 85 04 08    	mov    0x80485b0(%ebx),%bl
 804851e:	88 58 01             	mov    %bl,0x1(%eax)
 8048521:	c1 ea 04             	shr    $0x4,%edx
 8048524:	85 c9                	test   %ecx,%ecx
 8048526:	74 01                	je     8048529 <putxval+0x37>
 8048528:	49                   	dec    %ecx
 8048529:	48                   	dec    %eax
 804852a:	8d 58 01             	lea    0x1(%eax),%ebx
 804852d:	85 d2                	test   %edx,%edx
 804852f:	75 e2                	jne    8048513 <putxval+0x21>
 8048531:	85 c9                	test   %ecx,%ecx
 8048533:	74 06                	je     804853b <putxval+0x49>
 8048535:	c6 40 01 30          	movb   $0x30,0x1(%eax)
 8048539:	eb ed                	jmp    8048528 <putxval+0x36>
 804853b:	43                   	inc    %ebx
 804853c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048540:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048544:	89 04 24             	mov    %eax,(%esp)
 8048547:	e8 72 ff ff ff       	call   80484be <puts>
 804854c:	b8 00 00 00 00       	mov    $0x0,%eax
 8048551:	83 c4 38             	add    $0x38,%esp
 8048554:	5b                   	pop    %ebx
 8048555:	c3                   	ret    

08048556 <main>:
 8048556:	55                   	push   %ebp
 8048557:	89 e5                	mov    %esp,%ebp
 8048559:	83 e4 f0             	and    $0xfffffff0,%esp
 804855c:	83 ec 10             	sub    $0x10,%esp
 804855f:	c7 44 24 04 c1 85 04 	movl   $0x80485c1,0x4(%esp)
 8048566:	08 
 8048567:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804856e:	e8 4b ff ff ff       	call   80484be <puts>
 8048573:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804857a:	00 
 804857b:	a1 00 88 04 08       	mov    0x8048800,%eax
 8048580:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048584:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804858b:	e8 62 ff ff ff       	call   80484f2 <putxval>
 8048590:	c7 44 24 04 d0 85 04 	movl   $0x80485d0,0x4(%esp)
 8048597:	08 
 8048598:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804859f:	e8 1a ff ff ff       	call   80484be <puts>
 80485a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80485ab:	e8 b4 fe ff ff       	call   8048464 <exit>
