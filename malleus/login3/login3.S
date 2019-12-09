
./login3:     file format elf64-x86-64


Disassembly of section .init:

00000000004005a0 <_init>:
  4005a0:	48 83 ec 08          	sub    rsp,0x8
  4005a4:	48 8b 05 4d 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a4d]        # 600ff8 <__gmon_start__>
  4005ab:	48 85 c0             	test   rax,rax
  4005ae:	74 02                	je     4005b2 <_init+0x12>
  4005b0:	ff d0                	call   rax
  4005b2:	48 83 c4 08          	add    rsp,0x8
  4005b6:	c3                   	ret    

Disassembly of section .plt:

00000000004005c0 <.plt>:
  4005c0:	ff 35 42 0a 20 00    	push   QWORD PTR [rip+0x200a42]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 0a 20 00    	jmp    QWORD PTR [rip+0x200a44]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005d0 <puts@plt>:
  4005d0:	ff 25 42 0a 20 00    	jmp    QWORD PTR [rip+0x200a42]        # 601018 <puts@GLIBC_2.2.5>
  4005d6:	68 00 00 00 00       	push   0x0
  4005db:	e9 e0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005e0 <printf@plt>:
  4005e0:	ff 25 3a 0a 20 00    	jmp    QWORD PTR [rip+0x200a3a]        # 601020 <printf@GLIBC_2.2.5>
  4005e6:	68 01 00 00 00       	push   0x1
  4005eb:	e9 d0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005f0 <alarm@plt>:
  4005f0:	ff 25 32 0a 20 00    	jmp    QWORD PTR [rip+0x200a32]        # 601028 <alarm@GLIBC_2.2.5>
  4005f6:	68 02 00 00 00       	push   0x2
  4005fb:	e9 c0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400600 <strcmp@plt>:
  400600:	ff 25 2a 0a 20 00    	jmp    QWORD PTR [rip+0x200a2a]        # 601030 <strcmp@GLIBC_2.2.5>
  400606:	68 03 00 00 00       	push   0x3
  40060b:	e9 b0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400610 <gets@plt>:
  400610:	ff 25 22 0a 20 00    	jmp    QWORD PTR [rip+0x200a22]        # 601038 <gets@GLIBC_2.2.5>
  400616:	68 04 00 00 00       	push   0x4
  40061b:	e9 a0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400620 <setvbuf@plt>:
  400620:	ff 25 1a 0a 20 00    	jmp    QWORD PTR [rip+0x200a1a]        # 601040 <setvbuf@GLIBC_2.2.5>
  400626:	68 05 00 00 00       	push   0x5
  40062b:	e9 90 ff ff ff       	jmp    4005c0 <.plt>

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    ebp,ebp
  400632:	49 89 d1             	mov    r9,rdx
  400635:	5e                   	pop    rsi
  400636:	48 89 e2             	mov    rdx,rsp
  400639:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40063d:	50                   	push   rax
  40063e:	54                   	push   rsp
  40063f:	49 c7 c0 80 08 40 00 	mov    r8,0x400880
  400646:	48 c7 c1 10 08 40 00 	mov    rcx,0x400810
  40064d:	48 c7 c7 82 07 40 00 	mov    rdi,0x400782
  400654:	ff 15 96 09 20 00    	call   QWORD PTR [rip+0x200996]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40065a:	f4                   	hlt    
  40065b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400660 <_dl_relocate_static_pie>:
  400660:	f3 c3                	repz ret 
  400662:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400669:	00 00 00 
  40066c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400670 <deregister_tm_clones>:
  400670:	55                   	push   rbp
  400671:	b8 58 10 60 00       	mov    eax,0x601058
  400676:	48 3d 58 10 60 00    	cmp    rax,0x601058
  40067c:	48 89 e5             	mov    rbp,rsp
  40067f:	74 17                	je     400698 <deregister_tm_clones+0x28>
  400681:	b8 00 00 00 00       	mov    eax,0x0
  400686:	48 85 c0             	test   rax,rax
  400689:	74 0d                	je     400698 <deregister_tm_clones+0x28>
  40068b:	5d                   	pop    rbp
  40068c:	bf 58 10 60 00       	mov    edi,0x601058
  400691:	ff e0                	jmp    rax
  400693:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400698:	5d                   	pop    rbp
  400699:	c3                   	ret    
  40069a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006a0 <register_tm_clones>:
  4006a0:	be 58 10 60 00       	mov    esi,0x601058
  4006a5:	55                   	push   rbp
  4006a6:	48 81 ee 58 10 60 00 	sub    rsi,0x601058
  4006ad:	48 89 e5             	mov    rbp,rsp
  4006b0:	48 c1 fe 03          	sar    rsi,0x3
  4006b4:	48 89 f0             	mov    rax,rsi
  4006b7:	48 c1 e8 3f          	shr    rax,0x3f
  4006bb:	48 01 c6             	add    rsi,rax
  4006be:	48 d1 fe             	sar    rsi,1
  4006c1:	74 15                	je     4006d8 <register_tm_clones+0x38>
  4006c3:	b8 00 00 00 00       	mov    eax,0x0
  4006c8:	48 85 c0             	test   rax,rax
  4006cb:	74 0b                	je     4006d8 <register_tm_clones+0x38>
  4006cd:	5d                   	pop    rbp
  4006ce:	bf 58 10 60 00       	mov    edi,0x601058
  4006d3:	ff e0                	jmp    rax
  4006d5:	0f 1f 00             	nop    DWORD PTR [rax]
  4006d8:	5d                   	pop    rbp
  4006d9:	c3                   	ret    
  4006da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006e0 <__do_global_dtors_aux>:
  4006e0:	80 3d a1 09 20 00 00 	cmp    BYTE PTR [rip+0x2009a1],0x0        # 601088 <completed.7697>
  4006e7:	75 17                	jne    400700 <__do_global_dtors_aux+0x20>
  4006e9:	55                   	push   rbp
  4006ea:	48 89 e5             	mov    rbp,rsp
  4006ed:	e8 7e ff ff ff       	call   400670 <deregister_tm_clones>
  4006f2:	c6 05 8f 09 20 00 01 	mov    BYTE PTR [rip+0x20098f],0x1        # 601088 <completed.7697>
  4006f9:	5d                   	pop    rbp
  4006fa:	c3                   	ret    
  4006fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400700:	f3 c3                	repz ret 
  400702:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400706:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40070d:	00 00 00 

0000000000400710 <frame_dummy>:
  400710:	55                   	push   rbp
  400711:	48 89 e5             	mov    rbp,rsp
  400714:	5d                   	pop    rbp
  400715:	eb 89                	jmp    4006a0 <register_tm_clones>

0000000000400717 <setup>:
  400717:	55                   	push   rbp
  400718:	48 89 e5             	mov    rbp,rsp
  40071b:	bf 3c 00 00 00       	mov    edi,0x3c
  400720:	e8 cb fe ff ff       	call   4005f0 <alarm@plt>
  400725:	48 8b 05 44 09 20 00 	mov    rax,QWORD PTR [rip+0x200944]        # 601070 <stdin@@GLIBC_2.2.5>
  40072c:	b9 00 00 00 00       	mov    ecx,0x0
  400731:	ba 02 00 00 00       	mov    edx,0x2
  400736:	be 00 00 00 00       	mov    esi,0x0
  40073b:	48 89 c7             	mov    rdi,rax
  40073e:	e8 dd fe ff ff       	call   400620 <setvbuf@plt>
  400743:	48 8b 05 16 09 20 00 	mov    rax,QWORD PTR [rip+0x200916]        # 601060 <stdout@@GLIBC_2.2.5>
  40074a:	b9 00 00 00 00       	mov    ecx,0x0
  40074f:	ba 02 00 00 00       	mov    edx,0x2
  400754:	be 00 00 00 00       	mov    esi,0x0
  400759:	48 89 c7             	mov    rdi,rax
  40075c:	e8 bf fe ff ff       	call   400620 <setvbuf@plt>
  400761:	48 8b 05 18 09 20 00 	mov    rax,QWORD PTR [rip+0x200918]        # 601080 <stderr@@GLIBC_2.2.5>
  400768:	b9 00 00 00 00       	mov    ecx,0x0
  40076d:	ba 02 00 00 00       	mov    edx,0x2
  400772:	be 00 00 00 00       	mov    esi,0x0
  400777:	48 89 c7             	mov    rdi,rax
  40077a:	e8 a1 fe ff ff       	call   400620 <setvbuf@plt>
  40077f:	90                   	nop
  400780:	5d                   	pop    rbp
  400781:	c3                   	ret    

0000000000400782 <main>:
  400782:	55                   	push   rbp
  400783:	48 89 e5             	mov    rbp,rsp
  400786:	48 83 ec 20          	sub    rsp,0x20
  40078a:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  400791:	00 
  400792:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  400799:	00 
  40079a:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  4007a1:	00 
  4007a2:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  4007a9:	00 
  4007aa:	b8 00 00 00 00       	mov    eax,0x0
  4007af:	e8 63 ff ff ff       	call   400717 <setup>
  4007b4:	48 8d 3d d9 00 00 00 	lea    rdi,[rip+0xd9]        # 400894 <_IO_stdin_used+0x4>
  4007bb:	b8 00 00 00 00       	mov    eax,0x0
  4007c0:	e8 1b fe ff ff       	call   4005e0 <printf@plt>
  4007c5:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4007c9:	48 89 c7             	mov    rdi,rax
  4007cc:	e8 3f fe ff ff       	call   400610 <gets@plt> # gets(rbp - 0x20)
  4007d1:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  4007d5:	48 8d 35 bd 00 00 00 	lea    rsi,[rip+0xbd]        # 400899 <_IO_stdin_used+0x9>
  4007dc:	48 89 c7             	mov    rdi,rax
  4007df:	e8 1c fe ff ff       	call   400600 <strcmp@plt>
  4007e4:	85 c0                	test   eax,eax
  4007e6:	75 0e                	jne    4007f6 <main+0x74>
  4007e8:	48 8d 3d b0 00 00 00 	lea    rdi,[rip+0xb0]        # 40089f <_IO_stdin_used+0xf>
  4007ef:	e8 dc fd ff ff       	call   4005d0 <puts@plt>
  4007f4:	eb 0c                	jmp    400802 <main+0x80>
  4007f6:	48 8d 3d b2 00 00 00 	lea    rdi,[rip+0xb2]        # 4008af <_IO_stdin_used+0x1f>
  4007fd:	e8 ce fd ff ff       	call   4005d0 <puts@plt>
  400802:	b8 00 00 00 00       	mov    eax,0x0
  400807:	c9                   	leave  
  400808:	c3                   	ret    
  400809:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400810 <__libc_csu_init>:
  400810:	41 57                	push   r15
  400812:	41 56                	push   r14
  400814:	49 89 d7             	mov    r15,rdx
  400817:	41 55                	push   r13
  400819:	41 54                	push   r12
  40081b:	4c 8d 25 ee 05 20 00 	lea    r12,[rip+0x2005ee]        # 600e10 <__frame_dummy_init_array_entry>
  400822:	55                   	push   rbp
  400823:	48 8d 2d ee 05 20 00 	lea    rbp,[rip+0x2005ee]        # 600e18 <__init_array_end>
  40082a:	53                   	push   rbx
  40082b:	41 89 fd             	mov    r13d,edi
  40082e:	49 89 f6             	mov    r14,rsi
  400831:	4c 29 e5             	sub    rbp,r12
  400834:	48 83 ec 08          	sub    rsp,0x8
  400838:	48 c1 fd 03          	sar    rbp,0x3
  40083c:	e8 5f fd ff ff       	call   4005a0 <_init>
  400841:	48 85 ed             	test   rbp,rbp
  400844:	74 20                	je     400866 <__libc_csu_init+0x56>
  400846:	31 db                	xor    ebx,ebx
  400848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40084f:	00 
  400850:	4c 89 fa             	mov    rdx,r15
  400853:	4c 89 f6             	mov    rsi,r14
  400856:	44 89 ef             	mov    edi,r13d
  400859:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40085d:	48 83 c3 01          	add    rbx,0x1
  400861:	48 39 dd             	cmp    rbp,rbx
  400864:	75 ea                	jne    400850 <__libc_csu_init+0x40>
  400866:	48 83 c4 08          	add    rsp,0x8
  40086a:	5b                   	pop    rbx
  40086b:	5d                   	pop    rbp
  40086c:	41 5c                	pop    r12
  40086e:	41 5d                	pop    r13
  400870:	41 5e                	pop    r14
  400872:	41 5f                	pop    r15
  400874:	c3                   	ret    
  400875:	90                   	nop
  400876:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40087d:	00 00 00 

0000000000400880 <__libc_csu_fini>:
  400880:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000400884 <_fini>:
  400884:	48 83 ec 08          	sub    rsp,0x8
  400888:	48 83 c4 08          	add    rsp,0x8
  40088c:	c3                   	ret    
