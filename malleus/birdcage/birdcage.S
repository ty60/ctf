
birdcage:     file format elf64-x86-64


Disassembly of section .init:

0000000000401b90 <_init>:
  401b90:	48 83 ec 08          	sub    rsp,0x8
  401b94:	48 8b 05 55 34 20 00 	mov    rax,QWORD PTR [rip+0x203455]        # 604ff0 <__gmon_start__>
  401b9b:	48 85 c0             	test   rax,rax
  401b9e:	74 02                	je     401ba2 <_init+0x12>
  401ba0:	ff d0                	call   rax
  401ba2:	48 83 c4 08          	add    rsp,0x8
  401ba6:	c3                   	ret    

Disassembly of section .plt:

0000000000401bb0 <.plt>:
  401bb0:	ff 35 52 34 20 00    	push   QWORD PTR [rip+0x203452]        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401bb6:	ff 25 54 34 20 00    	jmp    QWORD PTR [rip+0x203454]        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  401bbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401bc0 <setvbuf@plt>:
  401bc0:	ff 25 52 34 20 00    	jmp    QWORD PTR [rip+0x203452]        # 605018 <setvbuf@GLIBC_2.2.5>
  401bc6:	68 00 00 00 00       	push   0x0
  401bcb:	e9 e0 ff ff ff       	jmp    401bb0 <.plt>

0000000000401bd0 <std::allocator<char>::~allocator()@plt>:
  401bd0:	ff 25 4a 34 20 00    	jmp    QWORD PTR [rip+0x20344a]        # 605020 <std::allocator<char>::~allocator()@GLIBCXX_3.4>
  401bd6:	68 01 00 00 00       	push   0x1
  401bdb:	e9 d0 ff ff ff       	jmp    401bb0 <.plt>

0000000000401be0 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&, char*)@plt>:
  401be0:	ff 25 42 34 20 00    	jmp    QWORD PTR [rip+0x203442]        # 605028 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&, char*)@GLIBCXX_3.4>
  401be6:	68 02 00 00 00       	push   0x2
  401beb:	e9 c0 ff ff ff       	jmp    401bb0 <.plt>

0000000000401bf0 <std::__throw_bad_alloc()@plt>:
  401bf0:	ff 25 3a 34 20 00    	jmp    QWORD PTR [rip+0x20343a]        # 605030 <std::__throw_bad_alloc()@GLIBCXX_3.4>
  401bf6:	68 03 00 00 00       	push   0x3
  401bfb:	e9 b0 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c00 <memcmp@plt>:
  401c00:	ff 25 32 34 20 00    	jmp    QWORD PTR [rip+0x203432]        # 605038 <memcmp@GLIBC_2.2.5>
  401c06:	68 04 00 00 00       	push   0x4
  401c0b:	e9 a0 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c10 <std::__throw_length_error(char const*)@plt>:
  401c10:	ff 25 2a 34 20 00    	jmp    QWORD PTR [rip+0x20342a]        # 605040 <std::__throw_length_error(char const*)@GLIBCXX_3.4>
  401c16:	68 05 00 00 00       	push   0x5
  401c1b:	e9 90 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c20 <std::basic_istream<char, std::char_traits<char> >::operator>>(int&)@plt>:
  401c20:	ff 25 22 34 20 00    	jmp    QWORD PTR [rip+0x203422]        # 605048 <std::basic_istream<char, std::char_traits<char> >::operator>>(int&)@GLIBCXX_3.4>
  401c26:	68 06 00 00 00       	push   0x6
  401c2b:	e9 80 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c30 <std::__throw_logic_error(char const*)@plt>:
  401c30:	ff 25 1a 34 20 00    	jmp    QWORD PTR [rip+0x20341a]        # 605050 <std::__throw_logic_error(char const*)@GLIBCXX_3.4>
  401c36:	68 07 00 00 00       	push   0x7
  401c3b:	e9 70 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c40 <memcpy@plt>:
  401c40:	ff 25 12 34 20 00    	jmp    QWORD PTR [rip+0x203412]        # 605058 <memcpy@GLIBC_2.14>
  401c46:	68 08 00 00 00       	push   0x8
  401c4b:	e9 60 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c50 <__cxa_atexit@plt>:
  401c50:	ff 25 0a 34 20 00    	jmp    QWORD PTR [rip+0x20340a]        # 605060 <__cxa_atexit@GLIBC_2.2.5>
  401c56:	68 09 00 00 00       	push   0x9
  401c5b:	e9 50 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c60 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)@plt>:
  401c60:	ff 25 02 34 20 00    	jmp    QWORD PTR [rip+0x203402]        # 605068 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)@GLIBCXX_3.4.21>
  401c66:	68 0a 00 00 00       	push   0xa
  401c6b:	e9 40 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c70 <operator delete(void*)@plt>:
  401c70:	ff 25 fa 33 20 00    	jmp    QWORD PTR [rip+0x2033fa]        # 605070 <operator delete(void*)@GLIBCXX_3.4>
  401c76:	68 0b 00 00 00       	push   0xb
  401c7b:	e9 30 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>:
  401c80:	ff 25 f2 33 20 00    	jmp    QWORD PTR [rip+0x2033f2]        # 605078 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@GLIBCXX_3.4>
  401c86:	68 0c 00 00 00       	push   0xc
  401c8b:	e9 20 ff ff ff       	jmp    401bb0 <.plt>

0000000000401c90 <operator new(unsigned long)@plt>:
  401c90:	ff 25 ea 33 20 00    	jmp    QWORD PTR [rip+0x2033ea]        # 605080 <operator new(unsigned long)@GLIBCXX_3.4>
  401c96:	68 0d 00 00 00       	push   0xd
  401c9b:	e9 10 ff ff ff       	jmp    401bb0 <.plt>

0000000000401ca0 <operator delete(void*, unsigned long)@plt>:
  401ca0:	ff 25 e2 33 20 00    	jmp    QWORD PTR [rip+0x2033e2]        # 605088 <operator delete(void*, unsigned long)@CXXABI_1.3.9>
  401ca6:	68 0e 00 00 00       	push   0xe
  401cab:	e9 00 ff ff ff       	jmp    401bb0 <.plt>

0000000000401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>:
  401cb0:	ff 25 da 33 20 00    	jmp    QWORD PTR [rip+0x2033da]        # 605090 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@GLIBCXX_3.4>
  401cb6:	68 0f 00 00 00       	push   0xf
  401cbb:	e9 f0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401cc0 <std::allocator<char>::~allocator()@plt>:
  401cc0:	ff 25 d2 33 20 00    	jmp    QWORD PTR [rip+0x2033d2]        # 605098 <std::allocator<char>::~allocator()@GLIBCXX_3.4>
  401cc6:	68 10 00 00 00       	push   0x10
  401ccb:	e9 e0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401cd0 <__stack_chk_fail@plt>:
  401cd0:	ff 25 ca 33 20 00    	jmp    QWORD PTR [rip+0x2033ca]        # 6050a0 <__stack_chk_fail@GLIBC_2.4>
  401cd6:	68 11 00 00 00       	push   0x11
  401cdb:	e9 d0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401ce0 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)@plt>:
  401ce0:	ff 25 c2 33 20 00    	jmp    QWORD PTR [rip+0x2033c2]        # 6050a8 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)@GLIBCXX_3.4.21>
  401ce6:	68 12 00 00 00       	push   0x12
  401ceb:	e9 c0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401cf0 <std::allocator<char>::allocator(std::allocator<char> const&)@plt>:
  401cf0:	ff 25 ba 33 20 00    	jmp    QWORD PTR [rip+0x2033ba]        # 6050b0 <std::allocator<char>::allocator(std::allocator<char> const&)@GLIBCXX_3.4>
  401cf6:	68 13 00 00 00       	push   0x13
  401cfb:	e9 b0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401d00 <std::ios_base::Init::Init()@plt>:
  401d00:	ff 25 b2 33 20 00    	jmp    QWORD PTR [rip+0x2033b2]        # 6050b8 <std::ios_base::Init::Init()@GLIBCXX_3.4>
  401d06:	68 14 00 00 00       	push   0x14
  401d0b:	e9 a0 fe ff ff       	jmp    401bb0 <.plt>

0000000000401d10 <std::basic_ostream<char, std::char_traits<char> >::operator<<(int)@plt>:
  401d10:	ff 25 aa 33 20 00    	jmp    QWORD PTR [rip+0x2033aa]        # 6050c0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(int)@GLIBCXX_3.4>
  401d16:	68 15 00 00 00       	push   0x15
  401d1b:	e9 90 fe ff ff       	jmp    401bb0 <.plt>

0000000000401d20 <_Unwind_Resume@plt>:
  401d20:	ff 25 a2 33 20 00    	jmp    QWORD PTR [rip+0x2033a2]        # 6050c8 <_Unwind_Resume@GCC_3.0>
  401d26:	68 16 00 00 00       	push   0x16
  401d2b:	e9 80 fe ff ff       	jmp    401bb0 <.plt>

0000000000401d30 <std::allocator<char>::allocator()@plt>:
  401d30:	ff 25 9a 33 20 00    	jmp    QWORD PTR [rip+0x20339a]        # 6050d0 <std::allocator<char>::allocator()@GLIBCXX_3.4>
  401d36:	68 17 00 00 00       	push   0x17
  401d3b:	e9 70 fe ff ff       	jmp    401bb0 <.plt>

0000000000401d40 <alarm@plt>:
  401d40:	ff 25 92 33 20 00    	jmp    QWORD PTR [rip+0x203392]        # 6050d8 <alarm@GLIBC_2.2.5>
  401d46:	68 18 00 00 00       	push   0x18
  401d4b:	e9 60 fe ff ff       	jmp    401bb0 <.plt>

Disassembly of section .text:

0000000000401d50 <_start>:
  401d50:	31 ed                	xor    ebp,ebp
  401d52:	49 89 d1             	mov    r9,rdx
  401d55:	5e                   	pop    rsi
  401d56:	48 89 e2             	mov    rdx,rsp
  401d59:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401d5d:	50                   	push   rax
  401d5e:	54                   	push   rsp
  401d5f:	49 c7 c0 90 36 40 00 	mov    r8,0x403690
  401d66:	48 c7 c1 20 36 40 00 	mov    rcx,0x403620
  401d6d:	48 c7 c7 1d 23 40 00 	mov    rdi,0x40231d
  401d74:	ff 15 6e 32 20 00    	call   QWORD PTR [rip+0x20326e]        # 604fe8 <__libc_start_main@GLIBC_2.2.5>
  401d7a:	f4                   	hlt    
  401d7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401d80 <_dl_relocate_static_pie>:
  401d80:	f3 c3                	repz ret 
  401d82:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401d89:	00 00 00 
  401d8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401d90 <deregister_tm_clones>:
  401d90:	55                   	push   rbp
  401d91:	b8 f8 50 60 00       	mov    eax,0x6050f8
  401d96:	48 3d f8 50 60 00    	cmp    rax,0x6050f8
  401d9c:	48 89 e5             	mov    rbp,rsp
  401d9f:	74 17                	je     401db8 <deregister_tm_clones+0x28>
  401da1:	b8 00 00 00 00       	mov    eax,0x0
  401da6:	48 85 c0             	test   rax,rax
  401da9:	74 0d                	je     401db8 <deregister_tm_clones+0x28>
  401dab:	5d                   	pop    rbp
  401dac:	bf f8 50 60 00       	mov    edi,0x6050f8
  401db1:	ff e0                	jmp    rax
  401db3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401db8:	5d                   	pop    rbp
  401db9:	c3                   	ret    
  401dba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000401dc0 <register_tm_clones>:
  401dc0:	be f8 50 60 00       	mov    esi,0x6050f8
  401dc5:	55                   	push   rbp
  401dc6:	48 81 ee f8 50 60 00 	sub    rsi,0x6050f8
  401dcd:	48 89 e5             	mov    rbp,rsp
  401dd0:	48 c1 fe 03          	sar    rsi,0x3
  401dd4:	48 89 f0             	mov    rax,rsi
  401dd7:	48 c1 e8 3f          	shr    rax,0x3f
  401ddb:	48 01 c6             	add    rsi,rax
  401dde:	48 d1 fe             	sar    rsi,1
  401de1:	74 15                	je     401df8 <register_tm_clones+0x38>
  401de3:	b8 00 00 00 00       	mov    eax,0x0
  401de8:	48 85 c0             	test   rax,rax
  401deb:	74 0b                	je     401df8 <register_tm_clones+0x38>
  401ded:	5d                   	pop    rbp
  401dee:	bf f8 50 60 00       	mov    edi,0x6050f8
  401df3:	ff e0                	jmp    rax
  401df5:	0f 1f 00             	nop    DWORD PTR [rax]
  401df8:	5d                   	pop    rbp
  401df9:	c3                   	ret    
  401dfa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000401e00 <__do_global_dtors_aux>:
  401e00:	80 3d 71 35 20 00 00 	cmp    BYTE PTR [rip+0x203571],0x0        # 605378 <completed.7697>
  401e07:	75 17                	jne    401e20 <__do_global_dtors_aux+0x20>
  401e09:	55                   	push   rbp
  401e0a:	48 89 e5             	mov    rbp,rsp
  401e0d:	e8 7e ff ff ff       	call   401d90 <deregister_tm_clones>
  401e12:	c6 05 5f 35 20 00 01 	mov    BYTE PTR [rip+0x20355f],0x1        # 605378 <completed.7697>
  401e19:	5d                   	pop    rbp
  401e1a:	c3                   	ret    
  401e1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401e20:	f3 c3                	repz ret 
  401e22:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401e26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401e2d:	00 00 00 

0000000000401e30 <frame_dummy>:
  401e30:	55                   	push   rbp
  401e31:	48 89 e5             	mov    rbp,rsp
  401e34:	5d                   	pop    rbp
  401e35:	eb 89                	jmp    401dc0 <register_tm_clones>

0000000000401e37 <setup()>:
  401e37:	55                   	push   rbp
  401e38:	48 89 e5             	mov    rbp,rsp
  401e3b:	bf 3c 00 00 00       	mov    edi,0x3c
  401e40:	e8 fb fe ff ff       	call   401d40 <alarm@plt>
  401e45:	48 8b 05 c4 32 20 00 	mov    rax,QWORD PTR [rip+0x2032c4]        # 605110 <stdin@@GLIBC_2.2.5>
  401e4c:	b9 00 00 00 00       	mov    ecx,0x0
  401e51:	ba 02 00 00 00       	mov    edx,0x2
  401e56:	be 00 00 00 00       	mov    esi,0x0
  401e5b:	48 89 c7             	mov    rdi,rax
  401e5e:	e8 5d fd ff ff       	call   401bc0 <setvbuf@plt>
  401e63:	48 8b 05 96 32 20 00 	mov    rax,QWORD PTR [rip+0x203296]        # 605100 <stdout@@GLIBC_2.2.5>
  401e6a:	b9 00 00 00 00       	mov    ecx,0x0
  401e6f:	ba 02 00 00 00       	mov    edx,0x2
  401e74:	be 00 00 00 00       	mov    esi,0x0
  401e79:	48 89 c7             	mov    rdi,rax
  401e7c:	e8 3f fd ff ff       	call   401bc0 <setvbuf@plt>
  401e81:	48 8b 05 b8 33 20 00 	mov    rax,QWORD PTR [rip+0x2033b8]        # 605240 <stderr@@GLIBC_2.2.5>
  401e88:	b9 00 00 00 00       	mov    ecx,0x0
  401e8d:	ba 02 00 00 00       	mov    edx,0x2
  401e92:	be 00 00 00 00       	mov    esi,0x0
  401e97:	48 89 c7             	mov    rdi,rax
  401e9a:	e8 21 fd ff ff       	call   401bc0 <setvbuf@plt>
  401e9f:	90                   	nop
  401ea0:	5d                   	pop    rbp
  401ea1:	c3                   	ret    

0000000000401ea2 <capture()>:
  401ea2:	55                   	push   rbp
  401ea3:	48 89 e5             	mov    rbp,rsp
  401ea6:	41 54                	push   r12
  401ea8:	53                   	push   rbx
  401ea9:	48 83 ec 40          	sub    rsp,0x40
  401ead:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  401eb4:	00 00 
  401eb6:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401eba:	31 c0                	xor    eax,eax
  401ebc:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  401ec0:	48 89 c7             	mov    rdi,rax
  401ec3:	e8 e0 0c 00 00       	call   402ba8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()>
  401ec8:	48 8d 45 b4          	lea    rax,[rbp-0x4c]
  401ecc:	48 89 c6             	mov    rsi,rax
  401ecf:	48 8d 3d 8a 33 20 00 	lea    rdi,[rip+0x20338a]        # 605260 <std::cin@@GLIBCXX_3.4>
  401ed6:	e8 45 fd ff ff       	call   401c20 <std::basic_istream<char, std::char_traits<char> >::operator>>(int&)@plt>
  401edb:	48 89 c2             	mov    rdx,rax
  401ede:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  401ee2:	48 89 c6             	mov    rsi,rax
  401ee5:	48 89 d7             	mov    rdi,rdx
  401ee8:	e8 f3 fd ff ff       	call   401ce0 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)@plt>
  401eed:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401ef0:	85 c0                	test   eax,eax
  401ef2:	78 08                	js     401efc <capture()+0x5a>
  401ef4:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401ef7:	83 f8 03             	cmp    eax,0x3
  401efa:	7e 0a                	jle    401f06 <capture()+0x64>
  401efc:	bb 00 00 00 00       	mov    ebx,0x0
  401f01:	e9 40 01 00 00       	jmp    402046 <capture()+0x1a4>
  401f06:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401f09:	48 98                	cdqe   
  401f0b:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  401f12:	00 
  401f13:	48 8d 05 66 34 20 00 	lea    rax,[rip+0x203466]        # 605380 <cage>
  401f1a:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
  401f1e:	48 85 c0             	test   rax,rax
  401f21:	74 5c                	je     401f7f <capture()+0xdd>
  401f23:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401f26:	48 98                	cdqe   
  401f28:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  401f2f:	00 
  401f30:	48 8d 05 49 34 20 00 	lea    rax,[rip+0x203449]        # 605380 <cage>
  401f37:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
  401f3b:	48 85 c0             	test   rax,rax
  401f3e:	74 3f                	je     401f7f <capture()+0xdd>
  401f40:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401f43:	48 98                	cdqe   
  401f45:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  401f4c:	00 
  401f4d:	48 8d 05 2c 34 20 00 	lea    rax,[rip+0x20342c]        # 605380 <cage>
  401f54:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
  401f58:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  401f5b:	48 98                	cdqe   
  401f5d:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
  401f64:	00 
  401f65:	48 8d 05 14 34 20 00 	lea    rax,[rip+0x203414]        # 605380 <cage>
  401f6c:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
  401f70:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401f73:	48 83 c0 10          	add    rax,0x10
  401f77:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401f7a:	48 89 d7             	mov    rdi,rdx
  401f7d:	ff d0                	call   rax
  401f7f:	48 c7 45 b8 00 00 00 	mov    QWORD PTR [rbp-0x48],0x0
  401f86:	00 
  401f87:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  401f8b:	48 8d 35 3f 17 00 00 	lea    rsi,[rip+0x173f]        # 4036d1 <_IO_stdin_used+0x31>
  401f92:	48 89 c7             	mov    rdi,rax
  401f95:	e8 ae 0c 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  401f9a:	84 c0                	test   al,al
  401f9c:	74 20                	je     401fbe <capture()+0x11c>
  401f9e:	bf 08 00 00 00       	mov    edi,0x8
  401fa3:	e8 e8 fc ff ff       	call   401c90 <operator new(unsigned long)@plt>
  401fa8:	48 89 c3             	mov    rbx,rax
  401fab:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  401fb2:	48 89 df             	mov    rdi,rbx
  401fb5:	e8 6e 09 00 00       	call   402928 <Cock::Cock()>
  401fba:	48 89 5d b8          	mov    QWORD PTR [rbp-0x48],rbx
  401fbe:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  401fc2:	48 8d 35 0d 17 00 00 	lea    rsi,[rip+0x170d]        # 4036d6 <_IO_stdin_used+0x36>
  401fc9:	48 89 c7             	mov    rdi,rax
  401fcc:	e8 77 0c 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  401fd1:	84 c0                	test   al,al
  401fd3:	74 20                	je     401ff5 <capture()+0x153>
  401fd5:	bf 08 00 00 00       	mov    edi,0x8
  401fda:	e8 b1 fc ff ff       	call   401c90 <operator new(unsigned long)@plt>
  401fdf:	48 89 c3             	mov    rbx,rax
  401fe2:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  401fe9:	48 89 df             	mov    rdi,rbx
  401fec:	e8 61 09 00 00       	call   402952 <Owl::Owl()>
  401ff1:	48 89 5d b8          	mov    QWORD PTR [rbp-0x48],rbx
  401ff5:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  401ff9:	48 8d 35 da 16 00 00 	lea    rsi,[rip+0x16da]        # 4036da <_IO_stdin_used+0x3a>
  402000:	48 89 c7             	mov    rdi,rax
  402003:	e8 40 0c 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  402008:	84 c0                	test   al,al
  40200a:	74 19                	je     402025 <capture()+0x183>
  40200c:	bf 28 00 00 00       	mov    edi,0x28
  402011:	e8 7a fc ff ff       	call   401c90 <operator new(unsigned long)@plt>
  402016:	48 89 c3             	mov    rbx,rax
  402019:	48 89 df             	mov    rdi,rbx
  40201c:	e8 27 08 00 00       	call   402848 <Parrot::Parrot()>
  402021:	48 89 5d b8          	mov    QWORD PTR [rbp-0x48],rbx
  402025:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  402028:	48 98                	cdqe   
  40202a:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
  402031:	00 
  402032:	48 8d 05 47 33 20 00 	lea    rax,[rip+0x203347]        # 605380 <cage>
  402039:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
  40203d:	48 89 14 01          	mov    QWORD PTR [rcx+rax*1],rdx
  402041:	bb 01 00 00 00       	mov    ebx,0x1
  402046:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40204a:	48 89 c7             	mov    rdi,rax
  40204d:	e8 96 0a 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  402052:	83 fb 01             	cmp    ebx,0x1
  402055:	90                   	nop
  402056:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40205a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402061:	00 00 
  402063:	74 36                	je     40209b <capture()+0x1f9>
  402065:	eb 2f                	jmp    402096 <capture()+0x1f4>
  402067:	49 89 c4             	mov    r12,rax
  40206a:	be 28 00 00 00       	mov    esi,0x28
  40206f:	48 89 df             	mov    rdi,rbx
  402072:	e8 29 fc ff ff       	call   401ca0 <operator delete(void*, unsigned long)@plt>
  402077:	4c 89 e3             	mov    rbx,r12
  40207a:	eb 03                	jmp    40207f <capture()+0x1dd>
  40207c:	48 89 c3             	mov    rbx,rax
  40207f:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  402083:	48 89 c7             	mov    rdi,rax
  402086:	e8 5d 0a 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  40208b:	48 89 d8             	mov    rax,rbx
  40208e:	48 89 c7             	mov    rdi,rax
  402091:	e8 8a fc ff ff       	call   401d20 <_Unwind_Resume@plt>
  402096:	e8 35 fc ff ff       	call   401cd0 <__stack_chk_fail@plt>
  40209b:	48 83 c4 40          	add    rsp,0x40
  40209f:	5b                   	pop    rbx
  4020a0:	41 5c                	pop    r12
  4020a2:	5d                   	pop    rbp
  4020a3:	c3                   	ret    

00000000004020a4 <sing()>:
  4020a4:	55                   	push   rbp
  4020a5:	48 89 e5             	mov    rbp,rsp
  4020a8:	48 83 ec 10          	sub    rsp,0x10
  4020ac:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4020b3:	00 00 
  4020b5:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4020b9:	31 c0                	xor    eax,eax
  4020bb:	48 8d 45 f4          	lea    rax,[rbp-0xc]
  4020bf:	48 89 c6             	mov    rsi,rax
  4020c2:	48 8d 3d 97 31 20 00 	lea    rdi,[rip+0x203197]        # 605260 <std::cin@@GLIBCXX_3.4>
  4020c9:	e8 52 fb ff ff       	call   401c20 <std::basic_istream<char, std::char_traits<char> >::operator>>(int&)@plt>
  4020ce:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4020d1:	85 c0                	test   eax,eax
  4020d3:	78 62                	js     402137 <sing()+0x93>
  4020d5:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4020d8:	83 f8 03             	cmp    eax,0x3
  4020db:	7f 5a                	jg     402137 <sing()+0x93>
  4020dd:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4020e0:	48 98                	cdqe   
  4020e2:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4020e9:	00 
  4020ea:	48 8d 05 8f 32 20 00 	lea    rax,[rip+0x20328f]        # 605380 <cage>
  4020f1:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
  4020f5:	48 85 c0             	test   rax,rax
  4020f8:	74 3e                	je     402138 <sing()+0x94>
  4020fa:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4020fd:	48 98                	cdqe   
  4020ff:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  402106:	00 
  402107:	48 8d 05 72 32 20 00 	lea    rax,[rip+0x203272]        # 605380 <cage>
  40210e:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
  402112:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  402115:	48 98                	cdqe   
  402117:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
  40211e:	00 
  40211f:	48 8d 05 5a 32 20 00 	lea    rax,[rip+0x20325a]        # 605380 <cage>
  402126:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
  40212a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40212d:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402130:	48 89 d7             	mov    rdi,rdx
  402133:	ff d0                	call   rax
  402135:	eb 01                	jmp    402138 <sing()+0x94>
  402137:	90                   	nop
  402138:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40213c:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402143:	00 00 
  402145:	74 05                	je     40214c <sing()+0xa8>
  402147:	e8 84 fb ff ff       	call   401cd0 <__stack_chk_fail@plt>
  40214c:	c9                   	leave  
  40214d:	c3                   	ret    

000000000040214e <release()>:
  40214e:	55                   	push   rbp
  40214f:	48 89 e5             	mov    rbp,rsp
  402152:	48 83 ec 10          	sub    rsp,0x10
  402156:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40215d:	00 00 
  40215f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402163:	31 c0                	xor    eax,eax
  402165:	48 8d 45 f4          	lea    rax,[rbp-0xc]
  402169:	48 89 c6             	mov    rsi,rax
  40216c:	48 8d 3d ed 30 20 00 	lea    rdi,[rip+0x2030ed]        # 605260 <std::cin@@GLIBCXX_3.4>
  402173:	e8 a8 fa ff ff       	call   401c20 <std::basic_istream<char, std::char_traits<char> >::operator>>(int&)@plt>
  402178:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  40217b:	85 c0                	test   eax,eax
  40217d:	0f 88 82 00 00 00    	js     402205 <release()+0xb7>
  402183:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  402186:	83 f8 03             	cmp    eax,0x3
  402189:	7f 7a                	jg     402205 <release()+0xb7>
  40218b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  40218e:	48 98                	cdqe   
  402190:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  402197:	00 
  402198:	48 8d 05 e1 31 20 00 	lea    rax,[rip+0x2031e1]        # 605380 <cage>
  40219f:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
  4021a3:	48 85 c0             	test   rax,rax
  4021a6:	74 3f                	je     4021e7 <release()+0x99>
  4021a8:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4021ab:	48 98                	cdqe   
  4021ad:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4021b4:	00 
  4021b5:	48 8d 05 c4 31 20 00 	lea    rax,[rip+0x2031c4]        # 605380 <cage>
  4021bc:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
  4021c0:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4021c3:	48 98                	cdqe   
  4021c5:	48 8d 0c c5 00 00 00 	lea    rcx,[rax*8+0x0]
  4021cc:	00 
  4021cd:	48 8d 05 ac 31 20 00 	lea    rax,[rip+0x2031ac]        # 605380 <cage>
  4021d4:	48 8b 04 01          	mov    rax,QWORD PTR [rcx+rax*1]
  4021d8:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4021db:	48 83 c0 10          	add    rax,0x10
  4021df:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4021e2:	48 89 d7             	mov    rdi,rdx
  4021e5:	ff d0                	call   rax
  4021e7:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4021ea:	48 98                	cdqe   
  4021ec:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4021f3:	00 
  4021f4:	48 8d 05 85 31 20 00 	lea    rax,[rip+0x203185]        # 605380 <cage>
  4021fb:	48 c7 04 02 00 00 00 	mov    QWORD PTR [rdx+rax*1],0x0
  402202:	00 
  402203:	eb 01                	jmp    402206 <release()+0xb8>
  402205:	90                   	nop
  402206:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40220a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402211:	00 00 
  402213:	74 05                	je     40221a <release()+0xcc>
  402215:	e8 b6 fa ff ff       	call   401cd0 <__stack_chk_fail@plt>
  40221a:	c9                   	leave  
  40221b:	c3                   	ret    

000000000040221c <list()>:
  40221c:	55                   	push   rbp
  40221d:	48 89 e5             	mov    rbp,rsp
  402220:	53                   	push   rbx
  402221:	48 83 ec 48          	sub    rsp,0x48
  402225:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40222c:	00 00 
  40222e:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  402232:	31 c0                	xor    eax,eax
  402234:	c7 45 bc 00 00 00 00 	mov    DWORD PTR [rbp-0x44],0x0
  40223b:	83 7d bc 03          	cmp    DWORD PTR [rbp-0x44],0x3
  40223f:	0f 8f bc 00 00 00    	jg     402301 <list()+0xe5>
  402245:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402248:	89 c6                	mov    esi,eax
  40224a:	48 8d 3d cf 2e 20 00 	lea    rdi,[rip+0x202ecf]        # 605120 <std::cout@@GLIBCXX_3.4>
  402251:	e8 ba fa ff ff       	call   401d10 <std::basic_ostream<char, std::char_traits<char> >::operator<<(int)@plt>
  402256:	48 8d 35 84 14 00 00 	lea    rsi,[rip+0x1484]        # 4036e1 <_IO_stdin_used+0x41>
  40225d:	48 89 c7             	mov    rdi,rax
  402260:	e8 1b fa ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  402265:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402268:	48 98                	cdqe   
  40226a:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  402271:	00 
  402272:	48 8d 05 07 31 20 00 	lea    rax,[rip+0x203107]        # 605380 <cage>
  402279:	48 8b 04 02          	mov    rax,QWORD PTR [rdx+rax*1]
  40227d:	48 85 c0             	test   rax,rax
  402280:	74 46                	je     4022c8 <list()+0xac>
  402282:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402285:	48 98                	cdqe   
  402287:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  40228e:	00 
  40228f:	48 8d 05 ea 30 20 00 	lea    rax,[rip+0x2030ea]        # 605380 <cage>
  402296:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
  40229a:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40229e:	48 89 d6             	mov    rsi,rdx
  4022a1:	48 89 c7             	mov    rdi,rax
  4022a4:	e8 2f 04 00 00       	call   4026d8 <Bird::name[abi:cxx11]()>
  4022a9:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4022ad:	48 89 c6             	mov    rsi,rax
  4022b0:	48 8d 3d 69 2e 20 00 	lea    rdi,[rip+0x202e69]        # 605120 <std::cout@@GLIBCXX_3.4>
  4022b7:	e8 a4 f9 ff ff       	call   401c60 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <char, std::char_traits<char>, std::allocator<char> >(std::basic_ostream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)@plt>
  4022bc:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4022c0:	48 89 c7             	mov    rdi,rax
  4022c3:	e8 20 08 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4022c8:	48 8b 05 11 2d 20 00 	mov    rax,QWORD PTR [rip+0x202d11]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4022cf:	48 89 c6             	mov    rsi,rax
  4022d2:	48 8d 3d 47 2e 20 00 	lea    rdi,[rip+0x202e47]        # 605120 <std::cout@@GLIBCXX_3.4>
  4022d9:	e8 d2 f9 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  4022de:	83 45 bc 01          	add    DWORD PTR [rbp-0x44],0x1
  4022e2:	e9 54 ff ff ff       	jmp    40223b <list()+0x1f>
  4022e7:	48 89 c3             	mov    rbx,rax
  4022ea:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4022ee:	48 89 c7             	mov    rdi,rax
  4022f1:	e8 f2 07 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4022f6:	48 89 d8             	mov    rax,rbx
  4022f9:	48 89 c7             	mov    rdi,rax
  4022fc:	e8 1f fa ff ff       	call   401d20 <_Unwind_Resume@plt>
  402301:	90                   	nop
  402302:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402306:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  40230d:	00 00 
  40230f:	74 05                	je     402316 <list()+0xfa>
  402311:	e8 ba f9 ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402316:	48 83 c4 48          	add    rsp,0x48
  40231a:	5b                   	pop    rbx
  40231b:	5d                   	pop    rbp
  40231c:	c3                   	ret    

000000000040231d <main>:
  40231d:	55                   	push   rbp
  40231e:	48 89 e5             	mov    rbp,rsp
  402321:	53                   	push   rbx
  402322:	48 83 ec 38          	sub    rsp,0x38
  402326:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40232d:	00 00 
  40232f:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  402333:	31 c0                	xor    eax,eax
  402335:	e8 fd fa ff ff       	call   401e37 <setup()>
  40233a:	48 8d 35 a3 13 00 00 	lea    rsi,[rip+0x13a3]        # 4036e4 <_IO_stdin_used+0x44>
  402341:	48 8d 3d d8 2d 20 00 	lea    rdi,[rip+0x202dd8]        # 605120 <std::cout@@GLIBCXX_3.4>
  402348:	e8 33 f9 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  40234d:	48 89 c2             	mov    rdx,rax
  402350:	48 8b 05 89 2c 20 00 	mov    rax,QWORD PTR [rip+0x202c89]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  402357:	48 89 c6             	mov    rsi,rax
  40235a:	48 89 d7             	mov    rdi,rdx
  40235d:	e8 4e f9 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  402362:	48 8d 35 87 13 00 00 	lea    rsi,[rip+0x1387]        # 4036f0 <_IO_stdin_used+0x50>
  402369:	48 8d 3d b0 2d 20 00 	lea    rdi,[rip+0x202db0]        # 605120 <std::cout@@GLIBCXX_3.4>
  402370:	e8 0b f9 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  402375:	48 89 c2             	mov    rdx,rax
  402378:	48 8b 05 61 2c 20 00 	mov    rax,QWORD PTR [rip+0x202c61]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  40237f:	48 89 c6             	mov    rsi,rax
  402382:	48 89 d7             	mov    rdi,rdx
  402385:	e8 26 f9 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  40238a:	48 8d 35 81 13 00 00 	lea    rsi,[rip+0x1381]        # 403712 <_IO_stdin_used+0x72>
  402391:	48 8d 3d 88 2d 20 00 	lea    rdi,[rip+0x202d88]        # 605120 <std::cout@@GLIBCXX_3.4>
  402398:	e8 e3 f8 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  40239d:	48 89 c2             	mov    rdx,rax
  4023a0:	48 8b 05 39 2c 20 00 	mov    rax,QWORD PTR [rip+0x202c39]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4023a7:	48 89 c6             	mov    rsi,rax
  4023aa:	48 89 d7             	mov    rdi,rdx
  4023ad:	e8 fe f8 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  4023b2:	48 8d 35 68 13 00 00 	lea    rsi,[rip+0x1368]        # 403721 <_IO_stdin_used+0x81>
  4023b9:	48 8d 3d 60 2d 20 00 	lea    rdi,[rip+0x202d60]        # 605120 <std::cout@@GLIBCXX_3.4>
  4023c0:	e8 bb f8 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  4023c5:	48 89 c2             	mov    rdx,rax
  4023c8:	48 8b 05 11 2c 20 00 	mov    rax,QWORD PTR [rip+0x202c11]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4023cf:	48 89 c6             	mov    rsi,rax
  4023d2:	48 89 d7             	mov    rdi,rdx
  4023d5:	e8 d6 f8 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  4023da:	48 8d 35 52 13 00 00 	lea    rsi,[rip+0x1352]        # 403733 <_IO_stdin_used+0x93>
  4023e1:	48 8d 3d 38 2d 20 00 	lea    rdi,[rip+0x202d38]        # 605120 <std::cout@@GLIBCXX_3.4>
  4023e8:	e8 93 f8 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  4023ed:	48 89 c2             	mov    rdx,rax
  4023f0:	48 8b 05 e9 2b 20 00 	mov    rax,QWORD PTR [rip+0x202be9]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4023f7:	48 89 c6             	mov    rsi,rax
  4023fa:	48 89 d7             	mov    rdi,rdx
  4023fd:	e8 ae f8 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  402402:	48 8d 35 31 13 00 00 	lea    rsi,[rip+0x1331]        # 40373a <_IO_stdin_used+0x9a>
  402409:	48 8d 3d 10 2d 20 00 	lea    rdi,[rip+0x202d10]        # 605120 <std::cout@@GLIBCXX_3.4>
  402410:	e8 6b f8 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  402415:	48 89 c2             	mov    rdx,rax
  402418:	48 8b 05 c1 2b 20 00 	mov    rax,QWORD PTR [rip+0x202bc1]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  40241f:	48 89 c6             	mov    rsi,rax
  402422:	48 89 d7             	mov    rdi,rdx
  402425:	e8 86 f8 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  40242a:	48 8d 35 10 13 00 00 	lea    rsi,[rip+0x1310]        # 403741 <_IO_stdin_used+0xa1>
  402431:	48 8d 3d e8 2c 20 00 	lea    rdi,[rip+0x202ce8]        # 605120 <std::cout@@GLIBCXX_3.4>
  402438:	e8 43 f8 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  40243d:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  402441:	48 89 c7             	mov    rdi,rax
  402444:	e8 5f 07 00 00       	call   402ba8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()>
  402449:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40244d:	48 89 c6             	mov    rsi,rax
  402450:	48 8d 3d 09 2e 20 00 	lea    rdi,[rip+0x202e09]        # 605260 <std::cin@@GLIBCXX_3.4>
  402457:	e8 84 f8 ff ff       	call   401ce0 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char>, std::allocator<char> >(std::basic_istream<char, std::char_traits<char> >&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >&)@plt>
  40245c:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  402460:	48 8d 35 dd 12 00 00 	lea    rsi,[rip+0x12dd]        # 403744 <_IO_stdin_used+0xa4>
  402467:	48 89 c7             	mov    rdi,rax
  40246a:	e8 d9 07 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  40246f:	84 c0                	test   al,al
  402471:	74 05                	je     402478 <main+0x15b>
  402473:	e8 2a fa ff ff       	call   401ea2 <capture()>
  402478:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  40247c:	48 8d 35 c9 12 00 00 	lea    rsi,[rip+0x12c9]        # 40374c <_IO_stdin_used+0xac>
  402483:	48 89 c7             	mov    rdi,rax
  402486:	e8 bd 07 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  40248b:	84 c0                	test   al,al
  40248d:	74 05                	je     402494 <main+0x177>
  40248f:	e8 10 fc ff ff       	call   4020a4 <sing()>
  402494:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  402498:	48 8d 35 b2 12 00 00 	lea    rsi,[rip+0x12b2]        # 403751 <_IO_stdin_used+0xb1>
  40249f:	48 89 c7             	mov    rdi,rax
  4024a2:	e8 a1 07 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  4024a7:	84 c0                	test   al,al
  4024a9:	74 05                	je     4024b0 <main+0x193>
  4024ab:	e8 9e fc ff ff       	call   40214e <release()>
  4024b0:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4024b4:	48 8d 35 9e 12 00 00 	lea    rsi,[rip+0x129e]        # 403759 <_IO_stdin_used+0xb9>
  4024bb:	48 89 c7             	mov    rdi,rax
  4024be:	e8 85 07 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  4024c3:	84 c0                	test   al,al
  4024c5:	74 05                	je     4024cc <main+0x1af>
  4024c7:	e8 50 fd ff ff       	call   40221c <list()>
  4024cc:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4024d0:	48 8d 35 87 12 00 00 	lea    rsi,[rip+0x1287]        # 40375e <_IO_stdin_used+0xbe>
  4024d7:	48 89 c7             	mov    rdi,rax
  4024da:	e8 69 07 00 00       	call   402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>
  4024df:	84 c0                	test   al,al
  4024e1:	74 07                	je     4024ea <main+0x1cd>
  4024e3:	bb 00 00 00 00       	mov    ebx,0x0
  4024e8:	eb 05                	jmp    4024ef <main+0x1d2>
  4024ea:	bb 01 00 00 00       	mov    ebx,0x1
  4024ef:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  4024f3:	48 89 c7             	mov    rdi,rax
  4024f6:	e8 ed 05 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4024fb:	83 fb 01             	cmp    ebx,0x1
  4024fe:	75 06                	jne    402506 <main+0x1e9>
  402500:	90                   	nop
  402501:	e9 24 ff ff ff       	jmp    40242a <main+0x10d>
  402506:	b8 00 00 00 00       	mov    eax,0x0
  40250b:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  40250f:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  402516:	00 00 
  402518:	74 21                	je     40253b <main+0x21e>
  40251a:	eb 1a                	jmp    402536 <main+0x219>
  40251c:	48 89 c3             	mov    rbx,rax
  40251f:	48 8d 45 c0          	lea    rax,[rbp-0x40]
  402523:	48 89 c7             	mov    rdi,rax
  402526:	e8 bd 05 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  40252b:	48 89 d8             	mov    rax,rbx
  40252e:	48 89 c7             	mov    rdi,rax
  402531:	e8 ea f7 ff ff       	call   401d20 <_Unwind_Resume@plt>
  402536:	e8 95 f7 ff ff       	call   401cd0 <__stack_chk_fail@plt>
  40253b:	48 83 c4 38          	add    rsp,0x38
  40253f:	5b                   	pop    rbx
  402540:	5d                   	pop    rbp
  402541:	c3                   	ret    

0000000000402542 <__static_initialization_and_destruction_0(int, int)>:
  402542:	55                   	push   rbp
  402543:	48 89 e5             	mov    rbp,rsp
  402546:	48 83 ec 10          	sub    rsp,0x10
  40254a:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
  40254d:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
  402550:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
  402554:	75 32                	jne    402588 <__static_initialization_and_destruction_0(int, int)+0x46>
  402556:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
  40255d:	75 29                	jne    402588 <__static_initialization_and_destruction_0(int, int)+0x46>
  40255f:	48 8d 3d 3a 2e 20 00 	lea    rdi,[rip+0x202e3a]        # 6053a0 <std::__ioinit>
  402566:	e8 95 f7 ff ff       	call   401d00 <std::ios_base::Init::Init()@plt>
  40256b:	48 8d 15 76 2b 20 00 	lea    rdx,[rip+0x202b76]        # 6050e8 <__dso_handle>
  402572:	48 8d 35 27 2e 20 00 	lea    rsi,[rip+0x202e27]        # 6053a0 <std::__ioinit>
  402579:	48 8b 05 78 2a 20 00 	mov    rax,QWORD PTR [rip+0x202a78]        # 604ff8 <std::ios_base::Init::~Init()@GLIBCXX_3.4>
  402580:	48 89 c7             	mov    rdi,rax
  402583:	e8 c8 f6 ff ff       	call   401c50 <__cxa_atexit@plt>
  402588:	90                   	nop
  402589:	c9                   	leave  
  40258a:	c3                   	ret    

000000000040258b <_GLOBAL__sub_I__Z5setupv>:
  40258b:	55                   	push   rbp
  40258c:	48 89 e5             	mov    rbp,rsp
  40258f:	be ff ff 00 00       	mov    esi,0xffff
  402594:	bf 01 00 00 00       	mov    edi,0x1
  402599:	e8 a4 ff ff ff       	call   402542 <__static_initialization_and_destruction_0(int, int)>
  40259e:	5d                   	pop    rbp
  40259f:	c3                   	ret    

00000000004025a0 <std::type_info::name() const>:
  4025a0:	55                   	push   rbp
  4025a1:	48 89 e5             	mov    rbp,rsp
  4025a4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4025a8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4025ac:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4025b0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  4025b3:	3c 2a                	cmp    al,0x2a
  4025b5:	75 0e                	jne    4025c5 <std::type_info::name() const+0x25>
  4025b7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4025bb:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4025bf:	48 83 c0 01          	add    rax,0x1
  4025c3:	eb 08                	jmp    4025cd <std::type_info::name() const+0x2d>
  4025c5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4025c9:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  4025cd:	5d                   	pop    rbp
  4025ce:	c3                   	ret    

00000000004025cf <std::char_traits<char>::assign(char&, char const&)>:
  4025cf:	55                   	push   rbp
  4025d0:	48 89 e5             	mov    rbp,rsp
  4025d3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4025d7:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4025db:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4025df:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  4025e2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4025e6:	88 10                	mov    BYTE PTR [rax],dl
  4025e8:	90                   	nop
  4025e9:	5d                   	pop    rbp
  4025ea:	c3                   	ret    

00000000004025eb <std::char_traits<char>::compare(char const*, char const*, unsigned long)>:
  4025eb:	55                   	push   rbp
  4025ec:	48 89 e5             	mov    rbp,rsp
  4025ef:	48 83 ec 20          	sub    rsp,0x20
  4025f3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4025f7:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4025fb:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4025ff:	b8 00 00 00 00       	mov    eax,0x0
  402604:	84 c0                	test   al,al
  402606:	74 19                	je     402621 <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x36>
  402608:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  40260c:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  402610:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402614:	48 89 ce             	mov    rsi,rcx
  402617:	48 89 c7             	mov    rdi,rax
  40261a:	e8 7d 03 00 00       	call   40299c <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)>
  40261f:	eb 25                	jmp    402646 <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x5b>
  402621:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  402626:	75 07                	jne    40262f <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x44>
  402628:	b8 00 00 00 00       	mov    eax,0x0
  40262d:	eb 17                	jmp    402646 <std::char_traits<char>::compare(char const*, char const*, unsigned long)+0x5b>
  40262f:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  402633:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  402637:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40263b:	48 89 ce             	mov    rsi,rcx
  40263e:	48 89 c7             	mov    rdi,rax
  402641:	e8 ba f5 ff ff       	call   401c00 <memcmp@plt>
  402646:	c9                   	leave  
  402647:	c3                   	ret    

0000000000402648 <std::char_traits<char>::length(char const*)>:
  402648:	55                   	push   rbp
  402649:	48 89 e5             	mov    rbp,rsp
  40264c:	48 83 ec 20          	sub    rsp,0x20
  402650:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402654:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402658:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40265c:	b8 00 00 00 00       	mov    eax,0x0
  402661:	84 c0                	test   al,al
  402663:	74 0e                	je     402673 <std::char_traits<char>::length(char const*)+0x2b>
  402665:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402669:	48 89 c7             	mov    rdi,rax
  40266c:	e8 b7 03 00 00       	call   402a28 <__gnu_cxx::char_traits<char>::length(char const*)>
  402671:	eb 22                	jmp    402695 <std::char_traits<char>::length(char const*)+0x4d>
  402673:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402677:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  40267e:	48 89 c2             	mov    rdx,rax
  402681:	b8 00 00 00 00       	mov    eax,0x0
  402686:	48 89 d7             	mov    rdi,rdx
  402689:	f2 ae                	repnz scas al,BYTE PTR es:[rdi]
  40268b:	48 89 c8             	mov    rax,rcx
  40268e:	48 f7 d0             	not    rax
  402691:	48 83 e8 01          	sub    rax,0x1
  402695:	c9                   	leave  
  402696:	c3                   	ret    

0000000000402697 <std::char_traits<char>::copy(char*, char const*, unsigned long)>:
  402697:	55                   	push   rbp
  402698:	48 89 e5             	mov    rbp,rsp
  40269b:	48 83 ec 20          	sub    rsp,0x20
  40269f:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4026a3:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4026a7:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4026ab:	48 83 7d e8 00       	cmp    QWORD PTR [rbp-0x18],0x0
  4026b0:	75 06                	jne    4026b8 <std::char_traits<char>::copy(char*, char const*, unsigned long)+0x21>
  4026b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4026b6:	eb 1d                	jmp    4026d5 <std::char_traits<char>::copy(char*, char const*, unsigned long)+0x3e>
  4026b8:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  4026bc:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4026c0:	48 89 d1             	mov    rcx,rdx
  4026c3:	48 89 c6             	mov    rsi,rax
  4026c6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4026ca:	48 89 c2             	mov    rdx,rax
  4026cd:	48 89 cf             	mov    rdi,rcx
  4026d0:	e8 6b f5 ff ff       	call   401c40 <memcpy@plt>
  4026d5:	c9                   	leave  
  4026d6:	c3                   	ret    
  4026d7:	90                   	nop

00000000004026d8 <Bird::name[abi:cxx11]()>:
  4026d8:	55                   	push   rbp
  4026d9:	48 89 e5             	mov    rbp,rsp
  4026dc:	53                   	push   rbx
  4026dd:	48 83 ec 28          	sub    rsp,0x28
  4026e1:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  4026e5:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  4026e9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4026f0:	00 00 
  4026f2:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4026f6:	31 c0                	xor    eax,eax
  4026f8:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  4026fc:	48 89 c7             	mov    rdi,rax
  4026ff:	e8 2c f6 ff ff       	call   401d30 <std::allocator<char>::allocator()@plt>
  402704:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  402708:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40270b:	48 83 e8 08          	sub    rax,0x8
  40270f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402712:	48 89 c7             	mov    rdi,rax
  402715:	e8 86 fe ff ff       	call   4025a0 <std::type_info::name() const>
  40271a:	48 89 c1             	mov    rcx,rax
  40271d:	48 8d 55 e7          	lea    rdx,[rbp-0x19]
  402721:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402725:	48 89 ce             	mov    rsi,rcx
  402728:	48 89 c7             	mov    rdi,rax
  40272b:	e8 e0 03 00 00       	call   402b10 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)>
  402730:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  402734:	48 89 c7             	mov    rdi,rax
  402737:	e8 84 f5 ff ff       	call   401cc0 <std::allocator<char>::~allocator()@plt>
  40273c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402740:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  402744:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  40274b:	00 00 
  40274d:	74 21                	je     402770 <Bird::name[abi:cxx11]()+0x98>
  40274f:	eb 1a                	jmp    40276b <Bird::name[abi:cxx11]()+0x93>
  402751:	48 89 c3             	mov    rbx,rax
  402754:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  402758:	48 89 c7             	mov    rdi,rax
  40275b:	e8 60 f5 ff ff       	call   401cc0 <std::allocator<char>::~allocator()@plt>
  402760:	48 89 d8             	mov    rax,rbx
  402763:	48 89 c7             	mov    rdi,rax
  402766:	e8 b5 f5 ff ff       	call   401d20 <_Unwind_Resume@plt>
  40276b:	e8 60 f5 ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402770:	48 83 c4 28          	add    rsp,0x28
  402774:	5b                   	pop    rbx
  402775:	5d                   	pop    rbp
  402776:	c3                   	ret    
  402777:	90                   	nop

0000000000402778 <Cock::sing()>:
  402778:	55                   	push   rbp
  402779:	48 89 e5             	mov    rbp,rsp
  40277c:	48 83 ec 10          	sub    rsp,0x10
  402780:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402784:	48 8d 35 1d 0f 00 00 	lea    rsi,[rip+0xf1d]        # 4036a8 <_IO_stdin_used+0x8>
  40278b:	48 8d 3d 8e 29 20 00 	lea    rdi,[rip+0x20298e]        # 605120 <std::cout@@GLIBCXX_3.4>
  402792:	e8 e9 f4 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  402797:	48 89 c2             	mov    rdx,rax
  40279a:	48 8b 05 3f 28 20 00 	mov    rax,QWORD PTR [rip+0x20283f]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4027a1:	48 89 c6             	mov    rsi,rax
  4027a4:	48 89 d7             	mov    rdi,rdx
  4027a7:	e8 04 f5 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  4027ac:	90                   	nop
  4027ad:	c9                   	leave  
  4027ae:	c3                   	ret    
  4027af:	90                   	nop

00000000004027b0 <Owl::sing()>:
  4027b0:	55                   	push   rbp
  4027b1:	48 89 e5             	mov    rbp,rsp
  4027b4:	48 83 ec 10          	sub    rsp,0x10
  4027b8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4027bc:	48 8d 35 f8 0e 00 00 	lea    rsi,[rip+0xef8]        # 4036bb <_IO_stdin_used+0x1b>
  4027c3:	48 8d 3d 56 29 20 00 	lea    rdi,[rip+0x202956]        # 605120 <std::cout@@GLIBCXX_3.4>
  4027ca:	e8 b1 f4 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  4027cf:	48 89 c2             	mov    rdx,rax
  4027d2:	48 8b 05 07 28 20 00 	mov    rax,QWORD PTR [rip+0x202807]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  4027d9:	48 89 c6             	mov    rsi,rax
  4027dc:	48 89 d7             	mov    rdi,rdx
  4027df:	e8 cc f4 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  4027e4:	90                   	nop
  4027e5:	c9                   	leave  
  4027e6:	c3                   	ret    
  4027e7:	90                   	nop

00000000004027e8 <Bird::Bird()>:
  4027e8:	55                   	push   rbp
  4027e9:	48 89 e5             	mov    rbp,rsp
  4027ec:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4027f0:	48 8d 15 89 25 20 00 	lea    rdx,[rip+0x202589]        # 604d80 <__cxa_pure_virtual@CXXABI_1.3>
  4027f7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4027fb:	48 89 10             	mov    QWORD PTR [rax],rdx
  4027fe:	90                   	nop
  4027ff:	5d                   	pop    rbp
  402800:	c3                   	ret    
  402801:	90                   	nop

0000000000402802 <Bird::~Bird()>:
  402802:	55                   	push   rbp
  402803:	48 89 e5             	mov    rbp,rsp
  402806:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40280a:	48 8d 15 6f 25 20 00 	lea    rdx,[rip+0x20256f]        # 604d80 <__cxa_pure_virtual@CXXABI_1.3>
  402811:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402815:	48 89 10             	mov    QWORD PTR [rax],rdx
  402818:	90                   	nop
  402819:	5d                   	pop    rbp
  40281a:	c3                   	ret    
  40281b:	90                   	nop

000000000040281c <Bird::~Bird()>:
  40281c:	55                   	push   rbp
  40281d:	48 89 e5             	mov    rbp,rsp
  402820:	48 83 ec 10          	sub    rsp,0x10
  402824:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402828:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40282c:	48 89 c7             	mov    rdi,rax
  40282f:	e8 ce ff ff ff       	call   402802 <Bird::~Bird()>
  402834:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402838:	be 08 00 00 00       	mov    esi,0x8
  40283d:	48 89 c7             	mov    rdi,rax
  402840:	e8 5b f4 ff ff       	call   401ca0 <operator delete(void*, unsigned long)@plt>
  402845:	c9                   	leave  
  402846:	c3                   	ret    
  402847:	90                   	nop

0000000000402848 <Parrot::Parrot()>:
  402848:	55                   	push   rbp
  402849:	48 89 e5             	mov    rbp,rsp
  40284c:	53                   	push   rbx
  40284d:	48 83 ec 18          	sub    rsp,0x18
  402851:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402855:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402859:	48 89 c7             	mov    rdi,rax
  40285c:	e8 87 ff ff ff       	call   4027e8 <Bird::Bird()>
  402861:	48 8d 15 a0 24 20 00 	lea    rdx,[rip+0x2024a0]        # 604d08 <vtable for Parrot+0x10>
  402868:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40286c:	48 89 10             	mov    QWORD PTR [rax],rdx
  40286f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402873:	48 83 c0 08          	add    rax,0x8
  402877:	48 89 c7             	mov    rdi,rax
  40287a:	e8 29 03 00 00       	call   402ba8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()>
  40287f:	48 8d 35 41 0e 00 00 	lea    rsi,[rip+0xe41]        # 4036c7 <_IO_stdin_used+0x27>
  402886:	48 8d 3d 93 28 20 00 	lea    rdi,[rip+0x202893]        # 605120 <std::cout@@GLIBCXX_3.4>
  40288d:	e8 ee f3 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  402892:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402896:	48 83 c0 08          	add    rax,0x8
  40289a:	48 89 c7             	mov    rdi,rax
  40289d:	e8 8c 03 00 00       	call   402c2e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::data()>
  4028a2:	48 89 c6             	mov    rsi,rax
  4028a5:	48 8d 3d b4 29 20 00 	lea    rdi,[rip+0x2029b4]        # 605260 <std::cin@@GLIBCXX_3.4>
  4028ac:	e8 2f f3 ff ff       	call   401be0 <std::basic_istream<char, std::char_traits<char> >& std::operator>><char, std::char_traits<char> >(std::basic_istream<char, std::char_traits<char> >&, char*)@plt>
  4028b1:	eb 2a                	jmp    4028dd <Parrot::Parrot()+0x95>
  4028b3:	48 89 c3             	mov    rbx,rax
  4028b6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4028ba:	48 83 c0 08          	add    rax,0x8
  4028be:	48 89 c7             	mov    rdi,rax
  4028c1:	e8 22 02 00 00       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  4028c6:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4028ca:	48 89 c7             	mov    rdi,rax
  4028cd:	e8 30 ff ff ff       	call   402802 <Bird::~Bird()>
  4028d2:	48 89 d8             	mov    rax,rbx
  4028d5:	48 89 c7             	mov    rdi,rax
  4028d8:	e8 43 f4 ff ff       	call   401d20 <_Unwind_Resume@plt>
  4028dd:	48 83 c4 18          	add    rsp,0x18
  4028e1:	5b                   	pop    rbx
  4028e2:	5d                   	pop    rbp
  4028e3:	c3                   	ret    

00000000004028e4 <Parrot::sing()>:
  4028e4:	55                   	push   rbp
  4028e5:	48 89 e5             	mov    rbp,rsp
  4028e8:	48 83 ec 10          	sub    rsp,0x10
  4028ec:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4028f0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4028f4:	48 83 c0 08          	add    rax,0x8
  4028f8:	48 89 c7             	mov    rdi,rax
  4028fb:	e8 b2 01 00 00       	call   402ab2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const>
  402900:	48 89 c6             	mov    rsi,rax
  402903:	48 8d 3d 16 28 20 00 	lea    rdi,[rip+0x202816]        # 605120 <std::cout@@GLIBCXX_3.4>
  40290a:	e8 71 f3 ff ff       	call   401c80 <std::basic_ostream<char, std::char_traits<char> >& std::operator<< <std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&, char const*)@plt>
  40290f:	48 89 c2             	mov    rdx,rax
  402912:	48 8b 05 c7 26 20 00 	mov    rax,QWORD PTR [rip+0x2026c7]        # 604fe0 <std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)@GLIBCXX_3.4>
  402919:	48 89 c6             	mov    rsi,rax
  40291c:	48 89 d7             	mov    rdi,rdx
  40291f:	e8 8c f3 ff ff       	call   401cb0 <std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))@plt>
  402924:	90                   	nop
  402925:	c9                   	leave  
  402926:	c3                   	ret    
  402927:	90                   	nop

0000000000402928 <Cock::Cock()>:
  402928:	55                   	push   rbp
  402929:	48 89 e5             	mov    rbp,rsp
  40292c:	48 83 ec 10          	sub    rsp,0x10
  402930:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402934:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402938:	48 89 c7             	mov    rdi,rax
  40293b:	e8 a8 fe ff ff       	call   4027e8 <Bird::Bird()>
  402940:	48 8d 15 11 24 20 00 	lea    rdx,[rip+0x202411]        # 604d58 <vtable for Cock+0x10>
  402947:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40294b:	48 89 10             	mov    QWORD PTR [rax],rdx
  40294e:	90                   	nop
  40294f:	c9                   	leave  
  402950:	c3                   	ret    
  402951:	90                   	nop

0000000000402952 <Owl::Owl()>:
  402952:	55                   	push   rbp
  402953:	48 89 e5             	mov    rbp,rsp
  402956:	48 83 ec 10          	sub    rsp,0x10
  40295a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40295e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402962:	48 89 c7             	mov    rdi,rax
  402965:	e8 7e fe ff ff       	call   4027e8 <Bird::Bird()>
  40296a:	48 8d 15 bf 23 20 00 	lea    rdx,[rip+0x2023bf]        # 604d30 <vtable for Owl+0x10>
  402971:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402975:	48 89 10             	mov    QWORD PTR [rax],rdx
  402978:	90                   	nop
  402979:	c9                   	leave  
  40297a:	c3                   	ret    

000000000040297b <__gnu_cxx::char_traits<char>::lt(char const&, char const&)>:
  40297b:	55                   	push   rbp
  40297c:	48 89 e5             	mov    rbp,rsp
  40297f:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402983:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402987:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40298b:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  40298e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402992:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402995:	38 c2                	cmp    dl,al
  402997:	0f 9c c0             	setl   al
  40299a:	5d                   	pop    rbp
  40299b:	c3                   	ret    

000000000040299c <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)>:
  40299c:	55                   	push   rbp
  40299d:	48 89 e5             	mov    rbp,rsp
  4029a0:	48 83 ec 30          	sub    rsp,0x30
  4029a4:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  4029a8:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  4029ac:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  4029b0:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  4029b7:	00 
  4029b8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4029bc:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  4029c0:	73 5f                	jae    402a21 <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x85>
  4029c2:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  4029c6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4029ca:	48 01 c2             	add    rdx,rax
  4029cd:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  4029d1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4029d5:	48 01 c8             	add    rax,rcx
  4029d8:	48 89 d6             	mov    rsi,rdx
  4029db:	48 89 c7             	mov    rdi,rax
  4029de:	e8 98 ff ff ff       	call   40297b <__gnu_cxx::char_traits<char>::lt(char const&, char const&)>
  4029e3:	84 c0                	test   al,al
  4029e5:	74 07                	je     4029ee <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x52>
  4029e7:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4029ec:	eb 38                	jmp    402a26 <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x8a>
  4029ee:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4029f2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4029f6:	48 01 c2             	add    rdx,rax
  4029f9:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  4029fd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402a01:	48 01 c8             	add    rax,rcx
  402a04:	48 89 d6             	mov    rsi,rdx
  402a07:	48 89 c7             	mov    rdi,rax
  402a0a:	e8 6c ff ff ff       	call   40297b <__gnu_cxx::char_traits<char>::lt(char const&, char const&)>
  402a0f:	84 c0                	test   al,al
  402a11:	74 07                	je     402a1a <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x7e>
  402a13:	b8 01 00 00 00       	mov    eax,0x1
  402a18:	eb 0c                	jmp    402a26 <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x8a>
  402a1a:	48 83 45 f8 01       	add    QWORD PTR [rbp-0x8],0x1
  402a1f:	eb 97                	jmp    4029b8 <__gnu_cxx::char_traits<char>::compare(char const*, char const*, unsigned long)+0x1c>
  402a21:	b8 00 00 00 00       	mov    eax,0x0
  402a26:	c9                   	leave  
  402a27:	c3                   	ret    

0000000000402a28 <__gnu_cxx::char_traits<char>::length(char const*)>:
  402a28:	55                   	push   rbp
  402a29:	48 89 e5             	mov    rbp,rsp
  402a2c:	48 83 ec 30          	sub    rsp,0x30
  402a30:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  402a34:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402a3b:	00 00 
  402a3d:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402a41:	31 c0                	xor    eax,eax
  402a43:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  402a4a:	00 
  402a4b:	c6 45 ef 00          	mov    BYTE PTR [rbp-0x11],0x0
  402a4f:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  402a53:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a57:	48 01 c2             	add    rdx,rax
  402a5a:	48 8d 45 ef          	lea    rax,[rbp-0x11]
  402a5e:	48 89 c6             	mov    rsi,rax
  402a61:	48 89 d7             	mov    rdi,rdx
  402a64:	e8 28 00 00 00       	call   402a91 <__gnu_cxx::char_traits<char>::eq(char const&, char const&)>
  402a69:	83 f0 01             	xor    eax,0x1
  402a6c:	84 c0                	test   al,al
  402a6e:	74 07                	je     402a77 <__gnu_cxx::char_traits<char>::length(char const*)+0x4f>
  402a70:	48 83 45 f0 01       	add    QWORD PTR [rbp-0x10],0x1
  402a75:	eb d4                	jmp    402a4b <__gnu_cxx::char_traits<char>::length(char const*)+0x23>
  402a77:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402a7b:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  402a7f:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  402a86:	00 00 
  402a88:	74 05                	je     402a8f <__gnu_cxx::char_traits<char>::length(char const*)+0x67>
  402a8a:	e8 41 f2 ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402a8f:	c9                   	leave  
  402a90:	c3                   	ret    

0000000000402a91 <__gnu_cxx::char_traits<char>::eq(char const&, char const&)>:
  402a91:	55                   	push   rbp
  402a92:	48 89 e5             	mov    rbp,rsp
  402a95:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402a99:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402a9d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402aa1:	0f b6 10             	movzx  edx,BYTE PTR [rax]
  402aa4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402aa8:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402aab:	38 c2                	cmp    dl,al
  402aad:	0f 94 c0             	sete   al
  402ab0:	5d                   	pop    rbp
  402ab1:	c3                   	ret    

0000000000402ab2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::c_str() const>:
  402ab2:	55                   	push   rbp
  402ab3:	48 89 e5             	mov    rbp,rsp
  402ab6:	48 83 ec 10          	sub    rsp,0x10
  402aba:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402abe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402ac2:	48 89 c7             	mov    rdi,rax
  402ac5:	e8 a8 01 00 00       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402aca:	c9                   	leave  
  402acb:	c3                   	ret    

0000000000402acc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>:
  402acc:	55                   	push   rbp
  402acd:	48 89 e5             	mov    rbp,rsp
  402ad0:	48 83 ec 10          	sub    rsp,0x10
  402ad4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402ad8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402adc:	48 89 c7             	mov    rdi,rax
  402adf:	e8 ec f0 ff ff       	call   401bd0 <std::allocator<char>::~allocator()@plt>
  402ae4:	90                   	nop
  402ae5:	c9                   	leave  
  402ae6:	c3                   	ret    
  402ae7:	90                   	nop

0000000000402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>:
  402ae8:	55                   	push   rbp
  402ae9:	48 89 e5             	mov    rbp,rsp
  402aec:	48 83 ec 10          	sub    rsp,0x10
  402af0:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402af4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402af8:	48 89 c7             	mov    rdi,rax
  402afb:	e8 84 01 00 00       	call   402c84 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>
  402b00:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402b04:	48 89 c7             	mov    rdi,rax
  402b07:	e8 c0 ff ff ff       	call   402acc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  402b0c:	90                   	nop
  402b0d:	c9                   	leave  
  402b0e:	c3                   	ret    
  402b0f:	90                   	nop

0000000000402b10 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)>:
  402b10:	55                   	push   rbp
  402b11:	48 89 e5             	mov    rbp,rsp
  402b14:	53                   	push   rbx
  402b15:	48 83 ec 28          	sub    rsp,0x28
  402b19:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402b1d:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  402b21:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  402b25:	48 8b 5d e8          	mov    rbx,QWORD PTR [rbp-0x18]
  402b29:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402b2d:	48 89 c7             	mov    rdi,rax
  402b30:	e8 89 01 00 00       	call   402cbe <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>
  402b35:	48 89 c1             	mov    rcx,rax
  402b38:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402b3c:	48 89 c2             	mov    rdx,rax
  402b3f:	48 89 ce             	mov    rsi,rcx
  402b42:	48 89 df             	mov    rdi,rbx
  402b45:	e8 92 01 00 00       	call   402cdc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char> const&)>
  402b4a:	48 83 7d e0 00       	cmp    QWORD PTR [rbp-0x20],0x0
  402b4f:	74 18                	je     402b69 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x59>
  402b51:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402b55:	48 89 c7             	mov    rdi,rax
  402b58:	e8 eb fa ff ff       	call   402648 <std::char_traits<char>::length(char const*)>
  402b5d:	48 89 c2             	mov    rdx,rax
  402b60:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402b64:	48 01 d0             	add    rax,rdx
  402b67:	eb 08                	jmp    402b71 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x61>
  402b69:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402b6d:	48 83 e8 01          	sub    rax,0x1
  402b71:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
  402b75:	48 8b 4d e8          	mov    rcx,QWORD PTR [rbp-0x18]
  402b79:	48 89 c2             	mov    rdx,rax
  402b7c:	48 89 cf             	mov    rdi,rcx
  402b7f:	e8 8e 01 00 00       	call   402d12 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)>
  402b84:	eb 1a                	jmp    402ba0 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string(char const*, std::allocator<char> const&)+0x90>
  402b86:	48 89 c3             	mov    rbx,rax
  402b89:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402b8d:	48 89 c7             	mov    rdi,rax
  402b90:	e8 37 ff ff ff       	call   402acc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::~_Alloc_hider()>
  402b95:	48 89 d8             	mov    rax,rbx
  402b98:	48 89 c7             	mov    rdi,rax
  402b9b:	e8 80 f1 ff ff       	call   401d20 <_Unwind_Resume@plt>
  402ba0:	48 83 c4 28          	add    rsp,0x28
  402ba4:	5b                   	pop    rbx
  402ba5:	5d                   	pop    rbp
  402ba6:	c3                   	ret    
  402ba7:	90                   	nop

0000000000402ba8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()>:
  402ba8:	55                   	push   rbp
  402ba9:	48 89 e5             	mov    rbp,rsp
  402bac:	53                   	push   rbx
  402bad:	48 83 ec 28          	sub    rsp,0x28
  402bb1:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  402bb5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402bbc:	00 00 
  402bbe:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  402bc2:	31 c0                	xor    eax,eax
  402bc4:	48 8b 5d d8          	mov    rbx,QWORD PTR [rbp-0x28]
  402bc8:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  402bcc:	48 89 c7             	mov    rdi,rax
  402bcf:	e8 5c f1 ff ff       	call   401d30 <std::allocator<char>::allocator()@plt>
  402bd4:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402bd8:	48 89 c7             	mov    rdi,rax
  402bdb:	e8 de 00 00 00       	call   402cbe <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>
  402be0:	48 89 c1             	mov    rcx,rax
  402be3:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  402be7:	48 89 c2             	mov    rdx,rax
  402bea:	48 89 ce             	mov    rsi,rcx
  402bed:	48 89 df             	mov    rdi,rbx
  402bf0:	e8 75 01 00 00       	call   402d6a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char>&&)>
  402bf5:	48 8d 45 e7          	lea    rax,[rbp-0x19]
  402bf9:	48 89 c7             	mov    rdi,rax
  402bfc:	e8 bf f0 ff ff       	call   401cc0 <std::allocator<char>::~allocator()@plt>
  402c01:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402c05:	be 00 00 00 00       	mov    esi,0x0
  402c0a:	48 89 c7             	mov    rdi,rax
  402c0d:	e8 98 01 00 00       	call   402daa <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)>
  402c12:	90                   	nop
  402c13:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402c17:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402c1e:	00 00 
  402c20:	74 05                	je     402c27 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::basic_string()+0x7f>
  402c22:	e8 a9 f0 ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402c27:	48 83 c4 28          	add    rsp,0x28
  402c2b:	5b                   	pop    rbx
  402c2c:	5d                   	pop    rbp
  402c2d:	c3                   	ret    

0000000000402c2e <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::data()>:
  402c2e:	55                   	push   rbp
  402c2f:	48 89 e5             	mov    rbp,rsp
  402c32:	48 83 ec 10          	sub    rsp,0x10
  402c36:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402c3a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402c3e:	48 89 c7             	mov    rdi,rax
  402c41:	e8 2c 00 00 00       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402c46:	c9                   	leave  
  402c47:	c3                   	ret    

0000000000402c48 <bool std::operator==<char, std::char_traits<char>, std::allocator<char> >(std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, char const*)>:
  402c48:	55                   	push   rbp
  402c49:	48 89 e5             	mov    rbp,rsp
  402c4c:	48 83 ec 10          	sub    rsp,0x10
  402c50:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402c54:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402c58:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402c5c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402c60:	48 89 d6             	mov    rsi,rdx
  402c63:	48 89 c7             	mov    rdi,rax
  402c66:	e8 dd 01 00 00       	call   402e48 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const>
  402c6b:	85 c0                	test   eax,eax
  402c6d:	0f 94 c0             	sete   al
  402c70:	c9                   	leave  
  402c71:	c3                   	ret    

0000000000402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>:
  402c72:	55                   	push   rbp
  402c73:	48 89 e5             	mov    rbp,rsp
  402c76:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402c7a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402c7e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402c81:	5d                   	pop    rbp
  402c82:	c3                   	ret    
  402c83:	90                   	nop

0000000000402c84 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()>:
  402c84:	55                   	push   rbp
  402c85:	48 89 e5             	mov    rbp,rsp
  402c88:	48 83 ec 10          	sub    rsp,0x10
  402c8c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402c90:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402c94:	48 89 c7             	mov    rdi,rax
  402c97:	e8 60 02 00 00       	call   402efc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>
  402c9c:	83 f0 01             	xor    eax,0x1
  402c9f:	84 c0                	test   al,al
  402ca1:	74 17                	je     402cba <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_dispose()+0x36>
  402ca3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402ca7:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  402cab:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402caf:	48 89 d6             	mov    rsi,rdx
  402cb2:	48 89 c7             	mov    rdi,rax
  402cb5:	e8 78 02 00 00       	call   402f32 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>
  402cba:	90                   	nop
  402cbb:	c9                   	leave  
  402cbc:	c3                   	ret    
  402cbd:	90                   	nop

0000000000402cbe <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data()>:
  402cbe:	55                   	push   rbp
  402cbf:	48 89 e5             	mov    rbp,rsp
  402cc2:	48 83 ec 10          	sub    rsp,0x10
  402cc6:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402cca:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402cce:	48 83 c0 10          	add    rax,0x10
  402cd2:	48 89 c7             	mov    rdi,rax
  402cd5:	e8 a6 02 00 00       	call   402f80 <std::pointer_traits<char*>::pointer_to(char&)>
  402cda:	c9                   	leave  
  402cdb:	c3                   	ret    

0000000000402cdc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char> const&)>:
  402cdc:	55                   	push   rbp
  402cdd:	48 89 e5             	mov    rbp,rsp
  402ce0:	48 83 ec 20          	sub    rsp,0x20
  402ce4:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402ce8:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402cec:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  402cf0:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  402cf4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402cf8:	48 89 d6             	mov    rsi,rdx
  402cfb:	48 89 c7             	mov    rdi,rax
  402cfe:	e8 ed ef ff ff       	call   401cf0 <std::allocator<char>::allocator(std::allocator<char> const&)@plt>
  402d03:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402d07:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402d0b:	48 89 10             	mov    QWORD PTR [rax],rdx
  402d0e:	90                   	nop
  402d0f:	c9                   	leave  
  402d10:	c3                   	ret    
  402d11:	90                   	nop

0000000000402d12 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*)>:
  402d12:	55                   	push   rbp
  402d13:	48 89 e5             	mov    rbp,rsp
  402d16:	48 83 ec 20          	sub    rsp,0x20
  402d1a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402d1e:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402d22:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  402d26:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  402d2a:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  402d2e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402d32:	48 83 ec 08          	sub    rsp,0x8
  402d36:	41 50                	push   r8
  402d38:	48 89 ce             	mov    rsi,rcx
  402d3b:	48 89 c7             	mov    rdi,rax
  402d3e:	e8 57 02 00 00       	call   402f9a <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)>
  402d43:	48 83 c4 10          	add    rsp,0x10
  402d47:	90                   	nop
  402d48:	c9                   	leave  
  402d49:	c3                   	ret    

0000000000402d4a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>:
  402d4a:	55                   	push   rbp
  402d4b:	48 89 e5             	mov    rbp,rsp
  402d4e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402d52:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402d56:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  402d5a:	5d                   	pop    rbp
  402d5b:	c3                   	ret    

0000000000402d5c <std::remove_reference<std::allocator<char>&>::type&& std::move<std::allocator<char>&>(std::allocator<char>&)>:
  402d5c:	55                   	push   rbp
  402d5d:	48 89 e5             	mov    rbp,rsp
  402d60:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402d64:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402d68:	5d                   	pop    rbp
  402d69:	c3                   	ret    

0000000000402d6a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_Alloc_hider::_Alloc_hider(char*, std::allocator<char>&&)>:
  402d6a:	55                   	push   rbp
  402d6b:	48 89 e5             	mov    rbp,rsp
  402d6e:	48 83 ec 20          	sub    rsp,0x20
  402d72:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402d76:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402d7a:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  402d7e:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402d82:	48 89 c7             	mov    rdi,rax
  402d85:	e8 d2 ff ff ff       	call   402d5c <std::remove_reference<std::allocator<char>&>::type&& std::move<std::allocator<char>&>(std::allocator<char>&)>
  402d8a:	48 89 c2             	mov    rdx,rax
  402d8d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402d91:	48 89 d6             	mov    rsi,rdx
  402d94:	48 89 c7             	mov    rdi,rax
  402d97:	e8 54 ef ff ff       	call   401cf0 <std::allocator<char>::allocator(std::allocator<char> const&)@plt>
  402d9c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402da0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402da4:	48 89 10             	mov    QWORD PTR [rax],rdx
  402da7:	90                   	nop
  402da8:	c9                   	leave  
  402da9:	c3                   	ret    

0000000000402daa <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)>:
  402daa:	55                   	push   rbp
  402dab:	48 89 e5             	mov    rbp,rsp
  402dae:	48 83 ec 20          	sub    rsp,0x20
  402db2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402db6:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  402dba:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402dc1:	00 00 
  402dc3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402dc7:	31 c0                	xor    eax,eax
  402dc9:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  402dcd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402dd1:	48 89 d6             	mov    rsi,rdx
  402dd4:	48 89 c7             	mov    rdi,rax
  402dd7:	e8 6c 02 00 00       	call   403048 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_length(unsigned long)>
  402ddc:	c6 45 f7 00          	mov    BYTE PTR [rbp-0x9],0x0
  402de0:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402de4:	48 89 c7             	mov    rdi,rax
  402de7:	e8 86 fe ff ff       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402dec:	48 89 c2             	mov    rdx,rax
  402def:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402df3:	48 01 c2             	add    rdx,rax
  402df6:	48 8d 45 f7          	lea    rax,[rbp-0x9]
  402dfa:	48 89 c6             	mov    rsi,rax
  402dfd:	48 89 d7             	mov    rdi,rdx
  402e00:	e8 ca f7 ff ff       	call   4025cf <std::char_traits<char>::assign(char&, char const&)>
  402e05:	90                   	nop
  402e06:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402e0a:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402e11:	00 00 
  402e13:	74 05                	je     402e1a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)+0x70>
  402e15:	e8 b6 ee ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402e1a:	c9                   	leave  
  402e1b:	c3                   	ret    

0000000000402e1c <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)>:
  402e1c:	55                   	push   rbp
  402e1d:	48 89 e5             	mov    rbp,rsp
  402e20:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402e24:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  402e28:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e2c:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  402e2f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402e33:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402e36:	48 39 c2             	cmp    rdx,rax
  402e39:	73 06                	jae    402e41 <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)+0x25>
  402e3b:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402e3f:	eb 04                	jmp    402e45 <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)+0x29>
  402e41:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402e45:	5d                   	pop    rbp
  402e46:	c3                   	ret    
  402e47:	90                   	nop

0000000000402e48 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const>:
  402e48:	55                   	push   rbp
  402e49:	48 89 e5             	mov    rbp,rsp
  402e4c:	48 83 ec 40          	sub    rsp,0x40
  402e50:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  402e54:	48 89 75 c0          	mov    QWORD PTR [rbp-0x40],rsi
  402e58:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402e5f:	00 00 
  402e61:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402e65:	31 c0                	xor    eax,eax
  402e67:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402e6b:	48 89 c7             	mov    rdi,rax
  402e6e:	e8 d7 fe ff ff       	call   402d4a <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::size() const>
  402e73:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  402e77:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  402e7b:	48 89 c7             	mov    rdi,rax
  402e7e:	e8 c5 f7 ff ff       	call   402648 <std::char_traits<char>::length(char const*)>
  402e83:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  402e87:	48 8d 55 e8          	lea    rdx,[rbp-0x18]
  402e8b:	48 8d 45 e0          	lea    rax,[rbp-0x20]
  402e8f:	48 89 d6             	mov    rsi,rdx
  402e92:	48 89 c7             	mov    rdi,rax
  402e95:	e8 82 ff ff ff       	call   402e1c <unsigned long const& std::min<unsigned long>(unsigned long const&, unsigned long const&)>
  402e9a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402e9d:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  402ea1:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402ea5:	48 89 c7             	mov    rdi,rax
  402ea8:	e8 c5 fd ff ff       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402ead:	48 89 c1             	mov    rcx,rax
  402eb0:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  402eb4:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  402eb8:	48 89 c6             	mov    rsi,rax
  402ebb:	48 89 cf             	mov    rdi,rcx
  402ebe:	e8 28 f7 ff ff       	call   4025eb <std::char_traits<char>::compare(char const*, char const*, unsigned long)>
  402ec3:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  402ec6:	83 7d dc 00          	cmp    DWORD PTR [rbp-0x24],0x0
  402eca:	75 16                	jne    402ee2 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const+0x9a>
  402ecc:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  402ed0:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402ed4:	48 89 d6             	mov    rsi,rdx
  402ed7:	48 89 c7             	mov    rdi,rax
  402eda:	e8 84 01 00 00       	call   403063 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)>
  402edf:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
  402ee2:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  402ee5:	48 8b 4d f8          	mov    rcx,QWORD PTR [rbp-0x8]
  402ee9:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
  402ef0:	00 00 
  402ef2:	74 05                	je     402ef9 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::compare(char const*) const+0xb1>
  402ef4:	e8 d7 ed ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402ef9:	c9                   	leave  
  402efa:	c3                   	ret    
  402efb:	90                   	nop

0000000000402efc <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_is_local() const>:
  402efc:	55                   	push   rbp
  402efd:	48 89 e5             	mov    rbp,rsp
  402f00:	53                   	push   rbx
  402f01:	48 83 ec 18          	sub    rsp,0x18
  402f05:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402f09:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402f0d:	48 89 c7             	mov    rdi,rax
  402f10:	e8 5d fd ff ff       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402f15:	48 89 c3             	mov    rbx,rax
  402f18:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402f1c:	48 89 c7             	mov    rdi,rax
  402f1f:	e8 80 01 00 00       	call   4030a4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>
  402f24:	48 39 c3             	cmp    rbx,rax
  402f27:	0f 94 c0             	sete   al
  402f2a:	48 83 c4 18          	add    rsp,0x18
  402f2e:	5b                   	pop    rbx
  402f2f:	5d                   	pop    rbp
  402f30:	c3                   	ret    
  402f31:	90                   	nop

0000000000402f32 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_destroy(unsigned long)>:
  402f32:	55                   	push   rbp
  402f33:	48 89 e5             	mov    rbp,rsp
  402f36:	41 54                	push   r12
  402f38:	53                   	push   rbx
  402f39:	48 83 ec 10          	sub    rsp,0x10
  402f3d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402f41:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  402f45:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  402f49:	48 8d 58 01          	lea    rbx,[rax+0x1]
  402f4d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402f51:	48 89 c7             	mov    rdi,rax
  402f54:	e8 19 fd ff ff       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  402f59:	49 89 c4             	mov    r12,rax
  402f5c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402f60:	48 89 c7             	mov    rdi,rax
  402f63:	e8 9c 00 00 00       	call   403004 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>
  402f68:	48 89 da             	mov    rdx,rbx
  402f6b:	4c 89 e6             	mov    rsi,r12
  402f6e:	48 89 c7             	mov    rdi,rax
  402f71:	e8 4c 01 00 00       	call   4030c2 <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>
  402f76:	90                   	nop
  402f77:	48 83 c4 10          	add    rsp,0x10
  402f7b:	5b                   	pop    rbx
  402f7c:	41 5c                	pop    r12
  402f7e:	5d                   	pop    rbp
  402f7f:	c3                   	ret    

0000000000402f80 <std::pointer_traits<char*>::pointer_to(char&)>:
  402f80:	55                   	push   rbp
  402f81:	48 89 e5             	mov    rbp,rsp
  402f84:	48 83 ec 10          	sub    rsp,0x10
  402f88:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402f8c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402f90:	48 89 c7             	mov    rdi,rax
  402f93:	e8 58 01 00 00       	call   4030f0 <char* std::addressof<char>(char&)>
  402f98:	c9                   	leave  
  402f99:	c3                   	ret    

0000000000402f9a <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)>:
  402f9a:	55                   	push   rbp
  402f9b:	48 89 e5             	mov    rbp,rsp
  402f9e:	48 83 ec 30          	sub    rsp,0x30
  402fa2:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  402fa6:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  402faa:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  402fae:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  402fb5:	00 00 
  402fb7:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  402fbb:	31 c0                	xor    eax,eax
  402fbd:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  402fc1:	48 8b 4d e0          	mov    rcx,QWORD PTR [rbp-0x20]
  402fc5:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402fc9:	48 83 ec 08          	sub    rsp,0x8
  402fcd:	41 50                	push   r8
  402fcf:	48 89 ce             	mov    rsi,rcx
  402fd2:	48 89 c7             	mov    rdi,rax
  402fd5:	e8 7a 01 00 00       	call   403154 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)>
  402fda:	48 83 c4 10          	add    rsp,0x10
  402fde:	90                   	nop
  402fdf:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402fe3:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  402fea:	00 00 
  402fec:	74 05                	je     402ff3 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct_aux<char const*>(char const*, char const*, std::__false_type)+0x59>
  402fee:	e8 dd ec ff ff       	call   401cd0 <__stack_chk_fail@plt>
  402ff3:	c9                   	leave  
  402ff4:	c3                   	ret    
  402ff5:	90                   	nop

0000000000402ff6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator() const>:
  402ff6:	55                   	push   rbp
  402ff7:	48 89 e5             	mov    rbp,rsp
  402ffa:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402ffe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403002:	5d                   	pop    rbp
  403003:	c3                   	ret    

0000000000403004 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>:
  403004:	55                   	push   rbp
  403005:	48 89 e5             	mov    rbp,rsp
  403008:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40300c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403010:	5d                   	pop    rbp
  403011:	c3                   	ret    

0000000000403012 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data(char*)>:
  403012:	55                   	push   rbp
  403013:	48 89 e5             	mov    rbp,rsp
  403016:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40301a:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  40301e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403022:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  403026:	48 89 10             	mov    QWORD PTR [rax],rdx
  403029:	90                   	nop
  40302a:	5d                   	pop    rbp
  40302b:	c3                   	ret    

000000000040302c <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_capacity(unsigned long)>:
  40302c:	55                   	push   rbp
  40302d:	48 89 e5             	mov    rbp,rsp
  403030:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403034:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  403038:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40303c:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  403040:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  403044:	90                   	nop
  403045:	5d                   	pop    rbp
  403046:	c3                   	ret    
  403047:	90                   	nop

0000000000403048 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_length(unsigned long)>:
  403048:	55                   	push   rbp
  403049:	48 89 e5             	mov    rbp,rsp
  40304c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403050:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  403054:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403058:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  40305c:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  403060:	90                   	nop
  403061:	5d                   	pop    rbp
  403062:	c3                   	ret    

0000000000403063 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)>:
  403063:	55                   	push   rbp
  403064:	48 89 e5             	mov    rbp,rsp
  403067:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  40306b:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  40306f:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  403073:	48 2b 45 e0          	sub    rax,QWORD PTR [rbp-0x20]
  403077:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40307b:	48 81 7d f8 ff ff ff 	cmp    QWORD PTR [rbp-0x8],0x7fffffff
  403082:	7f 
  403083:	7e 07                	jle    40308c <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x29>
  403085:	b8 ff ff ff 7f       	mov    eax,0x7fffffff
  40308a:	eb 15                	jmp    4030a1 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3e>
  40308c:	48 81 7d f8 00 00 00 	cmp    QWORD PTR [rbp-0x8],0xffffffff80000000
  403093:	80 
  403094:	7d 07                	jge    40309d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3a>
  403096:	b8 00 00 00 80       	mov    eax,0x80000000
  40309b:	eb 04                	jmp    4030a1 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_compare(unsigned long, unsigned long)+0x3e>
  40309d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4030a1:	5d                   	pop    rbp
  4030a2:	c3                   	ret    
  4030a3:	90                   	nop

00000000004030a4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_local_data() const>:
  4030a4:	55                   	push   rbp
  4030a5:	48 89 e5             	mov    rbp,rsp
  4030a8:	48 83 ec 10          	sub    rsp,0x10
  4030ac:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4030b0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4030b4:	48 83 c0 10          	add    rax,0x10
  4030b8:	48 89 c7             	mov    rdi,rax
  4030bb:	e8 0b 02 00 00       	call   4032cb <std::pointer_traits<char const*>::pointer_to(char const&)>
  4030c0:	c9                   	leave  
  4030c1:	c3                   	ret    

00000000004030c2 <std::allocator_traits<std::allocator<char> >::deallocate(std::allocator<char>&, char*, unsigned long)>:
  4030c2:	55                   	push   rbp
  4030c3:	48 89 e5             	mov    rbp,rsp
  4030c6:	48 83 ec 20          	sub    rsp,0x20
  4030ca:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4030ce:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4030d2:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4030d6:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4030da:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  4030de:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4030e2:	48 89 ce             	mov    rsi,rcx
  4030e5:	48 89 c7             	mov    rdi,rax
  4030e8:	e8 f9 01 00 00       	call   4032e6 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>
  4030ed:	90                   	nop
  4030ee:	c9                   	leave  
  4030ef:	c3                   	ret    

00000000004030f0 <char* std::addressof<char>(char&)>:
  4030f0:	55                   	push   rbp
  4030f1:	48 89 e5             	mov    rbp,rsp
  4030f4:	48 83 ec 10          	sub    rsp,0x10
  4030f8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4030fc:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403100:	48 89 c7             	mov    rdi,rax
  403103:	e8 00 02 00 00       	call   403308 <char* std::__addressof<char>(char&)>
  403108:	c9                   	leave  
  403109:	c3                   	ret    

000000000040310a <std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)>:
  40310a:	55                   	push   rbp
  40310b:	48 89 e5             	mov    rbp,rsp
  40310e:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403112:	5d                   	pop    rbp
  403113:	c3                   	ret    

0000000000403114 <std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)>:
  403114:	55                   	push   rbp
  403115:	48 89 e5             	mov    rbp,rsp
  403118:	53                   	push   rbx
  403119:	48 83 ec 18          	sub    rsp,0x18
  40311d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  403121:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  403125:	48 8d 45 e8          	lea    rax,[rbp-0x18]
  403129:	48 89 c7             	mov    rdi,rax
  40312c:	e8 d9 ff ff ff       	call   40310a <std::iterator_traits<char const*>::iterator_category std::__iterator_category<char const*>(char const* const&)>
  403131:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  403135:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  403139:	48 83 ec 08          	sub    rsp,0x8
  40313d:	53                   	push   rbx
  40313e:	48 89 d6             	mov    rsi,rdx
  403141:	48 89 c7             	mov    rdi,rax
  403144:	e8 df 01 00 00       	call   403328 <std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)>
  403149:	48 83 c4 10          	add    rsp,0x10
  40314d:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  403151:	c9                   	leave  
  403152:	c3                   	ret    
  403153:	90                   	nop

0000000000403154 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)>:
  403154:	55                   	push   rbp
  403155:	48 89 e5             	mov    rbp,rsp
  403158:	48 83 ec 30          	sub    rsp,0x30
  40315c:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  403160:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  403164:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  403168:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  40316f:	00 00 
  403171:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  403175:	31 c0                	xor    eax,eax
  403177:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40317b:	48 89 c7             	mov    rdi,rax
  40317e:	e8 93 01 00 00       	call   403316 <bool __gnu_cxx::__is_null_pointer<char const>(char const*)>
  403183:	84 c0                	test   al,al
  403185:	74 11                	je     403198 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x44>
  403187:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40318b:	48 3b 45 d8          	cmp    rax,QWORD PTR [rbp-0x28]
  40318f:	74 07                	je     403198 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x44>
  403191:	b8 01 00 00 00       	mov    eax,0x1
  403196:	eb 05                	jmp    40319d <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x49>
  403198:	b8 00 00 00 00       	mov    eax,0x0
  40319d:	84 c0                	test   al,al
  40319f:	74 0c                	je     4031ad <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x59>
  4031a1:	48 8d 3d c0 05 00 00 	lea    rdi,[rip+0x5c0]        # 403768 <_IO_stdin_used+0xc8>
  4031a8:	e8 83 ea ff ff       	call   401c30 <std::__throw_logic_error(char const*)@plt>
  4031ad:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  4031b1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4031b5:	48 89 d6             	mov    rsi,rdx
  4031b8:	48 89 c7             	mov    rdi,rax
  4031bb:	e8 54 ff ff ff       	call   403114 <std::iterator_traits<char const*>::difference_type std::distance<char const*>(char const*, char const*)>
  4031c0:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4031c4:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4031c8:	48 83 f8 0f          	cmp    rax,0xf
  4031cc:	76 3d                	jbe    40320b <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0xb7>
  4031ce:	48 8d 4d f0          	lea    rcx,[rbp-0x10]
  4031d2:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4031d6:	ba 00 00 00 00       	mov    edx,0x0
  4031db:	48 89 ce             	mov    rsi,rcx
  4031de:	48 89 c7             	mov    rdi,rax
  4031e1:	e8 5e 01 00 00       	call   403344 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)>
  4031e6:	48 89 c2             	mov    rdx,rax
  4031e9:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4031ed:	48 89 d6             	mov    rsi,rdx
  4031f0:	48 89 c7             	mov    rdi,rax
  4031f3:	e8 1a fe ff ff       	call   403012 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data(char*)>
  4031f8:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4031fc:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  403200:	48 89 d6             	mov    rsi,rdx
  403203:	48 89 c7             	mov    rdi,rax
  403206:	e8 21 fe ff ff       	call   40302c <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_capacity(unsigned long)>
  40320b:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  40320f:	48 89 c7             	mov    rdi,rax
  403212:	e8 5b fa ff ff       	call   402c72 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_data() const>
  403217:	48 89 c1             	mov    rcx,rax
  40321a:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  40321e:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  403222:	48 89 c6             	mov    rsi,rax
  403225:	48 89 cf             	mov    rdi,rcx
  403228:	e8 e0 01 00 00       	call   40340d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy_chars(char*, char const*, char const*)>
  40322d:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  403231:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  403235:	48 89 d6             	mov    rsi,rdx
  403238:	48 89 c7             	mov    rdi,rax
  40323b:	e8 6a fb ff ff       	call   402daa <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_set_length(unsigned long)>
  403240:	90                   	nop
  403241:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403245:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
  40324c:	00 00 
  40324e:	74 05                	je     403255 <void std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_construct<char const*>(char const*, char const*, std::forward_iterator_tag)+0x101>
  403250:	e8 7b ea ff ff       	call   401cd0 <__stack_chk_fail@plt>
  403255:	c9                   	leave  
  403256:	c3                   	ret    
  403257:	90                   	nop

0000000000403258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>:
  403258:	55                   	push   rbp
  403259:	48 89 e5             	mov    rbp,rsp
  40325c:	48 83 ec 10          	sub    rsp,0x10
  403260:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403264:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403268:	48 89 c7             	mov    rdi,rax
  40326b:	e8 86 fd ff ff       	call   402ff6 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator() const>
  403270:	48 89 c7             	mov    rdi,rax
  403273:	e8 d0 01 00 00       	call   403448 <std::allocator_traits<std::allocator<char> >::max_size(std::allocator<char> const&)>
  403278:	48 83 e8 01          	sub    rax,0x1
  40327c:	48 d1 e8             	shr    rax,1
  40327f:	c9                   	leave  
  403280:	c3                   	ret    

0000000000403281 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)>:
  403281:	55                   	push   rbp
  403282:	48 89 e5             	mov    rbp,rsp
  403285:	48 83 ec 20          	sub    rsp,0x20
  403289:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40328d:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  403291:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  403295:	48 83 7d e8 01       	cmp    QWORD PTR [rbp-0x18],0x1
  40329a:	75 15                	jne    4032b1 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)+0x30>
  40329c:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  4032a0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4032a4:	48 89 d6             	mov    rsi,rdx
  4032a7:	48 89 c7             	mov    rdi,rax
  4032aa:	e8 20 f3 ff ff       	call   4025cf <std::char_traits<char>::assign(char&, char const&)>
  4032af:	eb 17                	jmp    4032c8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)+0x47>
  4032b1:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4032b5:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  4032b9:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4032bd:	48 89 ce             	mov    rsi,rcx
  4032c0:	48 89 c7             	mov    rdi,rax
  4032c3:	e8 cf f3 ff ff       	call   402697 <std::char_traits<char>::copy(char*, char const*, unsigned long)>
  4032c8:	90                   	nop
  4032c9:	c9                   	leave  
  4032ca:	c3                   	ret    

00000000004032cb <std::pointer_traits<char const*>::pointer_to(char const&)>:
  4032cb:	55                   	push   rbp
  4032cc:	48 89 e5             	mov    rbp,rsp
  4032cf:	48 83 ec 10          	sub    rsp,0x10
  4032d3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4032d7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4032db:	48 89 c7             	mov    rdi,rax
  4032de:	e8 7f 01 00 00       	call   403462 <char const* std::addressof<char const>(char const&)>
  4032e3:	c9                   	leave  
  4032e4:	c3                   	ret    
  4032e5:	90                   	nop

00000000004032e6 <__gnu_cxx::new_allocator<char>::deallocate(char*, unsigned long)>:
  4032e6:	55                   	push   rbp
  4032e7:	48 89 e5             	mov    rbp,rsp
  4032ea:	48 83 ec 20          	sub    rsp,0x20
  4032ee:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4032f2:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4032f6:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4032fa:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4032fe:	48 89 c7             	mov    rdi,rax
  403301:	e8 6a e9 ff ff       	call   401c70 <operator delete(void*)@plt>
  403306:	c9                   	leave  
  403307:	c3                   	ret    

0000000000403308 <char* std::__addressof<char>(char&)>:
  403308:	55                   	push   rbp
  403309:	48 89 e5             	mov    rbp,rsp
  40330c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403310:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403314:	5d                   	pop    rbp
  403315:	c3                   	ret    

0000000000403316 <bool __gnu_cxx::__is_null_pointer<char const>(char const*)>:
  403316:	55                   	push   rbp
  403317:	48 89 e5             	mov    rbp,rsp
  40331a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40331e:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  403323:	0f 94 c0             	sete   al
  403326:	5d                   	pop    rbp
  403327:	c3                   	ret    

0000000000403328 <std::iterator_traits<char const*>::difference_type std::__distance<char const*>(char const*, char const*, std::random_access_iterator_tag)>:
  403328:	55                   	push   rbp
  403329:	48 89 e5             	mov    rbp,rsp
  40332c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403330:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  403334:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  403338:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40333c:	48 29 c2             	sub    rdx,rax
  40333f:	48 89 d0             	mov    rax,rdx
  403342:	5d                   	pop    rbp
  403343:	c3                   	ret    

0000000000403344 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)>:
  403344:	55                   	push   rbp
  403345:	48 89 e5             	mov    rbp,rsp
  403348:	53                   	push   rbx
  403349:	48 83 ec 28          	sub    rsp,0x28
  40334d:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  403351:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  403355:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  403359:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40335d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  403360:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  403364:	48 89 c7             	mov    rdi,rax
  403367:	e8 ec fe ff ff       	call   403258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  40336c:	48 39 c3             	cmp    rbx,rax
  40336f:	0f 97 c0             	seta   al
  403372:	84 c0                	test   al,al
  403374:	74 0c                	je     403382 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0x3e>
  403376:	48 8d 3d 15 04 00 00 	lea    rdi,[rip+0x415]        # 403792 <_IO_stdin_used+0xf2>
  40337d:	e8 8e e8 ff ff       	call   401c10 <std::__throw_length_error(char const*)@plt>
  403382:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  403386:	48 8b 00             	mov    rax,QWORD PTR [rax]
  403389:	48 39 45 d8          	cmp    QWORD PTR [rbp-0x28],rax
  40338d:	73 55                	jae    4033e4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0xa0>
  40338f:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  403393:	48 8b 00             	mov    rax,QWORD PTR [rax]
  403396:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  40339a:	48 01 d2             	add    rdx,rdx
  40339d:	48 39 d0             	cmp    rax,rdx
  4033a0:	73 42                	jae    4033e4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0xa0>
  4033a2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4033a6:	48 8d 14 00          	lea    rdx,[rax+rax*1]
  4033aa:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4033ae:	48 89 10             	mov    QWORD PTR [rax],rdx
  4033b1:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4033b5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  4033b8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4033bc:	48 89 c7             	mov    rdi,rax
  4033bf:	e8 94 fe ff ff       	call   403258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  4033c4:	48 39 c3             	cmp    rbx,rax
  4033c7:	0f 97 c0             	seta   al
  4033ca:	84 c0                	test   al,al
  4033cc:	74 16                	je     4033e4 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_create(unsigned long&, unsigned long)+0xa0>
  4033ce:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4033d2:	48 89 c7             	mov    rdi,rax
  4033d5:	e8 7e fe ff ff       	call   403258 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::max_size() const>
  4033da:	48 89 c2             	mov    rdx,rax
  4033dd:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4033e1:	48 89 10             	mov    QWORD PTR [rax],rdx
  4033e4:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  4033e8:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4033eb:	48 8d 58 01          	lea    rbx,[rax+0x1]
  4033ef:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4033f3:	48 89 c7             	mov    rdi,rax
  4033f6:	e8 09 fc ff ff       	call   403004 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_get_allocator()>
  4033fb:	48 89 de             	mov    rsi,rbx
  4033fe:	48 89 c7             	mov    rdi,rax
  403401:	e8 76 00 00 00       	call   40347c <std::allocator_traits<std::allocator<char> >::allocate(std::allocator<char>&, unsigned long)>
  403406:	48 83 c4 28          	add    rsp,0x28
  40340a:	5b                   	pop    rbx
  40340b:	5d                   	pop    rbp
  40340c:	c3                   	ret    

000000000040340d <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy_chars(char*, char const*, char const*)>:
  40340d:	55                   	push   rbp
  40340e:	48 89 e5             	mov    rbp,rsp
  403411:	48 83 ec 20          	sub    rsp,0x20
  403415:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403419:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  40341d:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  403421:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  403425:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  403429:	48 29 c2             	sub    rdx,rax
  40342c:	48 89 d0             	mov    rax,rdx
  40342f:	48 89 c2             	mov    rdx,rax
  403432:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  403436:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40343a:	48 89 ce             	mov    rsi,rcx
  40343d:	48 89 c7             	mov    rdi,rax
  403440:	e8 3c fe ff ff       	call   403281 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::_S_copy(char*, char const*, unsigned long)>
  403445:	90                   	nop
  403446:	c9                   	leave  
  403447:	c3                   	ret    

0000000000403448 <std::allocator_traits<std::allocator<char> >::max_size(std::allocator<char> const&)>:
  403448:	55                   	push   rbp
  403449:	48 89 e5             	mov    rbp,rsp
  40344c:	48 83 ec 10          	sub    rsp,0x10
  403450:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403454:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403458:	48 89 c7             	mov    rdi,rax
  40345b:	e8 46 00 00 00       	call   4034a6 <__gnu_cxx::new_allocator<char>::max_size() const>
  403460:	c9                   	leave  
  403461:	c3                   	ret    

0000000000403462 <char const* std::addressof<char const>(char const&)>:
  403462:	55                   	push   rbp
  403463:	48 89 e5             	mov    rbp,rsp
  403466:	48 83 ec 10          	sub    rsp,0x10
  40346a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40346e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403472:	48 89 c7             	mov    rdi,rax
  403475:	e8 3d 00 00 00       	call   4034b7 <char const* std::__addressof<char const>(char const&)>
  40347a:	c9                   	leave  
  40347b:	c3                   	ret    

000000000040347c <std::allocator_traits<std::allocator<char> >::allocate(std::allocator<char>&, unsigned long)>:
  40347c:	55                   	push   rbp
  40347d:	48 89 e5             	mov    rbp,rsp
  403480:	48 83 ec 10          	sub    rsp,0x10
  403484:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403488:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  40348c:	48 8b 4d f0          	mov    rcx,QWORD PTR [rbp-0x10]
  403490:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403494:	ba 00 00 00 00       	mov    edx,0x0
  403499:	48 89 ce             	mov    rsi,rcx
  40349c:	48 89 c7             	mov    rdi,rax
  40349f:	e8 22 00 00 00       	call   4034c6 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)>
  4034a4:	c9                   	leave  
  4034a5:	c3                   	ret    

00000000004034a6 <__gnu_cxx::new_allocator<char>::max_size() const>:
  4034a6:	55                   	push   rbp
  4034a7:	48 89 e5             	mov    rbp,rsp
  4034aa:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4034ae:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
  4034b5:	5d                   	pop    rbp
  4034b6:	c3                   	ret    

00000000004034b7 <char const* std::__addressof<char const>(char const&)>:
  4034b7:	55                   	push   rbp
  4034b8:	48 89 e5             	mov    rbp,rsp
  4034bb:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4034bf:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4034c3:	5d                   	pop    rbp
  4034c4:	c3                   	ret    
  4034c5:	90                   	nop

00000000004034c6 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)>:
  4034c6:	55                   	push   rbp
  4034c7:	48 89 e5             	mov    rbp,rsp
  4034ca:	48 83 ec 20          	sub    rsp,0x20
  4034ce:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4034d2:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  4034d6:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  4034da:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4034de:	48 89 c7             	mov    rdi,rax
  4034e1:	e8 c0 ff ff ff       	call   4034a6 <__gnu_cxx::new_allocator<char>::max_size() const>
  4034e6:	48 39 45 f0          	cmp    QWORD PTR [rbp-0x10],rax
  4034ea:	0f 97 c0             	seta   al
  4034ed:	84 c0                	test   al,al
  4034ef:	74 05                	je     4034f6 <__gnu_cxx::new_allocator<char>::allocate(unsigned long, void const*)+0x30>
  4034f1:	e8 fa e6 ff ff       	call   401bf0 <std::__throw_bad_alloc()@plt>
  4034f6:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4034fa:	48 89 c7             	mov    rdi,rax
  4034fd:	e8 8e e7 ff ff       	call   401c90 <operator new(unsigned long)@plt>
  403502:	c9                   	leave  
  403503:	c3                   	ret    

0000000000403504 <Parrot::~Parrot()>:
  403504:	55                   	push   rbp
  403505:	48 89 e5             	mov    rbp,rsp
  403508:	48 83 ec 10          	sub    rsp,0x10
  40350c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403510:	48 8d 15 f1 17 20 00 	lea    rdx,[rip+0x2017f1]        # 604d08 <vtable for Parrot+0x10>
  403517:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40351b:	48 89 10             	mov    QWORD PTR [rax],rdx
  40351e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403522:	48 83 c0 08          	add    rax,0x8
  403526:	48 89 c7             	mov    rdi,rax
  403529:	e8 ba f5 ff ff       	call   402ae8 <std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >::~basic_string()>
  40352e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403532:	48 89 c7             	mov    rdi,rax
  403535:	e8 c8 f2 ff ff       	call   402802 <Bird::~Bird()>
  40353a:	90                   	nop
  40353b:	c9                   	leave  
  40353c:	c3                   	ret    
  40353d:	90                   	nop

000000000040353e <Parrot::~Parrot()>:
  40353e:	55                   	push   rbp
  40353f:	48 89 e5             	mov    rbp,rsp
  403542:	48 83 ec 10          	sub    rsp,0x10
  403546:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40354a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40354e:	48 89 c7             	mov    rdi,rax
  403551:	e8 ae ff ff ff       	call   403504 <Parrot::~Parrot()>
  403556:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40355a:	be 28 00 00 00       	mov    esi,0x28
  40355f:	48 89 c7             	mov    rdi,rax
  403562:	e8 39 e7 ff ff       	call   401ca0 <operator delete(void*, unsigned long)@plt>
  403567:	c9                   	leave  
  403568:	c3                   	ret    
  403569:	90                   	nop

000000000040356a <Owl::~Owl()>:
  40356a:	55                   	push   rbp
  40356b:	48 89 e5             	mov    rbp,rsp
  40356e:	48 83 ec 10          	sub    rsp,0x10
  403572:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  403576:	48 8d 15 b3 17 20 00 	lea    rdx,[rip+0x2017b3]        # 604d30 <vtable for Owl+0x10>
  40357d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403581:	48 89 10             	mov    QWORD PTR [rax],rdx
  403584:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403588:	48 89 c7             	mov    rdi,rax
  40358b:	e8 72 f2 ff ff       	call   402802 <Bird::~Bird()>
  403590:	90                   	nop
  403591:	c9                   	leave  
  403592:	c3                   	ret    
  403593:	90                   	nop

0000000000403594 <Owl::~Owl()>:
  403594:	55                   	push   rbp
  403595:	48 89 e5             	mov    rbp,rsp
  403598:	48 83 ec 10          	sub    rsp,0x10
  40359c:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4035a0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4035a4:	48 89 c7             	mov    rdi,rax
  4035a7:	e8 be ff ff ff       	call   40356a <Owl::~Owl()>
  4035ac:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4035b0:	be 08 00 00 00       	mov    esi,0x8
  4035b5:	48 89 c7             	mov    rdi,rax
  4035b8:	e8 e3 e6 ff ff       	call   401ca0 <operator delete(void*, unsigned long)@plt>
  4035bd:	c9                   	leave  
  4035be:	c3                   	ret    
  4035bf:	90                   	nop

00000000004035c0 <Cock::~Cock()>:
  4035c0:	55                   	push   rbp
  4035c1:	48 89 e5             	mov    rbp,rsp
  4035c4:	48 83 ec 10          	sub    rsp,0x10
  4035c8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4035cc:	48 8d 15 85 17 20 00 	lea    rdx,[rip+0x201785]        # 604d58 <vtable for Cock+0x10>
  4035d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4035d7:	48 89 10             	mov    QWORD PTR [rax],rdx
  4035da:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4035de:	48 89 c7             	mov    rdi,rax
  4035e1:	e8 1c f2 ff ff       	call   402802 <Bird::~Bird()>
  4035e6:	90                   	nop
  4035e7:	c9                   	leave  
  4035e8:	c3                   	ret    
  4035e9:	90                   	nop

00000000004035ea <Cock::~Cock()>:
  4035ea:	55                   	push   rbp
  4035eb:	48 89 e5             	mov    rbp,rsp
  4035ee:	48 83 ec 10          	sub    rsp,0x10
  4035f2:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4035f6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4035fa:	48 89 c7             	mov    rdi,rax
  4035fd:	e8 be ff ff ff       	call   4035c0 <Cock::~Cock()>
  403602:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  403606:	be 08 00 00 00       	mov    esi,0x8
  40360b:	48 89 c7             	mov    rdi,rax
  40360e:	e8 8d e6 ff ff       	call   401ca0 <operator delete(void*, unsigned long)@plt>
  403613:	c9                   	leave  
  403614:	c3                   	ret    
  403615:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40361c:	00 00 00 
  40361f:	90                   	nop

0000000000403620 <__libc_csu_init>:
  403620:	41 57                	push   r15
  403622:	41 56                	push   r14
  403624:	49 89 d7             	mov    r15,rdx
  403627:	41 55                	push   r13
  403629:	41 54                	push   r12
  40362b:	4c 8d 25 ae 16 20 00 	lea    r12,[rip+0x2016ae]        # 604ce0 <__frame_dummy_init_array_entry>
  403632:	55                   	push   rbp
  403633:	48 8d 2d b6 16 20 00 	lea    rbp,[rip+0x2016b6]        # 604cf0 <__init_array_end>
  40363a:	53                   	push   rbx
  40363b:	41 89 fd             	mov    r13d,edi
  40363e:	49 89 f6             	mov    r14,rsi
  403641:	4c 29 e5             	sub    rbp,r12
  403644:	48 83 ec 08          	sub    rsp,0x8
  403648:	48 c1 fd 03          	sar    rbp,0x3
  40364c:	e8 3f e5 ff ff       	call   401b90 <_init>
  403651:	48 85 ed             	test   rbp,rbp
  403654:	74 20                	je     403676 <__libc_csu_init+0x56>
  403656:	31 db                	xor    ebx,ebx
  403658:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40365f:	00 
  403660:	4c 89 fa             	mov    rdx,r15
  403663:	4c 89 f6             	mov    rsi,r14
  403666:	44 89 ef             	mov    edi,r13d
  403669:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40366d:	48 83 c3 01          	add    rbx,0x1
  403671:	48 39 dd             	cmp    rbp,rbx
  403674:	75 ea                	jne    403660 <__libc_csu_init+0x40>
  403676:	48 83 c4 08          	add    rsp,0x8
  40367a:	5b                   	pop    rbx
  40367b:	5d                   	pop    rbp
  40367c:	41 5c                	pop    r12
  40367e:	41 5d                	pop    r13
  403680:	41 5e                	pop    r14
  403682:	41 5f                	pop    r15
  403684:	c3                   	ret    
  403685:	90                   	nop
  403686:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40368d:	00 00 00 

0000000000403690 <__libc_csu_fini>:
  403690:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000403694 <_fini>:
  403694:	48 83 ec 08          	sub    rsp,0x8
  403698:	48 83 c4 08          	add    rsp,0x8
  40369c:	c3                   	ret    
