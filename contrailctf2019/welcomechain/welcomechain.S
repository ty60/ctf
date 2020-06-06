
./welcomechain:     file format elf64-x86-64


Disassembly of section .init:

0000000000400560 <_init>:
  400560:	48 83 ec 08          	sub    rsp,0x8
  400564:	48 8b 05 8d 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a8d]        # 600ff8 <__gmon_start__>
  40056b:	48 85 c0             	test   rax,rax
  40056e:	74 02                	je     400572 <_init+0x12>
  400570:	ff d0                	call   rax
  400572:	48 83 c4 08          	add    rsp,0x8
  400576:	c3                   	ret    

Disassembly of section .plt:

0000000000400580 <.plt>:
  400580:	ff 35 82 0a 20 00    	push   QWORD PTR [rip+0x200a82]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400586:	ff 25 84 0a 20 00    	jmp    QWORD PTR [rip+0x200a84]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40058c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400590 <putchar@plt>:
  400590:	ff 25 82 0a 20 00    	jmp    QWORD PTR [rip+0x200a82]        # 601018 <putchar@GLIBC_2.2.5>
  400596:	68 00 00 00 00       	push   0x0
  40059b:	e9 e0 ff ff ff       	jmp    400580 <.plt>

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 7a 0a 20 00    	jmp    QWORD PTR [rip+0x200a7a]        # 601020 <puts@GLIBC_2.2.5>
  4005a6:	68 01 00 00 00       	push   0x1
  4005ab:	e9 d0 ff ff ff       	jmp    400580 <.plt>

00000000004005b0 <setbuf@plt>:
  4005b0:	ff 25 72 0a 20 00    	jmp    QWORD PTR [rip+0x200a72]        # 601028 <setbuf@GLIBC_2.2.5>
  4005b6:	68 02 00 00 00       	push   0x2
  4005bb:	e9 c0 ff ff ff       	jmp    400580 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 6a 0a 20 00    	jmp    QWORD PTR [rip+0x200a6a]        # 601030 <printf@GLIBC_2.2.5>
  4005c6:	68 03 00 00 00       	push   0x3
  4005cb:	e9 b0 ff ff ff       	jmp    400580 <.plt>

00000000004005d0 <fgets@plt>:
  4005d0:	ff 25 62 0a 20 00    	jmp    QWORD PTR [rip+0x200a62]        # 601038 <fgets@GLIBC_2.2.5>
  4005d6:	68 04 00 00 00       	push   0x4
  4005db:	e9 a0 ff ff ff       	jmp    400580 <.plt>

00000000004005e0 <sleep@plt>:
  4005e0:	ff 25 5a 0a 20 00    	jmp    QWORD PTR [rip+0x200a5a]        # 601040 <sleep@GLIBC_2.2.5>
  4005e6:	68 05 00 00 00       	push   0x5
  4005eb:	e9 90 ff ff ff       	jmp    400580 <.plt>

Disassembly of section .text:

00000000004005f0 <_start>:
  4005f0:	31 ed                	xor    ebp,ebp
  4005f2:	49 89 d1             	mov    r9,rdx
  4005f5:	5e                   	pop    rsi
  4005f6:	48 89 e2             	mov    rdx,rsp
  4005f9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  4005fd:	50                   	push   rax
  4005fe:	54                   	push   rsp
  4005ff:	49 c7 c0 60 08 40 00 	mov    r8,0x400860
  400606:	48 c7 c1 f0 07 40 00 	mov    rcx,0x4007f0
  40060d:	48 c7 c7 ba 07 40 00 	mov    rdi,0x4007ba
  400614:	ff 15 d6 09 20 00    	call   QWORD PTR [rip+0x2009d6]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40061a:	f4                   	hlt    
  40061b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400620 <_dl_relocate_static_pie>:
  400620:	f3 c3                	repz ret 
  400622:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400629:	00 00 00 
  40062c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400630 <deregister_tm_clones>:
  400630:	55                   	push   rbp
  400631:	b8 58 10 60 00       	mov    eax,0x601058
  400636:	48 3d 58 10 60 00    	cmp    rax,0x601058
  40063c:	48 89 e5             	mov    rbp,rsp
  40063f:	74 17                	je     400658 <deregister_tm_clones+0x28>
  400641:	b8 00 00 00 00       	mov    eax,0x0
  400646:	48 85 c0             	test   rax,rax
  400649:	74 0d                	je     400658 <deregister_tm_clones+0x28>
  40064b:	5d                   	pop    rbp
  40064c:	bf 58 10 60 00       	mov    edi,0x601058
  400651:	ff e0                	jmp    rax
  400653:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400658:	5d                   	pop    rbp
  400659:	c3                   	ret    
  40065a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400660 <register_tm_clones>:
  400660:	be 58 10 60 00       	mov    esi,0x601058
  400665:	55                   	push   rbp
  400666:	48 81 ee 58 10 60 00 	sub    rsi,0x601058
  40066d:	48 89 e5             	mov    rbp,rsp
  400670:	48 c1 fe 03          	sar    rsi,0x3
  400674:	48 89 f0             	mov    rax,rsi
  400677:	48 c1 e8 3f          	shr    rax,0x3f
  40067b:	48 01 c6             	add    rsi,rax
  40067e:	48 d1 fe             	sar    rsi,1
  400681:	74 15                	je     400698 <register_tm_clones+0x38>
  400683:	b8 00 00 00 00       	mov    eax,0x0
  400688:	48 85 c0             	test   rax,rax
  40068b:	74 0b                	je     400698 <register_tm_clones+0x38>
  40068d:	5d                   	pop    rbp
  40068e:	bf 58 10 60 00       	mov    edi,0x601058
  400693:	ff e0                	jmp    rax
  400695:	0f 1f 00             	nop    DWORD PTR [rax]
  400698:	5d                   	pop    rbp
  400699:	c3                   	ret    
  40069a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006a0 <__do_global_dtors_aux>:
  4006a0:	80 3d d1 09 20 00 00 	cmp    BYTE PTR [rip+0x2009d1],0x0        # 601078 <completed.7697>
  4006a7:	75 17                	jne    4006c0 <__do_global_dtors_aux+0x20>
  4006a9:	55                   	push   rbp
  4006aa:	48 89 e5             	mov    rbp,rsp
  4006ad:	e8 7e ff ff ff       	call   400630 <deregister_tm_clones>
  4006b2:	c6 05 bf 09 20 00 01 	mov    BYTE PTR [rip+0x2009bf],0x1        # 601078 <completed.7697>
  4006b9:	5d                   	pop    rbp
  4006ba:	c3                   	ret    
  4006bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4006c0:	f3 c3                	repz ret 
  4006c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4006c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4006cd:	00 00 00 

00000000004006d0 <frame_dummy>:
  4006d0:	55                   	push   rbp
  4006d1:	48 89 e5             	mov    rbp,rsp
  4006d4:	5d                   	pop    rbp
  4006d5:	eb 89                	jmp    400660 <register_tm_clones>

00000000004006d7 <banner>:
  4006d7:	55                   	push   rbp
  4006d8:	48 89 e5             	mov    rbp,rsp
  4006db:	48 8d 3d 96 01 00 00 	lea    rdi,[rip+0x196]        # 400878 <_IO_stdin_used+0x8>
  4006e2:	b8 00 00 00 00       	mov    eax,0x0
  4006e7:	e8 d4 fe ff ff       	call   4005c0 <printf@plt>
  4006ec:	48 8d 3d 8d 01 00 00 	lea    rdi,[rip+0x18d]        # 400880 <_IO_stdin_used+0x10>
  4006f3:	e8 a8 fe ff ff       	call   4005a0 <puts@plt>
  4006f8:	48 8d 3d d9 01 00 00 	lea    rdi,[rip+0x1d9]        # 4008d8 <_IO_stdin_used+0x68>
  4006ff:	e8 9c fe ff ff       	call   4005a0 <puts@plt>
  400704:	48 8d 3d 2d 02 00 00 	lea    rdi,[rip+0x22d]        # 400938 <_IO_stdin_used+0xc8>
  40070b:	e8 90 fe ff ff       	call   4005a0 <puts@plt>
  400710:	48 8d 3d 89 02 00 00 	lea    rdi,[rip+0x289]        # 4009a0 <_IO_stdin_used+0x130>
  400717:	e8 84 fe ff ff       	call   4005a0 <puts@plt>
  40071c:	48 8d 3d f5 02 00 00 	lea    rdi,[rip+0x2f5]        # 400a18 <_IO_stdin_used+0x1a8>
  400723:	e8 78 fe ff ff       	call   4005a0 <puts@plt>
  400728:	48 8d 3d 45 03 00 00 	lea    rdi,[rip+0x345]        # 400a74 <_IO_stdin_used+0x204>
  40072f:	b8 00 00 00 00       	mov    eax,0x0
  400734:	e8 87 fe ff ff       	call   4005c0 <printf@plt>
  400739:	b8 00 00 00 00       	mov    eax,0x0
  40073e:	5d                   	pop    rbp
  40073f:	c3                   	ret    

0000000000400740 <welcome>:
  400740:	55                   	push   rbp
  400741:	48 89 e5             	mov    rbp,rsp
  400744:	48 83 ec 20          	sub    rsp,0x20
  400748:	bf 01 00 00 00       	mov    edi,0x1
  40074d:	e8 8e fe ff ff       	call   4005e0 <sleep@plt>
  400752:	bf 0a 00 00 00       	mov    edi,0xa
  400757:	e8 34 fe ff ff       	call   400590 <putchar@plt>
  40075c:	48 8d 3d 17 03 00 00 	lea    rdi,[rip+0x317]        # 400a7a <_IO_stdin_used+0x20a>
  400763:	e8 38 fe ff ff       	call   4005a0 <puts@plt>
  400768:	bf 01 00 00 00       	mov    edi,0x1
  40076d:	e8 6e fe ff ff       	call   4005e0 <sleep@plt>
  400772:	48 8d 3d 18 03 00 00 	lea    rdi,[rip+0x318]        # 400a91 <_IO_stdin_used+0x221>
  400779:	b8 00 00 00 00       	mov    eax,0x0
  40077e:	e8 3d fe ff ff       	call   4005c0 <printf@plt>
  400783:	48 8b 15 e6 08 20 00 	mov    rdx,QWORD PTR [rip+0x2008e6]        # 601070 <stdin@@GLIBC_2.2.5>
  40078a:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  40078e:	be 00 01 00 00       	mov    esi,0x100
  400793:	48 89 c7             	mov    rdi,rax
  400796:	e8 35 fe ff ff       	call   4005d0 <fgets@plt>
  40079b:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  40079f:	48 89 c6             	mov    rsi,rax
  4007a2:	48 8d 3d f8 02 00 00 	lea    rdi,[rip+0x2f8]        # 400aa1 <_IO_stdin_used+0x231>
  4007a9:	b8 00 00 00 00       	mov    eax,0x0
  4007ae:	e8 0d fe ff ff       	call   4005c0 <printf@plt>
  4007b3:	b8 00 00 00 00       	mov    eax,0x0
  4007b8:	c9                   	leave  
  4007b9:	c3                   	ret    

00000000004007ba <main>:
  4007ba:	55                   	push   rbp
  4007bb:	48 89 e5             	mov    rbp,rsp
  4007be:	48 8b 05 9b 08 20 00 	mov    rax,QWORD PTR [rip+0x20089b]        # 601060 <stdout@@GLIBC_2.2.5>
  4007c5:	be 00 00 00 00       	mov    esi,0x0
  4007ca:	48 89 c7             	mov    rdi,rax
  4007cd:	e8 de fd ff ff       	call   4005b0 <setbuf@plt>
  4007d2:	b8 00 00 00 00       	mov    eax,0x0
  4007d7:	e8 fb fe ff ff       	call   4006d7 <banner>
  4007dc:	b8 00 00 00 00       	mov    eax,0x0
  4007e1:	e8 5a ff ff ff       	call   400740 <welcome>
  4007e6:	b8 00 00 00 00       	mov    eax,0x0
  4007eb:	5d                   	pop    rbp
  4007ec:	c3                   	ret    
  4007ed:	0f 1f 00             	nop    DWORD PTR [rax]

00000000004007f0 <__libc_csu_init>:
  4007f0:	41 57                	push   r15
  4007f2:	41 56                	push   r14
  4007f4:	49 89 d7             	mov    r15,rdx
  4007f7:	41 55                	push   r13
  4007f9:	41 54                	push   r12
  4007fb:	4c 8d 25 0e 06 20 00 	lea    r12,[rip+0x20060e]        # 600e10 <__frame_dummy_init_array_entry>
  400802:	55                   	push   rbp
  400803:	48 8d 2d 0e 06 20 00 	lea    rbp,[rip+0x20060e]        # 600e18 <__init_array_end>
  40080a:	53                   	push   rbx
  40080b:	41 89 fd             	mov    r13d,edi
  40080e:	49 89 f6             	mov    r14,rsi
  400811:	4c 29 e5             	sub    rbp,r12
  400814:	48 83 ec 08          	sub    rsp,0x8
  400818:	48 c1 fd 03          	sar    rbp,0x3
  40081c:	e8 3f fd ff ff       	call   400560 <_init>
  400821:	48 85 ed             	test   rbp,rbp
  400824:	74 20                	je     400846 <__libc_csu_init+0x56>
  400826:	31 db                	xor    ebx,ebx
  400828:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40082f:	00 
  400830:	4c 89 fa             	mov    rdx,r15
  400833:	4c 89 f6             	mov    rsi,r14
  400836:	44 89 ef             	mov    edi,r13d
  400839:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40083d:	48 83 c3 01          	add    rbx,0x1
  400841:	48 39 dd             	cmp    rbp,rbx
  400844:	75 ea                	jne    400830 <__libc_csu_init+0x40>
  400846:	48 83 c4 08          	add    rsp,0x8
  40084a:	5b                   	pop    rbx
  40084b:	5d                   	pop    rbp
  40084c:	41 5c                	pop    r12
  40084e:	41 5d                	pop    r13
  400850:	41 5e                	pop    r14
  400852:	41 5f                	pop    r15
  400854:	c3                   	ret    
  400855:	90                   	nop
  400856:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40085d:	00 00 00 

0000000000400860 <__libc_csu_fini>:
  400860:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400864 <_fini>:
  400864:	48 83 ec 08          	sub    rsp,0x8
  400868:	48 83 c4 08          	add    rsp,0x8
  40086c:	c3                   	ret    
