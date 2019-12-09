
./baby3:     file format elf64-x86-64


Disassembly of section .init:

00000000004005b8 <_init>:
  4005b8:	48 83 ec 08          	sub    rsp,0x8
  4005bc:	48 8b 05 35 1a 20 00 	mov    rax,QWORD PTR [rip+0x201a35]        # 601ff8 <__gmon_start__>
  4005c3:	48 85 c0             	test   rax,rax
  4005c6:	74 02                	je     4005ca <_init+0x12>
  4005c8:	ff d0                	call   rax
  4005ca:	48 83 c4 08          	add    rsp,0x8
  4005ce:	c3                   	ret    

Disassembly of section .plt:

00000000004005d0 <.plt>:
  4005d0:	ff 35 32 1a 20 00    	push   QWORD PTR [rip+0x201a32]        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005d6:	ff 25 34 1a 20 00    	jmp    QWORD PTR [rip+0x201a34]        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005e0 <puts@plt>:
  4005e0:	ff 25 32 1a 20 00    	jmp    QWORD PTR [rip+0x201a32]        # 602018 <puts@GLIBC_2.2.5>
  4005e6:	68 00 00 00 00       	push   0x0
  4005eb:	e9 e0 ff ff ff       	jmp    4005d0 <.plt>

00000000004005f0 <__stack_chk_fail@plt>:
  4005f0:	ff 25 2a 1a 20 00    	jmp    QWORD PTR [rip+0x201a2a]        # 602020 <__stack_chk_fail@GLIBC_2.4>
  4005f6:	68 01 00 00 00       	push   0x1
  4005fb:	e9 d0 ff ff ff       	jmp    4005d0 <.plt>

0000000000400600 <printf@plt>:
  400600:	ff 25 22 1a 20 00    	jmp    QWORD PTR [rip+0x201a22]        # 602028 <printf@GLIBC_2.2.5>
  400606:	68 02 00 00 00       	push   0x2
  40060b:	e9 c0 ff ff ff       	jmp    4005d0 <.plt>

0000000000400610 <alarm@plt>:
  400610:	ff 25 1a 1a 20 00    	jmp    QWORD PTR [rip+0x201a1a]        # 602030 <alarm@GLIBC_2.2.5>
  400616:	68 03 00 00 00       	push   0x3
  40061b:	e9 b0 ff ff ff       	jmp    4005d0 <.plt>

0000000000400620 <fgets@plt>:
  400620:	ff 25 12 1a 20 00    	jmp    QWORD PTR [rip+0x201a12]        # 602038 <fgets@GLIBC_2.2.5>
  400626:	68 04 00 00 00       	push   0x4
  40062b:	e9 a0 ff ff ff       	jmp    4005d0 <.plt>

0000000000400630 <setvbuf@plt>:
  400630:	ff 25 0a 1a 20 00    	jmp    QWORD PTR [rip+0x201a0a]        # 602040 <setvbuf@GLIBC_2.2.5>
  400636:	68 05 00 00 00       	push   0x5
  40063b:	e9 90 ff ff ff       	jmp    4005d0 <.plt>

0000000000400640 <exit@plt>:
  400640:	ff 25 02 1a 20 00    	jmp    QWORD PTR [rip+0x201a02]        # 602048 <exit@GLIBC_2.2.5>
  400646:	68 06 00 00 00       	push   0x6
  40064b:	e9 80 ff ff ff       	jmp    4005d0 <.plt>

Disassembly of section .text:

0000000000400650 <_start>:
  400650:	31 ed                	xor    ebp,ebp
  400652:	49 89 d1             	mov    r9,rdx
  400655:	5e                   	pop    rsi
  400656:	48 89 e2             	mov    rdx,rsp
  400659:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40065d:	50                   	push   rax
  40065e:	54                   	push   rsp
  40065f:	49 c7 c0 c0 08 40 00 	mov    r8,0x4008c0
  400666:	48 c7 c1 50 08 40 00 	mov    rcx,0x400850
  40066d:	48 c7 c7 6f 07 40 00 	mov    rdi,0x40076f
  400674:	ff 15 76 19 20 00    	call   QWORD PTR [rip+0x201976]        # 601ff0 <__libc_start_main@GLIBC_2.2.5>
  40067a:	f4                   	hlt    
  40067b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400680 <_dl_relocate_static_pie>:
  400680:	f3 c3                	repz ret 
  400682:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400689:	00 00 00 
  40068c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400690 <deregister_tm_clones>:
  400690:	55                   	push   rbp
  400691:	b8 60 20 60 00       	mov    eax,0x602060
  400696:	48 3d 60 20 60 00    	cmp    rax,0x602060
  40069c:	48 89 e5             	mov    rbp,rsp
  40069f:	74 17                	je     4006b8 <deregister_tm_clones+0x28>
  4006a1:	b8 00 00 00 00       	mov    eax,0x0
  4006a6:	48 85 c0             	test   rax,rax
  4006a9:	74 0d                	je     4006b8 <deregister_tm_clones+0x28>
  4006ab:	5d                   	pop    rbp
  4006ac:	bf 60 20 60 00       	mov    edi,0x602060
  4006b1:	ff e0                	jmp    rax
  4006b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4006b8:	5d                   	pop    rbp
  4006b9:	c3                   	ret    
  4006ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006c0 <register_tm_clones>:
  4006c0:	be 60 20 60 00       	mov    esi,0x602060
  4006c5:	55                   	push   rbp
  4006c6:	48 81 ee 60 20 60 00 	sub    rsi,0x602060
  4006cd:	48 89 e5             	mov    rbp,rsp
  4006d0:	48 c1 fe 03          	sar    rsi,0x3
  4006d4:	48 89 f0             	mov    rax,rsi
  4006d7:	48 c1 e8 3f          	shr    rax,0x3f
  4006db:	48 01 c6             	add    rsi,rax
  4006de:	48 d1 fe             	sar    rsi,1
  4006e1:	74 15                	je     4006f8 <register_tm_clones+0x38>
  4006e3:	b8 00 00 00 00       	mov    eax,0x0
  4006e8:	48 85 c0             	test   rax,rax
  4006eb:	74 0b                	je     4006f8 <register_tm_clones+0x38>
  4006ed:	5d                   	pop    rbp
  4006ee:	bf 60 20 60 00       	mov    edi,0x602060
  4006f3:	ff e0                	jmp    rax
  4006f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4006f8:	5d                   	pop    rbp
  4006f9:	c3                   	ret    
  4006fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d 71 19 20 00 00 	cmp    BYTE PTR [rip+0x201971],0x0        # 602078 <completed.7697>
  400707:	75 17                	jne    400720 <__do_global_dtors_aux+0x20>
  400709:	55                   	push   rbp
  40070a:	48 89 e5             	mov    rbp,rsp
  40070d:	e8 7e ff ff ff       	call   400690 <deregister_tm_clones>
  400712:	c6 05 5f 19 20 00 01 	mov    BYTE PTR [rip+0x20195f],0x1        # 602078 <completed.7697>
  400719:	5d                   	pop    rbp
  40071a:	c3                   	ret    
  40071b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400720:	f3 c3                	repz ret 
  400722:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400726:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40072d:	00 00 00 

0000000000400730 <frame_dummy>:
  400730:	55                   	push   rbp
  400731:	48 89 e5             	mov    rbp,rsp
  400734:	5d                   	pop    rbp
  400735:	eb 89                	jmp    4006c0 <register_tm_clones>

0000000000400737 <banner>:
  400737:	55                   	push   rbp
  400738:	48 89 e5             	mov    rbp,rsp
  40073b:	48 83 ec 10          	sub    rsp,0x10
  40073f:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400746:	00 00 
  400748:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40074c:	31 c0                	xor    eax,eax
  40074e:	bf d8 08 40 00       	mov    edi,0x4008d8
  400753:	e8 88 fe ff ff       	call   4005e0 <puts@plt>
  400758:	90                   	nop
  400759:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40075d:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  400764:	00 00 
  400766:	74 05                	je     40076d <banner+0x36>
  400768:	e8 83 fe ff ff       	call   4005f0 <__stack_chk_fail@plt>
  40076d:	c9                   	leave  
  40076e:	c3                   	ret    

000000000040076f <main>:
  40076f:	55                   	push   rbp
  400770:	48 89 e5             	mov    rbp,rsp
  400773:	48 81 ec 90 00 00 00 	sub    rsp,0x90
  40077a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  400781:	00 00 
  400783:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400787:	31 c0                	xor    eax,eax
  400789:	48 c7 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],0x0
  400790:	00 00 00 00 
  400794:	48 c7 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],0x0
  40079b:	00 00 00 00 
  40079f:	48 8d 55 80          	lea    rdx,[rbp-0x80]
  4007a3:	b8 00 00 00 00       	mov    eax,0x0
  4007a8:	b9 0e 00 00 00       	mov    ecx,0xe
  4007ad:	48 89 d7             	mov    rdi,rdx
  4007b0:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4007b3:	48 8b 05 b6 18 20 00 	mov    rax,QWORD PTR [rip+0x2018b6]        # 602070 <stdin@@GLIBC_2.2.5>
  4007ba:	b9 00 00 00 00       	mov    ecx,0x0
  4007bf:	ba 02 00 00 00       	mov    edx,0x2
  4007c4:	be 00 00 00 00       	mov    esi,0x0
  4007c9:	48 89 c7             	mov    rdi,rax
  4007cc:	e8 5f fe ff ff       	call   400630 <setvbuf@plt>
  4007d1:	48 8b 05 88 18 20 00 	mov    rax,QWORD PTR [rip+0x201888]        # 602060 <stdout@@GLIBC_2.2.5>
  4007d8:	b9 00 00 00 00       	mov    ecx,0x0
  4007dd:	ba 02 00 00 00       	mov    edx,0x2
  4007e2:	be 00 00 00 00       	mov    esi,0x0
  4007e7:	48 89 c7             	mov    rdi,rax
  4007ea:	e8 41 fe ff ff       	call   400630 <setvbuf@plt>
  4007ef:	bf 3c 00 00 00       	mov    edi,0x3c
  4007f4:	e8 17 fe ff ff       	call   400610 <alarm@plt>
  4007f9:	b8 00 00 00 00       	mov    eax,0x0
  4007fe:	e8 34 ff ff ff       	call   400737 <banner>
  400803:	bf f5 11 40 00       	mov    edi,0x4011f5
  400808:	b8 00 00 00 00       	mov    eax,0x0
  40080d:	e8 ee fd ff ff       	call   400600 <printf@plt>
  400812:	48 8b 15 57 18 20 00 	mov    rdx,QWORD PTR [rip+0x201857]        # 602070 <stdin@@GLIBC_2.2.5>
  400819:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  400820:	be 80 00 00 00       	mov    esi,0x80
  400825:	48 89 c7             	mov    rdi,rax
  400828:	e8 f3 fd ff ff       	call   400620 <fgets@plt>
  40082d:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
  400834:	48 89 c7             	mov    rdi,rax
  400837:	b8 00 00 00 00       	mov    eax,0x0
  40083c:	e8 bf fd ff ff       	call   400600 <printf@plt>
  400841:	bf 00 00 00 00       	mov    edi,0x0
  400846:	e8 f5 fd ff ff       	call   400640 <exit@plt>
  40084b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400850 <__libc_csu_init>:
  400850:	41 57                	push   r15
  400852:	41 56                	push   r14
  400854:	49 89 d7             	mov    r15,rdx
  400857:	41 55                	push   r13
  400859:	41 54                	push   r12
  40085b:	4c 8d 25 ae 15 20 00 	lea    r12,[rip+0x2015ae]        # 601e10 <__frame_dummy_init_array_entry>
  400862:	55                   	push   rbp
  400863:	48 8d 2d ae 15 20 00 	lea    rbp,[rip+0x2015ae]        # 601e18 <__init_array_end>
  40086a:	53                   	push   rbx
  40086b:	41 89 fd             	mov    r13d,edi
  40086e:	49 89 f6             	mov    r14,rsi
  400871:	4c 29 e5             	sub    rbp,r12
  400874:	48 83 ec 08          	sub    rsp,0x8
  400878:	48 c1 fd 03          	sar    rbp,0x3
  40087c:	e8 37 fd ff ff       	call   4005b8 <_init>
  400881:	48 85 ed             	test   rbp,rbp
  400884:	74 20                	je     4008a6 <__libc_csu_init+0x56>
  400886:	31 db                	xor    ebx,ebx
  400888:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40088f:	00 
  400890:	4c 89 fa             	mov    rdx,r15
  400893:	4c 89 f6             	mov    rsi,r14
  400896:	44 89 ef             	mov    edi,r13d
  400899:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40089d:	48 83 c3 01          	add    rbx,0x1
  4008a1:	48 39 dd             	cmp    rbp,rbx
  4008a4:	75 ea                	jne    400890 <__libc_csu_init+0x40>
  4008a6:	48 83 c4 08          	add    rsp,0x8
  4008aa:	5b                   	pop    rbx
  4008ab:	5d                   	pop    rbp
  4008ac:	41 5c                	pop    r12
  4008ae:	41 5d                	pop    r13
  4008b0:	41 5e                	pop    r14
  4008b2:	41 5f                	pop    r15
  4008b4:	c3                   	ret    
  4008b5:	90                   	nop
  4008b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4008bd:	00 00 00 

00000000004008c0 <__libc_csu_fini>:
  4008c0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004008c4 <_fini>:
  4008c4:	48 83 ec 08          	sub    rsp,0x8
  4008c8:	48 83 c4 08          	add    rsp,0x8
  4008cc:	c3                   	ret    
