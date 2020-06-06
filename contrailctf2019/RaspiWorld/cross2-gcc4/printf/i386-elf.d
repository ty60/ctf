
i386-elf.x:     file format elf32-i386


Disassembly of section .text:

08048400 <_start>:
 8048400:	bc c0 6d 05 08       	mov    $0x8056dc0,%esp
 8048405:	e8 5c 01 00 00       	call   8048566 <_startmain>
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

08048464 <_exit>:
 8048464:	83 ec 1c             	sub    $0x1c,%esp
 8048467:	8b 44 24 20          	mov    0x20(%esp),%eax
 804846b:	89 04 24             	mov    %eax,(%esp)
 804846e:	e8 9d ff ff ff       	call   8048410 <__exit>

08048473 <read>:
 8048473:	83 ec 1c             	sub    $0x1c,%esp
 8048476:	8b 44 24 28          	mov    0x28(%esp),%eax
 804847a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804847e:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048482:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048486:	8b 44 24 20          	mov    0x20(%esp),%eax
 804848a:	89 04 24             	mov    %eax,(%esp)
 804848d:	e8 85 ff ff ff       	call   8048417 <__read>
 8048492:	83 c4 1c             	add    $0x1c,%esp
 8048495:	c3                   	ret    

08048496 <write>:
 8048496:	83 ec 1c             	sub    $0x1c,%esp
 8048499:	8b 44 24 28          	mov    0x28(%esp),%eax
 804849d:	89 44 24 08          	mov    %eax,0x8(%esp)
 80484a1:	8b 44 24 24          	mov    0x24(%esp),%eax
 80484a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484a9:	8b 44 24 20          	mov    0x20(%esp),%eax
 80484ad:	89 04 24             	mov    %eax,(%esp)
 80484b0:	e8 69 ff ff ff       	call   804841e <__write>
 80484b5:	83 c4 1c             	add    $0x1c,%esp
 80484b8:	c3                   	ret    

080484b9 <open>:
 80484b9:	83 ec 1c             	sub    $0x1c,%esp
 80484bc:	8b 44 24 28          	mov    0x28(%esp),%eax
 80484c0:	89 44 24 08          	mov    %eax,0x8(%esp)
 80484c4:	8b 44 24 24          	mov    0x24(%esp),%eax
 80484c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 80484cc:	8b 44 24 20          	mov    0x20(%esp),%eax
 80484d0:	89 04 24             	mov    %eax,(%esp)
 80484d3:	e8 4d ff ff ff       	call   8048425 <__open>
 80484d8:	83 c4 1c             	add    $0x1c,%esp
 80484db:	c3                   	ret    

080484dc <close>:
 80484dc:	83 ec 1c             	sub    $0x1c,%esp
 80484df:	8b 44 24 20          	mov    0x20(%esp),%eax
 80484e3:	89 04 24             	mov    %eax,(%esp)
 80484e6:	e8 41 ff ff ff       	call   804842c <__close>
 80484eb:	83 c4 1c             	add    $0x1c,%esp
 80484ee:	c3                   	ret    

080484ef <fstat>:
 80484ef:	83 ec 1c             	sub    $0x1c,%esp
 80484f2:	c7 44 24 08 3c 00 00 	movl   $0x3c,0x8(%esp)
 80484f9:	00 
 80484fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048501:	00 
 8048502:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048506:	89 04 24             	mov    %eax,(%esp)
 8048509:	e8 b6 00 00 00       	call   80485c4 <memset>
 804850e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048513:	83 c4 1c             	add    $0x1c,%esp
 8048516:	c3                   	ret    

08048517 <lseek>:
 8048517:	8b 44 24 08          	mov    0x8(%esp),%eax
 804851b:	c3                   	ret    

0804851c <sbrk>:
 804851c:	a1 00 20 05 08       	mov    0x8052000,%eax
 8048521:	89 c2                	mov    %eax,%edx
 8048523:	03 54 24 04          	add    0x4(%esp),%edx
 8048527:	89 15 00 20 05 08    	mov    %edx,0x8052000
 804852d:	c3                   	ret    

0804852e <isatty>:
 804852e:	b8 01 00 00 00       	mov    $0x1,%eax
 8048533:	c3                   	ret    

08048534 <main>:
 8048534:	55                   	push   %ebp
 8048535:	89 e5                	mov    %esp,%ebp
 8048537:	83 e4 f0             	and    $0xfffffff0,%esp
 804853a:	83 ec 10             	sub    $0x10,%esp
 804853d:	c7 44 24 08 80 04 05 	movl   $0x8050480,0x8(%esp)
 8048544:	08 
 8048545:	a1 04 20 05 08       	mov    0x8052004,%eax
 804854a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804854e:	c7 04 24 8c 04 05 08 	movl   $0x805048c,(%esp)
 8048555:	e8 1e 01 00 00       	call   8048678 <printf>
 804855a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048561:	e8 2a 00 00 00       	call   8048590 <exit>

08048566 <_startmain>:
 8048566:	83 ec 1c             	sub    $0x1c,%esp
 8048569:	b8 bc 69 05 08       	mov    $0x80569bc,%eax
 804856e:	2d 60 29 05 08       	sub    $0x8052960,%eax
 8048573:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048577:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804857e:	00 
 804857f:	c7 04 24 60 29 05 08 	movl   $0x8052960,(%esp)
 8048586:	e8 39 00 00 00       	call   80485c4 <memset>
 804858b:	e8 a4 ff ff ff       	call   8048534 <main>

08048590 <exit>:
 8048590:	53                   	push   %ebx
 8048591:	83 ec 18             	sub    $0x18,%esp
 8048594:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8048598:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804859f:	00 
 80485a0:	89 1c 24             	mov    %ebx,(%esp)
 80485a3:	e8 30 23 00 00       	call   804a8d8 <__call_exitprocs>
 80485a8:	8b 15 b8 04 05 08    	mov    0x80504b8,%edx
 80485ae:	8b 42 3c             	mov    0x3c(%edx),%eax
 80485b1:	85 c0                	test   %eax,%eax
 80485b3:	74 05                	je     80485ba <exit+0x2a>
 80485b5:	89 14 24             	mov    %edx,(%esp)
 80485b8:	ff d0                	call   *%eax
 80485ba:	89 1c 24             	mov    %ebx,(%esp)
 80485bd:	e8 a2 fe ff ff       	call   8048464 <_exit>
 80485c2:	66 90                	xchg   %ax,%ax

080485c4 <memset>:
 80485c4:	55                   	push   %ebp
 80485c5:	89 e5                	mov    %esp,%ebp
 80485c7:	57                   	push   %edi
 80485c8:	8b 7d 08             	mov    0x8(%ebp),%edi
 80485cb:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 80485cf:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80485d2:	fc                   	cld    
 80485d3:	83 f9 10             	cmp    $0x10,%ecx
 80485d6:	76 69                	jbe    8048641 <memset+0x7d>
 80485d8:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80485de:	74 4c                	je     804862c <memset+0x68>
 80485e0:	88 07                	mov    %al,(%edi)
 80485e2:	47                   	inc    %edi
 80485e3:	49                   	dec    %ecx
 80485e4:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80485ea:	74 40                	je     804862c <memset+0x68>
 80485ec:	88 07                	mov    %al,(%edi)
 80485ee:	47                   	inc    %edi
 80485ef:	49                   	dec    %ecx
 80485f0:	f7 c7 07 00 00 00    	test   $0x7,%edi
 80485f6:	74 34                	je     804862c <memset+0x68>
 80485f8:	88 07                	mov    %al,(%edi)
 80485fa:	47                   	inc    %edi
 80485fb:	49                   	dec    %ecx
 80485fc:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8048602:	74 28                	je     804862c <memset+0x68>
 8048604:	88 07                	mov    %al,(%edi)
 8048606:	47                   	inc    %edi
 8048607:	49                   	dec    %ecx
 8048608:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804860e:	74 1c                	je     804862c <memset+0x68>
 8048610:	88 07                	mov    %al,(%edi)
 8048612:	47                   	inc    %edi
 8048613:	49                   	dec    %ecx
 8048614:	f7 c7 07 00 00 00    	test   $0x7,%edi
 804861a:	74 10                	je     804862c <memset+0x68>
 804861c:	88 07                	mov    %al,(%edi)
 804861e:	47                   	inc    %edi
 804861f:	49                   	dec    %ecx
 8048620:	f7 c7 07 00 00 00    	test   $0x7,%edi
 8048626:	74 04                	je     804862c <memset+0x68>
 8048628:	88 07                	mov    %al,(%edi)
 804862a:	47                   	inc    %edi
 804862b:	49                   	dec    %ecx
 804862c:	88 c4                	mov    %al,%ah
 804862e:	89 c2                	mov    %eax,%edx
 8048630:	c1 e2 10             	shl    $0x10,%edx
 8048633:	09 d0                	or     %edx,%eax
 8048635:	89 ca                	mov    %ecx,%edx
 8048637:	c1 e9 02             	shr    $0x2,%ecx
 804863a:	83 e2 03             	and    $0x3,%edx
 804863d:	f3 ab                	rep stos %eax,%es:(%edi)
 804863f:	89 d1                	mov    %edx,%ecx
 8048641:	f3 aa                	rep stos %al,%es:(%edi)
 8048643:	8b 45 08             	mov    0x8(%ebp),%eax
 8048646:	8d 65 fc             	lea    -0x4(%ebp),%esp
 8048649:	5f                   	pop    %edi
 804864a:	c9                   	leave  
 804864b:	c3                   	ret    

0804864c <_printf_r>:
 804864c:	83 ec 1c             	sub    $0x1c,%esp
 804864f:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048653:	8d 54 24 28          	lea    0x28(%esp),%edx
 8048657:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804865b:	8b 54 24 24          	mov    0x24(%esp),%edx
 804865f:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048663:	8b 50 08             	mov    0x8(%eax),%edx
 8048666:	89 54 24 04          	mov    %edx,0x4(%esp)
 804866a:	89 04 24             	mov    %eax,(%esp)
 804866d:	e8 32 00 00 00       	call   80486a4 <_vfprintf_r>
 8048672:	83 c4 1c             	add    $0x1c,%esp
 8048675:	c3                   	ret    
 8048676:	66 90                	xchg   %ax,%ax

08048678 <printf>:
 8048678:	83 ec 1c             	sub    $0x1c,%esp
 804867b:	a1 20 20 05 08       	mov    0x8052020,%eax
 8048680:	8d 54 24 24          	lea    0x24(%esp),%edx
 8048684:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048688:	8b 54 24 20          	mov    0x20(%esp),%edx
 804868c:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048690:	8b 50 08             	mov    0x8(%eax),%edx
 8048693:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048697:	89 04 24             	mov    %eax,(%esp)
 804869a:	e8 05 00 00 00       	call   80486a4 <_vfprintf_r>
 804869f:	83 c4 1c             	add    $0x1c,%esp
 80486a2:	c3                   	ret    
 80486a3:	90                   	nop

080486a4 <_vfprintf_r>:
 80486a4:	55                   	push   %ebp
 80486a5:	57                   	push   %edi
 80486a6:	56                   	push   %esi
 80486a7:	53                   	push   %ebx
 80486a8:	81 ec 6c 05 00 00    	sub    $0x56c,%esp
 80486ae:	8b bc 24 84 05 00 00 	mov    0x584(%esp),%edi
 80486b5:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 80486bc:	89 0c 24             	mov    %ecx,(%esp)
 80486bf:	e8 c4 41 00 00       	call   804c888 <_localeconv_r>
 80486c4:	8b 00                	mov    (%eax),%eax
 80486c6:	89 44 24 78          	mov    %eax,0x78(%esp)
 80486ca:	89 04 24             	mov    %eax,(%esp)
 80486cd:	e8 fe 59 00 00       	call   804e0d0 <strlen>
 80486d2:	89 84 24 84 00 00 00 	mov    %eax,0x84(%esp)
 80486d9:	8b ac 24 80 05 00 00 	mov    0x580(%esp),%ebp
 80486e0:	85 ed                	test   %ebp,%ebp
 80486e2:	74 12                	je     80486f6 <_vfprintf_r+0x52>
 80486e4:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 80486eb:	8b 73 38             	mov    0x38(%ebx),%esi
 80486ee:	85 f6                	test   %esi,%esi
 80486f0:	0f 84 be 06 00 00    	je     8048db4 <_vfprintf_r+0x710>
 80486f6:	8b 47 0c             	mov    0xc(%edi),%eax
 80486f9:	f6 c4 20             	test   $0x20,%ah
 80486fc:	75 0e                	jne    804870c <_vfprintf_r+0x68>
 80486fe:	80 cc 20             	or     $0x20,%ah
 8048701:	66 89 47 0c          	mov    %ax,0xc(%edi)
 8048705:	81 67 64 ff df ff ff 	andl   $0xffffdfff,0x64(%edi)
 804870c:	a8 08                	test   $0x8,%al
 804870e:	0f 84 20 05 00 00    	je     8048c34 <_vfprintf_r+0x590>
 8048714:	8b 5f 10             	mov    0x10(%edi),%ebx
 8048717:	85 db                	test   %ebx,%ebx
 8048719:	0f 84 15 05 00 00    	je     8048c34 <_vfprintf_r+0x590>
 804871f:	89 c2                	mov    %eax,%edx
 8048721:	83 e2 1a             	and    $0x1a,%edx
 8048724:	66 83 fa 0a          	cmp    $0xa,%dx
 8048728:	0f 84 33 05 00 00    	je     8048c61 <_vfprintf_r+0x5bd>
 804872e:	8d 84 24 60 01 00 00 	lea    0x160(%esp),%eax
 8048735:	89 84 24 c4 00 00 00 	mov    %eax,0xc4(%esp)
 804873c:	c7 84 24 cc 00 00 00 	movl   $0x0,0xcc(%esp)
 8048743:	00 00 00 00 
 8048747:	c7 84 24 c8 00 00 00 	movl   $0x0,0xc8(%esp)
 804874e:	00 00 00 00 
 8048752:	8b b4 24 88 05 00 00 	mov    0x588(%esp),%esi
 8048759:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%esp)
 8048760:	00 
 8048761:	d9 ee                	fldz   
 8048763:	dd 9c 24 88 00 00 00 	fstpl  0x88(%esp)
 804876a:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%esp)
 8048771:	00 00 00 00 
 8048775:	c7 84 24 90 00 00 00 	movl   $0x0,0x90(%esp)
 804877c:	00 00 00 00 
 8048780:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%esp)
 8048787:	00 
 8048788:	89 c5                	mov    %eax,%ebp
 804878a:	8d 8c 24 c4 00 00 00 	lea    0xc4(%esp),%ecx
 8048791:	89 4c 24 48          	mov    %ecx,0x48(%esp)
 8048795:	8d 9c 24 f8 00 00 00 	lea    0xf8(%esp),%ebx
 804879c:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 80487a0:	8a 06                	mov    (%esi),%al
 80487a2:	89 f3                	mov    %esi,%ebx
 80487a4:	84 c0                	test   %al,%al
 80487a6:	74 47                	je     80487ef <_vfprintf_r+0x14b>
 80487a8:	3c 25                	cmp    $0x25,%al
 80487aa:	75 08                	jne    80487b4 <_vfprintf_r+0x110>
 80487ac:	eb 41                	jmp    80487ef <_vfprintf_r+0x14b>
 80487ae:	66 90                	xchg   %ax,%ax
 80487b0:	3c 25                	cmp    $0x25,%al
 80487b2:	74 07                	je     80487bb <_vfprintf_r+0x117>
 80487b4:	43                   	inc    %ebx
 80487b5:	8a 03                	mov    (%ebx),%al
 80487b7:	84 c0                	test   %al,%al
 80487b9:	75 f5                	jne    80487b0 <_vfprintf_r+0x10c>
 80487bb:	89 da                	mov    %ebx,%edx
 80487bd:	29 f2                	sub    %esi,%edx
 80487bf:	85 d2                	test   %edx,%edx
 80487c1:	74 2c                	je     80487ef <_vfprintf_r+0x14b>
 80487c3:	89 75 00             	mov    %esi,0x0(%ebp)
 80487c6:	89 55 04             	mov    %edx,0x4(%ebp)
 80487c9:	01 94 24 cc 00 00 00 	add    %edx,0xcc(%esp)
 80487d0:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80487d7:	41                   	inc    %ecx
 80487d8:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80487df:	83 f9 07             	cmp    $0x7,%ecx
 80487e2:	0f 8f 94 05 00 00    	jg     8048d7c <_vfprintf_r+0x6d8>
 80487e8:	83 c5 08             	add    $0x8,%ebp
 80487eb:	01 54 24 5c          	add    %edx,0x5c(%esp)
 80487ef:	80 3b 00             	cmpb   $0x0,(%ebx)
 80487f2:	0f 84 3a 05 00 00    	je     8048d32 <_vfprintf_r+0x68e>
 80487f8:	8d 73 01             	lea    0x1(%ebx),%esi
 80487fb:	c6 84 24 a5 00 00 00 	movb   $0x0,0xa5(%esp)
 8048802:	00 
 8048803:	31 c9                	xor    %ecx,%ecx
 8048805:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804880a:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%esp)
 8048811:	00 
 8048812:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 8048819:	00 
 804881a:	0f be 06             	movsbl (%esi),%eax
 804881d:	46                   	inc    %esi
 804881e:	8d 50 e0             	lea    -0x20(%eax),%edx
 8048821:	83 fa 58             	cmp    $0x58,%edx
 8048824:	0f 86 e2 03 00 00    	jbe    8048c0c <_vfprintf_r+0x568>
 804882a:	89 44 24 70          	mov    %eax,0x70(%esp)
 804882e:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 8048835:	85 c0                	test   %eax,%eax
 8048837:	0f 84 f5 04 00 00    	je     8048d32 <_vfprintf_r+0x68e>
 804883d:	88 84 24 d0 00 00 00 	mov    %al,0xd0(%esp)
 8048844:	c6 84 24 a5 00 00 00 	movb   $0x0,0xa5(%esp)
 804884b:	00 
 804884c:	c6 44 24 54 00       	movb   $0x0,0x54(%esp)
 8048851:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%esp)
 8048858:	00 
 8048859:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%esp)
 8048860:	00 
 8048861:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 8048868:	00 
 8048869:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 8048870:	00 00 00 00 
 8048874:	8d 84 24 d0 00 00 00 	lea    0xd0(%esp),%eax
 804887b:	89 44 24 64          	mov    %eax,0x64(%esp)
 804887f:	90                   	nop
 8048880:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
 8048884:	83 e1 02             	and    $0x2,%ecx
 8048887:	89 4c 24 68          	mov    %ecx,0x68(%esp)
 804888b:	74 05                	je     8048892 <_vfprintf_r+0x1ee>
 804888d:	83 44 24 50 02       	addl   $0x2,0x50(%esp)
 8048892:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 8048896:	81 e3 84 00 00 00    	and    $0x84,%ebx
 804889c:	89 5c 24 6c          	mov    %ebx,0x6c(%esp)
 80488a0:	0f 85 c7 00 00 00    	jne    804896d <_vfprintf_r+0x2c9>
 80488a6:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 80488aa:	2b 5c 24 50          	sub    0x50(%esp),%ebx
 80488ae:	85 db                	test   %ebx,%ebx
 80488b0:	0f 8e b7 00 00 00    	jle    804896d <_vfprintf_r+0x2c9>
 80488b6:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80488bd:	83 fb 10             	cmp    $0x10,%ebx
 80488c0:	7e 7b                	jle    804893d <_vfprintf_r+0x299>
 80488c2:	89 74 24 54          	mov    %esi,0x54(%esp)
 80488c6:	89 de                	mov    %ebx,%esi
 80488c8:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 80488cf:	eb 0e                	jmp    80488df <_vfprintf_r+0x23b>
 80488d1:	8d 76 00             	lea    0x0(%esi),%esi
 80488d4:	83 c5 08             	add    $0x8,%ebp
 80488d7:	83 ee 10             	sub    $0x10,%esi
 80488da:	83 fe 10             	cmp    $0x10,%esi
 80488dd:	7e 58                	jle    8048937 <_vfprintf_r+0x293>
 80488df:	c7 45 00 60 06 05 08 	movl   $0x8050660,0x0(%ebp)
 80488e6:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 80488ed:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 80488f4:	10 
 80488f5:	41                   	inc    %ecx
 80488f6:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80488fd:	83 f9 07             	cmp    $0x7,%ecx
 8048900:	7e d2                	jle    80488d4 <_vfprintf_r+0x230>
 8048902:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8048909:	89 44 24 08          	mov    %eax,0x8(%esp)
 804890d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048911:	89 1c 24             	mov    %ebx,(%esp)
 8048914:	e8 33 58 00 00       	call   804e14c <__sprint_r>
 8048919:	85 c0                	test   %eax,%eax
 804891b:	0f 85 3b 04 00 00    	jne    8048d5c <_vfprintf_r+0x6b8>
 8048921:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8048928:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804892f:	83 ee 10             	sub    $0x10,%esi
 8048932:	83 fe 10             	cmp    $0x10,%esi
 8048935:	7f a8                	jg     80488df <_vfprintf_r+0x23b>
 8048937:	89 f3                	mov    %esi,%ebx
 8048939:	8b 74 24 54          	mov    0x54(%esp),%esi
 804893d:	c7 45 00 60 06 05 08 	movl   $0x8050660,0x0(%ebp)
 8048944:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8048947:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 804894e:	41                   	inc    %ecx
 804894f:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048956:	83 f9 07             	cmp    $0x7,%ecx
 8048959:	0f 8f 16 0f 00 00    	jg     8049875 <_vfprintf_r+0x11d1>
 804895f:	83 c5 08             	add    $0x8,%ebp
 8048962:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 8048969:	88 4c 24 54          	mov    %cl,0x54(%esp)
 804896d:	80 7c 24 54 00       	cmpb   $0x0,0x54(%esp)
 8048972:	74 33                	je     80489a7 <_vfprintf_r+0x303>
 8048974:	8d 84 24 a5 00 00 00 	lea    0xa5(%esp),%eax
 804897b:	89 45 00             	mov    %eax,0x0(%ebp)
 804897e:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 8048985:	ff 84 24 cc 00 00 00 	incl   0xcc(%esp)
 804898c:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048993:	41                   	inc    %ecx
 8048994:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804899b:	83 f9 07             	cmp    $0x7,%ecx
 804899e:	0f 8f fc 0c 00 00    	jg     80496a0 <_vfprintf_r+0xffc>
 80489a4:	83 c5 08             	add    $0x8,%ebp
 80489a7:	8b 4c 24 68          	mov    0x68(%esp),%ecx
 80489ab:	85 c9                	test   %ecx,%ecx
 80489ad:	74 34                	je     80489e3 <_vfprintf_r+0x33f>
 80489af:	8d 84 24 a6 00 00 00 	lea    0xa6(%esp),%eax
 80489b6:	89 45 00             	mov    %eax,0x0(%ebp)
 80489b9:	c7 45 04 02 00 00 00 	movl   $0x2,0x4(%ebp)
 80489c0:	83 84 24 cc 00 00 00 	addl   $0x2,0xcc(%esp)
 80489c7:	02 
 80489c8:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80489cf:	41                   	inc    %ecx
 80489d0:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80489d7:	83 f9 07             	cmp    $0x7,%ecx
 80489da:	0f 8f 8c 0c 00 00    	jg     804966c <_vfprintf_r+0xfc8>
 80489e0:	83 c5 08             	add    $0x8,%ebp
 80489e3:	81 7c 24 6c 80 00 00 	cmpl   $0x80,0x6c(%esp)
 80489ea:	00 
 80489eb:	0f 84 4f 0a 00 00    	je     8049440 <_vfprintf_r+0xd9c>
 80489f1:	8b 5c 24 74          	mov    0x74(%esp),%ebx
 80489f5:	2b 5c 24 58          	sub    0x58(%esp),%ebx
 80489f9:	85 db                	test   %ebx,%ebx
 80489fb:	0f 8e a9 00 00 00    	jle    8048aaa <_vfprintf_r+0x406>
 8048a01:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048a08:	83 fb 10             	cmp    $0x10,%ebx
 8048a0b:	7e 78                	jle    8048a85 <_vfprintf_r+0x3e1>
 8048a0d:	89 74 24 54          	mov    %esi,0x54(%esp)
 8048a11:	89 de                	mov    %ebx,%esi
 8048a13:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8048a1a:	eb 0b                	jmp    8048a27 <_vfprintf_r+0x383>
 8048a1c:	83 c5 08             	add    $0x8,%ebp
 8048a1f:	83 ee 10             	sub    $0x10,%esi
 8048a22:	83 fe 10             	cmp    $0x10,%esi
 8048a25:	7e 58                	jle    8048a7f <_vfprintf_r+0x3db>
 8048a27:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8048a2e:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8048a35:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8048a3c:	10 
 8048a3d:	41                   	inc    %ecx
 8048a3e:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048a45:	83 f9 07             	cmp    $0x7,%ecx
 8048a48:	7e d2                	jle    8048a1c <_vfprintf_r+0x378>
 8048a4a:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8048a51:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a55:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048a59:	89 1c 24             	mov    %ebx,(%esp)
 8048a5c:	e8 eb 56 00 00       	call   804e14c <__sprint_r>
 8048a61:	85 c0                	test   %eax,%eax
 8048a63:	0f 85 f3 02 00 00    	jne    8048d5c <_vfprintf_r+0x6b8>
 8048a69:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8048a70:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048a77:	83 ee 10             	sub    $0x10,%esi
 8048a7a:	83 fe 10             	cmp    $0x10,%esi
 8048a7d:	7f a8                	jg     8048a27 <_vfprintf_r+0x383>
 8048a7f:	89 f3                	mov    %esi,%ebx
 8048a81:	8b 74 24 54          	mov    0x54(%esp),%esi
 8048a85:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8048a8c:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8048a8f:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 8048a96:	41                   	inc    %ecx
 8048a97:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048a9e:	83 f9 07             	cmp    $0x7,%ecx
 8048aa1:	0f 8f 91 0b 00 00    	jg     8049638 <_vfprintf_r+0xf94>
 8048aa7:	83 c5 08             	add    $0x8,%ebp
 8048aaa:	f7 44 24 4c 00 01 00 	testl  $0x100,0x4c(%esp)
 8048ab1:	00 
 8048ab2:	0f 85 58 08 00 00    	jne    8049310 <_vfprintf_r+0xc6c>
 8048ab8:	8b 44 24 64          	mov    0x64(%esp),%eax
 8048abc:	89 45 00             	mov    %eax,0x0(%ebp)
 8048abf:	8b 44 24 58          	mov    0x58(%esp),%eax
 8048ac3:	89 45 04             	mov    %eax,0x4(%ebp)
 8048ac6:	01 84 24 cc 00 00 00 	add    %eax,0xcc(%esp)
 8048acd:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048ad4:	41                   	inc    %ecx
 8048ad5:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048adc:	83 f9 07             	cmp    $0x7,%ecx
 8048adf:	0f 8f 7f 0c 00 00    	jg     8049764 <_vfprintf_r+0x10c0>
 8048ae5:	83 c5 08             	add    $0x8,%ebp
 8048ae8:	f6 44 24 4c 04       	testb  $0x4,0x4c(%esp)
 8048aed:	0f 84 e1 00 00 00    	je     8048bd4 <_vfprintf_r+0x530>
 8048af3:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 8048af7:	2b 5c 24 50          	sub    0x50(%esp),%ebx
 8048afb:	85 db                	test   %ebx,%ebx
 8048afd:	0f 8e d1 00 00 00    	jle    8048bd4 <_vfprintf_r+0x530>
 8048b03:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048b0a:	83 fb 10             	cmp    $0x10,%ebx
 8048b0d:	7e 7a                	jle    8048b89 <_vfprintf_r+0x4e5>
 8048b0f:	89 74 24 4c          	mov    %esi,0x4c(%esp)
 8048b13:	89 de                	mov    %ebx,%esi
 8048b15:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8048b1c:	eb 0d                	jmp    8048b2b <_vfprintf_r+0x487>
 8048b1e:	66 90                	xchg   %ax,%ax
 8048b20:	83 c5 08             	add    $0x8,%ebp
 8048b23:	83 ee 10             	sub    $0x10,%esi
 8048b26:	83 fe 10             	cmp    $0x10,%esi
 8048b29:	7e 58                	jle    8048b83 <_vfprintf_r+0x4df>
 8048b2b:	c7 45 00 60 06 05 08 	movl   $0x8050660,0x0(%ebp)
 8048b32:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8048b39:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8048b40:	10 
 8048b41:	41                   	inc    %ecx
 8048b42:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048b49:	83 f9 07             	cmp    $0x7,%ecx
 8048b4c:	7e d2                	jle    8048b20 <_vfprintf_r+0x47c>
 8048b4e:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8048b55:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b59:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048b5d:	89 1c 24             	mov    %ebx,(%esp)
 8048b60:	e8 e7 55 00 00       	call   804e14c <__sprint_r>
 8048b65:	85 c0                	test   %eax,%eax
 8048b67:	0f 85 ef 01 00 00    	jne    8048d5c <_vfprintf_r+0x6b8>
 8048b6d:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8048b74:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8048b7b:	83 ee 10             	sub    $0x10,%esi
 8048b7e:	83 fe 10             	cmp    $0x10,%esi
 8048b81:	7f a8                	jg     8048b2b <_vfprintf_r+0x487>
 8048b83:	89 f3                	mov    %esi,%ebx
 8048b85:	8b 74 24 4c          	mov    0x4c(%esp),%esi
 8048b89:	c7 45 00 60 06 05 08 	movl   $0x8050660,0x0(%ebp)
 8048b90:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8048b93:	03 9c 24 cc 00 00 00 	add    0xcc(%esp),%ebx
 8048b9a:	89 9c 24 cc 00 00 00 	mov    %ebx,0xcc(%esp)
 8048ba1:	41                   	inc    %ecx
 8048ba2:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8048ba9:	83 f9 07             	cmp    $0x7,%ecx
 8048bac:	7e 2d                	jle    8048bdb <_vfprintf_r+0x537>
 8048bae:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 8048bb5:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048bb9:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048bbd:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8048bc4:	89 0c 24             	mov    %ecx,(%esp)
 8048bc7:	e8 80 55 00 00       	call   804e14c <__sprint_r>
 8048bcc:	85 c0                	test   %eax,%eax
 8048bce:	0f 85 88 01 00 00    	jne    8048d5c <_vfprintf_r+0x6b8>
 8048bd4:	8b 9c 24 cc 00 00 00 	mov    0xcc(%esp),%ebx
 8048bdb:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048bdf:	3b 44 24 60          	cmp    0x60(%esp),%eax
 8048be3:	7d 04                	jge    8048be9 <_vfprintf_r+0x545>
 8048be5:	8b 44 24 60          	mov    0x60(%esp),%eax
 8048be9:	01 44 24 5c          	add    %eax,0x5c(%esp)
 8048bed:	85 db                	test   %ebx,%ebx
 8048bef:	0f 85 17 0a 00 00    	jne    804960c <_vfprintf_r+0xf68>
 8048bf5:	c7 84 24 c8 00 00 00 	movl   $0x0,0xc8(%esp)
 8048bfc:	00 00 00 00 
 8048c00:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8048c07:	e9 94 fb ff ff       	jmp    80487a0 <_vfprintf_r+0xfc>
 8048c0c:	ff 24 95 fc 04 05 08 	jmp    *0x80504fc(,%edx,4)
 8048c13:	83 4c 24 4c 10       	orl    $0x10,0x4c(%esp)
 8048c18:	e9 fd fb ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048c1d:	f7 da                	neg    %edx
 8048c1f:	89 54 24 60          	mov    %edx,0x60(%esp)
 8048c23:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8048c2a:	83 4c 24 4c 04       	orl    $0x4,0x4c(%esp)
 8048c2f:	e9 e6 fb ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048c34:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048c38:	8b b4 24 80 05 00 00 	mov    0x580(%esp),%esi
 8048c3f:	89 34 24             	mov    %esi,(%esp)
 8048c42:	e8 69 1b 00 00       	call   804a7b0 <__swsetup_r>
 8048c47:	85 c0                	test   %eax,%eax
 8048c49:	0f 85 13 01 00 00    	jne    8048d62 <_vfprintf_r+0x6be>
 8048c4f:	8b 47 0c             	mov    0xc(%edi),%eax
 8048c52:	89 c2                	mov    %eax,%edx
 8048c54:	83 e2 1a             	and    $0x1a,%edx
 8048c57:	66 83 fa 0a          	cmp    $0xa,%dx
 8048c5b:	0f 85 cd fa ff ff    	jne    804872e <_vfprintf_r+0x8a>
 8048c61:	66 8b 57 0e          	mov    0xe(%edi),%dx
 8048c65:	66 85 d2             	test   %dx,%dx
 8048c68:	0f 88 c0 fa ff ff    	js     804872e <_vfprintf_r+0x8a>
 8048c6e:	83 e0 fd             	and    $0xfffffffd,%eax
 8048c71:	66 89 84 24 04 01 00 	mov    %ax,0x104(%esp)
 8048c78:	00 
 8048c79:	8b 47 64             	mov    0x64(%edi),%eax
 8048c7c:	89 84 24 5c 01 00 00 	mov    %eax,0x15c(%esp)
 8048c83:	66 89 94 24 06 01 00 	mov    %dx,0x106(%esp)
 8048c8a:	00 
 8048c8b:	8b 47 1c             	mov    0x1c(%edi),%eax
 8048c8e:	89 84 24 14 01 00 00 	mov    %eax,0x114(%esp)
 8048c95:	8b 47 24             	mov    0x24(%edi),%eax
 8048c98:	89 84 24 1c 01 00 00 	mov    %eax,0x11c(%esp)
 8048c9f:	8d 84 24 60 01 00 00 	lea    0x160(%esp),%eax
 8048ca6:	89 84 24 f8 00 00 00 	mov    %eax,0xf8(%esp)
 8048cad:	89 84 24 08 01 00 00 	mov    %eax,0x108(%esp)
 8048cb4:	c7 84 24 00 01 00 00 	movl   $0x400,0x100(%esp)
 8048cbb:	00 04 00 00 
 8048cbf:	c7 84 24 0c 01 00 00 	movl   $0x400,0x10c(%esp)
 8048cc6:	00 04 00 00 
 8048cca:	c7 84 24 10 01 00 00 	movl   $0x0,0x110(%esp)
 8048cd1:	00 00 00 00 
 8048cd5:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8048cdc:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8048ce0:	8b 9c 24 88 05 00 00 	mov    0x588(%esp),%ebx
 8048ce7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048ceb:	8d 9c 24 f8 00 00 00 	lea    0xf8(%esp),%ebx
 8048cf2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048cf6:	8b b4 24 80 05 00 00 	mov    0x580(%esp),%esi
 8048cfd:	89 34 24             	mov    %esi,(%esp)
 8048d00:	e8 9f f9 ff ff       	call   80486a4 <_vfprintf_r>
 8048d05:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 8048d09:	85 c0                	test   %eax,%eax
 8048d0b:	78 14                	js     8048d21 <_vfprintf_r+0x67d>
 8048d0d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048d11:	89 34 24             	mov    %esi,(%esp)
 8048d14:	e8 97 33 00 00       	call   804c0b0 <_fflush_r>
 8048d19:	85 c0                	test   %eax,%eax
 8048d1b:	0f 85 a7 19 00 00    	jne    804a6c8 <_vfprintf_r+0x2024>
 8048d21:	f6 84 24 04 01 00 00 	testb  $0x40,0x104(%esp)
 8048d28:	40 
 8048d29:	74 3f                	je     8048d6a <_vfprintf_r+0x6c6>
 8048d2b:	66 83 4f 0c 40       	orw    $0x40,0xc(%edi)
 8048d30:	eb 38                	jmp    8048d6a <_vfprintf_r+0x6c6>
 8048d32:	8b 84 24 cc 00 00 00 	mov    0xcc(%esp),%eax
 8048d39:	85 c0                	test   %eax,%eax
 8048d3b:	74 1f                	je     8048d5c <_vfprintf_r+0x6b8>
 8048d3d:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8048d44:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d48:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048d4c:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8048d53:	89 1c 24             	mov    %ebx,(%esp)
 8048d56:	e8 f1 53 00 00       	call   804e14c <__sprint_r>
 8048d5b:	90                   	nop
 8048d5c:	f6 47 0c 40          	testb  $0x40,0xc(%edi)
 8048d60:	74 08                	je     8048d6a <_vfprintf_r+0x6c6>
 8048d62:	c7 44 24 5c ff ff ff 	movl   $0xffffffff,0x5c(%esp)
 8048d69:	ff 
 8048d6a:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 8048d6e:	81 c4 6c 05 00 00    	add    $0x56c,%esp
 8048d74:	5b                   	pop    %ebx
 8048d75:	5e                   	pop    %esi
 8048d76:	5f                   	pop    %edi
 8048d77:	5d                   	pop    %ebp
 8048d78:	c3                   	ret    
 8048d79:	8d 76 00             	lea    0x0(%esi),%esi
 8048d7c:	8d b4 24 c4 00 00 00 	lea    0xc4(%esp),%esi
 8048d83:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048d87:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048d8b:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8048d92:	89 0c 24             	mov    %ecx,(%esp)
 8048d95:	89 54 24 34          	mov    %edx,0x34(%esp)
 8048d99:	e8 ae 53 00 00       	call   804e14c <__sprint_r>
 8048d9e:	85 c0                	test   %eax,%eax
 8048da0:	8b 54 24 34          	mov    0x34(%esp),%edx
 8048da4:	75 b6                	jne    8048d5c <_vfprintf_r+0x6b8>
 8048da6:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8048dad:	e9 39 fa ff ff       	jmp    80487eb <_vfprintf_r+0x147>
 8048db2:	66 90                	xchg   %ax,%ax
 8048db4:	89 1c 24             	mov    %ebx,(%esp)
 8048db7:	e8 88 34 00 00       	call   804c244 <__sinit>
 8048dbc:	e9 35 f9 ff ff       	jmp    80486f6 <_vfprintf_r+0x52>
 8048dc1:	89 44 24 70          	mov    %eax,0x70(%esp)
 8048dc5:	c6 84 24 a5 00 00 00 	movb   $0x0,0xa5(%esp)
 8048dcc:	00 
 8048dcd:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 8048dd4:	83 c2 04             	add    $0x4,%edx
 8048dd7:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8048dde:	8b 09                	mov    (%ecx),%ecx
 8048de0:	89 4c 24 64          	mov    %ecx,0x64(%esp)
 8048de4:	85 c9                	test   %ecx,%ecx
 8048de6:	0f 84 cc 14 00 00    	je     804a2b8 <_vfprintf_r+0x1c14>
 8048dec:	85 db                	test   %ebx,%ebx
 8048dee:	0f 88 a8 13 00 00    	js     804a19c <_vfprintf_r+0x1af8>
 8048df4:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8048df8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048dff:	00 
 8048e00:	8b 44 24 64          	mov    0x64(%esp),%eax
 8048e04:	89 04 24             	mov    %eax,(%esp)
 8048e07:	89 54 24 34          	mov    %edx,0x34(%esp)
 8048e0b:	e8 d0 42 00 00       	call   804d0e0 <memchr>
 8048e10:	85 c0                	test   %eax,%eax
 8048e12:	8b 54 24 34          	mov    0x34(%esp),%edx
 8048e16:	0f 84 b6 16 00 00    	je     804a4d2 <_vfprintf_r+0x1e2e>
 8048e1c:	2b 44 24 64          	sub    0x64(%esp),%eax
 8048e20:	89 44 24 58          	mov    %eax,0x58(%esp)
 8048e24:	39 d8                	cmp    %ebx,%eax
 8048e26:	0f 8f 9c 12 00 00    	jg     804a0c8 <_vfprintf_r+0x1a24>
 8048e2c:	8b 44 24 58          	mov    0x58(%esp),%eax
 8048e30:	89 44 24 50          	mov    %eax,0x50(%esp)
 8048e34:	85 c0                	test   %eax,%eax
 8048e36:	0f 88 84 13 00 00    	js     804a1c0 <_vfprintf_r+0x1b1c>
 8048e3c:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 8048e43:	88 4c 24 54          	mov    %cl,0x54(%esp)
 8048e47:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 8048e4e:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 8048e55:	00 
 8048e56:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 8048e5d:	00 00 00 00 
 8048e61:	e9 b9 00 00 00       	jmp    8048f1f <_vfprintf_r+0x87b>
 8048e66:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8048e6d:	8b 08                	mov    (%eax),%ecx
 8048e6f:	83 4c 24 4c 02       	orl    $0x2,0x4c(%esp)
 8048e74:	c6 84 24 a6 00 00 00 	movb   $0x30,0xa6(%esp)
 8048e7b:	30 
 8048e7c:	c6 84 24 a7 00 00 00 	movb   $0x78,0xa7(%esp)
 8048e83:	78 
 8048e84:	83 c0 04             	add    $0x4,%eax
 8048e87:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8048e8e:	c7 84 24 94 00 00 00 	movl   $0x80504df,0x94(%esp)
 8048e95:	df 04 05 08 
 8048e99:	b0 02                	mov    $0x2,%al
 8048e9b:	c7 44 24 70 78 00 00 	movl   $0x78,0x70(%esp)
 8048ea2:	00 
 8048ea3:	90                   	nop
 8048ea4:	c6 84 24 a5 00 00 00 	movb   $0x0,0xa5(%esp)
 8048eab:	00 
 8048eac:	c6 44 24 54 00       	movb   $0x0,0x54(%esp)
 8048eb1:	85 db                	test   %ebx,%ebx
 8048eb3:	78 08                	js     8048ebd <_vfprintf_r+0x819>
 8048eb5:	81 64 24 4c 7f ff ff 	andl   $0xffffff7f,0x4c(%esp)
 8048ebc:	ff 
 8048ebd:	85 c9                	test   %ecx,%ecx
 8048ebf:	0f 85 ff 03 00 00    	jne    80492c4 <_vfprintf_r+0xc20>
 8048ec5:	85 db                	test   %ebx,%ebx
 8048ec7:	0f 85 f7 03 00 00    	jne    80492c4 <_vfprintf_r+0xc20>
 8048ecd:	84 c0                	test   %al,%al
 8048ecf:	0f 85 ff 07 00 00    	jne    80496d4 <_vfprintf_r+0x1030>
 8048ed5:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8048eda:	0f 84 f4 07 00 00    	je     80496d4 <_vfprintf_r+0x1030>
 8048ee0:	c6 84 24 f7 00 00 00 	movb   $0x30,0xf7(%esp)
 8048ee7:	30 
 8048ee8:	8d 84 24 f7 00 00 00 	lea    0xf7(%esp),%eax
 8048eef:	8b 4c 24 44          	mov    0x44(%esp),%ecx
 8048ef3:	29 c1                	sub    %eax,%ecx
 8048ef5:	89 4c 24 58          	mov    %ecx,0x58(%esp)
 8048ef9:	89 44 24 64          	mov    %eax,0x64(%esp)
 8048efd:	8d 76 00             	lea    0x0(%esi),%esi
 8048f00:	8b 44 24 58          	mov    0x58(%esp),%eax
 8048f04:	89 44 24 50          	mov    %eax,0x50(%esp)
 8048f08:	39 d8                	cmp    %ebx,%eax
 8048f0a:	7d 04                	jge    8048f10 <_vfprintf_r+0x86c>
 8048f0c:	89 5c 24 50          	mov    %ebx,0x50(%esp)
 8048f10:	89 5c 24 74          	mov    %ebx,0x74(%esp)
 8048f14:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 8048f1b:	00 00 00 00 
 8048f1f:	80 7c 24 54 00       	cmpb   $0x0,0x54(%esp)
 8048f24:	0f 84 56 f9 ff ff    	je     8048880 <_vfprintf_r+0x1dc>
 8048f2a:	ff 44 24 50          	incl   0x50(%esp)
 8048f2e:	e9 4d f9 ff ff       	jmp    8048880 <_vfprintf_r+0x1dc>
 8048f33:	84 c9                	test   %cl,%cl
 8048f35:	0f 85 df f8 ff ff    	jne    804881a <_vfprintf_r+0x176>
 8048f3b:	b1 20                	mov    $0x20,%cl
 8048f3d:	e9 d8 f8 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048f42:	83 4c 24 4c 01       	orl    $0x1,0x4c(%esp)
 8048f47:	e9 ce f8 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048f4c:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8048f53:	83 c0 04             	add    $0x4,%eax
 8048f56:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 8048f5d:	8b 12                	mov    (%edx),%edx
 8048f5f:	89 54 24 60          	mov    %edx,0x60(%esp)
 8048f63:	85 d2                	test   %edx,%edx
 8048f65:	0f 88 b2 fc ff ff    	js     8048c1d <_vfprintf_r+0x579>
 8048f6b:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8048f72:	e9 a3 f8 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048f77:	b1 2b                	mov    $0x2b,%cl
 8048f79:	e9 9c f8 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048f7e:	83 4c 24 4c 40       	orl    $0x40,0x4c(%esp)
 8048f83:	e9 92 f8 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8048f88:	89 44 24 70          	mov    %eax,0x70(%esp)
 8048f8c:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 8048f93:	c7 84 24 94 00 00 00 	movl   $0x80504df,0x94(%esp)
 8048f9a:	df 04 05 08 
 8048f9e:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8048fa3:	0f 84 2a 02 00 00    	je     80491d3 <_vfprintf_r+0xb2f>
 8048fa9:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8048fb0:	8b 08                	mov    (%eax),%ecx
 8048fb2:	83 c0 04             	add    $0x4,%eax
 8048fb5:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8048fbc:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8048fc1:	0f 84 ad 07 00 00    	je     8049774 <_vfprintf_r+0x10d0>
 8048fc7:	85 c9                	test   %ecx,%ecx
 8048fc9:	0f 84 a5 07 00 00    	je     8049774 <_vfprintf_r+0x10d0>
 8048fcf:	c6 84 24 a6 00 00 00 	movb   $0x30,0xa6(%esp)
 8048fd6:	30 
 8048fd7:	8a 44 24 70          	mov    0x70(%esp),%al
 8048fdb:	88 84 24 a7 00 00 00 	mov    %al,0xa7(%esp)
 8048fe2:	83 4c 24 4c 02       	orl    $0x2,0x4c(%esp)
 8048fe7:	b0 02                	mov    $0x2,%al
 8048fe9:	e9 b6 fe ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 8048fee:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 8048ff5:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8048ffa:	0f 84 86 0e 00 00    	je     8049e86 <_vfprintf_r+0x17e2>
 8049000:	8b 9c 24 8c 05 00 00 	mov    0x58c(%esp),%ebx
 8049007:	8b 03                	mov    (%ebx),%eax
 8049009:	8b 54 24 5c          	mov    0x5c(%esp),%edx
 804900d:	89 10                	mov    %edx,(%eax)
 804900f:	83 c3 04             	add    $0x4,%ebx
 8049012:	89 9c 24 8c 05 00 00 	mov    %ebx,0x58c(%esp)
 8049019:	e9 82 f7 ff ff       	jmp    80487a0 <_vfprintf_r+0xfc>
 804901e:	89 44 24 70          	mov    %eax,0x70(%esp)
 8049022:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 8049029:	83 4c 24 4c 10       	orl    $0x10,0x4c(%esp)
 804902e:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8049033:	0f 85 61 01 00 00    	jne    804919a <_vfprintf_r+0xaf6>
 8049039:	f6 44 24 4c 40       	testb  $0x40,0x4c(%esp)
 804903e:	0f 84 56 01 00 00    	je     804919a <_vfprintf_r+0xaf6>
 8049044:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 804904b:	0f bf 08             	movswl (%eax),%ecx
 804904e:	83 c0 04             	add    $0x4,%eax
 8049051:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8049058:	85 c9                	test   %ecx,%ecx
 804905a:	0f 88 23 0c 00 00    	js     8049c83 <_vfprintf_r+0x15df>
 8049060:	8a 84 24 a5 00 00 00 	mov    0xa5(%esp),%al
 8049067:	88 44 24 54          	mov    %al,0x54(%esp)
 804906b:	b0 01                	mov    $0x1,%al
 804906d:	e9 3f fe ff ff       	jmp    8048eb1 <_vfprintf_r+0x80d>
 8049072:	89 44 24 70          	mov    %eax,0x70(%esp)
 8049076:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 804907d:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8049084:	f6 44 24 4c 08       	testb  $0x8,0x4c(%esp)
 8049089:	0f 84 df 0d 00 00    	je     8049e6e <_vfprintf_r+0x17ca>
 804908f:	db 29                	fldt   (%ecx)
 8049091:	dd 9c 24 88 00 00 00 	fstpl  0x88(%esp)
 8049098:	83 c1 0c             	add    $0xc,%ecx
 804909b:	89 8c 24 8c 05 00 00 	mov    %ecx,0x58c(%esp)
 80490a2:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 80490a9:	dd 1c 24             	fstpl  (%esp)
 80490ac:	e8 ff 4d 00 00       	call   804deb0 <__fpclassifyd>
 80490b1:	48                   	dec    %eax
 80490b2:	0f 85 e1 0b 00 00    	jne    8049c99 <_vfprintf_r+0x15f5>
 80490b8:	d9 ee                	fldz   
 80490ba:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 80490c1:	d9 c9                	fxch   %st(1)
 80490c3:	da e9                	fucompp 
 80490c5:	df e0                	fnstsw %ax
 80490c7:	f6 c4 45             	test   $0x45,%ah
 80490ca:	0f 84 a8 12 00 00    	je     804a378 <_vfprintf_r+0x1cd4>
 80490d0:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 80490d7:	88 4c 24 54          	mov    %cl,0x54(%esp)
 80490db:	83 7c 24 70 47       	cmpl   $0x47,0x70(%esp)
 80490e0:	0f 8e 2d 10 00 00    	jle    804a113 <_vfprintf_r+0x1a6f>
 80490e6:	c7 44 24 64 c2 04 05 	movl   $0x80504c2,0x64(%esp)
 80490ed:	08 
 80490ee:	81 64 24 4c 7f ff ff 	andl   $0xffffff7f,0x4c(%esp)
 80490f5:	ff 
 80490f6:	c7 44 24 50 03 00 00 	movl   $0x3,0x50(%esp)
 80490fd:	00 
 80490fe:	c7 44 24 58 03 00 00 	movl   $0x3,0x58(%esp)
 8049105:	00 
 8049106:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804910d:	00 
 804910e:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 8049115:	00 00 00 00 
 8049119:	e9 01 fe ff ff       	jmp    8048f1f <_vfprintf_r+0x87b>
 804911e:	83 4c 24 4c 08       	orl    $0x8,0x4c(%esp)
 8049123:	e9 f2 f6 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 8049128:	89 44 24 70          	mov    %eax,0x70(%esp)
 804912c:	83 4c 24 4c 10       	orl    $0x10,0x4c(%esp)
 8049131:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8049136:	0f 84 35 08 00 00    	je     8049971 <_vfprintf_r+0x12cd>
 804913c:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8049143:	8b 08                	mov    (%eax),%ecx
 8049145:	83 c0 04             	add    $0x4,%eax
 8049148:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 804914f:	31 c0                	xor    %eax,%eax
 8049151:	e9 4e fd ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 8049156:	89 44 24 70          	mov    %eax,0x70(%esp)
 804915a:	83 4c 24 4c 10       	orl    $0x10,0x4c(%esp)
 804915f:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8049164:	0f 84 48 07 00 00    	je     80498b2 <_vfprintf_r+0x120e>
 804916a:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8049171:	8b 08                	mov    (%eax),%ecx
 8049173:	83 c0 04             	add    $0x4,%eax
 8049176:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 804917d:	b0 01                	mov    $0x1,%al
 804917f:	e9 20 fd ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 8049184:	89 44 24 70          	mov    %eax,0x70(%esp)
 8049188:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 804918f:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 8049194:	0f 84 9f fe ff ff    	je     8049039 <_vfprintf_r+0x995>
 804919a:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 80491a1:	8b 0a                	mov    (%edx),%ecx
 80491a3:	83 c2 04             	add    $0x4,%edx
 80491a6:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 80491ad:	e9 a6 fe ff ff       	jmp    8049058 <_vfprintf_r+0x9b4>
 80491b2:	89 44 24 70          	mov    %eax,0x70(%esp)
 80491b6:	88 8c 24 a5 00 00 00 	mov    %cl,0xa5(%esp)
 80491bd:	c7 84 24 94 00 00 00 	movl   $0x80504ce,0x94(%esp)
 80491c4:	ce 04 05 08 
 80491c8:	f6 44 24 4c 10       	testb  $0x10,0x4c(%esp)
 80491cd:	0f 85 d6 fd ff ff    	jne    8048fa9 <_vfprintf_r+0x905>
 80491d3:	f6 44 24 4c 40       	testb  $0x40,0x4c(%esp)
 80491d8:	0f 84 d2 0c 00 00    	je     8049eb0 <_vfprintf_r+0x180c>
 80491de:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 80491e5:	8b 09                	mov    (%ecx),%ecx
 80491e7:	89 4c 24 38          	mov    %ecx,0x38(%esp)
 80491eb:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 80491f1:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 80491f8:	83 c0 04             	add    $0x4,%eax
 80491fb:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 8049202:	e9 b5 fd ff ff       	jmp    8048fbc <_vfprintf_r+0x918>
 8049207:	89 44 24 70          	mov    %eax,0x70(%esp)
 804920b:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8049212:	8b 01                	mov    (%ecx),%eax
 8049214:	88 84 24 d0 00 00 00 	mov    %al,0xd0(%esp)
 804921b:	c6 84 24 a5 00 00 00 	movb   $0x0,0xa5(%esp)
 8049222:	00 
 8049223:	83 c1 04             	add    $0x4,%ecx
 8049226:	89 8c 24 8c 05 00 00 	mov    %ecx,0x58c(%esp)
 804922d:	e9 1a f6 ff ff       	jmp    804884c <_vfprintf_r+0x1a8>
 8049232:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%esp)
 8049239:	00 
 804923a:	8d 50 d0             	lea    -0x30(%eax),%edx
 804923d:	89 6c 24 50          	mov    %ebp,0x50(%esp)
 8049241:	31 ed                	xor    %ebp,%ebp
 8049243:	90                   	nop
 8049244:	8d 44 ad 00          	lea    0x0(%ebp,%ebp,4),%eax
 8049248:	8d 2c 42             	lea    (%edx,%eax,2),%ebp
 804924b:	0f be 06             	movsbl (%esi),%eax
 804924e:	46                   	inc    %esi
 804924f:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049252:	83 fa 09             	cmp    $0x9,%edx
 8049255:	76 ed                	jbe    8049244 <_vfprintf_r+0xba0>
 8049257:	89 6c 24 60          	mov    %ebp,0x60(%esp)
 804925b:	8b 6c 24 50          	mov    0x50(%esp),%ebp
 804925f:	e9 ba f5 ff ff       	jmp    804881e <_vfprintf_r+0x17a>
 8049264:	0f be 06             	movsbl (%esi),%eax
 8049267:	46                   	inc    %esi
 8049268:	83 f8 2a             	cmp    $0x2a,%eax
 804926b:	0f 84 7b 14 00 00    	je     804a6ec <_vfprintf_r+0x2048>
 8049271:	8d 50 d0             	lea    -0x30(%eax),%edx
 8049274:	31 db                	xor    %ebx,%ebx
 8049276:	83 fa 09             	cmp    $0x9,%edx
 8049279:	0f 87 9f f5 ff ff    	ja     804881e <_vfprintf_r+0x17a>
 804927f:	90                   	nop
 8049280:	8d 04 9b             	lea    (%ebx,%ebx,4),%eax
 8049283:	8d 1c 42             	lea    (%edx,%eax,2),%ebx
 8049286:	0f be 06             	movsbl (%esi),%eax
 8049289:	46                   	inc    %esi
 804928a:	8d 50 d0             	lea    -0x30(%eax),%edx
 804928d:	83 fa 09             	cmp    $0x9,%edx
 8049290:	76 ee                	jbe    8049280 <_vfprintf_r+0xbdc>
 8049292:	85 db                	test   %ebx,%ebx
 8049294:	0f 89 84 f5 ff ff    	jns    804881e <_vfprintf_r+0x17a>
 804929a:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804929f:	e9 7a f5 ff ff       	jmp    804881e <_vfprintf_r+0x17a>
 80492a4:	81 4c 24 4c 80 00 00 	orl    $0x80,0x4c(%esp)
 80492ab:	00 
 80492ac:	e9 69 f5 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 80492b1:	89 44 24 70          	mov    %eax,0x70(%esp)
 80492b5:	e9 77 fe ff ff       	jmp    8049131 <_vfprintf_r+0xa8d>
 80492ba:	89 44 24 70          	mov    %eax,0x70(%esp)
 80492be:	e9 9c fe ff ff       	jmp    804915f <_vfprintf_r+0xabb>
 80492c3:	90                   	nop
 80492c4:	3c 01                	cmp    $0x1,%al
 80492c6:	0f 84 58 04 00 00    	je     8049724 <_vfprintf_r+0x1080>
 80492cc:	3c 02                	cmp    $0x2,%al
 80492ce:	8d 84 24 f8 00 00 00 	lea    0xf8(%esp),%eax
 80492d5:	0f 84 11 04 00 00    	je     80496ec <_vfprintf_r+0x1048>
 80492db:	89 c2                	mov    %eax,%edx
 80492dd:	8d 76 00             	lea    0x0(%esi),%esi
 80492e0:	4a                   	dec    %edx
 80492e1:	89 c8                	mov    %ecx,%eax
 80492e3:	83 e0 07             	and    $0x7,%eax
 80492e6:	83 c0 30             	add    $0x30,%eax
 80492e9:	88 02                	mov    %al,(%edx)
 80492eb:	c1 e9 03             	shr    $0x3,%ecx
 80492ee:	75 f0                	jne    80492e0 <_vfprintf_r+0xc3c>
 80492f0:	89 54 24 64          	mov    %edx,0x64(%esp)
 80492f4:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 80492f9:	0f 85 a8 06 00 00    	jne    80499a7 <_vfprintf_r+0x1303>
 80492ff:	8b 4c 24 44          	mov    0x44(%esp),%ecx
 8049303:	29 d1                	sub    %edx,%ecx
 8049305:	89 4c 24 58          	mov    %ecx,0x58(%esp)
 8049309:	e9 f2 fb ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 804930e:	66 90                	xchg   %ax,%ax
 8049310:	83 7c 24 70 65       	cmpl   $0x65,0x70(%esp)
 8049315:	0f 8e e5 01 00 00    	jle    8049500 <_vfprintf_r+0xe5c>
 804931b:	d9 ee                	fldz   
 804931d:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 8049324:	da e9                	fucompp 
 8049326:	df e0                	fnstsw %ax
 8049328:	80 e4 45             	and    $0x45,%ah
 804932b:	80 f4 40             	xor    $0x40,%ah
 804932e:	0f 85 47 04 00 00    	jne    804977b <_vfprintf_r+0x10d7>
 8049334:	c7 45 00 f7 04 05 08 	movl   $0x80504f7,0x0(%ebp)
 804933b:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 8049342:	ff 84 24 cc 00 00 00 	incl   0xcc(%esp)
 8049349:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049350:	41                   	inc    %ecx
 8049351:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049358:	83 f9 07             	cmp    $0x7,%ecx
 804935b:	0f 8f b1 0b 00 00    	jg     8049f12 <_vfprintf_r+0x186e>
 8049361:	83 c5 08             	add    $0x8,%ebp
 8049364:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 8049368:	39 9c 24 a8 00 00 00 	cmp    %ebx,0xa8(%esp)
 804936f:	7c 0b                	jl     804937c <_vfprintf_r+0xcd8>
 8049371:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049376:	0f 84 6c f7 ff ff    	je     8048ae8 <_vfprintf_r+0x444>
 804937c:	8b 4c 24 78          	mov    0x78(%esp),%ecx
 8049380:	89 4d 00             	mov    %ecx,0x0(%ebp)
 8049383:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 804938a:	89 45 04             	mov    %eax,0x4(%ebp)
 804938d:	01 84 24 cc 00 00 00 	add    %eax,0xcc(%esp)
 8049394:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804939b:	41                   	inc    %ecx
 804939c:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80493a3:	83 f9 07             	cmp    $0x7,%ecx
 80493a6:	0f 8f ad 0d 00 00    	jg     804a159 <_vfprintf_r+0x1ab5>
 80493ac:	83 c5 08             	add    $0x8,%ebp
 80493af:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 80493b3:	4b                   	dec    %ebx
 80493b4:	85 db                	test   %ebx,%ebx
 80493b6:	0f 8e 2c f7 ff ff    	jle    8048ae8 <_vfprintf_r+0x444>
 80493bc:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80493c3:	83 fb 10             	cmp    $0x10,%ebx
 80493c6:	0f 8e 76 03 00 00    	jle    8049742 <_vfprintf_r+0x109e>
 80493cc:	89 74 24 58          	mov    %esi,0x58(%esp)
 80493d0:	89 de                	mov    %ebx,%esi
 80493d2:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 80493d9:	eb 10                	jmp    80493eb <_vfprintf_r+0xd47>
 80493db:	90                   	nop
 80493dc:	83 c5 08             	add    $0x8,%ebp
 80493df:	83 ee 10             	sub    $0x10,%esi
 80493e2:	83 fe 10             	cmp    $0x10,%esi
 80493e5:	0f 8e 51 03 00 00    	jle    804973c <_vfprintf_r+0x1098>
 80493eb:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 80493f2:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 80493f9:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8049400:	10 
 8049401:	41                   	inc    %ecx
 8049402:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049409:	83 f9 07             	cmp    $0x7,%ecx
 804940c:	7e ce                	jle    80493dc <_vfprintf_r+0xd38>
 804940e:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8049415:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049419:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804941d:	89 1c 24             	mov    %ebx,(%esp)
 8049420:	e8 27 4d 00 00       	call   804e14c <__sprint_r>
 8049425:	85 c0                	test   %eax,%eax
 8049427:	0f 85 2f f9 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804942d:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049434:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804943b:	eb a2                	jmp    80493df <_vfprintf_r+0xd3b>
 804943d:	8d 76 00             	lea    0x0(%esi),%esi
 8049440:	8b 5c 24 60          	mov    0x60(%esp),%ebx
 8049444:	2b 5c 24 50          	sub    0x50(%esp),%ebx
 8049448:	85 db                	test   %ebx,%ebx
 804944a:	0f 8e a1 f5 ff ff    	jle    80489f1 <_vfprintf_r+0x34d>
 8049450:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049457:	83 fb 10             	cmp    $0x10,%ebx
 804945a:	7e 79                	jle    80494d5 <_vfprintf_r+0xe31>
 804945c:	89 74 24 54          	mov    %esi,0x54(%esp)
 8049460:	89 de                	mov    %ebx,%esi
 8049462:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8049469:	eb 0c                	jmp    8049477 <_vfprintf_r+0xdd3>
 804946b:	90                   	nop
 804946c:	83 c5 08             	add    $0x8,%ebp
 804946f:	83 ee 10             	sub    $0x10,%esi
 8049472:	83 fe 10             	cmp    $0x10,%esi
 8049475:	7e 58                	jle    80494cf <_vfprintf_r+0xe2b>
 8049477:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 804947e:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8049485:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 804948c:	10 
 804948d:	41                   	inc    %ecx
 804948e:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049495:	83 f9 07             	cmp    $0x7,%ecx
 8049498:	7e d2                	jle    804946c <_vfprintf_r+0xdc8>
 804949a:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 80494a1:	89 44 24 08          	mov    %eax,0x8(%esp)
 80494a5:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80494a9:	89 1c 24             	mov    %ebx,(%esp)
 80494ac:	e8 9b 4c 00 00       	call   804e14c <__sprint_r>
 80494b1:	85 c0                	test   %eax,%eax
 80494b3:	0f 85 a3 f8 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 80494b9:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 80494c0:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80494c7:	83 ee 10             	sub    $0x10,%esi
 80494ca:	83 fe 10             	cmp    $0x10,%esi
 80494cd:	7f a8                	jg     8049477 <_vfprintf_r+0xdd3>
 80494cf:	89 f3                	mov    %esi,%ebx
 80494d1:	8b 74 24 54          	mov    0x54(%esp),%esi
 80494d5:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 80494dc:	89 5d 04             	mov    %ebx,0x4(%ebp)
 80494df:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 80494e6:	41                   	inc    %ecx
 80494e7:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80494ee:	83 f9 07             	cmp    $0x7,%ecx
 80494f1:	0f 8f 5a 07 00 00    	jg     8049c51 <_vfprintf_r+0x15ad>
 80494f7:	83 c5 08             	add    $0x8,%ebp
 80494fa:	e9 f2 f4 ff ff       	jmp    80489f1 <_vfprintf_r+0x34d>
 80494ff:	90                   	nop
 8049500:	8b 44 24 64          	mov    0x64(%esp),%eax
 8049504:	83 7c 24 7c 01       	cmpl   $0x1,0x7c(%esp)
 8049509:	0f 8e 62 06 00 00    	jle    8049b71 <_vfprintf_r+0x14cd>
 804950f:	89 45 00             	mov    %eax,0x0(%ebp)
 8049512:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 8049519:	ff 84 24 cc 00 00 00 	incl   0xcc(%esp)
 8049520:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049527:	41                   	inc    %ecx
 8049528:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804952f:	83 f9 07             	cmp    $0x7,%ecx
 8049532:	0f 8f 7d 06 00 00    	jg     8049bb5 <_vfprintf_r+0x1511>
 8049538:	83 c5 08             	add    $0x8,%ebp
 804953b:	8b 5c 24 78          	mov    0x78(%esp),%ebx
 804953f:	89 5d 00             	mov    %ebx,0x0(%ebp)
 8049542:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049549:	89 45 04             	mov    %eax,0x4(%ebp)
 804954c:	01 84 24 cc 00 00 00 	add    %eax,0xcc(%esp)
 8049553:	41                   	inc    %ecx
 8049554:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804955b:	83 f9 07             	cmp    $0x7,%ecx
 804955e:	0f 8f b4 06 00 00    	jg     8049c18 <_vfprintf_r+0x1574>
 8049564:	83 c5 08             	add    $0x8,%ebp
 8049567:	d9 ee                	fldz   
 8049569:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 8049570:	da e9                	fucompp 
 8049572:	df e0                	fnstsw %ax
 8049574:	80 e4 45             	and    $0x45,%ah
 8049577:	80 fc 40             	cmp    $0x40,%ah
 804957a:	0f 84 68 03 00 00    	je     80498e8 <_vfprintf_r+0x1244>
 8049580:	8b 44 24 64          	mov    0x64(%esp),%eax
 8049584:	40                   	inc    %eax
 8049585:	89 45 00             	mov    %eax,0x0(%ebp)
 8049588:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804958c:	48                   	dec    %eax
 804958d:	89 45 04             	mov    %eax,0x4(%ebp)
 8049590:	01 84 24 cc 00 00 00 	add    %eax,0xcc(%esp)
 8049597:	41                   	inc    %ecx
 8049598:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804959f:	83 f9 07             	cmp    $0x7,%ecx
 80495a2:	0f 8f 99 0a 00 00    	jg     804a041 <_vfprintf_r+0x199d>
 80495a8:	83 c5 08             	add    $0x8,%ebp
 80495ab:	8d 84 24 b6 00 00 00 	lea    0xb6(%esp),%eax
 80495b2:	89 45 00             	mov    %eax,0x0(%ebp)
 80495b5:	8b 9c 24 90 00 00 00 	mov    0x90(%esp),%ebx
 80495bc:	89 5d 04             	mov    %ebx,0x4(%ebp)
 80495bf:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 80495c6:	41                   	inc    %ecx
 80495c7:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80495ce:	83 f9 07             	cmp    $0x7,%ecx
 80495d1:	0f 8e 0e f5 ff ff    	jle    8048ae5 <_vfprintf_r+0x441>
 80495d7:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 80495de:	89 44 24 08          	mov    %eax,0x8(%esp)
 80495e2:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80495e6:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 80495ed:	89 0c 24             	mov    %ecx,(%esp)
 80495f0:	e8 57 4b 00 00       	call   804e14c <__sprint_r>
 80495f5:	85 c0                	test   %eax,%eax
 80495f7:	0f 85 5f f7 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 80495fd:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049604:	e9 df f4 ff ff       	jmp    8048ae8 <_vfprintf_r+0x444>
 8049609:	8d 76 00             	lea    0x0(%esi),%esi
 804960c:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 8049613:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049617:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804961b:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049622:	89 0c 24             	mov    %ecx,(%esp)
 8049625:	e8 22 4b 00 00       	call   804e14c <__sprint_r>
 804962a:	85 c0                	test   %eax,%eax
 804962c:	0f 84 c3 f5 ff ff    	je     8048bf5 <_vfprintf_r+0x551>
 8049632:	e9 25 f7 ff ff       	jmp    8048d5c <_vfprintf_r+0x6b8>
 8049637:	90                   	nop
 8049638:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804963f:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049643:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049647:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804964e:	89 0c 24             	mov    %ecx,(%esp)
 8049651:	e8 f6 4a 00 00       	call   804e14c <__sprint_r>
 8049656:	85 c0                	test   %eax,%eax
 8049658:	0f 85 fe f6 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804965e:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049665:	e9 40 f4 ff ff       	jmp    8048aaa <_vfprintf_r+0x406>
 804966a:	66 90                	xchg   %ax,%ax
 804966c:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 8049673:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049677:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804967b:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049682:	89 0c 24             	mov    %ecx,(%esp)
 8049685:	e8 c2 4a 00 00       	call   804e14c <__sprint_r>
 804968a:	85 c0                	test   %eax,%eax
 804968c:	0f 85 ca f6 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049692:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049699:	e9 45 f3 ff ff       	jmp    80489e3 <_vfprintf_r+0x33f>
 804969e:	66 90                	xchg   %ax,%ax
 80496a0:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 80496a7:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496ab:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80496af:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 80496b6:	89 0c 24             	mov    %ecx,(%esp)
 80496b9:	e8 8e 4a 00 00       	call   804e14c <__sprint_r>
 80496be:	85 c0                	test   %eax,%eax
 80496c0:	0f 85 96 f6 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 80496c6:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 80496cd:	e9 d5 f2 ff ff       	jmp    80489a7 <_vfprintf_r+0x303>
 80496d2:	66 90                	xchg   %ax,%ax
 80496d4:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 80496db:	00 
 80496dc:	8d 84 24 f8 00 00 00 	lea    0xf8(%esp),%eax
 80496e3:	89 44 24 64          	mov    %eax,0x64(%esp)
 80496e7:	e9 14 f8 ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 80496ec:	89 44 24 64          	mov    %eax,0x64(%esp)
 80496f0:	89 74 24 58          	mov    %esi,0x58(%esp)
 80496f4:	8b b4 24 94 00 00 00 	mov    0x94(%esp),%esi
 80496fb:	90                   	nop
 80496fc:	48                   	dec    %eax
 80496fd:	89 ca                	mov    %ecx,%edx
 80496ff:	83 e2 0f             	and    $0xf,%edx
 8049702:	8a 14 16             	mov    (%esi,%edx,1),%dl
 8049705:	88 10                	mov    %dl,(%eax)
 8049707:	c1 e9 04             	shr    $0x4,%ecx
 804970a:	75 f0                	jne    80496fc <_vfprintf_r+0x1058>
 804970c:	8b 74 24 58          	mov    0x58(%esp),%esi
 8049710:	89 44 24 64          	mov    %eax,0x64(%esp)
 8049714:	8b 54 24 44          	mov    0x44(%esp),%edx
 8049718:	29 c2                	sub    %eax,%edx
 804971a:	89 54 24 58          	mov    %edx,0x58(%esp)
 804971e:	e9 dd f7 ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 8049723:	90                   	nop
 8049724:	83 f9 09             	cmp    $0x9,%ecx
 8049727:	0f 87 9b 02 00 00    	ja     80499c8 <_vfprintf_r+0x1324>
 804972d:	83 c1 30             	add    $0x30,%ecx
 8049730:	88 8c 24 f7 00 00 00 	mov    %cl,0xf7(%esp)
 8049737:	e9 ac f7 ff ff       	jmp    8048ee8 <_vfprintf_r+0x844>
 804973c:	89 f3                	mov    %esi,%ebx
 804973e:	8b 74 24 58          	mov    0x58(%esp),%esi
 8049742:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049749:	89 5d 04             	mov    %ebx,0x4(%ebp)
 804974c:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 8049753:	41                   	inc    %ecx
 8049754:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804975b:	83 f9 07             	cmp    $0x7,%ecx
 804975e:	0f 8e 81 f3 ff ff    	jle    8048ae5 <_vfprintf_r+0x441>
 8049764:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804976b:	89 54 24 08          	mov    %edx,0x8(%esp)
 804976f:	e9 6e fe ff ff       	jmp    80495e2 <_vfprintf_r+0xf3e>
 8049774:	b0 02                	mov    $0x2,%al
 8049776:	e9 29 f7 ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 804977b:	8b 9c 24 a8 00 00 00 	mov    0xa8(%esp),%ebx
 8049782:	85 db                	test   %ebx,%ebx
 8049784:	0f 8e ba 07 00 00    	jle    8049f44 <_vfprintf_r+0x18a0>
 804978a:	8b 5c 24 64          	mov    0x64(%esp),%ebx
 804978e:	03 5c 24 7c          	add    0x7c(%esp),%ebx
 8049792:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 8049796:	2b 5c 24 64          	sub    0x64(%esp),%ebx
 804979a:	3b 9c 24 80 00 00 00 	cmp    0x80(%esp),%ebx
 80497a1:	7e 07                	jle    80497aa <_vfprintf_r+0x1106>
 80497a3:	8b 9c 24 80 00 00 00 	mov    0x80(%esp),%ebx
 80497aa:	85 db                	test   %ebx,%ebx
 80497ac:	7e 2c                	jle    80497da <_vfprintf_r+0x1136>
 80497ae:	8b 44 24 64          	mov    0x64(%esp),%eax
 80497b2:	89 45 00             	mov    %eax,0x0(%ebp)
 80497b5:	89 5d 04             	mov    %ebx,0x4(%ebp)
 80497b8:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 80497bf:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80497c6:	41                   	inc    %ecx
 80497c7:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 80497ce:	83 f9 07             	cmp    $0x7,%ecx
 80497d1:	0f 8f 41 0a 00 00    	jg     804a218 <_vfprintf_r+0x1b74>
 80497d7:	83 c5 08             	add    $0x8,%ebp
 80497da:	85 db                	test   %ebx,%ebx
 80497dc:	0f 88 2f 0a 00 00    	js     804a211 <_vfprintf_r+0x1b6d>
 80497e2:	8b 94 24 80 00 00 00 	mov    0x80(%esp),%edx
 80497e9:	29 da                	sub    %ebx,%edx
 80497eb:	89 d3                	mov    %edx,%ebx
 80497ed:	85 d2                	test   %edx,%edx
 80497ef:	0f 8e 46 02 00 00    	jle    8049a3b <_vfprintf_r+0x1397>
 80497f5:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 80497fc:	83 fa 10             	cmp    $0x10,%edx
 80497ff:	0f 8e e3 06 00 00    	jle    8049ee8 <_vfprintf_r+0x1844>
 8049805:	89 74 24 54          	mov    %esi,0x54(%esp)
 8049809:	89 d6                	mov    %edx,%esi
 804980b:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8049812:	eb 0f                	jmp    8049823 <_vfprintf_r+0x117f>
 8049814:	83 c5 08             	add    $0x8,%ebp
 8049817:	83 ee 10             	sub    $0x10,%esi
 804981a:	83 fe 10             	cmp    $0x10,%esi
 804981d:	0f 8e bf 06 00 00    	jle    8049ee2 <_vfprintf_r+0x183e>
 8049823:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 804982a:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8049831:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8049838:	10 
 8049839:	41                   	inc    %ecx
 804983a:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049841:	83 f9 07             	cmp    $0x7,%ecx
 8049844:	7e ce                	jle    8049814 <_vfprintf_r+0x1170>
 8049846:	8d 8c 24 c4 00 00 00 	lea    0xc4(%esp),%ecx
 804984d:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8049851:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049855:	89 1c 24             	mov    %ebx,(%esp)
 8049858:	e8 ef 48 00 00       	call   804e14c <__sprint_r>
 804985d:	85 c0                	test   %eax,%eax
 804985f:	0f 85 f7 f4 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049865:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804986c:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049873:	eb a2                	jmp    8049817 <_vfprintf_r+0x1173>
 8049875:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 804987c:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049880:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049884:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804988b:	89 0c 24             	mov    %ecx,(%esp)
 804988e:	e8 b9 48 00 00       	call   804e14c <__sprint_r>
 8049893:	85 c0                	test   %eax,%eax
 8049895:	0f 85 c1 f4 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804989b:	8a 9c 24 a5 00 00 00 	mov    0xa5(%esp),%bl
 80498a2:	88 5c 24 54          	mov    %bl,0x54(%esp)
 80498a6:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 80498ad:	e9 bb f0 ff ff       	jmp    804896d <_vfprintf_r+0x2c9>
 80498b2:	f6 44 24 4c 40       	testb  $0x40,0x4c(%esp)
 80498b7:	0f 84 97 05 00 00    	je     8049e54 <_vfprintf_r+0x17b0>
 80498bd:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 80498c4:	8b 09                	mov    (%ecx),%ecx
 80498c6:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 80498ca:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 80498d0:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 80498d7:	83 c0 04             	add    $0x4,%eax
 80498da:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 80498e1:	b0 01                	mov    $0x1,%al
 80498e3:	e9 bc f5 ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 80498e8:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 80498ec:	4b                   	dec    %ebx
 80498ed:	85 db                	test   %ebx,%ebx
 80498ef:	0f 8e b6 fc ff ff    	jle    80495ab <_vfprintf_r+0xf07>
 80498f5:	83 fb 10             	cmp    $0x10,%ebx
 80498f8:	0f 8e f6 02 00 00    	jle    8049bf4 <_vfprintf_r+0x1550>
 80498fe:	89 74 24 58          	mov    %esi,0x58(%esp)
 8049902:	89 de                	mov    %ebx,%esi
 8049904:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 804990b:	eb 12                	jmp    804991f <_vfprintf_r+0x127b>
 804990d:	8d 76 00             	lea    0x0(%esi),%esi
 8049910:	83 c5 08             	add    $0x8,%ebp
 8049913:	83 ee 10             	sub    $0x10,%esi
 8049916:	83 fe 10             	cmp    $0x10,%esi
 8049919:	0f 8e cf 02 00 00    	jle    8049bee <_vfprintf_r+0x154a>
 804991f:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049926:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 804992d:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8049934:	10 
 8049935:	41                   	inc    %ecx
 8049936:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804993d:	83 f9 07             	cmp    $0x7,%ecx
 8049940:	7e ce                	jle    8049910 <_vfprintf_r+0x126c>
 8049942:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8049949:	89 44 24 08          	mov    %eax,0x8(%esp)
 804994d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049951:	89 1c 24             	mov    %ebx,(%esp)
 8049954:	e8 f3 47 00 00       	call   804e14c <__sprint_r>
 8049959:	85 c0                	test   %eax,%eax
 804995b:	0f 85 fb f3 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049961:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049968:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804996f:	eb a2                	jmp    8049913 <_vfprintf_r+0x126f>
 8049971:	f6 44 24 4c 40       	testb  $0x40,0x4c(%esp)
 8049976:	0f 84 4c 05 00 00    	je     8049ec8 <_vfprintf_r+0x1824>
 804997c:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8049983:	8b 09                	mov    (%ecx),%ecx
 8049985:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 8049989:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804998f:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 8049996:	83 c0 04             	add    $0x4,%eax
 8049999:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 80499a0:	31 c0                	xor    %eax,%eax
 80499a2:	e9 fd f4 ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 80499a7:	3c 30                	cmp    $0x30,%al
 80499a9:	0f 84 dc 07 00 00    	je     804a18b <_vfprintf_r+0x1ae7>
 80499af:	ff 4c 24 64          	decl   0x64(%esp)
 80499b3:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 80499b7:	8b 54 24 44          	mov    0x44(%esp),%edx
 80499bb:	2b 54 24 64          	sub    0x64(%esp),%edx
 80499bf:	89 54 24 58          	mov    %edx,0x58(%esp)
 80499c3:	e9 38 f5 ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 80499c8:	8d 84 24 f8 00 00 00 	lea    0xf8(%esp),%eax
 80499cf:	89 74 24 50          	mov    %esi,0x50(%esp)
 80499d3:	89 c6                	mov    %eax,%esi
 80499d5:	8d 76 00             	lea    0x0(%esi),%esi
 80499d8:	4e                   	dec    %esi
 80499d9:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
 80499de:	f7 e1                	mul    %ecx
 80499e0:	c1 ea 03             	shr    $0x3,%edx
 80499e3:	8d 04 92             	lea    (%edx,%edx,4),%eax
 80499e6:	d1 e0                	shl    %eax
 80499e8:	29 c1                	sub    %eax,%ecx
 80499ea:	83 c1 30             	add    $0x30,%ecx
 80499ed:	88 0e                	mov    %cl,(%esi)
 80499ef:	89 d1                	mov    %edx,%ecx
 80499f1:	85 d2                	test   %edx,%edx
 80499f3:	75 e3                	jne    80499d8 <_vfprintf_r+0x1334>
 80499f5:	89 74 24 64          	mov    %esi,0x64(%esp)
 80499f9:	8b 74 24 50          	mov    0x50(%esp),%esi
 80499fd:	8b 54 24 44          	mov    0x44(%esp),%edx
 8049a01:	2b 54 24 64          	sub    0x64(%esp),%edx
 8049a05:	89 54 24 58          	mov    %edx,0x58(%esp)
 8049a09:	e9 f2 f4 ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 8049a0e:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 8049a15:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049a19:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049a1d:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049a24:	89 0c 24             	mov    %ecx,(%esp)
 8049a27:	e8 20 47 00 00       	call   804e14c <__sprint_r>
 8049a2c:	85 c0                	test   %eax,%eax
 8049a2e:	0f 85 28 f3 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049a34:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049a3b:	8b 54 24 64          	mov    0x64(%esp),%edx
 8049a3f:	03 94 24 80 00 00 00 	add    0x80(%esp),%edx
 8049a46:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 8049a4d:	3b 44 24 7c          	cmp    0x7c(%esp),%eax
 8049a51:	0f 8c e2 00 00 00    	jl     8049b39 <_vfprintf_r+0x1495>
 8049a57:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049a5c:	0f 85 d7 00 00 00    	jne    8049b39 <_vfprintf_r+0x1495>
 8049a62:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 8049a66:	29 d1                	sub    %edx,%ecx
 8049a68:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 8049a6c:	29 c3                	sub    %eax,%ebx
 8049a6e:	89 d8                	mov    %ebx,%eax
 8049a70:	39 cb                	cmp    %ecx,%ebx
 8049a72:	7e 02                	jle    8049a76 <_vfprintf_r+0x13d2>
 8049a74:	89 cb                	mov    %ecx,%ebx
 8049a76:	85 db                	test   %ebx,%ebx
 8049a78:	7e 28                	jle    8049aa2 <_vfprintf_r+0x13fe>
 8049a7a:	89 55 00             	mov    %edx,0x0(%ebp)
 8049a7d:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8049a80:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 8049a87:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049a8e:	41                   	inc    %ecx
 8049a8f:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049a96:	83 f9 07             	cmp    $0x7,%ecx
 8049a99:	0f 8f 6d 08 00 00    	jg     804a30c <_vfprintf_r+0x1c68>
 8049a9f:	83 c5 08             	add    $0x8,%ebp
 8049aa2:	85 db                	test   %ebx,%ebx
 8049aa4:	0f 88 5b 08 00 00    	js     804a305 <_vfprintf_r+0x1c61>
 8049aaa:	29 d8                	sub    %ebx,%eax
 8049aac:	89 c3                	mov    %eax,%ebx
 8049aae:	85 c0                	test   %eax,%eax
 8049ab0:	0f 8e 32 f0 ff ff    	jle    8048ae8 <_vfprintf_r+0x444>
 8049ab6:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049abd:	83 f8 10             	cmp    $0x10,%eax
 8049ac0:	0f 8e 7c fc ff ff    	jle    8049742 <_vfprintf_r+0x109e>
 8049ac6:	89 74 24 58          	mov    %esi,0x58(%esp)
 8049aca:	89 c6                	mov    %eax,%esi
 8049acc:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8049ad3:	eb 12                	jmp    8049ae7 <_vfprintf_r+0x1443>
 8049ad5:	8d 76 00             	lea    0x0(%esi),%esi
 8049ad8:	83 c5 08             	add    $0x8,%ebp
 8049adb:	83 ee 10             	sub    $0x10,%esi
 8049ade:	83 fe 10             	cmp    $0x10,%esi
 8049ae1:	0f 8e 55 fc ff ff    	jle    804973c <_vfprintf_r+0x1098>
 8049ae7:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049aee:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8049af5:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 8049afc:	10 
 8049afd:	41                   	inc    %ecx
 8049afe:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049b05:	83 f9 07             	cmp    $0x7,%ecx
 8049b08:	7e ce                	jle    8049ad8 <_vfprintf_r+0x1434>
 8049b0a:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8049b11:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049b15:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049b19:	89 1c 24             	mov    %ebx,(%esp)
 8049b1c:	e8 2b 46 00 00       	call   804e14c <__sprint_r>
 8049b21:	85 c0                	test   %eax,%eax
 8049b23:	0f 85 33 f2 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049b29:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049b30:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049b37:	eb a2                	jmp    8049adb <_vfprintf_r+0x1437>
 8049b39:	8b 5c 24 78          	mov    0x78(%esp),%ebx
 8049b3d:	89 5d 00             	mov    %ebx,0x0(%ebp)
 8049b40:	8b 8c 24 84 00 00 00 	mov    0x84(%esp),%ecx
 8049b47:	89 4d 04             	mov    %ecx,0x4(%ebp)
 8049b4a:	01 8c 24 cc 00 00 00 	add    %ecx,0xcc(%esp)
 8049b51:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049b58:	41                   	inc    %ecx
 8049b59:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049b60:	83 f9 07             	cmp    $0x7,%ecx
 8049b63:	0f 8f 0e 07 00 00    	jg     804a277 <_vfprintf_r+0x1bd3>
 8049b69:	83 c5 08             	add    $0x8,%ebp
 8049b6c:	e9 f1 fe ff ff       	jmp    8049a62 <_vfprintf_r+0x13be>
 8049b71:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049b76:	0f 85 93 f9 ff ff    	jne    804950f <_vfprintf_r+0xe6b>
 8049b7c:	89 45 00             	mov    %eax,0x0(%ebp)
 8049b7f:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 8049b86:	ff 84 24 cc 00 00 00 	incl   0xcc(%esp)
 8049b8d:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049b94:	41                   	inc    %ecx
 8049b95:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049b9c:	83 f9 07             	cmp    $0x7,%ecx
 8049b9f:	0f 8e 03 fa ff ff    	jle    80495a8 <_vfprintf_r+0xf04>
 8049ba5:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 8049bac:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049bb0:	e9 97 04 00 00       	jmp    804a04c <_vfprintf_r+0x19a8>
 8049bb5:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 8049bbc:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049bc0:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049bc4:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049bcb:	89 0c 24             	mov    %ecx,(%esp)
 8049bce:	e8 79 45 00 00       	call   804e14c <__sprint_r>
 8049bd3:	85 c0                	test   %eax,%eax
 8049bd5:	0f 85 81 f1 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049bdb:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049be2:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049be9:	e9 4d f9 ff ff       	jmp    804953b <_vfprintf_r+0xe97>
 8049bee:	89 f3                	mov    %esi,%ebx
 8049bf0:	8b 74 24 58          	mov    0x58(%esp),%esi
 8049bf4:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049bfb:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8049bfe:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 8049c05:	41                   	inc    %ecx
 8049c06:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049c0d:	83 f9 07             	cmp    $0x7,%ecx
 8049c10:	0f 8e 92 f9 ff ff    	jle    80495a8 <_vfprintf_r+0xf04>
 8049c16:	eb 8d                	jmp    8049ba5 <_vfprintf_r+0x1501>
 8049c18:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 8049c1f:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049c23:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049c27:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049c2e:	89 0c 24             	mov    %ecx,(%esp)
 8049c31:	e8 16 45 00 00       	call   804e14c <__sprint_r>
 8049c36:	85 c0                	test   %eax,%eax
 8049c38:	0f 85 1e f1 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049c3e:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049c45:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049c4c:	e9 16 f9 ff ff       	jmp    8049567 <_vfprintf_r+0xec3>
 8049c51:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 8049c58:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049c5c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049c60:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049c67:	89 0c 24             	mov    %ecx,(%esp)
 8049c6a:	e8 dd 44 00 00       	call   804e14c <__sprint_r>
 8049c6f:	85 c0                	test   %eax,%eax
 8049c71:	0f 85 e5 f0 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049c77:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049c7e:	e9 6e ed ff ff       	jmp    80489f1 <_vfprintf_r+0x34d>
 8049c83:	f7 d9                	neg    %ecx
 8049c85:	c6 84 24 a5 00 00 00 	movb   $0x2d,0xa5(%esp)
 8049c8c:	2d 
 8049c8d:	c6 44 24 54 2d       	movb   $0x2d,0x54(%esp)
 8049c92:	b0 01                	mov    $0x1,%al
 8049c94:	e9 18 f2 ff ff       	jmp    8048eb1 <_vfprintf_r+0x80d>
 8049c99:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 8049ca0:	dd 1c 24             	fstpl  (%esp)
 8049ca3:	e8 08 42 00 00       	call   804deb0 <__fpclassifyd>
 8049ca8:	85 c0                	test   %eax,%eax
 8049caa:	0f 84 ca 03 00 00    	je     804a07a <_vfprintf_r+0x19d6>
 8049cb0:	83 fb ff             	cmp    $0xffffffff,%ebx
 8049cb3:	0f 84 9d 08 00 00    	je     804a556 <_vfprintf_r+0x1eb2>
 8049cb9:	83 7c 24 70 67       	cmpl   $0x67,0x70(%esp)
 8049cbe:	0f 84 40 08 00 00    	je     804a504 <_vfprintf_r+0x1e60>
 8049cc4:	83 7c 24 70 47       	cmpl   $0x47,0x70(%esp)
 8049cc9:	0f 84 35 08 00 00    	je     804a504 <_vfprintf_r+0x1e60>
 8049ccf:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
 8049cd3:	80 cd 01             	or     $0x1,%ch
 8049cd6:	89 4c 24 68          	mov    %ecx,0x68(%esp)
 8049cda:	8b 94 24 8c 00 00 00 	mov    0x8c(%esp),%edx
 8049ce1:	dd 84 24 88 00 00 00 	fldl   0x88(%esp)
 8049ce8:	85 d2                	test   %edx,%edx
 8049cea:	0f 88 70 08 00 00    	js     804a560 <_vfprintf_r+0x1ebc>
 8049cf0:	c6 44 24 54 00       	movb   $0x0,0x54(%esp)
 8049cf5:	83 7c 24 70 66       	cmpl   $0x66,0x70(%esp)
 8049cfa:	0f 84 65 07 00 00    	je     804a465 <_vfprintf_r+0x1dc1>
 8049d00:	83 7c 24 70 46       	cmpl   $0x46,0x70(%esp)
 8049d05:	0f 84 5a 07 00 00    	je     804a465 <_vfprintf_r+0x1dc1>
 8049d0b:	83 7c 24 70 65       	cmpl   $0x65,0x70(%esp)
 8049d10:	0f 84 84 08 00 00    	je     804a59a <_vfprintf_r+0x1ef6>
 8049d16:	83 7c 24 70 45       	cmpl   $0x45,0x70(%esp)
 8049d1b:	0f 84 79 08 00 00    	je     804a59a <_vfprintf_r+0x1ef6>
 8049d21:	89 d9                	mov    %ebx,%ecx
 8049d23:	8d 84 24 b0 00 00 00 	lea    0xb0(%esp),%eax
 8049d2a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049d2e:	8d 84 24 ac 00 00 00 	lea    0xac(%esp),%eax
 8049d35:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049d39:	8d 84 24 a8 00 00 00 	lea    0xa8(%esp),%eax
 8049d40:	89 44 24 14          	mov    %eax,0x14(%esp)
 8049d44:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049d48:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 8049d4f:	00 
 8049d50:	dd 54 24 04          	fstl   0x4(%esp)
 8049d54:	8b 84 24 80 05 00 00 	mov    0x580(%esp),%eax
 8049d5b:	89 04 24             	mov    %eax,(%esp)
 8049d5e:	89 4c 24 34          	mov    %ecx,0x34(%esp)
 8049d62:	dd 5c 24 20          	fstpl  0x20(%esp)
 8049d66:	e8 85 0e 00 00       	call   804abf0 <_dtoa_r>
 8049d6b:	89 44 24 64          	mov    %eax,0x64(%esp)
 8049d6f:	83 7c 24 70 67       	cmpl   $0x67,0x70(%esp)
 8049d74:	8b 4c 24 34          	mov    0x34(%esp),%ecx
 8049d78:	dd 44 24 20          	fldl   0x20(%esp)
 8049d7c:	74 07                	je     8049d85 <_vfprintf_r+0x16e1>
 8049d7e:	83 7c 24 70 47       	cmpl   $0x47,0x70(%esp)
 8049d83:	75 0b                	jne    8049d90 <_vfprintf_r+0x16ec>
 8049d85:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049d8a:	0f 84 12 08 00 00    	je     804a5a2 <_vfprintf_r+0x1efe>
 8049d90:	8b 54 24 64          	mov    0x64(%esp),%edx
 8049d94:	01 ca                	add    %ecx,%edx
 8049d96:	83 7c 24 70 46       	cmpl   $0x46,0x70(%esp)
 8049d9b:	0f 84 16 07 00 00    	je     804a4b7 <_vfprintf_r+0x1e13>
 8049da1:	d9 ee                	fldz   
 8049da3:	d9 c9                	fxch   %st(1)
 8049da5:	da e9                	fucompp 
 8049da7:	df e0                	fnstsw %ax
 8049da9:	80 e4 45             	and    $0x45,%ah
 8049dac:	80 fc 40             	cmp    $0x40,%ah
 8049daf:	74 1e                	je     8049dcf <_vfprintf_r+0x172b>
 8049db1:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 8049db8:	39 c2                	cmp    %eax,%edx
 8049dba:	0f 86 a3 09 00 00    	jbe    804a763 <_vfprintf_r+0x20bf>
 8049dc0:	c6 00 30             	movb   $0x30,(%eax)
 8049dc3:	40                   	inc    %eax
 8049dc4:	89 84 24 b0 00 00 00 	mov    %eax,0xb0(%esp)
 8049dcb:	39 d0                	cmp    %edx,%eax
 8049dcd:	75 f1                	jne    8049dc0 <_vfprintf_r+0x171c>
 8049dcf:	2b 54 24 64          	sub    0x64(%esp),%edx
 8049dd3:	89 54 24 7c          	mov    %edx,0x7c(%esp)
 8049dd7:	83 7c 24 70 67       	cmpl   $0x67,0x70(%esp)
 8049ddc:	0f 84 a8 05 00 00    	je     804a38a <_vfprintf_r+0x1ce6>
 8049de2:	83 7c 24 70 47       	cmpl   $0x47,0x70(%esp)
 8049de7:	0f 84 9d 05 00 00    	je     804a38a <_vfprintf_r+0x1ce6>
 8049ded:	83 7c 24 70 66       	cmpl   $0x66,0x70(%esp)
 8049df2:	0f 85 5f 09 00 00    	jne    804a757 <_vfprintf_r+0x20b3>
 8049df8:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 8049dff:	85 c0                	test   %eax,%eax
 8049e01:	0f 8e a1 08 00 00    	jle    804a6a8 <_vfprintf_r+0x2004>
 8049e07:	85 db                	test   %ebx,%ebx
 8049e09:	0f 85 76 08 00 00    	jne    804a685 <_vfprintf_r+0x1fe1>
 8049e0f:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049e14:	0f 85 6b 08 00 00    	jne    804a685 <_vfprintf_r+0x1fe1>
 8049e1a:	89 44 24 50          	mov    %eax,0x50(%esp)
 8049e1e:	89 44 24 58          	mov    %eax,0x58(%esp)
 8049e22:	89 84 24 80 00 00 00 	mov    %eax,0x80(%esp)
 8049e29:	80 7c 24 54 00       	cmpb   $0x0,0x54(%esp)
 8049e2e:	0f 85 22 05 00 00    	jne    804a356 <_vfprintf_r+0x1cb2>
 8049e34:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 8049e3b:	88 4c 24 54          	mov    %cl,0x54(%esp)
 8049e3f:	8b 5c 24 68          	mov    0x68(%esp),%ebx
 8049e43:	89 5c 24 4c          	mov    %ebx,0x4c(%esp)
 8049e47:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 8049e4e:	00 
 8049e4f:	e9 cb f0 ff ff       	jmp    8048f1f <_vfprintf_r+0x87b>
 8049e54:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 8049e5b:	8b 0a                	mov    (%edx),%ecx
 8049e5d:	83 c2 04             	add    $0x4,%edx
 8049e60:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 8049e67:	b0 01                	mov    $0x1,%al
 8049e69:	e9 36 f0 ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 8049e6e:	dd 01                	fldl   (%ecx)
 8049e70:	dd 9c 24 88 00 00 00 	fstpl  0x88(%esp)
 8049e77:	83 c1 08             	add    $0x8,%ecx
 8049e7a:	89 8c 24 8c 05 00 00 	mov    %ecx,0x58c(%esp)
 8049e81:	e9 1c f2 ff ff       	jmp    80490a2 <_vfprintf_r+0x9fe>
 8049e86:	8b 8c 24 8c 05 00 00 	mov    0x58c(%esp),%ecx
 8049e8d:	8b 01                	mov    (%ecx),%eax
 8049e8f:	f6 44 24 4c 40       	testb  $0x40,0x4c(%esp)
 8049e94:	0f 84 64 02 00 00    	je     804a0fe <_vfprintf_r+0x1a5a>
 8049e9a:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 8049e9e:	66 89 18             	mov    %bx,(%eax)
 8049ea1:	83 c1 04             	add    $0x4,%ecx
 8049ea4:	89 8c 24 8c 05 00 00 	mov    %ecx,0x58c(%esp)
 8049eab:	e9 f0 e8 ff ff       	jmp    80487a0 <_vfprintf_r+0xfc>
 8049eb0:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 8049eb7:	8b 0a                	mov    (%edx),%ecx
 8049eb9:	83 c2 04             	add    $0x4,%edx
 8049ebc:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 8049ec3:	e9 f4 f0 ff ff       	jmp    8048fbc <_vfprintf_r+0x918>
 8049ec8:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 8049ecf:	8b 0a                	mov    (%edx),%ecx
 8049ed1:	83 c2 04             	add    $0x4,%edx
 8049ed4:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 8049edb:	31 c0                	xor    %eax,%eax
 8049edd:	e9 c2 ef ff ff       	jmp    8048ea4 <_vfprintf_r+0x800>
 8049ee2:	89 f3                	mov    %esi,%ebx
 8049ee4:	8b 74 24 54          	mov    0x54(%esp),%esi
 8049ee8:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049eef:	89 5d 04             	mov    %ebx,0x4(%ebp)
 8049ef2:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 8049ef9:	41                   	inc    %ecx
 8049efa:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049f01:	83 f9 07             	cmp    $0x7,%ecx
 8049f04:	0f 8f 04 fb ff ff    	jg     8049a0e <_vfprintf_r+0x136a>
 8049f0a:	83 c5 08             	add    $0x8,%ebp
 8049f0d:	e9 29 fb ff ff       	jmp    8049a3b <_vfprintf_r+0x1397>
 8049f12:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 8049f19:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049f1d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049f21:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 8049f28:	89 0c 24             	mov    %ecx,(%esp)
 8049f2b:	e8 1c 42 00 00       	call   804e14c <__sprint_r>
 8049f30:	85 c0                	test   %eax,%eax
 8049f32:	0f 85 24 ee ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 8049f38:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 8049f3f:	e9 20 f4 ff ff       	jmp    8049364 <_vfprintf_r+0xcc0>
 8049f44:	c7 45 00 f7 04 05 08 	movl   $0x80504f7,0x0(%ebp)
 8049f4b:	c7 45 04 01 00 00 00 	movl   $0x1,0x4(%ebp)
 8049f52:	ff 84 24 cc 00 00 00 	incl   0xcc(%esp)
 8049f59:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049f60:	41                   	inc    %ecx
 8049f61:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049f68:	83 f9 07             	cmp    $0x7,%ecx
 8049f6b:	0f 8f af 01 00 00    	jg     804a120 <_vfprintf_r+0x1a7c>
 8049f71:	83 c5 08             	add    $0x8,%ebp
 8049f74:	85 db                	test   %ebx,%ebx
 8049f76:	75 13                	jne    8049f8b <_vfprintf_r+0x18e7>
 8049f78:	8b 54 24 7c          	mov    0x7c(%esp),%edx
 8049f7c:	85 d2                	test   %edx,%edx
 8049f7e:	75 0b                	jne    8049f8b <_vfprintf_r+0x18e7>
 8049f80:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 8049f85:	0f 84 5d eb ff ff    	je     8048ae8 <_vfprintf_r+0x444>
 8049f8b:	8b 4c 24 78          	mov    0x78(%esp),%ecx
 8049f8f:	89 4d 00             	mov    %ecx,0x0(%ebp)
 8049f92:	8b 84 24 84 00 00 00 	mov    0x84(%esp),%eax
 8049f99:	89 45 04             	mov    %eax,0x4(%ebp)
 8049f9c:	01 84 24 cc 00 00 00 	add    %eax,0xcc(%esp)
 8049fa3:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 8049faa:	41                   	inc    %ecx
 8049fab:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 8049fb2:	83 f9 07             	cmp    $0x7,%ecx
 8049fb5:	0f 8f 5b 05 00 00    	jg     804a516 <_vfprintf_r+0x1e72>
 8049fbb:	83 c5 08             	add    $0x8,%ebp
 8049fbe:	f7 db                	neg    %ebx
 8049fc0:	85 db                	test   %ebx,%ebx
 8049fc2:	0f 8e 39 02 00 00    	jle    804a201 <_vfprintf_r+0x1b5d>
 8049fc8:	83 fb 10             	cmp    $0x10,%ebx
 8049fcb:	0f 8e 7f 02 00 00    	jle    804a250 <_vfprintf_r+0x1bac>
 8049fd1:	89 74 24 58          	mov    %esi,0x58(%esp)
 8049fd5:	89 de                	mov    %ebx,%esi
 8049fd7:	8b 9c 24 80 05 00 00 	mov    0x580(%esp),%ebx
 8049fde:	eb 0f                	jmp    8049fef <_vfprintf_r+0x194b>
 8049fe0:	83 c5 08             	add    $0x8,%ebp
 8049fe3:	83 ee 10             	sub    $0x10,%esi
 8049fe6:	83 fe 10             	cmp    $0x10,%esi
 8049fe9:	0f 8e 5b 02 00 00    	jle    804a24a <_vfprintf_r+0x1ba6>
 8049fef:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 8049ff6:	c7 45 04 10 00 00 00 	movl   $0x10,0x4(%ebp)
 8049ffd:	83 84 24 cc 00 00 00 	addl   $0x10,0xcc(%esp)
 804a004:	10 
 804a005:	41                   	inc    %ecx
 804a006:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804a00d:	83 f9 07             	cmp    $0x7,%ecx
 804a010:	7e ce                	jle    8049fe0 <_vfprintf_r+0x193c>
 804a012:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 804a019:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a01d:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a021:	89 1c 24             	mov    %ebx,(%esp)
 804a024:	e8 23 41 00 00       	call   804e14c <__sprint_r>
 804a029:	85 c0                	test   %eax,%eax
 804a02b:	0f 85 2b ed ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a031:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a038:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804a03f:	eb a2                	jmp    8049fe3 <_vfprintf_r+0x193f>
 804a041:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 804a048:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a04c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a050:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a057:	89 0c 24             	mov    %ecx,(%esp)
 804a05a:	e8 ed 40 00 00       	call   804e14c <__sprint_r>
 804a05f:	85 c0                	test   %eax,%eax
 804a061:	0f 85 f5 ec ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a067:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a06e:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804a075:	e9 31 f5 ff ff       	jmp    80495ab <_vfprintf_r+0xf07>
 804a07a:	83 7c 24 70 47       	cmpl   $0x47,0x70(%esp)
 804a07f:	0f 8f c4 02 00 00    	jg     804a349 <_vfprintf_r+0x1ca5>
 804a085:	c7 44 24 64 c6 04 05 	movl   $0x80504c6,0x64(%esp)
 804a08c:	08 
 804a08d:	81 64 24 4c 7f ff ff 	andl   $0xffffff7f,0x4c(%esp)
 804a094:	ff 
 804a095:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 804a09c:	88 4c 24 54          	mov    %cl,0x54(%esp)
 804a0a0:	c7 44 24 50 03 00 00 	movl   $0x3,0x50(%esp)
 804a0a7:	00 
 804a0a8:	c7 44 24 58 03 00 00 	movl   $0x3,0x58(%esp)
 804a0af:	00 
 804a0b0:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804a0b7:	00 
 804a0b8:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 804a0bf:	00 00 00 00 
 804a0c3:	e9 57 ee ff ff       	jmp    8048f1f <_vfprintf_r+0x87b>
 804a0c8:	89 5c 24 50          	mov    %ebx,0x50(%esp)
 804a0cc:	8a 9c 24 a5 00 00 00 	mov    0xa5(%esp),%bl
 804a0d3:	88 5c 24 54          	mov    %bl,0x54(%esp)
 804a0d7:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804a0db:	89 4c 24 58          	mov    %ecx,0x58(%esp)
 804a0df:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 804a0e6:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804a0ed:	00 
 804a0ee:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 804a0f5:	00 00 00 00 
 804a0f9:	e9 21 ee ff ff       	jmp    8048f1f <_vfprintf_r+0x87b>
 804a0fe:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 804a102:	89 18                	mov    %ebx,(%eax)
 804a104:	83 c1 04             	add    $0x4,%ecx
 804a107:	89 8c 24 8c 05 00 00 	mov    %ecx,0x58c(%esp)
 804a10e:	e9 8d e6 ff ff       	jmp    80487a0 <_vfprintf_r+0xfc>
 804a113:	c7 44 24 64 be 04 05 	movl   $0x80504be,0x64(%esp)
 804a11a:	08 
 804a11b:	e9 ce ef ff ff       	jmp    80490ee <_vfprintf_r+0xa4a>
 804a120:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 804a127:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a12b:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a12f:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a136:	89 0c 24             	mov    %ecx,(%esp)
 804a139:	e8 0e 40 00 00       	call   804e14c <__sprint_r>
 804a13e:	85 c0                	test   %eax,%eax
 804a140:	0f 85 16 ec ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a146:	8b 9c 24 a8 00 00 00 	mov    0xa8(%esp),%ebx
 804a14d:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a154:	e9 1b fe ff ff       	jmp    8049f74 <_vfprintf_r+0x18d0>
 804a159:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804a160:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a164:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a168:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a16f:	89 0c 24             	mov    %ecx,(%esp)
 804a172:	e8 d5 3f 00 00       	call   804e14c <__sprint_r>
 804a177:	85 c0                	test   %eax,%eax
 804a179:	0f 85 dd eb ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a17f:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a186:	e9 24 f2 ff ff       	jmp    80493af <_vfprintf_r+0xd0b>
 804a18b:	8b 44 24 44          	mov    0x44(%esp),%eax
 804a18f:	2b 44 24 64          	sub    0x64(%esp),%eax
 804a193:	89 44 24 58          	mov    %eax,0x58(%esp)
 804a197:	e9 64 ed ff ff       	jmp    8048f00 <_vfprintf_r+0x85c>
 804a19c:	8b 44 24 64          	mov    0x64(%esp),%eax
 804a1a0:	89 04 24             	mov    %eax,(%esp)
 804a1a3:	89 54 24 34          	mov    %edx,0x34(%esp)
 804a1a7:	e8 24 3f 00 00       	call   804e0d0 <strlen>
 804a1ac:	89 44 24 58          	mov    %eax,0x58(%esp)
 804a1b0:	89 44 24 50          	mov    %eax,0x50(%esp)
 804a1b4:	85 c0                	test   %eax,%eax
 804a1b6:	8b 54 24 34          	mov    0x34(%esp),%edx
 804a1ba:	0f 89 7c ec ff ff    	jns    8048e3c <_vfprintf_r+0x798>
 804a1c0:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a1c7:	00 
 804a1c8:	e9 6f ec ff ff       	jmp    8048e3c <_vfprintf_r+0x798>
 804a1cd:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804a1d4:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a1d8:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a1dc:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a1e3:	89 0c 24             	mov    %ecx,(%esp)
 804a1e6:	e8 61 3f 00 00       	call   804e14c <__sprint_r>
 804a1eb:	85 c0                	test   %eax,%eax
 804a1ed:	0f 85 69 eb ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a1f3:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a1fa:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804a201:	8b 44 24 64          	mov    0x64(%esp),%eax
 804a205:	89 45 00             	mov    %eax,0x0(%ebp)
 804a208:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 804a20c:	e9 ab f3 ff ff       	jmp    80495bc <_vfprintf_r+0xf18>
 804a211:	31 db                	xor    %ebx,%ebx
 804a213:	e9 ca f5 ff ff       	jmp    80497e2 <_vfprintf_r+0x113e>
 804a218:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804a21f:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a223:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a227:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a22e:	89 0c 24             	mov    %ecx,(%esp)
 804a231:	e8 16 3f 00 00       	call   804e14c <__sprint_r>
 804a236:	85 c0                	test   %eax,%eax
 804a238:	0f 85 1e eb ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a23e:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a245:	e9 90 f5 ff ff       	jmp    80497da <_vfprintf_r+0x1136>
 804a24a:	89 f3                	mov    %esi,%ebx
 804a24c:	8b 74 24 58          	mov    0x58(%esp),%esi
 804a250:	c7 45 00 70 06 05 08 	movl   $0x8050670,0x0(%ebp)
 804a257:	89 5d 04             	mov    %ebx,0x4(%ebp)
 804a25a:	01 9c 24 cc 00 00 00 	add    %ebx,0xcc(%esp)
 804a261:	41                   	inc    %ecx
 804a262:	89 8c 24 c8 00 00 00 	mov    %ecx,0xc8(%esp)
 804a269:	83 f9 07             	cmp    $0x7,%ecx
 804a26c:	0f 8f 5b ff ff ff    	jg     804a1cd <_vfprintf_r+0x1b29>
 804a272:	83 c5 08             	add    $0x8,%ebp
 804a275:	eb 8a                	jmp    804a201 <_vfprintf_r+0x1b5d>
 804a277:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 804a27e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804a282:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a286:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a28d:	89 0c 24             	mov    %ecx,(%esp)
 804a290:	89 54 24 34          	mov    %edx,0x34(%esp)
 804a294:	e8 b3 3e 00 00       	call   804e14c <__sprint_r>
 804a299:	85 c0                	test   %eax,%eax
 804a29b:	8b 54 24 34          	mov    0x34(%esp),%edx
 804a29f:	0f 85 b7 ea ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a2a5:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 804a2ac:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a2b3:	e9 aa f7 ff ff       	jmp    8049a62 <_vfprintf_r+0x13be>
 804a2b8:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 804a2bc:	83 fb 06             	cmp    $0x6,%ebx
 804a2bf:	76 08                	jbe    804a2c9 <_vfprintf_r+0x1c25>
 804a2c1:	c7 44 24 58 06 00 00 	movl   $0x6,0x58(%esp)
 804a2c8:	00 
 804a2c9:	8b 44 24 58          	mov    0x58(%esp),%eax
 804a2cd:	89 44 24 50          	mov    %eax,0x50(%esp)
 804a2d1:	85 c0                	test   %eax,%eax
 804a2d3:	0f 88 7f 03 00 00    	js     804a658 <_vfprintf_r+0x1fb4>
 804a2d9:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 804a2e0:	c6 44 24 54 00       	movb   $0x0,0x54(%esp)
 804a2e5:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804a2ec:	00 
 804a2ed:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 804a2f4:	00 00 00 00 
 804a2f8:	c7 44 24 64 f0 04 05 	movl   $0x80504f0,0x64(%esp)
 804a2ff:	08 
 804a300:	e9 7b e5 ff ff       	jmp    8048880 <_vfprintf_r+0x1dc>
 804a305:	31 db                	xor    %ebx,%ebx
 804a307:	e9 9e f7 ff ff       	jmp    8049aaa <_vfprintf_r+0x1406>
 804a30c:	8d 84 24 c4 00 00 00 	lea    0xc4(%esp),%eax
 804a313:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a317:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a31b:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a322:	89 0c 24             	mov    %ecx,(%esp)
 804a325:	e8 22 3e 00 00       	call   804e14c <__sprint_r>
 804a32a:	85 c0                	test   %eax,%eax
 804a32c:	0f 85 2a ea ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a332:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804a336:	2b 84 24 a8 00 00 00 	sub    0xa8(%esp),%eax
 804a33d:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a344:	e9 59 f7 ff ff       	jmp    8049aa2 <_vfprintf_r+0x13fe>
 804a349:	c7 44 24 64 ca 04 05 	movl   $0x80504ca,0x64(%esp)
 804a350:	08 
 804a351:	e9 37 fd ff ff       	jmp    804a08d <_vfprintf_r+0x19e9>
 804a356:	c6 84 24 a5 00 00 00 	movb   $0x2d,0xa5(%esp)
 804a35d:	2d 
 804a35e:	8b 4c 24 68          	mov    0x68(%esp),%ecx
 804a362:	89 4c 24 4c          	mov    %ecx,0x4c(%esp)
 804a366:	c6 44 24 54 2d       	movb   $0x2d,0x54(%esp)
 804a36b:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804a372:	00 
 804a373:	e9 b2 eb ff ff       	jmp    8048f2a <_vfprintf_r+0x886>
 804a378:	c6 84 24 a5 00 00 00 	movb   $0x2d,0xa5(%esp)
 804a37f:	2d 
 804a380:	c6 44 24 54 2d       	movb   $0x2d,0x54(%esp)
 804a385:	e9 51 ed ff ff       	jmp    80490db <_vfprintf_r+0xa37>
 804a38a:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 804a391:	89 c1                	mov    %eax,%ecx
 804a393:	83 f8 fd             	cmp    $0xfffffffd,%eax
 804a396:	7c 08                	jl     804a3a0 <_vfprintf_r+0x1cfc>
 804a398:	39 c3                	cmp    %eax,%ebx
 804a39a:	0f 8d 93 00 00 00    	jge    804a433 <_vfprintf_r+0x1d8f>
 804a3a0:	83 6c 24 70 02       	subl   $0x2,0x70(%esp)
 804a3a5:	49                   	dec    %ecx
 804a3a6:	89 8c 24 a8 00 00 00 	mov    %ecx,0xa8(%esp)
 804a3ad:	8a 54 24 70          	mov    0x70(%esp),%dl
 804a3b1:	88 94 24 b6 00 00 00 	mov    %dl,0xb6(%esp)
 804a3b8:	85 c9                	test   %ecx,%ecx
 804a3ba:	0f 88 58 03 00 00    	js     804a718 <_vfprintf_r+0x2074>
 804a3c0:	c6 84 24 b7 00 00 00 	movb   $0x2b,0xb7(%esp)
 804a3c7:	2b 
 804a3c8:	83 f9 09             	cmp    $0x9,%ecx
 804a3cb:	0f 8f df 01 00 00    	jg     804a5b0 <_vfprintf_r+0x1f0c>
 804a3d1:	c6 84 24 b8 00 00 00 	movb   $0x30,0xb8(%esp)
 804a3d8:	30 
 804a3d9:	83 c1 30             	add    $0x30,%ecx
 804a3dc:	88 8c 24 b9 00 00 00 	mov    %cl,0xb9(%esp)
 804a3e3:	8d 84 24 ba 00 00 00 	lea    0xba(%esp),%eax
 804a3ea:	8d 94 24 b6 00 00 00 	lea    0xb6(%esp),%edx
 804a3f1:	29 d0                	sub    %edx,%eax
 804a3f3:	89 84 24 90 00 00 00 	mov    %eax,0x90(%esp)
 804a3fa:	8b 54 24 7c          	mov    0x7c(%esp),%edx
 804a3fe:	01 c2                	add    %eax,%edx
 804a400:	89 54 24 58          	mov    %edx,0x58(%esp)
 804a404:	83 7c 24 7c 01       	cmpl   $0x1,0x7c(%esp)
 804a409:	0f 8e 24 03 00 00    	jle    804a733 <_vfprintf_r+0x208f>
 804a40f:	ff 44 24 58          	incl   0x58(%esp)
 804a413:	8b 44 24 58          	mov    0x58(%esp),%eax
 804a417:	89 44 24 50          	mov    %eax,0x50(%esp)
 804a41b:	85 c0                	test   %eax,%eax
 804a41d:	0f 88 27 03 00 00    	js     804a74a <_vfprintf_r+0x20a6>
 804a423:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 804a42a:	00 00 00 00 
 804a42e:	e9 f6 f9 ff ff       	jmp    8049e29 <_vfprintf_r+0x1785>
 804a433:	3b 44 24 7c          	cmp    0x7c(%esp),%eax
 804a437:	0f 8c 2f 01 00 00    	jl     804a56c <_vfprintf_r+0x1ec8>
 804a43d:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 804a442:	0f 85 1d 02 00 00    	jne    804a665 <_vfprintf_r+0x1fc1>
 804a448:	89 44 24 50          	mov    %eax,0x50(%esp)
 804a44c:	85 c0                	test   %eax,%eax
 804a44e:	0f 88 22 03 00 00    	js     804a776 <_vfprintf_r+0x20d2>
 804a454:	89 4c 24 58          	mov    %ecx,0x58(%esp)
 804a458:	c7 44 24 70 67 00 00 	movl   $0x67,0x70(%esp)
 804a45f:	00 
 804a460:	e9 bd f9 ff ff       	jmp    8049e22 <_vfprintf_r+0x177e>
 804a465:	8d 84 24 b0 00 00 00 	lea    0xb0(%esp),%eax
 804a46c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804a470:	8d 84 24 ac 00 00 00 	lea    0xac(%esp),%eax
 804a477:	89 44 24 18          	mov    %eax,0x18(%esp)
 804a47b:	8d 84 24 a8 00 00 00 	lea    0xa8(%esp),%eax
 804a482:	89 44 24 14          	mov    %eax,0x14(%esp)
 804a486:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 804a48a:	c7 44 24 0c 03 00 00 	movl   $0x3,0xc(%esp)
 804a491:	00 
 804a492:	dd 54 24 04          	fstl   0x4(%esp)
 804a496:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a49d:	89 0c 24             	mov    %ecx,(%esp)
 804a4a0:	dd 5c 24 20          	fstpl  0x20(%esp)
 804a4a4:	e8 47 07 00 00       	call   804abf0 <_dtoa_r>
 804a4a9:	89 44 24 64          	mov    %eax,0x64(%esp)
 804a4ad:	89 c2                	mov    %eax,%edx
 804a4af:	01 da                	add    %ebx,%edx
 804a4b1:	89 d9                	mov    %ebx,%ecx
 804a4b3:	dd 44 24 20          	fldl   0x20(%esp)
 804a4b7:	8b 44 24 64          	mov    0x64(%esp),%eax
 804a4bb:	80 38 30             	cmpb   $0x30,(%eax)
 804a4be:	0f 84 69 01 00 00    	je     804a62d <_vfprintf_r+0x1f89>
 804a4c4:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 804a4cb:	01 c2                	add    %eax,%edx
 804a4cd:	e9 cf f8 ff ff       	jmp    8049da1 <_vfprintf_r+0x16fd>
 804a4d2:	89 5c 24 50          	mov    %ebx,0x50(%esp)
 804a4d6:	8a 8c 24 a5 00 00 00 	mov    0xa5(%esp),%cl
 804a4dd:	88 4c 24 54          	mov    %cl,0x54(%esp)
 804a4e1:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 804a4e5:	89 94 24 8c 05 00 00 	mov    %edx,0x58c(%esp)
 804a4ec:	c7 44 24 74 00 00 00 	movl   $0x0,0x74(%esp)
 804a4f3:	00 
 804a4f4:	c7 84 24 80 00 00 00 	movl   $0x0,0x80(%esp)
 804a4fb:	00 00 00 00 
 804a4ff:	e9 1b ea ff ff       	jmp    8048f1f <_vfprintf_r+0x87b>
 804a504:	85 db                	test   %ebx,%ebx
 804a506:	0f 85 c3 f7 ff ff    	jne    8049ccf <_vfprintf_r+0x162b>
 804a50c:	bb 01 00 00 00       	mov    $0x1,%ebx
 804a511:	e9 b9 f7 ff ff       	jmp    8049ccf <_vfprintf_r+0x162b>
 804a516:	8d 94 24 c4 00 00 00 	lea    0xc4(%esp),%edx
 804a51d:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a521:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804a525:	8b 8c 24 80 05 00 00 	mov    0x580(%esp),%ecx
 804a52c:	89 0c 24             	mov    %ecx,(%esp)
 804a52f:	e8 18 3c 00 00       	call   804e14c <__sprint_r>
 804a534:	85 c0                	test   %eax,%eax
 804a536:	0f 85 20 e8 ff ff    	jne    8048d5c <_vfprintf_r+0x6b8>
 804a53c:	8b 9c 24 a8 00 00 00 	mov    0xa8(%esp),%ebx
 804a543:	8d ac 24 60 01 00 00 	lea    0x160(%esp),%ebp
 804a54a:	8b 8c 24 c8 00 00 00 	mov    0xc8(%esp),%ecx
 804a551:	e9 68 fa ff ff       	jmp    8049fbe <_vfprintf_r+0x191a>
 804a556:	bb 06 00 00 00       	mov    $0x6,%ebx
 804a55b:	e9 6f f7 ff ff       	jmp    8049ccf <_vfprintf_r+0x162b>
 804a560:	d9 e0                	fchs   
 804a562:	c6 44 24 54 2d       	movb   $0x2d,0x54(%esp)
 804a567:	e9 89 f7 ff ff       	jmp    8049cf5 <_vfprintf_r+0x1651>
 804a56c:	85 c0                	test   %eax,%eax
 804a56e:	0f 8e b3 01 00 00    	jle    804a727 <_vfprintf_r+0x2083>
 804a574:	ba 01 00 00 00       	mov    $0x1,%edx
 804a579:	03 54 24 7c          	add    0x7c(%esp),%edx
 804a57d:	89 54 24 58          	mov    %edx,0x58(%esp)
 804a581:	89 54 24 50          	mov    %edx,0x50(%esp)
 804a585:	85 d2                	test   %edx,%edx
 804a587:	0f 88 eb 00 00 00    	js     804a678 <_vfprintf_r+0x1fd4>
 804a58d:	c7 44 24 70 67 00 00 	movl   $0x67,0x70(%esp)
 804a594:	00 
 804a595:	e9 88 f8 ff ff       	jmp    8049e22 <_vfprintf_r+0x177e>
 804a59a:	8d 4b 01             	lea    0x1(%ebx),%ecx
 804a59d:	e9 81 f7 ff ff       	jmp    8049d23 <_vfprintf_r+0x167f>
 804a5a2:	dd d8                	fstp   %st(0)
 804a5a4:	8b 94 24 b0 00 00 00 	mov    0xb0(%esp),%edx
 804a5ab:	e9 1f f8 ff ff       	jmp    8049dcf <_vfprintf_r+0x172b>
 804a5b0:	8d 9c 24 c4 00 00 00 	lea    0xc4(%esp),%ebx
 804a5b7:	89 74 24 58          	mov    %esi,0x58(%esp)
 804a5bb:	4b                   	dec    %ebx
 804a5bc:	89 c8                	mov    %ecx,%eax
 804a5be:	be 0a 00 00 00       	mov    $0xa,%esi
 804a5c3:	99                   	cltd   
 804a5c4:	f7 fe                	idiv   %esi
 804a5c6:	89 54 24 50          	mov    %edx,0x50(%esp)
 804a5ca:	8a 54 24 50          	mov    0x50(%esp),%dl
 804a5ce:	83 c2 30             	add    $0x30,%edx
 804a5d1:	88 13                	mov    %dl,(%ebx)
 804a5d3:	b8 67 66 66 66       	mov    $0x66666667,%eax
 804a5d8:	f7 e9                	imul   %ecx
 804a5da:	c1 fa 02             	sar    $0x2,%edx
 804a5dd:	c1 f9 1f             	sar    $0x1f,%ecx
 804a5e0:	29 ca                	sub    %ecx,%edx
 804a5e2:	89 d1                	mov    %edx,%ecx
 804a5e4:	83 fa 09             	cmp    $0x9,%edx
 804a5e7:	7f d2                	jg     804a5bb <_vfprintf_r+0x1f17>
 804a5e9:	8b 74 24 58          	mov    0x58(%esp),%esi
 804a5ed:	8d 43 ff             	lea    -0x1(%ebx),%eax
 804a5f0:	83 c1 30             	add    $0x30,%ecx
 804a5f3:	88 4b ff             	mov    %cl,-0x1(%ebx)
 804a5f6:	3b 44 24 48          	cmp    0x48(%esp),%eax
 804a5fa:	0f 83 6a 01 00 00    	jae    804a76a <_vfprintf_r+0x20c6>
 804a600:	8d 94 24 b8 00 00 00 	lea    0xb8(%esp),%edx
 804a607:	eb 05                	jmp    804a60e <_vfprintf_r+0x1f6a>
 804a609:	8d 76 00             	lea    0x0(%esi),%esi
 804a60c:	8a 08                	mov    (%eax),%cl
 804a60e:	88 0a                	mov    %cl,(%edx)
 804a610:	42                   	inc    %edx
 804a611:	40                   	inc    %eax
 804a612:	3b 44 24 48          	cmp    0x48(%esp),%eax
 804a616:	75 f4                	jne    804a60c <_vfprintf_r+0x1f68>
 804a618:	8d 84 24 60 05 00 00 	lea    0x560(%esp),%eax
 804a61f:	29 d8                	sub    %ebx,%eax
 804a621:	8d 84 04 1d fc ff ff 	lea    -0x3e3(%esp,%eax,1),%eax
 804a628:	e9 bd fd ff ff       	jmp    804a3ea <_vfprintf_r+0x1d46>
 804a62d:	d9 ee                	fldz   
 804a62f:	d9 c9                	fxch   %st(1)
 804a631:	dd e1                	fucom  %st(1)
 804a633:	df e0                	fnstsw %ax
 804a635:	dd d9                	fstp   %st(1)
 804a637:	80 e4 45             	and    $0x45,%ah
 804a63a:	80 f4 40             	xor    $0x40,%ah
 804a63d:	0f 84 81 fe ff ff    	je     804a4c4 <_vfprintf_r+0x1e20>
 804a643:	b8 01 00 00 00       	mov    $0x1,%eax
 804a648:	29 c8                	sub    %ecx,%eax
 804a64a:	89 84 24 a8 00 00 00 	mov    %eax,0xa8(%esp)
 804a651:	01 c2                	add    %eax,%edx
 804a653:	e9 49 f7 ff ff       	jmp    8049da1 <_vfprintf_r+0x16fd>
 804a658:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a65f:	00 
 804a660:	e9 74 fc ff ff       	jmp    804a2d9 <_vfprintf_r+0x1c35>
 804a665:	8d 50 01             	lea    0x1(%eax),%edx
 804a668:	89 54 24 58          	mov    %edx,0x58(%esp)
 804a66c:	89 54 24 50          	mov    %edx,0x50(%esp)
 804a670:	85 d2                	test   %edx,%edx
 804a672:	0f 89 15 ff ff ff    	jns    804a58d <_vfprintf_r+0x1ee9>
 804a678:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a67f:	00 
 804a680:	e9 08 ff ff ff       	jmp    804a58d <_vfprintf_r+0x1ee9>
 804a685:	8d 5c 03 01          	lea    0x1(%ebx,%eax,1),%ebx
 804a689:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 804a68d:	89 5c 24 50          	mov    %ebx,0x50(%esp)
 804a691:	85 db                	test   %ebx,%ebx
 804a693:	0f 89 89 f7 ff ff    	jns    8049e22 <_vfprintf_r+0x177e>
 804a699:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a6a0:	00 
 804a6a1:	e9 7c f7 ff ff       	jmp    8049e22 <_vfprintf_r+0x177e>
 804a6a6:	66 90                	xchg   %ax,%ax
 804a6a8:	85 db                	test   %ebx,%ebx
 804a6aa:	75 29                	jne    804a6d5 <_vfprintf_r+0x2031>
 804a6ac:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 804a6b1:	75 22                	jne    804a6d5 <_vfprintf_r+0x2031>
 804a6b3:	c7 44 24 50 01 00 00 	movl   $0x1,0x50(%esp)
 804a6ba:	00 
 804a6bb:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%esp)
 804a6c2:	00 
 804a6c3:	e9 5a f7 ff ff       	jmp    8049e22 <_vfprintf_r+0x177e>
 804a6c8:	c7 44 24 5c ff ff ff 	movl   $0xffffffff,0x5c(%esp)
 804a6cf:	ff 
 804a6d0:	e9 4c e6 ff ff       	jmp    8048d21 <_vfprintf_r+0x67d>
 804a6d5:	83 c3 02             	add    $0x2,%ebx
 804a6d8:	89 5c 24 58          	mov    %ebx,0x58(%esp)
 804a6dc:	89 5c 24 50          	mov    %ebx,0x50(%esp)
 804a6e0:	85 db                	test   %ebx,%ebx
 804a6e2:	0f 89 3a f7 ff ff    	jns    8049e22 <_vfprintf_r+0x177e>
 804a6e8:	eb af                	jmp    804a699 <_vfprintf_r+0x1ff5>
 804a6ea:	66 90                	xchg   %ax,%ax
 804a6ec:	8b 84 24 8c 05 00 00 	mov    0x58c(%esp),%eax
 804a6f3:	83 c0 04             	add    $0x4,%eax
 804a6f6:	8b 94 24 8c 05 00 00 	mov    0x58c(%esp),%edx
 804a6fd:	8b 1a                	mov    (%edx),%ebx
 804a6ff:	85 db                	test   %ebx,%ebx
 804a701:	0f 89 64 e8 ff ff    	jns    8048f6b <_vfprintf_r+0x8c7>
 804a707:	89 84 24 8c 05 00 00 	mov    %eax,0x58c(%esp)
 804a70e:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 804a713:	e9 02 e1 ff ff       	jmp    804881a <_vfprintf_r+0x176>
 804a718:	f7 d9                	neg    %ecx
 804a71a:	c6 84 24 b7 00 00 00 	movb   $0x2d,0xb7(%esp)
 804a721:	2d 
 804a722:	e9 a1 fc ff ff       	jmp    804a3c8 <_vfprintf_r+0x1d24>
 804a727:	ba 02 00 00 00       	mov    $0x2,%edx
 804a72c:	29 c2                	sub    %eax,%edx
 804a72e:	e9 46 fe ff ff       	jmp    804a579 <_vfprintf_r+0x1ed5>
 804a733:	f6 44 24 4c 01       	testb  $0x1,0x4c(%esp)
 804a738:	0f 85 d1 fc ff ff    	jne    804a40f <_vfprintf_r+0x1d6b>
 804a73e:	89 54 24 50          	mov    %edx,0x50(%esp)
 804a742:	85 d2                	test   %edx,%edx
 804a744:	0f 89 d9 fc ff ff    	jns    804a423 <_vfprintf_r+0x1d7f>
 804a74a:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a751:	00 
 804a752:	e9 cc fc ff ff       	jmp    804a423 <_vfprintf_r+0x1d7f>
 804a757:	8b 8c 24 a8 00 00 00 	mov    0xa8(%esp),%ecx
 804a75e:	e9 42 fc ff ff       	jmp    804a3a5 <_vfprintf_r+0x1d01>
 804a763:	89 c2                	mov    %eax,%edx
 804a765:	e9 65 f6 ff ff       	jmp    8049dcf <_vfprintf_r+0x172b>
 804a76a:	8d 84 24 b8 00 00 00 	lea    0xb8(%esp),%eax
 804a771:	e9 74 fc ff ff       	jmp    804a3ea <_vfprintf_r+0x1d46>
 804a776:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804a77d:	00 
 804a77e:	e9 d1 fc ff ff       	jmp    804a454 <_vfprintf_r+0x1db0>
 804a783:	90                   	nop

0804a784 <vfprintf>:
 804a784:	83 ec 1c             	sub    $0x1c,%esp
 804a787:	8b 44 24 28          	mov    0x28(%esp),%eax
 804a78b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a78f:	8b 44 24 24          	mov    0x24(%esp),%eax
 804a793:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a797:	8b 44 24 20          	mov    0x20(%esp),%eax
 804a79b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a79f:	a1 20 20 05 08       	mov    0x8052020,%eax
 804a7a4:	89 04 24             	mov    %eax,(%esp)
 804a7a7:	e8 f8 de ff ff       	call   80486a4 <_vfprintf_r>
 804a7ac:	83 c4 1c             	add    $0x1c,%esp
 804a7af:	c3                   	ret    

0804a7b0 <__swsetup_r>:
 804a7b0:	53                   	push   %ebx
 804a7b1:	83 ec 18             	sub    $0x18,%esp
 804a7b4:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 804a7b8:	a1 20 20 05 08       	mov    0x8052020,%eax
 804a7bd:	85 c0                	test   %eax,%eax
 804a7bf:	74 0b                	je     804a7cc <__swsetup_r+0x1c>
 804a7c1:	8b 50 38             	mov    0x38(%eax),%edx
 804a7c4:	85 d2                	test   %edx,%edx
 804a7c6:	0f 84 9c 00 00 00    	je     804a868 <__swsetup_r+0xb8>
 804a7cc:	8b 43 0c             	mov    0xc(%ebx),%eax
 804a7cf:	a8 08                	test   $0x8,%al
 804a7d1:	74 25                	je     804a7f8 <__swsetup_r+0x48>
 804a7d3:	8b 53 10             	mov    0x10(%ebx),%edx
 804a7d6:	85 d2                	test   %edx,%edx
 804a7d8:	74 38                	je     804a812 <__swsetup_r+0x62>
 804a7da:	a8 01                	test   $0x1,%al
 804a7dc:	75 5e                	jne    804a83c <__swsetup_r+0x8c>
 804a7de:	a8 02                	test   $0x2,%al
 804a7e0:	0f 85 92 00 00 00    	jne    804a878 <__swsetup_r+0xc8>
 804a7e6:	8b 43 14             	mov    0x14(%ebx),%eax
 804a7e9:	89 43 08             	mov    %eax,0x8(%ebx)
 804a7ec:	85 d2                	test   %edx,%edx
 804a7ee:	74 5f                	je     804a84f <__swsetup_r+0x9f>
 804a7f0:	31 c0                	xor    %eax,%eax
 804a7f2:	83 c4 18             	add    $0x18,%esp
 804a7f5:	5b                   	pop    %ebx
 804a7f6:	c3                   	ret    
 804a7f7:	90                   	nop
 804a7f8:	a8 10                	test   $0x10,%al
 804a7fa:	0f 84 bc 00 00 00    	je     804a8bc <__swsetup_r+0x10c>
 804a800:	a8 04                	test   $0x4,%al
 804a802:	75 7c                	jne    804a880 <__swsetup_r+0xd0>
 804a804:	8b 53 10             	mov    0x10(%ebx),%edx
 804a807:	83 c8 08             	or     $0x8,%eax
 804a80a:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804a80e:	85 d2                	test   %edx,%edx
 804a810:	75 c8                	jne    804a7da <__swsetup_r+0x2a>
 804a812:	89 c1                	mov    %eax,%ecx
 804a814:	81 e1 80 02 00 00    	and    $0x280,%ecx
 804a81a:	66 81 f9 00 02       	cmp    $0x200,%cx
 804a81f:	74 b9                	je     804a7da <__swsetup_r+0x2a>
 804a821:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804a825:	8b 54 24 20          	mov    0x20(%esp),%edx
 804a829:	89 14 24             	mov    %edx,(%esp)
 804a82c:	e8 8b 20 00 00       	call   804c8bc <__smakebuf_r>
 804a831:	8b 43 0c             	mov    0xc(%ebx),%eax
 804a834:	8b 53 10             	mov    0x10(%ebx),%edx
 804a837:	eb a1                	jmp    804a7da <__swsetup_r+0x2a>
 804a839:	8d 76 00             	lea    0x0(%esi),%esi
 804a83c:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804a843:	8b 43 14             	mov    0x14(%ebx),%eax
 804a846:	f7 d8                	neg    %eax
 804a848:	89 43 18             	mov    %eax,0x18(%ebx)
 804a84b:	85 d2                	test   %edx,%edx
 804a84d:	75 a1                	jne    804a7f0 <__swsetup_r+0x40>
 804a84f:	8b 53 0c             	mov    0xc(%ebx),%edx
 804a852:	31 c0                	xor    %eax,%eax
 804a854:	f6 c2 80             	test   $0x80,%dl
 804a857:	74 99                	je     804a7f2 <__swsetup_r+0x42>
 804a859:	83 ca 40             	or     $0x40,%edx
 804a85c:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 804a860:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a865:	eb 8b                	jmp    804a7f2 <__swsetup_r+0x42>
 804a867:	90                   	nop
 804a868:	89 04 24             	mov    %eax,(%esp)
 804a86b:	e8 d4 19 00 00       	call   804c244 <__sinit>
 804a870:	e9 57 ff ff ff       	jmp    804a7cc <__swsetup_r+0x1c>
 804a875:	8d 76 00             	lea    0x0(%esi),%esi
 804a878:	31 c0                	xor    %eax,%eax
 804a87a:	e9 6a ff ff ff       	jmp    804a7e9 <__swsetup_r+0x39>
 804a87f:	90                   	nop
 804a880:	8b 53 30             	mov    0x30(%ebx),%edx
 804a883:	85 d2                	test   %edx,%edx
 804a885:	74 21                	je     804a8a8 <__swsetup_r+0xf8>
 804a887:	8d 4b 40             	lea    0x40(%ebx),%ecx
 804a88a:	39 ca                	cmp    %ecx,%edx
 804a88c:	74 13                	je     804a8a1 <__swsetup_r+0xf1>
 804a88e:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a892:	8b 44 24 20          	mov    0x20(%esp),%eax
 804a896:	89 04 24             	mov    %eax,(%esp)
 804a899:	e8 46 1c 00 00       	call   804c4e4 <_free_r>
 804a89e:	8b 43 0c             	mov    0xc(%ebx),%eax
 804a8a1:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804a8a8:	83 e0 db             	and    $0xffffffdb,%eax
 804a8ab:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804a8b2:	8b 53 10             	mov    0x10(%ebx),%edx
 804a8b5:	89 13                	mov    %edx,(%ebx)
 804a8b7:	e9 4b ff ff ff       	jmp    804a807 <__swsetup_r+0x57>
 804a8bc:	8b 54 24 20          	mov    0x20(%esp),%edx
 804a8c0:	c7 02 09 00 00 00    	movl   $0x9,(%edx)
 804a8c6:	83 c8 40             	or     $0x40,%eax
 804a8c9:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804a8cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a8d2:	e9 1b ff ff ff       	jmp    804a7f2 <__swsetup_r+0x42>
 804a8d7:	90                   	nop

0804a8d8 <__call_exitprocs>:
 804a8d8:	55                   	push   %ebp
 804a8d9:	57                   	push   %edi
 804a8da:	56                   	push   %esi
 804a8db:	53                   	push   %ebx
 804a8dc:	83 ec 3c             	sub    $0x3c,%esp
 804a8df:	8b 6c 24 54          	mov    0x54(%esp),%ebp
 804a8e3:	a1 b8 04 05 08       	mov    0x80504b8,%eax
 804a8e8:	05 48 01 00 00       	add    $0x148,%eax
 804a8ed:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804a8f1:	8b 15 b8 04 05 08    	mov    0x80504b8,%edx
 804a8f7:	8b ba 48 01 00 00    	mov    0x148(%edx),%edi
 804a8fd:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804a901:	89 44 24 28          	mov    %eax,0x28(%esp)
 804a905:	85 ff                	test   %edi,%edi
 804a907:	0f 84 b0 00 00 00    	je     804a9bd <__call_exitprocs+0xe5>
 804a90d:	8b 5f 04             	mov    0x4(%edi),%ebx
 804a910:	4b                   	dec    %ebx
 804a911:	0f 88 9d 00 00 00    	js     804a9b4 <__call_exitprocs+0xdc>
 804a917:	8d 97 88 00 00 00    	lea    0x88(%edi),%edx
 804a91d:	89 54 24 24          	mov    %edx,0x24(%esp)
 804a921:	8d 34 9a             	lea    (%edx,%ebx,4),%esi
 804a924:	eb 13                	jmp    804a939 <__call_exitprocs+0x61>
 804a926:	66 90                	xchg   %ax,%ax
 804a928:	39 ae 80 00 00 00    	cmp    %ebp,0x80(%esi)
 804a92e:	74 0d                	je     804a93d <__call_exitprocs+0x65>
 804a930:	4b                   	dec    %ebx
 804a931:	83 ee 04             	sub    $0x4,%esi
 804a934:	83 fb ff             	cmp    $0xffffffff,%ebx
 804a937:	74 7b                	je     804a9b4 <__call_exitprocs+0xdc>
 804a939:	85 ed                	test   %ebp,%ebp
 804a93b:	75 eb                	jne    804a928 <__call_exitprocs+0x50>
 804a93d:	89 f2                	mov    %esi,%edx
 804a93f:	2b 54 24 24          	sub    0x24(%esp),%edx
 804a943:	8b 44 3a 08          	mov    0x8(%edx,%edi,1),%eax
 804a947:	8b 4f 04             	mov    0x4(%edi),%ecx
 804a94a:	49                   	dec    %ecx
 804a94b:	39 d9                	cmp    %ebx,%ecx
 804a94d:	74 7d                	je     804a9cc <__call_exitprocs+0xf4>
 804a94f:	c7 44 3a 08 00 00 00 	movl   $0x0,0x8(%edx,%edi,1)
 804a956:	00 
 804a957:	85 c0                	test   %eax,%eax
 804a959:	74 d5                	je     804a930 <__call_exitprocs+0x58>
 804a95b:	8b 57 04             	mov    0x4(%edi),%edx
 804a95e:	89 54 24 18          	mov    %edx,0x18(%esp)
 804a962:	ba 01 00 00 00       	mov    $0x1,%edx
 804a967:	88 d9                	mov    %bl,%cl
 804a969:	d3 e2                	shl    %cl,%edx
 804a96b:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804a96f:	85 97 88 01 00 00    	test   %edx,0x188(%edi)
 804a975:	74 51                	je     804a9c8 <__call_exitprocs+0xf0>
 804a977:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 804a97b:	85 8f 8c 01 00 00    	test   %ecx,0x18c(%edi)
 804a981:	8b 0e                	mov    (%esi),%ecx
 804a983:	75 4f                	jne    804a9d4 <__call_exitprocs+0xfc>
 804a985:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804a989:	8b 54 24 50          	mov    0x50(%esp),%edx
 804a98d:	89 14 24             	mov    %edx,(%esp)
 804a990:	ff d0                	call   *%eax
 804a992:	8b 44 24 18          	mov    0x18(%esp),%eax
 804a996:	39 47 04             	cmp    %eax,0x4(%edi)
 804a999:	0f 85 52 ff ff ff    	jne    804a8f1 <__call_exitprocs+0x19>
 804a99f:	8b 54 24 28          	mov    0x28(%esp),%edx
 804a9a3:	39 3a                	cmp    %edi,(%edx)
 804a9a5:	0f 85 46 ff ff ff    	jne    804a8f1 <__call_exitprocs+0x19>
 804a9ab:	4b                   	dec    %ebx
 804a9ac:	83 ee 04             	sub    $0x4,%esi
 804a9af:	83 fb ff             	cmp    $0xffffffff,%ebx
 804a9b2:	75 85                	jne    804a939 <__call_exitprocs+0x61>
 804a9b4:	b9 00 00 00 00       	mov    $0x0,%ecx
 804a9b9:	85 c9                	test   %ecx,%ecx
 804a9bb:	75 1e                	jne    804a9db <__call_exitprocs+0x103>
 804a9bd:	83 c4 3c             	add    $0x3c,%esp
 804a9c0:	5b                   	pop    %ebx
 804a9c1:	5e                   	pop    %esi
 804a9c2:	5f                   	pop    %edi
 804a9c3:	5d                   	pop    %ebp
 804a9c4:	c3                   	ret    
 804a9c5:	8d 76 00             	lea    0x0(%esi),%esi
 804a9c8:	ff d0                	call   *%eax
 804a9ca:	eb c6                	jmp    804a992 <__call_exitprocs+0xba>
 804a9cc:	89 5f 04             	mov    %ebx,0x4(%edi)
 804a9cf:	eb 86                	jmp    804a957 <__call_exitprocs+0x7f>
 804a9d1:	8d 76 00             	lea    0x0(%esi),%esi
 804a9d4:	89 0c 24             	mov    %ecx,(%esp)
 804a9d7:	ff d0                	call   *%eax
 804a9d9:	eb b7                	jmp    804a992 <__call_exitprocs+0xba>
 804a9db:	8b 47 04             	mov    0x4(%edi),%eax
 804a9de:	85 c0                	test   %eax,%eax
 804a9e0:	8b 07                	mov    (%edi),%eax
 804a9e2:	75 1f                	jne    804aa03 <__call_exitprocs+0x12b>
 804a9e4:	85 c0                	test   %eax,%eax
 804a9e6:	74 19                	je     804aa01 <__call_exitprocs+0x129>
 804a9e8:	8b 54 24 28          	mov    0x28(%esp),%edx
 804a9ec:	89 02                	mov    %eax,(%edx)
 804a9ee:	89 3c 24             	mov    %edi,(%esp)
 804a9f1:	e8 0a 56 fb f7       	call   0 <_.xy-0x4>
 804a9f6:	8b 44 24 28          	mov    0x28(%esp),%eax
 804a9fa:	8b 38                	mov    (%eax),%edi
 804a9fc:	e9 04 ff ff ff       	jmp    804a905 <__call_exitprocs+0x2d>
 804aa01:	31 c0                	xor    %eax,%eax
 804aa03:	89 7c 24 28          	mov    %edi,0x28(%esp)
 804aa07:	89 c7                	mov    %eax,%edi
 804aa09:	e9 f7 fe ff ff       	jmp    804a905 <__call_exitprocs+0x2d>
 804aa0e:	66 90                	xchg   %ax,%ax

0804aa10 <quorem>:
 804aa10:	55                   	push   %ebp
 804aa11:	57                   	push   %edi
 804aa12:	56                   	push   %esi
 804aa13:	53                   	push   %ebx
 804aa14:	83 ec 4c             	sub    $0x4c,%esp
 804aa17:	89 44 24 24          	mov    %eax,0x24(%esp)
 804aa1b:	89 54 24 28          	mov    %edx,0x28(%esp)
 804aa1f:	8b 42 10             	mov    0x10(%edx),%eax
 804aa22:	8b 54 24 24          	mov    0x24(%esp),%edx
 804aa26:	3b 42 10             	cmp    0x10(%edx),%eax
 804aa29:	0f 8f b5 01 00 00    	jg     804abe4 <quorem+0x1d4>
 804aa2f:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804aa33:	83 c5 14             	add    $0x14,%ebp
 804aa36:	8d 78 ff             	lea    -0x1(%eax),%edi
 804aa39:	83 c0 03             	add    $0x3,%eax
 804aa3c:	8b 54 24 28          	mov    0x28(%esp),%edx
 804aa40:	8d 54 82 04          	lea    0x4(%edx,%eax,4),%edx
 804aa44:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 804aa48:	8b 54 24 24          	mov    0x24(%esp),%edx
 804aa4c:	83 c2 14             	add    $0x14,%edx
 804aa4f:	89 54 24 30          	mov    %edx,0x30(%esp)
 804aa53:	8b 54 24 28          	mov    0x28(%esp),%edx
 804aa57:	8b 54 82 04          	mov    0x4(%edx,%eax,4),%edx
 804aa5b:	89 d1                	mov    %edx,%ecx
 804aa5d:	41                   	inc    %ecx
 804aa5e:	8b 54 24 24          	mov    0x24(%esp),%edx
 804aa62:	8b 44 82 04          	mov    0x4(%edx,%eax,4),%eax
 804aa66:	31 d2                	xor    %edx,%edx
 804aa68:	f7 f1                	div    %ecx
 804aa6a:	89 44 24 20          	mov    %eax,0x20(%esp)
 804aa6e:	89 44 24 34          	mov    %eax,0x34(%esp)
 804aa72:	85 c0                	test   %eax,%eax
 804aa74:	0f 84 b7 00 00 00    	je     804ab31 <quorem+0x121>
 804aa7a:	89 eb                	mov    %ebp,%ebx
 804aa7c:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 804aa80:	31 d2                	xor    %edx,%edx
 804aa82:	31 c0                	xor    %eax,%eax
 804aa84:	89 6c 24 38          	mov    %ebp,0x38(%esp)
 804aa88:	89 d5                	mov    %edx,%ebp
 804aa8a:	89 7c 24 3c          	mov    %edi,0x3c(%esp)
 804aa8e:	89 c7                	mov    %eax,%edi
 804aa90:	8b 13                	mov    (%ebx),%edx
 804aa92:	83 c3 04             	add    $0x4,%ebx
 804aa95:	0f b7 f2             	movzwl %dx,%esi
 804aa98:	0f af 74 24 20       	imul   0x20(%esp),%esi
 804aa9d:	01 ee                	add    %ebp,%esi
 804aa9f:	89 f0                	mov    %esi,%eax
 804aaa1:	c1 e8 10             	shr    $0x10,%eax
 804aaa4:	c1 ea 10             	shr    $0x10,%edx
 804aaa7:	0f af 54 24 20       	imul   0x20(%esp),%edx
 804aaac:	01 c2                	add    %eax,%edx
 804aaae:	89 d5                	mov    %edx,%ebp
 804aab0:	c1 ed 10             	shr    $0x10,%ebp
 804aab3:	0f b7 01             	movzwl (%ecx),%eax
 804aab6:	01 f8                	add    %edi,%eax
 804aab8:	81 e6 ff ff 00 00    	and    $0xffff,%esi
 804aabe:	29 f0                	sub    %esi,%eax
 804aac0:	8b 31                	mov    (%ecx),%esi
 804aac2:	c1 ee 10             	shr    $0x10,%esi
 804aac5:	81 e2 ff ff 00 00    	and    $0xffff,%edx
 804aacb:	29 d6                	sub    %edx,%esi
 804aacd:	89 c2                	mov    %eax,%edx
 804aacf:	c1 fa 10             	sar    $0x10,%edx
 804aad2:	01 f2                	add    %esi,%edx
 804aad4:	89 d7                	mov    %edx,%edi
 804aad6:	c1 ff 10             	sar    $0x10,%edi
 804aad9:	c1 e2 10             	shl    $0x10,%edx
 804aadc:	25 ff ff 00 00       	and    $0xffff,%eax
 804aae1:	09 c2                	or     %eax,%edx
 804aae3:	89 11                	mov    %edx,(%ecx)
 804aae5:	83 c1 04             	add    $0x4,%ecx
 804aae8:	39 5c 24 2c          	cmp    %ebx,0x2c(%esp)
 804aaec:	73 a2                	jae    804aa90 <quorem+0x80>
 804aaee:	8b 6c 24 38          	mov    0x38(%esp),%ebp
 804aaf2:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
 804aaf6:	8d 47 04             	lea    0x4(%edi),%eax
 804aaf9:	8b 54 24 24          	mov    0x24(%esp),%edx
 804aafd:	8b 74 82 04          	mov    0x4(%edx,%eax,4),%esi
 804ab01:	85 f6                	test   %esi,%esi
 804ab03:	75 2c                	jne    804ab31 <quorem+0x121>
 804ab05:	8d 04 82             	lea    (%edx,%eax,4),%eax
 804ab08:	39 44 24 30          	cmp    %eax,0x30(%esp)
 804ab0c:	73 1c                	jae    804ab2a <quorem+0x11a>
 804ab0e:	8b 18                	mov    (%eax),%ebx
 804ab10:	85 db                	test   %ebx,%ebx
 804ab12:	75 16                	jne    804ab2a <quorem+0x11a>
 804ab14:	8b 54 24 30          	mov    0x30(%esp),%edx
 804ab18:	eb 08                	jmp    804ab22 <quorem+0x112>
 804ab1a:	66 90                	xchg   %ax,%ax
 804ab1c:	8b 08                	mov    (%eax),%ecx
 804ab1e:	85 c9                	test   %ecx,%ecx
 804ab20:	75 08                	jne    804ab2a <quorem+0x11a>
 804ab22:	4f                   	dec    %edi
 804ab23:	83 e8 04             	sub    $0x4,%eax
 804ab26:	39 c2                	cmp    %eax,%edx
 804ab28:	72 f2                	jb     804ab1c <quorem+0x10c>
 804ab2a:	8b 44 24 24          	mov    0x24(%esp),%eax
 804ab2e:	89 78 10             	mov    %edi,0x10(%eax)
 804ab31:	8b 54 24 28          	mov    0x28(%esp),%edx
 804ab35:	89 54 24 04          	mov    %edx,0x4(%esp)
 804ab39:	8b 44 24 24          	mov    0x24(%esp),%eax
 804ab3d:	89 04 24             	mov    %eax,(%esp)
 804ab40:	e8 93 2d 00 00       	call   804d8d8 <__mcmp>
 804ab45:	85 c0                	test   %eax,%eax
 804ab47:	0f 88 88 00 00 00    	js     804abd5 <quorem+0x1c5>
 804ab4d:	8b 54 24 20          	mov    0x20(%esp),%edx
 804ab51:	42                   	inc    %edx
 804ab52:	89 54 24 34          	mov    %edx,0x34(%esp)
 804ab56:	8b 54 24 30          	mov    0x30(%esp),%edx
 804ab5a:	31 db                	xor    %ebx,%ebx
 804ab5c:	8b 74 24 2c          	mov    0x2c(%esp),%esi
 804ab60:	8b 4d 00             	mov    0x0(%ebp),%ecx
 804ab63:	83 c5 04             	add    $0x4,%ebp
 804ab66:	0f b7 02             	movzwl (%edx),%eax
 804ab69:	01 d8                	add    %ebx,%eax
 804ab6b:	0f b7 d9             	movzwl %cx,%ebx
 804ab6e:	29 d8                	sub    %ebx,%eax
 804ab70:	8b 1a                	mov    (%edx),%ebx
 804ab72:	c1 eb 10             	shr    $0x10,%ebx
 804ab75:	c1 e9 10             	shr    $0x10,%ecx
 804ab78:	29 cb                	sub    %ecx,%ebx
 804ab7a:	89 c1                	mov    %eax,%ecx
 804ab7c:	c1 f9 10             	sar    $0x10,%ecx
 804ab7f:	01 d9                	add    %ebx,%ecx
 804ab81:	89 cb                	mov    %ecx,%ebx
 804ab83:	c1 fb 10             	sar    $0x10,%ebx
 804ab86:	c1 e1 10             	shl    $0x10,%ecx
 804ab89:	25 ff ff 00 00       	and    $0xffff,%eax
 804ab8e:	09 c1                	or     %eax,%ecx
 804ab90:	89 0a                	mov    %ecx,(%edx)
 804ab92:	83 c2 04             	add    $0x4,%edx
 804ab95:	39 ee                	cmp    %ebp,%esi
 804ab97:	73 c7                	jae    804ab60 <quorem+0x150>
 804ab99:	8d 47 04             	lea    0x4(%edi),%eax
 804ab9c:	8b 54 24 24          	mov    0x24(%esp),%edx
 804aba0:	8b 74 82 04          	mov    0x4(%edx,%eax,4),%esi
 804aba4:	85 f6                	test   %esi,%esi
 804aba6:	75 2d                	jne    804abd5 <quorem+0x1c5>
 804aba8:	8d 04 82             	lea    (%edx,%eax,4),%eax
 804abab:	39 44 24 30          	cmp    %eax,0x30(%esp)
 804abaf:	73 1d                	jae    804abce <quorem+0x1be>
 804abb1:	8b 18                	mov    (%eax),%ebx
 804abb3:	85 db                	test   %ebx,%ebx
 804abb5:	75 17                	jne    804abce <quorem+0x1be>
 804abb7:	8b 54 24 30          	mov    0x30(%esp),%edx
 804abbb:	eb 09                	jmp    804abc6 <quorem+0x1b6>
 804abbd:	8d 76 00             	lea    0x0(%esi),%esi
 804abc0:	8b 08                	mov    (%eax),%ecx
 804abc2:	85 c9                	test   %ecx,%ecx
 804abc4:	75 08                	jne    804abce <quorem+0x1be>
 804abc6:	4f                   	dec    %edi
 804abc7:	83 e8 04             	sub    $0x4,%eax
 804abca:	39 c2                	cmp    %eax,%edx
 804abcc:	72 f2                	jb     804abc0 <quorem+0x1b0>
 804abce:	8b 44 24 24          	mov    0x24(%esp),%eax
 804abd2:	89 78 10             	mov    %edi,0x10(%eax)
 804abd5:	8b 44 24 34          	mov    0x34(%esp),%eax
 804abd9:	83 c4 4c             	add    $0x4c,%esp
 804abdc:	5b                   	pop    %ebx
 804abdd:	5e                   	pop    %esi
 804abde:	5f                   	pop    %edi
 804abdf:	5d                   	pop    %ebp
 804abe0:	c3                   	ret    
 804abe1:	8d 76 00             	lea    0x0(%esi),%esi
 804abe4:	31 c0                	xor    %eax,%eax
 804abe6:	83 c4 4c             	add    $0x4c,%esp
 804abe9:	5b                   	pop    %ebx
 804abea:	5e                   	pop    %esi
 804abeb:	5f                   	pop    %edi
 804abec:	5d                   	pop    %ebp
 804abed:	c3                   	ret    
 804abee:	66 90                	xchg   %ax,%ax

0804abf0 <_dtoa_r>:
 804abf0:	55                   	push   %ebp
 804abf1:	57                   	push   %edi
 804abf2:	56                   	push   %esi
 804abf3:	53                   	push   %ebx
 804abf4:	81 ec 9c 00 00 00    	sub    $0x9c,%esp
 804abfa:	8b ac 24 b0 00 00 00 	mov    0xb0(%esp),%ebp
 804ac01:	8b 9c 24 c8 00 00 00 	mov    0xc8(%esp),%ebx
 804ac08:	dd 84 24 b4 00 00 00 	fldl   0xb4(%esp)
 804ac0f:	dd 5c 24 30          	fstpl  0x30(%esp)
 804ac13:	8b 45 40             	mov    0x40(%ebp),%eax
 804ac16:	85 c0                	test   %eax,%eax
 804ac18:	74 23                	je     804ac3d <_dtoa_r+0x4d>
 804ac1a:	8b 4d 44             	mov    0x44(%ebp),%ecx
 804ac1d:	89 48 04             	mov    %ecx,0x4(%eax)
 804ac20:	ba 01 00 00 00       	mov    $0x1,%edx
 804ac25:	d3 e2                	shl    %cl,%edx
 804ac27:	89 50 08             	mov    %edx,0x8(%eax)
 804ac2a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ac2e:	89 2c 24             	mov    %ebp,(%esp)
 804ac31:	e8 1e 26 00 00       	call   804d254 <_Bfree>
 804ac36:	c7 45 40 00 00 00 00 	movl   $0x0,0x40(%ebp)
 804ac3d:	8b 7c 24 34          	mov    0x34(%esp),%edi
 804ac41:	85 ff                	test   %edi,%edi
 804ac43:	0f 88 bb 00 00 00    	js     804ad04 <_dtoa_r+0x114>
 804ac49:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804ac4f:	89 f8                	mov    %edi,%eax
 804ac51:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
 804ac56:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
 804ac5b:	74 5b                	je     804acb8 <_dtoa_r+0xc8>
 804ac5d:	dd 44 24 30          	fldl   0x30(%esp)
 804ac61:	dd 5c 24 28          	fstpl  0x28(%esp)
 804ac65:	d9 ee                	fldz   
 804ac67:	dd 44 24 28          	fldl   0x28(%esp)
 804ac6b:	da e9                	fucompp 
 804ac6d:	df e0                	fnstsw %ax
 804ac6f:	80 e4 45             	and    $0x45,%ah
 804ac72:	80 f4 40             	xor    $0x40,%ah
 804ac75:	0f 85 a1 00 00 00    	jne    804ad1c <_dtoa_r+0x12c>
 804ac7b:	8b 84 24 c4 00 00 00 	mov    0xc4(%esp),%eax
 804ac82:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804ac88:	8b ac 24 cc 00 00 00 	mov    0xcc(%esp),%ebp
 804ac8f:	85 ed                	test   %ebp,%ebp
 804ac91:	0f 84 bd 04 00 00    	je     804b154 <_dtoa_r+0x564>
 804ac97:	8b 94 24 cc 00 00 00 	mov    0xcc(%esp),%edx
 804ac9e:	c7 02 f8 04 05 08    	movl   $0x80504f8,(%edx)
 804aca4:	be f7 04 05 08       	mov    $0x80504f7,%esi
 804aca9:	89 f0                	mov    %esi,%eax
 804acab:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 804acb1:	5b                   	pop    %ebx
 804acb2:	5e                   	pop    %esi
 804acb3:	5f                   	pop    %edi
 804acb4:	5d                   	pop    %ebp
 804acb5:	c3                   	ret    
 804acb6:	66 90                	xchg   %ax,%ax
 804acb8:	8b 84 24 c4 00 00 00 	mov    0xc4(%esp),%eax
 804acbf:	c7 00 0f 27 00 00    	movl   $0x270f,(%eax)
 804acc5:	8b 44 24 30          	mov    0x30(%esp),%eax
 804acc9:	85 c0                	test   %eax,%eax
 804accb:	0f 84 37 04 00 00    	je     804b108 <_dtoa_r+0x518>
 804acd1:	be 89 06 05 08       	mov    $0x8050689,%esi
 804acd6:	8b 84 24 cc 00 00 00 	mov    0xcc(%esp),%eax
 804acdd:	85 c0                	test   %eax,%eax
 804acdf:	74 c8                	je     804aca9 <_dtoa_r+0xb9>
 804ace1:	80 7e 03 00          	cmpb   $0x0,0x3(%esi)
 804ace5:	0f 85 35 04 00 00    	jne    804b120 <_dtoa_r+0x530>
 804aceb:	8d 46 03             	lea    0x3(%esi),%eax
 804acee:	8b 94 24 cc 00 00 00 	mov    0xcc(%esp),%edx
 804acf5:	89 02                	mov    %eax,(%edx)
 804acf7:	89 f0                	mov    %esi,%eax
 804acf9:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 804acff:	5b                   	pop    %ebx
 804ad00:	5e                   	pop    %esi
 804ad01:	5f                   	pop    %edi
 804ad02:	5d                   	pop    %ebp
 804ad03:	c3                   	ret    
 804ad04:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
 804ad0a:	81 e7 ff ff ff 7f    	and    $0x7fffffff,%edi
 804ad10:	89 7c 24 34          	mov    %edi,0x34(%esp)
 804ad14:	e9 36 ff ff ff       	jmp    804ac4f <_dtoa_r+0x5f>
 804ad19:	8d 76 00             	lea    0x0(%esi),%esi
 804ad1c:	8d 84 24 88 00 00 00 	lea    0x88(%esp),%eax
 804ad23:	89 44 24 10          	mov    %eax,0x10(%esp)
 804ad27:	8d 84 24 8c 00 00 00 	lea    0x8c(%esp),%eax
 804ad2e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804ad32:	dd 44 24 28          	fldl   0x28(%esp)
 804ad36:	dd 5c 24 04          	fstpl  0x4(%esp)
 804ad3a:	89 2c 24             	mov    %ebp,(%esp)
 804ad3d:	e8 d6 2e 00 00       	call   804dc18 <__d2b>
 804ad42:	89 44 24 54          	mov    %eax,0x54(%esp)
 804ad46:	89 fe                	mov    %edi,%esi
 804ad48:	c1 ee 14             	shr    $0x14,%esi
 804ad4b:	81 e6 ff 07 00 00    	and    $0x7ff,%esi
 804ad51:	0f 85 d1 03 00 00    	jne    804b128 <_dtoa_r+0x538>
 804ad57:	8b 9c 24 88 00 00 00 	mov    0x88(%esp),%ebx
 804ad5e:	8b b4 24 8c 00 00 00 	mov    0x8c(%esp),%esi
 804ad65:	01 de                	add    %ebx,%esi
 804ad67:	81 fe ef fb ff ff    	cmp    $0xfffffbef,%esi
 804ad6d:	0f 8c 59 09 00 00    	jl     804b6cc <_dtoa_r+0xadc>
 804ad73:	b9 0e fc ff ff       	mov    $0xfffffc0e,%ecx
 804ad78:	29 f1                	sub    %esi,%ecx
 804ad7a:	89 f8                	mov    %edi,%eax
 804ad7c:	d3 e0                	shl    %cl,%eax
 804ad7e:	8d 8e 12 04 00 00    	lea    0x412(%esi),%ecx
 804ad84:	8b 54 24 30          	mov    0x30(%esp),%edx
 804ad88:	d3 ea                	shr    %cl,%edx
 804ad8a:	09 d0                	or     %edx,%eax
 804ad8c:	31 d2                	xor    %edx,%edx
 804ad8e:	89 44 24 70          	mov    %eax,0x70(%esp)
 804ad92:	89 54 24 74          	mov    %edx,0x74(%esp)
 804ad96:	df 6c 24 70          	fildll 0x70(%esp)
 804ad9a:	dd 5c 24 28          	fstpl  0x28(%esp)
 804ad9e:	81 6c 24 2c 00 00 f0 	subl   $0x1f00000,0x2c(%esp)
 804ada5:	01 
 804ada6:	4e                   	dec    %esi
 804ada7:	c7 44 24 4c 01 00 00 	movl   $0x1,0x4c(%esp)
 804adae:	00 
 804adaf:	dd 44 24 28          	fldl   0x28(%esp)
 804adb3:	d8 25 90 06 05 08    	fsubs  0x8050690
 804adb9:	dc 0d a8 06 05 08    	fmull  0x80506a8
 804adbf:	dc 05 b0 06 05 08    	faddl  0x80506b0
 804adc5:	dd 05 b8 06 05 08    	fldl   0x80506b8
 804adcb:	56                   	push   %esi
 804adcc:	da 0c 24             	fimull (%esp)
 804adcf:	5f                   	pop    %edi
 804add0:	de c1                	faddp  %st,%st(1)
 804add2:	d9 7c 24 7e          	fnstcw 0x7e(%esp)
 804add6:	66 8b 44 24 7e       	mov    0x7e(%esp),%ax
 804addb:	b4 0c                	mov    $0xc,%ah
 804addd:	66 89 44 24 7c       	mov    %ax,0x7c(%esp)
 804ade2:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804ade6:	db 54 24 44          	fistl  0x44(%esp)
 804adea:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804adee:	d9 ee                	fldz   
 804adf0:	dd e9                	fucomp %st(1)
 804adf2:	df e0                	fnstsw %ax
 804adf4:	f6 c4 45             	test   $0x45,%ah
 804adf7:	0f 84 a3 05 00 00    	je     804b3a0 <_dtoa_r+0x7b0>
 804adfd:	dd d8                	fstp   %st(0)
 804adff:	83 7c 24 44 16       	cmpl   $0x16,0x44(%esp)
 804ae04:	0f 87 56 05 00 00    	ja     804b360 <_dtoa_r+0x770>
 804ae0a:	8b 44 24 44          	mov    0x44(%esp),%eax
 804ae0e:	dd 04 c5 60 07 05 08 	fldl   0x8050760(,%eax,8)
 804ae15:	dd 44 24 30          	fldl   0x30(%esp)
 804ae19:	d9 c9                	fxch   %st(1)
 804ae1b:	da e9                	fucompp 
 804ae1d:	df e0                	fnstsw %ax
 804ae1f:	f6 c4 45             	test   $0x45,%ah
 804ae22:	0f 85 b8 08 00 00    	jne    804b6e0 <_dtoa_r+0xaf0>
 804ae28:	ff 4c 24 44          	decl   0x44(%esp)
 804ae2c:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%esp)
 804ae33:	00 
 804ae34:	29 f3                	sub    %esi,%ebx
 804ae36:	89 d8                	mov    %ebx,%eax
 804ae38:	48                   	dec    %eax
 804ae39:	0f 88 4d 05 00 00    	js     804b38c <_dtoa_r+0x79c>
 804ae3f:	89 44 24 28          	mov    %eax,0x28(%esp)
 804ae43:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%esp)
 804ae4a:	00 
 804ae4b:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 804ae4f:	85 db                	test   %ebx,%ebx
 804ae51:	0f 88 19 05 00 00    	js     804b370 <_dtoa_r+0x780>
 804ae57:	8b 44 24 44          	mov    0x44(%esp),%eax
 804ae5b:	01 44 24 28          	add    %eax,0x28(%esp)
 804ae5f:	89 44 24 50          	mov    %eax,0x50(%esp)
 804ae63:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804ae6a:	00 
 804ae6b:	83 bc 24 bc 00 00 00 	cmpl   $0x9,0xbc(%esp)
 804ae72:	09 
 804ae73:	0f 87 e7 02 00 00    	ja     804b160 <_dtoa_r+0x570>
 804ae79:	83 bc 24 bc 00 00 00 	cmpl   $0x5,0xbc(%esp)
 804ae80:	05 
 804ae81:	0f 8e 5d 10 00 00    	jle    804bee4 <_dtoa_r+0x12f4>
 804ae87:	83 ac 24 bc 00 00 00 	subl   $0x4,0xbc(%esp)
 804ae8e:	04 
 804ae8f:	31 ff                	xor    %edi,%edi
 804ae91:	83 bc 24 bc 00 00 00 	cmpl   $0x3,0xbc(%esp)
 804ae98:	03 
 804ae99:	0f 84 89 0c 00 00    	je     804bb28 <_dtoa_r+0xf38>
 804ae9f:	0f 8f 5b 09 00 00    	jg     804b800 <_dtoa_r+0xc10>
 804aea5:	83 bc 24 bc 00 00 00 	cmpl   $0x2,0xbc(%esp)
 804aeac:	02 
 804aead:	0f 85 b8 02 00 00    	jne    804b16b <_dtoa_r+0x57b>
 804aeb3:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 804aeba:	00 
 804aebb:	8b 8c 24 c0 00 00 00 	mov    0xc0(%esp),%ecx
 804aec2:	85 c9                	test   %ecx,%ecx
 804aec4:	0f 8e 9b 0c 00 00    	jle    804bb65 <_dtoa_r+0xf75>
 804aeca:	8b 9c 24 c0 00 00 00 	mov    0xc0(%esp),%ebx
 804aed1:	89 5c 24 68          	mov    %ebx,0x68(%esp)
 804aed5:	89 5c 24 40          	mov    %ebx,0x40(%esp)
 804aed9:	c7 45 44 00 00 00 00 	movl   $0x0,0x44(%ebp)
 804aee0:	83 fb 17             	cmp    $0x17,%ebx
 804aee3:	0f 86 05 10 00 00    	jbe    804beee <_dtoa_r+0x12fe>
 804aee9:	b9 01 00 00 00       	mov    $0x1,%ecx
 804aeee:	b8 04 00 00 00       	mov    $0x4,%eax
 804aef3:	90                   	nop
 804aef4:	89 ca                	mov    %ecx,%edx
 804aef6:	d1 e0                	shl    %eax
 804aef8:	8d 49 01             	lea    0x1(%ecx),%ecx
 804aefb:	8d 70 14             	lea    0x14(%eax),%esi
 804aefe:	39 de                	cmp    %ebx,%esi
 804af00:	76 f2                	jbe    804aef4 <_dtoa_r+0x304>
 804af02:	89 55 44             	mov    %edx,0x44(%ebp)
 804af05:	89 54 24 04          	mov    %edx,0x4(%esp)
 804af09:	89 2c 24             	mov    %ebp,(%esp)
 804af0c:	e8 b7 22 00 00       	call   804d1c8 <_Balloc>
 804af11:	89 c6                	mov    %eax,%esi
 804af13:	89 45 40             	mov    %eax,0x40(%ebp)
 804af16:	83 fb 0e             	cmp    $0xe,%ebx
 804af19:	0f 87 9d 02 00 00    	ja     804b1bc <_dtoa_r+0x5cc>
 804af1f:	85 ff                	test   %edi,%edi
 804af21:	0f 84 95 02 00 00    	je     804b1bc <_dtoa_r+0x5cc>
 804af27:	8b 44 24 44          	mov    0x44(%esp),%eax
 804af2b:	8b 54 24 44          	mov    0x44(%esp),%edx
 804af2f:	85 d2                	test   %edx,%edx
 804af31:	0f 8e f5 0c 00 00    	jle    804bc2c <_dtoa_r+0x103c>
 804af37:	83 e0 0f             	and    $0xf,%eax
 804af3a:	dd 04 c5 60 07 05 08 	fldl   0x8050760(,%eax,8)
 804af41:	8b 44 24 44          	mov    0x44(%esp),%eax
 804af45:	c1 f8 04             	sar    $0x4,%eax
 804af48:	a8 10                	test   $0x10,%al
 804af4a:	0f 84 07 0c 00 00    	je     804bb57 <_dtoa_r+0xf67>
 804af50:	83 e0 0f             	and    $0xf,%eax
 804af53:	dd 44 24 30          	fldl   0x30(%esp)
 804af57:	dc 35 40 07 05 08    	fdivl  0x8050740
 804af5d:	ba 03 00 00 00       	mov    $0x3,%edx
 804af62:	85 c0                	test   %eax,%eax
 804af64:	74 17                	je     804af7d <_dtoa_r+0x38d>
 804af66:	31 c9                	xor    %ecx,%ecx
 804af68:	a8 01                	test   $0x1,%al
 804af6a:	74 0c                	je     804af78 <_dtoa_r+0x388>
 804af6c:	d9 c9                	fxch   %st(1)
 804af6e:	42                   	inc    %edx
 804af6f:	dc 0c cd 20 07 05 08 	fmull  0x8050720(,%ecx,8)
 804af76:	d9 c9                	fxch   %st(1)
 804af78:	41                   	inc    %ecx
 804af79:	d1 f8                	sar    %eax
 804af7b:	75 eb                	jne    804af68 <_dtoa_r+0x378>
 804af7d:	de f1                	fdivp  %st,%st(1)
 804af7f:	8b 7c 24 5c          	mov    0x5c(%esp),%edi
 804af83:	85 ff                	test   %edi,%edi
 804af85:	74 0f                	je     804af96 <_dtoa_r+0x3a6>
 804af87:	d9 e8                	fld1   
 804af89:	dd e9                	fucomp %st(1)
 804af8b:	df e0                	fnstsw %ax
 804af8d:	f6 c4 45             	test   $0x45,%ah
 804af90:	0f 84 78 0e 00 00    	je     804be0e <_dtoa_r+0x121e>
 804af96:	d9 c0                	fld    %st(0)
 804af98:	52                   	push   %edx
 804af99:	da 0c 24             	fimull (%esp)
 804af9c:	58                   	pop    %eax
 804af9d:	d8 05 9c 06 05 08    	fadds  0x805069c
 804afa3:	dd 5c 24 60          	fstpl  0x60(%esp)
 804afa7:	81 6c 24 64 00 00 40 	subl   $0x3400000,0x64(%esp)
 804afae:	03 
 804afaf:	8b 44 24 40          	mov    0x40(%esp),%eax
 804afb3:	85 c0                	test   %eax,%eax
 804afb5:	0f 84 19 0b 00 00    	je     804bad4 <_dtoa_r+0xee4>
 804afbb:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 804afbf:	8b 4c 24 40          	mov    0x40(%esp),%ecx
 804afc3:	8b 44 24 58          	mov    0x58(%esp),%eax
 804afc7:	85 c0                	test   %eax,%eax
 804afc9:	0f 84 4c 0d 00 00    	je     804bd1b <_dtoa_r+0x112b>
 804afcf:	dd 44 24 60          	fldl   0x60(%esp)
 804afd3:	d9 05 a4 06 05 08    	flds   0x80506a4
 804afd9:	dc 34 cd 58 07 05 08 	fdivl  0x8050758(,%ecx,8)
 804afe0:	de e1                	fsubp  %st,%st(1)
 804afe2:	d9 c9                	fxch   %st(1)
 804afe4:	d9 7c 24 7e          	fnstcw 0x7e(%esp)
 804afe8:	66 8b 44 24 7e       	mov    0x7e(%esp),%ax
 804afed:	b4 0c                	mov    $0xc,%ah
 804afef:	66 89 44 24 7c       	mov    %ax,0x7c(%esp)
 804aff4:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804aff8:	db 54 24 78          	fistl  0x78(%esp)
 804affc:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804b000:	8b 54 24 78          	mov    0x78(%esp),%edx
 804b004:	52                   	push   %edx
 804b005:	da 24 24             	fisubl (%esp)
 804b008:	d9 c9                	fxch   %st(1)
 804b00a:	58                   	pop    %eax
 804b00b:	83 c2 30             	add    $0x30,%edx
 804b00e:	88 16                	mov    %dl,(%esi)
 804b010:	8d 7e 01             	lea    0x1(%esi),%edi
 804b013:	dd e1                	fucom  %st(1)
 804b015:	df e0                	fnstsw %ax
 804b017:	f6 c4 45             	test   $0x45,%ah
 804b01a:	0f 84 85 00 00 00    	je     804b0a5 <_dtoa_r+0x4b5>
 804b020:	d9 c1                	fld    %st(1)
 804b022:	d8 2d 94 06 05 08    	fsubrs 0x8050694
 804b028:	d9 c9                	fxch   %st(1)
 804b02a:	dd e1                	fucom  %st(1)
 804b02c:	df e0                	fnstsw %ax
 804b02e:	dd d9                	fstp   %st(1)
 804b030:	f6 c4 45             	test   $0x45,%ah
 804b033:	0f 84 3d 0e 00 00    	je     804be76 <_dtoa_r+0x1286>
 804b039:	83 f9 01             	cmp    $0x1,%ecx
 804b03c:	0f 8e 6a 01 00 00    	jle    804b1ac <_dtoa_r+0x5bc>
 804b042:	01 f1                	add    %esi,%ecx
 804b044:	d9 05 98 06 05 08    	flds   0x8050698
 804b04a:	eb 25                	jmp    804b071 <_dtoa_r+0x481>
 804b04c:	d9 c1                	fld    %st(1)
 804b04e:	d8 2d 94 06 05 08    	fsubrs 0x8050694
 804b054:	d9 c9                	fxch   %st(1)
 804b056:	dd e1                	fucom  %st(1)
 804b058:	df e0                	fnstsw %ax
 804b05a:	dd d9                	fstp   %st(1)
 804b05c:	f6 c4 45             	test   $0x45,%ah
 804b05f:	0f 84 17 0e 00 00    	je     804be7c <_dtoa_r+0x128c>
 804b065:	39 cf                	cmp    %ecx,%edi
 804b067:	0f 84 45 01 00 00    	je     804b1b2 <_dtoa_r+0x5c2>
 804b06d:	d9 c9                	fxch   %st(1)
 804b06f:	d9 ca                	fxch   %st(2)
 804b071:	dc c9                	fmul   %st,%st(1)
 804b073:	dc ca                	fmul   %st,%st(2)
 804b075:	d9 ca                	fxch   %st(2)
 804b077:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804b07b:	db 54 24 78          	fistl  0x78(%esp)
 804b07f:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804b083:	8b 54 24 78          	mov    0x78(%esp),%edx
 804b087:	52                   	push   %edx
 804b088:	da 24 24             	fisubl (%esp)
 804b08b:	d9 c9                	fxch   %st(1)
 804b08d:	58                   	pop    %eax
 804b08e:	83 c2 30             	add    $0x30,%edx
 804b091:	88 17                	mov    %dl,(%edi)
 804b093:	47                   	inc    %edi
 804b094:	dd e1                	fucom  %st(1)
 804b096:	df e0                	fnstsw %ax
 804b098:	f6 c4 45             	test   $0x45,%ah
 804b09b:	75 af                	jne    804b04c <_dtoa_r+0x45c>
 804b09d:	dd d8                	fstp   %st(0)
 804b09f:	dd d8                	fstp   %st(0)
 804b0a1:	dd d8                	fstp   %st(0)
 804b0a3:	eb 04                	jmp    804b0a9 <_dtoa_r+0x4b9>
 804b0a5:	dd d8                	fstp   %st(0)
 804b0a7:	dd d8                	fstp   %st(0)
 804b0a9:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 804b0ad:	eb 11                	jmp    804b0c0 <_dtoa_r+0x4d0>
 804b0af:	dd d8                	fstp   %st(0)
 804b0b1:	dd d8                	fstp   %st(0)
 804b0b3:	dd d8                	fstp   %st(0)
 804b0b5:	eb 09                	jmp    804b0c0 <_dtoa_r+0x4d0>
 804b0b7:	90                   	nop
 804b0b8:	dd d8                	fstp   %st(0)
 804b0ba:	dd d8                	fstp   %st(0)
 804b0bc:	dd d8                	fstp   %st(0)
 804b0be:	66 90                	xchg   %ax,%ax
 804b0c0:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b0c4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b0c8:	89 2c 24             	mov    %ebp,(%esp)
 804b0cb:	e8 84 21 00 00       	call   804d254 <_Bfree>
 804b0d0:	c6 07 00             	movb   $0x0,(%edi)
 804b0d3:	8b 44 24 44          	mov    0x44(%esp),%eax
 804b0d7:	40                   	inc    %eax
 804b0d8:	8b 94 24 c4 00 00 00 	mov    0xc4(%esp),%edx
 804b0df:	89 02                	mov    %eax,(%edx)
 804b0e1:	8b ac 24 cc 00 00 00 	mov    0xcc(%esp),%ebp
 804b0e8:	85 ed                	test   %ebp,%ebp
 804b0ea:	0f 84 b9 fb ff ff    	je     804aca9 <_dtoa_r+0xb9>
 804b0f0:	8b 84 24 cc 00 00 00 	mov    0xcc(%esp),%eax
 804b0f7:	89 38                	mov    %edi,(%eax)
 804b0f9:	89 f0                	mov    %esi,%eax
 804b0fb:	81 c4 9c 00 00 00    	add    $0x9c,%esp
 804b101:	5b                   	pop    %ebx
 804b102:	5e                   	pop    %esi
 804b103:	5f                   	pop    %edi
 804b104:	5d                   	pop    %ebp
 804b105:	c3                   	ret    
 804b106:	66 90                	xchg   %ax,%ax
 804b108:	81 e7 ff ff 0f 00    	and    $0xfffff,%edi
 804b10e:	0f 85 bd fb ff ff    	jne    804acd1 <_dtoa_r+0xe1>
 804b114:	be 80 06 05 08       	mov    $0x8050680,%esi
 804b119:	e9 b8 fb ff ff       	jmp    804acd6 <_dtoa_r+0xe6>
 804b11e:	66 90                	xchg   %ax,%ax
 804b120:	8d 46 08             	lea    0x8(%esi),%eax
 804b123:	e9 c6 fb ff ff       	jmp    804acee <_dtoa_r+0xfe>
 804b128:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804b12c:	25 ff ff 0f 00       	and    $0xfffff,%eax
 804b131:	0d 00 00 f0 3f       	or     $0x3ff00000,%eax
 804b136:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804b13a:	81 ee ff 03 00 00    	sub    $0x3ff,%esi
 804b140:	8b 9c 24 88 00 00 00 	mov    0x88(%esp),%ebx
 804b147:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804b14e:	00 
 804b14f:	e9 5b fc ff ff       	jmp    804adaf <_dtoa_r+0x1bf>
 804b154:	be f7 04 05 08       	mov    $0x80504f7,%esi
 804b159:	e9 4b fb ff ff       	jmp    804aca9 <_dtoa_r+0xb9>
 804b15e:	66 90                	xchg   %ax,%ax
 804b160:	c7 84 24 bc 00 00 00 	movl   $0x0,0xbc(%esp)
 804b167:	00 00 00 00 
 804b16b:	c7 45 44 00 00 00 00 	movl   $0x0,0x44(%ebp)
 804b172:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804b179:	00 
 804b17a:	89 2c 24             	mov    %ebp,(%esp)
 804b17d:	e8 46 20 00 00       	call   804d1c8 <_Balloc>
 804b182:	89 c6                	mov    %eax,%esi
 804b184:	89 45 40             	mov    %eax,0x40(%ebp)
 804b187:	c7 84 24 c0 00 00 00 	movl   $0x0,0xc0(%esp)
 804b18e:	00 00 00 00 
 804b192:	c7 44 24 40 ff ff ff 	movl   $0xffffffff,0x40(%esp)
 804b199:	ff 
 804b19a:	c7 44 24 68 ff ff ff 	movl   $0xffffffff,0x68(%esp)
 804b1a1:	ff 
 804b1a2:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%esp)
 804b1a9:	00 
 804b1aa:	eb 10                	jmp    804b1bc <_dtoa_r+0x5cc>
 804b1ac:	dd d8                	fstp   %st(0)
 804b1ae:	dd d8                	fstp   %st(0)
 804b1b0:	eb 0a                	jmp    804b1bc <_dtoa_r+0x5cc>
 804b1b2:	dd d8                	fstp   %st(0)
 804b1b4:	dd d8                	fstp   %st(0)
 804b1b6:	dd d8                	fstp   %st(0)
 804b1b8:	eb 02                	jmp    804b1bc <_dtoa_r+0x5cc>
 804b1ba:	dd d8                	fstp   %st(0)
 804b1bc:	8b 84 24 8c 00 00 00 	mov    0x8c(%esp),%eax
 804b1c3:	85 c0                	test   %eax,%eax
 804b1c5:	0f 88 31 01 00 00    	js     804b2fc <_dtoa_r+0x70c>
 804b1cb:	83 7c 24 44 0e       	cmpl   $0xe,0x44(%esp)
 804b1d0:	0f 8f 26 01 00 00    	jg     804b2fc <_dtoa_r+0x70c>
 804b1d6:	8b 44 24 44          	mov    0x44(%esp),%eax
 804b1da:	dd 04 c5 60 07 05 08 	fldl   0x8050760(,%eax,8)
 804b1e1:	8b 84 24 c0 00 00 00 	mov    0xc0(%esp),%eax
 804b1e8:	85 c0                	test   %eax,%eax
 804b1ea:	0f 88 9f 06 00 00    	js     804b88f <_dtoa_r+0xc9f>
 804b1f0:	dd 44 24 30          	fldl   0x30(%esp)
 804b1f4:	d9 c0                	fld    %st(0)
 804b1f6:	d8 f2                	fdiv   %st(2),%st
 804b1f8:	d9 7c 24 7e          	fnstcw 0x7e(%esp)
 804b1fc:	66 8b 44 24 7e       	mov    0x7e(%esp),%ax
 804b201:	b4 0c                	mov    $0xc,%ah
 804b203:	66 89 44 24 7c       	mov    %ax,0x7c(%esp)
 804b208:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804b20c:	db 5c 24 78          	fistpl 0x78(%esp)
 804b210:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804b214:	8b 4c 24 78          	mov    0x78(%esp),%ecx
 804b218:	d9 c1                	fld    %st(1)
 804b21a:	51                   	push   %ecx
 804b21b:	da 0c 24             	fimull (%esp)
 804b21e:	58                   	pop    %eax
 804b21f:	de e9                	fsubrp %st,%st(1)
 804b221:	8d 41 30             	lea    0x30(%ecx),%eax
 804b224:	88 06                	mov    %al,(%esi)
 804b226:	8d 7e 01             	lea    0x1(%esi),%edi
 804b229:	83 7c 24 40 01       	cmpl   $0x1,0x40(%esp)
 804b22e:	74 70                	je     804b2a0 <_dtoa_r+0x6b0>
 804b230:	d9 05 98 06 05 08    	flds   0x8050698
 804b236:	dc c9                	fmul   %st,%st(1)
 804b238:	d9 ee                	fldz   
 804b23a:	d9 ca                	fxch   %st(2)
 804b23c:	dd e2                	fucom  %st(2)
 804b23e:	df e0                	fnstsw %ax
 804b240:	dd da                	fstp   %st(2)
 804b242:	80 e4 45             	and    $0x45,%ah
 804b245:	80 fc 40             	cmp    $0x40,%ah
 804b248:	0f 84 61 fe ff ff    	je     804b0af <_dtoa_r+0x4bf>
 804b24e:	8d 56 02             	lea    0x2(%esi),%edx
 804b251:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804b255:	01 f3                	add    %esi,%ebx
 804b257:	eb 1c                	jmp    804b275 <_dtoa_r+0x685>
 804b259:	8d 76 00             	lea    0x0(%esi),%esi
 804b25c:	dc c9                	fmul   %st,%st(1)
 804b25e:	42                   	inc    %edx
 804b25f:	d9 ee                	fldz   
 804b261:	d9 ca                	fxch   %st(2)
 804b263:	dd e2                	fucom  %st(2)
 804b265:	df e0                	fnstsw %ax
 804b267:	dd da                	fstp   %st(2)
 804b269:	80 e4 45             	and    $0x45,%ah
 804b26c:	80 fc 40             	cmp    $0x40,%ah
 804b26f:	0f 84 43 fe ff ff    	je     804b0b8 <_dtoa_r+0x4c8>
 804b275:	d9 c1                	fld    %st(1)
 804b277:	d8 f3                	fdiv   %st(3),%st
 804b279:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804b27d:	db 5c 24 78          	fistpl 0x78(%esp)
 804b281:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804b285:	8b 4c 24 78          	mov    0x78(%esp),%ecx
 804b289:	d9 c2                	fld    %st(2)
 804b28b:	51                   	push   %ecx
 804b28c:	da 0c 24             	fimull (%esp)
 804b28f:	5f                   	pop    %edi
 804b290:	de ea                	fsubrp %st,%st(2)
 804b292:	89 d7                	mov    %edx,%edi
 804b294:	8d 41 30             	lea    0x30(%ecx),%eax
 804b297:	88 42 ff             	mov    %al,-0x1(%edx)
 804b29a:	39 da                	cmp    %ebx,%edx
 804b29c:	75 be                	jne    804b25c <_dtoa_r+0x66c>
 804b29e:	dd d8                	fstp   %st(0)
 804b2a0:	d8 c0                	fadd   %st(0),%st
 804b2a2:	dd e1                	fucom  %st(1)
 804b2a4:	df e0                	fnstsw %ax
 804b2a6:	f6 c4 45             	test   $0x45,%ah
 804b2a9:	74 1d                	je     804b2c8 <_dtoa_r+0x6d8>
 804b2ab:	d9 c9                	fxch   %st(1)
 804b2ad:	da e9                	fucompp 
 804b2af:	df e0                	fnstsw %ax
 804b2b1:	80 e4 45             	and    $0x45,%ah
 804b2b4:	80 f4 40             	xor    $0x40,%ah
 804b2b7:	0f 85 03 fe ff ff    	jne    804b0c0 <_dtoa_r+0x4d0>
 804b2bd:	83 e1 01             	and    $0x1,%ecx
 804b2c0:	0f 84 fa fd ff ff    	je     804b0c0 <_dtoa_r+0x4d0>
 804b2c6:	eb 04                	jmp    804b2cc <_dtoa_r+0x6dc>
 804b2c8:	dd d8                	fstp   %st(0)
 804b2ca:	dd d8                	fstp   %st(0)
 804b2cc:	8a 57 ff             	mov    -0x1(%edi),%dl
 804b2cf:	eb 08                	jmp    804b2d9 <_dtoa_r+0x6e9>
 804b2d1:	8d 76 00             	lea    0x0(%esi),%esi
 804b2d4:	8a 50 ff             	mov    -0x1(%eax),%dl
 804b2d7:	89 c7                	mov    %eax,%edi
 804b2d9:	8d 47 ff             	lea    -0x1(%edi),%eax
 804b2dc:	80 fa 39             	cmp    $0x39,%dl
 804b2df:	0f 85 fa 0a 00 00    	jne    804bddf <_dtoa_r+0x11ef>
 804b2e5:	39 c6                	cmp    %eax,%esi
 804b2e7:	75 eb                	jne    804b2d4 <_dtoa_r+0x6e4>
 804b2e9:	ff 44 24 44          	incl   0x44(%esp)
 804b2ed:	c6 06 30             	movb   $0x30,(%esi)
 804b2f0:	89 f0                	mov    %esi,%eax
 804b2f2:	b2 31                	mov    $0x31,%dl
 804b2f4:	88 10                	mov    %dl,(%eax)
 804b2f6:	e9 c5 fd ff ff       	jmp    804b0c0 <_dtoa_r+0x4d0>
 804b2fb:	90                   	nop
 804b2fc:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804b300:	85 c9                	test   %ecx,%ecx
 804b302:	0f 84 b8 00 00 00    	je     804b3c0 <_dtoa_r+0x7d0>
 804b308:	83 bc 24 bc 00 00 00 	cmpl   $0x1,0xbc(%esp)
 804b30f:	01 
 804b310:	0f 8e ff 05 00 00    	jle    804b915 <_dtoa_r+0xd25>
 804b316:	8b 44 24 40          	mov    0x40(%esp),%eax
 804b31a:	48                   	dec    %eax
 804b31b:	39 44 24 38          	cmp    %eax,0x38(%esp)
 804b31f:	0f 8c 1d 08 00 00    	jl     804bb42 <_dtoa_r+0xf52>
 804b325:	8b 7c 24 38          	mov    0x38(%esp),%edi
 804b329:	29 c7                	sub    %eax,%edi
 804b32b:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804b32f:	8b 44 24 40          	mov    0x40(%esp),%eax
 804b333:	85 c0                	test   %eax,%eax
 804b335:	0f 88 8f 0a 00 00    	js     804bdca <_dtoa_r+0x11da>
 804b33b:	8b 44 24 40          	mov    0x40(%esp),%eax
 804b33f:	01 44 24 48          	add    %eax,0x48(%esp)
 804b343:	01 44 24 28          	add    %eax,0x28(%esp)
 804b347:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804b34e:	00 
 804b34f:	89 2c 24             	mov    %ebp,(%esp)
 804b352:	e8 c1 21 00 00       	call   804d518 <__i2b>
 804b357:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804b35b:	eb 73                	jmp    804b3d0 <_dtoa_r+0x7e0>
 804b35d:	8d 76 00             	lea    0x0(%esi),%esi
 804b360:	c7 44 24 5c 01 00 00 	movl   $0x1,0x5c(%esp)
 804b367:	00 
 804b368:	e9 c7 fa ff ff       	jmp    804ae34 <_dtoa_r+0x244>
 804b36d:	8d 76 00             	lea    0x0(%esi),%esi
 804b370:	8b 54 24 44          	mov    0x44(%esp),%edx
 804b374:	29 54 24 48          	sub    %edx,0x48(%esp)
 804b378:	f7 da                	neg    %edx
 804b37a:	89 54 24 38          	mov    %edx,0x38(%esp)
 804b37e:	c7 44 24 50 00 00 00 	movl   $0x0,0x50(%esp)
 804b385:	00 
 804b386:	e9 e0 fa ff ff       	jmp    804ae6b <_dtoa_r+0x27b>
 804b38b:	90                   	nop
 804b38c:	f7 d8                	neg    %eax
 804b38e:	89 44 24 48          	mov    %eax,0x48(%esp)
 804b392:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 804b399:	00 
 804b39a:	e9 ac fa ff ff       	jmp    804ae4b <_dtoa_r+0x25b>
 804b39f:	90                   	nop
 804b3a0:	db 44 24 44          	fildl  0x44(%esp)
 804b3a4:	da e9                	fucompp 
 804b3a6:	df e0                	fnstsw %ax
 804b3a8:	80 e4 45             	and    $0x45,%ah
 804b3ab:	80 fc 40             	cmp    $0x40,%ah
 804b3ae:	0f 84 4b fa ff ff    	je     804adff <_dtoa_r+0x20f>
 804b3b4:	ff 4c 24 44          	decl   0x44(%esp)
 804b3b8:	e9 42 fa ff ff       	jmp    804adff <_dtoa_r+0x20f>
 804b3bd:	8d 76 00             	lea    0x0(%esi),%esi
 804b3c0:	8b 7c 24 38          	mov    0x38(%esp),%edi
 804b3c4:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804b3c8:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804b3cf:	00 
 804b3d0:	85 db                	test   %ebx,%ebx
 804b3d2:	74 1e                	je     804b3f2 <_dtoa_r+0x802>
 804b3d4:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b3d8:	85 c0                	test   %eax,%eax
 804b3da:	7e 16                	jle    804b3f2 <_dtoa_r+0x802>
 804b3dc:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b3e0:	39 d8                	cmp    %ebx,%eax
 804b3e2:	0f 8f a0 04 00 00    	jg     804b888 <_dtoa_r+0xc98>
 804b3e8:	29 44 24 48          	sub    %eax,0x48(%esp)
 804b3ec:	29 c3                	sub    %eax,%ebx
 804b3ee:	29 44 24 28          	sub    %eax,0x28(%esp)
 804b3f2:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b3f6:	85 c0                	test   %eax,%eax
 804b3f8:	7e 68                	jle    804b462 <_dtoa_r+0x872>
 804b3fa:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804b3fe:	85 c9                	test   %ecx,%ecx
 804b400:	0f 84 12 07 00 00    	je     804bb18 <_dtoa_r+0xf28>
 804b406:	85 ff                	test   %edi,%edi
 804b408:	7e 4c                	jle    804b456 <_dtoa_r+0x866>
 804b40a:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804b40e:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b412:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b416:	89 2c 24             	mov    %ebp,(%esp)
 804b419:	e8 e6 22 00 00       	call   804d704 <__pow5mult>
 804b41e:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804b422:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b426:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b42a:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b42e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b432:	89 2c 24             	mov    %ebp,(%esp)
 804b435:	e8 0a 21 00 00       	call   804d544 <__multiply>
 804b43a:	8b 54 24 54          	mov    0x54(%esp),%edx
 804b43e:	89 54 24 04          	mov    %edx,0x4(%esp)
 804b442:	89 2c 24             	mov    %ebp,(%esp)
 804b445:	89 44 24 24          	mov    %eax,0x24(%esp)
 804b449:	e8 06 1e 00 00       	call   804d254 <_Bfree>
 804b44e:	8b 44 24 24          	mov    0x24(%esp),%eax
 804b452:	89 44 24 54          	mov    %eax,0x54(%esp)
 804b456:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b45a:	29 f8                	sub    %edi,%eax
 804b45c:	0f 85 96 04 00 00    	jne    804b8f8 <_dtoa_r+0xd08>
 804b462:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804b469:	00 
 804b46a:	89 2c 24             	mov    %ebp,(%esp)
 804b46d:	e8 a6 20 00 00       	call   804d518 <__i2b>
 804b472:	89 44 24 38          	mov    %eax,0x38(%esp)
 804b476:	8b 54 24 50          	mov    0x50(%esp),%edx
 804b47a:	85 d2                	test   %edx,%edx
 804b47c:	7e 18                	jle    804b496 <_dtoa_r+0x8a6>
 804b47e:	8b 54 24 50          	mov    0x50(%esp),%edx
 804b482:	89 54 24 08          	mov    %edx,0x8(%esp)
 804b486:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b48a:	89 2c 24             	mov    %ebp,(%esp)
 804b48d:	e8 72 22 00 00       	call   804d704 <__pow5mult>
 804b492:	89 44 24 38          	mov    %eax,0x38(%esp)
 804b496:	83 bc 24 bc 00 00 00 	cmpl   $0x1,0xbc(%esp)
 804b49d:	01 
 804b49e:	0f 8e ac 03 00 00    	jle    804b850 <_dtoa_r+0xc60>
 804b4a4:	31 ff                	xor    %edi,%edi
 804b4a6:	8b 44 24 50          	mov    0x50(%esp),%eax
 804b4aa:	85 c0                	test   %eax,%eax
 804b4ac:	0f 85 22 05 00 00    	jne    804b9d4 <_dtoa_r+0xde4>
 804b4b2:	ba 01 00 00 00       	mov    $0x1,%edx
 804b4b7:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b4bb:	01 d0                	add    %edx,%eax
 804b4bd:	83 e0 1f             	and    $0x1f,%eax
 804b4c0:	0f 84 f2 01 00 00    	je     804b6b8 <_dtoa_r+0xac8>
 804b4c6:	ba 20 00 00 00       	mov    $0x20,%edx
 804b4cb:	29 c2                	sub    %eax,%edx
 804b4cd:	83 fa 04             	cmp    $0x4,%edx
 804b4d0:	0f 8e fc 09 00 00    	jle    804bed2 <_dtoa_r+0x12e2>
 804b4d6:	ba 1c 00 00 00       	mov    $0x1c,%edx
 804b4db:	29 c2                	sub    %eax,%edx
 804b4dd:	01 54 24 48          	add    %edx,0x48(%esp)
 804b4e1:	01 d3                	add    %edx,%ebx
 804b4e3:	01 54 24 28          	add    %edx,0x28(%esp)
 804b4e7:	8b 4c 24 48          	mov    0x48(%esp),%ecx
 804b4eb:	85 c9                	test   %ecx,%ecx
 804b4ed:	7e 1c                	jle    804b50b <_dtoa_r+0x91b>
 804b4ef:	8b 54 24 48          	mov    0x48(%esp),%edx
 804b4f3:	89 54 24 08          	mov    %edx,0x8(%esp)
 804b4f7:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b4fb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b4ff:	89 2c 24             	mov    %ebp,(%esp)
 804b502:	e8 d9 22 00 00       	call   804d7e0 <__lshift>
 804b507:	89 44 24 54          	mov    %eax,0x54(%esp)
 804b50b:	8b 54 24 28          	mov    0x28(%esp),%edx
 804b50f:	85 d2                	test   %edx,%edx
 804b511:	7e 1c                	jle    804b52f <_dtoa_r+0x93f>
 804b513:	8b 54 24 28          	mov    0x28(%esp),%edx
 804b517:	89 54 24 08          	mov    %edx,0x8(%esp)
 804b51b:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b51f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b523:	89 2c 24             	mov    %ebp,(%esp)
 804b526:	e8 b5 22 00 00       	call   804d7e0 <__lshift>
 804b52b:	89 44 24 38          	mov    %eax,0x38(%esp)
 804b52f:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 804b533:	85 c0                	test   %eax,%eax
 804b535:	0f 85 b9 04 00 00    	jne    804b9f4 <_dtoa_r+0xe04>
 804b53b:	8b 44 24 40          	mov    0x40(%esp),%eax
 804b53f:	85 c0                	test   %eax,%eax
 804b541:	0f 8e 0d 05 00 00    	jle    804ba54 <_dtoa_r+0xe64>
 804b547:	8b 44 24 58          	mov    0x58(%esp),%eax
 804b54b:	85 c0                	test   %eax,%eax
 804b54d:	0f 84 9d 01 00 00    	je     804b6f0 <_dtoa_r+0xb00>
 804b553:	85 db                	test   %ebx,%ebx
 804b555:	7e 18                	jle    804b56f <_dtoa_r+0x97f>
 804b557:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804b55b:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b55f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b563:	89 2c 24             	mov    %ebp,(%esp)
 804b566:	e8 75 22 00 00       	call   804d7e0 <__lshift>
 804b56b:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804b56f:	85 ff                	test   %edi,%edi
 804b571:	0f 85 fb 06 00 00    	jne    804bc72 <_dtoa_r+0x1082>
 804b577:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b57b:	89 44 24 28          	mov    %eax,0x28(%esp)
 804b57f:	8d 5e 01             	lea    0x1(%esi),%ebx
 804b582:	8b 54 24 40          	mov    0x40(%esp),%edx
 804b586:	01 f2                	add    %esi,%edx
 804b588:	89 54 24 50          	mov    %edx,0x50(%esp)
 804b58c:	8b 4c 24 4c          	mov    0x4c(%esp),%ecx
 804b590:	8b 44 24 30          	mov    0x30(%esp),%eax
 804b594:	83 e0 01             	and    $0x1,%eax
 804b597:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804b59b:	89 cf                	mov    %ecx,%edi
 804b59d:	89 74 24 58          	mov    %esi,0x58(%esp)
 804b5a1:	8b 74 24 54          	mov    0x54(%esp),%esi
 804b5a5:	8d 76 00             	lea    0x0(%esi),%esi
 804b5a8:	8d 53 ff             	lea    -0x1(%ebx),%edx
 804b5ab:	89 54 24 48          	mov    %edx,0x48(%esp)
 804b5af:	8b 54 24 38          	mov    0x38(%esp),%edx
 804b5b3:	89 f0                	mov    %esi,%eax
 804b5b5:	e8 56 f4 ff ff       	call   804aa10 <quorem>
 804b5ba:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 804b5be:	83 c0 30             	add    $0x30,%eax
 804b5c1:	89 44 24 30          	mov    %eax,0x30(%esp)
 804b5c5:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804b5c9:	89 34 24             	mov    %esi,(%esp)
 804b5cc:	e8 07 23 00 00       	call   804d8d8 <__mcmp>
 804b5d1:	89 44 24 40          	mov    %eax,0x40(%esp)
 804b5d5:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b5d9:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b5dd:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b5e1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b5e5:	89 2c 24             	mov    %ebp,(%esp)
 804b5e8:	e8 33 23 00 00       	call   804d920 <__mdiff>
 804b5ed:	89 c2                	mov    %eax,%edx
 804b5ef:	8b 40 0c             	mov    0xc(%eax),%eax
 804b5f2:	85 c0                	test   %eax,%eax
 804b5f4:	89 54 24 04          	mov    %edx,0x4(%esp)
 804b5f8:	0f 84 36 03 00 00    	je     804b934 <_dtoa_r+0xd44>
 804b5fe:	89 2c 24             	mov    %ebp,(%esp)
 804b601:	e8 4e 1c 00 00       	call   804d254 <_Bfree>
 804b606:	b8 01 00 00 00       	mov    $0x1,%eax
 804b60b:	83 7c 24 40 00       	cmpl   $0x0,0x40(%esp)
 804b610:	0f 8c 74 05 00 00    	jl     804bb8a <_dtoa_r+0xf9a>
 804b616:	75 17                	jne    804b62f <_dtoa_r+0xa3f>
 804b618:	8b 8c 24 bc 00 00 00 	mov    0xbc(%esp),%ecx
 804b61f:	85 c9                	test   %ecx,%ecx
 804b621:	75 0c                	jne    804b62f <_dtoa_r+0xa3f>
 804b623:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804b627:	85 d2                	test   %edx,%edx
 804b629:	0f 84 5b 05 00 00    	je     804bb8a <_dtoa_r+0xf9a>
 804b62f:	85 c0                	test   %eax,%eax
 804b631:	0f 8f 93 06 00 00    	jg     804bcca <_dtoa_r+0x10da>
 804b637:	8a 54 24 30          	mov    0x30(%esp),%dl
 804b63b:	88 53 ff             	mov    %dl,-0x1(%ebx)
 804b63e:	3b 5c 24 50          	cmp    0x50(%esp),%ebx
 804b642:	0f 84 a1 06 00 00    	je     804bce9 <_dtoa_r+0x10f9>
 804b648:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804b64f:	00 
 804b650:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804b657:	00 
 804b658:	89 74 24 04          	mov    %esi,0x4(%esp)
 804b65c:	89 2c 24             	mov    %ebp,(%esp)
 804b65f:	e8 0c 1c 00 00       	call   804d270 <__multadd>
 804b664:	89 c6                	mov    %eax,%esi
 804b666:	3b 7c 24 28          	cmp    0x28(%esp),%edi
 804b66a:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804b671:	00 
 804b672:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804b679:	00 
 804b67a:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804b67e:	89 2c 24             	mov    %ebp,(%esp)
 804b681:	0f 84 39 03 00 00    	je     804b9c0 <_dtoa_r+0xdd0>
 804b687:	e8 e4 1b 00 00       	call   804d270 <__multadd>
 804b68c:	89 c7                	mov    %eax,%edi
 804b68e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804b695:	00 
 804b696:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804b69d:	00 
 804b69e:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b6a2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b6a6:	89 2c 24             	mov    %ebp,(%esp)
 804b6a9:	e8 c2 1b 00 00       	call   804d270 <__multadd>
 804b6ae:	89 44 24 28          	mov    %eax,0x28(%esp)
 804b6b2:	43                   	inc    %ebx
 804b6b3:	e9 f0 fe ff ff       	jmp    804b5a8 <_dtoa_r+0x9b8>
 804b6b8:	ba 1c 00 00 00       	mov    $0x1c,%edx
 804b6bd:	01 54 24 48          	add    %edx,0x48(%esp)
 804b6c1:	01 d3                	add    %edx,%ebx
 804b6c3:	01 54 24 28          	add    %edx,0x28(%esp)
 804b6c7:	e9 1b fe ff ff       	jmp    804b4e7 <_dtoa_r+0x8f7>
 804b6cc:	b9 ee fb ff ff       	mov    $0xfffffbee,%ecx
 804b6d1:	29 f1                	sub    %esi,%ecx
 804b6d3:	8b 44 24 30          	mov    0x30(%esp),%eax
 804b6d7:	d3 e0                	shl    %cl,%eax
 804b6d9:	e9 ae f6 ff ff       	jmp    804ad8c <_dtoa_r+0x19c>
 804b6de:	66 90                	xchg   %ax,%ax
 804b6e0:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%esp)
 804b6e7:	00 
 804b6e8:	e9 47 f7 ff ff       	jmp    804ae34 <_dtoa_r+0x244>
 804b6ed:	8d 76 00             	lea    0x0(%esi),%esi
 804b6f0:	bb 01 00 00 00       	mov    $0x1,%ebx
 804b6f5:	8b 7c 24 54          	mov    0x54(%esp),%edi
 804b6f9:	eb 20                	jmp    804b71b <_dtoa_r+0xb2b>
 804b6fb:	90                   	nop
 804b6fc:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804b703:	00 
 804b704:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804b70b:	00 
 804b70c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804b710:	89 2c 24             	mov    %ebp,(%esp)
 804b713:	e8 58 1b 00 00       	call   804d270 <__multadd>
 804b718:	89 c7                	mov    %eax,%edi
 804b71a:	43                   	inc    %ebx
 804b71b:	8b 54 24 38          	mov    0x38(%esp),%edx
 804b71f:	89 f8                	mov    %edi,%eax
 804b721:	e8 ea f2 ff ff       	call   804aa10 <quorem>
 804b726:	83 c0 30             	add    $0x30,%eax
 804b729:	88 44 1e ff          	mov    %al,-0x1(%esi,%ebx,1)
 804b72d:	3b 5c 24 40          	cmp    0x40(%esp),%ebx
 804b731:	7c c9                	jl     804b6fc <_dtoa_r+0xb0c>
 804b733:	89 44 24 30          	mov    %eax,0x30(%esp)
 804b737:	89 7c 24 54          	mov    %edi,0x54(%esp)
 804b73b:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804b73f:	85 db                	test   %ebx,%ebx
 804b741:	0f 8e 8e 06 00 00    	jle    804bdd5 <_dtoa_r+0x11e5>
 804b747:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
 804b74a:	31 c9                	xor    %ecx,%ecx
 804b74c:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804b753:	00 
 804b754:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b758:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b75c:	89 2c 24             	mov    %ebp,(%esp)
 804b75f:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804b763:	e8 78 20 00 00       	call   804d7e0 <__lshift>
 804b768:	89 44 24 54          	mov    %eax,0x54(%esp)
 804b76c:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b770:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b774:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b778:	89 04 24             	mov    %eax,(%esp)
 804b77b:	e8 58 21 00 00       	call   804d8d8 <__mcmp>
 804b780:	83 f8 00             	cmp    $0x0,%eax
 804b783:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804b787:	0f 8e 81 04 00 00    	jle    804bc0e <_dtoa_r+0x101e>
 804b78d:	8a 57 ff             	mov    -0x1(%edi),%dl
 804b790:	eb 07                	jmp    804b799 <_dtoa_r+0xba9>
 804b792:	66 90                	xchg   %ax,%ax
 804b794:	8a 50 ff             	mov    -0x1(%eax),%dl
 804b797:	89 c7                	mov    %eax,%edi
 804b799:	8d 47 ff             	lea    -0x1(%edi),%eax
 804b79c:	80 fa 39             	cmp    $0x39,%dl
 804b79f:	0f 85 c5 04 00 00    	jne    804bc6a <_dtoa_r+0x107a>
 804b7a5:	39 c6                	cmp    %eax,%esi
 804b7a7:	75 eb                	jne    804b794 <_dtoa_r+0xba4>
 804b7a9:	ff 44 24 44          	incl   0x44(%esp)
 804b7ad:	c6 06 31             	movb   $0x31,(%esi)
 804b7b0:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b7b4:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b7b8:	89 2c 24             	mov    %ebp,(%esp)
 804b7bb:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804b7bf:	e8 90 1a 00 00       	call   804d254 <_Bfree>
 804b7c4:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b7c8:	85 c0                	test   %eax,%eax
 804b7ca:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804b7ce:	0f 84 ec f8 ff ff    	je     804b0c0 <_dtoa_r+0x4d0>
 804b7d4:	85 c9                	test   %ecx,%ecx
 804b7d6:	74 12                	je     804b7ea <_dtoa_r+0xbfa>
 804b7d8:	3b 4c 24 4c          	cmp    0x4c(%esp),%ecx
 804b7dc:	74 0c                	je     804b7ea <_dtoa_r+0xbfa>
 804b7de:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804b7e2:	89 2c 24             	mov    %ebp,(%esp)
 804b7e5:	e8 6a 1a 00 00       	call   804d254 <_Bfree>
 804b7ea:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804b7ee:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b7f2:	89 2c 24             	mov    %ebp,(%esp)
 804b7f5:	e8 5a 1a 00 00       	call   804d254 <_Bfree>
 804b7fa:	e9 c1 f8 ff ff       	jmp    804b0c0 <_dtoa_r+0x4d0>
 804b7ff:	90                   	nop
 804b800:	83 bc 24 bc 00 00 00 	cmpl   $0x4,0xbc(%esp)
 804b807:	04 
 804b808:	0f 84 27 03 00 00    	je     804bb35 <_dtoa_r+0xf45>
 804b80e:	83 bc 24 bc 00 00 00 	cmpl   $0x5,0xbc(%esp)
 804b815:	05 
 804b816:	0f 85 4f f9 ff ff    	jne    804b16b <_dtoa_r+0x57b>
 804b81c:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%esp)
 804b823:	00 
 804b824:	8b 84 24 c0 00 00 00 	mov    0xc0(%esp),%eax
 804b82b:	03 44 24 44          	add    0x44(%esp),%eax
 804b82f:	89 44 24 68          	mov    %eax,0x68(%esp)
 804b833:	89 c3                	mov    %eax,%ebx
 804b835:	43                   	inc    %ebx
 804b836:	89 5c 24 40          	mov    %ebx,0x40(%esp)
 804b83a:	85 db                	test   %ebx,%ebx
 804b83c:	0f 8f 97 f6 ff ff    	jg     804aed9 <_dtoa_r+0x2e9>
 804b842:	c7 45 44 00 00 00 00 	movl   $0x0,0x44(%ebp)
 804b849:	31 d2                	xor    %edx,%edx
 804b84b:	e9 b5 f6 ff ff       	jmp    804af05 <_dtoa_r+0x315>
 804b850:	8b 44 24 30          	mov    0x30(%esp),%eax
 804b854:	85 c0                	test   %eax,%eax
 804b856:	0f 85 48 fc ff ff    	jne    804b4a4 <_dtoa_r+0x8b4>
 804b85c:	8b 44 24 34          	mov    0x34(%esp),%eax
 804b860:	a9 ff ff 0f 00       	test   $0xfffff,%eax
 804b865:	0f 85 39 fc ff ff    	jne    804b4a4 <_dtoa_r+0x8b4>
 804b86b:	a9 00 00 f0 7f       	test   $0x7ff00000,%eax
 804b870:	0f 84 2e fc ff ff    	je     804b4a4 <_dtoa_r+0x8b4>
 804b876:	ff 44 24 48          	incl   0x48(%esp)
 804b87a:	ff 44 24 28          	incl   0x28(%esp)
 804b87e:	bf 01 00 00 00       	mov    $0x1,%edi
 804b883:	e9 1e fc ff ff       	jmp    804b4a6 <_dtoa_r+0x8b6>
 804b888:	89 d8                	mov    %ebx,%eax
 804b88a:	e9 59 fb ff ff       	jmp    804b3e8 <_dtoa_r+0x7f8>
 804b88f:	83 7c 24 40 00       	cmpl   $0x0,0x40(%esp)
 804b894:	0f 8f 56 f9 ff ff    	jg     804b1f0 <_dtoa_r+0x600>
 804b89a:	0f 85 60 02 00 00    	jne    804bb00 <_dtoa_r+0xf10>
 804b8a0:	d8 0d a0 06 05 08    	fmuls  0x80506a0
 804b8a6:	dd 44 24 30          	fldl   0x30(%esp)
 804b8aa:	d9 c9                	fxch   %st(1)
 804b8ac:	da e9                	fucompp 
 804b8ae:	df e0                	fnstsw %ax
 804b8b0:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804b8b7:	00 
 804b8b8:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804b8bf:	00 
 804b8c0:	f6 c4 05             	test   $0x5,%ah
 804b8c3:	0f 85 e1 01 00 00    	jne    804baaa <_dtoa_r+0xeba>
 804b8c9:	8b 94 24 c0 00 00 00 	mov    0xc0(%esp),%edx
 804b8d0:	f7 d2                	not    %edx
 804b8d2:	89 54 24 44          	mov    %edx,0x44(%esp)
 804b8d6:	89 f7                	mov    %esi,%edi
 804b8d8:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b8dc:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b8e0:	89 2c 24             	mov    %ebp,(%esp)
 804b8e3:	e8 6c 19 00 00       	call   804d254 <_Bfree>
 804b8e8:	83 7c 24 4c 00       	cmpl   $0x0,0x4c(%esp)
 804b8ed:	0f 85 f7 fe ff ff    	jne    804b7ea <_dtoa_r+0xbfa>
 804b8f3:	e9 c8 f7 ff ff       	jmp    804b0c0 <_dtoa_r+0x4d0>
 804b8f8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804b8fc:	8b 44 24 54          	mov    0x54(%esp),%eax
 804b900:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b904:	89 2c 24             	mov    %ebp,(%esp)
 804b907:	e8 f8 1d 00 00       	call   804d704 <__pow5mult>
 804b90c:	89 44 24 54          	mov    %eax,0x54(%esp)
 804b910:	e9 4d fb ff ff       	jmp    804b462 <_dtoa_r+0x872>
 804b915:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804b919:	85 d2                	test   %edx,%edx
 804b91b:	0f 84 c6 04 00 00    	je     804bde7 <_dtoa_r+0x11f7>
 804b921:	05 33 04 00 00       	add    $0x433,%eax
 804b926:	8b 7c 24 38          	mov    0x38(%esp),%edi
 804b92a:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804b92e:	e9 0c fa ff ff       	jmp    804b33f <_dtoa_r+0x74f>
 804b933:	90                   	nop
 804b934:	89 34 24             	mov    %esi,(%esp)
 804b937:	89 54 24 24          	mov    %edx,0x24(%esp)
 804b93b:	e8 98 1f 00 00       	call   804d8d8 <__mcmp>
 804b940:	8b 54 24 24          	mov    0x24(%esp),%edx
 804b944:	89 54 24 04          	mov    %edx,0x4(%esp)
 804b948:	89 2c 24             	mov    %ebp,(%esp)
 804b94b:	89 44 24 24          	mov    %eax,0x24(%esp)
 804b94f:	e8 00 19 00 00       	call   804d254 <_Bfree>
 804b954:	8b 44 24 24          	mov    0x24(%esp),%eax
 804b958:	85 c0                	test   %eax,%eax
 804b95a:	0f 85 ab fc ff ff    	jne    804b60b <_dtoa_r+0xa1b>
 804b960:	8b 8c 24 bc 00 00 00 	mov    0xbc(%esp),%ecx
 804b967:	85 c9                	test   %ecx,%ecx
 804b969:	0f 85 9c fc ff ff    	jne    804b60b <_dtoa_r+0xa1b>
 804b96f:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804b973:	85 d2                	test   %edx,%edx
 804b975:	0f 85 90 fc ff ff    	jne    804b60b <_dtoa_r+0xa1b>
 804b97b:	89 74 24 54          	mov    %esi,0x54(%esp)
 804b97f:	89 f9                	mov    %edi,%ecx
 804b981:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
 804b985:	8b 74 24 58          	mov    0x58(%esp),%esi
 804b989:	83 7c 24 30 39       	cmpl   $0x39,0x30(%esp)
 804b98e:	0f 84 61 02 00 00    	je     804bbf5 <_dtoa_r+0x1005>
 804b994:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804b998:	85 db                	test   %ebx,%ebx
 804b99a:	7e 07                	jle    804b9a3 <_dtoa_r+0xdb3>
 804b99c:	8d 57 31             	lea    0x31(%edi),%edx
 804b99f:	89 54 24 30          	mov    %edx,0x30(%esp)
 804b9a3:	8a 44 24 30          	mov    0x30(%esp),%al
 804b9a7:	8b 54 24 48          	mov    0x48(%esp),%edx
 804b9ab:	88 02                	mov    %al,(%edx)
 804b9ad:	89 d7                	mov    %edx,%edi
 804b9af:	47                   	inc    %edi
 804b9b0:	8b 44 24 28          	mov    0x28(%esp),%eax
 804b9b4:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804b9b8:	e9 f3 fd ff ff       	jmp    804b7b0 <_dtoa_r+0xbc0>
 804b9bd:	8d 76 00             	lea    0x0(%esi),%esi
 804b9c0:	e8 ab 18 00 00       	call   804d270 <__multadd>
 804b9c5:	89 c7                	mov    %eax,%edi
 804b9c7:	89 44 24 28          	mov    %eax,0x28(%esp)
 804b9cb:	43                   	inc    %ebx
 804b9cc:	e9 d7 fb ff ff       	jmp    804b5a8 <_dtoa_r+0x9b8>
 804b9d1:	8d 76 00             	lea    0x0(%esi),%esi
 804b9d4:	8b 54 24 38          	mov    0x38(%esp),%edx
 804b9d8:	8b 42 10             	mov    0x10(%edx),%eax
 804b9db:	8b 44 82 10          	mov    0x10(%edx,%eax,4),%eax
 804b9df:	89 04 24             	mov    %eax,(%esp)
 804b9e2:	e8 61 1a 00 00       	call   804d448 <__hi0bits>
 804b9e7:	ba 20 00 00 00       	mov    $0x20,%edx
 804b9ec:	29 c2                	sub    %eax,%edx
 804b9ee:	e9 c4 fa ff ff       	jmp    804b4b7 <_dtoa_r+0x8c7>
 804b9f3:	90                   	nop
 804b9f4:	8b 44 24 38          	mov    0x38(%esp),%eax
 804b9f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804b9fc:	8b 44 24 54          	mov    0x54(%esp),%eax
 804ba00:	89 04 24             	mov    %eax,(%esp)
 804ba03:	e8 d0 1e 00 00       	call   804d8d8 <__mcmp>
 804ba08:	85 c0                	test   %eax,%eax
 804ba0a:	0f 89 2b fb ff ff    	jns    804b53b <_dtoa_r+0x94b>
 804ba10:	ff 4c 24 44          	decl   0x44(%esp)
 804ba14:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804ba1b:	00 
 804ba1c:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804ba23:	00 
 804ba24:	8b 44 24 54          	mov    0x54(%esp),%eax
 804ba28:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ba2c:	89 2c 24             	mov    %ebp,(%esp)
 804ba2f:	e8 3c 18 00 00       	call   804d270 <__multadd>
 804ba34:	89 44 24 54          	mov    %eax,0x54(%esp)
 804ba38:	8b 44 24 58          	mov    0x58(%esp),%eax
 804ba3c:	85 c0                	test   %eax,%eax
 804ba3e:	0f 85 5d 04 00 00    	jne    804bea1 <_dtoa_r+0x12b1>
 804ba44:	8b 54 24 68          	mov    0x68(%esp),%edx
 804ba48:	89 54 24 40          	mov    %edx,0x40(%esp)
 804ba4c:	e9 ea fa ff ff       	jmp    804b53b <_dtoa_r+0x94b>
 804ba51:	8d 76 00             	lea    0x0(%esi),%esi
 804ba54:	83 bc 24 bc 00 00 00 	cmpl   $0x2,0xbc(%esp)
 804ba5b:	02 
 804ba5c:	0f 8e e5 fa ff ff    	jle    804b547 <_dtoa_r+0x957>
 804ba62:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ba66:	85 c0                	test   %eax,%eax
 804ba68:	0f 85 5b fe ff ff    	jne    804b8c9 <_dtoa_r+0xcd9>
 804ba6e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804ba75:	00 
 804ba76:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 804ba7d:	00 
 804ba7e:	8b 44 24 38          	mov    0x38(%esp),%eax
 804ba82:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ba86:	89 2c 24             	mov    %ebp,(%esp)
 804ba89:	e8 e2 17 00 00       	call   804d270 <__multadd>
 804ba8e:	89 44 24 38          	mov    %eax,0x38(%esp)
 804ba92:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ba96:	8b 44 24 54          	mov    0x54(%esp),%eax
 804ba9a:	89 04 24             	mov    %eax,(%esp)
 804ba9d:	e8 36 1e 00 00       	call   804d8d8 <__mcmp>
 804baa2:	85 c0                	test   %eax,%eax
 804baa4:	0f 8e 1f fe ff ff    	jle    804b8c9 <_dtoa_r+0xcd9>
 804baaa:	c6 06 31             	movb   $0x31,(%esi)
 804baad:	8d 7e 01             	lea    0x1(%esi),%edi
 804bab0:	ff 44 24 44          	incl   0x44(%esp)
 804bab4:	e9 1f fe ff ff       	jmp    804b8d8 <_dtoa_r+0xce8>
 804bab9:	d9 c0                	fld    %st(0)
 804babb:	52                   	push   %edx
 804babc:	da 0c 24             	fimull (%esp)
 804babf:	5f                   	pop    %edi
 804bac0:	d8 05 9c 06 05 08    	fadds  0x805069c
 804bac6:	dd 5c 24 60          	fstpl  0x60(%esp)
 804baca:	81 6c 24 64 00 00 40 	subl   $0x3400000,0x64(%esp)
 804bad1:	03 
 804bad2:	66 90                	xchg   %ax,%ax
 804bad4:	d8 25 a0 06 05 08    	fsubs  0x80506a0
 804bada:	dd 44 24 60          	fldl   0x60(%esp)
 804bade:	d9 c9                	fxch   %st(1)
 804bae0:	dd e1                	fucom  %st(1)
 804bae2:	df e0                	fnstsw %ax
 804bae4:	f6 c4 45             	test   $0x45,%ah
 804bae7:	0f 84 15 02 00 00    	je     804bd02 <_dtoa_r+0x1112>
 804baed:	d9 c9                	fxch   %st(1)
 804baef:	d9 e0                	fchs   
 804baf1:	da e9                	fucompp 
 804baf3:	df e0                	fnstsw %ax
 804baf5:	f6 c4 45             	test   $0x45,%ah
 804baf8:	0f 85 be f6 ff ff    	jne    804b1bc <_dtoa_r+0x5cc>
 804bafe:	eb 02                	jmp    804bb02 <_dtoa_r+0xf12>
 804bb00:	dd d8                	fstp   %st(0)
 804bb02:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804bb09:	00 
 804bb0a:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804bb11:	00 
 804bb12:	e9 b2 fd ff ff       	jmp    804b8c9 <_dtoa_r+0xcd9>
 804bb17:	90                   	nop
 804bb18:	8b 54 24 38          	mov    0x38(%esp),%edx
 804bb1c:	89 54 24 08          	mov    %edx,0x8(%esp)
 804bb20:	e9 d7 fd ff ff       	jmp    804b8fc <_dtoa_r+0xd0c>
 804bb25:	8d 76 00             	lea    0x0(%esi),%esi
 804bb28:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 804bb2f:	00 
 804bb30:	e9 ef fc ff ff       	jmp    804b824 <_dtoa_r+0xc34>
 804bb35:	c7 44 24 58 01 00 00 	movl   $0x1,0x58(%esp)
 804bb3c:	00 
 804bb3d:	e9 79 f3 ff ff       	jmp    804aebb <_dtoa_r+0x2cb>
 804bb42:	89 c2                	mov    %eax,%edx
 804bb44:	2b 54 24 38          	sub    0x38(%esp),%edx
 804bb48:	01 54 24 50          	add    %edx,0x50(%esp)
 804bb4c:	89 44 24 38          	mov    %eax,0x38(%esp)
 804bb50:	31 ff                	xor    %edi,%edi
 804bb52:	e9 d4 f7 ff ff       	jmp    804b32b <_dtoa_r+0x73b>
 804bb57:	dd 44 24 30          	fldl   0x30(%esp)
 804bb5b:	ba 02 00 00 00       	mov    $0x2,%edx
 804bb60:	e9 fd f3 ff ff       	jmp    804af62 <_dtoa_r+0x372>
 804bb65:	bb 01 00 00 00       	mov    $0x1,%ebx
 804bb6a:	c7 44 24 68 01 00 00 	movl   $0x1,0x68(%esp)
 804bb71:	00 
 804bb72:	c7 44 24 40 01 00 00 	movl   $0x1,0x40(%esp)
 804bb79:	00 
 804bb7a:	c7 84 24 c0 00 00 00 	movl   $0x1,0xc0(%esp)
 804bb81:	01 00 00 00 
 804bb85:	e9 b8 fc ff ff       	jmp    804b842 <_dtoa_r+0xc52>
 804bb8a:	89 74 24 54          	mov    %esi,0x54(%esp)
 804bb8e:	89 f9                	mov    %edi,%ecx
 804bb90:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
 804bb94:	8b 74 24 58          	mov    0x58(%esp),%esi
 804bb98:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 804bb9c:	85 c0                	test   %eax,%eax
 804bb9e:	0f 8e ff fd ff ff    	jle    804b9a3 <_dtoa_r+0xdb3>
 804bba4:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804bbab:	00 
 804bbac:	8b 44 24 54          	mov    0x54(%esp),%eax
 804bbb0:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bbb4:	89 2c 24             	mov    %ebp,(%esp)
 804bbb7:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804bbbb:	e8 20 1c 00 00       	call   804d7e0 <__lshift>
 804bbc0:	89 44 24 54          	mov    %eax,0x54(%esp)
 804bbc4:	8b 44 24 38          	mov    0x38(%esp),%eax
 804bbc8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bbcc:	8b 44 24 54          	mov    0x54(%esp),%eax
 804bbd0:	89 04 24             	mov    %eax,(%esp)
 804bbd3:	e8 00 1d 00 00       	call   804d8d8 <__mcmp>
 804bbd8:	83 f8 00             	cmp    $0x0,%eax
 804bbdb:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804bbdf:	0f 8e a6 02 00 00    	jle    804be8b <_dtoa_r+0x129b>
 804bbe5:	8d 57 31             	lea    0x31(%edi),%edx
 804bbe8:	89 54 24 30          	mov    %edx,0x30(%esp)
 804bbec:	83 fb 39             	cmp    $0x39,%ebx
 804bbef:	0f 85 ae fd ff ff    	jne    804b9a3 <_dtoa_r+0xdb3>
 804bbf5:	8b 54 24 48          	mov    0x48(%esp),%edx
 804bbf9:	c6 02 39             	movb   $0x39,(%edx)
 804bbfc:	89 d7                	mov    %edx,%edi
 804bbfe:	47                   	inc    %edi
 804bbff:	8b 44 24 28          	mov    0x28(%esp),%eax
 804bc03:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804bc07:	b2 39                	mov    $0x39,%dl
 804bc09:	e9 8b fb ff ff       	jmp    804b799 <_dtoa_r+0xba9>
 804bc0e:	75 0e                	jne    804bc1e <_dtoa_r+0x102e>
 804bc10:	f6 44 24 30 01       	testb  $0x1,0x30(%esp)
 804bc15:	74 07                	je     804bc1e <_dtoa_r+0x102e>
 804bc17:	e9 71 fb ff ff       	jmp    804b78d <_dtoa_r+0xb9d>
 804bc1c:	89 c7                	mov    %eax,%edi
 804bc1e:	8d 47 ff             	lea    -0x1(%edi),%eax
 804bc21:	80 7f ff 30          	cmpb   $0x30,-0x1(%edi)
 804bc25:	74 f5                	je     804bc1c <_dtoa_r+0x102c>
 804bc27:	e9 84 fb ff ff       	jmp    804b7b0 <_dtoa_r+0xbc0>
 804bc2c:	f7 d8                	neg    %eax
 804bc2e:	0f 84 cc 01 00 00    	je     804be00 <_dtoa_r+0x1210>
 804bc34:	89 c2                	mov    %eax,%edx
 804bc36:	83 e2 0f             	and    $0xf,%edx
 804bc39:	dd 44 24 30          	fldl   0x30(%esp)
 804bc3d:	dc 0c d5 60 07 05 08 	fmull  0x8050760(,%edx,8)
 804bc44:	ba 02 00 00 00       	mov    $0x2,%edx
 804bc49:	c1 f8 04             	sar    $0x4,%eax
 804bc4c:	0f 84 2d f3 ff ff    	je     804af7f <_dtoa_r+0x38f>
 804bc52:	31 c9                	xor    %ecx,%ecx
 804bc54:	a8 01                	test   $0x1,%al
 804bc56:	74 08                	je     804bc60 <_dtoa_r+0x1070>
 804bc58:	42                   	inc    %edx
 804bc59:	dc 0c cd 20 07 05 08 	fmull  0x8050720(,%ecx,8)
 804bc60:	41                   	inc    %ecx
 804bc61:	d1 f8                	sar    %eax
 804bc63:	75 ef                	jne    804bc54 <_dtoa_r+0x1064>
 804bc65:	e9 15 f3 ff ff       	jmp    804af7f <_dtoa_r+0x38f>
 804bc6a:	42                   	inc    %edx
 804bc6b:	88 10                	mov    %dl,(%eax)
 804bc6d:	e9 3e fb ff ff       	jmp    804b7b0 <_dtoa_r+0xbc0>
 804bc72:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804bc76:	8b 42 04             	mov    0x4(%edx),%eax
 804bc79:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bc7d:	89 2c 24             	mov    %ebp,(%esp)
 804bc80:	e8 43 15 00 00       	call   804d1c8 <_Balloc>
 804bc85:	89 c3                	mov    %eax,%ebx
 804bc87:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804bc8b:	8b 42 10             	mov    0x10(%edx),%eax
 804bc8e:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 804bc95:	89 44 24 08          	mov    %eax,0x8(%esp)
 804bc99:	89 d0                	mov    %edx,%eax
 804bc9b:	83 c0 0c             	add    $0xc,%eax
 804bc9e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bca2:	8d 43 0c             	lea    0xc(%ebx),%eax
 804bca5:	89 04 24             	mov    %eax,(%esp)
 804bca8:	e8 cb 14 00 00       	call   804d178 <memcpy>
 804bcad:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 804bcb4:	00 
 804bcb5:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804bcb9:	89 2c 24             	mov    %ebp,(%esp)
 804bcbc:	e8 1f 1b 00 00       	call   804d7e0 <__lshift>
 804bcc1:	89 44 24 28          	mov    %eax,0x28(%esp)
 804bcc5:	e9 b5 f8 ff ff       	jmp    804b57f <_dtoa_r+0x98f>
 804bcca:	89 74 24 54          	mov    %esi,0x54(%esp)
 804bcce:	89 f9                	mov    %edi,%ecx
 804bcd0:	8b 74 24 58          	mov    0x58(%esp),%esi
 804bcd4:	83 7c 24 30 39       	cmpl   $0x39,0x30(%esp)
 804bcd9:	0f 84 16 ff ff ff    	je     804bbf5 <_dtoa_r+0x1005>
 804bcdf:	8a 44 24 30          	mov    0x30(%esp),%al
 804bce3:	40                   	inc    %eax
 804bce4:	e9 be fc ff ff       	jmp    804b9a7 <_dtoa_r+0xdb7>
 804bce9:	89 74 24 54          	mov    %esi,0x54(%esp)
 804bced:	89 f9                	mov    %edi,%ecx
 804bcef:	89 df                	mov    %ebx,%edi
 804bcf1:	8b 74 24 58          	mov    0x58(%esp),%esi
 804bcf5:	8b 44 24 28          	mov    0x28(%esp),%eax
 804bcf9:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804bcfd:	e9 4a fa ff ff       	jmp    804b74c <_dtoa_r+0xb5c>
 804bd02:	dd d8                	fstp   %st(0)
 804bd04:	dd d8                	fstp   %st(0)
 804bd06:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804bd0d:	00 
 804bd0e:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 804bd15:	00 
 804bd16:	e9 8f fd ff ff       	jmp    804baaa <_dtoa_r+0xeba>
 804bd1b:	8d 41 ff             	lea    -0x1(%ecx),%eax
 804bd1e:	89 44 24 6c          	mov    %eax,0x6c(%esp)
 804bd22:	dd 44 24 60          	fldl   0x60(%esp)
 804bd26:	dc 0c c5 60 07 05 08 	fmull  0x8050760(,%eax,8)
 804bd2d:	d9 c9                	fxch   %st(1)
 804bd2f:	d9 7c 24 7e          	fnstcw 0x7e(%esp)
 804bd33:	66 8b 44 24 7e       	mov    0x7e(%esp),%ax
 804bd38:	b4 0c                	mov    $0xc,%ah
 804bd3a:	66 89 44 24 7c       	mov    %ax,0x7c(%esp)
 804bd3f:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804bd43:	db 54 24 78          	fistl  0x78(%esp)
 804bd47:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804bd4b:	8b 44 24 78          	mov    0x78(%esp),%eax
 804bd4f:	50                   	push   %eax
 804bd50:	da 24 24             	fisubl (%esp)
 804bd53:	5a                   	pop    %edx
 804bd54:	83 c0 30             	add    $0x30,%eax
 804bd57:	88 06                	mov    %al,(%esi)
 804bd59:	8d 7e 01             	lea    0x1(%esi),%edi
 804bd5c:	83 f9 01             	cmp    $0x1,%ecx
 804bd5f:	74 3c                	je     804bd9d <_dtoa_r+0x11ad>
 804bd61:	01 f1                	add    %esi,%ecx
 804bd63:	89 f8                	mov    %edi,%eax
 804bd65:	d9 05 98 06 05 08    	flds   0x8050698
 804bd6b:	eb 05                	jmp    804bd72 <_dtoa_r+0x1182>
 804bd6d:	8d 76 00             	lea    0x0(%esi),%esi
 804bd70:	d9 c9                	fxch   %st(1)
 804bd72:	dc c9                	fmul   %st,%st(1)
 804bd74:	d9 c9                	fxch   %st(1)
 804bd76:	d9 6c 24 7c          	fldcw  0x7c(%esp)
 804bd7a:	db 54 24 78          	fistl  0x78(%esp)
 804bd7e:	d9 6c 24 7e          	fldcw  0x7e(%esp)
 804bd82:	8b 54 24 78          	mov    0x78(%esp),%edx
 804bd86:	52                   	push   %edx
 804bd87:	da 24 24             	fisubl (%esp)
 804bd8a:	83 c4 04             	add    $0x4,%esp
 804bd8d:	83 c2 30             	add    $0x30,%edx
 804bd90:	88 10                	mov    %dl,(%eax)
 804bd92:	40                   	inc    %eax
 804bd93:	39 c8                	cmp    %ecx,%eax
 804bd95:	75 d9                	jne    804bd70 <_dtoa_r+0x1180>
 804bd97:	dd d9                	fstp   %st(1)
 804bd99:	03 7c 24 6c          	add    0x6c(%esp),%edi
 804bd9d:	d9 05 a4 06 05 08    	flds   0x80506a4
 804bda3:	d9 c2                	fld    %st(2)
 804bda5:	d8 c1                	fadd   %st(1),%st
 804bda7:	d9 ca                	fxch   %st(2)
 804bda9:	dd e2                	fucom  %st(2)
 804bdab:	df e0                	fnstsw %ax
 804bdad:	dd da                	fstp   %st(2)
 804bdaf:	f6 c4 45             	test   $0x45,%ah
 804bdb2:	0f 85 9c 00 00 00    	jne    804be54 <_dtoa_r+0x1264>
 804bdb8:	dd d8                	fstp   %st(0)
 804bdba:	dd d8                	fstp   %st(0)
 804bdbc:	dd d8                	fstp   %st(0)
 804bdbe:	8a 57 ff             	mov    -0x1(%edi),%dl
 804bdc1:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 804bdc5:	e9 0f f5 ff ff       	jmp    804b2d9 <_dtoa_r+0x6e9>
 804bdca:	2b 5c 24 40          	sub    0x40(%esp),%ebx
 804bdce:	31 c0                	xor    %eax,%eax
 804bdd0:	e9 6a f5 ff ff       	jmp    804b33f <_dtoa_r+0x74f>
 804bdd5:	bb 01 00 00 00       	mov    $0x1,%ebx
 804bdda:	e9 68 f9 ff ff       	jmp    804b747 <_dtoa_r+0xb57>
 804bddf:	42                   	inc    %edx
 804bde0:	88 10                	mov    %dl,(%eax)
 804bde2:	e9 d9 f2 ff ff       	jmp    804b0c0 <_dtoa_r+0x4d0>
 804bde7:	b8 36 00 00 00       	mov    $0x36,%eax
 804bdec:	2b 84 24 88 00 00 00 	sub    0x88(%esp),%eax
 804bdf3:	8b 7c 24 38          	mov    0x38(%esp),%edi
 804bdf7:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804bdfb:	e9 3f f5 ff ff       	jmp    804b33f <_dtoa_r+0x74f>
 804be00:	dd 44 24 30          	fldl   0x30(%esp)
 804be04:	ba 02 00 00 00       	mov    $0x2,%edx
 804be09:	e9 71 f1 ff ff       	jmp    804af7f <_dtoa_r+0x38f>
 804be0e:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804be12:	85 db                	test   %ebx,%ebx
 804be14:	0f 84 9f fc ff ff    	je     804bab9 <_dtoa_r+0xec9>
 804be1a:	8b 4c 24 68          	mov    0x68(%esp),%ecx
 804be1e:	85 c9                	test   %ecx,%ecx
 804be20:	0f 8e 94 f3 ff ff    	jle    804b1ba <_dtoa_r+0x5ca>
 804be26:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 804be2a:	4b                   	dec    %ebx
 804be2b:	d8 0d 98 06 05 08    	fmuls  0x8050698
 804be31:	42                   	inc    %edx
 804be32:	d9 c0                	fld    %st(0)
 804be34:	52                   	push   %edx
 804be35:	da 0c 24             	fimull (%esp)
 804be38:	58                   	pop    %eax
 804be39:	d8 05 9c 06 05 08    	fadds  0x805069c
 804be3f:	dd 5c 24 60          	fstpl  0x60(%esp)
 804be43:	81 6c 24 64 00 00 40 	subl   $0x3400000,0x64(%esp)
 804be4a:	03 
 804be4b:	8b 4c 24 68          	mov    0x68(%esp),%ecx
 804be4f:	e9 6f f1 ff ff       	jmp    804afc3 <_dtoa_r+0x3d3>
 804be54:	de e2                	fsubp  %st,%st(2)
 804be56:	d9 c9                	fxch   %st(1)
 804be58:	da e9                	fucompp 
 804be5a:	df e0                	fnstsw %ax
 804be5c:	f6 c4 45             	test   $0x45,%ah
 804be5f:	74 07                	je     804be68 <_dtoa_r+0x1278>
 804be61:	e9 56 f3 ff ff       	jmp    804b1bc <_dtoa_r+0x5cc>
 804be66:	89 c7                	mov    %eax,%edi
 804be68:	8d 47 ff             	lea    -0x1(%edi),%eax
 804be6b:	80 7f ff 30          	cmpb   $0x30,-0x1(%edi)
 804be6f:	74 f5                	je     804be66 <_dtoa_r+0x1276>
 804be71:	e9 33 f2 ff ff       	jmp    804b0a9 <_dtoa_r+0x4b9>
 804be76:	dd d8                	fstp   %st(0)
 804be78:	dd d8                	fstp   %st(0)
 804be7a:	eb 06                	jmp    804be82 <_dtoa_r+0x1292>
 804be7c:	dd d8                	fstp   %st(0)
 804be7e:	dd d8                	fstp   %st(0)
 804be80:	dd d8                	fstp   %st(0)
 804be82:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 804be86:	e9 4e f4 ff ff       	jmp    804b2d9 <_dtoa_r+0x6e9>
 804be8b:	0f 85 12 fb ff ff    	jne    804b9a3 <_dtoa_r+0xdb3>
 804be91:	f6 44 24 30 01       	testb  $0x1,0x30(%esp)
 804be96:	0f 84 07 fb ff ff    	je     804b9a3 <_dtoa_r+0xdb3>
 804be9c:	e9 44 fd ff ff       	jmp    804bbe5 <_dtoa_r+0xff5>
 804bea1:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804bea8:	00 
 804bea9:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804beb0:	00 
 804beb1:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 804beb5:	89 44 24 04          	mov    %eax,0x4(%esp)
 804beb9:	89 2c 24             	mov    %ebp,(%esp)
 804bebc:	e8 af 13 00 00       	call   804d270 <__multadd>
 804bec1:	89 44 24 4c          	mov    %eax,0x4c(%esp)
 804bec5:	8b 54 24 68          	mov    0x68(%esp),%edx
 804bec9:	89 54 24 40          	mov    %edx,0x40(%esp)
 804becd:	e9 69 f6 ff ff       	jmp    804b53b <_dtoa_r+0x94b>
 804bed2:	0f 84 0f f6 ff ff    	je     804b4e7 <_dtoa_r+0x8f7>
 804bed8:	ba 3c 00 00 00       	mov    $0x3c,%edx
 804bedd:	29 c2                	sub    %eax,%edx
 804bedf:	e9 d9 f7 ff ff       	jmp    804b6bd <_dtoa_r+0xacd>
 804bee4:	bf 01 00 00 00       	mov    $0x1,%edi
 804bee9:	e9 a3 ef ff ff       	jmp    804ae91 <_dtoa_r+0x2a1>
 804beee:	31 d2                	xor    %edx,%edx
 804bef0:	e9 10 f0 ff ff       	jmp    804af05 <_dtoa_r+0x315>
 804bef5:	66 90                	xchg   %ax,%ax
 804bef7:	90                   	nop

0804bef8 <__sflush_r>:
 804bef8:	55                   	push   %ebp
 804bef9:	57                   	push   %edi
 804befa:	56                   	push   %esi
 804befb:	53                   	push   %ebx
 804befc:	83 ec 1c             	sub    $0x1c,%esp
 804beff:	8b 7c 24 30          	mov    0x30(%esp),%edi
 804bf03:	8b 74 24 34          	mov    0x34(%esp),%esi
 804bf07:	8b 46 0c             	mov    0xc(%esi),%eax
 804bf0a:	a8 08                	test   $0x8,%al
 804bf0c:	0f 85 b6 00 00 00    	jne    804bfc8 <__sflush_r+0xd0>
 804bf12:	89 c1                	mov    %eax,%ecx
 804bf14:	80 cd 08             	or     $0x8,%ch
 804bf17:	66 89 4e 0c          	mov    %cx,0xc(%esi)
 804bf1b:	8b 6e 04             	mov    0x4(%esi),%ebp
 804bf1e:	85 ed                	test   %ebp,%ebp
 804bf20:	0f 8e fa 00 00 00    	jle    804c020 <__sflush_r+0x128>
 804bf26:	8b 56 28             	mov    0x28(%esi),%edx
 804bf29:	85 d2                	test   %edx,%edx
 804bf2b:	0f 84 8b 00 00 00    	je     804bfbc <__sflush_r+0xc4>
 804bf31:	8b 1f                	mov    (%edi),%ebx
 804bf33:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
 804bf39:	f6 c4 10             	test   $0x10,%ah
 804bf3c:	0f 84 ee 00 00 00    	je     804c030 <__sflush_r+0x138>
 804bf42:	8b 46 50             	mov    0x50(%esi),%eax
 804bf45:	83 e1 04             	and    $0x4,%ecx
 804bf48:	74 0d                	je     804bf57 <__sflush_r+0x5f>
 804bf4a:	2b 46 04             	sub    0x4(%esi),%eax
 804bf4d:	8b 4e 30             	mov    0x30(%esi),%ecx
 804bf50:	85 c9                	test   %ecx,%ecx
 804bf52:	74 03                	je     804bf57 <__sflush_r+0x5f>
 804bf54:	2b 46 3c             	sub    0x3c(%esi),%eax
 804bf57:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804bf5e:	00 
 804bf5f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804bf63:	8b 46 1c             	mov    0x1c(%esi),%eax
 804bf66:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bf6a:	89 3c 24             	mov    %edi,(%esp)
 804bf6d:	ff d2                	call   *%edx
 804bf6f:	83 f8 ff             	cmp    $0xffffffff,%eax
 804bf72:	0f 84 e4 00 00 00    	je     804c05c <__sflush_r+0x164>
 804bf78:	8b 56 0c             	mov    0xc(%esi),%edx
 804bf7b:	89 d1                	mov    %edx,%ecx
 804bf7d:	80 e5 f7             	and    $0xf7,%ch
 804bf80:	66 89 4e 0c          	mov    %cx,0xc(%esi)
 804bf84:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804bf8b:	8b 4e 10             	mov    0x10(%esi),%ecx
 804bf8e:	89 0e                	mov    %ecx,(%esi)
 804bf90:	80 e6 10             	and    $0x10,%dh
 804bf93:	0f 85 0c 01 00 00    	jne    804c0a5 <__sflush_r+0x1ad>
 804bf99:	89 1f                	mov    %ebx,(%edi)
 804bf9b:	8b 46 30             	mov    0x30(%esi),%eax
 804bf9e:	85 c0                	test   %eax,%eax
 804bfa0:	74 1a                	je     804bfbc <__sflush_r+0xc4>
 804bfa2:	8d 56 40             	lea    0x40(%esi),%edx
 804bfa5:	39 d0                	cmp    %edx,%eax
 804bfa7:	74 0c                	je     804bfb5 <__sflush_r+0xbd>
 804bfa9:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bfad:	89 3c 24             	mov    %edi,(%esp)
 804bfb0:	e8 2f 05 00 00       	call   804c4e4 <_free_r>
 804bfb5:	c7 46 30 00 00 00 00 	movl   $0x0,0x30(%esi)
 804bfbc:	31 c0                	xor    %eax,%eax
 804bfbe:	83 c4 1c             	add    $0x1c,%esp
 804bfc1:	5b                   	pop    %ebx
 804bfc2:	5e                   	pop    %esi
 804bfc3:	5f                   	pop    %edi
 804bfc4:	5d                   	pop    %ebp
 804bfc5:	c3                   	ret    
 804bfc6:	66 90                	xchg   %ax,%ax
 804bfc8:	8b 6e 10             	mov    0x10(%esi),%ebp
 804bfcb:	85 ed                	test   %ebp,%ebp
 804bfcd:	74 ed                	je     804bfbc <__sflush_r+0xc4>
 804bfcf:	8b 1e                	mov    (%esi),%ebx
 804bfd1:	29 eb                	sub    %ebp,%ebx
 804bfd3:	89 2e                	mov    %ebp,(%esi)
 804bfd5:	a8 03                	test   $0x3,%al
 804bfd7:	75 43                	jne    804c01c <__sflush_r+0x124>
 804bfd9:	8b 46 14             	mov    0x14(%esi),%eax
 804bfdc:	89 46 08             	mov    %eax,0x8(%esi)
 804bfdf:	85 db                	test   %ebx,%ebx
 804bfe1:	7f 0d                	jg     804bff0 <__sflush_r+0xf8>
 804bfe3:	eb d7                	jmp    804bfbc <__sflush_r+0xc4>
 804bfe5:	8d 76 00             	lea    0x0(%esi),%esi
 804bfe8:	01 c5                	add    %eax,%ebp
 804bfea:	29 c3                	sub    %eax,%ebx
 804bfec:	85 db                	test   %ebx,%ebx
 804bfee:	7e cc                	jle    804bfbc <__sflush_r+0xc4>
 804bff0:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 804bff4:	89 6c 24 08          	mov    %ebp,0x8(%esp)
 804bff8:	8b 46 1c             	mov    0x1c(%esi),%eax
 804bffb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804bfff:	89 3c 24             	mov    %edi,(%esp)
 804c002:	ff 56 24             	call   *0x24(%esi)
 804c005:	85 c0                	test   %eax,%eax
 804c007:	7f df                	jg     804bfe8 <__sflush_r+0xf0>
 804c009:	66 83 4e 0c 40       	orw    $0x40,0xc(%esi)
 804c00e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804c013:	83 c4 1c             	add    $0x1c,%esp
 804c016:	5b                   	pop    %ebx
 804c017:	5e                   	pop    %esi
 804c018:	5f                   	pop    %edi
 804c019:	5d                   	pop    %ebp
 804c01a:	c3                   	ret    
 804c01b:	90                   	nop
 804c01c:	31 c0                	xor    %eax,%eax
 804c01e:	eb bc                	jmp    804bfdc <__sflush_r+0xe4>
 804c020:	8b 5e 3c             	mov    0x3c(%esi),%ebx
 804c023:	85 db                	test   %ebx,%ebx
 804c025:	0f 8f fb fe ff ff    	jg     804bf26 <__sflush_r+0x2e>
 804c02b:	eb 8f                	jmp    804bfbc <__sflush_r+0xc4>
 804c02d:	8d 76 00             	lea    0x0(%esi),%esi
 804c030:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 804c037:	00 
 804c038:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804c03f:	00 
 804c040:	8b 46 1c             	mov    0x1c(%esi),%eax
 804c043:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c047:	89 3c 24             	mov    %edi,(%esp)
 804c04a:	ff d2                	call   *%edx
 804c04c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804c04f:	74 37                	je     804c088 <__sflush_r+0x190>
 804c051:	8b 4e 0c             	mov    0xc(%esi),%ecx
 804c054:	8b 56 28             	mov    0x28(%esi),%edx
 804c057:	e9 e9 fe ff ff       	jmp    804bf45 <__sflush_r+0x4d>
 804c05c:	8b 17                	mov    (%edi),%edx
 804c05e:	85 d2                	test   %edx,%edx
 804c060:	0f 84 12 ff ff ff    	je     804bf78 <__sflush_r+0x80>
 804c066:	83 fa 1d             	cmp    $0x1d,%edx
 804c069:	74 05                	je     804c070 <__sflush_r+0x178>
 804c06b:	83 fa 16             	cmp    $0x16,%edx
 804c06e:	75 99                	jne    804c009 <__sflush_r+0x111>
 804c070:	66 81 66 0c ff f7    	andw   $0xf7ff,0xc(%esi)
 804c076:	c7 46 04 00 00 00 00 	movl   $0x0,0x4(%esi)
 804c07d:	8b 46 10             	mov    0x10(%esi),%eax
 804c080:	89 06                	mov    %eax,(%esi)
 804c082:	e9 12 ff ff ff       	jmp    804bf99 <__sflush_r+0xa1>
 804c087:	90                   	nop
 804c088:	8b 17                	mov    (%edi),%edx
 804c08a:	85 d2                	test   %edx,%edx
 804c08c:	74 c3                	je     804c051 <__sflush_r+0x159>
 804c08e:	83 fa 1d             	cmp    $0x1d,%edx
 804c091:	74 09                	je     804c09c <__sflush_r+0x1a4>
 804c093:	83 fa 16             	cmp    $0x16,%edx
 804c096:	0f 85 6d ff ff ff    	jne    804c009 <__sflush_r+0x111>
 804c09c:	89 1f                	mov    %ebx,(%edi)
 804c09e:	31 c0                	xor    %eax,%eax
 804c0a0:	e9 19 ff ff ff       	jmp    804bfbe <__sflush_r+0xc6>
 804c0a5:	89 46 50             	mov    %eax,0x50(%esi)
 804c0a8:	e9 ec fe ff ff       	jmp    804bf99 <__sflush_r+0xa1>
 804c0ad:	8d 76 00             	lea    0x0(%esi),%esi

0804c0b0 <_fflush_r>:
 804c0b0:	56                   	push   %esi
 804c0b1:	53                   	push   %ebx
 804c0b2:	83 ec 14             	sub    $0x14,%esp
 804c0b5:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 804c0b9:	8b 74 24 24          	mov    0x24(%esp),%esi
 804c0bd:	85 db                	test   %ebx,%ebx
 804c0bf:	74 07                	je     804c0c8 <_fflush_r+0x18>
 804c0c1:	8b 43 38             	mov    0x38(%ebx),%eax
 804c0c4:	85 c0                	test   %eax,%eax
 804c0c6:	74 24                	je     804c0ec <_fflush_r+0x3c>
 804c0c8:	66 83 7e 0c 00       	cmpw   $0x0,0xc(%esi)
 804c0cd:	75 09                	jne    804c0d8 <_fflush_r+0x28>
 804c0cf:	31 c0                	xor    %eax,%eax
 804c0d1:	83 c4 14             	add    $0x14,%esp
 804c0d4:	5b                   	pop    %ebx
 804c0d5:	5e                   	pop    %esi
 804c0d6:	c3                   	ret    
 804c0d7:	90                   	nop
 804c0d8:	89 74 24 24          	mov    %esi,0x24(%esp)
 804c0dc:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 804c0e0:	83 c4 14             	add    $0x14,%esp
 804c0e3:	5b                   	pop    %ebx
 804c0e4:	5e                   	pop    %esi
 804c0e5:	e9 0e fe ff ff       	jmp    804bef8 <__sflush_r>
 804c0ea:	66 90                	xchg   %ax,%ax
 804c0ec:	89 1c 24             	mov    %ebx,(%esp)
 804c0ef:	e8 50 01 00 00       	call   804c244 <__sinit>
 804c0f4:	eb d2                	jmp    804c0c8 <_fflush_r+0x18>
 804c0f6:	66 90                	xchg   %ax,%ax

0804c0f8 <fflush>:
 804c0f8:	83 ec 1c             	sub    $0x1c,%esp
 804c0fb:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c0ff:	85 c0                	test   %eax,%eax
 804c101:	74 15                	je     804c118 <fflush+0x20>
 804c103:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c107:	a1 20 20 05 08       	mov    0x8052020,%eax
 804c10c:	89 04 24             	mov    %eax,(%esp)
 804c10f:	e8 9c ff ff ff       	call   804c0b0 <_fflush_r>
 804c114:	83 c4 1c             	add    $0x1c,%esp
 804c117:	c3                   	ret    
 804c118:	c7 44 24 04 b0 c0 04 	movl   $0x804c0b0,0x4(%esp)
 804c11f:	08 
 804c120:	a1 b8 04 05 08       	mov    0x80504b8,%eax
 804c125:	89 04 24             	mov    %eax,(%esp)
 804c128:	e8 73 06 00 00       	call   804c7a0 <_fwalk_reent>
 804c12d:	83 c4 1c             	add    $0x1c,%esp
 804c130:	c3                   	ret    
 804c131:	66 90                	xchg   %ax,%ax
 804c133:	90                   	nop

0804c134 <__fp_lock>:
 804c134:	31 c0                	xor    %eax,%eax
 804c136:	c3                   	ret    
 804c137:	90                   	nop

0804c138 <__fp_unlock>:
 804c138:	31 c0                	xor    %eax,%eax
 804c13a:	c3                   	ret    
 804c13b:	90                   	nop

0804c13c <_cleanup_r>:
 804c13c:	83 ec 1c             	sub    $0x1c,%esp
 804c13f:	c7 44 24 04 04 f3 04 	movl   $0x804f304,0x4(%esp)
 804c146:	08 
 804c147:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c14b:	89 04 24             	mov    %eax,(%esp)
 804c14e:	e8 e9 05 00 00       	call   804c73c <_fwalk>
 804c153:	83 c4 1c             	add    $0x1c,%esp
 804c156:	c3                   	ret    
 804c157:	90                   	nop

0804c158 <std.isra.0>:
 804c158:	53                   	push   %ebx
 804c159:	83 ec 18             	sub    $0x18,%esp
 804c15c:	89 c3                	mov    %eax,%ebx
 804c15e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804c164:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804c16b:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804c172:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804c176:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
 804c17d:	66 89 48 0e          	mov    %cx,0xe(%eax)
 804c181:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 804c188:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 804c18f:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 804c196:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804c19d:	00 
 804c19e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804c1a5:	00 
 804c1a6:	8d 40 5c             	lea    0x5c(%eax),%eax
 804c1a9:	89 04 24             	mov    %eax,(%esp)
 804c1ac:	e8 13 c4 ff ff       	call   80485c4 <memset>
 804c1b1:	89 5b 1c             	mov    %ebx,0x1c(%ebx)
 804c1b4:	c7 43 20 64 df 04 08 	movl   $0x804df64,0x20(%ebx)
 804c1bb:	c7 43 24 ac df 04 08 	movl   $0x804dfac,0x24(%ebx)
 804c1c2:	c7 43 28 18 e0 04 08 	movl   $0x804e018,0x28(%ebx)
 804c1c9:	c7 43 2c 64 e0 04 08 	movl   $0x804e064,0x2c(%ebx)
 804c1d0:	83 c4 18             	add    $0x18,%esp
 804c1d3:	5b                   	pop    %ebx
 804c1d4:	c3                   	ret    
 804c1d5:	8d 76 00             	lea    0x0(%esi),%esi

0804c1d8 <__sfmoreglue>:
 804c1d8:	57                   	push   %edi
 804c1d9:	56                   	push   %esi
 804c1da:	53                   	push   %ebx
 804c1db:	83 ec 10             	sub    $0x10,%esp
 804c1de:	8b 74 24 24          	mov    0x24(%esp),%esi
 804c1e2:	8d 04 76             	lea    (%esi,%esi,2),%eax
 804c1e5:	8d 3c 86             	lea    (%esi,%eax,4),%edi
 804c1e8:	c1 e7 03             	shl    $0x3,%edi
 804c1eb:	8d 47 0c             	lea    0xc(%edi),%eax
 804c1ee:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c1f2:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c1f6:	89 04 24             	mov    %eax,(%esp)
 804c1f9:	e8 e2 07 00 00       	call   804c9e0 <_malloc_r>
 804c1fe:	89 c3                	mov    %eax,%ebx
 804c200:	85 c0                	test   %eax,%eax
 804c202:	74 23                	je     804c227 <__sfmoreglue+0x4f>
 804c204:	8d 40 0c             	lea    0xc(%eax),%eax
 804c207:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804c20d:	89 73 04             	mov    %esi,0x4(%ebx)
 804c210:	89 43 08             	mov    %eax,0x8(%ebx)
 804c213:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804c217:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804c21e:	00 
 804c21f:	89 04 24             	mov    %eax,(%esp)
 804c222:	e8 9d c3 ff ff       	call   80485c4 <memset>
 804c227:	89 d8                	mov    %ebx,%eax
 804c229:	83 c4 10             	add    $0x10,%esp
 804c22c:	5b                   	pop    %ebx
 804c22d:	5e                   	pop    %esi
 804c22e:	5f                   	pop    %edi
 804c22f:	c3                   	ret    

0804c230 <_cleanup>:
 804c230:	83 ec 1c             	sub    $0x1c,%esp
 804c233:	a1 b8 04 05 08       	mov    0x80504b8,%eax
 804c238:	89 04 24             	mov    %eax,(%esp)
 804c23b:	e8 fc fe ff ff       	call   804c13c <_cleanup_r>
 804c240:	83 c4 1c             	add    $0x1c,%esp
 804c243:	c3                   	ret    

0804c244 <__sinit>:
 804c244:	53                   	push   %ebx
 804c245:	83 ec 08             	sub    $0x8,%esp
 804c248:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 804c24c:	8b 43 38             	mov    0x38(%ebx),%eax
 804c24f:	85 c0                	test   %eax,%eax
 804c251:	74 05                	je     804c258 <__sinit+0x14>
 804c253:	83 c4 08             	add    $0x8,%esp
 804c256:	5b                   	pop    %ebx
 804c257:	c3                   	ret    
 804c258:	c7 43 3c 3c c1 04 08 	movl   $0x804c13c,0x3c(%ebx)
 804c25f:	c7 43 38 01 00 00 00 	movl   $0x1,0x38(%ebx)
 804c266:	c7 83 e0 02 00 00 00 	movl   $0x0,0x2e0(%ebx)
 804c26d:	00 00 00 
 804c270:	c7 83 e4 02 00 00 03 	movl   $0x3,0x2e4(%ebx)
 804c277:	00 00 00 
 804c27a:	8d 83 ec 02 00 00    	lea    0x2ec(%ebx),%eax
 804c280:	89 83 e8 02 00 00    	mov    %eax,0x2e8(%ebx)
 804c286:	8b 43 04             	mov    0x4(%ebx),%eax
 804c289:	31 c9                	xor    %ecx,%ecx
 804c28b:	ba 04 00 00 00       	mov    $0x4,%edx
 804c290:	e8 c3 fe ff ff       	call   804c158 <std.isra.0>
 804c295:	8b 43 08             	mov    0x8(%ebx),%eax
 804c298:	b9 01 00 00 00       	mov    $0x1,%ecx
 804c29d:	ba 09 00 00 00       	mov    $0x9,%edx
 804c2a2:	e8 b1 fe ff ff       	call   804c158 <std.isra.0>
 804c2a7:	8b 43 0c             	mov    0xc(%ebx),%eax
 804c2aa:	b9 02 00 00 00       	mov    $0x2,%ecx
 804c2af:	ba 12 00 00 00       	mov    $0x12,%edx
 804c2b4:	83 c4 08             	add    $0x8,%esp
 804c2b7:	5b                   	pop    %ebx
 804c2b8:	e9 9b fe ff ff       	jmp    804c158 <std.isra.0>
 804c2bd:	8d 76 00             	lea    0x0(%esi),%esi

0804c2c0 <__sfp>:
 804c2c0:	56                   	push   %esi
 804c2c1:	53                   	push   %ebx
 804c2c2:	83 ec 14             	sub    $0x14,%esp
 804c2c5:	8b 35 b8 04 05 08    	mov    0x80504b8,%esi
 804c2cb:	8b 56 38             	mov    0x38(%esi),%edx
 804c2ce:	85 d2                	test   %edx,%edx
 804c2d0:	0f 84 b6 00 00 00    	je     804c38c <__sfp+0xcc>
 804c2d6:	81 c6 e0 02 00 00    	add    $0x2e0,%esi
 804c2dc:	8b 5e 08             	mov    0x8(%esi),%ebx
 804c2df:	8b 46 04             	mov    0x4(%esi),%eax
 804c2e2:	48                   	dec    %eax
 804c2e3:	79 14                	jns    804c2f9 <__sfp+0x39>
 804c2e5:	e9 92 00 00 00       	jmp    804c37c <__sfp+0xbc>
 804c2ea:	66 90                	xchg   %ax,%ax
 804c2ec:	83 c3 68             	add    $0x68,%ebx
 804c2ef:	48                   	dec    %eax
 804c2f0:	83 f8 ff             	cmp    $0xffffffff,%eax
 804c2f3:	0f 84 83 00 00 00    	je     804c37c <__sfp+0xbc>
 804c2f9:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 804c2fe:	75 ec                	jne    804c2ec <__sfp+0x2c>
 804c300:	66 c7 43 0e ff ff    	movw   $0xffff,0xe(%ebx)
 804c306:	66 c7 43 0c 01 00    	movw   $0x1,0xc(%ebx)
 804c30c:	c7 43 64 00 00 00 00 	movl   $0x0,0x64(%ebx)
 804c313:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804c319:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804c320:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804c327:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804c32e:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804c335:	c7 43 18 00 00 00 00 	movl   $0x0,0x18(%ebx)
 804c33c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 804c343:	00 
 804c344:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804c34b:	00 
 804c34c:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804c34f:	89 04 24             	mov    %eax,(%esp)
 804c352:	e8 6d c2 ff ff       	call   80485c4 <memset>
 804c357:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804c35e:	c7 43 34 00 00 00 00 	movl   $0x0,0x34(%ebx)
 804c365:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 804c36c:	c7 43 48 00 00 00 00 	movl   $0x0,0x48(%ebx)
 804c373:	89 d8                	mov    %ebx,%eax
 804c375:	83 c4 14             	add    $0x14,%esp
 804c378:	5b                   	pop    %ebx
 804c379:	5e                   	pop    %esi
 804c37a:	c3                   	ret    
 804c37b:	90                   	nop
 804c37c:	8b 06                	mov    (%esi),%eax
 804c37e:	85 c0                	test   %eax,%eax
 804c380:	74 17                	je     804c399 <__sfp+0xd9>
 804c382:	89 c6                	mov    %eax,%esi
 804c384:	e9 53 ff ff ff       	jmp    804c2dc <__sfp+0x1c>
 804c389:	8d 76 00             	lea    0x0(%esi),%esi
 804c38c:	89 34 24             	mov    %esi,(%esp)
 804c38f:	e8 b0 fe ff ff       	call   804c244 <__sinit>
 804c394:	e9 3d ff ff ff       	jmp    804c2d6 <__sfp+0x16>
 804c399:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804c3a0:	00 
 804c3a1:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c3a5:	89 04 24             	mov    %eax,(%esp)
 804c3a8:	e8 2b fe ff ff       	call   804c1d8 <__sfmoreglue>
 804c3ad:	89 06                	mov    %eax,(%esi)
 804c3af:	85 c0                	test   %eax,%eax
 804c3b1:	75 cf                	jne    804c382 <__sfp+0xc2>
 804c3b3:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c3b7:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804c3bd:	31 db                	xor    %ebx,%ebx
 804c3bf:	eb b2                	jmp    804c373 <__sfp+0xb3>
 804c3c1:	8d 76 00             	lea    0x0(%esi),%esi

0804c3c4 <__sfp_lock_acquire>:
 804c3c4:	c3                   	ret    
 804c3c5:	8d 76 00             	lea    0x0(%esi),%esi

0804c3c8 <__sfp_lock_release>:
 804c3c8:	c3                   	ret    
 804c3c9:	8d 76 00             	lea    0x0(%esi),%esi

0804c3cc <__sinit_lock_acquire>:
 804c3cc:	c3                   	ret    
 804c3cd:	8d 76 00             	lea    0x0(%esi),%esi

0804c3d0 <__sinit_lock_release>:
 804c3d0:	c3                   	ret    
 804c3d1:	8d 76 00             	lea    0x0(%esi),%esi

0804c3d4 <__fp_lock_all>:
 804c3d4:	83 ec 1c             	sub    $0x1c,%esp
 804c3d7:	c7 44 24 04 34 c1 04 	movl   $0x804c134,0x4(%esp)
 804c3de:	08 
 804c3df:	a1 20 20 05 08       	mov    0x8052020,%eax
 804c3e4:	89 04 24             	mov    %eax,(%esp)
 804c3e7:	e8 50 03 00 00       	call   804c73c <_fwalk>
 804c3ec:	83 c4 1c             	add    $0x1c,%esp
 804c3ef:	c3                   	ret    

0804c3f0 <__fp_unlock_all>:
 804c3f0:	83 ec 1c             	sub    $0x1c,%esp
 804c3f3:	c7 44 24 04 38 c1 04 	movl   $0x804c138,0x4(%esp)
 804c3fa:	08 
 804c3fb:	a1 20 20 05 08       	mov    0x8052020,%eax
 804c400:	89 04 24             	mov    %eax,(%esp)
 804c403:	e8 34 03 00 00       	call   804c73c <_fwalk>
 804c408:	83 c4 1c             	add    $0x1c,%esp
 804c40b:	c3                   	ret    

0804c40c <_malloc_trim_r>:
 804c40c:	57                   	push   %edi
 804c40d:	56                   	push   %esi
 804c40e:	53                   	push   %ebx
 804c40f:	83 ec 10             	sub    $0x10,%esp
 804c412:	8b 74 24 20          	mov    0x20(%esp),%esi
 804c416:	89 34 24             	mov    %esi,(%esp)
 804c419:	e8 a2 0d 00 00       	call   804d1c0 <__malloc_lock>
 804c41e:	a1 48 25 05 08       	mov    0x8052548,%eax
 804c423:	8b 58 04             	mov    0x4(%eax),%ebx
 804c426:	83 e3 fc             	and    $0xfffffffc,%ebx
 804c429:	8d 83 ef 0f 00 00    	lea    0xfef(%ebx),%eax
 804c42f:	2b 44 24 24          	sub    0x24(%esp),%eax
 804c433:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804c438:	8d b8 00 f0 ff ff    	lea    -0x1000(%eax),%edi
 804c43e:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 804c444:	7e 1c                	jle    804c462 <_malloc_trim_r+0x56>
 804c446:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804c44d:	00 
 804c44e:	89 34 24             	mov    %esi,(%esp)
 804c451:	e8 d6 1a 00 00       	call   804df2c <_sbrk_r>
 804c456:	8b 15 48 25 05 08    	mov    0x8052548,%edx
 804c45c:	01 da                	add    %ebx,%edx
 804c45e:	39 d0                	cmp    %edx,%eax
 804c460:	74 12                	je     804c474 <_malloc_trim_r+0x68>
 804c462:	89 34 24             	mov    %esi,(%esp)
 804c465:	e8 5a 0d 00 00       	call   804d1c4 <__malloc_unlock>
 804c46a:	31 c0                	xor    %eax,%eax
 804c46c:	83 c4 10             	add    $0x10,%esp
 804c46f:	5b                   	pop    %ebx
 804c470:	5e                   	pop    %esi
 804c471:	5f                   	pop    %edi
 804c472:	c3                   	ret    
 804c473:	90                   	nop
 804c474:	89 f8                	mov    %edi,%eax
 804c476:	f7 d8                	neg    %eax
 804c478:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c47c:	89 34 24             	mov    %esi,(%esp)
 804c47f:	e8 a8 1a 00 00       	call   804df2c <_sbrk_r>
 804c484:	40                   	inc    %eax
 804c485:	74 29                	je     804c4b0 <_malloc_trim_r+0xa4>
 804c487:	29 fb                	sub    %edi,%ebx
 804c489:	83 cb 01             	or     $0x1,%ebx
 804c48c:	a1 48 25 05 08       	mov    0x8052548,%eax
 804c491:	89 58 04             	mov    %ebx,0x4(%eax)
 804c494:	29 3d 80 29 05 08    	sub    %edi,0x8052980
 804c49a:	89 34 24             	mov    %esi,(%esp)
 804c49d:	e8 22 0d 00 00       	call   804d1c4 <__malloc_unlock>
 804c4a2:	b8 01 00 00 00       	mov    $0x1,%eax
 804c4a7:	83 c4 10             	add    $0x10,%esp
 804c4aa:	5b                   	pop    %ebx
 804c4ab:	5e                   	pop    %esi
 804c4ac:	5f                   	pop    %edi
 804c4ad:	c3                   	ret    
 804c4ae:	66 90                	xchg   %ax,%ax
 804c4b0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804c4b7:	00 
 804c4b8:	89 34 24             	mov    %esi,(%esp)
 804c4bb:	e8 6c 1a 00 00       	call   804df2c <_sbrk_r>
 804c4c0:	8b 15 48 25 05 08    	mov    0x8052548,%edx
 804c4c6:	89 c1                	mov    %eax,%ecx
 804c4c8:	29 d1                	sub    %edx,%ecx
 804c4ca:	83 f9 0f             	cmp    $0xf,%ecx
 804c4cd:	7e 93                	jle    804c462 <_malloc_trim_r+0x56>
 804c4cf:	2b 05 20 25 05 08    	sub    0x8052520,%eax
 804c4d5:	a3 80 29 05 08       	mov    %eax,0x8052980
 804c4da:	83 c9 01             	or     $0x1,%ecx
 804c4dd:	89 4a 04             	mov    %ecx,0x4(%edx)
 804c4e0:	eb 80                	jmp    804c462 <_malloc_trim_r+0x56>
 804c4e2:	66 90                	xchg   %ax,%ax

0804c4e4 <_free_r>:
 804c4e4:	55                   	push   %ebp
 804c4e5:	57                   	push   %edi
 804c4e6:	56                   	push   %esi
 804c4e7:	53                   	push   %ebx
 804c4e8:	83 ec 1c             	sub    $0x1c,%esp
 804c4eb:	8b 74 24 30          	mov    0x30(%esp),%esi
 804c4ef:	8b 7c 24 34          	mov    0x34(%esp),%edi
 804c4f3:	85 ff                	test   %edi,%edi
 804c4f5:	0f 84 f1 00 00 00    	je     804c5ec <_free_r+0x108>
 804c4fb:	89 34 24             	mov    %esi,(%esp)
 804c4fe:	e8 bd 0c 00 00       	call   804d1c0 <__malloc_lock>
 804c503:	8d 5f f8             	lea    -0x8(%edi),%ebx
 804c506:	8b 6f fc             	mov    -0x4(%edi),%ebp
 804c509:	89 e8                	mov    %ebp,%eax
 804c50b:	83 e0 fe             	and    $0xfffffffe,%eax
 804c50e:	8d 14 03             	lea    (%ebx,%eax,1),%edx
 804c511:	8b 4a 04             	mov    0x4(%edx),%ecx
 804c514:	83 e1 fc             	and    $0xfffffffc,%ecx
 804c517:	39 15 48 25 05 08    	cmp    %edx,0x8052548
 804c51d:	0f 84 45 01 00 00    	je     804c668 <_free_r+0x184>
 804c523:	89 4a 04             	mov    %ecx,0x4(%edx)
 804c526:	83 e5 01             	and    $0x1,%ebp
 804c529:	0f 84 95 00 00 00    	je     804c5c4 <_free_r+0xe0>
 804c52f:	31 ff                	xor    %edi,%edi
 804c531:	f6 44 0a 04 01       	testb  $0x1,0x4(%edx,%ecx,1)
 804c536:	75 16                	jne    804c54e <_free_r+0x6a>
 804c538:	01 c8                	add    %ecx,%eax
 804c53a:	8b 4a 08             	mov    0x8(%edx),%ecx
 804c53d:	85 ff                	test   %edi,%edi
 804c53f:	0f 84 eb 00 00 00    	je     804c630 <_free_r+0x14c>
 804c545:	8b 52 0c             	mov    0xc(%edx),%edx
 804c548:	89 51 0c             	mov    %edx,0xc(%ecx)
 804c54b:	89 4a 08             	mov    %ecx,0x8(%edx)
 804c54e:	89 c2                	mov    %eax,%edx
 804c550:	83 ca 01             	or     $0x1,%edx
 804c553:	89 53 04             	mov    %edx,0x4(%ebx)
 804c556:	89 04 03             	mov    %eax,(%ebx,%eax,1)
 804c559:	85 ff                	test   %edi,%edi
 804c55b:	75 57                	jne    804c5b4 <_free_r+0xd0>
 804c55d:	3d ff 01 00 00       	cmp    $0x1ff,%eax
 804c562:	0f 86 8c 00 00 00    	jbe    804c5f4 <_free_r+0x110>
 804c568:	89 c1                	mov    %eax,%ecx
 804c56a:	c1 e9 09             	shr    $0x9,%ecx
 804c56d:	83 f9 04             	cmp    $0x4,%ecx
 804c570:	0f 87 4a 01 00 00    	ja     804c6c0 <_free_r+0x1dc>
 804c576:	89 c1                	mov    %eax,%ecx
 804c578:	c1 e9 06             	shr    $0x6,%ecx
 804c57b:	83 c1 38             	add    $0x38,%ecx
 804c57e:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
 804c581:	8d 3c 95 40 25 05 08 	lea    0x8052540(,%edx,4),%edi
 804c588:	8b 57 08             	mov    0x8(%edi),%edx
 804c58b:	39 fa                	cmp    %edi,%edx
 804c58d:	0f 84 3d 01 00 00    	je     804c6d0 <_free_r+0x1ec>
 804c593:	90                   	nop
 804c594:	8b 4a 04             	mov    0x4(%edx),%ecx
 804c597:	83 e1 fc             	and    $0xfffffffc,%ecx
 804c59a:	39 c8                	cmp    %ecx,%eax
 804c59c:	73 07                	jae    804c5a5 <_free_r+0xc1>
 804c59e:	8b 52 08             	mov    0x8(%edx),%edx
 804c5a1:	39 d7                	cmp    %edx,%edi
 804c5a3:	75 ef                	jne    804c594 <_free_r+0xb0>
 804c5a5:	8b 42 0c             	mov    0xc(%edx),%eax
 804c5a8:	89 43 0c             	mov    %eax,0xc(%ebx)
 804c5ab:	89 53 08             	mov    %edx,0x8(%ebx)
 804c5ae:	89 58 08             	mov    %ebx,0x8(%eax)
 804c5b1:	89 5a 0c             	mov    %ebx,0xc(%edx)
 804c5b4:	89 74 24 30          	mov    %esi,0x30(%esp)
 804c5b8:	83 c4 1c             	add    $0x1c,%esp
 804c5bb:	5b                   	pop    %ebx
 804c5bc:	5e                   	pop    %esi
 804c5bd:	5f                   	pop    %edi
 804c5be:	5d                   	pop    %ebp
 804c5bf:	e9 00 0c 00 00       	jmp    804d1c4 <__malloc_unlock>
 804c5c4:	8b 7f f8             	mov    -0x8(%edi),%edi
 804c5c7:	29 fb                	sub    %edi,%ebx
 804c5c9:	01 f8                	add    %edi,%eax
 804c5cb:	8b 7b 08             	mov    0x8(%ebx),%edi
 804c5ce:	81 ff 48 25 05 08    	cmp    $0x8052548,%edi
 804c5d4:	0f 84 da 00 00 00    	je     804c6b4 <_free_r+0x1d0>
 804c5da:	8b 6b 0c             	mov    0xc(%ebx),%ebp
 804c5dd:	89 6f 0c             	mov    %ebp,0xc(%edi)
 804c5e0:	89 7d 08             	mov    %edi,0x8(%ebp)
 804c5e3:	31 ff                	xor    %edi,%edi
 804c5e5:	e9 47 ff ff ff       	jmp    804c531 <_free_r+0x4d>
 804c5ea:	66 90                	xchg   %ax,%ax
 804c5ec:	83 c4 1c             	add    $0x1c,%esp
 804c5ef:	5b                   	pop    %ebx
 804c5f0:	5e                   	pop    %esi
 804c5f1:	5f                   	pop    %edi
 804c5f2:	5d                   	pop    %ebp
 804c5f3:	c3                   	ret    
 804c5f4:	c1 e8 03             	shr    $0x3,%eax
 804c5f7:	89 c1                	mov    %eax,%ecx
 804c5f9:	c1 f9 02             	sar    $0x2,%ecx
 804c5fc:	ba 01 00 00 00       	mov    $0x1,%edx
 804c601:	d3 e2                	shl    %cl,%edx
 804c603:	09 15 44 25 05 08    	or     %edx,0x8052544
 804c609:	8d 04 c5 40 25 05 08 	lea    0x8052540(,%eax,8),%eax
 804c610:	8b 50 08             	mov    0x8(%eax),%edx
 804c613:	89 43 0c             	mov    %eax,0xc(%ebx)
 804c616:	89 53 08             	mov    %edx,0x8(%ebx)
 804c619:	89 58 08             	mov    %ebx,0x8(%eax)
 804c61c:	89 5a 0c             	mov    %ebx,0xc(%edx)
 804c61f:	89 74 24 30          	mov    %esi,0x30(%esp)
 804c623:	83 c4 1c             	add    $0x1c,%esp
 804c626:	5b                   	pop    %ebx
 804c627:	5e                   	pop    %esi
 804c628:	5f                   	pop    %edi
 804c629:	5d                   	pop    %ebp
 804c62a:	e9 95 0b 00 00       	jmp    804d1c4 <__malloc_unlock>
 804c62f:	90                   	nop
 804c630:	81 f9 48 25 05 08    	cmp    $0x8052548,%ecx
 804c636:	0f 85 09 ff ff ff    	jne    804c545 <_free_r+0x61>
 804c63c:	89 1d 54 25 05 08    	mov    %ebx,0x8052554
 804c642:	89 1d 50 25 05 08    	mov    %ebx,0x8052550
 804c648:	c7 43 0c 48 25 05 08 	movl   $0x8052548,0xc(%ebx)
 804c64f:	c7 43 08 48 25 05 08 	movl   $0x8052548,0x8(%ebx)
 804c656:	89 c2                	mov    %eax,%edx
 804c658:	83 ca 01             	or     $0x1,%edx
 804c65b:	89 53 04             	mov    %edx,0x4(%ebx)
 804c65e:	89 04 03             	mov    %eax,(%ebx,%eax,1)
 804c661:	e9 4e ff ff ff       	jmp    804c5b4 <_free_r+0xd0>
 804c666:	66 90                	xchg   %ax,%ax
 804c668:	01 c8                	add    %ecx,%eax
 804c66a:	83 e5 01             	and    $0x1,%ebp
 804c66d:	75 13                	jne    804c682 <_free_r+0x19e>
 804c66f:	8b 57 f8             	mov    -0x8(%edi),%edx
 804c672:	29 d3                	sub    %edx,%ebx
 804c674:	01 d0                	add    %edx,%eax
 804c676:	8b 53 0c             	mov    0xc(%ebx),%edx
 804c679:	8b 4b 08             	mov    0x8(%ebx),%ecx
 804c67c:	89 51 0c             	mov    %edx,0xc(%ecx)
 804c67f:	89 4a 08             	mov    %ecx,0x8(%edx)
 804c682:	89 c2                	mov    %eax,%edx
 804c684:	83 ca 01             	or     $0x1,%edx
 804c687:	89 53 04             	mov    %edx,0x4(%ebx)
 804c68a:	89 1d 48 25 05 08    	mov    %ebx,0x8052548
 804c690:	3b 05 24 25 05 08    	cmp    0x8052524,%eax
 804c696:	0f 82 18 ff ff ff    	jb     804c5b4 <_free_r+0xd0>
 804c69c:	a1 b0 29 05 08       	mov    0x80529b0,%eax
 804c6a1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c6a5:	89 34 24             	mov    %esi,(%esp)
 804c6a8:	e8 5f fd ff ff       	call   804c40c <_malloc_trim_r>
 804c6ad:	e9 02 ff ff ff       	jmp    804c5b4 <_free_r+0xd0>
 804c6b2:	66 90                	xchg   %ax,%ax
 804c6b4:	bf 01 00 00 00       	mov    $0x1,%edi
 804c6b9:	e9 73 fe ff ff       	jmp    804c531 <_free_r+0x4d>
 804c6be:	66 90                	xchg   %ax,%ax
 804c6c0:	83 f9 14             	cmp    $0x14,%ecx
 804c6c3:	77 23                	ja     804c6e8 <_free_r+0x204>
 804c6c5:	83 c1 5b             	add    $0x5b,%ecx
 804c6c8:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
 804c6cb:	e9 b1 fe ff ff       	jmp    804c581 <_free_r+0x9d>
 804c6d0:	c1 f9 02             	sar    $0x2,%ecx
 804c6d3:	b8 01 00 00 00       	mov    $0x1,%eax
 804c6d8:	d3 e0                	shl    %cl,%eax
 804c6da:	09 05 44 25 05 08    	or     %eax,0x8052544
 804c6e0:	89 d0                	mov    %edx,%eax
 804c6e2:	e9 c1 fe ff ff       	jmp    804c5a8 <_free_r+0xc4>
 804c6e7:	90                   	nop
 804c6e8:	83 f9 54             	cmp    $0x54,%ecx
 804c6eb:	77 10                	ja     804c6fd <_free_r+0x219>
 804c6ed:	89 c1                	mov    %eax,%ecx
 804c6ef:	c1 e9 0c             	shr    $0xc,%ecx
 804c6f2:	83 c1 6e             	add    $0x6e,%ecx
 804c6f5:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
 804c6f8:	e9 84 fe ff ff       	jmp    804c581 <_free_r+0x9d>
 804c6fd:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804c703:	77 10                	ja     804c715 <_free_r+0x231>
 804c705:	89 c1                	mov    %eax,%ecx
 804c707:	c1 e9 0f             	shr    $0xf,%ecx
 804c70a:	83 c1 77             	add    $0x77,%ecx
 804c70d:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
 804c710:	e9 6c fe ff ff       	jmp    804c581 <_free_r+0x9d>
 804c715:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804c71b:	77 10                	ja     804c72d <_free_r+0x249>
 804c71d:	89 c1                	mov    %eax,%ecx
 804c71f:	c1 e9 12             	shr    $0x12,%ecx
 804c722:	83 c1 7c             	add    $0x7c,%ecx
 804c725:	8d 14 09             	lea    (%ecx,%ecx,1),%edx
 804c728:	e9 54 fe ff ff       	jmp    804c581 <_free_r+0x9d>
 804c72d:	ba fc 00 00 00       	mov    $0xfc,%edx
 804c732:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804c737:	e9 45 fe ff ff       	jmp    804c581 <_free_r+0x9d>

0804c73c <_fwalk>:
 804c73c:	55                   	push   %ebp
 804c73d:	57                   	push   %edi
 804c73e:	56                   	push   %esi
 804c73f:	53                   	push   %ebx
 804c740:	83 ec 1c             	sub    $0x1c,%esp
 804c743:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804c747:	31 ff                	xor    %edi,%edi
 804c749:	81 c5 e0 02 00 00    	add    $0x2e0,%ebp
 804c74f:	74 43                	je     804c794 <_fwalk+0x58>
 804c751:	8d 76 00             	lea    0x0(%esi),%esi
 804c754:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804c757:	8b 75 04             	mov    0x4(%ebp),%esi
 804c75a:	4e                   	dec    %esi
 804c75b:	78 30                	js     804c78d <_fwalk+0x51>
 804c75d:	8d 76 00             	lea    0x0(%esi),%esi
 804c760:	66 8b 43 0c          	mov    0xc(%ebx),%ax
 804c764:	66 85 c0             	test   %ax,%ax
 804c767:	74 1b                	je     804c784 <_fwalk+0x48>
 804c769:	66 83 f8 01          	cmp    $0x1,%ax
 804c76d:	76 15                	jbe    804c784 <_fwalk+0x48>
 804c76f:	66 83 7b 0e ff       	cmpw   $0xffff,0xe(%ebx)
 804c774:	74 0e                	je     804c784 <_fwalk+0x48>
 804c776:	89 1c 24             	mov    %ebx,(%esp)
 804c779:	8b 54 24 34          	mov    0x34(%esp),%edx
 804c77d:	ff d2                	call   *%edx
 804c77f:	09 c7                	or     %eax,%edi
 804c781:	8d 76 00             	lea    0x0(%esi),%esi
 804c784:	83 c3 68             	add    $0x68,%ebx
 804c787:	4e                   	dec    %esi
 804c788:	83 fe ff             	cmp    $0xffffffff,%esi
 804c78b:	75 d3                	jne    804c760 <_fwalk+0x24>
 804c78d:	8b 6d 00             	mov    0x0(%ebp),%ebp
 804c790:	85 ed                	test   %ebp,%ebp
 804c792:	75 c0                	jne    804c754 <_fwalk+0x18>
 804c794:	89 f8                	mov    %edi,%eax
 804c796:	83 c4 1c             	add    $0x1c,%esp
 804c799:	5b                   	pop    %ebx
 804c79a:	5e                   	pop    %esi
 804c79b:	5f                   	pop    %edi
 804c79c:	5d                   	pop    %ebp
 804c79d:	c3                   	ret    
 804c79e:	66 90                	xchg   %ax,%ax

0804c7a0 <_fwalk_reent>:
 804c7a0:	55                   	push   %ebp
 804c7a1:	57                   	push   %edi
 804c7a2:	56                   	push   %esi
 804c7a3:	53                   	push   %ebx
 804c7a4:	83 ec 1c             	sub    $0x1c,%esp
 804c7a7:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804c7ab:	31 f6                	xor    %esi,%esi
 804c7ad:	81 c5 e0 02 00 00    	add    $0x2e0,%ebp
 804c7b3:	74 4b                	je     804c800 <_fwalk_reent+0x60>
 804c7b5:	8d 76 00             	lea    0x0(%esi),%esi
 804c7b8:	8b 5d 08             	mov    0x8(%ebp),%ebx
 804c7bb:	8b 7d 04             	mov    0x4(%ebp),%edi
 804c7be:	4f                   	dec    %edi
 804c7bf:	78 38                	js     804c7f9 <_fwalk_reent+0x59>
 804c7c1:	8d 76 00             	lea    0x0(%esi),%esi
 804c7c4:	66 8b 43 0c          	mov    0xc(%ebx),%ax
 804c7c8:	66 85 c0             	test   %ax,%ax
 804c7cb:	74 23                	je     804c7f0 <_fwalk_reent+0x50>
 804c7cd:	66 83 f8 01          	cmp    $0x1,%ax
 804c7d1:	76 1d                	jbe    804c7f0 <_fwalk_reent+0x50>
 804c7d3:	66 83 7b 0e ff       	cmpw   $0xffff,0xe(%ebx)
 804c7d8:	74 16                	je     804c7f0 <_fwalk_reent+0x50>
 804c7da:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804c7de:	8b 54 24 30          	mov    0x30(%esp),%edx
 804c7e2:	89 14 24             	mov    %edx,(%esp)
 804c7e5:	8b 54 24 34          	mov    0x34(%esp),%edx
 804c7e9:	ff d2                	call   *%edx
 804c7eb:	09 c6                	or     %eax,%esi
 804c7ed:	8d 76 00             	lea    0x0(%esi),%esi
 804c7f0:	83 c3 68             	add    $0x68,%ebx
 804c7f3:	4f                   	dec    %edi
 804c7f4:	83 ff ff             	cmp    $0xffffffff,%edi
 804c7f7:	75 cb                	jne    804c7c4 <_fwalk_reent+0x24>
 804c7f9:	8b 6d 00             	mov    0x0(%ebp),%ebp
 804c7fc:	85 ed                	test   %ebp,%ebp
 804c7fe:	75 b8                	jne    804c7b8 <_fwalk_reent+0x18>
 804c800:	89 f0                	mov    %esi,%eax
 804c802:	83 c4 1c             	add    $0x1c,%esp
 804c805:	5b                   	pop    %ebx
 804c806:	5e                   	pop    %esi
 804c807:	5f                   	pop    %edi
 804c808:	5d                   	pop    %ebp
 804c809:	c3                   	ret    
 804c80a:	66 90                	xchg   %ax,%ax

0804c80c <_setlocale_r>:
 804c80c:	53                   	push   %ebx
 804c80d:	83 ec 18             	sub    $0x18,%esp
 804c810:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 804c814:	85 db                	test   %ebx,%ebx
 804c816:	74 14                	je     804c82c <_setlocale_r+0x20>
 804c818:	c7 44 24 04 c0 06 05 	movl   $0x80506c0,0x4(%esp)
 804c81f:	08 
 804c820:	89 1c 24             	mov    %ebx,(%esp)
 804c823:	e8 50 18 00 00       	call   804e078 <strcmp>
 804c828:	85 c0                	test   %eax,%eax
 804c82a:	75 0c                	jne    804c838 <_setlocale_r+0x2c>
 804c82c:	b8 bc 04 05 08       	mov    $0x80504bc,%eax
 804c831:	83 c4 18             	add    $0x18,%esp
 804c834:	5b                   	pop    %ebx
 804c835:	c3                   	ret    
 804c836:	66 90                	xchg   %ax,%ax
 804c838:	c7 44 24 04 bc 04 05 	movl   $0x80504bc,0x4(%esp)
 804c83f:	08 
 804c840:	89 1c 24             	mov    %ebx,(%esp)
 804c843:	e8 30 18 00 00       	call   804e078 <strcmp>
 804c848:	85 c0                	test   %eax,%eax
 804c84a:	74 e0                	je     804c82c <_setlocale_r+0x20>
 804c84c:	c7 44 24 04 f6 04 05 	movl   $0x80504f6,0x4(%esp)
 804c853:	08 
 804c854:	89 1c 24             	mov    %ebx,(%esp)
 804c857:	e8 1c 18 00 00       	call   804e078 <strcmp>
 804c85c:	89 c2                	mov    %eax,%edx
 804c85e:	b8 bc 04 05 08       	mov    $0x80504bc,%eax
 804c863:	85 d2                	test   %edx,%edx
 804c865:	74 ca                	je     804c831 <_setlocale_r+0x25>
 804c867:	31 c0                	xor    %eax,%eax
 804c869:	eb c6                	jmp    804c831 <_setlocale_r+0x25>
 804c86b:	90                   	nop

0804c86c <__locale_charset>:
 804c86c:	b8 a0 24 05 08       	mov    $0x80524a0,%eax
 804c871:	c3                   	ret    
 804c872:	66 90                	xchg   %ax,%ax

0804c874 <__locale_mb_cur_max>:
 804c874:	a1 80 24 05 08       	mov    0x8052480,%eax
 804c879:	c3                   	ret    
 804c87a:	66 90                	xchg   %ax,%ax

0804c87c <__locale_msgcharset>:
 804c87c:	b8 c0 24 05 08       	mov    $0x80524c0,%eax
 804c881:	c3                   	ret    
 804c882:	66 90                	xchg   %ax,%ax

0804c884 <__locale_cjk_lang>:
 804c884:	31 c0                	xor    %eax,%eax
 804c886:	c3                   	ret    
 804c887:	90                   	nop

0804c888 <_localeconv_r>:
 804c888:	b8 e0 24 05 08       	mov    $0x80524e0,%eax
 804c88d:	c3                   	ret    
 804c88e:	66 90                	xchg   %ax,%ax

0804c890 <setlocale>:
 804c890:	83 ec 1c             	sub    $0x1c,%esp
 804c893:	8b 44 24 24          	mov    0x24(%esp),%eax
 804c897:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c89b:	8b 44 24 20          	mov    0x20(%esp),%eax
 804c89f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c8a3:	a1 20 20 05 08       	mov    0x8052020,%eax
 804c8a8:	89 04 24             	mov    %eax,(%esp)
 804c8ab:	e8 5c ff ff ff       	call   804c80c <_setlocale_r>
 804c8b0:	83 c4 1c             	add    $0x1c,%esp
 804c8b3:	c3                   	ret    

0804c8b4 <localeconv>:
 804c8b4:	b8 e0 24 05 08       	mov    $0x80524e0,%eax
 804c8b9:	c3                   	ret    
 804c8ba:	66 90                	xchg   %ax,%ax

0804c8bc <__smakebuf_r>:
 804c8bc:	55                   	push   %ebp
 804c8bd:	57                   	push   %edi
 804c8be:	56                   	push   %esi
 804c8bf:	53                   	push   %ebx
 804c8c0:	83 ec 5c             	sub    $0x5c,%esp
 804c8c3:	8b 7c 24 70          	mov    0x70(%esp),%edi
 804c8c7:	8b 5c 24 74          	mov    0x74(%esp),%ebx
 804c8cb:	8b 43 0c             	mov    0xc(%ebx),%eax
 804c8ce:	a8 02                	test   $0x2,%al
 804c8d0:	0f 85 b2 00 00 00    	jne    804c988 <__smakebuf_r+0xcc>
 804c8d6:	0f bf 53 0e          	movswl 0xe(%ebx),%edx
 804c8da:	66 85 d2             	test   %dx,%dx
 804c8dd:	78 48                	js     804c927 <__smakebuf_r+0x6b>
 804c8df:	8d 44 24 14          	lea    0x14(%esp),%eax
 804c8e3:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c8e7:	89 54 24 04          	mov    %edx,0x4(%esp)
 804c8eb:	89 3c 24             	mov    %edi,(%esp)
 804c8ee:	e8 91 2b 00 00       	call   804f484 <_fstat_r>
 804c8f3:	85 c0                	test   %eax,%eax
 804c8f5:	78 2d                	js     804c924 <__smakebuf_r+0x68>
 804c8f7:	8b 44 24 18          	mov    0x18(%esp),%eax
 804c8fb:	25 00 f0 00 00       	and    $0xf000,%eax
 804c900:	31 d2                	xor    %edx,%edx
 804c902:	3d 00 20 00 00       	cmp    $0x2000,%eax
 804c907:	0f 94 c2             	sete   %dl
 804c90a:	89 d5                	mov    %edx,%ebp
 804c90c:	3d 00 80 00 00       	cmp    $0x8000,%eax
 804c911:	0f 84 89 00 00 00    	je     804c9a0 <__smakebuf_r+0xe4>
 804c917:	66 81 4b 0c 00 08    	orw    $0x800,0xc(%ebx)
 804c91d:	be 00 04 00 00       	mov    $0x400,%esi
 804c922:	eb 23                	jmp    804c947 <__smakebuf_r+0x8b>
 804c924:	8b 43 0c             	mov    0xc(%ebx),%eax
 804c927:	89 c2                	mov    %eax,%edx
 804c929:	81 e2 80 00 00 00    	and    $0x80,%edx
 804c92f:	66 83 fa 01          	cmp    $0x1,%dx
 804c933:	19 f6                	sbb    %esi,%esi
 804c935:	81 e6 c0 03 00 00    	and    $0x3c0,%esi
 804c93b:	83 c6 40             	add    $0x40,%esi
 804c93e:	80 cc 08             	or     $0x8,%ah
 804c941:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804c945:	31 ed                	xor    %ebp,%ebp
 804c947:	89 74 24 04          	mov    %esi,0x4(%esp)
 804c94b:	89 3c 24             	mov    %edi,(%esp)
 804c94e:	e8 8d 00 00 00       	call   804c9e0 <_malloc_r>
 804c953:	85 c0                	test   %eax,%eax
 804c955:	74 21                	je     804c978 <__smakebuf_r+0xbc>
 804c957:	c7 47 3c 3c c1 04 08 	movl   $0x804c13c,0x3c(%edi)
 804c95e:	66 81 4b 0c 80 00    	orw    $0x80,0xc(%ebx)
 804c964:	89 03                	mov    %eax,(%ebx)
 804c966:	89 43 10             	mov    %eax,0x10(%ebx)
 804c969:	89 73 14             	mov    %esi,0x14(%ebx)
 804c96c:	85 ed                	test   %ebp,%ebp
 804c96e:	75 54                	jne    804c9c4 <__smakebuf_r+0x108>
 804c970:	83 c4 5c             	add    $0x5c,%esp
 804c973:	5b                   	pop    %ebx
 804c974:	5e                   	pop    %esi
 804c975:	5f                   	pop    %edi
 804c976:	5d                   	pop    %ebp
 804c977:	c3                   	ret    
 804c978:	8b 43 0c             	mov    0xc(%ebx),%eax
 804c97b:	f6 c4 02             	test   $0x2,%ah
 804c97e:	75 f0                	jne    804c970 <__smakebuf_r+0xb4>
 804c980:	83 c8 02             	or     $0x2,%eax
 804c983:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804c987:	90                   	nop
 804c988:	8d 43 43             	lea    0x43(%ebx),%eax
 804c98b:	89 03                	mov    %eax,(%ebx)
 804c98d:	89 43 10             	mov    %eax,0x10(%ebx)
 804c990:	c7 43 14 01 00 00 00 	movl   $0x1,0x14(%ebx)
 804c997:	83 c4 5c             	add    $0x5c,%esp
 804c99a:	5b                   	pop    %ebx
 804c99b:	5e                   	pop    %esi
 804c99c:	5f                   	pop    %edi
 804c99d:	5d                   	pop    %ebp
 804c99e:	c3                   	ret    
 804c99f:	90                   	nop
 804c9a0:	81 7b 28 18 e0 04 08 	cmpl   $0x804e018,0x28(%ebx)
 804c9a7:	0f 85 6a ff ff ff    	jne    804c917 <__smakebuf_r+0x5b>
 804c9ad:	66 81 4b 0c 00 04    	orw    $0x400,0xc(%ebx)
 804c9b3:	c7 43 4c 00 04 00 00 	movl   $0x400,0x4c(%ebx)
 804c9ba:	be 00 04 00 00       	mov    $0x400,%esi
 804c9bf:	eb 86                	jmp    804c947 <__smakebuf_r+0x8b>
 804c9c1:	8d 76 00             	lea    0x0(%esi),%esi
 804c9c4:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804c9c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c9cc:	89 3c 24             	mov    %edi,(%esp)
 804c9cf:	e8 ac 2f 00 00       	call   804f980 <_isatty_r>
 804c9d4:	85 c0                	test   %eax,%eax
 804c9d6:	74 98                	je     804c970 <__smakebuf_r+0xb4>
 804c9d8:	66 83 4b 0c 01       	orw    $0x1,0xc(%ebx)
 804c9dd:	eb 91                	jmp    804c970 <__smakebuf_r+0xb4>
 804c9df:	90                   	nop

0804c9e0 <_malloc_r>:
 804c9e0:	55                   	push   %ebp
 804c9e1:	57                   	push   %edi
 804c9e2:	56                   	push   %esi
 804c9e3:	53                   	push   %ebx
 804c9e4:	83 ec 2c             	sub    $0x2c,%esp
 804c9e7:	8b 44 24 44          	mov    0x44(%esp),%eax
 804c9eb:	8d 58 0b             	lea    0xb(%eax),%ebx
 804c9ee:	83 fb 16             	cmp    $0x16,%ebx
 804c9f1:	76 65                	jbe    804ca58 <_malloc_r+0x78>
 804c9f3:	83 e3 f8             	and    $0xfffffff8,%ebx
 804c9f6:	78 69                	js     804ca61 <_malloc_r+0x81>
 804c9f8:	39 d8                	cmp    %ebx,%eax
 804c9fa:	77 65                	ja     804ca61 <_malloc_r+0x81>
 804c9fc:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ca00:	89 04 24             	mov    %eax,(%esp)
 804ca03:	e8 b8 07 00 00       	call   804d1c0 <__malloc_lock>
 804ca08:	81 fb f7 01 00 00    	cmp    $0x1f7,%ebx
 804ca0e:	77 68                	ja     804ca78 <_malloc_r+0x98>
 804ca10:	89 da                	mov    %ebx,%edx
 804ca12:	c1 ea 03             	shr    $0x3,%edx
 804ca15:	8d 04 d5 40 25 05 08 	lea    0x8052540(,%edx,8),%eax
 804ca1c:	8b 70 0c             	mov    0xc(%eax),%esi
 804ca1f:	39 c6                	cmp    %eax,%esi
 804ca21:	0f 84 c9 04 00 00    	je     804cef0 <_malloc_r+0x510>
 804ca27:	8b 46 04             	mov    0x4(%esi),%eax
 804ca2a:	83 e0 fc             	and    $0xfffffffc,%eax
 804ca2d:	8b 56 0c             	mov    0xc(%esi),%edx
 804ca30:	8b 4e 08             	mov    0x8(%esi),%ecx
 804ca33:	89 51 0c             	mov    %edx,0xc(%ecx)
 804ca36:	89 4a 08             	mov    %ecx,0x8(%edx)
 804ca39:	83 4c 06 04 01       	orl    $0x1,0x4(%esi,%eax,1)
 804ca3e:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ca42:	89 04 24             	mov    %eax,(%esp)
 804ca45:	e8 7a 07 00 00       	call   804d1c4 <__malloc_unlock>
 804ca4a:	8d 46 08             	lea    0x8(%esi),%eax
 804ca4d:	83 c4 2c             	add    $0x2c,%esp
 804ca50:	5b                   	pop    %ebx
 804ca51:	5e                   	pop    %esi
 804ca52:	5f                   	pop    %edi
 804ca53:	5d                   	pop    %ebp
 804ca54:	c3                   	ret    
 804ca55:	8d 76 00             	lea    0x0(%esi),%esi
 804ca58:	bb 10 00 00 00       	mov    $0x10,%ebx
 804ca5d:	39 d8                	cmp    %ebx,%eax
 804ca5f:	76 9b                	jbe    804c9fc <_malloc_r+0x1c>
 804ca61:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ca65:	c7 00 0c 00 00 00    	movl   $0xc,(%eax)
 804ca6b:	31 c0                	xor    %eax,%eax
 804ca6d:	83 c4 2c             	add    $0x2c,%esp
 804ca70:	5b                   	pop    %ebx
 804ca71:	5e                   	pop    %esi
 804ca72:	5f                   	pop    %edi
 804ca73:	5d                   	pop    %ebp
 804ca74:	c3                   	ret    
 804ca75:	8d 76 00             	lea    0x0(%esi),%esi
 804ca78:	89 df                	mov    %ebx,%edi
 804ca7a:	c1 ef 09             	shr    $0x9,%edi
 804ca7d:	0f 84 81 01 00 00    	je     804cc04 <_malloc_r+0x224>
 804ca83:	83 ff 04             	cmp    $0x4,%edi
 804ca86:	0f 87 3c 03 00 00    	ja     804cdc8 <_malloc_r+0x3e8>
 804ca8c:	89 df                	mov    %ebx,%edi
 804ca8e:	c1 ef 06             	shr    $0x6,%edi
 804ca91:	83 c7 38             	add    $0x38,%edi
 804ca94:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804ca97:	8d 0c 85 40 25 05 08 	lea    0x8052540(,%eax,4),%ecx
 804ca9e:	8b 71 0c             	mov    0xc(%ecx),%esi
 804caa1:	39 f1                	cmp    %esi,%ecx
 804caa3:	75 0e                	jne    804cab3 <_malloc_r+0xd3>
 804caa5:	eb 1c                	jmp    804cac3 <_malloc_r+0xe3>
 804caa7:	90                   	nop
 804caa8:	85 d2                	test   %edx,%edx
 804caaa:	79 81                	jns    804ca2d <_malloc_r+0x4d>
 804caac:	8b 76 0c             	mov    0xc(%esi),%esi
 804caaf:	39 f1                	cmp    %esi,%ecx
 804cab1:	74 10                	je     804cac3 <_malloc_r+0xe3>
 804cab3:	8b 46 04             	mov    0x4(%esi),%eax
 804cab6:	83 e0 fc             	and    $0xfffffffc,%eax
 804cab9:	89 c2                	mov    %eax,%edx
 804cabb:	29 da                	sub    %ebx,%edx
 804cabd:	83 fa 0f             	cmp    $0xf,%edx
 804cac0:	7e e6                	jle    804caa8 <_malloc_r+0xc8>
 804cac2:	4f                   	dec    %edi
 804cac3:	8d 6f 01             	lea    0x1(%edi),%ebp
 804cac6:	8b 35 50 25 05 08    	mov    0x8052550,%esi
 804cacc:	81 fe 48 25 05 08    	cmp    $0x8052548,%esi
 804cad2:	0f 84 b4 03 00 00    	je     804ce8c <_malloc_r+0x4ac>
 804cad8:	8b 7e 04             	mov    0x4(%esi),%edi
 804cadb:	83 e7 fc             	and    $0xfffffffc,%edi
 804cade:	89 f8                	mov    %edi,%eax
 804cae0:	29 d8                	sub    %ebx,%eax
 804cae2:	83 f8 0f             	cmp    $0xf,%eax
 804cae5:	0f 8f 5d 03 00 00    	jg     804ce48 <_malloc_r+0x468>
 804caeb:	c7 05 54 25 05 08 48 	movl   $0x8052548,0x8052554
 804caf2:	25 05 08 
 804caf5:	c7 05 50 25 05 08 48 	movl   $0x8052548,0x8052550
 804cafc:	25 05 08 
 804caff:	85 c0                	test   %eax,%eax
 804cb01:	0f 89 0d 01 00 00    	jns    804cc14 <_malloc_r+0x234>
 804cb07:	81 ff ff 01 00 00    	cmp    $0x1ff,%edi
 804cb0d:	0f 87 d9 02 00 00    	ja     804cdec <_malloc_r+0x40c>
 804cb13:	c1 ef 03             	shr    $0x3,%edi
 804cb16:	89 f9                	mov    %edi,%ecx
 804cb18:	c1 f9 02             	sar    $0x2,%ecx
 804cb1b:	b8 01 00 00 00       	mov    $0x1,%eax
 804cb20:	d3 e0                	shl    %cl,%eax
 804cb22:	0b 05 44 25 05 08    	or     0x8052544,%eax
 804cb28:	a3 44 25 05 08       	mov    %eax,0x8052544
 804cb2d:	8d 14 fd 40 25 05 08 	lea    0x8052540(,%edi,8),%edx
 804cb34:	8b 4a 08             	mov    0x8(%edx),%ecx
 804cb37:	89 56 0c             	mov    %edx,0xc(%esi)
 804cb3a:	89 4e 08             	mov    %ecx,0x8(%esi)
 804cb3d:	89 72 08             	mov    %esi,0x8(%edx)
 804cb40:	89 71 0c             	mov    %esi,0xc(%ecx)
 804cb43:	89 e9                	mov    %ebp,%ecx
 804cb45:	c1 f9 02             	sar    $0x2,%ecx
 804cb48:	bf 01 00 00 00       	mov    $0x1,%edi
 804cb4d:	d3 e7                	shl    %cl,%edi
 804cb4f:	39 c7                	cmp    %eax,%edi
 804cb51:	0f 87 d9 00 00 00    	ja     804cc30 <_malloc_r+0x250>
 804cb57:	85 f8                	test   %edi,%eax
 804cb59:	75 1a                	jne    804cb75 <_malloc_r+0x195>
 804cb5b:	89 ea                	mov    %ebp,%edx
 804cb5d:	83 e2 fc             	and    $0xfffffffc,%edx
 804cb60:	8d 6a 04             	lea    0x4(%edx),%ebp
 804cb63:	d1 e7                	shl    %edi
 804cb65:	85 f8                	test   %edi,%eax
 804cb67:	75 0c                	jne    804cb75 <_malloc_r+0x195>
 804cb69:	8d 76 00             	lea    0x0(%esi),%esi
 804cb6c:	83 c5 04             	add    $0x4,%ebp
 804cb6f:	d1 e7                	shl    %edi
 804cb71:	85 f8                	test   %edi,%eax
 804cb73:	74 f7                	je     804cb6c <_malloc_r+0x18c>
 804cb75:	8d 04 ed 40 25 05 08 	lea    0x8052540(,%ebp,8),%eax
 804cb7c:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804cb80:	89 c1                	mov    %eax,%ecx
 804cb82:	89 6c 24 18          	mov    %ebp,0x18(%esp)
 804cb86:	8b 71 0c             	mov    0xc(%ecx),%esi
 804cb89:	39 f1                	cmp    %esi,%ecx
 804cb8b:	75 1a                	jne    804cba7 <_malloc_r+0x1c7>
 804cb8d:	e9 06 03 00 00       	jmp    804ce98 <_malloc_r+0x4b8>
 804cb92:	66 90                	xchg   %ax,%ax
 804cb94:	85 d2                	test   %edx,%edx
 804cb96:	0f 89 6c 03 00 00    	jns    804cf08 <_malloc_r+0x528>
 804cb9c:	8b 76 0c             	mov    0xc(%esi),%esi
 804cb9f:	39 f1                	cmp    %esi,%ecx
 804cba1:	0f 84 f1 02 00 00    	je     804ce98 <_malloc_r+0x4b8>
 804cba7:	8b 46 04             	mov    0x4(%esi),%eax
 804cbaa:	83 e0 fc             	and    $0xfffffffc,%eax
 804cbad:	89 c2                	mov    %eax,%edx
 804cbaf:	29 da                	sub    %ebx,%edx
 804cbb1:	83 fa 0f             	cmp    $0xf,%edx
 804cbb4:	7e de                	jle    804cb94 <_malloc_r+0x1b4>
 804cbb6:	8d 04 1e             	lea    (%esi,%ebx,1),%eax
 804cbb9:	83 cb 01             	or     $0x1,%ebx
 804cbbc:	89 5e 04             	mov    %ebx,0x4(%esi)
 804cbbf:	8b 4e 0c             	mov    0xc(%esi),%ecx
 804cbc2:	8b 5e 08             	mov    0x8(%esi),%ebx
 804cbc5:	89 4b 0c             	mov    %ecx,0xc(%ebx)
 804cbc8:	89 59 08             	mov    %ebx,0x8(%ecx)
 804cbcb:	a3 54 25 05 08       	mov    %eax,0x8052554
 804cbd0:	a3 50 25 05 08       	mov    %eax,0x8052550
 804cbd5:	c7 40 0c 48 25 05 08 	movl   $0x8052548,0xc(%eax)
 804cbdc:	c7 40 08 48 25 05 08 	movl   $0x8052548,0x8(%eax)
 804cbe3:	89 d1                	mov    %edx,%ecx
 804cbe5:	83 c9 01             	or     $0x1,%ecx
 804cbe8:	89 48 04             	mov    %ecx,0x4(%eax)
 804cbeb:	89 14 10             	mov    %edx,(%eax,%edx,1)
 804cbee:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cbf2:	89 04 24             	mov    %eax,(%esp)
 804cbf5:	e8 ca 05 00 00       	call   804d1c4 <__malloc_unlock>
 804cbfa:	8d 46 08             	lea    0x8(%esi),%eax
 804cbfd:	e9 4b fe ff ff       	jmp    804ca4d <_malloc_r+0x6d>
 804cc02:	66 90                	xchg   %ax,%ax
 804cc04:	89 df                	mov    %ebx,%edi
 804cc06:	c1 ef 03             	shr    $0x3,%edi
 804cc09:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804cc0c:	e9 86 fe ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804cc11:	8d 76 00             	lea    0x0(%esi),%esi
 804cc14:	83 4c 3e 04 01       	orl    $0x1,0x4(%esi,%edi,1)
 804cc19:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cc1d:	89 04 24             	mov    %eax,(%esp)
 804cc20:	e8 9f 05 00 00       	call   804d1c4 <__malloc_unlock>
 804cc25:	8d 46 08             	lea    0x8(%esi),%eax
 804cc28:	83 c4 2c             	add    $0x2c,%esp
 804cc2b:	5b                   	pop    %ebx
 804cc2c:	5e                   	pop    %esi
 804cc2d:	5f                   	pop    %edi
 804cc2e:	5d                   	pop    %ebp
 804cc2f:	c3                   	ret    
 804cc30:	8b 35 48 25 05 08    	mov    0x8052548,%esi
 804cc36:	8b 7e 04             	mov    0x4(%esi),%edi
 804cc39:	83 e7 fc             	and    $0xfffffffc,%edi
 804cc3c:	39 df                	cmp    %ebx,%edi
 804cc3e:	72 0d                	jb     804cc4d <_malloc_r+0x26d>
 804cc40:	89 f8                	mov    %edi,%eax
 804cc42:	29 d8                	sub    %ebx,%eax
 804cc44:	83 f8 0f             	cmp    $0xf,%eax
 804cc47:	0f 8f 4b 01 00 00    	jg     804cd98 <_malloc_r+0x3b8>
 804cc4d:	8d 04 3e             	lea    (%esi,%edi,1),%eax
 804cc50:	89 44 24 18          	mov    %eax,0x18(%esp)
 804cc54:	8b 0d b0 29 05 08    	mov    0x80529b0,%ecx
 804cc5a:	01 d9                	add    %ebx,%ecx
 804cc5c:	83 3d 20 25 05 08 ff 	cmpl   $0xffffffff,0x8052520
 804cc63:	0f 84 a5 03 00 00    	je     804d00e <_malloc_r+0x62e>
 804cc69:	8d a9 0f 10 00 00    	lea    0x100f(%ecx),%ebp
 804cc6f:	81 e5 00 f0 ff ff    	and    $0xfffff000,%ebp
 804cc75:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 804cc79:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cc7d:	89 04 24             	mov    %eax,(%esp)
 804cc80:	e8 a7 12 00 00       	call   804df2c <_sbrk_r>
 804cc85:	89 c1                	mov    %eax,%ecx
 804cc87:	83 f8 ff             	cmp    $0xffffffff,%eax
 804cc8a:	0f 84 c7 02 00 00    	je     804cf57 <_malloc_r+0x577>
 804cc90:	39 44 24 18          	cmp    %eax,0x18(%esp)
 804cc94:	0f 87 b1 02 00 00    	ja     804cf4b <_malloc_r+0x56b>
 804cc9a:	8b 15 80 29 05 08    	mov    0x8052980,%edx
 804cca0:	01 ea                	add    %ebp,%edx
 804cca2:	89 15 80 29 05 08    	mov    %edx,0x8052980
 804cca8:	39 4c 24 18          	cmp    %ecx,0x18(%esp)
 804ccac:	0f 84 79 03 00 00    	je     804d02b <_malloc_r+0x64b>
 804ccb2:	83 3d 20 25 05 08 ff 	cmpl   $0xffffffff,0x8052520
 804ccb9:	0f 84 9e 03 00 00    	je     804d05d <_malloc_r+0x67d>
 804ccbf:	89 c8                	mov    %ecx,%eax
 804ccc1:	2b 44 24 18          	sub    0x18(%esp),%eax
 804ccc5:	01 d0                	add    %edx,%eax
 804ccc7:	a3 80 29 05 08       	mov    %eax,0x8052980
 804cccc:	89 c8                	mov    %ecx,%eax
 804ccce:	83 e0 07             	and    $0x7,%eax
 804ccd1:	0f 84 ec 02 00 00    	je     804cfc3 <_malloc_r+0x5e3>
 804ccd7:	89 ca                	mov    %ecx,%edx
 804ccd9:	29 c2                	sub    %eax,%edx
 804ccdb:	8d 4a 08             	lea    0x8(%edx),%ecx
 804ccde:	ba 08 10 00 00       	mov    $0x1008,%edx
 804cce3:	29 c2                	sub    %eax,%edx
 804cce5:	8d 04 29             	lea    (%ecx,%ebp,1),%eax
 804cce8:	25 ff 0f 00 00       	and    $0xfff,%eax
 804cced:	29 c2                	sub    %eax,%edx
 804ccef:	89 54 24 04          	mov    %edx,0x4(%esp)
 804ccf3:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ccf7:	89 04 24             	mov    %eax,(%esp)
 804ccfa:	89 54 24 10          	mov    %edx,0x10(%esp)
 804ccfe:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804cd02:	e8 25 12 00 00       	call   804df2c <_sbrk_r>
 804cd07:	83 f8 ff             	cmp    $0xffffffff,%eax
 804cd0a:	8b 54 24 10          	mov    0x10(%esp),%edx
 804cd0e:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 804cd12:	0f 84 50 03 00 00    	je     804d068 <_malloc_r+0x688>
 804cd18:	29 c8                	sub    %ecx,%eax
 804cd1a:	01 d0                	add    %edx,%eax
 804cd1c:	83 c8 01             	or     $0x1,%eax
 804cd1f:	03 15 80 29 05 08    	add    0x8052980,%edx
 804cd25:	89 15 80 29 05 08    	mov    %edx,0x8052980
 804cd2b:	89 0d 48 25 05 08    	mov    %ecx,0x8052548
 804cd31:	89 41 04             	mov    %eax,0x4(%ecx)
 804cd34:	81 fe 40 25 05 08    	cmp    $0x8052540,%esi
 804cd3a:	74 33                	je     804cd6f <_malloc_r+0x38f>
 804cd3c:	83 ff 0f             	cmp    $0xf,%edi
 804cd3f:	0f 86 88 02 00 00    	jbe    804cfcd <_malloc_r+0x5ed>
 804cd45:	83 ef 0c             	sub    $0xc,%edi
 804cd48:	83 e7 f8             	and    $0xfffffff8,%edi
 804cd4b:	8b 46 04             	mov    0x4(%esi),%eax
 804cd4e:	83 e0 01             	and    $0x1,%eax
 804cd51:	09 f8                	or     %edi,%eax
 804cd53:	89 46 04             	mov    %eax,0x4(%esi)
 804cd56:	c7 44 3e 04 05 00 00 	movl   $0x5,0x4(%esi,%edi,1)
 804cd5d:	00 
 804cd5e:	c7 44 3e 08 05 00 00 	movl   $0x5,0x8(%esi,%edi,1)
 804cd65:	00 
 804cd66:	83 ff 0f             	cmp    $0xf,%edi
 804cd69:	0f 87 18 02 00 00    	ja     804cf87 <_malloc_r+0x5a7>
 804cd6f:	89 ce                	mov    %ecx,%esi
 804cd71:	3b 15 ac 29 05 08    	cmp    0x80529ac,%edx
 804cd77:	76 06                	jbe    804cd7f <_malloc_r+0x39f>
 804cd79:	89 15 ac 29 05 08    	mov    %edx,0x80529ac
 804cd7f:	3b 15 a8 29 05 08    	cmp    0x80529a8,%edx
 804cd85:	76 06                	jbe    804cd8d <_malloc_r+0x3ad>
 804cd87:	89 15 a8 29 05 08    	mov    %edx,0x80529a8
 804cd8d:	8b 56 04             	mov    0x4(%esi),%edx
 804cd90:	83 e2 fc             	and    $0xfffffffc,%edx
 804cd93:	e9 cb 01 00 00       	jmp    804cf63 <_malloc_r+0x583>
 804cd98:	89 da                	mov    %ebx,%edx
 804cd9a:	83 ca 01             	or     $0x1,%edx
 804cd9d:	89 56 04             	mov    %edx,0x4(%esi)
 804cda0:	01 f3                	add    %esi,%ebx
 804cda2:	89 1d 48 25 05 08    	mov    %ebx,0x8052548
 804cda8:	83 c8 01             	or     $0x1,%eax
 804cdab:	89 43 04             	mov    %eax,0x4(%ebx)
 804cdae:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cdb2:	89 04 24             	mov    %eax,(%esp)
 804cdb5:	e8 0a 04 00 00       	call   804d1c4 <__malloc_unlock>
 804cdba:	8d 46 08             	lea    0x8(%esi),%eax
 804cdbd:	83 c4 2c             	add    $0x2c,%esp
 804cdc0:	5b                   	pop    %ebx
 804cdc1:	5e                   	pop    %esi
 804cdc2:	5f                   	pop    %edi
 804cdc3:	5d                   	pop    %ebp
 804cdc4:	c3                   	ret    
 804cdc5:	8d 76 00             	lea    0x0(%esi),%esi
 804cdc8:	83 ff 14             	cmp    $0x14,%edi
 804cdcb:	0f 86 5f 01 00 00    	jbe    804cf30 <_malloc_r+0x550>
 804cdd1:	83 ff 54             	cmp    $0x54,%edi
 804cdd4:	0f 87 d1 01 00 00    	ja     804cfab <_malloc_r+0x5cb>
 804cdda:	89 df                	mov    %ebx,%edi
 804cddc:	c1 ef 0c             	shr    $0xc,%edi
 804cddf:	83 c7 6e             	add    $0x6e,%edi
 804cde2:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804cde5:	e9 ad fc ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804cdea:	66 90                	xchg   %ax,%ax
 804cdec:	89 f9                	mov    %edi,%ecx
 804cdee:	c1 e9 09             	shr    $0x9,%ecx
 804cdf1:	83 f9 04             	cmp    $0x4,%ecx
 804cdf4:	0f 86 41 01 00 00    	jbe    804cf3b <_malloc_r+0x55b>
 804cdfa:	83 f9 14             	cmp    $0x14,%ecx
 804cdfd:	0f 87 13 02 00 00    	ja     804d016 <_malloc_r+0x636>
 804ce03:	83 c1 5b             	add    $0x5b,%ecx
 804ce06:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804ce09:	8d 04 85 40 25 05 08 	lea    0x8052540(,%eax,4),%eax
 804ce10:	8b 50 08             	mov    0x8(%eax),%edx
 804ce13:	39 c2                	cmp    %eax,%edx
 804ce15:	0f 84 bf 01 00 00    	je     804cfda <_malloc_r+0x5fa>
 804ce1b:	90                   	nop
 804ce1c:	8b 4a 04             	mov    0x4(%edx),%ecx
 804ce1f:	83 e1 fc             	and    $0xfffffffc,%ecx
 804ce22:	39 cf                	cmp    %ecx,%edi
 804ce24:	73 07                	jae    804ce2d <_malloc_r+0x44d>
 804ce26:	8b 52 08             	mov    0x8(%edx),%edx
 804ce29:	39 d0                	cmp    %edx,%eax
 804ce2b:	75 ef                	jne    804ce1c <_malloc_r+0x43c>
 804ce2d:	8b 4a 0c             	mov    0xc(%edx),%ecx
 804ce30:	a1 44 25 05 08       	mov    0x8052544,%eax
 804ce35:	89 4e 0c             	mov    %ecx,0xc(%esi)
 804ce38:	89 56 08             	mov    %edx,0x8(%esi)
 804ce3b:	89 71 08             	mov    %esi,0x8(%ecx)
 804ce3e:	89 72 0c             	mov    %esi,0xc(%edx)
 804ce41:	e9 fd fc ff ff       	jmp    804cb43 <_malloc_r+0x163>
 804ce46:	66 90                	xchg   %ax,%ax
 804ce48:	8d 14 1e             	lea    (%esi,%ebx,1),%edx
 804ce4b:	83 cb 01             	or     $0x1,%ebx
 804ce4e:	89 5e 04             	mov    %ebx,0x4(%esi)
 804ce51:	89 15 54 25 05 08    	mov    %edx,0x8052554
 804ce57:	89 15 50 25 05 08    	mov    %edx,0x8052550
 804ce5d:	c7 42 0c 48 25 05 08 	movl   $0x8052548,0xc(%edx)
 804ce64:	c7 42 08 48 25 05 08 	movl   $0x8052548,0x8(%edx)
 804ce6b:	89 c1                	mov    %eax,%ecx
 804ce6d:	83 c9 01             	or     $0x1,%ecx
 804ce70:	89 4a 04             	mov    %ecx,0x4(%edx)
 804ce73:	89 04 02             	mov    %eax,(%edx,%eax,1)
 804ce76:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ce7a:	89 04 24             	mov    %eax,(%esp)
 804ce7d:	e8 42 03 00 00       	call   804d1c4 <__malloc_unlock>
 804ce82:	8d 46 08             	lea    0x8(%esi),%eax
 804ce85:	e9 c3 fb ff ff       	jmp    804ca4d <_malloc_r+0x6d>
 804ce8a:	66 90                	xchg   %ax,%ax
 804ce8c:	a1 44 25 05 08       	mov    0x8052544,%eax
 804ce91:	e9 ad fc ff ff       	jmp    804cb43 <_malloc_r+0x163>
 804ce96:	66 90                	xchg   %ax,%ax
 804ce98:	83 c1 08             	add    $0x8,%ecx
 804ce9b:	ff 44 24 18          	incl   0x18(%esp)
 804ce9f:	f6 44 24 18 03       	testb  $0x3,0x18(%esp)
 804cea4:	0f 85 dc fc ff ff    	jne    804cb86 <_malloc_r+0x1a6>
 804ceaa:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804ceae:	66 90                	xchg   %ax,%ax
 804ceb0:	f7 c5 03 00 00 00    	test   $0x3,%ebp
 804ceb6:	0f 84 e8 01 00 00    	je     804d0a4 <_malloc_r+0x6c4>
 804cebc:	4d                   	dec    %ebp
 804cebd:	8d 50 f8             	lea    -0x8(%eax),%edx
 804cec0:	8b 00                	mov    (%eax),%eax
 804cec2:	39 d0                	cmp    %edx,%eax
 804cec4:	74 ea                	je     804ceb0 <_malloc_r+0x4d0>
 804cec6:	a1 44 25 05 08       	mov    0x8052544,%eax
 804cecb:	d1 e7                	shl    %edi
 804cecd:	39 c7                	cmp    %eax,%edi
 804cecf:	0f 87 5b fd ff ff    	ja     804cc30 <_malloc_r+0x250>
 804ced5:	85 ff                	test   %edi,%edi
 804ced7:	0f 84 53 fd ff ff    	je     804cc30 <_malloc_r+0x250>
 804cedd:	85 f8                	test   %edi,%eax
 804cedf:	0f 84 d3 01 00 00    	je     804d0b8 <_malloc_r+0x6d8>
 804cee5:	8b 6c 24 18          	mov    0x18(%esp),%ebp
 804cee9:	e9 87 fc ff ff       	jmp    804cb75 <_malloc_r+0x195>
 804ceee:	66 90                	xchg   %ax,%ax
 804cef0:	8d 46 08             	lea    0x8(%esi),%eax
 804cef3:	8b 76 14             	mov    0x14(%esi),%esi
 804cef6:	39 f0                	cmp    %esi,%eax
 804cef8:	0f 85 29 fb ff ff    	jne    804ca27 <_malloc_r+0x47>
 804cefe:	8d 6a 02             	lea    0x2(%edx),%ebp
 804cf01:	e9 c0 fb ff ff       	jmp    804cac6 <_malloc_r+0xe6>
 804cf06:	66 90                	xchg   %ax,%ax
 804cf08:	83 4c 06 04 01       	orl    $0x1,0x4(%esi,%eax,1)
 804cf0d:	8b 46 0c             	mov    0xc(%esi),%eax
 804cf10:	8b 56 08             	mov    0x8(%esi),%edx
 804cf13:	89 42 0c             	mov    %eax,0xc(%edx)
 804cf16:	89 50 08             	mov    %edx,0x8(%eax)
 804cf19:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cf1d:	89 04 24             	mov    %eax,(%esp)
 804cf20:	e8 9f 02 00 00       	call   804d1c4 <__malloc_unlock>
 804cf25:	8d 46 08             	lea    0x8(%esi),%eax
 804cf28:	e9 20 fb ff ff       	jmp    804ca4d <_malloc_r+0x6d>
 804cf2d:	8d 76 00             	lea    0x0(%esi),%esi
 804cf30:	83 c7 5b             	add    $0x5b,%edi
 804cf33:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804cf36:	e9 5c fb ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804cf3b:	89 f9                	mov    %edi,%ecx
 804cf3d:	c1 e9 06             	shr    $0x6,%ecx
 804cf40:	83 c1 38             	add    $0x38,%ecx
 804cf43:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804cf46:	e9 be fe ff ff       	jmp    804ce09 <_malloc_r+0x429>
 804cf4b:	81 fe 40 25 05 08    	cmp    $0x8052540,%esi
 804cf51:	0f 84 43 fd ff ff    	je     804cc9a <_malloc_r+0x2ba>
 804cf57:	8b 35 48 25 05 08    	mov    0x8052548,%esi
 804cf5d:	8b 56 04             	mov    0x4(%esi),%edx
 804cf60:	83 e2 fc             	and    $0xfffffffc,%edx
 804cf63:	89 d0                	mov    %edx,%eax
 804cf65:	29 d8                	sub    %ebx,%eax
 804cf67:	39 da                	cmp    %ebx,%edx
 804cf69:	72 09                	jb     804cf74 <_malloc_r+0x594>
 804cf6b:	83 f8 0f             	cmp    $0xf,%eax
 804cf6e:	0f 8f 24 fe ff ff    	jg     804cd98 <_malloc_r+0x3b8>
 804cf74:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cf78:	89 04 24             	mov    %eax,(%esp)
 804cf7b:	e8 44 02 00 00       	call   804d1c4 <__malloc_unlock>
 804cf80:	31 c0                	xor    %eax,%eax
 804cf82:	e9 c6 fa ff ff       	jmp    804ca4d <_malloc_r+0x6d>
 804cf87:	83 c6 08             	add    $0x8,%esi
 804cf8a:	89 74 24 04          	mov    %esi,0x4(%esp)
 804cf8e:	8b 44 24 40          	mov    0x40(%esp),%eax
 804cf92:	89 04 24             	mov    %eax,(%esp)
 804cf95:	e8 4a f5 ff ff       	call   804c4e4 <_free_r>
 804cf9a:	8b 15 80 29 05 08    	mov    0x8052980,%edx
 804cfa0:	8b 35 48 25 05 08    	mov    0x8052548,%esi
 804cfa6:	e9 c6 fd ff ff       	jmp    804cd71 <_malloc_r+0x391>
 804cfab:	81 ff 54 01 00 00    	cmp    $0x154,%edi
 804cfb1:	77 43                	ja     804cff6 <_malloc_r+0x616>
 804cfb3:	89 df                	mov    %ebx,%edi
 804cfb5:	c1 ef 0f             	shr    $0xf,%edi
 804cfb8:	83 c7 77             	add    $0x77,%edi
 804cfbb:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804cfbe:	e9 d4 fa ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804cfc3:	ba 00 10 00 00       	mov    $0x1000,%edx
 804cfc8:	e9 18 fd ff ff       	jmp    804cce5 <_malloc_r+0x305>
 804cfcd:	c7 41 04 01 00 00 00 	movl   $0x1,0x4(%ecx)
 804cfd4:	89 ce                	mov    %ecx,%esi
 804cfd6:	31 d2                	xor    %edx,%edx
 804cfd8:	eb 89                	jmp    804cf63 <_malloc_r+0x583>
 804cfda:	c1 f9 02             	sar    $0x2,%ecx
 804cfdd:	b8 01 00 00 00       	mov    $0x1,%eax
 804cfe2:	d3 e0                	shl    %cl,%eax
 804cfe4:	0b 05 44 25 05 08    	or     0x8052544,%eax
 804cfea:	a3 44 25 05 08       	mov    %eax,0x8052544
 804cfef:	89 d1                	mov    %edx,%ecx
 804cff1:	e9 3f fe ff ff       	jmp    804ce35 <_malloc_r+0x455>
 804cff6:	81 ff 54 05 00 00    	cmp    $0x554,%edi
 804cffc:	77 50                	ja     804d04e <_malloc_r+0x66e>
 804cffe:	89 df                	mov    %ebx,%edi
 804d000:	c1 ef 12             	shr    $0x12,%edi
 804d003:	83 c7 7c             	add    $0x7c,%edi
 804d006:	8d 04 3f             	lea    (%edi,%edi,1),%eax
 804d009:	e9 89 fa ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804d00e:	8d 69 10             	lea    0x10(%ecx),%ebp
 804d011:	e9 5f fc ff ff       	jmp    804cc75 <_malloc_r+0x295>
 804d016:	83 f9 54             	cmp    $0x54,%ecx
 804d019:	77 59                	ja     804d074 <_malloc_r+0x694>
 804d01b:	89 f9                	mov    %edi,%ecx
 804d01d:	c1 e9 0c             	shr    $0xc,%ecx
 804d020:	83 c1 6e             	add    $0x6e,%ecx
 804d023:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804d026:	e9 de fd ff ff       	jmp    804ce09 <_malloc_r+0x429>
 804d02b:	f7 44 24 18 ff 0f 00 	testl  $0xfff,0x18(%esp)
 804d032:	00 
 804d033:	0f 85 79 fc ff ff    	jne    804ccb2 <_malloc_r+0x2d2>
 804d039:	8b 35 48 25 05 08    	mov    0x8052548,%esi
 804d03f:	8d 4c 3d 00          	lea    0x0(%ebp,%edi,1),%ecx
 804d043:	83 c9 01             	or     $0x1,%ecx
 804d046:	89 4e 04             	mov    %ecx,0x4(%esi)
 804d049:	e9 23 fd ff ff       	jmp    804cd71 <_malloc_r+0x391>
 804d04e:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804d053:	bf 7e 00 00 00       	mov    $0x7e,%edi
 804d058:	e9 3a fa ff ff       	jmp    804ca97 <_malloc_r+0xb7>
 804d05d:	89 0d 20 25 05 08    	mov    %ecx,0x8052520
 804d063:	e9 64 fc ff ff       	jmp    804cccc <_malloc_r+0x2ec>
 804d068:	b8 01 00 00 00       	mov    $0x1,%eax
 804d06d:	31 d2                	xor    %edx,%edx
 804d06f:	e9 ab fc ff ff       	jmp    804cd1f <_malloc_r+0x33f>
 804d074:	81 f9 54 01 00 00    	cmp    $0x154,%ecx
 804d07a:	77 10                	ja     804d08c <_malloc_r+0x6ac>
 804d07c:	89 f9                	mov    %edi,%ecx
 804d07e:	c1 e9 0f             	shr    $0xf,%ecx
 804d081:	83 c1 77             	add    $0x77,%ecx
 804d084:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804d087:	e9 7d fd ff ff       	jmp    804ce09 <_malloc_r+0x429>
 804d08c:	81 f9 54 05 00 00    	cmp    $0x554,%ecx
 804d092:	77 30                	ja     804d0c4 <_malloc_r+0x6e4>
 804d094:	89 f9                	mov    %edi,%ecx
 804d096:	c1 e9 12             	shr    $0x12,%ecx
 804d099:	83 c1 7c             	add    $0x7c,%ecx
 804d09c:	8d 04 09             	lea    (%ecx,%ecx,1),%eax
 804d09f:	e9 65 fd ff ff       	jmp    804ce09 <_malloc_r+0x429>
 804d0a4:	89 f8                	mov    %edi,%eax
 804d0a6:	f7 d0                	not    %eax
 804d0a8:	23 05 44 25 05 08    	and    0x8052544,%eax
 804d0ae:	a3 44 25 05 08       	mov    %eax,0x8052544
 804d0b3:	e9 13 fe ff ff       	jmp    804cecb <_malloc_r+0x4eb>
 804d0b8:	83 44 24 18 04       	addl   $0x4,0x18(%esp)
 804d0bd:	d1 e7                	shl    %edi
 804d0bf:	e9 19 fe ff ff       	jmp    804cedd <_malloc_r+0x4fd>
 804d0c4:	b8 fc 00 00 00       	mov    $0xfc,%eax
 804d0c9:	b9 7e 00 00 00       	mov    $0x7e,%ecx
 804d0ce:	e9 36 fd ff ff       	jmp    804ce09 <_malloc_r+0x429>
 804d0d3:	66 90                	xchg   %ax,%ax
 804d0d5:	66 90                	xchg   %ax,%ax
 804d0d7:	66 90                	xchg   %ax,%ax
 804d0d9:	66 90                	xchg   %ax,%ax
 804d0db:	66 90                	xchg   %ax,%ax
 804d0dd:	66 90                	xchg   %ax,%ax
 804d0df:	90                   	nop

0804d0e0 <memchr>:
 804d0e0:	55                   	push   %ebp
 804d0e1:	89 e5                	mov    %esp,%ebp
 804d0e3:	57                   	push   %edi
 804d0e4:	0f b6 45 0c          	movzbl 0xc(%ebp),%eax
 804d0e8:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804d0eb:	8b 7d 08             	mov    0x8(%ebp),%edi
 804d0ee:	31 d2                	xor    %edx,%edx
 804d0f0:	85 c9                	test   %ecx,%ecx
 804d0f2:	74 79                	je     804d16d <L20>
 804d0f4:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804d0fa:	74 28                	je     804d124 <L5>
 804d0fc:	3a 07                	cmp    (%edi),%al
 804d0fe:	74 6a                	je     804d16a <L15>
 804d100:	47                   	inc    %edi
 804d101:	49                   	dec    %ecx
 804d102:	74 69                	je     804d16d <L20>
 804d104:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804d10a:	74 18                	je     804d124 <L5>
 804d10c:	3a 07                	cmp    (%edi),%al
 804d10e:	74 5a                	je     804d16a <L15>
 804d110:	47                   	inc    %edi
 804d111:	49                   	dec    %ecx
 804d112:	74 59                	je     804d16d <L20>
 804d114:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804d11a:	74 08                	je     804d124 <L5>
 804d11c:	3a 07                	cmp    (%edi),%al
 804d11e:	74 4a                	je     804d16a <L15>
 804d120:	47                   	inc    %edi
 804d121:	49                   	dec    %ecx
 804d122:	74 49                	je     804d16d <L20>

0804d124 <L5>:
 804d124:	88 c4                	mov    %al,%ah
 804d126:	89 c2                	mov    %eax,%edx
 804d128:	c1 e2 10             	shl    $0x10,%edx
 804d12b:	09 d0                	or     %edx,%eax
 804d12d:	53                   	push   %ebx
 804d12e:	66 90                	xchg   %ax,%ax

0804d130 <L8>:
 804d130:	83 e9 04             	sub    $0x4,%ecx
 804d133:	72 1c                	jb     804d151 <L9>
 804d135:	8b 17                	mov    (%edi),%edx
 804d137:	83 c7 04             	add    $0x4,%edi
 804d13a:	31 c2                	xor    %eax,%edx
 804d13c:	8d 9a ff fe fe fe    	lea    -0x1010101(%edx),%ebx
 804d142:	f7 d2                	not    %edx
 804d144:	21 d3                	and    %edx,%ebx
 804d146:	f7 c3 80 80 80 80    	test   $0x80808080,%ebx
 804d14c:	74 e2                	je     804d130 <L8>
 804d14e:	83 ef 04             	sub    $0x4,%edi

0804d151 <L9>:
 804d151:	5b                   	pop    %ebx
 804d152:	31 d2                	xor    %edx,%edx
 804d154:	83 c1 04             	add    $0x4,%ecx
 804d157:	74 14                	je     804d16d <L20>
 804d159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804d160 <L10>:
 804d160:	3a 07                	cmp    (%edi),%al
 804d162:	74 06                	je     804d16a <L15>
 804d164:	47                   	inc    %edi
 804d165:	49                   	dec    %ecx
 804d166:	75 f8                	jne    804d160 <L10>
 804d168:	31 ff                	xor    %edi,%edi

0804d16a <L15>:
 804d16a:	4a                   	dec    %edx
 804d16b:	21 fa                	and    %edi,%edx

0804d16d <L20>:
 804d16d:	89 d0                	mov    %edx,%eax
 804d16f:	8d 65 fc             	lea    -0x4(%ebp),%esp
 804d172:	5f                   	pop    %edi
 804d173:	c9                   	leave  
 804d174:	c3                   	ret    
 804d175:	66 90                	xchg   %ax,%ax
 804d177:	90                   	nop

0804d178 <memcpy>:
 804d178:	55                   	push   %ebp
 804d179:	89 e5                	mov    %esp,%ebp
 804d17b:	56                   	push   %esi
 804d17c:	57                   	push   %edi
 804d17d:	53                   	push   %ebx
 804d17e:	8b 7d 08             	mov    0x8(%ebp),%edi
 804d181:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804d184:	8b 75 0c             	mov    0xc(%ebp),%esi
 804d187:	fc                   	cld    
 804d188:	83 f9 08             	cmp    $0x8,%ecx
 804d18b:	76 26                	jbe    804d1b3 <memcpy+0x3b>
 804d18d:	89 fa                	mov    %edi,%edx
 804d18f:	89 cb                	mov    %ecx,%ebx
 804d191:	83 e2 03             	and    $0x3,%edx
 804d194:	74 10                	je     804d1a6 <memcpy+0x2e>
 804d196:	b9 04 00 00 00       	mov    $0x4,%ecx
 804d19b:	29 d1                	sub    %edx,%ecx
 804d19d:	83 e1 03             	and    $0x3,%ecx
 804d1a0:	29 cb                	sub    %ecx,%ebx
 804d1a2:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804d1a4:	89 d9                	mov    %ebx,%ecx
 804d1a6:	c1 e9 02             	shr    $0x2,%ecx
 804d1a9:	8d 76 00             	lea    0x0(%esi),%esi
 804d1ac:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804d1ae:	89 d9                	mov    %ebx,%ecx
 804d1b0:	83 e1 03             	and    $0x3,%ecx
 804d1b3:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804d1b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804d1b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804d1bb:	5b                   	pop    %ebx
 804d1bc:	5f                   	pop    %edi
 804d1bd:	5e                   	pop    %esi
 804d1be:	c9                   	leave  
 804d1bf:	c3                   	ret    

0804d1c0 <__malloc_lock>:
 804d1c0:	c3                   	ret    
 804d1c1:	8d 76 00             	lea    0x0(%esi),%esi

0804d1c4 <__malloc_unlock>:
 804d1c4:	c3                   	ret    
 804d1c5:	66 90                	xchg   %ax,%ax
 804d1c7:	90                   	nop

0804d1c8 <_Balloc>:
 804d1c8:	57                   	push   %edi
 804d1c9:	56                   	push   %esi
 804d1ca:	53                   	push   %ebx
 804d1cb:	83 ec 10             	sub    $0x10,%esp
 804d1ce:	8b 74 24 20          	mov    0x20(%esp),%esi
 804d1d2:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 804d1d6:	8b 46 4c             	mov    0x4c(%esi),%eax
 804d1d9:	85 c0                	test   %eax,%eax
 804d1db:	74 23                	je     804d200 <_Balloc+0x38>
 804d1dd:	8d 14 98             	lea    (%eax,%ebx,4),%edx
 804d1e0:	8b 02                	mov    (%edx),%eax
 804d1e2:	85 c0                	test   %eax,%eax
 804d1e4:	74 3e                	je     804d224 <_Balloc+0x5c>
 804d1e6:	8b 08                	mov    (%eax),%ecx
 804d1e8:	89 0a                	mov    %ecx,(%edx)
 804d1ea:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 804d1f1:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804d1f8:	83 c4 10             	add    $0x10,%esp
 804d1fb:	5b                   	pop    %ebx
 804d1fc:	5e                   	pop    %esi
 804d1fd:	5f                   	pop    %edi
 804d1fe:	c3                   	ret    
 804d1ff:	90                   	nop
 804d200:	c7 44 24 08 21 00 00 	movl   $0x21,0x8(%esp)
 804d207:	00 
 804d208:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
 804d20f:	00 
 804d210:	89 34 24             	mov    %esi,(%esp)
 804d213:	e8 1c 1f 00 00       	call   804f134 <_calloc_r>
 804d218:	89 46 4c             	mov    %eax,0x4c(%esi)
 804d21b:	85 c0                	test   %eax,%eax
 804d21d:	75 be                	jne    804d1dd <_Balloc+0x15>
 804d21f:	31 c0                	xor    %eax,%eax
 804d221:	eb d5                	jmp    804d1f8 <_Balloc+0x30>
 804d223:	90                   	nop
 804d224:	bf 01 00 00 00       	mov    $0x1,%edi
 804d229:	88 d9                	mov    %bl,%cl
 804d22b:	d3 e7                	shl    %cl,%edi
 804d22d:	8d 04 bd 14 00 00 00 	lea    0x14(,%edi,4),%eax
 804d234:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d238:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804d23f:	00 
 804d240:	89 34 24             	mov    %esi,(%esp)
 804d243:	e8 ec 1e 00 00       	call   804f134 <_calloc_r>
 804d248:	85 c0                	test   %eax,%eax
 804d24a:	74 d3                	je     804d21f <_Balloc+0x57>
 804d24c:	89 58 04             	mov    %ebx,0x4(%eax)
 804d24f:	89 78 08             	mov    %edi,0x8(%eax)
 804d252:	eb 96                	jmp    804d1ea <_Balloc+0x22>

0804d254 <_Bfree>:
 804d254:	8b 44 24 08          	mov    0x8(%esp),%eax
 804d258:	85 c0                	test   %eax,%eax
 804d25a:	74 13                	je     804d26f <_Bfree+0x1b>
 804d25c:	8b 48 04             	mov    0x4(%eax),%ecx
 804d25f:	8b 54 24 04          	mov    0x4(%esp),%edx
 804d263:	8b 52 4c             	mov    0x4c(%edx),%edx
 804d266:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
 804d269:	8b 0a                	mov    (%edx),%ecx
 804d26b:	89 08                	mov    %ecx,(%eax)
 804d26d:	89 02                	mov    %eax,(%edx)
 804d26f:	c3                   	ret    

0804d270 <__multadd>:
 804d270:	55                   	push   %ebp
 804d271:	57                   	push   %edi
 804d272:	56                   	push   %esi
 804d273:	53                   	push   %ebx
 804d274:	83 ec 2c             	sub    $0x2c,%esp
 804d277:	8b 6c 24 48          	mov    0x48(%esp),%ebp
 804d27b:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 804d27f:	8b 44 24 44          	mov    0x44(%esp),%eax
 804d283:	8b 40 10             	mov    0x10(%eax),%eax
 804d286:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804d28a:	8b 74 24 44          	mov    0x44(%esp),%esi
 804d28e:	83 c6 14             	add    $0x14,%esi
 804d291:	31 c0                	xor    %eax,%eax
 804d293:	90                   	nop
 804d294:	8b 14 86             	mov    (%esi,%eax,4),%edx
 804d297:	0f b7 ca             	movzwl %dx,%ecx
 804d29a:	0f af cd             	imul   %ebp,%ecx
 804d29d:	01 d9                	add    %ebx,%ecx
 804d29f:	89 cb                	mov    %ecx,%ebx
 804d2a1:	c1 eb 10             	shr    $0x10,%ebx
 804d2a4:	c1 ea 10             	shr    $0x10,%edx
 804d2a7:	0f af d5             	imul   %ebp,%edx
 804d2aa:	01 da                	add    %ebx,%edx
 804d2ac:	89 d7                	mov    %edx,%edi
 804d2ae:	c1 ef 10             	shr    $0x10,%edi
 804d2b1:	89 fb                	mov    %edi,%ebx
 804d2b3:	c1 e2 10             	shl    $0x10,%edx
 804d2b6:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804d2bc:	01 ca                	add    %ecx,%edx
 804d2be:	89 14 86             	mov    %edx,(%esi,%eax,4)
 804d2c1:	40                   	inc    %eax
 804d2c2:	39 44 24 1c          	cmp    %eax,0x1c(%esp)
 804d2c6:	7f cc                	jg     804d294 <__multadd+0x24>
 804d2c8:	85 ff                	test   %edi,%edi
 804d2ca:	74 23                	je     804d2ef <__multadd+0x7f>
 804d2cc:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804d2d0:	8b 44 24 44          	mov    0x44(%esp),%eax
 804d2d4:	3b 50 08             	cmp    0x8(%eax),%edx
 804d2d7:	7d 23                	jge    804d2fc <__multadd+0x8c>
 804d2d9:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804d2dd:	8b 44 24 44          	mov    0x44(%esp),%eax
 804d2e1:	89 7c 90 14          	mov    %edi,0x14(%eax,%edx,4)
 804d2e5:	89 d0                	mov    %edx,%eax
 804d2e7:	40                   	inc    %eax
 804d2e8:	8b 54 24 44          	mov    0x44(%esp),%edx
 804d2ec:	89 42 10             	mov    %eax,0x10(%edx)
 804d2ef:	8b 44 24 44          	mov    0x44(%esp),%eax
 804d2f3:	83 c4 2c             	add    $0x2c,%esp
 804d2f6:	5b                   	pop    %ebx
 804d2f7:	5e                   	pop    %esi
 804d2f8:	5f                   	pop    %edi
 804d2f9:	5d                   	pop    %ebp
 804d2fa:	c3                   	ret    
 804d2fb:	90                   	nop
 804d2fc:	8b 48 04             	mov    0x4(%eax),%ecx
 804d2ff:	89 c8                	mov    %ecx,%eax
 804d301:	40                   	inc    %eax
 804d302:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d306:	8b 44 24 40          	mov    0x40(%esp),%eax
 804d30a:	89 04 24             	mov    %eax,(%esp)
 804d30d:	e8 b6 fe ff ff       	call   804d1c8 <_Balloc>
 804d312:	89 c3                	mov    %eax,%ebx
 804d314:	8b 54 24 44          	mov    0x44(%esp),%edx
 804d318:	8b 42 10             	mov    0x10(%edx),%eax
 804d31b:	8d 04 85 08 00 00 00 	lea    0x8(,%eax,4),%eax
 804d322:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d326:	89 d0                	mov    %edx,%eax
 804d328:	83 c0 0c             	add    $0xc,%eax
 804d32b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d32f:	8d 43 0c             	lea    0xc(%ebx),%eax
 804d332:	89 04 24             	mov    %eax,(%esp)
 804d335:	e8 3e fe ff ff       	call   804d178 <memcpy>
 804d33a:	8b 44 24 44          	mov    0x44(%esp),%eax
 804d33e:	8b 50 04             	mov    0x4(%eax),%edx
 804d341:	8b 4c 24 40          	mov    0x40(%esp),%ecx
 804d345:	8b 41 4c             	mov    0x4c(%ecx),%eax
 804d348:	8d 04 90             	lea    (%eax,%edx,4),%eax
 804d34b:	8b 10                	mov    (%eax),%edx
 804d34d:	8b 4c 24 44          	mov    0x44(%esp),%ecx
 804d351:	89 11                	mov    %edx,(%ecx)
 804d353:	89 08                	mov    %ecx,(%eax)
 804d355:	89 5c 24 44          	mov    %ebx,0x44(%esp)
 804d359:	e9 7b ff ff ff       	jmp    804d2d9 <__multadd+0x69>
 804d35e:	66 90                	xchg   %ax,%ax

0804d360 <__s2b>:
 804d360:	55                   	push   %ebp
 804d361:	57                   	push   %edi
 804d362:	56                   	push   %esi
 804d363:	53                   	push   %ebx
 804d364:	83 ec 1c             	sub    $0x1c,%esp
 804d367:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 804d36b:	8b 74 24 34          	mov    0x34(%esp),%esi
 804d36f:	8b 4c 24 3c          	mov    0x3c(%esp),%ecx
 804d373:	83 c1 08             	add    $0x8,%ecx
 804d376:	ba 39 8e e3 38       	mov    $0x38e38e39,%edx
 804d37b:	89 c8                	mov    %ecx,%eax
 804d37d:	f7 ea                	imul   %edx
 804d37f:	d1 fa                	sar    %edx
 804d381:	c1 f9 1f             	sar    $0x1f,%ecx
 804d384:	29 ca                	sub    %ecx,%edx
 804d386:	83 fa 01             	cmp    $0x1,%edx
 804d389:	0f 8e af 00 00 00    	jle    804d43e <__s2b+0xde>
 804d38f:	b8 01 00 00 00       	mov    $0x1,%eax
 804d394:	31 c9                	xor    %ecx,%ecx
 804d396:	66 90                	xchg   %ax,%ax
 804d398:	d1 e0                	shl    %eax
 804d39a:	41                   	inc    %ecx
 804d39b:	39 c2                	cmp    %eax,%edx
 804d39d:	7f f9                	jg     804d398 <__s2b+0x38>
 804d39f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804d3a3:	89 1c 24             	mov    %ebx,(%esp)
 804d3a6:	e8 1d fe ff ff       	call   804d1c8 <_Balloc>
 804d3ab:	8b 54 24 40          	mov    0x40(%esp),%edx
 804d3af:	89 50 14             	mov    %edx,0x14(%eax)
 804d3b2:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 804d3b9:	83 7c 24 38 09       	cmpl   $0x9,0x38(%esp)
 804d3be:	7e 74                	jle    804d434 <__s2b+0xd4>
 804d3c0:	8d 6e 09             	lea    0x9(%esi),%ebp
 804d3c3:	03 74 24 38          	add    0x38(%esp),%esi
 804d3c7:	89 ef                	mov    %ebp,%edi
 804d3c9:	8d 76 00             	lea    0x0(%esi),%esi
 804d3cc:	0f be 17             	movsbl (%edi),%edx
 804d3cf:	83 ea 30             	sub    $0x30,%edx
 804d3d2:	47                   	inc    %edi
 804d3d3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804d3d7:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804d3de:	00 
 804d3df:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d3e3:	89 1c 24             	mov    %ebx,(%esp)
 804d3e6:	e8 85 fe ff ff       	call   804d270 <__multadd>
 804d3eb:	39 f7                	cmp    %esi,%edi
 804d3ed:	75 dd                	jne    804d3cc <__s2b+0x6c>
 804d3ef:	8b 54 24 38          	mov    0x38(%esp),%edx
 804d3f3:	8d 74 15 f8          	lea    -0x8(%ebp,%edx,1),%esi
 804d3f7:	39 54 24 3c          	cmp    %edx,0x3c(%esp)
 804d3fb:	7e 2e                	jle    804d42b <__s2b+0xcb>
 804d3fd:	8b 7c 24 3c          	mov    0x3c(%esp),%edi
 804d401:	29 d7                	sub    %edx,%edi
 804d403:	01 f7                	add    %esi,%edi
 804d405:	8d 76 00             	lea    0x0(%esi),%esi
 804d408:	0f be 16             	movsbl (%esi),%edx
 804d40b:	83 ea 30             	sub    $0x30,%edx
 804d40e:	46                   	inc    %esi
 804d40f:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804d413:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804d41a:	00 
 804d41b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d41f:	89 1c 24             	mov    %ebx,(%esp)
 804d422:	e8 49 fe ff ff       	call   804d270 <__multadd>
 804d427:	39 fe                	cmp    %edi,%esi
 804d429:	75 dd                	jne    804d408 <__s2b+0xa8>
 804d42b:	83 c4 1c             	add    $0x1c,%esp
 804d42e:	5b                   	pop    %ebx
 804d42f:	5e                   	pop    %esi
 804d430:	5f                   	pop    %edi
 804d431:	5d                   	pop    %ebp
 804d432:	c3                   	ret    
 804d433:	90                   	nop
 804d434:	83 c6 0a             	add    $0xa,%esi
 804d437:	ba 09 00 00 00       	mov    $0x9,%edx
 804d43c:	eb b9                	jmp    804d3f7 <__s2b+0x97>
 804d43e:	31 c9                	xor    %ecx,%ecx
 804d440:	e9 5a ff ff ff       	jmp    804d39f <__s2b+0x3f>
 804d445:	8d 76 00             	lea    0x0(%esi),%esi

0804d448 <__hi0bits>:
 804d448:	8b 54 24 04          	mov    0x4(%esp),%edx
 804d44c:	f7 c2 00 00 ff ff    	test   $0xffff0000,%edx
 804d452:	75 44                	jne    804d498 <__hi0bits+0x50>
 804d454:	c1 e2 10             	shl    $0x10,%edx
 804d457:	b8 10 00 00 00       	mov    $0x10,%eax
 804d45c:	f7 c2 00 00 00 ff    	test   $0xff000000,%edx
 804d462:	75 06                	jne    804d46a <__hi0bits+0x22>
 804d464:	83 c0 08             	add    $0x8,%eax
 804d467:	c1 e2 08             	shl    $0x8,%edx
 804d46a:	f7 c2 00 00 00 f0    	test   $0xf0000000,%edx
 804d470:	75 06                	jne    804d478 <__hi0bits+0x30>
 804d472:	83 c0 04             	add    $0x4,%eax
 804d475:	c1 e2 04             	shl    $0x4,%edx
 804d478:	f7 c2 00 00 00 c0    	test   $0xc0000000,%edx
 804d47e:	75 06                	jne    804d486 <__hi0bits+0x3e>
 804d480:	83 c0 02             	add    $0x2,%eax
 804d483:	c1 e2 02             	shl    $0x2,%edx
 804d486:	85 d2                	test   %edx,%edx
 804d488:	78 0d                	js     804d497 <__hi0bits+0x4f>
 804d48a:	81 e2 00 00 00 40    	and    $0x40000000,%edx
 804d490:	75 0a                	jne    804d49c <__hi0bits+0x54>
 804d492:	b8 20 00 00 00       	mov    $0x20,%eax
 804d497:	c3                   	ret    
 804d498:	31 c0                	xor    %eax,%eax
 804d49a:	eb c0                	jmp    804d45c <__hi0bits+0x14>
 804d49c:	40                   	inc    %eax
 804d49d:	c3                   	ret    
 804d49e:	66 90                	xchg   %ax,%ax

0804d4a0 <__lo0bits>:
 804d4a0:	8b 4c 24 04          	mov    0x4(%esp),%ecx
 804d4a4:	8b 11                	mov    (%ecx),%edx
 804d4a6:	f6 c2 07             	test   $0x7,%dl
 804d4a9:	74 15                	je     804d4c0 <__lo0bits+0x20>
 804d4ab:	f6 c2 01             	test   $0x1,%dl
 804d4ae:	75 58                	jne    804d508 <__lo0bits+0x68>
 804d4b0:	f6 c2 02             	test   $0x2,%dl
 804d4b3:	75 57                	jne    804d50c <__lo0bits+0x6c>
 804d4b5:	c1 ea 02             	shr    $0x2,%edx
 804d4b8:	89 11                	mov    %edx,(%ecx)
 804d4ba:	b8 02 00 00 00       	mov    $0x2,%eax
 804d4bf:	c3                   	ret    
 804d4c0:	66 85 d2             	test   %dx,%dx
 804d4c3:	74 33                	je     804d4f8 <__lo0bits+0x58>
 804d4c5:	31 c0                	xor    %eax,%eax
 804d4c7:	84 d2                	test   %dl,%dl
 804d4c9:	75 06                	jne    804d4d1 <__lo0bits+0x31>
 804d4cb:	83 c0 08             	add    $0x8,%eax
 804d4ce:	c1 ea 08             	shr    $0x8,%edx
 804d4d1:	f6 c2 0f             	test   $0xf,%dl
 804d4d4:	75 06                	jne    804d4dc <__lo0bits+0x3c>
 804d4d6:	83 c0 04             	add    $0x4,%eax
 804d4d9:	c1 ea 04             	shr    $0x4,%edx
 804d4dc:	f6 c2 03             	test   $0x3,%dl
 804d4df:	75 06                	jne    804d4e7 <__lo0bits+0x47>
 804d4e1:	83 c0 02             	add    $0x2,%eax
 804d4e4:	c1 ea 02             	shr    $0x2,%edx
 804d4e7:	f6 c2 01             	test   $0x1,%dl
 804d4ea:	75 19                	jne    804d505 <__lo0bits+0x65>
 804d4ec:	d1 ea                	shr    %edx
 804d4ee:	75 14                	jne    804d504 <__lo0bits+0x64>
 804d4f0:	b8 20 00 00 00       	mov    $0x20,%eax
 804d4f5:	c3                   	ret    
 804d4f6:	66 90                	xchg   %ax,%ax
 804d4f8:	c1 ea 10             	shr    $0x10,%edx
 804d4fb:	b8 10 00 00 00       	mov    $0x10,%eax
 804d500:	eb c5                	jmp    804d4c7 <__lo0bits+0x27>
 804d502:	66 90                	xchg   %ax,%ax
 804d504:	40                   	inc    %eax
 804d505:	89 11                	mov    %edx,(%ecx)
 804d507:	c3                   	ret    
 804d508:	31 c0                	xor    %eax,%eax
 804d50a:	c3                   	ret    
 804d50b:	90                   	nop
 804d50c:	d1 ea                	shr    %edx
 804d50e:	89 11                	mov    %edx,(%ecx)
 804d510:	b8 01 00 00 00       	mov    $0x1,%eax
 804d515:	c3                   	ret    
 804d516:	66 90                	xchg   %ax,%ax

0804d518 <__i2b>:
 804d518:	83 ec 1c             	sub    $0x1c,%esp
 804d51b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804d522:	00 
 804d523:	8b 44 24 20          	mov    0x20(%esp),%eax
 804d527:	89 04 24             	mov    %eax,(%esp)
 804d52a:	e8 99 fc ff ff       	call   804d1c8 <_Balloc>
 804d52f:	8b 54 24 24          	mov    0x24(%esp),%edx
 804d533:	89 50 14             	mov    %edx,0x14(%eax)
 804d536:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 804d53d:	83 c4 1c             	add    $0x1c,%esp
 804d540:	c3                   	ret    
 804d541:	8d 76 00             	lea    0x0(%esi),%esi

0804d544 <__multiply>:
 804d544:	55                   	push   %ebp
 804d545:	57                   	push   %edi
 804d546:	56                   	push   %esi
 804d547:	53                   	push   %ebx
 804d548:	83 ec 3c             	sub    $0x3c,%esp
 804d54b:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 804d54f:	8b 7c 24 58          	mov    0x58(%esp),%edi
 804d553:	8b 6b 10             	mov    0x10(%ebx),%ebp
 804d556:	8b 77 10             	mov    0x10(%edi),%esi
 804d559:	39 f5                	cmp    %esi,%ebp
 804d55b:	7d 0c                	jge    804d569 <__multiply+0x25>
 804d55d:	89 e8                	mov    %ebp,%eax
 804d55f:	89 f5                	mov    %esi,%ebp
 804d561:	89 c6                	mov    %eax,%esi
 804d563:	89 d8                	mov    %ebx,%eax
 804d565:	89 fb                	mov    %edi,%ebx
 804d567:	89 c7                	mov    %eax,%edi
 804d569:	8b 43 04             	mov    0x4(%ebx),%eax
 804d56c:	8d 54 35 00          	lea    0x0(%ebp,%esi,1),%edx
 804d570:	89 54 24 24          	mov    %edx,0x24(%esp)
 804d574:	3b 53 08             	cmp    0x8(%ebx),%edx
 804d577:	7e 01                	jle    804d57a <__multiply+0x36>
 804d579:	40                   	inc    %eax
 804d57a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d57e:	8b 44 24 50          	mov    0x50(%esp),%eax
 804d582:	89 04 24             	mov    %eax,(%esp)
 804d585:	e8 3e fc ff ff       	call   804d1c8 <_Balloc>
 804d58a:	89 44 24 28          	mov    %eax,0x28(%esp)
 804d58e:	83 c0 14             	add    $0x14,%eax
 804d591:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804d595:	8b 54 24 28          	mov    0x28(%esp),%edx
 804d599:	8d 4c 8a 14          	lea    0x14(%edx,%ecx,4),%ecx
 804d59d:	89 4c 24 2c          	mov    %ecx,0x2c(%esp)
 804d5a1:	89 c2                	mov    %eax,%edx
 804d5a3:	39 c8                	cmp    %ecx,%eax
 804d5a5:	73 12                	jae    804d5b9 <__multiply+0x75>
 804d5a7:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
 804d5ab:	90                   	nop
 804d5ac:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
 804d5b2:	83 c2 04             	add    $0x4,%edx
 804d5b5:	39 d1                	cmp    %edx,%ecx
 804d5b7:	77 f3                	ja     804d5ac <__multiply+0x68>
 804d5b9:	8d 53 14             	lea    0x14(%ebx),%edx
 804d5bc:	89 54 24 20          	mov    %edx,0x20(%esp)
 804d5c0:	8d 5c ab 14          	lea    0x14(%ebx,%ebp,4),%ebx
 804d5c4:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 804d5c8:	8d 4f 14             	lea    0x14(%edi),%ecx
 804d5cb:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804d5cf:	8d 7c b7 14          	lea    0x14(%edi,%esi,4),%edi
 804d5d3:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 804d5d7:	89 44 24 18          	mov    %eax,0x18(%esp)
 804d5db:	39 f9                	cmp    %edi,%ecx
 804d5dd:	0f 83 db 00 00 00    	jae    804d6be <__multiply+0x17a>
 804d5e3:	90                   	nop
 804d5e4:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 804d5e8:	8b 3b                	mov    (%ebx),%edi
 804d5ea:	89 fe                	mov    %edi,%esi
 804d5ec:	81 e6 ff ff 00 00    	and    $0xffff,%esi
 804d5f2:	74 55                	je     804d649 <__multiply+0x105>
 804d5f4:	8b 44 24 18          	mov    0x18(%esp),%eax
 804d5f8:	8b 54 24 20          	mov    0x20(%esp),%edx
 804d5fc:	31 ff                	xor    %edi,%edi
 804d5fe:	66 90                	xchg   %ax,%ax
 804d600:	8b 1a                	mov    (%edx),%ebx
 804d602:	0f b7 cb             	movzwl %bx,%ecx
 804d605:	0f af ce             	imul   %esi,%ecx
 804d608:	0f b7 28             	movzwl (%eax),%ebp
 804d60b:	01 e9                	add    %ebp,%ecx
 804d60d:	01 f9                	add    %edi,%ecx
 804d60f:	c1 eb 10             	shr    $0x10,%ebx
 804d612:	0f af de             	imul   %esi,%ebx
 804d615:	8b 38                	mov    (%eax),%edi
 804d617:	c1 ef 10             	shr    $0x10,%edi
 804d61a:	01 fb                	add    %edi,%ebx
 804d61c:	89 cf                	mov    %ecx,%edi
 804d61e:	c1 ef 10             	shr    $0x10,%edi
 804d621:	01 fb                	add    %edi,%ebx
 804d623:	83 c2 04             	add    $0x4,%edx
 804d626:	89 df                	mov    %ebx,%edi
 804d628:	c1 ef 10             	shr    $0x10,%edi
 804d62b:	c1 e3 10             	shl    $0x10,%ebx
 804d62e:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804d634:	09 cb                	or     %ecx,%ebx
 804d636:	89 18                	mov    %ebx,(%eax)
 804d638:	83 c0 04             	add    $0x4,%eax
 804d63b:	39 54 24 10          	cmp    %edx,0x10(%esp)
 804d63f:	77 bf                	ja     804d600 <__multiply+0xbc>
 804d641:	89 38                	mov    %edi,(%eax)
 804d643:	8b 44 24 14          	mov    0x14(%esp),%eax
 804d647:	8b 38                	mov    (%eax),%edi
 804d649:	c1 ef 10             	shr    $0x10,%edi
 804d64c:	74 58                	je     804d6a6 <__multiply+0x162>
 804d64e:	8b 54 24 18          	mov    0x18(%esp),%edx
 804d652:	8b 02                	mov    (%edx),%eax
 804d654:	89 c6                	mov    %eax,%esi
 804d656:	89 d1                	mov    %edx,%ecx
 804d658:	8b 54 24 20          	mov    0x20(%esp),%edx
 804d65c:	31 ed                	xor    %ebp,%ebp
 804d65e:	66 90                	xchg   %ax,%ax
 804d660:	0f b7 1a             	movzwl (%edx),%ebx
 804d663:	0f af df             	imul   %edi,%ebx
 804d666:	c1 ee 10             	shr    $0x10,%esi
 804d669:	01 de                	add    %ebx,%esi
 804d66b:	01 f5                	add    %esi,%ebp
 804d66d:	89 ee                	mov    %ebp,%esi
 804d66f:	c1 e6 10             	shl    $0x10,%esi
 804d672:	25 ff ff 00 00       	and    $0xffff,%eax
 804d677:	09 c6                	or     %eax,%esi
 804d679:	89 31                	mov    %esi,(%ecx)
 804d67b:	83 c1 04             	add    $0x4,%ecx
 804d67e:	8b 31                	mov    (%ecx),%esi
 804d680:	89 f0                	mov    %esi,%eax
 804d682:	25 ff ff 00 00       	and    $0xffff,%eax
 804d687:	8b 1a                	mov    (%edx),%ebx
 804d689:	c1 eb 10             	shr    $0x10,%ebx
 804d68c:	0f af df             	imul   %edi,%ebx
 804d68f:	01 d8                	add    %ebx,%eax
 804d691:	c1 ed 10             	shr    $0x10,%ebp
 804d694:	01 e8                	add    %ebp,%eax
 804d696:	83 c2 04             	add    $0x4,%edx
 804d699:	89 c5                	mov    %eax,%ebp
 804d69b:	c1 ed 10             	shr    $0x10,%ebp
 804d69e:	39 54 24 10          	cmp    %edx,0x10(%esp)
 804d6a2:	77 bc                	ja     804d660 <__multiply+0x11c>
 804d6a4:	89 01                	mov    %eax,(%ecx)
 804d6a6:	83 44 24 14 04       	addl   $0x4,0x14(%esp)
 804d6ab:	83 44 24 18 04       	addl   $0x4,0x18(%esp)
 804d6b0:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 804d6b4:	39 4c 24 1c          	cmp    %ecx,0x1c(%esp)
 804d6b8:	0f 87 26 ff ff ff    	ja     804d5e4 <__multiply+0xa0>
 804d6be:	8b 7c 24 24          	mov    0x24(%esp),%edi
 804d6c2:	85 ff                	test   %edi,%edi
 804d6c4:	7e 29                	jle    804d6ef <__multiply+0x1ab>
 804d6c6:	8b 5c 24 2c          	mov    0x2c(%esp),%ebx
 804d6ca:	8b 73 fc             	mov    -0x4(%ebx),%esi
 804d6cd:	85 f6                	test   %esi,%esi
 804d6cf:	75 1e                	jne    804d6ef <__multiply+0x1ab>
 804d6d1:	8b 44 24 24          	mov    0x24(%esp),%eax
 804d6d5:	f7 d8                	neg    %eax
 804d6d7:	8d 04 83             	lea    (%ebx,%eax,4),%eax
 804d6da:	8b 54 24 24          	mov    0x24(%esp),%edx
 804d6de:	eb 08                	jmp    804d6e8 <__multiply+0x1a4>
 804d6e0:	8b 4c 90 fc          	mov    -0x4(%eax,%edx,4),%ecx
 804d6e4:	85 c9                	test   %ecx,%ecx
 804d6e6:	75 03                	jne    804d6eb <__multiply+0x1a7>
 804d6e8:	4a                   	dec    %edx
 804d6e9:	75 f5                	jne    804d6e0 <__multiply+0x19c>
 804d6eb:	89 54 24 24          	mov    %edx,0x24(%esp)
 804d6ef:	8b 54 24 24          	mov    0x24(%esp),%edx
 804d6f3:	8b 44 24 28          	mov    0x28(%esp),%eax
 804d6f7:	89 50 10             	mov    %edx,0x10(%eax)
 804d6fa:	83 c4 3c             	add    $0x3c,%esp
 804d6fd:	5b                   	pop    %ebx
 804d6fe:	5e                   	pop    %esi
 804d6ff:	5f                   	pop    %edi
 804d700:	5d                   	pop    %ebp
 804d701:	c3                   	ret    
 804d702:	66 90                	xchg   %ax,%ax

0804d704 <__pow5mult>:
 804d704:	55                   	push   %ebp
 804d705:	57                   	push   %edi
 804d706:	56                   	push   %esi
 804d707:	53                   	push   %ebx
 804d708:	83 ec 1c             	sub    $0x1c,%esp
 804d70b:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 804d70f:	8b 7c 24 34          	mov    0x34(%esp),%edi
 804d713:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 804d717:	89 d8                	mov    %ebx,%eax
 804d719:	83 e0 03             	and    $0x3,%eax
 804d71c:	75 7a                	jne    804d798 <__pow5mult+0x94>
 804d71e:	c1 fb 02             	sar    $0x2,%ebx
 804d721:	74 49                	je     804d76c <__pow5mult+0x68>
 804d723:	8b 75 48             	mov    0x48(%ebp),%esi
 804d726:	85 f6                	test   %esi,%esi
 804d728:	75 12                	jne    804d73c <__pow5mult+0x38>
 804d72a:	e9 8f 00 00 00       	jmp    804d7be <__pow5mult+0xba>
 804d72f:	90                   	nop
 804d730:	d1 fb                	sar    %ebx
 804d732:	74 38                	je     804d76c <__pow5mult+0x68>
 804d734:	8b 16                	mov    (%esi),%edx
 804d736:	85 d2                	test   %edx,%edx
 804d738:	74 3e                	je     804d778 <__pow5mult+0x74>
 804d73a:	89 d6                	mov    %edx,%esi
 804d73c:	f6 c3 01             	test   $0x1,%bl
 804d73f:	74 ef                	je     804d730 <__pow5mult+0x2c>
 804d741:	89 74 24 08          	mov    %esi,0x8(%esp)
 804d745:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804d749:	89 2c 24             	mov    %ebp,(%esp)
 804d74c:	e8 f3 fd ff ff       	call   804d544 <__multiply>
 804d751:	85 ff                	test   %edi,%edi
 804d753:	74 3f                	je     804d794 <__pow5mult+0x90>
 804d755:	8b 4f 04             	mov    0x4(%edi),%ecx
 804d758:	8b 55 4c             	mov    0x4c(%ebp),%edx
 804d75b:	8d 14 8a             	lea    (%edx,%ecx,4),%edx
 804d75e:	8b 0a                	mov    (%edx),%ecx
 804d760:	89 0f                	mov    %ecx,(%edi)
 804d762:	89 3a                	mov    %edi,(%edx)
 804d764:	89 c7                	mov    %eax,%edi
 804d766:	d1 fb                	sar    %ebx
 804d768:	75 ca                	jne    804d734 <__pow5mult+0x30>
 804d76a:	66 90                	xchg   %ax,%ax
 804d76c:	89 f8                	mov    %edi,%eax
 804d76e:	83 c4 1c             	add    $0x1c,%esp
 804d771:	5b                   	pop    %ebx
 804d772:	5e                   	pop    %esi
 804d773:	5f                   	pop    %edi
 804d774:	5d                   	pop    %ebp
 804d775:	c3                   	ret    
 804d776:	66 90                	xchg   %ax,%ax
 804d778:	89 74 24 08          	mov    %esi,0x8(%esp)
 804d77c:	89 74 24 04          	mov    %esi,0x4(%esp)
 804d780:	89 2c 24             	mov    %ebp,(%esp)
 804d783:	e8 bc fd ff ff       	call   804d544 <__multiply>
 804d788:	89 06                	mov    %eax,(%esi)
 804d78a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804d790:	89 c6                	mov    %eax,%esi
 804d792:	eb a8                	jmp    804d73c <__pow5mult+0x38>
 804d794:	89 c7                	mov    %eax,%edi
 804d796:	eb 98                	jmp    804d730 <__pow5mult+0x2c>
 804d798:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 804d79f:	00 
 804d7a0:	8b 04 85 24 08 05 08 	mov    0x8050824(,%eax,4),%eax
 804d7a7:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d7ab:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804d7af:	89 2c 24             	mov    %ebp,(%esp)
 804d7b2:	e8 b9 fa ff ff       	call   804d270 <__multadd>
 804d7b7:	89 c7                	mov    %eax,%edi
 804d7b9:	e9 60 ff ff ff       	jmp    804d71e <__pow5mult+0x1a>
 804d7be:	c7 44 24 04 71 02 00 	movl   $0x271,0x4(%esp)
 804d7c5:	00 
 804d7c6:	89 2c 24             	mov    %ebp,(%esp)
 804d7c9:	e8 4a fd ff ff       	call   804d518 <__i2b>
 804d7ce:	89 c6                	mov    %eax,%esi
 804d7d0:	89 45 48             	mov    %eax,0x48(%ebp)
 804d7d3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804d7d9:	e9 5e ff ff ff       	jmp    804d73c <__pow5mult+0x38>
 804d7de:	66 90                	xchg   %ax,%ax

0804d7e0 <__lshift>:
 804d7e0:	55                   	push   %ebp
 804d7e1:	57                   	push   %edi
 804d7e2:	56                   	push   %esi
 804d7e3:	53                   	push   %ebx
 804d7e4:	83 ec 3c             	sub    $0x3c,%esp
 804d7e7:	8b 7c 24 54          	mov    0x54(%esp),%edi
 804d7eb:	8b 74 24 58          	mov    0x58(%esp),%esi
 804d7ef:	89 f3                	mov    %esi,%ebx
 804d7f1:	c1 fb 05             	sar    $0x5,%ebx
 804d7f4:	8b 57 04             	mov    0x4(%edi),%edx
 804d7f7:	8b 47 10             	mov    0x10(%edi),%eax
 804d7fa:	01 d8                	add    %ebx,%eax
 804d7fc:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804d800:	89 c5                	mov    %eax,%ebp
 804d802:	45                   	inc    %ebp
 804d803:	8b 47 08             	mov    0x8(%edi),%eax
 804d806:	39 c5                	cmp    %eax,%ebp
 804d808:	7e 09                	jle    804d813 <__lshift+0x33>
 804d80a:	66 90                	xchg   %ax,%ax
 804d80c:	42                   	inc    %edx
 804d80d:	d1 e0                	shl    %eax
 804d80f:	39 c5                	cmp    %eax,%ebp
 804d811:	7f f9                	jg     804d80c <__lshift+0x2c>
 804d813:	89 54 24 04          	mov    %edx,0x4(%esp)
 804d817:	8b 54 24 50          	mov    0x50(%esp),%edx
 804d81b:	89 14 24             	mov    %edx,(%esp)
 804d81e:	e8 a5 f9 ff ff       	call   804d1c8 <_Balloc>
 804d823:	89 44 24 28          	mov    %eax,0x28(%esp)
 804d827:	83 c0 14             	add    $0x14,%eax
 804d82a:	85 db                	test   %ebx,%ebx
 804d82c:	7e 16                	jle    804d844 <__lshift+0x64>
 804d82e:	31 d2                	xor    %edx,%edx
 804d830:	c7 04 90 00 00 00 00 	movl   $0x0,(%eax,%edx,4)
 804d837:	42                   	inc    %edx
 804d838:	39 da                	cmp    %ebx,%edx
 804d83a:	75 f4                	jne    804d830 <__lshift+0x50>
 804d83c:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 804d840:	8d 44 91 14          	lea    0x14(%ecx,%edx,4),%eax
 804d844:	8d 57 14             	lea    0x14(%edi),%edx
 804d847:	8b 4f 10             	mov    0x10(%edi),%ecx
 804d84a:	8d 4c 8f 14          	lea    0x14(%edi,%ecx,4),%ecx
 804d84e:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 804d852:	83 e6 1f             	and    $0x1f,%esi
 804d855:	89 74 24 20          	mov    %esi,0x20(%esp)
 804d859:	74 69                	je     804d8c4 <__lshift+0xe4>
 804d85b:	c7 44 24 24 20 00 00 	movl   $0x20,0x24(%esp)
 804d862:	00 
 804d863:	29 74 24 24          	sub    %esi,0x24(%esp)
 804d867:	31 f6                	xor    %esi,%esi
 804d869:	8d 76 00             	lea    0x0(%esi),%esi
 804d86c:	8b 1a                	mov    (%edx),%ebx
 804d86e:	8a 4c 24 20          	mov    0x20(%esp),%cl
 804d872:	d3 e3                	shl    %cl,%ebx
 804d874:	09 f3                	or     %esi,%ebx
 804d876:	89 18                	mov    %ebx,(%eax)
 804d878:	83 c0 04             	add    $0x4,%eax
 804d87b:	8b 32                	mov    (%edx),%esi
 804d87d:	8a 4c 24 24          	mov    0x24(%esp),%cl
 804d881:	d3 ee                	shr    %cl,%esi
 804d883:	83 c2 04             	add    $0x4,%edx
 804d886:	39 54 24 1c          	cmp    %edx,0x1c(%esp)
 804d88a:	77 e0                	ja     804d86c <__lshift+0x8c>
 804d88c:	89 30                	mov    %esi,(%eax)
 804d88e:	85 f6                	test   %esi,%esi
 804d890:	74 07                	je     804d899 <__lshift+0xb9>
 804d892:	8b 6c 24 2c          	mov    0x2c(%esp),%ebp
 804d896:	83 c5 02             	add    $0x2,%ebp
 804d899:	8d 45 ff             	lea    -0x1(%ebp),%eax
 804d89c:	8b 54 24 28          	mov    0x28(%esp),%edx
 804d8a0:	89 42 10             	mov    %eax,0x10(%edx)
 804d8a3:	8b 57 04             	mov    0x4(%edi),%edx
 804d8a6:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804d8aa:	8b 41 4c             	mov    0x4c(%ecx),%eax
 804d8ad:	8d 04 90             	lea    (%eax,%edx,4),%eax
 804d8b0:	8b 10                	mov    (%eax),%edx
 804d8b2:	89 17                	mov    %edx,(%edi)
 804d8b4:	89 38                	mov    %edi,(%eax)
 804d8b6:	8b 44 24 28          	mov    0x28(%esp),%eax
 804d8ba:	83 c4 3c             	add    $0x3c,%esp
 804d8bd:	5b                   	pop    %ebx
 804d8be:	5e                   	pop    %esi
 804d8bf:	5f                   	pop    %edi
 804d8c0:	5d                   	pop    %ebp
 804d8c1:	c3                   	ret    
 804d8c2:	66 90                	xchg   %ax,%ax
 804d8c4:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
 804d8c8:	8b 0a                	mov    (%edx),%ecx
 804d8ca:	89 08                	mov    %ecx,(%eax)
 804d8cc:	83 c0 04             	add    $0x4,%eax
 804d8cf:	83 c2 04             	add    $0x4,%edx
 804d8d2:	39 d3                	cmp    %edx,%ebx
 804d8d4:	77 f2                	ja     804d8c8 <__lshift+0xe8>
 804d8d6:	eb c1                	jmp    804d899 <__lshift+0xb9>

0804d8d8 <__mcmp>:
 804d8d8:	57                   	push   %edi
 804d8d9:	56                   	push   %esi
 804d8da:	53                   	push   %ebx
 804d8db:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 804d8df:	8b 74 24 14          	mov    0x14(%esp),%esi
 804d8e3:	8b 56 10             	mov    0x10(%esi),%edx
 804d8e6:	8b 41 10             	mov    0x10(%ecx),%eax
 804d8e9:	29 d0                	sub    %edx,%eax
 804d8eb:	75 23                	jne    804d910 <__mcmp+0x38>
 804d8ed:	8d 59 14             	lea    0x14(%ecx),%ebx
 804d8f0:	8d 3c 95 10 00 00 00 	lea    0x10(,%edx,4),%edi
 804d8f7:	8d 54 39 04          	lea    0x4(%ecx,%edi,1),%edx
 804d8fb:	8d 4c 3e 04          	lea    0x4(%esi,%edi,1),%ecx
 804d8ff:	90                   	nop
 804d900:	83 ea 04             	sub    $0x4,%edx
 804d903:	83 e9 04             	sub    $0x4,%ecx
 804d906:	8b 31                	mov    (%ecx),%esi
 804d908:	39 32                	cmp    %esi,(%edx)
 804d90a:	75 08                	jne    804d914 <__mcmp+0x3c>
 804d90c:	39 d3                	cmp    %edx,%ebx
 804d90e:	72 f0                	jb     804d900 <__mcmp+0x28>
 804d910:	5b                   	pop    %ebx
 804d911:	5e                   	pop    %esi
 804d912:	5f                   	pop    %edi
 804d913:	c3                   	ret    
 804d914:	19 c0                	sbb    %eax,%eax
 804d916:	83 c8 01             	or     $0x1,%eax
 804d919:	5b                   	pop    %ebx
 804d91a:	5e                   	pop    %esi
 804d91b:	5f                   	pop    %edi
 804d91c:	c3                   	ret    
 804d91d:	8d 76 00             	lea    0x0(%esi),%esi

0804d920 <__mdiff>:
 804d920:	55                   	push   %ebp
 804d921:	57                   	push   %edi
 804d922:	56                   	push   %esi
 804d923:	53                   	push   %ebx
 804d924:	83 ec 2c             	sub    $0x2c,%esp
 804d927:	8b 6c 24 40          	mov    0x40(%esp),%ebp
 804d92b:	8b 74 24 44          	mov    0x44(%esp),%esi
 804d92f:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804d933:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804d937:	89 34 24             	mov    %esi,(%esp)
 804d93a:	e8 99 ff ff ff       	call   804d8d8 <__mcmp>
 804d93f:	83 f8 00             	cmp    $0x0,%eax
 804d942:	0f 84 0c 01 00 00    	je     804da54 <__mdiff+0x134>
 804d948:	0f 8c f6 00 00 00    	jl     804da44 <__mdiff+0x124>
 804d94e:	31 ff                	xor    %edi,%edi
 804d950:	8b 46 04             	mov    0x4(%esi),%eax
 804d953:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d957:	89 2c 24             	mov    %ebp,(%esp)
 804d95a:	e8 69 f8 ff ff       	call   804d1c8 <_Balloc>
 804d95f:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804d963:	89 78 0c             	mov    %edi,0xc(%eax)
 804d966:	8b 7e 10             	mov    0x10(%esi),%edi
 804d969:	8d 56 14             	lea    0x14(%esi),%edx
 804d96c:	8d 74 be 14          	lea    0x14(%esi,%edi,4),%esi
 804d970:	89 74 24 14          	mov    %esi,0x14(%esp)
 804d974:	8d 6b 14             	lea    0x14(%ebx),%ebp
 804d977:	8b 43 10             	mov    0x10(%ebx),%eax
 804d97a:	8d 44 83 14          	lea    0x14(%ebx,%eax,4),%eax
 804d97e:	89 44 24 18          	mov    %eax,0x18(%esp)
 804d982:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 804d986:	83 c1 14             	add    $0x14,%ecx
 804d989:	31 f6                	xor    %esi,%esi
 804d98b:	90                   	nop
 804d98c:	0f b7 1a             	movzwl (%edx),%ebx
 804d98f:	01 f3                	add    %esi,%ebx
 804d991:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
 804d995:	29 c3                	sub    %eax,%ebx
 804d997:	8b 02                	mov    (%edx),%eax
 804d999:	c1 e8 10             	shr    $0x10,%eax
 804d99c:	8b 75 00             	mov    0x0(%ebp),%esi
 804d99f:	c1 ee 10             	shr    $0x10,%esi
 804d9a2:	29 f0                	sub    %esi,%eax
 804d9a4:	89 de                	mov    %ebx,%esi
 804d9a6:	c1 fe 10             	sar    $0x10,%esi
 804d9a9:	01 f0                	add    %esi,%eax
 804d9ab:	83 c2 04             	add    $0x4,%edx
 804d9ae:	83 c5 04             	add    $0x4,%ebp
 804d9b1:	89 c6                	mov    %eax,%esi
 804d9b3:	c1 fe 10             	sar    $0x10,%esi
 804d9b6:	c1 e0 10             	shl    $0x10,%eax
 804d9b9:	81 e3 ff ff 00 00    	and    $0xffff,%ebx
 804d9bf:	09 d8                	or     %ebx,%eax
 804d9c1:	89 01                	mov    %eax,(%ecx)
 804d9c3:	83 c1 04             	add    $0x4,%ecx
 804d9c6:	39 6c 24 18          	cmp    %ebp,0x18(%esp)
 804d9ca:	77 c0                	ja     804d98c <__mdiff+0x6c>
 804d9cc:	89 cd                	mov    %ecx,%ebp
 804d9ce:	89 54 24 10          	mov    %edx,0x10(%esp)
 804d9d2:	39 54 24 14          	cmp    %edx,0x14(%esp)
 804d9d6:	76 42                	jbe    804da1a <__mdiff+0xfa>
 804d9d8:	8b 02                	mov    (%edx),%eax
 804d9da:	0f b7 d8             	movzwl %ax,%ebx
 804d9dd:	01 f3                	add    %esi,%ebx
 804d9df:	89 de                	mov    %ebx,%esi
 804d9e1:	c1 fe 10             	sar    $0x10,%esi
 804d9e4:	c1 e8 10             	shr    $0x10,%eax
 804d9e7:	01 f0                	add    %esi,%eax
 804d9e9:	83 c2 04             	add    $0x4,%edx
 804d9ec:	89 c6                	mov    %eax,%esi
 804d9ee:	c1 fe 10             	sar    $0x10,%esi
 804d9f1:	c1 e0 10             	shl    $0x10,%eax
 804d9f4:	81 e3 ff ff 00 00    	and    $0xffff,%ebx
 804d9fa:	09 d8                	or     %ebx,%eax
 804d9fc:	89 01                	mov    %eax,(%ecx)
 804d9fe:	83 c1 04             	add    $0x4,%ecx
 804da01:	39 54 24 14          	cmp    %edx,0x14(%esp)
 804da05:	77 d1                	ja     804d9d8 <__mdiff+0xb8>
 804da07:	8b 54 24 10          	mov    0x10(%esp),%edx
 804da0b:	f7 d2                	not    %edx
 804da0d:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 804da11:	01 ca                	add    %ecx,%edx
 804da13:	c1 ea 02             	shr    $0x2,%edx
 804da16:	8d 4c 95 04          	lea    0x4(%ebp,%edx,4),%ecx
 804da1a:	85 c0                	test   %eax,%eax
 804da1c:	75 13                	jne    804da31 <__mdiff+0x111>
 804da1e:	89 f8                	mov    %edi,%eax
 804da20:	f7 d8                	neg    %eax
 804da22:	8d 04 81             	lea    (%ecx,%eax,4),%eax
 804da25:	8d 76 00             	lea    0x0(%esi),%esi
 804da28:	4f                   	dec    %edi
 804da29:	8b 6c b8 fc          	mov    -0x4(%eax,%edi,4),%ebp
 804da2d:	85 ed                	test   %ebp,%ebp
 804da2f:	74 f7                	je     804da28 <__mdiff+0x108>
 804da31:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804da35:	89 78 10             	mov    %edi,0x10(%eax)
 804da38:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804da3c:	83 c4 2c             	add    $0x2c,%esp
 804da3f:	5b                   	pop    %ebx
 804da40:	5e                   	pop    %esi
 804da41:	5f                   	pop    %edi
 804da42:	5d                   	pop    %ebp
 804da43:	c3                   	ret    
 804da44:	89 f0                	mov    %esi,%eax
 804da46:	89 de                	mov    %ebx,%esi
 804da48:	89 c3                	mov    %eax,%ebx
 804da4a:	bf 01 00 00 00       	mov    $0x1,%edi
 804da4f:	e9 fc fe ff ff       	jmp    804d950 <__mdiff+0x30>
 804da54:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804da5b:	00 
 804da5c:	89 2c 24             	mov    %ebp,(%esp)
 804da5f:	e8 64 f7 ff ff       	call   804d1c8 <_Balloc>
 804da64:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804da68:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%eax)
 804da6f:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 804da76:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804da7a:	83 c4 2c             	add    $0x2c,%esp
 804da7d:	5b                   	pop    %ebx
 804da7e:	5e                   	pop    %esi
 804da7f:	5f                   	pop    %edi
 804da80:	5d                   	pop    %ebp
 804da81:	c3                   	ret    
 804da82:	66 90                	xchg   %ax,%ax

0804da84 <__ulp>:
 804da84:	56                   	push   %esi
 804da85:	53                   	push   %ebx
 804da86:	83 ec 0c             	sub    $0xc,%esp
 804da89:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804da8d:	89 d1                	mov    %edx,%ecx
 804da8f:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
 804da95:	81 e9 00 00 40 03    	sub    $0x3400000,%ecx
 804da9b:	85 c9                	test   %ecx,%ecx
 804da9d:	7e 15                	jle    804dab4 <__ulp+0x30>
 804da9f:	89 ca                	mov    %ecx,%edx
 804daa1:	31 c0                	xor    %eax,%eax
 804daa3:	89 04 24             	mov    %eax,(%esp)
 804daa6:	89 54 24 04          	mov    %edx,0x4(%esp)
 804daaa:	dd 04 24             	fldl   (%esp)
 804daad:	83 c4 0c             	add    $0xc,%esp
 804dab0:	5b                   	pop    %ebx
 804dab1:	5e                   	pop    %esi
 804dab2:	c3                   	ret    
 804dab3:	90                   	nop
 804dab4:	f7 d9                	neg    %ecx
 804dab6:	c1 f9 14             	sar    $0x14,%ecx
 804dab9:	31 d2                	xor    %edx,%edx
 804dabb:	83 f9 13             	cmp    $0x13,%ecx
 804dabe:	7e 34                	jle    804daf4 <__ulp+0x70>
 804dac0:	83 f9 32             	cmp    $0x32,%ecx
 804dac3:	7f 23                	jg     804dae8 <__ulp+0x64>
 804dac5:	be 33 00 00 00       	mov    $0x33,%esi
 804daca:	29 ce                	sub    %ecx,%esi
 804dacc:	bb 01 00 00 00       	mov    $0x1,%ebx
 804dad1:	89 f1                	mov    %esi,%ecx
 804dad3:	d3 e3                	shl    %cl,%ebx
 804dad5:	89 d8                	mov    %ebx,%eax
 804dad7:	89 04 24             	mov    %eax,(%esp)
 804dada:	89 54 24 04          	mov    %edx,0x4(%esp)
 804dade:	dd 04 24             	fldl   (%esp)
 804dae1:	83 c4 0c             	add    $0xc,%esp
 804dae4:	5b                   	pop    %ebx
 804dae5:	5e                   	pop    %esi
 804dae6:	c3                   	ret    
 804dae7:	90                   	nop
 804dae8:	bb 01 00 00 00       	mov    $0x1,%ebx
 804daed:	89 d8                	mov    %ebx,%eax
 804daef:	eb e6                	jmp    804dad7 <__ulp+0x53>
 804daf1:	8d 76 00             	lea    0x0(%esi),%esi
 804daf4:	bb 00 00 08 00       	mov    $0x80000,%ebx
 804daf9:	89 da                	mov    %ebx,%edx
 804dafb:	d3 fa                	sar    %cl,%edx
 804dafd:	31 c0                	xor    %eax,%eax
 804daff:	89 04 24             	mov    %eax,(%esp)
 804db02:	89 54 24 04          	mov    %edx,0x4(%esp)
 804db06:	dd 04 24             	fldl   (%esp)
 804db09:	83 c4 0c             	add    $0xc,%esp
 804db0c:	5b                   	pop    %ebx
 804db0d:	5e                   	pop    %esi
 804db0e:	c3                   	ret    
 804db0f:	90                   	nop

0804db10 <__b2d>:
 804db10:	55                   	push   %ebp
 804db11:	57                   	push   %edi
 804db12:	56                   	push   %esi
 804db13:	53                   	push   %ebx
 804db14:	83 ec 18             	sub    $0x18,%esp
 804db17:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804db1b:	8d 50 14             	lea    0x14(%eax),%edx
 804db1e:	89 54 24 10          	mov    %edx,0x10(%esp)
 804db22:	8b 50 10             	mov    0x10(%eax),%edx
 804db25:	8d 74 90 10          	lea    0x10(%eax,%edx,4),%esi
 804db29:	8d 6e 04             	lea    0x4(%esi),%ebp
 804db2c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804db2f:	89 1c 24             	mov    %ebx,(%esp)
 804db32:	e8 11 f9 ff ff       	call   804d448 <__hi0bits>
 804db37:	ba 20 00 00 00       	mov    $0x20,%edx
 804db3c:	29 c2                	sub    %eax,%edx
 804db3e:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 804db42:	89 11                	mov    %edx,(%ecx)
 804db44:	83 f8 0a             	cmp    $0xa,%eax
 804db47:	7f 43                	jg     804db8c <__b2d+0x7c>
 804db49:	b9 0b 00 00 00       	mov    $0xb,%ecx
 804db4e:	29 c1                	sub    %eax,%ecx
 804db50:	89 da                	mov    %ebx,%edx
 804db52:	d3 ea                	shr    %cl,%edx
 804db54:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804db5b:	00 
 804db5c:	81 ca 00 00 f0 3f    	or     $0x3ff00000,%edx
 804db62:	89 54 24 08          	mov    %edx,0x8(%esp)
 804db66:	39 74 24 10          	cmp    %esi,0x10(%esp)
 804db6a:	0f 83 9c 00 00 00    	jae    804dc0c <__b2d+0xfc>
 804db70:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804db73:	d3 ea                	shr    %cl,%edx
 804db75:	8d 48 15             	lea    0x15(%eax),%ecx
 804db78:	d3 e3                	shl    %cl,%ebx
 804db7a:	09 da                	or     %ebx,%edx
 804db7c:	89 54 24 04          	mov    %edx,0x4(%esp)
 804db80:	dd 44 24 04          	fldl   0x4(%esp)
 804db84:	83 c4 18             	add    $0x18,%esp
 804db87:	5b                   	pop    %ebx
 804db88:	5e                   	pop    %esi
 804db89:	5f                   	pop    %edi
 804db8a:	5d                   	pop    %ebp
 804db8b:	c3                   	ret    
 804db8c:	89 f7                	mov    %esi,%edi
 804db8e:	39 74 24 10          	cmp    %esi,0x10(%esp)
 804db92:	72 50                	jb     804dbe4 <__b2d+0xd4>
 804db94:	31 d2                	xor    %edx,%edx
 804db96:	89 c5                	mov    %eax,%ebp
 804db98:	83 ed 0b             	sub    $0xb,%ebp
 804db9b:	74 54                	je     804dbf1 <__b2d+0xe1>
 804db9d:	be 2b 00 00 00       	mov    $0x2b,%esi
 804dba2:	29 c6                	sub    %eax,%esi
 804dba4:	89 e9                	mov    %ebp,%ecx
 804dba6:	d3 e3                	shl    %cl,%ebx
 804dba8:	81 cb 00 00 f0 3f    	or     $0x3ff00000,%ebx
 804dbae:	89 d0                	mov    %edx,%eax
 804dbb0:	89 f1                	mov    %esi,%ecx
 804dbb2:	d3 e8                	shr    %cl,%eax
 804dbb4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804dbbb:	00 
 804dbbc:	09 c3                	or     %eax,%ebx
 804dbbe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804dbc2:	3b 7c 24 10          	cmp    0x10(%esp),%edi
 804dbc6:	76 4c                	jbe    804dc14 <__b2d+0x104>
 804dbc8:	8b 47 fc             	mov    -0x4(%edi),%eax
 804dbcb:	d3 e8                	shr    %cl,%eax
 804dbcd:	89 e9                	mov    %ebp,%ecx
 804dbcf:	d3 e2                	shl    %cl,%edx
 804dbd1:	09 d0                	or     %edx,%eax
 804dbd3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dbd7:	dd 44 24 04          	fldl   0x4(%esp)
 804dbdb:	83 c4 18             	add    $0x18,%esp
 804dbde:	5b                   	pop    %ebx
 804dbdf:	5e                   	pop    %esi
 804dbe0:	5f                   	pop    %edi
 804dbe1:	5d                   	pop    %ebp
 804dbe2:	c3                   	ret    
 804dbe3:	90                   	nop
 804dbe4:	83 ef 04             	sub    $0x4,%edi
 804dbe7:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804dbea:	89 c5                	mov    %eax,%ebp
 804dbec:	83 ed 0b             	sub    $0xb,%ebp
 804dbef:	75 ac                	jne    804db9d <__b2d+0x8d>
 804dbf1:	81 cb 00 00 f0 3f    	or     $0x3ff00000,%ebx
 804dbf7:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804dbfb:	89 54 24 04          	mov    %edx,0x4(%esp)
 804dbff:	dd 44 24 04          	fldl   0x4(%esp)
 804dc03:	83 c4 18             	add    $0x18,%esp
 804dc06:	5b                   	pop    %ebx
 804dc07:	5e                   	pop    %esi
 804dc08:	5f                   	pop    %edi
 804dc09:	5d                   	pop    %ebp
 804dc0a:	c3                   	ret    
 804dc0b:	90                   	nop
 804dc0c:	31 d2                	xor    %edx,%edx
 804dc0e:	e9 62 ff ff ff       	jmp    804db75 <__b2d+0x65>
 804dc13:	90                   	nop
 804dc14:	31 c0                	xor    %eax,%eax
 804dc16:	eb b5                	jmp    804dbcd <__b2d+0xbd>

0804dc18 <__d2b>:
 804dc18:	55                   	push   %ebp
 804dc19:	57                   	push   %edi
 804dc1a:	56                   	push   %esi
 804dc1b:	53                   	push   %ebx
 804dc1c:	83 ec 2c             	sub    $0x2c,%esp
 804dc1f:	8b 74 24 44          	mov    0x44(%esp),%esi
 804dc23:	8b 7c 24 48          	mov    0x48(%esp),%edi
 804dc27:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804dc2e:	00 
 804dc2f:	8b 44 24 40          	mov    0x40(%esp),%eax
 804dc33:	89 04 24             	mov    %eax,(%esp)
 804dc36:	e8 8d f5 ff ff       	call   804d1c8 <_Balloc>
 804dc3b:	89 c5                	mov    %eax,%ebp
 804dc3d:	89 fb                	mov    %edi,%ebx
 804dc3f:	89 f8                	mov    %edi,%eax
 804dc41:	25 ff ff 0f 00       	and    $0xfffff,%eax
 804dc46:	81 e3 ff ff ff 7f    	and    $0x7fffffff,%ebx
 804dc4c:	c1 eb 14             	shr    $0x14,%ebx
 804dc4f:	74 05                	je     804dc56 <__d2b+0x3e>
 804dc51:	0d 00 00 10 00       	or     $0x100000,%eax
 804dc56:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804dc5a:	85 f6                	test   %esi,%esi
 804dc5c:	74 5a                	je     804dcb8 <__d2b+0xa0>
 804dc5e:	89 74 24 18          	mov    %esi,0x18(%esp)
 804dc62:	8d 44 24 18          	lea    0x18(%esp),%eax
 804dc66:	89 04 24             	mov    %eax,(%esp)
 804dc69:	e8 32 f8 ff ff       	call   804d4a0 <__lo0bits>
 804dc6e:	85 c0                	test   %eax,%eax
 804dc70:	0f 85 96 00 00 00    	jne    804dd0c <__d2b+0xf4>
 804dc76:	8b 54 24 18          	mov    0x18(%esp),%edx
 804dc7a:	89 55 14             	mov    %edx,0x14(%ebp)
 804dc7d:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804dc81:	89 55 18             	mov    %edx,0x18(%ebp)
 804dc84:	83 fa 01             	cmp    $0x1,%edx
 804dc87:	19 f6                	sbb    %esi,%esi
 804dc89:	83 c6 02             	add    $0x2,%esi
 804dc8c:	89 75 10             	mov    %esi,0x10(%ebp)
 804dc8f:	85 db                	test   %ebx,%ebx
 804dc91:	74 4b                	je     804dcde <__d2b+0xc6>
 804dc93:	8d 94 18 cd fb ff ff 	lea    -0x433(%eax,%ebx,1),%edx
 804dc9a:	8b 74 24 4c          	mov    0x4c(%esp),%esi
 804dc9e:	89 16                	mov    %edx,(%esi)
 804dca0:	ba 35 00 00 00       	mov    $0x35,%edx
 804dca5:	29 c2                	sub    %eax,%edx
 804dca7:	8b 74 24 50          	mov    0x50(%esp),%esi
 804dcab:	89 16                	mov    %edx,(%esi)
 804dcad:	89 e8                	mov    %ebp,%eax
 804dcaf:	83 c4 2c             	add    $0x2c,%esp
 804dcb2:	5b                   	pop    %ebx
 804dcb3:	5e                   	pop    %esi
 804dcb4:	5f                   	pop    %edi
 804dcb5:	5d                   	pop    %ebp
 804dcb6:	c3                   	ret    
 804dcb7:	90                   	nop
 804dcb8:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804dcbc:	89 04 24             	mov    %eax,(%esp)
 804dcbf:	e8 dc f7 ff ff       	call   804d4a0 <__lo0bits>
 804dcc4:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804dcc8:	89 55 14             	mov    %edx,0x14(%ebp)
 804dccb:	c7 45 10 01 00 00 00 	movl   $0x1,0x10(%ebp)
 804dcd2:	83 c0 20             	add    $0x20,%eax
 804dcd5:	be 01 00 00 00       	mov    $0x1,%esi
 804dcda:	85 db                	test   %ebx,%ebx
 804dcdc:	75 b5                	jne    804dc93 <__d2b+0x7b>
 804dcde:	2d 32 04 00 00       	sub    $0x432,%eax
 804dce3:	8b 54 24 4c          	mov    0x4c(%esp),%edx
 804dce7:	89 02                	mov    %eax,(%edx)
 804dce9:	8b 44 b5 10          	mov    0x10(%ebp,%esi,4),%eax
 804dced:	89 04 24             	mov    %eax,(%esp)
 804dcf0:	e8 53 f7 ff ff       	call   804d448 <__hi0bits>
 804dcf5:	c1 e6 05             	shl    $0x5,%esi
 804dcf8:	29 c6                	sub    %eax,%esi
 804dcfa:	8b 54 24 50          	mov    0x50(%esp),%edx
 804dcfe:	89 32                	mov    %esi,(%edx)
 804dd00:	89 e8                	mov    %ebp,%eax
 804dd02:	83 c4 2c             	add    $0x2c,%esp
 804dd05:	5b                   	pop    %ebx
 804dd06:	5e                   	pop    %esi
 804dd07:	5f                   	pop    %edi
 804dd08:	5d                   	pop    %ebp
 804dd09:	c3                   	ret    
 804dd0a:	66 90                	xchg   %ax,%ax
 804dd0c:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804dd10:	b9 20 00 00 00       	mov    $0x20,%ecx
 804dd15:	29 c1                	sub    %eax,%ecx
 804dd17:	89 d6                	mov    %edx,%esi
 804dd19:	d3 e6                	shl    %cl,%esi
 804dd1b:	8b 4c 24 18          	mov    0x18(%esp),%ecx
 804dd1f:	09 f1                	or     %esi,%ecx
 804dd21:	89 4d 14             	mov    %ecx,0x14(%ebp)
 804dd24:	88 c1                	mov    %al,%cl
 804dd26:	d3 ea                	shr    %cl,%edx
 804dd28:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804dd2c:	e9 50 ff ff ff       	jmp    804dc81 <__d2b+0x69>
 804dd31:	8d 76 00             	lea    0x0(%esi),%esi

0804dd34 <__ratio>:
 804dd34:	55                   	push   %ebp
 804dd35:	57                   	push   %edi
 804dd36:	56                   	push   %esi
 804dd37:	53                   	push   %ebx
 804dd38:	83 ec 2c             	sub    $0x2c,%esp
 804dd3b:	8b 6c 24 40          	mov    0x40(%esp),%ebp
 804dd3f:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 804dd43:	8d 44 24 20          	lea    0x20(%esp),%eax
 804dd47:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dd4b:	89 2c 24             	mov    %ebp,(%esp)
 804dd4e:	e8 bd fd ff ff       	call   804db10 <__b2d>
 804dd53:	dd 5c 24 10          	fstpl  0x10(%esp)
 804dd57:	8b 74 24 10          	mov    0x10(%esp),%esi
 804dd5b:	8b 7c 24 14          	mov    0x14(%esp),%edi
 804dd5f:	8d 44 24 24          	lea    0x24(%esp),%eax
 804dd63:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dd67:	89 1c 24             	mov    %ebx,(%esp)
 804dd6a:	e8 a1 fd ff ff       	call   804db10 <__b2d>
 804dd6f:	dd 54 24 08          	fstl   0x8(%esp)
 804dd73:	8b 44 24 08          	mov    0x8(%esp),%eax
 804dd77:	8b 54 24 0c          	mov    0xc(%esp),%edx
 804dd7b:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804dd7f:	2b 4c 24 24          	sub    0x24(%esp),%ecx
 804dd83:	8b 6d 10             	mov    0x10(%ebp),%ebp
 804dd86:	2b 6b 10             	sub    0x10(%ebx),%ebp
 804dd89:	c1 e5 05             	shl    $0x5,%ebp
 804dd8c:	01 e9                	add    %ebp,%ecx
 804dd8e:	85 c9                	test   %ecx,%ecx
 804dd90:	7e 1a                	jle    804ddac <__ratio+0x78>
 804dd92:	c1 e1 14             	shl    $0x14,%ecx
 804dd95:	01 cf                	add    %ecx,%edi
 804dd97:	89 74 24 10          	mov    %esi,0x10(%esp)
 804dd9b:	89 7c 24 14          	mov    %edi,0x14(%esp)
 804dd9f:	dc 7c 24 10          	fdivrl 0x10(%esp)
 804dda3:	83 c4 2c             	add    $0x2c,%esp
 804dda6:	5b                   	pop    %ebx
 804dda7:	5e                   	pop    %esi
 804dda8:	5f                   	pop    %edi
 804dda9:	5d                   	pop    %ebp
 804ddaa:	c3                   	ret    
 804ddab:	90                   	nop
 804ddac:	dd d8                	fstp   %st(0)
 804ddae:	c1 e1 14             	shl    $0x14,%ecx
 804ddb1:	29 ca                	sub    %ecx,%edx
 804ddb3:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ddb7:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804ddbb:	dd 44 24 08          	fldl   0x8(%esp)
 804ddbf:	dc 7c 24 10          	fdivrl 0x10(%esp)
 804ddc3:	83 c4 2c             	add    $0x2c,%esp
 804ddc6:	5b                   	pop    %ebx
 804ddc7:	5e                   	pop    %esi
 804ddc8:	5f                   	pop    %edi
 804ddc9:	5d                   	pop    %ebp
 804ddca:	c3                   	ret    
 804ddcb:	90                   	nop

0804ddcc <_mprec_log10>:
 804ddcc:	8b 44 24 04          	mov    0x4(%esp),%eax
 804ddd0:	83 f8 17             	cmp    $0x17,%eax
 804ddd3:	7e 13                	jle    804dde8 <_mprec_log10+0x1c>
 804ddd5:	d9 e8                	fld1   
 804ddd7:	d9 05 98 06 05 08    	flds   0x8050698
 804dddd:	8d 76 00             	lea    0x0(%esi),%esi
 804dde0:	dc c9                	fmul   %st,%st(1)
 804dde2:	48                   	dec    %eax
 804dde3:	75 fb                	jne    804dde0 <_mprec_log10+0x14>
 804dde5:	dd d8                	fstp   %st(0)
 804dde7:	c3                   	ret    
 804dde8:	dd 04 c5 60 07 05 08 	fldl   0x8050760(,%eax,8)
 804ddef:	c3                   	ret    

0804ddf0 <__copybits>:
 804ddf0:	55                   	push   %ebp
 804ddf1:	57                   	push   %edi
 804ddf2:	56                   	push   %esi
 804ddf3:	53                   	push   %ebx
 804ddf4:	8b 44 24 14          	mov    0x14(%esp),%eax
 804ddf8:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 804ddfc:	8b 54 24 18          	mov    0x18(%esp),%edx
 804de00:	4a                   	dec    %edx
 804de01:	c1 fa 05             	sar    $0x5,%edx
 804de04:	8d 74 90 04          	lea    0x4(%eax,%edx,4),%esi
 804de08:	8d 57 14             	lea    0x14(%edi),%edx
 804de0b:	8b 4f 10             	mov    0x10(%edi),%ecx
 804de0e:	8d 5c 8f 14          	lea    0x14(%edi,%ecx,4),%ebx
 804de12:	39 da                	cmp    %ebx,%edx
 804de14:	73 2b                	jae    804de41 <__copybits+0x51>
 804de16:	89 c1                	mov    %eax,%ecx
 804de18:	8b 2a                	mov    (%edx),%ebp
 804de1a:	89 29                	mov    %ebp,(%ecx)
 804de1c:	83 c1 04             	add    $0x4,%ecx
 804de1f:	83 c2 04             	add    $0x4,%edx
 804de22:	39 d3                	cmp    %edx,%ebx
 804de24:	77 f2                	ja     804de18 <__copybits+0x28>
 804de26:	29 fb                	sub    %edi,%ebx
 804de28:	8d 53 eb             	lea    -0x15(%ebx),%edx
 804de2b:	c1 ea 02             	shr    $0x2,%edx
 804de2e:	8d 44 90 04          	lea    0x4(%eax,%edx,4),%eax
 804de32:	39 c6                	cmp    %eax,%esi
 804de34:	76 0f                	jbe    804de45 <__copybits+0x55>
 804de36:	66 90                	xchg   %ax,%ax
 804de38:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804de3e:	83 c0 04             	add    $0x4,%eax
 804de41:	39 c6                	cmp    %eax,%esi
 804de43:	77 f3                	ja     804de38 <__copybits+0x48>
 804de45:	5b                   	pop    %ebx
 804de46:	5e                   	pop    %esi
 804de47:	5f                   	pop    %edi
 804de48:	5d                   	pop    %ebp
 804de49:	c3                   	ret    
 804de4a:	66 90                	xchg   %ax,%ax

0804de4c <__any_on>:
 804de4c:	56                   	push   %esi
 804de4d:	53                   	push   %ebx
 804de4e:	8b 44 24 0c          	mov    0xc(%esp),%eax
 804de52:	8d 50 14             	lea    0x14(%eax),%edx
 804de55:	8b 48 10             	mov    0x10(%eax),%ecx
 804de58:	8b 5c 24 10          	mov    0x10(%esp),%ebx
 804de5c:	c1 fb 05             	sar    $0x5,%ebx
 804de5f:	39 d9                	cmp    %ebx,%ecx
 804de61:	7d 29                	jge    804de8c <__any_on+0x40>
 804de63:	89 cb                	mov    %ecx,%ebx
 804de65:	8d 44 98 10          	lea    0x10(%eax,%ebx,4),%eax
 804de69:	8d 48 04             	lea    0x4(%eax),%ecx
 804de6c:	39 ca                	cmp    %ecx,%edx
 804de6e:	72 0b                	jb     804de7b <__any_on+0x2f>
 804de70:	eb 36                	jmp    804dea8 <__any_on+0x5c>
 804de72:	66 90                	xchg   %ax,%ax
 804de74:	39 c2                	cmp    %eax,%edx
 804de76:	73 30                	jae    804dea8 <__any_on+0x5c>
 804de78:	83 e8 04             	sub    $0x4,%eax
 804de7b:	8b 08                	mov    (%eax),%ecx
 804de7d:	85 c9                	test   %ecx,%ecx
 804de7f:	74 f3                	je     804de74 <__any_on+0x28>
 804de81:	b8 01 00 00 00       	mov    $0x1,%eax
 804de86:	5b                   	pop    %ebx
 804de87:	5e                   	pop    %esi
 804de88:	c3                   	ret    
 804de89:	8d 76 00             	lea    0x0(%esi),%esi
 804de8c:	7e d7                	jle    804de65 <__any_on+0x19>
 804de8e:	8b 4c 24 10          	mov    0x10(%esp),%ecx
 804de92:	83 e1 1f             	and    $0x1f,%ecx
 804de95:	74 ce                	je     804de65 <__any_on+0x19>
 804de97:	8b 74 98 14          	mov    0x14(%eax,%ebx,4),%esi
 804de9b:	d3 ee                	shr    %cl,%esi
 804de9d:	d3 e6                	shl    %cl,%esi
 804de9f:	3b 74 98 14          	cmp    0x14(%eax,%ebx,4),%esi
 804dea3:	75 dc                	jne    804de81 <__any_on+0x35>
 804dea5:	eb be                	jmp    804de65 <__any_on+0x19>
 804dea7:	90                   	nop
 804dea8:	31 c0                	xor    %eax,%eax
 804deaa:	5b                   	pop    %ebx
 804deab:	5e                   	pop    %esi
 804deac:	c3                   	ret    
 804dead:	66 90                	xchg   %ax,%ax
 804deaf:	90                   	nop

0804deb0 <__fpclassifyd>:
 804deb0:	8b 44 24 04          	mov    0x4(%esp),%eax
 804deb4:	8b 54 24 08          	mov    0x8(%esp),%edx
 804deb8:	85 d2                	test   %edx,%edx
 804deba:	74 1c                	je     804ded8 <__fpclassifyd+0x28>
 804debc:	81 fa 00 00 00 80    	cmp    $0x80000000,%edx
 804dec2:	74 14                	je     804ded8 <__fpclassifyd+0x28>
 804dec4:	8d 8a 00 00 f0 ff    	lea    -0x100000(%edx),%ecx
 804deca:	81 f9 ff ff df 7f    	cmp    $0x7fdfffff,%ecx
 804ded0:	77 12                	ja     804dee4 <__fpclassifyd+0x34>
 804ded2:	b8 04 00 00 00       	mov    $0x4,%eax
 804ded7:	c3                   	ret    
 804ded8:	85 c0                	test   %eax,%eax
 804deda:	75 e8                	jne    804dec4 <__fpclassifyd+0x14>
 804dedc:	b8 02 00 00 00       	mov    $0x2,%eax
 804dee1:	c3                   	ret    
 804dee2:	66 90                	xchg   %ax,%ax
 804dee4:	8d 8a 00 00 f0 7f    	lea    0x7ff00000(%edx),%ecx
 804deea:	81 f9 ff ff df 7f    	cmp    $0x7fdfffff,%ecx
 804def0:	76 e0                	jbe    804ded2 <__fpclassifyd+0x22>
 804def2:	81 fa ff ff 0f 00    	cmp    $0xfffff,%edx
 804def8:	77 06                	ja     804df00 <__fpclassifyd+0x50>
 804defa:	b8 03 00 00 00       	mov    $0x3,%eax
 804deff:	c3                   	ret    
 804df00:	8d 8a 00 00 00 80    	lea    -0x80000000(%edx),%ecx
 804df06:	81 f9 ff ff 0f 00    	cmp    $0xfffff,%ecx
 804df0c:	76 ec                	jbe    804defa <__fpclassifyd+0x4a>
 804df0e:	81 fa 00 00 f0 7f    	cmp    $0x7ff00000,%edx
 804df14:	74 0b                	je     804df21 <__fpclassifyd+0x71>
 804df16:	81 fa 00 00 f0 ff    	cmp    $0xfff00000,%edx
 804df1c:	74 03                	je     804df21 <__fpclassifyd+0x71>
 804df1e:	31 c0                	xor    %eax,%eax
 804df20:	c3                   	ret    
 804df21:	85 c0                	test   %eax,%eax
 804df23:	0f 94 c0             	sete   %al
 804df26:	0f b6 c0             	movzbl %al,%eax
 804df29:	c3                   	ret    
 804df2a:	66 90                	xchg   %ax,%ax

0804df2c <_sbrk_r>:
 804df2c:	83 ec 1c             	sub    $0x1c,%esp
 804df2f:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804df36:	00 00 00 
 804df39:	8b 44 24 24          	mov    0x24(%esp),%eax
 804df3d:	89 04 24             	mov    %eax,(%esp)
 804df40:	e8 d7 a5 ff ff       	call   804851c <sbrk>
 804df45:	83 f8 ff             	cmp    $0xffffffff,%eax
 804df48:	74 06                	je     804df50 <_sbrk_r+0x24>
 804df4a:	83 c4 1c             	add    $0x1c,%esp
 804df4d:	c3                   	ret    
 804df4e:	66 90                	xchg   %ax,%ax
 804df50:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804df56:	85 d2                	test   %edx,%edx
 804df58:	74 f0                	je     804df4a <_sbrk_r+0x1e>
 804df5a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804df5e:	89 11                	mov    %edx,(%ecx)
 804df60:	83 c4 1c             	add    $0x1c,%esp
 804df63:	c3                   	ret    

0804df64 <__sread>:
 804df64:	53                   	push   %ebx
 804df65:	83 ec 18             	sub    $0x18,%esp
 804df68:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 804df6c:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804df70:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804df74:	8b 44 24 28          	mov    0x28(%esp),%eax
 804df78:	89 44 24 08          	mov    %eax,0x8(%esp)
 804df7c:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804df80:	89 44 24 04          	mov    %eax,0x4(%esp)
 804df84:	8b 44 24 20          	mov    0x20(%esp),%eax
 804df88:	89 04 24             	mov    %eax,(%esp)
 804df8b:	e8 00 1b 00 00       	call   804fa90 <_read_r>
 804df90:	85 c0                	test   %eax,%eax
 804df92:	78 08                	js     804df9c <__sread+0x38>
 804df94:	01 43 50             	add    %eax,0x50(%ebx)
 804df97:	83 c4 18             	add    $0x18,%esp
 804df9a:	5b                   	pop    %ebx
 804df9b:	c3                   	ret    
 804df9c:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 804dfa2:	83 c4 18             	add    $0x18,%esp
 804dfa5:	5b                   	pop    %ebx
 804dfa6:	c3                   	ret    
 804dfa7:	90                   	nop

0804dfa8 <__seofread>:
 804dfa8:	31 c0                	xor    %eax,%eax
 804dfaa:	c3                   	ret    
 804dfab:	90                   	nop

0804dfac <__swrite>:
 804dfac:	55                   	push   %ebp
 804dfad:	57                   	push   %edi
 804dfae:	56                   	push   %esi
 804dfaf:	53                   	push   %ebx
 804dfb0:	83 ec 1c             	sub    $0x1c,%esp
 804dfb3:	8b 74 24 30          	mov    0x30(%esp),%esi
 804dfb7:	8b 5c 24 34          	mov    0x34(%esp),%ebx
 804dfbb:	8b 7c 24 38          	mov    0x38(%esp),%edi
 804dfbf:	8b 6c 24 3c          	mov    0x3c(%esp),%ebp
 804dfc3:	8b 43 0c             	mov    0xc(%ebx),%eax
 804dfc6:	f6 c4 01             	test   $0x1,%ah
 804dfc9:	74 23                	je     804dfee <__swrite+0x42>
 804dfcb:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804dfd2:	00 
 804dfd3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804dfda:	00 
 804dfdb:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804dfdf:	89 44 24 04          	mov    %eax,0x4(%esp)
 804dfe3:	89 34 24             	mov    %esi,(%esp)
 804dfe6:	e8 cd 19 00 00       	call   804f9b8 <_lseek_r>
 804dfeb:	8b 43 0c             	mov    0xc(%ebx),%eax
 804dfee:	80 e4 ef             	and    $0xef,%ah
 804dff1:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804dff5:	89 6c 24 3c          	mov    %ebp,0x3c(%esp)
 804dff9:	89 7c 24 38          	mov    %edi,0x38(%esp)
 804dffd:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804e001:	89 44 24 34          	mov    %eax,0x34(%esp)
 804e005:	89 74 24 30          	mov    %esi,0x30(%esp)
 804e009:	83 c4 1c             	add    $0x1c,%esp
 804e00c:	5b                   	pop    %ebx
 804e00d:	5e                   	pop    %esi
 804e00e:	5f                   	pop    %edi
 804e00f:	5d                   	pop    %ebp
 804e010:	e9 d7 10 00 00       	jmp    804f0ec <_write_r>
 804e015:	8d 76 00             	lea    0x0(%esi),%esi

0804e018 <__sseek>:
 804e018:	53                   	push   %ebx
 804e019:	83 ec 18             	sub    $0x18,%esp
 804e01c:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 804e020:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804e024:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804e028:	8b 44 24 28          	mov    0x28(%esp),%eax
 804e02c:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e030:	0f bf 43 0e          	movswl 0xe(%ebx),%eax
 804e034:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e038:	8b 44 24 20          	mov    0x20(%esp),%eax
 804e03c:	89 04 24             	mov    %eax,(%esp)
 804e03f:	e8 74 19 00 00       	call   804f9b8 <_lseek_r>
 804e044:	83 f8 ff             	cmp    $0xffffffff,%eax
 804e047:	74 0f                	je     804e058 <__sseek+0x40>
 804e049:	66 81 4b 0c 00 10    	orw    $0x1000,0xc(%ebx)
 804e04f:	89 43 50             	mov    %eax,0x50(%ebx)
 804e052:	83 c4 18             	add    $0x18,%esp
 804e055:	5b                   	pop    %ebx
 804e056:	c3                   	ret    
 804e057:	90                   	nop
 804e058:	66 81 63 0c ff ef    	andw   $0xefff,0xc(%ebx)
 804e05e:	83 c4 18             	add    $0x18,%esp
 804e061:	5b                   	pop    %ebx
 804e062:	c3                   	ret    
 804e063:	90                   	nop

0804e064 <__sclose>:
 804e064:	8b 44 24 08          	mov    0x8(%esp),%eax
 804e068:	0f bf 40 0e          	movswl 0xe(%eax),%eax
 804e06c:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e070:	e9 77 11 00 00       	jmp    804f1ec <_close_r>
 804e075:	66 90                	xchg   %ax,%ax
 804e077:	90                   	nop

0804e078 <strcmp>:
 804e078:	53                   	push   %ebx
 804e079:	8b 44 24 08          	mov    0x8(%esp),%eax
 804e07d:	8b 54 24 0c          	mov    0xc(%esp),%edx
 804e081:	89 d1                	mov    %edx,%ecx
 804e083:	09 c1                	or     %eax,%ecx
 804e085:	83 e1 03             	and    $0x3,%ecx
 804e088:	75 10                	jne    804e09a <strcmp+0x22>
 804e08a:	8b 08                	mov    (%eax),%ecx
 804e08c:	3b 0a                	cmp    (%edx),%ecx
 804e08e:	74 28                	je     804e0b8 <strcmp+0x40>
 804e090:	eb 08                	jmp    804e09a <strcmp+0x22>
 804e092:	66 90                	xchg   %ax,%ax
 804e094:	3a 0a                	cmp    (%edx),%cl
 804e096:	75 08                	jne    804e0a0 <strcmp+0x28>
 804e098:	40                   	inc    %eax
 804e099:	42                   	inc    %edx
 804e09a:	8a 08                	mov    (%eax),%cl
 804e09c:	84 c9                	test   %cl,%cl
 804e09e:	75 f4                	jne    804e094 <strcmp+0x1c>
 804e0a0:	0f b6 00             	movzbl (%eax),%eax
 804e0a3:	0f b6 12             	movzbl (%edx),%edx
 804e0a6:	29 d0                	sub    %edx,%eax
 804e0a8:	5b                   	pop    %ebx
 804e0a9:	c3                   	ret    
 804e0aa:	66 90                	xchg   %ax,%ax
 804e0ac:	83 c0 04             	add    $0x4,%eax
 804e0af:	83 c2 04             	add    $0x4,%edx
 804e0b2:	8b 08                	mov    (%eax),%ecx
 804e0b4:	3b 0a                	cmp    (%edx),%ecx
 804e0b6:	75 e2                	jne    804e09a <strcmp+0x22>
 804e0b8:	8d 99 ff fe fe fe    	lea    -0x1010101(%ecx),%ebx
 804e0be:	f7 d1                	not    %ecx
 804e0c0:	21 cb                	and    %ecx,%ebx
 804e0c2:	81 e3 80 80 80 80    	and    $0x80808080,%ebx
 804e0c8:	74 e2                	je     804e0ac <strcmp+0x34>
 804e0ca:	31 c0                	xor    %eax,%eax
 804e0cc:	5b                   	pop    %ebx
 804e0cd:	c3                   	ret    
 804e0ce:	66 90                	xchg   %ax,%ax

0804e0d0 <strlen>:
 804e0d0:	55                   	push   %ebp
 804e0d1:	89 e5                	mov    %esp,%ebp
 804e0d3:	57                   	push   %edi
 804e0d4:	8b 55 08             	mov    0x8(%ebp),%edx
 804e0d7:	89 d7                	mov    %edx,%edi
 804e0d9:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804e0df:	74 25                	je     804e106 <L5>
 804e0e1:	8a 0f                	mov    (%edi),%cl
 804e0e3:	47                   	inc    %edi
 804e0e4:	84 c9                	test   %cl,%cl
 804e0e6:	74 56                	je     804e13e <L15>
 804e0e8:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804e0ee:	74 16                	je     804e106 <L5>
 804e0f0:	8a 0f                	mov    (%edi),%cl
 804e0f2:	47                   	inc    %edi
 804e0f3:	84 c9                	test   %cl,%cl
 804e0f5:	74 47                	je     804e13e <L15>
 804e0f7:	f7 c7 03 00 00 00    	test   $0x3,%edi
 804e0fd:	74 07                	je     804e106 <L5>
 804e0ff:	8a 0f                	mov    (%edi),%cl
 804e101:	47                   	inc    %edi
 804e102:	84 c9                	test   %cl,%cl
 804e104:	74 38                	je     804e13e <L15>

0804e106 <L5>:
 804e106:	83 ef 04             	sub    $0x4,%edi
 804e109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

0804e110 <L10>:
 804e110:	83 c7 04             	add    $0x4,%edi
 804e113:	8b 0f                	mov    (%edi),%ecx
 804e115:	8d 81 ff fe fe fe    	lea    -0x1010101(%ecx),%eax
 804e11b:	f7 d1                	not    %ecx
 804e11d:	21 c8                	and    %ecx,%eax
 804e11f:	a9 80 80 80 80       	test   $0x80808080,%eax
 804e124:	74 ea                	je     804e110 <L10>
 804e126:	f7 d1                	not    %ecx
 804e128:	47                   	inc    %edi
 804e129:	84 c9                	test   %cl,%cl
 804e12b:	74 11                	je     804e13e <L15>
 804e12d:	47                   	inc    %edi
 804e12e:	c1 e9 08             	shr    $0x8,%ecx
 804e131:	84 c9                	test   %cl,%cl
 804e133:	74 09                	je     804e13e <L15>
 804e135:	47                   	inc    %edi
 804e136:	c1 e9 08             	shr    $0x8,%ecx
 804e139:	84 c9                	test   %cl,%cl
 804e13b:	74 01                	je     804e13e <L15>
 804e13d:	47                   	inc    %edi

0804e13e <L15>:
 804e13e:	29 d7                	sub    %edx,%edi
 804e140:	8d 47 ff             	lea    -0x1(%edi),%eax
 804e143:	8d 65 fc             	lea    -0x4(%ebp),%esp
 804e146:	5f                   	pop    %edi
 804e147:	c9                   	leave  
 804e148:	c3                   	ret    
 804e149:	66 90                	xchg   %ax,%ax
 804e14b:	90                   	nop

0804e14c <__sprint_r>:
 804e14c:	55                   	push   %ebp
 804e14d:	57                   	push   %edi
 804e14e:	56                   	push   %esi
 804e14f:	53                   	push   %ebx
 804e150:	83 ec 2c             	sub    $0x2c,%esp
 804e153:	8b 74 24 40          	mov    0x40(%esp),%esi
 804e157:	8b 5c 24 44          	mov    0x44(%esp),%ebx
 804e15b:	8b 54 24 48          	mov    0x48(%esp),%edx
 804e15f:	8b 42 08             	mov    0x8(%edx),%eax
 804e162:	85 c0                	test   %eax,%eax
 804e164:	0f 84 8a 00 00 00    	je     804e1f4 <__sprint_r+0xa8>
 804e16a:	8b 54 24 48          	mov    0x48(%esp),%edx
 804e16e:	f6 43 65 20          	testb  $0x20,0x65(%ebx)
 804e172:	0f 84 90 00 00 00    	je     804e208 <__sprint_r+0xbc>
 804e178:	8b 12                	mov    (%edx),%edx
 804e17a:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804e17e:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804e182:	8b 3a                	mov    (%edx),%edi
 804e184:	8b 42 04             	mov    0x4(%edx),%eax
 804e187:	89 44 24 14          	mov    %eax,0x14(%esp)
 804e18b:	31 ed                	xor    %ebp,%ebp
 804e18d:	c1 e8 02             	shr    $0x2,%eax
 804e190:	89 44 24 18          	mov    %eax,0x18(%esp)
 804e194:	75 09                	jne    804e19f <__sprint_r+0x53>
 804e196:	eb 3c                	jmp    804e1d4 <__sprint_r+0x88>
 804e198:	45                   	inc    %ebp
 804e199:	39 6c 24 18          	cmp    %ebp,0x18(%esp)
 804e19d:	74 35                	je     804e1d4 <__sprint_r+0x88>
 804e19f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804e1a3:	8b 04 af             	mov    (%edi,%ebp,4),%eax
 804e1a6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e1aa:	89 34 24             	mov    %esi,(%esp)
 804e1ad:	e8 6e 11 00 00       	call   804f320 <_fputwc_r>
 804e1b2:	40                   	inc    %eax
 804e1b3:	75 e3                	jne    804e198 <__sprint_r+0x4c>
 804e1b5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804e1ba:	8b 54 24 48          	mov    0x48(%esp),%edx
 804e1be:	c7 42 08 00 00 00 00 	movl   $0x0,0x8(%edx)
 804e1c5:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 804e1cc:	83 c4 2c             	add    $0x2c,%esp
 804e1cf:	5b                   	pop    %ebx
 804e1d0:	5e                   	pop    %esi
 804e1d1:	5f                   	pop    %edi
 804e1d2:	5d                   	pop    %ebp
 804e1d3:	c3                   	ret    
 804e1d4:	8b 7c 24 18          	mov    0x18(%esp),%edi
 804e1d8:	c1 e7 02             	shl    $0x2,%edi
 804e1db:	8b 54 24 48          	mov    0x48(%esp),%edx
 804e1df:	8b 42 08             	mov    0x8(%edx),%eax
 804e1e2:	29 f8                	sub    %edi,%eax
 804e1e4:	89 42 08             	mov    %eax,0x8(%edx)
 804e1e7:	83 44 24 1c 08       	addl   $0x8,0x1c(%esp)
 804e1ec:	85 c0                	test   %eax,%eax
 804e1ee:	75 8e                	jne    804e17e <__sprint_r+0x32>
 804e1f0:	eb c8                	jmp    804e1ba <__sprint_r+0x6e>
 804e1f2:	66 90                	xchg   %ax,%ax
 804e1f4:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%edx)
 804e1fb:	31 c0                	xor    %eax,%eax
 804e1fd:	83 c4 2c             	add    $0x2c,%esp
 804e200:	5b                   	pop    %ebx
 804e201:	5e                   	pop    %esi
 804e202:	5f                   	pop    %edi
 804e203:	5d                   	pop    %ebp
 804e204:	c3                   	ret    
 804e205:	8d 76 00             	lea    0x0(%esi),%esi
 804e208:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e20c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e210:	89 34 24             	mov    %esi,(%esp)
 804e213:	e8 ac 12 00 00       	call   804f4c4 <__sfvwrite_r>
 804e218:	eb a0                	jmp    804e1ba <__sprint_r+0x6e>
 804e21a:	66 90                	xchg   %ax,%ax

0804e21c <_vfiprintf_r>:
 804e21c:	55                   	push   %ebp
 804e21d:	57                   	push   %edi
 804e21e:	56                   	push   %esi
 804e21f:	53                   	push   %ebx
 804e220:	81 ec fc 04 00 00    	sub    $0x4fc,%esp
 804e226:	8b bc 24 10 05 00 00 	mov    0x510(%esp),%edi
 804e22d:	85 ff                	test   %edi,%edi
 804e22f:	74 12                	je     804e243 <_vfiprintf_r+0x27>
 804e231:	8b 8c 24 10 05 00 00 	mov    0x510(%esp),%ecx
 804e238:	8b 71 38             	mov    0x38(%ecx),%esi
 804e23b:	85 f6                	test   %esi,%esi
 804e23d:	0f 84 27 0c 00 00    	je     804ee6a <_vfiprintf_r+0xc4e>
 804e243:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804e24a:	8b 46 0c             	mov    0xc(%esi),%eax
 804e24d:	f6 c4 20             	test   $0x20,%ah
 804e250:	75 0e                	jne    804e260 <_vfiprintf_r+0x44>
 804e252:	80 cc 20             	or     $0x20,%ah
 804e255:	66 89 46 0c          	mov    %ax,0xc(%esi)
 804e259:	81 66 64 ff df ff ff 	andl   $0xffffdfff,0x64(%esi)
 804e260:	a8 08                	test   $0x8,%al
 804e262:	0f 84 a8 09 00 00    	je     804ec10 <_vfiprintf_r+0x9f4>
 804e268:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804e26f:	8b 59 10             	mov    0x10(%ecx),%ebx
 804e272:	85 db                	test   %ebx,%ebx
 804e274:	0f 84 96 09 00 00    	je     804ec10 <_vfiprintf_r+0x9f4>
 804e27a:	89 c2                	mov    %eax,%edx
 804e27c:	83 e2 1a             	and    $0x1a,%edx
 804e27f:	66 83 fa 0a          	cmp    $0xa,%dx
 804e283:	0f 84 c2 09 00 00    	je     804ec4b <_vfiprintf_r+0xa2f>
 804e289:	8d b4 24 f0 00 00 00 	lea    0xf0(%esp),%esi
 804e290:	89 74 24 54          	mov    %esi,0x54(%esp)
 804e294:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%esp)
 804e29b:	00 
 804e29c:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 804e2a3:	00 
 804e2a4:	8b ac 24 18 05 00 00 	mov    0x518(%esp),%ebp
 804e2ab:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%esp)
 804e2b2:	00 
 804e2b3:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 804e2ba:	00 
 804e2bb:	89 f7                	mov    %esi,%edi
 804e2bd:	8d 8c 24 88 00 00 00 	lea    0x88(%esp),%ecx
 804e2c4:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804e2c8:	8a 45 00             	mov    0x0(%ebp),%al
 804e2cb:	89 eb                	mov    %ebp,%ebx
 804e2cd:	84 c0                	test   %al,%al
 804e2cf:	74 3c                	je     804e30d <_vfiprintf_r+0xf1>
 804e2d1:	3c 25                	cmp    $0x25,%al
 804e2d3:	75 07                	jne    804e2dc <_vfiprintf_r+0xc0>
 804e2d5:	eb 36                	jmp    804e30d <_vfiprintf_r+0xf1>
 804e2d7:	90                   	nop
 804e2d8:	3c 25                	cmp    $0x25,%al
 804e2da:	74 07                	je     804e2e3 <_vfiprintf_r+0xc7>
 804e2dc:	43                   	inc    %ebx
 804e2dd:	8a 03                	mov    (%ebx),%al
 804e2df:	84 c0                	test   %al,%al
 804e2e1:	75 f5                	jne    804e2d8 <_vfiprintf_r+0xbc>
 804e2e3:	89 de                	mov    %ebx,%esi
 804e2e5:	29 ee                	sub    %ebp,%esi
 804e2e7:	85 f6                	test   %esi,%esi
 804e2e9:	74 22                	je     804e30d <_vfiprintf_r+0xf1>
 804e2eb:	89 2f                	mov    %ebp,(%edi)
 804e2ed:	89 77 04             	mov    %esi,0x4(%edi)
 804e2f0:	01 74 24 5c          	add    %esi,0x5c(%esp)
 804e2f4:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e2f8:	40                   	inc    %eax
 804e2f9:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e2fd:	83 f8 07             	cmp    $0x7,%eax
 804e300:	0f 8f 32 0a 00 00    	jg     804ed38 <_vfiprintf_r+0xb1c>
 804e306:	83 c7 08             	add    $0x8,%edi
 804e309:	01 74 24 38          	add    %esi,0x38(%esp)
 804e30d:	80 3b 00             	cmpb   $0x0,(%ebx)
 804e310:	0f 84 8d 07 00 00    	je     804eaa3 <_vfiprintf_r+0x887>
 804e316:	8d 6b 01             	lea    0x1(%ebx),%ebp
 804e319:	c6 44 24 51 00       	movb   $0x0,0x51(%esp)
 804e31e:	31 db                	xor    %ebx,%ebx
 804e320:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804e325:	c7 44 24 40 00 00 00 	movl   $0x0,0x40(%esp)
 804e32c:	00 
 804e32d:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 804e334:	00 
 804e335:	0f be 45 00          	movsbl 0x0(%ebp),%eax
 804e339:	45                   	inc    %ebp
 804e33a:	8d 50 e0             	lea    -0x20(%eax),%edx
 804e33d:	83 fa 58             	cmp    $0x58,%edx
 804e340:	0f 86 0e 01 00 00    	jbe    804e454 <_vfiprintf_r+0x238>
 804e346:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e34a:	85 c0                	test   %eax,%eax
 804e34c:	0f 84 51 07 00 00    	je     804eaa3 <_vfiprintf_r+0x887>
 804e352:	88 44 24 60          	mov    %al,0x60(%esp)
 804e356:	c6 44 24 51 00       	movb   $0x0,0x51(%esp)
 804e35b:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 804e362:	00 
 804e363:	c7 44 24 30 01 00 00 	movl   $0x1,0x30(%esp)
 804e36a:	00 
 804e36b:	8d 5c 24 60          	lea    0x60(%esp),%ebx
 804e36f:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 804e376:	00 
 804e377:	90                   	nop
 804e378:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 804e37c:	83 e1 02             	and    $0x2,%ecx
 804e37f:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 804e383:	74 05                	je     804e38a <_vfiprintf_r+0x16e>
 804e385:	83 44 24 2c 02       	addl   $0x2,0x2c(%esp)
 804e38a:	8b 74 24 28          	mov    0x28(%esp),%esi
 804e38e:	81 e6 84 00 00 00    	and    $0x84,%esi
 804e394:	89 74 24 44          	mov    %esi,0x44(%esp)
 804e398:	0f 85 5a 04 00 00    	jne    804e7f8 <_vfiprintf_r+0x5dc>
 804e39e:	8b 74 24 40          	mov    0x40(%esp),%esi
 804e3a2:	2b 74 24 2c          	sub    0x2c(%esp),%esi
 804e3a6:	85 f6                	test   %esi,%esi
 804e3a8:	0f 8e 4a 04 00 00    	jle    804e7f8 <_vfiprintf_r+0x5dc>
 804e3ae:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e3b2:	83 fe 10             	cmp    $0x10,%esi
 804e3b5:	7e 77                	jle    804e42e <_vfiprintf_r+0x212>
 804e3b7:	89 5c 24 4c          	mov    %ebx,0x4c(%esp)
 804e3bb:	89 f9                	mov    %edi,%ecx
 804e3bd:	89 f7                	mov    %esi,%edi
 804e3bf:	8b 9c 24 10 05 00 00 	mov    0x510(%esp),%ebx
 804e3c6:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804e3cd:	eb 0c                	jmp    804e3db <_vfiprintf_r+0x1bf>
 804e3cf:	90                   	nop
 804e3d0:	83 c1 08             	add    $0x8,%ecx
 804e3d3:	83 ef 10             	sub    $0x10,%edi
 804e3d6:	83 ff 10             	cmp    $0x10,%edi
 804e3d9:	7e 4b                	jle    804e426 <_vfiprintf_r+0x20a>
 804e3db:	c7 01 98 09 05 08    	movl   $0x8050998,(%ecx)
 804e3e1:	c7 41 04 10 00 00 00 	movl   $0x10,0x4(%ecx)
 804e3e8:	83 44 24 5c 10       	addl   $0x10,0x5c(%esp)
 804e3ed:	40                   	inc    %eax
 804e3ee:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e3f2:	83 f8 07             	cmp    $0x7,%eax
 804e3f5:	7e d9                	jle    804e3d0 <_vfiprintf_r+0x1b4>
 804e3f7:	8d 44 24 54          	lea    0x54(%esp),%eax
 804e3fb:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e3ff:	89 74 24 04          	mov    %esi,0x4(%esp)
 804e403:	89 1c 24             	mov    %ebx,(%esp)
 804e406:	e8 41 fd ff ff       	call   804e14c <__sprint_r>
 804e40b:	85 c0                	test   %eax,%eax
 804e40d:	0f 85 bd 06 00 00    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804e413:	8d 8c 24 f0 00 00 00 	lea    0xf0(%esp),%ecx
 804e41a:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e41e:	83 ef 10             	sub    $0x10,%edi
 804e421:	83 ff 10             	cmp    $0x10,%edi
 804e424:	7f b5                	jg     804e3db <_vfiprintf_r+0x1bf>
 804e426:	8b 5c 24 4c          	mov    0x4c(%esp),%ebx
 804e42a:	89 fe                	mov    %edi,%esi
 804e42c:	89 cf                	mov    %ecx,%edi
 804e42e:	c7 07 98 09 05 08    	movl   $0x8050998,(%edi)
 804e434:	89 77 04             	mov    %esi,0x4(%edi)
 804e437:	01 74 24 5c          	add    %esi,0x5c(%esp)
 804e43b:	40                   	inc    %eax
 804e43c:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e440:	83 f8 07             	cmp    $0x7,%eax
 804e443:	0f 8f 7c 03 00 00    	jg     804e7c5 <_vfiprintf_r+0x5a9>
 804e449:	83 c7 08             	add    $0x8,%edi
 804e44c:	e9 ab 03 00 00       	jmp    804e7fc <_vfiprintf_r+0x5e0>
 804e451:	8d 76 00             	lea    0x0(%esi),%esi
 804e454:	ff 24 95 34 08 05 08 	jmp    *0x8050834(,%edx,4)
 804e45b:	83 4c 24 28 10       	orl    $0x10,0x28(%esp)
 804e460:	e9 d0 fe ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e465:	83 4c 24 28 10       	orl    $0x10,0x28(%esp)
 804e46a:	f6 44 24 28 10       	testb  $0x10,0x28(%esp)
 804e46f:	0f 84 02 0a 00 00    	je     804ee77 <_vfiprintf_r+0xc5b>
 804e475:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804e47c:	8b 08                	mov    (%eax),%ecx
 804e47e:	83 c0 04             	add    $0x4,%eax
 804e481:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804e488:	31 c0                	xor    %eax,%eax
 804e48a:	66 90                	xchg   %ax,%ax
 804e48c:	c6 44 24 51 00       	movb   $0x0,0x51(%esp)
 804e491:	c6 44 24 3c 00       	movb   $0x0,0x3c(%esp)
 804e496:	85 f6                	test   %esi,%esi
 804e498:	78 08                	js     804e4a2 <_vfiprintf_r+0x286>
 804e49a:	81 64 24 28 7f ff ff 	andl   $0xffffff7f,0x28(%esp)
 804e4a1:	ff 
 804e4a2:	85 c9                	test   %ecx,%ecx
 804e4a4:	0f 85 8e 05 00 00    	jne    804ea38 <_vfiprintf_r+0x81c>
 804e4aa:	85 f6                	test   %esi,%esi
 804e4ac:	0f 85 86 05 00 00    	jne    804ea38 <_vfiprintf_r+0x81c>
 804e4b2:	84 c0                	test   %al,%al
 804e4b4:	75 0b                	jne    804e4c1 <_vfiprintf_r+0x2a5>
 804e4b6:	f6 44 24 28 01       	testb  $0x1,0x28(%esp)
 804e4bb:	0f 85 4e 0a 00 00    	jne    804ef0f <_vfiprintf_r+0xcf3>
 804e4c1:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 804e4c8:	00 
 804e4c9:	8d 9c 24 88 00 00 00 	lea    0x88(%esp),%ebx
 804e4d0:	89 74 24 34          	mov    %esi,0x34(%esp)
 804e4d4:	8b 44 24 30          	mov    0x30(%esp),%eax
 804e4d8:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804e4dc:	8b 54 24 34          	mov    0x34(%esp),%edx
 804e4e0:	39 d0                	cmp    %edx,%eax
 804e4e2:	7d 04                	jge    804e4e8 <_vfiprintf_r+0x2cc>
 804e4e4:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 804e4e8:	80 7c 24 3c 01       	cmpb   $0x1,0x3c(%esp)
 804e4ed:	83 5c 24 2c ff       	sbbl   $0xffffffff,0x2c(%esp)
 804e4f2:	e9 81 fe ff ff       	jmp    804e378 <_vfiprintf_r+0x15c>
 804e4f7:	83 4c 24 28 10       	orl    $0x10,0x28(%esp)
 804e4fc:	f6 44 24 28 10       	testb  $0x10,0x28(%esp)
 804e501:	0f 84 a6 09 00 00    	je     804eead <_vfiprintf_r+0xc91>
 804e507:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804e50e:	8b 08                	mov    (%eax),%ecx
 804e510:	83 c0 04             	add    $0x4,%eax
 804e513:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804e51a:	b0 01                	mov    $0x1,%al
 804e51c:	e9 6b ff ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804e521:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804e528:	83 c0 04             	add    $0x4,%eax
 804e52b:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804e532:	8b 09                	mov    (%ecx),%ecx
 804e534:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 804e538:	85 c9                	test   %ecx,%ecx
 804e53a:	0f 89 c3 09 00 00    	jns    804ef03 <_vfiprintf_r+0xce7>
 804e540:	f7 d9                	neg    %ecx
 804e542:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 804e546:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804e54d:	83 4c 24 28 04       	orl    $0x4,0x28(%esp)
 804e552:	e9 de fd ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e557:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e55b:	f6 44 24 28 10       	testb  $0x10,0x28(%esp)
 804e560:	0f 85 c7 09 00 00    	jne    804ef2d <_vfiprintf_r+0xd11>
 804e566:	f6 44 24 28 40       	testb  $0x40,0x28(%esp)
 804e56b:	0f 84 bc 09 00 00    	je     804ef2d <_vfiprintf_r+0xd11>
 804e571:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804e578:	8b 01                	mov    (%ecx),%eax
 804e57a:	8b 74 24 38          	mov    0x38(%esp),%esi
 804e57e:	66 89 30             	mov    %si,(%eax)
 804e581:	83 c1 04             	add    $0x4,%ecx
 804e584:	89 8c 24 1c 05 00 00 	mov    %ecx,0x51c(%esp)
 804e58b:	e9 38 fd ff ff       	jmp    804e2c8 <_vfiprintf_r+0xac>
 804e590:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e594:	c7 44 24 48 df 04 05 	movl   $0x80504df,0x48(%esp)
 804e59b:	08 
 804e59c:	f6 44 24 28 10       	testb  $0x10,0x28(%esp)
 804e5a1:	75 0b                	jne    804e5ae <_vfiprintf_r+0x392>
 804e5a3:	f6 44 24 28 40       	testb  $0x40,0x28(%esp)
 804e5a8:	0f 85 b7 09 00 00    	jne    804ef65 <_vfiprintf_r+0xd49>
 804e5ae:	8b 94 24 1c 05 00 00 	mov    0x51c(%esp),%edx
 804e5b5:	8b 0a                	mov    (%edx),%ecx
 804e5b7:	83 c2 04             	add    $0x4,%edx
 804e5ba:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804e5c1:	f6 44 24 28 01       	testb  $0x1,0x28(%esp)
 804e5c6:	74 1c                	je     804e5e4 <_vfiprintf_r+0x3c8>
 804e5c8:	85 c9                	test   %ecx,%ecx
 804e5ca:	74 18                	je     804e5e4 <_vfiprintf_r+0x3c8>
 804e5cc:	c6 44 24 52 30       	movb   $0x30,0x52(%esp)
 804e5d1:	88 44 24 53          	mov    %al,0x53(%esp)
 804e5d5:	83 4c 24 28 02       	orl    $0x2,0x28(%esp)
 804e5da:	b0 02                	mov    $0x2,%al
 804e5dc:	e9 ab fe ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804e5e1:	8d 76 00             	lea    0x0(%esi),%esi
 804e5e4:	b0 02                	mov    $0x2,%al
 804e5e6:	e9 a1 fe ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804e5eb:	83 4c 24 28 40       	orl    $0x40,0x28(%esp)
 804e5f0:	e9 40 fd ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e5f5:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e5f9:	f6 44 24 28 10       	testb  $0x10,0x28(%esp)
 804e5fe:	75 0b                	jne    804e60b <_vfiprintf_r+0x3ef>
 804e600:	f6 44 24 28 40       	testb  $0x40,0x28(%esp)
 804e605:	0f 85 9d 09 00 00    	jne    804efa8 <_vfiprintf_r+0xd8c>
 804e60b:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804e612:	8b 08                	mov    (%eax),%ecx
 804e614:	83 c0 04             	add    $0x4,%eax
 804e617:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804e61e:	85 c9                	test   %ecx,%ecx
 804e620:	0f 88 9e 09 00 00    	js     804efc4 <_vfiprintf_r+0xda8>
 804e626:	8a 54 24 51          	mov    0x51(%esp),%dl
 804e62a:	88 54 24 3c          	mov    %dl,0x3c(%esp)
 804e62e:	b0 01                	mov    $0x1,%al
 804e630:	e9 61 fe ff ff       	jmp    804e496 <_vfiprintf_r+0x27a>
 804e635:	8b b4 24 1c 05 00 00 	mov    0x51c(%esp),%esi
 804e63c:	8b 06                	mov    (%esi),%eax
 804e63e:	88 44 24 60          	mov    %al,0x60(%esp)
 804e642:	c6 44 24 51 00       	movb   $0x0,0x51(%esp)
 804e647:	83 c6 04             	add    $0x4,%esi
 804e64a:	89 b4 24 1c 05 00 00 	mov    %esi,0x51c(%esp)
 804e651:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 804e658:	00 
 804e659:	c7 44 24 30 01 00 00 	movl   $0x1,0x30(%esp)
 804e660:	00 
 804e661:	8d 5c 24 60          	lea    0x60(%esp),%ebx
 804e665:	e9 05 fd ff ff       	jmp    804e36f <_vfiprintf_r+0x153>
 804e66a:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e66e:	c7 44 24 48 ce 04 05 	movl   $0x80504ce,0x48(%esp)
 804e675:	08 
 804e676:	e9 21 ff ff ff       	jmp    804e59c <_vfiprintf_r+0x380>
 804e67b:	88 5c 24 51          	mov    %bl,0x51(%esp)
 804e67f:	83 4c 24 28 10       	orl    $0x10,0x28(%esp)
 804e684:	e9 70 ff ff ff       	jmp    804e5f9 <_vfiprintf_r+0x3dd>
 804e689:	c6 44 24 51 00       	movb   $0x0,0x51(%esp)
 804e68e:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804e695:	83 c1 04             	add    $0x4,%ecx
 804e698:	89 4c 24 34          	mov    %ecx,0x34(%esp)
 804e69c:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804e6a3:	8b 19                	mov    (%ecx),%ebx
 804e6a5:	85 db                	test   %ebx,%ebx
 804e6a7:	0f 84 64 09 00 00    	je     804f011 <_vfiprintf_r+0xdf5>
 804e6ad:	85 f6                	test   %esi,%esi
 804e6af:	0f 88 8e 09 00 00    	js     804f043 <_vfiprintf_r+0xe27>
 804e6b5:	89 74 24 08          	mov    %esi,0x8(%esp)
 804e6b9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804e6c0:	00 
 804e6c1:	89 1c 24             	mov    %ebx,(%esp)
 804e6c4:	e8 17 ea ff ff       	call   804d0e0 <memchr>
 804e6c9:	85 c0                	test   %eax,%eax
 804e6cb:	0f 84 9e 09 00 00    	je     804f06f <_vfiprintf_r+0xe53>
 804e6d1:	29 d8                	sub    %ebx,%eax
 804e6d3:	89 44 24 30          	mov    %eax,0x30(%esp)
 804e6d7:	8a 4c 24 51          	mov    0x51(%esp),%cl
 804e6db:	88 4c 24 3c          	mov    %cl,0x3c(%esp)
 804e6df:	39 f0                	cmp    %esi,%eax
 804e6e1:	7e 04                	jle    804e6e7 <_vfiprintf_r+0x4cb>
 804e6e3:	89 74 24 30          	mov    %esi,0x30(%esp)
 804e6e7:	8b 74 24 34          	mov    0x34(%esp),%esi
 804e6eb:	89 b4 24 1c 05 00 00 	mov    %esi,0x51c(%esp)
 804e6f2:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 804e6f9:	00 
 804e6fa:	e9 d5 fd ff ff       	jmp    804e4d4 <_vfiprintf_r+0x2b8>
 804e6ff:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804e706:	8b 08                	mov    (%eax),%ecx
 804e708:	83 4c 24 28 02       	orl    $0x2,0x28(%esp)
 804e70d:	c6 44 24 52 30       	movb   $0x30,0x52(%esp)
 804e712:	c6 44 24 53 78       	movb   $0x78,0x53(%esp)
 804e717:	83 c0 04             	add    $0x4,%eax
 804e71a:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804e721:	c7 44 24 48 df 04 05 	movl   $0x80504df,0x48(%esp)
 804e728:	08 
 804e729:	b0 02                	mov    $0x2,%al
 804e72b:	e9 5c fd ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804e730:	b3 2b                	mov    $0x2b,%bl
 804e732:	e9 fe fb ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e737:	83 4c 24 28 01       	orl    $0x1,0x28(%esp)
 804e73c:	e9 f4 fb ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e741:	84 db                	test   %bl,%bl
 804e743:	0f 85 ec fb ff ff    	jne    804e335 <_vfiprintf_r+0x119>
 804e749:	b3 20                	mov    $0x20,%bl
 804e74b:	e9 e5 fb ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e750:	31 c9                	xor    %ecx,%ecx
 804e752:	8d 50 d0             	lea    -0x30(%eax),%edx
 804e755:	8d 76 00             	lea    0x0(%esi),%esi
 804e758:	8d 04 89             	lea    (%ecx,%ecx,4),%eax
 804e75b:	8d 0c 42             	lea    (%edx,%eax,2),%ecx
 804e75e:	0f be 45 00          	movsbl 0x0(%ebp),%eax
 804e762:	45                   	inc    %ebp
 804e763:	8d 50 d0             	lea    -0x30(%eax),%edx
 804e766:	83 fa 09             	cmp    $0x9,%edx
 804e769:	76 ed                	jbe    804e758 <_vfiprintf_r+0x53c>
 804e76b:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 804e76f:	e9 c6 fb ff ff       	jmp    804e33a <_vfiprintf_r+0x11e>
 804e774:	81 4c 24 28 80 00 00 	orl    $0x80,0x28(%esp)
 804e77b:	00 
 804e77c:	e9 b4 fb ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804e781:	0f be 45 00          	movsbl 0x0(%ebp),%eax
 804e785:	45                   	inc    %ebp
 804e786:	83 f8 2a             	cmp    $0x2a,%eax
 804e789:	0f 84 04 09 00 00    	je     804f093 <_vfiprintf_r+0xe77>
 804e78f:	8d 50 d0             	lea    -0x30(%eax),%edx
 804e792:	31 f6                	xor    %esi,%esi
 804e794:	83 fa 09             	cmp    $0x9,%edx
 804e797:	0f 87 9d fb ff ff    	ja     804e33a <_vfiprintf_r+0x11e>
 804e79d:	8d 76 00             	lea    0x0(%esi),%esi
 804e7a0:	8d 04 b6             	lea    (%esi,%esi,4),%eax
 804e7a3:	8d 34 42             	lea    (%edx,%eax,2),%esi
 804e7a6:	0f be 45 00          	movsbl 0x0(%ebp),%eax
 804e7aa:	45                   	inc    %ebp
 804e7ab:	8d 50 d0             	lea    -0x30(%eax),%edx
 804e7ae:	83 fa 09             	cmp    $0x9,%edx
 804e7b1:	76 ed                	jbe    804e7a0 <_vfiprintf_r+0x584>
 804e7b3:	85 f6                	test   %esi,%esi
 804e7b5:	0f 89 7f fb ff ff    	jns    804e33a <_vfiprintf_r+0x11e>
 804e7bb:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804e7c0:	e9 75 fb ff ff       	jmp    804e33a <_vfiprintf_r+0x11e>
 804e7c5:	8d 54 24 54          	lea    0x54(%esp),%edx
 804e7c9:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e7cd:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804e7d4:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804e7d8:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804e7df:	89 34 24             	mov    %esi,(%esp)
 804e7e2:	e8 65 f9 ff ff       	call   804e14c <__sprint_r>
 804e7e7:	85 c0                	test   %eax,%eax
 804e7e9:	0f 85 e1 02 00 00    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804e7ef:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804e7f6:	66 90                	xchg   %ax,%ax
 804e7f8:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e7fc:	80 7c 24 51 00       	cmpb   $0x0,0x51(%esp)
 804e801:	74 22                	je     804e825 <_vfiprintf_r+0x609>
 804e803:	8d 54 24 51          	lea    0x51(%esp),%edx
 804e807:	89 17                	mov    %edx,(%edi)
 804e809:	c7 47 04 01 00 00 00 	movl   $0x1,0x4(%edi)
 804e810:	ff 44 24 5c          	incl   0x5c(%esp)
 804e814:	40                   	inc    %eax
 804e815:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e819:	83 f8 07             	cmp    $0x7,%eax
 804e81c:	0f 8f d2 05 00 00    	jg     804edf4 <_vfiprintf_r+0xbd8>
 804e822:	83 c7 08             	add    $0x8,%edi
 804e825:	8b 4c 24 3c          	mov    0x3c(%esp),%ecx
 804e829:	85 c9                	test   %ecx,%ecx
 804e82b:	74 23                	je     804e850 <_vfiprintf_r+0x634>
 804e82d:	8d 54 24 52          	lea    0x52(%esp),%edx
 804e831:	89 17                	mov    %edx,(%edi)
 804e833:	c7 47 04 02 00 00 00 	movl   $0x2,0x4(%edi)
 804e83a:	83 44 24 5c 02       	addl   $0x2,0x5c(%esp)
 804e83f:	40                   	inc    %eax
 804e840:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e844:	83 f8 07             	cmp    $0x7,%eax
 804e847:	0f 8f e3 05 00 00    	jg     804ee30 <_vfiprintf_r+0xc14>
 804e84d:	83 c7 08             	add    $0x8,%edi
 804e850:	81 7c 24 44 80 00 00 	cmpl   $0x80,0x44(%esp)
 804e857:	00 
 804e858:	0f 84 96 02 00 00    	je     804eaf4 <_vfiprintf_r+0x8d8>
 804e85e:	8b 74 24 34          	mov    0x34(%esp),%esi
 804e862:	2b 74 24 30          	sub    0x30(%esp),%esi
 804e866:	85 f6                	test   %esi,%esi
 804e868:	0f 8e 9a 00 00 00    	jle    804e908 <_vfiprintf_r+0x6ec>
 804e86e:	83 fe 10             	cmp    $0x10,%esi
 804e871:	7e 77                	jle    804e8ea <_vfiprintf_r+0x6ce>
 804e873:	89 5c 24 34          	mov    %ebx,0x34(%esp)
 804e877:	89 f9                	mov    %edi,%ecx
 804e879:	89 f7                	mov    %esi,%edi
 804e87b:	8b 9c 24 10 05 00 00 	mov    0x510(%esp),%ebx
 804e882:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804e889:	eb 0c                	jmp    804e897 <_vfiprintf_r+0x67b>
 804e88b:	90                   	nop
 804e88c:	83 c1 08             	add    $0x8,%ecx
 804e88f:	83 ef 10             	sub    $0x10,%edi
 804e892:	83 ff 10             	cmp    $0x10,%edi
 804e895:	7e 4b                	jle    804e8e2 <_vfiprintf_r+0x6c6>
 804e897:	c7 01 a8 09 05 08    	movl   $0x80509a8,(%ecx)
 804e89d:	c7 41 04 10 00 00 00 	movl   $0x10,0x4(%ecx)
 804e8a4:	83 44 24 5c 10       	addl   $0x10,0x5c(%esp)
 804e8a9:	40                   	inc    %eax
 804e8aa:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e8ae:	83 f8 07             	cmp    $0x7,%eax
 804e8b1:	7e d9                	jle    804e88c <_vfiprintf_r+0x670>
 804e8b3:	8d 44 24 54          	lea    0x54(%esp),%eax
 804e8b7:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e8bb:	89 74 24 04          	mov    %esi,0x4(%esp)
 804e8bf:	89 1c 24             	mov    %ebx,(%esp)
 804e8c2:	e8 85 f8 ff ff       	call   804e14c <__sprint_r>
 804e8c7:	85 c0                	test   %eax,%eax
 804e8c9:	0f 85 01 02 00 00    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804e8cf:	8d 8c 24 f0 00 00 00 	lea    0xf0(%esp),%ecx
 804e8d6:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e8da:	83 ef 10             	sub    $0x10,%edi
 804e8dd:	83 ff 10             	cmp    $0x10,%edi
 804e8e0:	7f b5                	jg     804e897 <_vfiprintf_r+0x67b>
 804e8e2:	8b 5c 24 34          	mov    0x34(%esp),%ebx
 804e8e6:	89 fe                	mov    %edi,%esi
 804e8e8:	89 cf                	mov    %ecx,%edi
 804e8ea:	c7 07 a8 09 05 08    	movl   $0x80509a8,(%edi)
 804e8f0:	89 77 04             	mov    %esi,0x4(%edi)
 804e8f3:	01 74 24 5c          	add    %esi,0x5c(%esp)
 804e8f7:	40                   	inc    %eax
 804e8f8:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e8fc:	83 f8 07             	cmp    $0x7,%eax
 804e8ff:	0f 8f 6b 04 00 00    	jg     804ed70 <_vfiprintf_r+0xb54>
 804e905:	83 c7 08             	add    $0x8,%edi
 804e908:	89 1f                	mov    %ebx,(%edi)
 804e90a:	8b 54 24 30          	mov    0x30(%esp),%edx
 804e90e:	89 57 04             	mov    %edx,0x4(%edi)
 804e911:	01 54 24 5c          	add    %edx,0x5c(%esp)
 804e915:	40                   	inc    %eax
 804e916:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e91a:	83 f8 07             	cmp    $0x7,%eax
 804e91d:	0f 8f 85 02 00 00    	jg     804eba8 <_vfiprintf_r+0x98c>
 804e923:	83 c7 08             	add    $0x8,%edi
 804e926:	f6 44 24 28 04       	testb  $0x4,0x28(%esp)
 804e92b:	0f 84 d3 00 00 00    	je     804ea04 <_vfiprintf_r+0x7e8>
 804e931:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804e935:	2b 5c 24 2c          	sub    0x2c(%esp),%ebx
 804e939:	85 db                	test   %ebx,%ebx
 804e93b:	0f 8e c3 00 00 00    	jle    804ea04 <_vfiprintf_r+0x7e8>
 804e941:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e945:	83 fb 10             	cmp    $0x10,%ebx
 804e948:	7e 72                	jle    804e9bc <_vfiprintf_r+0x7a0>
 804e94a:	89 6c 24 28          	mov    %ebp,0x28(%esp)
 804e94e:	89 dd                	mov    %ebx,%ebp
 804e950:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804e957:	8b 9c 24 14 05 00 00 	mov    0x514(%esp),%ebx
 804e95e:	eb 0b                	jmp    804e96b <_vfiprintf_r+0x74f>
 804e960:	83 c7 08             	add    $0x8,%edi
 804e963:	83 ed 10             	sub    $0x10,%ebp
 804e966:	83 fd 10             	cmp    $0x10,%ebp
 804e969:	7e 4b                	jle    804e9b6 <_vfiprintf_r+0x79a>
 804e96b:	c7 07 98 09 05 08    	movl   $0x8050998,(%edi)
 804e971:	c7 47 04 10 00 00 00 	movl   $0x10,0x4(%edi)
 804e978:	83 44 24 5c 10       	addl   $0x10,0x5c(%esp)
 804e97d:	40                   	inc    %eax
 804e97e:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e982:	83 f8 07             	cmp    $0x7,%eax
 804e985:	7e d9                	jle    804e960 <_vfiprintf_r+0x744>
 804e987:	8d 44 24 54          	lea    0x54(%esp),%eax
 804e98b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e98f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804e993:	89 34 24             	mov    %esi,(%esp)
 804e996:	e8 b1 f7 ff ff       	call   804e14c <__sprint_r>
 804e99b:	85 c0                	test   %eax,%eax
 804e99d:	0f 85 2d 01 00 00    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804e9a3:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804e9aa:	8b 44 24 58          	mov    0x58(%esp),%eax
 804e9ae:	83 ed 10             	sub    $0x10,%ebp
 804e9b1:	83 fd 10             	cmp    $0x10,%ebp
 804e9b4:	7f b5                	jg     804e96b <_vfiprintf_r+0x74f>
 804e9b6:	89 eb                	mov    %ebp,%ebx
 804e9b8:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 804e9bc:	c7 07 98 09 05 08    	movl   $0x8050998,(%edi)
 804e9c2:	89 5f 04             	mov    %ebx,0x4(%edi)
 804e9c5:	03 5c 24 5c          	add    0x5c(%esp),%ebx
 804e9c9:	89 5c 24 5c          	mov    %ebx,0x5c(%esp)
 804e9cd:	40                   	inc    %eax
 804e9ce:	89 44 24 58          	mov    %eax,0x58(%esp)
 804e9d2:	83 f8 07             	cmp    $0x7,%eax
 804e9d5:	7e 31                	jle    804ea08 <_vfiprintf_r+0x7ec>
 804e9d7:	8d 54 24 54          	lea    0x54(%esp),%edx
 804e9db:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e9df:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804e9e6:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804e9ea:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804e9f1:	89 34 24             	mov    %esi,(%esp)
 804e9f4:	e8 53 f7 ff ff       	call   804e14c <__sprint_r>
 804e9f9:	85 c0                	test   %eax,%eax
 804e9fb:	0f 85 cf 00 00 00    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ea01:	8d 76 00             	lea    0x0(%esi),%esi
 804ea04:	8b 5c 24 5c          	mov    0x5c(%esp),%ebx
 804ea08:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804ea0c:	3b 44 24 40          	cmp    0x40(%esp),%eax
 804ea10:	7d 04                	jge    804ea16 <_vfiprintf_r+0x7fa>
 804ea12:	8b 44 24 40          	mov    0x40(%esp),%eax
 804ea16:	01 44 24 38          	add    %eax,0x38(%esp)
 804ea1a:	85 db                	test   %ebx,%ebx
 804ea1c:	0f 85 be 01 00 00    	jne    804ebe0 <_vfiprintf_r+0x9c4>
 804ea22:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 804ea29:	00 
 804ea2a:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804ea31:	e9 92 f8 ff ff       	jmp    804e2c8 <_vfiprintf_r+0xac>
 804ea36:	66 90                	xchg   %ax,%ax
 804ea38:	3c 01                	cmp    $0x1,%al
 804ea3a:	0f 84 6c 03 00 00    	je     804edac <_vfiprintf_r+0xb90>
 804ea40:	8d 9c 24 88 00 00 00 	lea    0x88(%esp),%ebx
 804ea47:	3c 02                	cmp    $0x2,%al
 804ea49:	74 35                	je     804ea80 <_vfiprintf_r+0x864>
 804ea4b:	4b                   	dec    %ebx
 804ea4c:	89 c8                	mov    %ecx,%eax
 804ea4e:	83 e0 07             	and    $0x7,%eax
 804ea51:	83 c0 30             	add    $0x30,%eax
 804ea54:	88 03                	mov    %al,(%ebx)
 804ea56:	c1 e9 03             	shr    $0x3,%ecx
 804ea59:	75 f0                	jne    804ea4b <_vfiprintf_r+0x82f>
 804ea5b:	89 da                	mov    %ebx,%edx
 804ea5d:	f6 44 24 28 01       	testb  $0x1,0x28(%esp)
 804ea62:	74 30                	je     804ea94 <_vfiprintf_r+0x878>
 804ea64:	3c 30                	cmp    $0x30,%al
 804ea66:	0f 84 b2 04 00 00    	je     804ef1e <_vfiprintf_r+0xd02>
 804ea6c:	4b                   	dec    %ebx
 804ea6d:	c6 42 ff 30          	movb   $0x30,-0x1(%edx)
 804ea71:	8b 54 24 24          	mov    0x24(%esp),%edx
 804ea75:	29 da                	sub    %ebx,%edx
 804ea77:	89 54 24 30          	mov    %edx,0x30(%esp)
 804ea7b:	e9 50 fa ff ff       	jmp    804e4d0 <_vfiprintf_r+0x2b4>
 804ea80:	8b 54 24 48          	mov    0x48(%esp),%edx
 804ea84:	4b                   	dec    %ebx
 804ea85:	89 c8                	mov    %ecx,%eax
 804ea87:	83 e0 0f             	and    $0xf,%eax
 804ea8a:	8a 04 02             	mov    (%edx,%eax,1),%al
 804ea8d:	88 03                	mov    %al,(%ebx)
 804ea8f:	c1 e9 04             	shr    $0x4,%ecx
 804ea92:	75 f0                	jne    804ea84 <_vfiprintf_r+0x868>
 804ea94:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804ea98:	29 d9                	sub    %ebx,%ecx
 804ea9a:	89 4c 24 30          	mov    %ecx,0x30(%esp)
 804ea9e:	e9 2d fa ff ff       	jmp    804e4d0 <_vfiprintf_r+0x2b4>
 804eaa3:	8b 54 24 5c          	mov    0x5c(%esp),%edx
 804eaa7:	85 d2                	test   %edx,%edx
 804eaa9:	74 25                	je     804ead0 <_vfiprintf_r+0x8b4>
 804eaab:	8d 44 24 54          	lea    0x54(%esp),%eax
 804eaaf:	89 44 24 08          	mov    %eax,0x8(%esp)
 804eab3:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804eaba:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804eabe:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804eac5:	89 34 24             	mov    %esi,(%esp)
 804eac8:	e8 7f f6 ff ff       	call   804e14c <__sprint_r>
 804eacd:	8d 76 00             	lea    0x0(%esi),%esi
 804ead0:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ead7:	f6 41 0c 40          	testb  $0x40,0xc(%ecx)
 804eadb:	74 08                	je     804eae5 <_vfiprintf_r+0x8c9>
 804eadd:	c7 44 24 38 ff ff ff 	movl   $0xffffffff,0x38(%esp)
 804eae4:	ff 
 804eae5:	8b 44 24 38          	mov    0x38(%esp),%eax
 804eae9:	81 c4 fc 04 00 00    	add    $0x4fc,%esp
 804eaef:	5b                   	pop    %ebx
 804eaf0:	5e                   	pop    %esi
 804eaf1:	5f                   	pop    %edi
 804eaf2:	5d                   	pop    %ebp
 804eaf3:	c3                   	ret    
 804eaf4:	8b 74 24 40          	mov    0x40(%esp),%esi
 804eaf8:	2b 74 24 2c          	sub    0x2c(%esp),%esi
 804eafc:	85 f6                	test   %esi,%esi
 804eafe:	0f 8e 5a fd ff ff    	jle    804e85e <_vfiprintf_r+0x642>
 804eb04:	83 fe 10             	cmp    $0x10,%esi
 804eb07:	7e 79                	jle    804eb82 <_vfiprintf_r+0x966>
 804eb09:	89 5c 24 3c          	mov    %ebx,0x3c(%esp)
 804eb0d:	89 f9                	mov    %edi,%ecx
 804eb0f:	89 f7                	mov    %esi,%edi
 804eb11:	8b 9c 24 10 05 00 00 	mov    0x510(%esp),%ebx
 804eb18:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804eb1f:	eb 0e                	jmp    804eb2f <_vfiprintf_r+0x913>
 804eb21:	8d 76 00             	lea    0x0(%esi),%esi
 804eb24:	83 c1 08             	add    $0x8,%ecx
 804eb27:	83 ef 10             	sub    $0x10,%edi
 804eb2a:	83 ff 10             	cmp    $0x10,%edi
 804eb2d:	7e 4b                	jle    804eb7a <_vfiprintf_r+0x95e>
 804eb2f:	c7 01 a8 09 05 08    	movl   $0x80509a8,(%ecx)
 804eb35:	c7 41 04 10 00 00 00 	movl   $0x10,0x4(%ecx)
 804eb3c:	83 44 24 5c 10       	addl   $0x10,0x5c(%esp)
 804eb41:	40                   	inc    %eax
 804eb42:	89 44 24 58          	mov    %eax,0x58(%esp)
 804eb46:	83 f8 07             	cmp    $0x7,%eax
 804eb49:	7e d9                	jle    804eb24 <_vfiprintf_r+0x908>
 804eb4b:	8d 44 24 54          	lea    0x54(%esp),%eax
 804eb4f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804eb53:	89 74 24 04          	mov    %esi,0x4(%esp)
 804eb57:	89 1c 24             	mov    %ebx,(%esp)
 804eb5a:	e8 ed f5 ff ff       	call   804e14c <__sprint_r>
 804eb5f:	85 c0                	test   %eax,%eax
 804eb61:	0f 85 69 ff ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804eb67:	8d 8c 24 f0 00 00 00 	lea    0xf0(%esp),%ecx
 804eb6e:	8b 44 24 58          	mov    0x58(%esp),%eax
 804eb72:	83 ef 10             	sub    $0x10,%edi
 804eb75:	83 ff 10             	cmp    $0x10,%edi
 804eb78:	7f b5                	jg     804eb2f <_vfiprintf_r+0x913>
 804eb7a:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 804eb7e:	89 fe                	mov    %edi,%esi
 804eb80:	89 cf                	mov    %ecx,%edi
 804eb82:	c7 07 a8 09 05 08    	movl   $0x80509a8,(%edi)
 804eb88:	89 77 04             	mov    %esi,0x4(%edi)
 804eb8b:	01 74 24 5c          	add    %esi,0x5c(%esp)
 804eb8f:	40                   	inc    %eax
 804eb90:	89 44 24 58          	mov    %eax,0x58(%esp)
 804eb94:	83 f8 07             	cmp    $0x7,%eax
 804eb97:	0f 8f 3a 04 00 00    	jg     804efd7 <_vfiprintf_r+0xdbb>
 804eb9d:	83 c7 08             	add    $0x8,%edi
 804eba0:	e9 b9 fc ff ff       	jmp    804e85e <_vfiprintf_r+0x642>
 804eba5:	8d 76 00             	lea    0x0(%esi),%esi
 804eba8:	8d 4c 24 54          	lea    0x54(%esp),%ecx
 804ebac:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804ebb0:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804ebb7:	89 74 24 04          	mov    %esi,0x4(%esp)
 804ebbb:	8b 8c 24 10 05 00 00 	mov    0x510(%esp),%ecx
 804ebc2:	89 0c 24             	mov    %ecx,(%esp)
 804ebc5:	e8 82 f5 ff ff       	call   804e14c <__sprint_r>
 804ebca:	85 c0                	test   %eax,%eax
 804ebcc:	0f 85 fe fe ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ebd2:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804ebd9:	e9 48 fd ff ff       	jmp    804e926 <_vfiprintf_r+0x70a>
 804ebde:	66 90                	xchg   %ax,%ax
 804ebe0:	8d 44 24 54          	lea    0x54(%esp),%eax
 804ebe4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ebe8:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ebef:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804ebf3:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804ebfa:	89 34 24             	mov    %esi,(%esp)
 804ebfd:	e8 4a f5 ff ff       	call   804e14c <__sprint_r>
 804ec02:	85 c0                	test   %eax,%eax
 804ec04:	0f 84 18 fe ff ff    	je     804ea22 <_vfiprintf_r+0x806>
 804ec0a:	e9 c1 fe ff ff       	jmp    804ead0 <_vfiprintf_r+0x8b4>
 804ec0f:	90                   	nop
 804ec10:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804ec17:	89 74 24 04          	mov    %esi,0x4(%esp)
 804ec1b:	8b 8c 24 10 05 00 00 	mov    0x510(%esp),%ecx
 804ec22:	89 0c 24             	mov    %ecx,(%esp)
 804ec25:	e8 86 bb ff ff       	call   804a7b0 <__swsetup_r>
 804ec2a:	85 c0                	test   %eax,%eax
 804ec2c:	0f 85 ab fe ff ff    	jne    804eadd <_vfiprintf_r+0x8c1>
 804ec32:	8b b4 24 14 05 00 00 	mov    0x514(%esp),%esi
 804ec39:	8b 46 0c             	mov    0xc(%esi),%eax
 804ec3c:	89 c2                	mov    %eax,%edx
 804ec3e:	83 e2 1a             	and    $0x1a,%edx
 804ec41:	66 83 fa 0a          	cmp    $0xa,%dx
 804ec45:	0f 85 3e f6 ff ff    	jne    804e289 <_vfiprintf_r+0x6d>
 804ec4b:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ec52:	66 8b 51 0e          	mov    0xe(%ecx),%dx
 804ec56:	66 85 d2             	test   %dx,%dx
 804ec59:	0f 88 2a f6 ff ff    	js     804e289 <_vfiprintf_r+0x6d>
 804ec5f:	83 e0 fd             	and    $0xfffffffd,%eax
 804ec62:	66 89 84 24 94 00 00 	mov    %ax,0x94(%esp)
 804ec69:	00 
 804ec6a:	8b 41 64             	mov    0x64(%ecx),%eax
 804ec6d:	89 84 24 ec 00 00 00 	mov    %eax,0xec(%esp)
 804ec74:	66 89 94 24 96 00 00 	mov    %dx,0x96(%esp)
 804ec7b:	00 
 804ec7c:	8b 41 1c             	mov    0x1c(%ecx),%eax
 804ec7f:	89 84 24 a4 00 00 00 	mov    %eax,0xa4(%esp)
 804ec86:	8b 41 24             	mov    0x24(%ecx),%eax
 804ec89:	89 84 24 ac 00 00 00 	mov    %eax,0xac(%esp)
 804ec90:	8d 84 24 f0 00 00 00 	lea    0xf0(%esp),%eax
 804ec97:	89 84 24 88 00 00 00 	mov    %eax,0x88(%esp)
 804ec9e:	89 84 24 98 00 00 00 	mov    %eax,0x98(%esp)
 804eca5:	c7 84 24 90 00 00 00 	movl   $0x400,0x90(%esp)
 804ecac:	00 04 00 00 
 804ecb0:	c7 84 24 9c 00 00 00 	movl   $0x400,0x9c(%esp)
 804ecb7:	00 04 00 00 
 804ecbb:	c7 84 24 a0 00 00 00 	movl   $0x0,0xa0(%esp)
 804ecc2:	00 00 00 00 
 804ecc6:	8b b4 24 1c 05 00 00 	mov    0x51c(%esp),%esi
 804eccd:	89 74 24 0c          	mov    %esi,0xc(%esp)
 804ecd1:	8b 84 24 18 05 00 00 	mov    0x518(%esp),%eax
 804ecd8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ecdc:	8d 9c 24 88 00 00 00 	lea    0x88(%esp),%ebx
 804ece3:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ece7:	8b 8c 24 10 05 00 00 	mov    0x510(%esp),%ecx
 804ecee:	89 0c 24             	mov    %ecx,(%esp)
 804ecf1:	e8 26 f5 ff ff       	call   804e21c <_vfiprintf_r>
 804ecf6:	89 44 24 38          	mov    %eax,0x38(%esp)
 804ecfa:	85 c0                	test   %eax,%eax
 804ecfc:	78 1b                	js     804ed19 <_vfiprintf_r+0xafd>
 804ecfe:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ed02:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804ed09:	89 34 24             	mov    %esi,(%esp)
 804ed0c:	e8 9f d3 ff ff       	call   804c0b0 <_fflush_r>
 804ed11:	85 c0                	test   %eax,%eax
 804ed13:	0f 85 6d 03 00 00    	jne    804f086 <_vfiprintf_r+0xe6a>
 804ed19:	f6 84 24 94 00 00 00 	testb  $0x40,0x94(%esp)
 804ed20:	40 
 804ed21:	0f 84 be fd ff ff    	je     804eae5 <_vfiprintf_r+0x8c9>
 804ed27:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ed2e:	66 83 49 0c 40       	orw    $0x40,0xc(%ecx)
 804ed33:	e9 ad fd ff ff       	jmp    804eae5 <_vfiprintf_r+0x8c9>
 804ed38:	8d 44 24 54          	lea    0x54(%esp),%eax
 804ed3c:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ed40:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ed47:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804ed4b:	8b 8c 24 10 05 00 00 	mov    0x510(%esp),%ecx
 804ed52:	89 0c 24             	mov    %ecx,(%esp)
 804ed55:	e8 f2 f3 ff ff       	call   804e14c <__sprint_r>
 804ed5a:	85 c0                	test   %eax,%eax
 804ed5c:	0f 85 6e fd ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ed62:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804ed69:	e9 9b f5 ff ff       	jmp    804e309 <_vfiprintf_r+0xed>
 804ed6e:	66 90                	xchg   %ax,%ax
 804ed70:	8d 54 24 54          	lea    0x54(%esp),%edx
 804ed74:	89 54 24 08          	mov    %edx,0x8(%esp)
 804ed78:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ed7f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804ed83:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804ed8a:	89 34 24             	mov    %esi,(%esp)
 804ed8d:	e8 ba f3 ff ff       	call   804e14c <__sprint_r>
 804ed92:	85 c0                	test   %eax,%eax
 804ed94:	0f 85 36 fd ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ed9a:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804eda1:	8b 44 24 58          	mov    0x58(%esp),%eax
 804eda5:	e9 5e fb ff ff       	jmp    804e908 <_vfiprintf_r+0x6ec>
 804edaa:	66 90                	xchg   %ax,%ax
 804edac:	83 f9 09             	cmp    $0x9,%ecx
 804edaf:	0f 86 2e 01 00 00    	jbe    804eee3 <_vfiprintf_r+0xcc7>
 804edb5:	8d 9c 24 88 00 00 00 	lea    0x88(%esp),%ebx
 804edbc:	89 74 24 2c          	mov    %esi,0x2c(%esp)
 804edc0:	4b                   	dec    %ebx
 804edc1:	89 c8                	mov    %ecx,%eax
 804edc3:	be 0a 00 00 00       	mov    $0xa,%esi
 804edc8:	31 d2                	xor    %edx,%edx
 804edca:	f7 f6                	div    %esi
 804edcc:	83 c2 30             	add    $0x30,%edx
 804edcf:	88 13                	mov    %dl,(%ebx)
 804edd1:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
 804edd6:	f7 e1                	mul    %ecx
 804edd8:	89 d1                	mov    %edx,%ecx
 804edda:	c1 e9 03             	shr    $0x3,%ecx
 804eddd:	75 e1                	jne    804edc0 <_vfiprintf_r+0xba4>
 804eddf:	8b 74 24 2c          	mov    0x2c(%esp),%esi
 804ede3:	8b 54 24 24          	mov    0x24(%esp),%edx
 804ede7:	29 da                	sub    %ebx,%edx
 804ede9:	89 54 24 30          	mov    %edx,0x30(%esp)
 804eded:	e9 de f6 ff ff       	jmp    804e4d0 <_vfiprintf_r+0x2b4>
 804edf2:	66 90                	xchg   %ax,%ax
 804edf4:	8d 44 24 54          	lea    0x54(%esp),%eax
 804edf8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804edfc:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ee03:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804ee07:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804ee0e:	89 34 24             	mov    %esi,(%esp)
 804ee11:	e8 36 f3 ff ff       	call   804e14c <__sprint_r>
 804ee16:	85 c0                	test   %eax,%eax
 804ee18:	0f 85 b2 fc ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ee1e:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804ee25:	8b 44 24 58          	mov    0x58(%esp),%eax
 804ee29:	e9 f7 f9 ff ff       	jmp    804e825 <_vfiprintf_r+0x609>
 804ee2e:	66 90                	xchg   %ax,%ax
 804ee30:	8d 44 24 54          	lea    0x54(%esp),%eax
 804ee34:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ee38:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804ee3f:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804ee43:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804ee4a:	89 34 24             	mov    %esi,(%esp)
 804ee4d:	e8 fa f2 ff ff       	call   804e14c <__sprint_r>
 804ee52:	85 c0                	test   %eax,%eax
 804ee54:	0f 85 76 fc ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804ee5a:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804ee61:	8b 44 24 58          	mov    0x58(%esp),%eax
 804ee65:	e9 e6 f9 ff ff       	jmp    804e850 <_vfiprintf_r+0x634>
 804ee6a:	89 0c 24             	mov    %ecx,(%esp)
 804ee6d:	e8 d2 d3 ff ff       	call   804c244 <__sinit>
 804ee72:	e9 cc f3 ff ff       	jmp    804e243 <_vfiprintf_r+0x27>
 804ee77:	f6 44 24 28 40       	testb  $0x40,0x28(%esp)
 804ee7c:	0f 84 0c 01 00 00    	je     804ef8e <_vfiprintf_r+0xd72>
 804ee82:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804ee89:	8b 09                	mov    (%ecx),%ecx
 804ee8b:	89 4c 24 20          	mov    %ecx,0x20(%esp)
 804ee8f:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804ee95:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804ee9c:	83 c0 04             	add    $0x4,%eax
 804ee9f:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804eea6:	31 c0                	xor    %eax,%eax
 804eea8:	e9 df f5 ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804eead:	f6 44 24 28 40       	testb  $0x40,0x28(%esp)
 804eeb2:	0f 84 93 00 00 00    	je     804ef4b <_vfiprintf_r+0xd2f>
 804eeb8:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804eebf:	8b 09                	mov    (%ecx),%ecx
 804eec1:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 804eec5:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804eecb:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804eed2:	83 c0 04             	add    $0x4,%eax
 804eed5:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804eedc:	b0 01                	mov    $0x1,%al
 804eede:	e9 a9 f5 ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804eee3:	83 c1 30             	add    $0x30,%ecx
 804eee6:	88 8c 24 87 00 00 00 	mov    %cl,0x87(%esp)
 804eeed:	8d 9c 24 87 00 00 00 	lea    0x87(%esp),%ebx
 804eef4:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804eef8:	29 d9                	sub    %ebx,%ecx
 804eefa:	89 4c 24 30          	mov    %ecx,0x30(%esp)
 804eefe:	e9 cd f5 ff ff       	jmp    804e4d0 <_vfiprintf_r+0x2b4>
 804ef03:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804ef0a:	e9 26 f4 ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804ef0f:	c6 84 24 87 00 00 00 	movb   $0x30,0x87(%esp)
 804ef16:	30 
 804ef17:	8d 9c 24 87 00 00 00 	lea    0x87(%esp),%ebx
 804ef1e:	8b 44 24 24          	mov    0x24(%esp),%eax
 804ef22:	29 d8                	sub    %ebx,%eax
 804ef24:	89 44 24 30          	mov    %eax,0x30(%esp)
 804ef28:	e9 a3 f5 ff ff       	jmp    804e4d0 <_vfiprintf_r+0x2b4>
 804ef2d:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804ef34:	8b 01                	mov    (%ecx),%eax
 804ef36:	8b 74 24 38          	mov    0x38(%esp),%esi
 804ef3a:	89 30                	mov    %esi,(%eax)
 804ef3c:	83 c1 04             	add    $0x4,%ecx
 804ef3f:	89 8c 24 1c 05 00 00 	mov    %ecx,0x51c(%esp)
 804ef46:	e9 7d f3 ff ff       	jmp    804e2c8 <_vfiprintf_r+0xac>
 804ef4b:	8b 94 24 1c 05 00 00 	mov    0x51c(%esp),%edx
 804ef52:	8b 0a                	mov    (%edx),%ecx
 804ef54:	83 c2 04             	add    $0x4,%edx
 804ef57:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804ef5e:	b0 01                	mov    $0x1,%al
 804ef60:	e9 27 f5 ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804ef65:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804ef6c:	8b 09                	mov    (%ecx),%ecx
 804ef6e:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 804ef72:	81 e1 ff ff 00 00    	and    $0xffff,%ecx
 804ef78:	8b 94 24 1c 05 00 00 	mov    0x51c(%esp),%edx
 804ef7f:	83 c2 04             	add    $0x4,%edx
 804ef82:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804ef89:	e9 33 f6 ff ff       	jmp    804e5c1 <_vfiprintf_r+0x3a5>
 804ef8e:	8b 94 24 1c 05 00 00 	mov    0x51c(%esp),%edx
 804ef95:	8b 0a                	mov    (%edx),%ecx
 804ef97:	83 c2 04             	add    $0x4,%edx
 804ef9a:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804efa1:	31 c0                	xor    %eax,%eax
 804efa3:	e9 e4 f4 ff ff       	jmp    804e48c <_vfiprintf_r+0x270>
 804efa8:	8b 94 24 1c 05 00 00 	mov    0x51c(%esp),%edx
 804efaf:	0f bf 0a             	movswl (%edx),%ecx
 804efb2:	83 c2 04             	add    $0x4,%edx
 804efb5:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804efbc:	85 c9                	test   %ecx,%ecx
 804efbe:	0f 89 62 f6 ff ff    	jns    804e626 <_vfiprintf_r+0x40a>
 804efc4:	f7 d9                	neg    %ecx
 804efc6:	c6 44 24 51 2d       	movb   $0x2d,0x51(%esp)
 804efcb:	c6 44 24 3c 2d       	movb   $0x2d,0x3c(%esp)
 804efd0:	b0 01                	mov    $0x1,%al
 804efd2:	e9 bf f4 ff ff       	jmp    804e496 <_vfiprintf_r+0x27a>
 804efd7:	8d 54 24 54          	lea    0x54(%esp),%edx
 804efdb:	89 54 24 08          	mov    %edx,0x8(%esp)
 804efdf:	8b 8c 24 14 05 00 00 	mov    0x514(%esp),%ecx
 804efe6:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804efea:	8b b4 24 10 05 00 00 	mov    0x510(%esp),%esi
 804eff1:	89 34 24             	mov    %esi,(%esp)
 804eff4:	e8 53 f1 ff ff       	call   804e14c <__sprint_r>
 804eff9:	85 c0                	test   %eax,%eax
 804effb:	0f 85 cf fa ff ff    	jne    804ead0 <_vfiprintf_r+0x8b4>
 804f001:	8d bc 24 f0 00 00 00 	lea    0xf0(%esp),%edi
 804f008:	8b 44 24 58          	mov    0x58(%esp),%eax
 804f00c:	e9 4d f8 ff ff       	jmp    804e85e <_vfiprintf_r+0x642>
 804f011:	89 74 24 30          	mov    %esi,0x30(%esp)
 804f015:	83 fe 06             	cmp    $0x6,%esi
 804f018:	76 08                	jbe    804f022 <_vfiprintf_r+0xe06>
 804f01a:	c7 44 24 30 06 00 00 	movl   $0x6,0x30(%esp)
 804f021:	00 
 804f022:	8b 44 24 30          	mov    0x30(%esp),%eax
 804f026:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804f02a:	85 c0                	test   %eax,%eax
 804f02c:	78 4e                	js     804f07c <_vfiprintf_r+0xe60>
 804f02e:	8b 54 24 34          	mov    0x34(%esp),%edx
 804f032:	89 94 24 1c 05 00 00 	mov    %edx,0x51c(%esp)
 804f039:	bb f0 04 05 08       	mov    $0x80504f0,%ebx
 804f03e:	e9 2c f3 ff ff       	jmp    804e36f <_vfiprintf_r+0x153>
 804f043:	89 1c 24             	mov    %ebx,(%esp)
 804f046:	e8 85 f0 ff ff       	call   804e0d0 <strlen>
 804f04b:	89 44 24 30          	mov    %eax,0x30(%esp)
 804f04f:	8a 4c 24 51          	mov    0x51(%esp),%cl
 804f053:	88 4c 24 3c          	mov    %cl,0x3c(%esp)
 804f057:	8b 74 24 34          	mov    0x34(%esp),%esi
 804f05b:	89 b4 24 1c 05 00 00 	mov    %esi,0x51c(%esp)
 804f062:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 804f069:	00 
 804f06a:	e9 65 f4 ff ff       	jmp    804e4d4 <_vfiprintf_r+0x2b8>
 804f06f:	8a 4c 24 51          	mov    0x51(%esp),%cl
 804f073:	88 4c 24 3c          	mov    %cl,0x3c(%esp)
 804f077:	e9 67 f6 ff ff       	jmp    804e6e3 <_vfiprintf_r+0x4c7>
 804f07c:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804f083:	00 
 804f084:	eb a8                	jmp    804f02e <_vfiprintf_r+0xe12>
 804f086:	c7 44 24 38 ff ff ff 	movl   $0xffffffff,0x38(%esp)
 804f08d:	ff 
 804f08e:	e9 86 fc ff ff       	jmp    804ed19 <_vfiprintf_r+0xafd>
 804f093:	8b 84 24 1c 05 00 00 	mov    0x51c(%esp),%eax
 804f09a:	83 c0 04             	add    $0x4,%eax
 804f09d:	8b 8c 24 1c 05 00 00 	mov    0x51c(%esp),%ecx
 804f0a4:	8b 31                	mov    (%ecx),%esi
 804f0a6:	85 f6                	test   %esi,%esi
 804f0a8:	0f 89 55 fe ff ff    	jns    804ef03 <_vfiprintf_r+0xce7>
 804f0ae:	89 84 24 1c 05 00 00 	mov    %eax,0x51c(%esp)
 804f0b5:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804f0ba:	e9 76 f2 ff ff       	jmp    804e335 <_vfiprintf_r+0x119>
 804f0bf:	90                   	nop

0804f0c0 <vfiprintf>:
 804f0c0:	83 ec 1c             	sub    $0x1c,%esp
 804f0c3:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f0c7:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804f0cb:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f0cf:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f0d3:	8b 44 24 20          	mov    0x20(%esp),%eax
 804f0d7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f0db:	a1 20 20 05 08       	mov    0x8052020,%eax
 804f0e0:	89 04 24             	mov    %eax,(%esp)
 804f0e3:	e8 34 f1 ff ff       	call   804e21c <_vfiprintf_r>
 804f0e8:	83 c4 1c             	add    $0x1c,%esp
 804f0eb:	c3                   	ret    

0804f0ec <_write_r>:
 804f0ec:	83 ec 1c             	sub    $0x1c,%esp
 804f0ef:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804f0f6:	00 00 00 
 804f0f9:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804f0fd:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f101:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f105:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f109:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f10d:	89 04 24             	mov    %eax,(%esp)
 804f110:	e8 81 93 ff ff       	call   8048496 <write>
 804f115:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f118:	74 06                	je     804f120 <_write_r+0x34>
 804f11a:	83 c4 1c             	add    $0x1c,%esp
 804f11d:	c3                   	ret    
 804f11e:	66 90                	xchg   %ax,%ax
 804f120:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804f126:	85 d2                	test   %edx,%edx
 804f128:	74 f0                	je     804f11a <_write_r+0x2e>
 804f12a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f12e:	89 11                	mov    %edx,(%ecx)
 804f130:	83 c4 1c             	add    $0x1c,%esp
 804f133:	c3                   	ret    

0804f134 <_calloc_r>:
 804f134:	53                   	push   %ebx
 804f135:	83 ec 18             	sub    $0x18,%esp
 804f138:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f13c:	0f af 44 24 24       	imul   0x24(%esp),%eax
 804f141:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f145:	8b 44 24 20          	mov    0x20(%esp),%eax
 804f149:	89 04 24             	mov    %eax,(%esp)
 804f14c:	e8 8f d8 ff ff       	call   804c9e0 <_malloc_r>
 804f151:	89 c3                	mov    %eax,%ebx
 804f153:	85 c0                	test   %eax,%eax
 804f155:	74 29                	je     804f180 <_calloc_r+0x4c>
 804f157:	8b 40 fc             	mov    -0x4(%eax),%eax
 804f15a:	83 e0 fc             	and    $0xfffffffc,%eax
 804f15d:	83 e8 04             	sub    $0x4,%eax
 804f160:	83 f8 24             	cmp    $0x24,%eax
 804f163:	77 4f                	ja     804f1b4 <_calloc_r+0x80>
 804f165:	83 f8 13             	cmp    $0x13,%eax
 804f168:	77 1e                	ja     804f188 <_calloc_r+0x54>
 804f16a:	89 d8                	mov    %ebx,%eax
 804f16c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804f172:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804f179:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804f180:	89 d8                	mov    %ebx,%eax
 804f182:	83 c4 18             	add    $0x18,%esp
 804f185:	5b                   	pop    %ebx
 804f186:	c3                   	ret    
 804f187:	90                   	nop
 804f188:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
 804f18e:	c7 43 04 00 00 00 00 	movl   $0x0,0x4(%ebx)
 804f195:	83 f8 1b             	cmp    $0x1b,%eax
 804f198:	76 36                	jbe    804f1d0 <_calloc_r+0x9c>
 804f19a:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
 804f1a1:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
 804f1a8:	83 f8 24             	cmp    $0x24,%eax
 804f1ab:	74 2b                	je     804f1d8 <_calloc_r+0xa4>
 804f1ad:	8d 43 10             	lea    0x10(%ebx),%eax
 804f1b0:	eb ba                	jmp    804f16c <_calloc_r+0x38>
 804f1b2:	66 90                	xchg   %ax,%ax
 804f1b4:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f1b8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804f1bf:	00 
 804f1c0:	89 1c 24             	mov    %ebx,(%esp)
 804f1c3:	e8 fc 93 ff ff       	call   80485c4 <memset>
 804f1c8:	89 d8                	mov    %ebx,%eax
 804f1ca:	83 c4 18             	add    $0x18,%esp
 804f1cd:	5b                   	pop    %ebx
 804f1ce:	c3                   	ret    
 804f1cf:	90                   	nop
 804f1d0:	8d 43 08             	lea    0x8(%ebx),%eax
 804f1d3:	eb 97                	jmp    804f16c <_calloc_r+0x38>
 804f1d5:	8d 76 00             	lea    0x0(%esi),%esi
 804f1d8:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
 804f1df:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
 804f1e6:	8d 43 18             	lea    0x18(%ebx),%eax
 804f1e9:	eb 81                	jmp    804f16c <_calloc_r+0x38>
 804f1eb:	90                   	nop

0804f1ec <_close_r>:
 804f1ec:	83 ec 1c             	sub    $0x1c,%esp
 804f1ef:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804f1f6:	00 00 00 
 804f1f9:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f1fd:	89 04 24             	mov    %eax,(%esp)
 804f200:	e8 d7 92 ff ff       	call   80484dc <close>
 804f205:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f208:	74 06                	je     804f210 <_close_r+0x24>
 804f20a:	83 c4 1c             	add    $0x1c,%esp
 804f20d:	c3                   	ret    
 804f20e:	66 90                	xchg   %ax,%ax
 804f210:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804f216:	85 d2                	test   %edx,%edx
 804f218:	74 f0                	je     804f20a <_close_r+0x1e>
 804f21a:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f21e:	89 11                	mov    %edx,(%ecx)
 804f220:	83 c4 1c             	add    $0x1c,%esp
 804f223:	c3                   	ret    

0804f224 <_fclose_r>:
 804f224:	57                   	push   %edi
 804f225:	56                   	push   %esi
 804f226:	53                   	push   %ebx
 804f227:	83 ec 10             	sub    $0x10,%esp
 804f22a:	8b 74 24 20          	mov    0x20(%esp),%esi
 804f22e:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 804f232:	85 db                	test   %ebx,%ebx
 804f234:	74 16                	je     804f24c <_fclose_r+0x28>
 804f236:	85 f6                	test   %esi,%esi
 804f238:	74 0b                	je     804f245 <_fclose_r+0x21>
 804f23a:	8b 46 38             	mov    0x38(%esi),%eax
 804f23d:	85 c0                	test   %eax,%eax
 804f23f:	0f 84 93 00 00 00    	je     804f2d8 <_fclose_r+0xb4>
 804f245:	66 83 7b 0c 00       	cmpw   $0x0,0xc(%ebx)
 804f24a:	75 0c                	jne    804f258 <_fclose_r+0x34>
 804f24c:	31 ff                	xor    %edi,%edi
 804f24e:	89 f8                	mov    %edi,%eax
 804f250:	83 c4 10             	add    $0x10,%esp
 804f253:	5b                   	pop    %ebx
 804f254:	5e                   	pop    %esi
 804f255:	5f                   	pop    %edi
 804f256:	c3                   	ret    
 804f257:	90                   	nop
 804f258:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804f25c:	89 34 24             	mov    %esi,(%esp)
 804f25f:	e8 4c ce ff ff       	call   804c0b0 <_fflush_r>
 804f264:	89 c7                	mov    %eax,%edi
 804f266:	8b 43 2c             	mov    0x2c(%ebx),%eax
 804f269:	85 c0                	test   %eax,%eax
 804f26b:	74 10                	je     804f27d <_fclose_r+0x59>
 804f26d:	8b 53 1c             	mov    0x1c(%ebx),%edx
 804f270:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f274:	89 34 24             	mov    %esi,(%esp)
 804f277:	ff d0                	call   *%eax
 804f279:	85 c0                	test   %eax,%eax
 804f27b:	78 6b                	js     804f2e8 <_fclose_r+0xc4>
 804f27d:	f6 43 0c 80          	testb  $0x80,0xc(%ebx)
 804f281:	75 6d                	jne    804f2f0 <_fclose_r+0xcc>
 804f283:	8b 43 30             	mov    0x30(%ebx),%eax
 804f286:	85 c0                	test   %eax,%eax
 804f288:	74 1a                	je     804f2a4 <_fclose_r+0x80>
 804f28a:	8d 53 40             	lea    0x40(%ebx),%edx
 804f28d:	39 d0                	cmp    %edx,%eax
 804f28f:	74 0c                	je     804f29d <_fclose_r+0x79>
 804f291:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f295:	89 34 24             	mov    %esi,(%esp)
 804f298:	e8 47 d2 ff ff       	call   804c4e4 <_free_r>
 804f29d:	c7 43 30 00 00 00 00 	movl   $0x0,0x30(%ebx)
 804f2a4:	8b 43 44             	mov    0x44(%ebx),%eax
 804f2a7:	85 c0                	test   %eax,%eax
 804f2a9:	74 13                	je     804f2be <_fclose_r+0x9a>
 804f2ab:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f2af:	89 34 24             	mov    %esi,(%esp)
 804f2b2:	e8 2d d2 ff ff       	call   804c4e4 <_free_r>
 804f2b7:	c7 43 44 00 00 00 00 	movl   $0x0,0x44(%ebx)
 804f2be:	e8 01 d1 ff ff       	call   804c3c4 <__sfp_lock_acquire>
 804f2c3:	66 c7 43 0c 00 00    	movw   $0x0,0xc(%ebx)
 804f2c9:	e8 fa d0 ff ff       	call   804c3c8 <__sfp_lock_release>
 804f2ce:	89 f8                	mov    %edi,%eax
 804f2d0:	83 c4 10             	add    $0x10,%esp
 804f2d3:	5b                   	pop    %ebx
 804f2d4:	5e                   	pop    %esi
 804f2d5:	5f                   	pop    %edi
 804f2d6:	c3                   	ret    
 804f2d7:	90                   	nop
 804f2d8:	89 34 24             	mov    %esi,(%esp)
 804f2db:	e8 64 cf ff ff       	call   804c244 <__sinit>
 804f2e0:	e9 60 ff ff ff       	jmp    804f245 <_fclose_r+0x21>
 804f2e5:	8d 76 00             	lea    0x0(%esi),%esi
 804f2e8:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 804f2ed:	eb 8e                	jmp    804f27d <_fclose_r+0x59>
 804f2ef:	90                   	nop
 804f2f0:	8b 43 10             	mov    0x10(%ebx),%eax
 804f2f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f2f7:	89 34 24             	mov    %esi,(%esp)
 804f2fa:	e8 e5 d1 ff ff       	call   804c4e4 <_free_r>
 804f2ff:	eb 82                	jmp    804f283 <_fclose_r+0x5f>
 804f301:	8d 76 00             	lea    0x0(%esi),%esi

0804f304 <fclose>:
 804f304:	83 ec 1c             	sub    $0x1c,%esp
 804f307:	8b 44 24 20          	mov    0x20(%esp),%eax
 804f30b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f30f:	a1 20 20 05 08       	mov    0x8052020,%eax
 804f314:	89 04 24             	mov    %eax,(%esp)
 804f317:	e8 08 ff ff ff       	call   804f224 <_fclose_r>
 804f31c:	83 c4 1c             	add    $0x1c,%esp
 804f31f:	c3                   	ret    

0804f320 <_fputwc_r>:
 804f320:	55                   	push   %ebp
 804f321:	57                   	push   %edi
 804f322:	56                   	push   %esi
 804f323:	53                   	push   %ebx
 804f324:	83 ec 2c             	sub    $0x2c,%esp
 804f327:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 804f32b:	8b 43 0c             	mov    0xc(%ebx),%eax
 804f32e:	f6 c4 20             	test   $0x20,%ah
 804f331:	75 0e                	jne    804f341 <_fputwc_r+0x21>
 804f333:	80 cc 20             	or     $0x20,%ah
 804f336:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f33a:	81 4b 64 00 20 00 00 	orl    $0x2000,0x64(%ebx)
 804f341:	e8 2e d5 ff ff       	call   804c874 <__locale_mb_cur_max>
 804f346:	48                   	dec    %eax
 804f347:	0f 84 bb 00 00 00    	je     804f408 <_fputwc_r+0xe8>
 804f34d:	8d 43 5c             	lea    0x5c(%ebx),%eax
 804f350:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804f354:	8b 54 24 44          	mov    0x44(%esp),%edx
 804f358:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f35c:	8d 6c 24 1f          	lea    0x1f(%esp),%ebp
 804f360:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 804f364:	8b 54 24 40          	mov    0x40(%esp),%edx
 804f368:	89 14 24             	mov    %edx,(%esp)
 804f36b:	e8 78 0f 00 00       	call   80502e8 <_wcrtomb_r>
 804f370:	89 c7                	mov    %eax,%edi
 804f372:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f375:	74 51                	je     804f3c8 <_fputwc_r+0xa8>
 804f377:	85 c0                	test   %eax,%eax
 804f379:	74 61                	je     804f3dc <_fputwc_r+0xbc>
 804f37b:	31 f6                	xor    %esi,%esi
 804f37d:	eb 10                	jmp    804f38f <_fputwc_r+0x6f>
 804f37f:	90                   	nop
 804f380:	8b 03                	mov    (%ebx),%eax
 804f382:	8a 54 35 00          	mov    0x0(%ebp,%esi,1),%dl
 804f386:	88 10                	mov    %dl,(%eax)
 804f388:	ff 03                	incl   (%ebx)
 804f38a:	46                   	inc    %esi
 804f38b:	39 fe                	cmp    %edi,%esi
 804f38d:	73 4d                	jae    804f3dc <_fputwc_r+0xbc>
 804f38f:	8b 43 08             	mov    0x8(%ebx),%eax
 804f392:	48                   	dec    %eax
 804f393:	89 43 08             	mov    %eax,0x8(%ebx)
 804f396:	85 c0                	test   %eax,%eax
 804f398:	79 e6                	jns    804f380 <_fputwc_r+0x60>
 804f39a:	3b 43 18             	cmp    0x18(%ebx),%eax
 804f39d:	7c 49                	jl     804f3e8 <_fputwc_r+0xc8>
 804f39f:	8b 03                	mov    (%ebx),%eax
 804f3a1:	8a 54 35 00          	mov    0x0(%ebp,%esi,1),%dl
 804f3a5:	88 10                	mov    %dl,(%eax)
 804f3a7:	8b 03                	mov    (%ebx),%eax
 804f3a9:	80 38 0a             	cmpb   $0xa,(%eax)
 804f3ac:	0f 84 86 00 00 00    	je     804f438 <_fputwc_r+0x118>
 804f3b2:	31 d2                	xor    %edx,%edx
 804f3b4:	40                   	inc    %eax
 804f3b5:	89 03                	mov    %eax,(%ebx)
 804f3b7:	84 d2                	test   %dl,%dl
 804f3b9:	74 cf                	je     804f38a <_fputwc_r+0x6a>
 804f3bb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804f3c0:	83 c4 2c             	add    $0x2c,%esp
 804f3c3:	5b                   	pop    %ebx
 804f3c4:	5e                   	pop    %esi
 804f3c5:	5f                   	pop    %edi
 804f3c6:	5d                   	pop    %ebp
 804f3c7:	c3                   	ret    
 804f3c8:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 804f3cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804f3d2:	83 c4 2c             	add    $0x2c,%esp
 804f3d5:	5b                   	pop    %ebx
 804f3d6:	5e                   	pop    %esi
 804f3d7:	5f                   	pop    %edi
 804f3d8:	5d                   	pop    %ebp
 804f3d9:	c3                   	ret    
 804f3da:	66 90                	xchg   %ax,%ax
 804f3dc:	8b 44 24 44          	mov    0x44(%esp),%eax
 804f3e0:	83 c4 2c             	add    $0x2c,%esp
 804f3e3:	5b                   	pop    %ebx
 804f3e4:	5e                   	pop    %esi
 804f3e5:	5f                   	pop    %edi
 804f3e6:	5d                   	pop    %ebp
 804f3e7:	c3                   	ret    
 804f3e8:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804f3ec:	0f b6 44 35 00       	movzbl 0x0(%ebp,%esi,1),%eax
 804f3f1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f3f5:	8b 54 24 40          	mov    0x40(%esp),%edx
 804f3f9:	89 14 24             	mov    %edx,(%esp)
 804f3fc:	e8 c7 0d 00 00       	call   80501c8 <__swbuf_r>
 804f401:	40                   	inc    %eax
 804f402:	0f 94 c2             	sete   %dl
 804f405:	eb b0                	jmp    804f3b7 <_fputwc_r+0x97>
 804f407:	90                   	nop
 804f408:	8b 44 24 44          	mov    0x44(%esp),%eax
 804f40c:	85 c0                	test   %eax,%eax
 804f40e:	0f 8e 39 ff ff ff    	jle    804f34d <_fputwc_r+0x2d>
 804f414:	81 7c 24 44 ff 00 00 	cmpl   $0xff,0x44(%esp)
 804f41b:	00 
 804f41c:	0f 8f 2b ff ff ff    	jg     804f34d <_fputwc_r+0x2d>
 804f422:	8a 44 24 44          	mov    0x44(%esp),%al
 804f426:	88 44 24 1f          	mov    %al,0x1f(%esp)
 804f42a:	bf 01 00 00 00       	mov    $0x1,%edi
 804f42f:	8d 6c 24 1f          	lea    0x1f(%esp),%ebp
 804f433:	e9 43 ff ff ff       	jmp    804f37b <_fputwc_r+0x5b>
 804f438:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804f43c:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 804f443:	00 
 804f444:	eb af                	jmp    804f3f5 <_fputwc_r+0xd5>
 804f446:	66 90                	xchg   %ax,%ax

0804f448 <fputwc>:
 804f448:	83 ec 1c             	sub    $0x1c,%esp
 804f44b:	a1 20 20 05 08       	mov    0x8052020,%eax
 804f450:	85 c0                	test   %eax,%eax
 804f452:	74 14                	je     804f468 <fputwc+0x20>
 804f454:	8b 50 38             	mov    0x38(%eax),%edx
 804f457:	85 d2                	test   %edx,%edx
 804f459:	75 0d                	jne    804f468 <fputwc+0x20>
 804f45b:	89 04 24             	mov    %eax,(%esp)
 804f45e:	e8 e1 cd ff ff       	call   804c244 <__sinit>
 804f463:	a1 20 20 05 08       	mov    0x8052020,%eax
 804f468:	8b 54 24 24          	mov    0x24(%esp),%edx
 804f46c:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f470:	8b 54 24 20          	mov    0x20(%esp),%edx
 804f474:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f478:	89 04 24             	mov    %eax,(%esp)
 804f47b:	e8 a0 fe ff ff       	call   804f320 <_fputwc_r>
 804f480:	83 c4 1c             	add    $0x1c,%esp
 804f483:	c3                   	ret    

0804f484 <_fstat_r>:
 804f484:	83 ec 1c             	sub    $0x1c,%esp
 804f487:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804f48e:	00 00 00 
 804f491:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f495:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f499:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f49d:	89 04 24             	mov    %eax,(%esp)
 804f4a0:	e8 4a 90 ff ff       	call   80484ef <fstat>
 804f4a5:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f4a8:	74 06                	je     804f4b0 <_fstat_r+0x2c>
 804f4aa:	83 c4 1c             	add    $0x1c,%esp
 804f4ad:	c3                   	ret    
 804f4ae:	66 90                	xchg   %ax,%ax
 804f4b0:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804f4b6:	85 d2                	test   %edx,%edx
 804f4b8:	74 f0                	je     804f4aa <_fstat_r+0x26>
 804f4ba:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f4be:	89 11                	mov    %edx,(%ecx)
 804f4c0:	83 c4 1c             	add    $0x1c,%esp
 804f4c3:	c3                   	ret    

0804f4c4 <__sfvwrite_r>:
 804f4c4:	55                   	push   %ebp
 804f4c5:	57                   	push   %edi
 804f4c6:	56                   	push   %esi
 804f4c7:	53                   	push   %ebx
 804f4c8:	83 ec 3c             	sub    $0x3c,%esp
 804f4cb:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 804f4cf:	8b 54 24 58          	mov    0x58(%esp),%edx
 804f4d3:	8b 72 08             	mov    0x8(%edx),%esi
 804f4d6:	85 f6                	test   %esi,%esi
 804f4d8:	74 63                	je     804f53d <__sfvwrite_r+0x79>
 804f4da:	8b 53 0c             	mov    0xc(%ebx),%edx
 804f4dd:	f6 c2 08             	test   $0x8,%dl
 804f4e0:	74 66                	je     804f548 <__sfvwrite_r+0x84>
 804f4e2:	8b 4b 10             	mov    0x10(%ebx),%ecx
 804f4e5:	85 c9                	test   %ecx,%ecx
 804f4e7:	74 5f                	je     804f548 <__sfvwrite_r+0x84>
 804f4e9:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804f4ed:	8b 29                	mov    (%ecx),%ebp
 804f4ef:	f6 c2 02             	test   $0x2,%dl
 804f4f2:	74 7a                	je     804f56e <__sfvwrite_r+0xaa>
 804f4f4:	31 ff                	xor    %edi,%edi
 804f4f6:	31 f6                	xor    %esi,%esi
 804f4f8:	85 f6                	test   %esi,%esi
 804f4fa:	0f 84 2c 01 00 00    	je     804f62c <__sfvwrite_r+0x168>
 804f500:	89 f0                	mov    %esi,%eax
 804f502:	81 fe 00 04 00 00    	cmp    $0x400,%esi
 804f508:	76 05                	jbe    804f50f <__sfvwrite_r+0x4b>
 804f50a:	b8 00 04 00 00       	mov    $0x400,%eax
 804f50f:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804f513:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804f517:	8b 43 1c             	mov    0x1c(%ebx),%eax
 804f51a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f51e:	8b 54 24 50          	mov    0x50(%esp),%edx
 804f522:	89 14 24             	mov    %edx,(%esp)
 804f525:	ff 53 24             	call   *0x24(%ebx)
 804f528:	85 c0                	test   %eax,%eax
 804f52a:	0f 8e 14 01 00 00    	jle    804f644 <__sfvwrite_r+0x180>
 804f530:	01 c7                	add    %eax,%edi
 804f532:	29 c6                	sub    %eax,%esi
 804f534:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804f538:	29 41 08             	sub    %eax,0x8(%ecx)
 804f53b:	75 bb                	jne    804f4f8 <__sfvwrite_r+0x34>
 804f53d:	31 c0                	xor    %eax,%eax
 804f53f:	83 c4 3c             	add    $0x3c,%esp
 804f542:	5b                   	pop    %ebx
 804f543:	5e                   	pop    %esi
 804f544:	5f                   	pop    %edi
 804f545:	5d                   	pop    %ebp
 804f546:	c3                   	ret    
 804f547:	90                   	nop
 804f548:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804f54c:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f550:	89 0c 24             	mov    %ecx,(%esp)
 804f553:	e8 58 b2 ff ff       	call   804a7b0 <__swsetup_r>
 804f558:	85 c0                	test   %eax,%eax
 804f55a:	0f 85 14 04 00 00    	jne    804f974 <__sfvwrite_r+0x4b0>
 804f560:	8b 53 0c             	mov    0xc(%ebx),%edx
 804f563:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804f567:	8b 29                	mov    (%ecx),%ebp
 804f569:	f6 c2 02             	test   $0x2,%dl
 804f56c:	75 86                	jne    804f4f4 <__sfvwrite_r+0x30>
 804f56e:	c7 44 24 24 00 00 00 	movl   $0x0,0x24(%esp)
 804f575:	00 
 804f576:	f6 c2 01             	test   $0x1,%dl
 804f579:	0f 84 d9 00 00 00    	je     804f658 <__sfvwrite_r+0x194>
 804f57f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804f586:	00 
 804f587:	c7 44 24 28 00 00 00 	movl   $0x0,0x28(%esp)
 804f58e:	00 
 804f58f:	31 ff                	xor    %edi,%edi
 804f591:	8d 76 00             	lea    0x0(%esi),%esi
 804f594:	85 ff                	test   %edi,%edi
 804f596:	74 79                	je     804f611 <__sfvwrite_r+0x14d>
 804f598:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804f59c:	85 c0                	test   %eax,%eax
 804f59e:	0f 84 24 02 00 00    	je     804f7c8 <__sfvwrite_r+0x304>
 804f5a4:	8b 54 24 24          	mov    0x24(%esp),%edx
 804f5a8:	39 fa                	cmp    %edi,%edx
 804f5aa:	76 02                	jbe    804f5ae <__sfvwrite_r+0xea>
 804f5ac:	89 fa                	mov    %edi,%edx
 804f5ae:	8b 73 08             	mov    0x8(%ebx),%esi
 804f5b1:	8b 43 14             	mov    0x14(%ebx),%eax
 804f5b4:	8b 0b                	mov    (%ebx),%ecx
 804f5b6:	3b 4b 10             	cmp    0x10(%ebx),%ecx
 804f5b9:	76 0a                	jbe    804f5c5 <__sfvwrite_r+0x101>
 804f5bb:	01 c6                	add    %eax,%esi
 804f5bd:	39 f2                	cmp    %esi,%edx
 804f5bf:	0f 8f e7 02 00 00    	jg     804f8ac <__sfvwrite_r+0x3e8>
 804f5c5:	39 c2                	cmp    %eax,%edx
 804f5c7:	0f 8c 6b 01 00 00    	jl     804f738 <__sfvwrite_r+0x274>
 804f5cd:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804f5d1:	8b 54 24 28          	mov    0x28(%esp),%edx
 804f5d5:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f5d9:	8b 43 1c             	mov    0x1c(%ebx),%eax
 804f5dc:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f5e0:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f5e4:	89 0c 24             	mov    %ecx,(%esp)
 804f5e7:	ff 53 24             	call   *0x24(%ebx)
 804f5ea:	89 c6                	mov    %eax,%esi
 804f5ec:	85 c0                	test   %eax,%eax
 804f5ee:	7e 54                	jle    804f644 <__sfvwrite_r+0x180>
 804f5f0:	29 74 24 24          	sub    %esi,0x24(%esp)
 804f5f4:	0f 84 6b 01 00 00    	je     804f765 <__sfvwrite_r+0x2a1>
 804f5fa:	01 74 24 28          	add    %esi,0x28(%esp)
 804f5fe:	29 f7                	sub    %esi,%edi
 804f600:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804f604:	29 71 08             	sub    %esi,0x8(%ecx)
 804f607:	0f 84 30 ff ff ff    	je     804f53d <__sfvwrite_r+0x79>
 804f60d:	85 ff                	test   %edi,%edi
 804f60f:	75 87                	jne    804f598 <__sfvwrite_r+0xd4>
 804f611:	8b 55 00             	mov    0x0(%ebp),%edx
 804f614:	89 54 24 28          	mov    %edx,0x28(%esp)
 804f618:	8b 7d 04             	mov    0x4(%ebp),%edi
 804f61b:	83 c5 08             	add    $0x8,%ebp
 804f61e:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804f625:	00 
 804f626:	e9 69 ff ff ff       	jmp    804f594 <__sfvwrite_r+0xd0>
 804f62b:	90                   	nop
 804f62c:	8b 7d 00             	mov    0x0(%ebp),%edi
 804f62f:	8b 75 04             	mov    0x4(%ebp),%esi
 804f632:	83 c5 08             	add    $0x8,%ebp
 804f635:	e9 be fe ff ff       	jmp    804f4f8 <__sfvwrite_r+0x34>
 804f63a:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f63e:	c7 01 0c 00 00 00    	movl   $0xc,(%ecx)
 804f644:	66 83 4b 0c 40       	orw    $0x40,0xc(%ebx)
 804f649:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804f64e:	83 c4 3c             	add    $0x3c,%esp
 804f651:	5b                   	pop    %ebx
 804f652:	5e                   	pop    %esi
 804f653:	5f                   	pop    %edi
 804f654:	5d                   	pop    %ebp
 804f655:	c3                   	ret    
 804f656:	66 90                	xchg   %ax,%ax
 804f658:	31 f6                	xor    %esi,%esi
 804f65a:	66 90                	xchg   %ax,%ax
 804f65c:	85 f6                	test   %esi,%esi
 804f65e:	74 7b                	je     804f6db <__sfvwrite_r+0x217>
 804f660:	8b 7b 08             	mov    0x8(%ebx),%edi
 804f663:	f6 c6 02             	test   $0x2,%dh
 804f666:	0f 84 84 00 00 00    	je     804f6f0 <__sfvwrite_r+0x22c>
 804f66c:	89 f9                	mov    %edi,%ecx
 804f66e:	39 fe                	cmp    %edi,%esi
 804f670:	0f 82 16 01 00 00    	jb     804f78c <__sfvwrite_r+0x2c8>
 804f676:	f7 c2 80 04 00 00    	test   $0x480,%edx
 804f67c:	0f 85 7e 01 00 00    	jne    804f800 <__sfvwrite_r+0x33c>
 804f682:	8b 03                	mov    (%ebx),%eax
 804f684:	89 44 24 18          	mov    %eax,0x18(%esp)
 804f688:	89 f2                	mov    %esi,%edx
 804f68a:	89 7c 24 28          	mov    %edi,0x28(%esp)
 804f68e:	89 f7                	mov    %esi,%edi
 804f690:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804f694:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f698:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f69c:	8b 44 24 18          	mov    0x18(%esp),%eax
 804f6a0:	89 04 24             	mov    %eax,(%esp)
 804f6a3:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804f6a7:	89 4c 24 20          	mov    %ecx,0x20(%esp)
 804f6ab:	e8 50 03 00 00       	call   804fa00 <memmove>
 804f6b0:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f6b4:	29 43 08             	sub    %eax,0x8(%ebx)
 804f6b7:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f6bb:	01 0b                	add    %ecx,(%ebx)
 804f6bd:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804f6c1:	01 54 24 24          	add    %edx,0x24(%esp)
 804f6c5:	29 d6                	sub    %edx,%esi
 804f6c7:	8b 4c 24 58          	mov    0x58(%esp),%ecx
 804f6cb:	29 79 08             	sub    %edi,0x8(%ecx)
 804f6ce:	0f 84 69 fe ff ff    	je     804f53d <__sfvwrite_r+0x79>
 804f6d4:	8b 53 0c             	mov    0xc(%ebx),%edx
 804f6d7:	85 f6                	test   %esi,%esi
 804f6d9:	75 85                	jne    804f660 <__sfvwrite_r+0x19c>
 804f6db:	8b 4d 00             	mov    0x0(%ebp),%ecx
 804f6de:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804f6e2:	8b 75 04             	mov    0x4(%ebp),%esi
 804f6e5:	83 c5 08             	add    $0x8,%ebp
 804f6e8:	e9 6f ff ff ff       	jmp    804f65c <__sfvwrite_r+0x198>
 804f6ed:	8d 76 00             	lea    0x0(%esi),%esi
 804f6f0:	8b 03                	mov    (%ebx),%eax
 804f6f2:	3b 43 10             	cmp    0x10(%ebx),%eax
 804f6f5:	76 08                	jbe    804f6ff <__sfvwrite_r+0x23b>
 804f6f7:	39 fe                	cmp    %edi,%esi
 804f6f9:	0f 87 e1 01 00 00    	ja     804f8e0 <__sfvwrite_r+0x41c>
 804f6ff:	8b 53 14             	mov    0x14(%ebx),%edx
 804f702:	39 d6                	cmp    %edx,%esi
 804f704:	0f 82 9a 00 00 00    	jb     804f7a4 <__sfvwrite_r+0x2e0>
 804f70a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804f70e:	8b 54 24 24          	mov    0x24(%esp),%edx
 804f712:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f716:	8b 43 1c             	mov    0x1c(%ebx),%eax
 804f719:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f71d:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f721:	89 0c 24             	mov    %ecx,(%esp)
 804f724:	ff 53 24             	call   *0x24(%ebx)
 804f727:	89 c7                	mov    %eax,%edi
 804f729:	85 c0                	test   %eax,%eax
 804f72b:	0f 8e 13 ff ff ff    	jle    804f644 <__sfvwrite_r+0x180>
 804f731:	89 c2                	mov    %eax,%edx
 804f733:	eb 8c                	jmp    804f6c1 <__sfvwrite_r+0x1fd>
 804f735:	8d 76 00             	lea    0x0(%esi),%esi
 804f738:	89 54 24 08          	mov    %edx,0x8(%esp)
 804f73c:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f740:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f744:	89 0c 24             	mov    %ecx,(%esp)
 804f747:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804f74b:	e8 b0 02 00 00       	call   804fa00 <memmove>
 804f750:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804f754:	29 53 08             	sub    %edx,0x8(%ebx)
 804f757:	01 13                	add    %edx,(%ebx)
 804f759:	89 d6                	mov    %edx,%esi
 804f75b:	29 74 24 24          	sub    %esi,0x24(%esp)
 804f75f:	0f 85 95 fe ff ff    	jne    804f5fa <__sfvwrite_r+0x136>
 804f765:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804f769:	8b 54 24 50          	mov    0x50(%esp),%edx
 804f76d:	89 14 24             	mov    %edx,(%esp)
 804f770:	e8 3b c9 ff ff       	call   804c0b0 <_fflush_r>
 804f775:	85 c0                	test   %eax,%eax
 804f777:	0f 85 c7 fe ff ff    	jne    804f644 <__sfvwrite_r+0x180>
 804f77d:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804f784:	00 
 804f785:	e9 70 fe ff ff       	jmp    804f5fa <__sfvwrite_r+0x136>
 804f78a:	66 90                	xchg   %ax,%ax
 804f78c:	89 74 24 28          	mov    %esi,0x28(%esp)
 804f790:	8b 0b                	mov    (%ebx),%ecx
 804f792:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 804f796:	89 f2                	mov    %esi,%edx
 804f798:	89 f7                	mov    %esi,%edi
 804f79a:	89 f1                	mov    %esi,%ecx
 804f79c:	e9 ef fe ff ff       	jmp    804f690 <__sfvwrite_r+0x1cc>
 804f7a1:	8d 76 00             	lea    0x0(%esi),%esi
 804f7a4:	89 f7                	mov    %esi,%edi
 804f7a6:	89 74 24 08          	mov    %esi,0x8(%esp)
 804f7aa:	8b 54 24 24          	mov    0x24(%esp),%edx
 804f7ae:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f7b2:	89 04 24             	mov    %eax,(%esp)
 804f7b5:	e8 46 02 00 00       	call   804fa00 <memmove>
 804f7ba:	29 73 08             	sub    %esi,0x8(%ebx)
 804f7bd:	01 33                	add    %esi,(%ebx)
 804f7bf:	89 f2                	mov    %esi,%edx
 804f7c1:	e9 fb fe ff ff       	jmp    804f6c1 <__sfvwrite_r+0x1fd>
 804f7c6:	66 90                	xchg   %ax,%ax
 804f7c8:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804f7cc:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 804f7d3:	00 
 804f7d4:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 804f7d8:	89 0c 24             	mov    %ecx,(%esp)
 804f7db:	e8 00 d9 ff ff       	call   804d0e0 <memchr>
 804f7e0:	85 c0                	test   %eax,%eax
 804f7e2:	0f 84 78 01 00 00    	je     804f960 <__sfvwrite_r+0x49c>
 804f7e8:	40                   	inc    %eax
 804f7e9:	8b 54 24 28          	mov    0x28(%esp),%edx
 804f7ed:	29 d0                	sub    %edx,%eax
 804f7ef:	89 44 24 24          	mov    %eax,0x24(%esp)
 804f7f3:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 804f7fa:	00 
 804f7fb:	e9 a4 fd ff ff       	jmp    804f5a4 <__sfvwrite_r+0xe0>
 804f800:	8b 4b 10             	mov    0x10(%ebx),%ecx
 804f803:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 804f807:	8b 0b                	mov    (%ebx),%ecx
 804f809:	8b 44 24 18          	mov    0x18(%esp),%eax
 804f80d:	29 c1                	sub    %eax,%ecx
 804f80f:	89 4c 24 2c          	mov    %ecx,0x2c(%esp)
 804f813:	8b 43 14             	mov    0x14(%ebx),%eax
 804f816:	8d 04 40             	lea    (%eax,%eax,2),%eax
 804f819:	89 c7                	mov    %eax,%edi
 804f81b:	c1 ef 1f             	shr    $0x1f,%edi
 804f81e:	01 c7                	add    %eax,%edi
 804f820:	d1 ff                	sar    %edi
 804f822:	89 f8                	mov    %edi,%eax
 804f824:	8d 4c 0e 01          	lea    0x1(%esi,%ecx,1),%ecx
 804f828:	89 4c 24 28          	mov    %ecx,0x28(%esp)
 804f82c:	39 cf                	cmp    %ecx,%edi
 804f82e:	73 04                	jae    804f834 <__sfvwrite_r+0x370>
 804f830:	89 cf                	mov    %ecx,%edi
 804f832:	89 c8                	mov    %ecx,%eax
 804f834:	80 e6 04             	and    $0x4,%dh
 804f837:	0f 84 df 00 00 00    	je     804f91c <__sfvwrite_r+0x458>
 804f83d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f841:	8b 54 24 50          	mov    0x50(%esp),%edx
 804f845:	89 14 24             	mov    %edx,(%esp)
 804f848:	e8 93 d1 ff ff       	call   804c9e0 <_malloc_r>
 804f84d:	89 c2                	mov    %eax,%edx
 804f84f:	85 c0                	test   %eax,%eax
 804f851:	0f 84 e3 fd ff ff    	je     804f63a <__sfvwrite_r+0x176>
 804f857:	8b 4c 24 2c          	mov    0x2c(%esp),%ecx
 804f85b:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804f85f:	8b 43 10             	mov    0x10(%ebx),%eax
 804f862:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f866:	89 14 24             	mov    %edx,(%esp)
 804f869:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 804f86d:	e8 06 d9 ff ff       	call   804d178 <memcpy>
 804f872:	8b 43 0c             	mov    0xc(%ebx),%eax
 804f875:	25 7f fb ff ff       	and    $0xfffffb7f,%eax
 804f87a:	0c 80                	or     $0x80,%al
 804f87c:	66 89 43 0c          	mov    %ax,0xc(%ebx)
 804f880:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804f884:	89 53 10             	mov    %edx,0x10(%ebx)
 804f887:	03 54 24 2c          	add    0x2c(%esp),%edx
 804f88b:	89 54 24 18          	mov    %edx,0x18(%esp)
 804f88f:	89 13                	mov    %edx,(%ebx)
 804f891:	89 7b 14             	mov    %edi,0x14(%ebx)
 804f894:	89 74 24 28          	mov    %esi,0x28(%esp)
 804f898:	2b 7c 24 2c          	sub    0x2c(%esp),%edi
 804f89c:	89 7b 08             	mov    %edi,0x8(%ebx)
 804f89f:	89 f2                	mov    %esi,%edx
 804f8a1:	89 f7                	mov    %esi,%edi
 804f8a3:	89 f1                	mov    %esi,%ecx
 804f8a5:	e9 e6 fd ff ff       	jmp    804f690 <__sfvwrite_r+0x1cc>
 804f8aa:	66 90                	xchg   %ax,%ax
 804f8ac:	89 74 24 08          	mov    %esi,0x8(%esp)
 804f8b0:	8b 54 24 28          	mov    0x28(%esp),%edx
 804f8b4:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f8b8:	89 0c 24             	mov    %ecx,(%esp)
 804f8bb:	e8 40 01 00 00       	call   804fa00 <memmove>
 804f8c0:	01 33                	add    %esi,(%ebx)
 804f8c2:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804f8c6:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f8ca:	89 0c 24             	mov    %ecx,(%esp)
 804f8cd:	e8 de c7 ff ff       	call   804c0b0 <_fflush_r>
 804f8d2:	85 c0                	test   %eax,%eax
 804f8d4:	0f 84 16 fd ff ff    	je     804f5f0 <__sfvwrite_r+0x12c>
 804f8da:	e9 65 fd ff ff       	jmp    804f644 <__sfvwrite_r+0x180>
 804f8df:	90                   	nop
 804f8e0:	89 7c 24 08          	mov    %edi,0x8(%esp)
 804f8e4:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 804f8e8:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804f8ec:	89 04 24             	mov    %eax,(%esp)
 804f8ef:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
 804f8f3:	e8 08 01 00 00       	call   804fa00 <memmove>
 804f8f8:	01 3b                	add    %edi,(%ebx)
 804f8fa:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804f8fe:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f902:	89 0c 24             	mov    %ecx,(%esp)
 804f905:	e8 a6 c7 ff ff       	call   804c0b0 <_fflush_r>
 804f90a:	85 c0                	test   %eax,%eax
 804f90c:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804f910:	0f 84 ab fd ff ff    	je     804f6c1 <__sfvwrite_r+0x1fd>
 804f916:	e9 29 fd ff ff       	jmp    804f644 <__sfvwrite_r+0x180>
 804f91b:	90                   	nop
 804f91c:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f920:	8b 44 24 18          	mov    0x18(%esp),%eax
 804f924:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f928:	8b 54 24 50          	mov    0x50(%esp),%edx
 804f92c:	89 14 24             	mov    %edx,(%esp)
 804f92f:	e8 a4 01 00 00       	call   804fad8 <_realloc_r>
 804f934:	89 c2                	mov    %eax,%edx
 804f936:	85 c0                	test   %eax,%eax
 804f938:	0f 85 46 ff ff ff    	jne    804f884 <__sfvwrite_r+0x3c0>
 804f93e:	8b 43 10             	mov    0x10(%ebx),%eax
 804f941:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f945:	8b 4c 24 50          	mov    0x50(%esp),%ecx
 804f949:	89 0c 24             	mov    %ecx,(%esp)
 804f94c:	e8 93 cb ff ff       	call   804c4e4 <_free_r>
 804f951:	8b 54 24 50          	mov    0x50(%esp),%edx
 804f955:	c7 02 0c 00 00 00    	movl   $0xc,(%edx)
 804f95b:	e9 e4 fc ff ff       	jmp    804f644 <__sfvwrite_r+0x180>
 804f960:	8d 4f 01             	lea    0x1(%edi),%ecx
 804f963:	89 4c 24 24          	mov    %ecx,0x24(%esp)
 804f967:	c7 44 24 2c 01 00 00 	movl   $0x1,0x2c(%esp)
 804f96e:	00 
 804f96f:	e9 30 fc ff ff       	jmp    804f5a4 <__sfvwrite_r+0xe0>
 804f974:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804f979:	e9 c1 fb ff ff       	jmp    804f53f <__sfvwrite_r+0x7b>
 804f97e:	66 90                	xchg   %ax,%ax

0804f980 <_isatty_r>:
 804f980:	83 ec 1c             	sub    $0x1c,%esp
 804f983:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804f98a:	00 00 00 
 804f98d:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f991:	89 04 24             	mov    %eax,(%esp)
 804f994:	e8 95 8b ff ff       	call   804852e <isatty>
 804f999:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f99c:	74 06                	je     804f9a4 <_isatty_r+0x24>
 804f99e:	83 c4 1c             	add    $0x1c,%esp
 804f9a1:	c3                   	ret    
 804f9a2:	66 90                	xchg   %ax,%ax
 804f9a4:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804f9aa:	85 d2                	test   %edx,%edx
 804f9ac:	74 f0                	je     804f99e <_isatty_r+0x1e>
 804f9ae:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f9b2:	89 11                	mov    %edx,(%ecx)
 804f9b4:	83 c4 1c             	add    $0x1c,%esp
 804f9b7:	c3                   	ret    

0804f9b8 <_lseek_r>:
 804f9b8:	83 ec 1c             	sub    $0x1c,%esp
 804f9bb:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804f9c2:	00 00 00 
 804f9c5:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804f9c9:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f9cd:	8b 44 24 28          	mov    0x28(%esp),%eax
 804f9d1:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f9d5:	8b 44 24 24          	mov    0x24(%esp),%eax
 804f9d9:	89 04 24             	mov    %eax,(%esp)
 804f9dc:	e8 36 8b ff ff       	call   8048517 <lseek>
 804f9e1:	83 f8 ff             	cmp    $0xffffffff,%eax
 804f9e4:	74 06                	je     804f9ec <_lseek_r+0x34>
 804f9e6:	83 c4 1c             	add    $0x1c,%esp
 804f9e9:	c3                   	ret    
 804f9ea:	66 90                	xchg   %ax,%ax
 804f9ec:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804f9f2:	85 d2                	test   %edx,%edx
 804f9f4:	74 f0                	je     804f9e6 <_lseek_r+0x2e>
 804f9f6:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804f9fa:	89 11                	mov    %edx,(%ecx)
 804f9fc:	83 c4 1c             	add    $0x1c,%esp
 804f9ff:	c3                   	ret    

0804fa00 <memmove>:
 804fa00:	55                   	push   %ebp
 804fa01:	89 e5                	mov    %esp,%ebp
 804fa03:	56                   	push   %esi
 804fa04:	57                   	push   %edi
 804fa05:	53                   	push   %ebx
 804fa06:	8b 7d 08             	mov    0x8(%ebp),%edi
 804fa09:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804fa0c:	8b 75 0c             	mov    0xc(%ebp),%esi
 804fa0f:	fc                   	cld    
 804fa10:	39 fe                	cmp    %edi,%esi
 804fa12:	73 43                	jae    804fa57 <memmove+0x57>
 804fa14:	8d 5c 31 ff          	lea    -0x1(%ecx,%esi,1),%ebx
 804fa18:	39 df                	cmp    %ebx,%edi
 804fa1a:	77 3b                	ja     804fa57 <memmove+0x57>
 804fa1c:	01 ce                	add    %ecx,%esi
 804fa1e:	01 cf                	add    %ecx,%edi
 804fa20:	fd                   	std    
 804fa21:	83 f9 08             	cmp    $0x8,%ecx
 804fa24:	76 2b                	jbe    804fa51 <memmove+0x51>
 804fa26:	89 fa                	mov    %edi,%edx
 804fa28:	89 cb                	mov    %ecx,%ebx
 804fa2a:	83 e2 03             	and    $0x3,%edx
 804fa2d:	74 0c                	je     804fa3b <memmove+0x3b>
 804fa2f:	89 d1                	mov    %edx,%ecx
 804fa31:	4e                   	dec    %esi
 804fa32:	4f                   	dec    %edi
 804fa33:	29 cb                	sub    %ecx,%ebx
 804fa35:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fa37:	89 d9                	mov    %ebx,%ecx
 804fa39:	46                   	inc    %esi
 804fa3a:	47                   	inc    %edi
 804fa3b:	c1 e9 02             	shr    $0x2,%ecx
 804fa3e:	83 ee 04             	sub    $0x4,%esi
 804fa41:	83 ef 04             	sub    $0x4,%edi
 804fa44:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804fa46:	83 c6 04             	add    $0x4,%esi
 804fa49:	83 c7 04             	add    $0x4,%edi
 804fa4c:	89 d9                	mov    %ebx,%ecx
 804fa4e:	83 e1 03             	and    $0x3,%ecx
 804fa51:	4e                   	dec    %esi
 804fa52:	4f                   	dec    %edi
 804fa53:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fa55:	eb 2a                	jmp    804fa81 <memmove+0x81>
 804fa57:	83 f9 08             	cmp    $0x8,%ecx
 804fa5a:	76 23                	jbe    804fa7f <memmove+0x7f>
 804fa5c:	89 fa                	mov    %edi,%edx
 804fa5e:	89 cb                	mov    %ecx,%ebx
 804fa60:	83 e2 03             	and    $0x3,%edx
 804fa63:	74 10                	je     804fa75 <memmove+0x75>
 804fa65:	b9 04 00 00 00       	mov    $0x4,%ecx
 804fa6a:	29 d1                	sub    %edx,%ecx
 804fa6c:	83 e1 03             	and    $0x3,%ecx
 804fa6f:	29 cb                	sub    %ecx,%ebx
 804fa71:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fa73:	89 d9                	mov    %ebx,%ecx
 804fa75:	c1 e9 02             	shr    $0x2,%ecx
 804fa78:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804fa7a:	89 d9                	mov    %ebx,%ecx
 804fa7c:	83 e1 03             	and    $0x3,%ecx
 804fa7f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 804fa81:	8b 45 08             	mov    0x8(%ebp),%eax
 804fa84:	fc                   	cld    
 804fa85:	8d 65 f4             	lea    -0xc(%ebp),%esp
 804fa88:	5b                   	pop    %ebx
 804fa89:	5f                   	pop    %edi
 804fa8a:	5e                   	pop    %esi
 804fa8b:	c9                   	leave  
 804fa8c:	c3                   	ret    
 804fa8d:	66 90                	xchg   %ax,%ax
 804fa8f:	90                   	nop

0804fa90 <_read_r>:
 804fa90:	83 ec 1c             	sub    $0x1c,%esp
 804fa93:	c7 05 b8 29 05 08 00 	movl   $0x0,0x80529b8
 804fa9a:	00 00 00 
 804fa9d:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804faa1:	89 44 24 08          	mov    %eax,0x8(%esp)
 804faa5:	8b 44 24 28          	mov    0x28(%esp),%eax
 804faa9:	89 44 24 04          	mov    %eax,0x4(%esp)
 804faad:	8b 44 24 24          	mov    0x24(%esp),%eax
 804fab1:	89 04 24             	mov    %eax,(%esp)
 804fab4:	e8 ba 89 ff ff       	call   8048473 <read>
 804fab9:	83 f8 ff             	cmp    $0xffffffff,%eax
 804fabc:	74 06                	je     804fac4 <_read_r+0x34>
 804fabe:	83 c4 1c             	add    $0x1c,%esp
 804fac1:	c3                   	ret    
 804fac2:	66 90                	xchg   %ax,%ax
 804fac4:	8b 15 b8 29 05 08    	mov    0x80529b8,%edx
 804faca:	85 d2                	test   %edx,%edx
 804facc:	74 f0                	je     804fabe <_read_r+0x2e>
 804face:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804fad2:	89 11                	mov    %edx,(%ecx)
 804fad4:	83 c4 1c             	add    $0x1c,%esp
 804fad7:	c3                   	ret    

0804fad8 <_realloc_r>:
 804fad8:	55                   	push   %ebp
 804fad9:	57                   	push   %edi
 804fada:	56                   	push   %esi
 804fadb:	53                   	push   %ebx
 804fadc:	83 ec 3c             	sub    $0x3c,%esp
 804fadf:	8b 74 24 50          	mov    0x50(%esp),%esi
 804fae3:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 804fae7:	8b 6c 24 58          	mov    0x58(%esp),%ebp
 804faeb:	85 db                	test   %ebx,%ebx
 804faed:	0f 84 59 02 00 00    	je     804fd4c <_realloc_r+0x274>
 804faf3:	89 34 24             	mov    %esi,(%esp)
 804faf6:	e8 c5 d6 ff ff       	call   804d1c0 <__malloc_lock>
 804fafb:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 804fafe:	89 4c 24 20          	mov    %ecx,0x20(%esp)
 804fb02:	8b 53 fc             	mov    -0x4(%ebx),%edx
 804fb05:	89 d1                	mov    %edx,%ecx
 804fb07:	83 e1 fc             	and    $0xfffffffc,%ecx
 804fb0a:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 804fb0e:	8d 45 0b             	lea    0xb(%ebp),%eax
 804fb11:	83 f8 16             	cmp    $0x16,%eax
 804fb14:	0f 87 f2 00 00 00    	ja     804fc0c <_realloc_r+0x134>
 804fb1a:	c7 44 24 24 10 00 00 	movl   $0x10,0x24(%esp)
 804fb21:	00 
 804fb22:	c7 44 24 18 10 00 00 	movl   $0x10,0x18(%esp)
 804fb29:	00 
 804fb2a:	3b 6c 24 18          	cmp    0x18(%esp),%ebp
 804fb2e:	0f 87 eb 00 00 00    	ja     804fc1f <_realloc_r+0x147>
 804fb34:	8b 44 24 24          	mov    0x24(%esp),%eax
 804fb38:	39 44 24 1c          	cmp    %eax,0x1c(%esp)
 804fb3c:	0f 8d f2 00 00 00    	jge    804fc34 <_realloc_r+0x15c>
 804fb42:	8b 44 24 20          	mov    0x20(%esp),%eax
 804fb46:	03 44 24 1c          	add    0x1c(%esp),%eax
 804fb4a:	8b 0d 48 25 05 08    	mov    0x8052548,%ecx
 804fb50:	89 4c 24 28          	mov    %ecx,0x28(%esp)
 804fb54:	39 c1                	cmp    %eax,%ecx
 804fb56:	0f 84 00 02 00 00    	je     804fd5c <_realloc_r+0x284>
 804fb5c:	8b 48 04             	mov    0x4(%eax),%ecx
 804fb5f:	89 cf                	mov    %ecx,%edi
 804fb61:	83 e7 fe             	and    $0xfffffffe,%edi
 804fb64:	f6 44 38 04 01       	testb  $0x1,0x4(%eax,%edi,1)
 804fb69:	0f 84 f9 00 00 00    	je     804fc68 <_realloc_r+0x190>
 804fb6f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 804fb76:	00 
 804fb77:	31 c0                	xor    %eax,%eax
 804fb79:	83 e2 01             	and    $0x1,%edx
 804fb7c:	0f 85 54 01 00 00    	jne    804fcd6 <_realloc_r+0x1fe>
 804fb82:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804fb86:	2b 4b f8             	sub    -0x8(%ebx),%ecx
 804fb89:	8b 51 04             	mov    0x4(%ecx),%edx
 804fb8c:	83 e2 fc             	and    $0xfffffffc,%edx
 804fb8f:	03 54 24 1c          	add    0x1c(%esp),%edx
 804fb93:	85 c0                	test   %eax,%eax
 804fb95:	0f 84 29 01 00 00    	je     804fcc4 <_realloc_r+0x1ec>
 804fb9b:	3b 44 24 28          	cmp    0x28(%esp),%eax
 804fb9f:	89 54 24 28          	mov    %edx,0x28(%esp)
 804fba3:	0f 84 c7 02 00 00    	je     804fe70 <_realloc_r+0x398>
 804fba9:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 804fbad:	01 d7                	add    %edx,%edi
 804fbaf:	3b 7c 24 24          	cmp    0x24(%esp),%edi
 804fbb3:	0f 8c 0f 01 00 00    	jl     804fcc8 <_realloc_r+0x1f0>
 804fbb9:	8b 50 0c             	mov    0xc(%eax),%edx
 804fbbc:	8b 40 08             	mov    0x8(%eax),%eax
 804fbbf:	89 50 0c             	mov    %edx,0xc(%eax)
 804fbc2:	89 42 08             	mov    %eax,0x8(%edx)
 804fbc5:	8b 41 0c             	mov    0xc(%ecx),%eax
 804fbc8:	8b 51 08             	mov    0x8(%ecx),%edx
 804fbcb:	89 42 0c             	mov    %eax,0xc(%edx)
 804fbce:	89 50 08             	mov    %edx,0x8(%eax)
 804fbd1:	8d 69 08             	lea    0x8(%ecx),%ebp
 804fbd4:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804fbd8:	83 e8 04             	sub    $0x4,%eax
 804fbdb:	83 f8 24             	cmp    $0x24,%eax
 804fbde:	0f 87 64 03 00 00    	ja     804ff48 <_realloc_r+0x470>
 804fbe4:	83 f8 13             	cmp    $0x13,%eax
 804fbe7:	0f 86 1b 02 00 00    	jbe    804fe08 <_realloc_r+0x330>
 804fbed:	8b 13                	mov    (%ebx),%edx
 804fbef:	89 51 08             	mov    %edx,0x8(%ecx)
 804fbf2:	8b 53 04             	mov    0x4(%ebx),%edx
 804fbf5:	89 51 0c             	mov    %edx,0xc(%ecx)
 804fbf8:	83 f8 1b             	cmp    $0x1b,%eax
 804fbfb:	0f 87 98 03 00 00    	ja     804ff99 <_realloc_r+0x4c1>
 804fc01:	8d 41 10             	lea    0x10(%ecx),%eax
 804fc04:	83 c3 08             	add    $0x8,%ebx
 804fc07:	e9 fe 01 00 00       	jmp    804fe0a <_realloc_r+0x332>
 804fc0c:	83 e0 f8             	and    $0xfffffff8,%eax
 804fc0f:	89 44 24 18          	mov    %eax,0x18(%esp)
 804fc13:	89 44 24 24          	mov    %eax,0x24(%esp)
 804fc17:	85 c0                	test   %eax,%eax
 804fc19:	0f 89 0b ff ff ff    	jns    804fb2a <_realloc_r+0x52>
 804fc1f:	c7 06 0c 00 00 00    	movl   $0xc,(%esi)
 804fc25:	31 ff                	xor    %edi,%edi
 804fc27:	89 f8                	mov    %edi,%eax
 804fc29:	83 c4 3c             	add    $0x3c,%esp
 804fc2c:	5b                   	pop    %ebx
 804fc2d:	5e                   	pop    %esi
 804fc2e:	5f                   	pop    %edi
 804fc2f:	5d                   	pop    %ebp
 804fc30:	c3                   	ret    
 804fc31:	8d 76 00             	lea    0x0(%esi),%esi
 804fc34:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 804fc38:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804fc3c:	89 f8                	mov    %edi,%eax
 804fc3e:	2b 44 24 18          	sub    0x18(%esp),%eax
 804fc42:	83 f8 0f             	cmp    $0xf,%eax
 804fc45:	77 4d                	ja     804fc94 <_realloc_r+0x1bc>
 804fc47:	83 e2 01             	and    $0x1,%edx
 804fc4a:	09 fa                	or     %edi,%edx
 804fc4c:	89 51 04             	mov    %edx,0x4(%ecx)
 804fc4f:	83 4c 39 04 01       	orl    $0x1,0x4(%ecx,%edi,1)
 804fc54:	89 34 24             	mov    %esi,(%esp)
 804fc57:	e8 68 d5 ff ff       	call   804d1c4 <__malloc_unlock>
 804fc5c:	89 df                	mov    %ebx,%edi
 804fc5e:	89 f8                	mov    %edi,%eax
 804fc60:	83 c4 3c             	add    $0x3c,%esp
 804fc63:	5b                   	pop    %ebx
 804fc64:	5e                   	pop    %esi
 804fc65:	5f                   	pop    %edi
 804fc66:	5d                   	pop    %ebp
 804fc67:	c3                   	ret    
 804fc68:	83 e1 fc             	and    $0xfffffffc,%ecx
 804fc6b:	89 4c 24 2c          	mov    %ecx,0x2c(%esp)
 804fc6f:	8b 7c 24 1c          	mov    0x1c(%esp),%edi
 804fc73:	01 cf                	add    %ecx,%edi
 804fc75:	3b 7c 24 24          	cmp    0x24(%esp),%edi
 804fc79:	0f 8c fa fe ff ff    	jl     804fb79 <_realloc_r+0xa1>
 804fc7f:	8b 48 0c             	mov    0xc(%eax),%ecx
 804fc82:	8b 40 08             	mov    0x8(%eax),%eax
 804fc85:	89 48 0c             	mov    %ecx,0xc(%eax)
 804fc88:	89 41 08             	mov    %eax,0x8(%ecx)
 804fc8b:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804fc8f:	eb ab                	jmp    804fc3c <_realloc_r+0x164>
 804fc91:	8d 76 00             	lea    0x0(%esi),%esi
 804fc94:	8b 7c 24 18          	mov    0x18(%esp),%edi
 804fc98:	01 cf                	add    %ecx,%edi
 804fc9a:	83 e2 01             	and    $0x1,%edx
 804fc9d:	0b 54 24 18          	or     0x18(%esp),%edx
 804fca1:	89 51 04             	mov    %edx,0x4(%ecx)
 804fca4:	89 c2                	mov    %eax,%edx
 804fca6:	83 ca 01             	or     $0x1,%edx
 804fca9:	89 57 04             	mov    %edx,0x4(%edi)
 804fcac:	83 4c 07 04 01       	orl    $0x1,0x4(%edi,%eax,1)
 804fcb1:	83 c7 08             	add    $0x8,%edi
 804fcb4:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804fcb8:	89 34 24             	mov    %esi,(%esp)
 804fcbb:	e8 24 c8 ff ff       	call   804c4e4 <_free_r>
 804fcc0:	eb 92                	jmp    804fc54 <_realloc_r+0x17c>
 804fcc2:	66 90                	xchg   %ax,%ax
 804fcc4:	89 54 24 28          	mov    %edx,0x28(%esp)
 804fcc8:	8b 44 24 24          	mov    0x24(%esp),%eax
 804fccc:	39 44 24 28          	cmp    %eax,0x28(%esp)
 804fcd0:	0f 8d b2 00 00 00    	jge    804fd88 <_realloc_r+0x2b0>
 804fcd6:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 804fcda:	89 34 24             	mov    %esi,(%esp)
 804fcdd:	e8 fe cc ff ff       	call   804c9e0 <_malloc_r>
 804fce2:	89 c7                	mov    %eax,%edi
 804fce4:	85 c0                	test   %eax,%eax
 804fce6:	74 50                	je     804fd38 <_realloc_r+0x260>
 804fce8:	8b 53 fc             	mov    -0x4(%ebx),%edx
 804fceb:	8d 48 f8             	lea    -0x8(%eax),%ecx
 804fcee:	89 d0                	mov    %edx,%eax
 804fcf0:	83 e0 fe             	and    $0xfffffffe,%eax
 804fcf3:	03 44 24 20          	add    0x20(%esp),%eax
 804fcf7:	39 c1                	cmp    %eax,%ecx
 804fcf9:	0f 84 35 02 00 00    	je     804ff34 <_realloc_r+0x45c>
 804fcff:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804fd03:	83 e8 04             	sub    $0x4,%eax
 804fd06:	83 f8 24             	cmp    $0x24,%eax
 804fd09:	0f 87 49 01 00 00    	ja     804fe58 <_realloc_r+0x380>
 804fd0f:	83 f8 13             	cmp    $0x13,%eax
 804fd12:	0f 87 d0 00 00 00    	ja     804fde8 <_realloc_r+0x310>
 804fd18:	89 f8                	mov    %edi,%eax
 804fd1a:	89 da                	mov    %ebx,%edx
 804fd1c:	8b 0a                	mov    (%edx),%ecx
 804fd1e:	89 08                	mov    %ecx,(%eax)
 804fd20:	8b 4a 04             	mov    0x4(%edx),%ecx
 804fd23:	89 48 04             	mov    %ecx,0x4(%eax)
 804fd26:	8b 52 08             	mov    0x8(%edx),%edx
 804fd29:	89 50 08             	mov    %edx,0x8(%eax)
 804fd2c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804fd30:	89 34 24             	mov    %esi,(%esp)
 804fd33:	e8 ac c7 ff ff       	call   804c4e4 <_free_r>
 804fd38:	89 34 24             	mov    %esi,(%esp)
 804fd3b:	e8 84 d4 ff ff       	call   804d1c4 <__malloc_unlock>
 804fd40:	89 f8                	mov    %edi,%eax
 804fd42:	83 c4 3c             	add    $0x3c,%esp
 804fd45:	5b                   	pop    %ebx
 804fd46:	5e                   	pop    %esi
 804fd47:	5f                   	pop    %edi
 804fd48:	5d                   	pop    %ebp
 804fd49:	c3                   	ret    
 804fd4a:	66 90                	xchg   %ax,%ax
 804fd4c:	89 6c 24 54          	mov    %ebp,0x54(%esp)
 804fd50:	83 c4 3c             	add    $0x3c,%esp
 804fd53:	5b                   	pop    %ebx
 804fd54:	5e                   	pop    %esi
 804fd55:	5f                   	pop    %edi
 804fd56:	5d                   	pop    %ebp
 804fd57:	e9 84 cc ff ff       	jmp    804c9e0 <_malloc_r>
 804fd5c:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 804fd60:	8b 49 04             	mov    0x4(%ecx),%ecx
 804fd63:	83 e1 fc             	and    $0xfffffffc,%ecx
 804fd66:	89 4c 24 2c          	mov    %ecx,0x2c(%esp)
 804fd6a:	03 4c 24 1c          	add    0x1c(%esp),%ecx
 804fd6e:	8b 44 24 18          	mov    0x18(%esp),%eax
 804fd72:	83 c0 10             	add    $0x10,%eax
 804fd75:	39 c1                	cmp    %eax,%ecx
 804fd77:	0f 8d a7 00 00 00    	jge    804fe24 <_realloc_r+0x34c>
 804fd7d:	8b 44 24 28          	mov    0x28(%esp),%eax
 804fd81:	e9 f3 fd ff ff       	jmp    804fb79 <_realloc_r+0xa1>
 804fd86:	66 90                	xchg   %ax,%ax
 804fd88:	8b 41 0c             	mov    0xc(%ecx),%eax
 804fd8b:	8b 51 08             	mov    0x8(%ecx),%edx
 804fd8e:	89 42 0c             	mov    %eax,0xc(%edx)
 804fd91:	89 50 08             	mov    %edx,0x8(%eax)
 804fd94:	8d 79 08             	lea    0x8(%ecx),%edi
 804fd97:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804fd9b:	83 e8 04             	sub    $0x4,%eax
 804fd9e:	83 f8 24             	cmp    $0x24,%eax
 804fda1:	0f 87 cc 01 00 00    	ja     804ff73 <_realloc_r+0x49b>
 804fda7:	83 f8 13             	cmp    $0x13,%eax
 804fdaa:	0f 86 bc 01 00 00    	jbe    804ff6c <_realloc_r+0x494>
 804fdb0:	8b 13                	mov    (%ebx),%edx
 804fdb2:	89 51 08             	mov    %edx,0x8(%ecx)
 804fdb5:	8b 53 04             	mov    0x4(%ebx),%edx
 804fdb8:	89 51 0c             	mov    %edx,0xc(%ecx)
 804fdbb:	83 f8 1b             	cmp    $0x1b,%eax
 804fdbe:	0f 87 08 02 00 00    	ja     804ffcc <_realloc_r+0x4f4>
 804fdc4:	8d 41 10             	lea    0x10(%ecx),%eax
 804fdc7:	83 c3 08             	add    $0x8,%ebx
 804fdca:	8b 13                	mov    (%ebx),%edx
 804fdcc:	89 10                	mov    %edx,(%eax)
 804fdce:	8b 53 04             	mov    0x4(%ebx),%edx
 804fdd1:	89 50 04             	mov    %edx,0x4(%eax)
 804fdd4:	8b 53 08             	mov    0x8(%ebx),%edx
 804fdd7:	89 50 08             	mov    %edx,0x8(%eax)
 804fdda:	8b 51 04             	mov    0x4(%ecx),%edx
 804fddd:	89 fb                	mov    %edi,%ebx
 804fddf:	8b 7c 24 28          	mov    0x28(%esp),%edi
 804fde3:	e9 54 fe ff ff       	jmp    804fc3c <_realloc_r+0x164>
 804fde8:	8b 13                	mov    (%ebx),%edx
 804fdea:	89 17                	mov    %edx,(%edi)
 804fdec:	8b 53 04             	mov    0x4(%ebx),%edx
 804fdef:	89 57 04             	mov    %edx,0x4(%edi)
 804fdf2:	83 f8 1b             	cmp    $0x1b,%eax
 804fdf5:	0f 87 19 01 00 00    	ja     804ff14 <_realloc_r+0x43c>
 804fdfb:	8d 47 08             	lea    0x8(%edi),%eax
 804fdfe:	8d 53 08             	lea    0x8(%ebx),%edx
 804fe01:	e9 16 ff ff ff       	jmp    804fd1c <_realloc_r+0x244>
 804fe06:	66 90                	xchg   %ax,%ax
 804fe08:	89 e8                	mov    %ebp,%eax
 804fe0a:	8b 13                	mov    (%ebx),%edx
 804fe0c:	89 10                	mov    %edx,(%eax)
 804fe0e:	8b 53 04             	mov    0x4(%ebx),%edx
 804fe11:	89 50 04             	mov    %edx,0x4(%eax)
 804fe14:	8b 53 08             	mov    0x8(%ebx),%edx
 804fe17:	89 50 08             	mov    %edx,0x8(%eax)
 804fe1a:	8b 51 04             	mov    0x4(%ecx),%edx
 804fe1d:	89 eb                	mov    %ebp,%ebx
 804fe1f:	e9 18 fe ff ff       	jmp    804fc3c <_realloc_r+0x164>
 804fe24:	8b 44 24 20          	mov    0x20(%esp),%eax
 804fe28:	03 44 24 18          	add    0x18(%esp),%eax
 804fe2c:	a3 48 25 05 08       	mov    %eax,0x8052548
 804fe31:	2b 4c 24 18          	sub    0x18(%esp),%ecx
 804fe35:	83 c9 01             	or     $0x1,%ecx
 804fe38:	89 48 04             	mov    %ecx,0x4(%eax)
 804fe3b:	8b 43 fc             	mov    -0x4(%ebx),%eax
 804fe3e:	83 e0 01             	and    $0x1,%eax
 804fe41:	0b 44 24 18          	or     0x18(%esp),%eax
 804fe45:	89 43 fc             	mov    %eax,-0x4(%ebx)
 804fe48:	89 34 24             	mov    %esi,(%esp)
 804fe4b:	e8 74 d3 ff ff       	call   804d1c4 <__malloc_unlock>
 804fe50:	89 df                	mov    %ebx,%edi
 804fe52:	e9 07 fe ff ff       	jmp    804fc5e <_realloc_r+0x186>
 804fe57:	90                   	nop
 804fe58:	89 44 24 08          	mov    %eax,0x8(%esp)
 804fe5c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804fe60:	89 3c 24             	mov    %edi,(%esp)
 804fe63:	e8 98 fb ff ff       	call   804fa00 <memmove>
 804fe68:	e9 bf fe ff ff       	jmp    804fd2c <_realloc_r+0x254>
 804fe6d:	8d 76 00             	lea    0x0(%esi),%esi
 804fe70:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804fe74:	01 d0                	add    %edx,%eax
 804fe76:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804fe7a:	8b 44 24 18          	mov    0x18(%esp),%eax
 804fe7e:	83 c0 10             	add    $0x10,%eax
 804fe81:	39 44 24 2c          	cmp    %eax,0x2c(%esp)
 804fe85:	0f 8c 3d fe ff ff    	jl     804fcc8 <_realloc_r+0x1f0>
 804fe8b:	8b 41 0c             	mov    0xc(%ecx),%eax
 804fe8e:	8b 51 08             	mov    0x8(%ecx),%edx
 804fe91:	89 42 0c             	mov    %eax,0xc(%edx)
 804fe94:	89 50 08             	mov    %edx,0x8(%eax)
 804fe97:	8d 79 08             	lea    0x8(%ecx),%edi
 804fe9a:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 804fe9e:	83 e8 04             	sub    $0x4,%eax
 804fea1:	83 f8 24             	cmp    $0x24,%eax
 804fea4:	0f 87 73 01 00 00    	ja     805001d <_realloc_r+0x545>
 804feaa:	83 f8 13             	cmp    $0x13,%eax
 804fead:	0f 86 4c 01 00 00    	jbe    804ffff <_realloc_r+0x527>
 804feb3:	8b 13                	mov    (%ebx),%edx
 804feb5:	89 51 08             	mov    %edx,0x8(%ecx)
 804feb8:	8b 53 04             	mov    0x4(%ebx),%edx
 804febb:	89 51 0c             	mov    %edx,0xc(%ecx)
 804febe:	83 f8 1b             	cmp    $0x1b,%eax
 804fec1:	0f 87 73 01 00 00    	ja     805003a <_realloc_r+0x562>
 804fec7:	8d 41 10             	lea    0x10(%ecx),%eax
 804feca:	83 c3 08             	add    $0x8,%ebx
 804fecd:	8b 13                	mov    (%ebx),%edx
 804fecf:	89 10                	mov    %edx,(%eax)
 804fed1:	8b 53 04             	mov    0x4(%ebx),%edx
 804fed4:	89 50 04             	mov    %edx,0x4(%eax)
 804fed7:	8b 53 08             	mov    0x8(%ebx),%edx
 804feda:	89 50 08             	mov    %edx,0x8(%eax)
 804fedd:	8b 54 24 18          	mov    0x18(%esp),%edx
 804fee1:	01 ca                	add    %ecx,%edx
 804fee3:	89 15 48 25 05 08    	mov    %edx,0x8052548
 804fee9:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 804feed:	2b 44 24 18          	sub    0x18(%esp),%eax
 804fef1:	83 c8 01             	or     $0x1,%eax
 804fef4:	89 42 04             	mov    %eax,0x4(%edx)
 804fef7:	8b 41 04             	mov    0x4(%ecx),%eax
 804fefa:	83 e0 01             	and    $0x1,%eax
 804fefd:	0b 44 24 18          	or     0x18(%esp),%eax
 804ff01:	89 41 04             	mov    %eax,0x4(%ecx)
 804ff04:	89 34 24             	mov    %esi,(%esp)
 804ff07:	e8 b8 d2 ff ff       	call   804d1c4 <__malloc_unlock>
 804ff0c:	e9 4d fd ff ff       	jmp    804fc5e <_realloc_r+0x186>
 804ff11:	8d 76 00             	lea    0x0(%esi),%esi
 804ff14:	8b 53 08             	mov    0x8(%ebx),%edx
 804ff17:	89 57 08             	mov    %edx,0x8(%edi)
 804ff1a:	8b 53 0c             	mov    0xc(%ebx),%edx
 804ff1d:	89 57 0c             	mov    %edx,0xc(%edi)
 804ff20:	83 f8 24             	cmp    $0x24,%eax
 804ff23:	0f 84 8c 00 00 00    	je     804ffb5 <_realloc_r+0x4dd>
 804ff29:	8d 47 10             	lea    0x10(%edi),%eax
 804ff2c:	8d 53 10             	lea    0x10(%ebx),%edx
 804ff2f:	e9 e8 fd ff ff       	jmp    804fd1c <_realloc_r+0x244>
 804ff34:	8b 7f fc             	mov    -0x4(%edi),%edi
 804ff37:	83 e7 fc             	and    $0xfffffffc,%edi
 804ff3a:	03 7c 24 1c          	add    0x1c(%esp),%edi
 804ff3e:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 804ff42:	e9 f5 fc ff ff       	jmp    804fc3c <_realloc_r+0x164>
 804ff47:	90                   	nop
 804ff48:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ff4c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ff50:	89 2c 24             	mov    %ebp,(%esp)
 804ff53:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804ff57:	e8 a4 fa ff ff       	call   804fa00 <memmove>
 804ff5c:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 804ff60:	8b 51 04             	mov    0x4(%ecx),%edx
 804ff63:	89 eb                	mov    %ebp,%ebx
 804ff65:	e9 d2 fc ff ff       	jmp    804fc3c <_realloc_r+0x164>
 804ff6a:	66 90                	xchg   %ax,%ax
 804ff6c:	89 f8                	mov    %edi,%eax
 804ff6e:	e9 57 fe ff ff       	jmp    804fdca <_realloc_r+0x2f2>
 804ff73:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ff77:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804ff7b:	89 3c 24             	mov    %edi,(%esp)
 804ff7e:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804ff82:	e8 79 fa ff ff       	call   804fa00 <memmove>
 804ff87:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 804ff8b:	8b 51 04             	mov    0x4(%ecx),%edx
 804ff8e:	89 fb                	mov    %edi,%ebx
 804ff90:	8b 7c 24 28          	mov    0x28(%esp),%edi
 804ff94:	e9 a3 fc ff ff       	jmp    804fc3c <_realloc_r+0x164>
 804ff99:	8b 53 08             	mov    0x8(%ebx),%edx
 804ff9c:	89 51 10             	mov    %edx,0x10(%ecx)
 804ff9f:	8b 53 0c             	mov    0xc(%ebx),%edx
 804ffa2:	89 51 14             	mov    %edx,0x14(%ecx)
 804ffa5:	83 f8 24             	cmp    $0x24,%eax
 804ffa8:	74 3e                	je     804ffe8 <_realloc_r+0x510>
 804ffaa:	8d 41 18             	lea    0x18(%ecx),%eax
 804ffad:	83 c3 10             	add    $0x10,%ebx
 804ffb0:	e9 55 fe ff ff       	jmp    804fe0a <_realloc_r+0x332>
 804ffb5:	8b 43 10             	mov    0x10(%ebx),%eax
 804ffb8:	89 47 10             	mov    %eax,0x10(%edi)
 804ffbb:	8b 43 14             	mov    0x14(%ebx),%eax
 804ffbe:	89 47 14             	mov    %eax,0x14(%edi)
 804ffc1:	8d 47 18             	lea    0x18(%edi),%eax
 804ffc4:	8d 53 18             	lea    0x18(%ebx),%edx
 804ffc7:	e9 50 fd ff ff       	jmp    804fd1c <_realloc_r+0x244>
 804ffcc:	8b 53 08             	mov    0x8(%ebx),%edx
 804ffcf:	89 51 10             	mov    %edx,0x10(%ecx)
 804ffd2:	8b 53 0c             	mov    0xc(%ebx),%edx
 804ffd5:	89 51 14             	mov    %edx,0x14(%ecx)
 804ffd8:	83 f8 24             	cmp    $0x24,%eax
 804ffdb:	74 29                	je     8050006 <_realloc_r+0x52e>
 804ffdd:	8d 41 18             	lea    0x18(%ecx),%eax
 804ffe0:	83 c3 10             	add    $0x10,%ebx
 804ffe3:	e9 e2 fd ff ff       	jmp    804fdca <_realloc_r+0x2f2>
 804ffe8:	8b 43 10             	mov    0x10(%ebx),%eax
 804ffeb:	89 41 18             	mov    %eax,0x18(%ecx)
 804ffee:	8b 43 14             	mov    0x14(%ebx),%eax
 804fff1:	89 41 1c             	mov    %eax,0x1c(%ecx)
 804fff4:	8d 41 20             	lea    0x20(%ecx),%eax
 804fff7:	83 c3 18             	add    $0x18,%ebx
 804fffa:	e9 0b fe ff ff       	jmp    804fe0a <_realloc_r+0x332>
 804ffff:	89 f8                	mov    %edi,%eax
 8050001:	e9 c7 fe ff ff       	jmp    804fecd <_realloc_r+0x3f5>
 8050006:	8b 43 10             	mov    0x10(%ebx),%eax
 8050009:	89 41 18             	mov    %eax,0x18(%ecx)
 805000c:	8b 43 14             	mov    0x14(%ebx),%eax
 805000f:	89 41 1c             	mov    %eax,0x1c(%ecx)
 8050012:	8d 41 20             	lea    0x20(%ecx),%eax
 8050015:	83 c3 18             	add    $0x18,%ebx
 8050018:	e9 ad fd ff ff       	jmp    804fdca <_realloc_r+0x2f2>
 805001d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050021:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8050025:	89 3c 24             	mov    %edi,(%esp)
 8050028:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 805002c:	e8 cf f9 ff ff       	call   804fa00 <memmove>
 8050031:	8b 4c 24 14          	mov    0x14(%esp),%ecx
 8050035:	e9 a3 fe ff ff       	jmp    804fedd <_realloc_r+0x405>
 805003a:	8b 53 08             	mov    0x8(%ebx),%edx
 805003d:	89 51 10             	mov    %edx,0x10(%ecx)
 8050040:	8b 53 0c             	mov    0xc(%ebx),%edx
 8050043:	89 51 14             	mov    %edx,0x14(%ecx)
 8050046:	83 f8 24             	cmp    $0x24,%eax
 8050049:	74 0b                	je     8050056 <_realloc_r+0x57e>
 805004b:	8d 41 18             	lea    0x18(%ecx),%eax
 805004e:	83 c3 10             	add    $0x10,%ebx
 8050051:	e9 77 fe ff ff       	jmp    804fecd <_realloc_r+0x3f5>
 8050056:	8b 43 10             	mov    0x10(%ebx),%eax
 8050059:	89 41 18             	mov    %eax,0x18(%ecx)
 805005c:	8b 43 14             	mov    0x14(%ebx),%eax
 805005f:	89 41 1c             	mov    %eax,0x1c(%ecx)
 8050062:	8d 41 20             	lea    0x20(%ecx),%eax
 8050065:	83 c3 18             	add    $0x18,%ebx
 8050068:	e9 60 fe ff ff       	jmp    804fecd <_realloc_r+0x3f5>
 805006d:	66 90                	xchg   %ax,%ax
 805006f:	90                   	nop

08050070 <cleanup_glue>:
 8050070:	56                   	push   %esi
 8050071:	53                   	push   %ebx
 8050072:	83 ec 14             	sub    $0x14,%esp
 8050075:	8b 74 24 20          	mov    0x20(%esp),%esi
 8050079:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 805007d:	8b 03                	mov    (%ebx),%eax
 805007f:	85 c0                	test   %eax,%eax
 8050081:	74 0c                	je     805008f <cleanup_glue+0x1f>
 8050083:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050087:	89 34 24             	mov    %esi,(%esp)
 805008a:	e8 e1 ff ff ff       	call   8050070 <cleanup_glue>
 805008f:	89 5c 24 24          	mov    %ebx,0x24(%esp)
 8050093:	89 74 24 20          	mov    %esi,0x20(%esp)
 8050097:	83 c4 14             	add    $0x14,%esp
 805009a:	5b                   	pop    %ebx
 805009b:	5e                   	pop    %esi
 805009c:	e9 43 c4 ff ff       	jmp    804c4e4 <_free_r>
 80500a1:	8d 76 00             	lea    0x0(%esi),%esi

080500a4 <_reclaim_reent>:
 80500a4:	57                   	push   %edi
 80500a5:	56                   	push   %esi
 80500a6:	53                   	push   %ebx
 80500a7:	83 ec 10             	sub    $0x10,%esp
 80500aa:	8b 74 24 20          	mov    0x20(%esp),%esi
 80500ae:	3b 35 20 20 05 08    	cmp    0x8052020,%esi
 80500b4:	0f 84 98 00 00 00    	je     8050152 <_reclaim_reent+0xae>
 80500ba:	8b 56 4c             	mov    0x4c(%esi),%edx
 80500bd:	85 d2                	test   %edx,%edx
 80500bf:	74 3a                	je     80500fb <_reclaim_reent+0x57>
 80500c1:	31 c0                	xor    %eax,%eax
 80500c3:	31 ff                	xor    %edi,%edi
 80500c5:	8d 76 00             	lea    0x0(%esi),%esi
 80500c8:	8b 04 82             	mov    (%edx,%eax,4),%eax
 80500cb:	85 c0                	test   %eax,%eax
 80500cd:	74 18                	je     80500e7 <_reclaim_reent+0x43>
 80500cf:	90                   	nop
 80500d0:	8b 18                	mov    (%eax),%ebx
 80500d2:	89 44 24 04          	mov    %eax,0x4(%esp)
 80500d6:	89 34 24             	mov    %esi,(%esp)
 80500d9:	e8 06 c4 ff ff       	call   804c4e4 <_free_r>
 80500de:	89 d8                	mov    %ebx,%eax
 80500e0:	85 db                	test   %ebx,%ebx
 80500e2:	75 ec                	jne    80500d0 <_reclaim_reent+0x2c>
 80500e4:	8b 56 4c             	mov    0x4c(%esi),%edx
 80500e7:	47                   	inc    %edi
 80500e8:	89 f8                	mov    %edi,%eax
 80500ea:	83 ff 20             	cmp    $0x20,%edi
 80500ed:	75 d9                	jne    80500c8 <_reclaim_reent+0x24>
 80500ef:	89 54 24 04          	mov    %edx,0x4(%esp)
 80500f3:	89 34 24             	mov    %esi,(%esp)
 80500f6:	e8 e9 c3 ff ff       	call   804c4e4 <_free_r>
 80500fb:	8b 46 40             	mov    0x40(%esi),%eax
 80500fe:	85 c0                	test   %eax,%eax
 8050100:	74 0c                	je     805010e <_reclaim_reent+0x6a>
 8050102:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050106:	89 34 24             	mov    %esi,(%esp)
 8050109:	e8 d6 c3 ff ff       	call   804c4e4 <_free_r>
 805010e:	8b 86 48 01 00 00    	mov    0x148(%esi),%eax
 8050114:	85 c0                	test   %eax,%eax
 8050116:	74 20                	je     8050138 <_reclaim_reent+0x94>
 8050118:	8d be 4c 01 00 00    	lea    0x14c(%esi),%edi
 805011e:	39 f8                	cmp    %edi,%eax
 8050120:	74 16                	je     8050138 <_reclaim_reent+0x94>
 8050122:	66 90                	xchg   %ax,%ax
 8050124:	8b 18                	mov    (%eax),%ebx
 8050126:	89 44 24 04          	mov    %eax,0x4(%esp)
 805012a:	89 34 24             	mov    %esi,(%esp)
 805012d:	e8 b2 c3 ff ff       	call   804c4e4 <_free_r>
 8050132:	89 d8                	mov    %ebx,%eax
 8050134:	39 df                	cmp    %ebx,%edi
 8050136:	75 ec                	jne    8050124 <_reclaim_reent+0x80>
 8050138:	8b 46 54             	mov    0x54(%esi),%eax
 805013b:	85 c0                	test   %eax,%eax
 805013d:	74 0c                	je     805014b <_reclaim_reent+0xa7>
 805013f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050143:	89 34 24             	mov    %esi,(%esp)
 8050146:	e8 99 c3 ff ff       	call   804c4e4 <_free_r>
 805014b:	8b 46 38             	mov    0x38(%esi),%eax
 805014e:	85 c0                	test   %eax,%eax
 8050150:	75 07                	jne    8050159 <_reclaim_reent+0xb5>
 8050152:	83 c4 10             	add    $0x10,%esp
 8050155:	5b                   	pop    %ebx
 8050156:	5e                   	pop    %esi
 8050157:	5f                   	pop    %edi
 8050158:	c3                   	ret    
 8050159:	89 34 24             	mov    %esi,(%esp)
 805015c:	ff 56 3c             	call   *0x3c(%esi)
 805015f:	8b 86 e0 02 00 00    	mov    0x2e0(%esi),%eax
 8050165:	85 c0                	test   %eax,%eax
 8050167:	74 e9                	je     8050152 <_reclaim_reent+0xae>
 8050169:	89 44 24 04          	mov    %eax,0x4(%esp)
 805016d:	89 34 24             	mov    %esi,(%esp)
 8050170:	e8 fb fe ff ff       	call   8050070 <cleanup_glue>
 8050175:	83 c4 10             	add    $0x10,%esp
 8050178:	5b                   	pop    %ebx
 8050179:	5e                   	pop    %esi
 805017a:	5f                   	pop    %edi
 805017b:	c3                   	ret    

0805017c <_wrapup_reent>:
 805017c:	57                   	push   %edi
 805017d:	56                   	push   %esi
 805017e:	53                   	push   %ebx
 805017f:	8b 7c 24 10          	mov    0x10(%esp),%edi
 8050183:	85 ff                	test   %edi,%edi
 8050185:	74 39                	je     80501c0 <_wrapup_reent+0x44>
 8050187:	8b b7 48 01 00 00    	mov    0x148(%edi),%esi
 805018d:	85 f6                	test   %esi,%esi
 805018f:	74 1b                	je     80501ac <_wrapup_reent+0x30>
 8050191:	8d 76 00             	lea    0x0(%esi),%esi
 8050194:	8b 5e 04             	mov    0x4(%esi),%ebx
 8050197:	4b                   	dec    %ebx
 8050198:	78 0c                	js     80501a6 <_wrapup_reent+0x2a>
 805019a:	66 90                	xchg   %ax,%ax
 805019c:	ff 54 9e 08          	call   *0x8(%esi,%ebx,4)
 80501a0:	4b                   	dec    %ebx
 80501a1:	83 fb ff             	cmp    $0xffffffff,%ebx
 80501a4:	75 f6                	jne    805019c <_wrapup_reent+0x20>
 80501a6:	8b 36                	mov    (%esi),%esi
 80501a8:	85 f6                	test   %esi,%esi
 80501aa:	75 e8                	jne    8050194 <_wrapup_reent+0x18>
 80501ac:	8b 47 3c             	mov    0x3c(%edi),%eax
 80501af:	85 c0                	test   %eax,%eax
 80501b1:	74 09                	je     80501bc <_wrapup_reent+0x40>
 80501b3:	89 7c 24 10          	mov    %edi,0x10(%esp)
 80501b7:	5b                   	pop    %ebx
 80501b8:	5e                   	pop    %esi
 80501b9:	5f                   	pop    %edi
 80501ba:	ff e0                	jmp    *%eax
 80501bc:	5b                   	pop    %ebx
 80501bd:	5e                   	pop    %esi
 80501be:	5f                   	pop    %edi
 80501bf:	c3                   	ret    
 80501c0:	8b 3d 20 20 05 08    	mov    0x8052020,%edi
 80501c6:	eb bf                	jmp    8050187 <_wrapup_reent+0xb>

080501c8 <__swbuf_r>:
 80501c8:	57                   	push   %edi
 80501c9:	56                   	push   %esi
 80501ca:	53                   	push   %ebx
 80501cb:	83 ec 10             	sub    $0x10,%esp
 80501ce:	8b 74 24 20          	mov    0x20(%esp),%esi
 80501d2:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 80501d6:	85 f6                	test   %esi,%esi
 80501d8:	74 0b                	je     80501e5 <__swbuf_r+0x1d>
 80501da:	8b 46 38             	mov    0x38(%esi),%eax
 80501dd:	85 c0                	test   %eax,%eax
 80501df:	0f 84 cf 00 00 00    	je     80502b4 <__swbuf_r+0xec>
 80501e5:	8b 43 18             	mov    0x18(%ebx),%eax
 80501e8:	89 43 08             	mov    %eax,0x8(%ebx)
 80501eb:	8b 53 0c             	mov    0xc(%ebx),%edx
 80501ee:	f6 c2 08             	test   $0x8,%dl
 80501f1:	0f 84 a1 00 00 00    	je     8050298 <__swbuf_r+0xd0>
 80501f7:	8b 43 10             	mov    0x10(%ebx),%eax
 80501fa:	85 c0                	test   %eax,%eax
 80501fc:	0f 84 96 00 00 00    	je     8050298 <__swbuf_r+0xd0>
 8050202:	0f b6 7c 24 24       	movzbl 0x24(%esp),%edi
 8050207:	f6 c6 20             	test   $0x20,%dh
 805020a:	74 34                	je     8050240 <__swbuf_r+0x78>
 805020c:	8b 13                	mov    (%ebx),%edx
 805020e:	89 d1                	mov    %edx,%ecx
 8050210:	29 c1                	sub    %eax,%ecx
 8050212:	89 c8                	mov    %ecx,%eax
 8050214:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 8050217:	7d 42                	jge    805025b <__swbuf_r+0x93>
 8050219:	40                   	inc    %eax
 805021a:	ff 4b 08             	decl   0x8(%ebx)
 805021d:	89 f9                	mov    %edi,%ecx
 805021f:	88 0a                	mov    %cl,(%edx)
 8050221:	42                   	inc    %edx
 8050222:	89 13                	mov    %edx,(%ebx)
 8050224:	39 43 14             	cmp    %eax,0x14(%ebx)
 8050227:	74 57                	je     8050280 <__swbuf_r+0xb8>
 8050229:	f6 43 0c 01          	testb  $0x1,0xc(%ebx)
 805022d:	74 05                	je     8050234 <__swbuf_r+0x6c>
 805022f:	83 ff 0a             	cmp    $0xa,%edi
 8050232:	74 4c                	je     8050280 <__swbuf_r+0xb8>
 8050234:	89 f8                	mov    %edi,%eax
 8050236:	83 c4 10             	add    $0x10,%esp
 8050239:	5b                   	pop    %ebx
 805023a:	5e                   	pop    %esi
 805023b:	5f                   	pop    %edi
 805023c:	c3                   	ret    
 805023d:	8d 76 00             	lea    0x0(%esi),%esi
 8050240:	80 ce 20             	or     $0x20,%dh
 8050243:	66 89 53 0c          	mov    %dx,0xc(%ebx)
 8050247:	81 63 64 ff df ff ff 	andl   $0xffffdfff,0x64(%ebx)
 805024e:	8b 13                	mov    (%ebx),%edx
 8050250:	89 d1                	mov    %edx,%ecx
 8050252:	29 c1                	sub    %eax,%ecx
 8050254:	89 c8                	mov    %ecx,%eax
 8050256:	3b 4b 14             	cmp    0x14(%ebx),%ecx
 8050259:	7c be                	jl     8050219 <__swbuf_r+0x51>
 805025b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805025f:	89 34 24             	mov    %esi,(%esp)
 8050262:	e8 49 be ff ff       	call   804c0b0 <_fflush_r>
 8050267:	85 c0                	test   %eax,%eax
 8050269:	75 25                	jne    8050290 <__swbuf_r+0xc8>
 805026b:	8b 13                	mov    (%ebx),%edx
 805026d:	b0 01                	mov    $0x1,%al
 805026f:	ff 4b 08             	decl   0x8(%ebx)
 8050272:	89 f9                	mov    %edi,%ecx
 8050274:	88 0a                	mov    %cl,(%edx)
 8050276:	42                   	inc    %edx
 8050277:	89 13                	mov    %edx,(%ebx)
 8050279:	39 43 14             	cmp    %eax,0x14(%ebx)
 805027c:	75 ab                	jne    8050229 <__swbuf_r+0x61>
 805027e:	66 90                	xchg   %ax,%ax
 8050280:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8050284:	89 34 24             	mov    %esi,(%esp)
 8050287:	e8 24 be ff ff       	call   804c0b0 <_fflush_r>
 805028c:	85 c0                	test   %eax,%eax
 805028e:	74 a4                	je     8050234 <__swbuf_r+0x6c>
 8050290:	bf ff ff ff ff       	mov    $0xffffffff,%edi
 8050295:	eb 9d                	jmp    8050234 <__swbuf_r+0x6c>
 8050297:	90                   	nop
 8050298:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805029c:	89 34 24             	mov    %esi,(%esp)
 805029f:	e8 0c a5 ff ff       	call   804a7b0 <__swsetup_r>
 80502a4:	85 c0                	test   %eax,%eax
 80502a6:	75 e8                	jne    8050290 <__swbuf_r+0xc8>
 80502a8:	8b 53 0c             	mov    0xc(%ebx),%edx
 80502ab:	8b 43 10             	mov    0x10(%ebx),%eax
 80502ae:	e9 4f ff ff ff       	jmp    8050202 <__swbuf_r+0x3a>
 80502b3:	90                   	nop
 80502b4:	89 34 24             	mov    %esi,(%esp)
 80502b7:	e8 88 bf ff ff       	call   804c244 <__sinit>
 80502bc:	e9 24 ff ff ff       	jmp    80501e5 <__swbuf_r+0x1d>
 80502c1:	8d 76 00             	lea    0x0(%esi),%esi

080502c4 <__swbuf>:
 80502c4:	83 ec 1c             	sub    $0x1c,%esp
 80502c7:	8b 44 24 24          	mov    0x24(%esp),%eax
 80502cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80502cf:	8b 44 24 20          	mov    0x20(%esp),%eax
 80502d3:	89 44 24 04          	mov    %eax,0x4(%esp)
 80502d7:	a1 20 20 05 08       	mov    0x8052020,%eax
 80502dc:	89 04 24             	mov    %eax,(%esp)
 80502df:	e8 e4 fe ff ff       	call   80501c8 <__swbuf_r>
 80502e4:	83 c4 1c             	add    $0x1c,%esp
 80502e7:	c3                   	ret    

080502e8 <_wcrtomb_r>:
 80502e8:	55                   	push   %ebp
 80502e9:	57                   	push   %edi
 80502ea:	56                   	push   %esi
 80502eb:	53                   	push   %ebx
 80502ec:	83 ec 3c             	sub    $0x3c,%esp
 80502ef:	8b 74 24 50          	mov    0x50(%esp),%esi
 80502f3:	8b 5c 24 54          	mov    0x54(%esp),%ebx
 80502f7:	8b 7c 24 5c          	mov    0x5c(%esp),%edi
 80502fb:	85 db                	test   %ebx,%ebx
 80502fd:	74 3d                	je     805033c <_wcrtomb_r+0x54>
 80502ff:	8b 2d 48 29 05 08    	mov    0x8052948,%ebp
 8050305:	e8 62 c5 ff ff       	call   804c86c <__locale_charset>
 805030a:	89 7c 24 10          	mov    %edi,0x10(%esp)
 805030e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050312:	8b 44 24 58          	mov    0x58(%esp),%eax
 8050316:	89 44 24 08          	mov    %eax,0x8(%esp)
 805031a:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 805031e:	89 34 24             	mov    %esi,(%esp)
 8050321:	ff d5                	call   *%ebp
 8050323:	83 f8 ff             	cmp    $0xffffffff,%eax
 8050326:	75 0c                	jne    8050334 <_wcrtomb_r+0x4c>
 8050328:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
 805032e:	c7 06 8a 00 00 00    	movl   $0x8a,(%esi)
 8050334:	83 c4 3c             	add    $0x3c,%esp
 8050337:	5b                   	pop    %ebx
 8050338:	5e                   	pop    %esi
 8050339:	5f                   	pop    %edi
 805033a:	5d                   	pop    %ebp
 805033b:	c3                   	ret    
 805033c:	8b 1d 48 29 05 08    	mov    0x8052948,%ebx
 8050342:	e8 25 c5 ff ff       	call   804c86c <__locale_charset>
 8050347:	89 7c 24 10          	mov    %edi,0x10(%esp)
 805034b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805034f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8050356:	00 
 8050357:	8d 44 24 26          	lea    0x26(%esp),%eax
 805035b:	89 44 24 04          	mov    %eax,0x4(%esp)
 805035f:	89 34 24             	mov    %esi,(%esp)
 8050362:	ff d3                	call   *%ebx
 8050364:	eb bd                	jmp    8050323 <_wcrtomb_r+0x3b>
 8050366:	66 90                	xchg   %ax,%ax

08050368 <wcrtomb>:
 8050368:	57                   	push   %edi
 8050369:	56                   	push   %esi
 805036a:	53                   	push   %ebx
 805036b:	83 ec 30             	sub    $0x30,%esp
 805036e:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 8050372:	8b 74 24 48          	mov    0x48(%esp),%esi
 8050376:	85 db                	test   %ebx,%ebx
 8050378:	74 4e                	je     80503c8 <wcrtomb+0x60>
 805037a:	8b 3d 48 29 05 08    	mov    0x8052948,%edi
 8050380:	e8 e7 c4 ff ff       	call   804c86c <__locale_charset>
 8050385:	89 74 24 10          	mov    %esi,0x10(%esp)
 8050389:	89 44 24 0c          	mov    %eax,0xc(%esp)
 805038d:	8b 44 24 44          	mov    0x44(%esp),%eax
 8050391:	89 44 24 08          	mov    %eax,0x8(%esp)
 8050395:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8050399:	a1 20 20 05 08       	mov    0x8052020,%eax
 805039e:	89 04 24             	mov    %eax,(%esp)
 80503a1:	ff d7                	call   *%edi
 80503a3:	83 f8 ff             	cmp    $0xffffffff,%eax
 80503a6:	75 16                	jne    80503be <wcrtomb+0x56>
 80503a8:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
 80503ae:	a1 20 20 05 08       	mov    0x8052020,%eax
 80503b3:	c7 00 8a 00 00 00    	movl   $0x8a,(%eax)
 80503b9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80503be:	83 c4 30             	add    $0x30,%esp
 80503c1:	5b                   	pop    %ebx
 80503c2:	5e                   	pop    %esi
 80503c3:	5f                   	pop    %edi
 80503c4:	c3                   	ret    
 80503c5:	8d 76 00             	lea    0x0(%esi),%esi
 80503c8:	8b 1d 48 29 05 08    	mov    0x8052948,%ebx
 80503ce:	e8 99 c4 ff ff       	call   804c86c <__locale_charset>
 80503d3:	89 74 24 10          	mov    %esi,0x10(%esp)
 80503d7:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80503db:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80503e2:	00 
 80503e3:	8d 44 24 26          	lea    0x26(%esp),%eax
 80503e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80503eb:	a1 20 20 05 08       	mov    0x8052020,%eax
 80503f0:	89 04 24             	mov    %eax,(%esp)
 80503f3:	ff d3                	call   *%ebx
 80503f5:	eb ac                	jmp    80503a3 <wcrtomb+0x3b>
 80503f7:	90                   	nop

080503f8 <__ascii_wctomb>:
 80503f8:	8b 44 24 08          	mov    0x8(%esp),%eax
 80503fc:	8b 54 24 0c          	mov    0xc(%esp),%edx
 8050400:	85 c0                	test   %eax,%eax
 8050402:	74 10                	je     8050414 <__ascii_wctomb+0x1c>
 8050404:	81 fa ff 00 00 00    	cmp    $0xff,%edx
 805040a:	77 0c                	ja     8050418 <__ascii_wctomb+0x20>
 805040c:	88 10                	mov    %dl,(%eax)
 805040e:	b8 01 00 00 00       	mov    $0x1,%eax
 8050413:	c3                   	ret    
 8050414:	31 c0                	xor    %eax,%eax
 8050416:	c3                   	ret    
 8050417:	90                   	nop
 8050418:	8b 44 24 04          	mov    0x4(%esp),%eax
 805041c:	c7 00 8a 00 00 00    	movl   $0x8a,(%eax)
 8050422:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8050427:	c3                   	ret    

08050428 <_wctomb_r>:
 8050428:	53                   	push   %ebx
 8050429:	83 ec 28             	sub    $0x28,%esp
 805042c:	8b 1d 48 29 05 08    	mov    0x8052948,%ebx
 8050432:	e8 35 c4 ff ff       	call   804c86c <__locale_charset>
 8050437:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 805043b:	89 54 24 10          	mov    %edx,0x10(%esp)
 805043f:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8050443:	8b 44 24 38          	mov    0x38(%esp),%eax
 8050447:	89 44 24 08          	mov    %eax,0x8(%esp)
 805044b:	8b 44 24 34          	mov    0x34(%esp),%eax
 805044f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8050453:	8b 44 24 30          	mov    0x30(%esp),%eax
 8050457:	89 04 24             	mov    %eax,(%esp)
 805045a:	ff d3                	call   *%ebx
 805045c:	83 c4 28             	add    $0x28,%esp
 805045f:	5b                   	pop    %ebx
 8050460:	c3                   	ret    
