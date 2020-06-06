
sparc-elf.x:     file format elf32-sparc


Disassembly of section .text:

02001400 <_start>:
 2001400:	11 00 7e 00 	sethi  %hi(0x1f80000), %o0
 2001404:	90 12 20 64 	or  %o0, 0x64, %o0	! 1f80064 <_.tmp+0x1f80024>
 2001408:	92 10 20 01 	mov  1, %o1
 200140c:	d2 22 00 00 	st  %o1, [ %o0 ]
 2001410:	1d 00 80 3c 	sethi  %hi(0x200f000), %sp
 2001414:	9c 13 a1 20 	or  %sp, 0x120, %sp	! 200f120 <__end>
 2001418:	9c 03 bf 90 	add  %sp, -112, %sp
 200141c:	40 00 00 54 	call  200156c <_startmain>
 2001420:	01 00 00 00 	nop 

02001424 <__exit>:
 2001424:	11 00 7e 00 	sethi  %hi(0x1f80000), %o0
 2001428:	90 12 20 b0 	or  %o0, 0xb0, %o0	! 1f800b0 <_.tmp+0x1f80070>
 200142c:	92 10 20 01 	mov  1, %o1
 2001430:	d2 22 00 00 	st  %o1, [ %o0 ]
 2001434:	90 10 20 01 	mov  1, %o0
 2001438:	01 00 00 00 	nop 

0200143c <__read>:
 200143c:	11 00 7e 00 	sethi  %hi(0x1f80000), %o0
 2001440:	90 12 20 e0 	or  %o0, 0xe0, %o0	! 1f800e0 <_.tmp+0x1f800a0>
 2001444:	d4 02 00 00 	ld  [ %o0 ], %o2
 2001448:	d4 2a 40 00 	stb  %o2, [ %o1 ]
 200144c:	90 10 20 01 	mov  1, %o0
 2001450:	81 c3 e0 08 	retl 
 2001454:	01 00 00 00 	nop 

02001458 <__write>:
 2001458:	11 00 7e 00 	sethi  %hi(0x1f80000), %o0
 200145c:	90 12 20 e0 	or  %o0, 0xe0, %o0	! 1f800e0 <_.tmp+0x1f800a0>
 2001460:	d4 0a 40 00 	ldub  [ %o1 ], %o2
 2001464:	d4 22 00 00 	st  %o2, [ %o0 ]
 2001468:	90 10 20 01 	mov  1, %o0
 200146c:	81 c3 e0 08 	retl 
 2001470:	01 00 00 00 	nop 

02001474 <__open>:
 2001474:	81 c3 e0 08 	retl 
 2001478:	01 00 00 00 	nop 

0200147c <__close>:
 200147c:	81 c3 e0 08 	retl 
 2001480:	01 00 00 00 	nop 

02001484 <_exit>:
 2001484:	9d e3 bf a0 	save  %sp, -96, %sp
 2001488:	7f ff ff e7 	call  2001424 <__exit>
 200148c:	90 10 00 18 	mov  %i0, %o0
 2001490:	01 00 00 00 	nop 

02001494 <read>:
 2001494:	9d e3 bf a0 	save  %sp, -96, %sp
 2001498:	90 10 00 18 	mov  %i0, %o0
 200149c:	92 10 00 19 	mov  %i1, %o1
 20014a0:	7f ff ff e7 	call  200143c <__read>
 20014a4:	94 10 00 1a 	mov  %i2, %o2
 20014a8:	81 c7 e0 08 	ret 
 20014ac:	91 e8 00 08 	restore  %g0, %o0, %o0

020014b0 <write>:
 20014b0:	9d e3 bf a0 	save  %sp, -96, %sp
 20014b4:	90 10 00 18 	mov  %i0, %o0
 20014b8:	92 10 00 19 	mov  %i1, %o1
 20014bc:	7f ff ff e7 	call  2001458 <__write>
 20014c0:	94 10 00 1a 	mov  %i2, %o2
 20014c4:	81 c7 e0 08 	ret 
 20014c8:	91 e8 00 08 	restore  %g0, %o0, %o0

020014cc <open>:
 20014cc:	9d e3 bf a0 	save  %sp, -96, %sp
 20014d0:	90 10 00 18 	mov  %i0, %o0
 20014d4:	92 10 00 19 	mov  %i1, %o1
 20014d8:	7f ff ff e7 	call  2001474 <__open>
 20014dc:	94 10 00 1a 	mov  %i2, %o2
 20014e0:	81 c7 e0 08 	ret 
 20014e4:	91 e8 00 08 	restore  %g0, %o0, %o0

020014e8 <close>:
 20014e8:	9d e3 bf a0 	save  %sp, -96, %sp
 20014ec:	7f ff ff e4 	call  200147c <__close>
 20014f0:	90 10 00 18 	mov  %i0, %o0
 20014f4:	81 c7 e0 08 	ret 
 20014f8:	91 e8 00 08 	restore  %g0, %o0, %o0

020014fc <fstat>:
 20014fc:	9d e3 bf a0 	save  %sp, -96, %sp
 2001500:	90 10 00 19 	mov  %i1, %o0
 2001504:	92 10 20 00 	clr  %o1
 2001508:	40 00 00 34 	call  20015d8 <memset>
 200150c:	94 10 20 40 	mov  0x40, %o2
 2001510:	81 c7 e0 08 	ret 
 2001514:	91 e8 20 00 	restore  %g0, 0, %o0

02001518 <lseek>:
 2001518:	81 c3 e0 08 	retl 
 200151c:	90 10 00 09 	mov  %o1, %o0

02001520 <sbrk>:
 2001520:	05 00 80 29 	sethi  %hi(0x200a400), %g2
 2001524:	c2 00 a0 00 	ld  [ %g2 ], %g1
 2001528:	90 00 40 08 	add  %g1, %o0, %o0
 200152c:	d0 20 a0 00 	st  %o0, [ %g2 ]
 2001530:	81 c3 e0 08 	retl 
 2001534:	90 10 00 01 	mov  %g1, %o0

02001538 <isatty>:
 2001538:	81 c3 e0 08 	retl 
 200153c:	90 10 20 01 	mov  1, %o0

02001540 <main>:
 2001540:	9d e3 bf a0 	save  %sp, -96, %sp
 2001544:	11 00 80 28 	sethi  %hi(0x200a000), %o0
 2001548:	90 12 20 f0 	or  %o0, 0xf0, %o0	! 200a0f0 <__etext+0x4>
 200154c:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2001550:	d2 00 60 04 	ld  [ %g1 + 4 ], %o1	! 200a404 <data_value>
 2001554:	15 00 80 28 	sethi  %hi(0x200a000), %o2
 2001558:	40 00 00 73 	call  2001724 <printf>
 200155c:	94 12 a1 20 	or  %o2, 0x120, %o2	! 200a120 <__etext+0x34>
 2001560:	40 00 00 0f 	call  200159c <exit>
 2001564:	90 10 20 00 	clr  %o0
 2001568:	01 00 00 00 	nop 

0200156c <_startmain>:
 200156c:	9d e3 bf a0 	save  %sp, -96, %sp
 2001570:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2001574:	82 10 60 cc 	or  %g1, 0xcc, %g1	! 200accc <__edata>
 2001578:	90 10 00 01 	mov  %g1, %o0
 200157c:	92 10 20 00 	clr  %o1
 2001580:	15 00 80 3b 	sethi  %hi(0x200ec00), %o2
 2001584:	94 12 a1 14 	or  %o2, 0x114, %o2	! 200ed14 <__ebss>
 2001588:	40 00 00 14 	call  20015d8 <memset>
 200158c:	94 22 80 01 	sub  %o2, %g1, %o2
 2001590:	7f ff ff ec 	call  2001540 <main>
 2001594:	01 00 00 00 	nop 
 2001598:	01 00 00 00 	nop 

0200159c <exit>:
 200159c:	9d e3 bf a0 	save  %sp, -96, %sp
 20015a0:	92 10 20 00 	clr  %o1
 20015a4:	40 00 08 3f 	call  20036a0 <__call_exitprocs>
 20015a8:	90 10 00 18 	mov  %i0, %o0
 20015ac:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 20015b0:	d0 00 61 2c 	ld  [ %g1 + 0x12c ], %o0	! 200a12c <_global_impure_ptr>
 20015b4:	c2 02 20 3c 	ld  [ %o0 + 0x3c ], %g1
 20015b8:	80 a0 60 00 	cmp  %g1, 0
 20015bc:	02 80 00 04 	be  20015cc <exit+0x30>
 20015c0:	01 00 00 00 	nop 
 20015c4:	9f c0 40 00 	call  %g1
 20015c8:	01 00 00 00 	nop 
 20015cc:	7f ff ff ae 	call  2001484 <_exit>
 20015d0:	90 10 00 18 	mov  %i0, %o0
 20015d4:	01 00 00 00 	nop 

020015d8 <memset>:
 20015d8:	80 8a 20 03 	btst  3, %o0
 20015dc:	02 80 00 40 	be  20016dc <memset+0x104>
 20015e0:	80 a2 a0 00 	cmp  %o2, 0
 20015e4:	84 02 bf ff 	add  %o2, -1, %g2
 20015e8:	88 10 00 09 	mov  %o1, %g4
 20015ec:	12 80 00 06 	bne  2001604 <memset+0x2c>
 20015f0:	82 10 00 08 	mov  %o0, %g1
 20015f4:	30 80 00 3d 	b,a   20016e8 <memset+0x110>
 20015f8:	02 80 00 37 	be  20016d4 <memset+0xfc>
 20015fc:	86 00 bf ff 	add  %g2, -1, %g3
 2001600:	84 10 00 03 	mov  %g3, %g2
 2001604:	c8 28 40 00 	stb  %g4, [ %g1 ]
 2001608:	82 00 60 01 	inc  %g1
 200160c:	80 88 60 03 	btst  3, %g1
 2001610:	12 bf ff fa 	bne  20015f8 <memset+0x20>
 2001614:	80 a0 a0 00 	cmp  %g2, 0
 2001618:	80 a0 a0 03 	cmp  %g2, 3
 200161c:	08 80 00 27 	bleu  20016b8 <memset+0xe0>
 2001620:	80 a0 a0 00 	cmp  %g2, 0
 2001624:	88 0a 60 ff 	and  %o1, 0xff, %g4
 2001628:	99 29 20 08 	sll  %g4, 8, %o4
 200162c:	86 10 00 01 	mov  %g1, %g3
 2001630:	88 13 00 04 	or  %o4, %g4, %g4
 2001634:	9a 10 00 02 	mov  %g2, %o5
 2001638:	99 29 20 10 	sll  %g4, 0x10, %o4
 200163c:	80 a0 a0 0f 	cmp  %g2, 0xf
 2001640:	08 80 00 11 	bleu  2001684 <memset+0xac>
 2001644:	88 13 00 04 	or  %o4, %g4, %g4
 2001648:	c8 20 c0 00 	st  %g4, [ %g3 ]
 200164c:	c8 20 e0 04 	st  %g4, [ %g3 + 4 ]
 2001650:	c8 20 e0 08 	st  %g4, [ %g3 + 8 ]
 2001654:	c8 20 e0 0c 	st  %g4, [ %g3 + 0xc ]
 2001658:	9a 03 7f f0 	add  %o5, -16, %o5
 200165c:	80 a3 60 0f 	cmp  %o5, 0xf
 2001660:	18 bf ff fa 	bgu  2001648 <memset+0x70>
 2001664:	86 00 e0 10 	add  %g3, 0x10, %g3
 2001668:	86 00 bf f0 	add  %g2, -16, %g3
 200166c:	84 08 a0 0f 	and  %g2, 0xf, %g2
 2001670:	86 08 ff f0 	and  %g3, -16, %g3
 2001674:	80 a0 a0 03 	cmp  %g2, 3
 2001678:	86 00 e0 10 	add  %g3, 0x10, %g3
 200167c:	08 80 00 0e 	bleu  20016b4 <memset+0xdc>
 2001680:	82 00 40 03 	add  %g1, %g3, %g1
 2001684:	9a 10 00 01 	mov  %g1, %o5
 2001688:	86 10 00 02 	mov  %g2, %g3
 200168c:	c8 23 40 00 	st  %g4, [ %o5 ]
 2001690:	86 00 ff fc 	add  %g3, -4, %g3
 2001694:	80 a0 e0 03 	cmp  %g3, 3
 2001698:	18 bf ff fd 	bgu  200168c <memset+0xb4>
 200169c:	9a 03 60 04 	add  %o5, 4, %o5
 20016a0:	86 00 bf fc 	add  %g2, -4, %g3
 20016a4:	84 08 a0 03 	and  %g2, 3, %g2
 20016a8:	86 08 ff fc 	and  %g3, -4, %g3
 20016ac:	86 00 e0 04 	add  %g3, 4, %g3
 20016b0:	82 00 40 03 	add  %g1, %g3, %g1
 20016b4:	80 a0 a0 00 	cmp  %g2, 0
 20016b8:	02 80 00 07 	be  20016d4 <memset+0xfc>
 20016bc:	86 00 40 02 	add  %g1, %g2, %g3
 20016c0:	d2 28 40 00 	stb  %o1, [ %g1 ]
 20016c4:	82 00 60 01 	inc  %g1
 20016c8:	80 a0 40 03 	cmp  %g1, %g3
 20016cc:	32 bf ff fe 	bne,a   20016c4 <memset+0xec>
 20016d0:	d2 28 40 00 	stb  %o1, [ %g1 ]
 20016d4:	81 c3 e0 08 	retl 
 20016d8:	01 00 00 00 	nop 
 20016dc:	82 10 00 08 	mov  %o0, %g1
 20016e0:	10 bf ff ce 	b  2001618 <memset+0x40>
 20016e4:	84 10 00 0a 	mov  %o2, %g2
 20016e8:	81 c3 e0 08 	retl 
 20016ec:	01 00 00 00 	nop 

020016f0 <_printf_r>:
 20016f0:	9d e3 bf 98 	save  %sp, -104, %sp
 20016f4:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
 20016f8:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
 20016fc:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
 2001700:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
 2001704:	96 07 a0 4c 	add  %fp, 0x4c, %o3
 2001708:	d2 06 20 08 	ld  [ %i0 + 8 ], %o1
 200170c:	90 10 00 18 	mov  %i0, %o0
 2001710:	d6 27 bf fc 	st  %o3, [ %fp + -4 ]
 2001714:	40 00 00 6c 	call  20018c4 <_vfprintf_r>
 2001718:	94 10 00 19 	mov  %i1, %o2
 200171c:	81 c7 e0 08 	ret 
 2001720:	91 e8 00 08 	restore  %g0, %o0, %o0

02001724 <printf>:
 2001724:	9d e3 bf 98 	save  %sp, -104, %sp
 2001728:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 200172c:	f2 27 a0 48 	st  %i1, [ %fp + 0x48 ]
 2001730:	f4 27 a0 4c 	st  %i2, [ %fp + 0x4c ]
 2001734:	f6 27 a0 50 	st  %i3, [ %fp + 0x50 ]
 2001738:	f8 27 a0 54 	st  %i4, [ %fp + 0x54 ]
 200173c:	fa 27 a0 58 	st  %i5, [ %fp + 0x58 ]
 2001740:	96 07 a0 48 	add  %fp, 0x48, %o3
 2001744:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
 2001748:	94 10 00 18 	mov  %i0, %o2
 200174c:	d6 27 bf fc 	st  %o3, [ %fp + -4 ]
 2001750:	40 00 00 5d 	call  20018c4 <_vfprintf_r>
 2001754:	d2 02 20 08 	ld  [ %o0 + 8 ], %o1
 2001758:	81 c7 e0 08 	ret 
 200175c:	91 e8 00 08 	restore  %g0, %o0, %o0
 2001760:	02 00 28 3c 	unknown
 2001764:	02 00 1a 6c 	unknown
 2001768:	02 00 1a 6c 	unknown
 200176c:	02 00 28 54 	unknown
 2001770:	02 00 1a 6c 	unknown
 2001774:	02 00 1a 6c 	unknown
 2001778:	02 00 1a 6c 	unknown
 200177c:	02 00 1a 6c 	unknown
 2001780:	02 00 1a 6c 	unknown
 2001784:	02 00 1a 6c 	unknown
 2001788:	02 00 1c 38 	unknown
 200178c:	02 00 28 5c 	unknown
 2001790:	02 00 1a 6c 	unknown
 2001794:	02 00 1c 54 	unknown
 2001798:	02 00 27 6c 	unknown
 200179c:	02 00 1a 6c 	unknown
 20017a0:	02 00 28 b0 	unknown
 20017a4:	02 00 28 b8 	unknown
 20017a8:	02 00 28 b8 	unknown
 20017ac:	02 00 28 b8 	unknown
 20017b0:	02 00 28 b8 	unknown
 20017b4:	02 00 28 b8 	unknown
 20017b8:	02 00 28 b8 	unknown
 20017bc:	02 00 28 b8 	unknown
 20017c0:	02 00 28 b8 	unknown
 20017c4:	02 00 28 b8 	unknown
 20017c8:	02 00 1a 6c 	unknown
 20017cc:	02 00 1a 6c 	unknown
 20017d0:	02 00 1a 6c 	unknown
 20017d4:	02 00 1a 6c 	unknown
 20017d8:	02 00 1a 6c 	unknown
 20017dc:	02 00 1a 6c 	unknown
 20017e0:	02 00 1a 6c 	unknown
 20017e4:	02 00 1a 6c 	unknown
 20017e8:	02 00 1a 6c 	unknown
 20017ec:	02 00 1a 6c 	unknown
 20017f0:	02 00 1b c0 	unknown
 20017f4:	02 00 28 ec 	unknown
 20017f8:	02 00 1a 6c 	unknown
 20017fc:	02 00 28 ec 	unknown
 2001800:	02 00 1a 6c 	unknown
 2001804:	02 00 1a 6c 	unknown
 2001808:	02 00 1a 6c 	unknown
 200180c:	02 00 1a 6c 	unknown
 2001810:	02 00 28 34 	unknown
 2001814:	02 00 1a 6c 	unknown
 2001818:	02 00 1a 6c 	unknown
 200181c:	02 00 1b f0 	unknown
 2001820:	02 00 1a 6c 	unknown
 2001824:	02 00 1a 6c 	unknown
 2001828:	02 00 1a 6c 	unknown
 200182c:	02 00 1a 6c 	unknown
 2001830:	02 00 1a 6c 	unknown
 2001834:	02 00 1a d4 	unknown
 2001838:	02 00 1a 6c 	unknown
 200183c:	02 00 1a 6c 	unknown
 2001840:	02 00 28 64 	unknown
 2001844:	02 00 1a 6c 	unknown
 2001848:	02 00 1a 6c 	unknown
 200184c:	02 00 1a 6c 	unknown
 2001850:	02 00 1a 6c 	unknown
 2001854:	02 00 1a 6c 	unknown
 2001858:	02 00 1a 6c 	unknown
 200185c:	02 00 1a 6c 	unknown
 2001860:	02 00 1a 6c 	unknown
 2001864:	02 00 1a 6c 	unknown
 2001868:	02 00 1a 6c 	unknown
 200186c:	02 00 26 dc 	unknown
 2001870:	02 00 1b c4 	unknown
 2001874:	02 00 28 ec 	unknown
 2001878:	02 00 28 ec 	unknown
 200187c:	02 00 28 ec 	unknown
 2001880:	02 00 27 c8 	unknown
 2001884:	02 00 1b c4 	unknown
 2001888:	02 00 1a 6c 	unknown
 200188c:	02 00 1a 6c 	unknown
 2001890:	02 00 1a cc 	unknown
 2001894:	02 00 1a 6c 	unknown
 2001898:	02 00 28 10 	unknown
 200189c:	02 00 1b f4 	unknown
 20018a0:	02 00 26 a0 	unknown
 20018a4:	02 00 1a cc 	unknown
 20018a8:	02 00 1a 6c 	unknown
 20018ac:	02 00 27 08 	unknown
 20018b0:	02 00 1a 6c 	unknown
 20018b4:	02 00 1a d8 	unknown
 20018b8:	02 00 1a 6c 	unknown
 20018bc:	02 00 1a 6c 	unknown
 20018c0:	02 00 27 d0 	unknown

020018c4 <_vfprintf_r>:
 20018c4:	9d e3 ba 60 	save  %sp, -1440, %sp
 20018c8:	40 00 0f c9 	call  20057ec <_localeconv_r>
 20018cc:	90 10 00 18 	mov  %i0, %o0
 20018d0:	d0 02 00 00 	ld  [ %o0 ], %o0
 20018d4:	40 00 16 f8 	call  20074b4 <strlen>
 20018d8:	d0 27 bb 00 	st  %o0, [ %fp + -1280 ]
 20018dc:	c0 27 ba e8 	clr  [ %fp + -1304 ]
 20018e0:	d0 27 ba f0 	st  %o0, [ %fp + -1296 ]
 20018e4:	c0 27 ba ec 	clr  [ %fp + -1300 ]
 20018e8:	80 a6 20 00 	cmp  %i0, 0
 20018ec:	02 80 00 06 	be  2001904 <_vfprintf_r+0x40>
 20018f0:	b8 10 00 18 	mov  %i0, %i4
 20018f4:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 20018f8:	80 a0 60 00 	cmp  %g1, 0
 20018fc:	02 80 02 f8 	be  20024dc <_vfprintf_r+0xc18>
 2001900:	01 00 00 00 	nop 
 2001904:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2001908:	05 00 00 08 	sethi  %hi(0x2000), %g2
 200190c:	80 88 80 01 	btst  %g2, %g1
 2001910:	12 80 00 0a 	bne  2001938 <_vfprintf_r+0x74>
 2001914:	80 88 60 08 	btst  8, %g1
 2001918:	84 10 40 02 	or  %g1, %g2, %g2
 200191c:	c6 06 60 64 	ld  [ %i1 + 0x64 ], %g3
 2001920:	09 00 00 08 	sethi  %hi(0x2000), %g4
 2001924:	82 10 00 02 	mov  %g2, %g1
 2001928:	86 28 c0 04 	andn  %g3, %g4, %g3
 200192c:	c4 36 60 0c 	sth  %g2, [ %i1 + 0xc ]
 2001930:	c6 26 60 64 	st  %g3, [ %i1 + 0x64 ]
 2001934:	80 88 60 08 	btst  8, %g1
 2001938:	02 80 02 62 	be  20022c0 <_vfprintf_r+0x9fc>
 200193c:	90 10 00 1c 	mov  %i4, %o0
 2001940:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2001944:	80 a0 a0 00 	cmp  %g2, 0
 2001948:	02 80 02 5e 	be  20022c0 <_vfprintf_r+0x9fc>
 200194c:	84 08 60 1a 	and  %g1, 0x1a, %g2
 2001950:	80 a0 a0 0a 	cmp  %g2, 0xa
 2001954:	22 80 02 66 	be,a   20022ec <_vfprintf_r+0xa28>
 2001958:	c4 56 60 0e 	ldsh  [ %i1 + 0xe ], %g2
 200195c:	82 07 bb 98 	add  %fp, -1128, %g1
 2001960:	a4 07 bc 00 	add  %fp, -1024, %l2
 2001964:	c2 27 bb 24 	st  %g1, [ %fp + -1244 ]
 2001968:	84 07 bb 97 	add  %fp, -1129, %g2
 200196c:	c6 07 bb 24 	ld  [ %fp + -1244 ], %g3
 2001970:	21 00 80 28 	sethi  %hi(0x200a000), %l0
 2001974:	86 20 c0 02 	sub  %g3, %g2, %g3
 2001978:	3b 00 80 28 	sethi  %hi(0x200a000), %i5
 200197c:	c4 27 bb 20 	st  %g2, [ %fp + -1248 ]
 2001980:	e4 27 bb 64 	st  %l2, [ %fp + -1180 ]
 2001984:	c0 27 bb 6c 	clr  [ %fp + -1172 ]
 2001988:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 200198c:	c0 27 ba fc 	clr  [ %fp + -1284 ]
 2001990:	c0 27 bb 04 	clr  [ %fp + -1276 ]
 2001994:	c0 27 ba e4 	clr  [ %fp + -1308 ]
 2001998:	b0 10 20 00 	clr  %i0
 200199c:	82 10 00 12 	mov  %l2, %g1
 20019a0:	c6 27 ba e0 	st  %g3, [ %fp + -1312 ]
 20019a4:	a0 14 21 a0 	or  %l0, 0x1a0, %l0
 20019a8:	ba 17 61 b0 	or  %i5, 0x1b0, %i5
 20019ac:	c4 4e 80 00 	ldsb  [ %i2 ], %g2
 20019b0:	80 a0 a0 25 	cmp  %g2, 0x25
 20019b4:	02 80 00 1d 	be  2001a28 <_vfprintf_r+0x164>
 20019b8:	a2 10 00 1a 	mov  %i2, %l1
 20019bc:	80 a0 a0 00 	cmp  %g2, 0
 20019c0:	32 80 00 07 	bne,a   20019dc <_vfprintf_r+0x118>
 20019c4:	a2 04 60 01 	inc  %l1
 20019c8:	10 80 00 19 	b  2001a2c <_vfprintf_r+0x168>
 20019cc:	c4 4c 40 00 	ldsb  [ %l1 ], %g2
 20019d0:	02 80 00 08 	be  20019f0 <_vfprintf_r+0x12c>
 20019d4:	a6 a4 40 1a 	subcc  %l1, %i2, %l3
 20019d8:	a2 04 60 01 	inc  %l1
 20019dc:	c4 4c 40 00 	ldsb  [ %l1 ], %g2
 20019e0:	80 a0 a0 25 	cmp  %g2, 0x25
 20019e4:	12 bf ff fb 	bne  20019d0 <_vfprintf_r+0x10c>
 20019e8:	80 a0 a0 00 	cmp  %g2, 0
 20019ec:	a6 a4 40 1a 	subcc  %l1, %i2, %l3
 20019f0:	22 80 00 0f 	be,a   2001a2c <_vfprintf_r+0x168>
 20019f4:	c4 4c 40 00 	ldsb  [ %l1 ], %g2
 20019f8:	f4 20 40 00 	st  %i2, [ %g1 ]
 20019fc:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2001a00:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001a04:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001a08:	86 00 c0 13 	add  %g3, %l3, %g3
 2001a0c:	84 00 a0 01 	inc  %g2
 2001a10:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001a14:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001a18:	80 a0 a0 07 	cmp  %g2, 7
 2001a1c:	14 80 00 23 	bg  2001aa8 <_vfprintf_r+0x1e4>
 2001a20:	82 00 60 08 	add  %g1, 8, %g1
 2001a24:	b0 06 00 13 	add  %i0, %l3, %i0
 2001a28:	c4 4c 40 00 	ldsb  [ %l1 ], %g2
 2001a2c:	80 a0 a0 00 	cmp  %g2, 0
 2001a30:	02 80 00 8b 	be  2001c5c <_vfprintf_r+0x398>
 2001a34:	b4 04 60 01 	add  %l1, 1, %i2
 2001a38:	c0 2f bb 2f 	clrb  [ %fp + -1233 ]
 2001a3c:	ac 10 3f ff 	mov  -1, %l6
 2001a40:	c0 27 bb 10 	clr  [ %fp + -1264 ]
 2001a44:	a2 10 20 00 	clr  %l1
 2001a48:	09 00 80 05 	sethi  %hi(0x2001400), %g4
 2001a4c:	9e 10 20 2b 	mov  0x2b, %o7
 2001a50:	9a 10 20 20 	mov  0x20, %o5
 2001a54:	e6 4e 80 00 	ldsb  [ %i2 ], %l3
 2001a58:	b4 06 a0 01 	inc  %i2
 2001a5c:	86 04 ff e0 	add  %l3, -32, %g3
 2001a60:	80 a0 e0 58 	cmp  %g3, 0x58
 2001a64:	08 80 00 0d 	bleu  2001a98 <_vfprintf_r+0x1d4>
 2001a68:	98 11 23 60 	or  %g4, 0x360, %o4
 2001a6c:	80 a4 e0 00 	cmp  %l3, 0
 2001a70:	02 80 00 7b 	be  2001c5c <_vfprintf_r+0x398>
 2001a74:	98 10 20 01 	mov  1, %o4
 2001a78:	e6 2f bb 70 	stb  %l3, [ %fp + -1168 ]
 2001a7c:	c0 2f bb 2f 	clrb  [ %fp + -1233 ]
 2001a80:	aa 10 20 01 	mov  1, %l5
 2001a84:	d8 27 bb 18 	st  %o4, [ %fp + -1256 ]
 2001a88:	a8 07 bb 70 	add  %fp, -1168, %l4
 2001a8c:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2001a90:	10 80 00 94 	b  2001ce0 <_vfprintf_r+0x41c>
 2001a94:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2001a98:	87 28 e0 02 	sll  %g3, 2, %g3
 2001a9c:	c6 03 00 03 	ld  [ %o4 + %g3 ], %g3
 2001aa0:	81 c0 c0 00 	jmp  %g3
 2001aa4:	01 00 00 00 	nop 
 2001aa8:	90 10 00 1c 	mov  %i4, %o0
 2001aac:	92 10 00 19 	mov  %i1, %o1
 2001ab0:	40 00 17 0c 	call  20076e0 <__sprint_r>
 2001ab4:	94 07 bb 64 	add  %fp, -1180, %o2
 2001ab8:	80 a2 20 00 	cmp  %o0, 0
 2001abc:	12 80 00 70 	bne  2001c7c <_vfprintf_r+0x3b8>
 2001ac0:	82 10 00 12 	mov  %l2, %g1
 2001ac4:	10 bf ff d9 	b  2001a28 <_vfprintf_r+0x164>
 2001ac8:	b0 06 00 13 	add  %i0, %l3, %i0
 2001acc:	10 bf ff e2 	b  2001a54 <_vfprintf_r+0x190>
 2001ad0:	a2 14 60 10 	or  %l1, 0x10, %l1
 2001ad4:	a2 14 60 10 	or  %l1, 0x10, %l1
 2001ad8:	80 8c 60 10 	btst  0x10, %l1
 2001adc:	32 80 00 28 	bne,a   2001b7c <_vfprintf_r+0x2b8>
 2001ae0:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2001ae4:	80 8c 60 40 	btst  0x40, %l1
 2001ae8:	22 80 00 25 	be,a   2001b7c <_vfprintf_r+0x2b8>
 2001aec:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2001af0:	ea 16 e0 02 	lduh  [ %i3 + 2 ], %l5
 2001af4:	86 10 20 01 	mov  1, %g3
 2001af8:	80 a0 00 15 	cmp  %g0, %l5
 2001afc:	b6 06 e0 04 	add  %i3, 4, %i3
 2001b00:	88 40 20 00 	addx  %g0, 0, %g4
 2001b04:	c0 2f bb 2f 	clrb  [ %fp + -1233 ]
 2001b08:	80 a5 a0 00 	cmp  %l6, 0
 2001b0c:	36 80 00 03 	bge,a   2001b18 <_vfprintf_r+0x254>
 2001b10:	a2 0c 7f 7f 	and  %l1, -129, %l1
 2001b14:	80 a5 a0 00 	cmp  %l6, 0
 2001b18:	32 80 00 06 	bne,a   2001b30 <_vfprintf_r+0x26c>
 2001b1c:	86 08 e0 ff 	and  %g3, 0xff, %g3
 2001b20:	80 89 20 ff 	btst  0xff, %g4
 2001b24:	02 80 00 5c 	be  2001c94 <_vfprintf_r+0x3d0>
 2001b28:	80 88 e0 ff 	btst  0xff, %g3
 2001b2c:	86 08 e0 ff 	and  %g3, 0xff, %g3
 2001b30:	80 a0 e0 01 	cmp  %g3, 1
 2001b34:	02 80 03 aa 	be  20029dc <_vfprintf_r+0x1118>
 2001b38:	80 a0 e0 02 	cmp  %g3, 2
 2001b3c:	02 80 00 15 	be  2001b90 <_vfprintf_r+0x2cc>
 2001b40:	a8 07 bb 98 	add  %fp, -1128, %l4
 2001b44:	86 0d 60 07 	and  %l5, 7, %g3
 2001b48:	a8 05 3f ff 	add  %l4, -1, %l4
 2001b4c:	86 00 e0 30 	add  %g3, 0x30, %g3
 2001b50:	ab 35 60 03 	srl  %l5, 3, %l5
 2001b54:	80 a5 60 00 	cmp  %l5, 0
 2001b58:	12 bf ff fb 	bne  2001b44 <_vfprintf_r+0x280>
 2001b5c:	c6 2d 00 00 	stb  %g3, [ %l4 ]
 2001b60:	80 8c 60 01 	btst  1, %l1
 2001b64:	12 80 04 3f 	bne  2002c60 <_vfprintf_r+0x139c>
 2001b68:	88 10 00 14 	mov  %l4, %g4
 2001b6c:	da 07 bb 24 	ld  [ %fp + -1244 ], %o5
 2001b70:	9a 23 40 14 	sub  %o5, %l4, %o5
 2001b74:	10 80 00 4f 	b  2001cb0 <_vfprintf_r+0x3ec>
 2001b78:	da 27 bb 18 	st  %o5, [ %fp + -1256 ]
 2001b7c:	86 10 20 01 	mov  1, %g3
 2001b80:	80 a0 00 15 	cmp  %g0, %l5
 2001b84:	b6 06 e0 04 	add  %i3, 4, %i3
 2001b88:	10 bf ff df 	b  2001b04 <_vfprintf_r+0x240>
 2001b8c:	88 40 20 00 	addx  %g0, 0, %g4
 2001b90:	86 0d 60 0f 	and  %l5, 0xf, %g3
 2001b94:	a8 05 3f ff 	add  %l4, -1, %l4
 2001b98:	c4 07 bb 04 	ld  [ %fp + -1276 ], %g2
 2001b9c:	c6 08 80 03 	ldub  [ %g2 + %g3 ], %g3
 2001ba0:	ab 35 60 04 	srl  %l5, 4, %l5
 2001ba4:	80 a5 60 00 	cmp  %l5, 0
 2001ba8:	12 bf ff fa 	bne  2001b90 <_vfprintf_r+0x2cc>
 2001bac:	c6 2d 00 00 	stb  %g3, [ %l4 ]
 2001bb0:	c6 07 bb 24 	ld  [ %fp + -1244 ], %g3
 2001bb4:	86 20 c0 14 	sub  %g3, %l4, %g3
 2001bb8:	10 80 00 3e 	b  2001cb0 <_vfprintf_r+0x3ec>
 2001bbc:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 2001bc0:	a2 14 60 10 	or  %l1, 0x10, %l1
 2001bc4:	80 8c 60 10 	btst  0x10, %l1
 2001bc8:	02 80 02 a8 	be  2002668 <_vfprintf_r+0xda4>
 2001bcc:	80 8c 60 40 	btst  0x40, %l1
 2001bd0:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2001bd4:	b6 06 e0 04 	add  %i3, 4, %i3
 2001bd8:	80 a5 60 00 	cmp  %l5, 0
 2001bdc:	06 80 04 2b 	bl  2002c88 <_vfprintf_r+0x13c4>
 2001be0:	80 a0 00 15 	cmp  %g0, %l5
 2001be4:	86 10 20 01 	mov  1, %g3
 2001be8:	10 bf ff c8 	b  2001b08 <_vfprintf_r+0x244>
 2001bec:	88 40 20 00 	addx  %g0, 0, %g4
 2001bf0:	a2 14 60 10 	or  %l1, 0x10, %l1
 2001bf4:	80 8c 60 10 	btst  0x10, %l1
 2001bf8:	32 80 00 0b 	bne,a   2001c24 <_vfprintf_r+0x360>
 2001bfc:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2001c00:	80 8c 60 40 	btst  0x40, %l1
 2001c04:	22 80 00 08 	be,a   2001c24 <_vfprintf_r+0x360>
 2001c08:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2001c0c:	ea 16 e0 02 	lduh  [ %i3 + 2 ], %l5
 2001c10:	86 10 20 00 	clr  %g3
 2001c14:	80 a0 00 15 	cmp  %g0, %l5
 2001c18:	b6 06 e0 04 	add  %i3, 4, %i3
 2001c1c:	10 bf ff ba 	b  2001b04 <_vfprintf_r+0x240>
 2001c20:	88 40 20 00 	addx  %g0, 0, %g4
 2001c24:	86 10 20 00 	clr  %g3
 2001c28:	80 a0 00 15 	cmp  %g0, %l5
 2001c2c:	b6 06 e0 04 	add  %i3, 4, %i3
 2001c30:	10 bf ff b5 	b  2001b04 <_vfprintf_r+0x240>
 2001c34:	88 40 20 00 	addx  %g0, 0, %g4
 2001c38:	c4 06 c0 00 	ld  [ %i3 ], %g2
 2001c3c:	c4 27 bb 10 	st  %g2, [ %fp + -1264 ]
 2001c40:	80 a0 a0 00 	cmp  %g2, 0
 2001c44:	16 bf ff 84 	bge  2001a54 <_vfprintf_r+0x190>
 2001c48:	b6 06 e0 04 	add  %i3, 4, %i3
 2001c4c:	84 20 00 02 	neg  %g2
 2001c50:	c4 27 bb 10 	st  %g2, [ %fp + -1264 ]
 2001c54:	10 bf ff 80 	b  2001a54 <_vfprintf_r+0x190>
 2001c58:	a2 14 60 04 	or  %l1, 4, %l1
 2001c5c:	c2 07 bb 6c 	ld  [ %fp + -1172 ], %g1
 2001c60:	80 a0 60 00 	cmp  %g1, 0
 2001c64:	22 80 00 07 	be,a   2001c80 <_vfprintf_r+0x3bc>
 2001c68:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2001c6c:	90 10 00 1c 	mov  %i4, %o0
 2001c70:	92 10 00 19 	mov  %i1, %o1
 2001c74:	40 00 16 9b 	call  20076e0 <__sprint_r>
 2001c78:	94 07 bb 64 	add  %fp, -1180, %o2
 2001c7c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2001c80:	80 88 60 40 	btst  0x40, %g1
 2001c84:	12 80 01 12 	bne  20020cc <_vfprintf_r+0x808>
 2001c88:	01 00 00 00 	nop 
 2001c8c:	81 c7 e0 08 	ret 
 2001c90:	81 e8 00 00 	restore 
 2001c94:	32 80 00 06 	bne,a   2001cac <_vfprintf_r+0x3e8>
 2001c98:	c0 27 bb 18 	clr  [ %fp + -1256 ]
 2001c9c:	80 8c 60 01 	btst  1, %l1
 2001ca0:	12 80 02 55 	bne  20025f4 <_vfprintf_r+0xd30>
 2001ca4:	c8 07 ba e0 	ld  [ %fp + -1312 ], %g4
 2001ca8:	c0 27 bb 18 	clr  [ %fp + -1256 ]
 2001cac:	a8 07 bb 98 	add  %fp, -1128, %l4
 2001cb0:	ea 07 bb 18 	ld  [ %fp + -1256 ], %l5
 2001cb4:	80 a5 40 16 	cmp  %l5, %l6
 2001cb8:	26 80 00 02 	bl,a   2001cc0 <_vfprintf_r+0x3fc>
 2001cbc:	aa 10 00 16 	mov  %l6, %l5
 2001cc0:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 2001cc4:	ec 27 bb 08 	st  %l6, [ %fp + -1272 ]
 2001cc8:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2001ccc:	85 28 e0 18 	sll  %g3, 0x18, %g2
 2001cd0:	80 a0 a0 00 	cmp  %g2, 0
 2001cd4:	02 80 00 04 	be  2001ce4 <_vfprintf_r+0x420>
 2001cd8:	9a 8c 60 02 	andcc  %l1, 2, %o5
 2001cdc:	aa 05 60 01 	inc  %l5
 2001ce0:	9a 8c 60 02 	andcc  %l1, 2, %o5
 2001ce4:	02 80 00 03 	be  2001cf0 <_vfprintf_r+0x42c>
 2001ce8:	da 27 bb 14 	st  %o5, [ %fp + -1260 ]
 2001cec:	aa 05 60 02 	add  %l5, 2, %l5
 2001cf0:	84 8c 60 84 	andcc  %l1, 0x84, %g2
 2001cf4:	12 80 00 38 	bne  2001dd4 <_vfprintf_r+0x510>
 2001cf8:	c4 27 bb 0c 	st  %g2, [ %fp + -1268 ]
 2001cfc:	c6 07 bb 10 	ld  [ %fp + -1264 ], %g3
 2001d00:	ac 20 c0 15 	sub  %g3, %l5, %l6
 2001d04:	80 a5 a0 00 	cmp  %l6, 0
 2001d08:	04 80 00 33 	ble  2001dd4 <_vfprintf_r+0x510>
 2001d0c:	80 a5 a0 10 	cmp  %l6, 0x10
 2001d10:	e0 27 ba f4 	st  %l0, [ %fp + -1292 ]
 2001d14:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001d18:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001d1c:	14 80 00 08 	bg  2001d3c <_vfprintf_r+0x478>
 2001d20:	ae 10 20 10 	mov  0x10, %l7
 2001d24:	10 80 00 1c 	b  2001d94 <_vfprintf_r+0x4d0>
 2001d28:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2001d2c:	ac 05 bf f0 	add  %l6, -16, %l6
 2001d30:	80 a5 a0 10 	cmp  %l6, 0x10
 2001d34:	24 80 00 18 	ble,a   2001d94 <_vfprintf_r+0x4d0>
 2001d38:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2001d3c:	e0 20 40 00 	st  %l0, [ %g1 ]
 2001d40:	ee 20 60 04 	st  %l7, [ %g1 + 4 ]
 2001d44:	84 00 a0 01 	inc  %g2
 2001d48:	86 00 e0 10 	add  %g3, 0x10, %g3
 2001d4c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001d50:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001d54:	80 a0 a0 07 	cmp  %g2, 7
 2001d58:	04 bf ff f5 	ble  2001d2c <_vfprintf_r+0x468>
 2001d5c:	82 00 60 08 	add  %g1, 8, %g1
 2001d60:	90 10 00 1c 	mov  %i4, %o0
 2001d64:	92 10 00 19 	mov  %i1, %o1
 2001d68:	40 00 16 5e 	call  20076e0 <__sprint_r>
 2001d6c:	94 07 bb 64 	add  %fp, -1180, %o2
 2001d70:	80 a2 20 00 	cmp  %o0, 0
 2001d74:	12 bf ff c2 	bne  2001c7c <_vfprintf_r+0x3b8>
 2001d78:	ac 05 bf f0 	add  %l6, -16, %l6
 2001d7c:	82 10 00 12 	mov  %l2, %g1
 2001d80:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001d84:	80 a5 a0 10 	cmp  %l6, 0x10
 2001d88:	14 bf ff ed 	bg  2001d3c <_vfprintf_r+0x478>
 2001d8c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001d90:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2001d94:	c8 07 ba f4 	ld  [ %fp + -1292 ], %g4
 2001d98:	c8 20 40 00 	st  %g4, [ %g1 ]
 2001d9c:	84 00 a0 01 	inc  %g2
 2001da0:	86 00 c0 16 	add  %g3, %l6, %g3
 2001da4:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001da8:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001dac:	80 a0 a0 07 	cmp  %g2, 7
 2001db0:	04 80 00 0a 	ble  2001dd8 <_vfprintf_r+0x514>
 2001db4:	82 00 60 08 	add  %g1, 8, %g1
 2001db8:	90 10 00 1c 	mov  %i4, %o0
 2001dbc:	92 10 00 19 	mov  %i1, %o1
 2001dc0:	40 00 16 48 	call  20076e0 <__sprint_r>
 2001dc4:	94 07 bb 64 	add  %fp, -1180, %o2
 2001dc8:	80 a2 20 00 	cmp  %o0, 0
 2001dcc:	12 bf ff ac 	bne  2001c7c <_vfprintf_r+0x3b8>
 2001dd0:	82 10 00 12 	mov  %l2, %g1
 2001dd4:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001dd8:	c4 4f bb 2f 	ldsb  [ %fp + -1233 ], %g2
 2001ddc:	80 a0 a0 00 	cmp  %g2, 0
 2001de0:	02 80 00 0f 	be  2001e1c <_vfprintf_r+0x558>
 2001de4:	d8 07 bb 14 	ld  [ %fp + -1260 ], %o4
 2001de8:	84 07 bb 2f 	add  %fp, -1233, %g2
 2001dec:	c4 20 40 00 	st  %g2, [ %g1 ]
 2001df0:	84 10 20 01 	mov  1, %g2
 2001df4:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2001df8:	86 00 e0 01 	inc  %g3
 2001dfc:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001e00:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001e04:	84 00 a0 01 	inc  %g2
 2001e08:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001e0c:	80 a0 a0 07 	cmp  %g2, 7
 2001e10:	14 80 01 a1 	bg  2002494 <_vfprintf_r+0xbd0>
 2001e14:	82 00 60 08 	add  %g1, 8, %g1
 2001e18:	d8 07 bb 14 	ld  [ %fp + -1260 ], %o4
 2001e1c:	80 a3 20 00 	cmp  %o4, 0
 2001e20:	02 80 00 0f 	be  2001e5c <_vfprintf_r+0x598>
 2001e24:	da 07 bb 0c 	ld  [ %fp + -1268 ], %o5
 2001e28:	84 07 bb 30 	add  %fp, -1232, %g2
 2001e2c:	c4 20 40 00 	st  %g2, [ %g1 ]
 2001e30:	84 10 20 02 	mov  2, %g2
 2001e34:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2001e38:	86 00 e0 02 	add  %g3, 2, %g3
 2001e3c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001e40:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001e44:	84 00 a0 01 	inc  %g2
 2001e48:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001e4c:	80 a0 a0 07 	cmp  %g2, 7
 2001e50:	14 80 01 9a 	bg  20024b8 <_vfprintf_r+0xbf4>
 2001e54:	82 00 60 08 	add  %g1, 8, %g1
 2001e58:	da 07 bb 0c 	ld  [ %fp + -1268 ], %o5
 2001e5c:	80 a3 60 80 	cmp  %o5, 0x80
 2001e60:	02 80 00 e2 	be  20021e8 <_vfprintf_r+0x924>
 2001e64:	c4 07 bb 10 	ld  [ %fp + -1264 ], %g2
 2001e68:	d8 07 bb 08 	ld  [ %fp + -1272 ], %o4
 2001e6c:	da 07 bb 18 	ld  [ %fp + -1256 ], %o5
 2001e70:	ae 23 00 0d 	sub  %o4, %o5, %l7
 2001e74:	80 a5 e0 00 	cmp  %l7, 0
 2001e78:	04 80 00 33 	ble  2001f44 <_vfprintf_r+0x680>
 2001e7c:	80 a5 e0 10 	cmp  %l7, 0x10
 2001e80:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2001e84:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001e88:	14 80 00 08 	bg  2001ea8 <_vfprintf_r+0x5e4>
 2001e8c:	ac 10 20 10 	mov  0x10, %l6
 2001e90:	10 80 00 1c 	b  2001f00 <_vfprintf_r+0x63c>
 2001e94:	ee 20 60 04 	st  %l7, [ %g1 + 4 ]
 2001e98:	ae 05 ff f0 	add  %l7, -16, %l7
 2001e9c:	80 a5 e0 10 	cmp  %l7, 0x10
 2001ea0:	24 80 00 18 	ble,a   2001f00 <_vfprintf_r+0x63c>
 2001ea4:	ee 20 60 04 	st  %l7, [ %g1 + 4 ]
 2001ea8:	fa 20 40 00 	st  %i5, [ %g1 ]
 2001eac:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2001eb0:	84 00 a0 01 	inc  %g2
 2001eb4:	86 00 e0 10 	add  %g3, 0x10, %g3
 2001eb8:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001ebc:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001ec0:	80 a0 a0 07 	cmp  %g2, 7
 2001ec4:	04 bf ff f5 	ble  2001e98 <_vfprintf_r+0x5d4>
 2001ec8:	82 00 60 08 	add  %g1, 8, %g1
 2001ecc:	90 10 00 1c 	mov  %i4, %o0
 2001ed0:	92 10 00 19 	mov  %i1, %o1
 2001ed4:	40 00 16 03 	call  20076e0 <__sprint_r>
 2001ed8:	94 07 bb 64 	add  %fp, -1180, %o2
 2001edc:	80 a2 20 00 	cmp  %o0, 0
 2001ee0:	12 bf ff 67 	bne  2001c7c <_vfprintf_r+0x3b8>
 2001ee4:	ae 05 ff f0 	add  %l7, -16, %l7
 2001ee8:	82 10 00 12 	mov  %l2, %g1
 2001eec:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001ef0:	80 a5 e0 10 	cmp  %l7, 0x10
 2001ef4:	14 bf ff ed 	bg  2001ea8 <_vfprintf_r+0x5e4>
 2001ef8:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001efc:	ee 20 60 04 	st  %l7, [ %g1 + 4 ]
 2001f00:	c8 07 bb 14 	ld  [ %fp + -1260 ], %g4
 2001f04:	c8 20 40 00 	st  %g4, [ %g1 ]
 2001f08:	84 00 a0 01 	inc  %g2
 2001f0c:	86 00 c0 17 	add  %g3, %l7, %g3
 2001f10:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001f14:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001f18:	80 a0 a0 07 	cmp  %g2, 7
 2001f1c:	04 80 00 0a 	ble  2001f44 <_vfprintf_r+0x680>
 2001f20:	82 00 60 08 	add  %g1, 8, %g1
 2001f24:	90 10 00 1c 	mov  %i4, %o0
 2001f28:	92 10 00 19 	mov  %i1, %o1
 2001f2c:	40 00 15 ed 	call  20076e0 <__sprint_r>
 2001f30:	94 07 bb 64 	add  %fp, -1180, %o2
 2001f34:	80 a2 20 00 	cmp  %o0, 0
 2001f38:	12 bf ff 51 	bne  2001c7c <_vfprintf_r+0x3b8>
 2001f3c:	82 10 00 12 	mov  %l2, %g1
 2001f40:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2001f44:	80 8c 61 00 	btst  0x100, %l1
 2001f48:	12 80 00 63 	bne  20020d4 <_vfprintf_r+0x810>
 2001f4c:	80 a4 e0 65 	cmp  %l3, 0x65
 2001f50:	e8 20 40 00 	st  %l4, [ %g1 ]
 2001f54:	d8 07 bb 18 	ld  [ %fp + -1256 ], %o4
 2001f58:	d8 20 60 04 	st  %o4, [ %g1 + 4 ]
 2001f5c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001f60:	86 00 c0 0c 	add  %g3, %o4, %g3
 2001f64:	84 00 a0 01 	inc  %g2
 2001f68:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001f6c:	80 a0 a0 07 	cmp  %g2, 7
 2001f70:	14 80 00 45 	bg  2002084 <_vfprintf_r+0x7c0>
 2001f74:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001f78:	82 00 60 08 	add  %g1, 8, %g1
 2001f7c:	80 8c 60 04 	btst  4, %l1
 2001f80:	22 80 00 30 	be,a   2002040 <_vfprintf_r+0x77c>
 2001f84:	c2 07 bb 10 	ld  [ %fp + -1264 ], %g1
 2001f88:	c4 07 bb 10 	ld  [ %fp + -1264 ], %g2
 2001f8c:	a2 20 80 15 	sub  %g2, %l5, %l1
 2001f90:	80 a4 60 00 	cmp  %l1, 0
 2001f94:	04 80 00 2a 	ble  200203c <_vfprintf_r+0x778>
 2001f98:	80 a4 60 10 	cmp  %l1, 0x10
 2001f9c:	e0 27 ba f4 	st  %l0, [ %fp + -1292 ]
 2001fa0:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2001fa4:	14 80 00 08 	bg  2001fc4 <_vfprintf_r+0x700>
 2001fa8:	a6 10 20 10 	mov  0x10, %l3
 2001fac:	10 80 00 1c 	b  200201c <_vfprintf_r+0x758>
 2001fb0:	e2 20 60 04 	st  %l1, [ %g1 + 4 ]
 2001fb4:	a2 04 7f f0 	add  %l1, -16, %l1
 2001fb8:	80 a4 60 10 	cmp  %l1, 0x10
 2001fbc:	24 80 00 18 	ble,a   200201c <_vfprintf_r+0x758>
 2001fc0:	e2 20 60 04 	st  %l1, [ %g1 + 4 ]
 2001fc4:	e0 20 40 00 	st  %l0, [ %g1 ]
 2001fc8:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2001fcc:	84 00 a0 01 	inc  %g2
 2001fd0:	86 00 e0 10 	add  %g3, 0x10, %g3
 2001fd4:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2001fd8:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2001fdc:	80 a0 a0 07 	cmp  %g2, 7
 2001fe0:	04 bf ff f5 	ble  2001fb4 <_vfprintf_r+0x6f0>
 2001fe4:	82 00 60 08 	add  %g1, 8, %g1
 2001fe8:	90 10 00 1c 	mov  %i4, %o0
 2001fec:	92 10 00 19 	mov  %i1, %o1
 2001ff0:	40 00 15 bc 	call  20076e0 <__sprint_r>
 2001ff4:	94 07 bb 64 	add  %fp, -1180, %o2
 2001ff8:	80 a2 20 00 	cmp  %o0, 0
 2001ffc:	12 bf ff 20 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002000:	a2 04 7f f0 	add  %l1, -16, %l1
 2002004:	82 10 00 12 	mov  %l2, %g1
 2002008:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 200200c:	80 a4 60 10 	cmp  %l1, 0x10
 2002010:	14 bf ff ed 	bg  2001fc4 <_vfprintf_r+0x700>
 2002014:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002018:	e2 20 60 04 	st  %l1, [ %g1 + 4 ]
 200201c:	c8 07 ba f4 	ld  [ %fp + -1292 ], %g4
 2002020:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002024:	84 00 a0 01 	inc  %g2
 2002028:	86 04 40 03 	add  %l1, %g3, %g3
 200202c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002030:	80 a0 a0 07 	cmp  %g2, 7
 2002034:	14 80 01 92 	bg  200267c <_vfprintf_r+0xdb8>
 2002038:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 200203c:	c2 07 bb 10 	ld  [ %fp + -1264 ], %g1
 2002040:	80 a5 40 01 	cmp  %l5, %g1
 2002044:	26 80 00 02 	bl,a   200204c <_vfprintf_r+0x788>
 2002048:	aa 10 00 01 	mov  %g1, %l5
 200204c:	80 a0 e0 00 	cmp  %g3, 0
 2002050:	12 80 00 16 	bne  20020a8 <_vfprintf_r+0x7e4>
 2002054:	b0 06 00 15 	add  %i0, %l5, %i0
 2002058:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 200205c:	10 bf fe 54 	b  20019ac <_vfprintf_r+0xe8>
 2002060:	82 10 00 12 	mov  %l2, %g1
 2002064:	da 20 40 00 	st  %o5, [ %g1 ]
 2002068:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 200206c:	84 00 a0 01 	inc  %g2
 2002070:	86 00 c0 13 	add  %g3, %l3, %g3
 2002074:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002078:	80 a0 a0 07 	cmp  %g2, 7
 200207c:	04 bf ff bf 	ble  2001f78 <_vfprintf_r+0x6b4>
 2002080:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002084:	90 10 00 1c 	mov  %i4, %o0
 2002088:	92 10 00 19 	mov  %i1, %o1
 200208c:	40 00 15 95 	call  20076e0 <__sprint_r>
 2002090:	94 07 bb 64 	add  %fp, -1180, %o2
 2002094:	80 a2 20 00 	cmp  %o0, 0
 2002098:	12 bf fe f9 	bne  2001c7c <_vfprintf_r+0x3b8>
 200209c:	82 10 00 12 	mov  %l2, %g1
 20020a0:	10 bf ff b7 	b  2001f7c <_vfprintf_r+0x6b8>
 20020a4:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20020a8:	90 10 00 1c 	mov  %i4, %o0
 20020ac:	92 10 00 19 	mov  %i1, %o1
 20020b0:	40 00 15 8c 	call  20076e0 <__sprint_r>
 20020b4:	94 07 bb 64 	add  %fp, -1180, %o2
 20020b8:	80 a2 20 00 	cmp  %o0, 0
 20020bc:	12 bf fe f0 	bne  2001c7c <_vfprintf_r+0x3b8>
 20020c0:	82 10 00 12 	mov  %l2, %g1
 20020c4:	10 bf fe 3a 	b  20019ac <_vfprintf_r+0xe8>
 20020c8:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 20020cc:	81 c7 e0 08 	ret 
 20020d0:	91 e8 3f ff 	restore  %g0, -1, %o0
 20020d4:	24 80 00 af 	ble,a   2002390 <_vfprintf_r+0xacc>
 20020d8:	e8 20 40 00 	st  %l4, [ %g1 ]
 20020dc:	d1 1f ba e8 	ldd  [ %fp + -1304 ], %f8
 20020e0:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 20020e4:	d5 18 a1 98 	ldd  [ %g2 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 20020e8:	81 aa 0a 4a 	fcmpd  %f8, %f10
 20020ec:	01 00 00 00 	nop 
 20020f0:	13 80 00 ff 	fbe  20024ec <_vfprintf_r+0xc28>
 20020f4:	84 10 20 01 	mov  1, %g2	! 1 <_.xy-0x3>
 20020f8:	e6 07 bb 34 	ld  [ %fp + -1228 ], %l3
 20020fc:	80 a4 e0 00 	cmp  %l3, 0
 2002100:	04 80 03 68 	ble  2002ea0 <_vfprintf_r+0x15dc>
 2002104:	c4 07 ba fc 	ld  [ %fp + -1284 ], %g2
 2002108:	c8 07 ba f8 	ld  [ %fp + -1288 ], %g4
 200210c:	ae 05 00 02 	add  %l4, %g2, %l7
 2002110:	ac 25 c0 14 	sub  %l7, %l4, %l6
 2002114:	80 a5 80 04 	cmp  %l6, %g4
 2002118:	34 80 00 02 	bg,a   2002120 <_vfprintf_r+0x85c>
 200211c:	ac 10 00 04 	mov  %g4, %l6
 2002120:	80 a5 a0 00 	cmp  %l6, 0
 2002124:	04 80 00 0d 	ble  2002158 <_vfprintf_r+0x894>
 2002128:	84 38 00 16 	xnor  %g0, %l6, %g2
 200212c:	e8 20 40 00 	st  %l4, [ %g1 ]
 2002130:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002134:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002138:	86 00 c0 16 	add  %g3, %l6, %g3
 200213c:	84 00 a0 01 	inc  %g2
 2002140:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002144:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002148:	80 a0 a0 07 	cmp  %g2, 7
 200214c:	14 80 03 ec 	bg  20030fc <_vfprintf_r+0x1838>
 2002150:	82 00 60 08 	add  %g1, 8, %g1
 2002154:	84 38 00 16 	xnor  %g0, %l6, %g2
 2002158:	d8 07 ba f8 	ld  [ %fp + -1288 ], %o4
 200215c:	85 38 a0 1f 	sra  %g2, 0x1f, %g2
 2002160:	ac 0d 80 02 	and  %l6, %g2, %l6
 2002164:	ac 23 00 16 	sub  %o4, %l6, %l6
 2002168:	80 a5 a0 00 	cmp  %l6, 0
 200216c:	04 80 02 36 	ble  2002a44 <_vfprintf_r+0x1180>
 2002170:	80 a5 a0 10 	cmp  %l6, 0x10
 2002174:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2002178:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 200217c:	14 80 00 08 	bg  200219c <_vfprintf_r+0x8d8>
 2002180:	a6 10 20 10 	mov  0x10, %l3
 2002184:	10 80 02 1f 	b  2002a00 <_vfprintf_r+0x113c>
 2002188:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 200218c:	ac 05 bf f0 	add  %l6, -16, %l6
 2002190:	80 a5 a0 10 	cmp  %l6, 0x10
 2002194:	24 80 02 1b 	ble,a   2002a00 <_vfprintf_r+0x113c>
 2002198:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 200219c:	fa 20 40 00 	st  %i5, [ %g1 ]
 20021a0:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 20021a4:	84 00 a0 01 	inc  %g2
 20021a8:	86 00 e0 10 	add  %g3, 0x10, %g3
 20021ac:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 20021b0:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 20021b4:	80 a0 a0 07 	cmp  %g2, 7
 20021b8:	04 bf ff f5 	ble  200218c <_vfprintf_r+0x8c8>
 20021bc:	82 00 60 08 	add  %g1, 8, %g1
 20021c0:	90 10 00 1c 	mov  %i4, %o0
 20021c4:	92 10 00 19 	mov  %i1, %o1
 20021c8:	40 00 15 46 	call  20076e0 <__sprint_r>
 20021cc:	94 07 bb 64 	add  %fp, -1180, %o2
 20021d0:	80 a2 20 00 	cmp  %o0, 0
 20021d4:	12 bf fe aa 	bne  2001c7c <_vfprintf_r+0x3b8>
 20021d8:	82 10 00 12 	mov  %l2, %g1
 20021dc:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20021e0:	10 bf ff eb 	b  200218c <_vfprintf_r+0x8c8>
 20021e4:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 20021e8:	ac 20 80 15 	sub  %g2, %l5, %l6
 20021ec:	80 a5 a0 00 	cmp  %l6, 0
 20021f0:	04 bf ff 1e 	ble  2001e68 <_vfprintf_r+0x5a4>
 20021f4:	80 a5 a0 10 	cmp  %l6, 0x10
 20021f8:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 20021fc:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002200:	14 80 00 08 	bg  2002220 <_vfprintf_r+0x95c>
 2002204:	ae 10 20 10 	mov  0x10, %l7
 2002208:	10 80 00 1c 	b  2002278 <_vfprintf_r+0x9b4>
 200220c:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002210:	ac 05 bf f0 	add  %l6, -16, %l6
 2002214:	80 a5 a0 10 	cmp  %l6, 0x10
 2002218:	24 80 00 18 	ble,a   2002278 <_vfprintf_r+0x9b4>
 200221c:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002220:	fa 20 40 00 	st  %i5, [ %g1 ]
 2002224:	ee 20 60 04 	st  %l7, [ %g1 + 4 ]
 2002228:	84 00 a0 01 	inc  %g2
 200222c:	86 00 e0 10 	add  %g3, 0x10, %g3
 2002230:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002234:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002238:	80 a0 a0 07 	cmp  %g2, 7
 200223c:	04 bf ff f5 	ble  2002210 <_vfprintf_r+0x94c>
 2002240:	82 00 60 08 	add  %g1, 8, %g1
 2002244:	90 10 00 1c 	mov  %i4, %o0
 2002248:	92 10 00 19 	mov  %i1, %o1
 200224c:	40 00 15 25 	call  20076e0 <__sprint_r>
 2002250:	94 07 bb 64 	add  %fp, -1180, %o2
 2002254:	80 a2 20 00 	cmp  %o0, 0
 2002258:	12 bf fe 89 	bne  2001c7c <_vfprintf_r+0x3b8>
 200225c:	ac 05 bf f0 	add  %l6, -16, %l6
 2002260:	82 10 00 12 	mov  %l2, %g1
 2002264:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002268:	80 a5 a0 10 	cmp  %l6, 0x10
 200226c:	14 bf ff ed 	bg  2002220 <_vfprintf_r+0x95c>
 2002270:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002274:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002278:	c8 07 bb 14 	ld  [ %fp + -1260 ], %g4
 200227c:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002280:	84 00 a0 01 	inc  %g2
 2002284:	86 00 c0 16 	add  %g3, %l6, %g3
 2002288:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 200228c:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002290:	80 a0 a0 07 	cmp  %g2, 7
 2002294:	04 bf fe f5 	ble  2001e68 <_vfprintf_r+0x5a4>
 2002298:	82 00 60 08 	add  %g1, 8, %g1
 200229c:	90 10 00 1c 	mov  %i4, %o0
 20022a0:	92 10 00 19 	mov  %i1, %o1
 20022a4:	40 00 15 0f 	call  20076e0 <__sprint_r>
 20022a8:	94 07 bb 64 	add  %fp, -1180, %o2
 20022ac:	80 a2 20 00 	cmp  %o0, 0
 20022b0:	12 bf fe 73 	bne  2001c7c <_vfprintf_r+0x3b8>
 20022b4:	82 10 00 12 	mov  %l2, %g1
 20022b8:	10 bf fe ec 	b  2001e68 <_vfprintf_r+0x5a4>
 20022bc:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20022c0:	40 00 04 9e 	call  2003538 <__swsetup_r>
 20022c4:	92 10 00 19 	mov  %i1, %o1
 20022c8:	80 a2 20 00 	cmp  %o0, 0
 20022cc:	12 bf ff 80 	bne  20020cc <_vfprintf_r+0x808>
 20022d0:	01 00 00 00 	nop 
 20022d4:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20022d8:	84 08 60 1a 	and  %g1, 0x1a, %g2
 20022dc:	80 a0 a0 0a 	cmp  %g2, 0xa
 20022e0:	32 bf fd a0 	bne,a   2001960 <_vfprintf_r+0x9c>
 20022e4:	82 07 bb 98 	add  %fp, -1128, %g1
 20022e8:	c4 56 60 0e 	ldsh  [ %i1 + 0xe ], %g2
 20022ec:	80 a0 a0 00 	cmp  %g2, 0
 20022f0:	06 bf fd 9b 	bl  200195c <_vfprintf_r+0x98>
 20022f4:	c6 16 60 0e 	lduh  [ %i1 + 0xe ], %g3
 20022f8:	f0 06 60 1c 	ld  [ %i1 + 0x1c ], %i0
 20022fc:	88 07 bc 00 	add  %fp, -1024, %g4
 2002300:	84 10 24 00 	mov  0x400, %g2
 2002304:	82 08 7f fd 	and  %g1, -3, %g1
 2002308:	de 06 60 64 	ld  [ %i1 + 0x64 ], %o7
 200230c:	fa 06 60 24 	ld  [ %i1 + 0x24 ], %i5
 2002310:	f0 27 bb b4 	st  %i0, [ %fp + -1100 ]
 2002314:	c2 37 bb a4 	sth  %g1, [ %fp + -1116 ]
 2002318:	de 27 bb fc 	st  %o7, [ %fp + -1028 ]
 200231c:	c6 37 bb a6 	sth  %g3, [ %fp + -1114 ]
 2002320:	fa 27 bb bc 	st  %i5, [ %fp + -1092 ]
 2002324:	c8 27 bb 98 	st  %g4, [ %fp + -1128 ]
 2002328:	c8 27 bb a8 	st  %g4, [ %fp + -1112 ]
 200232c:	c4 27 bb a0 	st  %g2, [ %fp + -1120 ]
 2002330:	c4 27 bb ac 	st  %g2, [ %fp + -1108 ]
 2002334:	c0 27 bb b0 	clr  [ %fp + -1104 ]
 2002338:	90 10 00 1c 	mov  %i4, %o0
 200233c:	92 07 bb 98 	add  %fp, -1128, %o1
 2002340:	94 10 00 1a 	mov  %i2, %o2
 2002344:	7f ff fd 60 	call  20018c4 <_vfprintf_r>
 2002348:	96 10 00 1b 	mov  %i3, %o3
 200234c:	b0 92 20 00 	orcc  %o0, 0, %i0
 2002350:	06 80 00 07 	bl  200236c <_vfprintf_r+0xaa8>
 2002354:	90 10 00 1c 	mov  %i4, %o0
 2002358:	40 00 0b 06 	call  2004f70 <_fflush_r>
 200235c:	92 07 bb 98 	add  %fp, -1128, %o1
 2002360:	80 a2 20 00 	cmp  %o0, 0
 2002364:	32 80 00 02 	bne,a   200236c <_vfprintf_r+0xaa8>
 2002368:	b0 10 3f ff 	mov  -1, %i0
 200236c:	c2 17 bb a4 	lduh  [ %fp + -1116 ], %g1
 2002370:	80 88 60 40 	btst  0x40, %g1
 2002374:	02 80 01 98 	be  20029d4 <_vfprintf_r+0x1110>
 2002378:	01 00 00 00 	nop 
 200237c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2002380:	82 10 60 40 	or  %g1, 0x40, %g1
 2002384:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2002388:	81 c7 e0 08 	ret 
 200238c:	81 e8 00 00 	restore 
 2002390:	84 10 20 01 	mov  1, %g2
 2002394:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2002398:	86 00 e0 01 	inc  %g3
 200239c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 20023a0:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 20023a4:	84 00 a0 01 	inc  %g2
 20023a8:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 20023ac:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 20023b0:	80 a3 20 01 	cmp  %o4, 1
 20023b4:	04 80 01 77 	ble  2002990 <_vfprintf_r+0x10cc>
 20023b8:	80 8c 60 01 	btst  1, %l1
 20023bc:	80 a0 a0 07 	cmp  %g2, 7
 20023c0:	14 80 01 f9 	bg  2002ba4 <_vfprintf_r+0x12e0>
 20023c4:	82 00 60 08 	add  %g1, 8, %g1
 20023c8:	c8 07 bb 00 	ld  [ %fp + -1280 ], %g4
 20023cc:	c8 20 40 00 	st  %g4, [ %g1 ]
 20023d0:	c8 07 ba f0 	ld  [ %fp + -1296 ], %g4
 20023d4:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 20023d8:	84 00 a0 01 	inc  %g2
 20023dc:	86 00 c0 04 	add  %g3, %g4, %g3
 20023e0:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 20023e4:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 20023e8:	80 a0 a0 07 	cmp  %g2, 7
 20023ec:	14 80 02 02 	bg  2002bf4 <_vfprintf_r+0x1330>
 20023f0:	82 00 60 08 	add  %g1, 8, %g1
 20023f4:	d1 1f ba e8 	ldd  [ %fp + -1304 ], %f8
 20023f8:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 20023fc:	d5 19 21 98 	ldd  [ %g4 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 2002400:	81 aa 0a 4a 	fcmpd  %f8, %f10
 2002404:	01 00 00 00 	nop 
 2002408:	03 80 00 80 	fbne  2002608 <_vfprintf_r+0xd44>
 200240c:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 2002410:	da 07 ba fc 	ld  [ %fp + -1284 ], %o5
 2002414:	a6 03 7f ff 	add  %o5, -1, %l3
 2002418:	80 a4 e0 00 	cmp  %l3, 0
 200241c:	04 80 00 86 	ble  2002634 <_vfprintf_r+0xd70>
 2002420:	80 a4 e0 10 	cmp  %l3, 0x10
 2002424:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2002428:	14 80 00 08 	bg  2002448 <_vfprintf_r+0xb84>
 200242c:	a8 10 20 10 	mov  0x10, %l4
 2002430:	10 80 01 e7 	b  2002bcc <_vfprintf_r+0x1308>
 2002434:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2002438:	a6 04 ff f0 	add  %l3, -16, %l3
 200243c:	80 a4 e0 10 	cmp  %l3, 0x10
 2002440:	24 80 01 e3 	ble,a   2002bcc <_vfprintf_r+0x1308>
 2002444:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2002448:	fa 20 40 00 	st  %i5, [ %g1 ]
 200244c:	e8 20 60 04 	st  %l4, [ %g1 + 4 ]
 2002450:	84 00 a0 01 	inc  %g2
 2002454:	86 00 e0 10 	add  %g3, 0x10, %g3
 2002458:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 200245c:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002460:	80 a0 a0 07 	cmp  %g2, 7
 2002464:	04 bf ff f5 	ble  2002438 <_vfprintf_r+0xb74>
 2002468:	82 00 60 08 	add  %g1, 8, %g1
 200246c:	90 10 00 1c 	mov  %i4, %o0
 2002470:	92 10 00 19 	mov  %i1, %o1
 2002474:	40 00 14 9b 	call  20076e0 <__sprint_r>
 2002478:	94 07 bb 64 	add  %fp, -1180, %o2
 200247c:	80 a2 20 00 	cmp  %o0, 0
 2002480:	12 bf fd ff 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002484:	82 10 00 12 	mov  %l2, %g1
 2002488:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 200248c:	10 bf ff eb 	b  2002438 <_vfprintf_r+0xb74>
 2002490:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002494:	90 10 00 1c 	mov  %i4, %o0
 2002498:	92 10 00 19 	mov  %i1, %o1
 200249c:	40 00 14 91 	call  20076e0 <__sprint_r>
 20024a0:	94 07 bb 64 	add  %fp, -1180, %o2
 20024a4:	80 a2 20 00 	cmp  %o0, 0
 20024a8:	12 bf fd f5 	bne  2001c7c <_vfprintf_r+0x3b8>
 20024ac:	82 10 00 12 	mov  %l2, %g1
 20024b0:	10 bf fe 5a 	b  2001e18 <_vfprintf_r+0x554>
 20024b4:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20024b8:	90 10 00 1c 	mov  %i4, %o0
 20024bc:	92 10 00 19 	mov  %i1, %o1
 20024c0:	40 00 14 88 	call  20076e0 <__sprint_r>
 20024c4:	94 07 bb 64 	add  %fp, -1180, %o2
 20024c8:	80 a2 20 00 	cmp  %o0, 0
 20024cc:	12 bf fd ec 	bne  2001c7c <_vfprintf_r+0x3b8>
 20024d0:	82 10 00 12 	mov  %l2, %g1
 20024d4:	10 bf fe 61 	b  2001e58 <_vfprintf_r+0x594>
 20024d8:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20024dc:	40 00 0b 07 	call  20050f8 <__sinit>
 20024e0:	90 10 00 18 	mov  %i0, %o0
 20024e4:	10 bf fd 09 	b  2001908 <_vfprintf_r+0x44>
 20024e8:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20024ec:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 20024f0:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 20024f4:	88 11 21 90 	or  %g4, 0x190, %g4
 20024f8:	c8 20 40 00 	st  %g4, [ %g1 ]
 20024fc:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002500:	86 00 e0 01 	inc  %g3
 2002504:	84 00 a0 01 	inc  %g2
 2002508:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 200250c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002510:	80 a0 a0 07 	cmp  %g2, 7
 2002514:	14 80 02 5a 	bg  2002e7c <_vfprintf_r+0x15b8>
 2002518:	82 00 60 08 	add  %g1, 8, %g1
 200251c:	c4 07 bb 34 	ld  [ %fp + -1228 ], %g2
 2002520:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 2002524:	80 a0 80 0c 	cmp  %g2, %o4
 2002528:	06 80 00 06 	bl  2002540 <_vfprintf_r+0xc7c>
 200252c:	c4 07 bb 00 	ld  [ %fp + -1280 ], %g2
 2002530:	80 8c 60 01 	btst  1, %l1
 2002534:	02 bf fe 93 	be  2001f80 <_vfprintf_r+0x6bc>
 2002538:	80 8c 60 04 	btst  4, %l1
 200253c:	c4 07 bb 00 	ld  [ %fp + -1280 ], %g2
 2002540:	c8 07 ba f0 	ld  [ %fp + -1296 ], %g4
 2002544:	c4 20 40 00 	st  %g2, [ %g1 ]
 2002548:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 200254c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002550:	86 00 c0 04 	add  %g3, %g4, %g3
 2002554:	84 00 a0 01 	inc  %g2
 2002558:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 200255c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002560:	80 a0 a0 07 	cmp  %g2, 7
 2002564:	14 80 02 b5 	bg  2003038 <_vfprintf_r+0x1774>
 2002568:	82 00 60 08 	add  %g1, 8, %g1
 200256c:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 2002570:	a6 03 3f ff 	add  %o4, -1, %l3
 2002574:	80 a4 e0 00 	cmp  %l3, 0
 2002578:	04 bf fe 81 	ble  2001f7c <_vfprintf_r+0x6b8>
 200257c:	80 a4 e0 10 	cmp  %l3, 0x10
 2002580:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2002584:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002588:	14 80 00 08 	bg  20025a8 <_vfprintf_r+0xce4>
 200258c:	a8 10 20 10 	mov  0x10, %l4
 2002590:	10 bf fe b5 	b  2002064 <_vfprintf_r+0x7a0>
 2002594:	da 07 bb 14 	ld  [ %fp + -1260 ], %o5
 2002598:	a6 04 ff f0 	add  %l3, -16, %l3
 200259c:	80 a4 e0 10 	cmp  %l3, 0x10
 20025a0:	04 bf fe b1 	ble  2002064 <_vfprintf_r+0x7a0>
 20025a4:	da 07 bb 14 	ld  [ %fp + -1260 ], %o5
 20025a8:	fa 20 40 00 	st  %i5, [ %g1 ]
 20025ac:	e8 20 60 04 	st  %l4, [ %g1 + 4 ]
 20025b0:	84 00 a0 01 	inc  %g2
 20025b4:	86 00 e0 10 	add  %g3, 0x10, %g3
 20025b8:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 20025bc:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 20025c0:	80 a0 a0 07 	cmp  %g2, 7
 20025c4:	04 bf ff f5 	ble  2002598 <_vfprintf_r+0xcd4>
 20025c8:	82 00 60 08 	add  %g1, 8, %g1
 20025cc:	90 10 00 1c 	mov  %i4, %o0
 20025d0:	92 10 00 19 	mov  %i1, %o1
 20025d4:	40 00 14 43 	call  20076e0 <__sprint_r>
 20025d8:	94 07 bb 64 	add  %fp, -1180, %o2
 20025dc:	80 a2 20 00 	cmp  %o0, 0
 20025e0:	12 bf fd a7 	bne  2001c7c <_vfprintf_r+0x3b8>
 20025e4:	82 10 00 12 	mov  %l2, %g1
 20025e8:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20025ec:	10 bf ff eb 	b  2002598 <_vfprintf_r+0xcd4>
 20025f0:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 20025f4:	86 10 20 30 	mov  0x30, %g3
 20025f8:	c8 27 bb 18 	st  %g4, [ %fp + -1256 ]
 20025fc:	c6 2f bb 97 	stb  %g3, [ %fp + -1129 ]
 2002600:	10 bf fd ac 	b  2001cb0 <_vfprintf_r+0x3ec>
 2002604:	a8 07 bb 97 	add  %fp, -1129, %l4
 2002608:	a8 05 20 01 	inc  %l4
 200260c:	88 03 3f ff 	add  %o4, -1, %g4
 2002610:	e8 20 40 00 	st  %l4, [ %g1 ]
 2002614:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 2002618:	84 00 a0 01 	inc  %g2
 200261c:	86 00 c0 04 	add  %g3, %g4, %g3
 2002620:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002624:	80 a0 a0 07 	cmp  %g2, 7
 2002628:	14 80 00 de 	bg  20029a0 <_vfprintf_r+0x10dc>
 200262c:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002630:	82 00 60 08 	add  %g1, 8, %g1
 2002634:	c8 07 ba e4 	ld  [ %fp + -1308 ], %g4
 2002638:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 200263c:	88 07 bb 40 	add  %fp, -1216, %g4
 2002640:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002644:	84 00 a0 01 	inc  %g2
 2002648:	c8 07 ba e4 	ld  [ %fp + -1308 ], %g4
 200264c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002650:	86 00 c0 04 	add  %g3, %g4, %g3
 2002654:	80 a0 a0 07 	cmp  %g2, 7
 2002658:	04 bf fe 48 	ble  2001f78 <_vfprintf_r+0x6b4>
 200265c:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002660:	10 bf fe 8a 	b  2002088 <_vfprintf_r+0x7c4>
 2002664:	90 10 00 1c 	mov  %i4, %o0
 2002668:	22 bf fd 5b 	be,a   2001bd4 <_vfprintf_r+0x310>
 200266c:	ea 06 c0 00 	ld  [ %i3 ], %l5
 2002670:	ea 56 e0 02 	ldsh  [ %i3 + 2 ], %l5
 2002674:	10 bf fd 59 	b  2001bd8 <_vfprintf_r+0x314>
 2002678:	b6 06 e0 04 	add  %i3, 4, %i3
 200267c:	90 10 00 1c 	mov  %i4, %o0
 2002680:	92 10 00 19 	mov  %i1, %o1
 2002684:	40 00 14 17 	call  20076e0 <__sprint_r>
 2002688:	94 07 bb 64 	add  %fp, -1180, %o2
 200268c:	80 a2 20 00 	cmp  %o0, 0
 2002690:	12 bf fd 7b 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002694:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002698:	10 bf fe 6a 	b  2002040 <_vfprintf_r+0x77c>
 200269c:	c2 07 bb 10 	ld  [ %fp + -1264 ], %g1
 20026a0:	86 10 20 30 	mov  0x30, %g3
 20026a4:	c6 2f bb 30 	stb  %g3, [ %fp + -1232 ]
 20026a8:	86 10 20 78 	mov  0x78, %g3
 20026ac:	c6 2f bb 31 	stb  %g3, [ %fp + -1231 ]
 20026b0:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 20026b4:	86 10 e1 70 	or  %g3, 0x170, %g3	! 200a170 <_global_impure_ptr+0x44>
 20026b8:	ea 06 c0 00 	ld  [ %i3 ], %l5
 20026bc:	c6 27 bb 04 	st  %g3, [ %fp + -1276 ]
 20026c0:	80 a0 00 15 	cmp  %g0, %l5
 20026c4:	b6 06 e0 04 	add  %i3, 4, %i3
 20026c8:	88 40 20 00 	addx  %g0, 0, %g4
 20026cc:	a2 14 60 02 	or  %l1, 2, %l1
 20026d0:	86 10 20 02 	mov  2, %g3
 20026d4:	10 bf fd 0c 	b  2001b04 <_vfprintf_r+0x240>
 20026d8:	a6 10 20 78 	mov  0x78, %l3
 20026dc:	c4 06 c0 00 	ld  [ %i3 ], %g2
 20026e0:	86 10 20 01 	mov  1, %g3
 20026e4:	c0 2f bb 2f 	clrb  [ %fp + -1233 ]
 20026e8:	c4 2f bb 70 	stb  %g2, [ %fp + -1168 ]
 20026ec:	b6 06 e0 04 	add  %i3, 4, %i3
 20026f0:	aa 10 20 01 	mov  1, %l5
 20026f4:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 20026f8:	a8 07 bb 70 	add  %fp, -1168, %l4
 20026fc:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002700:	10 bf fd 78 	b  2001ce0 <_vfprintf_r+0x41c>
 2002704:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2002708:	c0 2f bb 2f 	clrb  [ %fp + -1233 ]
 200270c:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2002710:	80 a5 20 00 	cmp  %l4, 0
 2002714:	02 80 02 93 	be  2003160 <_vfprintf_r+0x189c>
 2002718:	b6 06 e0 04 	add  %i3, 4, %i3
 200271c:	80 a5 a0 00 	cmp  %l6, 0
 2002720:	06 80 02 6c 	bl  20030d0 <_vfprintf_r+0x180c>
 2002724:	90 10 00 14 	mov  %l4, %o0
 2002728:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 200272c:	92 10 20 00 	clr  %o1
 2002730:	40 00 0e 71 	call  20060f4 <memchr>
 2002734:	94 10 00 16 	mov  %l6, %o2
 2002738:	80 a2 20 00 	cmp  %o0, 0
 200273c:	02 80 00 06 	be  2002754 <_vfprintf_r+0xe90>
 2002740:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002744:	90 22 00 14 	sub  %o0, %l4, %o0
 2002748:	80 a2 00 16 	cmp  %o0, %l6
 200274c:	04 80 02 12 	ble  2002f94 <_vfprintf_r+0x16d0>
 2002750:	d0 27 bb 18 	st  %o0, [ %fp + -1256 ]
 2002754:	aa 10 00 16 	mov  %l6, %l5
 2002758:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 200275c:	ec 27 bb 18 	st  %l6, [ %fp + -1256 ]
 2002760:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002764:	10 bf fd 5a 	b  2001ccc <_vfprintf_r+0x408>
 2002768:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 200276c:	e6 4e 80 00 	ldsb  [ %i2 ], %l3
 2002770:	80 a4 e0 2a 	cmp  %l3, 0x2a
 2002774:	02 80 03 50 	be  20034b4 <_vfprintf_r+0x1bf0>
 2002778:	b4 06 a0 01 	inc  %i2
 200277c:	86 04 ff d0 	add  %l3, -48, %g3
 2002780:	84 10 20 00 	clr  %g2
 2002784:	80 a0 e0 09 	cmp  %g3, 9
 2002788:	18 bf fc b5 	bgu  2001a5c <_vfprintf_r+0x198>
 200278c:	ac 10 20 00 	clr  %l6
 2002790:	99 28 a0 01 	sll  %g2, 1, %o4
 2002794:	e6 4e 80 00 	ldsb  [ %i2 ], %l3
 2002798:	85 28 a0 03 	sll  %g2, 3, %g2
 200279c:	84 03 00 02 	add  %o4, %g2, %g2
 20027a0:	84 00 c0 02 	add  %g3, %g2, %g2
 20027a4:	86 04 ff d0 	add  %l3, -48, %g3
 20027a8:	80 a0 e0 09 	cmp  %g3, 9
 20027ac:	08 bf ff f9 	bleu  2002790 <_vfprintf_r+0xecc>
 20027b0:	b4 06 a0 01 	inc  %i2
 20027b4:	ac 90 a0 00 	orcc  %g2, 0, %l6
 20027b8:	26 bf fc a9 	bl,a   2001a5c <_vfprintf_r+0x198>
 20027bc:	ac 10 3f ff 	mov  -1, %l6
 20027c0:	10 bf fc a8 	b  2001a60 <_vfprintf_r+0x19c>
 20027c4:	86 04 ff e0 	add  %l3, -32, %g3
 20027c8:	10 bf fc a3 	b  2001a54 <_vfprintf_r+0x190>
 20027cc:	a2 14 60 40 	or  %l1, 0x40, %l1
 20027d0:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 20027d4:	86 10 e1 70 	or  %g3, 0x170, %g3	! 200a170 <_global_impure_ptr+0x44>
 20027d8:	80 8c 60 10 	btst  0x10, %l1
 20027dc:	12 80 00 27 	bne  2002878 <_vfprintf_r+0xfb4>
 20027e0:	c6 27 bb 04 	st  %g3, [ %fp + -1276 ]
 20027e4:	80 8c 60 40 	btst  0x40, %l1
 20027e8:	22 80 00 25 	be,a   200287c <_vfprintf_r+0xfb8>
 20027ec:	ea 06 c0 00 	ld  [ %i3 ], %l5
 20027f0:	ea 16 e0 02 	lduh  [ %i3 + 2 ], %l5
 20027f4:	80 8c 60 01 	btst  1, %l1
 20027f8:	12 80 00 24 	bne  2002888 <_vfprintf_r+0xfc4>
 20027fc:	b6 06 e0 04 	add  %i3, 4, %i3
 2002800:	80 a0 00 15 	cmp  %g0, %l5
 2002804:	86 10 20 02 	mov  2, %g3
 2002808:	10 bf fc bf 	b  2001b04 <_vfprintf_r+0x240>
 200280c:	88 40 20 00 	addx  %g0, 0, %g4
 2002810:	80 8c 60 10 	btst  0x10, %l1
 2002814:	12 80 00 6d 	bne  20029c8 <_vfprintf_r+0x1104>
 2002818:	c4 06 c0 00 	ld  [ %i3 ], %g2
 200281c:	80 8c 60 40 	btst  0x40, %l1
 2002820:	02 80 00 6a 	be  20029c8 <_vfprintf_r+0x1104>
 2002824:	01 00 00 00 	nop 
 2002828:	b6 06 e0 04 	add  %i3, 4, %i3
 200282c:	10 bf fc 60 	b  20019ac <_vfprintf_r+0xe8>
 2002830:	f0 30 80 00 	sth  %i0, [ %g2 ]
 2002834:	10 bf fc 88 	b  2001a54 <_vfprintf_r+0x190>
 2002838:	a2 14 60 08 	or  %l1, 8, %l1
 200283c:	c6 4f bb 2f 	ldsb  [ %fp + -1233 ], %g3
 2002840:	80 a0 e0 00 	cmp  %g3, 0
 2002844:	22 bf fc 84 	be,a   2001a54 <_vfprintf_r+0x190>
 2002848:	da 2f bb 2f 	stb  %o5, [ %fp + -1233 ]
 200284c:	10 bf fc 83 	b  2001a58 <_vfprintf_r+0x194>
 2002850:	e6 4e 80 00 	ldsb  [ %i2 ], %l3
 2002854:	10 bf fc 80 	b  2001a54 <_vfprintf_r+0x190>
 2002858:	a2 14 60 01 	or  %l1, 1, %l1
 200285c:	10 bf fc 7e 	b  2001a54 <_vfprintf_r+0x190>
 2002860:	de 2f bb 2f 	stb  %o7, [ %fp + -1233 ]
 2002864:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 2002868:	86 10 e1 58 	or  %g3, 0x158, %g3	! 200a158 <_global_impure_ptr+0x2c>
 200286c:	80 8c 60 10 	btst  0x10, %l1
 2002870:	02 bf ff dd 	be  20027e4 <_vfprintf_r+0xf20>
 2002874:	c6 27 bb 04 	st  %g3, [ %fp + -1276 ]
 2002878:	ea 06 c0 00 	ld  [ %i3 ], %l5
 200287c:	80 8c 60 01 	btst  1, %l1
 2002880:	02 bf ff e0 	be  2002800 <_vfprintf_r+0xf3c>
 2002884:	b6 06 e0 04 	add  %i3, 4, %i3
 2002888:	80 a5 60 00 	cmp  %l5, 0
 200288c:	22 80 01 06 	be,a   2002ca4 <_vfprintf_r+0x13e0>
 2002890:	88 10 20 00 	clr  %g4
 2002894:	86 10 20 30 	mov  0x30, %g3
 2002898:	e6 2f bb 31 	stb  %l3, [ %fp + -1231 ]
 200289c:	c6 2f bb 30 	stb  %g3, [ %fp + -1232 ]
 20028a0:	a2 14 60 02 	or  %l1, 2, %l1
 20028a4:	88 10 20 01 	mov  1, %g4
 20028a8:	10 bf fc 97 	b  2001b04 <_vfprintf_r+0x240>
 20028ac:	86 10 20 02 	mov  2, %g3
 20028b0:	10 bf fc 69 	b  2001a54 <_vfprintf_r+0x190>
 20028b4:	a2 14 60 80 	or  %l1, 0x80, %l1
 20028b8:	ae 10 20 00 	clr  %l7
 20028bc:	86 04 ff d0 	add  %l3, -48, %g3
 20028c0:	99 2d e0 01 	sll  %l7, 1, %o4
 20028c4:	e6 4e 80 00 	ldsb  [ %i2 ], %l3
 20028c8:	af 2d e0 03 	sll  %l7, 3, %l7
 20028cc:	ae 03 00 17 	add  %o4, %l7, %l7
 20028d0:	ae 05 c0 03 	add  %l7, %g3, %l7
 20028d4:	86 04 ff d0 	add  %l3, -48, %g3
 20028d8:	80 a0 e0 09 	cmp  %g3, 9
 20028dc:	08 bf ff f9 	bleu  20028c0 <_vfprintf_r+0xffc>
 20028e0:	b4 06 a0 01 	inc  %i2
 20028e4:	10 bf fc 5e 	b  2001a5c <_vfprintf_r+0x198>
 20028e8:	ee 27 bb 10 	st  %l7, [ %fp + -1264 ]
 20028ec:	80 8c 60 08 	btst  8, %l1
 20028f0:	02 80 01 56 	be  2002e48 <_vfprintf_r+0x1584>
 20028f4:	92 10 00 1b 	mov  %i3, %o1
 20028f8:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 20028fc:	90 07 bb 50 	add  %fp, -1200, %o0
 2002900:	40 00 0e 41 	call  2006204 <memcpy>
 2002904:	94 10 20 08 	mov  8, %o2
 2002908:	d1 1f bb 50 	ldd  [ %fp + -1200 ], %f8
 200290c:	b6 06 e0 08 	add  %i3, 8, %i3
 2002910:	95 a0 00 28 	fmovs  %f8, %f10
 2002914:	97 a0 00 29 	fmovs  %f9, %f11
 2002918:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 200291c:	d5 3f ba e8 	std  %f10, [ %fp + -1304 ]
 2002920:	d1 3f ba c8 	std  %f8, [ %fp + -1336 ]
 2002924:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2002928:	d1 3f ba d0 	std  %f8, [ %fp + -1328 ]
 200292c:	40 00 12 45 	call  2007240 <__fpclassifyd>
 2002930:	d0 1f ba c8 	ldd  [ %fp + -1336 ], %o0
 2002934:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002938:	80 a2 20 01 	cmp  %o0, 1
 200293c:	12 80 00 dc 	bne  2002cac <_vfprintf_r+0x13e8>
 2002940:	d1 1f ba d0 	ldd  [ %fp + -1328 ], %f8
 2002944:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2002948:	d5 18 a1 98 	ldd  [ %g2 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 200294c:	81 aa 0a ca 	fcmped  %f8, %f10
 2002950:	01 00 00 00 	nop 
 2002954:	09 80 02 40 	fbl  2003254 <_vfprintf_r+0x1990>
 2002958:	84 10 20 2d 	mov  0x2d, %g2	! 2d <_.d4+0x11>
 200295c:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 2002960:	80 a4 e0 47 	cmp  %l3, 0x47
 2002964:	24 80 01 a1 	ble,a   2002fe8 <_vfprintf_r+0x1724>
 2002968:	29 00 80 28 	sethi  %hi(0x200a000), %l4
 200296c:	29 00 80 28 	sethi  %hi(0x200a000), %l4
 2002970:	a8 15 21 40 	or  %l4, 0x140, %l4	! 200a140 <_global_impure_ptr+0x14>
 2002974:	88 10 20 03 	mov  3, %g4
 2002978:	a2 0c 7f 7f 	and  %l1, -129, %l1
 200297c:	aa 10 20 03 	mov  3, %l5
 2002980:	c8 27 bb 18 	st  %g4, [ %fp + -1256 ]
 2002984:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002988:	10 bf fc d1 	b  2001ccc <_vfprintf_r+0x408>
 200298c:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2002990:	12 bf fe 8c 	bne  20023c0 <_vfprintf_r+0xafc>
 2002994:	80 a0 a0 07 	cmp  %g2, 7
 2002998:	04 bf ff 27 	ble  2002634 <_vfprintf_r+0xd70>
 200299c:	82 00 60 08 	add  %g1, 8, %g1
 20029a0:	90 10 00 1c 	mov  %i4, %o0
 20029a4:	92 10 00 19 	mov  %i1, %o1
 20029a8:	40 00 13 4e 	call  20076e0 <__sprint_r>
 20029ac:	94 07 bb 64 	add  %fp, -1180, %o2
 20029b0:	80 a2 20 00 	cmp  %o0, 0
 20029b4:	12 bf fc b2 	bne  2001c7c <_vfprintf_r+0x3b8>
 20029b8:	82 10 00 12 	mov  %l2, %g1
 20029bc:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20029c0:	10 bf ff 1d 	b  2002634 <_vfprintf_r+0xd70>
 20029c4:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 20029c8:	b6 06 e0 04 	add  %i3, 4, %i3
 20029cc:	10 bf fb f8 	b  20019ac <_vfprintf_r+0xe8>
 20029d0:	f0 20 80 00 	st  %i0, [ %g2 ]
 20029d4:	81 c7 e0 08 	ret 
 20029d8:	81 e8 00 00 	restore 
 20029dc:	80 a5 60 09 	cmp  %l5, 9
 20029e0:	38 80 00 8f 	bgu,a   2002c1c <_vfprintf_r+0x1358>
 20029e4:	a8 07 bb 98 	add  %fp, -1128, %l4
 20029e8:	aa 05 60 30 	add  %l5, 0x30, %l5
 20029ec:	c8 07 ba e0 	ld  [ %fp + -1312 ], %g4
 20029f0:	ea 2f bb 97 	stb  %l5, [ %fp + -1129 ]
 20029f4:	c8 27 bb 18 	st  %g4, [ %fp + -1256 ]
 20029f8:	10 bf fc ae 	b  2001cb0 <_vfprintf_r+0x3ec>
 20029fc:	a8 07 bb 97 	add  %fp, -1129, %l4
 2002a00:	da 07 bb 14 	ld  [ %fp + -1260 ], %o5
 2002a04:	da 20 40 00 	st  %o5, [ %g1 ]
 2002a08:	84 00 a0 01 	inc  %g2
 2002a0c:	86 00 c0 16 	add  %g3, %l6, %g3
 2002a10:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002a14:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002a18:	80 a0 a0 07 	cmp  %g2, 7
 2002a1c:	04 80 00 0a 	ble  2002a44 <_vfprintf_r+0x1180>
 2002a20:	82 00 60 08 	add  %g1, 8, %g1
 2002a24:	90 10 00 1c 	mov  %i4, %o0
 2002a28:	92 10 00 19 	mov  %i1, %o1
 2002a2c:	40 00 13 2d 	call  20076e0 <__sprint_r>
 2002a30:	94 07 bb 64 	add  %fp, -1180, %o2
 2002a34:	80 a2 20 00 	cmp  %o0, 0
 2002a38:	12 bf fc 91 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002a3c:	82 10 00 12 	mov  %l2, %g1
 2002a40:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002a44:	c8 07 bb 34 	ld  [ %fp + -1228 ], %g4
 2002a48:	c4 07 ba f8 	ld  [ %fp + -1288 ], %g2
 2002a4c:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 2002a50:	80 a1 00 0c 	cmp  %g4, %o4
 2002a54:	06 80 00 3d 	bl  2002b48 <_vfprintf_r+0x1284>
 2002a58:	a8 05 00 02 	add  %l4, %g2, %l4
 2002a5c:	80 8c 60 01 	btst  1, %l1
 2002a60:	32 80 00 3b 	bne,a   2002b4c <_vfprintf_r+0x1288>
 2002a64:	c4 07 bb 00 	ld  [ %fp + -1280 ], %g2
 2002a68:	da 07 ba fc 	ld  [ %fp + -1284 ], %o5
 2002a6c:	a6 25 c0 14 	sub  %l7, %l4, %l3
 2002a70:	88 23 40 04 	sub  %o5, %g4, %g4
 2002a74:	80 a1 00 13 	cmp  %g4, %l3
 2002a78:	04 80 00 03 	ble  2002a84 <_vfprintf_r+0x11c0>
 2002a7c:	ac 10 00 04 	mov  %g4, %l6
 2002a80:	ac 10 00 13 	mov  %l3, %l6
 2002a84:	80 a5 a0 00 	cmp  %l6, 0
 2002a88:	04 80 00 0d 	ble  2002abc <_vfprintf_r+0x11f8>
 2002a8c:	a6 38 00 16 	xnor  %g0, %l6, %l3
 2002a90:	e8 20 40 00 	st  %l4, [ %g1 ]
 2002a94:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002a98:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002a9c:	86 00 c0 16 	add  %g3, %l6, %g3
 2002aa0:	84 00 a0 01 	inc  %g2
 2002aa4:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002aa8:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002aac:	80 a0 a0 07 	cmp  %g2, 7
 2002ab0:	14 80 01 a0 	bg  2003130 <_vfprintf_r+0x186c>
 2002ab4:	82 00 60 08 	add  %g1, 8, %g1
 2002ab8:	a6 38 00 16 	xnor  %g0, %l6, %l3
 2002abc:	a7 3c e0 1f 	sra  %l3, 0x1f, %l3
 2002ac0:	a6 0d 80 13 	and  %l6, %l3, %l3
 2002ac4:	a6 21 00 13 	sub  %g4, %l3, %l3
 2002ac8:	80 a4 e0 00 	cmp  %l3, 0
 2002acc:	04 bf fd 2c 	ble  2001f7c <_vfprintf_r+0x6b8>
 2002ad0:	80 a4 e0 10 	cmp  %l3, 0x10
 2002ad4:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2002ad8:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002adc:	14 80 00 08 	bg  2002afc <_vfprintf_r+0x1238>
 2002ae0:	a8 10 20 10 	mov  0x10, %l4
 2002ae4:	10 80 00 e4 	b  2002e74 <_vfprintf_r+0x15b0>
 2002ae8:	c8 07 bb 14 	ld  [ %fp + -1260 ], %g4
 2002aec:	a6 04 ff f0 	add  %l3, -16, %l3
 2002af0:	80 a4 e0 10 	cmp  %l3, 0x10
 2002af4:	04 80 00 e0 	ble  2002e74 <_vfprintf_r+0x15b0>
 2002af8:	c8 07 bb 14 	ld  [ %fp + -1260 ], %g4
 2002afc:	fa 20 40 00 	st  %i5, [ %g1 ]
 2002b00:	e8 20 60 04 	st  %l4, [ %g1 + 4 ]
 2002b04:	84 00 a0 01 	inc  %g2
 2002b08:	86 00 e0 10 	add  %g3, 0x10, %g3
 2002b0c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002b10:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002b14:	80 a0 a0 07 	cmp  %g2, 7
 2002b18:	04 bf ff f5 	ble  2002aec <_vfprintf_r+0x1228>
 2002b1c:	82 00 60 08 	add  %g1, 8, %g1
 2002b20:	90 10 00 1c 	mov  %i4, %o0
 2002b24:	92 10 00 19 	mov  %i1, %o1
 2002b28:	40 00 12 ee 	call  20076e0 <__sprint_r>
 2002b2c:	94 07 bb 64 	add  %fp, -1180, %o2
 2002b30:	80 a2 20 00 	cmp  %o0, 0
 2002b34:	12 bf fc 52 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002b38:	82 10 00 12 	mov  %l2, %g1
 2002b3c:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002b40:	10 bf ff eb 	b  2002aec <_vfprintf_r+0x1228>
 2002b44:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002b48:	c4 07 bb 00 	ld  [ %fp + -1280 ], %g2
 2002b4c:	c4 20 40 00 	st  %g2, [ %g1 ]
 2002b50:	c4 07 ba f0 	ld  [ %fp + -1296 ], %g2
 2002b54:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2002b58:	d8 07 ba f0 	ld  [ %fp + -1296 ], %o4
 2002b5c:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002b60:	86 00 c0 0c 	add  %g3, %o4, %g3
 2002b64:	84 00 a0 01 	inc  %g2
 2002b68:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002b6c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002b70:	80 a0 a0 07 	cmp  %g2, 7
 2002b74:	04 bf ff bd 	ble  2002a68 <_vfprintf_r+0x11a4>
 2002b78:	82 00 60 08 	add  %g1, 8, %g1
 2002b7c:	90 10 00 1c 	mov  %i4, %o0
 2002b80:	92 10 00 19 	mov  %i1, %o1
 2002b84:	40 00 12 d7 	call  20076e0 <__sprint_r>
 2002b88:	94 07 bb 64 	add  %fp, -1180, %o2
 2002b8c:	80 a2 20 00 	cmp  %o0, 0
 2002b90:	12 bf fc 3b 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002b94:	c8 07 bb 34 	ld  [ %fp + -1228 ], %g4
 2002b98:	82 10 00 12 	mov  %l2, %g1
 2002b9c:	10 bf ff b3 	b  2002a68 <_vfprintf_r+0x11a4>
 2002ba0:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002ba4:	90 10 00 1c 	mov  %i4, %o0
 2002ba8:	92 10 00 19 	mov  %i1, %o1
 2002bac:	40 00 12 cd 	call  20076e0 <__sprint_r>
 2002bb0:	94 07 bb 64 	add  %fp, -1180, %o2
 2002bb4:	80 a2 20 00 	cmp  %o0, 0
 2002bb8:	12 bf fc 31 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002bbc:	82 10 00 12 	mov  %l2, %g1
 2002bc0:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002bc4:	10 bf fe 01 	b  20023c8 <_vfprintf_r+0xb04>
 2002bc8:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002bcc:	c8 07 bb 14 	ld  [ %fp + -1260 ], %g4
 2002bd0:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002bd4:	84 00 a0 01 	inc  %g2
 2002bd8:	86 00 c0 13 	add  %g3, %l3, %g3
 2002bdc:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002be0:	80 a0 a0 07 	cmp  %g2, 7
 2002be4:	04 bf fe 93 	ble  2002630 <_vfprintf_r+0xd6c>
 2002be8:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002bec:	10 bf ff 6e 	b  20029a4 <_vfprintf_r+0x10e0>
 2002bf0:	90 10 00 1c 	mov  %i4, %o0
 2002bf4:	90 10 00 1c 	mov  %i4, %o0
 2002bf8:	92 10 00 19 	mov  %i1, %o1
 2002bfc:	40 00 12 b9 	call  20076e0 <__sprint_r>
 2002c00:	94 07 bb 64 	add  %fp, -1180, %o2
 2002c04:	80 a2 20 00 	cmp  %o0, 0
 2002c08:	12 bf fc 1d 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002c0c:	82 10 00 12 	mov  %l2, %g1
 2002c10:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002c14:	10 bf fd f8 	b  20023f4 <_vfprintf_r+0xb30>
 2002c18:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002c1c:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2002c20:	90 10 00 15 	mov  %l5, %o0
 2002c24:	40 00 1c 86 	call  2009e3c <.urem>
 2002c28:	92 10 20 0a 	mov  0xa, %o1
 2002c2c:	90 02 20 30 	add  %o0, 0x30, %o0
 2002c30:	a8 05 3f ff 	add  %l4, -1, %l4
 2002c34:	92 10 20 0a 	mov  0xa, %o1
 2002c38:	d0 2d 00 00 	stb  %o0, [ %l4 ]
 2002c3c:	40 00 1b d4 	call  2009b8c <.udiv>
 2002c40:	90 10 00 15 	mov  %l5, %o0
 2002c44:	aa 92 20 00 	orcc  %o0, 0, %l5
 2002c48:	12 bf ff f5 	bne  2002c1c <_vfprintf_r+0x1358>
 2002c4c:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002c50:	d8 07 bb 24 	ld  [ %fp + -1244 ], %o4
 2002c54:	98 23 00 14 	sub  %o4, %l4, %o4
 2002c58:	10 bf fc 16 	b  2001cb0 <_vfprintf_r+0x3ec>
 2002c5c:	d8 27 bb 18 	st  %o4, [ %fp + -1256 ]
 2002c60:	86 08 e0 7f 	and  %g3, 0x7f, %g3
 2002c64:	80 a0 e0 30 	cmp  %g3, 0x30
 2002c68:	02 80 01 2e 	be  2003120 <_vfprintf_r+0x185c>
 2002c6c:	c6 07 bb 24 	ld  [ %fp + -1244 ], %g3
 2002c70:	a8 05 3f ff 	add  %l4, -1, %l4
 2002c74:	86 20 c0 14 	sub  %g3, %l4, %g3
 2002c78:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 2002c7c:	86 10 20 30 	mov  0x30, %g3
 2002c80:	10 bf fc 0c 	b  2001cb0 <_vfprintf_r+0x3ec>
 2002c84:	c6 29 3f ff 	stb  %g3, [ %g4 + -1 ]
 2002c88:	86 10 20 2d 	mov  0x2d, %g3
 2002c8c:	aa 20 00 15 	neg  %l5
 2002c90:	c6 2f bb 2f 	stb  %g3, [ %fp + -1233 ]
 2002c94:	80 a0 00 15 	cmp  %g0, %l5
 2002c98:	86 10 20 01 	mov  1, %g3
 2002c9c:	10 bf fb 9b 	b  2001b08 <_vfprintf_r+0x244>
 2002ca0:	88 40 20 00 	addx  %g0, 0, %g4
 2002ca4:	10 bf fb 98 	b  2001b04 <_vfprintf_r+0x240>
 2002ca8:	86 10 20 02 	mov  2, %g3
 2002cac:	d1 3f ba c8 	std  %f8, [ %fp + -1336 ]
 2002cb0:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2002cb4:	d1 3f ba d0 	std  %f8, [ %fp + -1328 ]
 2002cb8:	40 00 11 62 	call  2007240 <__fpclassifyd>
 2002cbc:	d0 1f ba c8 	ldd  [ %fp + -1336 ], %o0
 2002cc0:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002cc4:	80 a2 20 00 	cmp  %o0, 0
 2002cc8:	02 80 00 bb 	be  2002fb4 <_vfprintf_r+0x16f0>
 2002ccc:	d1 1f ba d0 	ldd  [ %fp + -1328 ], %f8
 2002cd0:	80 a5 bf ff 	cmp  %l6, -1
 2002cd4:	02 80 01 9e 	be  200334c <_vfprintf_r+0x1a88>
 2002cd8:	aa 0c ff df 	and  %l3, -33, %l5
 2002cdc:	80 a5 60 47 	cmp  %l5, 0x47
 2002ce0:	12 80 00 06 	bne  2002cf8 <_vfprintf_r+0x1434>
 2002ce4:	95 a0 00 28 	fmovs  %f8, %f10
 2002ce8:	80 a5 a0 00 	cmp  %l6, 0
 2002cec:	22 80 00 03 	be,a   2002cf8 <_vfprintf_r+0x1434>
 2002cf0:	ac 10 20 01 	mov  1, %l6
 2002cf4:	95 a0 00 28 	fmovs  %f8, %f10
 2002cf8:	97 a0 00 29 	fmovs  %f9, %f11
 2002cfc:	c0 2f bb 14 	clrb  [ %fp + -1260 ]
 2002d00:	d5 3f bb 18 	std  %f10, [ %fp + -1256 ]
 2002d04:	c4 07 bb 18 	ld  [ %fp + -1256 ], %g2
 2002d08:	80 a0 a0 00 	cmp  %g2, 0
 2002d0c:	06 80 01 8c 	bl  200333c <_vfprintf_r+0x1a78>
 2002d10:	ae 14 61 00 	or  %l1, 0x100, %l7
 2002d14:	86 1d 60 46 	xor  %l5, 0x46, %g3
 2002d18:	80 a0 00 03 	cmp  %g0, %g3
 2002d1c:	84 60 3f ff 	subx  %g0, -1, %g2
 2002d20:	80 a0 a0 00 	cmp  %g2, 0
 2002d24:	12 80 01 4f 	bne  2003260 <_vfprintf_r+0x199c>
 2002d28:	96 10 20 03 	mov  3, %o3
 2002d2c:	80 a5 60 45 	cmp  %l5, 0x45
 2002d30:	12 80 01 4c 	bne  2003260 <_vfprintf_r+0x199c>
 2002d34:	96 10 20 02 	mov  2, %o3
 2002d38:	86 07 bb 38 	add  %fp, -1224, %g3
 2002d3c:	84 05 a0 01 	add  %l6, 1, %g2
 2002d40:	d1 3f ba c8 	std  %f8, [ %fp + -1336 ]
 2002d44:	c6 23 a0 5c 	st  %g3, [ %sp + 0x5c ]
 2002d48:	d8 1f ba c8 	ldd  [ %fp + -1336 ], %o4
 2002d4c:	86 07 bb 3c 	add  %fp, -1220, %g3
 2002d50:	92 10 00 0c 	mov  %o4, %o1
 2002d54:	94 10 00 0d 	mov  %o5, %o2
 2002d58:	98 10 00 02 	mov  %g2, %o4
 2002d5c:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2002d60:	c4 27 ba d8 	st  %g2, [ %fp + -1320 ]
 2002d64:	d1 3f ba d0 	std  %f8, [ %fp + -1328 ]
 2002d68:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
 2002d6c:	90 10 00 1c 	mov  %i4, %o0
 2002d70:	40 00 03 35 	call  2003a44 <_dtoa_r>
 2002d74:	9a 07 bb 34 	add  %fp, -1228, %o5
 2002d78:	c4 07 ba d8 	ld  [ %fp + -1320 ], %g2
 2002d7c:	a8 10 00 08 	mov  %o0, %l4
 2002d80:	88 02 00 02 	add  %o0, %g2, %g4
 2002d84:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002d88:	d1 1f ba d0 	ldd  [ %fp + -1328 ], %f8
 2002d8c:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2002d90:	d5 18 a1 98 	ldd  [ %g2 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 2002d94:	81 aa 0a 4a 	fcmpd  %f8, %f10
 2002d98:	01 00 00 00 	nop 
 2002d9c:	33 80 00 0d 	fbe,a   2002dd0 <_vfprintf_r+0x150c>
 2002da0:	88 21 00 14 	sub  %g4, %l4, %g4
 2002da4:	c6 07 bb 3c 	ld  [ %fp + -1220 ], %g3
 2002da8:	80 a1 00 03 	cmp  %g4, %g3
 2002dac:	28 80 00 08 	bleu,a   2002dcc <_vfprintf_r+0x1508>
 2002db0:	88 10 00 03 	mov  %g3, %g4
 2002db4:	9e 10 20 30 	mov  0x30, %o7
 2002db8:	de 28 c0 00 	stb  %o7, [ %g3 ]
 2002dbc:	86 00 e0 01 	inc  %g3
 2002dc0:	80 a0 c0 04 	cmp  %g3, %g4
 2002dc4:	12 bf ff fd 	bne  2002db8 <_vfprintf_r+0x14f4>
 2002dc8:	c6 27 bb 3c 	st  %g3, [ %fp + -1220 ]
 2002dcc:	88 21 00 14 	sub  %g4, %l4, %g4
 2002dd0:	80 a5 60 47 	cmp  %l5, 0x47
 2002dd4:	02 80 00 f6 	be  20031ac <_vfprintf_r+0x18e8>
 2002dd8:	c8 27 ba fc 	st  %g4, [ %fp + -1284 ]
 2002ddc:	80 a4 e0 65 	cmp  %l3, 0x65
 2002de0:	04 80 01 cb 	ble  200350c <_vfprintf_r+0x1c48>
 2002de4:	80 a4 e0 66 	cmp  %l3, 0x66
 2002de8:	02 80 01 65 	be  200337c <_vfprintf_r+0x1ab8>
 2002dec:	c6 07 bb 34 	ld  [ %fp + -1228 ], %g3
 2002df0:	c4 07 ba fc 	ld  [ %fp + -1284 ], %g2
 2002df4:	80 a0 c0 02 	cmp  %g3, %g2
 2002df8:	06 80 01 57 	bl  2003354 <_vfprintf_r+0x1a90>
 2002dfc:	80 a0 e0 00 	cmp  %g3, 0
 2002e00:	80 8c 60 01 	btst  1, %l1
 2002e04:	32 80 01 90 	bne,a   2003444 <_vfprintf_r+0x1b80>
 2002e08:	88 00 e0 01 	add  %g3, 1, %g4
 2002e0c:	aa 38 00 03 	xnor  %g0, %g3, %l5
 2002e10:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 2002e14:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2002e18:	a6 10 20 67 	mov  0x67, %l3
 2002e1c:	aa 08 c0 15 	and  %g3, %l5, %l5
 2002e20:	c6 27 ba f8 	st  %g3, [ %fp + -1288 ]
 2002e24:	c4 0f bb 14 	ldub  [ %fp + -1260 ], %g2
 2002e28:	80 88 a0 ff 	btst  0xff, %g2
 2002e2c:	02 80 00 db 	be  2003198 <_vfprintf_r+0x18d4>
 2002e30:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 2002e34:	84 10 20 2d 	mov  0x2d, %g2
 2002e38:	a2 10 00 17 	mov  %l7, %l1
 2002e3c:	c4 2f bb 2f 	stb  %g2, [ %fp + -1233 ]
 2002e40:	10 bf fb a7 	b  2001cdc <_vfprintf_r+0x418>
 2002e44:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002e48:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2002e4c:	90 07 bb 58 	add  %fp, -1192, %o0
 2002e50:	40 00 0c ed 	call  2006204 <memcpy>
 2002e54:	94 10 20 08 	mov  8, %o2
 2002e58:	d1 1f bb 58 	ldd  [ %fp + -1192 ], %f8
 2002e5c:	b6 06 e0 08 	add  %i3, 8, %i3
 2002e60:	95 a0 00 28 	fmovs  %f8, %f10
 2002e64:	97 a0 00 29 	fmovs  %f9, %f11
 2002e68:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 2002e6c:	10 bf fe ad 	b  2002920 <_vfprintf_r+0x105c>
 2002e70:	d5 3f ba e8 	std  %f10, [ %fp + -1304 ]
 2002e74:	10 bf fc 7d 	b  2002068 <_vfprintf_r+0x7a4>
 2002e78:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002e7c:	90 10 00 1c 	mov  %i4, %o0
 2002e80:	92 10 00 19 	mov  %i1, %o1
 2002e84:	40 00 12 17 	call  20076e0 <__sprint_r>
 2002e88:	94 07 bb 64 	add  %fp, -1180, %o2
 2002e8c:	80 a2 20 00 	cmp  %o0, 0
 2002e90:	12 bf fb 7b 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002e94:	82 10 00 12 	mov  %l2, %g1
 2002e98:	10 bf fd a1 	b  200251c <_vfprintf_r+0xc58>
 2002e9c:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002ea0:	84 10 20 01 	mov  1, %g2
 2002ea4:	1f 00 80 28 	sethi  %hi(0x200a000), %o7
 2002ea8:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2002eac:	9e 13 e1 90 	or  %o7, 0x190, %o7
 2002eb0:	de 20 40 00 	st  %o7, [ %g1 ]
 2002eb4:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002eb8:	86 00 e0 01 	inc  %g3
 2002ebc:	84 00 a0 01 	inc  %g2
 2002ec0:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002ec4:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002ec8:	80 a0 a0 07 	cmp  %g2, 7
 2002ecc:	14 80 00 51 	bg  2003010 <_vfprintf_r+0x174c>
 2002ed0:	82 00 60 08 	add  %g1, 8, %g1
 2002ed4:	80 a4 e0 00 	cmp  %l3, 0
 2002ed8:	02 80 00 46 	be  2002ff0 <_vfprintf_r+0x172c>
 2002edc:	c4 07 ba fc 	ld  [ %fp + -1284 ], %g2
 2002ee0:	c8 07 bb 00 	ld  [ %fp + -1280 ], %g4
 2002ee4:	c4 07 ba f0 	ld  [ %fp + -1296 ], %g2
 2002ee8:	c8 20 40 00 	st  %g4, [ %g1 ]
 2002eec:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2002ef0:	c8 07 ba f0 	ld  [ %fp + -1296 ], %g4
 2002ef4:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002ef8:	86 00 c0 04 	add  %g3, %g4, %g3
 2002efc:	84 00 a0 01 	inc  %g2
 2002f00:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002f04:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002f08:	80 a0 a0 07 	cmp  %g2, 7
 2002f0c:	14 80 01 01 	bg  2003310 <_vfprintf_r+0x1a4c>
 2002f10:	82 00 60 08 	add  %g1, 8, %g1
 2002f14:	a6 20 00 13 	neg  %l3
 2002f18:	80 a4 e0 00 	cmp  %l3, 0
 2002f1c:	04 80 00 62 	ble  20030a4 <_vfprintf_r+0x17e0>
 2002f20:	80 a4 e0 10 	cmp  %l3, 0x10
 2002f24:	fa 27 bb 14 	st  %i5, [ %fp + -1260 ]
 2002f28:	14 80 00 08 	bg  2002f48 <_vfprintf_r+0x1684>
 2002f2c:	ac 10 20 10 	mov  0x10, %l6
 2002f30:	10 80 00 4b 	b  200305c <_vfprintf_r+0x1798>
 2002f34:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2002f38:	a6 04 ff f0 	add  %l3, -16, %l3
 2002f3c:	80 a4 e0 10 	cmp  %l3, 0x10
 2002f40:	24 80 00 47 	ble,a   200305c <_vfprintf_r+0x1798>
 2002f44:	e6 20 60 04 	st  %l3, [ %g1 + 4 ]
 2002f48:	fa 20 40 00 	st  %i5, [ %g1 ]
 2002f4c:	ec 20 60 04 	st  %l6, [ %g1 + 4 ]
 2002f50:	84 00 a0 01 	inc  %g2
 2002f54:	86 00 e0 10 	add  %g3, 0x10, %g3
 2002f58:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2002f5c:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2002f60:	80 a0 a0 07 	cmp  %g2, 7
 2002f64:	04 bf ff f5 	ble  2002f38 <_vfprintf_r+0x1674>
 2002f68:	82 00 60 08 	add  %g1, 8, %g1
 2002f6c:	90 10 00 1c 	mov  %i4, %o0
 2002f70:	92 10 00 19 	mov  %i1, %o1
 2002f74:	40 00 11 db 	call  20076e0 <__sprint_r>
 2002f78:	94 07 bb 64 	add  %fp, -1180, %o2
 2002f7c:	80 a2 20 00 	cmp  %o0, 0
 2002f80:	12 bf fb 3f 	bne  2001c7c <_vfprintf_r+0x3b8>
 2002f84:	82 10 00 12 	mov  %l2, %g1
 2002f88:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2002f8c:	10 bf ff eb 	b  2002f38 <_vfprintf_r+0x1674>
 2002f90:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 2002f94:	d8 07 bb 18 	ld  [ %fp + -1256 ], %o4
 2002f98:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 2002f9c:	aa 38 00 0c 	xnor  %g0, %o4, %l5
 2002fa0:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002fa4:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2002fa8:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2002fac:	10 bf fb 48 	b  2001ccc <_vfprintf_r+0x408>
 2002fb0:	aa 0b 00 15 	and  %o4, %l5, %l5
 2002fb4:	80 a4 e0 47 	cmp  %l3, 0x47
 2002fb8:	34 80 00 a5 	bg,a   200324c <_vfprintf_r+0x1988>
 2002fbc:	29 00 80 28 	sethi  %hi(0x200a000), %l4
 2002fc0:	29 00 80 28 	sethi  %hi(0x200a000), %l4
 2002fc4:	a8 15 21 48 	or  %l4, 0x148, %l4	! 200a148 <_global_impure_ptr+0x1c>
 2002fc8:	98 10 20 03 	mov  3, %o4
 2002fcc:	a2 0c 7f 7f 	and  %l1, -129, %l1
 2002fd0:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 2002fd4:	aa 10 20 03 	mov  3, %l5
 2002fd8:	d8 27 bb 18 	st  %o4, [ %fp + -1256 ]
 2002fdc:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 2002fe0:	10 bf fb 3b 	b  2001ccc <_vfprintf_r+0x408>
 2002fe4:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2002fe8:	10 bf fe 63 	b  2002974 <_vfprintf_r+0x10b0>
 2002fec:	a8 15 21 38 	or  %l4, 0x138, %l4
 2002ff0:	80 a0 a0 00 	cmp  %g2, 0
 2002ff4:	12 bf ff bc 	bne  2002ee4 <_vfprintf_r+0x1620>
 2002ff8:	c8 07 bb 00 	ld  [ %fp + -1280 ], %g4
 2002ffc:	80 8c 60 01 	btst  1, %l1
 2003000:	02 bf fb e0 	be  2001f80 <_vfprintf_r+0x6bc>
 2003004:	80 8c 60 04 	btst  4, %l1
 2003008:	10 bf ff b8 	b  2002ee8 <_vfprintf_r+0x1624>
 200300c:	c4 07 ba f0 	ld  [ %fp + -1296 ], %g2
 2003010:	90 10 00 1c 	mov  %i4, %o0
 2003014:	92 10 00 19 	mov  %i1, %o1
 2003018:	40 00 11 b2 	call  20076e0 <__sprint_r>
 200301c:	94 07 bb 64 	add  %fp, -1180, %o2
 2003020:	80 a2 20 00 	cmp  %o0, 0
 2003024:	12 bf fb 16 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003028:	e6 07 bb 34 	ld  [ %fp + -1228 ], %l3
 200302c:	82 10 00 12 	mov  %l2, %g1
 2003030:	10 bf ff a9 	b  2002ed4 <_vfprintf_r+0x1610>
 2003034:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2003038:	90 10 00 1c 	mov  %i4, %o0
 200303c:	92 10 00 19 	mov  %i1, %o1
 2003040:	40 00 11 a8 	call  20076e0 <__sprint_r>
 2003044:	94 07 bb 64 	add  %fp, -1180, %o2
 2003048:	80 a2 20 00 	cmp  %o0, 0
 200304c:	12 bf fb 0c 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003050:	82 10 00 12 	mov  %l2, %g1
 2003054:	10 bf fd 46 	b  200256c <_vfprintf_r+0xca8>
 2003058:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 200305c:	d8 07 bb 14 	ld  [ %fp + -1260 ], %o4
 2003060:	d8 20 40 00 	st  %o4, [ %g1 ]
 2003064:	84 00 a0 01 	inc  %g2
 2003068:	86 00 c0 13 	add  %g3, %l3, %g3
 200306c:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 2003070:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 2003074:	80 a0 a0 07 	cmp  %g2, 7
 2003078:	04 80 00 0b 	ble  20030a4 <_vfprintf_r+0x17e0>
 200307c:	82 00 60 08 	add  %g1, 8, %g1
 2003080:	90 10 00 1c 	mov  %i4, %o0
 2003084:	92 10 00 19 	mov  %i1, %o1
 2003088:	40 00 11 96 	call  20076e0 <__sprint_r>
 200308c:	94 07 bb 64 	add  %fp, -1180, %o2
 2003090:	80 a2 20 00 	cmp  %o0, 0
 2003094:	12 bf fa fa 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003098:	82 10 00 12 	mov  %l2, %g1
 200309c:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 20030a0:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 20030a4:	e8 20 40 00 	st  %l4, [ %g1 ]
 20030a8:	da 07 ba fc 	ld  [ %fp + -1284 ], %o5
 20030ac:	da 20 60 04 	st  %o5, [ %g1 + 4 ]
 20030b0:	84 00 a0 01 	inc  %g2
 20030b4:	86 00 c0 0d 	add  %g3, %o5, %g3
 20030b8:	c4 27 bb 68 	st  %g2, [ %fp + -1176 ]
 20030bc:	80 a0 a0 07 	cmp  %g2, 7
 20030c0:	04 bf fb ae 	ble  2001f78 <_vfprintf_r+0x6b4>
 20030c4:	c6 27 bb 6c 	st  %g3, [ %fp + -1172 ]
 20030c8:	10 bf fb f0 	b  2002088 <_vfprintf_r+0x7c4>
 20030cc:	90 10 00 1c 	mov  %i4, %o0
 20030d0:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 20030d4:	40 00 10 f8 	call  20074b4 <strlen>
 20030d8:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 20030dc:	c6 0f bb 2f 	ldub  [ %fp + -1233 ], %g3
 20030e0:	aa 38 00 08 	xnor  %g0, %o0, %l5
 20030e4:	d0 27 bb 18 	st  %o0, [ %fp + -1256 ]
 20030e8:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 20030ec:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 20030f0:	aa 0a 00 15 	and  %o0, %l5, %l5
 20030f4:	10 bf fa f6 	b  2001ccc <_vfprintf_r+0x408>
 20030f8:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 20030fc:	90 10 00 1c 	mov  %i4, %o0
 2003100:	92 10 00 19 	mov  %i1, %o1
 2003104:	40 00 11 77 	call  20076e0 <__sprint_r>
 2003108:	94 07 bb 64 	add  %fp, -1180, %o2
 200310c:	80 a2 20 00 	cmp  %o0, 0
 2003110:	12 bf fa db 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003114:	82 10 00 12 	mov  %l2, %g1
 2003118:	10 bf fc 0f 	b  2002154 <_vfprintf_r+0x890>
 200311c:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2003120:	c4 07 bb 24 	ld  [ %fp + -1244 ], %g2
 2003124:	84 20 80 14 	sub  %g2, %l4, %g2
 2003128:	10 bf fa e2 	b  2001cb0 <_vfprintf_r+0x3ec>
 200312c:	c4 27 bb 18 	st  %g2, [ %fp + -1256 ]
 2003130:	90 10 00 1c 	mov  %i4, %o0
 2003134:	92 10 00 19 	mov  %i1, %o1
 2003138:	40 00 11 6a 	call  20076e0 <__sprint_r>
 200313c:	94 07 bb 64 	add  %fp, -1180, %o2
 2003140:	80 a2 20 00 	cmp  %o0, 0
 2003144:	12 bf fa ce 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003148:	c8 07 bb 34 	ld  [ %fp + -1228 ], %g4
 200314c:	c4 07 ba fc 	ld  [ %fp + -1284 ], %g2
 2003150:	82 10 00 12 	mov  %l2, %g1
 2003154:	88 20 80 04 	sub  %g2, %g4, %g4
 2003158:	10 bf fe 58 	b  2002ab8 <_vfprintf_r+0x11f4>
 200315c:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2003160:	80 a5 a0 06 	cmp  %l6, 6
 2003164:	08 80 00 04 	bleu  2003174 <_vfprintf_r+0x18b0>
 2003168:	ec 27 bb 18 	st  %l6, [ %fp + -1256 ]
 200316c:	86 10 20 06 	mov  6, %g3
 2003170:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 2003174:	c8 07 bb 18 	ld  [ %fp + -1256 ], %g4
 2003178:	29 00 80 28 	sethi  %hi(0x200a000), %l4
 200317c:	aa 38 00 04 	xnor  %g0, %g4, %l5
 2003180:	a8 15 21 88 	or  %l4, 0x188, %l4
 2003184:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2003188:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 200318c:	aa 09 00 15 	and  %g4, %l5, %l5
 2003190:	10 bf fa d4 	b  2001ce0 <_vfprintf_r+0x41c>
 2003194:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2003198:	a2 10 00 17 	mov  %l7, %l1
 200319c:	10 bf fa cc 	b  2001ccc <_vfprintf_r+0x408>
 20031a0:	c0 27 bb 08 	clr  [ %fp + -1272 ]
 20031a4:	86 20 c0 08 	sub  %g3, %o0, %g3
 20031a8:	c6 27 ba fc 	st  %g3, [ %fp + -1284 ]
 20031ac:	ea 07 bb 34 	ld  [ %fp + -1228 ], %l5
 20031b0:	80 a5 7f fd 	cmp  %l5, -3
 20031b4:	06 80 00 05 	bl  20031c8 <_vfprintf_r+0x1904>
 20031b8:	86 10 00 15 	mov  %l5, %g3
 20031bc:	80 a5 80 15 	cmp  %l6, %l5
 20031c0:	16 bf ff 0d 	bge  2002df4 <_vfprintf_r+0x1530>
 20031c4:	c4 07 ba fc 	ld  [ %fp + -1284 ], %g2
 20031c8:	a6 04 ff fe 	add  %l3, -2, %l3
 20031cc:	aa 05 7f ff 	add  %l5, -1, %l5
 20031d0:	e6 2f bb 40 	stb  %l3, [ %fp + -1216 ]
 20031d4:	80 a5 60 00 	cmp  %l5, 0
 20031d8:	06 80 00 b0 	bl  2003498 <_vfprintf_r+0x1bd4>
 20031dc:	ea 27 bb 34 	st  %l5, [ %fp + -1228 ]
 20031e0:	84 10 20 2b 	mov  0x2b, %g2
 20031e4:	c4 2f bb 41 	stb  %g2, [ %fp + -1215 ]
 20031e8:	80 a5 60 09 	cmp  %l5, 9
 20031ec:	14 80 00 6f 	bg  20033a8 <_vfprintf_r+0x1ae4>
 20031f0:	84 07 bb 4f 	add  %fp, -1201, %g2
 20031f4:	84 10 20 30 	mov  0x30, %g2
 20031f8:	aa 05 60 30 	add  %l5, 0x30, %l5
 20031fc:	c4 2f bb 42 	stb  %g2, [ %fp + -1214 ]
 2003200:	ea 2f bb 43 	stb  %l5, [ %fp + -1213 ]
 2003204:	84 07 bb 44 	add  %fp, -1212, %g2
 2003208:	88 07 bb 40 	add  %fp, -1216, %g4
 200320c:	88 20 80 04 	sub  %g2, %g4, %g4
 2003210:	c8 27 ba e4 	st  %g4, [ %fp + -1308 ]
 2003214:	c8 07 ba fc 	ld  [ %fp + -1284 ], %g4
 2003218:	d8 07 ba e4 	ld  [ %fp + -1308 ], %o4
 200321c:	98 01 00 0c 	add  %g4, %o4, %o4
 2003220:	80 a1 20 01 	cmp  %g4, 1
 2003224:	04 80 00 aa 	ble  20034cc <_vfprintf_r+0x1c08>
 2003228:	d8 27 bb 18 	st  %o4, [ %fp + -1256 ]
 200322c:	da 07 bb 18 	ld  [ %fp + -1256 ], %o5
 2003230:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 2003234:	9a 03 60 01 	inc  %o5
 2003238:	aa 38 00 0d 	xnor  %g0, %o5, %l5
 200323c:	da 27 bb 18 	st  %o5, [ %fp + -1256 ]
 2003240:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2003244:	10 bf fe f8 	b  2002e24 <_vfprintf_r+0x1560>
 2003248:	aa 0b 40 15 	and  %o5, %l5, %l5
 200324c:	10 bf ff 5f 	b  2002fc8 <_vfprintf_r+0x1704>
 2003250:	a8 15 21 50 	or  %l4, 0x150, %l4
 2003254:	86 10 20 2d 	mov  0x2d, %g3
 2003258:	10 bf fd c2 	b  2002960 <_vfprintf_r+0x109c>
 200325c:	c4 2f bb 2f 	stb  %g2, [ %fp + -1233 ]
 2003260:	86 07 bb 38 	add  %fp, -1224, %g3
 2003264:	d1 3f ba c8 	std  %f8, [ %fp + -1336 ]
 2003268:	c6 23 a0 5c 	st  %g3, [ %sp + 0x5c ]
 200326c:	d8 1f ba c8 	ldd  [ %fp + -1336 ], %o4
 2003270:	86 07 bb 3c 	add  %fp, -1220, %g3
 2003274:	92 10 00 0c 	mov  %o4, %o1
 2003278:	94 10 00 0d 	mov  %o5, %o2
 200327c:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 2003280:	c4 27 ba d8 	st  %g2, [ %fp + -1320 ]
 2003284:	d1 3f ba d0 	std  %f8, [ %fp + -1328 ]
 2003288:	c6 23 a0 60 	st  %g3, [ %sp + 0x60 ]
 200328c:	90 10 00 1c 	mov  %i4, %o0
 2003290:	98 10 00 16 	mov  %l6, %o4
 2003294:	40 00 01 ec 	call  2003a44 <_dtoa_r>
 2003298:	9a 07 bb 34 	add  %fp, -1228, %o5
 200329c:	80 a5 60 47 	cmp  %l5, 0x47
 20032a0:	a8 10 00 08 	mov  %o0, %l4
 20032a4:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 20032a8:	c4 07 ba d8 	ld  [ %fp + -1320 ], %g2
 20032ac:	12 80 00 05 	bne  20032c0 <_vfprintf_r+0x19fc>
 20032b0:	d1 1f ba d0 	ldd  [ %fp + -1328 ], %f8
 20032b4:	80 8c 60 01 	btst  1, %l1
 20032b8:	02 bf ff bb 	be  20031a4 <_vfprintf_r+0x18e0>
 20032bc:	c6 07 bb 3c 	ld  [ %fp + -1220 ], %g3
 20032c0:	80 a0 a0 00 	cmp  %g2, 0
 20032c4:	02 bf fe b2 	be  2002d8c <_vfprintf_r+0x14c8>
 20032c8:	88 05 00 16 	add  %l4, %l6, %g4
 20032cc:	c6 4d 00 00 	ldsb  [ %l4 ], %g3
 20032d0:	80 a0 e0 30 	cmp  %g3, 0x30
 20032d4:	02 80 00 05 	be  20032e8 <_vfprintf_r+0x1a24>
 20032d8:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 20032dc:	c6 07 bb 34 	ld  [ %fp + -1228 ], %g3
 20032e0:	10 bf fe ab 	b  2002d8c <_vfprintf_r+0x14c8>
 20032e4:	88 01 00 03 	add  %g4, %g3, %g4
 20032e8:	d5 18 a1 98 	ldd  [ %g2 + 0x198 ], %f10
 20032ec:	81 aa 0a 4a 	fcmpd  %f8, %f10
 20032f0:	01 00 00 00 	nop 
 20032f4:	13 bf ff fb 	fbe  20032e0 <_vfprintf_r+0x1a1c>
 20032f8:	c6 07 bb 34 	ld  [ %fp + -1228 ], %g3
 20032fc:	86 10 20 01 	mov  1, %g3
 2003300:	86 20 c0 16 	sub  %g3, %l6, %g3
 2003304:	c6 27 bb 34 	st  %g3, [ %fp + -1228 ]
 2003308:	10 bf fe a1 	b  2002d8c <_vfprintf_r+0x14c8>
 200330c:	88 01 00 03 	add  %g4, %g3, %g4
 2003310:	90 10 00 1c 	mov  %i4, %o0
 2003314:	92 10 00 19 	mov  %i1, %o1
 2003318:	40 00 10 f2 	call  20076e0 <__sprint_r>
 200331c:	94 07 bb 64 	add  %fp, -1180, %o2
 2003320:	80 a2 20 00 	cmp  %o0, 0
 2003324:	12 bf fa 56 	bne  2001c7c <_vfprintf_r+0x3b8>
 2003328:	e6 07 bb 34 	ld  [ %fp + -1228 ], %l3
 200332c:	82 10 00 12 	mov  %l2, %g1
 2003330:	c6 07 bb 6c 	ld  [ %fp + -1172 ], %g3
 2003334:	10 bf fe f8 	b  2002f14 <_vfprintf_r+0x1650>
 2003338:	c4 07 bb 68 	ld  [ %fp + -1176 ], %g2
 200333c:	86 10 20 2d 	mov  0x2d, %g3
 2003340:	91 a0 00 a8 	fnegs  %f8, %f8
 2003344:	10 bf fe 74 	b  2002d14 <_vfprintf_r+0x1450>
 2003348:	c6 2f bb 14 	stb  %g3, [ %fp + -1260 ]
 200334c:	10 bf fe 6a 	b  2002cf4 <_vfprintf_r+0x1430>
 2003350:	ac 10 20 06 	mov  6, %l6
 2003354:	04 80 00 55 	ble  20034a8 <_vfprintf_r+0x1be4>
 2003358:	ac 10 20 01 	mov  1, %l6
 200335c:	d8 07 ba fc 	ld  [ %fp + -1284 ], %o4
 2003360:	a6 10 20 67 	mov  0x67, %l3
 2003364:	ac 05 80 0c 	add  %l6, %o4, %l6
 2003368:	aa 38 00 16 	xnor  %g0, %l6, %l5
 200336c:	ec 27 bb 18 	st  %l6, [ %fp + -1256 ]
 2003370:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2003374:	10 bf fe ab 	b  2002e20 <_vfprintf_r+0x155c>
 2003378:	aa 0d 80 15 	and  %l6, %l5, %l5
 200337c:	80 a0 e0 00 	cmp  %g3, 0
 2003380:	04 80 00 3d 	ble  2003474 <_vfprintf_r+0x1bb0>
 2003384:	80 a5 a0 00 	cmp  %l6, 0
 2003388:	12 80 00 35 	bne  200345c <_vfprintf_r+0x1b98>
 200338c:	84 05 a0 01 	add  %l6, 1, %g2
 2003390:	80 8c 60 01 	btst  1, %l1
 2003394:	12 80 00 33 	bne  2003460 <_vfprintf_r+0x1b9c>
 2003398:	84 00 c0 02 	add  %g3, %g2, %g2
 200339c:	aa 10 00 03 	mov  %g3, %l5
 20033a0:	10 bf fe a0 	b  2002e20 <_vfprintf_r+0x155c>
 20033a4:	c6 27 bb 18 	st  %g3, [ %fp + -1256 ]
 20033a8:	ac 10 00 02 	mov  %g2, %l6
 20033ac:	c2 27 ba dc 	st  %g1, [ %fp + -1316 ]
 20033b0:	c4 27 ba d8 	st  %g2, [ %fp + -1320 ]
 20033b4:	90 10 00 15 	mov  %l5, %o0
 20033b8:	40 00 1a a3 	call  2009e44 <.rem>
 20033bc:	92 10 20 0a 	mov  0xa, %o1
 20033c0:	90 02 20 30 	add  %o0, 0x30, %o0
 20033c4:	ac 05 bf ff 	add  %l6, -1, %l6
 20033c8:	92 10 20 0a 	mov  0xa, %o1
 20033cc:	d0 2d 80 00 	stb  %o0, [ %l6 ]
 20033d0:	40 00 19 f1 	call  2009b94 <.div>
 20033d4:	90 10 00 15 	mov  %l5, %o0
 20033d8:	c2 07 ba dc 	ld  [ %fp + -1316 ], %g1
 20033dc:	aa 10 00 08 	mov  %o0, %l5
 20033e0:	80 a2 20 09 	cmp  %o0, 9
 20033e4:	14 bf ff f2 	bg  20033ac <_vfprintf_r+0x1ae8>
 20033e8:	c4 07 ba d8 	ld  [ %fp + -1320 ], %g2
 20033ec:	9e 02 20 30 	add  %o0, 0x30, %o7
 20033f0:	86 05 bf ff 	add  %l6, -1, %g3
 20033f4:	80 a0 c0 02 	cmp  %g3, %g2
 20033f8:	1a 80 00 42 	bcc  2003500 <_vfprintf_r+0x1c3c>
 20033fc:	de 2d bf ff 	stb  %o7, [ %l6 + -1 ]
 2003400:	88 07 bb 40 	add  %fp, -1216, %g4
 2003404:	9a 07 bb 52 	add  %fp, -1198, %o5
 2003408:	84 07 bb 42 	add  %fp, -1214, %g2
 200340c:	9a 23 40 16 	sub  %o5, %l6, %o5
 2003410:	10 80 00 03 	b  200341c <_vfprintf_r+0x1b58>
 2003414:	9a 01 00 0d 	add  %g4, %o5, %o5
 2003418:	86 00 e0 01 	inc  %g3
 200341c:	de 28 80 00 	stb  %o7, [ %g2 ]
 2003420:	84 00 a0 01 	inc  %g2
 2003424:	80 a0 80 0d 	cmp  %g2, %o5
 2003428:	32 bf ff fc 	bne,a   2003418 <_vfprintf_r+0x1b54>
 200342c:	de 08 e0 01 	ldub  [ %g3 + 1 ], %o7
 2003430:	84 07 bb 50 	add  %fp, -1200, %g2
 2003434:	86 07 bb 42 	add  %fp, -1214, %g3
 2003438:	84 20 80 16 	sub  %g2, %l6, %g2
 200343c:	10 bf ff 74 	b  200320c <_vfprintf_r+0x1948>
 2003440:	84 00 c0 02 	add  %g3, %g2, %g2
 2003444:	a6 10 20 67 	mov  0x67, %l3
 2003448:	aa 38 00 04 	xnor  %g0, %g4, %l5
 200344c:	c8 27 bb 18 	st  %g4, [ %fp + -1256 ]
 2003450:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 2003454:	10 bf fe 73 	b  2002e20 <_vfprintf_r+0x155c>
 2003458:	aa 09 00 15 	and  %g4, %l5, %l5
 200345c:	84 00 c0 02 	add  %g3, %g2, %g2
 2003460:	aa 38 00 02 	xnor  %g0, %g2, %l5
 2003464:	c4 27 bb 18 	st  %g2, [ %fp + -1256 ]
 2003468:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 200346c:	10 bf fe 6d 	b  2002e20 <_vfprintf_r+0x155c>
 2003470:	aa 08 80 15 	and  %g2, %l5, %l5
 2003474:	32 80 00 1e 	bne,a   20034ec <_vfprintf_r+0x1c28>
 2003478:	ac 05 a0 02 	add  %l6, 2, %l6
 200347c:	80 8c 60 01 	btst  1, %l1
 2003480:	32 80 00 1b 	bne,a   20034ec <_vfprintf_r+0x1c28>
 2003484:	ac 05 a0 02 	add  %l6, 2, %l6
 2003488:	9a 10 20 01 	mov  1, %o5
 200348c:	aa 10 20 01 	mov  1, %l5
 2003490:	10 bf fe 64 	b  2002e20 <_vfprintf_r+0x155c>
 2003494:	da 27 bb 18 	st  %o5, [ %fp + -1256 ]
 2003498:	84 10 20 2d 	mov  0x2d, %g2
 200349c:	aa 20 00 15 	neg  %l5
 20034a0:	10 bf ff 52 	b  20031e8 <_vfprintf_r+0x1924>
 20034a4:	c4 2f bb 41 	stb  %g2, [ %fp + -1215 ]
 20034a8:	ac 10 20 02 	mov  2, %l6
 20034ac:	10 bf ff ac 	b  200335c <_vfprintf_r+0x1a98>
 20034b0:	ac 25 80 03 	sub  %l6, %g3, %l6
 20034b4:	ec 06 c0 00 	ld  [ %i3 ], %l6
 20034b8:	80 a5 a0 00 	cmp  %l6, 0
 20034bc:	16 bf f9 66 	bge  2001a54 <_vfprintf_r+0x190>
 20034c0:	b6 06 e0 04 	add  %i3, 4, %i3
 20034c4:	10 bf f9 64 	b  2001a54 <_vfprintf_r+0x190>
 20034c8:	ac 10 3f ff 	mov  -1, %l6
 20034cc:	80 8c 60 01 	btst  1, %l1
 20034d0:	32 bf ff 58 	bne,a   2003230 <_vfprintf_r+0x196c>
 20034d4:	da 07 bb 18 	ld  [ %fp + -1256 ], %o5
 20034d8:	aa 38 00 0c 	xnor  %g0, %o4, %l5
 20034dc:	c0 27 ba f8 	clr  [ %fp + -1288 ]
 20034e0:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 20034e4:	10 bf fe 50 	b  2002e24 <_vfprintf_r+0x1560>
 20034e8:	aa 0b 00 15 	and  %o4, %l5, %l5
 20034ec:	aa 38 00 16 	xnor  %g0, %l6, %l5
 20034f0:	ec 27 bb 18 	st  %l6, [ %fp + -1256 ]
 20034f4:	ab 3d 60 1f 	sra  %l5, 0x1f, %l5
 20034f8:	10 bf fe 4a 	b  2002e20 <_vfprintf_r+0x155c>
 20034fc:	aa 0d 80 15 	and  %l6, %l5, %l5
 2003500:	84 07 bb 42 	add  %fp, -1214, %g2
 2003504:	10 bf ff 42 	b  200320c <_vfprintf_r+0x1948>
 2003508:	88 07 bb 40 	add  %fp, -1216, %g4
 200350c:	10 bf ff 30 	b  20031cc <_vfprintf_r+0x1908>
 2003510:	ea 07 bb 34 	ld  [ %fp + -1228 ], %l5

02003514 <vfprintf>:
 2003514:	82 10 00 09 	mov  %o1, %g1
 2003518:	96 10 00 0a 	mov  %o2, %o3
 200351c:	92 10 00 08 	mov  %o0, %o1
 2003520:	05 00 80 29 	sethi  %hi(0x200a400), %g2
 2003524:	94 10 00 01 	mov  %g1, %o2
 2003528:	d0 00 a0 08 	ld  [ %g2 + 8 ], %o0
 200352c:	82 13 c0 00 	mov  %o7, %g1
 2003530:	7f ff f8 e5 	call  20018c4 <_vfprintf_r>
 2003534:	9e 10 40 00 	mov  %g1, %o7

02003538 <__swsetup_r>:
 2003538:	9d e3 bf a0 	save  %sp, -96, %sp
 200353c:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2003540:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0	! 200a408 <_impure_ptr>
 2003544:	80 a2 20 00 	cmp  %o0, 0
 2003548:	22 80 00 07 	be,a   2003564 <__swsetup_r+0x2c>
 200354c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2003550:	c2 02 20 38 	ld  [ %o0 + 0x38 ], %g1
 2003554:	80 a0 60 00 	cmp  %g1, 0
 2003558:	02 80 00 38 	be  2003638 <__swsetup_r+0x100>
 200355c:	01 00 00 00 	nop 
 2003560:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2003564:	80 88 60 08 	btst  8, %g1
 2003568:	02 80 00 12 	be  20035b0 <__swsetup_r+0x78>
 200356c:	80 88 60 10 	btst  0x10, %g1
 2003570:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2003574:	80 a0 a0 00 	cmp  %g2, 0
 2003578:	02 80 00 19 	be  20035dc <__swsetup_r+0xa4>
 200357c:	86 08 62 80 	and  %g1, 0x280, %g3
 2003580:	80 88 60 01 	btst  1, %g1
 2003584:	02 80 00 1f 	be  2003600 <__swsetup_r+0xc8>
 2003588:	80 88 60 02 	btst  2, %g1
 200358c:	c2 06 60 14 	ld  [ %i1 + 0x14 ], %g1
 2003590:	c0 26 60 08 	clr  [ %i1 + 8 ]
 2003594:	82 20 00 01 	neg  %g1
 2003598:	c2 26 60 18 	st  %g1, [ %i1 + 0x18 ]
 200359c:	80 a0 a0 00 	cmp  %g2, 0
 20035a0:	02 80 00 1f 	be  200361c <__swsetup_r+0xe4>
 20035a4:	b0 10 20 00 	clr  %i0
 20035a8:	81 c7 e0 08 	ret 
 20035ac:	81 e8 00 00 	restore 
 20035b0:	02 80 00 36 	be  2003688 <__swsetup_r+0x150>
 20035b4:	80 88 60 04 	btst  4, %g1
 20035b8:	32 80 00 24 	bne,a   2003648 <__swsetup_r+0x110>
 20035bc:	d2 06 60 30 	ld  [ %i1 + 0x30 ], %o1
 20035c0:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 20035c4:	86 10 60 08 	or  %g1, 8, %g3
 20035c8:	c6 36 60 0c 	sth  %g3, [ %i1 + 0xc ]
 20035cc:	80 a0 a0 00 	cmp  %g2, 0
 20035d0:	12 bf ff ec 	bne  2003580 <__swsetup_r+0x48>
 20035d4:	82 10 00 03 	mov  %g3, %g1
 20035d8:	86 08 62 80 	and  %g1, 0x280, %g3
 20035dc:	80 a0 e2 00 	cmp  %g3, 0x200
 20035e0:	02 bf ff e9 	be  2003584 <__swsetup_r+0x4c>
 20035e4:	80 88 60 01 	btst  1, %g1
 20035e8:	90 10 00 18 	mov  %i0, %o0
 20035ec:	40 00 08 8d 	call  2005820 <__smakebuf_r>
 20035f0:	92 10 00 19 	mov  %i1, %o1
 20035f4:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20035f8:	10 bf ff e2 	b  2003580 <__swsetup_r+0x48>
 20035fc:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2003600:	12 80 00 03 	bne  200360c <__swsetup_r+0xd4>
 2003604:	86 10 20 00 	clr  %g3
 2003608:	c6 06 60 14 	ld  [ %i1 + 0x14 ], %g3
 200360c:	c6 26 60 08 	st  %g3, [ %i1 + 8 ]
 2003610:	80 a0 a0 00 	cmp  %g2, 0
 2003614:	12 bf ff e5 	bne  20035a8 <__swsetup_r+0x70>
 2003618:	b0 10 20 00 	clr  %i0
 200361c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2003620:	80 88 60 80 	btst  0x80, %g1
 2003624:	02 bf ff e1 	be  20035a8 <__swsetup_r+0x70>
 2003628:	82 10 60 40 	or  %g1, 0x40, %g1
 200362c:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2003630:	81 c7 e0 08 	ret 
 2003634:	91 e8 3f ff 	restore  %g0, -1, %o0
 2003638:	40 00 06 b0 	call  20050f8 <__sinit>
 200363c:	01 00 00 00 	nop 
 2003640:	10 bf ff c9 	b  2003564 <__swsetup_r+0x2c>
 2003644:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2003648:	80 a2 60 00 	cmp  %o1, 0
 200364c:	22 80 00 0b 	be,a   2003678 <__swsetup_r+0x140>
 2003650:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2003654:	84 06 60 40 	add  %i1, 0x40, %g2
 2003658:	80 a2 40 02 	cmp  %o1, %g2
 200365c:	22 80 00 06 	be,a   2003674 <__swsetup_r+0x13c>
 2003660:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 2003664:	40 00 07 4f 	call  20053a0 <_free_r>
 2003668:	90 10 00 18 	mov  %i0, %o0
 200366c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2003670:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 2003674:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2003678:	82 08 7f db 	and  %g1, -37, %g1
 200367c:	c0 26 60 04 	clr  [ %i1 + 4 ]
 2003680:	10 bf ff d1 	b  20035c4 <__swsetup_r+0x8c>
 2003684:	c4 26 40 00 	st  %g2, [ %i1 ]
 2003688:	84 10 20 09 	mov  9, %g2
 200368c:	c4 26 00 00 	st  %g2, [ %i0 ]
 2003690:	82 10 60 40 	or  %g1, 0x40, %g1
 2003694:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2003698:	81 c7 e0 08 	ret 
 200369c:	91 e8 3f ff 	restore  %g0, -1, %o0

020036a0 <__call_exitprocs>:
 20036a0:	9d e3 bf a0 	save  %sp, -96, %sp
 20036a4:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 20036a8:	27 00 00 00 	sethi  %hi(0), %l3
 20036ac:	e2 00 61 2c 	ld  [ %g1 + 0x12c ], %l1
 20036b0:	a0 10 20 01 	mov  1, %l0
 20036b4:	a4 04 61 48 	add  %l1, 0x148, %l2
 20036b8:	a6 14 e0 00 	mov  %l3, %l3
 20036bc:	f6 04 61 48 	ld  [ %l1 + 0x148 ], %i3
 20036c0:	aa 10 00 12 	mov  %l2, %l5
 20036c4:	80 a6 e0 00 	cmp  %i3, 0
 20036c8:	02 80 00 37 	be  20037a4 <__call_exitprocs+0x104>
 20036cc:	01 00 00 00 	nop 
 20036d0:	fa 06 e0 04 	ld  [ %i3 + 4 ], %i5
 20036d4:	ba 87 7f ff 	addcc  %i5, -1, %i5
 20036d8:	0c 80 00 31 	bneg  200379c <__call_exitprocs+0xfc>
 20036dc:	80 a4 e0 00 	cmp  %l3, 0
 20036e0:	b4 06 e0 88 	add  %i3, 0x88, %i2
 20036e4:	b9 2f 60 02 	sll  %i5, 2, %i4
 20036e8:	10 80 00 09 	b  200370c <__call_exitprocs+0x6c>
 20036ec:	b8 06 80 1c 	add  %i2, %i4, %i4
 20036f0:	80 a0 40 19 	cmp  %g1, %i1
 20036f4:	02 80 00 0a 	be  200371c <__call_exitprocs+0x7c>
 20036f8:	84 27 00 1a 	sub  %i4, %i2, %g2
 20036fc:	ba 07 7f ff 	add  %i5, -1, %i5
 2003700:	80 a7 7f ff 	cmp  %i5, -1
 2003704:	02 80 00 25 	be  2003798 <__call_exitprocs+0xf8>
 2003708:	b8 07 3f fc 	add  %i4, -4, %i4
 200370c:	80 a6 60 00 	cmp  %i1, 0
 2003710:	32 bf ff f8 	bne,a   20036f0 <__call_exitprocs+0x50>
 2003714:	c2 07 20 80 	ld  [ %i4 + 0x80 ], %g1
 2003718:	84 27 00 1a 	sub  %i4, %i2, %g2
 200371c:	c6 06 e0 04 	ld  [ %i3 + 4 ], %g3
 2003720:	84 06 c0 02 	add  %i3, %g2, %g2
 2003724:	86 00 ff ff 	add  %g3, -1, %g3
 2003728:	80 a0 c0 1d 	cmp  %g3, %i5
 200372c:	02 80 00 24 	be  20037bc <__call_exitprocs+0x11c>
 2003730:	c2 00 a0 08 	ld  [ %g2 + 8 ], %g1
 2003734:	c0 20 a0 08 	clr  [ %g2 + 8 ]
 2003738:	80 a0 60 00 	cmp  %g1, 0
 200373c:	02 bf ff f0 	be  20036fc <__call_exitprocs+0x5c>
 2003740:	85 2c 00 1d 	sll  %l0, %i5, %g2
 2003744:	c6 06 e1 88 	ld  [ %i3 + 0x188 ], %g3
 2003748:	80 88 80 03 	btst  %g2, %g3
 200374c:	02 80 00 18 	be  20037ac <__call_exitprocs+0x10c>
 2003750:	e8 06 e0 04 	ld  [ %i3 + 4 ], %l4
 2003754:	c6 06 e1 8c 	ld  [ %i3 + 0x18c ], %g3
 2003758:	80 88 80 03 	btst  %g2, %g3
 200375c:	12 80 00 1a 	bne  20037c4 <__call_exitprocs+0x124>
 2003760:	90 10 00 18 	mov  %i0, %o0
 2003764:	9f c0 40 00 	call  %g1
 2003768:	d2 07 00 00 	ld  [ %i4 ], %o1
 200376c:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 2003770:	80 a0 40 14 	cmp  %g1, %l4
 2003774:	32 bf ff d3 	bne,a   20036c0 <__call_exitprocs+0x20>
 2003778:	f6 04 61 48 	ld  [ %l1 + 0x148 ], %i3
 200377c:	c2 05 40 00 	ld  [ %l5 ], %g1
 2003780:	80 a0 40 1b 	cmp  %g1, %i3
 2003784:	12 bf ff ce 	bne  20036bc <__call_exitprocs+0x1c>
 2003788:	ba 07 7f ff 	add  %i5, -1, %i5
 200378c:	80 a7 7f ff 	cmp  %i5, -1
 2003790:	12 bf ff df 	bne  200370c <__call_exitprocs+0x6c>
 2003794:	b8 07 3f fc 	add  %i4, -4, %i4
 2003798:	80 a4 e0 00 	cmp  %l3, 0
 200379c:	32 80 00 0e 	bne,a   20037d4 <__call_exitprocs+0x134>
 20037a0:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 20037a4:	81 c7 e0 08 	ret 
 20037a8:	81 e8 00 00 	restore 
 20037ac:	9f c0 40 00 	call  %g1
 20037b0:	01 00 00 00 	nop 
 20037b4:	10 bf ff ef 	b  2003770 <__call_exitprocs+0xd0>
 20037b8:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 20037bc:	10 bf ff df 	b  2003738 <__call_exitprocs+0x98>
 20037c0:	fa 26 e0 04 	st  %i5, [ %i3 + 4 ]
 20037c4:	9f c0 40 00 	call  %g1
 20037c8:	d0 07 00 00 	ld  [ %i4 ], %o0
 20037cc:	10 bf ff e9 	b  2003770 <__call_exitprocs+0xd0>
 20037d0:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 20037d4:	80 a0 60 00 	cmp  %g1, 0
 20037d8:	12 80 00 0a 	bne  2003800 <__call_exitprocs+0x160>
 20037dc:	c2 06 c0 00 	ld  [ %i3 ], %g1
 20037e0:	80 a0 60 00 	cmp  %g1, 0
 20037e4:	02 80 00 06 	be  20037fc <__call_exitprocs+0x15c>
 20037e8:	90 10 00 1b 	mov  %i3, %o0
 20037ec:	7f 7f f2 05 	call  0 <_.xy-0x4>
 20037f0:	c2 25 40 00 	st  %g1, [ %l5 ]
 20037f4:	10 bf ff b4 	b  20036c4 <__call_exitprocs+0x24>
 20037f8:	f6 05 40 00 	ld  [ %l5 ], %i3
 20037fc:	82 10 20 00 	clr  %g1
 2003800:	aa 10 00 1b 	mov  %i3, %l5
 2003804:	10 bf ff b0 	b  20036c4 <__call_exitprocs+0x24>
 2003808:	b6 10 00 01 	mov  %g1, %i3

0200380c <quorem>:
 200380c:	9d e3 bf a0 	save  %sp, -96, %sp
 2003810:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
 2003814:	a2 10 00 18 	mov  %i0, %l1
 2003818:	f4 06 60 10 	ld  [ %i1 + 0x10 ], %i2
 200381c:	80 a6 80 01 	cmp  %i2, %g1
 2003820:	14 80 00 87 	bg  2003a3c <quorem+0x230>
 2003824:	b0 10 20 00 	clr  %i0
 2003828:	82 06 a0 03 	add  %i2, 3, %g1
 200382c:	83 28 60 02 	sll  %g1, 2, %g1
 2003830:	a4 06 40 01 	add  %i1, %g1, %l2
 2003834:	82 04 40 01 	add  %l1, %g1, %g1
 2003838:	d2 04 a0 04 	ld  [ %l2 + 4 ], %o1
 200383c:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
 2003840:	92 02 60 01 	inc  %o1
 2003844:	40 00 18 d2 	call  2009b8c <.udiv>
 2003848:	b4 06 bf ff 	add  %i2, -1, %i2
 200384c:	a4 04 a0 04 	add  %l2, 4, %l2
 2003850:	b0 10 00 08 	mov  %o0, %i0
 2003854:	ba 06 60 14 	add  %i1, 0x14, %i5
 2003858:	80 a2 20 00 	cmp  %o0, 0
 200385c:	02 80 00 3f 	be  2003958 <quorem+0x14c>
 2003860:	aa 04 60 14 	add  %l1, 0x14, %l5
 2003864:	39 00 00 3f 	sethi  %hi(0xfc00), %i4
 2003868:	a0 10 00 1d 	mov  %i5, %l0
 200386c:	b6 10 00 15 	mov  %l5, %i3
 2003870:	a6 10 20 00 	clr  %l3
 2003874:	ac 10 20 00 	clr  %l6
 2003878:	b8 17 23 ff 	or  %i4, 0x3ff, %i4
 200387c:	e8 04 00 00 	ld  [ %l0 ], %l4
 2003880:	92 10 00 18 	mov  %i0, %o1
 2003884:	40 00 18 88 	call  2009aa4 <.umul>
 2003888:	90 0d 00 1c 	and  %l4, %i4, %o0
 200388c:	92 10 00 18 	mov  %i0, %o1
 2003890:	a6 04 c0 08 	add  %l3, %o0, %l3
 2003894:	40 00 18 84 	call  2009aa4 <.umul>
 2003898:	91 35 20 10 	srl  %l4, 0x10, %o0
 200389c:	c2 06 c0 00 	ld  [ %i3 ], %g1
 20038a0:	84 08 40 1c 	and  %g1, %i4, %g2
 20038a4:	a9 34 e0 10 	srl  %l3, 0x10, %l4
 20038a8:	ac 00 80 16 	add  %g2, %l6, %l6
 20038ac:	a6 0c c0 1c 	and  %l3, %i4, %l3
 20038b0:	a6 25 80 13 	sub  %l6, %l3, %l3
 20038b4:	85 3c e0 10 	sra  %l3, 0x10, %g2
 20038b8:	90 05 00 08 	add  %l4, %o0, %o0
 20038bc:	83 30 60 10 	srl  %g1, 0x10, %g1
 20038c0:	86 0a 00 1c 	and  %o0, %i4, %g3
 20038c4:	a6 0c c0 1c 	and  %l3, %i4, %l3
 20038c8:	82 20 40 03 	sub  %g1, %g3, %g1
 20038cc:	82 00 40 02 	add  %g1, %g2, %g1
 20038d0:	85 28 60 10 	sll  %g1, 0x10, %g2
 20038d4:	a6 10 80 13 	or  %g2, %l3, %l3
 20038d8:	e6 26 c0 00 	st  %l3, [ %i3 ]
 20038dc:	a0 04 20 04 	add  %l0, 4, %l0
 20038e0:	a7 32 20 10 	srl  %o0, 0x10, %l3
 20038e4:	ad 38 60 10 	sra  %g1, 0x10, %l6
 20038e8:	80 a4 80 10 	cmp  %l2, %l0
 20038ec:	1a bf ff e4 	bcc  200387c <quorem+0x70>
 20038f0:	b6 06 e0 04 	add  %i3, 4, %i3
 20038f4:	84 06 a0 04 	add  %i2, 4, %g2
 20038f8:	85 28 a0 02 	sll  %g2, 2, %g2
 20038fc:	84 04 40 02 	add  %l1, %g2, %g2
 2003900:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
 2003904:	80 a0 60 00 	cmp  %g1, 0
 2003908:	32 80 00 15 	bne,a   200395c <quorem+0x150>
 200390c:	90 10 00 11 	mov  %l1, %o0
 2003910:	82 10 00 02 	mov  %g2, %g1
 2003914:	80 a5 40 01 	cmp  %l5, %g1
 2003918:	1a 80 00 0f 	bcc  2003954 <quorem+0x148>
 200391c:	84 00 a0 04 	add  %g2, 4, %g2
 2003920:	c4 00 bf fc 	ld  [ %g2 + -4 ], %g2
 2003924:	80 a0 a0 00 	cmp  %g2, 0
 2003928:	02 80 00 08 	be  2003948 <quorem+0x13c>
 200392c:	82 00 7f fc 	add  %g1, -4, %g1
 2003930:	10 80 00 0a 	b  2003958 <quorem+0x14c>
 2003934:	f4 24 60 10 	st  %i2, [ %l1 + 0x10 ]
 2003938:	c4 00 40 00 	ld  [ %g1 ], %g2
 200393c:	80 a0 a0 00 	cmp  %g2, 0
 2003940:	12 80 00 05 	bne  2003954 <quorem+0x148>
 2003944:	82 00 7f fc 	add  %g1, -4, %g1
 2003948:	80 a5 40 01 	cmp  %l5, %g1
 200394c:	0a bf ff fb 	bcs  2003938 <quorem+0x12c>
 2003950:	b4 06 bf ff 	add  %i2, -1, %i2
 2003954:	f4 24 60 10 	st  %i2, [ %l1 + 0x10 ]
 2003958:	90 10 00 11 	mov  %l1, %o0
 200395c:	40 00 0c 87 	call  2006b78 <__mcmp>
 2003960:	92 10 00 19 	mov  %i1, %o1
 2003964:	80 a2 20 00 	cmp  %o0, 0
 2003968:	06 80 00 35 	bl  2003a3c <quorem+0x230>
 200396c:	03 00 00 3f 	sethi  %hi(0xfc00), %g1
 2003970:	b0 06 20 01 	inc  %i0
 2003974:	84 10 00 15 	mov  %l5, %g2
 2003978:	86 10 20 00 	clr  %g3
 200397c:	82 10 63 ff 	or  %g1, 0x3ff, %g1
 2003980:	f8 07 40 00 	ld  [ %i5 ], %i4
 2003984:	f6 00 80 00 	ld  [ %g2 ], %i3
 2003988:	b2 0f 00 01 	and  %i4, %g1, %i1
 200398c:	88 0e c0 01 	and  %i3, %g1, %g4
 2003990:	b9 37 20 10 	srl  %i4, 0x10, %i4
 2003994:	86 01 00 03 	add  %g4, %g3, %g3
 2003998:	b8 0f 00 01 	and  %i4, %g1, %i4
 200399c:	88 20 c0 19 	sub  %g3, %i1, %g4
 20039a0:	b7 36 e0 10 	srl  %i3, 0x10, %i3
 20039a4:	b3 39 20 10 	sra  %g4, 0x10, %i1
 20039a8:	86 26 c0 1c 	sub  %i3, %i4, %g3
 20039ac:	88 09 00 01 	and  %g4, %g1, %g4
 20039b0:	86 00 c0 19 	add  %g3, %i1, %g3
 20039b4:	b9 28 e0 10 	sll  %g3, 0x10, %i4
 20039b8:	88 17 00 04 	or  %i4, %g4, %g4
 20039bc:	c8 20 80 00 	st  %g4, [ %g2 ]
 20039c0:	ba 07 60 04 	add  %i5, 4, %i5
 20039c4:	87 38 e0 10 	sra  %g3, 0x10, %g3
 20039c8:	80 a4 80 1d 	cmp  %l2, %i5
 20039cc:	1a bf ff ed 	bcc  2003980 <quorem+0x174>
 20039d0:	84 00 a0 04 	add  %g2, 4, %g2
 20039d4:	84 06 a0 04 	add  %i2, 4, %g2
 20039d8:	85 28 a0 02 	sll  %g2, 2, %g2
 20039dc:	84 04 40 02 	add  %l1, %g2, %g2
 20039e0:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
 20039e4:	80 a0 60 00 	cmp  %g1, 0
 20039e8:	12 80 00 15 	bne  2003a3c <quorem+0x230>
 20039ec:	82 10 00 02 	mov  %g2, %g1
 20039f0:	80 a5 40 01 	cmp  %l5, %g1
 20039f4:	1a 80 00 11 	bcc  2003a38 <quorem+0x22c>
 20039f8:	84 00 a0 04 	add  %g2, 4, %g2
 20039fc:	c4 00 bf fc 	ld  [ %g2 + -4 ], %g2
 2003a00:	80 a0 a0 00 	cmp  %g2, 0
 2003a04:	22 80 00 0a 	be,a   2003a2c <quorem+0x220>
 2003a08:	82 00 7f fc 	add  %g1, -4, %g1
 2003a0c:	f4 24 60 10 	st  %i2, [ %l1 + 0x10 ]
 2003a10:	81 c7 e0 08 	ret 
 2003a14:	81 e8 00 00 	restore 
 2003a18:	c4 00 40 00 	ld  [ %g1 ], %g2
 2003a1c:	80 a0 a0 00 	cmp  %g2, 0
 2003a20:	32 80 00 07 	bne,a   2003a3c <quorem+0x230>
 2003a24:	f4 24 60 10 	st  %i2, [ %l1 + 0x10 ]
 2003a28:	82 00 7f fc 	add  %g1, -4, %g1
 2003a2c:	80 a5 40 01 	cmp  %l5, %g1
 2003a30:	0a bf ff fa 	bcs  2003a18 <quorem+0x20c>
 2003a34:	b4 06 bf ff 	add  %i2, -1, %i2
 2003a38:	f4 24 60 10 	st  %i2, [ %l1 + 0x10 ]
 2003a3c:	81 c7 e0 08 	ret 
 2003a40:	81 e8 00 00 	restore 

02003a44 <_dtoa_r>:
 2003a44:	9d e3 bf 50 	save  %sp, -176, %sp
 2003a48:	f2 27 bf b8 	st  %i1, [ %fp + -72 ]
 2003a4c:	f4 27 bf bc 	st  %i2, [ %fp + -68 ]
 2003a50:	d1 1f bf b8 	ldd  [ %fp + -72 ], %f8
 2003a54:	95 a0 00 28 	fmovs  %f8, %f10
 2003a58:	97 a0 00 29 	fmovs  %f9, %f11
 2003a5c:	d5 3f bf f0 	std  %f10, [ %fp + -16 ]
 2003a60:	d2 06 20 40 	ld  [ %i0 + 0x40 ], %o1
 2003a64:	f2 07 a0 5c 	ld  [ %fp + 0x5c ], %i1
 2003a68:	80 a2 60 00 	cmp  %o1, 0
 2003a6c:	02 80 00 0a 	be  2003a94 <_dtoa_r+0x50>
 2003a70:	f4 07 a0 60 	ld  [ %fp + 0x60 ], %i2
 2003a74:	c2 06 20 44 	ld  [ %i0 + 0x44 ], %g1
 2003a78:	84 10 20 01 	mov  1, %g2
 2003a7c:	c2 22 60 04 	st  %g1, [ %o1 + 4 ]
 2003a80:	83 28 80 01 	sll  %g2, %g1, %g1
 2003a84:	90 10 00 18 	mov  %i0, %o0
 2003a88:	40 00 0a 45 	call  200639c <_Bfree>
 2003a8c:	c2 22 60 08 	st  %g1, [ %o1 + 8 ]
 2003a90:	c0 26 20 40 	clr  [ %i0 + 0x40 ]
 2003a94:	e0 07 bf f0 	ld  [ %fp + -16 ], %l0
 2003a98:	80 a4 20 00 	cmp  %l0, 0
 2003a9c:	06 80 00 2b 	bl  2003b48 <_dtoa_r+0x104>
 2003aa0:	82 10 20 01 	mov  1, %g1
 2003aa4:	c0 26 40 00 	clr  [ %i1 ]
 2003aa8:	03 1f fc 00 	sethi  %hi(0x7ff00000), %g1
 2003aac:	84 0c 00 01 	and  %l0, %g1, %g2
 2003ab0:	80 a0 80 01 	cmp  %g2, %g1
 2003ab4:	02 80 00 11 	be  2003af8 <_dtoa_r+0xb4>
 2003ab8:	d1 1f bf f0 	ldd  [ %fp + -16 ], %f8
 2003abc:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 2003ac0:	d5 18 e1 98 	ldd  [ %g3 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 2003ac4:	81 aa 0a 4a 	fcmpd  %f8, %f10
 2003ac8:	01 00 00 00 	nop 
 2003acc:	03 80 00 24 	fbne  2003b5c <_dtoa_r+0x118>
 2003ad0:	82 10 20 01 	mov  1, %g1	! 1 <_.xy-0x3>
 2003ad4:	80 a6 a0 00 	cmp  %i2, 0
 2003ad8:	02 80 01 31 	be  2003f9c <_dtoa_r+0x558>
 2003adc:	c2 27 40 00 	st  %g1, [ %i5 ]
 2003ae0:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2003ae4:	b8 17 21 91 	or  %i4, 0x191, %i4	! 200a191 <_global_impure_ptr+0x65>
 2003ae8:	f8 26 80 00 	st  %i4, [ %i2 ]
 2003aec:	b8 07 3f ff 	add  %i4, -1, %i4
 2003af0:	81 c7 e0 08 	ret 
 2003af4:	91 e8 00 1c 	restore  %g0, %i4, %o0
 2003af8:	03 00 00 09 	sethi  %hi(0x2400), %g1
 2003afc:	82 10 63 0f 	or  %g1, 0x30f, %g1	! 270f <_.tmp+0x26cf>
 2003b00:	c2 27 40 00 	st  %g1, [ %i5 ]
 2003b04:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
 2003b08:	80 a0 a0 00 	cmp  %g2, 0
 2003b0c:	02 80 01 02 	be  2003f14 <_dtoa_r+0x4d0>
 2003b10:	03 3f fc 00 	sethi  %hi(0xfff00000), %g1
 2003b14:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2003b18:	b8 17 21 d0 	or  %i4, 0x1d0, %i4	! 200a1d0 <zeroes.4060+0x20>
 2003b1c:	80 a6 a0 00 	cmp  %i2, 0
 2003b20:	02 bf ff f4 	be  2003af0 <_dtoa_r+0xac>
 2003b24:	01 00 00 00 	nop 
 2003b28:	c4 4f 20 03 	ldsb  [ %i4 + 3 ], %g2
 2003b2c:	80 a0 a0 00 	cmp  %g2, 0
 2003b30:	02 80 00 03 	be  2003b3c <_dtoa_r+0xf8>
 2003b34:	82 07 20 03 	add  %i4, 3, %g1
 2003b38:	82 07 20 08 	add  %i4, 8, %g1
 2003b3c:	c2 26 80 00 	st  %g1, [ %i2 ]
 2003b40:	81 c7 e0 08 	ret 
 2003b44:	91 e8 00 1c 	restore  %g0, %i4, %o0
 2003b48:	c2 26 40 00 	st  %g1, [ %i1 ]
 2003b4c:	03 20 00 00 	sethi  %hi(0x80000000), %g1
 2003b50:	a0 2c 00 01 	andn  %l0, %g1, %l0
 2003b54:	10 bf ff d5 	b  2003aa8 <_dtoa_r+0x64>
 2003b58:	e0 27 bf f0 	st  %l0, [ %fp + -16 ]
 2003b5c:	d1 3f bf b8 	std  %f8, [ %fp + -72 ]
 2003b60:	c4 1f bf b8 	ldd  [ %fp + -72 ], %g2
 2003b64:	d1 3f bf c0 	std  %f8, [ %fp + -64 ]
 2003b68:	94 10 00 03 	mov  %g3, %o2
 2003b6c:	90 10 00 18 	mov  %i0, %o0
 2003b70:	92 10 00 02 	mov  %g2, %o1
 2003b74:	96 07 bf fc 	add  %fp, -4, %o3
 2003b78:	40 00 0c e4 	call  2006f08 <__d2b>
 2003b7c:	98 07 bf f8 	add  %fp, -8, %o4
 2003b80:	87 34 20 14 	srl  %l0, 0x14, %g3
 2003b84:	b2 10 00 08 	mov  %o0, %i1
 2003b88:	86 88 e7 ff 	andcc  %g3, 0x7ff, %g3
 2003b8c:	02 80 00 e8 	be  2003f2c <_dtoa_r+0x4e8>
 2003b90:	d1 1f bf c0 	ldd  [ %fp + -64 ], %f8
 2003b94:	95 a0 00 28 	fmovs  %f8, %f10
 2003b98:	97 a0 00 29 	fmovs  %f9, %f11
 2003b9c:	d5 3f bf e8 	std  %f10, [ %fp + -24 ]
 2003ba0:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
 2003ba4:	05 3f fc 00 	sethi  %hi(0xfff00000), %g2
 2003ba8:	84 28 40 02 	andn  %g1, %g2, %g2
 2003bac:	03 0f fc 00 	sethi  %hi(0x3ff00000), %g1
 2003bb0:	82 10 80 01 	or  %g2, %g1, %g1
 2003bb4:	86 00 fc 01 	add  %g3, -1023, %g3
 2003bb8:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
 2003bbc:	aa 10 20 00 	clr  %l5
 2003bc0:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
 2003bc4:	d1 1f bf e8 	ldd  [ %fp + -24 ], %f8
 2003bc8:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003bcc:	1f 00 80 28 	sethi  %hi(0x200a000), %o7
 2003bd0:	d5 1b e1 e0 	ldd  [ %o7 + 0x1e0 ], %f10	! 200a1e0 <zeroes.4060+0x30>
 2003bd4:	95 a2 08 ca 	fsubd  %f8, %f10, %f10
 2003bd8:	d1 18 a1 e8 	ldd  [ %g2 + 0x1e8 ], %f8
 2003bdc:	c6 27 bf b4 	st  %g3, [ %fp + -76 ]
 2003be0:	95 a2 89 48 	fmuld  %f10, %f8, %f10
 2003be4:	d1 07 bf b4 	ld  [ %fp + -76 ], %f8
 2003be8:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003bec:	99 a0 19 08 	fitod  %f8, %f12
 2003bf0:	d1 18 a1 f0 	ldd  [ %g2 + 0x1f0 ], %f8
 2003bf4:	95 a2 88 48 	faddd  %f10, %f8, %f10
 2003bf8:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 2003bfc:	d1 19 21 f8 	ldd  [ %g4 + 0x1f8 ], %f8	! 200a1f8 <zeroes.4060+0x48>
 2003c00:	91 a3 09 48 	fmuld  %f12, %f8, %f8
 2003c04:	91 a2 88 48 	faddd  %f10, %f8, %f8
 2003c08:	95 a0 1a 48 	fdtoi  %f8, %f10
 2003c0c:	d5 27 bf b4 	st  %f10, [ %fp + -76 ]
 2003c10:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003c14:	d5 18 a1 98 	ldd  [ %g2 + 0x198 ], %f10	! 200a198 <_global_impure_ptr+0x6c>
 2003c18:	81 aa 0a ca 	fcmped  %f8, %f10
 2003c1c:	01 00 00 00 	nop 
 2003c20:	09 80 01 df 	fbl  200439c <_dtoa_r+0x958>
 2003c24:	e0 07 bf b4 	ld  [ %fp + -76 ], %l0
 2003c28:	80 a4 20 16 	cmp  %l0, 0x16
 2003c2c:	18 80 00 0d 	bgu  2003c60 <_dtoa_r+0x21c>
 2003c30:	ac 10 20 01 	mov  1, %l6
 2003c34:	85 2c 20 03 	sll  %l0, 3, %g2
 2003c38:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 2003c3c:	dd 1f bf f0 	ldd  [ %fp + -16 ], %f14
 2003c40:	88 11 22 88 	or  %g4, 0x288, %g4
 2003c44:	d1 19 00 02 	ldd  [ %g4 + %g2 ], %f8
 2003c48:	81 aa 0a ce 	fcmped  %f8, %f14
 2003c4c:	01 00 00 00 	nop 
 2003c50:	1d 80 01 df 	fbule  20043cc <_dtoa_r+0x988>
 2003c54:	01 00 00 00 	nop 
 2003c58:	a0 04 3f ff 	add  %l0, -1, %l0
 2003c5c:	ac 10 20 00 	clr  %l6
 2003c60:	86 20 40 03 	sub  %g1, %g3, %g3
 2003c64:	ae 80 ff ff 	addcc  %g3, -1, %l7
 2003c68:	0c 80 01 ca 	bneg  2004390 <_dtoa_r+0x94c>
 2003c6c:	a8 10 20 00 	clr  %l4
 2003c70:	80 a4 20 00 	cmp  %l0, 0
 2003c74:	26 80 01 c4 	bl,a   2004384 <_dtoa_r+0x940>
 2003c78:	a8 25 00 10 	sub  %l4, %l0, %l4
 2003c7c:	ae 05 c0 10 	add  %l7, %l0, %l7
 2003c80:	e0 27 bf e8 	st  %l0, [ %fp + -24 ]
 2003c84:	a4 10 20 00 	clr  %l2
 2003c88:	80 a6 e0 09 	cmp  %i3, 9
 2003c8c:	38 80 00 c7 	bgu,a   2003fa8 <_dtoa_r+0x564>
 2003c90:	b6 10 20 00 	clr  %i3
 2003c94:	80 a6 e0 05 	cmp  %i3, 5
 2003c98:	04 80 00 04 	ble  2003ca8 <_dtoa_r+0x264>
 2003c9c:	82 10 20 01 	mov  1, %g1
 2003ca0:	b6 06 ff fc 	add  %i3, -4, %i3
 2003ca4:	82 10 20 00 	clr  %g1
 2003ca8:	80 a6 e0 03 	cmp  %i3, 3
 2003cac:	22 80 01 e8 	be,a   200444c <_dtoa_r+0xa08>
 2003cb0:	c0 27 bf e0 	clr  [ %fp + -32 ]
 2003cb4:	14 80 01 e0 	bg  2004434 <_dtoa_r+0x9f0>
 2003cb8:	80 a6 e0 04 	cmp  %i3, 4
 2003cbc:	80 a6 e0 02 	cmp  %i3, 2
 2003cc0:	32 80 00 bb 	bne,a   2003fac <_dtoa_r+0x568>
 2003cc4:	82 10 3f ff 	mov  -1, %g1
 2003cc8:	c0 27 bf e0 	clr  [ %fp + -32 ]
 2003ccc:	80 a7 20 00 	cmp  %i4, 0
 2003cd0:	04 80 02 da 	ble  2004838 <_dtoa_r+0xdf4>
 2003cd4:	80 a7 20 0f 	cmp  %i4, 0xf
 2003cd8:	9a 10 00 1c 	mov  %i4, %o5
 2003cdc:	88 40 20 00 	addx  %g0, 0, %g4
 2003ce0:	f8 27 bf dc 	st  %i4, [ %fp + -36 ]
 2003ce4:	88 09 00 01 	and  %g4, %g1, %g4
 2003ce8:	a6 10 00 1c 	mov  %i4, %l3
 2003cec:	c0 26 20 44 	clr  [ %i0 + 0x44 ]
 2003cf0:	80 a3 60 17 	cmp  %o5, 0x17
 2003cf4:	08 80 00 0b 	bleu  2003d20 <_dtoa_r+0x2dc>
 2003cf8:	92 10 20 00 	clr  %o1
 2003cfc:	84 10 20 01 	mov  1, %g2
 2003d00:	82 10 20 04 	mov  4, %g1
 2003d04:	92 10 00 02 	mov  %g2, %o1
 2003d08:	83 28 60 01 	sll  %g1, 1, %g1
 2003d0c:	9e 00 60 14 	add  %g1, 0x14, %o7
 2003d10:	80 a3 c0 0d 	cmp  %o7, %o5
 2003d14:	08 bf ff fc 	bleu  2003d04 <_dtoa_r+0x2c0>
 2003d18:	84 00 a0 01 	inc  %g2
 2003d1c:	d2 26 20 44 	st  %o1, [ %i0 + 0x44 ]
 2003d20:	c8 27 bf cc 	st  %g4, [ %fp + -52 ]
 2003d24:	40 00 09 79 	call  2006308 <_Balloc>
 2003d28:	90 10 00 18 	mov  %i0, %o0
 2003d2c:	d0 26 20 40 	st  %o0, [ %i0 + 0x40 ]
 2003d30:	c8 07 bf cc 	ld  [ %fp + -52 ], %g4
 2003d34:	80 89 20 ff 	btst  0xff, %g4
 2003d38:	02 80 00 a8 	be  2003fd8 <_dtoa_r+0x594>
 2003d3c:	a2 10 00 08 	mov  %o0, %l1
 2003d40:	80 a4 20 00 	cmp  %l0, 0
 2003d44:	04 80 02 cc 	ble  2004874 <_dtoa_r+0xe30>
 2003d48:	e1 1f bf f0 	ldd  [ %fp + -16 ], %f16
 2003d4c:	84 0c 20 0f 	and  %l0, 0xf, %g2
 2003d50:	83 3c 20 04 	sra  %l0, 4, %g1
 2003d54:	85 28 a0 03 	sll  %g2, 3, %g2
 2003d58:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 2003d5c:	80 88 60 10 	btst  0x10, %g1
 2003d60:	88 11 22 88 	or  %g4, 0x288, %g4
 2003d64:	02 80 02 b1 	be  2004828 <_dtoa_r+0xde4>
 2003d68:	d1 19 00 02 	ldd  [ %g4 + %g2 ], %f8
 2003d6c:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003d70:	82 08 60 0f 	and  %g1, 0xf, %g1
 2003d74:	d9 18 a2 80 	ldd  [ %g2 + 0x280 ], %f12
 2003d78:	88 10 20 03 	mov  3, %g4
 2003d7c:	99 a4 09 cc 	fdivd  %f16, %f12, %f12
 2003d80:	80 a0 60 00 	cmp  %g1, 0
 2003d84:	22 80 00 0e 	be,a   2003dbc <_dtoa_r+0x378>
 2003d88:	91 a3 09 c8 	fdivd  %f12, %f8, %f8
 2003d8c:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003d90:	84 10 a2 60 	or  %g2, 0x260, %g2	! 200a260 <__mprec_bigtens>
 2003d94:	80 88 60 01 	btst  1, %g1
 2003d98:	02 80 00 05 	be  2003dac <_dtoa_r+0x368>
 2003d9c:	83 38 60 01 	sra  %g1, 1, %g1
 2003da0:	d5 18 80 00 	ldd  [ %g2 ], %f10
 2003da4:	88 01 20 01 	inc  %g4
 2003da8:	91 a2 09 4a 	fmuld  %f8, %f10, %f8
 2003dac:	80 a0 60 00 	cmp  %g1, 0
 2003db0:	12 bf ff f9 	bne  2003d94 <_dtoa_r+0x350>
 2003db4:	84 00 a0 08 	add  %g2, 8, %g2
 2003db8:	91 a3 09 c8 	fdivd  %f12, %f8, %f8
 2003dbc:	80 a5 a0 00 	cmp  %l6, 0
 2003dc0:	22 80 00 09 	be,a   2003de4 <_dtoa_r+0x3a0>
 2003dc4:	c8 27 bf b4 	st  %g4, [ %fp + -76 ]
 2003dc8:	1f 00 80 28 	sethi  %hi(0x200a000), %o7
 2003dcc:	d5 1b e2 00 	ldd  [ %o7 + 0x200 ], %f10	! 200a200 <zeroes.4060+0x50>
 2003dd0:	81 aa 0a ca 	fcmped  %f8, %f10
 2003dd4:	01 00 00 00 	nop 
 2003dd8:	09 80 03 28 	fbl  2004a78 <_dtoa_r+0x1034>
 2003ddc:	80 a4 e0 00 	cmp  %l3, 0
 2003de0:	c8 27 bf b4 	st  %g4, [ %fp + -76 ]
 2003de4:	d5 07 bf b4 	ld  [ %fp + -76 ], %f10
 2003de8:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2003dec:	99 a0 19 0a 	fitod  %f10, %f12
 2003df0:	d5 18 62 10 	ldd  [ %g1 + 0x210 ], %f10
 2003df4:	99 a3 09 48 	fmuld  %f12, %f8, %f12
 2003df8:	9d a3 08 4a 	faddd  %f12, %f10, %f14
 2003dfc:	dd 3f bf f0 	std  %f14, [ %fp + -16 ]
 2003e00:	03 3f 30 00 	sethi  %hi(0xfcc00000), %g1
 2003e04:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
 2003e08:	84 00 40 02 	add  %g1, %g2, %g2
 2003e0c:	80 a4 e0 00 	cmp  %l3, 0
 2003e10:	02 80 01 a5 	be  20044a4 <_dtoa_r+0xa60>
 2003e14:	c4 27 bf f0 	st  %g2, [ %fp + -16 ]
 2003e18:	88 10 00 10 	mov  %l0, %g4
 2003e1c:	98 10 00 13 	mov  %l3, %o4
 2003e20:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
 2003e24:	80 a0 60 00 	cmp  %g1, 0
 2003e28:	22 80 02 af 	be,a   20048e4 <_dtoa_r+0xea0>
 2003e2c:	95 a0 1a 48 	fdtoi  %f8, %f10
 2003e30:	9d a0 1a 48 	fdtoi  %f8, %f14
 2003e34:	dd 27 bf b4 	st  %f14, [ %fp + -76 ]
 2003e38:	82 03 3f ff 	add  %o4, -1, %g1
 2003e3c:	c6 07 bf b4 	ld  [ %fp + -76 ], %g3
 2003e40:	83 28 60 03 	sll  %g1, 3, %g1
 2003e44:	84 00 e0 30 	add  %g3, 0x30, %g2
 2003e48:	1f 00 80 28 	sethi  %hi(0x200a000), %o7
 2003e4c:	c4 2c 40 00 	stb  %g2, [ %l1 ]
 2003e50:	9e 13 e2 88 	or  %o7, 0x288, %o7
 2003e54:	d5 1f bf f0 	ldd  [ %fp + -16 ], %f10
 2003e58:	d9 1b c0 01 	ldd  [ %o7 + %g1 ], %f12
 2003e5c:	9d a0 19 0e 	fitod  %f14, %f14
 2003e60:	1f 00 80 28 	sethi  %hi(0x200a000), %o7
 2003e64:	91 a2 08 ce 	fsubd  %f8, %f14, %f8
 2003e68:	e5 1b e2 20 	ldd  [ %o7 + 0x220 ], %f18
 2003e6c:	99 a4 89 cc 	fdivd  %f18, %f12, %f12
 2003e70:	95 a3 08 ca 	fsubd  %f12, %f10, %f10
 2003e74:	81 aa 8a c8 	fcmped  %f10, %f8
 2003e78:	01 00 00 00 	nop 
 2003e7c:	0d 80 00 22 	fbg  2003f04 <_dtoa_r+0x4c0>
 2003e80:	82 04 60 01 	add  %l1, 1, %g1
 2003e84:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 2003e88:	e5 18 e2 00 	ldd  [ %g3 + 0x200 ], %f18	! 200a200 <zeroes.4060+0x50>
 2003e8c:	99 a4 88 c8 	fsubd  %f18, %f8, %f12
 2003e90:	81 aa 8a cc 	fcmped  %f10, %f12
 2003e94:	01 00 00 00 	nop 
 2003e98:	0d 80 03 42 	fbg  2004ba0 <_dtoa_r+0x115c>
 2003e9c:	80 a3 20 01 	cmp  %o4, 1
 2003ea0:	04 80 01 94 	ble  20044f0 <_dtoa_r+0xaac>
 2003ea4:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003ea8:	9e 04 40 0c 	add  %l1, %o4, %o7
 2003eac:	10 80 00 09 	b  2003ed0 <_dtoa_r+0x48c>
 2003eb0:	d9 18 a2 08 	ldd  [ %g2 + 0x208 ], %f12
 2003eb4:	9d a4 88 c8 	fsubd  %f18, %f8, %f14
 2003eb8:	81 ab 8a ca 	fcmped  %f14, %f10
 2003ebc:	01 00 00 00 	nop 
 2003ec0:	09 80 03 38 	fbl  2004ba0 <_dtoa_r+0x115c>
 2003ec4:	80 a0 40 0f 	cmp  %g1, %o7
 2003ec8:	22 80 01 8b 	be,a   20044f4 <_dtoa_r+0xab0>
 2003ecc:	91 a0 00 30 	fmovs  %f16, %f8
 2003ed0:	91 a2 09 4c 	fmuld  %f8, %f12, %f8
 2003ed4:	9d a0 1a 48 	fdtoi  %f8, %f14
 2003ed8:	dd 27 bf b4 	st  %f14, [ %fp + -76 ]
 2003edc:	c6 07 bf b4 	ld  [ %fp + -76 ], %g3
 2003ee0:	84 00 e0 30 	add  %g3, 0x30, %g2
 2003ee4:	c4 28 40 00 	stb  %g2, [ %g1 ]
 2003ee8:	95 a2 89 4c 	fmuld  %f10, %f12, %f10
 2003eec:	9d a0 19 0e 	fitod  %f14, %f14
 2003ef0:	91 a2 08 ce 	fsubd  %f8, %f14, %f8
 2003ef4:	81 aa 0a ca 	fcmped  %f8, %f10
 2003ef8:	01 00 00 00 	nop 
 2003efc:	19 bf ff ee 	fbuge  2003eb4 <_dtoa_r+0x470>
 2003f00:	82 00 60 01 	inc  %g1
 2003f04:	b8 10 00 11 	mov  %l1, %i4
 2003f08:	a0 10 00 04 	mov  %g4, %l0
 2003f0c:	10 80 01 13 	b  2004358 <_dtoa_r+0x914>
 2003f10:	a2 10 00 01 	mov  %g1, %l1
 2003f14:	80 ac 00 01 	andncc  %l0, %g1, %g0
 2003f18:	32 bf ff 00 	bne,a   2003b18 <_dtoa_r+0xd4>
 2003f1c:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2003f20:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2003f24:	10 bf fe fe 	b  2003b1c <_dtoa_r+0xd8>
 2003f28:	b8 17 21 c0 	or  %i4, 0x1c0, %i4	! 200a1c0 <zeroes.4060+0x10>
 2003f2c:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
 2003f30:	c6 07 bf fc 	ld  [ %fp + -4 ], %g3
 2003f34:	86 00 40 03 	add  %g1, %g3, %g3
 2003f38:	80 a0 fb ef 	cmp  %g3, -1041
 2003f3c:	26 80 01 20 	bl,a   20043bc <_dtoa_r+0x978>
 2003f40:	a0 10 3b ee 	mov  -1042, %l0
 2003f44:	84 00 e4 12 	add  %g3, 0x412, %g2
 2003f48:	88 10 3c 0e 	mov  -1010, %g4
 2003f4c:	de 07 bf f4 	ld  [ %fp + -12 ], %o7
 2003f50:	88 21 00 03 	sub  %g4, %g3, %g4
 2003f54:	85 33 c0 02 	srl  %o7, %g2, %g2
 2003f58:	a1 2c 00 04 	sll  %l0, %g4, %l0
 2003f5c:	a0 14 00 02 	or  %l0, %g2, %l0
 2003f60:	e0 27 bf b4 	st  %l0, [ %fp + -76 ]
 2003f64:	80 a4 20 00 	cmp  %l0, 0
 2003f68:	d5 07 bf b4 	ld  [ %fp + -76 ], %f10
 2003f6c:	06 80 02 b0 	bl  2004a2c <_dtoa_r+0xfe8>
 2003f70:	91 a0 19 0a 	fitod  %f10, %f8
 2003f74:	95 a0 00 28 	fmovs  %f8, %f10
 2003f78:	97 a0 00 29 	fmovs  %f9, %f11
 2003f7c:	d5 3f bf e8 	std  %f10, [ %fp + -24 ]
 2003f80:	05 3f 84 00 	sethi  %hi(0xfe100000), %g2
 2003f84:	c8 07 bf e8 	ld  [ %fp + -24 ], %g4
 2003f88:	86 00 ff ff 	add  %g3, -1, %g3
 2003f8c:	88 00 80 04 	add  %g2, %g4, %g4
 2003f90:	aa 10 20 01 	mov  1, %l5
 2003f94:	10 bf ff 0c 	b  2003bc4 <_dtoa_r+0x180>
 2003f98:	c8 27 bf e8 	st  %g4, [ %fp + -24 ]
 2003f9c:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2003fa0:	10 bf fe d4 	b  2003af0 <_dtoa_r+0xac>
 2003fa4:	b8 17 21 90 	or  %i4, 0x190, %i4	! 200a190 <_global_impure_ptr+0x64>
 2003fa8:	82 10 3f ff 	mov  -1, %g1
 2003fac:	c0 26 20 44 	clr  [ %i0 + 0x44 ]
 2003fb0:	90 10 00 18 	mov  %i0, %o0
 2003fb4:	92 10 20 00 	clr  %o1
 2003fb8:	40 00 08 d4 	call  2006308 <_Balloc>
 2003fbc:	c2 27 bf dc 	st  %g1, [ %fp + -36 ]
 2003fc0:	84 10 20 01 	mov  1, %g2
 2003fc4:	a2 10 00 08 	mov  %o0, %l1
 2003fc8:	c4 27 bf e0 	st  %g2, [ %fp + -32 ]
 2003fcc:	d0 26 20 40 	st  %o0, [ %i0 + 0x40 ]
 2003fd0:	a6 10 3f ff 	mov  -1, %l3
 2003fd4:	b8 10 20 00 	clr  %i4
 2003fd8:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2003fdc:	80 a0 60 00 	cmp  %g1, 0
 2003fe0:	06 80 00 50 	bl  2004120 <_dtoa_r+0x6dc>
 2003fe4:	80 a4 20 0e 	cmp  %l0, 0xe
 2003fe8:	14 80 00 4f 	bg  2004124 <_dtoa_r+0x6e0>
 2003fec:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
 2003ff0:	83 2c 20 03 	sll  %l0, 3, %g1
 2003ff4:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2003ff8:	80 a4 e0 00 	cmp  %l3, 0
 2003ffc:	84 10 a2 88 	or  %g2, 0x288, %g2
 2004000:	14 80 00 05 	bg  2004014 <_dtoa_r+0x5d0>
 2004004:	d5 18 80 01 	ldd  [ %g2 + %g1 ], %f10
 2004008:	80 a7 20 00 	cmp  %i4, 0
 200400c:	06 80 02 6a 	bl  20049b4 <_dtoa_r+0xf70>
 2004010:	80 a4 e0 00 	cmp  %l3, 0
 2004014:	d1 1f bf f0 	ldd  [ %fp + -16 ], %f8
 2004018:	99 a2 09 ca 	fdivd  %f8, %f10, %f12
 200401c:	a5 a0 1a 4c 	fdtoi  %f12, %f18
 2004020:	e5 27 bf b4 	st  %f18, [ %fp + -76 ]
 2004024:	c4 07 bf b4 	ld  [ %fp + -76 ], %g2
 2004028:	82 00 a0 30 	add  %g2, 0x30, %g1
 200402c:	c2 2c 40 00 	stb  %g1, [ %l1 ]
 2004030:	9d a0 19 12 	fitod  %f18, %f14
 2004034:	86 04 60 01 	add  %l1, 1, %g3
 2004038:	9d a3 89 4a 	fmuld  %f14, %f10, %f14
 200403c:	80 a4 e0 01 	cmp  %l3, 1
 2004040:	02 80 00 1e 	be  20040b8 <_dtoa_r+0x674>
 2004044:	91 a2 08 ce 	fsubd  %f8, %f14, %f8
 2004048:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 200404c:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2004050:	e1 18 62 08 	ldd  [ %g1 + 0x208 ], %f16
 2004054:	dd 18 a1 98 	ldd  [ %g2 + 0x198 ], %f14
 2004058:	91 a2 09 50 	fmuld  %f8, %f16, %f8
 200405c:	81 aa 0a 4e 	fcmpd  %f8, %f14
 2004060:	01 00 00 00 	nop 
 2004064:	13 80 02 7f 	fbe  2004a60 <_dtoa_r+0x101c>
 2004068:	82 04 60 02 	add  %l1, 2, %g1
 200406c:	10 80 00 07 	b  2004088 <_dtoa_r+0x644>
 2004070:	a6 04 40 13 	add  %l1, %l3, %l3
 2004074:	91 a2 09 50 	fmuld  %f8, %f16, %f8
 2004078:	81 aa 0a 4e 	fcmpd  %f8, %f14
 200407c:	01 00 00 00 	nop 
 2004080:	13 80 02 78 	fbe  2004a60 <_dtoa_r+0x101c>
 2004084:	82 00 60 01 	inc  %g1
 2004088:	99 a2 09 ca 	fdivd  %f8, %f10, %f12
 200408c:	a5 a0 1a 4c 	fdtoi  %f12, %f18
 2004090:	e5 27 bf b4 	st  %f18, [ %fp + -76 ]
 2004094:	de 07 bf b4 	ld  [ %fp + -76 ], %o7
 2004098:	84 03 e0 30 	add  %o7, 0x30, %g2
 200409c:	c4 28 7f ff 	stb  %g2, [ %g1 + -1 ]
 20040a0:	99 a0 19 12 	fitod  %f18, %f12
 20040a4:	86 10 00 01 	mov  %g1, %g3
 20040a8:	99 a3 09 4a 	fmuld  %f12, %f10, %f12
 20040ac:	80 a0 40 13 	cmp  %g1, %l3
 20040b0:	12 bf ff f1 	bne  2004074 <_dtoa_r+0x630>
 20040b4:	91 a2 08 cc 	fsubd  %f8, %f12, %f8
 20040b8:	91 a2 08 48 	faddd  %f8, %f8, %f8
 20040bc:	81 aa 8a c8 	fcmped  %f10, %f8
 20040c0:	01 00 00 00 	nop 
 20040c4:	19 80 02 be 	fbuge  2004bbc <_dtoa_r+0x1178>
 20040c8:	01 00 00 00 	nop 
 20040cc:	b8 10 00 11 	mov  %l1, %i4
 20040d0:	c4 08 ff ff 	ldub  [ %g3 + -1 ], %g2
 20040d4:	a2 10 00 03 	mov  %g3, %l1
 20040d8:	10 80 00 03 	b  20040e4 <_dtoa_r+0x6a0>
 20040dc:	88 10 00 10 	mov  %l0, %g4
 20040e0:	a2 10 00 01 	mov  %g1, %l1
 20040e4:	87 28 a0 18 	sll  %g2, 0x18, %g3
 20040e8:	87 38 e0 18 	sra  %g3, 0x18, %g3
 20040ec:	80 a0 e0 39 	cmp  %g3, 0x39
 20040f0:	12 80 02 af 	bne  2004bac <_dtoa_r+0x1168>
 20040f4:	82 04 7f ff 	add  %l1, -1, %g1
 20040f8:	80 a7 00 01 	cmp  %i4, %g1
 20040fc:	32 bf ff f9 	bne,a   20040e0 <_dtoa_r+0x69c>
 2004100:	c4 08 7f ff 	ldub  [ %g1 + -1 ], %g2
 2004104:	82 10 20 30 	mov  0x30, %g1
 2004108:	c2 2f 00 00 	stb  %g1, [ %i4 ]
 200410c:	84 10 20 31 	mov  0x31, %g2
 2004110:	82 10 00 1c 	mov  %i4, %g1
 2004114:	a0 01 20 01 	add  %g4, 1, %l0
 2004118:	10 80 00 90 	b  2004358 <_dtoa_r+0x914>
 200411c:	c4 28 40 00 	stb  %g2, [ %g1 ]
 2004120:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
 2004124:	80 a0 a0 00 	cmp  %g2, 0
 2004128:	12 80 00 ab 	bne  20043d4 <_dtoa_r+0x990>
 200412c:	80 a6 e0 01 	cmp  %i3, 1
 2004130:	84 10 00 12 	mov  %l2, %g2
 2004134:	e8 27 bf e4 	st  %l4, [ %fp + -28 ]
 2004138:	aa 10 20 00 	clr  %l5
 200413c:	80 a5 e0 00 	cmp  %l7, 0
 2004140:	04 80 00 11 	ble  2004184 <_dtoa_r+0x740>
 2004144:	80 a4 a0 00 	cmp  %l2, 0
 2004148:	c2 07 bf e4 	ld  [ %fp + -28 ], %g1
 200414c:	80 a0 60 00 	cmp  %g1, 0
 2004150:	04 80 00 0d 	ble  2004184 <_dtoa_r+0x740>
 2004154:	80 a4 a0 00 	cmp  %l2, 0
 2004158:	c6 07 bf e4 	ld  [ %fp + -28 ], %g3
 200415c:	80 a5 c0 03 	cmp  %l7, %g3
 2004160:	04 80 00 03 	ble  200416c <_dtoa_r+0x728>
 2004164:	82 10 00 17 	mov  %l7, %g1
 2004168:	82 10 00 03 	mov  %g3, %g1
 200416c:	c8 07 bf e4 	ld  [ %fp + -28 ], %g4
 2004170:	a8 25 00 01 	sub  %l4, %g1, %l4
 2004174:	88 21 00 01 	sub  %g4, %g1, %g4
 2004178:	ae 25 c0 01 	sub  %l7, %g1, %l7
 200417c:	c8 27 bf e4 	st  %g4, [ %fp + -28 ]
 2004180:	80 a4 a0 00 	cmp  %l2, 0
 2004184:	04 80 00 19 	ble  20041e8 <_dtoa_r+0x7a4>
 2004188:	c2 07 bf e0 	ld  [ %fp + -32 ], %g1
 200418c:	80 a0 60 00 	cmp  %g1, 0
 2004190:	02 80 02 2e 	be  2004a48 <_dtoa_r+0x1004>
 2004194:	80 a0 a0 00 	cmp  %g2, 0
 2004198:	04 80 00 11 	ble  20041dc <_dtoa_r+0x798>
 200419c:	94 10 00 02 	mov  %g2, %o2
 20041a0:	c4 27 bf d0 	st  %g2, [ %fp + -48 ]
 20041a4:	92 10 00 15 	mov  %l5, %o1
 20041a8:	40 00 09 e3 	call  2006934 <__pow5mult>
 20041ac:	90 10 00 18 	mov  %i0, %o0
 20041b0:	94 10 00 19 	mov  %i1, %o2
 20041b4:	aa 10 00 08 	mov  %o0, %l5
 20041b8:	90 10 00 18 	mov  %i0, %o0
 20041bc:	40 00 09 53 	call  2006708 <__multiply>
 20041c0:	92 10 00 15 	mov  %l5, %o1
 20041c4:	82 10 00 08 	mov  %o0, %g1
 20041c8:	92 10 00 19 	mov  %i1, %o1
 20041cc:	90 10 00 18 	mov  %i0, %o0
 20041d0:	40 00 08 73 	call  200639c <_Bfree>
 20041d4:	b2 10 00 01 	mov  %g1, %i1
 20041d8:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
 20041dc:	94 a4 80 02 	subcc  %l2, %g2, %o2
 20041e0:	12 80 02 4d 	bne  2004b14 <_dtoa_r+0x10d0>
 20041e4:	92 10 00 19 	mov  %i1, %o1
 20041e8:	90 10 00 18 	mov  %i0, %o0
 20041ec:	40 00 09 3e 	call  20066e4 <__i2b>
 20041f0:	92 10 20 01 	mov  1, %o1
 20041f4:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
 20041f8:	80 a0 a0 00 	cmp  %g2, 0
 20041fc:	04 80 00 07 	ble  2004218 <_dtoa_r+0x7d4>
 2004200:	a4 10 00 08 	mov  %o0, %l2
 2004204:	92 10 00 12 	mov  %l2, %o1
 2004208:	90 10 00 18 	mov  %i0, %o0
 200420c:	40 00 09 ca 	call  2006934 <__pow5mult>
 2004210:	94 10 00 02 	mov  %g2, %o2
 2004214:	a4 10 00 08 	mov  %o0, %l2
 2004218:	80 a6 e0 01 	cmp  %i3, 1
 200421c:	04 80 01 f2 	ble  20049e4 <_dtoa_r+0xfa0>
 2004220:	c0 27 bf d8 	clr  [ %fp + -40 ]
 2004224:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
 2004228:	80 a0 60 00 	cmp  %g1, 0
 200422c:	12 80 01 d9 	bne  2004990 <_dtoa_r+0xf4c>
 2004230:	90 10 20 01 	mov  1, %o0
 2004234:	82 02 00 17 	add  %o0, %l7, %g1
 2004238:	82 88 60 1f 	andcc  %g1, 0x1f, %g1
 200423c:	22 80 00 b1 	be,a   2004500 <_dtoa_r+0xabc>
 2004240:	82 10 20 1c 	mov  0x1c, %g1
 2004244:	84 10 20 20 	mov  0x20, %g2
 2004248:	84 20 80 01 	sub  %g2, %g1, %g2
 200424c:	80 a0 a0 04 	cmp  %g2, 4
 2004250:	04 80 02 b9 	ble  2004d34 <_dtoa_r+0x12f0>
 2004254:	84 10 20 1c 	mov  0x1c, %g2
 2004258:	82 20 80 01 	sub  %g2, %g1, %g1
 200425c:	c4 07 bf e4 	ld  [ %fp + -28 ], %g2
 2004260:	a8 05 00 01 	add  %l4, %g1, %l4
 2004264:	84 00 80 01 	add  %g2, %g1, %g2
 2004268:	ae 05 c0 01 	add  %l7, %g1, %l7
 200426c:	c4 27 bf e4 	st  %g2, [ %fp + -28 ]
 2004270:	80 a5 20 00 	cmp  %l4, 0
 2004274:	04 80 00 06 	ble  200428c <_dtoa_r+0x848>
 2004278:	92 10 00 19 	mov  %i1, %o1
 200427c:	90 10 00 18 	mov  %i0, %o0
 2004280:	40 00 09 f1 	call  2006a44 <__lshift>
 2004284:	94 10 00 14 	mov  %l4, %o2
 2004288:	b2 10 00 08 	mov  %o0, %i1
 200428c:	80 a5 e0 00 	cmp  %l7, 0
 2004290:	04 80 00 06 	ble  20042a8 <_dtoa_r+0x864>
 2004294:	92 10 00 12 	mov  %l2, %o1
 2004298:	90 10 00 18 	mov  %i0, %o0
 200429c:	40 00 09 ea 	call  2006a44 <__lshift>
 20042a0:	94 10 00 17 	mov  %l7, %o2
 20042a4:	a4 10 00 08 	mov  %o0, %l2
 20042a8:	80 a5 a0 00 	cmp  %l6, 0
 20042ac:	12 80 00 f6 	bne  2004684 <_dtoa_r+0xc40>
 20042b0:	90 10 00 19 	mov  %i1, %o0
 20042b4:	80 a6 e0 02 	cmp  %i3, 2
 20042b8:	14 80 00 03 	bg  20042c4 <_dtoa_r+0x880>
 20042bc:	82 10 20 01 	mov  1, %g1
 20042c0:	82 10 20 00 	clr  %g1
 20042c4:	80 88 60 ff 	btst  0xff, %g1
 20042c8:	02 80 00 94 	be  2004518 <_dtoa_r+0xad4>
 20042cc:	c4 07 bf e0 	ld  [ %fp + -32 ], %g2
 20042d0:	80 a4 e0 00 	cmp  %l3, 0
 20042d4:	14 80 00 92 	bg  200451c <_dtoa_r+0xad8>
 20042d8:	80 a0 a0 00 	cmp  %g2, 0
 20042dc:	80 a4 e0 00 	cmp  %l3, 0
 20042e0:	12 80 00 80 	bne  20044e0 <_dtoa_r+0xa9c>
 20042e4:	92 10 00 12 	mov  %l2, %o1
 20042e8:	94 10 20 05 	mov  5, %o2
 20042ec:	96 10 20 00 	clr  %o3
 20042f0:	40 00 08 36 	call  20063c8 <__multadd>
 20042f4:	90 10 00 18 	mov  %i0, %o0
 20042f8:	a4 10 00 08 	mov  %o0, %l2
 20042fc:	90 10 00 19 	mov  %i1, %o0
 2004300:	40 00 0a 1e 	call  2006b78 <__mcmp>
 2004304:	92 10 00 12 	mov  %l2, %o1
 2004308:	80 a2 20 00 	cmp  %o0, 0
 200430c:	24 80 00 76 	ble,a   20044e4 <_dtoa_r+0xaa0>
 2004310:	a0 38 00 1c 	xnor  %g0, %i4, %l0
 2004314:	b8 10 00 11 	mov  %l1, %i4
 2004318:	82 10 20 31 	mov  0x31, %g1
 200431c:	a0 04 20 01 	inc  %l0
 2004320:	c2 2c 40 00 	stb  %g1, [ %l1 ]
 2004324:	a6 10 20 00 	clr  %l3
 2004328:	a2 04 60 01 	inc  %l1
 200432c:	90 10 00 18 	mov  %i0, %o0
 2004330:	40 00 08 1b 	call  200639c <_Bfree>
 2004334:	92 10 00 12 	mov  %l2, %o1
 2004338:	80 a5 60 00 	cmp  %l5, 0
 200433c:	02 80 00 07 	be  2004358 <_dtoa_r+0x914>
 2004340:	80 a4 c0 15 	cmp  %l3, %l5
 2004344:	12 80 01 46 	bne  200485c <_dtoa_r+0xe18>
 2004348:	80 a4 e0 00 	cmp  %l3, 0
 200434c:	90 10 00 18 	mov  %i0, %o0
 2004350:	40 00 08 13 	call  200639c <_Bfree>
 2004354:	92 10 00 15 	mov  %l5, %o1
 2004358:	90 10 00 18 	mov  %i0, %o0
 200435c:	40 00 08 10 	call  200639c <_Bfree>
 2004360:	92 10 00 19 	mov  %i1, %o1
 2004364:	c0 2c 40 00 	clrb  [ %l1 ]
 2004368:	a0 04 20 01 	inc  %l0
 200436c:	80 a6 a0 00 	cmp  %i2, 0
 2004370:	02 bf fd e0 	be  2003af0 <_dtoa_r+0xac>
 2004374:	e0 27 40 00 	st  %l0, [ %i5 ]
 2004378:	e2 26 80 00 	st  %l1, [ %i2 ]
 200437c:	81 c7 e0 08 	ret 
 2004380:	91 e8 00 1c 	restore  %g0, %i4, %o0
 2004384:	a4 20 00 10 	neg  %l0, %l2
 2004388:	10 bf fe 40 	b  2003c88 <_dtoa_r+0x244>
 200438c:	c0 27 bf e8 	clr  [ %fp + -24 ]
 2004390:	a8 20 00 17 	neg  %l7, %l4
 2004394:	10 bf fe 37 	b  2003c70 <_dtoa_r+0x22c>
 2004398:	ae 10 20 00 	clr  %l7
 200439c:	d9 07 bf b4 	ld  [ %fp + -76 ], %f12
 20043a0:	95 a0 19 0c 	fitod  %f12, %f10
 20043a4:	81 aa 8a 48 	fcmpd  %f10, %f8
 20043a8:	01 00 00 00 	nop 
 20043ac:	23 bf fe 1f 	fbne,a   2003c28 <_dtoa_r+0x1e4>
 20043b0:	a0 04 3f ff 	add  %l0, -1, %l0
 20043b4:	10 bf fe 1e 	b  2003c2c <_dtoa_r+0x1e8>
 20043b8:	80 a4 20 16 	cmp  %l0, 0x16
 20043bc:	c4 07 bf f4 	ld  [ %fp + -12 ], %g2
 20043c0:	a0 24 00 03 	sub  %l0, %g3, %l0
 20043c4:	10 bf fe e7 	b  2003f60 <_dtoa_r+0x51c>
 20043c8:	a1 28 80 10 	sll  %g2, %l0, %l0
 20043cc:	10 bf fe 25 	b  2003c60 <_dtoa_r+0x21c>
 20043d0:	ac 10 20 00 	clr  %l6
 20043d4:	04 80 01 d4 	ble  2004b24 <_dtoa_r+0x10e0>
 20043d8:	80 a5 60 00 	cmp  %l5, 0
 20043dc:	82 04 ff ff 	add  %l3, -1, %g1
 20043e0:	80 a4 80 01 	cmp  %l2, %g1
 20043e4:	16 80 00 08 	bge  2004404 <_dtoa_r+0x9c0>
 20043e8:	84 24 80 01 	sub  %l2, %g1, %g2
 20043ec:	a4 20 40 12 	sub  %g1, %l2, %l2
 20043f0:	c6 07 bf e8 	ld  [ %fp + -24 ], %g3
 20043f4:	84 10 20 00 	clr  %g2
 20043f8:	86 00 c0 12 	add  %g3, %l2, %g3
 20043fc:	a4 10 00 01 	mov  %g1, %l2
 2004400:	c6 27 bf e8 	st  %g3, [ %fp + -24 ]
 2004404:	82 94 e0 00 	orcc  %l3, 0, %g1
 2004408:	06 80 01 cd 	bl  2004b3c <_dtoa_r+0x10f8>
 200440c:	e8 27 bf e4 	st  %l4, [ %fp + -28 ]
 2004410:	c4 27 bf d0 	st  %g2, [ %fp + -48 ]
 2004414:	a8 05 00 01 	add  %l4, %g1, %l4
 2004418:	ae 05 c0 01 	add  %l7, %g1, %l7
 200441c:	90 10 00 18 	mov  %i0, %o0
 2004420:	40 00 08 b1 	call  20066e4 <__i2b>
 2004424:	92 10 20 01 	mov  1, %o1
 2004428:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
 200442c:	10 bf ff 44 	b  200413c <_dtoa_r+0x6f8>
 2004430:	aa 10 00 08 	mov  %o0, %l5
 2004434:	02 80 01 82 	be  2004a3c <_dtoa_r+0xff8>
 2004438:	80 a6 e0 05 	cmp  %i3, 5
 200443c:	32 bf fe dc 	bne,a   2003fac <_dtoa_r+0x568>
 2004440:	82 10 3f ff 	mov  -1, %g1
 2004444:	86 10 20 01 	mov  1, %g3
 2004448:	c6 27 bf e0 	st  %g3, [ %fp + -32 ]
 200444c:	88 07 00 10 	add  %i4, %l0, %g4
 2004450:	9a 01 20 01 	add  %g4, 1, %o5
 2004454:	c8 27 bf dc 	st  %g4, [ %fp + -36 ]
 2004458:	80 a3 60 0f 	cmp  %o5, 0xf
 200445c:	88 40 20 00 	addx  %g0, 0, %g4
 2004460:	80 a3 60 00 	cmp  %o5, 0
 2004464:	04 80 00 fa 	ble  200484c <_dtoa_r+0xe08>
 2004468:	a6 10 00 0d 	mov  %o5, %l3
 200446c:	10 bf fe 20 	b  2003cec <_dtoa_r+0x2a8>
 2004470:	88 09 00 01 	and  %g4, %g1, %g4
 2004474:	c8 27 bf b4 	st  %g4, [ %fp + -76 ]
 2004478:	d5 07 bf b4 	ld  [ %fp + -76 ], %f10
 200447c:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2004480:	99 a0 19 0a 	fitod  %f10, %f12
 2004484:	d5 18 62 10 	ldd  [ %g1 + 0x210 ], %f10
 2004488:	99 a3 09 48 	fmuld  %f12, %f8, %f12
 200448c:	9d a3 08 4a 	faddd  %f12, %f10, %f14
 2004490:	dd 3f bf f0 	std  %f14, [ %fp + -16 ]
 2004494:	03 3f 30 00 	sethi  %hi(0xfcc00000), %g1
 2004498:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
 200449c:	84 00 40 02 	add  %g1, %g2, %g2
 20044a0:	c4 27 bf f0 	st  %g2, [ %fp + -16 ]
 20044a4:	d5 1f bf f0 	ldd  [ %fp + -16 ], %f10
 20044a8:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 20044ac:	d9 18 e2 18 	ldd  [ %g3 + 0x218 ], %f12	! 200a218 <zeroes.4060+0x68>
 20044b0:	91 a2 08 cc 	fsubd  %f8, %f12, %f8
 20044b4:	81 aa 0a ca 	fcmped  %f8, %f10
 20044b8:	01 00 00 00 	nop 
 20044bc:	2d 80 01 08 	fbg,a   20048dc <_dtoa_r+0xe98>
 20044c0:	a4 10 20 00 	clr  %l2	! 0 <_.xy-0x4>
 20044c4:	95 a0 00 aa 	fnegs  %f10, %f10
 20044c8:	81 aa 0a ca 	fcmped  %f8, %f10
 20044cc:	01 00 00 00 	nop 
 20044d0:	19 80 00 08 	fbuge  20044f0 <_dtoa_r+0xaac>
 20044d4:	01 00 00 00 	nop 
 20044d8:	a4 10 20 00 	clr  %l2	! 0 <_.xy-0x4>
 20044dc:	aa 10 20 00 	clr  %l5
 20044e0:	a0 38 00 1c 	xnor  %g0, %i4, %l0
 20044e4:	a6 10 20 00 	clr  %l3
 20044e8:	10 bf ff 91 	b  200432c <_dtoa_r+0x8e8>
 20044ec:	b8 10 00 11 	mov  %l1, %i4
 20044f0:	91 a0 00 30 	fmovs  %f16, %f8
 20044f4:	93 a0 00 31 	fmovs  %f17, %f9
 20044f8:	10 bf fe b8 	b  2003fd8 <_dtoa_r+0x594>
 20044fc:	d1 3f bf f0 	std  %f8, [ %fp + -16 ]
 2004500:	c6 07 bf e4 	ld  [ %fp + -28 ], %g3
 2004504:	a8 05 00 01 	add  %l4, %g1, %l4
 2004508:	86 00 c0 01 	add  %g3, %g1, %g3
 200450c:	ae 05 c0 01 	add  %l7, %g1, %l7
 2004510:	10 bf ff 58 	b  2004270 <_dtoa_r+0x82c>
 2004514:	c6 27 bf e4 	st  %g3, [ %fp + -28 ]
 2004518:	80 a0 a0 00 	cmp  %g2, 0
 200451c:	22 80 00 7b 	be,a   2004708 <_dtoa_r+0xcc4>
 2004520:	b8 10 20 00 	clr  %i4
 2004524:	c6 07 bf e4 	ld  [ %fp + -28 ], %g3
 2004528:	80 a0 e0 00 	cmp  %g3, 0
 200452c:	04 80 00 06 	ble  2004544 <_dtoa_r+0xb00>
 2004530:	92 10 00 15 	mov  %l5, %o1
 2004534:	90 10 00 18 	mov  %i0, %o0
 2004538:	40 00 09 43 	call  2006a44 <__lshift>
 200453c:	94 10 00 03 	mov  %g3, %o2
 2004540:	aa 10 00 08 	mov  %o0, %l5
 2004544:	c8 07 bf d8 	ld  [ %fp + -40 ], %g4
 2004548:	80 a1 20 00 	cmp  %g4, 0
 200454c:	12 80 01 a8 	bne  2004bec <_dtoa_r+0x11a8>
 2004550:	a8 10 00 15 	mov  %l5, %l4
 2004554:	a6 04 40 13 	add  %l1, %l3, %l3
 2004558:	c2 07 bf f4 	ld  [ %fp + -12 ], %g1
 200455c:	e6 27 bf e4 	st  %l3, [ %fp + -28 ]
 2004560:	82 08 60 01 	and  %g1, 1, %g1
 2004564:	b8 04 60 01 	add  %l1, 1, %i4
 2004568:	a6 10 00 15 	mov  %l5, %l3
 200456c:	c2 27 bf e8 	st  %g1, [ %fp + -24 ]
 2004570:	92 10 00 12 	mov  %l2, %o1
 2004574:	7f ff fc a6 	call  200380c <quorem>
 2004578:	90 10 00 19 	mov  %i1, %o0
 200457c:	92 10 00 13 	mov  %l3, %o1
 2004580:	ac 10 00 08 	mov  %o0, %l6
 2004584:	40 00 09 7d 	call  2006b78 <__mcmp>
 2004588:	90 10 00 19 	mov  %i1, %o0
 200458c:	92 10 00 12 	mov  %l2, %o1
 2004590:	aa 10 00 08 	mov  %o0, %l5
 2004594:	94 10 00 14 	mov  %l4, %o2
 2004598:	40 00 09 93 	call  2006be4 <__mdiff>
 200459c:	90 10 00 18 	mov  %i0, %o0
 20045a0:	86 07 3f ff 	add  %i4, -1, %g3
 20045a4:	c6 27 bf f0 	st  %g3, [ %fp + -16 ]
 20045a8:	c8 02 20 0c 	ld  [ %o0 + 0xc ], %g4
 20045ac:	84 10 00 08 	mov  %o0, %g2
 20045b0:	ae 05 a0 30 	add  %l6, 0x30, %l7
 20045b4:	80 a1 20 00 	cmp  %g4, 0
 20045b8:	02 80 00 8c 	be  20047e8 <_dtoa_r+0xda4>
 20045bc:	86 10 20 01 	mov  1, %g3
 20045c0:	c6 27 bf d4 	st  %g3, [ %fp + -44 ]
 20045c4:	90 10 00 18 	mov  %i0, %o0
 20045c8:	40 00 07 75 	call  200639c <_Bfree>
 20045cc:	92 10 00 02 	mov  %g2, %o1
 20045d0:	c6 07 bf d4 	ld  [ %fp + -44 ], %g3
 20045d4:	80 90 c0 1b 	orcc  %g3, %i3, %g0
 20045d8:	12 80 00 06 	bne  20045f0 <_dtoa_r+0xbac>
 20045dc:	80 a5 60 00 	cmp  %l5, 0
 20045e0:	c8 07 bf e8 	ld  [ %fp + -24 ], %g4
 20045e4:	80 a1 20 00 	cmp  %g4, 0
 20045e8:	02 80 01 ac 	be  2004c98 <_dtoa_r+0x1254>
 20045ec:	80 a5 60 00 	cmp  %l5, 0
 20045f0:	06 80 01 57 	bl  2004b4c <_dtoa_r+0x1108>
 20045f4:	80 95 40 1b 	orcc  %l5, %i3, %g0
 20045f8:	12 80 00 06 	bne  2004610 <_dtoa_r+0xbcc>
 20045fc:	80 a0 e0 00 	cmp  %g3, 0
 2004600:	c4 07 bf e8 	ld  [ %fp + -24 ], %g2
 2004604:	80 a0 a0 00 	cmp  %g2, 0
 2004608:	02 80 01 51 	be  2004b4c <_dtoa_r+0x1108>
 200460c:	80 a0 e0 00 	cmp  %g3, 0
 2004610:	14 80 01 91 	bg  2004c54 <_dtoa_r+0x1210>
 2004614:	80 a5 e0 39 	cmp  %l7, 0x39
 2004618:	ee 2f 3f ff 	stb  %l7, [ %i4 + -1 ]
 200461c:	c6 07 bf e4 	ld  [ %fp + -28 ], %g3
 2004620:	80 a7 00 03 	cmp  %i4, %g3
 2004624:	02 80 01 94 	be  2004c74 <_dtoa_r+0x1230>
 2004628:	ac 10 00 1c 	mov  %i4, %l6
 200462c:	92 10 00 19 	mov  %i1, %o1
 2004630:	90 10 00 18 	mov  %i0, %o0
 2004634:	94 10 20 0a 	mov  0xa, %o2
 2004638:	40 00 07 64 	call  20063c8 <__multadd>
 200463c:	96 10 20 00 	clr  %o3
 2004640:	80 a4 c0 14 	cmp  %l3, %l4
 2004644:	02 80 00 70 	be  2004804 <_dtoa_r+0xdc0>
 2004648:	b2 10 00 08 	mov  %o0, %i1
 200464c:	92 10 00 13 	mov  %l3, %o1
 2004650:	94 10 20 0a 	mov  0xa, %o2
 2004654:	96 10 20 00 	clr  %o3
 2004658:	40 00 07 5c 	call  20063c8 <__multadd>
 200465c:	90 10 00 18 	mov  %i0, %o0
 2004660:	92 10 00 14 	mov  %l4, %o1
 2004664:	a6 10 00 08 	mov  %o0, %l3
 2004668:	94 10 20 0a 	mov  0xa, %o2
 200466c:	90 10 00 18 	mov  %i0, %o0
 2004670:	96 10 20 00 	clr  %o3
 2004674:	40 00 07 55 	call  20063c8 <__multadd>
 2004678:	b8 07 20 01 	inc  %i4
 200467c:	10 bf ff bd 	b  2004570 <_dtoa_r+0xb2c>
 2004680:	a8 10 00 08 	mov  %o0, %l4
 2004684:	40 00 09 3d 	call  2006b78 <__mcmp>
 2004688:	92 10 00 12 	mov  %l2, %o1
 200468c:	80 a2 20 00 	cmp  %o0, 0
 2004690:	16 bf ff 0a 	bge  20042b8 <_dtoa_r+0x874>
 2004694:	80 a6 e0 02 	cmp  %i3, 2
 2004698:	92 10 00 19 	mov  %i1, %o1
 200469c:	90 10 00 18 	mov  %i0, %o0
 20046a0:	94 10 20 0a 	mov  0xa, %o2
 20046a4:	40 00 07 49 	call  20063c8 <__multadd>
 20046a8:	96 10 20 00 	clr  %o3
 20046ac:	c8 07 bf e0 	ld  [ %fp + -32 ], %g4
 20046b0:	b2 10 00 08 	mov  %o0, %i1
 20046b4:	80 a1 20 00 	cmp  %g4, 0
 20046b8:	12 80 01 8b 	bne  2004ce4 <_dtoa_r+0x12a0>
 20046bc:	a0 04 3f ff 	add  %l0, -1, %l0
 20046c0:	c8 07 bf dc 	ld  [ %fp + -36 ], %g4
 20046c4:	80 a1 20 00 	cmp  %g4, 0
 20046c8:	34 80 00 09 	bg,a   20046ec <_dtoa_r+0xca8>
 20046cc:	e6 07 bf dc 	ld  [ %fp + -36 ], %l3
 20046d0:	80 a6 e0 02 	cmp  %i3, 2
 20046d4:	14 80 00 03 	bg  20046e0 <_dtoa_r+0xc9c>
 20046d8:	82 10 20 01 	mov  1, %g1
 20046dc:	82 10 20 00 	clr  %g1
 20046e0:	80 88 60 ff 	btst  0xff, %g1
 20046e4:	12 bf fe fe 	bne  20042dc <_dtoa_r+0x898>
 20046e8:	e6 07 bf dc 	ld  [ %fp + -36 ], %l3
 20046ec:	10 80 00 07 	b  2004708 <_dtoa_r+0xcc4>
 20046f0:	b8 10 20 00 	clr  %i4
 20046f4:	90 10 00 18 	mov  %i0, %o0
 20046f8:	94 10 20 0a 	mov  0xa, %o2
 20046fc:	40 00 07 33 	call  20063c8 <__multadd>
 2004700:	96 10 20 00 	clr  %o3
 2004704:	b2 10 00 08 	mov  %o0, %i1
 2004708:	92 10 00 12 	mov  %l2, %o1
 200470c:	7f ff fc 40 	call  200380c <quorem>
 2004710:	90 10 00 19 	mov  %i1, %o0
 2004714:	ae 02 20 30 	add  %o0, 0x30, %l7
 2004718:	ee 2c 40 1c 	stb  %l7, [ %l1 + %i4 ]
 200471c:	b8 07 20 01 	inc  %i4
 2004720:	80 a7 00 13 	cmp  %i4, %l3
 2004724:	06 bf ff f4 	bl  20046f4 <_dtoa_r+0xcb0>
 2004728:	92 10 00 19 	mov  %i1, %o1
 200472c:	80 a4 e0 00 	cmp  %l3, 0
 2004730:	24 80 00 02 	ble,a   2004738 <_dtoa_r+0xcf4>
 2004734:	a6 10 20 01 	mov  1, %l3
 2004738:	ac 04 40 13 	add  %l1, %l3, %l6
 200473c:	a6 10 20 00 	clr  %l3
 2004740:	92 10 00 19 	mov  %i1, %o1
 2004744:	94 10 20 01 	mov  1, %o2
 2004748:	40 00 08 bf 	call  2006a44 <__lshift>
 200474c:	90 10 00 18 	mov  %i0, %o0
 2004750:	92 10 00 12 	mov  %l2, %o1
 2004754:	40 00 09 09 	call  2006b78 <__mcmp>
 2004758:	b2 10 00 08 	mov  %o0, %i1
 200475c:	80 a2 20 00 	cmp  %o0, 0
 2004760:	04 80 00 13 	ble  20047ac <_dtoa_r+0xd68>
 2004764:	01 00 00 00 	nop 
 2004768:	10 80 00 03 	b  2004774 <_dtoa_r+0xd30>
 200476c:	c4 0d bf ff 	ldub  [ %l6 + -1 ], %g2
 2004770:	ac 10 00 01 	mov  %g1, %l6
 2004774:	87 28 a0 18 	sll  %g2, 0x18, %g3
 2004778:	87 38 e0 18 	sra  %g3, 0x18, %g3
 200477c:	80 a0 e0 39 	cmp  %g3, 0x39
 2004780:	12 80 01 2b 	bne  2004c2c <_dtoa_r+0x11e8>
 2004784:	82 05 bf ff 	add  %l6, -1, %g1
 2004788:	80 a4 40 01 	cmp  %l1, %g1
 200478c:	32 bf ff f9 	bne,a   2004770 <_dtoa_r+0xd2c>
 2004790:	c4 08 7f ff 	ldub  [ %g1 + -1 ], %g2
 2004794:	b8 10 00 11 	mov  %l1, %i4
 2004798:	82 10 20 31 	mov  0x31, %g1
 200479c:	a0 04 20 01 	inc  %l0
 20047a0:	c2 2c 40 00 	stb  %g1, [ %l1 ]
 20047a4:	10 bf fe e2 	b  200432c <_dtoa_r+0x8e8>
 20047a8:	a2 10 00 16 	mov  %l6, %l1
 20047ac:	32 80 00 09 	bne,a   20047d0 <_dtoa_r+0xd8c>
 20047b0:	c2 4d bf ff 	ldsb  [ %l6 + -1 ], %g1
 20047b4:	80 8d e0 01 	btst  1, %l7
 20047b8:	22 80 00 06 	be,a   20047d0 <_dtoa_r+0xd8c>
 20047bc:	c2 4d bf ff 	ldsb  [ %l6 + -1 ], %g1
 20047c0:	10 bf ff ed 	b  2004774 <_dtoa_r+0xd30>
 20047c4:	c4 0d bf ff 	ldub  [ %l6 + -1 ], %g2
 20047c8:	ac 10 00 02 	mov  %g2, %l6
 20047cc:	c2 4d bf ff 	ldsb  [ %l6 + -1 ], %g1
 20047d0:	80 a0 60 30 	cmp  %g1, 0x30
 20047d4:	02 bf ff fd 	be  20047c8 <_dtoa_r+0xd84>
 20047d8:	84 05 bf ff 	add  %l6, -1, %g2
 20047dc:	b8 10 00 11 	mov  %l1, %i4
 20047e0:	10 bf fe d3 	b  200432c <_dtoa_r+0x8e8>
 20047e4:	a2 10 00 16 	mov  %l6, %l1
 20047e8:	92 10 00 02 	mov  %g2, %o1
 20047ec:	c4 27 bf d0 	st  %g2, [ %fp + -48 ]
 20047f0:	40 00 08 e2 	call  2006b78 <__mcmp>
 20047f4:	90 10 00 19 	mov  %i1, %o0
 20047f8:	c4 07 bf d0 	ld  [ %fp + -48 ], %g2
 20047fc:	10 bf ff 71 	b  20045c0 <_dtoa_r+0xb7c>
 2004800:	86 10 00 08 	mov  %o0, %g3
 2004804:	92 10 00 13 	mov  %l3, %o1
 2004808:	90 10 00 18 	mov  %i0, %o0
 200480c:	94 10 20 0a 	mov  0xa, %o2
 2004810:	96 10 20 00 	clr  %o3
 2004814:	40 00 06 ed 	call  20063c8 <__multadd>
 2004818:	b8 07 20 01 	inc  %i4
 200481c:	a6 10 00 08 	mov  %o0, %l3
 2004820:	10 bf ff 54 	b  2004570 <_dtoa_r+0xb2c>
 2004824:	a8 10 00 08 	mov  %o0, %l4
 2004828:	99 a0 00 30 	fmovs  %f16, %f12
 200482c:	9b a0 00 31 	fmovs  %f17, %f13
 2004830:	10 bf fd 54 	b  2003d80 <_dtoa_r+0x33c>
 2004834:	88 10 20 02 	mov  2, %g4
 2004838:	86 10 20 01 	mov  1, %g3
 200483c:	88 10 20 01 	mov  1, %g4
 2004840:	c6 27 bf dc 	st  %g3, [ %fp + -36 ]
 2004844:	a6 10 20 01 	mov  1, %l3
 2004848:	b8 10 20 01 	mov  1, %i4
 200484c:	c0 26 20 44 	clr  [ %i0 + 0x44 ]
 2004850:	88 09 00 01 	and  %g4, %g1, %g4
 2004854:	10 bf fd 33 	b  2003d20 <_dtoa_r+0x2dc>
 2004858:	92 10 20 00 	clr  %o1
 200485c:	02 bf fe bd 	be  2004350 <_dtoa_r+0x90c>
 2004860:	90 10 00 18 	mov  %i0, %o0
 2004864:	40 00 06 ce 	call  200639c <_Bfree>
 2004868:	92 10 00 13 	mov  %l3, %o1
 200486c:	10 bf fe b9 	b  2004350 <_dtoa_r+0x90c>
 2004870:	90 10 00 18 	mov  %i0, %o0
 2004874:	82 a0 00 10 	subcc  %g0, %l0, %g1
 2004878:	22 80 00 7d 	be,a   2004a6c <_dtoa_r+0x1028>
 200487c:	91 a0 00 30 	fmovs  %f16, %f8
 2004880:	09 00 80 28 	sethi  %hi(0x200a000), %g4
 2004884:	88 11 22 88 	or  %g4, 0x288, %g4	! 200a288 <__mprec_tens>
 2004888:	84 08 60 0f 	and  %g1, 0xf, %g2
 200488c:	83 38 60 04 	sra  %g1, 4, %g1
 2004890:	85 28 a0 03 	sll  %g2, 3, %g2
 2004894:	80 a0 60 00 	cmp  %g1, 0
 2004898:	d1 19 00 02 	ldd  [ %g4 + %g2 ], %f8
 200489c:	88 10 20 02 	mov  2, %g4
 20048a0:	02 bf fd 47 	be  2003dbc <_dtoa_r+0x378>
 20048a4:	91 a4 09 48 	fmuld  %f16, %f8, %f8
 20048a8:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 20048ac:	84 10 a2 60 	or  %g2, 0x260, %g2	! 200a260 <__mprec_bigtens>
 20048b0:	80 88 60 01 	btst  1, %g1
 20048b4:	02 80 00 05 	be  20048c8 <_dtoa_r+0xe84>
 20048b8:	83 38 60 01 	sra  %g1, 1, %g1
 20048bc:	d5 18 80 00 	ldd  [ %g2 ], %f10
 20048c0:	88 01 20 01 	inc  %g4
 20048c4:	91 a2 09 4a 	fmuld  %f8, %f10, %f8
 20048c8:	80 a0 60 00 	cmp  %g1, 0
 20048cc:	12 bf ff f9 	bne  20048b0 <_dtoa_r+0xe6c>
 20048d0:	84 00 a0 08 	add  %g2, 8, %g2
 20048d4:	10 bf fd 3b 	b  2003dc0 <_dtoa_r+0x37c>
 20048d8:	80 a5 a0 00 	cmp  %l6, 0
 20048dc:	10 bf fe 8e 	b  2004314 <_dtoa_r+0x8d0>
 20048e0:	aa 10 20 00 	clr  %l5
 20048e4:	d5 27 bf b4 	st  %f10, [ %fp + -76 ]
 20048e8:	de 07 bf b4 	ld  [ %fp + -76 ], %o7
 20048ec:	82 03 e0 30 	add  %o7, 0x30, %g1
 20048f0:	d9 1f bf f0 	ldd  [ %fp + -16 ], %f12
 20048f4:	c2 2c 40 00 	stb  %g1, [ %l1 ]
 20048f8:	96 03 3f ff 	add  %o4, -1, %o3
 20048fc:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2004900:	83 2a e0 03 	sll  %o3, 3, %g1
 2004904:	84 10 a2 88 	or  %g2, 0x288, %g2
 2004908:	95 a0 19 0a 	fitod  %f10, %f10
 200490c:	dd 18 80 01 	ldd  [ %g2 + %g1 ], %f14
 2004910:	9a 04 60 01 	add  %l1, 1, %o5
 2004914:	9d a3 89 4c 	fmuld  %f14, %f12, %f14
 2004918:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 200491c:	91 a2 08 ca 	fsubd  %f8, %f10, %f8
 2004920:	9e 04 40 0c 	add  %l1, %o4, %o7
 2004924:	82 10 00 0d 	mov  %o5, %g1
 2004928:	80 a3 20 01 	cmp  %o4, 1
 200492c:	02 80 00 0e 	be  2004964 <_dtoa_r+0xf20>
 2004930:	d9 18 a2 08 	ldd  [ %g2 + 0x208 ], %f12
 2004934:	91 a2 09 4c 	fmuld  %f8, %f12, %f8
 2004938:	95 a0 1a 48 	fdtoi  %f8, %f10
 200493c:	d5 27 bf b4 	st  %f10, [ %fp + -76 ]
 2004940:	c6 07 bf b4 	ld  [ %fp + -76 ], %g3
 2004944:	84 00 e0 30 	add  %g3, 0x30, %g2
 2004948:	c4 28 40 00 	stb  %g2, [ %g1 ]
 200494c:	95 a0 19 0a 	fitod  %f10, %f10
 2004950:	82 00 60 01 	inc  %g1
 2004954:	80 a0 40 0f 	cmp  %g1, %o7
 2004958:	12 bf ff f7 	bne  2004934 <_dtoa_r+0xef0>
 200495c:	91 a2 08 ca 	fsubd  %f8, %f10, %f8
 2004960:	9a 03 40 0b 	add  %o5, %o3, %o5
 2004964:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 2004968:	d5 18 e2 20 	ldd  [ %g3 + 0x220 ], %f10	! 200a220 <zeroes.4060+0x70>
 200496c:	99 a3 88 4a 	faddd  %f14, %f10, %f12
 2004970:	81 ab 0a c8 	fcmped  %f12, %f8
 2004974:	01 00 00 00 	nop 
 2004978:	19 80 00 57 	fbuge  2004ad4 <_dtoa_r+0x1090>
 200497c:	01 00 00 00 	nop 
 2004980:	b8 10 00 11 	mov  %l1, %i4
 2004984:	c4 0b 7f ff 	ldub  [ %o5 + -1 ], %g2
 2004988:	10 bf fd d7 	b  20040e4 <_dtoa_r+0x6a0>
 200498c:	a2 10 00 0d 	mov  %o5, %l1
 2004990:	c2 04 a0 10 	ld  [ %l2 + 0x10 ], %g1
 2004994:	82 00 60 03 	add  %g1, 3, %g1
 2004998:	83 28 60 02 	sll  %g1, 2, %g1
 200499c:	82 04 80 01 	add  %l2, %g1, %g1
 20049a0:	40 00 06 fa 	call  2006588 <__hi0bits>
 20049a4:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
 20049a8:	82 10 20 20 	mov  0x20, %g1
 20049ac:	10 bf fe 22 	b  2004234 <_dtoa_r+0x7f0>
 20049b0:	90 20 40 08 	sub  %g1, %o0, %o0
 20049b4:	12 bf fe c9 	bne  20044d8 <_dtoa_r+0xa94>
 20049b8:	07 00 80 28 	sethi  %hi(0x200a000), %g3
 20049bc:	d1 18 e2 18 	ldd  [ %g3 + 0x218 ], %f8	! 200a218 <zeroes.4060+0x68>
 20049c0:	a4 10 20 00 	clr  %l2
 20049c4:	95 a2 89 48 	fmuld  %f10, %f8, %f10
 20049c8:	d1 1f bf f0 	ldd  [ %fp + -16 ], %f8
 20049cc:	81 aa 8a c8 	fcmped  %f10, %f8
 20049d0:	01 00 00 00 	nop 
 20049d4:	17 bf fe c3 	fbge  20044e0 <_dtoa_r+0xa9c>
 20049d8:	aa 10 20 00 	clr  %l5	! 0 <_.xy-0x4>
 20049dc:	10 bf fe 4f 	b  2004318 <_dtoa_r+0x8d4>
 20049e0:	b8 10 00 11 	mov  %l1, %i4
 20049e4:	c6 07 bf f4 	ld  [ %fp + -12 ], %g3
 20049e8:	80 a0 e0 00 	cmp  %g3, 0
 20049ec:	12 bf fe 0f 	bne  2004228 <_dtoa_r+0x7e4>
 20049f0:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
 20049f4:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
 20049f8:	05 3f fc 00 	sethi  %hi(0xfff00000), %g2
 20049fc:	80 a8 40 02 	andncc  %g1, %g2, %g0
 2004a00:	32 bf fe 0a 	bne,a   2004228 <_dtoa_r+0x7e4>
 2004a04:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
 2004a08:	05 1f fc 00 	sethi  %hi(0x7ff00000), %g2
 2004a0c:	80 88 40 02 	btst  %g1, %g2
 2004a10:	02 bf fe 06 	be  2004228 <_dtoa_r+0x7e4>
 2004a14:	c2 07 bf e8 	ld  [ %fp + -24 ], %g1
 2004a18:	88 10 20 01 	mov  1, %g4
 2004a1c:	a8 05 20 01 	inc  %l4
 2004a20:	ae 05 e0 01 	inc  %l7
 2004a24:	10 bf fe 00 	b  2004224 <_dtoa_r+0x7e0>
 2004a28:	c8 27 bf d8 	st  %g4, [ %fp + -40 ]
 2004a2c:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2004a30:	d5 18 a1 d8 	ldd  [ %g2 + 0x1d8 ], %f10	! 200a1d8 <zeroes.4060+0x28>
 2004a34:	10 bf fd 50 	b  2003f74 <_dtoa_r+0x530>
 2004a38:	91 a2 08 4a 	faddd  %f8, %f10, %f8
 2004a3c:	84 10 20 01 	mov  1, %g2
 2004a40:	10 bf fc a3 	b  2003ccc <_dtoa_r+0x288>
 2004a44:	c4 27 bf e0 	st  %g2, [ %fp + -32 ]
 2004a48:	92 10 00 19 	mov  %i1, %o1
 2004a4c:	90 10 00 18 	mov  %i0, %o0
 2004a50:	40 00 07 b9 	call  2006934 <__pow5mult>
 2004a54:	94 10 00 12 	mov  %l2, %o2
 2004a58:	10 bf fd e4 	b  20041e8 <_dtoa_r+0x7a4>
 2004a5c:	b2 10 00 08 	mov  %o0, %i1
 2004a60:	b8 10 00 11 	mov  %l1, %i4
 2004a64:	10 bf fe 3d 	b  2004358 <_dtoa_r+0x914>
 2004a68:	a2 10 00 03 	mov  %g3, %l1
 2004a6c:	93 a0 00 31 	fmovs  %f17, %f9
 2004a70:	10 bf fc d3 	b  2003dbc <_dtoa_r+0x378>
 2004a74:	88 10 20 02 	mov  2, %g4
 2004a78:	02 bf fe 7f 	be  2004474 <_dtoa_r+0xa30>
 2004a7c:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
 2004a80:	80 a0 60 00 	cmp  %g1, 0
 2004a84:	04 bf fe 9b 	ble  20044f0 <_dtoa_r+0xaac>
 2004a88:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2004a8c:	d5 18 a2 08 	ldd  [ %g2 + 0x208 ], %f10	! 200a208 <zeroes.4060+0x58>
 2004a90:	88 01 20 01 	inc  %g4
 2004a94:	91 a2 09 4a 	fmuld  %f8, %f10, %f8
 2004a98:	c8 27 bf f0 	st  %g4, [ %fp + -16 ]
 2004a9c:	d5 07 bf f0 	ld  [ %fp + -16 ], %f10
 2004aa0:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2004aa4:	99 a0 19 0a 	fitod  %f10, %f12
 2004aa8:	d5 18 62 10 	ldd  [ %g1 + 0x210 ], %f10
 2004aac:	99 a2 09 4c 	fmuld  %f8, %f12, %f12
 2004ab0:	9d a3 08 4a 	faddd  %f12, %f10, %f14
 2004ab4:	dd 3f bf f0 	std  %f14, [ %fp + -16 ]
 2004ab8:	03 3f 30 00 	sethi  %hi(0xfcc00000), %g1
 2004abc:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
 2004ac0:	88 04 3f ff 	add  %l0, -1, %g4
 2004ac4:	84 00 40 02 	add  %g1, %g2, %g2
 2004ac8:	d8 07 bf dc 	ld  [ %fp + -36 ], %o4
 2004acc:	10 bf fc d5 	b  2003e20 <_dtoa_r+0x3dc>
 2004ad0:	c4 27 bf f0 	st  %g2, [ %fp + -16 ]
 2004ad4:	95 a2 88 ce 	fsubd  %f10, %f14, %f10
 2004ad8:	81 aa 8a c8 	fcmped  %f10, %f8
 2004adc:	01 00 00 00 	nop 
 2004ae0:	2d 80 00 06 	fbg,a   2004af8 <_dtoa_r+0x10b4>
 2004ae4:	c2 4b 7f ff 	ldsb  [ %o5 + -1 ], %g1
 2004ae8:	10 bf fe 83 	b  20044f4 <_dtoa_r+0xab0>
 2004aec:	91 a0 00 30 	fmovs  %f16, %f8
 2004af0:	9a 10 00 02 	mov  %g2, %o5
 2004af4:	c2 4b 7f ff 	ldsb  [ %o5 + -1 ], %g1
 2004af8:	80 a0 60 30 	cmp  %g1, 0x30
 2004afc:	02 bf ff fd 	be  2004af0 <_dtoa_r+0x10ac>
 2004b00:	84 03 7f ff 	add  %o5, -1, %g2
 2004b04:	b8 10 00 11 	mov  %l1, %i4
 2004b08:	a0 10 00 04 	mov  %g4, %l0
 2004b0c:	10 bf fe 13 	b  2004358 <_dtoa_r+0x914>
 2004b10:	a2 10 00 0d 	mov  %o5, %l1
 2004b14:	40 00 07 88 	call  2006934 <__pow5mult>
 2004b18:	90 10 00 18 	mov  %i0, %o0
 2004b1c:	10 bf fd b3 	b  20041e8 <_dtoa_r+0x7a4>
 2004b20:	b2 10 00 08 	mov  %o0, %i1
 2004b24:	22 80 00 47 	be,a   2004c40 <_dtoa_r+0x11fc>
 2004b28:	c2 07 bf f8 	ld  [ %fp + -8 ], %g1
 2004b2c:	82 00 64 33 	add  %g1, 0x433, %g1
 2004b30:	84 10 00 12 	mov  %l2, %g2
 2004b34:	10 bf fe 37 	b  2004410 <_dtoa_r+0x9cc>
 2004b38:	e8 27 bf e4 	st  %l4, [ %fp + -28 ]
 2004b3c:	88 25 00 13 	sub  %l4, %l3, %g4
 2004b40:	82 10 20 00 	clr  %g1
 2004b44:	10 bf fe 33 	b  2004410 <_dtoa_r+0x9cc>
 2004b48:	c8 27 bf e4 	st  %g4, [ %fp + -28 ]
 2004b4c:	80 a0 e0 00 	cmp  %g3, 0
 2004b50:	04 80 00 0e 	ble  2004b88 <_dtoa_r+0x1144>
 2004b54:	b8 10 00 17 	mov  %l7, %i4
 2004b58:	92 10 00 19 	mov  %i1, %o1
 2004b5c:	94 10 20 01 	mov  1, %o2
 2004b60:	40 00 07 b9 	call  2006a44 <__lshift>
 2004b64:	90 10 00 18 	mov  %i0, %o0
 2004b68:	92 10 00 12 	mov  %l2, %o1
 2004b6c:	40 00 08 03 	call  2006b78 <__mcmp>
 2004b70:	b2 10 00 08 	mov  %o0, %i1
 2004b74:	80 a2 20 00 	cmp  %o0, 0
 2004b78:	04 80 00 53 	ble  2004cc4 <_dtoa_r+0x1280>
 2004b7c:	80 a7 20 39 	cmp  %i4, 0x39
 2004b80:	02 80 00 3f 	be  2004c7c <_dtoa_r+0x1238>
 2004b84:	ae 05 a0 31 	add  %l6, 0x31, %l7
 2004b88:	c6 07 bf f0 	ld  [ %fp + -16 ], %g3
 2004b8c:	b8 10 00 11 	mov  %l1, %i4
 2004b90:	ee 28 c0 00 	stb  %l7, [ %g3 ]
 2004b94:	a2 00 e0 01 	add  %g3, 1, %l1
 2004b98:	10 bf fd e5 	b  200432c <_dtoa_r+0x8e8>
 2004b9c:	aa 10 00 14 	mov  %l4, %l5
 2004ba0:	b8 10 00 11 	mov  %l1, %i4
 2004ba4:	10 bf fd 50 	b  20040e4 <_dtoa_r+0x6a0>
 2004ba8:	a2 10 00 01 	mov  %g1, %l1
 2004bac:	84 00 a0 01 	inc  %g2
 2004bb0:	a0 10 00 04 	mov  %g4, %l0
 2004bb4:	10 bf fd e9 	b  2004358 <_dtoa_r+0x914>
 2004bb8:	c4 28 40 00 	stb  %g2, [ %g1 ]
 2004bbc:	81 aa 8a 48 	fcmpd  %f10, %f8
 2004bc0:	01 00 00 00 	nop 
 2004bc4:	03 bf ff a8 	fbne  2004a64 <_dtoa_r+0x1020>
 2004bc8:	b8 10 00 11 	mov  %l1, %i4
 2004bcc:	e5 27 bf b4 	st  %f18, [ %fp + -76 ]
 2004bd0:	c8 07 bf b4 	ld  [ %fp + -76 ], %g4
 2004bd4:	80 89 20 01 	btst  1, %g4
 2004bd8:	02 bf fd e0 	be  2004358 <_dtoa_r+0x914>
 2004bdc:	a2 10 00 03 	mov  %g3, %l1
 2004be0:	c4 08 ff ff 	ldub  [ %g3 + -1 ], %g2
 2004be4:	10 bf fd 40 	b  20040e4 <_dtoa_r+0x6a0>
 2004be8:	88 10 00 10 	mov  %l0, %g4
 2004bec:	d2 05 60 04 	ld  [ %l5 + 4 ], %o1
 2004bf0:	40 00 05 c6 	call  2006308 <_Balloc>
 2004bf4:	90 10 00 18 	mov  %i0, %o0
 2004bf8:	d4 05 60 10 	ld  [ %l5 + 0x10 ], %o2
 2004bfc:	b8 10 00 08 	mov  %o0, %i4
 2004c00:	92 05 60 0c 	add  %l5, 0xc, %o1
 2004c04:	90 02 20 0c 	add  %o0, 0xc, %o0
 2004c08:	94 02 a0 02 	add  %o2, 2, %o2
 2004c0c:	40 00 05 7e 	call  2006204 <memcpy>
 2004c10:	95 2a a0 02 	sll  %o2, 2, %o2
 2004c14:	90 10 00 18 	mov  %i0, %o0
 2004c18:	92 10 00 1c 	mov  %i4, %o1
 2004c1c:	40 00 07 8a 	call  2006a44 <__lshift>
 2004c20:	94 10 20 01 	mov  1, %o2
 2004c24:	10 bf fe 4c 	b  2004554 <_dtoa_r+0xb10>
 2004c28:	a8 10 00 08 	mov  %o0, %l4
 2004c2c:	84 00 a0 01 	inc  %g2
 2004c30:	b8 10 00 11 	mov  %l1, %i4
 2004c34:	c4 28 40 00 	stb  %g2, [ %g1 ]
 2004c38:	10 bf fd bd 	b  200432c <_dtoa_r+0x8e8>
 2004c3c:	a2 10 00 16 	mov  %l6, %l1
 2004c40:	88 10 20 36 	mov  0x36, %g4
 2004c44:	84 10 00 12 	mov  %l2, %g2
 2004c48:	82 21 00 01 	sub  %g4, %g1, %g1
 2004c4c:	10 bf fd f1 	b  2004410 <_dtoa_r+0x9cc>
 2004c50:	e8 27 bf e4 	st  %l4, [ %fp + -28 ]
 2004c54:	02 80 00 0a 	be  2004c7c <_dtoa_r+0x1238>
 2004c58:	b8 10 00 11 	mov  %l1, %i4
 2004c5c:	c4 07 bf f0 	ld  [ %fp + -16 ], %g2
 2004c60:	82 05 e0 01 	add  %l7, 1, %g1
 2004c64:	c2 28 80 00 	stb  %g1, [ %g2 ]
 2004c68:	a2 00 a0 01 	add  %g2, 1, %l1
 2004c6c:	10 bf fd b0 	b  200432c <_dtoa_r+0x8e8>
 2004c70:	aa 10 00 14 	mov  %l4, %l5
 2004c74:	10 bf fe b3 	b  2004740 <_dtoa_r+0xcfc>
 2004c78:	aa 10 00 14 	mov  %l4, %l5
 2004c7c:	c8 07 bf f0 	ld  [ %fp + -16 ], %g4
 2004c80:	82 10 20 39 	mov  0x39, %g1
 2004c84:	ac 01 20 01 	add  %g4, 1, %l6
 2004c88:	c2 29 00 00 	stb  %g1, [ %g4 ]
 2004c8c:	aa 10 00 14 	mov  %l4, %l5
 2004c90:	10 bf fe b9 	b  2004774 <_dtoa_r+0xd30>
 2004c94:	84 10 20 39 	mov  0x39, %g2
 2004c98:	80 a5 e0 39 	cmp  %l7, 0x39
 2004c9c:	02 bf ff f8 	be  2004c7c <_dtoa_r+0x1238>
 2004ca0:	80 a5 60 00 	cmp  %l5, 0
 2004ca4:	34 80 00 02 	bg,a   2004cac <_dtoa_r+0x1268>
 2004ca8:	ae 05 a0 31 	add  %l6, 0x31, %l7
 2004cac:	c2 07 bf f0 	ld  [ %fp + -16 ], %g1
 2004cb0:	b8 10 00 11 	mov  %l1, %i4
 2004cb4:	ee 28 40 00 	stb  %l7, [ %g1 ]
 2004cb8:	a2 00 60 01 	add  %g1, 1, %l1
 2004cbc:	10 bf fd 9c 	b  200432c <_dtoa_r+0x8e8>
 2004cc0:	aa 10 00 14 	mov  %l4, %l5
 2004cc4:	80 a2 20 00 	cmp  %o0, 0
 2004cc8:	12 bf ff b1 	bne  2004b8c <_dtoa_r+0x1148>
 2004ccc:	c6 07 bf f0 	ld  [ %fp + -16 ], %g3
 2004cd0:	80 8d e0 01 	btst  1, %l7
 2004cd4:	22 bf ff af 	be,a   2004b90 <_dtoa_r+0x114c>
 2004cd8:	b8 10 00 11 	mov  %l1, %i4
 2004cdc:	10 bf ff a9 	b  2004b80 <_dtoa_r+0x113c>
 2004ce0:	80 a7 20 39 	cmp  %i4, 0x39
 2004ce4:	92 10 00 15 	mov  %l5, %o1
 2004ce8:	90 10 00 18 	mov  %i0, %o0
 2004cec:	94 10 20 0a 	mov  0xa, %o2
 2004cf0:	40 00 05 b6 	call  20063c8 <__multadd>
 2004cf4:	96 10 20 00 	clr  %o3
 2004cf8:	c2 07 bf dc 	ld  [ %fp + -36 ], %g1
 2004cfc:	80 a0 60 00 	cmp  %g1, 0
 2004d00:	14 80 00 0b 	bg  2004d2c <_dtoa_r+0x12e8>
 2004d04:	aa 10 00 08 	mov  %o0, %l5
 2004d08:	80 a6 e0 02 	cmp  %i3, 2
 2004d0c:	14 80 00 03 	bg  2004d18 <_dtoa_r+0x12d4>
 2004d10:	82 10 20 01 	mov  1, %g1
 2004d14:	82 10 20 00 	clr  %g1
 2004d18:	80 88 60 ff 	btst  0xff, %g1
 2004d1c:	02 bf fe 02 	be  2004524 <_dtoa_r+0xae0>
 2004d20:	e6 07 bf dc 	ld  [ %fp + -36 ], %l3
 2004d24:	10 bf fd 6f 	b  20042e0 <_dtoa_r+0x89c>
 2004d28:	80 a4 e0 00 	cmp  %l3, 0
 2004d2c:	10 bf fd fe 	b  2004524 <_dtoa_r+0xae0>
 2004d30:	e6 07 bf dc 	ld  [ %fp + -36 ], %l3
 2004d34:	02 bf fd 50 	be  2004274 <_dtoa_r+0x830>
 2004d38:	80 a5 20 00 	cmp  %l4, 0
 2004d3c:	84 10 20 3c 	mov  0x3c, %g2
 2004d40:	10 bf fd f0 	b  2004500 <_dtoa_r+0xabc>
 2004d44:	82 20 80 01 	sub  %g2, %g1, %g1

02004d48 <__sflush_r>:
 2004d48:	9d e3 bf a0 	save  %sp, -96, %sp
 2004d4c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004d50:	80 88 60 08 	btst  8, %g1
 2004d54:	32 80 00 38 	bne,a   2004e34 <__sflush_r+0xec>
 2004d58:	f8 06 60 10 	ld  [ %i1 + 0x10 ], %i4
 2004d5c:	84 10 68 00 	or  %g1, 0x800, %g2
 2004d60:	c4 36 60 0c 	sth  %g2, [ %i1 + 0xc ]
 2004d64:	c8 06 60 04 	ld  [ %i1 + 4 ], %g4
 2004d68:	80 a1 20 00 	cmp  %g4, 0
 2004d6c:	04 80 00 67 	ble  2004f08 <__sflush_r+0x1c0>
 2004d70:	86 10 00 02 	mov  %g2, %g3
 2004d74:	c4 06 60 28 	ld  [ %i1 + 0x28 ], %g2
 2004d78:	80 a0 a0 00 	cmp  %g2, 0
 2004d7c:	02 80 00 60 	be  2004efc <__sflush_r+0x1b4>
 2004d80:	09 00 00 04 	sethi  %hi(0x1000), %g4
 2004d84:	fa 06 00 00 	ld  [ %i0 ], %i5
 2004d88:	80 89 00 01 	btst  %g4, %g1
 2004d8c:	02 80 00 49 	be  2004eb0 <__sflush_r+0x168>
 2004d90:	c0 26 00 00 	clr  [ %i0 ]
 2004d94:	d4 06 60 50 	ld  [ %i1 + 0x50 ], %o2
 2004d98:	80 88 e0 04 	btst  4, %g3
 2004d9c:	02 80 00 0a 	be  2004dc4 <__sflush_r+0x7c>
 2004da0:	90 10 00 18 	mov  %i0, %o0
 2004da4:	c6 06 60 04 	ld  [ %i1 + 4 ], %g3
 2004da8:	c2 06 60 30 	ld  [ %i1 + 0x30 ], %g1
 2004dac:	80 a0 60 00 	cmp  %g1, 0
 2004db0:	02 80 00 05 	be  2004dc4 <__sflush_r+0x7c>
 2004db4:	94 22 80 03 	sub  %o2, %g3, %o2
 2004db8:	c2 06 60 3c 	ld  [ %i1 + 0x3c ], %g1
 2004dbc:	94 22 80 01 	sub  %o2, %g1, %o2
 2004dc0:	90 10 00 18 	mov  %i0, %o0
 2004dc4:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2004dc8:	9f c0 80 00 	call  %g2
 2004dcc:	96 10 20 00 	clr  %o3
 2004dd0:	80 a2 3f ff 	cmp  %o0, -1
 2004dd4:	22 80 00 56 	be,a   2004f2c <__sflush_r+0x1e4>
 2004dd8:	c2 06 00 00 	ld  [ %i0 ], %g1
 2004ddc:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004de0:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2004de4:	86 08 77 ff 	and  %g1, -2049, %g3
 2004de8:	c4 26 40 00 	st  %g2, [ %i1 ]
 2004dec:	c0 26 60 04 	clr  [ %i1 + 4 ]
 2004df0:	05 00 00 04 	sethi  %hi(0x1000), %g2
 2004df4:	80 88 80 01 	btst  %g2, %g1
 2004df8:	12 80 00 5c 	bne  2004f68 <__sflush_r+0x220>
 2004dfc:	c6 36 60 0c 	sth  %g3, [ %i1 + 0xc ]
 2004e00:	fa 26 00 00 	st  %i5, [ %i0 ]
 2004e04:	d2 06 60 30 	ld  [ %i1 + 0x30 ], %o1
 2004e08:	80 a2 60 00 	cmp  %o1, 0
 2004e0c:	02 80 00 3c 	be  2004efc <__sflush_r+0x1b4>
 2004e10:	82 06 60 40 	add  %i1, 0x40, %g1
 2004e14:	80 a2 40 01 	cmp  %o1, %g1
 2004e18:	22 80 00 05 	be,a   2004e2c <__sflush_r+0xe4>
 2004e1c:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 2004e20:	40 00 01 60 	call  20053a0 <_free_r>
 2004e24:	90 10 00 18 	mov  %i0, %o0
 2004e28:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 2004e2c:	81 c7 e0 08 	ret 
 2004e30:	91 e8 20 00 	restore  %g0, 0, %o0
 2004e34:	80 a7 20 00 	cmp  %i4, 0
 2004e38:	02 80 00 31 	be  2004efc <__sflush_r+0x1b4>
 2004e3c:	80 88 60 03 	btst  3, %g1
 2004e40:	fa 06 40 00 	ld  [ %i1 ], %i5
 2004e44:	f8 26 40 00 	st  %i4, [ %i1 ]
 2004e48:	ba 27 40 1c 	sub  %i5, %i4, %i5
 2004e4c:	12 80 00 03 	bne  2004e58 <__sflush_r+0x110>
 2004e50:	84 10 20 00 	clr  %g2
 2004e54:	c4 06 60 14 	ld  [ %i1 + 0x14 ], %g2
 2004e58:	80 a7 60 00 	cmp  %i5, 0
 2004e5c:	14 80 00 07 	bg  2004e78 <__sflush_r+0x130>
 2004e60:	c4 26 60 08 	st  %g2, [ %i1 + 8 ]
 2004e64:	81 c7 e0 08 	ret 
 2004e68:	91 e8 20 00 	restore  %g0, 0, %o0
 2004e6c:	80 a7 60 00 	cmp  %i5, 0
 2004e70:	04 80 00 23 	ble  2004efc <__sflush_r+0x1b4>
 2004e74:	b8 07 00 08 	add  %i4, %o0, %i4
 2004e78:	94 10 00 1c 	mov  %i4, %o2
 2004e7c:	96 10 00 1d 	mov  %i5, %o3
 2004e80:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
 2004e84:	90 10 00 18 	mov  %i0, %o0
 2004e88:	9f c0 40 00 	call  %g1
 2004e8c:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2004e90:	80 a2 20 00 	cmp  %o0, 0
 2004e94:	34 bf ff f6 	bg,a   2004e6c <__sflush_r+0x124>
 2004e98:	ba 27 40 08 	sub  %i5, %o0, %i5
 2004e9c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004ea0:	82 10 60 40 	or  %g1, 0x40, %g1
 2004ea4:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2004ea8:	81 c7 e0 08 	ret 
 2004eac:	91 e8 3f ff 	restore  %g0, -1, %o0
 2004eb0:	94 10 20 00 	clr  %o2
 2004eb4:	90 10 00 18 	mov  %i0, %o0
 2004eb8:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2004ebc:	9f c0 80 00 	call  %g2
 2004ec0:	96 10 20 01 	mov  1, %o3
 2004ec4:	80 a2 3f ff 	cmp  %o0, -1
 2004ec8:	12 80 00 16 	bne  2004f20 <__sflush_r+0x1d8>
 2004ecc:	94 10 00 08 	mov  %o0, %o2
 2004ed0:	c2 06 00 00 	ld  [ %i0 ], %g1
 2004ed4:	80 a0 60 00 	cmp  %g1, 0
 2004ed8:	22 80 00 13 	be,a   2004f24 <__sflush_r+0x1dc>
 2004edc:	c6 16 60 0c 	lduh  [ %i1 + 0xc ], %g3
 2004ee0:	80 a0 60 16 	cmp  %g1, 0x16
 2004ee4:	22 80 00 06 	be,a   2004efc <__sflush_r+0x1b4>
 2004ee8:	fa 26 00 00 	st  %i5, [ %i0 ]
 2004eec:	80 a0 60 1d 	cmp  %g1, 0x1d
 2004ef0:	32 bf ff ec 	bne,a   2004ea0 <__sflush_r+0x158>
 2004ef4:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004ef8:	fa 26 00 00 	st  %i5, [ %i0 ]
 2004efc:	b0 10 20 00 	clr  %i0
 2004f00:	81 c7 e0 08 	ret 
 2004f04:	81 e8 00 00 	restore 
 2004f08:	c4 06 60 3c 	ld  [ %i1 + 0x3c ], %g2
 2004f0c:	80 a0 a0 00 	cmp  %g2, 0
 2004f10:	34 bf ff 9a 	bg,a   2004d78 <__sflush_r+0x30>
 2004f14:	c4 06 60 28 	ld  [ %i1 + 0x28 ], %g2
 2004f18:	81 c7 e0 08 	ret 
 2004f1c:	91 e8 20 00 	restore  %g0, 0, %o0
 2004f20:	c6 16 60 0c 	lduh  [ %i1 + 0xc ], %g3
 2004f24:	10 bf ff 9d 	b  2004d98 <__sflush_r+0x50>
 2004f28:	c4 06 60 28 	ld  [ %i1 + 0x28 ], %g2
 2004f2c:	80 a0 60 00 	cmp  %g1, 0
 2004f30:	22 bf ff ac 	be,a   2004de0 <__sflush_r+0x98>
 2004f34:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004f38:	80 a0 60 1d 	cmp  %g1, 0x1d
 2004f3c:	02 80 00 04 	be  2004f4c <__sflush_r+0x204>
 2004f40:	80 a0 60 16 	cmp  %g1, 0x16
 2004f44:	32 bf ff d7 	bne,a   2004ea0 <__sflush_r+0x158>
 2004f48:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2004f4c:	c4 16 60 0c 	lduh  [ %i1 + 0xc ], %g2
 2004f50:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
 2004f54:	84 08 b7 ff 	and  %g2, -2049, %g2
 2004f58:	c0 26 60 04 	clr  [ %i1 + 4 ]
 2004f5c:	c4 36 60 0c 	sth  %g2, [ %i1 + 0xc ]
 2004f60:	10 bf ff a8 	b  2004e00 <__sflush_r+0xb8>
 2004f64:	c2 26 40 00 	st  %g1, [ %i1 ]
 2004f68:	10 bf ff a6 	b  2004e00 <__sflush_r+0xb8>
 2004f6c:	d0 26 60 50 	st  %o0, [ %i1 + 0x50 ]

02004f70 <_fflush_r>:
 2004f70:	9d e3 bf a0 	save  %sp, -96, %sp
 2004f74:	80 a6 20 00 	cmp  %i0, 0
 2004f78:	22 80 00 07 	be,a   2004f94 <_fflush_r+0x24>
 2004f7c:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1
 2004f80:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 2004f84:	80 a0 60 00 	cmp  %g1, 0
 2004f88:	02 80 00 0a 	be  2004fb0 <_fflush_r+0x40>
 2004f8c:	01 00 00 00 	nop 
 2004f90:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1
 2004f94:	80 a0 60 00 	cmp  %g1, 0
 2004f98:	12 80 00 04 	bne  2004fa8 <_fflush_r+0x38>
 2004f9c:	01 00 00 00 	nop 
 2004fa0:	81 c7 e0 08 	ret 
 2004fa4:	91 e8 20 00 	restore  %g0, 0, %o0
 2004fa8:	7f ff ff 68 	call  2004d48 <__sflush_r>
 2004fac:	81 e8 00 00 	restore 
 2004fb0:	40 00 00 52 	call  20050f8 <__sinit>
 2004fb4:	90 10 00 18 	mov  %i0, %o0
 2004fb8:	10 bf ff f7 	b  2004f94 <_fflush_r+0x24>
 2004fbc:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1

02004fc0 <fflush>:
 2004fc0:	80 a2 20 00 	cmp  %o0, 0
 2004fc4:	02 80 00 07 	be  2004fe0 <fflush+0x20>
 2004fc8:	92 10 00 08 	mov  %o0, %o1
 2004fcc:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2004fd0:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0	! 200a408 <_impure_ptr>
 2004fd4:	82 13 c0 00 	mov  %o7, %g1
 2004fd8:	7f ff ff e6 	call  2004f70 <_fflush_r>
 2004fdc:	9e 10 40 00 	mov  %g1, %o7
 2004fe0:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2004fe4:	13 00 80 13 	sethi  %hi(0x2004c00), %o1
 2004fe8:	d0 00 61 2c 	ld  [ %g1 + 0x12c ], %o0
 2004fec:	92 12 63 70 	or  %o1, 0x370, %o1
 2004ff0:	82 13 c0 00 	mov  %o7, %g1
 2004ff4:	40 00 01 b3 	call  20056c0 <_fwalk_reent>
 2004ff8:	9e 10 40 00 	mov  %g1, %o7

02004ffc <__fp_lock>:
 2004ffc:	81 c3 e0 08 	retl 
 2005000:	90 10 20 00 	clr  %o0

02005004 <__fp_unlock>:
 2005004:	81 c3 e0 08 	retl 
 2005008:	90 10 20 00 	clr  %o0

0200500c <_cleanup_r>:
 200500c:	13 00 80 21 	sethi  %hi(0x2008400), %o1
 2005010:	92 12 63 30 	or  %o1, 0x330, %o1	! 2008730 <fclose>
 2005014:	82 13 c0 00 	mov  %o7, %g1
 2005018:	40 00 01 88 	call  2005638 <_fwalk>
 200501c:	9e 10 40 00 	mov  %g1, %o7

02005020 <std.isra.0>:
 2005020:	9d e3 bf a0 	save  %sp, -96, %sp
 2005024:	92 10 20 00 	clr  %o1
 2005028:	c0 26 00 00 	clr  [ %i0 ]
 200502c:	c0 26 20 04 	clr  [ %i0 + 4 ]
 2005030:	c0 26 20 08 	clr  [ %i0 + 8 ]
 2005034:	f2 36 20 0c 	sth  %i1, [ %i0 + 0xc ]
 2005038:	c0 26 20 64 	clr  [ %i0 + 0x64 ]
 200503c:	f4 36 20 0e 	sth  %i2, [ %i0 + 0xe ]
 2005040:	c0 26 20 10 	clr  [ %i0 + 0x10 ]
 2005044:	c0 26 20 14 	clr  [ %i0 + 0x14 ]
 2005048:	c0 26 20 18 	clr  [ %i0 + 0x18 ]
 200504c:	90 06 20 5c 	add  %i0, 0x5c, %o0
 2005050:	7f ff f1 62 	call  20015d8 <memset>
 2005054:	94 10 20 08 	mov  8, %o2
 2005058:	03 00 80 1c 	sethi  %hi(0x2007000), %g1
 200505c:	82 10 63 08 	or  %g1, 0x308, %g1	! 2007308 <__sread>
 2005060:	c2 26 20 20 	st  %g1, [ %i0 + 0x20 ]
 2005064:	03 00 80 1c 	sethi  %hi(0x2007000), %g1
 2005068:	82 10 63 5c 	or  %g1, 0x35c, %g1	! 200735c <__swrite>
 200506c:	c2 26 20 24 	st  %g1, [ %i0 + 0x24 ]
 2005070:	03 00 80 1c 	sethi  %hi(0x2007000), %g1
 2005074:	82 10 63 a0 	or  %g1, 0x3a0, %g1	! 20073a0 <__sseek>
 2005078:	f0 26 20 1c 	st  %i0, [ %i0 + 0x1c ]
 200507c:	c2 26 20 28 	st  %g1, [ %i0 + 0x28 ]
 2005080:	03 00 80 1c 	sethi  %hi(0x2007000), %g1
 2005084:	82 10 63 f8 	or  %g1, 0x3f8, %g1	! 20073f8 <__sclose>
 2005088:	c2 26 20 2c 	st  %g1, [ %i0 + 0x2c ]
 200508c:	81 c7 e0 08 	ret 
 2005090:	81 e8 00 00 	restore 

02005094 <__sfmoreglue>:
 2005094:	9d e3 bf a0 	save  %sp, -96, %sp
 2005098:	83 2e 60 02 	sll  %i1, 2, %g1
 200509c:	90 10 00 18 	mov  %i0, %o0
 20050a0:	bb 2e 60 04 	sll  %i1, 4, %i5
 20050a4:	ba 27 40 01 	sub  %i5, %g1, %i5
 20050a8:	ba 07 40 19 	add  %i5, %i1, %i5
 20050ac:	bb 2f 60 03 	sll  %i5, 3, %i5
 20050b0:	40 00 02 3c 	call  20059a0 <_malloc_r>
 20050b4:	92 07 60 0c 	add  %i5, 0xc, %o1
 20050b8:	b0 92 20 00 	orcc  %o0, 0, %i0
 20050bc:	02 80 00 08 	be  20050dc <__sfmoreglue+0x48>
 20050c0:	90 06 20 0c 	add  %i0, 0xc, %o0
 20050c4:	c0 26 00 00 	clr  [ %i0 ]
 20050c8:	f2 26 20 04 	st  %i1, [ %i0 + 4 ]
 20050cc:	d0 26 20 08 	st  %o0, [ %i0 + 8 ]
 20050d0:	92 10 20 00 	clr  %o1
 20050d4:	7f ff f1 41 	call  20015d8 <memset>
 20050d8:	94 10 00 1d 	mov  %i5, %o2
 20050dc:	81 c7 e0 08 	ret 
 20050e0:	81 e8 00 00 	restore 

020050e4 <_cleanup>:
 20050e4:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 20050e8:	d0 00 61 2c 	ld  [ %g1 + 0x12c ], %o0	! 200a12c <_global_impure_ptr>
 20050ec:	82 13 c0 00 	mov  %o7, %g1
 20050f0:	7f ff ff c7 	call  200500c <_cleanup_r>
 20050f4:	9e 10 40 00 	mov  %g1, %o7

020050f8 <__sinit>:
 20050f8:	9d e3 bf a0 	save  %sp, -96, %sp
 20050fc:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 2005100:	80 a0 60 00 	cmp  %g1, 0
 2005104:	02 80 00 04 	be  2005114 <__sinit+0x1c>
 2005108:	82 10 20 01 	mov  1, %g1
 200510c:	81 c7 e0 08 	ret 
 2005110:	81 e8 00 00 	restore 
 2005114:	c2 26 20 38 	st  %g1, [ %i0 + 0x38 ]
 2005118:	03 00 80 14 	sethi  %hi(0x2005000), %g1
 200511c:	82 10 60 0c 	or  %g1, 0xc, %g1	! 200500c <_cleanup_r>
 2005120:	84 10 20 03 	mov  3, %g2
 2005124:	c2 26 20 3c 	st  %g1, [ %i0 + 0x3c ]
 2005128:	82 06 22 ec 	add  %i0, 0x2ec, %g1
 200512c:	d0 06 20 04 	ld  [ %i0 + 4 ], %o0
 2005130:	c4 26 22 e4 	st  %g2, [ %i0 + 0x2e4 ]
 2005134:	c2 26 22 e8 	st  %g1, [ %i0 + 0x2e8 ]
 2005138:	92 10 20 04 	mov  4, %o1
 200513c:	94 10 20 00 	clr  %o2
 2005140:	7f ff ff b8 	call  2005020 <std.isra.0>
 2005144:	c0 26 22 e0 	clr  [ %i0 + 0x2e0 ]
 2005148:	d0 06 20 08 	ld  [ %i0 + 8 ], %o0
 200514c:	92 10 20 09 	mov  9, %o1
 2005150:	94 10 20 01 	mov  1, %o2
 2005154:	7f ff ff b3 	call  2005020 <std.isra.0>
 2005158:	b2 10 20 12 	mov  0x12, %i1
 200515c:	f0 06 20 0c 	ld  [ %i0 + 0xc ], %i0
 2005160:	7f ff ff b0 	call  2005020 <std.isra.0>
 2005164:	95 e8 20 02 	restore  %g0, 2, %o2

02005168 <__sfp>:
 2005168:	9d e3 bf a0 	save  %sp, -96, %sp
 200516c:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2005170:	f8 00 61 2c 	ld  [ %g1 + 0x12c ], %i4	! 200a12c <_global_impure_ptr>
 2005174:	c2 07 20 38 	ld  [ %i4 + 0x38 ], %g1
 2005178:	80 a0 60 00 	cmp  %g1, 0
 200517c:	02 80 00 2b 	be  2005228 <__sfp+0xc0>
 2005180:	01 00 00 00 	nop 
 2005184:	b8 07 22 e0 	add  %i4, 0x2e0, %i4
 2005188:	c2 07 20 04 	ld  [ %i4 + 4 ], %g1
 200518c:	82 80 7f ff 	addcc  %g1, -1, %g1
 2005190:	1c 80 00 07 	bpos  20051ac <__sfp+0x44>
 2005194:	fa 07 20 08 	ld  [ %i4 + 8 ], %i5
 2005198:	10 80 00 1f 	b  2005214 <__sfp+0xac>
 200519c:	d0 07 00 00 	ld  [ %i4 ], %o0
 20051a0:	80 a0 7f ff 	cmp  %g1, -1
 20051a4:	02 80 00 1b 	be  2005210 <__sfp+0xa8>
 20051a8:	ba 07 60 68 	add  %i5, 0x68, %i5
 20051ac:	c4 57 60 0c 	ldsh  [ %i5 + 0xc ], %g2
 20051b0:	80 a0 a0 00 	cmp  %g2, 0
 20051b4:	12 bf ff fb 	bne  20051a0 <__sfp+0x38>
 20051b8:	82 00 7f ff 	add  %g1, -1, %g1
 20051bc:	82 10 3f ff 	mov  -1, %g1
 20051c0:	c2 37 60 0e 	sth  %g1, [ %i5 + 0xe ]
 20051c4:	82 10 20 01 	mov  1, %g1
 20051c8:	c0 27 60 64 	clr  [ %i5 + 0x64 ]
 20051cc:	c2 37 60 0c 	sth  %g1, [ %i5 + 0xc ]
 20051d0:	c0 27 40 00 	clr  [ %i5 ]
 20051d4:	c0 27 60 08 	clr  [ %i5 + 8 ]
 20051d8:	c0 27 60 04 	clr  [ %i5 + 4 ]
 20051dc:	c0 27 60 10 	clr  [ %i5 + 0x10 ]
 20051e0:	c0 27 60 14 	clr  [ %i5 + 0x14 ]
 20051e4:	c0 27 60 18 	clr  [ %i5 + 0x18 ]
 20051e8:	90 07 60 5c 	add  %i5, 0x5c, %o0
 20051ec:	92 10 20 00 	clr  %o1
 20051f0:	7f ff f0 fa 	call  20015d8 <memset>
 20051f4:	94 10 20 08 	mov  8, %o2
 20051f8:	c0 27 60 30 	clr  [ %i5 + 0x30 ]
 20051fc:	c0 27 60 34 	clr  [ %i5 + 0x34 ]
 2005200:	c0 27 60 44 	clr  [ %i5 + 0x44 ]
 2005204:	c0 27 60 48 	clr  [ %i5 + 0x48 ]
 2005208:	81 c7 e0 08 	ret 
 200520c:	91 e8 00 1d 	restore  %g0, %i5, %o0
 2005210:	d0 07 00 00 	ld  [ %i4 ], %o0
 2005214:	80 a2 20 00 	cmp  %o0, 0
 2005218:	22 80 00 08 	be,a   2005238 <__sfp+0xd0>
 200521c:	90 10 00 18 	mov  %i0, %o0
 2005220:	10 bf ff da 	b  2005188 <__sfp+0x20>
 2005224:	b8 10 00 08 	mov  %o0, %i4
 2005228:	7f ff ff b4 	call  20050f8 <__sinit>
 200522c:	90 10 00 1c 	mov  %i4, %o0
 2005230:	10 bf ff d6 	b  2005188 <__sfp+0x20>
 2005234:	b8 07 22 e0 	add  %i4, 0x2e0, %i4
 2005238:	7f ff ff 97 	call  2005094 <__sfmoreglue>
 200523c:	92 10 20 04 	mov  4, %o1
 2005240:	80 a2 20 00 	cmp  %o0, 0
 2005244:	12 bf ff f7 	bne  2005220 <__sfp+0xb8>
 2005248:	d0 27 00 00 	st  %o0, [ %i4 ]
 200524c:	82 10 20 0c 	mov  0xc, %g1
 2005250:	ba 10 20 00 	clr  %i5
 2005254:	10 bf ff ed 	b  2005208 <__sfp+0xa0>
 2005258:	c2 26 00 00 	st  %g1, [ %i0 ]

0200525c <__sfp_lock_acquire>:
 200525c:	81 c3 e0 08 	retl 
 2005260:	01 00 00 00 	nop 

02005264 <__sfp_lock_release>:
 2005264:	81 c3 e0 08 	retl 
 2005268:	01 00 00 00 	nop 

0200526c <__sinit_lock_acquire>:
 200526c:	81 c3 e0 08 	retl 
 2005270:	01 00 00 00 	nop 

02005274 <__sinit_lock_release>:
 2005274:	81 c3 e0 08 	retl 
 2005278:	01 00 00 00 	nop 

0200527c <__fp_lock_all>:
 200527c:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2005280:	13 00 80 13 	sethi  %hi(0x2004c00), %o1
 2005284:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
 2005288:	92 12 63 fc 	or  %o1, 0x3fc, %o1
 200528c:	82 13 c0 00 	mov  %o7, %g1
 2005290:	40 00 00 ea 	call  2005638 <_fwalk>
 2005294:	9e 10 40 00 	mov  %g1, %o7

02005298 <__fp_unlock_all>:
 2005298:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 200529c:	13 00 80 14 	sethi  %hi(0x2005000), %o1
 20052a0:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
 20052a4:	92 12 60 04 	or  %o1, 4, %o1
 20052a8:	82 13 c0 00 	mov  %o7, %g1
 20052ac:	40 00 00 e3 	call  2005638 <_fwalk>
 20052b0:	9e 10 40 00 	mov  %g1, %o7

020052b4 <_malloc_trim_r>:
 20052b4:	9d e3 bf a0 	save  %sp, -96, %sp
 20052b8:	40 00 04 10 	call  20062f8 <__malloc_lock>
 20052bc:	90 10 00 18 	mov  %i0, %o0
 20052c0:	3b 00 80 2a 	sethi  %hi(0x200a800), %i5
 20052c4:	ba 17 60 c0 	or  %i5, 0xc0, %i5	! 200a8c0 <__malloc_av_>
 20052c8:	c2 07 60 08 	ld  [ %i5 + 8 ], %g1
 20052cc:	f8 00 60 04 	ld  [ %g1 + 4 ], %i4
 20052d0:	b8 0f 3f fc 	and  %i4, -4, %i4
 20052d4:	82 07 2f ef 	add  %i4, 0xfef, %g1
 20052d8:	b2 20 40 19 	sub  %g1, %i1, %i1
 20052dc:	b2 0e 70 00 	and  %i1, -4096, %i1
 20052e0:	b2 06 70 00 	add  %i1, -4096, %i1
 20052e4:	80 a6 6f ff 	cmp  %i1, 0xfff
 20052e8:	04 80 00 09 	ble  200530c <_malloc_trim_r+0x58>
 20052ec:	90 10 00 18 	mov  %i0, %o0
 20052f0:	40 00 07 f6 	call  20072c8 <_sbrk_r>
 20052f4:	92 10 20 00 	clr  %o1
 20052f8:	c2 07 60 08 	ld  [ %i5 + 8 ], %g1
 20052fc:	82 00 40 1c 	add  %g1, %i4, %g1
 2005300:	80 a2 00 01 	cmp  %o0, %g1
 2005304:	02 80 00 07 	be  2005320 <_malloc_trim_r+0x6c>
 2005308:	90 10 00 18 	mov  %i0, %o0
 200530c:	90 10 00 18 	mov  %i0, %o0
 2005310:	40 00 03 fc 	call  2006300 <__malloc_unlock>
 2005314:	b0 10 20 00 	clr  %i0
 2005318:	81 c7 e0 08 	ret 
 200531c:	81 e8 00 00 	restore 
 2005320:	40 00 07 ea 	call  20072c8 <_sbrk_r>
 2005324:	92 20 00 19 	neg  %i1, %o1
 2005328:	80 a2 3f ff 	cmp  %o0, -1
 200532c:	02 80 00 0e 	be  2005364 <_malloc_trim_r+0xb0>
 2005330:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2005334:	c4 07 60 08 	ld  [ %i5 + 8 ], %g2
 2005338:	c6 00 60 d8 	ld  [ %g1 + 0xd8 ], %g3
 200533c:	90 10 00 18 	mov  %i0, %o0
 2005340:	b8 27 00 19 	sub  %i4, %i1, %i4
 2005344:	b0 10 20 01 	mov  1, %i0
 2005348:	b2 20 c0 19 	sub  %g3, %i1, %i1
 200534c:	b8 17 20 01 	or  %i4, 1, %i4
 2005350:	f2 20 60 d8 	st  %i1, [ %g1 + 0xd8 ]
 2005354:	40 00 03 eb 	call  2006300 <__malloc_unlock>
 2005358:	f8 20 a0 04 	st  %i4, [ %g2 + 4 ]
 200535c:	81 c7 e0 08 	ret 
 2005360:	81 e8 00 00 	restore 
 2005364:	90 10 00 18 	mov  %i0, %o0
 2005368:	40 00 07 d8 	call  20072c8 <_sbrk_r>
 200536c:	92 10 20 00 	clr  %o1
 2005370:	c2 07 60 08 	ld  [ %i5 + 8 ], %g1
 2005374:	84 22 00 01 	sub  %o0, %g1, %g2
 2005378:	80 a0 a0 0f 	cmp  %g2, 0xf
 200537c:	04 bf ff e4 	ble  200530c <_malloc_trim_r+0x58>
 2005380:	84 10 a0 01 	or  %g2, 1, %g2
 2005384:	07 00 80 2a 	sethi  %hi(0x200a800), %g3
 2005388:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 200538c:	c6 00 e0 b8 	ld  [ %g3 + 0xb8 ], %g3
 2005390:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2005394:	90 22 00 03 	sub  %o0, %g3, %o0
 2005398:	10 bf ff dd 	b  200530c <_malloc_trim_r+0x58>
 200539c:	d0 20 60 d8 	st  %o0, [ %g1 + 0xd8 ]

020053a0 <_free_r>:
 20053a0:	9d e3 bf a0 	save  %sp, -96, %sp
 20053a4:	80 a6 60 00 	cmp  %i1, 0
 20053a8:	02 80 00 54 	be  20054f8 <_free_r+0x158>
 20053ac:	01 00 00 00 	nop 
 20053b0:	40 00 03 d2 	call  20062f8 <__malloc_lock>
 20053b4:	90 10 00 18 	mov  %i0, %o0
 20053b8:	86 06 7f f8 	add  %i1, -8, %g3
 20053bc:	f8 06 7f fc 	ld  [ %i1 + -4 ], %i4
 20053c0:	09 00 80 2a 	sethi  %hi(0x200a800), %g4
 20053c4:	82 0f 3f fe 	and  %i4, -2, %g1
 20053c8:	88 11 20 c0 	or  %g4, 0xc0, %g4
 20053cc:	84 00 c0 01 	add  %g3, %g1, %g2
 20053d0:	f6 01 20 08 	ld  [ %g4 + 8 ], %i3
 20053d4:	fa 00 a0 04 	ld  [ %g2 + 4 ], %i5
 20053d8:	80 a6 c0 02 	cmp  %i3, %g2
 20053dc:	02 80 00 58 	be  200553c <_free_r+0x19c>
 20053e0:	ba 0f 7f fc 	and  %i5, -4, %i5
 20053e4:	fa 20 a0 04 	st  %i5, [ %g2 + 4 ]
 20053e8:	80 8f 20 01 	btst  1, %i4
 20053ec:	12 80 00 0d 	bne  2005420 <_free_r+0x80>
 20053f0:	b6 10 20 00 	clr  %i3
 20053f4:	f8 06 7f f8 	ld  [ %i1 + -8 ], %i4
 20053f8:	b4 01 20 08 	add  %g4, 8, %i2
 20053fc:	86 20 c0 1c 	sub  %g3, %i4, %g3
 2005400:	82 00 40 1c 	add  %g1, %i4, %g1
 2005404:	f8 00 e0 08 	ld  [ %g3 + 8 ], %i4
 2005408:	80 a7 00 1a 	cmp  %i4, %i2
 200540c:	22 80 00 05 	be,a   2005420 <_free_r+0x80>
 2005410:	b6 10 20 01 	mov  1, %i3
 2005414:	f4 00 e0 0c 	ld  [ %g3 + 0xc ], %i2
 2005418:	f4 27 20 0c 	st  %i2, [ %i4 + 0xc ]
 200541c:	f8 26 a0 08 	st  %i4, [ %i2 + 8 ]
 2005420:	b8 00 80 1d 	add  %g2, %i5, %i4
 2005424:	f8 07 20 04 	ld  [ %i4 + 4 ], %i4
 2005428:	80 8f 20 01 	btst  1, %i4
 200542c:	32 80 00 0f 	bne,a   2005468 <_free_r+0xc8>
 2005430:	84 10 60 01 	or  %g1, 1, %g2
 2005434:	82 00 40 1d 	add  %g1, %i5, %g1
 2005438:	80 a6 e0 00 	cmp  %i3, 0
 200543c:	12 80 00 07 	bne  2005458 <_free_r+0xb8>
 2005440:	fa 00 a0 08 	ld  [ %g2 + 8 ], %i5
 2005444:	39 00 80 2a 	sethi  %hi(0x200a800), %i4
 2005448:	b8 17 20 c8 	or  %i4, 0xc8, %i4	! 200a8c8 <__malloc_av_+0x8>
 200544c:	80 a7 40 1c 	cmp  %i5, %i4
 2005450:	22 80 00 52 	be,a   2005598 <_free_r+0x1f8>
 2005454:	c6 21 20 14 	st  %g3, [ %g4 + 0x14 ]
 2005458:	c4 00 a0 0c 	ld  [ %g2 + 0xc ], %g2
 200545c:	c4 27 60 0c 	st  %g2, [ %i5 + 0xc ]
 2005460:	fa 20 a0 08 	st  %i5, [ %g2 + 8 ]
 2005464:	84 10 60 01 	or  %g1, 1, %g2
 2005468:	c2 20 c0 01 	st  %g1, [ %g3 + %g1 ]
 200546c:	80 a6 e0 00 	cmp  %i3, 0
 2005470:	12 80 00 20 	bne  20054f0 <_free_r+0x150>
 2005474:	c4 20 e0 04 	st  %g2, [ %g3 + 4 ]
 2005478:	80 a0 61 ff 	cmp  %g1, 0x1ff
 200547c:	28 80 00 21 	bleu,a   2005500 <_free_r+0x160>
 2005480:	83 30 60 03 	srl  %g1, 3, %g1
 2005484:	85 30 60 09 	srl  %g1, 9, %g2
 2005488:	80 a0 a0 04 	cmp  %g2, 4
 200548c:	18 80 00 4b 	bgu  20055b8 <_free_r+0x218>
 2005490:	80 a0 a0 14 	cmp  %g2, 0x14
 2005494:	b9 30 60 06 	srl  %g1, 6, %i4
 2005498:	b8 07 20 38 	add  %i4, 0x38, %i4
 200549c:	bb 2f 20 01 	sll  %i4, 1, %i5
 20054a0:	bb 2f 60 02 	sll  %i5, 2, %i5
 20054a4:	ba 01 00 1d 	add  %g4, %i5, %i5
 20054a8:	c4 07 60 08 	ld  [ %i5 + 8 ], %g2
 20054ac:	80 a0 80 1d 	cmp  %g2, %i5
 20054b0:	22 80 00 47 	be,a   20055cc <_free_r+0x22c>
 20054b4:	fa 01 20 04 	ld  [ %g4 + 4 ], %i5
 20054b8:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 20054bc:	88 09 3f fc 	and  %g4, -4, %g4
 20054c0:	80 a0 40 04 	cmp  %g1, %g4
 20054c4:	3a 80 00 07 	bcc,a   20054e0 <_free_r+0x140>
 20054c8:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
 20054cc:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 20054d0:	80 a7 40 02 	cmp  %i5, %g2
 20054d4:	32 bf ff fa 	bne,a   20054bc <_free_r+0x11c>
 20054d8:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 20054dc:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
 20054e0:	c2 20 e0 0c 	st  %g1, [ %g3 + 0xc ]
 20054e4:	c4 20 e0 08 	st  %g2, [ %g3 + 8 ]
 20054e8:	c6 20 60 08 	st  %g3, [ %g1 + 8 ]
 20054ec:	c6 20 a0 0c 	st  %g3, [ %g2 + 0xc ]
 20054f0:	40 00 03 84 	call  2006300 <__malloc_unlock>
 20054f4:	81 e8 00 00 	restore 
 20054f8:	81 c7 e0 08 	ret 
 20054fc:	81 e8 00 00 	restore 
 2005500:	85 28 60 03 	sll  %g1, 3, %g2
 2005504:	84 01 00 02 	add  %g4, %g2, %g2
 2005508:	fa 00 a0 08 	ld  [ %g2 + 8 ], %i5
 200550c:	c4 20 e0 0c 	st  %g2, [ %g3 + 0xc ]
 2005510:	fa 20 e0 08 	st  %i5, [ %g3 + 8 ]
 2005514:	f8 01 20 04 	ld  [ %g4 + 4 ], %i4
 2005518:	83 38 60 02 	sra  %g1, 2, %g1
 200551c:	c6 20 a0 08 	st  %g3, [ %g2 + 8 ]
 2005520:	c6 27 60 0c 	st  %g3, [ %i5 + 0xc ]
 2005524:	84 10 20 01 	mov  1, %g2
 2005528:	83 28 80 01 	sll  %g2, %g1, %g1
 200552c:	82 10 40 1c 	or  %g1, %i4, %g1
 2005530:	c2 21 20 04 	st  %g1, [ %g4 + 4 ]
 2005534:	40 00 03 73 	call  2006300 <__malloc_unlock>
 2005538:	81 e8 00 00 	restore 
 200553c:	80 8f 20 01 	btst  1, %i4
 2005540:	12 80 00 09 	bne  2005564 <_free_r+0x1c4>
 2005544:	82 07 40 01 	add  %i5, %g1, %g1
 2005548:	c4 06 7f f8 	ld  [ %i1 + -8 ], %g2
 200554c:	86 20 c0 02 	sub  %g3, %g2, %g3
 2005550:	82 00 40 02 	add  %g1, %g2, %g1
 2005554:	fa 00 e0 08 	ld  [ %g3 + 8 ], %i5
 2005558:	c4 00 e0 0c 	ld  [ %g3 + 0xc ], %g2
 200555c:	c4 27 60 0c 	st  %g2, [ %i5 + 0xc ]
 2005560:	fa 20 a0 08 	st  %i5, [ %g2 + 8 ]
 2005564:	84 10 60 01 	or  %g1, 1, %g2
 2005568:	c6 21 20 08 	st  %g3, [ %g4 + 8 ]
 200556c:	c4 20 e0 04 	st  %g2, [ %g3 + 4 ]
 2005570:	05 00 80 2a 	sethi  %hi(0x200a800), %g2
 2005574:	c4 00 a0 bc 	ld  [ %g2 + 0xbc ], %g2	! 200a8bc <__malloc_trim_threshold>
 2005578:	80 a0 40 02 	cmp  %g1, %g2
 200557c:	0a bf ff dd 	bcs  20054f0 <_free_r+0x150>
 2005580:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2005584:	90 10 00 18 	mov  %i0, %o0
 2005588:	7f ff ff 4b 	call  20052b4 <_malloc_trim_r>
 200558c:	d2 00 61 08 	ld  [ %g1 + 0x108 ], %o1
 2005590:	40 00 03 5c 	call  2006300 <__malloc_unlock>
 2005594:	81 e8 00 00 	restore 
 2005598:	c6 21 20 10 	st  %g3, [ %g4 + 0x10 ]
 200559c:	84 10 60 01 	or  %g1, 1, %g2
 20055a0:	fa 20 e0 0c 	st  %i5, [ %g3 + 0xc ]
 20055a4:	fa 20 e0 08 	st  %i5, [ %g3 + 8 ]
 20055a8:	c4 20 e0 04 	st  %g2, [ %g3 + 4 ]
 20055ac:	c2 20 c0 01 	st  %g1, [ %g3 + %g1 ]
 20055b0:	40 00 03 54 	call  2006300 <__malloc_unlock>
 20055b4:	81 e8 00 00 	restore 
 20055b8:	18 80 00 0c 	bgu  20055e8 <_free_r+0x248>
 20055bc:	80 a0 a0 54 	cmp  %g2, 0x54
 20055c0:	b8 00 a0 5b 	add  %g2, 0x5b, %i4
 20055c4:	10 bf ff b7 	b  20054a0 <_free_r+0x100>
 20055c8:	bb 2f 20 01 	sll  %i4, 1, %i5
 20055cc:	b9 3f 20 02 	sra  %i4, 2, %i4
 20055d0:	b6 10 20 01 	mov  1, %i3
 20055d4:	82 10 00 02 	mov  %g2, %g1
 20055d8:	b9 2e c0 1c 	sll  %i3, %i4, %i4
 20055dc:	ba 17 00 1d 	or  %i4, %i5, %i5
 20055e0:	10 bf ff c0 	b  20054e0 <_free_r+0x140>
 20055e4:	fa 21 20 04 	st  %i5, [ %g4 + 4 ]
 20055e8:	18 80 00 06 	bgu  2005600 <_free_r+0x260>
 20055ec:	80 a0 a1 54 	cmp  %g2, 0x154
 20055f0:	b9 30 60 0c 	srl  %g1, 0xc, %i4
 20055f4:	b8 07 20 6e 	add  %i4, 0x6e, %i4
 20055f8:	10 bf ff aa 	b  20054a0 <_free_r+0x100>
 20055fc:	bb 2f 20 01 	sll  %i4, 1, %i5
 2005600:	18 80 00 06 	bgu  2005618 <_free_r+0x278>
 2005604:	80 a0 a5 54 	cmp  %g2, 0x554
 2005608:	b9 30 60 0f 	srl  %g1, 0xf, %i4
 200560c:	b8 07 20 77 	add  %i4, 0x77, %i4
 2005610:	10 bf ff a4 	b  20054a0 <_free_r+0x100>
 2005614:	bb 2f 20 01 	sll  %i4, 1, %i5
 2005618:	38 80 00 06 	bgu,a   2005630 <_free_r+0x290>
 200561c:	ba 10 20 fc 	mov  0xfc, %i5
 2005620:	b9 30 60 12 	srl  %g1, 0x12, %i4
 2005624:	b8 07 20 7c 	add  %i4, 0x7c, %i4
 2005628:	10 bf ff 9e 	b  20054a0 <_free_r+0x100>
 200562c:	bb 2f 20 01 	sll  %i4, 1, %i5
 2005630:	10 bf ff 9c 	b  20054a0 <_free_r+0x100>
 2005634:	b8 10 20 7e 	mov  0x7e, %i4

02005638 <_fwalk>:
 2005638:	9d e3 bf a0 	save  %sp, -96, %sp
 200563c:	b6 86 22 e0 	addcc  %i0, 0x2e0, %i3
 2005640:	02 80 00 1e 	be  20056b8 <_fwalk+0x80>
 2005644:	b0 10 20 00 	clr  %i0
 2005648:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 200564c:	b8 87 3f ff 	addcc  %i4, -1, %i4
 2005650:	0c 80 00 16 	bneg  20056a8 <_fwalk+0x70>
 2005654:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005658:	c2 17 60 0c 	lduh  [ %i5 + 0xc ], %g1
 200565c:	83 28 60 10 	sll  %g1, 0x10, %g1
 2005660:	80 a0 60 00 	cmp  %g1, 0
 2005664:	22 80 00 0e 	be,a   200569c <_fwalk+0x64>
 2005668:	b8 07 3f ff 	add  %i4, -1, %i4
 200566c:	83 30 60 10 	srl  %g1, 0x10, %g1
 2005670:	80 a0 60 01 	cmp  %g1, 1
 2005674:	28 80 00 0a 	bleu,a   200569c <_fwalk+0x64>
 2005678:	b8 07 3f ff 	add  %i4, -1, %i4
 200567c:	c2 57 60 0e 	ldsh  [ %i5 + 0xe ], %g1
 2005680:	80 a0 7f ff 	cmp  %g1, -1
 2005684:	22 80 00 06 	be,a   200569c <_fwalk+0x64>
 2005688:	b8 07 3f ff 	add  %i4, -1, %i4
 200568c:	9f c6 40 00 	call  %i1
 2005690:	90 10 00 1d 	mov  %i5, %o0
 2005694:	b0 16 00 08 	or  %i0, %o0, %i0
 2005698:	b8 07 3f ff 	add  %i4, -1, %i4
 200569c:	80 a7 3f ff 	cmp  %i4, -1
 20056a0:	12 bf ff ee 	bne  2005658 <_fwalk+0x20>
 20056a4:	ba 07 60 68 	add  %i5, 0x68, %i5
 20056a8:	f6 06 c0 00 	ld  [ %i3 ], %i3
 20056ac:	80 a6 e0 00 	cmp  %i3, 0
 20056b0:	32 bf ff e7 	bne,a   200564c <_fwalk+0x14>
 20056b4:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 20056b8:	81 c7 e0 08 	ret 
 20056bc:	81 e8 00 00 	restore 

020056c0 <_fwalk_reent>:
 20056c0:	9d e3 bf a0 	save  %sp, -96, %sp
 20056c4:	b6 86 22 e0 	addcc  %i0, 0x2e0, %i3
 20056c8:	02 80 00 1e 	be  2005740 <_fwalk_reent+0x80>
 20056cc:	b4 10 20 00 	clr  %i2
 20056d0:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 20056d4:	b8 87 3f ff 	addcc  %i4, -1, %i4
 20056d8:	0c 80 00 16 	bneg  2005730 <_fwalk_reent+0x70>
 20056dc:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 20056e0:	c2 17 60 0c 	lduh  [ %i5 + 0xc ], %g1
 20056e4:	83 28 60 10 	sll  %g1, 0x10, %g1
 20056e8:	80 a0 60 00 	cmp  %g1, 0
 20056ec:	22 80 00 0e 	be,a   2005724 <_fwalk_reent+0x64>
 20056f0:	b8 07 3f ff 	add  %i4, -1, %i4
 20056f4:	83 30 60 10 	srl  %g1, 0x10, %g1
 20056f8:	80 a0 60 01 	cmp  %g1, 1
 20056fc:	28 80 00 0a 	bleu,a   2005724 <_fwalk_reent+0x64>
 2005700:	b8 07 3f ff 	add  %i4, -1, %i4
 2005704:	c2 57 60 0e 	ldsh  [ %i5 + 0xe ], %g1
 2005708:	80 a0 7f ff 	cmp  %g1, -1
 200570c:	02 80 00 05 	be  2005720 <_fwalk_reent+0x60>
 2005710:	92 10 00 1d 	mov  %i5, %o1
 2005714:	9f c6 40 00 	call  %i1
 2005718:	90 10 00 18 	mov  %i0, %o0
 200571c:	b4 16 80 08 	or  %i2, %o0, %i2
 2005720:	b8 07 3f ff 	add  %i4, -1, %i4
 2005724:	80 a7 3f ff 	cmp  %i4, -1
 2005728:	12 bf ff ee 	bne  20056e0 <_fwalk_reent+0x20>
 200572c:	ba 07 60 68 	add  %i5, 0x68, %i5
 2005730:	f6 06 c0 00 	ld  [ %i3 ], %i3
 2005734:	80 a6 e0 00 	cmp  %i3, 0
 2005738:	32 bf ff e7 	bne,a   20056d4 <_fwalk_reent+0x14>
 200573c:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 2005740:	81 c7 e0 08 	ret 
 2005744:	91 e8 00 1a 	restore  %g0, %i2, %o0

02005748 <_setlocale_r>:
 2005748:	9d e3 bf a0 	save  %sp, -96, %sp
 200574c:	80 a6 a0 00 	cmp  %i2, 0
 2005750:	02 80 00 19 	be  20057b4 <_setlocale_r+0x6c>
 2005754:	90 10 00 1a 	mov  %i2, %o0
 2005758:	13 00 80 28 	sethi  %hi(0x200a000), %o1
 200575c:	31 00 80 28 	sethi  %hi(0x200a000), %i0
 2005760:	40 00 07 2a 	call  2007408 <strcmp>
 2005764:	92 12 62 28 	or  %o1, 0x228, %o1
 2005768:	80 a2 20 00 	cmp  %o0, 0
 200576c:	12 80 00 04 	bne  200577c <_setlocale_r+0x34>
 2005770:	90 10 00 1a 	mov  %i2, %o0
 2005774:	81 c7 e0 08 	ret 
 2005778:	91 ee 21 30 	restore  %i0, 0x130, %o0
 200577c:	40 00 07 23 	call  2007408 <strcmp>
 2005780:	92 16 21 30 	or  %i0, 0x130, %o1
 2005784:	80 a2 20 00 	cmp  %o0, 0
 2005788:	02 bf ff fb 	be  2005774 <_setlocale_r+0x2c>
 200578c:	90 10 00 1a 	mov  %i2, %o0
 2005790:	13 00 80 28 	sethi  %hi(0x200a000), %o1
 2005794:	40 00 07 1d 	call  2007408 <strcmp>
 2005798:	92 12 61 68 	or  %o1, 0x168, %o1	! 200a168 <_global_impure_ptr+0x3c>
 200579c:	b0 16 21 30 	or  %i0, 0x130, %i0
 20057a0:	80 a0 00 08 	cmp  %g0, %o0
 20057a4:	82 40 3f ff 	addx  %g0, -1, %g1
 20057a8:	b0 0e 00 01 	and  %i0, %g1, %i0
 20057ac:	81 c7 e0 08 	ret 
 20057b0:	81 e8 00 00 	restore 
 20057b4:	31 00 80 28 	sethi  %hi(0x200a000), %i0
 20057b8:	81 c7 e0 08 	ret 
 20057bc:	91 ee 21 30 	restore  %i0, 0x130, %o0

020057c0 <__locale_charset>:
 20057c0:	11 00 80 2a 	sethi  %hi(0x200a800), %o0
 20057c4:	81 c3 e0 08 	retl 
 20057c8:	90 12 20 40 	or  %o0, 0x40, %o0	! 200a840 <lc_ctype_charset>

020057cc <__locale_mb_cur_max>:
 20057cc:	03 00 80 2a 	sethi  %hi(0x200a800), %g1
 20057d0:	81 c3 e0 08 	retl 
 20057d4:	d0 00 60 38 	ld  [ %g1 + 0x38 ], %o0	! 200a838 <__mb_cur_max>

020057d8 <__locale_msgcharset>:
 20057d8:	11 00 80 2a 	sethi  %hi(0x200a800), %o0
 20057dc:	81 c3 e0 08 	retl 
 20057e0:	90 12 20 60 	or  %o0, 0x60, %o0	! 200a860 <lc_message_charset>

020057e4 <__locale_cjk_lang>:
 20057e4:	81 c3 e0 08 	retl 
 20057e8:	90 10 20 00 	clr  %o0

020057ec <_localeconv_r>:
 20057ec:	11 00 80 2a 	sethi  %hi(0x200a800), %o0
 20057f0:	81 c3 e0 08 	retl 
 20057f4:	90 12 20 80 	or  %o0, 0x80, %o0	! 200a880 <lconv>

020057f8 <setlocale>:
 20057f8:	94 10 00 09 	mov  %o1, %o2
 20057fc:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2005800:	92 10 00 08 	mov  %o0, %o1
 2005804:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
 2005808:	82 13 c0 00 	mov  %o7, %g1
 200580c:	7f ff ff cf 	call  2005748 <_setlocale_r>
 2005810:	9e 10 40 00 	mov  %g1, %o7

02005814 <localeconv>:
 2005814:	11 00 80 2a 	sethi  %hi(0x200a800), %o0
 2005818:	81 c3 e0 08 	retl 
 200581c:	90 12 20 80 	or  %o0, 0x80, %o0	! 200a880 <lconv>

02005820 <__smakebuf_r>:
 2005820:	9d e3 bf 60 	save  %sp, -160, %sp
 2005824:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005828:	80 88 60 02 	btst  2, %g1
 200582c:	32 80 00 35 	bne,a   2005900 <__smakebuf_r+0xe0>
 2005830:	82 06 60 43 	add  %i1, 0x43, %g1
 2005834:	d2 56 60 0e 	ldsh  [ %i1 + 0xe ], %o1
 2005838:	80 a2 60 00 	cmp  %o1, 0
 200583c:	06 80 00 17 	bl  2005898 <__smakebuf_r+0x78>
 2005840:	90 10 00 18 	mov  %i0, %o0
 2005844:	40 00 0c 26 	call  20088dc <_fstat_r>
 2005848:	94 07 bf c0 	add  %fp, -64, %o2
 200584c:	80 a2 20 00 	cmp  %o0, 0
 2005850:	06 80 00 11 	bl  2005894 <__smakebuf_r+0x74>
 2005854:	c4 17 bf c8 	lduh  [ %fp + -56 ], %g2
 2005858:	03 00 00 3c 	sethi  %hi(0xf000), %g1
 200585c:	82 08 80 01 	and  %g2, %g1, %g1
 2005860:	05 00 00 08 	sethi  %hi(0x2000), %g2
 2005864:	84 18 40 02 	xor  %g1, %g2, %g2
 2005868:	80 a0 00 02 	cmp  %g0, %g2
 200586c:	05 00 00 20 	sethi  %hi(0x8000), %g2
 2005870:	b8 60 3f ff 	subx  %g0, -1, %i4
 2005874:	80 a0 40 02 	cmp  %g1, %g2
 2005878:	22 80 00 33 	be,a   2005944 <__smakebuf_r+0x124>
 200587c:	c4 06 60 28 	ld  [ %i1 + 0x28 ], %g2
 2005880:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005884:	ba 10 24 00 	mov  0x400, %i5
 2005888:	82 10 68 00 	or  %g1, 0x800, %g1
 200588c:	10 80 00 0b 	b  20058b8 <__smakebuf_r+0x98>
 2005890:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2005894:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005898:	84 08 60 80 	and  %g1, 0x80, %g2
 200589c:	b8 10 20 00 	clr  %i4
 20058a0:	82 10 68 00 	or  %g1, 0x800, %g1
 20058a4:	80 a0 00 02 	cmp  %g0, %g2
 20058a8:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 20058ac:	ba 40 3f ff 	addx  %g0, -1, %i5
 20058b0:	ba 0f 63 c0 	and  %i5, 0x3c0, %i5
 20058b4:	ba 07 60 40 	add  %i5, 0x40, %i5
 20058b8:	90 10 00 18 	mov  %i0, %o0
 20058bc:	40 00 00 39 	call  20059a0 <_malloc_r>
 20058c0:	92 10 00 1d 	mov  %i5, %o1
 20058c4:	80 a2 20 00 	cmp  %o0, 0
 20058c8:	02 80 00 2a 	be  2005970 <__smakebuf_r+0x150>
 20058cc:	03 00 80 14 	sethi  %hi(0x2005000), %g1
 20058d0:	82 10 60 0c 	or  %g1, 0xc, %g1	! 200500c <_cleanup_r>
 20058d4:	c2 26 20 3c 	st  %g1, [ %i0 + 0x3c ]
 20058d8:	d0 26 40 00 	st  %o0, [ %i1 ]
 20058dc:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20058e0:	d0 26 60 10 	st  %o0, [ %i1 + 0x10 ]
 20058e4:	82 10 60 80 	or  %g1, 0x80, %g1
 20058e8:	fa 26 60 14 	st  %i5, [ %i1 + 0x14 ]
 20058ec:	80 a7 20 00 	cmp  %i4, 0
 20058f0:	12 80 00 0a 	bne  2005918 <__smakebuf_r+0xf8>
 20058f4:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 20058f8:	81 c7 e0 08 	ret 
 20058fc:	81 e8 00 00 	restore 
 2005900:	c2 26 40 00 	st  %g1, [ %i1 ]
 2005904:	c2 26 60 10 	st  %g1, [ %i1 + 0x10 ]
 2005908:	82 10 20 01 	mov  1, %g1
 200590c:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
 2005910:	81 c7 e0 08 	ret 
 2005914:	81 e8 00 00 	restore 
 2005918:	90 10 00 18 	mov  %i0, %o0
 200591c:	40 00 0d 32 	call  2008de4 <_isatty_r>
 2005920:	d2 56 60 0e 	ldsh  [ %i1 + 0xe ], %o1
 2005924:	80 a2 20 00 	cmp  %o0, 0
 2005928:	02 80 00 1c 	be  2005998 <__smakebuf_r+0x178>
 200592c:	01 00 00 00 	nop 
 2005930:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005934:	82 10 60 01 	or  %g1, 1, %g1
 2005938:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 200593c:	81 c7 e0 08 	ret 
 2005940:	81 e8 00 00 	restore 
 2005944:	03 00 80 1c 	sethi  %hi(0x2007000), %g1
 2005948:	82 10 63 a0 	or  %g1, 0x3a0, %g1	! 20073a0 <__sseek>
 200594c:	80 a0 80 01 	cmp  %g2, %g1
 2005950:	12 bf ff cd 	bne  2005884 <__smakebuf_r+0x64>
 2005954:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005958:	84 10 24 00 	mov  0x400, %g2
 200595c:	82 10 64 00 	or  %g1, 0x400, %g1
 2005960:	c4 26 60 4c 	st  %g2, [ %i1 + 0x4c ]
 2005964:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2005968:	10 bf ff d4 	b  20058b8 <__smakebuf_r+0x98>
 200596c:	ba 10 24 00 	mov  0x400, %i5
 2005970:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2005974:	80 88 62 00 	btst  0x200, %g1
 2005978:	12 bf ff e0 	bne  20058f8 <__smakebuf_r+0xd8>
 200597c:	82 10 60 02 	or  %g1, 2, %g1
 2005980:	84 06 60 43 	add  %i1, 0x43, %g2
 2005984:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2005988:	c4 26 40 00 	st  %g2, [ %i1 ]
 200598c:	82 10 20 01 	mov  1, %g1
 2005990:	c4 26 60 10 	st  %g2, [ %i1 + 0x10 ]
 2005994:	c2 26 60 14 	st  %g1, [ %i1 + 0x14 ]
 2005998:	81 c7 e0 08 	ret 
 200599c:	81 e8 00 00 	restore 

020059a0 <_malloc_r>:
 20059a0:	9d e3 bf a0 	save  %sp, -96, %sp
 20059a4:	b8 06 60 0b 	add  %i1, 0xb, %i4
 20059a8:	80 a7 20 16 	cmp  %i4, 0x16
 20059ac:	08 80 00 24 	bleu  2005a3c <_malloc_r+0x9c>
 20059b0:	b4 10 00 18 	mov  %i0, %i2
 20059b4:	b8 0f 3f f8 	and  %i4, -8, %i4
 20059b8:	80 a7 00 19 	cmp  %i4, %i1
 20059bc:	0a 80 00 24 	bcs  2005a4c <_malloc_r+0xac>
 20059c0:	83 37 20 1f 	srl  %i4, 0x1f, %g1
 20059c4:	80 88 60 ff 	btst  0xff, %g1
 20059c8:	12 80 00 22 	bne  2005a50 <_malloc_r+0xb0>
 20059cc:	82 10 20 0c 	mov  0xc, %g1
 20059d0:	40 00 02 4a 	call  20062f8 <__malloc_lock>
 20059d4:	90 10 00 1a 	mov  %i2, %o0
 20059d8:	80 a7 21 f7 	cmp  %i4, 0x1f7
 20059dc:	38 80 00 20 	bgu,a   2005a5c <_malloc_r+0xbc>
 20059e0:	b3 37 20 09 	srl  %i4, 9, %i1
 20059e4:	37 00 80 2a 	sethi  %hi(0x200a800), %i3
 20059e8:	b6 16 e0 c0 	or  %i3, 0xc0, %i3	! 200a8c0 <__malloc_av_>
 20059ec:	82 06 c0 1c 	add  %i3, %i4, %g1
 20059f0:	fa 00 60 0c 	ld  [ %g1 + 0xc ], %i5
 20059f4:	80 a7 40 01 	cmp  %i5, %g1
 20059f8:	02 80 01 4f 	be  2005f34 <_malloc_r+0x594>
 20059fc:	b3 37 20 03 	srl  %i4, 3, %i1
 2005a00:	c4 07 60 0c 	ld  [ %i5 + 0xc ], %g2
 2005a04:	c2 07 60 04 	ld  [ %i5 + 4 ], %g1
 2005a08:	c6 07 60 08 	ld  [ %i5 + 8 ], %g3
 2005a0c:	82 08 7f fc 	and  %g1, -4, %g1
 2005a10:	c4 20 e0 0c 	st  %g2, [ %g3 + 0xc ]
 2005a14:	82 07 40 01 	add  %i5, %g1, %g1
 2005a18:	c6 20 a0 08 	st  %g3, [ %g2 + 8 ]
 2005a1c:	c4 00 60 04 	ld  [ %g1 + 4 ], %g2
 2005a20:	84 10 a0 01 	or  %g2, 1, %g2
 2005a24:	90 10 00 1a 	mov  %i2, %o0
 2005a28:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 2005a2c:	40 00 02 35 	call  2006300 <__malloc_unlock>
 2005a30:	b0 07 60 08 	add  %i5, 8, %i0
 2005a34:	81 c7 e0 08 	ret 
 2005a38:	81 e8 00 00 	restore 
 2005a3c:	b8 10 20 10 	mov  0x10, %i4
 2005a40:	80 a7 00 19 	cmp  %i4, %i1
 2005a44:	1a bf ff e0 	bcc  20059c4 <_malloc_r+0x24>
 2005a48:	82 10 20 00 	clr  %g1
 2005a4c:	82 10 20 0c 	mov  0xc, %g1
 2005a50:	c2 26 80 00 	st  %g1, [ %i2 ]
 2005a54:	81 c7 e0 08 	ret 
 2005a58:	91 e8 20 00 	restore  %g0, 0, %o0
 2005a5c:	80 a6 60 00 	cmp  %i1, 0
 2005a60:	22 80 00 76 	be,a   2005c38 <_malloc_r+0x298>
 2005a64:	b3 37 20 03 	srl  %i4, 3, %i1
 2005a68:	80 a6 60 04 	cmp  %i1, 4
 2005a6c:	18 80 00 f4 	bgu  2005e3c <_malloc_r+0x49c>
 2005a70:	80 a6 60 14 	cmp  %i1, 0x14
 2005a74:	b3 37 20 06 	srl  %i4, 6, %i1
 2005a78:	b2 06 60 38 	add  %i1, 0x38, %i1
 2005a7c:	87 2e 60 01 	sll  %i1, 1, %g3
 2005a80:	87 28 e0 02 	sll  %g3, 2, %g3
 2005a84:	37 00 80 2a 	sethi  %hi(0x200a800), %i3
 2005a88:	b6 16 e0 c0 	or  %i3, 0xc0, %i3	! 200a8c0 <__malloc_av_>
 2005a8c:	86 06 c0 03 	add  %i3, %g3, %g3
 2005a90:	fa 00 e0 0c 	ld  [ %g3 + 0xc ], %i5
 2005a94:	80 a0 c0 1d 	cmp  %g3, %i5
 2005a98:	32 80 00 0b 	bne,a   2005ac4 <_malloc_r+0x124>
 2005a9c:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005aa0:	10 80 00 10 	b  2005ae0 <_malloc_r+0x140>
 2005aa4:	b2 06 60 01 	inc  %i1
 2005aa8:	36 80 00 66 	bge,a   2005c40 <_malloc_r+0x2a0>
 2005aac:	c2 07 60 0c 	ld  [ %i5 + 0xc ], %g1
 2005ab0:	fa 07 60 0c 	ld  [ %i5 + 0xc ], %i5
 2005ab4:	80 a0 c0 1d 	cmp  %g3, %i5
 2005ab8:	22 80 00 0a 	be,a   2005ae0 <_malloc_r+0x140>
 2005abc:	b2 06 60 01 	inc  %i1
 2005ac0:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005ac4:	84 08 bf fc 	and  %g2, -4, %g2
 2005ac8:	82 20 80 1c 	sub  %g2, %i4, %g1
 2005acc:	80 a0 60 0f 	cmp  %g1, 0xf
 2005ad0:	04 bf ff f6 	ble  2005aa8 <_malloc_r+0x108>
 2005ad4:	80 a0 60 00 	cmp  %g1, 0
 2005ad8:	b2 06 7f ff 	add  %i1, -1, %i1
 2005adc:	b2 06 60 01 	inc  %i1
 2005ae0:	fa 06 e0 10 	ld  [ %i3 + 0x10 ], %i5
 2005ae4:	b0 06 e0 08 	add  %i3, 8, %i0
 2005ae8:	80 a7 40 18 	cmp  %i5, %i0
 2005aec:	22 80 00 1c 	be,a   2005b5c <_malloc_r+0x1bc>
 2005af0:	c4 06 e0 04 	ld  [ %i3 + 4 ], %g2
 2005af4:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005af8:	84 08 bf fc 	and  %g2, -4, %g2
 2005afc:	82 20 80 1c 	sub  %g2, %i4, %g1
 2005b00:	80 a0 60 0f 	cmp  %g1, 0xf
 2005b04:	14 80 00 3e 	bg  2005bfc <_malloc_r+0x25c>
 2005b08:	80 a0 60 00 	cmp  %g1, 0
 2005b0c:	f0 26 e0 14 	st  %i0, [ %i3 + 0x14 ]
 2005b10:	16 80 00 58 	bge  2005c70 <_malloc_r+0x2d0>
 2005b14:	f0 26 e0 10 	st  %i0, [ %i3 + 0x10 ]
 2005b18:	80 a0 a1 ff 	cmp  %g2, 0x1ff
 2005b1c:	18 80 00 d1 	bgu  2005e60 <_malloc_r+0x4c0>
 2005b20:	83 30 a0 09 	srl  %g2, 9, %g1
 2005b24:	85 30 a0 03 	srl  %g2, 3, %g2
 2005b28:	83 28 a0 03 	sll  %g2, 3, %g1
 2005b2c:	82 00 40 1b 	add  %g1, %i3, %g1
 2005b30:	c6 00 60 08 	ld  [ %g1 + 8 ], %g3
 2005b34:	c2 27 60 0c 	st  %g1, [ %i5 + 0xc ]
 2005b38:	c6 27 60 08 	st  %g3, [ %i5 + 8 ]
 2005b3c:	c8 06 e0 04 	ld  [ %i3 + 4 ], %g4
 2005b40:	85 38 a0 02 	sra  %g2, 2, %g2
 2005b44:	fa 20 60 08 	st  %i5, [ %g1 + 8 ]
 2005b48:	fa 20 e0 0c 	st  %i5, [ %g3 + 0xc ]
 2005b4c:	82 10 20 01 	mov  1, %g1
 2005b50:	85 28 40 02 	sll  %g1, %g2, %g2
 2005b54:	84 10 80 04 	or  %g2, %g4, %g2
 2005b58:	c4 26 e0 04 	st  %g2, [ %i3 + 4 ]
 2005b5c:	83 3e 60 02 	sra  %i1, 2, %g1
 2005b60:	86 10 20 01 	mov  1, %g3
 2005b64:	87 28 c0 01 	sll  %g3, %g1, %g3
 2005b68:	80 a0 c0 02 	cmp  %g3, %g2
 2005b6c:	38 80 00 4b 	bgu,a   2005c98 <_malloc_r+0x2f8>
 2005b70:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005b74:	80 88 80 03 	btst  %g2, %g3
 2005b78:	12 80 00 08 	bne  2005b98 <_malloc_r+0x1f8>
 2005b7c:	9b 2e 60 03 	sll  %i1, 3, %o5
 2005b80:	b2 0e 7f fc 	and  %i1, -4, %i1
 2005b84:	87 28 e0 01 	sll  %g3, 1, %g3
 2005b88:	80 88 80 03 	btst  %g2, %g3
 2005b8c:	02 bf ff fe 	be  2005b84 <_malloc_r+0x1e4>
 2005b90:	b2 06 60 04 	add  %i1, 4, %i1
 2005b94:	9b 2e 60 03 	sll  %i1, 3, %o5
 2005b98:	9e 10 00 19 	mov  %i1, %o7
 2005b9c:	9a 06 c0 0d 	add  %i3, %o5, %o5
 2005ba0:	88 10 00 0d 	mov  %o5, %g4
 2005ba4:	fa 01 20 0c 	ld  [ %g4 + 0xc ], %i5
 2005ba8:	80 a1 00 1d 	cmp  %g4, %i5
 2005bac:	32 80 00 0b 	bne,a   2005bd8 <_malloc_r+0x238>
 2005bb0:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005bb4:	10 80 00 c9 	b  2005ed8 <_malloc_r+0x538>
 2005bb8:	9e 03 e0 01 	inc  %o7
 2005bbc:	36 80 00 e5 	bge,a   2005f50 <_malloc_r+0x5b0>
 2005bc0:	84 07 40 02 	add  %i5, %g2, %g2
 2005bc4:	fa 07 60 0c 	ld  [ %i5 + 0xc ], %i5
 2005bc8:	80 a1 00 1d 	cmp  %g4, %i5
 2005bcc:	22 80 00 c3 	be,a   2005ed8 <_malloc_r+0x538>
 2005bd0:	9e 03 e0 01 	inc  %o7
 2005bd4:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005bd8:	84 08 bf fc 	and  %g2, -4, %g2
 2005bdc:	82 20 80 1c 	sub  %g2, %i4, %g1
 2005be0:	80 a0 60 0f 	cmp  %g1, 0xf
 2005be4:	04 bf ff f6 	ble  2005bbc <_malloc_r+0x21c>
 2005be8:	80 a0 60 00 	cmp  %g1, 0
 2005bec:	c4 07 60 0c 	ld  [ %i5 + 0xc ], %g2
 2005bf0:	c6 07 60 08 	ld  [ %i5 + 8 ], %g3
 2005bf4:	c4 20 e0 0c 	st  %g2, [ %g3 + 0xc ]
 2005bf8:	c6 20 a0 08 	st  %g3, [ %g2 + 8 ]
 2005bfc:	84 07 40 1c 	add  %i5, %i4, %g2
 2005c00:	c4 26 e0 14 	st  %g2, [ %i3 + 0x14 ]
 2005c04:	b8 17 20 01 	or  %i4, 1, %i4
 2005c08:	f8 27 60 04 	st  %i4, [ %i5 + 4 ]
 2005c0c:	c4 26 e0 10 	st  %g2, [ %i3 + 0x10 ]
 2005c10:	f0 20 a0 0c 	st  %i0, [ %g2 + 0xc ]
 2005c14:	f0 20 a0 08 	st  %i0, [ %g2 + 8 ]
 2005c18:	86 10 60 01 	or  %g1, 1, %g3
 2005c1c:	c6 20 a0 04 	st  %g3, [ %g2 + 4 ]
 2005c20:	c2 20 80 01 	st  %g1, [ %g2 + %g1 ]
 2005c24:	90 10 00 1a 	mov  %i2, %o0
 2005c28:	40 00 01 b6 	call  2006300 <__malloc_unlock>
 2005c2c:	b0 07 60 08 	add  %i5, 8, %i0
 2005c30:	81 c7 e0 08 	ret 
 2005c34:	81 e8 00 00 	restore 
 2005c38:	10 bf ff 92 	b  2005a80 <_malloc_r+0xe0>
 2005c3c:	87 2e 60 01 	sll  %i1, 1, %g3
 2005c40:	c6 07 60 08 	ld  [ %i5 + 8 ], %g3
 2005c44:	84 07 40 02 	add  %i5, %g2, %g2
 2005c48:	c2 20 e0 0c 	st  %g1, [ %g3 + 0xc ]
 2005c4c:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 2005c50:	c6 20 60 08 	st  %g3, [ %g1 + 8 ]
 2005c54:	82 11 20 01 	or  %g4, 1, %g1
 2005c58:	90 10 00 1a 	mov  %i2, %o0
 2005c5c:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
 2005c60:	40 00 01 a8 	call  2006300 <__malloc_unlock>
 2005c64:	b0 07 60 08 	add  %i5, 8, %i0
 2005c68:	81 c7 e0 08 	ret 
 2005c6c:	81 e8 00 00 	restore 
 2005c70:	84 07 40 02 	add  %i5, %g2, %g2
 2005c74:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
 2005c78:	82 10 60 01 	or  %g1, 1, %g1
 2005c7c:	90 10 00 1a 	mov  %i2, %o0
 2005c80:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
 2005c84:	40 00 01 9f 	call  2006300 <__malloc_unlock>
 2005c88:	b0 07 60 08 	add  %i5, 8, %i0
 2005c8c:	81 c7 e0 08 	ret 
 2005c90:	81 e8 00 00 	restore 
 2005c94:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005c98:	f0 07 60 04 	ld  [ %i5 + 4 ], %i0
 2005c9c:	b0 0e 3f fc 	and  %i0, -4, %i0
 2005ca0:	80 a7 00 18 	cmp  %i4, %i0
 2005ca4:	18 80 00 05 	bgu  2005cb8 <_malloc_r+0x318>
 2005ca8:	82 26 00 1c 	sub  %i0, %i4, %g1
 2005cac:	80 a0 60 0f 	cmp  %g1, 0xf
 2005cb0:	14 80 00 59 	bg  2005e14 <_malloc_r+0x474>
 2005cb4:	84 17 20 01 	or  %i4, 1, %g2
 2005cb8:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2005cbc:	27 00 80 2a 	sethi  %hi(0x200a800), %l3
 2005cc0:	e2 00 61 08 	ld  [ %g1 + 0x108 ], %l1
 2005cc4:	a4 07 40 18 	add  %i5, %i0, %l2
 2005cc8:	c2 04 e0 b8 	ld  [ %l3 + 0xb8 ], %g1
 2005ccc:	80 a0 7f ff 	cmp  %g1, -1
 2005cd0:	02 80 00 d9 	be  2006034 <_malloc_r+0x694>
 2005cd4:	a2 07 00 11 	add  %i4, %l1, %l1
 2005cd8:	03 00 00 04 	sethi  %hi(0x1000), %g1
 2005cdc:	82 10 60 0f 	or  %g1, 0xf, %g1	! 100f <_.tmp+0xfcf>
 2005ce0:	a2 04 40 01 	add  %l1, %g1, %l1
 2005ce4:	a2 0c 70 00 	and  %l1, -4096, %l1
 2005ce8:	90 10 00 1a 	mov  %i2, %o0
 2005cec:	40 00 05 77 	call  20072c8 <_sbrk_r>
 2005cf0:	92 10 00 11 	mov  %l1, %o1
 2005cf4:	80 a2 3f ff 	cmp  %o0, -1
 2005cf8:	02 80 00 a9 	be  2005f9c <_malloc_r+0x5fc>
 2005cfc:	b2 10 00 08 	mov  %o0, %i1
 2005d00:	80 a4 80 08 	cmp  %l2, %o0
 2005d04:	18 80 00 a4 	bgu  2005f94 <_malloc_r+0x5f4>
 2005d08:	80 a7 40 1b 	cmp  %i5, %i3
 2005d0c:	21 00 80 2b 	sethi  %hi(0x200ac00), %l0
 2005d10:	c2 04 20 d8 	ld  [ %l0 + 0xd8 ], %g1	! 200acd8 <__malloc_current_mallinfo>
 2005d14:	82 04 40 01 	add  %l1, %g1, %g1
 2005d18:	80 a4 80 19 	cmp  %l2, %i1
 2005d1c:	02 80 00 ce 	be  2006054 <_malloc_r+0x6b4>
 2005d20:	c2 24 20 d8 	st  %g1, [ %l0 + 0xd8 ]
 2005d24:	c4 04 e0 b8 	ld  [ %l3 + 0xb8 ], %g2
 2005d28:	80 a0 bf ff 	cmp  %g2, -1
 2005d2c:	02 80 00 dc 	be  200609c <_malloc_r+0x6fc>
 2005d30:	a4 26 40 12 	sub  %i1, %l2, %l2
 2005d34:	82 00 40 12 	add  %g1, %l2, %g1
 2005d38:	c2 24 20 d8 	st  %g1, [ %l0 + 0xd8 ]
 2005d3c:	84 8e 60 07 	andcc  %i1, 7, %g2
 2005d40:	02 80 00 06 	be  2005d58 <_malloc_r+0x3b8>
 2005d44:	03 00 00 04 	sethi  %hi(0x1000), %g1
 2005d48:	b2 26 40 02 	sub  %i1, %g2, %i1
 2005d4c:	82 10 60 08 	or  %g1, 8, %g1
 2005d50:	b2 06 60 08 	add  %i1, 8, %i1
 2005d54:	82 20 40 02 	sub  %g1, %g2, %g1
 2005d58:	a2 06 40 11 	add  %i1, %l1, %l1
 2005d5c:	90 10 00 1a 	mov  %i2, %o0
 2005d60:	a2 0c 6f ff 	and  %l1, 0xfff, %l1
 2005d64:	a2 20 40 11 	sub  %g1, %l1, %l1
 2005d68:	40 00 05 58 	call  20072c8 <_sbrk_r>
 2005d6c:	92 10 00 11 	mov  %l1, %o1
 2005d70:	80 a2 3f ff 	cmp  %o0, -1
 2005d74:	02 80 00 c2 	be  200607c <_malloc_r+0x6dc>
 2005d78:	84 10 20 01 	mov  1, %g2
 2005d7c:	84 22 00 19 	sub  %o0, %i1, %g2
 2005d80:	84 04 40 02 	add  %l1, %g2, %g2
 2005d84:	84 10 a0 01 	or  %g2, 1, %g2
 2005d88:	c2 04 20 d8 	ld  [ %l0 + 0xd8 ], %g1
 2005d8c:	f2 26 e0 08 	st  %i1, [ %i3 + 8 ]
 2005d90:	82 04 40 01 	add  %l1, %g1, %g1
 2005d94:	c4 26 60 04 	st  %g2, [ %i1 + 4 ]
 2005d98:	80 a7 40 1b 	cmp  %i5, %i3
 2005d9c:	02 80 00 10 	be  2005ddc <_malloc_r+0x43c>
 2005da0:	c2 24 20 d8 	st  %g1, [ %l0 + 0xd8 ]
 2005da4:	80 a6 20 0f 	cmp  %i0, 0xf
 2005da8:	08 80 00 98 	bleu  2006008 <_malloc_r+0x668>
 2005dac:	88 10 20 05 	mov  5, %g4
 2005db0:	c6 07 60 04 	ld  [ %i5 + 4 ], %g3
 2005db4:	84 06 3f f4 	add  %i0, -12, %g2
 2005db8:	86 08 e0 01 	and  %g3, 1, %g3
 2005dbc:	84 08 bf f8 	and  %g2, -8, %g2
 2005dc0:	86 10 80 03 	or  %g2, %g3, %g3
 2005dc4:	c6 27 60 04 	st  %g3, [ %i5 + 4 ]
 2005dc8:	86 07 40 02 	add  %i5, %g2, %g3
 2005dcc:	c8 20 e0 04 	st  %g4, [ %g3 + 4 ]
 2005dd0:	80 a0 a0 0f 	cmp  %g2, 0xf
 2005dd4:	18 80 00 ac 	bgu  2006084 <_malloc_r+0x6e4>
 2005dd8:	c8 20 e0 08 	st  %g4, [ %g3 + 8 ]
 2005ddc:	05 00 80 2b 	sethi  %hi(0x200ac00), %g2
 2005de0:	c6 00 a1 04 	ld  [ %g2 + 0x104 ], %g3	! 200ad04 <__malloc_max_sbrked_mem>
 2005de4:	80 a0 40 03 	cmp  %g1, %g3
 2005de8:	38 80 00 02 	bgu,a   2005df0 <_malloc_r+0x450>
 2005dec:	c2 20 a1 04 	st  %g1, [ %g2 + 0x104 ]
 2005df0:	05 00 80 2b 	sethi  %hi(0x200ac00), %g2
 2005df4:	c6 00 a1 00 	ld  [ %g2 + 0x100 ], %g3	! 200ad00 <__malloc_max_total_mem>
 2005df8:	80 a0 40 03 	cmp  %g1, %g3
 2005dfc:	08 80 00 03 	bleu  2005e08 <_malloc_r+0x468>
 2005e00:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005e04:	c2 20 a1 00 	st  %g1, [ %g2 + 0x100 ]
 2005e08:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005e0c:	10 80 00 67 	b  2005fa8 <_malloc_r+0x608>
 2005e10:	84 08 bf fc 	and  %g2, -4, %g2
 2005e14:	82 10 60 01 	or  %g1, 1, %g1
 2005e18:	c4 27 60 04 	st  %g2, [ %i5 + 4 ]
 2005e1c:	b8 07 40 1c 	add  %i5, %i4, %i4
 2005e20:	90 10 00 1a 	mov  %i2, %o0
 2005e24:	f8 26 e0 08 	st  %i4, [ %i3 + 8 ]
 2005e28:	c2 27 20 04 	st  %g1, [ %i4 + 4 ]
 2005e2c:	40 00 01 35 	call  2006300 <__malloc_unlock>
 2005e30:	b0 07 60 08 	add  %i5, 8, %i0
 2005e34:	81 c7 e0 08 	ret 
 2005e38:	81 e8 00 00 	restore 
 2005e3c:	28 80 00 51 	bleu,a   2005f80 <_malloc_r+0x5e0>
 2005e40:	b2 06 60 5b 	add  %i1, 0x5b, %i1
 2005e44:	80 a6 60 54 	cmp  %i1, 0x54
 2005e48:	18 80 00 63 	bgu  2005fd4 <_malloc_r+0x634>
 2005e4c:	80 a6 61 54 	cmp  %i1, 0x154
 2005e50:	b3 37 20 0c 	srl  %i4, 0xc, %i1
 2005e54:	b2 06 60 6e 	add  %i1, 0x6e, %i1
 2005e58:	10 bf ff 0a 	b  2005a80 <_malloc_r+0xe0>
 2005e5c:	87 2e 60 01 	sll  %i1, 1, %g3
 2005e60:	80 a0 60 04 	cmp  %g1, 4
 2005e64:	08 80 00 49 	bleu  2005f88 <_malloc_r+0x5e8>
 2005e68:	87 30 a0 06 	srl  %g2, 6, %g3
 2005e6c:	80 a0 60 14 	cmp  %g1, 0x14
 2005e70:	18 80 00 73 	bgu  200603c <_malloc_r+0x69c>
 2005e74:	80 a0 60 54 	cmp  %g1, 0x54
 2005e78:	86 00 60 5b 	add  %g1, 0x5b, %g3
 2005e7c:	89 28 e0 01 	sll  %g3, 1, %g4
 2005e80:	89 29 20 02 	sll  %g4, 2, %g4
 2005e84:	88 06 c0 04 	add  %i3, %g4, %g4
 2005e88:	c2 01 20 08 	ld  [ %g4 + 8 ], %g1
 2005e8c:	80 a0 40 04 	cmp  %g1, %g4
 2005e90:	22 80 00 57 	be,a   2005fec <_malloc_r+0x64c>
 2005e94:	c4 06 e0 04 	ld  [ %i3 + 4 ], %g2
 2005e98:	c6 00 60 04 	ld  [ %g1 + 4 ], %g3
 2005e9c:	86 08 ff fc 	and  %g3, -4, %g3
 2005ea0:	80 a0 80 03 	cmp  %g2, %g3
 2005ea4:	3a 80 00 07 	bcc,a   2005ec0 <_malloc_r+0x520>
 2005ea8:	c6 00 60 0c 	ld  [ %g1 + 0xc ], %g3
 2005eac:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1
 2005eb0:	80 a1 00 01 	cmp  %g4, %g1
 2005eb4:	32 bf ff fa 	bne,a   2005e9c <_malloc_r+0x4fc>
 2005eb8:	c6 00 60 04 	ld  [ %g1 + 4 ], %g3
 2005ebc:	c6 00 60 0c 	ld  [ %g1 + 0xc ], %g3
 2005ec0:	c4 06 e0 04 	ld  [ %i3 + 4 ], %g2
 2005ec4:	c6 27 60 0c 	st  %g3, [ %i5 + 0xc ]
 2005ec8:	c2 27 60 08 	st  %g1, [ %i5 + 8 ]
 2005ecc:	fa 20 e0 08 	st  %i5, [ %g3 + 8 ]
 2005ed0:	10 bf ff 23 	b  2005b5c <_malloc_r+0x1bc>
 2005ed4:	fa 20 60 0c 	st  %i5, [ %g1 + 0xc ]
 2005ed8:	80 8b e0 03 	btst  3, %o7
 2005edc:	12 bf ff 32 	bne  2005ba4 <_malloc_r+0x204>
 2005ee0:	88 01 20 08 	add  %g4, 8, %g4
 2005ee4:	80 8e 60 03 	btst  3, %i1
 2005ee8:	22 80 00 7c 	be,a   20060d8 <_malloc_r+0x738>
 2005eec:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 2005ef0:	82 03 7f f8 	add  %o5, -8, %g1
 2005ef4:	da 03 40 00 	ld  [ %o5 ], %o5
 2005ef8:	80 a3 40 01 	cmp  %o5, %g1
 2005efc:	02 bf ff fa 	be  2005ee4 <_malloc_r+0x544>
 2005f00:	b2 06 7f ff 	add  %i1, -1, %i1
 2005f04:	c2 06 e0 04 	ld  [ %i3 + 4 ], %g1
 2005f08:	87 28 e0 01 	sll  %g3, 1, %g3
 2005f0c:	80 a0 c0 01 	cmp  %g3, %g1
 2005f10:	18 bf ff 61 	bgu  2005c94 <_malloc_r+0x2f4>
 2005f14:	80 a0 e0 00 	cmp  %g3, 0
 2005f18:	22 bf ff 60 	be,a   2005c98 <_malloc_r+0x2f8>
 2005f1c:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005f20:	80 88 40 03 	btst  %g1, %g3
 2005f24:	22 80 00 70 	be,a   20060e4 <_malloc_r+0x744>
 2005f28:	87 28 e0 01 	sll  %g3, 1, %g3
 2005f2c:	10 bf ff 1a 	b  2005b94 <_malloc_r+0x1f4>
 2005f30:	b2 10 00 0f 	mov  %o7, %i1
 2005f34:	82 07 60 08 	add  %i5, 8, %g1
 2005f38:	fa 07 60 14 	ld  [ %i5 + 0x14 ], %i5
 2005f3c:	80 a0 40 1d 	cmp  %g1, %i5
 2005f40:	02 bf fe e8 	be  2005ae0 <_malloc_r+0x140>
 2005f44:	b2 06 60 02 	add  %i1, 2, %i1
 2005f48:	10 bf fe af 	b  2005a04 <_malloc_r+0x64>
 2005f4c:	c4 07 60 0c 	ld  [ %i5 + 0xc ], %g2
 2005f50:	c2 07 60 0c 	ld  [ %i5 + 0xc ], %g1
 2005f54:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 2005f58:	c6 07 60 08 	ld  [ %i5 + 8 ], %g3
 2005f5c:	88 11 20 01 	or  %g4, 1, %g4
 2005f60:	c2 20 e0 0c 	st  %g1, [ %g3 + 0xc ]
 2005f64:	c8 20 a0 04 	st  %g4, [ %g2 + 4 ]
 2005f68:	c6 20 60 08 	st  %g3, [ %g1 + 8 ]
 2005f6c:	90 10 00 1a 	mov  %i2, %o0
 2005f70:	40 00 00 e4 	call  2006300 <__malloc_unlock>
 2005f74:	b0 07 60 08 	add  %i5, 8, %i0
 2005f78:	81 c7 e0 08 	ret 
 2005f7c:	81 e8 00 00 	restore 
 2005f80:	10 bf fe c0 	b  2005a80 <_malloc_r+0xe0>
 2005f84:	87 2e 60 01 	sll  %i1, 1, %g3
 2005f88:	86 00 e0 38 	add  %g3, 0x38, %g3
 2005f8c:	10 bf ff bd 	b  2005e80 <_malloc_r+0x4e0>
 2005f90:	89 28 e0 01 	sll  %g3, 1, %g4
 2005f94:	02 bf ff 5f 	be  2005d10 <_malloc_r+0x370>
 2005f98:	21 00 80 2b 	sethi  %hi(0x200ac00), %l0
 2005f9c:	fa 06 e0 08 	ld  [ %i3 + 8 ], %i5
 2005fa0:	c4 07 60 04 	ld  [ %i5 + 4 ], %g2
 2005fa4:	84 08 bf fc 	and  %g2, -4, %g2
 2005fa8:	80 a7 00 02 	cmp  %i4, %g2
 2005fac:	18 80 00 05 	bgu  2005fc0 <_malloc_r+0x620>
 2005fb0:	82 20 80 1c 	sub  %g2, %i4, %g1
 2005fb4:	80 a0 60 0f 	cmp  %g1, 0xf
 2005fb8:	14 bf ff 97 	bg  2005e14 <_malloc_r+0x474>
 2005fbc:	84 17 20 01 	or  %i4, 1, %g2
 2005fc0:	90 10 00 1a 	mov  %i2, %o0
 2005fc4:	40 00 00 cf 	call  2006300 <__malloc_unlock>
 2005fc8:	b0 10 20 00 	clr  %i0
 2005fcc:	81 c7 e0 08 	ret 
 2005fd0:	81 e8 00 00 	restore 
 2005fd4:	18 80 00 12 	bgu  200601c <_malloc_r+0x67c>
 2005fd8:	80 a6 65 54 	cmp  %i1, 0x554
 2005fdc:	b3 37 20 0f 	srl  %i4, 0xf, %i1
 2005fe0:	b2 06 60 77 	add  %i1, 0x77, %i1
 2005fe4:	10 bf fe a7 	b  2005a80 <_malloc_r+0xe0>
 2005fe8:	87 2e 60 01 	sll  %i1, 1, %g3
 2005fec:	89 38 e0 02 	sra  %g3, 2, %g4
 2005ff0:	9e 10 20 01 	mov  1, %o7
 2005ff4:	86 10 00 01 	mov  %g1, %g3
 2005ff8:	89 2b c0 04 	sll  %o7, %g4, %g4
 2005ffc:	84 11 00 02 	or  %g4, %g2, %g2
 2006000:	10 bf ff b1 	b  2005ec4 <_malloc_r+0x524>
 2006004:	c4 26 e0 04 	st  %g2, [ %i3 + 4 ]
 2006008:	82 10 20 01 	mov  1, %g1
 200600c:	ba 10 00 19 	mov  %i1, %i5
 2006010:	c2 26 60 04 	st  %g1, [ %i1 + 4 ]
 2006014:	10 bf ff e5 	b  2005fa8 <_malloc_r+0x608>
 2006018:	84 10 20 00 	clr  %g2
 200601c:	38 80 00 16 	bgu,a   2006074 <_malloc_r+0x6d4>
 2006020:	86 10 20 fc 	mov  0xfc, %g3
 2006024:	b3 37 20 12 	srl  %i4, 0x12, %i1
 2006028:	b2 06 60 7c 	add  %i1, 0x7c, %i1
 200602c:	10 bf fe 95 	b  2005a80 <_malloc_r+0xe0>
 2006030:	87 2e 60 01 	sll  %i1, 1, %g3
 2006034:	10 bf ff 2d 	b  2005ce8 <_malloc_r+0x348>
 2006038:	a2 04 60 10 	add  %l1, 0x10, %l1
 200603c:	18 80 00 1b 	bgu  20060a8 <_malloc_r+0x708>
 2006040:	80 a0 61 54 	cmp  %g1, 0x154
 2006044:	87 30 a0 0c 	srl  %g2, 0xc, %g3
 2006048:	86 00 e0 6e 	add  %g3, 0x6e, %g3
 200604c:	10 bf ff 8d 	b  2005e80 <_malloc_r+0x4e0>
 2006050:	89 28 e0 01 	sll  %g3, 1, %g4
 2006054:	80 8c af ff 	btst  0xfff, %l2
 2006058:	12 bf ff 34 	bne  2005d28 <_malloc_r+0x388>
 200605c:	c4 04 e0 b8 	ld  [ %l3 + 0xb8 ], %g2
 2006060:	c4 06 e0 08 	ld  [ %i3 + 8 ], %g2
 2006064:	86 04 40 18 	add  %l1, %i0, %g3
 2006068:	86 10 e0 01 	or  %g3, 1, %g3
 200606c:	10 bf ff 5c 	b  2005ddc <_malloc_r+0x43c>
 2006070:	c6 20 a0 04 	st  %g3, [ %g2 + 4 ]
 2006074:	10 bf fe 83 	b  2005a80 <_malloc_r+0xe0>
 2006078:	b2 10 20 7e 	mov  0x7e, %i1
 200607c:	10 bf ff 43 	b  2005d88 <_malloc_r+0x3e8>
 2006080:	a2 10 20 00 	clr  %l1
 2006084:	90 10 00 1a 	mov  %i2, %o0
 2006088:	7f ff fc c6 	call  20053a0 <_free_r>
 200608c:	92 07 60 08 	add  %i5, 8, %o1
 2006090:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2006094:	10 bf ff 52 	b  2005ddc <_malloc_r+0x43c>
 2006098:	c2 00 60 d8 	ld  [ %g1 + 0xd8 ], %g1	! 200acd8 <__malloc_current_mallinfo>
 200609c:	03 00 80 2a 	sethi  %hi(0x200a800), %g1
 20060a0:	10 bf ff 27 	b  2005d3c <_malloc_r+0x39c>
 20060a4:	f2 20 60 b8 	st  %i1, [ %g1 + 0xb8 ]	! 200a8b8 <__malloc_sbrk_base>
 20060a8:	18 80 00 06 	bgu  20060c0 <_malloc_r+0x720>
 20060ac:	80 a0 65 54 	cmp  %g1, 0x554
 20060b0:	87 30 a0 0f 	srl  %g2, 0xf, %g3
 20060b4:	86 00 e0 77 	add  %g3, 0x77, %g3
 20060b8:	10 bf ff 72 	b  2005e80 <_malloc_r+0x4e0>
 20060bc:	89 28 e0 01 	sll  %g3, 1, %g4
 20060c0:	38 80 00 0b 	bgu,a   20060ec <_malloc_r+0x74c>
 20060c4:	88 10 20 fc 	mov  0xfc, %g4
 20060c8:	87 30 a0 12 	srl  %g2, 0x12, %g3
 20060cc:	86 00 e0 7c 	add  %g3, 0x7c, %g3
 20060d0:	10 bf ff 6c 	b  2005e80 <_malloc_r+0x4e0>
 20060d4:	89 28 e0 01 	sll  %g3, 1, %g4
 20060d8:	82 28 40 03 	andn  %g1, %g3, %g1
 20060dc:	10 bf ff 8b 	b  2005f08 <_malloc_r+0x568>
 20060e0:	c2 26 e0 04 	st  %g1, [ %i3 + 4 ]
 20060e4:	10 bf ff 8f 	b  2005f20 <_malloc_r+0x580>
 20060e8:	9e 03 e0 04 	add  %o7, 4, %o7
 20060ec:	10 bf ff 65 	b  2005e80 <_malloc_r+0x4e0>
 20060f0:	86 10 20 7e 	mov  0x7e, %g3

020060f4 <memchr>:
 20060f4:	80 8a 20 03 	btst  3, %o0
 20060f8:	02 80 00 41 	be  20061fc <memchr+0x108>
 20060fc:	9a 10 00 09 	mov  %o1, %o5
 2006100:	80 a2 a0 00 	cmp  %o2, 0
 2006104:	02 80 00 26 	be  200619c <memchr+0xa8>
 2006108:	82 02 bf ff 	add  %o2, -1, %g1
 200610c:	c4 0a 00 00 	ldub  [ %o0 ], %g2
 2006110:	86 0a 60 ff 	and  %o1, 0xff, %g3
 2006114:	80 a0 80 03 	cmp  %g2, %g3
 2006118:	32 80 00 0a 	bne,a   2006140 <memchr+0x4c>
 200611c:	90 02 20 01 	inc  %o0
 2006120:	30 80 00 20 	b,a   20061a0 <memchr+0xac>
 2006124:	22 80 00 1f 	be,a   20061a0 <memchr+0xac>
 2006128:	90 10 20 00 	clr  %o0
 200612c:	c4 0a 00 00 	ldub  [ %o0 ], %g2
 2006130:	80 a0 80 03 	cmp  %g2, %g3
 2006134:	02 80 00 1b 	be  20061a0 <memchr+0xac>
 2006138:	82 00 7f ff 	add  %g1, -1, %g1
 200613c:	90 02 20 01 	inc  %o0
 2006140:	80 8a 20 03 	btst  3, %o0
 2006144:	12 bf ff f8 	bne  2006124 <memchr+0x30>
 2006148:	80 a0 60 00 	cmp  %g1, 0
 200614c:	80 a0 60 03 	cmp  %g1, 3
 2006150:	38 80 00 16 	bgu,a   20061a8 <memchr+0xb4>
 2006154:	92 0a 60 ff 	and  %o1, 0xff, %o1
 2006158:	80 a0 60 00 	cmp  %g1, 0
 200615c:	02 80 00 10 	be  200619c <memchr+0xa8>
 2006160:	88 00 7f ff 	add  %g1, -1, %g4
 2006164:	c2 0a 00 00 	ldub  [ %o0 ], %g1
 2006168:	86 0b 60 ff 	and  %o5, 0xff, %g3
 200616c:	80 a0 40 03 	cmp  %g1, %g3
 2006170:	02 80 00 0c 	be  20061a0 <memchr+0xac>
 2006174:	82 10 20 00 	clr  %g1
 2006178:	10 80 00 07 	b  2006194 <memchr+0xa0>
 200617c:	80 a1 00 01 	cmp  %g4, %g1
 2006180:	c4 0a 00 00 	ldub  [ %o0 ], %g2
 2006184:	80 a0 80 03 	cmp  %g2, %g3
 2006188:	02 80 00 06 	be  20061a0 <memchr+0xac>
 200618c:	82 00 60 01 	inc  %g1
 2006190:	80 a1 00 01 	cmp  %g4, %g1
 2006194:	12 bf ff fb 	bne  2006180 <memchr+0x8c>
 2006198:	90 02 20 01 	inc  %o0
 200619c:	90 10 20 00 	clr  %o0
 20061a0:	81 c3 e0 08 	retl 
 20061a4:	01 00 00 00 	nop 
 20061a8:	17 3f bf bf 	sethi  %hi(0xfefefc00), %o3
 20061ac:	85 2a 60 08 	sll  %o1, 8, %g2
 20061b0:	09 20 20 20 	sethi  %hi(0x80808000), %g4
 20061b4:	84 10 80 09 	or  %g2, %o1, %g2
 20061b8:	96 12 e2 ff 	or  %o3, 0x2ff, %o3
 20061bc:	99 28 a0 10 	sll  %g2, 0x10, %o4
 20061c0:	88 11 20 80 	or  %g4, 0x80, %g4
 20061c4:	98 13 00 02 	or  %o4, %g2, %o4
 20061c8:	c4 02 00 00 	ld  [ %o0 ], %g2
 20061cc:	84 1b 00 02 	xor  %o4, %g2, %g2
 20061d0:	86 00 80 0b 	add  %g2, %o3, %g3
 20061d4:	84 28 c0 02 	andn  %g3, %g2, %g2
 20061d8:	80 88 80 04 	btst  %g2, %g4
 20061dc:	12 bf ff e0 	bne  200615c <memchr+0x68>
 20061e0:	80 a0 60 00 	cmp  %g1, 0
 20061e4:	82 00 7f fc 	add  %g1, -4, %g1
 20061e8:	80 a0 60 03 	cmp  %g1, 3
 20061ec:	18 bf ff f7 	bgu  20061c8 <memchr+0xd4>
 20061f0:	90 02 20 04 	add  %o0, 4, %o0
 20061f4:	10 bf ff da 	b  200615c <memchr+0x68>
 20061f8:	80 a0 60 00 	cmp  %g1, 0
 20061fc:	10 bf ff d4 	b  200614c <memchr+0x58>
 2006200:	82 10 00 0a 	mov  %o2, %g1

02006204 <memcpy>:
 2006204:	80 a2 a0 0f 	cmp  %o2, 0xf
 2006208:	08 80 00 35 	bleu  20062dc <memcpy+0xd8>
 200620c:	86 10 00 08 	mov  %o0, %g3
 2006210:	82 12 40 08 	or  %o1, %o0, %g1
 2006214:	80 88 60 03 	btst  3, %g1
 2006218:	12 80 00 28 	bne  20062b8 <memcpy+0xb4>
 200621c:	84 10 00 09 	mov  %o1, %g2
 2006220:	82 10 00 08 	mov  %o0, %g1
 2006224:	86 10 00 0a 	mov  %o2, %g3
 2006228:	c8 00 80 00 	ld  [ %g2 ], %g4
 200622c:	c8 20 40 00 	st  %g4, [ %g1 ]
 2006230:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 2006234:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 2006238:	c8 00 a0 08 	ld  [ %g2 + 8 ], %g4
 200623c:	c8 20 60 08 	st  %g4, [ %g1 + 8 ]
 2006240:	c8 00 a0 0c 	ld  [ %g2 + 0xc ], %g4
 2006244:	c8 20 60 0c 	st  %g4, [ %g1 + 0xc ]
 2006248:	86 00 ff f0 	add  %g3, -16, %g3
 200624c:	82 00 60 10 	add  %g1, 0x10, %g1
 2006250:	80 a0 e0 0f 	cmp  %g3, 0xf
 2006254:	18 bf ff f5 	bgu  2006228 <memcpy+0x24>
 2006258:	84 00 a0 10 	add  %g2, 0x10, %g2
 200625c:	84 02 bf f0 	add  %o2, -16, %g2
 2006260:	82 0a a0 0f 	and  %o2, 0xf, %g1
 2006264:	84 08 bf f0 	and  %g2, -16, %g2
 2006268:	80 a0 60 03 	cmp  %g1, 3
 200626c:	84 00 a0 10 	add  %g2, 0x10, %g2
 2006270:	86 02 00 02 	add  %o0, %g2, %g3
 2006274:	08 80 00 1f 	bleu  20062f0 <memcpy+0xec>
 2006278:	92 02 40 02 	add  %o1, %g2, %o1
 200627c:	88 00 7f fc 	add  %g1, -4, %g4
 2006280:	82 10 20 00 	clr  %g1
 2006284:	88 09 3f fc 	and  %g4, -4, %g4
 2006288:	88 01 20 04 	add  %g4, 4, %g4
 200628c:	c4 02 40 01 	ld  [ %o1 + %g1 ], %g2
 2006290:	c4 20 c0 01 	st  %g2, [ %g3 + %g1 ]
 2006294:	82 00 60 04 	add  %g1, 4, %g1
 2006298:	80 a0 40 04 	cmp  %g1, %g4
 200629c:	32 bf ff fd 	bne,a   2006290 <memcpy+0x8c>
 20062a0:	c4 02 40 01 	ld  [ %o1 + %g1 ], %g2
 20062a4:	94 0a a0 03 	and  %o2, 3, %o2
 20062a8:	92 02 40 01 	add  %o1, %g1, %o1
 20062ac:	80 a2 a0 00 	cmp  %o2, 0
 20062b0:	02 80 00 09 	be  20062d4 <memcpy+0xd0>
 20062b4:	86 00 c0 01 	add  %g3, %g1, %g3
 20062b8:	82 10 20 00 	clr  %g1
 20062bc:	c4 0a 40 01 	ldub  [ %o1 + %g1 ], %g2
 20062c0:	c4 28 c0 01 	stb  %g2, [ %g3 + %g1 ]
 20062c4:	82 00 60 01 	inc  %g1
 20062c8:	80 a0 40 0a 	cmp  %g1, %o2
 20062cc:	32 bf ff fd 	bne,a   20062c0 <memcpy+0xbc>
 20062d0:	c4 0a 40 01 	ldub  [ %o1 + %g1 ], %g2
 20062d4:	81 c3 e0 08 	retl 
 20062d8:	01 00 00 00 	nop 
 20062dc:	80 a2 a0 00 	cmp  %o2, 0
 20062e0:	12 bf ff f7 	bne  20062bc <memcpy+0xb8>
 20062e4:	82 10 20 00 	clr  %g1
 20062e8:	81 c3 e0 08 	retl 
 20062ec:	01 00 00 00 	nop 
 20062f0:	10 bf ff fb 	b  20062dc <memcpy+0xd8>
 20062f4:	94 10 00 01 	mov  %g1, %o2

020062f8 <__malloc_lock>:
 20062f8:	81 c3 e0 08 	retl 
 20062fc:	01 00 00 00 	nop 

02006300 <__malloc_unlock>:
 2006300:	81 c3 e0 08 	retl 
 2006304:	01 00 00 00 	nop 

02006308 <_Balloc>:
 2006308:	9d e3 bf a0 	save  %sp, -96, %sp
 200630c:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 2006310:	80 a0 a0 00 	cmp  %g2, 0
 2006314:	02 80 00 0d 	be  2006348 <_Balloc+0x40>
 2006318:	90 10 00 18 	mov  %i0, %o0
 200631c:	87 2e 60 02 	sll  %i1, 2, %g3
 2006320:	d0 00 80 03 	ld  [ %g2 + %g3 ], %o0
 2006324:	80 a2 20 00 	cmp  %o0, 0
 2006328:	22 80 00 11 	be,a   200636c <_Balloc+0x64>
 200632c:	90 10 00 18 	mov  %i0, %o0
 2006330:	c8 02 00 00 	ld  [ %o0 ], %g4
 2006334:	c8 20 80 03 	st  %g4, [ %g2 + %g3 ]
 2006338:	c0 22 20 10 	clr  [ %o0 + 0x10 ]
 200633c:	c0 22 20 0c 	clr  [ %o0 + 0xc ]
 2006340:	81 c7 e0 08 	ret 
 2006344:	91 e8 00 08 	restore  %g0, %o0, %o0
 2006348:	92 10 20 04 	mov  4, %o1
 200634c:	40 00 08 81 	call  2008550 <_calloc_r>
 2006350:	94 10 20 21 	mov  0x21, %o2
 2006354:	d0 26 20 4c 	st  %o0, [ %i0 + 0x4c ]
 2006358:	80 a2 20 00 	cmp  %o0, 0
 200635c:	12 bf ff f0 	bne  200631c <_Balloc+0x14>
 2006360:	84 10 00 08 	mov  %o0, %g2
 2006364:	10 bf ff f7 	b  2006340 <_Balloc+0x38>
 2006368:	90 10 20 00 	clr  %o0
 200636c:	ba 10 20 01 	mov  1, %i5
 2006370:	92 10 20 01 	mov  1, %o1
 2006374:	bb 2f 40 19 	sll  %i5, %i1, %i5
 2006378:	94 07 60 05 	add  %i5, 5, %o2
 200637c:	40 00 08 75 	call  2008550 <_calloc_r>
 2006380:	95 2a a0 02 	sll  %o2, 2, %o2
 2006384:	80 a2 20 00 	cmp  %o0, 0
 2006388:	22 bf ff ee 	be,a   2006340 <_Balloc+0x38>
 200638c:	90 10 20 00 	clr  %o0
 2006390:	f2 22 20 04 	st  %i1, [ %o0 + 4 ]
 2006394:	10 bf ff e9 	b  2006338 <_Balloc+0x30>
 2006398:	fa 22 20 08 	st  %i5, [ %o0 + 8 ]

0200639c <_Bfree>:
 200639c:	80 a2 60 00 	cmp  %o1, 0
 20063a0:	02 80 00 08 	be  20063c0 <_Bfree+0x24>
 20063a4:	01 00 00 00 	nop 
 20063a8:	c4 02 20 4c 	ld  [ %o0 + 0x4c ], %g2
 20063ac:	c2 02 60 04 	ld  [ %o1 + 4 ], %g1
 20063b0:	83 28 60 02 	sll  %g1, 2, %g1
 20063b4:	c6 00 80 01 	ld  [ %g2 + %g1 ], %g3
 20063b8:	c6 22 40 00 	st  %g3, [ %o1 ]
 20063bc:	d2 20 80 01 	st  %o1, [ %g2 + %g1 ]
 20063c0:	81 c3 e0 08 	retl 
 20063c4:	01 00 00 00 	nop 

020063c8 <__multadd>:
 20063c8:	9d e3 bf a0 	save  %sp, -96, %sp
 20063cc:	23 00 00 3f 	sethi  %hi(0xfc00), %l1
 20063d0:	e4 06 60 10 	ld  [ %i1 + 0x10 ], %l2
 20063d4:	ba 06 60 14 	add  %i1, 0x14, %i5
 20063d8:	b8 10 20 00 	clr  %i4
 20063dc:	a2 14 63 ff 	or  %l1, 0x3ff, %l1
 20063e0:	e0 07 40 00 	ld  [ %i5 ], %l0
 20063e4:	92 10 00 1a 	mov  %i2, %o1
 20063e8:	40 00 0d af 	call  2009aa4 <.umul>
 20063ec:	90 0c 00 11 	and  %l0, %l1, %o0
 20063f0:	92 10 00 1a 	mov  %i2, %o1
 20063f4:	b6 02 00 1b 	add  %o0, %i3, %i3
 20063f8:	40 00 0d ab 	call  2009aa4 <.umul>
 20063fc:	91 34 20 10 	srl  %l0, 0x10, %o0
 2006400:	a1 36 e0 10 	srl  %i3, 0x10, %l0
 2006404:	b6 0e c0 11 	and  %i3, %l1, %i3
 2006408:	90 04 00 08 	add  %l0, %o0, %o0
 200640c:	83 2a 20 10 	sll  %o0, 0x10, %g1
 2006410:	b6 00 40 1b 	add  %g1, %i3, %i3
 2006414:	f6 27 40 00 	st  %i3, [ %i5 ]
 2006418:	b8 07 20 01 	inc  %i4
 200641c:	b7 32 20 10 	srl  %o0, 0x10, %i3
 2006420:	80 a4 80 1c 	cmp  %l2, %i4
 2006424:	14 bf ff ef 	bg  20063e0 <__multadd+0x18>
 2006428:	ba 07 60 04 	add  %i5, 4, %i5
 200642c:	80 a6 e0 00 	cmp  %i3, 0
 2006430:	02 80 00 0c 	be  2006460 <__multadd+0x98>
 2006434:	01 00 00 00 	nop 
 2006438:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 200643c:	80 a4 80 01 	cmp  %l2, %g1
 2006440:	36 80 00 0a 	bge,a   2006468 <__multadd+0xa0>
 2006444:	d2 06 60 04 	ld  [ %i1 + 4 ], %o1
 2006448:	82 04 a0 04 	add  %l2, 4, %g1
 200644c:	a4 04 a0 01 	inc  %l2
 2006450:	83 28 60 02 	sll  %g1, 2, %g1
 2006454:	e4 26 60 10 	st  %l2, [ %i1 + 0x10 ]
 2006458:	82 06 40 01 	add  %i1, %g1, %g1
 200645c:	f6 20 60 04 	st  %i3, [ %g1 + 4 ]
 2006460:	81 c7 e0 08 	ret 
 2006464:	91 e8 00 19 	restore  %g0, %i1, %o0
 2006468:	90 10 00 18 	mov  %i0, %o0
 200646c:	7f ff ff a7 	call  2006308 <_Balloc>
 2006470:	92 02 60 01 	inc  %o1
 2006474:	d4 06 60 10 	ld  [ %i1 + 0x10 ], %o2
 2006478:	ba 10 00 08 	mov  %o0, %i5
 200647c:	92 06 60 0c 	add  %i1, 0xc, %o1
 2006480:	94 02 a0 02 	add  %o2, 2, %o2
 2006484:	90 02 20 0c 	add  %o0, 0xc, %o0
 2006488:	7f ff ff 5f 	call  2006204 <memcpy>
 200648c:	95 2a a0 02 	sll  %o2, 2, %o2
 2006490:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 2006494:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 2006498:	83 28 60 02 	sll  %g1, 2, %g1
 200649c:	c6 00 80 01 	ld  [ %g2 + %g1 ], %g3
 20064a0:	c6 26 40 00 	st  %g3, [ %i1 ]
 20064a4:	f2 20 80 01 	st  %i1, [ %g2 + %g1 ]
 20064a8:	10 bf ff e8 	b  2006448 <__multadd+0x80>
 20064ac:	b2 10 00 1d 	mov  %i5, %i1

020064b0 <__s2b>:
 20064b0:	9d e3 bf a0 	save  %sp, -96, %sp
 20064b4:	92 10 20 09 	mov  9, %o1
 20064b8:	40 00 0d b7 	call  2009b94 <.div>
 20064bc:	90 06 e0 08 	add  %i3, 8, %o0
 20064c0:	80 a2 20 01 	cmp  %o0, 1
 20064c4:	04 80 00 2f 	ble  2006580 <__s2b+0xd0>
 20064c8:	82 10 20 01 	mov  1, %g1
 20064cc:	92 10 20 00 	clr  %o1
 20064d0:	83 28 60 01 	sll  %g1, 1, %g1
 20064d4:	80 a2 00 01 	cmp  %o0, %g1
 20064d8:	14 bf ff fe 	bg  20064d0 <__s2b+0x20>
 20064dc:	92 02 60 01 	inc  %o1
 20064e0:	7f ff ff 8a 	call  2006308 <_Balloc>
 20064e4:	90 10 00 18 	mov  %i0, %o0
 20064e8:	82 10 20 01 	mov  1, %g1
 20064ec:	f8 22 20 14 	st  %i4, [ %o0 + 0x14 ]
 20064f0:	c2 22 20 10 	st  %g1, [ %o0 + 0x10 ]
 20064f4:	80 a6 a0 09 	cmp  %i2, 9
 20064f8:	04 80 00 1f 	ble  2006574 <__s2b+0xc4>
 20064fc:	92 10 00 08 	mov  %o0, %o1
 2006500:	b8 06 60 09 	add  %i1, 9, %i4
 2006504:	b2 06 40 1a 	add  %i1, %i2, %i1
 2006508:	ba 10 00 1c 	mov  %i4, %i5
 200650c:	d6 4f 40 00 	ldsb  [ %i5 ], %o3
 2006510:	90 10 00 18 	mov  %i0, %o0
 2006514:	94 10 20 0a 	mov  0xa, %o2
 2006518:	7f ff ff ac 	call  20063c8 <__multadd>
 200651c:	96 02 ff d0 	add  %o3, -48, %o3
 2006520:	ba 07 60 01 	inc  %i5
 2006524:	80 a7 40 19 	cmp  %i5, %i1
 2006528:	12 bf ff f9 	bne  200650c <__s2b+0x5c>
 200652c:	92 10 00 08 	mov  %o0, %o1
 2006530:	b8 07 00 1a 	add  %i4, %i2, %i4
 2006534:	b2 07 3f f8 	add  %i4, -8, %i1
 2006538:	80 a6 c0 1a 	cmp  %i3, %i2
 200653c:	04 80 00 0c 	ble  200656c <__s2b+0xbc>
 2006540:	b4 26 c0 1a 	sub  %i3, %i2, %i2
 2006544:	ba 06 40 1a 	add  %i1, %i2, %i5
 2006548:	d6 4e 40 00 	ldsb  [ %i1 ], %o3
 200654c:	90 10 00 18 	mov  %i0, %o0
 2006550:	94 10 20 0a 	mov  0xa, %o2
 2006554:	7f ff ff 9d 	call  20063c8 <__multadd>
 2006558:	96 02 ff d0 	add  %o3, -48, %o3
 200655c:	b2 06 60 01 	inc  %i1
 2006560:	80 a6 40 1d 	cmp  %i1, %i5
 2006564:	12 bf ff f9 	bne  2006548 <__s2b+0x98>
 2006568:	92 10 00 08 	mov  %o0, %o1
 200656c:	81 c7 e0 08 	ret 
 2006570:	91 e8 00 09 	restore  %g0, %o1, %o0
 2006574:	b2 06 60 0a 	add  %i1, 0xa, %i1
 2006578:	10 bf ff f0 	b  2006538 <__s2b+0x88>
 200657c:	b4 10 20 09 	mov  9, %i2
 2006580:	10 bf ff d8 	b  20064e0 <__s2b+0x30>
 2006584:	92 10 20 00 	clr  %o1

02006588 <__hi0bits>:
 2006588:	82 10 00 08 	mov  %o0, %g1
 200658c:	05 3f ff c0 	sethi  %hi(0xffff0000), %g2
 2006590:	80 88 40 02 	btst  %g1, %g2
 2006594:	12 80 00 04 	bne  20065a4 <__hi0bits+0x1c>
 2006598:	90 10 20 00 	clr  %o0
 200659c:	83 28 60 10 	sll  %g1, 0x10, %g1
 20065a0:	90 10 20 10 	mov  0x10, %o0
 20065a4:	05 3f c0 00 	sethi  %hi(0xff000000), %g2
 20065a8:	80 88 40 02 	btst  %g1, %g2
 20065ac:	12 80 00 04 	bne  20065bc <__hi0bits+0x34>
 20065b0:	05 3c 00 00 	sethi  %hi(0xf0000000), %g2
 20065b4:	90 02 20 08 	add  %o0, 8, %o0
 20065b8:	83 28 60 08 	sll  %g1, 8, %g1
 20065bc:	80 88 40 02 	btst  %g1, %g2
 20065c0:	12 80 00 04 	bne  20065d0 <__hi0bits+0x48>
 20065c4:	05 30 00 00 	sethi  %hi(0xc0000000), %g2
 20065c8:	90 02 20 04 	add  %o0, 4, %o0
 20065cc:	83 28 60 04 	sll  %g1, 4, %g1
 20065d0:	80 88 40 02 	btst  %g1, %g2
 20065d4:	12 80 00 05 	bne  20065e8 <__hi0bits+0x60>
 20065d8:	80 a0 60 00 	cmp  %g1, 0
 20065dc:	90 02 20 02 	add  %o0, 2, %o0
 20065e0:	83 28 60 02 	sll  %g1, 2, %g1
 20065e4:	80 a0 60 00 	cmp  %g1, 0
 20065e8:	06 80 00 06 	bl  2006600 <__hi0bits+0x78>
 20065ec:	05 10 00 00 	sethi  %hi(0x40000000), %g2
 20065f0:	80 88 40 02 	btst  %g1, %g2
 20065f4:	12 80 00 05 	bne  2006608 <__hi0bits+0x80>
 20065f8:	01 00 00 00 	nop 
 20065fc:	90 10 20 20 	mov  0x20, %o0	! 20 <_.d4+0x4>
 2006600:	81 c3 e0 08 	retl 
 2006604:	01 00 00 00 	nop 
 2006608:	81 c3 e0 08 	retl 
 200660c:	90 02 20 01 	inc  %o0

02006610 <__lo0bits>:
 2006610:	c2 02 00 00 	ld  [ %o0 ], %g1
 2006614:	80 88 60 07 	btst  7, %g1
 2006618:	02 80 00 0b 	be  2006644 <__lo0bits+0x34>
 200661c:	84 10 20 00 	clr  %g2
 2006620:	80 88 60 01 	btst  1, %g1
 2006624:	12 80 00 06 	bne  200663c <__lo0bits+0x2c>
 2006628:	80 88 60 02 	btst  2, %g1
 200662c:	12 80 00 29 	bne  20066d0 <__lo0bits+0xc0>
 2006630:	84 10 20 02 	mov  2, %g2
 2006634:	83 30 60 02 	srl  %g1, 2, %g1
 2006638:	c2 22 00 00 	st  %g1, [ %o0 ]
 200663c:	81 c3 e0 08 	retl 
 2006640:	90 10 00 02 	mov  %g2, %o0
 2006644:	07 00 00 3f 	sethi  %hi(0xfc00), %g3
 2006648:	86 10 e3 ff 	or  %g3, 0x3ff, %g3	! ffff <_.tmp+0xffbf>
 200664c:	80 88 40 03 	btst  %g1, %g3
 2006650:	12 80 00 05 	bne  2006664 <__lo0bits+0x54>
 2006654:	80 88 60 ff 	btst  0xff, %g1
 2006658:	83 30 60 10 	srl  %g1, 0x10, %g1
 200665c:	84 10 20 10 	mov  0x10, %g2
 2006660:	80 88 60 ff 	btst  0xff, %g1
 2006664:	12 80 00 05 	bne  2006678 <__lo0bits+0x68>
 2006668:	80 88 60 0f 	btst  0xf, %g1
 200666c:	84 00 a0 08 	add  %g2, 8, %g2
 2006670:	83 30 60 08 	srl  %g1, 8, %g1
 2006674:	80 88 60 0f 	btst  0xf, %g1
 2006678:	12 80 00 05 	bne  200668c <__lo0bits+0x7c>
 200667c:	80 88 60 03 	btst  3, %g1
 2006680:	84 00 a0 04 	add  %g2, 4, %g2
 2006684:	83 30 60 04 	srl  %g1, 4, %g1
 2006688:	80 88 60 03 	btst  3, %g1
 200668c:	12 80 00 05 	bne  20066a0 <__lo0bits+0x90>
 2006690:	80 88 60 01 	btst  1, %g1
 2006694:	84 00 a0 02 	add  %g2, 2, %g2
 2006698:	83 30 60 02 	srl  %g1, 2, %g1
 200669c:	80 88 60 01 	btst  1, %g1
 20066a0:	32 80 00 0a 	bne,a   20066c8 <__lo0bits+0xb8>
 20066a4:	c2 22 00 00 	st  %g1, [ %o0 ]
 20066a8:	83 30 60 01 	srl  %g1, 1, %g1
 20066ac:	80 a0 60 00 	cmp  %g1, 0
 20066b0:	12 80 00 05 	bne  20066c4 <__lo0bits+0xb4>
 20066b4:	84 00 a0 01 	inc  %g2
 20066b8:	84 10 20 20 	mov  0x20, %g2
 20066bc:	81 c3 e0 08 	retl 
 20066c0:	90 10 00 02 	mov  %g2, %o0
 20066c4:	c2 22 00 00 	st  %g1, [ %o0 ]
 20066c8:	81 c3 e0 08 	retl 
 20066cc:	90 10 00 02 	mov  %g2, %o0
 20066d0:	83 30 60 01 	srl  %g1, 1, %g1
 20066d4:	84 10 20 01 	mov  1, %g2
 20066d8:	c2 22 00 00 	st  %g1, [ %o0 ]
 20066dc:	81 c3 e0 08 	retl 
 20066e0:	90 10 00 02 	mov  %g2, %o0

020066e4 <__i2b>:
 20066e4:	9d e3 bf a0 	save  %sp, -96, %sp
 20066e8:	92 10 20 01 	mov  1, %o1
 20066ec:	7f ff ff 07 	call  2006308 <_Balloc>
 20066f0:	90 10 00 18 	mov  %i0, %o0
 20066f4:	82 10 20 01 	mov  1, %g1
 20066f8:	f2 22 20 14 	st  %i1, [ %o0 + 0x14 ]
 20066fc:	c2 22 20 10 	st  %g1, [ %o0 + 0x10 ]
 2006700:	81 c7 e0 08 	ret 
 2006704:	91 e8 00 08 	restore  %g0, %o0, %o0

02006708 <__multiply>:
 2006708:	9d e3 bf 98 	save  %sp, -104, %sp
 200670c:	fa 06 60 10 	ld  [ %i1 + 0x10 ], %i5
 2006710:	f8 06 a0 10 	ld  [ %i2 + 0x10 ], %i4
 2006714:	80 a7 40 1c 	cmp  %i5, %i4
 2006718:	16 80 00 09 	bge  200673c <__multiply+0x34>
 200671c:	a4 07 40 1c 	add  %i5, %i4, %l2
 2006720:	84 10 00 1d 	mov  %i5, %g2
 2006724:	82 10 00 19 	mov  %i1, %g1
 2006728:	ba 10 00 1c 	mov  %i4, %i5
 200672c:	b2 10 00 1a 	mov  %i2, %i1
 2006730:	b8 10 00 02 	mov  %g2, %i4
 2006734:	b4 10 00 01 	mov  %g1, %i2
 2006738:	a4 07 40 1c 	add  %i5, %i4, %l2
 200673c:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2006740:	80 a4 80 01 	cmp  %l2, %g1
 2006744:	04 80 00 03 	ble  2006750 <__multiply+0x48>
 2006748:	d2 06 60 04 	ld  [ %i1 + 4 ], %o1
 200674c:	92 02 60 01 	inc  %o1
 2006750:	7f ff fe ee 	call  2006308 <_Balloc>
 2006754:	90 10 00 18 	mov  %i0, %o0
 2006758:	d0 27 bf fc 	st  %o0, [ %fp + -4 ]
 200675c:	a2 02 20 14 	add  %o0, 0x14, %l1
 2006760:	a6 04 a0 04 	add  %l2, 4, %l3
 2006764:	a7 2c e0 02 	sll  %l3, 2, %l3
 2006768:	a6 02 00 13 	add  %o0, %l3, %l3
 200676c:	a6 04 e0 04 	add  %l3, 4, %l3
 2006770:	80 a4 40 13 	cmp  %l1, %l3
 2006774:	1a 80 00 07 	bcc  2006790 <__multiply+0x88>
 2006778:	82 10 00 11 	mov  %l1, %g1
 200677c:	c0 20 40 00 	clr  [ %g1 ]
 2006780:	82 00 60 04 	add  %g1, 4, %g1
 2006784:	80 a4 c0 01 	cmp  %l3, %g1
 2006788:	38 bf ff fe 	bgu,a   2006780 <__multiply+0x78>
 200678c:	c0 20 40 00 	clr  [ %g1 ]
 2006790:	82 07 60 04 	add  %i5, 4, %g1
 2006794:	a0 06 a0 14 	add  %i2, 0x14, %l0
 2006798:	83 28 60 02 	sll  %g1, 2, %g1
 200679c:	b8 07 20 04 	add  %i4, 4, %i4
 20067a0:	82 06 40 01 	add  %i1, %g1, %g1
 20067a4:	b9 2f 20 02 	sll  %i4, 2, %i4
 20067a8:	aa 06 60 14 	add  %i1, 0x14, %l5
 20067ac:	b4 06 80 1c 	add  %i2, %i4, %i2
 20067b0:	3b 00 00 3f 	sethi  %hi(0xfc00), %i5
 20067b4:	a8 06 a0 04 	add  %i2, 4, %l4
 20067b8:	b2 00 60 04 	add  %g1, 4, %i1
 20067bc:	80 a4 00 14 	cmp  %l0, %l4
 20067c0:	1a 80 00 49 	bcc  20068e4 <__multiply+0x1dc>
 20067c4:	ba 17 63 ff 	or  %i5, 0x3ff, %i5
 20067c8:	c2 04 00 00 	ld  [ %l0 ], %g1
 20067cc:	ae 88 40 1d 	andcc  %g1, %i5, %l7
 20067d0:	22 80 00 20 	be,a   2006850 <__multiply+0x148>
 20067d4:	af 30 60 10 	srl  %g1, 0x10, %l7
 20067d8:	b8 10 00 11 	mov  %l1, %i4
 20067dc:	b6 10 00 15 	mov  %l5, %i3
 20067e0:	b0 10 20 00 	clr  %i0
 20067e4:	f4 06 c0 00 	ld  [ %i3 ], %i2
 20067e8:	92 10 00 17 	mov  %l7, %o1
 20067ec:	40 00 0c ae 	call  2009aa4 <.umul>
 20067f0:	90 0e 80 1d 	and  %i2, %i5, %o0
 20067f4:	ec 07 00 00 	ld  [ %i4 ], %l6
 20067f8:	84 0d 80 1d 	and  %l6, %i5, %g2
 20067fc:	84 02 00 02 	add  %o0, %g2, %g2
 2006800:	92 10 00 17 	mov  %l7, %o1
 2006804:	91 36 a0 10 	srl  %i2, 0x10, %o0
 2006808:	40 00 0c a7 	call  2009aa4 <.umul>
 200680c:	b4 00 80 18 	add  %g2, %i0, %i2
 2006810:	83 36 a0 10 	srl  %i2, 0x10, %g1
 2006814:	ad 35 a0 10 	srl  %l6, 0x10, %l6
 2006818:	b4 0e 80 1d 	and  %i2, %i5, %i2
 200681c:	90 02 00 16 	add  %o0, %l6, %o0
 2006820:	ac 02 00 01 	add  %o0, %g1, %l6
 2006824:	83 2d a0 10 	sll  %l6, 0x10, %g1
 2006828:	b4 10 40 1a 	or  %g1, %i2, %i2
 200682c:	f4 27 00 00 	st  %i2, [ %i4 ]
 2006830:	b6 06 e0 04 	add  %i3, 4, %i3
 2006834:	b1 35 a0 10 	srl  %l6, 0x10, %i0
 2006838:	80 a6 40 1b 	cmp  %i1, %i3
 200683c:	18 bf ff ea 	bgu  20067e4 <__multiply+0xdc>
 2006840:	b8 07 20 04 	add  %i4, 4, %i4
 2006844:	f0 27 00 00 	st  %i0, [ %i4 ]
 2006848:	c2 04 00 00 	ld  [ %l0 ], %g1
 200684c:	af 30 60 10 	srl  %g1, 0x10, %l7
 2006850:	80 a5 e0 00 	cmp  %l7, 0
 2006854:	22 80 00 21 	be,a   20068d8 <__multiply+0x1d0>
 2006858:	a0 04 20 04 	add  %l0, 4, %l0
 200685c:	f4 04 40 00 	ld  [ %l1 ], %i2
 2006860:	b6 10 00 11 	mov  %l1, %i3
 2006864:	ac 10 00 1a 	mov  %i2, %l6
 2006868:	b8 10 00 15 	mov  %l5, %i4
 200686c:	b0 10 20 00 	clr  %i0
 2006870:	d0 07 00 00 	ld  [ %i4 ], %o0
 2006874:	92 10 00 17 	mov  %l7, %o1
 2006878:	ad 35 a0 10 	srl  %l6, 0x10, %l6
 200687c:	40 00 0c 8a 	call  2009aa4 <.umul>
 2006880:	90 0a 00 1d 	and  %o0, %i5, %o0
 2006884:	90 02 00 16 	add  %o0, %l6, %o0
 2006888:	ac 02 00 18 	add  %o0, %i0, %l6
 200688c:	83 2d a0 10 	sll  %l6, 0x10, %g1
 2006890:	92 10 00 17 	mov  %l7, %o1
 2006894:	b4 0e 80 1d 	and  %i2, %i5, %i2
 2006898:	b4 10 40 1a 	or  %g1, %i2, %i2
 200689c:	f4 26 c0 00 	st  %i2, [ %i3 ]
 20068a0:	40 00 0c 81 	call  2009aa4 <.umul>
 20068a4:	d0 17 00 00 	lduh  [ %i4 ], %o0
 20068a8:	83 35 a0 10 	srl  %l6, 0x10, %g1
 20068ac:	b6 06 e0 04 	add  %i3, 4, %i3
 20068b0:	ec 06 c0 00 	ld  [ %i3 ], %l6
 20068b4:	b4 0d 80 1d 	and  %l6, %i5, %i2
 20068b8:	b8 07 20 04 	add  %i4, 4, %i4
 20068bc:	90 06 80 08 	add  %i2, %o0, %o0
 20068c0:	80 a6 40 1c 	cmp  %i1, %i4
 20068c4:	b4 02 00 01 	add  %o0, %g1, %i2
 20068c8:	18 bf ff ea 	bgu  2006870 <__multiply+0x168>
 20068cc:	b1 36 a0 10 	srl  %i2, 0x10, %i0
 20068d0:	f4 26 c0 00 	st  %i2, [ %i3 ]
 20068d4:	a0 04 20 04 	add  %l0, 4, %l0
 20068d8:	80 a5 00 10 	cmp  %l4, %l0
 20068dc:	18 bf ff bb 	bgu  20067c8 <__multiply+0xc0>
 20068e0:	a2 04 60 04 	add  %l1, 4, %l1
 20068e4:	80 a4 a0 00 	cmp  %l2, 0
 20068e8:	04 80 00 10 	ble  2006928 <__multiply+0x220>
 20068ec:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 20068f0:	c2 04 ff fc 	ld  [ %l3 + -4 ], %g1
 20068f4:	80 a0 60 00 	cmp  %g1, 0
 20068f8:	02 80 00 08 	be  2006918 <__multiply+0x210>
 20068fc:	a6 04 ff fc 	add  %l3, -4, %l3
 2006900:	10 80 00 0a 	b  2006928 <__multiply+0x220>
 2006904:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2006908:	c2 04 c0 00 	ld  [ %l3 ], %g1
 200690c:	80 a0 60 00 	cmp  %g1, 0
 2006910:	12 80 00 06 	bne  2006928 <__multiply+0x220>
 2006914:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2006918:	a4 84 bf ff 	addcc  %l2, -1, %l2
 200691c:	32 bf ff fb 	bne,a   2006908 <__multiply+0x200>
 2006920:	a6 04 ff fc 	add  %l3, -4, %l3
 2006924:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2006928:	e4 20 60 10 	st  %l2, [ %g1 + 0x10 ]
 200692c:	81 c7 e0 08 	ret 
 2006930:	91 e8 00 01 	restore  %g0, %g1, %o0

02006934 <__pow5mult>:
 2006934:	9d e3 bf a0 	save  %sp, -96, %sp
 2006938:	82 8e a0 03 	andcc  %i2, 3, %g1
 200693c:	32 80 00 32 	bne,a   2006a04 <__pow5mult+0xd0>
 2006940:	82 00 7f ff 	add  %g1, -1, %g1
 2006944:	b5 3e a0 02 	sra  %i2, 2, %i2
 2006948:	80 a6 a0 00 	cmp  %i2, 0
 200694c:	02 80 00 25 	be  20069e0 <__pow5mult+0xac>
 2006950:	01 00 00 00 	nop 
 2006954:	fa 06 20 48 	ld  [ %i0 + 0x48 ], %i5
 2006958:	80 a7 60 00 	cmp  %i5, 0
 200695c:	12 80 00 0e 	bne  2006994 <__pow5mult+0x60>
 2006960:	80 8e a0 01 	btst  1, %i2
 2006964:	10 80 00 32 	b  2006a2c <__pow5mult+0xf8>
 2006968:	90 10 00 18 	mov  %i0, %o0
 200696c:	b5 3e a0 01 	sra  %i2, 1, %i2
 2006970:	80 a6 a0 00 	cmp  %i2, 0
 2006974:	02 80 00 1b 	be  20069e0 <__pow5mult+0xac>
 2006978:	01 00 00 00 	nop 
 200697c:	c2 07 40 00 	ld  [ %i5 ], %g1
 2006980:	80 a0 60 00 	cmp  %g1, 0
 2006984:	02 80 00 19 	be  20069e8 <__pow5mult+0xb4>
 2006988:	92 10 00 1d 	mov  %i5, %o1
 200698c:	ba 10 00 01 	mov  %g1, %i5
 2006990:	80 8e a0 01 	btst  1, %i2
 2006994:	22 bf ff f7 	be,a   2006970 <__pow5mult+0x3c>
 2006998:	b5 3e a0 01 	sra  %i2, 1, %i2
 200699c:	92 10 00 19 	mov  %i1, %o1
 20069a0:	94 10 00 1d 	mov  %i5, %o2
 20069a4:	7f ff ff 59 	call  2006708 <__multiply>
 20069a8:	90 10 00 18 	mov  %i0, %o0
 20069ac:	80 a6 60 00 	cmp  %i1, 0
 20069b0:	22 bf ff ef 	be,a   200696c <__pow5mult+0x38>
 20069b4:	b2 10 00 08 	mov  %o0, %i1
 20069b8:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 20069bc:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 20069c0:	83 28 60 02 	sll  %g1, 2, %g1
 20069c4:	c6 00 80 01 	ld  [ %g2 + %g1 ], %g3
 20069c8:	c6 26 40 00 	st  %g3, [ %i1 ]
 20069cc:	f2 20 80 01 	st  %i1, [ %g2 + %g1 ]
 20069d0:	b5 3e a0 01 	sra  %i2, 1, %i2
 20069d4:	80 a6 a0 00 	cmp  %i2, 0
 20069d8:	12 bf ff e9 	bne  200697c <__pow5mult+0x48>
 20069dc:	b2 10 00 08 	mov  %o0, %i1
 20069e0:	81 c7 e0 08 	ret 
 20069e4:	91 e8 00 19 	restore  %g0, %i1, %o0
 20069e8:	94 10 00 1d 	mov  %i5, %o2
 20069ec:	7f ff ff 47 	call  2006708 <__multiply>
 20069f0:	90 10 00 18 	mov  %i0, %o0
 20069f4:	d0 27 40 00 	st  %o0, [ %i5 ]
 20069f8:	c0 22 00 00 	clr  [ %o0 ]
 20069fc:	10 bf ff e5 	b  2006990 <__pow5mult+0x5c>
 2006a00:	ba 10 00 08 	mov  %o0, %i5
 2006a04:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2006a08:	83 28 60 02 	sll  %g1, 2, %g1
 2006a0c:	84 10 a3 50 	or  %g2, 0x350, %g2
 2006a10:	92 10 00 19 	mov  %i1, %o1
 2006a14:	90 10 00 18 	mov  %i0, %o0
 2006a18:	d4 00 80 01 	ld  [ %g2 + %g1 ], %o2
 2006a1c:	7f ff fe 6b 	call  20063c8 <__multadd>
 2006a20:	96 10 20 00 	clr  %o3
 2006a24:	10 bf ff c8 	b  2006944 <__pow5mult+0x10>
 2006a28:	b2 10 00 08 	mov  %o0, %i1
 2006a2c:	7f ff ff 2e 	call  20066e4 <__i2b>
 2006a30:	92 10 22 71 	mov  0x271, %o1
 2006a34:	d0 26 20 48 	st  %o0, [ %i0 + 0x48 ]
 2006a38:	ba 10 00 08 	mov  %o0, %i5
 2006a3c:	10 bf ff d5 	b  2006990 <__pow5mult+0x5c>
 2006a40:	c0 22 00 00 	clr  [ %o0 ]

02006a44 <__lshift>:
 2006a44:	9d e3 bf a0 	save  %sp, -96, %sp
 2006a48:	e0 06 60 10 	ld  [ %i1 + 0x10 ], %l0
 2006a4c:	b9 3e a0 05 	sra  %i2, 5, %i4
 2006a50:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2006a54:	a0 07 00 10 	add  %i4, %l0, %l0
 2006a58:	ba 04 20 01 	add  %l0, 1, %i5
 2006a5c:	80 a7 40 01 	cmp  %i5, %g1
 2006a60:	04 80 00 06 	ble  2006a78 <__lshift+0x34>
 2006a64:	d2 06 60 04 	ld  [ %i1 + 4 ], %o1
 2006a68:	83 28 60 01 	sll  %g1, 1, %g1
 2006a6c:	80 a7 40 01 	cmp  %i5, %g1
 2006a70:	14 bf ff fe 	bg  2006a68 <__lshift+0x24>
 2006a74:	92 02 60 01 	inc  %o1
 2006a78:	7f ff fe 24 	call  2006308 <_Balloc>
 2006a7c:	90 10 00 18 	mov  %i0, %o0
 2006a80:	80 a7 20 00 	cmp  %i4, 0
 2006a84:	04 80 00 0c 	ble  2006ab4 <__lshift+0x70>
 2006a88:	82 02 20 14 	add  %o0, 0x14, %g1
 2006a8c:	84 10 20 00 	clr  %g2
 2006a90:	c0 20 40 00 	clr  [ %g1 ]
 2006a94:	84 00 a0 01 	inc  %g2
 2006a98:	80 a0 80 1c 	cmp  %g2, %i4
 2006a9c:	12 bf ff fd 	bne  2006a90 <__lshift+0x4c>
 2006aa0:	82 00 60 04 	add  %g1, 4, %g1
 2006aa4:	82 00 a0 04 	add  %g2, 4, %g1
 2006aa8:	83 28 60 02 	sll  %g1, 2, %g1
 2006aac:	82 02 00 01 	add  %o0, %g1, %g1
 2006ab0:	82 00 60 04 	add  %g1, 4, %g1
 2006ab4:	c8 06 60 10 	ld  [ %i1 + 0x10 ], %g4
 2006ab8:	84 06 60 14 	add  %i1, 0x14, %g2
 2006abc:	88 01 20 04 	add  %g4, 4, %g4
 2006ac0:	b4 8e a0 1f 	andcc  %i2, 0x1f, %i2
 2006ac4:	89 29 20 02 	sll  %g4, 2, %g4
 2006ac8:	88 06 40 04 	add  %i1, %g4, %g4
 2006acc:	02 80 00 1d 	be  2006b40 <__lshift+0xfc>
 2006ad0:	88 01 20 04 	add  %g4, 4, %g4
 2006ad4:	b6 10 20 20 	mov  0x20, %i3
 2006ad8:	86 10 20 00 	clr  %g3
 2006adc:	b6 26 c0 1a 	sub  %i3, %i2, %i3
 2006ae0:	f8 00 80 00 	ld  [ %g2 ], %i4
 2006ae4:	b9 2f 00 1a 	sll  %i4, %i2, %i4
 2006ae8:	86 10 c0 1c 	or  %g3, %i4, %g3
 2006aec:	c6 20 40 00 	st  %g3, [ %g1 ]
 2006af0:	82 00 60 04 	add  %g1, 4, %g1
 2006af4:	c6 00 80 00 	ld  [ %g2 ], %g3
 2006af8:	84 00 a0 04 	add  %g2, 4, %g2
 2006afc:	80 a1 00 02 	cmp  %g4, %g2
 2006b00:	18 bf ff f8 	bgu  2006ae0 <__lshift+0x9c>
 2006b04:	87 30 c0 1b 	srl  %g3, %i3, %g3
 2006b08:	80 a0 e0 00 	cmp  %g3, 0
 2006b0c:	02 80 00 03 	be  2006b18 <__lshift+0xd4>
 2006b10:	c6 20 40 00 	st  %g3, [ %g1 ]
 2006b14:	ba 04 20 02 	add  %l0, 2, %i5
 2006b18:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 2006b1c:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 2006b20:	ba 07 7f ff 	add  %i5, -1, %i5
 2006b24:	83 28 60 02 	sll  %g1, 2, %g1
 2006b28:	fa 22 20 10 	st  %i5, [ %o0 + 0x10 ]
 2006b2c:	c6 00 80 01 	ld  [ %g2 + %g1 ], %g3
 2006b30:	c6 26 40 00 	st  %g3, [ %i1 ]
 2006b34:	f2 20 80 01 	st  %i1, [ %g2 + %g1 ]
 2006b38:	81 c7 e0 08 	ret 
 2006b3c:	91 e8 00 08 	restore  %g0, %o0, %o0
 2006b40:	c6 00 80 00 	ld  [ %g2 ], %g3
 2006b44:	c6 20 40 00 	st  %g3, [ %g1 ]
 2006b48:	84 00 a0 04 	add  %g2, 4, %g2
 2006b4c:	80 a1 00 02 	cmp  %g4, %g2
 2006b50:	08 bf ff f2 	bleu  2006b18 <__lshift+0xd4>
 2006b54:	82 00 60 04 	add  %g1, 4, %g1
 2006b58:	c6 00 80 00 	ld  [ %g2 ], %g3
 2006b5c:	c6 20 40 00 	st  %g3, [ %g1 ]
 2006b60:	84 00 a0 04 	add  %g2, 4, %g2
 2006b64:	80 a1 00 02 	cmp  %g4, %g2
 2006b68:	18 bf ff f6 	bgu  2006b40 <__lshift+0xfc>
 2006b6c:	82 00 60 04 	add  %g1, 4, %g1
 2006b70:	10 bf ff eb 	b  2006b1c <__lshift+0xd8>
 2006b74:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2

02006b78 <__mcmp>:
 2006b78:	82 10 00 08 	mov  %o0, %g1
 2006b7c:	c4 02 60 10 	ld  [ %o1 + 0x10 ], %g2
 2006b80:	d0 02 20 10 	ld  [ %o0 + 0x10 ], %o0
 2006b84:	90 a2 00 02 	subcc  %o0, %g2, %o0
 2006b88:	12 80 00 11 	bne  2006bcc <__mcmp+0x54>
 2006b8c:	84 00 a0 04 	add  %g2, 4, %g2
 2006b90:	88 00 60 14 	add  %g1, 0x14, %g4
 2006b94:	85 28 a0 02 	sll  %g2, 2, %g2
 2006b98:	82 00 40 02 	add  %g1, %g2, %g1
 2006b9c:	92 02 40 02 	add  %o1, %g2, %o1
 2006ba0:	82 00 60 04 	add  %g1, 4, %g1
 2006ba4:	92 02 60 04 	add  %o1, 4, %o1
 2006ba8:	82 00 7f fc 	add  %g1, -4, %g1
 2006bac:	92 02 7f fc 	add  %o1, -4, %o1
 2006bb0:	c6 00 40 00 	ld  [ %g1 ], %g3
 2006bb4:	c4 02 40 00 	ld  [ %o1 ], %g2
 2006bb8:	80 a0 c0 02 	cmp  %g3, %g2
 2006bbc:	12 80 00 06 	bne  2006bd4 <__mcmp+0x5c>
 2006bc0:	80 a1 00 01 	cmp  %g4, %g1
 2006bc4:	0a bf ff fa 	bcs  2006bac <__mcmp+0x34>
 2006bc8:	82 00 7f fc 	add  %g1, -4, %g1
 2006bcc:	81 c3 e0 08 	retl 
 2006bd0:	01 00 00 00 	nop 
 2006bd4:	80 a0 c0 02 	cmp  %g3, %g2
 2006bd8:	90 60 20 00 	subx  %g0, 0, %o0
 2006bdc:	81 c3 e0 08 	retl 
 2006be0:	90 12 20 01 	or  %o0, 1, %o0

02006be4 <__mdiff>:
 2006be4:	9d e3 bf a0 	save  %sp, -96, %sp
 2006be8:	90 10 00 19 	mov  %i1, %o0
 2006bec:	7f ff ff e3 	call  2006b78 <__mcmp>
 2006bf0:	92 10 00 1a 	mov  %i2, %o1
 2006bf4:	80 a2 20 00 	cmp  %o0, 0
 2006bf8:	02 80 00 58 	be  2006d58 <__mdiff+0x174>
 2006bfc:	90 10 00 18 	mov  %i0, %o0
 2006c00:	06 80 00 51 	bl  2006d44 <__mdiff+0x160>
 2006c04:	b8 10 20 00 	clr  %i4
 2006c08:	90 10 00 18 	mov  %i0, %o0
 2006c0c:	7f ff fd bf 	call  2006308 <_Balloc>
 2006c10:	d2 06 60 04 	ld  [ %i1 + 4 ], %o1
 2006c14:	d8 06 a0 10 	ld  [ %i2 + 0x10 ], %o4
 2006c18:	fa 06 60 10 	ld  [ %i1 + 0x10 ], %i5
 2006c1c:	98 03 20 04 	add  %o4, 4, %o4
 2006c20:	9a 07 60 04 	add  %i5, 4, %o5
 2006c24:	99 2b 20 02 	sll  %o4, 2, %o4
 2006c28:	9b 2b 60 02 	sll  %o5, 2, %o5
 2006c2c:	98 06 80 0c 	add  %i2, %o4, %o4
 2006c30:	9a 06 40 0d 	add  %i1, %o5, %o5
 2006c34:	09 00 00 3f 	sethi  %hi(0xfc00), %g4
 2006c38:	b0 10 00 08 	mov  %o0, %i0
 2006c3c:	f8 22 20 0c 	st  %i4, [ %o0 + 0xc ]
 2006c40:	b2 06 60 14 	add  %i1, 0x14, %i1
 2006c44:	9a 03 60 04 	add  %o5, 4, %o5
 2006c48:	b4 06 a0 14 	add  %i2, 0x14, %i2
 2006c4c:	98 03 20 04 	add  %o4, 4, %o4
 2006c50:	82 02 20 14 	add  %o0, 0x14, %g1
 2006c54:	86 10 20 00 	clr  %g3
 2006c58:	88 11 23 ff 	or  %g4, 0x3ff, %g4
 2006c5c:	f8 06 80 00 	ld  [ %i2 ], %i4
 2006c60:	9e 0f 00 04 	and  %i4, %g4, %o7
 2006c64:	b9 37 20 10 	srl  %i4, 0x10, %i4
 2006c68:	f6 06 40 00 	ld  [ %i1 ], %i3
 2006c6c:	84 0e c0 04 	and  %i3, %g4, %g2
 2006c70:	b7 36 e0 10 	srl  %i3, 0x10, %i3
 2006c74:	84 00 80 03 	add  %g2, %g3, %g2
 2006c78:	86 26 c0 1c 	sub  %i3, %i4, %g3
 2006c7c:	84 20 80 0f 	sub  %g2, %o7, %g2
 2006c80:	9f 38 a0 10 	sra  %g2, 0x10, %o7
 2006c84:	84 08 80 04 	and  %g2, %g4, %g2
 2006c88:	86 00 c0 0f 	add  %g3, %o7, %g3
 2006c8c:	b9 28 e0 10 	sll  %g3, 0x10, %i4
 2006c90:	84 17 00 02 	or  %i4, %g2, %g2
 2006c94:	c4 20 40 00 	st  %g2, [ %g1 ]
 2006c98:	b4 06 a0 04 	add  %i2, 4, %i2
 2006c9c:	b2 06 60 04 	add  %i1, 4, %i1
 2006ca0:	87 38 e0 10 	sra  %g3, 0x10, %g3
 2006ca4:	80 a3 00 1a 	cmp  %o4, %i2
 2006ca8:	18 bf ff ed 	bgu  2006c5c <__mdiff+0x78>
 2006cac:	82 00 60 04 	add  %g1, 4, %g1
 2006cb0:	b6 10 00 01 	mov  %g1, %i3
 2006cb4:	80 a3 40 19 	cmp  %o5, %i1
 2006cb8:	08 80 00 18 	bleu  2006d18 <__mdiff+0x134>
 2006cbc:	b4 10 00 19 	mov  %i1, %i2
 2006cc0:	39 00 00 3f 	sethi  %hi(0xfc00), %i4
 2006cc4:	b8 17 23 ff 	or  %i4, 0x3ff, %i4	! ffff <_.tmp+0xffbf>
 2006cc8:	c8 06 40 00 	ld  [ %i1 ], %g4
 2006ccc:	84 09 00 1c 	and  %g4, %i4, %g2
 2006cd0:	89 31 20 10 	srl  %g4, 0x10, %g4
 2006cd4:	84 00 80 03 	add  %g2, %g3, %g2
 2006cd8:	87 38 a0 10 	sra  %g2, 0x10, %g3
 2006cdc:	84 08 80 1c 	and  %g2, %i4, %g2
 2006ce0:	86 00 c0 04 	add  %g3, %g4, %g3
 2006ce4:	89 28 e0 10 	sll  %g3, 0x10, %g4
 2006ce8:	84 11 00 02 	or  %g4, %g2, %g2
 2006cec:	c4 20 40 00 	st  %g2, [ %g1 ]
 2006cf0:	b2 06 60 04 	add  %i1, 4, %i1
 2006cf4:	87 38 e0 10 	sra  %g3, 0x10, %g3
 2006cf8:	80 a3 40 19 	cmp  %o5, %i1
 2006cfc:	18 bf ff f3 	bgu  2006cc8 <__mdiff+0xe4>
 2006d00:	82 00 60 04 	add  %g1, 4, %g1
 2006d04:	82 38 00 1a 	xnor  %g0, %i2, %g1
 2006d08:	82 00 40 0d 	add  %g1, %o5, %g1
 2006d0c:	82 08 7f fc 	and  %g1, -4, %g1
 2006d10:	82 00 60 04 	add  %g1, 4, %g1
 2006d14:	82 06 c0 01 	add  %i3, %g1, %g1
 2006d18:	80 a0 a0 00 	cmp  %g2, 0
 2006d1c:	12 80 00 07 	bne  2006d38 <__mdiff+0x154>
 2006d20:	82 00 7f fc 	add  %g1, -4, %g1
 2006d24:	82 00 7f fc 	add  %g1, -4, %g1
 2006d28:	c4 00 40 00 	ld  [ %g1 ], %g2
 2006d2c:	80 a0 a0 00 	cmp  %g2, 0
 2006d30:	02 bf ff fd 	be  2006d24 <__mdiff+0x140>
 2006d34:	ba 07 7f ff 	add  %i5, -1, %i5
 2006d38:	fa 26 20 10 	st  %i5, [ %i0 + 0x10 ]
 2006d3c:	81 c7 e0 08 	ret 
 2006d40:	81 e8 00 00 	restore 
 2006d44:	82 10 00 19 	mov  %i1, %g1
 2006d48:	b8 10 20 01 	mov  1, %i4
 2006d4c:	b2 10 00 1a 	mov  %i2, %i1
 2006d50:	10 bf ff ae 	b  2006c08 <__mdiff+0x24>
 2006d54:	b4 10 00 01 	mov  %g1, %i2
 2006d58:	7f ff fd 6c 	call  2006308 <_Balloc>
 2006d5c:	92 10 20 00 	clr  %o1
 2006d60:	82 10 20 01 	mov  1, %g1
 2006d64:	c0 22 20 14 	clr  [ %o0 + 0x14 ]
 2006d68:	c2 22 20 10 	st  %g1, [ %o0 + 0x10 ]
 2006d6c:	81 c7 e0 08 	ret 
 2006d70:	91 e8 00 08 	restore  %g0, %o0, %o0

02006d74 <__ulp>:
 2006d74:	03 1f fc 00 	sethi  %hi(0x7ff00000), %g1
 2006d78:	05 3f 30 00 	sethi  %hi(0xfcc00000), %g2
 2006d7c:	90 0a 00 01 	and  %o0, %g1, %o0
 2006d80:	90 02 00 02 	add  %o0, %g2, %o0
 2006d84:	80 a2 20 00 	cmp  %o0, 0
 2006d88:	04 80 00 08 	ble  2006da8 <__ulp+0x34>
 2006d8c:	9c 03 bf b0 	add  %sp, -80, %sp
 2006d90:	84 10 00 08 	mov  %o0, %g2
 2006d94:	86 10 20 00 	clr  %g3
 2006d98:	c4 3b a0 48 	std  %g2, [ %sp + 0x48 ]
 2006d9c:	c1 1b a0 48 	ldd  [ %sp + 0x48 ], %f0
 2006da0:	81 c3 e0 08 	retl 
 2006da4:	9c 23 bf b0 	sub  %sp, -80, %sp
 2006da8:	90 20 00 08 	neg  %o0
 2006dac:	91 3a 20 14 	sra  %o0, 0x14, %o0
 2006db0:	80 a2 20 13 	cmp  %o0, 0x13
 2006db4:	04 80 00 0d 	ble  2006de8 <__ulp+0x74>
 2006db8:	84 10 20 00 	clr  %g2
 2006dbc:	80 a2 20 32 	cmp  %o0, 0x32
 2006dc0:	14 80 00 05 	bg  2006dd4 <__ulp+0x60>
 2006dc4:	82 10 20 01 	mov  1, %g1
 2006dc8:	88 10 20 33 	mov  0x33, %g4
 2006dcc:	90 21 00 08 	sub  %g4, %o0, %o0
 2006dd0:	83 28 40 08 	sll  %g1, %o0, %g1
 2006dd4:	86 10 00 01 	mov  %g1, %g3
 2006dd8:	c4 3b a0 48 	std  %g2, [ %sp + 0x48 ]
 2006ddc:	c1 1b a0 48 	ldd  [ %sp + 0x48 ], %f0
 2006de0:	81 c3 e0 08 	retl 
 2006de4:	9c 23 bf b0 	sub  %sp, -80, %sp
 2006de8:	03 00 02 00 	sethi  %hi(0x80000), %g1
 2006dec:	86 10 20 00 	clr  %g3
 2006df0:	85 38 40 08 	sra  %g1, %o0, %g2
 2006df4:	c4 3b a0 48 	std  %g2, [ %sp + 0x48 ]
 2006df8:	c1 1b a0 48 	ldd  [ %sp + 0x48 ], %f0
 2006dfc:	81 c3 e0 08 	retl 
 2006e00:	9c 23 bf b0 	sub  %sp, -80, %sp

02006e04 <__b2d>:
 2006e04:	9d e3 bf 98 	save  %sp, -104, %sp
 2006e08:	c2 06 20 10 	ld  [ %i0 + 0x10 ], %g1
 2006e0c:	82 00 60 04 	add  %g1, 4, %g1
 2006e10:	83 28 60 02 	sll  %g1, 2, %g1
 2006e14:	b6 06 20 14 	add  %i0, 0x14, %i3
 2006e18:	b0 06 00 01 	add  %i0, %g1, %i0
 2006e1c:	b8 06 20 04 	add  %i0, 4, %i4
 2006e20:	fa 07 3f fc 	ld  [ %i4 + -4 ], %i5
 2006e24:	7f ff fd d9 	call  2006588 <__hi0bits>
 2006e28:	90 10 00 1d 	mov  %i5, %o0
 2006e2c:	82 10 20 20 	mov  0x20, %g1
 2006e30:	82 20 40 08 	sub  %g1, %o0, %g1
 2006e34:	c2 26 40 00 	st  %g1, [ %i1 ]
 2006e38:	80 a2 20 0a 	cmp  %o0, 0xa
 2006e3c:	14 80 00 13 	bg  2006e88 <__b2d+0x84>
 2006e40:	82 10 00 18 	mov  %i0, %g1
 2006e44:	88 10 20 0b 	mov  0xb, %g4
 2006e48:	35 0f fc 00 	sethi  %hi(0x3ff00000), %i2
 2006e4c:	88 21 00 08 	sub  %g4, %o0, %g4
 2006e50:	82 10 20 00 	clr  %g1
 2006e54:	b3 37 40 04 	srl  %i5, %g4, %i1
 2006e58:	80 a6 c0 18 	cmp  %i3, %i0
 2006e5c:	1a 80 00 04 	bcc  2006e6c <__b2d+0x68>
 2006e60:	84 16 40 1a 	or  %i1, %i2, %g2
 2006e64:	c2 07 3f f8 	ld  [ %i4 + -8 ], %g1
 2006e68:	83 30 40 04 	srl  %g1, %g4, %g1
 2006e6c:	90 02 20 15 	add  %o0, 0x15, %o0
 2006e70:	bb 2f 40 08 	sll  %i5, %o0, %i5
 2006e74:	86 10 40 1d 	or  %g1, %i5, %g3
 2006e78:	c4 3f bf f8 	std  %g2, [ %fp + -8 ]
 2006e7c:	c1 1f bf f8 	ldd  [ %fp + -8 ], %f0
 2006e80:	81 c7 e0 08 	ret 
 2006e84:	81 e8 00 00 	restore 
 2006e88:	80 a6 c0 18 	cmp  %i3, %i0
 2006e8c:	1a 80 00 04 	bcc  2006e9c <__b2d+0x98>
 2006e90:	88 10 20 00 	clr  %g4
 2006e94:	82 06 3f fc 	add  %i0, -4, %g1
 2006e98:	c8 07 3f f8 	ld  [ %i4 + -8 ], %g4
 2006e9c:	b8 82 3f f5 	addcc  %o0, -11, %i4
 2006ea0:	22 80 00 14 	be,a   2006ef0 <__b2d+0xec>
 2006ea4:	03 0f fc 00 	sethi  %hi(0x3ff00000), %g1
 2006ea8:	84 10 20 2b 	mov  0x2b, %g2
 2006eac:	90 20 80 08 	sub  %g2, %o0, %o0
 2006eb0:	05 0f fc 00 	sethi  %hi(0x3ff00000), %g2
 2006eb4:	bb 2f 40 1c 	sll  %i5, %i4, %i5
 2006eb8:	b3 31 00 08 	srl  %g4, %o0, %i1
 2006ebc:	ba 17 40 02 	or  %i5, %g2, %i5
 2006ec0:	b4 10 20 00 	clr  %i2
 2006ec4:	80 a0 40 1b 	cmp  %g1, %i3
 2006ec8:	08 80 00 04 	bleu  2006ed8 <__b2d+0xd4>
 2006ecc:	84 17 40 19 	or  %i5, %i1, %g2
 2006ed0:	f4 00 7f fc 	ld  [ %g1 + -4 ], %i2
 2006ed4:	b5 36 80 08 	srl  %i2, %o0, %i2
 2006ed8:	89 29 00 1c 	sll  %g4, %i4, %g4
 2006edc:	86 16 80 04 	or  %i2, %g4, %g3
 2006ee0:	c4 3f bf f8 	std  %g2, [ %fp + -8 ]
 2006ee4:	c1 1f bf f8 	ldd  [ %fp + -8 ], %f0
 2006ee8:	81 c7 e0 08 	ret 
 2006eec:	81 e8 00 00 	restore 
 2006ef0:	86 10 00 04 	mov  %g4, %g3
 2006ef4:	84 17 40 01 	or  %i5, %g1, %g2
 2006ef8:	c4 3f bf f8 	std  %g2, [ %fp + -8 ]
 2006efc:	c1 1f bf f8 	ldd  [ %fp + -8 ], %f0
 2006f00:	81 c7 e0 08 	ret 
 2006f04:	81 e8 00 00 	restore 

02006f08 <__d2b>:
 2006f08:	9d e3 bf 90 	save  %sp, -112, %sp
 2006f0c:	92 10 20 01 	mov  1, %o1
 2006f10:	90 10 00 18 	mov  %i0, %o0
 2006f14:	f2 27 bf f0 	st  %i1, [ %fp + -16 ]
 2006f18:	7f ff fc fc 	call  2006308 <_Balloc>
 2006f1c:	f4 27 bf f4 	st  %i2, [ %fp + -12 ]
 2006f20:	bb 2e 60 01 	sll  %i1, 1, %i5
 2006f24:	05 3f fc 00 	sethi  %hi(0xfff00000), %g2
 2006f28:	bb 37 60 15 	srl  %i5, 0x15, %i5
 2006f2c:	a2 10 00 1a 	mov  %i2, %l1
 2006f30:	b0 10 00 08 	mov  %o0, %i0
 2006f34:	80 a7 60 00 	cmp  %i5, 0
 2006f38:	02 80 00 04 	be  2006f48 <__d2b+0x40>
 2006f3c:	82 2e 40 02 	andn  %i1, %g2, %g1
 2006f40:	05 00 04 00 	sethi  %hi(0x100000), %g2
 2006f44:	82 10 40 02 	or  %g1, %g2, %g1
 2006f48:	80 a4 60 00 	cmp  %l1, 0
 2006f4c:	02 80 00 19 	be  2006fb0 <__d2b+0xa8>
 2006f50:	c2 27 bf fc 	st  %g1, [ %fp + -4 ]
 2006f54:	e2 27 bf f8 	st  %l1, [ %fp + -8 ]
 2006f58:	7f ff fd ae 	call  2006610 <__lo0bits>
 2006f5c:	90 07 bf f8 	add  %fp, -8, %o0
 2006f60:	80 a2 20 00 	cmp  %o0, 0
 2006f64:	12 80 00 29 	bne  2007008 <__d2b+0x100>
 2006f68:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2006f6c:	c4 07 bf f8 	ld  [ %fp + -8 ], %g2
 2006f70:	c4 26 20 14 	st  %g2, [ %i0 + 0x14 ]
 2006f74:	80 a0 00 01 	cmp  %g0, %g1
 2006f78:	b4 10 20 02 	mov  2, %i2
 2006f7c:	c2 26 20 18 	st  %g1, [ %i0 + 0x18 ]
 2006f80:	b4 46 bf ff 	addx  %i2, -1, %i2
 2006f84:	80 a7 60 00 	cmp  %i5, 0
 2006f88:	02 80 00 14 	be  2006fd8 <__d2b+0xd0>
 2006f8c:	f4 26 20 10 	st  %i2, [ %i0 + 0x10 ]
 2006f90:	ba 07 7b cd 	add  %i5, -1075, %i5
 2006f94:	ba 07 40 08 	add  %i5, %o0, %i5
 2006f98:	fa 26 c0 00 	st  %i5, [ %i3 ]
 2006f9c:	82 10 20 35 	mov  0x35, %g1
 2006fa0:	90 20 40 08 	sub  %g1, %o0, %o0
 2006fa4:	d0 27 00 00 	st  %o0, [ %i4 ]
 2006fa8:	81 c7 e0 08 	ret 
 2006fac:	81 e8 00 00 	restore 
 2006fb0:	7f ff fd 98 	call  2006610 <__lo0bits>
 2006fb4:	90 07 bf fc 	add  %fp, -4, %o0
 2006fb8:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 2006fbc:	c2 26 20 14 	st  %g1, [ %i0 + 0x14 ]
 2006fc0:	82 10 20 01 	mov  1, %g1
 2006fc4:	c2 26 20 10 	st  %g1, [ %i0 + 0x10 ]
 2006fc8:	b4 10 20 01 	mov  1, %i2
 2006fcc:	80 a7 60 00 	cmp  %i5, 0
 2006fd0:	12 bf ff f0 	bne  2006f90 <__d2b+0x88>
 2006fd4:	90 02 20 20 	add  %o0, 0x20, %o0
 2006fd8:	90 02 3b ce 	add  %o0, -1074, %o0
 2006fdc:	82 06 a0 03 	add  %i2, 3, %g1
 2006fe0:	83 28 60 02 	sll  %g1, 2, %g1
 2006fe4:	82 06 00 01 	add  %i0, %g1, %g1
 2006fe8:	d0 26 c0 00 	st  %o0, [ %i3 ]
 2006fec:	b5 2e a0 05 	sll  %i2, 5, %i2
 2006ff0:	7f ff fd 66 	call  2006588 <__hi0bits>
 2006ff4:	d0 00 60 04 	ld  [ %g1 + 4 ], %o0
 2006ff8:	90 26 80 08 	sub  %i2, %o0, %o0
 2006ffc:	d0 27 00 00 	st  %o0, [ %i4 ]
 2007000:	81 c7 e0 08 	ret 
 2007004:	81 e8 00 00 	restore 
 2007008:	84 20 00 08 	neg  %o0, %g2
 200700c:	c6 07 bf f8 	ld  [ %fp + -8 ], %g3
 2007010:	85 28 40 02 	sll  %g1, %g2, %g2
 2007014:	83 30 40 08 	srl  %g1, %o0, %g1
 2007018:	84 10 80 03 	or  %g2, %g3, %g2
 200701c:	c2 27 bf fc 	st  %g1, [ %fp + -4 ]
 2007020:	10 bf ff d5 	b  2006f74 <__d2b+0x6c>
 2007024:	c4 26 20 14 	st  %g2, [ %i0 + 0x14 ]

02007028 <__ratio>:
 2007028:	9d e3 bf 88 	save  %sp, -120, %sp
 200702c:	92 07 bf f8 	add  %fp, -8, %o1
 2007030:	7f ff ff 75 	call  2006e04 <__b2d>
 2007034:	90 10 00 18 	mov  %i0, %o0
 2007038:	91 a0 00 20 	fmovs  %f0, %f8
 200703c:	93 a0 00 21 	fmovs  %f1, %f9
 2007040:	92 07 bf fc 	add  %fp, -4, %o1
 2007044:	d1 3f bf f0 	std  %f8, [ %fp + -16 ]
 2007048:	7f ff ff 6f 	call  2006e04 <__b2d>
 200704c:	90 10 00 19 	mov  %i1, %o0
 2007050:	c4 07 bf f8 	ld  [ %fp + -8 ], %g2
 2007054:	c6 06 20 10 	ld  [ %i0 + 0x10 ], %g3
 2007058:	c2 07 bf fc 	ld  [ %fp + -4 ], %g1
 200705c:	d1 1f bf f0 	ldd  [ %fp + -16 ], %f8
 2007060:	82 20 80 01 	sub  %g2, %g1, %g1
 2007064:	95 a0 00 28 	fmovs  %f8, %f10
 2007068:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 200706c:	99 a0 00 20 	fmovs  %f0, %f12
 2007070:	84 20 c0 02 	sub  %g3, %g2, %g2
 2007074:	85 28 a0 05 	sll  %g2, 5, %g2
 2007078:	82 00 40 02 	add  %g1, %g2, %g1
 200707c:	80 a0 60 00 	cmp  %g1, 0
 2007080:	04 80 00 0b 	ble  20070ac <__ratio+0x84>
 2007084:	83 28 60 14 	sll  %g1, 0x14, %g1
 2007088:	d5 27 bf ec 	st  %f10, [ %fp + -20 ]
 200708c:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
 2007090:	82 00 40 02 	add  %g1, %g2, %g1
 2007094:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
 2007098:	d5 07 bf ec 	ld  [ %fp + -20 ], %f10
 200709c:	91 a0 00 2a 	fmovs  %f10, %f8
 20070a0:	81 a2 09 c0 	fdivd  %f8, %f0, %f0
 20070a4:	81 c7 e0 08 	ret 
 20070a8:	81 e8 00 00 	restore 
 20070ac:	d9 27 bf ec 	st  %f12, [ %fp + -20 ]
 20070b0:	c4 07 bf ec 	ld  [ %fp + -20 ], %g2
 20070b4:	82 20 80 01 	sub  %g2, %g1, %g1
 20070b8:	c2 27 bf ec 	st  %g1, [ %fp + -20 ]
 20070bc:	d9 07 bf ec 	ld  [ %fp + -20 ], %f12
 20070c0:	81 a0 00 2c 	fmovs  %f12, %f0
 20070c4:	81 a2 09 c0 	fdivd  %f8, %f0, %f0
 20070c8:	81 c7 e0 08 	ret 
 20070cc:	81 e8 00 00 	restore 

020070d0 <_mprec_log10>:
 20070d0:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 20070d4:	80 a2 20 17 	cmp  %o0, 0x17
 20070d8:	c1 18 62 00 	ldd  [ %g1 + 0x200 ], %f0
 20070dc:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 20070e0:	04 80 00 07 	ble  20070fc <_mprec_log10+0x2c>
 20070e4:	d1 18 62 08 	ldd  [ %g1 + 0x208 ], %f8	! 200a208 <zeroes.4060+0x58>
 20070e8:	90 82 3f ff 	addcc  %o0, -1, %o0
 20070ec:	12 bf ff ff 	bne  20070e8 <_mprec_log10+0x18>
 20070f0:	81 a0 09 48 	fmuld  %f0, %f8, %f0
 20070f4:	81 c3 e0 08 	retl 
 20070f8:	01 00 00 00 	nop 
 20070fc:	91 2a 20 03 	sll  %o0, 3, %o0
 2007100:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2007104:	82 10 62 88 	or  %g1, 0x288, %g1	! 200a288 <__mprec_tens>
 2007108:	81 c3 e0 08 	retl 
 200710c:	c1 18 40 08 	ldd  [ %g1 + %o0 ], %f0

02007110 <__copybits>:
 2007110:	92 02 7f ff 	add  %o1, -1, %o1
 2007114:	82 02 a0 14 	add  %o2, 0x14, %g1
 2007118:	9b 3a 60 05 	sra  %o1, 5, %o5
 200711c:	c8 02 a0 10 	ld  [ %o2 + 0x10 ], %g4
 2007120:	9a 03 60 01 	inc  %o5
 2007124:	88 01 20 04 	add  %g4, 4, %g4
 2007128:	9b 2b 60 02 	sll  %o5, 2, %o5
 200712c:	89 29 20 02 	sll  %g4, 2, %g4
 2007130:	88 02 80 04 	add  %o2, %g4, %g4
 2007134:	88 01 20 04 	add  %g4, 4, %g4
 2007138:	80 a0 40 04 	cmp  %g1, %g4
 200713c:	1a 80 00 13 	bcc  2007188 <__copybits+0x78>
 2007140:	9a 02 00 0d 	add  %o0, %o5, %o5
 2007144:	84 10 00 08 	mov  %o0, %g2
 2007148:	c6 00 40 00 	ld  [ %g1 ], %g3
 200714c:	c6 20 80 00 	st  %g3, [ %g2 ]
 2007150:	82 00 60 04 	add  %g1, 4, %g1
 2007154:	80 a1 00 01 	cmp  %g4, %g1
 2007158:	18 bf ff fc 	bgu  2007148 <__copybits+0x38>
 200715c:	84 00 a0 04 	add  %g2, 4, %g2
 2007160:	82 21 00 0a 	sub  %g4, %o2, %g1
 2007164:	82 00 7f eb 	add  %g1, -21, %g1
 2007168:	82 08 7f fc 	and  %g1, -4, %g1
 200716c:	82 00 60 04 	add  %g1, 4, %g1
 2007170:	90 02 00 01 	add  %o0, %g1, %o0
 2007174:	80 a3 40 08 	cmp  %o5, %o0
 2007178:	08 80 00 07 	bleu  2007194 <__copybits+0x84>
 200717c:	01 00 00 00 	nop 
 2007180:	c0 22 00 00 	clr  [ %o0 ]
 2007184:	90 02 20 04 	add  %o0, 4, %o0
 2007188:	80 a3 40 08 	cmp  %o5, %o0
 200718c:	38 bf ff fe 	bgu,a   2007184 <__copybits+0x74>
 2007190:	c0 22 00 00 	clr  [ %o0 ]
 2007194:	81 c3 e0 08 	retl 
 2007198:	01 00 00 00 	nop 

0200719c <__any_on>:
 200719c:	c8 02 20 10 	ld  [ %o0 + 0x10 ], %g4
 20071a0:	87 3a 60 05 	sra  %o1, 5, %g3
 20071a4:	82 10 00 08 	mov  %o0, %g1
 20071a8:	80 a1 00 03 	cmp  %g4, %g3
 20071ac:	16 80 00 15 	bge  2007200 <__any_on+0x64>
 20071b0:	84 02 20 14 	add  %o0, 0x14, %g2
 20071b4:	86 10 00 04 	mov  %g4, %g3
 20071b8:	86 00 e0 04 	add  %g3, 4, %g3
 20071bc:	91 28 e0 02 	sll  %g3, 2, %o0
 20071c0:	90 00 40 08 	add  %g1, %o0, %o0
 20071c4:	82 02 20 04 	add  %o0, 4, %g1
 20071c8:	80 a0 80 01 	cmp  %g2, %g1
 20071cc:	2a 80 00 08 	bcs,a   20071ec <__any_on+0x50>
 20071d0:	c2 02 00 00 	ld  [ %o0 ], %g1
 20071d4:	81 c3 e0 08 	retl 
 20071d8:	90 10 20 00 	clr  %o0
 20071dc:	3a 80 00 17 	bcc,a   2007238 <__any_on+0x9c>
 20071e0:	90 10 20 00 	clr  %o0
 20071e4:	90 02 3f fc 	add  %o0, -4, %o0
 20071e8:	c2 02 00 00 	ld  [ %o0 ], %g1
 20071ec:	80 a0 60 00 	cmp  %g1, 0
 20071f0:	02 bf ff fb 	be  20071dc <__any_on+0x40>
 20071f4:	80 a0 80 08 	cmp  %g2, %o0
 20071f8:	81 c3 e0 08 	retl 
 20071fc:	90 10 20 01 	mov  1, %o0
 2007200:	24 bf ff ef 	ble,a   20071bc <__any_on+0x20>
 2007204:	86 00 e0 04 	add  %g3, 4, %g3
 2007208:	92 8a 60 1f 	andcc  %o1, 0x1f, %o1
 200720c:	22 bf ff ec 	be,a   20071bc <__any_on+0x20>
 2007210:	86 00 e0 04 	add  %g3, 4, %g3
 2007214:	88 00 e0 04 	add  %g3, 4, %g4
 2007218:	89 29 20 02 	sll  %g4, 2, %g4
 200721c:	88 00 40 04 	add  %g1, %g4, %g4
 2007220:	c8 01 20 04 	ld  [ %g4 + 4 ], %g4
 2007224:	9b 31 00 09 	srl  %g4, %o1, %o5
 2007228:	93 2b 40 09 	sll  %o5, %o1, %o1
 200722c:	80 a2 40 04 	cmp  %o1, %g4
 2007230:	02 bf ff e2 	be  20071b8 <__any_on+0x1c>
 2007234:	90 10 20 01 	mov  1, %o0
 2007238:	81 c3 e0 08 	retl 
 200723c:	01 00 00 00 	nop 

02007240 <__fpclassifyd>:
 2007240:	86 10 20 02 	mov  2, %g3	! 2 <_.xy-0x2>
 2007244:	80 92 40 08 	orcc  %o1, %o0, %g0
 2007248:	12 80 00 04 	bne  2007258 <__fpclassifyd+0x18>
 200724c:	84 10 00 08 	mov  %o0, %g2
 2007250:	81 c3 e0 08 	retl 
 2007254:	90 10 00 03 	mov  %g3, %o0
 2007258:	80 a0 00 09 	cmp  %g0, %o1
 200725c:	82 60 3f ff 	subx  %g0, -1, %g1
 2007260:	80 a0 60 00 	cmp  %g1, 0
 2007264:	02 80 00 05 	be  2007278 <__fpclassifyd+0x38>
 2007268:	09 20 00 00 	sethi  %hi(0x80000000), %g4
 200726c:	80 a2 00 04 	cmp  %o0, %g4
 2007270:	02 bf ff f8 	be  2007250 <__fpclassifyd+0x10>
 2007274:	01 00 00 00 	nop 
 2007278:	07 20 00 00 	sethi  %hi(0x80000000), %g3
 200727c:	1b 3f fc 00 	sethi  %hi(0xfff00000), %o5
 2007280:	84 28 80 03 	andn  %g2, %g3, %g2
 2007284:	09 1f f7 ff 	sethi  %hi(0x7fdffc00), %g4
 2007288:	9a 00 80 0d 	add  %g2, %o5, %o5
 200728c:	88 11 23 ff 	or  %g4, 0x3ff, %g4
 2007290:	80 a3 40 04 	cmp  %o5, %g4
 2007294:	08 bf ff ef 	bleu  2007250 <__fpclassifyd+0x10>
 2007298:	86 10 20 04 	mov  4, %g3
 200729c:	09 00 03 ff 	sethi  %hi(0xffc00), %g4
 20072a0:	88 11 23 ff 	or  %g4, 0x3ff, %g4	! fffff <_.tmp+0xfffbf>
 20072a4:	80 a0 80 04 	cmp  %g2, %g4
 20072a8:	08 bf ff ea 	bleu  2007250 <__fpclassifyd+0x10>
 20072ac:	86 10 20 03 	mov  3, %g3
 20072b0:	07 1f fc 00 	sethi  %hi(0x7ff00000), %g3
 20072b4:	84 18 80 03 	xor  %g2, %g3, %g2
 20072b8:	80 a0 00 02 	cmp  %g0, %g2
 20072bc:	86 60 3f ff 	subx  %g0, -1, %g3
 20072c0:	10 bf ff e4 	b  2007250 <__fpclassifyd+0x10>
 20072c4:	86 08 c0 01 	and  %g3, %g1, %g3

020072c8 <_sbrk_r>:
 20072c8:	9d e3 bf a0 	save  %sp, -96, %sp
 20072cc:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 20072d0:	90 10 00 19 	mov  %i1, %o0
 20072d4:	7f ff e8 93 	call  2001520 <sbrk>
 20072d8:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 20072dc:	80 a2 3f ff 	cmp  %o0, -1
 20072e0:	02 80 00 04 	be  20072f0 <_sbrk_r+0x28>
 20072e4:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 20072e8:	81 c7 e0 08 	ret 
 20072ec:	91 e8 00 08 	restore  %g0, %o0, %o0
 20072f0:	80 a0 60 00 	cmp  %g1, 0
 20072f4:	02 bf ff fd 	be  20072e8 <_sbrk_r+0x20>
 20072f8:	01 00 00 00 	nop 
 20072fc:	c2 26 00 00 	st  %g1, [ %i0 ]
 2007300:	81 c7 e0 08 	ret 
 2007304:	91 e8 00 08 	restore  %g0, %o0, %o0

02007308 <__sread>:
 2007308:	9d e3 bf a0 	save  %sp, -96, %sp
 200730c:	90 10 00 18 	mov  %i0, %o0
 2007310:	d2 56 60 0e 	ldsh  [ %i1 + 0xe ], %o1
 2007314:	94 10 00 1a 	mov  %i2, %o2
 2007318:	40 00 07 27 	call  2008fb4 <_read_r>
 200731c:	96 10 00 1b 	mov  %i3, %o3
 2007320:	b0 92 20 00 	orcc  %o0, 0, %i0
 2007324:	26 80 00 07 	bl,a   2007340 <__sread+0x38>
 2007328:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 200732c:	c2 06 60 50 	ld  [ %i1 + 0x50 ], %g1
 2007330:	82 00 40 18 	add  %g1, %i0, %g1
 2007334:	c2 26 60 50 	st  %g1, [ %i1 + 0x50 ]
 2007338:	81 c7 e0 08 	ret 
 200733c:	81 e8 00 00 	restore 
 2007340:	05 00 00 04 	sethi  %hi(0x1000), %g2
 2007344:	82 28 40 02 	andn  %g1, %g2, %g1
 2007348:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 200734c:	81 c7 e0 08 	ret 
 2007350:	81 e8 00 00 	restore 

02007354 <__seofread>:
 2007354:	81 c3 e0 08 	retl 
 2007358:	90 10 20 00 	clr  %o0

0200735c <__swrite>:
 200735c:	9d e3 bf a0 	save  %sp, -96, %sp
 2007360:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2007364:	80 88 61 00 	btst  0x100, %g1
 2007368:	02 80 00 08 	be  2007388 <__swrite+0x2c>
 200736c:	ba 10 00 19 	mov  %i1, %i5
 2007370:	90 10 00 18 	mov  %i0, %o0
 2007374:	d2 56 60 0e 	ldsh  [ %i1 + 0xe ], %o1
 2007378:	94 10 20 00 	clr  %o2
 200737c:	40 00 06 aa 	call  2008e24 <_lseek_r>
 2007380:	96 10 20 02 	mov  2, %o3
 2007384:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2007388:	05 00 00 04 	sethi  %hi(0x1000), %g2
 200738c:	f2 57 60 0e 	ldsh  [ %i5 + 0xe ], %i1
 2007390:	82 28 40 02 	andn  %g1, %g2, %g1
 2007394:	c2 37 60 0c 	sth  %g1, [ %i5 + 0xc ]
 2007398:	40 00 04 5c 	call  2008508 <_write_r>
 200739c:	81 e8 00 00 	restore 

020073a0 <__sseek>:
 20073a0:	9d e3 bf a0 	save  %sp, -96, %sp
 20073a4:	90 10 00 18 	mov  %i0, %o0
 20073a8:	d2 56 60 0e 	ldsh  [ %i1 + 0xe ], %o1
 20073ac:	94 10 00 1a 	mov  %i2, %o2
 20073b0:	40 00 06 9d 	call  2008e24 <_lseek_r>
 20073b4:	96 10 00 1b 	mov  %i3, %o3
 20073b8:	80 a2 3f ff 	cmp  %o0, -1
 20073bc:	02 80 00 09 	be  20073e0 <__sseek+0x40>
 20073c0:	b0 10 00 08 	mov  %o0, %i0
 20073c4:	c4 16 60 0c 	lduh  [ %i1 + 0xc ], %g2
 20073c8:	d0 26 60 50 	st  %o0, [ %i1 + 0x50 ]
 20073cc:	03 00 00 04 	sethi  %hi(0x1000), %g1
 20073d0:	82 10 80 01 	or  %g2, %g1, %g1
 20073d4:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 20073d8:	81 c7 e0 08 	ret 
 20073dc:	81 e8 00 00 	restore 
 20073e0:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20073e4:	05 00 00 04 	sethi  %hi(0x1000), %g2
 20073e8:	82 28 40 02 	andn  %g1, %g2, %g1
 20073ec:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 20073f0:	81 c7 e0 08 	ret 
 20073f4:	81 e8 00 00 	restore 

020073f8 <__sclose>:
 20073f8:	d2 52 60 0e 	ldsh  [ %o1 + 0xe ], %o1
 20073fc:	82 13 c0 00 	mov  %o7, %g1
 2007400:	40 00 04 7c 	call  20085f0 <_close_r>
 2007404:	9e 10 40 00 	mov  %g1, %o7

02007408 <strcmp>:
 2007408:	82 12 40 08 	or  %o1, %o0, %g1
 200740c:	80 88 60 03 	btst  3, %g1
 2007410:	32 80 00 22 	bne,a   2007498 <strcmp+0x90>
 2007414:	c2 4a 00 00 	ldsb  [ %o0 ], %g1
 2007418:	c2 02 00 00 	ld  [ %o0 ], %g1
 200741c:	c4 02 40 00 	ld  [ %o1 ], %g2
 2007420:	80 a0 40 02 	cmp  %g1, %g2
 2007424:	12 80 00 1c 	bne  2007494 <strcmp+0x8c>
 2007428:	09 3f bf bf 	sethi  %hi(0xfefefc00), %g4
 200742c:	07 20 20 20 	sethi  %hi(0x80808000), %g3
 2007430:	88 11 22 ff 	or  %g4, 0x2ff, %g4
 2007434:	86 10 e0 80 	or  %g3, 0x80, %g3
 2007438:	84 00 40 04 	add  %g1, %g4, %g2
 200743c:	82 28 80 01 	andn  %g2, %g1, %g1
 2007440:	80 88 40 03 	btst  %g1, %g3
 2007444:	12 80 00 0d 	bne  2007478 <strcmp+0x70>
 2007448:	01 00 00 00 	nop 
 200744c:	90 02 20 04 	add  %o0, 4, %o0
 2007450:	92 02 60 04 	add  %o1, 4, %o1
 2007454:	c2 02 00 00 	ld  [ %o0 ], %g1
 2007458:	c4 02 40 00 	ld  [ %o1 ], %g2
 200745c:	80 a0 40 02 	cmp  %g1, %g2
 2007460:	12 80 00 0d 	bne  2007494 <strcmp+0x8c>
 2007464:	84 00 40 04 	add  %g1, %g4, %g2
 2007468:	82 28 80 01 	andn  %g2, %g1, %g1
 200746c:	80 88 40 03 	btst  %g1, %g3
 2007470:	22 bf ff f8 	be,a   2007450 <strcmp+0x48>
 2007474:	90 02 20 04 	add  %o0, 4, %o0
 2007478:	81 c3 e0 08 	retl 
 200747c:	90 10 20 00 	clr  %o0
 2007480:	80 a0 40 02 	cmp  %g1, %g2
 2007484:	32 80 00 09 	bne,a   20074a8 <strcmp+0xa0>
 2007488:	d0 0a 00 00 	ldub  [ %o0 ], %o0
 200748c:	90 02 20 01 	inc  %o0
 2007490:	92 02 60 01 	inc  %o1
 2007494:	c2 4a 00 00 	ldsb  [ %o0 ], %g1
 2007498:	80 a0 60 00 	cmp  %g1, 0
 200749c:	32 bf ff f9 	bne,a   2007480 <strcmp+0x78>
 20074a0:	c4 4a 40 00 	ldsb  [ %o1 ], %g2
 20074a4:	d0 0a 00 00 	ldub  [ %o0 ], %o0
 20074a8:	c2 0a 40 00 	ldub  [ %o1 ], %g1
 20074ac:	81 c3 e0 08 	retl 
 20074b0:	90 22 00 01 	sub  %o0, %g1, %o0

020074b4 <strlen>:
 20074b4:	80 8a 20 03 	btst  3, %o0
 20074b8:	02 80 00 0f 	be  20074f4 <strlen+0x40>
 20074bc:	82 10 00 08 	mov  %o0, %g1
 20074c0:	c2 4a 00 00 	ldsb  [ %o0 ], %g1
 20074c4:	80 a0 60 00 	cmp  %g1, 0
 20074c8:	02 80 00 2b 	be  2007574 <strlen+0xc0>
 20074cc:	82 10 00 08 	mov  %o0, %g1
 20074d0:	10 80 00 06 	b  20074e8 <strlen+0x34>
 20074d4:	82 00 60 01 	inc  %g1
 20074d8:	80 a0 a0 00 	cmp  %g2, 0
 20074dc:	02 80 00 24 	be  200756c <strlen+0xb8>
 20074e0:	01 00 00 00 	nop 
 20074e4:	82 00 60 01 	inc  %g1
 20074e8:	80 88 60 03 	btst  3, %g1
 20074ec:	32 bf ff fb 	bne,a   20074d8 <strlen+0x24>
 20074f0:	c4 48 40 00 	ldsb  [ %g1 ], %g2
 20074f4:	c4 00 40 00 	ld  [ %g1 ], %g2
 20074f8:	1b 3f bf bf 	sethi  %hi(0xfefefc00), %o5
 20074fc:	09 20 20 20 	sethi  %hi(0x80808000), %g4
 2007500:	9a 13 62 ff 	or  %o5, 0x2ff, %o5
 2007504:	88 11 20 80 	or  %g4, 0x80, %g4
 2007508:	86 00 80 0d 	add  %g2, %o5, %g3
 200750c:	84 28 c0 02 	andn  %g3, %g2, %g2
 2007510:	80 88 80 04 	btst  %g2, %g4
 2007514:	32 80 00 13 	bne,a   2007560 <strlen+0xac>
 2007518:	c4 48 40 00 	ldsb  [ %g1 ], %g2
 200751c:	82 00 60 04 	add  %g1, 4, %g1
 2007520:	c4 00 40 00 	ld  [ %g1 ], %g2
 2007524:	86 00 80 0d 	add  %g2, %o5, %g3
 2007528:	84 28 c0 02 	andn  %g3, %g2, %g2
 200752c:	80 88 80 04 	btst  %g2, %g4
 2007530:	32 80 00 0c 	bne,a   2007560 <strlen+0xac>
 2007534:	c4 48 40 00 	ldsb  [ %g1 ], %g2
 2007538:	82 00 60 04 	add  %g1, 4, %g1
 200753c:	c4 00 40 00 	ld  [ %g1 ], %g2
 2007540:	86 00 80 0d 	add  %g2, %o5, %g3
 2007544:	84 28 c0 02 	andn  %g3, %g2, %g2
 2007548:	80 88 80 04 	btst  %g2, %g4
 200754c:	22 bf ff f5 	be,a   2007520 <strlen+0x6c>
 2007550:	82 00 60 04 	add  %g1, 4, %g1
 2007554:	10 80 00 03 	b  2007560 <strlen+0xac>
 2007558:	c4 48 40 00 	ldsb  [ %g1 ], %g2
 200755c:	c4 48 40 00 	ldsb  [ %g1 ], %g2
 2007560:	80 a0 a0 00 	cmp  %g2, 0
 2007564:	32 bf ff fe 	bne,a   200755c <strlen+0xa8>
 2007568:	82 00 60 01 	inc  %g1
 200756c:	81 c3 e0 08 	retl 
 2007570:	90 20 40 08 	sub  %g1, %o0, %o0
 2007574:	81 c3 e0 08 	retl 
 2007578:	90 10 20 00 	clr  %o0
 200757c:	02 00 7f bc 	unknown
 2007580:	02 00 79 24 	unknown
 2007584:	02 00 79 24 	unknown
 2007588:	02 00 7f b4 	unknown
 200758c:	02 00 79 24 	unknown
 2007590:	02 00 79 24 	unknown
 2007594:	02 00 79 24 	unknown
 2007598:	02 00 79 24 	unknown
 200759c:	02 00 79 24 	unknown
 20075a0:	02 00 79 24 	unknown
 20075a4:	02 00 7e 30 	unknown
 20075a8:	02 00 7e ac 	unknown
 20075ac:	02 00 79 24 	unknown
 20075b0:	02 00 7e 4c 	unknown
 20075b4:	02 00 7e 54 	unknown
 20075b8:	02 00 79 24 	unknown
 20075bc:	02 00 80 84 	unknown
 20075c0:	02 00 80 50 	unknown
 20075c4:	02 00 80 50 	unknown
 20075c8:	02 00 80 50 	unknown
 20075cc:	02 00 80 50 	unknown
 20075d0:	02 00 80 50 	unknown
 20075d4:	02 00 80 50 	unknown
 20075d8:	02 00 80 50 	unknown
 20075dc:	02 00 80 50 	unknown
 20075e0:	02 00 80 50 	unknown
 20075e4:	02 00 79 24 	unknown
 20075e8:	02 00 79 24 	unknown
 20075ec:	02 00 79 24 	unknown
 20075f0:	02 00 79 24 	unknown
 20075f4:	02 00 79 24 	unknown
 20075f8:	02 00 79 24 	unknown
 20075fc:	02 00 79 24 	unknown
 2007600:	02 00 79 24 	unknown
 2007604:	02 00 79 24 	unknown
 2007608:	02 00 79 24 	unknown
 200760c:	02 00 80 44 	unknown
 2007610:	02 00 79 24 	unknown
 2007614:	02 00 79 24 	unknown
 2007618:	02 00 79 24 	unknown
 200761c:	02 00 79 24 	unknown
 2007620:	02 00 79 24 	unknown
 2007624:	02 00 79 24 	unknown
 2007628:	02 00 79 24 	unknown
 200762c:	02 00 79 24 	unknown
 2007630:	02 00 79 24 	unknown
 2007634:	02 00 79 24 	unknown
 2007638:	02 00 79 88 	unknown
 200763c:	02 00 79 24 	unknown
 2007640:	02 00 79 24 	unknown
 2007644:	02 00 79 24 	unknown
 2007648:	02 00 79 24 	unknown
 200764c:	02 00 79 24 	unknown
 2007650:	02 00 7d d4 	unknown
 2007654:	02 00 79 24 	unknown
 2007658:	02 00 79 24 	unknown
 200765c:	02 00 80 34 	unknown
 2007660:	02 00 79 24 	unknown
 2007664:	02 00 79 24 	unknown
 2007668:	02 00 79 24 	unknown
 200766c:	02 00 79 24 	unknown
 2007670:	02 00 79 24 	unknown
 2007674:	02 00 79 24 	unknown
 2007678:	02 00 79 24 	unknown
 200767c:	02 00 79 24 	unknown
 2007680:	02 00 79 24 	unknown
 2007684:	02 00 79 24 	unknown
 2007688:	02 00 80 10 	unknown
 200768c:	02 00 7f d0 	unknown
 2007690:	02 00 79 24 	unknown
 2007694:	02 00 79 24 	unknown
 2007698:	02 00 79 24 	unknown
 200769c:	02 00 7f 88 	unknown
 20076a0:	02 00 7f d0 	unknown
 20076a4:	02 00 79 24 	unknown
 20076a8:	02 00 79 24 	unknown
 20076ac:	02 00 79 80 	unknown
 20076b0:	02 00 79 24 	unknown
 20076b4:	02 00 7f 90 	unknown
 20076b8:	02 00 79 8c 	unknown
 20076bc:	02 00 7f 0c 	unknown
 20076c0:	02 00 79 80 	unknown
 20076c4:	02 00 79 24 	unknown
 20076c8:	02 00 7e b4 	unknown
 20076cc:	02 00 79 24 	unknown
 20076d0:	02 00 7d d8 	unknown
 20076d4:	02 00 79 24 	unknown
 20076d8:	02 00 79 24 	unknown
 20076dc:	02 00 7f 44 	unknown

020076e0 <__sprint_r>:
 20076e0:	9d e3 bf a0 	save  %sp, -96, %sp
 20076e4:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 20076e8:	80 a0 60 00 	cmp  %g1, 0
 20076ec:	02 80 00 27 	be  2007788 <__sprint_r+0xa8>
 20076f0:	05 00 00 08 	sethi  %hi(0x2000), %g2
 20076f4:	c6 06 60 64 	ld  [ %i1 + 0x64 ], %g3
 20076f8:	80 88 c0 02 	btst  %g3, %g2
 20076fc:	02 80 00 26 	be  2007794 <__sprint_r+0xb4>
 2007700:	90 10 00 18 	mov  %i0, %o0
 2007704:	e0 06 80 00 	ld  [ %i2 ], %l0
 2007708:	f8 04 20 04 	ld  [ %l0 + 4 ], %i4
 200770c:	f6 04 00 00 	ld  [ %l0 ], %i3
 2007710:	b9 37 20 02 	srl  %i4, 2, %i4
 2007714:	80 a7 20 00 	cmp  %i4, 0
 2007718:	14 80 00 07 	bg  2007734 <__sprint_r+0x54>
 200771c:	ba 10 20 00 	clr  %i5
 2007720:	10 80 00 13 	b  200776c <__sprint_r+0x8c>
 2007724:	b9 2f 20 02 	sll  %i4, 2, %i4
 2007728:	80 a7 00 1d 	cmp  %i4, %i5
 200772c:	22 80 00 0f 	be,a   2007768 <__sprint_r+0x88>
 2007730:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2007734:	83 2f 60 02 	sll  %i5, 2, %g1
 2007738:	90 10 00 18 	mov  %i0, %o0
 200773c:	d2 06 c0 01 	ld  [ %i3 + %g1 ], %o1
 2007740:	40 00 04 02 	call  2008748 <_fputwc_r>
 2007744:	94 10 00 19 	mov  %i1, %o2
 2007748:	80 a2 3f ff 	cmp  %o0, -1
 200774c:	32 bf ff f7 	bne,a   2007728 <__sprint_r+0x48>
 2007750:	ba 07 60 01 	inc  %i5
 2007754:	b0 10 3f ff 	mov  -1, %i0
 2007758:	c0 26 a0 08 	clr  [ %i2 + 8 ]
 200775c:	c0 26 a0 04 	clr  [ %i2 + 4 ]
 2007760:	81 c7 e0 08 	ret 
 2007764:	81 e8 00 00 	restore 
 2007768:	b9 2f 20 02 	sll  %i4, 2, %i4
 200776c:	82 20 40 1c 	sub  %g1, %i4, %g1
 2007770:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
 2007774:	80 a0 60 00 	cmp  %g1, 0
 2007778:	12 bf ff e4 	bne  2007708 <__sprint_r+0x28>
 200777c:	a0 04 20 08 	add  %l0, 8, %l0
 2007780:	10 bf ff f6 	b  2007758 <__sprint_r+0x78>
 2007784:	b0 10 20 00 	clr  %i0
 2007788:	c0 26 a0 04 	clr  [ %i2 + 4 ]
 200778c:	81 c7 e0 08 	ret 
 2007790:	91 e8 20 00 	restore  %g0, 0, %o0
 2007794:	92 10 00 19 	mov  %i1, %o1
 2007798:	40 00 04 62 	call  2008920 <__sfvwrite_r>
 200779c:	94 10 00 1a 	mov  %i2, %o2
 20077a0:	c0 26 a0 08 	clr  [ %i2 + 8 ]
 20077a4:	c0 26 a0 04 	clr  [ %i2 + 4 ]
 20077a8:	81 c7 e0 08 	ret 
 20077ac:	91 e8 00 08 	restore  %g0, %o0, %o0

020077b0 <_vfiprintf_r>:
 20077b0:	9d e3 ba c8 	save  %sp, -1336, %sp
 20077b4:	a2 96 20 00 	orcc  %i0, 0, %l1
 20077b8:	22 80 00 07 	be,a   20077d4 <_vfiprintf_r+0x24>
 20077bc:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20077c0:	c2 04 60 38 	ld  [ %l1 + 0x38 ], %g1
 20077c4:	80 a0 60 00 	cmp  %g1, 0
 20077c8:	02 80 02 d5 	be  200831c <_vfiprintf_r+0xb6c>
 20077cc:	01 00 00 00 	nop 
 20077d0:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20077d4:	05 00 00 08 	sethi  %hi(0x2000), %g2
 20077d8:	80 88 80 01 	btst  %g2, %g1
 20077dc:	12 80 00 0a 	bne  2007804 <_vfiprintf_r+0x54>
 20077e0:	80 88 60 08 	btst  8, %g1
 20077e4:	84 10 40 02 	or  %g1, %g2, %g2
 20077e8:	c6 06 60 64 	ld  [ %i1 + 0x64 ], %g3
 20077ec:	09 00 00 08 	sethi  %hi(0x2000), %g4
 20077f0:	82 10 00 02 	mov  %g2, %g1
 20077f4:	86 28 c0 04 	andn  %g3, %g4, %g3
 20077f8:	c4 36 60 0c 	sth  %g2, [ %i1 + 0xc ]
 20077fc:	c6 26 60 64 	st  %g3, [ %i1 + 0x64 ]
 2007800:	80 88 60 08 	btst  8, %g1
 2007804:	02 80 02 7e 	be  20081fc <_vfiprintf_r+0xa4c>
 2007808:	90 10 00 11 	mov  %l1, %o0
 200780c:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2007810:	80 a0 a0 00 	cmp  %g2, 0
 2007814:	02 80 02 7a 	be  20081fc <_vfiprintf_r+0xa4c>
 2007818:	84 08 60 1a 	and  %g1, 0x1a, %g2
 200781c:	80 a0 a0 0a 	cmp  %g2, 0xa
 2007820:	22 80 02 82 	be,a   2008228 <_vfiprintf_r+0xa78>
 2007824:	c4 56 60 0e 	ldsh  [ %i1 + 0xe ], %g2
 2007828:	a4 07 bc 00 	add  %fp, -1024, %l2
 200782c:	82 07 bb 98 	add  %fp, -1128, %g1
 2007830:	84 07 bb 97 	add  %fp, -1129, %g2
 2007834:	39 00 80 28 	sethi  %hi(0x200a000), %i4
 2007838:	88 20 40 02 	sub  %g1, %g2, %g4
 200783c:	3b 00 80 28 	sethi  %hi(0x200a000), %i5
 2007840:	c2 27 bb 54 	st  %g1, [ %fp + -1196 ]
 2007844:	c4 27 bb 50 	st  %g2, [ %fp + -1200 ]
 2007848:	e4 27 bb 64 	st  %l2, [ %fp + -1180 ]
 200784c:	c0 27 bb 6c 	clr  [ %fp + -1172 ]
 2007850:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 2007854:	c0 27 bb 3c 	clr  [ %fp + -1220 ]
 2007858:	b0 10 20 00 	clr  %i0
 200785c:	86 10 00 12 	mov  %l2, %g3
 2007860:	c8 27 bb 34 	st  %g4, [ %fp + -1228 ]
 2007864:	b8 17 23 60 	or  %i4, 0x360, %i4
 2007868:	ba 17 63 70 	or  %i5, 0x370, %i5
 200786c:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2007870:	80 a0 60 25 	cmp  %g1, 0x25
 2007874:	02 80 00 1c 	be  20078e4 <_vfiprintf_r+0x134>
 2007878:	a0 10 00 1a 	mov  %i2, %l0
 200787c:	80 a0 60 00 	cmp  %g1, 0
 2007880:	32 80 00 07 	bne,a   200789c <_vfiprintf_r+0xec>
 2007884:	a0 04 20 01 	inc  %l0
 2007888:	10 80 00 18 	b  20078e8 <_vfiprintf_r+0x138>
 200788c:	c2 4c 00 00 	ldsb  [ %l0 ], %g1
 2007890:	02 80 00 08 	be  20078b0 <_vfiprintf_r+0x100>
 2007894:	a6 a4 00 1a 	subcc  %l0, %i2, %l3
 2007898:	a0 04 20 01 	inc  %l0
 200789c:	c2 4c 00 00 	ldsb  [ %l0 ], %g1
 20078a0:	80 a0 60 25 	cmp  %g1, 0x25
 20078a4:	12 bf ff fb 	bne  2007890 <_vfiprintf_r+0xe0>
 20078a8:	80 a0 60 00 	cmp  %g1, 0
 20078ac:	a6 a4 00 1a 	subcc  %l0, %i2, %l3
 20078b0:	02 80 00 0d 	be  20078e4 <_vfiprintf_r+0x134>
 20078b4:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 20078b8:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 20078bc:	84 00 80 13 	add  %g2, %l3, %g2
 20078c0:	82 00 60 01 	inc  %g1
 20078c4:	f4 20 c0 00 	st  %i2, [ %g3 ]
 20078c8:	e6 20 e0 04 	st  %l3, [ %g3 + 4 ]
 20078cc:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 20078d0:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 20078d4:	80 a0 60 07 	cmp  %g1, 7
 20078d8:	14 80 00 21 	bg  200795c <_vfiprintf_r+0x1ac>
 20078dc:	86 00 e0 08 	add  %g3, 8, %g3
 20078e0:	b0 06 00 13 	add  %i0, %l3, %i0
 20078e4:	c2 4c 00 00 	ldsb  [ %l0 ], %g1
 20078e8:	80 a0 60 00 	cmp  %g1, 0
 20078ec:	02 80 02 d4 	be  200843c <_vfiprintf_r+0xc8c>
 20078f0:	b4 04 20 01 	add  %l0, 1, %i2
 20078f4:	c0 2f bb 5f 	clrb  [ %fp + -1185 ]
 20078f8:	9a 10 20 00 	clr  %o5
 20078fc:	ae 10 3f ff 	mov  -1, %l7
 2007900:	c0 27 bb 4c 	clr  [ %fp + -1204 ]
 2007904:	a0 10 20 00 	clr  %l0
 2007908:	09 00 80 1d 	sethi  %hi(0x2007400), %g4
 200790c:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2007910:	b4 06 a0 01 	inc  %i2
 2007914:	84 00 7f e0 	add  %g1, -32, %g2
 2007918:	80 a0 a0 58 	cmp  %g2, 0x58
 200791c:	08 80 00 0c 	bleu  200794c <_vfiprintf_r+0x19c>
 2007920:	9e 11 21 7c 	or  %g4, 0x17c, %o7
 2007924:	80 a0 60 00 	cmp  %g1, 0
 2007928:	02 80 02 c5 	be  200843c <_vfiprintf_r+0xc8c>
 200792c:	da 2f bb 5f 	stb  %o5, [ %fp + -1185 ]
 2007930:	c2 2f bb 70 	stb  %g1, [ %fp + -1168 ]
 2007934:	c0 2f bb 5f 	clrb  [ %fp + -1185 ]
 2007938:	a8 10 20 01 	mov  1, %l4
 200793c:	aa 10 20 01 	mov  1, %l5
 2007940:	a6 07 bb 70 	add  %fp, -1168, %l3
 2007944:	10 80 00 4b 	b  2007a70 <_vfiprintf_r+0x2c0>
 2007948:	c0 27 bb 44 	clr  [ %fp + -1212 ]
 200794c:	85 28 a0 02 	sll  %g2, 2, %g2
 2007950:	c4 03 c0 02 	ld  [ %o7 + %g2 ], %g2
 2007954:	81 c0 80 00 	jmp  %g2
 2007958:	01 00 00 00 	nop 
 200795c:	90 10 00 11 	mov  %l1, %o0
 2007960:	92 10 00 19 	mov  %i1, %o1
 2007964:	7f ff ff 5f 	call  20076e0 <__sprint_r>
 2007968:	94 07 bb 64 	add  %fp, -1180, %o2
 200796c:	80 a2 20 00 	cmp  %o0, 0
 2007970:	12 80 01 ce 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007974:	86 10 00 12 	mov  %l2, %g3
 2007978:	10 bf ff db 	b  20078e4 <_vfiprintf_r+0x134>
 200797c:	b0 06 00 13 	add  %i0, %l3, %i0
 2007980:	10 bf ff e3 	b  200790c <_vfiprintf_r+0x15c>
 2007984:	a0 14 20 10 	or  %l0, 0x10, %l0
 2007988:	a0 14 20 10 	or  %l0, 0x10, %l0
 200798c:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007990:	80 8c 20 10 	btst  0x10, %l0
 2007994:	12 80 01 18 	bne  2007df4 <_vfiprintf_r+0x644>
 2007998:	82 10 20 00 	clr  %g1
 200799c:	80 8c 20 40 	btst  0x40, %l0
 20079a0:	02 80 01 16 	be  2007df8 <_vfiprintf_r+0x648>
 20079a4:	80 a0 00 14 	cmp  %g0, %l4
 20079a8:	05 00 00 3f 	sethi  %hi(0xfc00), %g2
 20079ac:	b6 06 e0 04 	add  %i3, 4, %i3
 20079b0:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
 20079b4:	a8 0d 00 02 	and  %l4, %g2, %l4
 20079b8:	80 a0 00 14 	cmp  %g0, %l4
 20079bc:	88 40 20 00 	addx  %g0, 0, %g4
 20079c0:	c0 2f bb 5f 	clrb  [ %fp + -1185 ]
 20079c4:	ac 10 20 00 	clr  %l6
 20079c8:	80 a5 e0 00 	cmp  %l7, 0
 20079cc:	36 80 00 03 	bge,a   20079d8 <_vfiprintf_r+0x228>
 20079d0:	a0 0c 3f 7f 	and  %l0, -129, %l0
 20079d4:	80 a5 e0 00 	cmp  %l7, 0
 20079d8:	32 80 00 06 	bne,a   20079f0 <_vfiprintf_r+0x240>
 20079dc:	82 08 60 ff 	and  %g1, 0xff, %g1
 20079e0:	80 89 20 ff 	btst  0xff, %g4
 20079e4:	02 80 01 b7 	be  20080c0 <_vfiprintf_r+0x910>
 20079e8:	80 88 60 ff 	btst  0xff, %g1
 20079ec:	82 08 60 ff 	and  %g1, 0xff, %g1
 20079f0:	80 a0 60 01 	cmp  %g1, 1
 20079f4:	02 80 02 4e 	be  200832c <_vfiprintf_r+0xb7c>
 20079f8:	80 a0 60 02 	cmp  %g1, 2
 20079fc:	02 80 01 02 	be  2007e04 <_vfiprintf_r+0x654>
 2007a00:	a6 07 bb 98 	add  %fp, -1128, %l3
 2007a04:	82 0d 20 07 	and  %l4, 7, %g1
 2007a08:	a6 04 ff ff 	add  %l3, -1, %l3
 2007a0c:	82 00 60 30 	add  %g1, 0x30, %g1
 2007a10:	a9 35 20 03 	srl  %l4, 3, %l4
 2007a14:	80 a5 20 00 	cmp  %l4, 0
 2007a18:	12 bf ff fb 	bne  2007a04 <_vfiprintf_r+0x254>
 2007a1c:	c2 2c c0 00 	stb  %g1, [ %l3 ]
 2007a20:	80 8c 20 01 	btst  1, %l0
 2007a24:	02 80 01 00 	be  2007e24 <_vfiprintf_r+0x674>
 2007a28:	88 10 00 13 	mov  %l3, %g4
 2007a2c:	82 08 60 7f 	and  %g1, 0x7f, %g1
 2007a30:	80 a0 60 30 	cmp  %g1, 0x30
 2007a34:	02 80 02 a0 	be  20084b4 <_vfiprintf_r+0xd04>
 2007a38:	c4 07 bb 54 	ld  [ %fp + -1196 ], %g2
 2007a3c:	a6 04 ff ff 	add  %l3, -1, %l3
 2007a40:	82 10 20 30 	mov  0x30, %g1
 2007a44:	aa 20 80 13 	sub  %g2, %l3, %l5
 2007a48:	c2 29 3f ff 	stb  %g1, [ %g4 + -1 ]
 2007a4c:	ee 27 bb 44 	st  %l7, [ %fp + -1212 ]
 2007a50:	c2 07 bb 44 	ld  [ %fp + -1212 ], %g1
 2007a54:	80 a5 40 01 	cmp  %l5, %g1
 2007a58:	16 80 00 03 	bge  2007a64 <_vfiprintf_r+0x2b4>
 2007a5c:	a8 10 00 15 	mov  %l5, %l4
 2007a60:	a8 10 00 01 	mov  %g1, %l4
 2007a64:	83 2d a0 18 	sll  %l6, 0x18, %g1
 2007a68:	80 a0 00 01 	cmp  %g0, %g1
 2007a6c:	a8 40 00 14 	addx  %g0, %l4, %l4
 2007a70:	84 8c 20 02 	andcc  %l0, 2, %g2
 2007a74:	02 80 00 03 	be  2007a80 <_vfiprintf_r+0x2d0>
 2007a78:	c4 27 bb 48 	st  %g2, [ %fp + -1208 ]
 2007a7c:	a8 05 20 02 	add  %l4, 2, %l4
 2007a80:	88 8c 20 84 	andcc  %l0, 0x84, %g4
 2007a84:	12 80 00 38 	bne  2007b64 <_vfiprintf_r+0x3b4>
 2007a88:	c8 27 bb 40 	st  %g4, [ %fp + -1216 ]
 2007a8c:	c2 07 bb 4c 	ld  [ %fp + -1204 ], %g1
 2007a90:	ac 20 40 14 	sub  %g1, %l4, %l6
 2007a94:	80 a5 a0 00 	cmp  %l6, 0
 2007a98:	04 80 00 33 	ble  2007b64 <_vfiprintf_r+0x3b4>
 2007a9c:	80 a5 a0 10 	cmp  %l6, 0x10
 2007aa0:	f8 27 bb 38 	st  %i4, [ %fp + -1224 ]
 2007aa4:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007aa8:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007aac:	14 80 00 08 	bg  2007acc <_vfiprintf_r+0x31c>
 2007ab0:	ae 10 20 10 	mov  0x10, %l7
 2007ab4:	10 80 00 1c 	b  2007b24 <_vfiprintf_r+0x374>
 2007ab8:	82 00 60 01 	inc  %g1
 2007abc:	ac 05 bf f0 	add  %l6, -16, %l6
 2007ac0:	80 a5 a0 10 	cmp  %l6, 0x10
 2007ac4:	24 80 00 18 	ble,a   2007b24 <_vfiprintf_r+0x374>
 2007ac8:	82 00 60 01 	inc  %g1
 2007acc:	82 00 60 01 	inc  %g1
 2007ad0:	84 00 a0 10 	add  %g2, 0x10, %g2
 2007ad4:	f8 20 c0 00 	st  %i4, [ %g3 ]
 2007ad8:	ee 20 e0 04 	st  %l7, [ %g3 + 4 ]
 2007adc:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007ae0:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007ae4:	80 a0 60 07 	cmp  %g1, 7
 2007ae8:	04 bf ff f5 	ble  2007abc <_vfiprintf_r+0x30c>
 2007aec:	86 00 e0 08 	add  %g3, 8, %g3
 2007af0:	90 10 00 11 	mov  %l1, %o0
 2007af4:	92 10 00 19 	mov  %i1, %o1
 2007af8:	7f ff fe fa 	call  20076e0 <__sprint_r>
 2007afc:	94 07 bb 64 	add  %fp, -1180, %o2
 2007b00:	80 a2 20 00 	cmp  %o0, 0
 2007b04:	12 80 01 69 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007b08:	ac 05 bf f0 	add  %l6, -16, %l6
 2007b0c:	86 10 00 12 	mov  %l2, %g3
 2007b10:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007b14:	80 a5 a0 10 	cmp  %l6, 0x10
 2007b18:	14 bf ff ed 	bg  2007acc <_vfiprintf_r+0x31c>
 2007b1c:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007b20:	82 00 60 01 	inc  %g1
 2007b24:	84 00 80 16 	add  %g2, %l6, %g2
 2007b28:	c8 07 bb 38 	ld  [ %fp + -1224 ], %g4
 2007b2c:	ec 20 e0 04 	st  %l6, [ %g3 + 4 ]
 2007b30:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2007b34:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007b38:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007b3c:	80 a0 60 07 	cmp  %g1, 7
 2007b40:	04 80 00 0b 	ble  2007b6c <_vfiprintf_r+0x3bc>
 2007b44:	86 00 e0 08 	add  %g3, 8, %g3
 2007b48:	90 10 00 11 	mov  %l1, %o0
 2007b4c:	92 10 00 19 	mov  %i1, %o1
 2007b50:	7f ff fe e4 	call  20076e0 <__sprint_r>
 2007b54:	94 07 bb 64 	add  %fp, -1180, %o2
 2007b58:	80 a2 20 00 	cmp  %o0, 0
 2007b5c:	12 80 01 53 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007b60:	86 10 00 12 	mov  %l2, %g3
 2007b64:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007b68:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007b6c:	c8 4f bb 5f 	ldsb  [ %fp + -1185 ], %g4
 2007b70:	80 a1 20 00 	cmp  %g4, 0
 2007b74:	02 80 00 0e 	be  2007bac <_vfiprintf_r+0x3fc>
 2007b78:	c8 07 bb 48 	ld  [ %fp + -1208 ], %g4
 2007b7c:	88 07 bb 5f 	add  %fp, -1185, %g4
 2007b80:	82 00 60 01 	inc  %g1
 2007b84:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2007b88:	84 00 a0 01 	inc  %g2
 2007b8c:	88 10 20 01 	mov  1, %g4
 2007b90:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007b94:	c8 20 e0 04 	st  %g4, [ %g3 + 4 ]
 2007b98:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007b9c:	80 a0 60 07 	cmp  %g1, 7
 2007ba0:	14 80 01 cb 	bg  20082cc <_vfiprintf_r+0xb1c>
 2007ba4:	86 00 e0 08 	add  %g3, 8, %g3
 2007ba8:	c8 07 bb 48 	ld  [ %fp + -1208 ], %g4
 2007bac:	80 a1 20 00 	cmp  %g4, 0
 2007bb0:	02 80 00 0e 	be  2007be8 <_vfiprintf_r+0x438>
 2007bb4:	c8 07 bb 40 	ld  [ %fp + -1216 ], %g4
 2007bb8:	88 07 bb 60 	add  %fp, -1184, %g4
 2007bbc:	82 00 60 01 	inc  %g1
 2007bc0:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2007bc4:	84 00 a0 02 	add  %g2, 2, %g2
 2007bc8:	88 10 20 02 	mov  2, %g4
 2007bcc:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007bd0:	c8 20 e0 04 	st  %g4, [ %g3 + 4 ]
 2007bd4:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007bd8:	80 a0 60 07 	cmp  %g1, 7
 2007bdc:	14 80 01 c6 	bg  20082f4 <_vfiprintf_r+0xb44>
 2007be0:	86 00 e0 08 	add  %g3, 8, %g3
 2007be4:	c8 07 bb 40 	ld  [ %fp + -1216 ], %g4
 2007be8:	80 a1 20 80 	cmp  %g4, 0x80
 2007bec:	02 80 01 41 	be  20080f0 <_vfiprintf_r+0x940>
 2007bf0:	c8 07 bb 4c 	ld  [ %fp + -1204 ], %g4
 2007bf4:	c8 07 bb 44 	ld  [ %fp + -1212 ], %g4
 2007bf8:	ae 21 00 15 	sub  %g4, %l5, %l7
 2007bfc:	80 a5 e0 00 	cmp  %l7, 0
 2007c00:	04 80 00 33 	ble  2007ccc <_vfiprintf_r+0x51c>
 2007c04:	80 a5 e0 10 	cmp  %l7, 0x10
 2007c08:	fa 27 bb 48 	st  %i5, [ %fp + -1208 ]
 2007c0c:	14 80 00 08 	bg  2007c2c <_vfiprintf_r+0x47c>
 2007c10:	ac 10 20 10 	mov  0x10, %l6
 2007c14:	10 80 00 1c 	b  2007c84 <_vfiprintf_r+0x4d4>
 2007c18:	82 00 60 01 	inc  %g1
 2007c1c:	ae 05 ff f0 	add  %l7, -16, %l7
 2007c20:	80 a5 e0 10 	cmp  %l7, 0x10
 2007c24:	24 80 00 18 	ble,a   2007c84 <_vfiprintf_r+0x4d4>
 2007c28:	82 00 60 01 	inc  %g1
 2007c2c:	82 00 60 01 	inc  %g1
 2007c30:	84 00 a0 10 	add  %g2, 0x10, %g2
 2007c34:	fa 20 c0 00 	st  %i5, [ %g3 ]
 2007c38:	ec 20 e0 04 	st  %l6, [ %g3 + 4 ]
 2007c3c:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007c40:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007c44:	80 a0 60 07 	cmp  %g1, 7
 2007c48:	04 bf ff f5 	ble  2007c1c <_vfiprintf_r+0x46c>
 2007c4c:	86 00 e0 08 	add  %g3, 8, %g3
 2007c50:	90 10 00 11 	mov  %l1, %o0
 2007c54:	92 10 00 19 	mov  %i1, %o1
 2007c58:	7f ff fe a2 	call  20076e0 <__sprint_r>
 2007c5c:	94 07 bb 64 	add  %fp, -1180, %o2
 2007c60:	80 a2 20 00 	cmp  %o0, 0
 2007c64:	12 80 01 11 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007c68:	ae 05 ff f0 	add  %l7, -16, %l7
 2007c6c:	86 10 00 12 	mov  %l2, %g3
 2007c70:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007c74:	80 a5 e0 10 	cmp  %l7, 0x10
 2007c78:	14 bf ff ed 	bg  2007c2c <_vfiprintf_r+0x47c>
 2007c7c:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007c80:	82 00 60 01 	inc  %g1
 2007c84:	84 00 80 17 	add  %g2, %l7, %g2
 2007c88:	c8 07 bb 48 	ld  [ %fp + -1208 ], %g4
 2007c8c:	ee 20 e0 04 	st  %l7, [ %g3 + 4 ]
 2007c90:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2007c94:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007c98:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007c9c:	80 a0 60 07 	cmp  %g1, 7
 2007ca0:	04 80 00 0b 	ble  2007ccc <_vfiprintf_r+0x51c>
 2007ca4:	86 00 e0 08 	add  %g3, 8, %g3
 2007ca8:	90 10 00 11 	mov  %l1, %o0
 2007cac:	92 10 00 19 	mov  %i1, %o1
 2007cb0:	7f ff fe 8c 	call  20076e0 <__sprint_r>
 2007cb4:	94 07 bb 64 	add  %fp, -1180, %o2
 2007cb8:	80 a2 20 00 	cmp  %o0, 0
 2007cbc:	12 80 00 fb 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007cc0:	86 10 00 12 	mov  %l2, %g3
 2007cc4:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007cc8:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007ccc:	82 00 60 01 	inc  %g1
 2007cd0:	84 00 80 15 	add  %g2, %l5, %g2
 2007cd4:	e6 20 c0 00 	st  %l3, [ %g3 ]
 2007cd8:	ea 20 e0 04 	st  %l5, [ %g3 + 4 ]
 2007cdc:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007ce0:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007ce4:	80 a0 60 07 	cmp  %g1, 7
 2007ce8:	14 80 01 3a 	bg  20081d0 <_vfiprintf_r+0xa20>
 2007cec:	86 00 e0 08 	add  %g3, 8, %g3
 2007cf0:	80 8c 20 04 	btst  4, %l0
 2007cf4:	02 80 00 2f 	be  2007db0 <_vfiprintf_r+0x600>
 2007cf8:	c2 07 bb 4c 	ld  [ %fp + -1204 ], %g1
 2007cfc:	a0 20 40 14 	sub  %g1, %l4, %l0
 2007d00:	80 a4 20 00 	cmp  %l0, 0
 2007d04:	04 80 00 2b 	ble  2007db0 <_vfiprintf_r+0x600>
 2007d08:	80 a4 20 10 	cmp  %l0, 0x10
 2007d0c:	f8 27 bb 38 	st  %i4, [ %fp + -1224 ]
 2007d10:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007d14:	14 80 00 08 	bg  2007d34 <_vfiprintf_r+0x584>
 2007d18:	a6 10 20 10 	mov  0x10, %l3
 2007d1c:	10 80 00 1c 	b  2007d8c <_vfiprintf_r+0x5dc>
 2007d20:	82 00 60 01 	inc  %g1
 2007d24:	a0 04 3f f0 	add  %l0, -16, %l0
 2007d28:	80 a4 20 10 	cmp  %l0, 0x10
 2007d2c:	24 80 00 18 	ble,a   2007d8c <_vfiprintf_r+0x5dc>
 2007d30:	82 00 60 01 	inc  %g1
 2007d34:	82 00 60 01 	inc  %g1
 2007d38:	84 00 a0 10 	add  %g2, 0x10, %g2
 2007d3c:	f8 20 c0 00 	st  %i4, [ %g3 ]
 2007d40:	e6 20 e0 04 	st  %l3, [ %g3 + 4 ]
 2007d44:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007d48:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007d4c:	80 a0 60 07 	cmp  %g1, 7
 2007d50:	04 bf ff f5 	ble  2007d24 <_vfiprintf_r+0x574>
 2007d54:	86 00 e0 08 	add  %g3, 8, %g3
 2007d58:	90 10 00 11 	mov  %l1, %o0
 2007d5c:	92 10 00 19 	mov  %i1, %o1
 2007d60:	7f ff fe 60 	call  20076e0 <__sprint_r>
 2007d64:	94 07 bb 64 	add  %fp, -1180, %o2
 2007d68:	80 a2 20 00 	cmp  %o0, 0
 2007d6c:	12 80 00 cf 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2007d70:	a0 04 3f f0 	add  %l0, -16, %l0
 2007d74:	86 10 00 12 	mov  %l2, %g3
 2007d78:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2007d7c:	80 a4 20 10 	cmp  %l0, 0x10
 2007d80:	14 bf ff ed 	bg  2007d34 <_vfiprintf_r+0x584>
 2007d84:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2007d88:	82 00 60 01 	inc  %g1
 2007d8c:	84 04 00 02 	add  %l0, %g2, %g2
 2007d90:	c8 07 bb 38 	ld  [ %fp + -1224 ], %g4
 2007d94:	e0 20 e0 04 	st  %l0, [ %g3 + 4 ]
 2007d98:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2007d9c:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2007da0:	80 a0 60 07 	cmp  %g1, 7
 2007da4:	14 80 01 7f 	bg  20083a0 <_vfiprintf_r+0xbf0>
 2007da8:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 2007dac:	c2 07 bb 4c 	ld  [ %fp + -1204 ], %g1
 2007db0:	80 a5 00 01 	cmp  %l4, %g1
 2007db4:	26 80 00 02 	bl,a   2007dbc <_vfiprintf_r+0x60c>
 2007db8:	a8 10 00 01 	mov  %g1, %l4
 2007dbc:	80 a0 a0 00 	cmp  %g2, 0
 2007dc0:	12 80 00 b3 	bne  200808c <_vfiprintf_r+0x8dc>
 2007dc4:	b0 06 00 14 	add  %i0, %l4, %i0
 2007dc8:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 2007dcc:	10 bf fe a8 	b  200786c <_vfiprintf_r+0xbc>
 2007dd0:	86 10 00 12 	mov  %l2, %g3
 2007dd4:	a0 14 20 10 	or  %l0, 0x10, %l0
 2007dd8:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007ddc:	80 8c 20 10 	btst  0x10, %l0
 2007de0:	12 80 00 05 	bne  2007df4 <_vfiprintf_r+0x644>
 2007de4:	82 10 20 01 	mov  1, %g1
 2007de8:	80 8c 20 40 	btst  0x40, %l0
 2007dec:	32 80 01 81 	bne,a   20083f0 <_vfiprintf_r+0xc40>
 2007df0:	09 00 00 3f 	sethi  %hi(0xfc00), %g4
 2007df4:	80 a0 00 14 	cmp  %g0, %l4
 2007df8:	b6 06 e0 04 	add  %i3, 4, %i3
 2007dfc:	10 bf fe f1 	b  20079c0 <_vfiprintf_r+0x210>
 2007e00:	88 40 20 00 	addx  %g0, 0, %g4
 2007e04:	82 0d 20 0f 	and  %l4, 0xf, %g1
 2007e08:	a6 04 ff ff 	add  %l3, -1, %l3
 2007e0c:	c4 07 bb 3c 	ld  [ %fp + -1220 ], %g2
 2007e10:	c2 08 80 01 	ldub  [ %g2 + %g1 ], %g1
 2007e14:	a9 35 20 04 	srl  %l4, 4, %l4
 2007e18:	80 a5 20 00 	cmp  %l4, 0
 2007e1c:	12 bf ff fa 	bne  2007e04 <_vfiprintf_r+0x654>
 2007e20:	c2 2c c0 00 	stb  %g1, [ %l3 ]
 2007e24:	c8 07 bb 54 	ld  [ %fp + -1196 ], %g4
 2007e28:	10 bf ff 09 	b  2007a4c <_vfiprintf_r+0x29c>
 2007e2c:	aa 21 00 13 	sub  %g4, %l3, %l5
 2007e30:	c2 06 c0 00 	ld  [ %i3 ], %g1
 2007e34:	c2 27 bb 4c 	st  %g1, [ %fp + -1204 ]
 2007e38:	80 a0 60 00 	cmp  %g1, 0
 2007e3c:	16 bf fe b4 	bge  200790c <_vfiprintf_r+0x15c>
 2007e40:	b6 06 e0 04 	add  %i3, 4, %i3
 2007e44:	82 20 00 01 	neg  %g1
 2007e48:	c2 27 bb 4c 	st  %g1, [ %fp + -1204 ]
 2007e4c:	10 bf fe b0 	b  200790c <_vfiprintf_r+0x15c>
 2007e50:	a0 14 20 04 	or  %l0, 4, %l0
 2007e54:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2007e58:	80 a0 60 2a 	cmp  %g1, 0x2a
 2007e5c:	02 80 01 9c 	be  20084cc <_vfiprintf_r+0xd1c>
 2007e60:	b4 06 a0 01 	inc  %i2
 2007e64:	84 00 7f d0 	add  %g1, -48, %g2
 2007e68:	80 a0 a0 09 	cmp  %g2, 9
 2007e6c:	18 bf fe aa 	bgu  2007914 <_vfiprintf_r+0x164>
 2007e70:	ae 10 20 00 	clr  %l7
 2007e74:	9f 2d e0 01 	sll  %l7, 1, %o7
 2007e78:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2007e7c:	af 2d e0 03 	sll  %l7, 3, %l7
 2007e80:	ae 03 c0 17 	add  %o7, %l7, %l7
 2007e84:	ae 00 80 17 	add  %g2, %l7, %l7
 2007e88:	84 00 7f d0 	add  %g1, -48, %g2
 2007e8c:	80 a0 a0 09 	cmp  %g2, 9
 2007e90:	08 bf ff f9 	bleu  2007e74 <_vfiprintf_r+0x6c4>
 2007e94:	b4 06 a0 01 	inc  %i2
 2007e98:	80 a5 e0 00 	cmp  %l7, 0
 2007e9c:	26 bf fe 9e 	bl,a   2007914 <_vfiprintf_r+0x164>
 2007ea0:	ae 10 3f ff 	mov  -1, %l7
 2007ea4:	10 bf fe 9d 	b  2007918 <_vfiprintf_r+0x168>
 2007ea8:	84 00 7f e0 	add  %g1, -32, %g2
 2007eac:	10 bf fe 98 	b  200790c <_vfiprintf_r+0x15c>
 2007eb0:	9a 10 20 2b 	mov  0x2b, %o5
 2007eb4:	c0 2f bb 5f 	clrb  [ %fp + -1185 ]
 2007eb8:	e6 06 c0 00 	ld  [ %i3 ], %l3
 2007ebc:	80 a4 e0 00 	cmp  %l3, 0
 2007ec0:	02 80 01 72 	be  2008488 <_vfiprintf_r+0xcd8>
 2007ec4:	b6 06 e0 04 	add  %i3, 4, %i3
 2007ec8:	80 a5 e0 00 	cmp  %l7, 0
 2007ecc:	06 80 01 68 	bl  200846c <_vfiprintf_r+0xcbc>
 2007ed0:	90 10 00 13 	mov  %l3, %o0
 2007ed4:	c6 27 bb 30 	st  %g3, [ %fp + -1232 ]
 2007ed8:	92 10 20 00 	clr  %o1
 2007edc:	7f ff f8 86 	call  20060f4 <memchr>
 2007ee0:	94 10 00 17 	mov  %l7, %o2
 2007ee4:	80 a2 20 00 	cmp  %o0, 0
 2007ee8:	02 80 01 76 	be  20084c0 <_vfiprintf_r+0xd10>
 2007eec:	c6 07 bb 30 	ld  [ %fp + -1232 ], %g3
 2007ef0:	aa 22 00 13 	sub  %o0, %l3, %l5
 2007ef4:	80 a5 40 17 	cmp  %l5, %l7
 2007ef8:	04 80 00 03 	ble  2007f04 <_vfiprintf_r+0x754>
 2007efc:	ec 0f bb 5f 	ldub  [ %fp + -1185 ], %l6
 2007f00:	aa 10 00 17 	mov  %l7, %l5
 2007f04:	10 bf fe d3 	b  2007a50 <_vfiprintf_r+0x2a0>
 2007f08:	c0 27 bb 44 	clr  [ %fp + -1212 ]
 2007f0c:	82 10 20 30 	mov  0x30, %g1
 2007f10:	c2 2f bb 60 	stb  %g1, [ %fp + -1184 ]
 2007f14:	82 10 20 78 	mov  0x78, %g1
 2007f18:	c2 2f bb 61 	stb  %g1, [ %fp + -1183 ]
 2007f1c:	03 00 80 28 	sethi  %hi(0x200a000), %g1
 2007f20:	82 10 61 70 	or  %g1, 0x170, %g1	! 200a170 <_global_impure_ptr+0x44>
 2007f24:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007f28:	c2 27 bb 3c 	st  %g1, [ %fp + -1220 ]
 2007f2c:	80 a0 00 14 	cmp  %g0, %l4
 2007f30:	b6 06 e0 04 	add  %i3, 4, %i3
 2007f34:	88 40 20 00 	addx  %g0, 0, %g4
 2007f38:	a0 14 20 02 	or  %l0, 2, %l0
 2007f3c:	10 bf fe a1 	b  20079c0 <_vfiprintf_r+0x210>
 2007f40:	82 10 20 02 	mov  2, %g1
 2007f44:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2007f48:	84 10 a1 70 	or  %g2, 0x170, %g2	! 200a170 <_global_impure_ptr+0x44>
 2007f4c:	c4 27 bb 3c 	st  %g2, [ %fp + -1220 ]
 2007f50:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007f54:	80 8c 20 10 	btst  0x10, %l0
 2007f58:	12 80 00 05 	bne  2007f6c <_vfiprintf_r+0x7bc>
 2007f5c:	b6 06 e0 04 	add  %i3, 4, %i3
 2007f60:	80 8c 20 40 	btst  0x40, %l0
 2007f64:	12 80 01 20 	bne  20083e4 <_vfiprintf_r+0xc34>
 2007f68:	05 00 00 3f 	sethi  %hi(0xfc00), %g2
 2007f6c:	80 8c 20 01 	btst  1, %l0
 2007f70:	12 80 01 03 	bne  200837c <_vfiprintf_r+0xbcc>
 2007f74:	80 a5 20 00 	cmp  %l4, 0
 2007f78:	80 a0 00 14 	cmp  %g0, %l4
 2007f7c:	82 10 20 02 	mov  2, %g1
 2007f80:	10 bf fe 90 	b  20079c0 <_vfiprintf_r+0x210>
 2007f84:	88 40 20 00 	addx  %g0, 0, %g4
 2007f88:	10 bf fe 61 	b  200790c <_vfiprintf_r+0x15c>
 2007f8c:	a0 14 20 40 	or  %l0, 0x40, %l0
 2007f90:	80 8c 20 10 	btst  0x10, %l0
 2007f94:	12 80 01 10 	bne  20083d4 <_vfiprintf_r+0xc24>
 2007f98:	da 2f bb 5f 	stb  %o5, [ %fp + -1185 ]
 2007f9c:	80 8c 20 40 	btst  0x40, %l0
 2007fa0:	02 80 01 0e 	be  20083d8 <_vfiprintf_r+0xc28>
 2007fa4:	c2 06 c0 00 	ld  [ %i3 ], %g1
 2007fa8:	b6 06 e0 04 	add  %i3, 4, %i3
 2007fac:	10 bf fe 30 	b  200786c <_vfiprintf_r+0xbc>
 2007fb0:	f0 30 40 00 	sth  %i0, [ %g1 ]
 2007fb4:	10 bf fe 56 	b  200790c <_vfiprintf_r+0x15c>
 2007fb8:	a0 14 20 01 	or  %l0, 1, %l0
 2007fbc:	80 8b 60 ff 	btst  0xff, %o5
 2007fc0:	22 bf fe 53 	be,a   200790c <_vfiprintf_r+0x15c>
 2007fc4:	9a 10 20 20 	mov  0x20, %o5
 2007fc8:	10 bf fe 52 	b  2007910 <_vfiprintf_r+0x160>
 2007fcc:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2007fd0:	da 2f bb 5f 	stb  %o5, [ %fp + -1185 ]
 2007fd4:	80 8c 20 10 	btst  0x10, %l0
 2007fd8:	32 80 00 06 	bne,a   2007ff0 <_vfiprintf_r+0x840>
 2007fdc:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007fe0:	80 8c 20 40 	btst  0x40, %l0
 2007fe4:	32 80 01 0b 	bne,a   2008410 <_vfiprintf_r+0xc60>
 2007fe8:	e8 56 e0 02 	ldsh  [ %i3 + 2 ], %l4
 2007fec:	e8 06 c0 00 	ld  [ %i3 ], %l4
 2007ff0:	80 a5 20 00 	cmp  %l4, 0
 2007ff4:	06 80 01 0a 	bl  200841c <_vfiprintf_r+0xc6c>
 2007ff8:	b6 06 e0 04 	add  %i3, 4, %i3
 2007ffc:	80 a0 00 14 	cmp  %g0, %l4
 2008000:	ec 0f bb 5f 	ldub  [ %fp + -1185 ], %l6
 2008004:	88 40 20 00 	addx  %g0, 0, %g4
 2008008:	10 bf fe 70 	b  20079c8 <_vfiprintf_r+0x218>
 200800c:	82 10 20 01 	mov  1, %g1
 2008010:	c2 06 c0 00 	ld  [ %i3 ], %g1
 2008014:	c0 2f bb 5f 	clrb  [ %fp + -1185 ]
 2008018:	c2 2f bb 70 	stb  %g1, [ %fp + -1168 ]
 200801c:	b6 06 e0 04 	add  %i3, 4, %i3
 2008020:	a8 10 20 01 	mov  1, %l4
 2008024:	aa 10 20 01 	mov  1, %l5
 2008028:	a6 07 bb 70 	add  %fp, -1168, %l3
 200802c:	10 bf fe 91 	b  2007a70 <_vfiprintf_r+0x2c0>
 2008030:	c0 27 bb 44 	clr  [ %fp + -1212 ]
 2008034:	05 00 80 28 	sethi  %hi(0x200a000), %g2
 2008038:	84 10 a1 58 	or  %g2, 0x158, %g2	! 200a158 <_global_impure_ptr+0x2c>
 200803c:	10 bf ff c5 	b  2007f50 <_vfiprintf_r+0x7a0>
 2008040:	c4 27 bb 3c 	st  %g2, [ %fp + -1220 ]
 2008044:	da 2f bb 5f 	stb  %o5, [ %fp + -1185 ]
 2008048:	10 bf ff e3 	b  2007fd4 <_vfiprintf_r+0x824>
 200804c:	a0 14 20 10 	or  %l0, 0x10, %l0
 2008050:	ac 10 20 00 	clr  %l6
 2008054:	84 00 7f d0 	add  %g1, -48, %g2
 2008058:	9f 2d a0 01 	sll  %l6, 1, %o7
 200805c:	c2 4e 80 00 	ldsb  [ %i2 ], %g1
 2008060:	ad 2d a0 03 	sll  %l6, 3, %l6
 2008064:	ac 03 c0 16 	add  %o7, %l6, %l6
 2008068:	ac 05 80 02 	add  %l6, %g2, %l6
 200806c:	84 00 7f d0 	add  %g1, -48, %g2
 2008070:	80 a0 a0 09 	cmp  %g2, 9
 2008074:	08 bf ff f9 	bleu  2008058 <_vfiprintf_r+0x8a8>
 2008078:	b4 06 a0 01 	inc  %i2
 200807c:	10 bf fe 26 	b  2007914 <_vfiprintf_r+0x164>
 2008080:	ec 27 bb 4c 	st  %l6, [ %fp + -1204 ]
 2008084:	10 bf fe 22 	b  200790c <_vfiprintf_r+0x15c>
 2008088:	a0 14 20 80 	or  %l0, 0x80, %l0
 200808c:	90 10 00 11 	mov  %l1, %o0
 2008090:	92 10 00 19 	mov  %i1, %o1
 2008094:	7f ff fd 93 	call  20076e0 <__sprint_r>
 2008098:	94 07 bb 64 	add  %fp, -1180, %o2
 200809c:	80 a2 20 00 	cmp  %o0, 0
 20080a0:	22 bf ff 4b 	be,a   2007dcc <_vfiprintf_r+0x61c>
 20080a4:	c0 27 bb 68 	clr  [ %fp + -1176 ]
 20080a8:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20080ac:	80 88 60 40 	btst  0x40, %g1
 20080b0:	12 80 00 51 	bne  20081f4 <_vfiprintf_r+0xa44>
 20080b4:	01 00 00 00 	nop 
 20080b8:	81 c7 e0 08 	ret 
 20080bc:	81 e8 00 00 	restore 
 20080c0:	12 80 00 0a 	bne  20080e8 <_vfiprintf_r+0x938>
 20080c4:	aa 10 20 00 	clr  %l5
 20080c8:	80 8c 20 01 	btst  1, %l0
 20080cc:	22 bf fe 60 	be,a   2007a4c <_vfiprintf_r+0x29c>
 20080d0:	a6 07 bb 98 	add  %fp, -1128, %l3
 20080d4:	82 10 20 30 	mov  0x30, %g1
 20080d8:	ea 07 bb 34 	ld  [ %fp + -1228 ], %l5
 20080dc:	c2 2f bb 97 	stb  %g1, [ %fp + -1129 ]
 20080e0:	10 bf fe 5b 	b  2007a4c <_vfiprintf_r+0x29c>
 20080e4:	a6 07 bb 97 	add  %fp, -1129, %l3
 20080e8:	10 bf fe 59 	b  2007a4c <_vfiprintf_r+0x29c>
 20080ec:	a6 07 bb 98 	add  %fp, -1128, %l3
 20080f0:	ac 21 00 14 	sub  %g4, %l4, %l6
 20080f4:	80 a5 a0 00 	cmp  %l6, 0
 20080f8:	04 bf fe bf 	ble  2007bf4 <_vfiprintf_r+0x444>
 20080fc:	80 a5 a0 10 	cmp  %l6, 0x10
 2008100:	fa 27 bb 48 	st  %i5, [ %fp + -1208 ]
 2008104:	14 80 00 08 	bg  2008124 <_vfiprintf_r+0x974>
 2008108:	9a 10 20 10 	mov  0x10, %o5
 200810c:	10 80 00 1e 	b  2008184 <_vfiprintf_r+0x9d4>
 2008110:	82 00 60 01 	inc  %g1
 2008114:	ac 05 bf f0 	add  %l6, -16, %l6
 2008118:	80 a5 a0 10 	cmp  %l6, 0x10
 200811c:	24 80 00 1a 	ble,a   2008184 <_vfiprintf_r+0x9d4>
 2008120:	82 00 60 01 	inc  %g1
 2008124:	82 00 60 01 	inc  %g1
 2008128:	84 00 a0 10 	add  %g2, 0x10, %g2
 200812c:	fa 20 c0 00 	st  %i5, [ %g3 ]
 2008130:	da 20 e0 04 	st  %o5, [ %g3 + 4 ]
 2008134:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2008138:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 200813c:	80 a0 60 07 	cmp  %g1, 7
 2008140:	04 bf ff f5 	ble  2008114 <_vfiprintf_r+0x964>
 2008144:	86 00 e0 08 	add  %g3, 8, %g3
 2008148:	da 27 bb 2c 	st  %o5, [ %fp + -1236 ]
 200814c:	90 10 00 11 	mov  %l1, %o0
 2008150:	92 10 00 19 	mov  %i1, %o1
 2008154:	7f ff fd 63 	call  20076e0 <__sprint_r>
 2008158:	94 07 bb 64 	add  %fp, -1180, %o2
 200815c:	80 a2 20 00 	cmp  %o0, 0
 2008160:	12 bf ff d2 	bne  20080a8 <_vfiprintf_r+0x8f8>
 2008164:	da 07 bb 2c 	ld  [ %fp + -1236 ], %o5
 2008168:	ac 05 bf f0 	add  %l6, -16, %l6
 200816c:	86 10 00 12 	mov  %l2, %g3
 2008170:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2008174:	80 a5 a0 10 	cmp  %l6, 0x10
 2008178:	14 bf ff eb 	bg  2008124 <_vfiprintf_r+0x974>
 200817c:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 2008180:	82 00 60 01 	inc  %g1
 2008184:	84 00 80 16 	add  %g2, %l6, %g2
 2008188:	c8 07 bb 48 	ld  [ %fp + -1208 ], %g4
 200818c:	ec 20 e0 04 	st  %l6, [ %g3 + 4 ]
 2008190:	c8 20 c0 00 	st  %g4, [ %g3 ]
 2008194:	c4 27 bb 6c 	st  %g2, [ %fp + -1172 ]
 2008198:	c2 27 bb 68 	st  %g1, [ %fp + -1176 ]
 200819c:	80 a0 60 07 	cmp  %g1, 7
 20081a0:	04 bf fe 95 	ble  2007bf4 <_vfiprintf_r+0x444>
 20081a4:	86 00 e0 08 	add  %g3, 8, %g3
 20081a8:	90 10 00 11 	mov  %l1, %o0
 20081ac:	92 10 00 19 	mov  %i1, %o1
 20081b0:	7f ff fd 4c 	call  20076e0 <__sprint_r>
 20081b4:	94 07 bb 64 	add  %fp, -1180, %o2
 20081b8:	80 a2 20 00 	cmp  %o0, 0
 20081bc:	12 bf ff bb 	bne  20080a8 <_vfiprintf_r+0x8f8>
 20081c0:	86 10 00 12 	mov  %l2, %g3
 20081c4:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 20081c8:	10 bf fe 8b 	b  2007bf4 <_vfiprintf_r+0x444>
 20081cc:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 20081d0:	90 10 00 11 	mov  %l1, %o0
 20081d4:	92 10 00 19 	mov  %i1, %o1
 20081d8:	7f ff fd 42 	call  20076e0 <__sprint_r>
 20081dc:	94 07 bb 64 	add  %fp, -1180, %o2
 20081e0:	80 a2 20 00 	cmp  %o0, 0
 20081e4:	12 bf ff b1 	bne  20080a8 <_vfiprintf_r+0x8f8>
 20081e8:	86 10 00 12 	mov  %l2, %g3
 20081ec:	10 bf fe c1 	b  2007cf0 <_vfiprintf_r+0x540>
 20081f0:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 20081f4:	81 c7 e0 08 	ret 
 20081f8:	91 e8 3f ff 	restore  %g0, -1, %o0
 20081fc:	7f ff ec cf 	call  2003538 <__swsetup_r>
 2008200:	92 10 00 19 	mov  %i1, %o1
 2008204:	80 a2 20 00 	cmp  %o0, 0
 2008208:	12 bf ff fb 	bne  20081f4 <_vfiprintf_r+0xa44>
 200820c:	01 00 00 00 	nop 
 2008210:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008214:	84 08 60 1a 	and  %g1, 0x1a, %g2
 2008218:	80 a0 a0 0a 	cmp  %g2, 0xa
 200821c:	12 bf fd 84 	bne  200782c <_vfiprintf_r+0x7c>
 2008220:	a4 07 bc 00 	add  %fp, -1024, %l2
 2008224:	c4 56 60 0e 	ldsh  [ %i1 + 0xe ], %g2
 2008228:	80 a0 a0 00 	cmp  %g2, 0
 200822c:	06 bf fd 7f 	bl  2007828 <_vfiprintf_r+0x78>
 2008230:	c6 16 60 0e 	lduh  [ %i1 + 0xe ], %g3
 2008234:	f0 06 60 64 	ld  [ %i1 + 0x64 ], %i0
 2008238:	88 07 bc 00 	add  %fp, -1024, %g4
 200823c:	84 10 24 00 	mov  0x400, %g2
 2008240:	82 08 7f fd 	and  %g1, -3, %g1
 2008244:	f8 06 60 1c 	ld  [ %i1 + 0x1c ], %i4
 2008248:	fa 06 60 24 	ld  [ %i1 + 0x24 ], %i5
 200824c:	f0 27 bb fc 	st  %i0, [ %fp + -1028 ]
 2008250:	c2 37 bb a4 	sth  %g1, [ %fp + -1116 ]
 2008254:	c6 37 bb a6 	sth  %g3, [ %fp + -1114 ]
 2008258:	f8 27 bb b4 	st  %i4, [ %fp + -1100 ]
 200825c:	fa 27 bb bc 	st  %i5, [ %fp + -1092 ]
 2008260:	c8 27 bb 98 	st  %g4, [ %fp + -1128 ]
 2008264:	c8 27 bb a8 	st  %g4, [ %fp + -1112 ]
 2008268:	c4 27 bb a0 	st  %g2, [ %fp + -1120 ]
 200826c:	c4 27 bb ac 	st  %g2, [ %fp + -1108 ]
 2008270:	c0 27 bb b0 	clr  [ %fp + -1104 ]
 2008274:	90 10 00 11 	mov  %l1, %o0
 2008278:	92 07 bb 98 	add  %fp, -1128, %o1
 200827c:	94 10 00 1a 	mov  %i2, %o2
 2008280:	7f ff fd 4c 	call  20077b0 <_vfiprintf_r>
 2008284:	96 10 00 1b 	mov  %i3, %o3
 2008288:	b0 92 20 00 	orcc  %o0, 0, %i0
 200828c:	06 80 00 07 	bl  20082a8 <_vfiprintf_r+0xaf8>
 2008290:	90 10 00 11 	mov  %l1, %o0
 2008294:	7f ff f3 37 	call  2004f70 <_fflush_r>
 2008298:	92 07 bb 98 	add  %fp, -1128, %o1
 200829c:	80 a2 20 00 	cmp  %o0, 0
 20082a0:	32 80 00 02 	bne,a   20082a8 <_vfiprintf_r+0xaf8>
 20082a4:	b0 10 3f ff 	mov  -1, %i0
 20082a8:	c2 17 bb a4 	lduh  [ %fp + -1116 ], %g1
 20082ac:	80 88 60 40 	btst  0x40, %g1
 20082b0:	02 80 00 6d 	be  2008464 <_vfiprintf_r+0xcb4>
 20082b4:	01 00 00 00 	nop 
 20082b8:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20082bc:	82 10 60 40 	or  %g1, 0x40, %g1
 20082c0:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 20082c4:	81 c7 e0 08 	ret 
 20082c8:	81 e8 00 00 	restore 
 20082cc:	90 10 00 11 	mov  %l1, %o0
 20082d0:	92 10 00 19 	mov  %i1, %o1
 20082d4:	7f ff fd 03 	call  20076e0 <__sprint_r>
 20082d8:	94 07 bb 64 	add  %fp, -1180, %o2
 20082dc:	80 a2 20 00 	cmp  %o0, 0
 20082e0:	12 bf ff 72 	bne  20080a8 <_vfiprintf_r+0x8f8>
 20082e4:	86 10 00 12 	mov  %l2, %g3
 20082e8:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 20082ec:	10 bf fe 2f 	b  2007ba8 <_vfiprintf_r+0x3f8>
 20082f0:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 20082f4:	90 10 00 11 	mov  %l1, %o0
 20082f8:	92 10 00 19 	mov  %i1, %o1
 20082fc:	7f ff fc f9 	call  20076e0 <__sprint_r>
 2008300:	94 07 bb 64 	add  %fp, -1180, %o2
 2008304:	80 a2 20 00 	cmp  %o0, 0
 2008308:	12 bf ff 68 	bne  20080a8 <_vfiprintf_r+0x8f8>
 200830c:	86 10 00 12 	mov  %l2, %g3
 2008310:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 2008314:	10 bf fe 34 	b  2007be4 <_vfiprintf_r+0x434>
 2008318:	c2 07 bb 68 	ld  [ %fp + -1176 ], %g1
 200831c:	7f ff f3 77 	call  20050f8 <__sinit>
 2008320:	90 10 00 11 	mov  %l1, %o0
 2008324:	10 bf fd 2c 	b  20077d4 <_vfiprintf_r+0x24>
 2008328:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 200832c:	80 a5 20 09 	cmp  %l4, 9
 2008330:	28 80 00 25 	bleu,a   20083c4 <_vfiprintf_r+0xc14>
 2008334:	a8 05 20 30 	add  %l4, 0x30, %l4
 2008338:	a6 07 bb 98 	add  %fp, -1128, %l3
 200833c:	c6 27 bb 30 	st  %g3, [ %fp + -1232 ]
 2008340:	90 10 00 14 	mov  %l4, %o0
 2008344:	40 00 06 be 	call  2009e3c <.urem>
 2008348:	92 10 20 0a 	mov  0xa, %o1
 200834c:	90 02 20 30 	add  %o0, 0x30, %o0
 2008350:	a6 04 ff ff 	add  %l3, -1, %l3
 2008354:	92 10 20 0a 	mov  0xa, %o1
 2008358:	d0 2c c0 00 	stb  %o0, [ %l3 ]
 200835c:	40 00 06 0c 	call  2009b8c <.udiv>
 2008360:	90 10 00 14 	mov  %l4, %o0
 2008364:	a8 92 20 00 	orcc  %o0, 0, %l4
 2008368:	12 bf ff f5 	bne  200833c <_vfiprintf_r+0xb8c>
 200836c:	c6 07 bb 30 	ld  [ %fp + -1232 ], %g3
 2008370:	c8 07 bb 54 	ld  [ %fp + -1196 ], %g4
 2008374:	10 bf fd b6 	b  2007a4c <_vfiprintf_r+0x29c>
 2008378:	aa 21 00 13 	sub  %g4, %l3, %l5
 200837c:	22 80 00 23 	be,a   2008408 <_vfiprintf_r+0xc58>
 2008380:	88 10 20 00 	clr  %g4
 2008384:	c2 2f bb 61 	stb  %g1, [ %fp + -1183 ]
 2008388:	82 10 20 30 	mov  0x30, %g1
 200838c:	a0 14 20 02 	or  %l0, 2, %l0
 2008390:	c2 2f bb 60 	stb  %g1, [ %fp + -1184 ]
 2008394:	88 10 20 01 	mov  1, %g4
 2008398:	10 bf fd 8a 	b  20079c0 <_vfiprintf_r+0x210>
 200839c:	82 10 20 02 	mov  2, %g1
 20083a0:	90 10 00 11 	mov  %l1, %o0
 20083a4:	92 10 00 19 	mov  %i1, %o1
 20083a8:	7f ff fc ce 	call  20076e0 <__sprint_r>
 20083ac:	94 07 bb 64 	add  %fp, -1180, %o2
 20083b0:	80 a2 20 00 	cmp  %o0, 0
 20083b4:	12 bf ff 3d 	bne  20080a8 <_vfiprintf_r+0x8f8>
 20083b8:	c4 07 bb 6c 	ld  [ %fp + -1172 ], %g2
 20083bc:	10 bf fe 7d 	b  2007db0 <_vfiprintf_r+0x600>
 20083c0:	c2 07 bb 4c 	ld  [ %fp + -1204 ], %g1
 20083c4:	ea 07 bb 34 	ld  [ %fp + -1228 ], %l5
 20083c8:	e8 2f bb 97 	stb  %l4, [ %fp + -1129 ]
 20083cc:	10 bf fd a0 	b  2007a4c <_vfiprintf_r+0x29c>
 20083d0:	a6 07 bb 97 	add  %fp, -1129, %l3
 20083d4:	c2 06 c0 00 	ld  [ %i3 ], %g1
 20083d8:	b6 06 e0 04 	add  %i3, 4, %i3
 20083dc:	10 bf fd 24 	b  200786c <_vfiprintf_r+0xbc>
 20083e0:	f0 20 40 00 	st  %i0, [ %g1 ]
 20083e4:	84 10 a3 ff 	or  %g2, 0x3ff, %g2
 20083e8:	10 bf fe e1 	b  2007f6c <_vfiprintf_r+0x7bc>
 20083ec:	a8 0d 00 02 	and  %l4, %g2, %l4
 20083f0:	88 11 23 ff 	or  %g4, 0x3ff, %g4
 20083f4:	b6 06 e0 04 	add  %i3, 4, %i3
 20083f8:	a8 0d 00 04 	and  %l4, %g4, %l4
 20083fc:	80 a0 00 14 	cmp  %g0, %l4
 2008400:	10 bf fd 70 	b  20079c0 <_vfiprintf_r+0x210>
 2008404:	88 40 20 00 	addx  %g0, 0, %g4
 2008408:	10 bf fd 6e 	b  20079c0 <_vfiprintf_r+0x210>
 200840c:	82 10 20 02 	mov  2, %g1
 2008410:	80 a5 20 00 	cmp  %l4, 0
 2008414:	16 bf fe fa 	bge  2007ffc <_vfiprintf_r+0x84c>
 2008418:	b6 06 e0 04 	add  %i3, 4, %i3
 200841c:	82 10 20 2d 	mov  0x2d, %g1
 2008420:	a8 20 00 14 	neg  %l4
 2008424:	c2 2f bb 5f 	stb  %g1, [ %fp + -1185 ]
 2008428:	80 a0 00 14 	cmp  %g0, %l4
 200842c:	ac 10 20 2d 	mov  0x2d, %l6
 2008430:	88 40 20 00 	addx  %g0, 0, %g4
 2008434:	10 bf fd 65 	b  20079c8 <_vfiprintf_r+0x218>
 2008438:	82 10 20 01 	mov  1, %g1
 200843c:	c2 07 bb 6c 	ld  [ %fp + -1172 ], %g1
 2008440:	80 a0 60 00 	cmp  %g1, 0
 2008444:	22 bf ff 1a 	be,a   20080ac <_vfiprintf_r+0x8fc>
 2008448:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 200844c:	90 10 00 11 	mov  %l1, %o0
 2008450:	92 10 00 19 	mov  %i1, %o1
 2008454:	7f ff fc a3 	call  20076e0 <__sprint_r>
 2008458:	94 07 bb 64 	add  %fp, -1180, %o2
 200845c:	10 bf ff 14 	b  20080ac <_vfiprintf_r+0x8fc>
 2008460:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008464:	81 c7 e0 08 	ret 
 2008468:	81 e8 00 00 	restore 
 200846c:	c6 27 bb 30 	st  %g3, [ %fp + -1232 ]
 2008470:	7f ff fc 11 	call  20074b4 <strlen>
 2008474:	c0 27 bb 44 	clr  [ %fp + -1212 ]
 2008478:	c6 07 bb 30 	ld  [ %fp + -1232 ], %g3
 200847c:	aa 10 00 08 	mov  %o0, %l5
 2008480:	10 bf fd 74 	b  2007a50 <_vfiprintf_r+0x2a0>
 2008484:	ec 0f bb 5f 	ldub  [ %fp + -1185 ], %l6
 2008488:	80 a5 e0 06 	cmp  %l7, 6
 200848c:	08 80 00 03 	bleu  2008498 <_vfiprintf_r+0xce8>
 2008490:	aa 10 00 17 	mov  %l7, %l5
 2008494:	aa 10 20 06 	mov  6, %l5
 2008498:	a8 38 00 15 	xnor  %g0, %l5, %l4
 200849c:	27 00 80 28 	sethi  %hi(0x200a000), %l3
 20084a0:	a9 3d 20 1f 	sra  %l4, 0x1f, %l4
 20084a4:	a6 14 e1 88 	or  %l3, 0x188, %l3
 20084a8:	a8 0d 40 14 	and  %l5, %l4, %l4
 20084ac:	10 bf fd 71 	b  2007a70 <_vfiprintf_r+0x2c0>
 20084b0:	c0 27 bb 44 	clr  [ %fp + -1212 ]
 20084b4:	c2 07 bb 54 	ld  [ %fp + -1196 ], %g1
 20084b8:	10 bf fd 65 	b  2007a4c <_vfiprintf_r+0x29c>
 20084bc:	aa 20 40 13 	sub  %g1, %l3, %l5
 20084c0:	ec 0f bb 5f 	ldub  [ %fp + -1185 ], %l6
 20084c4:	10 bf fe 90 	b  2007f04 <_vfiprintf_r+0x754>
 20084c8:	aa 10 00 17 	mov  %l7, %l5
 20084cc:	ee 06 c0 00 	ld  [ %i3 ], %l7
 20084d0:	80 a5 e0 00 	cmp  %l7, 0
 20084d4:	16 bf fd 0e 	bge  200790c <_vfiprintf_r+0x15c>
 20084d8:	b6 06 e0 04 	add  %i3, 4, %i3
 20084dc:	10 bf fd 0c 	b  200790c <_vfiprintf_r+0x15c>
 20084e0:	ae 10 3f ff 	mov  -1, %l7

020084e4 <vfiprintf>:
 20084e4:	82 10 00 09 	mov  %o1, %g1
 20084e8:	96 10 00 0a 	mov  %o2, %o3
 20084ec:	92 10 00 08 	mov  %o0, %o1
 20084f0:	05 00 80 29 	sethi  %hi(0x200a400), %g2
 20084f4:	94 10 00 01 	mov  %g1, %o2
 20084f8:	d0 00 a0 08 	ld  [ %g2 + 8 ], %o0
 20084fc:	82 13 c0 00 	mov  %o7, %g1
 2008500:	7f ff fc ac 	call  20077b0 <_vfiprintf_r>
 2008504:	9e 10 40 00 	mov  %g1, %o7

02008508 <_write_r>:
 2008508:	9d e3 bf a0 	save  %sp, -96, %sp
 200850c:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 2008510:	90 10 00 19 	mov  %i1, %o0
 2008514:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 2008518:	92 10 00 1a 	mov  %i2, %o1
 200851c:	7f ff e3 e5 	call  20014b0 <write>
 2008520:	94 10 00 1b 	mov  %i3, %o2
 2008524:	80 a2 3f ff 	cmp  %o0, -1
 2008528:	02 80 00 04 	be  2008538 <_write_r+0x30>
 200852c:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008530:	81 c7 e0 08 	ret 
 2008534:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008538:	80 a0 60 00 	cmp  %g1, 0
 200853c:	02 bf ff fd 	be  2008530 <_write_r+0x28>
 2008540:	01 00 00 00 	nop 
 2008544:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008548:	81 c7 e0 08 	ret 
 200854c:	91 e8 00 08 	restore  %g0, %o0, %o0

02008550 <_calloc_r>:
 2008550:	9d e3 bf a0 	save  %sp, -96, %sp
 2008554:	92 10 00 19 	mov  %i1, %o1
 2008558:	40 00 05 53 	call  2009aa4 <.umul>
 200855c:	90 10 00 1a 	mov  %i2, %o0
 2008560:	92 10 00 08 	mov  %o0, %o1
 2008564:	7f ff f5 0f 	call  20059a0 <_malloc_r>
 2008568:	90 10 00 18 	mov  %i0, %o0
 200856c:	b0 92 20 00 	orcc  %o0, 0, %i0
 2008570:	02 80 00 1e 	be  20085e8 <_calloc_r+0x98>
 2008574:	01 00 00 00 	nop 
 2008578:	d4 06 3f fc 	ld  [ %i0 + -4 ], %o2
 200857c:	94 0a bf fc 	and  %o2, -4, %o2
 2008580:	94 02 bf fc 	add  %o2, -4, %o2
 2008584:	80 a2 a0 24 	cmp  %o2, 0x24
 2008588:	18 80 00 16 	bgu  20085e0 <_calloc_r+0x90>
 200858c:	80 a2 a0 13 	cmp  %o2, 0x13
 2008590:	08 80 00 0f 	bleu  20085cc <_calloc_r+0x7c>
 2008594:	82 10 00 18 	mov  %i0, %g1
 2008598:	c0 26 00 00 	clr  [ %i0 ]
 200859c:	c0 26 20 04 	clr  [ %i0 + 4 ]
 20085a0:	80 a2 a0 1b 	cmp  %o2, 0x1b
 20085a4:	08 80 00 0a 	bleu  20085cc <_calloc_r+0x7c>
 20085a8:	82 06 20 08 	add  %i0, 8, %g1
 20085ac:	c0 26 20 08 	clr  [ %i0 + 8 ]
 20085b0:	c0 26 20 0c 	clr  [ %i0 + 0xc ]
 20085b4:	80 a2 a0 24 	cmp  %o2, 0x24
 20085b8:	12 80 00 05 	bne  20085cc <_calloc_r+0x7c>
 20085bc:	82 06 20 10 	add  %i0, 0x10, %g1
 20085c0:	c0 26 20 10 	clr  [ %i0 + 0x10 ]
 20085c4:	c0 26 20 14 	clr  [ %i0 + 0x14 ]
 20085c8:	82 06 20 18 	add  %i0, 0x18, %g1
 20085cc:	c0 20 40 00 	clr  [ %g1 ]
 20085d0:	c0 20 60 04 	clr  [ %g1 + 4 ]
 20085d4:	c0 20 60 08 	clr  [ %g1 + 8 ]
 20085d8:	81 c7 e0 08 	ret 
 20085dc:	81 e8 00 00 	restore 
 20085e0:	7f ff e3 fe 	call  20015d8 <memset>
 20085e4:	92 10 20 00 	clr  %o1
 20085e8:	81 c7 e0 08 	ret 
 20085ec:	81 e8 00 00 	restore 

020085f0 <_close_r>:
 20085f0:	9d e3 bf a0 	save  %sp, -96, %sp
 20085f4:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 20085f8:	90 10 00 19 	mov  %i1, %o0
 20085fc:	7f ff e3 bb 	call  20014e8 <close>
 2008600:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 2008604:	80 a2 3f ff 	cmp  %o0, -1
 2008608:	02 80 00 04 	be  2008618 <_close_r+0x28>
 200860c:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008610:	81 c7 e0 08 	ret 
 2008614:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008618:	80 a0 60 00 	cmp  %g1, 0
 200861c:	02 bf ff fd 	be  2008610 <_close_r+0x20>
 2008620:	01 00 00 00 	nop 
 2008624:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008628:	81 c7 e0 08 	ret 
 200862c:	91 e8 00 08 	restore  %g0, %o0, %o0

02008630 <_fclose_r>:
 2008630:	9d e3 bf a0 	save  %sp, -96, %sp
 2008634:	80 a6 60 00 	cmp  %i1, 0
 2008638:	02 80 00 0d 	be  200866c <_fclose_r+0x3c>
 200863c:	ba 10 00 18 	mov  %i0, %i5
 2008640:	80 a6 20 00 	cmp  %i0, 0
 2008644:	22 80 00 07 	be,a   2008660 <_fclose_r+0x30>
 2008648:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1
 200864c:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 2008650:	80 a0 60 00 	cmp  %g1, 0
 2008654:	02 80 00 2f 	be  2008710 <_fclose_r+0xe0>
 2008658:	01 00 00 00 	nop 
 200865c:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1
 2008660:	80 a0 60 00 	cmp  %g1, 0
 2008664:	12 80 00 04 	bne  2008674 <_fclose_r+0x44>
 2008668:	90 10 00 1d 	mov  %i5, %o0
 200866c:	81 c7 e0 08 	ret 
 2008670:	91 e8 20 00 	restore  %g0, 0, %o0
 2008674:	7f ff f2 3f 	call  2004f70 <_fflush_r>
 2008678:	92 10 00 19 	mov  %i1, %o1
 200867c:	c2 06 60 2c 	ld  [ %i1 + 0x2c ], %g1
 2008680:	80 a0 60 00 	cmp  %g1, 0
 2008684:	02 80 00 08 	be  20086a4 <_fclose_r+0x74>
 2008688:	b0 10 00 08 	mov  %o0, %i0
 200868c:	90 10 00 1d 	mov  %i5, %o0
 2008690:	9f c0 40 00 	call  %g1
 2008694:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2008698:	80 a2 20 00 	cmp  %o0, 0
 200869c:	26 80 00 02 	bl,a   20086a4 <_fclose_r+0x74>
 20086a0:	b0 10 3f ff 	mov  -1, %i0
 20086a4:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20086a8:	80 88 60 80 	btst  0x80, %g1
 20086ac:	12 80 00 1d 	bne  2008720 <_fclose_r+0xf0>
 20086b0:	90 10 00 1d 	mov  %i5, %o0
 20086b4:	d2 06 60 30 	ld  [ %i1 + 0x30 ], %o1
 20086b8:	80 a2 60 00 	cmp  %o1, 0
 20086bc:	02 80 00 08 	be  20086dc <_fclose_r+0xac>
 20086c0:	82 06 60 40 	add  %i1, 0x40, %g1
 20086c4:	80 a2 40 01 	cmp  %o1, %g1
 20086c8:	22 80 00 05 	be,a   20086dc <_fclose_r+0xac>
 20086cc:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 20086d0:	7f ff f3 34 	call  20053a0 <_free_r>
 20086d4:	90 10 00 1d 	mov  %i5, %o0
 20086d8:	c0 26 60 30 	clr  [ %i1 + 0x30 ]
 20086dc:	d2 06 60 44 	ld  [ %i1 + 0x44 ], %o1
 20086e0:	80 a2 60 00 	cmp  %o1, 0
 20086e4:	02 80 00 05 	be  20086f8 <_fclose_r+0xc8>
 20086e8:	01 00 00 00 	nop 
 20086ec:	7f ff f3 2d 	call  20053a0 <_free_r>
 20086f0:	90 10 00 1d 	mov  %i5, %o0
 20086f4:	c0 26 60 44 	clr  [ %i1 + 0x44 ]
 20086f8:	7f ff f2 d9 	call  200525c <__sfp_lock_acquire>
 20086fc:	01 00 00 00 	nop 
 2008700:	7f ff f2 d9 	call  2005264 <__sfp_lock_release>
 2008704:	c0 36 60 0c 	clrh  [ %i1 + 0xc ]
 2008708:	81 c7 e0 08 	ret 
 200870c:	81 e8 00 00 	restore 
 2008710:	7f ff f2 7a 	call  20050f8 <__sinit>
 2008714:	90 10 00 18 	mov  %i0, %o0
 2008718:	10 bf ff d2 	b  2008660 <_fclose_r+0x30>
 200871c:	c2 56 60 0c 	ldsh  [ %i1 + 0xc ], %g1
 2008720:	7f ff f3 20 	call  20053a0 <_free_r>
 2008724:	d2 06 60 10 	ld  [ %i1 + 0x10 ], %o1
 2008728:	10 bf ff e4 	b  20086b8 <_fclose_r+0x88>
 200872c:	d2 06 60 30 	ld  [ %i1 + 0x30 ], %o1

02008730 <fclose>:
 2008730:	92 10 00 08 	mov  %o0, %o1
 2008734:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2008738:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0	! 200a408 <_impure_ptr>
 200873c:	82 13 c0 00 	mov  %o7, %g1
 2008740:	7f ff ff bc 	call  2008630 <_fclose_r>
 2008744:	9e 10 40 00 	mov  %g1, %o7

02008748 <_fputwc_r>:
 2008748:	9d e3 bf 98 	save  %sp, -104, %sp
 200874c:	03 00 00 08 	sethi  %hi(0x2000), %g1
 2008750:	c4 16 a0 0c 	lduh  [ %i2 + 0xc ], %g2
 2008754:	80 88 40 02 	btst  %g1, %g2
 2008758:	12 80 00 06 	bne  2008770 <_fputwc_r+0x28>
 200875c:	84 10 80 01 	or  %g2, %g1, %g2
 2008760:	c6 06 a0 64 	ld  [ %i2 + 0x64 ], %g3
 2008764:	82 10 c0 01 	or  %g3, %g1, %g1
 2008768:	c4 36 a0 0c 	sth  %g2, [ %i2 + 0xc ]
 200876c:	c2 26 a0 64 	st  %g1, [ %i2 + 0x64 ]
 2008770:	7f ff f4 17 	call  20057cc <__locale_mb_cur_max>
 2008774:	01 00 00 00 	nop 
 2008778:	80 a2 20 01 	cmp  %o0, 1
 200877c:	02 80 00 40 	be  200887c <_fputwc_r+0x134>
 2008780:	82 06 7f ff 	add  %i1, -1, %g1
 2008784:	b6 07 bf f8 	add  %fp, -8, %i3
 2008788:	90 10 00 18 	mov  %i0, %o0
 200878c:	92 10 00 1b 	mov  %i3, %o1
 2008790:	94 10 00 19 	mov  %i1, %o2
 2008794:	40 00 04 67 	call  2009930 <_wcrtomb_r>
 2008798:	96 06 a0 5c 	add  %i2, 0x5c, %o3
 200879c:	80 a2 3f ff 	cmp  %o0, -1
 20087a0:	02 80 00 29 	be  2008844 <_fputwc_r+0xfc>
 20087a4:	b8 10 00 08 	mov  %o0, %i4
 20087a8:	80 a2 20 00 	cmp  %o0, 0
 20087ac:	02 80 00 2b 	be  2008858 <_fputwc_r+0x110>
 20087b0:	01 00 00 00 	nop 
 20087b4:	10 80 00 0c 	b  20087e4 <_fputwc_r+0x9c>
 20087b8:	ba 10 20 00 	clr  %i5	! 0 <_.xy-0x4>
 20087bc:	c2 06 80 00 	ld  [ %i2 ], %g1
 20087c0:	c4 0e c0 1d 	ldub  [ %i3 + %i5 ], %g2
 20087c4:	c4 28 40 00 	stb  %g2, [ %g1 ]
 20087c8:	c2 06 80 00 	ld  [ %i2 ], %g1
 20087cc:	82 00 60 01 	inc  %g1
 20087d0:	c2 26 80 00 	st  %g1, [ %i2 ]
 20087d4:	ba 07 60 01 	inc  %i5
 20087d8:	80 a7 40 1c 	cmp  %i5, %i4
 20087dc:	1a 80 00 1f 	bcc  2008858 <_fputwc_r+0x110>
 20087e0:	01 00 00 00 	nop 
 20087e4:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 20087e8:	82 00 7f ff 	add  %g1, -1, %g1
 20087ec:	80 a0 60 00 	cmp  %g1, 0
 20087f0:	16 bf ff f3 	bge  20087bc <_fputwc_r+0x74>
 20087f4:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
 20087f8:	c4 06 a0 18 	ld  [ %i2 + 0x18 ], %g2
 20087fc:	80 a0 40 02 	cmp  %g1, %g2
 2008800:	06 80 00 18 	bl  2008860 <_fputwc_r+0x118>
 2008804:	90 10 00 18 	mov  %i0, %o0
 2008808:	c2 06 80 00 	ld  [ %i2 ], %g1
 200880c:	c4 0e c0 1d 	ldub  [ %i3 + %i5 ], %g2
 2008810:	c4 28 40 00 	stb  %g2, [ %g1 ]
 2008814:	c2 06 80 00 	ld  [ %i2 ], %g1
 2008818:	c4 08 40 00 	ldub  [ %g1 ], %g2
 200881c:	80 a0 a0 0a 	cmp  %g2, 0xa
 2008820:	02 80 00 1d 	be  2008894 <_fputwc_r+0x14c>
 2008824:	82 00 60 01 	inc  %g1
 2008828:	84 10 20 00 	clr  %g2
 200882c:	c2 26 80 00 	st  %g1, [ %i2 ]
 2008830:	80 88 a0 ff 	btst  0xff, %g2
 2008834:	02 bf ff e9 	be  20087d8 <_fputwc_r+0x90>
 2008838:	ba 07 60 01 	inc  %i5
 200883c:	81 c7 e0 08 	ret 
 2008840:	91 e8 3f ff 	restore  %g0, -1, %o0
 2008844:	c2 16 a0 0c 	lduh  [ %i2 + 0xc ], %g1
 2008848:	82 10 60 40 	or  %g1, 0x40, %g1
 200884c:	c2 36 a0 0c 	sth  %g1, [ %i2 + 0xc ]
 2008850:	81 c7 e0 08 	ret 
 2008854:	91 e8 3f ff 	restore  %g0, -1, %o0
 2008858:	81 c7 e0 08 	ret 
 200885c:	91 e8 00 19 	restore  %g0, %i1, %o0
 2008860:	d2 0e c0 1d 	ldub  [ %i3 + %i5 ], %o1
 2008864:	40 00 03 cd 	call  2009798 <__swbuf_r>
 2008868:	94 10 00 1a 	mov  %i2, %o2
 200886c:	90 38 00 08 	xnor  %g0, %o0, %o0
 2008870:	80 a0 00 08 	cmp  %g0, %o0
 2008874:	10 bf ff ef 	b  2008830 <_fputwc_r+0xe8>
 2008878:	84 60 3f ff 	subx  %g0, -1, %g2
 200887c:	80 a0 60 fe 	cmp  %g1, 0xfe
 2008880:	18 bf ff c2 	bgu  2008788 <_fputwc_r+0x40>
 2008884:	b6 07 bf f8 	add  %fp, -8, %i3
 2008888:	f2 2f bf f8 	stb  %i1, [ %fp + -8 ]
 200888c:	10 bf ff ca 	b  20087b4 <_fputwc_r+0x6c>
 2008890:	b8 10 20 01 	mov  1, %i4
 2008894:	10 bf ff f4 	b  2008864 <_fputwc_r+0x11c>
 2008898:	92 10 20 0a 	mov  0xa, %o1

0200889c <fputwc>:
 200889c:	9d e3 bf a0 	save  %sp, -96, %sp
 20088a0:	3b 00 80 29 	sethi  %hi(0x200a400), %i5
 20088a4:	b8 10 00 18 	mov  %i0, %i4
 20088a8:	f0 07 60 08 	ld  [ %i5 + 8 ], %i0
 20088ac:	80 a6 20 00 	cmp  %i0, 0
 20088b0:	02 80 00 09 	be  20088d4 <fputwc+0x38>
 20088b4:	b4 10 00 19 	mov  %i1, %i2
 20088b8:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 20088bc:	80 a0 60 00 	cmp  %g1, 0
 20088c0:	12 80 00 05 	bne  20088d4 <fputwc+0x38>
 20088c4:	01 00 00 00 	nop 
 20088c8:	7f ff f2 0c 	call  20050f8 <__sinit>
 20088cc:	90 10 00 18 	mov  %i0, %o0
 20088d0:	f0 07 60 08 	ld  [ %i5 + 8 ], %i0
 20088d4:	7f ff ff 9d 	call  2008748 <_fputwc_r>
 20088d8:	93 e8 00 1c 	restore  %g0, %i4, %o1

020088dc <_fstat_r>:
 20088dc:	9d e3 bf a0 	save  %sp, -96, %sp
 20088e0:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 20088e4:	90 10 00 19 	mov  %i1, %o0
 20088e8:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 20088ec:	7f ff e3 04 	call  20014fc <fstat>
 20088f0:	92 10 00 1a 	mov  %i2, %o1
 20088f4:	80 a2 3f ff 	cmp  %o0, -1
 20088f8:	02 80 00 04 	be  2008908 <_fstat_r+0x2c>
 20088fc:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008900:	81 c7 e0 08 	ret 
 2008904:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008908:	80 a0 60 00 	cmp  %g1, 0
 200890c:	02 bf ff fd 	be  2008900 <_fstat_r+0x24>
 2008910:	01 00 00 00 	nop 
 2008914:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008918:	81 c7 e0 08 	ret 
 200891c:	91 e8 00 08 	restore  %g0, %o0, %o0

02008920 <__sfvwrite_r>:
 2008920:	9d e3 bf a0 	save  %sp, -96, %sp
 2008924:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2008928:	80 a0 60 00 	cmp  %g1, 0
 200892c:	02 80 00 24 	be  20089bc <__sfvwrite_r+0x9c>
 2008930:	01 00 00 00 	nop 
 2008934:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008938:	80 88 60 08 	btst  8, %g1
 200893c:	02 80 00 22 	be  20089c4 <__sfvwrite_r+0xa4>
 2008940:	90 10 00 18 	mov  %i0, %o0
 2008944:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2008948:	80 a0 a0 00 	cmp  %g2, 0
 200894c:	02 80 00 1e 	be  20089c4 <__sfvwrite_r+0xa4>
 2008950:	80 88 60 02 	btst  2, %g1
 2008954:	02 80 00 25 	be  20089e8 <__sfvwrite_r+0xc8>
 2008958:	fa 06 80 00 	ld  [ %i2 ], %i5
 200895c:	b6 10 20 00 	clr  %i3
 2008960:	b8 10 20 00 	clr  %i4
 2008964:	94 10 00 1b 	mov  %i3, %o2
 2008968:	80 a7 20 00 	cmp  %i4, 0
 200896c:	02 80 00 56 	be  2008ac4 <__sfvwrite_r+0x1a4>
 2008970:	90 10 00 18 	mov  %i0, %o0
 2008974:	96 10 00 1c 	mov  %i4, %o3
 2008978:	80 a7 24 00 	cmp  %i4, 0x400
 200897c:	08 80 00 03 	bleu  2008988 <__sfvwrite_r+0x68>
 2008980:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2008984:	96 10 24 00 	mov  0x400, %o3
 2008988:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
 200898c:	9f c0 40 00 	call  %g1
 2008990:	01 00 00 00 	nop 
 2008994:	80 a2 20 00 	cmp  %o0, 0
 2008998:	24 80 00 5a 	ble,a   2008b00 <__sfvwrite_r+0x1e0>
 200899c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20089a0:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 20089a4:	82 20 40 08 	sub  %g1, %o0, %g1
 20089a8:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
 20089ac:	b6 06 c0 08 	add  %i3, %o0, %i3
 20089b0:	80 a0 60 00 	cmp  %g1, 0
 20089b4:	12 bf ff ec 	bne  2008964 <__sfvwrite_r+0x44>
 20089b8:	b8 27 00 08 	sub  %i4, %o0, %i4
 20089bc:	81 c7 e0 08 	ret 
 20089c0:	91 e8 20 00 	restore  %g0, 0, %o0
 20089c4:	7f ff ea dd 	call  2003538 <__swsetup_r>
 20089c8:	92 10 00 19 	mov  %i1, %o1
 20089cc:	80 a2 20 00 	cmp  %o0, 0
 20089d0:	12 80 01 03 	bne  2008ddc <__sfvwrite_r+0x4bc>
 20089d4:	01 00 00 00 	nop 
 20089d8:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 20089dc:	80 88 60 02 	btst  2, %g1
 20089e0:	12 bf ff df 	bne  200895c <__sfvwrite_r+0x3c>
 20089e4:	fa 06 80 00 	ld  [ %i2 ], %i5
 20089e8:	80 88 60 01 	btst  1, %g1
 20089ec:	02 80 00 49 	be  2008b10 <__sfvwrite_r+0x1f0>
 20089f0:	a0 10 20 00 	clr  %l0
 20089f4:	a6 10 20 00 	clr  %l3
 20089f8:	a4 10 20 00 	clr  %l2
 20089fc:	b6 10 20 00 	clr  %i3
 2008a00:	80 a6 e0 00 	cmp  %i3, 0
 2008a04:	22 80 00 2c 	be,a   2008ab4 <__sfvwrite_r+0x194>
 2008a08:	e4 07 40 00 	ld  [ %i5 ], %l2
 2008a0c:	80 a4 e0 00 	cmp  %l3, 0
 2008a10:	02 80 00 a3 	be  2008c9c <__sfvwrite_r+0x37c>
 2008a14:	90 10 00 12 	mov  %l2, %o0
 2008a18:	80 a4 00 1b 	cmp  %l0, %i3
 2008a1c:	08 80 00 03 	bleu  2008a28 <__sfvwrite_r+0x108>
 2008a20:	a2 10 00 10 	mov  %l0, %l1
 2008a24:	a2 10 00 1b 	mov  %i3, %l1
 2008a28:	d0 06 40 00 	ld  [ %i1 ], %o0
 2008a2c:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
 2008a30:	f8 06 60 08 	ld  [ %i1 + 8 ], %i4
 2008a34:	80 a2 00 01 	cmp  %o0, %g1
 2008a38:	08 80 00 06 	bleu  2008a50 <__sfvwrite_r+0x130>
 2008a3c:	d6 06 60 14 	ld  [ %i1 + 0x14 ], %o3
 2008a40:	b8 07 00 0b 	add  %i4, %o3, %i4
 2008a44:	80 a4 40 1c 	cmp  %l1, %i4
 2008a48:	14 80 00 c8 	bg  2008d68 <__sfvwrite_r+0x448>
 2008a4c:	92 10 00 12 	mov  %l2, %o1
 2008a50:	80 a4 40 0b 	cmp  %l1, %o3
 2008a54:	06 80 00 6e 	bl  2008c0c <__sfvwrite_r+0x2ec>
 2008a58:	94 10 00 11 	mov  %l1, %o2
 2008a5c:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
 2008a60:	90 10 00 18 	mov  %i0, %o0
 2008a64:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2008a68:	9f c0 40 00 	call  %g1
 2008a6c:	94 10 00 12 	mov  %l2, %o2
 2008a70:	b8 92 20 00 	orcc  %o0, 0, %i4
 2008a74:	24 80 00 23 	ble,a   2008b00 <__sfvwrite_r+0x1e0>
 2008a78:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008a7c:	a0 a4 00 1c 	subcc  %l0, %i4, %l0
 2008a80:	02 80 00 6f 	be  2008c3c <__sfvwrite_r+0x31c>
 2008a84:	90 10 00 18 	mov  %i0, %o0
 2008a88:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2008a8c:	82 20 40 1c 	sub  %g1, %i4, %g1
 2008a90:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
 2008a94:	a4 04 80 1c 	add  %l2, %i4, %l2
 2008a98:	80 a0 60 00 	cmp  %g1, 0
 2008a9c:	02 bf ff c8 	be  20089bc <__sfvwrite_r+0x9c>
 2008aa0:	b6 26 c0 1c 	sub  %i3, %i4, %i3
 2008aa4:	80 a6 e0 00 	cmp  %i3, 0
 2008aa8:	12 bf ff da 	bne  2008a10 <__sfvwrite_r+0xf0>
 2008aac:	80 a4 e0 00 	cmp  %l3, 0
 2008ab0:	e4 07 40 00 	ld  [ %i5 ], %l2
 2008ab4:	f6 07 60 04 	ld  [ %i5 + 4 ], %i3
 2008ab8:	a6 10 20 00 	clr  %l3
 2008abc:	10 bf ff d1 	b  2008a00 <__sfvwrite_r+0xe0>
 2008ac0:	ba 07 60 08 	add  %i5, 8, %i5
 2008ac4:	f6 07 40 00 	ld  [ %i5 ], %i3
 2008ac8:	f8 07 60 04 	ld  [ %i5 + 4 ], %i4
 2008acc:	10 bf ff a6 	b  2008964 <__sfvwrite_r+0x44>
 2008ad0:	ba 07 60 08 	add  %i5, 8, %i5
 2008ad4:	40 00 01 4a 	call  2008ffc <_realloc_r>
 2008ad8:	01 00 00 00 	nop 
 2008adc:	a4 92 20 00 	orcc  %o0, 0, %l2
 2008ae0:	12 80 00 98 	bne  2008d40 <__sfvwrite_r+0x420>
 2008ae4:	90 04 80 11 	add  %l2, %l1, %o0
 2008ae8:	90 10 00 18 	mov  %i0, %o0
 2008aec:	7f ff f2 2d 	call  20053a0 <_free_r>
 2008af0:	d2 06 60 10 	ld  [ %i1 + 0x10 ], %o1
 2008af4:	82 10 20 0c 	mov  0xc, %g1
 2008af8:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008afc:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008b00:	82 10 60 40 	or  %g1, 0x40, %g1
 2008b04:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2008b08:	81 c7 e0 08 	ret 
 2008b0c:	91 e8 3f ff 	restore  %g0, -1, %o0
 2008b10:	b8 10 20 00 	clr  %i4
 2008b14:	80 a7 20 00 	cmp  %i4, 0
 2008b18:	22 80 00 24 	be,a   2008ba8 <__sfvwrite_r+0x288>
 2008b1c:	e0 07 40 00 	ld  [ %i5 ], %l0
 2008b20:	80 88 62 00 	btst  0x200, %g1
 2008b24:	02 80 00 24 	be  2008bb4 <__sfvwrite_r+0x294>
 2008b28:	f6 06 60 08 	ld  [ %i1 + 8 ], %i3
 2008b2c:	80 a7 00 1b 	cmp  %i4, %i3
 2008b30:	0a 80 00 4a 	bcs  2008c58 <__sfvwrite_r+0x338>
 2008b34:	a4 10 00 1b 	mov  %i3, %l2
 2008b38:	84 08 64 80 	and  %g1, 0x480, %g2
 2008b3c:	80 a0 a0 00 	cmp  %g2, 0
 2008b40:	32 80 00 61 	bne,a   2008cc4 <__sfvwrite_r+0x3a4>
 2008b44:	c4 06 60 14 	ld  [ %i1 + 0x14 ], %g2
 2008b48:	a6 10 00 1b 	mov  %i3, %l3
 2008b4c:	d0 06 40 00 	ld  [ %i1 ], %o0
 2008b50:	a2 10 00 1c 	mov  %i4, %l1
 2008b54:	b6 10 00 1c 	mov  %i4, %i3
 2008b58:	94 10 00 12 	mov  %l2, %o2
 2008b5c:	40 00 00 c4 	call  2008e6c <memmove>
 2008b60:	92 10 00 10 	mov  %l0, %o1
 2008b64:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2008b68:	c4 06 40 00 	ld  [ %i1 ], %g2
 2008b6c:	82 20 40 13 	sub  %g1, %l3, %g1
 2008b70:	a4 00 80 12 	add  %g2, %l2, %l2
 2008b74:	c2 26 60 08 	st  %g1, [ %i1 + 8 ]
 2008b78:	e4 26 40 00 	st  %l2, [ %i1 ]
 2008b7c:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2008b80:	b6 20 40 1b 	sub  %g1, %i3, %i3
 2008b84:	f6 26 a0 08 	st  %i3, [ %i2 + 8 ]
 2008b88:	a0 04 00 11 	add  %l0, %l1, %l0
 2008b8c:	80 a6 e0 00 	cmp  %i3, 0
 2008b90:	02 bf ff 8b 	be  20089bc <__sfvwrite_r+0x9c>
 2008b94:	b8 27 00 11 	sub  %i4, %l1, %i4
 2008b98:	80 a7 20 00 	cmp  %i4, 0
 2008b9c:	12 bf ff e1 	bne  2008b20 <__sfvwrite_r+0x200>
 2008ba0:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008ba4:	e0 07 40 00 	ld  [ %i5 ], %l0
 2008ba8:	f8 07 60 04 	ld  [ %i5 + 4 ], %i4
 2008bac:	10 bf ff da 	b  2008b14 <__sfvwrite_r+0x1f4>
 2008bb0:	ba 07 60 08 	add  %i5, 8, %i5
 2008bb4:	d0 06 40 00 	ld  [ %i1 ], %o0
 2008bb8:	c2 06 60 10 	ld  [ %i1 + 0x10 ], %g1
 2008bbc:	80 a2 00 01 	cmp  %o0, %g1
 2008bc0:	28 80 00 06 	bleu,a   2008bd8 <__sfvwrite_r+0x2b8>
 2008bc4:	d6 06 60 14 	ld  [ %i1 + 0x14 ], %o3
 2008bc8:	80 a7 00 1b 	cmp  %i4, %i3
 2008bcc:	18 80 00 74 	bgu  2008d9c <__sfvwrite_r+0x47c>
 2008bd0:	a2 10 00 1b 	mov  %i3, %l1
 2008bd4:	d6 06 60 14 	ld  [ %i1 + 0x14 ], %o3
 2008bd8:	80 a7 00 0b 	cmp  %i4, %o3
 2008bdc:	0a 80 00 25 	bcs  2008c70 <__sfvwrite_r+0x350>
 2008be0:	92 10 00 10 	mov  %l0, %o1
 2008be4:	c2 06 60 24 	ld  [ %i1 + 0x24 ], %g1
 2008be8:	90 10 00 18 	mov  %i0, %o0
 2008bec:	d2 06 60 1c 	ld  [ %i1 + 0x1c ], %o1
 2008bf0:	9f c0 40 00 	call  %g1
 2008bf4:	94 10 00 10 	mov  %l0, %o2
 2008bf8:	b6 92 20 00 	orcc  %o0, 0, %i3
 2008bfc:	24 bf ff c1 	ble,a   2008b00 <__sfvwrite_r+0x1e0>
 2008c00:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008c04:	10 bf ff de 	b  2008b7c <__sfvwrite_r+0x25c>
 2008c08:	a2 10 00 1b 	mov  %i3, %l1
 2008c0c:	40 00 00 98 	call  2008e6c <memmove>
 2008c10:	92 10 00 12 	mov  %l2, %o1
 2008c14:	b8 10 00 11 	mov  %l1, %i4
 2008c18:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2008c1c:	c4 06 40 00 	ld  [ %i1 ], %g2
 2008c20:	82 20 40 11 	sub  %g1, %l1, %g1
 2008c24:	a2 00 80 11 	add  %g2, %l1, %l1
 2008c28:	c2 26 60 08 	st  %g1, [ %i1 + 8 ]
 2008c2c:	a0 a4 00 1c 	subcc  %l0, %i4, %l0
 2008c30:	12 bf ff 96 	bne  2008a88 <__sfvwrite_r+0x168>
 2008c34:	e2 26 40 00 	st  %l1, [ %i1 ]
 2008c38:	90 10 00 18 	mov  %i0, %o0
 2008c3c:	7f ff f0 cd 	call  2004f70 <_fflush_r>
 2008c40:	92 10 00 19 	mov  %i1, %o1
 2008c44:	80 a2 20 00 	cmp  %o0, 0
 2008c48:	12 bf ff ad 	bne  2008afc <__sfvwrite_r+0x1dc>
 2008c4c:	a6 10 20 00 	clr  %l3
 2008c50:	10 bf ff 8f 	b  2008a8c <__sfvwrite_r+0x16c>
 2008c54:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2008c58:	a6 10 00 1c 	mov  %i4, %l3
 2008c5c:	d0 06 40 00 	ld  [ %i1 ], %o0
 2008c60:	a2 10 00 1c 	mov  %i4, %l1
 2008c64:	b6 10 00 1c 	mov  %i4, %i3
 2008c68:	10 bf ff bc 	b  2008b58 <__sfvwrite_r+0x238>
 2008c6c:	a4 10 00 1c 	mov  %i4, %l2
 2008c70:	40 00 00 7f 	call  2008e6c <memmove>
 2008c74:	94 10 00 1c 	mov  %i4, %o2
 2008c78:	c4 06 60 08 	ld  [ %i1 + 8 ], %g2
 2008c7c:	c2 06 40 00 	ld  [ %i1 ], %g1
 2008c80:	84 20 80 1c 	sub  %g2, %i4, %g2
 2008c84:	82 00 40 1c 	add  %g1, %i4, %g1
 2008c88:	b6 10 00 1c 	mov  %i4, %i3
 2008c8c:	a2 10 00 1c 	mov  %i4, %l1
 2008c90:	c4 26 60 08 	st  %g2, [ %i1 + 8 ]
 2008c94:	10 bf ff ba 	b  2008b7c <__sfvwrite_r+0x25c>
 2008c98:	c2 26 40 00 	st  %g1, [ %i1 ]
 2008c9c:	92 10 20 0a 	mov  0xa, %o1
 2008ca0:	7f ff f5 15 	call  20060f4 <memchr>
 2008ca4:	94 10 00 1b 	mov  %i3, %o2
 2008ca8:	80 a2 20 00 	cmp  %o0, 0
 2008cac:	22 80 00 4a 	be,a   2008dd4 <__sfvwrite_r+0x4b4>
 2008cb0:	a0 06 e0 01 	add  %i3, 1, %l0
 2008cb4:	a0 02 20 01 	add  %o0, 1, %l0
 2008cb8:	a6 10 20 01 	mov  1, %l3
 2008cbc:	10 bf ff 57 	b  2008a18 <__sfvwrite_r+0xf8>
 2008cc0:	a0 24 00 12 	sub  %l0, %l2, %l0
 2008cc4:	87 28 a0 01 	sll  %g2, 1, %g3
 2008cc8:	84 00 c0 02 	add  %g3, %g2, %g2
 2008ccc:	b7 30 a0 1f 	srl  %g2, 0x1f, %i3
 2008cd0:	d2 06 60 10 	ld  [ %i1 + 0x10 ], %o1
 2008cd4:	e2 06 40 00 	ld  [ %i1 ], %l1
 2008cd8:	84 06 c0 02 	add  %i3, %g2, %g2
 2008cdc:	a2 24 40 09 	sub  %l1, %o1, %l1
 2008ce0:	b7 38 a0 01 	sra  %g2, 1, %i3
 2008ce4:	86 04 60 01 	add  %l1, 1, %g3
 2008ce8:	86 00 c0 1c 	add  %g3, %i4, %g3
 2008cec:	80 a6 c0 03 	cmp  %i3, %g3
 2008cf0:	1a 80 00 04 	bcc  2008d00 <__sfvwrite_r+0x3e0>
 2008cf4:	94 10 00 1b 	mov  %i3, %o2
 2008cf8:	b6 10 00 03 	mov  %g3, %i3
 2008cfc:	94 10 00 03 	mov  %g3, %o2
 2008d00:	80 88 64 00 	btst  0x400, %g1
 2008d04:	02 bf ff 74 	be  2008ad4 <__sfvwrite_r+0x1b4>
 2008d08:	90 10 00 18 	mov  %i0, %o0
 2008d0c:	7f ff f3 25 	call  20059a0 <_malloc_r>
 2008d10:	92 10 00 0a 	mov  %o2, %o1
 2008d14:	a4 92 20 00 	orcc  %o0, 0, %l2
 2008d18:	02 bf ff 78 	be  2008af8 <__sfvwrite_r+0x1d8>
 2008d1c:	82 10 20 0c 	mov  0xc, %g1
 2008d20:	d2 06 60 10 	ld  [ %i1 + 0x10 ], %o1
 2008d24:	7f ff f5 38 	call  2006204 <memcpy>
 2008d28:	94 10 00 11 	mov  %l1, %o2
 2008d2c:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008d30:	82 08 7b 7f 	and  %g1, -1153, %g1
 2008d34:	82 10 60 80 	or  %g1, 0x80, %g1
 2008d38:	c2 36 60 0c 	sth  %g1, [ %i1 + 0xc ]
 2008d3c:	90 04 80 11 	add  %l2, %l1, %o0
 2008d40:	a2 26 c0 11 	sub  %i3, %l1, %l1
 2008d44:	e4 26 60 10 	st  %l2, [ %i1 + 0x10 ]
 2008d48:	f6 26 60 14 	st  %i3, [ %i1 + 0x14 ]
 2008d4c:	e2 26 60 08 	st  %l1, [ %i1 + 8 ]
 2008d50:	d0 26 40 00 	st  %o0, [ %i1 ]
 2008d54:	a6 10 00 1c 	mov  %i4, %l3
 2008d58:	a2 10 00 1c 	mov  %i4, %l1
 2008d5c:	b6 10 00 1c 	mov  %i4, %i3
 2008d60:	10 bf ff 7e 	b  2008b58 <__sfvwrite_r+0x238>
 2008d64:	a4 10 00 1c 	mov  %i4, %l2
 2008d68:	40 00 00 41 	call  2008e6c <memmove>
 2008d6c:	94 10 00 1c 	mov  %i4, %o2
 2008d70:	c2 06 40 00 	ld  [ %i1 ], %g1
 2008d74:	82 00 40 1c 	add  %g1, %i4, %g1
 2008d78:	90 10 00 18 	mov  %i0, %o0
 2008d7c:	92 10 00 19 	mov  %i1, %o1
 2008d80:	7f ff f0 7c 	call  2004f70 <_fflush_r>
 2008d84:	c2 26 40 00 	st  %g1, [ %i1 ]
 2008d88:	80 a2 20 00 	cmp  %o0, 0
 2008d8c:	22 bf ff 3d 	be,a   2008a80 <__sfvwrite_r+0x160>
 2008d90:	a0 a4 00 1c 	subcc  %l0, %i4, %l0
 2008d94:	10 bf ff 5b 	b  2008b00 <__sfvwrite_r+0x1e0>
 2008d98:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008d9c:	92 10 00 10 	mov  %l0, %o1
 2008da0:	40 00 00 33 	call  2008e6c <memmove>
 2008da4:	94 10 00 1b 	mov  %i3, %o2
 2008da8:	c2 06 40 00 	ld  [ %i1 ], %g1
 2008dac:	82 00 40 1b 	add  %g1, %i3, %g1
 2008db0:	90 10 00 18 	mov  %i0, %o0
 2008db4:	92 10 00 19 	mov  %i1, %o1
 2008db8:	7f ff f0 6e 	call  2004f70 <_fflush_r>
 2008dbc:	c2 26 40 00 	st  %g1, [ %i1 ]
 2008dc0:	80 a2 20 00 	cmp  %o0, 0
 2008dc4:	22 bf ff 6f 	be,a   2008b80 <__sfvwrite_r+0x260>
 2008dc8:	c2 06 a0 08 	ld  [ %i2 + 8 ], %g1
 2008dcc:	10 bf ff 4d 	b  2008b00 <__sfvwrite_r+0x1e0>
 2008dd0:	c2 16 60 0c 	lduh  [ %i1 + 0xc ], %g1
 2008dd4:	10 bf ff 11 	b  2008a18 <__sfvwrite_r+0xf8>
 2008dd8:	a6 10 20 01 	mov  1, %l3
 2008ddc:	81 c7 e0 08 	ret 
 2008de0:	91 e8 3f ff 	restore  %g0, -1, %o0

02008de4 <_isatty_r>:
 2008de4:	9d e3 bf a0 	save  %sp, -96, %sp
 2008de8:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 2008dec:	90 10 00 19 	mov  %i1, %o0
 2008df0:	7f ff e1 d2 	call  2001538 <isatty>
 2008df4:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 2008df8:	80 a2 3f ff 	cmp  %o0, -1
 2008dfc:	02 80 00 04 	be  2008e0c <_isatty_r+0x28>
 2008e00:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008e04:	81 c7 e0 08 	ret 
 2008e08:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008e0c:	80 a0 60 00 	cmp  %g1, 0
 2008e10:	02 bf ff fd 	be  2008e04 <_isatty_r+0x20>
 2008e14:	01 00 00 00 	nop 
 2008e18:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008e1c:	81 c7 e0 08 	ret 
 2008e20:	91 e8 00 08 	restore  %g0, %o0, %o0

02008e24 <_lseek_r>:
 2008e24:	9d e3 bf a0 	save  %sp, -96, %sp
 2008e28:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 2008e2c:	90 10 00 19 	mov  %i1, %o0
 2008e30:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 2008e34:	92 10 00 1a 	mov  %i2, %o1
 2008e38:	7f ff e1 b8 	call  2001518 <lseek>
 2008e3c:	94 10 00 1b 	mov  %i3, %o2
 2008e40:	80 a2 3f ff 	cmp  %o0, -1
 2008e44:	02 80 00 04 	be  2008e54 <_lseek_r+0x30>
 2008e48:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008e4c:	81 c7 e0 08 	ret 
 2008e50:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008e54:	80 a0 60 00 	cmp  %g1, 0
 2008e58:	02 bf ff fd 	be  2008e4c <_lseek_r+0x28>
 2008e5c:	01 00 00 00 	nop 
 2008e60:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008e64:	81 c7 e0 08 	ret 
 2008e68:	91 e8 00 08 	restore  %g0, %o0, %o0

02008e6c <memmove>:
 2008e6c:	80 a2 00 09 	cmp  %o0, %o1
 2008e70:	08 80 00 15 	bleu  2008ec4 <memmove+0x58>
 2008e74:	80 a2 a0 0f 	cmp  %o2, 0xf
 2008e78:	9a 02 40 0a 	add  %o1, %o2, %o5
 2008e7c:	80 a2 00 0d 	cmp  %o0, %o5
 2008e80:	1a 80 00 11 	bcc  2008ec4 <memmove+0x58>
 2008e84:	80 a2 a0 0f 	cmp  %o2, 0xf
 2008e88:	98 02 00 0a 	add  %o0, %o2, %o4
 2008e8c:	82 02 bf ff 	add  %o2, -1, %g1
 2008e90:	80 a2 a0 00 	cmp  %o2, 0
 2008e94:	02 80 00 0a 	be  2008ebc <memmove+0x50>
 2008e98:	84 20 00 0a 	neg  %o2, %g2
 2008e9c:	88 03 40 02 	add  %o5, %g2, %g4
 2008ea0:	86 03 00 02 	add  %o4, %g2, %g3
 2008ea4:	c8 09 00 01 	ldub  [ %g4 + %g1 ], %g4
 2008ea8:	c8 28 c0 01 	stb  %g4, [ %g3 + %g1 ]
 2008eac:	82 00 7f ff 	add  %g1, -1, %g1
 2008eb0:	80 a0 7f ff 	cmp  %g1, -1
 2008eb4:	12 bf ff fc 	bne  2008ea4 <memmove+0x38>
 2008eb8:	88 03 40 02 	add  %o5, %g2, %g4
 2008ebc:	81 c3 e0 08 	retl 
 2008ec0:	01 00 00 00 	nop 
 2008ec4:	18 80 00 0f 	bgu  2008f00 <memmove+0x94>
 2008ec8:	82 12 40 08 	or  %o1, %o0, %g1
 2008ecc:	86 10 00 08 	mov  %o0, %g3
 2008ed0:	80 a2 a0 00 	cmp  %o2, 0
 2008ed4:	02 80 00 34 	be  2008fa4 <memmove+0x138>
 2008ed8:	01 00 00 00 	nop 
 2008edc:	82 10 20 00 	clr  %g1	! 0 <_.xy-0x4>
 2008ee0:	c4 0a 40 01 	ldub  [ %o1 + %g1 ], %g2
 2008ee4:	c4 28 c0 01 	stb  %g2, [ %g3 + %g1 ]
 2008ee8:	82 00 60 01 	inc  %g1
 2008eec:	80 a0 40 0a 	cmp  %g1, %o2
 2008ef0:	32 bf ff fd 	bne,a   2008ee4 <memmove+0x78>
 2008ef4:	c4 0a 40 01 	ldub  [ %o1 + %g1 ], %g2
 2008ef8:	81 c3 e0 08 	retl 
 2008efc:	01 00 00 00 	nop 
 2008f00:	80 88 60 03 	btst  3, %g1
 2008f04:	12 bf ff f6 	bne  2008edc <memmove+0x70>
 2008f08:	86 10 00 08 	mov  %o0, %g3
 2008f0c:	84 10 00 09 	mov  %o1, %g2
 2008f10:	82 10 00 08 	mov  %o0, %g1
 2008f14:	86 10 00 0a 	mov  %o2, %g3
 2008f18:	c8 00 80 00 	ld  [ %g2 ], %g4
 2008f1c:	c8 20 40 00 	st  %g4, [ %g1 ]
 2008f20:	c8 00 a0 04 	ld  [ %g2 + 4 ], %g4
 2008f24:	c8 20 60 04 	st  %g4, [ %g1 + 4 ]
 2008f28:	c8 00 a0 08 	ld  [ %g2 + 8 ], %g4
 2008f2c:	c8 20 60 08 	st  %g4, [ %g1 + 8 ]
 2008f30:	c8 00 a0 0c 	ld  [ %g2 + 0xc ], %g4
 2008f34:	c8 20 60 0c 	st  %g4, [ %g1 + 0xc ]
 2008f38:	86 00 ff f0 	add  %g3, -16, %g3
 2008f3c:	82 00 60 10 	add  %g1, 0x10, %g1
 2008f40:	80 a0 e0 0f 	cmp  %g3, 0xf
 2008f44:	18 bf ff f5 	bgu  2008f18 <memmove+0xac>
 2008f48:	84 00 a0 10 	add  %g2, 0x10, %g2
 2008f4c:	84 02 bf f0 	add  %o2, -16, %g2
 2008f50:	82 0a a0 0f 	and  %o2, 0xf, %g1
 2008f54:	84 08 bf f0 	and  %g2, -16, %g2
 2008f58:	80 a0 60 03 	cmp  %g1, 3
 2008f5c:	84 00 a0 10 	add  %g2, 0x10, %g2
 2008f60:	86 02 00 02 	add  %o0, %g2, %g3
 2008f64:	08 80 00 12 	bleu  2008fac <memmove+0x140>
 2008f68:	92 02 40 02 	add  %o1, %g2, %o1
 2008f6c:	88 00 7f fc 	add  %g1, -4, %g4
 2008f70:	82 10 20 00 	clr  %g1
 2008f74:	88 09 3f fc 	and  %g4, -4, %g4
 2008f78:	88 01 20 04 	add  %g4, 4, %g4
 2008f7c:	c4 02 40 01 	ld  [ %o1 + %g1 ], %g2
 2008f80:	c4 20 c0 01 	st  %g2, [ %g3 + %g1 ]
 2008f84:	82 00 60 04 	add  %g1, 4, %g1
 2008f88:	80 a0 40 04 	cmp  %g1, %g4
 2008f8c:	32 bf ff fd 	bne,a   2008f80 <memmove+0x114>
 2008f90:	c4 02 40 01 	ld  [ %o1 + %g1 ], %g2
 2008f94:	94 0a a0 03 	and  %o2, 3, %o2
 2008f98:	92 02 40 01 	add  %o1, %g1, %o1
 2008f9c:	10 bf ff cd 	b  2008ed0 <memmove+0x64>
 2008fa0:	86 00 c0 01 	add  %g3, %g1, %g3
 2008fa4:	81 c3 e0 08 	retl 
 2008fa8:	01 00 00 00 	nop 
 2008fac:	10 bf ff c9 	b  2008ed0 <memmove+0x64>
 2008fb0:	94 10 00 01 	mov  %g1, %o2

02008fb4 <_read_r>:
 2008fb4:	9d e3 bf a0 	save  %sp, -96, %sp
 2008fb8:	3b 00 80 2b 	sethi  %hi(0x200ac00), %i5
 2008fbc:	90 10 00 19 	mov  %i1, %o0
 2008fc0:	c0 27 61 10 	clr  [ %i5 + 0x110 ]
 2008fc4:	92 10 00 1a 	mov  %i2, %o1
 2008fc8:	7f ff e1 33 	call  2001494 <read>
 2008fcc:	94 10 00 1b 	mov  %i3, %o2
 2008fd0:	80 a2 3f ff 	cmp  %o0, -1
 2008fd4:	02 80 00 04 	be  2008fe4 <_read_r+0x30>
 2008fd8:	c2 07 61 10 	ld  [ %i5 + 0x110 ], %g1
 2008fdc:	81 c7 e0 08 	ret 
 2008fe0:	91 e8 00 08 	restore  %g0, %o0, %o0
 2008fe4:	80 a0 60 00 	cmp  %g1, 0
 2008fe8:	02 bf ff fd 	be  2008fdc <_read_r+0x28>
 2008fec:	01 00 00 00 	nop 
 2008ff0:	c2 26 00 00 	st  %g1, [ %i0 ]
 2008ff4:	81 c7 e0 08 	ret 
 2008ff8:	91 e8 00 08 	restore  %g0, %o0, %o0

02008ffc <_realloc_r>:
 2008ffc:	9d e3 bf a0 	save  %sp, -96, %sp
 2009000:	80 a6 60 00 	cmp  %i1, 0
 2009004:	02 80 00 b9 	be  20092e8 <_realloc_r+0x2ec>
 2009008:	b8 10 00 18 	mov  %i0, %i4
 200900c:	7f ff f4 bb 	call  20062f8 <__malloc_lock>
 2009010:	90 10 00 18 	mov  %i0, %o0
 2009014:	c2 06 7f fc 	ld  [ %i1 + -4 ], %g1
 2009018:	ba 06 a0 0b 	add  %i2, 0xb, %i5
 200901c:	a0 06 7f f8 	add  %i1, -8, %l0
 2009020:	80 a7 60 16 	cmp  %i5, 0x16
 2009024:	18 80 00 43 	bgu  2009130 <_realloc_r+0x134>
 2009028:	b6 08 7f fc 	and  %g1, -4, %i3
 200902c:	84 10 20 00 	clr  %g2
 2009030:	86 10 20 10 	mov  0x10, %g3
 2009034:	ba 10 20 10 	mov  0x10, %i5
 2009038:	80 a7 40 1a 	cmp  %i5, %i2
 200903c:	0a 80 00 ad 	bcs  20092f0 <_realloc_r+0x2f4>
 2009040:	80 88 a0 ff 	btst  0xff, %g2
 2009044:	12 80 00 ab 	bne  20092f0 <_realloc_r+0x2f4>
 2009048:	80 a6 c0 03 	cmp  %i3, %g3
 200904c:	36 80 00 3d 	bge,a   2009140 <_realloc_r+0x144>
 2009050:	b0 10 00 1b 	mov  %i3, %i0
 2009054:	84 04 00 1b 	add  %l0, %i3, %g2
 2009058:	25 00 80 2a 	sethi  %hi(0x200a800), %l2
 200905c:	a4 14 a0 c0 	or  %l2, 0xc0, %l2	! 200a8c0 <__malloc_av_>
 2009060:	c8 04 a0 08 	ld  [ %l2 + 8 ], %g4
 2009064:	80 a1 00 02 	cmp  %g4, %g2
 2009068:	22 80 00 a6 	be,a   2009300 <_realloc_r+0x304>
 200906c:	de 01 20 04 	ld  [ %g4 + 4 ], %o7
 2009070:	f0 00 a0 04 	ld  [ %g2 + 4 ], %i0
 2009074:	9e 0e 3f fe 	and  %i0, -2, %o7
 2009078:	9e 00 80 0f 	add  %g2, %o7, %o7
 200907c:	de 03 e0 04 	ld  [ %o7 + 4 ], %o7
 2009080:	80 8b e0 01 	btst  1, %o7
 2009084:	02 80 00 3e 	be  200917c <_realloc_r+0x180>
 2009088:	9e 0e 3f fc 	and  %i0, -4, %o7
 200908c:	9e 10 20 00 	clr  %o7
 2009090:	84 10 20 00 	clr  %g2
 2009094:	80 88 60 01 	btst  1, %g1
 2009098:	12 80 00 53 	bne  20091e4 <_realloc_r+0x1e8>
 200909c:	80 a0 a0 00 	cmp  %g2, 0
 20090a0:	e2 06 7f f8 	ld  [ %i1 + -8 ], %l1
 20090a4:	a2 24 00 11 	sub  %l0, %l1, %l1
 20090a8:	e6 04 60 04 	ld  [ %l1 + 4 ], %l3
 20090ac:	a6 0c ff fc 	and  %l3, -4, %l3
 20090b0:	02 80 00 6d 	be  2009264 <_realloc_r+0x268>
 20090b4:	a6 04 c0 1b 	add  %l3, %i3, %l3
 20090b8:	80 a0 80 04 	cmp  %g2, %g4
 20090bc:	02 80 00 c5 	be  20093d0 <_realloc_r+0x3d4>
 20090c0:	b0 03 c0 13 	add  %o7, %l3, %i0
 20090c4:	80 a6 00 03 	cmp  %i0, %g3
 20090c8:	06 80 00 68 	bl  2009268 <_realloc_r+0x26c>
 20090cc:	80 a4 c0 03 	cmp  %l3, %g3
 20090d0:	c2 00 a0 0c 	ld  [ %g2 + 0xc ], %g1
 20090d4:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 20090d8:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
 20090dc:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 20090e0:	c2 04 60 0c 	ld  [ %l1 + 0xc ], %g1
 20090e4:	c4 04 60 08 	ld  [ %l1 + 8 ], %g2
 20090e8:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
 20090ec:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 20090f0:	94 06 ff fc 	add  %i3, -4, %o2
 20090f4:	80 a2 a0 24 	cmp  %o2, 0x24
 20090f8:	18 80 00 ee 	bgu  20094b0 <_realloc_r+0x4b4>
 20090fc:	86 04 60 08 	add  %l1, 8, %g3
 2009100:	80 a2 a0 13 	cmp  %o2, 0x13
 2009104:	08 80 00 8f 	bleu  2009340 <_realloc_r+0x344>
 2009108:	82 10 00 03 	mov  %g3, %g1
 200910c:	c2 06 40 00 	ld  [ %i1 ], %g1
 2009110:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
 2009114:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 2009118:	80 a2 a0 1b 	cmp  %o2, 0x1b
 200911c:	18 80 00 ee 	bgu  20094d4 <_realloc_r+0x4d8>
 2009120:	c2 24 60 0c 	st  %g1, [ %l1 + 0xc ]
 2009124:	82 04 60 10 	add  %l1, 0x10, %g1
 2009128:	10 80 00 87 	b  2009344 <_realloc_r+0x348>
 200912c:	84 06 60 08 	add  %i1, 8, %g2
 2009130:	ba 0f 7f f8 	and  %i5, -8, %i5
 2009134:	86 10 00 1d 	mov  %i5, %g3
 2009138:	10 bf ff c0 	b  2009038 <_realloc_r+0x3c>
 200913c:	85 37 60 1f 	srl  %i5, 0x1f, %g2
 2009140:	84 26 00 1d 	sub  %i0, %i5, %g2
 2009144:	80 a0 a0 0f 	cmp  %g2, 0xf
 2009148:	18 80 00 16 	bgu  20091a0 <_realloc_r+0x1a4>
 200914c:	82 08 60 01 	and  %g1, 1, %g1
 2009150:	82 10 40 18 	or  %g1, %i0, %g1
 2009154:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
 2009158:	a0 04 00 18 	add  %l0, %i0, %l0
 200915c:	c2 04 20 04 	ld  [ %l0 + 4 ], %g1
 2009160:	82 10 60 01 	or  %g1, 1, %g1
 2009164:	b0 10 00 19 	mov  %i1, %i0
 2009168:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
 200916c:	7f ff f4 65 	call  2006300 <__malloc_unlock>
 2009170:	90 10 00 1c 	mov  %i4, %o0
 2009174:	81 c7 e0 08 	ret 
 2009178:	81 e8 00 00 	restore 
 200917c:	b0 03 c0 1b 	add  %o7, %i3, %i0
 2009180:	80 a6 00 03 	cmp  %i0, %g3
 2009184:	06 bf ff c5 	bl  2009098 <_realloc_r+0x9c>
 2009188:	80 88 60 01 	btst  1, %g1
 200918c:	c6 00 a0 0c 	ld  [ %g2 + 0xc ], %g3
 2009190:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 2009194:	c6 20 a0 0c 	st  %g3, [ %g2 + 0xc ]
 2009198:	10 bf ff ea 	b  2009140 <_realloc_r+0x144>
 200919c:	c4 20 e0 08 	st  %g2, [ %g3 + 8 ]
 20091a0:	82 10 40 1d 	or  %g1, %i5, %g1
 20091a4:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
 20091a8:	82 10 a0 01 	or  %g2, 1, %g1
 20091ac:	92 04 00 1d 	add  %l0, %i5, %o1
 20091b0:	84 02 40 02 	add  %o1, %g2, %g2
 20091b4:	c2 22 60 04 	st  %g1, [ %o1 + 4 ]
 20091b8:	c2 00 a0 04 	ld  [ %g2 + 4 ], %g1
 20091bc:	82 10 60 01 	or  %g1, 1, %g1
 20091c0:	90 10 00 1c 	mov  %i4, %o0
 20091c4:	92 02 60 08 	add  %o1, 8, %o1
 20091c8:	7f ff f0 76 	call  20053a0 <_free_r>
 20091cc:	c2 20 a0 04 	st  %g1, [ %g2 + 4 ]
 20091d0:	b0 10 00 19 	mov  %i1, %i0
 20091d4:	7f ff f4 4b 	call  2006300 <__malloc_unlock>
 20091d8:	90 10 00 1c 	mov  %i4, %o0
 20091dc:	81 c7 e0 08 	ret 
 20091e0:	81 e8 00 00 	restore 
 20091e4:	90 10 00 1c 	mov  %i4, %o0
 20091e8:	7f ff f1 ee 	call  20059a0 <_malloc_r>
 20091ec:	92 10 00 1a 	mov  %i2, %o1
 20091f0:	b0 92 20 00 	orcc  %o0, 0, %i0
 20091f4:	02 80 00 18 	be  2009254 <_realloc_r+0x258>
 20091f8:	86 06 3f f8 	add  %i0, -8, %g3
 20091fc:	c2 06 7f fc 	ld  [ %i1 + -4 ], %g1
 2009200:	84 08 7f fe 	and  %g1, -2, %g2
 2009204:	84 04 00 02 	add  %l0, %g2, %g2
 2009208:	80 a0 c0 02 	cmp  %g3, %g2
 200920c:	02 80 00 a5 	be  20094a0 <_realloc_r+0x4a4>
 2009210:	94 06 ff fc 	add  %i3, -4, %o2
 2009214:	80 a2 a0 24 	cmp  %o2, 0x24
 2009218:	18 80 00 6a 	bgu  20093c0 <_realloc_r+0x3c4>
 200921c:	80 a2 a0 13 	cmp  %o2, 0x13
 2009220:	38 80 00 40 	bgu,a   2009320 <_realloc_r+0x324>
 2009224:	c2 06 40 00 	ld  [ %i1 ], %g1
 2009228:	82 10 00 18 	mov  %i0, %g1
 200922c:	84 10 00 19 	mov  %i1, %g2
 2009230:	c6 00 80 00 	ld  [ %g2 ], %g3
 2009234:	c6 20 40 00 	st  %g3, [ %g1 ]
 2009238:	c6 00 a0 04 	ld  [ %g2 + 4 ], %g3
 200923c:	c6 20 60 04 	st  %g3, [ %g1 + 4 ]
 2009240:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 2009244:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 2009248:	92 10 00 19 	mov  %i1, %o1
 200924c:	7f ff f0 55 	call  20053a0 <_free_r>
 2009250:	90 10 00 1c 	mov  %i4, %o0
 2009254:	7f ff f4 2b 	call  2006300 <__malloc_unlock>
 2009258:	90 10 00 1c 	mov  %i4, %o0
 200925c:	81 c7 e0 08 	ret 
 2009260:	81 e8 00 00 	restore 
 2009264:	80 a4 c0 03 	cmp  %l3, %g3
 2009268:	06 bf ff e0 	bl  20091e8 <_realloc_r+0x1ec>
 200926c:	90 10 00 1c 	mov  %i4, %o0
 2009270:	c2 04 60 0c 	ld  [ %l1 + 0xc ], %g1
 2009274:	c4 04 60 08 	ld  [ %l1 + 8 ], %g2
 2009278:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
 200927c:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 2009280:	94 06 ff fc 	add  %i3, -4, %o2
 2009284:	80 a2 a0 24 	cmp  %o2, 0x24
 2009288:	18 80 00 39 	bgu  200936c <_realloc_r+0x370>
 200928c:	86 04 60 08 	add  %l1, 8, %g3
 2009290:	80 a2 a0 13 	cmp  %o2, 0x13
 2009294:	08 80 00 8e 	bleu  20094cc <_realloc_r+0x4d0>
 2009298:	82 10 00 03 	mov  %g3, %g1
 200929c:	c2 06 40 00 	ld  [ %i1 ], %g1
 20092a0:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
 20092a4:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 20092a8:	80 a2 a0 1b 	cmp  %o2, 0x1b
 20092ac:	18 80 00 9a 	bgu  2009514 <_realloc_r+0x518>
 20092b0:	c2 24 60 0c 	st  %g1, [ %l1 + 0xc ]
 20092b4:	82 04 60 10 	add  %l1, 0x10, %g1
 20092b8:	84 06 60 08 	add  %i1, 8, %g2
 20092bc:	c8 00 80 00 	ld  [ %g2 ], %g4
 20092c0:	b2 10 00 03 	mov  %g3, %i1
 20092c4:	c8 20 40 00 	st  %g4, [ %g1 ]
 20092c8:	b0 10 00 13 	mov  %l3, %i0
 20092cc:	c6 00 a0 04 	ld  [ %g2 + 4 ], %g3
 20092d0:	a0 10 00 11 	mov  %l1, %l0
 20092d4:	c6 20 60 04 	st  %g3, [ %g1 + 4 ]
 20092d8:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 20092dc:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 20092e0:	10 bf ff 98 	b  2009140 <_realloc_r+0x144>
 20092e4:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
 20092e8:	7f ff f1 ae 	call  20059a0 <_malloc_r>
 20092ec:	93 e8 00 1a 	restore  %g0, %i2, %o1
 20092f0:	82 10 20 0c 	mov  0xc, %g1
 20092f4:	c2 27 00 00 	st  %g1, [ %i4 ]
 20092f8:	81 c7 e0 08 	ret 
 20092fc:	91 e8 20 00 	restore  %g0, 0, %o0
 2009300:	9a 07 60 10 	add  %i5, 0x10, %o5
 2009304:	9e 0b ff fc 	and  %o7, -4, %o7
 2009308:	84 03 c0 1b 	add  %o7, %i3, %g2
 200930c:	80 a0 80 0d 	cmp  %g2, %o5
 2009310:	36 80 00 1f 	bge,a   200938c <_realloc_r+0x390>
 2009314:	82 20 80 1d 	sub  %g2, %i5, %g1
 2009318:	10 bf ff 5f 	b  2009094 <_realloc_r+0x98>
 200931c:	84 10 00 04 	mov  %g4, %g2
 2009320:	c2 26 00 00 	st  %g1, [ %i0 ]
 2009324:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 2009328:	80 a2 a0 1b 	cmp  %o2, 0x1b
 200932c:	18 80 00 54 	bgu  200947c <_realloc_r+0x480>
 2009330:	c2 26 20 04 	st  %g1, [ %i0 + 4 ]
 2009334:	82 06 20 08 	add  %i0, 8, %g1
 2009338:	10 bf ff be 	b  2009230 <_realloc_r+0x234>
 200933c:	84 06 60 08 	add  %i1, 8, %g2
 2009340:	84 10 00 19 	mov  %i1, %g2
 2009344:	c8 00 80 00 	ld  [ %g2 ], %g4
 2009348:	b2 10 00 03 	mov  %g3, %i1
 200934c:	c8 20 40 00 	st  %g4, [ %g1 ]
 2009350:	a0 10 00 11 	mov  %l1, %l0
 2009354:	c6 00 a0 04 	ld  [ %g2 + 4 ], %g3
 2009358:	c6 20 60 04 	st  %g3, [ %g1 + 4 ]
 200935c:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 2009360:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 2009364:	10 bf ff 77 	b  2009140 <_realloc_r+0x144>
 2009368:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
 200936c:	92 10 00 19 	mov  %i1, %o1
 2009370:	90 10 00 03 	mov  %g3, %o0
 2009374:	7f ff fe be 	call  2008e6c <memmove>
 2009378:	b2 10 00 03 	mov  %g3, %i1
 200937c:	b0 10 00 13 	mov  %l3, %i0
 2009380:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
 2009384:	10 bf ff 6f 	b  2009140 <_realloc_r+0x144>
 2009388:	a0 10 00 11 	mov  %l1, %l0
 200938c:	82 10 60 01 	or  %g1, 1, %g1
 2009390:	a0 04 00 1d 	add  %l0, %i5, %l0
 2009394:	c2 24 20 04 	st  %g1, [ %l0 + 4 ]
 2009398:	c2 06 7f fc 	ld  [ %i1 + -4 ], %g1
 200939c:	82 08 60 01 	and  %g1, 1, %g1
 20093a0:	b0 10 00 19 	mov  %i1, %i0
 20093a4:	ba 17 40 01 	or  %i5, %g1, %i5
 20093a8:	e0 24 a0 08 	st  %l0, [ %l2 + 8 ]
 20093ac:	90 10 00 1c 	mov  %i4, %o0
 20093b0:	7f ff f3 d4 	call  2006300 <__malloc_unlock>
 20093b4:	fa 26 7f fc 	st  %i5, [ %i1 + -4 ]
 20093b8:	81 c7 e0 08 	ret 
 20093bc:	81 e8 00 00 	restore 
 20093c0:	7f ff fe ab 	call  2008e6c <memmove>
 20093c4:	92 10 00 19 	mov  %i1, %o1
 20093c8:	10 bf ff a1 	b  200924c <_realloc_r+0x250>
 20093cc:	92 10 00 19 	mov  %i1, %o1
 20093d0:	82 07 60 10 	add  %i5, 0x10, %g1
 20093d4:	a8 03 c0 13 	add  %o7, %l3, %l4
 20093d8:	80 a5 00 01 	cmp  %l4, %g1
 20093dc:	06 bf ff a3 	bl  2009268 <_realloc_r+0x26c>
 20093e0:	80 a4 c0 03 	cmp  %l3, %g3
 20093e4:	c2 04 60 0c 	ld  [ %l1 + 0xc ], %g1
 20093e8:	c4 04 60 08 	ld  [ %l1 + 8 ], %g2
 20093ec:	c2 20 a0 0c 	st  %g1, [ %g2 + 0xc ]
 20093f0:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 20093f4:	94 06 ff fc 	add  %i3, -4, %o2
 20093f8:	80 a2 a0 24 	cmp  %o2, 0x24
 20093fc:	18 80 00 5f 	bgu  2009578 <_realloc_r+0x57c>
 2009400:	b0 04 60 08 	add  %l1, 8, %i0
 2009404:	80 a2 a0 13 	cmp  %o2, 0x13
 2009408:	08 80 00 53 	bleu  2009554 <_realloc_r+0x558>
 200940c:	82 10 00 18 	mov  %i0, %g1
 2009410:	c2 06 40 00 	ld  [ %i1 ], %g1
 2009414:	c2 24 60 08 	st  %g1, [ %l1 + 8 ]
 2009418:	c2 06 60 04 	ld  [ %i1 + 4 ], %g1
 200941c:	80 a2 a0 1b 	cmp  %o2, 0x1b
 2009420:	18 80 00 5b 	bgu  200958c <_realloc_r+0x590>
 2009424:	c2 24 60 0c 	st  %g1, [ %l1 + 0xc ]
 2009428:	82 04 60 10 	add  %l1, 0x10, %g1
 200942c:	84 06 60 08 	add  %i1, 8, %g2
 2009430:	c6 00 80 00 	ld  [ %g2 ], %g3
 2009434:	c6 20 40 00 	st  %g3, [ %g1 ]
 2009438:	c6 00 a0 04 	ld  [ %g2 + 4 ], %g3
 200943c:	c6 20 60 04 	st  %g3, [ %g1 + 4 ]
 2009440:	c4 00 a0 08 	ld  [ %g2 + 8 ], %g2
 2009444:	c4 20 60 08 	st  %g2, [ %g1 + 8 ]
 2009448:	82 04 40 1d 	add  %l1, %i5, %g1
 200944c:	84 25 00 1d 	sub  %l4, %i5, %g2
 2009450:	c2 24 a0 08 	st  %g1, [ %l2 + 8 ]
 2009454:	84 10 a0 01 	or  %g2, 1, %g2
 2009458:	c4 20 60 04 	st  %g2, [ %g1 + 4 ]
 200945c:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
 2009460:	82 08 60 01 	and  %g1, 1, %g1
 2009464:	90 10 00 1c 	mov  %i4, %o0
 2009468:	ba 17 40 01 	or  %i5, %g1, %i5
 200946c:	7f ff f3 a5 	call  2006300 <__malloc_unlock>
 2009470:	fa 24 60 04 	st  %i5, [ %l1 + 4 ]
 2009474:	81 c7 e0 08 	ret 
 2009478:	81 e8 00 00 	restore 
 200947c:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2009480:	c2 26 20 08 	st  %g1, [ %i0 + 8 ]
 2009484:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
 2009488:	80 a2 a0 24 	cmp  %o2, 0x24
 200948c:	02 80 00 1b 	be  20094f8 <_realloc_r+0x4fc>
 2009490:	c2 26 20 0c 	st  %g1, [ %i0 + 0xc ]
 2009494:	82 06 20 10 	add  %i0, 0x10, %g1
 2009498:	10 bf ff 66 	b  2009230 <_realloc_r+0x234>
 200949c:	84 06 60 10 	add  %i1, 0x10, %g2
 20094a0:	f0 06 3f fc 	ld  [ %i0 + -4 ], %i0
 20094a4:	b0 0e 3f fc 	and  %i0, -4, %i0
 20094a8:	10 bf ff 26 	b  2009140 <_realloc_r+0x144>
 20094ac:	b0 06 00 1b 	add  %i0, %i3, %i0
 20094b0:	92 10 00 19 	mov  %i1, %o1
 20094b4:	90 10 00 03 	mov  %g3, %o0
 20094b8:	7f ff fe 6d 	call  2008e6c <memmove>
 20094bc:	b2 10 00 03 	mov  %g3, %i1
 20094c0:	c2 04 60 04 	ld  [ %l1 + 4 ], %g1
 20094c4:	10 bf ff 1f 	b  2009140 <_realloc_r+0x144>
 20094c8:	a0 10 00 11 	mov  %l1, %l0
 20094cc:	10 bf ff 7c 	b  20092bc <_realloc_r+0x2c0>
 20094d0:	84 10 00 19 	mov  %i1, %g2
 20094d4:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 20094d8:	c2 24 60 10 	st  %g1, [ %l1 + 0x10 ]
 20094dc:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
 20094e0:	80 a2 a0 24 	cmp  %o2, 0x24
 20094e4:	02 80 00 15 	be  2009538 <_realloc_r+0x53c>
 20094e8:	c2 24 60 14 	st  %g1, [ %l1 + 0x14 ]
 20094ec:	82 04 60 18 	add  %l1, 0x18, %g1
 20094f0:	10 bf ff 95 	b  2009344 <_realloc_r+0x348>
 20094f4:	84 06 60 10 	add  %i1, 0x10, %g2
 20094f8:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 20094fc:	82 06 20 18 	add  %i0, 0x18, %g1
 2009500:	c4 26 20 10 	st  %g2, [ %i0 + 0x10 ]
 2009504:	84 06 60 18 	add  %i1, 0x18, %g2
 2009508:	c6 06 60 14 	ld  [ %i1 + 0x14 ], %g3
 200950c:	10 bf ff 49 	b  2009230 <_realloc_r+0x234>
 2009510:	c6 26 20 14 	st  %g3, [ %i0 + 0x14 ]
 2009514:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2009518:	c2 24 60 10 	st  %g1, [ %l1 + 0x10 ]
 200951c:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
 2009520:	80 a2 a0 24 	cmp  %o2, 0x24
 2009524:	02 80 00 0e 	be  200955c <_realloc_r+0x560>
 2009528:	c2 24 60 14 	st  %g1, [ %l1 + 0x14 ]
 200952c:	82 04 60 18 	add  %l1, 0x18, %g1
 2009530:	10 bf ff 63 	b  20092bc <_realloc_r+0x2c0>
 2009534:	84 06 60 10 	add  %i1, 0x10, %g2
 2009538:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 200953c:	82 04 60 20 	add  %l1, 0x20, %g1
 2009540:	c4 24 60 18 	st  %g2, [ %l1 + 0x18 ]
 2009544:	84 06 60 18 	add  %i1, 0x18, %g2
 2009548:	c8 06 60 14 	ld  [ %i1 + 0x14 ], %g4
 200954c:	10 bf ff 7e 	b  2009344 <_realloc_r+0x348>
 2009550:	c8 24 60 1c 	st  %g4, [ %l1 + 0x1c ]
 2009554:	10 bf ff b7 	b  2009430 <_realloc_r+0x434>
 2009558:	84 10 00 19 	mov  %i1, %g2
 200955c:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 2009560:	82 04 60 20 	add  %l1, 0x20, %g1
 2009564:	c4 24 60 18 	st  %g2, [ %l1 + 0x18 ]
 2009568:	84 06 60 18 	add  %i1, 0x18, %g2
 200956c:	c8 06 60 14 	ld  [ %i1 + 0x14 ], %g4
 2009570:	10 bf ff 53 	b  20092bc <_realloc_r+0x2c0>
 2009574:	c8 24 60 1c 	st  %g4, [ %l1 + 0x1c ]
 2009578:	90 10 00 18 	mov  %i0, %o0
 200957c:	7f ff fe 3c 	call  2008e6c <memmove>
 2009580:	92 10 00 19 	mov  %i1, %o1
 2009584:	10 bf ff b2 	b  200944c <_realloc_r+0x450>
 2009588:	82 04 40 1d 	add  %l1, %i5, %g1
 200958c:	c2 06 60 08 	ld  [ %i1 + 8 ], %g1
 2009590:	c2 24 60 10 	st  %g1, [ %l1 + 0x10 ]
 2009594:	c2 06 60 0c 	ld  [ %i1 + 0xc ], %g1
 2009598:	80 a2 a0 24 	cmp  %o2, 0x24
 200959c:	02 80 00 05 	be  20095b0 <_realloc_r+0x5b4>
 20095a0:	c2 24 60 14 	st  %g1, [ %l1 + 0x14 ]
 20095a4:	82 04 60 18 	add  %l1, 0x18, %g1
 20095a8:	10 bf ff a2 	b  2009430 <_realloc_r+0x434>
 20095ac:	84 06 60 10 	add  %i1, 0x10, %g2
 20095b0:	c4 06 60 10 	ld  [ %i1 + 0x10 ], %g2
 20095b4:	82 04 60 20 	add  %l1, 0x20, %g1
 20095b8:	c4 24 60 18 	st  %g2, [ %l1 + 0x18 ]
 20095bc:	84 06 60 18 	add  %i1, 0x18, %g2
 20095c0:	c6 06 60 14 	ld  [ %i1 + 0x14 ], %g3
 20095c4:	10 bf ff 9b 	b  2009430 <_realloc_r+0x434>
 20095c8:	c6 24 60 1c 	st  %g3, [ %l1 + 0x1c ]

020095cc <cleanup_glue>:
 20095cc:	9d e3 bf a0 	save  %sp, -96, %sp
 20095d0:	d2 06 40 00 	ld  [ %i1 ], %o1
 20095d4:	80 a2 60 00 	cmp  %o1, 0
 20095d8:	02 80 00 04 	be  20095e8 <cleanup_glue+0x1c>
 20095dc:	01 00 00 00 	nop 
 20095e0:	7f ff ff fb 	call  20095cc <cleanup_glue>
 20095e4:	90 10 00 18 	mov  %i0, %o0
 20095e8:	7f ff ef 6e 	call  20053a0 <_free_r>
 20095ec:	81 e8 00 00 	restore 

020095f0 <_reclaim_reent>:
 20095f0:	9d e3 bf a0 	save  %sp, -96, %sp
 20095f4:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 20095f8:	c2 00 60 08 	ld  [ %g1 + 8 ], %g1	! 200a408 <_impure_ptr>
 20095fc:	80 a6 00 01 	cmp  %i0, %g1
 2009600:	02 80 00 38 	be  20096e0 <_reclaim_reent+0xf0>
 2009604:	01 00 00 00 	nop 
 2009608:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 200960c:	80 a0 a0 00 	cmp  %g2, 0
 2009610:	02 80 00 16 	be  2009668 <_reclaim_reent+0x78>
 2009614:	82 10 20 00 	clr  %g1
 2009618:	b8 10 20 00 	clr  %i4
 200961c:	83 28 60 02 	sll  %g1, 2, %g1
 2009620:	d2 00 80 01 	ld  [ %g2 + %g1 ], %o1
 2009624:	80 a2 60 00 	cmp  %o1, 0
 2009628:	22 80 00 0a 	be,a   2009650 <_reclaim_reent+0x60>
 200962c:	b8 07 20 01 	inc  %i4
 2009630:	fa 02 40 00 	ld  [ %o1 ], %i5
 2009634:	7f ff ef 5b 	call  20053a0 <_free_r>
 2009638:	90 10 00 18 	mov  %i0, %o0
 200963c:	92 97 60 00 	orcc  %i5, 0, %o1
 2009640:	32 bf ff fd 	bne,a   2009634 <_reclaim_reent+0x44>
 2009644:	fa 02 40 00 	ld  [ %o1 ], %i5
 2009648:	c4 06 20 4c 	ld  [ %i0 + 0x4c ], %g2
 200964c:	b8 07 20 01 	inc  %i4
 2009650:	80 a7 20 20 	cmp  %i4, 0x20
 2009654:	12 bf ff f2 	bne  200961c <_reclaim_reent+0x2c>
 2009658:	82 10 00 1c 	mov  %i4, %g1
 200965c:	90 10 00 18 	mov  %i0, %o0
 2009660:	7f ff ef 50 	call  20053a0 <_free_r>
 2009664:	92 10 00 02 	mov  %g2, %o1
 2009668:	d2 06 20 40 	ld  [ %i0 + 0x40 ], %o1
 200966c:	80 a2 60 00 	cmp  %o1, 0
 2009670:	22 80 00 05 	be,a   2009684 <_reclaim_reent+0x94>
 2009674:	d2 06 21 48 	ld  [ %i0 + 0x148 ], %o1
 2009678:	7f ff ef 4a 	call  20053a0 <_free_r>
 200967c:	90 10 00 18 	mov  %i0, %o0
 2009680:	d2 06 21 48 	ld  [ %i0 + 0x148 ], %o1
 2009684:	80 a2 60 00 	cmp  %o1, 0
 2009688:	22 80 00 0d 	be,a   20096bc <_reclaim_reent+0xcc>
 200968c:	d2 06 20 54 	ld  [ %i0 + 0x54 ], %o1
 2009690:	b8 06 21 4c 	add  %i0, 0x14c, %i4
 2009694:	80 a2 40 1c 	cmp  %o1, %i4
 2009698:	22 80 00 09 	be,a   20096bc <_reclaim_reent+0xcc>
 200969c:	d2 06 20 54 	ld  [ %i0 + 0x54 ], %o1
 20096a0:	fa 02 40 00 	ld  [ %o1 ], %i5
 20096a4:	7f ff ef 3f 	call  20053a0 <_free_r>
 20096a8:	90 10 00 18 	mov  %i0, %o0
 20096ac:	80 a7 00 1d 	cmp  %i4, %i5
 20096b0:	12 bf ff fc 	bne  20096a0 <_reclaim_reent+0xb0>
 20096b4:	92 10 00 1d 	mov  %i5, %o1
 20096b8:	d2 06 20 54 	ld  [ %i0 + 0x54 ], %o1
 20096bc:	80 a2 60 00 	cmp  %o1, 0
 20096c0:	22 80 00 05 	be,a   20096d4 <_reclaim_reent+0xe4>
 20096c4:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 20096c8:	7f ff ef 36 	call  20053a0 <_free_r>
 20096cc:	90 10 00 18 	mov  %i0, %o0
 20096d0:	c2 06 20 38 	ld  [ %i0 + 0x38 ], %g1
 20096d4:	80 a0 60 00 	cmp  %g1, 0
 20096d8:	32 80 00 04 	bne,a   20096e8 <_reclaim_reent+0xf8>
 20096dc:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
 20096e0:	81 c7 e0 08 	ret 
 20096e4:	81 e8 00 00 	restore 
 20096e8:	9f c0 40 00 	call  %g1
 20096ec:	90 10 00 18 	mov  %i0, %o0
 20096f0:	f2 06 22 e0 	ld  [ %i0 + 0x2e0 ], %i1
 20096f4:	80 a6 60 00 	cmp  %i1, 0
 20096f8:	02 bf ff fa 	be  20096e0 <_reclaim_reent+0xf0>
 20096fc:	01 00 00 00 	nop 
 2009700:	7f ff ff b3 	call  20095cc <cleanup_glue>
 2009704:	81 e8 00 00 	restore 

02009708 <_wrapup_reent>:
 2009708:	9d e3 bf a0 	save  %sp, -96, %sp
 200970c:	80 a6 20 00 	cmp  %i0, 0
 2009710:	02 80 00 20 	be  2009790 <_wrapup_reent+0x88>
 2009714:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 2009718:	f6 06 21 48 	ld  [ %i0 + 0x148 ], %i3
 200971c:	80 a6 e0 00 	cmp  %i3, 0
 2009720:	22 80 00 13 	be,a   200976c <_wrapup_reent+0x64>
 2009724:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
 2009728:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 200972c:	ba 07 20 01 	add  %i4, 1, %i5
 2009730:	b8 87 3f ff 	addcc  %i4, -1, %i4
 2009734:	bb 2f 60 02 	sll  %i5, 2, %i5
 2009738:	0c 80 00 08 	bneg  2009758 <_wrapup_reent+0x50>
 200973c:	ba 06 c0 1d 	add  %i3, %i5, %i5
 2009740:	c2 07 40 00 	ld  [ %i5 ], %g1
 2009744:	9f c0 40 00 	call  %g1
 2009748:	b8 07 3f ff 	add  %i4, -1, %i4
 200974c:	80 a7 3f ff 	cmp  %i4, -1
 2009750:	12 bf ff fc 	bne  2009740 <_wrapup_reent+0x38>
 2009754:	ba 07 7f fc 	add  %i5, -4, %i5
 2009758:	f6 06 c0 00 	ld  [ %i3 ], %i3
 200975c:	80 a6 e0 00 	cmp  %i3, 0
 2009760:	32 bf ff f3 	bne,a   200972c <_wrapup_reent+0x24>
 2009764:	f8 06 e0 04 	ld  [ %i3 + 4 ], %i4
 2009768:	c2 06 20 3c 	ld  [ %i0 + 0x3c ], %g1
 200976c:	80 a0 60 00 	cmp  %g1, 0
 2009770:	02 80 00 06 	be  2009788 <_wrapup_reent+0x80>
 2009774:	01 00 00 00 	nop 
 2009778:	9f c0 40 00 	call  %g1
 200977c:	90 10 00 18 	mov  %i0, %o0
 2009780:	81 c7 e0 08 	ret 
 2009784:	81 e8 00 00 	restore 
 2009788:	81 c7 e0 08 	ret 
 200978c:	81 e8 00 00 	restore 
 2009790:	10 bf ff e2 	b  2009718 <_wrapup_reent+0x10>
 2009794:	f0 00 60 08 	ld  [ %g1 + 8 ], %i0

02009798 <__swbuf_r>:
 2009798:	9d e3 bf a0 	save  %sp, -96, %sp
 200979c:	ba 96 20 00 	orcc  %i0, 0, %i5
 20097a0:	22 80 00 07 	be,a   20097bc <__swbuf_r+0x24>
 20097a4:	c2 06 a0 18 	ld  [ %i2 + 0x18 ], %g1
 20097a8:	c2 07 60 38 	ld  [ %i5 + 0x38 ], %g1
 20097ac:	80 a0 60 00 	cmp  %g1, 0
 20097b0:	02 80 00 55 	be  2009904 <__swbuf_r+0x16c>
 20097b4:	01 00 00 00 	nop 
 20097b8:	c2 06 a0 18 	ld  [ %i2 + 0x18 ], %g1
 20097bc:	c2 26 a0 08 	st  %g1, [ %i2 + 8 ]
 20097c0:	c2 16 a0 0c 	lduh  [ %i2 + 0xc ], %g1
 20097c4:	80 88 60 08 	btst  8, %g1
 20097c8:	02 80 00 47 	be  20098e4 <__swbuf_r+0x14c>
 20097cc:	90 10 00 1d 	mov  %i5, %o0
 20097d0:	c4 06 a0 10 	ld  [ %i2 + 0x10 ], %g2
 20097d4:	80 a0 a0 00 	cmp  %g2, 0
 20097d8:	02 80 00 43 	be  20098e4 <__swbuf_r+0x14c>
 20097dc:	01 00 00 00 	nop 
 20097e0:	07 00 00 08 	sethi  %hi(0x2000), %g3
 20097e4:	80 88 c0 01 	btst  %g3, %g1
 20097e8:	02 80 00 1b 	be  2009854 <__swbuf_r+0xbc>
 20097ec:	b0 0e 60 ff 	and  %i1, 0xff, %i0
 20097f0:	c2 06 80 00 	ld  [ %i2 ], %g1
 20097f4:	c6 06 a0 14 	ld  [ %i2 + 0x14 ], %g3
 20097f8:	84 20 40 02 	sub  %g1, %g2, %g2
 20097fc:	80 a0 80 03 	cmp  %g2, %g3
 2009800:	36 80 00 21 	bge,a   2009884 <__swbuf_r+0xec>
 2009804:	90 10 00 1d 	mov  %i5, %o0
 2009808:	c6 06 a0 08 	ld  [ %i2 + 8 ], %g3
 200980c:	86 00 ff ff 	add  %g3, -1, %g3
 2009810:	c6 26 a0 08 	st  %g3, [ %i2 + 8 ]
 2009814:	f0 28 40 00 	stb  %i0, [ %g1 ]
 2009818:	82 00 60 01 	inc  %g1
 200981c:	c2 26 80 00 	st  %g1, [ %i2 ]
 2009820:	84 00 a0 01 	inc  %g2
 2009824:	c2 06 a0 14 	ld  [ %i2 + 0x14 ], %g1
 2009828:	80 a0 40 02 	cmp  %g1, %g2
 200982c:	22 80 00 27 	be,a   20098c8 <__swbuf_r+0x130>
 2009830:	90 10 00 1d 	mov  %i5, %o0
 2009834:	c2 16 a0 0c 	lduh  [ %i2 + 0xc ], %g1
 2009838:	80 88 60 01 	btst  1, %g1
 200983c:	02 80 00 04 	be  200984c <__swbuf_r+0xb4>
 2009840:	80 a6 20 0a 	cmp  %i0, 0xa
 2009844:	02 80 00 21 	be  20098c8 <__swbuf_r+0x130>
 2009848:	90 10 00 1d 	mov  %i5, %o0
 200984c:	81 c7 e0 08 	ret 
 2009850:	81 e8 00 00 	restore 
 2009854:	82 10 40 03 	or  %g1, %g3, %g1
 2009858:	c8 06 a0 64 	ld  [ %i2 + 0x64 ], %g4
 200985c:	c2 36 a0 0c 	sth  %g1, [ %i2 + 0xc ]
 2009860:	82 29 00 03 	andn  %g4, %g3, %g1
 2009864:	c2 26 a0 64 	st  %g1, [ %i2 + 0x64 ]
 2009868:	c6 06 a0 14 	ld  [ %i2 + 0x14 ], %g3
 200986c:	c2 06 80 00 	ld  [ %i2 ], %g1
 2009870:	84 20 40 02 	sub  %g1, %g2, %g2
 2009874:	80 a0 80 03 	cmp  %g2, %g3
 2009878:	26 bf ff e5 	bl,a   200980c <__swbuf_r+0x74>
 200987c:	c6 06 a0 08 	ld  [ %i2 + 8 ], %g3
 2009880:	90 10 00 1d 	mov  %i5, %o0
 2009884:	7f ff ed bb 	call  2004f70 <_fflush_r>
 2009888:	92 10 00 1a 	mov  %i2, %o1
 200988c:	80 a2 20 00 	cmp  %o0, 0
 2009890:	12 80 00 13 	bne  20098dc <__swbuf_r+0x144>
 2009894:	84 10 20 01 	mov  1, %g2
 2009898:	c6 06 a0 08 	ld  [ %i2 + 8 ], %g3
 200989c:	86 00 ff ff 	add  %g3, -1, %g3
 20098a0:	c6 26 a0 08 	st  %g3, [ %i2 + 8 ]
 20098a4:	c2 06 80 00 	ld  [ %i2 ], %g1
 20098a8:	f0 28 40 00 	stb  %i0, [ %g1 ]
 20098ac:	82 00 60 01 	inc  %g1
 20098b0:	c2 26 80 00 	st  %g1, [ %i2 ]
 20098b4:	c2 06 a0 14 	ld  [ %i2 + 0x14 ], %g1
 20098b8:	80 a0 40 02 	cmp  %g1, %g2
 20098bc:	32 bf ff df 	bne,a   2009838 <__swbuf_r+0xa0>
 20098c0:	c2 16 a0 0c 	lduh  [ %i2 + 0xc ], %g1
 20098c4:	90 10 00 1d 	mov  %i5, %o0
 20098c8:	7f ff ed aa 	call  2004f70 <_fflush_r>
 20098cc:	92 10 00 1a 	mov  %i2, %o1
 20098d0:	80 a2 20 00 	cmp  %o0, 0
 20098d4:	02 bf ff de 	be  200984c <__swbuf_r+0xb4>
 20098d8:	01 00 00 00 	nop 
 20098dc:	81 c7 e0 08 	ret 
 20098e0:	91 e8 3f ff 	restore  %g0, -1, %o0
 20098e4:	7f ff e7 15 	call  2003538 <__swsetup_r>
 20098e8:	92 10 00 1a 	mov  %i2, %o1
 20098ec:	80 a2 20 00 	cmp  %o0, 0
 20098f0:	12 bf ff fb 	bne  20098dc <__swbuf_r+0x144>
 20098f4:	01 00 00 00 	nop 
 20098f8:	c2 16 a0 0c 	lduh  [ %i2 + 0xc ], %g1
 20098fc:	10 bf ff b9 	b  20097e0 <__swbuf_r+0x48>
 2009900:	c4 06 a0 10 	ld  [ %i2 + 0x10 ], %g2
 2009904:	7f ff ed fd 	call  20050f8 <__sinit>
 2009908:	90 10 00 1d 	mov  %i5, %o0
 200990c:	10 bf ff ac 	b  20097bc <__swbuf_r+0x24>
 2009910:	c2 06 a0 18 	ld  [ %i2 + 0x18 ], %g1

02009914 <__swbuf>:
 2009914:	94 10 00 09 	mov  %o1, %o2
 2009918:	03 00 80 29 	sethi  %hi(0x200a400), %g1
 200991c:	92 10 00 08 	mov  %o0, %o1
 2009920:	d0 00 60 08 	ld  [ %g1 + 8 ], %o0
 2009924:	82 13 c0 00 	mov  %o7, %g1
 2009928:	7f ff ff 9c 	call  2009798 <__swbuf_r>
 200992c:	9e 10 40 00 	mov  %g1, %o7

02009930 <_wcrtomb_r>:
 2009930:	9d e3 bf 90 	save  %sp, -112, %sp
 2009934:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2009938:	ba 10 00 18 	mov  %i0, %i5
 200993c:	80 a6 60 00 	cmp  %i1, 0
 2009940:	02 80 00 12 	be  2009988 <_wcrtomb_r+0x58>
 2009944:	f8 00 60 c8 	ld  [ %g1 + 0xc8 ], %i4
 2009948:	7f ff ef 9e 	call  20057c0 <__locale_charset>
 200994c:	01 00 00 00 	nop 
 2009950:	92 10 00 19 	mov  %i1, %o1
 2009954:	96 10 00 08 	mov  %o0, %o3
 2009958:	94 10 00 1a 	mov  %i2, %o2
 200995c:	90 10 00 18 	mov  %i0, %o0
 2009960:	9f c7 00 00 	call  %i4
 2009964:	98 10 00 1b 	mov  %i3, %o4
 2009968:	80 a2 3f ff 	cmp  %o0, -1
 200996c:	12 80 00 05 	bne  2009980 <_wcrtomb_r+0x50>
 2009970:	b0 10 00 08 	mov  %o0, %i0
 2009974:	c0 26 c0 00 	clr  [ %i3 ]
 2009978:	82 10 20 8a 	mov  0x8a, %g1
 200997c:	c2 27 40 00 	st  %g1, [ %i5 ]
 2009980:	81 c7 e0 08 	ret 
 2009984:	81 e8 00 00 	restore 
 2009988:	7f ff ef 8e 	call  20057c0 <__locale_charset>
 200998c:	01 00 00 00 	nop 
 2009990:	92 07 bf f0 	add  %fp, -16, %o1
 2009994:	96 10 00 08 	mov  %o0, %o3
 2009998:	94 10 20 00 	clr  %o2
 200999c:	90 10 00 18 	mov  %i0, %o0
 20099a0:	9f c7 00 00 	call  %i4
 20099a4:	98 10 00 1b 	mov  %i3, %o4
 20099a8:	10 bf ff f1 	b  200996c <_wcrtomb_r+0x3c>
 20099ac:	80 a2 3f ff 	cmp  %o0, -1

020099b0 <wcrtomb>:
 20099b0:	9d e3 bf 90 	save  %sp, -112, %sp
 20099b4:	3b 00 80 29 	sethi  %hi(0x200a400), %i5
 20099b8:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 20099bc:	f6 07 60 08 	ld  [ %i5 + 8 ], %i3
 20099c0:	80 a6 20 00 	cmp  %i0, 0
 20099c4:	02 80 00 13 	be  2009a10 <wcrtomb+0x60>
 20099c8:	f8 00 60 c8 	ld  [ %g1 + 0xc8 ], %i4
 20099cc:	7f ff ef 7d 	call  20057c0 <__locale_charset>
 20099d0:	01 00 00 00 	nop 
 20099d4:	92 10 00 18 	mov  %i0, %o1
 20099d8:	96 10 00 08 	mov  %o0, %o3
 20099dc:	94 10 00 19 	mov  %i1, %o2
 20099e0:	90 10 00 1b 	mov  %i3, %o0
 20099e4:	9f c7 00 00 	call  %i4
 20099e8:	98 10 00 1a 	mov  %i2, %o4
 20099ec:	80 a2 3f ff 	cmp  %o0, -1
 20099f0:	12 80 00 06 	bne  2009a08 <wcrtomb+0x58>
 20099f4:	b0 10 00 08 	mov  %o0, %i0
 20099f8:	c0 26 80 00 	clr  [ %i2 ]
 20099fc:	c2 07 60 08 	ld  [ %i5 + 8 ], %g1
 2009a00:	84 10 20 8a 	mov  0x8a, %g2
 2009a04:	c4 20 40 00 	st  %g2, [ %g1 ]
 2009a08:	81 c7 e0 08 	ret 
 2009a0c:	81 e8 00 00 	restore 
 2009a10:	7f ff ef 6c 	call  20057c0 <__locale_charset>
 2009a14:	01 00 00 00 	nop 
 2009a18:	92 07 bf f0 	add  %fp, -16, %o1
 2009a1c:	96 10 00 08 	mov  %o0, %o3
 2009a20:	94 10 20 00 	clr  %o2
 2009a24:	90 10 00 1b 	mov  %i3, %o0
 2009a28:	9f c7 00 00 	call  %i4
 2009a2c:	98 10 00 1a 	mov  %i2, %o4
 2009a30:	10 bf ff f0 	b  20099f0 <wcrtomb+0x40>
 2009a34:	80 a2 3f ff 	cmp  %o0, -1

02009a38 <__ascii_wctomb>:
 2009a38:	80 a2 60 00 	cmp  %o1, 0
 2009a3c:	02 80 00 08 	be  2009a5c <__ascii_wctomb+0x24>
 2009a40:	80 a2 a0 ff 	cmp  %o2, 0xff
 2009a44:	18 80 00 09 	bgu  2009a68 <__ascii_wctomb+0x30>
 2009a48:	84 10 20 8a 	mov  0x8a, %g2
 2009a4c:	d4 2a 40 00 	stb  %o2, [ %o1 ]
 2009a50:	82 10 20 01 	mov  1, %g1
 2009a54:	81 c3 e0 08 	retl 
 2009a58:	90 10 00 01 	mov  %g1, %o0
 2009a5c:	82 10 20 00 	clr  %g1
 2009a60:	81 c3 e0 08 	retl 
 2009a64:	90 10 00 01 	mov  %g1, %o0
 2009a68:	82 10 3f ff 	mov  -1, %g1
 2009a6c:	10 bf ff fa 	b  2009a54 <__ascii_wctomb+0x1c>
 2009a70:	c4 22 00 00 	st  %g2, [ %o0 ]

02009a74 <_wctomb_r>:
 2009a74:	9d e3 bf a0 	save  %sp, -96, %sp
 2009a78:	03 00 80 2b 	sethi  %hi(0x200ac00), %g1
 2009a7c:	7f ff ef 51 	call  20057c0 <__locale_charset>
 2009a80:	fa 00 60 c8 	ld  [ %g1 + 0xc8 ], %i5	! 200acc8 <__wctomb>
 2009a84:	92 10 00 19 	mov  %i1, %o1
 2009a88:	96 10 00 08 	mov  %o0, %o3
 2009a8c:	94 10 00 1a 	mov  %i2, %o2
 2009a90:	90 10 00 18 	mov  %i0, %o0
 2009a94:	9f c7 40 00 	call  %i5
 2009a98:	98 10 00 1b 	mov  %i3, %o4
 2009a9c:	81 c7 e0 08 	ret 
 2009aa0:	91 e8 00 08 	restore  %g0, %o0, %o0

02009aa4 <.umul>:
 2009aa4:	98 12 00 09 	or  %o0, %o1, %o4
 2009aa8:	81 80 00 08 	mov  %o0, %y
 2009aac:	9a ab 2f ff 	andncc  %o4, 0xfff, %o5
 2009ab0:	02 80 00 25 	be  2009b44 <mul_shortway>
 2009ab4:	98 88 00 00 	andcc  %g0, %g0, %o4
 2009ab8:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009abc:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ac0:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ac4:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ac8:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009acc:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ad0:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ad4:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ad8:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009adc:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ae0:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ae4:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009ae8:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009aec:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009af0:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009af4:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009af8:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009afc:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b00:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b04:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b08:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b0c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b10:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b14:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b18:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b1c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b20:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b24:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b28:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b2c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b30:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b34:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b38:	99 23 00 00 	mulscc  %o4, %g0, %o4
 2009b3c:	81 c3 e0 08 	retl 
 2009b40:	91 40 00 00 	rd  %y, %o0

02009b44 <mul_shortway>:
 2009b44:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b48:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b4c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b50:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b54:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b58:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b5c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b60:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b64:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b68:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b6c:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b70:	99 23 00 09 	mulscc  %o4, %o1, %o4
 2009b74:	99 23 00 00 	mulscc  %o4, %g0, %o4
 2009b78:	9b 40 00 00 	rd  %y, %o5
 2009b7c:	99 2b 20 0c 	sll  %o4, 0xc, %o4
 2009b80:	9b 33 60 14 	srl  %o5, 0x14, %o5
 2009b84:	81 c3 e0 08 	retl 
 2009b88:	90 13 40 0c 	or  %o5, %o4, %o0

02009b8c <.udiv>:
 2009b8c:	10 80 00 0b 	b  2009bb8 <ready_to_divide>
 2009b90:	86 10 20 00 	clr  %g3

02009b94 <.div>:
 2009b94:	80 92 40 08 	orcc  %o1, %o0, %g0
 2009b98:	16 80 00 08 	bge  2009bb8 <ready_to_divide>
 2009b9c:	86 1a 40 08 	xor  %o1, %o0, %g3
 2009ba0:	80 92 40 00 	tst  %o1
 2009ba4:	16 80 00 04 	bge  2009bb4 <.div+0x20>
 2009ba8:	80 92 00 00 	tst  %o0
 2009bac:	16 80 00 03 	bge  2009bb8 <ready_to_divide>
 2009bb0:	92 20 00 09 	neg  %o1
 2009bb4:	90 20 00 08 	neg  %o0

02009bb8 <ready_to_divide>:
 2009bb8:	9a 92 40 00 	orcc  %o1, %g0, %o5
 2009bbc:	12 80 00 05 	bne  2009bd0 <ready_to_divide+0x18>
 2009bc0:	96 10 00 08 	mov  %o0, %o3
 2009bc4:	91 d0 20 02 	ta  2
 2009bc8:	81 c3 e0 08 	retl 
 2009bcc:	90 10 00 00 	mov  %g0, %o0
 2009bd0:	80 a2 c0 0d 	cmp  %o3, %o5
 2009bd4:	0a 80 00 95 	bcs  2009e28 <got_result>
 2009bd8:	94 10 00 00 	mov  %g0, %o2
 2009bdc:	03 02 00 00 	sethi  %hi(0x8000000), %g1
 2009be0:	80 a2 c0 01 	cmp  %o3, %g1
 2009be4:	0a 80 00 28 	bcs  2009c84 <not_really_big>
 2009be8:	98 10 00 00 	mov  %g0, %o4
 2009bec:	80 a3 40 01 	cmp  %o5, %g1
 2009bf0:	1a 80 00 0d 	bcc  2009c24 <not_too_big>
 2009bf4:	84 10 20 01 	mov  1, %g2
 2009bf8:	9b 2b 60 04 	sll  %o5, 4, %o5
 2009bfc:	10 bf ff fc 	b  2009bec <ready_to_divide+0x34>
 2009c00:	98 03 20 01 	inc  %o4
 2009c04:	9a 83 40 0d 	addcc  %o5, %o5, %o5
 2009c08:	1a 80 00 07 	bcc  2009c24 <not_too_big>
 2009c0c:	84 00 a0 01 	inc  %g2
 2009c10:	83 28 60 04 	sll  %g1, 4, %g1
 2009c14:	9b 33 60 01 	srl  %o5, 1, %o5
 2009c18:	9a 03 40 01 	add  %o5, %g1, %o5
 2009c1c:	10 80 00 07 	b  2009c38 <do_single_div>
 2009c20:	84 20 a0 01 	dec  %g2

02009c24 <not_too_big>:
 2009c24:	80 a3 40 0b 	cmp  %o5, %o3
 2009c28:	0a bf ff f7 	bcs  2009c04 <ready_to_divide+0x4c>
 2009c2c:	01 00 00 00 	nop 
 2009c30:	02 80 00 02 	be  2009c38 <do_single_div>
 2009c34:	01 00 00 00 	nop 

02009c38 <do_single_div>:
 2009c38:	84 a0 a0 01 	deccc  %g2
 2009c3c:	06 80 00 76 	bl  2009e14 <end_regular_divide>
 2009c40:	01 00 00 00 	nop 
 2009c44:	96 22 c0 0d 	sub  %o3, %o5, %o3
 2009c48:	94 10 20 01 	mov  1, %o2
 2009c4c:	10 80 00 0a 	b  2009c74 <end_single_divloop>
 2009c50:	01 00 00 00 	nop 

02009c54 <single_divloop>:
 2009c54:	95 2a a0 01 	sll  %o2, 1, %o2
 2009c58:	06 80 00 05 	bl  2009c6c <single_divloop+0x18>
 2009c5c:	9b 33 60 01 	srl  %o5, 1, %o5
 2009c60:	96 22 c0 0d 	sub  %o3, %o5, %o3
 2009c64:	10 80 00 04 	b  2009c74 <end_single_divloop>
 2009c68:	94 02 a0 01 	inc  %o2
 2009c6c:	96 02 c0 0d 	add  %o3, %o5, %o3
 2009c70:	94 22 a0 01 	dec  %o2

02009c74 <end_single_divloop>:
 2009c74:	84 a0 a0 01 	deccc  %g2
 2009c78:	16 bf ff f7 	bge  2009c54 <single_divloop>
 2009c7c:	80 92 c0 00 	tst  %o3
 2009c80:	30 80 00 65 	b,a   2009e14 <end_regular_divide>

02009c84 <not_really_big>:
 2009c84:	9b 2b 60 04 	sll  %o5, 4, %o5
 2009c88:	80 a3 40 0b 	cmp  %o5, %o3
 2009c8c:	08 bf ff fe 	bleu  2009c84 <not_really_big>
 2009c90:	98 83 20 01 	inccc  %o4
 2009c94:	02 80 00 65 	be  2009e28 <got_result>
 2009c98:	98 23 20 01 	dec  %o4
 2009c9c:	80 92 c0 00 	tst  %o3

02009ca0 <divloop>:
 2009ca0:	95 2a a0 04 	sll  %o2, 4, %o2
 2009ca4:	06 80 00 2f 	bl  2009d60 <L1.16>
 2009ca8:	9b 33 60 01 	srl  %o5, 1, %o5
 2009cac:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009cb0:	06 80 00 17 	bl  2009d0c <L2.17>
 2009cb4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009cb8:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009cbc:	06 80 00 0b 	bl  2009ce8 <L3.19>
 2009cc0:	9b 33 60 01 	srl  %o5, 1, %o5
 2009cc4:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009cc8:	06 80 00 05 	bl  2009cdc <L4.23>
 2009ccc:	9b 33 60 01 	srl  %o5, 1, %o5
 2009cd0:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009cd4:	10 80 00 50 	b  2009e14 <end_regular_divide>
 2009cd8:	94 02 a0 0f 	add  %o2, 0xf, %o2

02009cdc <L4.23>:
 2009cdc:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009ce0:	10 80 00 4d 	b  2009e14 <end_regular_divide>
 2009ce4:	94 02 a0 0d 	add  %o2, 0xd, %o2

02009ce8 <L3.19>:
 2009ce8:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009cec:	06 80 00 05 	bl  2009d00 <L4.21>
 2009cf0:	9b 33 60 01 	srl  %o5, 1, %o5
 2009cf4:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009cf8:	10 80 00 47 	b  2009e14 <end_regular_divide>
 2009cfc:	94 02 a0 0b 	add  %o2, 0xb, %o2

02009d00 <L4.21>:
 2009d00:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d04:	10 80 00 44 	b  2009e14 <end_regular_divide>
 2009d08:	94 02 a0 09 	add  %o2, 9, %o2

02009d0c <L2.17>:
 2009d0c:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d10:	06 80 00 0b 	bl  2009d3c <L3.17>
 2009d14:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d18:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d1c:	06 80 00 05 	bl  2009d30 <L4.19>
 2009d20:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d24:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d28:	10 80 00 3b 	b  2009e14 <end_regular_divide>
 2009d2c:	94 02 a0 07 	add  %o2, 7, %o2

02009d30 <L4.19>:
 2009d30:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d34:	10 80 00 38 	b  2009e14 <end_regular_divide>
 2009d38:	94 02 a0 05 	add  %o2, 5, %o2

02009d3c <L3.17>:
 2009d3c:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d40:	06 80 00 05 	bl  2009d54 <L4.17>
 2009d44:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d48:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d4c:	10 80 00 32 	b  2009e14 <end_regular_divide>
 2009d50:	94 02 a0 03 	add  %o2, 3, %o2

02009d54 <L4.17>:
 2009d54:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d58:	10 80 00 2f 	b  2009e14 <end_regular_divide>
 2009d5c:	94 02 a0 01 	inc  %o2

02009d60 <L1.16>:
 2009d60:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d64:	06 80 00 17 	bl  2009dc0 <L2.15>
 2009d68:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d6c:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d70:	06 80 00 0b 	bl  2009d9c <L3.15>
 2009d74:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d78:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d7c:	06 80 00 05 	bl  2009d90 <L4.15>
 2009d80:	9b 33 60 01 	srl  %o5, 1, %o5
 2009d84:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009d88:	10 80 00 23 	b  2009e14 <end_regular_divide>
 2009d8c:	94 02 bf ff 	add  %o2, -1, %o2

02009d90 <L4.15>:
 2009d90:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009d94:	10 80 00 20 	b  2009e14 <end_regular_divide>
 2009d98:	94 02 bf fd 	add  %o2, -3, %o2

02009d9c <L3.15>:
 2009d9c:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009da0:	06 80 00 05 	bl  2009db4 <L4.13>
 2009da4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009da8:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009dac:	10 80 00 1a 	b  2009e14 <end_regular_divide>
 2009db0:	94 02 bf fb 	add  %o2, -5, %o2

02009db4 <L4.13>:
 2009db4:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009db8:	10 80 00 17 	b  2009e14 <end_regular_divide>
 2009dbc:	94 02 bf f9 	add  %o2, -7, %o2

02009dc0 <L2.15>:
 2009dc0:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009dc4:	06 80 00 0b 	bl  2009df0 <L3.13>
 2009dc8:	9b 33 60 01 	srl  %o5, 1, %o5
 2009dcc:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009dd0:	06 80 00 05 	bl  2009de4 <L4.11>
 2009dd4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009dd8:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009ddc:	10 80 00 0e 	b  2009e14 <end_regular_divide>
 2009de0:	94 02 bf f7 	add  %o2, -9, %o2

02009de4 <L4.11>:
 2009de4:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009de8:	10 80 00 0b 	b  2009e14 <end_regular_divide>
 2009dec:	94 02 bf f5 	add  %o2, -11, %o2

02009df0 <L3.13>:
 2009df0:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009df4:	06 80 00 05 	bl  2009e08 <L4.9>
 2009df8:	9b 33 60 01 	srl  %o5, 1, %o5
 2009dfc:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009e00:	10 80 00 05 	b  2009e14 <end_regular_divide>
 2009e04:	94 02 bf f3 	add  %o2, -13, %o2

02009e08 <L4.9>:
 2009e08:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009e0c:	10 80 00 02 	b  2009e14 <end_regular_divide>
 2009e10:	94 02 bf f1 	add  %o2, -15, %o2

02009e14 <end_regular_divide>:
 2009e14:	98 a3 20 01 	deccc  %o4
 2009e18:	16 bf ff a2 	bge  2009ca0 <divloop>
 2009e1c:	80 92 c0 00 	tst  %o3
 2009e20:	26 80 00 02 	bl,a   2009e28 <got_result>
 2009e24:	94 22 a0 01 	dec  %o2

02009e28 <got_result>:
 2009e28:	80 90 c0 00 	tst  %g3
 2009e2c:	26 80 00 02 	bl,a   2009e34 <got_result+0xc>
 2009e30:	94 20 00 0a 	neg  %o2
 2009e34:	81 c3 e0 08 	retl 
 2009e38:	90 10 00 0a 	mov  %o2, %o0

02009e3c <.urem>:
 2009e3c:	10 80 00 0b 	b  2009e68 <divide>
 2009e40:	86 10 20 00 	clr  %g3

02009e44 <.rem>:
 2009e44:	80 92 40 08 	orcc  %o1, %o0, %g0
 2009e48:	16 80 00 08 	bge  2009e68 <divide>
 2009e4c:	86 10 00 08 	mov  %o0, %g3
 2009e50:	80 92 40 00 	tst  %o1
 2009e54:	16 80 00 04 	bge  2009e64 <.rem+0x20>
 2009e58:	80 92 00 00 	tst  %o0
 2009e5c:	16 80 00 03 	bge  2009e68 <divide>
 2009e60:	92 20 00 09 	neg  %o1
 2009e64:	90 20 00 08 	neg  %o0

02009e68 <divide>:
 2009e68:	9a 92 40 00 	orcc  %o1, %g0, %o5
 2009e6c:	12 80 00 05 	bne  2009e80 <divide+0x18>
 2009e70:	96 10 00 08 	mov  %o0, %o3
 2009e74:	91 d0 20 02 	ta  2
 2009e78:	81 c3 e0 08 	retl 
 2009e7c:	90 10 00 00 	mov  %g0, %o0
 2009e80:	80 a2 c0 0d 	cmp  %o3, %o5
 2009e84:	0a 80 00 95 	bcs  200a0d8 <got_result>
 2009e88:	94 10 00 00 	mov  %g0, %o2
 2009e8c:	03 02 00 00 	sethi  %hi(0x8000000), %g1
 2009e90:	80 a2 c0 01 	cmp  %o3, %g1
 2009e94:	0a 80 00 28 	bcs  2009f34 <not_really_big>
 2009e98:	98 10 00 00 	mov  %g0, %o4
 2009e9c:	80 a3 40 01 	cmp  %o5, %g1
 2009ea0:	1a 80 00 0d 	bcc  2009ed4 <not_too_big>
 2009ea4:	84 10 20 01 	mov  1, %g2
 2009ea8:	9b 2b 60 04 	sll  %o5, 4, %o5
 2009eac:	10 bf ff fc 	b  2009e9c <divide+0x34>
 2009eb0:	98 03 20 01 	inc  %o4
 2009eb4:	9a 83 40 0d 	addcc  %o5, %o5, %o5
 2009eb8:	1a 80 00 07 	bcc  2009ed4 <not_too_big>
 2009ebc:	84 00 a0 01 	inc  %g2
 2009ec0:	83 28 60 04 	sll  %g1, 4, %g1
 2009ec4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009ec8:	9a 03 40 01 	add  %o5, %g1, %o5
 2009ecc:	10 80 00 07 	b  2009ee8 <do_single_div>
 2009ed0:	84 20 a0 01 	dec  %g2

02009ed4 <not_too_big>:
 2009ed4:	80 a3 40 0b 	cmp  %o5, %o3
 2009ed8:	0a bf ff f7 	bcs  2009eb4 <divide+0x4c>
 2009edc:	01 00 00 00 	nop 
 2009ee0:	02 80 00 02 	be  2009ee8 <do_single_div>
 2009ee4:	01 00 00 00 	nop 

02009ee8 <do_single_div>:
 2009ee8:	84 a0 a0 01 	deccc  %g2
 2009eec:	06 80 00 76 	bl  200a0c4 <end_regular_divide>
 2009ef0:	01 00 00 00 	nop 
 2009ef4:	96 22 c0 0d 	sub  %o3, %o5, %o3
 2009ef8:	94 10 20 01 	mov  1, %o2
 2009efc:	10 80 00 0a 	b  2009f24 <end_single_divloop>
 2009f00:	01 00 00 00 	nop 

02009f04 <single_divloop>:
 2009f04:	95 2a a0 01 	sll  %o2, 1, %o2
 2009f08:	06 80 00 05 	bl  2009f1c <single_divloop+0x18>
 2009f0c:	9b 33 60 01 	srl  %o5, 1, %o5
 2009f10:	96 22 c0 0d 	sub  %o3, %o5, %o3
 2009f14:	10 80 00 04 	b  2009f24 <end_single_divloop>
 2009f18:	94 02 a0 01 	inc  %o2
 2009f1c:	96 02 c0 0d 	add  %o3, %o5, %o3
 2009f20:	94 22 a0 01 	dec  %o2

02009f24 <end_single_divloop>:
 2009f24:	84 a0 a0 01 	deccc  %g2
 2009f28:	16 bf ff f7 	bge  2009f04 <single_divloop>
 2009f2c:	80 92 c0 00 	tst  %o3
 2009f30:	30 80 00 65 	b,a   200a0c4 <end_regular_divide>

02009f34 <not_really_big>:
 2009f34:	9b 2b 60 04 	sll  %o5, 4, %o5
 2009f38:	80 a3 40 0b 	cmp  %o5, %o3
 2009f3c:	08 bf ff fe 	bleu  2009f34 <not_really_big>
 2009f40:	98 83 20 01 	inccc  %o4
 2009f44:	02 80 00 65 	be  200a0d8 <got_result>
 2009f48:	98 23 20 01 	dec  %o4
 2009f4c:	80 92 c0 00 	tst  %o3

02009f50 <divloop>:
 2009f50:	95 2a a0 04 	sll  %o2, 4, %o2
 2009f54:	06 80 00 2f 	bl  200a010 <L1.16>
 2009f58:	9b 33 60 01 	srl  %o5, 1, %o5
 2009f5c:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009f60:	06 80 00 17 	bl  2009fbc <L2.17>
 2009f64:	9b 33 60 01 	srl  %o5, 1, %o5
 2009f68:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009f6c:	06 80 00 0b 	bl  2009f98 <L3.19>
 2009f70:	9b 33 60 01 	srl  %o5, 1, %o5
 2009f74:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009f78:	06 80 00 05 	bl  2009f8c <L4.23>
 2009f7c:	9b 33 60 01 	srl  %o5, 1, %o5
 2009f80:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009f84:	10 80 00 50 	b  200a0c4 <end_regular_divide>
 2009f88:	94 02 a0 0f 	add  %o2, 0xf, %o2

02009f8c <L4.23>:
 2009f8c:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009f90:	10 80 00 4d 	b  200a0c4 <end_regular_divide>
 2009f94:	94 02 a0 0d 	add  %o2, 0xd, %o2

02009f98 <L3.19>:
 2009f98:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009f9c:	06 80 00 05 	bl  2009fb0 <L4.21>
 2009fa0:	9b 33 60 01 	srl  %o5, 1, %o5
 2009fa4:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009fa8:	10 80 00 47 	b  200a0c4 <end_regular_divide>
 2009fac:	94 02 a0 0b 	add  %o2, 0xb, %o2

02009fb0 <L4.21>:
 2009fb0:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009fb4:	10 80 00 44 	b  200a0c4 <end_regular_divide>
 2009fb8:	94 02 a0 09 	add  %o2, 9, %o2

02009fbc <L2.17>:
 2009fbc:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009fc0:	06 80 00 0b 	bl  2009fec <L3.17>
 2009fc4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009fc8:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009fcc:	06 80 00 05 	bl  2009fe0 <L4.19>
 2009fd0:	9b 33 60 01 	srl  %o5, 1, %o5
 2009fd4:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009fd8:	10 80 00 3b 	b  200a0c4 <end_regular_divide>
 2009fdc:	94 02 a0 07 	add  %o2, 7, %o2

02009fe0 <L4.19>:
 2009fe0:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009fe4:	10 80 00 38 	b  200a0c4 <end_regular_divide>
 2009fe8:	94 02 a0 05 	add  %o2, 5, %o2

02009fec <L3.17>:
 2009fec:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 2009ff0:	06 80 00 05 	bl  200a004 <L4.17>
 2009ff4:	9b 33 60 01 	srl  %o5, 1, %o5
 2009ff8:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 2009ffc:	10 80 00 32 	b  200a0c4 <end_regular_divide>
 200a000:	94 02 a0 03 	add  %o2, 3, %o2

0200a004 <L4.17>:
 200a004:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a008:	10 80 00 2f 	b  200a0c4 <end_regular_divide>
 200a00c:	94 02 a0 01 	inc  %o2

0200a010 <L1.16>:
 200a010:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a014:	06 80 00 17 	bl  200a070 <L2.15>
 200a018:	9b 33 60 01 	srl  %o5, 1, %o5
 200a01c:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a020:	06 80 00 0b 	bl  200a04c <L3.15>
 200a024:	9b 33 60 01 	srl  %o5, 1, %o5
 200a028:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a02c:	06 80 00 05 	bl  200a040 <L4.15>
 200a030:	9b 33 60 01 	srl  %o5, 1, %o5
 200a034:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a038:	10 80 00 23 	b  200a0c4 <end_regular_divide>
 200a03c:	94 02 bf ff 	add  %o2, -1, %o2

0200a040 <L4.15>:
 200a040:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a044:	10 80 00 20 	b  200a0c4 <end_regular_divide>
 200a048:	94 02 bf fd 	add  %o2, -3, %o2

0200a04c <L3.15>:
 200a04c:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a050:	06 80 00 05 	bl  200a064 <L4.13>
 200a054:	9b 33 60 01 	srl  %o5, 1, %o5
 200a058:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a05c:	10 80 00 1a 	b  200a0c4 <end_regular_divide>
 200a060:	94 02 bf fb 	add  %o2, -5, %o2

0200a064 <L4.13>:
 200a064:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a068:	10 80 00 17 	b  200a0c4 <end_regular_divide>
 200a06c:	94 02 bf f9 	add  %o2, -7, %o2

0200a070 <L2.15>:
 200a070:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a074:	06 80 00 0b 	bl  200a0a0 <L3.13>
 200a078:	9b 33 60 01 	srl  %o5, 1, %o5
 200a07c:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a080:	06 80 00 05 	bl  200a094 <L4.11>
 200a084:	9b 33 60 01 	srl  %o5, 1, %o5
 200a088:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a08c:	10 80 00 0e 	b  200a0c4 <end_regular_divide>
 200a090:	94 02 bf f7 	add  %o2, -9, %o2

0200a094 <L4.11>:
 200a094:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a098:	10 80 00 0b 	b  200a0c4 <end_regular_divide>
 200a09c:	94 02 bf f5 	add  %o2, -11, %o2

0200a0a0 <L3.13>:
 200a0a0:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a0a4:	06 80 00 05 	bl  200a0b8 <L4.9>
 200a0a8:	9b 33 60 01 	srl  %o5, 1, %o5
 200a0ac:	96 a2 c0 0d 	subcc  %o3, %o5, %o3
 200a0b0:	10 80 00 05 	b  200a0c4 <end_regular_divide>
 200a0b4:	94 02 bf f3 	add  %o2, -13, %o2

0200a0b8 <L4.9>:
 200a0b8:	96 82 c0 0d 	addcc  %o3, %o5, %o3
 200a0bc:	10 80 00 02 	b  200a0c4 <end_regular_divide>
 200a0c0:	94 02 bf f1 	add  %o2, -15, %o2

0200a0c4 <end_regular_divide>:
 200a0c4:	98 a3 20 01 	deccc  %o4
 200a0c8:	16 bf ff a2 	bge  2009f50 <divloop>
 200a0cc:	80 92 c0 00 	tst  %o3
 200a0d0:	26 80 00 02 	bl,a   200a0d8 <got_result>
 200a0d4:	96 02 c0 09 	add  %o3, %o1, %o3

0200a0d8 <got_result>:
 200a0d8:	80 90 c0 00 	tst  %g3
 200a0dc:	26 80 00 02 	bl,a   200a0e4 <got_result+0xc>
 200a0e0:	96 20 00 0b 	neg  %o3
 200a0e4:	81 c3 e0 08 	retl 
 200a0e8:	90 10 00 0b 	mov  %o3, %o0
