
rot13:     file format elf64-x86-64


Disassembly of section .init:

00000000004005c0 <_init>:
  4005c0:	48 83 ec 08          	sub    rsp,0x8
  4005c4:	48 8b 05 2d 0a 20 00 	mov    rax,QWORD PTR [rip+0x200a2d]        # 600ff8 <__gmon_start__>
  4005cb:	48 85 c0             	test   rax,rax
  4005ce:	74 02                	je     4005d2 <_init+0x12>
  4005d0:	ff d0                	call   rax
  4005d2:	48 83 c4 08          	add    rsp,0x8
  4005d6:	c3                   	ret    

Disassembly of section .plt:

00000000004005e0 <.plt>:
  4005e0:	ff 35 22 0a 20 00    	push   QWORD PTR [rip+0x200a22]        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005e6:	ff 25 24 0a 20 00    	jmp    QWORD PTR [rip+0x200a24]        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004005f0 <puts@plt>:
  4005f0:	ff 25 22 0a 20 00    	jmp    QWORD PTR [rip+0x200a22]        # 601018 <puts@GLIBC_2.2.5>
  4005f6:	68 00 00 00 00       	push   0x0
  4005fb:	e9 e0 ff ff ff       	jmp    4005e0 <.plt>

0000000000400600 <__stack_chk_fail@plt>:
  400600:	ff 25 1a 0a 20 00    	jmp    QWORD PTR [rip+0x200a1a]        # 601020 <__stack_chk_fail@GLIBC_2.4>
  400606:	68 01 00 00 00       	push   0x1
  40060b:	e9 d0 ff ff ff       	jmp    4005e0 <.plt>

0000000000400610 <printf@plt>:
  400610:	ff 25 12 0a 20 00    	jmp    QWORD PTR [rip+0x200a12]        # 601028 <printf@GLIBC_2.2.5>
  400616:	68 02 00 00 00       	push   0x2
  40061b:	e9 c0 ff ff ff       	jmp    4005e0 <.plt>

0000000000400620 <alarm@plt>:
  400620:	ff 25 0a 0a 20 00    	jmp    QWORD PTR [rip+0x200a0a]        # 601030 <alarm@GLIBC_2.2.5>
  400626:	68 03 00 00 00       	push   0x3
  40062b:	e9 b0 ff ff ff       	jmp    4005e0 <.plt>

0000000000400630 <fgets@plt>:
  400630:	ff 25 02 0a 20 00    	jmp    QWORD PTR [rip+0x200a02]        # 601038 <fgets@GLIBC_2.2.5>
  400636:	68 04 00 00 00       	push   0x4
  40063b:	e9 a0 ff ff ff       	jmp    4005e0 <.plt>

0000000000400640 <setvbuf@plt>:
  400640:	ff 25 fa 09 20 00    	jmp    QWORD PTR [rip+0x2009fa]        # 601040 <setvbuf@GLIBC_2.2.5>
  400646:	68 05 00 00 00       	push   0x5
  40064b:	e9 90 ff ff ff       	jmp    4005e0 <.plt>

Disassembly of section .text:

0000000000400650 <_start>:
  400650:	31 ed                	xor    ebp,ebp
  400652:	49 89 d1             	mov    r9,rdx
  400655:	5e                   	pop    rsi
  400656:	48 89 e2             	mov    rdx,rsp
  400659:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  40065d:	50                   	push   rax
  40065e:	54                   	push   rsp
  40065f:	49 c7 c0 e0 09 40 00 	mov    r8,0x4009e0
  400666:	48 c7 c1 70 09 40 00 	mov    rcx,0x400970
  40066d:	48 c7 c7 a2 07 40 00 	mov    rdi,0x4007a2
  400674:	ff 15 76 09 20 00    	call   QWORD PTR [rip+0x200976]        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40067a:	f4                   	hlt    
  40067b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000400680 <_dl_relocate_static_pie>:
  400680:	f3 c3                	repz ret 
  400682:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400689:	00 00 00 
  40068c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400690 <deregister_tm_clones>:
  400690:	55                   	push   rbp
  400691:	b8 58 10 60 00       	mov    eax,0x601058
  400696:	48 3d 58 10 60 00    	cmp    rax,0x601058
  40069c:	48 89 e5             	mov    rbp,rsp
  40069f:	74 17                	je     4006b8 <deregister_tm_clones+0x28>
  4006a1:	b8 00 00 00 00       	mov    eax,0x0
  4006a6:	48 85 c0             	test   rax,rax
  4006a9:	74 0d                	je     4006b8 <deregister_tm_clones+0x28>
  4006ab:	5d                   	pop    rbp
  4006ac:	bf 58 10 60 00       	mov    edi,0x601058
  4006b1:	ff e0                	jmp    rax
  4006b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4006b8:	5d                   	pop    rbp
  4006b9:	c3                   	ret    
  4006ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004006c0 <register_tm_clones>:
  4006c0:	be 58 10 60 00       	mov    esi,0x601058
  4006c5:	55                   	push   rbp
  4006c6:	48 81 ee 58 10 60 00 	sub    rsi,0x601058
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
  4006ee:	bf 58 10 60 00       	mov    edi,0x601058
  4006f3:	ff e0                	jmp    rax
  4006f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4006f8:	5d                   	pop    rbp
  4006f9:	c3                   	ret    
  4006fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d 81 09 20 00 00 	cmp    BYTE PTR [rip+0x200981],0x0        # 601088 <completed.7697>
  400707:	75 17                	jne    400720 <__do_global_dtors_aux+0x20>
  400709:	55                   	push   rbp
  40070a:	48 89 e5             	mov    rbp,rsp
  40070d:	e8 7e ff ff ff       	call   400690 <deregister_tm_clones>
  400712:	c6 05 6f 09 20 00 01 	mov    BYTE PTR [rip+0x20096f],0x1        # 601088 <completed.7697>
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

0000000000400737 <setup>:
  400737:	55                   	push   rbp
  400738:	48 89 e5             	mov    rbp,rsp
  40073b:	bf 3c 00 00 00       	mov    edi,0x3c
  400740:	e8 db fe ff ff       	call   400620 <alarm@plt>
  400745:	48 8b 05 24 09 20 00 	mov    rax,QWORD PTR [rip+0x200924]        # 601070 <stdin@@GLIBC_2.2.5>
  40074c:	b9 00 00 00 00       	mov    ecx,0x0
  400751:	ba 02 00 00 00       	mov    edx,0x2
  400756:	be 00 00 00 00       	mov    esi,0x0
  40075b:	48 89 c7             	mov    rdi,rax
  40075e:	e8 dd fe ff ff       	call   400640 <setvbuf@plt>
  400763:	48 8b 05 f6 08 20 00 	mov    rax,QWORD PTR [rip+0x2008f6]        # 601060 <stdout@@GLIBC_2.2.5>
  40076a:	b9 00 00 00 00       	mov    ecx,0x0
  40076f:	ba 02 00 00 00       	mov    edx,0x2
  400774:	be 00 00 00 00       	mov    esi,0x0
  400779:	48 89 c7             	mov    rdi,rax
  40077c:	e8 bf fe ff ff       	call   400640 <setvbuf@plt>
  400781:	48 8b 05 f8 08 20 00 	mov    rax,QWORD PTR [rip+0x2008f8]        # 601080 <stderr@@GLIBC_2.2.5>
  400788:	b9 00 00 00 00       	mov    ecx,0x0
  40078d:	ba 02 00 00 00       	mov    edx,0x2
  400792:	be 00 00 00 00       	mov    esi,0x0
  400797:	48 89 c7             	mov    rdi,rax
  40079a:	e8 a1 fe ff ff       	call   400640 <setvbuf@plt>
  40079f:	90                   	nop
  4007a0:	5d                   	pop    rbp
  4007a1:	c3                   	ret    

00000000004007a2 <main>:
  4007a2:	55                   	push   rbp
  4007a3:	48 89 e5             	mov    rbp,rsp
  4007a6:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  4007ad:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4007b4:	00 00 
  4007b6:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4007ba:	31 c0                	xor    eax,eax
  4007bc:	48 c7 85 f0 fe ff ff 	mov    QWORD PTR [rbp-0x110],0x0
  4007c3:	00 00 00 00 
  4007c7:	48 c7 85 f8 fe ff ff 	mov    QWORD PTR [rbp-0x108],0x0
  4007ce:	00 00 00 00 
  4007d2:	48 8d 95 00 ff ff ff 	lea    rdx,[rbp-0x100]
  4007d9:	b8 00 00 00 00       	mov    eax,0x0
  4007de:	b9 1e 00 00 00       	mov    ecx,0x1e
  4007e3:	48 89 d7             	mov    rdi,rdx
  4007e6:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  4007e9:	c7 85 e8 fe ff ff 00 	mov    DWORD PTR [rbp-0x118],0x0
  4007f0:	00 00 00 
  4007f3:	b8 00 00 00 00       	mov    eax,0x0
  4007f8:	e8 3a ff ff ff       	call   400737 <setup>
  4007fd:	48 8b 15 6c 08 20 00 	mov    rdx,QWORD PTR [rip+0x20086c]        # 601070 <stdin@@GLIBC_2.2.5>
  400804:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
  40080b:	be 00 01 00 00       	mov    esi,0x100
  400810:	48 89 c7             	mov    rdi,rax
  400813:	e8 18 fe ff ff       	call   400630 <fgets@plt> # fgets(rbp-0x110, 0x100, stdin)
  400818:	c7 85 e8 fe ff ff 00 	mov    DWORD PTR [rbp-0x118],0x0
  40081f:	00 00 00 
  400822:	e9 f0 00 00 00       	jmp    400917 <main+0x175>
  400827:	c7 85 ec fe ff ff 00 	mov    DWORD PTR [rbp-0x114],0x0
  40082e:	00 00 00 
  400831:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  400837:	48 98                	cdqe   
  400839:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  400840:	ff 
  400841:	3c 40                	cmp    al,0x40
  400843:	7e 14                	jle    400859 <main+0xb7>
  400845:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  40084b:	48 98                	cdqe   
  40084d:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  400854:	ff 
  400855:	3c 4d                	cmp    al,0x4d
  400857:	7e 28                	jle    400881 <main+0xdf>
  400859:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  40085f:	48 98                	cdqe   
  400861:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  400868:	ff 
  400869:	3c 60                	cmp    al,0x60
  40086b:	7e 1e                	jle    40088b <main+0xe9>
  40086d:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  400873:	48 98                	cdqe   
  400875:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  40087c:	ff 
  40087d:	3c 6d                	cmp    al,0x6d
  40087f:	7f 0a                	jg     40088b <main+0xe9>
  400881:	c7 85 ec fe ff ff 0d 	mov    DWORD PTR [rbp-0x114],0xd
  400888:	00 00 00 
  40088b:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  400891:	48 98                	cdqe   
  400893:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  40089a:	ff 
  40089b:	3c 4d                	cmp    al,0x4d
  40089d:	7e 14                	jle    4008b3 <main+0x111>
  40089f:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  4008a5:	48 98                	cdqe   
  4008a7:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  4008ae:	ff 
  4008af:	3c 5a                	cmp    al,0x5a
  4008b1:	7e 28                	jle    4008db <main+0x139>
  4008b3:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  4008b9:	48 98                	cdqe   
  4008bb:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  4008c2:	ff 
  4008c3:	3c 6d                	cmp    al,0x6d
  4008c5:	7e 1e                	jle    4008e5 <main+0x143>
  4008c7:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  4008cd:	48 98                	cdqe   
  4008cf:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  4008d6:	ff 
  4008d7:	3c 7a                	cmp    al,0x7a
  4008d9:	7f 0a                	jg     4008e5 <main+0x143>
  4008db:	c7 85 ec fe ff ff f3 	mov    DWORD PTR [rbp-0x114],0xfffffff3
  4008e2:	ff ff ff 
  4008e5:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  4008eb:	48 98                	cdqe   
  4008ed:	0f b6 84 05 f0 fe ff 	movzx  eax,BYTE PTR [rbp+rax*1-0x110]
  4008f4:	ff 
  4008f5:	89 c2                	mov    edx,eax
  4008f7:	8b 85 ec fe ff ff    	mov    eax,DWORD PTR [rbp-0x114]
  4008fd:	01 d0                	add    eax,edx
  4008ff:	89 c2                	mov    edx,eax
  400901:	8b 85 e8 fe ff ff    	mov    eax,DWORD PTR [rbp-0x118]
  400907:	48 98                	cdqe   
  400909:	88 94 05 f0 fe ff ff 	mov    BYTE PTR [rbp+rax*1-0x110],dl
  400910:	83 85 e8 fe ff ff 01 	add    DWORD PTR [rbp-0x118],0x1
  400917:	81 bd e8 fe ff ff ff 	cmp    DWORD PTR [rbp-0x118],0xff
  40091e:	00 00 00 
  400921:	0f 8e 00 ff ff ff    	jle    400827 <main+0x85>
  400927:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
  40092e:	48 89 c7             	mov    rdi,rax
  400931:	b8 00 00 00 00       	mov    eax,0x0
  400936:	e8 d5 fc ff ff       	call   400610 <printf@plt>
  40093b:	48 8d 3d b6 00 00 00 	lea    rdi,[rip+0xb6]        # 4009f8 <_IO_stdin_used+0x8>
  400942:	e8 a9 fc ff ff       	call   4005f0 <puts@plt>
  400947:	b8 00 00 00 00       	mov    eax,0x0
  40094c:	48 8b 75 f8          	mov    rsi,QWORD PTR [rbp-0x8]
  400950:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
  400957:	00 00 
  400959:	74 05                	je     400960 <main+0x1be>
  40095b:	e8 a0 fc ff ff       	call   400600 <__stack_chk_fail@plt>
  400960:	c9                   	leave  
  400961:	c3                   	ret    
  400962:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  400969:	00 00 00 
  40096c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400970 <__libc_csu_init>:
  400970:	41 57                	push   r15
  400972:	41 56                	push   r14
  400974:	49 89 d7             	mov    r15,rdx
  400977:	41 55                	push   r13
  400979:	41 54                	push   r12
  40097b:	4c 8d 25 8e 04 20 00 	lea    r12,[rip+0x20048e]        # 600e10 <__frame_dummy_init_array_entry>
  400982:	55                   	push   rbp
  400983:	48 8d 2d 8e 04 20 00 	lea    rbp,[rip+0x20048e]        # 600e18 <__init_array_end>
  40098a:	53                   	push   rbx
  40098b:	41 89 fd             	mov    r13d,edi
  40098e:	49 89 f6             	mov    r14,rsi
  400991:	4c 29 e5             	sub    rbp,r12
  400994:	48 83 ec 08          	sub    rsp,0x8
  400998:	48 c1 fd 03          	sar    rbp,0x3
  40099c:	e8 1f fc ff ff       	call   4005c0 <_init>
  4009a1:	48 85 ed             	test   rbp,rbp
  4009a4:	74 20                	je     4009c6 <__libc_csu_init+0x56>
  4009a6:	31 db                	xor    ebx,ebx
  4009a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4009af:	00 
  4009b0:	4c 89 fa             	mov    rdx,r15
  4009b3:	4c 89 f6             	mov    rsi,r14
  4009b6:	44 89 ef             	mov    edi,r13d
  4009b9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4009bd:	48 83 c3 01          	add    rbx,0x1
  4009c1:	48 39 dd             	cmp    rbp,rbx
  4009c4:	75 ea                	jne    4009b0 <__libc_csu_init+0x40>
  4009c6:	48 83 c4 08          	add    rsp,0x8
  4009ca:	5b                   	pop    rbx
  4009cb:	5d                   	pop    rbp
  4009cc:	41 5c                	pop    r12
  4009ce:	41 5d                	pop    r13
  4009d0:	41 5e                	pop    r14
  4009d2:	41 5f                	pop    r15
  4009d4:	c3                   	ret    
  4009d5:	90                   	nop
  4009d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4009dd:	00 00 00 

00000000004009e0 <__libc_csu_fini>:
  4009e0:	f3 c3                	repz ret 

Disassembly of section .fini:

00000000004009e4 <_fini>:
  4009e4:	48 83 ec 08          	sub    rsp,0x8
  4009e8:	48 83 c4 08          	add    rsp,0x8
  4009ec:	c3                   	ret    
