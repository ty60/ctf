
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000401598 <.init>:
  401598:	48 83 ec 08          	sub    rsp,0x8
  40159c:	48 8b 05 e5 61 20 00 	mov    rax,QWORD PTR [rip+0x2061e5]        # 607788 <dlerror@plt+0x205d28>
  4015a3:	48 85 c0             	test   rax,rax
  4015a6:	74 05                	je     4015ad <__strcat_chk@plt-0x23>
  4015a8:	e8 83 02 00 00       	call   401830 <__gmon_start__@plt>
  4015ad:	48 83 c4 08          	add    rsp,0x8
  4015b1:	c3                   	ret    

Disassembly of section .plt:

00000000004015c0 <__strcat_chk@plt-0x10>:
  4015c0:	ff 35 d2 61 20 00    	push   QWORD PTR [rip+0x2061d2]        # 607798 <dlerror@plt+0x205d38>
  4015c6:	ff 25 d4 61 20 00    	jmp    QWORD PTR [rip+0x2061d4]        # 6077a0 <dlerror@plt+0x205d40>
  4015cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000004015d0 <__strcat_chk@plt>:
  4015d0:	ff 25 d2 61 20 00    	jmp    QWORD PTR [rip+0x2061d2]        # 6077a8 <dlerror@plt+0x205d48>
  4015d6:	68 00 00 00 00       	push   0x0
  4015db:	e9 e0 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004015e0 <getenv@plt>:
  4015e0:	ff 25 ca 61 20 00    	jmp    QWORD PTR [rip+0x2061ca]        # 6077b0 <dlerror@plt+0x205d50>
  4015e6:	68 01 00 00 00       	push   0x1
  4015eb:	e9 d0 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004015f0 <__snprintf_chk@plt>:
  4015f0:	ff 25 c2 61 20 00    	jmp    QWORD PTR [rip+0x2061c2]        # 6077b8 <dlerror@plt+0x205d58>
  4015f6:	68 02 00 00 00       	push   0x2
  4015fb:	e9 c0 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401600 <raise@plt>:
  401600:	ff 25 ba 61 20 00    	jmp    QWORD PTR [rip+0x2061ba]        # 6077c0 <dlerror@plt+0x205d60>
  401606:	68 03 00 00 00       	push   0x3
  40160b:	e9 b0 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401610 <free@plt>:
  401610:	ff 25 b2 61 20 00    	jmp    QWORD PTR [rip+0x2061b2]        # 6077c8 <dlerror@plt+0x205d68>
  401616:	68 04 00 00 00       	push   0x4
  40161b:	e9 a0 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401620 <__vfprintf_chk@plt>:
  401620:	ff 25 aa 61 20 00    	jmp    QWORD PTR [rip+0x2061aa]        # 6077d0 <dlerror@plt+0x205d70>
  401626:	68 05 00 00 00       	push   0x5
  40162b:	e9 90 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401630 <unlink@plt>:
  401630:	ff 25 a2 61 20 00    	jmp    QWORD PTR [rip+0x2061a2]        # 6077d8 <dlerror@plt+0x205d78>
  401636:	68 06 00 00 00       	push   0x6
  40163b:	e9 80 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401640 <strncpy@plt>:
  401640:	ff 25 9a 61 20 00    	jmp    QWORD PTR [rip+0x20619a]        # 6077e0 <dlerror@plt+0x205d80>
  401646:	68 07 00 00 00       	push   0x7
  40164b:	e9 70 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401650 <strncmp@plt>:
  401650:	ff 25 92 61 20 00    	jmp    QWORD PTR [rip+0x206192]        # 6077e8 <dlerror@plt+0x205d88>
  401656:	68 08 00 00 00       	push   0x8
  40165b:	e9 60 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401660 <strcpy@plt>:
  401660:	ff 25 8a 61 20 00    	jmp    QWORD PTR [rip+0x20618a]        # 6077f0 <dlerror@plt+0x205d90>
  401666:	68 09 00 00 00       	push   0x9
  40166b:	e9 50 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401670 <inflate@plt>:
  401670:	ff 25 82 61 20 00    	jmp    QWORD PTR [rip+0x206182]        # 6077f8 <dlerror@plt+0x205d98>
  401676:	68 0a 00 00 00       	push   0xa
  40167b:	e9 40 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401680 <mkdir@plt>:
  401680:	ff 25 7a 61 20 00    	jmp    QWORD PTR [rip+0x20617a]        # 607800 <dlerror@plt+0x205da0>
  401686:	68 0b 00 00 00       	push   0xb
  40168b:	e9 30 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401690 <ferror@plt>:
  401690:	ff 25 72 61 20 00    	jmp    QWORD PTR [rip+0x206172]        # 607808 <dlerror@plt+0x205da8>
  401696:	68 0c 00 00 00       	push   0xc
  40169b:	e9 20 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016a0 <fread@plt>:
  4016a0:	ff 25 6a 61 20 00    	jmp    QWORD PTR [rip+0x20616a]        # 607810 <dlerror@plt+0x205db0>
  4016a6:	68 0d 00 00 00       	push   0xd
  4016ab:	e9 10 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016b0 <mbstowcs@plt>:
  4016b0:	ff 25 62 61 20 00    	jmp    QWORD PTR [rip+0x206162]        # 607818 <dlerror@plt+0x205db8>
  4016b6:	68 0e 00 00 00       	push   0xe
  4016bb:	e9 00 ff ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016c0 <readlink@plt>:
  4016c0:	ff 25 5a 61 20 00    	jmp    QWORD PTR [rip+0x20615a]        # 607820 <dlerror@plt+0x205dc0>
  4016c6:	68 0f 00 00 00       	push   0xf
  4016cb:	e9 f0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016d0 <setenv@plt>:
  4016d0:	ff 25 52 61 20 00    	jmp    QWORD PTR [rip+0x206152]        # 607828 <dlerror@plt+0x205dc8>
  4016d6:	68 10 00 00 00       	push   0x10
  4016db:	e9 e0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016e0 <getpid@plt>:
  4016e0:	ff 25 4a 61 20 00    	jmp    QWORD PTR [rip+0x20614a]        # 607830 <dlerror@plt+0x205dd0>
  4016e6:	68 11 00 00 00       	push   0x11
  4016eb:	e9 d0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004016f0 <fclose@plt>:
  4016f0:	ff 25 42 61 20 00    	jmp    QWORD PTR [rip+0x206142]        # 607838 <dlerror@plt+0x205dd8>
  4016f6:	68 12 00 00 00       	push   0x12
  4016fb:	e9 c0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401700 <opendir@plt>:
  401700:	ff 25 3a 61 20 00    	jmp    QWORD PTR [rip+0x20613a]        # 607840 <dlerror@plt+0x205de0>
  401706:	68 13 00 00 00       	push   0x13
  40170b:	e9 b0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401710 <stpcpy@plt>:
  401710:	ff 25 32 61 20 00    	jmp    QWORD PTR [rip+0x206132]        # 607848 <dlerror@plt+0x205de8>
  401716:	68 14 00 00 00       	push   0x14
  40171b:	e9 a0 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401720 <rmdir@plt>:
  401720:	ff 25 2a 61 20 00    	jmp    QWORD PTR [rip+0x20612a]        # 607850 <dlerror@plt+0x205df0>
  401726:	68 15 00 00 00       	push   0x15
  40172b:	e9 90 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401730 <strlen@plt>:
  401730:	ff 25 22 61 20 00    	jmp    QWORD PTR [rip+0x206122]        # 607858 <dlerror@plt+0x205df8>
  401736:	68 16 00 00 00       	push   0x16
  40173b:	e9 80 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401740 <setbuf@plt>:
  401740:	ff 25 1a 61 20 00    	jmp    QWORD PTR [rip+0x20611a]        # 607860 <dlerror@plt+0x205e00>
  401746:	68 17 00 00 00       	push   0x17
  40174b:	e9 70 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401750 <strchr@plt>:
  401750:	ff 25 12 61 20 00    	jmp    QWORD PTR [rip+0x206112]        # 607868 <dlerror@plt+0x205e08>
  401756:	68 18 00 00 00       	push   0x18
  40175b:	e9 60 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401760 <dirname@plt>:
  401760:	ff 25 0a 61 20 00    	jmp    QWORD PTR [rip+0x20610a]        # 607870 <dlerror@plt+0x205e10>
  401766:	68 19 00 00 00       	push   0x19
  40176b:	e9 50 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401770 <memset@plt>:
  401770:	ff 25 02 61 20 00    	jmp    QWORD PTR [rip+0x206102]        # 607878 <dlerror@plt+0x205e18>
  401776:	68 1a 00 00 00       	push   0x1a
  40177b:	e9 40 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401780 <strnlen@plt>:
  401780:	ff 25 fa 60 20 00    	jmp    QWORD PTR [rip+0x2060fa]        # 607880 <dlerror@plt+0x205e20>
  401786:	68 1b 00 00 00       	push   0x1b
  40178b:	e9 30 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401790 <strncat@plt>:
  401790:	ff 25 f2 60 20 00    	jmp    QWORD PTR [rip+0x2060f2]        # 607888 <dlerror@plt+0x205e28>
  401796:	68 1c 00 00 00       	push   0x1c
  40179b:	e9 20 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017a0 <closedir@plt>:
  4017a0:	ff 25 ea 60 20 00    	jmp    QWORD PTR [rip+0x2060ea]        # 607890 <dlerror@plt+0x205e30>
  4017a6:	68 1d 00 00 00       	push   0x1d
  4017ab:	e9 10 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017b0 <__strdup@plt>:
  4017b0:	ff 25 e2 60 20 00    	jmp    QWORD PTR [rip+0x2060e2]        # 607898 <dlerror@plt+0x205e38>
  4017b6:	68 1e 00 00 00       	push   0x1e
  4017bb:	e9 00 fe ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017c0 <__libc_start_main@plt>:
  4017c0:	ff 25 da 60 20 00    	jmp    QWORD PTR [rip+0x2060da]        # 6078a0 <dlerror@plt+0x205e40>
  4017c6:	68 1f 00 00 00       	push   0x1f
  4017cb:	e9 f0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017d0 <wcsncpy@plt>:
  4017d0:	ff 25 d2 60 20 00    	jmp    QWORD PTR [rip+0x2060d2]        # 6078a8 <dlerror@plt+0x205e48>
  4017d6:	68 20 00 00 00       	push   0x20
  4017db:	e9 e0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017e0 <calloc@plt>:
  4017e0:	ff 25 ca 60 20 00    	jmp    QWORD PTR [rip+0x2060ca]        # 6078b0 <dlerror@plt+0x205e50>
  4017e6:	68 21 00 00 00       	push   0x21
  4017eb:	e9 d0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004017f0 <strcmp@plt>:
  4017f0:	ff 25 c2 60 20 00    	jmp    QWORD PTR [rip+0x2060c2]        # 6078b8 <dlerror@plt+0x205e58>
  4017f6:	68 22 00 00 00       	push   0x22
  4017fb:	e9 c0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401800 <signal@plt>:
  401800:	ff 25 ba 60 20 00    	jmp    QWORD PTR [rip+0x2060ba]        # 6078c0 <dlerror@plt+0x205e60>
  401806:	68 23 00 00 00       	push   0x23
  40180b:	e9 b0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401810 <ftell@plt>:
  401810:	ff 25 b2 60 20 00    	jmp    QWORD PTR [rip+0x2060b2]        # 6078c8 <dlerror@plt+0x205e68>
  401816:	68 24 00 00 00       	push   0x24
  40181b:	e9 a0 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401820 <feof@plt>:
  401820:	ff 25 aa 60 20 00    	jmp    QWORD PTR [rip+0x2060aa]        # 6078d0 <dlerror@plt+0x205e70>
  401826:	68 25 00 00 00       	push   0x25
  40182b:	e9 90 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401830 <__gmon_start__@plt>:
  401830:	ff 25 a2 60 20 00    	jmp    QWORD PTR [rip+0x2060a2]        # 6078d8 <dlerror@plt+0x205e78>
  401836:	68 26 00 00 00       	push   0x26
  40183b:	e9 80 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401840 <clearerr@plt>:
  401840:	ff 25 9a 60 20 00    	jmp    QWORD PTR [rip+0x20609a]        # 6078e0 <dlerror@plt+0x205e80>
  401846:	68 27 00 00 00       	push   0x27
  40184b:	e9 70 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401850 <realpath@plt>:
  401850:	ff 25 92 60 20 00    	jmp    QWORD PTR [rip+0x206092]        # 6078e8 <dlerror@plt+0x205e88>
  401856:	68 28 00 00 00       	push   0x28
  40185b:	e9 60 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401860 <inflateEnd@plt>:
  401860:	ff 25 8a 60 20 00    	jmp    QWORD PTR [rip+0x20608a]        # 6078f0 <dlerror@plt+0x205e90>
  401866:	68 29 00 00 00       	push   0x29
  40186b:	e9 50 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401870 <kill@plt>:
  401870:	ff 25 82 60 20 00    	jmp    QWORD PTR [rip+0x206082]        # 6078f8 <dlerror@plt+0x205e98>
  401876:	68 2a 00 00 00       	push   0x2a
  40187b:	e9 40 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401880 <__xpg_basename@plt>:
  401880:	ff 25 7a 60 20 00    	jmp    QWORD PTR [rip+0x20607a]        # 607900 <dlerror@plt+0x205ea0>
  401886:	68 2b 00 00 00       	push   0x2b
  40188b:	e9 30 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401890 <fileno@plt>:
  401890:	ff 25 72 60 20 00    	jmp    QWORD PTR [rip+0x206072]        # 607908 <dlerror@plt+0x205ea8>
  401896:	68 2c 00 00 00       	push   0x2c
  40189b:	e9 20 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018a0 <__stpcpy_chk@plt>:
  4018a0:	ff 25 6a 60 20 00    	jmp    QWORD PTR [rip+0x20606a]        # 607910 <dlerror@plt+0x205eb0>
  4018a6:	68 2d 00 00 00       	push   0x2d
  4018ab:	e9 10 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018b0 <__xstat@plt>:
  4018b0:	ff 25 62 60 20 00    	jmp    QWORD PTR [rip+0x206062]        # 607918 <dlerror@plt+0x205eb8>
  4018b6:	68 2e 00 00 00       	push   0x2e
  4018bb:	e9 00 fd ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018c0 <readdir@plt>:
  4018c0:	ff 25 5a 60 20 00    	jmp    QWORD PTR [rip+0x20605a]        # 607920 <dlerror@plt+0x205ec0>
  4018c6:	68 2f 00 00 00       	push   0x2f
  4018cb:	e9 f0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018d0 <dlopen@plt>:
  4018d0:	ff 25 52 60 20 00    	jmp    QWORD PTR [rip+0x206052]        # 607928 <dlerror@plt+0x205ec8>
  4018d6:	68 30 00 00 00       	push   0x30
  4018db:	e9 e0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018e0 <malloc@plt>:
  4018e0:	ff 25 4a 60 20 00    	jmp    QWORD PTR [rip+0x20604a]        # 607930 <dlerror@plt+0x205ed0>
  4018e6:	68 31 00 00 00       	push   0x31
  4018eb:	e9 d0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004018f0 <fflush@plt>:
  4018f0:	ff 25 42 60 20 00    	jmp    QWORD PTR [rip+0x206042]        # 607938 <dlerror@plt+0x205ed8>
  4018f6:	68 32 00 00 00       	push   0x32
  4018fb:	e9 c0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401900 <nl_langinfo@plt>:
  401900:	ff 25 3a 60 20 00    	jmp    QWORD PTR [rip+0x20603a]        # 607940 <dlerror@plt+0x205ee0>
  401906:	68 33 00 00 00       	push   0x33
  40190b:	e9 b0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401910 <fseek@plt>:
  401910:	ff 25 32 60 20 00    	jmp    QWORD PTR [rip+0x206032]        # 607948 <dlerror@plt+0x205ee8>
  401916:	68 34 00 00 00       	push   0x34
  40191b:	e9 a0 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401920 <__vsnprintf_chk@plt>:
  401920:	ff 25 2a 60 20 00    	jmp    QWORD PTR [rip+0x20602a]        # 607950 <dlerror@plt+0x205ef0>
  401926:	68 35 00 00 00       	push   0x35
  40192b:	e9 90 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401930 <__strncpy_chk@plt>:
  401930:	ff 25 22 60 20 00    	jmp    QWORD PTR [rip+0x206022]        # 607958 <dlerror@plt+0x205ef8>
  401936:	68 36 00 00 00       	push   0x36
  40193b:	e9 80 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401940 <__strcpy_chk@plt>:
  401940:	ff 25 1a 60 20 00    	jmp    QWORD PTR [rip+0x20601a]        # 607960 <dlerror@plt+0x205f00>
  401946:	68 37 00 00 00       	push   0x37
  40194b:	e9 70 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401950 <mkdtemp@plt>:
  401950:	ff 25 12 60 20 00    	jmp    QWORD PTR [rip+0x206012]        # 607968 <dlerror@plt+0x205f08>
  401956:	68 38 00 00 00       	push   0x38
  40195b:	e9 60 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401960 <setlocale@plt>:
  401960:	ff 25 0a 60 20 00    	jmp    QWORD PTR [rip+0x20600a]        # 607970 <dlerror@plt+0x205f10>
  401966:	68 39 00 00 00       	push   0x39
  40196b:	e9 50 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401970 <fchmod@plt>:
  401970:	ff 25 02 60 20 00    	jmp    QWORD PTR [rip+0x206002]        # 607978 <dlerror@plt+0x205f18>
  401976:	68 3a 00 00 00       	push   0x3a
  40197b:	e9 40 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401980 <inflateInit_@plt>:
  401980:	ff 25 fa 5f 20 00    	jmp    QWORD PTR [rip+0x205ffa]        # 607980 <dlerror@plt+0x205f20>
  401986:	68 3b 00 00 00       	push   0x3b
  40198b:	e9 30 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401990 <waitpid@plt>:
  401990:	ff 25 f2 5f 20 00    	jmp    QWORD PTR [rip+0x205ff2]        # 607988 <dlerror@plt+0x205f28>
  401996:	68 3c 00 00 00       	push   0x3c
  40199b:	e9 20 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019a0 <fopen@plt>:
  4019a0:	ff 25 ea 5f 20 00    	jmp    QWORD PTR [rip+0x205fea]        # 607990 <dlerror@plt+0x205f30>
  4019a6:	68 3d 00 00 00       	push   0x3d
  4019ab:	e9 10 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019b0 <perror@plt>:
  4019b0:	ff 25 e2 5f 20 00    	jmp    QWORD PTR [rip+0x205fe2]        # 607998 <dlerror@plt+0x205f38>
  4019b6:	68 3e 00 00 00       	push   0x3e
  4019bb:	e9 00 fc ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019c0 <strtok@plt>:
  4019c0:	ff 25 da 5f 20 00    	jmp    QWORD PTR [rip+0x205fda]        # 6079a0 <dlerror@plt+0x205f40>
  4019c6:	68 3f 00 00 00       	push   0x3f
  4019cb:	e9 f0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019d0 <unsetenv@plt>:
  4019d0:	ff 25 d2 5f 20 00    	jmp    QWORD PTR [rip+0x205fd2]        # 6079a8 <dlerror@plt+0x205f48>
  4019d6:	68 40 00 00 00       	push   0x40
  4019db:	e9 e0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019e0 <execvp@plt>:
  4019e0:	ff 25 ca 5f 20 00    	jmp    QWORD PTR [rip+0x205fca]        # 6079b0 <dlerror@plt+0x205f50>
  4019e6:	68 41 00 00 00       	push   0x41
  4019eb:	e9 d0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

00000000004019f0 <strcat@plt>:
  4019f0:	ff 25 c2 5f 20 00    	jmp    QWORD PTR [rip+0x205fc2]        # 6079b8 <dlerror@plt+0x205f58>
  4019f6:	68 42 00 00 00       	push   0x42
  4019fb:	e9 c0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a00 <zlibVersion@plt>:
  401a00:	ff 25 ba 5f 20 00    	jmp    QWORD PTR [rip+0x205fba]        # 6079c0 <dlerror@plt+0x205f60>
  401a06:	68 43 00 00 00       	push   0x43
  401a0b:	e9 b0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a10 <fwrite@plt>:
  401a10:	ff 25 b2 5f 20 00    	jmp    QWORD PTR [rip+0x205fb2]        # 6079c8 <dlerror@plt+0x205f68>
  401a16:	68 44 00 00 00       	push   0x44
  401a1b:	e9 a0 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a20 <__fprintf_chk@plt>:
  401a20:	ff 25 aa 5f 20 00    	jmp    QWORD PTR [rip+0x205faa]        # 6079d0 <dlerror@plt+0x205f70>
  401a26:	68 45 00 00 00       	push   0x45
  401a2b:	e9 90 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a30 <__strncat_chk@plt>:
  401a30:	ff 25 a2 5f 20 00    	jmp    QWORD PTR [rip+0x205fa2]        # 6079d8 <dlerror@plt+0x205f78>
  401a36:	68 46 00 00 00       	push   0x46
  401a3b:	e9 80 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a40 <dlsym@plt>:
  401a40:	ff 25 9a 5f 20 00    	jmp    QWORD PTR [rip+0x205f9a]        # 6079e0 <dlerror@plt+0x205f80>
  401a46:	68 47 00 00 00       	push   0x47
  401a4b:	e9 70 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a50 <fork@plt>:
  401a50:	ff 25 92 5f 20 00    	jmp    QWORD PTR [rip+0x205f92]        # 6079e8 <dlerror@plt+0x205f88>
  401a56:	68 48 00 00 00       	push   0x48
  401a5b:	e9 60 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

0000000000401a60 <dlerror@plt>:
  401a60:	ff 25 8a 5f 20 00    	jmp    QWORD PTR [rip+0x205f8a]        # 6079f0 <dlerror@plt+0x205f90>
  401a66:	68 49 00 00 00       	push   0x49
  401a6b:	e9 50 fb ff ff       	jmp    4015c0 <__strcat_chk@plt-0x10>

Disassembly of section .text:

0000000000401a70 <.text>:
  401a70:	e9 cb 14 00 00       	jmp    402f40 <dlerror@plt+0x14e0>
  401a75:	31 ed                	xor    ebp,ebp
  401a77:	49 89 d1             	mov    r9,rdx
  401a7a:	5e                   	pop    rsi
  401a7b:	48 89 e2             	mov    rdx,rsp
  401a7e:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  401a82:	50                   	push   rax
  401a83:	54                   	push   rsp
  401a84:	49 c7 c0 00 54 40 00 	mov    r8,0x405400
  401a8b:	48 c7 c1 90 53 40 00 	mov    rcx,0x405390
  401a92:	48 c7 c7 70 1a 40 00 	mov    rdi,0x401a70
  401a99:	e8 22 fd ff ff       	call   4017c0 <__libc_start_main@plt>
  401a9e:	f4                   	hlt    
  401a9f:	90                   	nop
  401aa0:	b8 0f 7a 60 00       	mov    eax,0x607a0f
  401aa5:	55                   	push   rbp
  401aa6:	48 2d 08 7a 60 00    	sub    rax,0x607a08
  401aac:	48 83 f8 0e          	cmp    rax,0xe
  401ab0:	48 89 e5             	mov    rbp,rsp
  401ab3:	76 1b                	jbe    401ad0 <dlerror@plt+0x70>
  401ab5:	b8 00 00 00 00       	mov    eax,0x0
  401aba:	48 85 c0             	test   rax,rax
  401abd:	74 11                	je     401ad0 <dlerror@plt+0x70>
  401abf:	5d                   	pop    rbp
  401ac0:	bf 08 7a 60 00       	mov    edi,0x607a08
  401ac5:	ff e0                	jmp    rax
  401ac7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401ace:	00 00 
  401ad0:	5d                   	pop    rbp
  401ad1:	c3                   	ret    
  401ad2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401ad9:	1f 84 00 00 00 00 00 
  401ae0:	be 08 7a 60 00       	mov    esi,0x607a08
  401ae5:	55                   	push   rbp
  401ae6:	48 81 ee 08 7a 60 00 	sub    rsi,0x607a08
  401aed:	48 c1 fe 03          	sar    rsi,0x3
  401af1:	48 89 e5             	mov    rbp,rsp
  401af4:	48 89 f0             	mov    rax,rsi
  401af7:	48 c1 e8 3f          	shr    rax,0x3f
  401afb:	48 01 c6             	add    rsi,rax
  401afe:	48 d1 fe             	sar    rsi,1
  401b01:	74 15                	je     401b18 <dlerror@plt+0xb8>
  401b03:	b8 00 00 00 00       	mov    eax,0x0
  401b08:	48 85 c0             	test   rax,rax
  401b0b:	74 0b                	je     401b18 <dlerror@plt+0xb8>
  401b0d:	5d                   	pop    rbp
  401b0e:	bf 08 7a 60 00       	mov    edi,0x607a08
  401b13:	ff e0                	jmp    rax
  401b15:	0f 1f 00             	nop    DWORD PTR [rax]
  401b18:	5d                   	pop    rbp
  401b19:	c3                   	ret    
  401b1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401b20:	80 3d 31 5f 20 00 00 	cmp    BYTE PTR [rip+0x205f31],0x0        # 607a58 <stderr@@GLIBC_2.2.5+0x8>
  401b27:	75 11                	jne    401b3a <dlerror@plt+0xda>
  401b29:	55                   	push   rbp
  401b2a:	48 89 e5             	mov    rbp,rsp
  401b2d:	e8 6e ff ff ff       	call   401aa0 <dlerror@plt+0x40>
  401b32:	5d                   	pop    rbp
  401b33:	c6 05 1e 5f 20 00 01 	mov    BYTE PTR [rip+0x205f1e],0x1        # 607a58 <stderr@@GLIBC_2.2.5+0x8>
  401b3a:	f3 c3                	repz ret 
  401b3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401b40:	bf 90 75 60 00       	mov    edi,0x607590
  401b45:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
  401b49:	75 05                	jne    401b50 <dlerror@plt+0xf0>
  401b4b:	eb 93                	jmp    401ae0 <dlerror@plt+0x80>
  401b4d:	0f 1f 00             	nop    DWORD PTR [rax]
  401b50:	b8 00 00 00 00       	mov    eax,0x0
  401b55:	48 85 c0             	test   rax,rax
  401b58:	74 f1                	je     401b4b <dlerror@plt+0xeb>
  401b5a:	55                   	push   rbp
  401b5b:	48 89 e5             	mov    rbp,rsp
  401b5e:	ff d0                	call   rax
  401b60:	5d                   	pop    rbp
  401b61:	e9 7a ff ff ff       	jmp    401ae0 <dlerror@plt+0x80>
  401b66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401b6d:	00 00 00 
  401b70:	41 54                	push   r12
  401b72:	55                   	push   rbp
  401b73:	48 89 fd             	mov    rbp,rdi
  401b76:	53                   	push   rbx
  401b77:	89 f3                	mov    ebx,esi
  401b79:	8d b6 a8 ef ff ff    	lea    esi,[rsi-0x1058]
  401b7f:	31 d2                	xor    edx,edx
  401b81:	48 81 ec 60 10 00 00 	sub    rsp,0x1060
  401b88:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401b8b:	48 63 f6             	movsxd rsi,esi
  401b8e:	e8 7d fd ff ff       	call   401910 <fseek@plt>
  401b93:	85 c0                	test   eax,eax
  401b95:	0f 85 e5 00 00 00    	jne    401c80 <dlerror@plt+0x220>
  401b9b:	48 8b 4d 00          	mov    rcx,QWORD PTR [rbp+0x0]
  401b9f:	ba 01 00 00 00       	mov    edx,0x1
  401ba4:	be 58 10 00 00       	mov    esi,0x1058
  401ba9:	48 89 e7             	mov    rdi,rsp
  401bac:	49 89 e4             	mov    r12,rsp
  401baf:	e8 ec fa ff ff       	call   4016a0 <fread@plt>
  401bb4:	48 85 c0             	test   rax,rax
  401bb7:	0f 84 c3 00 00 00    	je     401c80 <dlerror@plt+0x220>
  401bbd:	48 8d 94 24 00 10 00 	lea    rdx,[rsp+0x1000]
  401bc4:	00 
  401bc5:	41 ba 24 54 40 00    	mov    r10d,0x405424
  401bcb:	41 b9 08 00 00 00    	mov    r9d,0x8
  401bd1:	4c 8d 5c 24 ff       	lea    r11,[rsp-0x1]
  401bd6:	eb 15                	jmp    401bed <dlerror@plt+0x18d>
  401bd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401bdf:	00 
  401be0:	48 83 ea 01          	sub    rdx,0x1
  401be4:	4c 39 da             	cmp    rdx,r11
  401be7:	0f 84 93 00 00 00    	je     401c80 <dlerror@plt+0x220>
  401bed:	4c 89 d6             	mov    rsi,r10
  401bf0:	48 89 d7             	mov    rdi,rdx
  401bf3:	4c 89 c9             	mov    rcx,r9
  401bf6:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  401bf8:	0f 97 c0             	seta   al
  401bfb:	41 0f 92 c0          	setb   r8b
  401bff:	44 29 c0             	sub    eax,r8d
  401c02:	0f be c0             	movsx  eax,al
  401c05:	85 c0                	test   eax,eax
  401c07:	75 d7                	jne    401be0 <dlerror@plt+0x180>
  401c09:	48 8b 7a 10          	mov    rdi,QWORD PTR [rdx+0x10]
  401c0d:	48 8b 32             	mov    rsi,QWORD PTR [rdx]
  401c10:	48 89 7d 30          	mov    QWORD PTR [rbp+0x30],rdi
  401c14:	48 8b 7a 18          	mov    rdi,QWORD PTR [rdx+0x18]
  401c18:	48 89 75 20          	mov    QWORD PTR [rbp+0x20],rsi
  401c1c:	48 8b 72 08          	mov    rsi,QWORD PTR [rdx+0x8]
  401c20:	48 89 7d 38          	mov    QWORD PTR [rbp+0x38],rdi
  401c24:	48 8b 7a 20          	mov    rdi,QWORD PTR [rdx+0x20]
  401c28:	48 89 75 28          	mov    QWORD PTR [rbp+0x28],rsi
  401c2c:	0f ce                	bswap  esi
  401c2e:	29 f3                	sub    ebx,esi
  401c30:	48 89 7d 40          	mov    QWORD PTR [rbp+0x40],rdi
  401c34:	48 8b 7a 28          	mov    rdi,QWORD PTR [rdx+0x28]
  401c38:	48 89 7d 48          	mov    QWORD PTR [rbp+0x48],rdi
  401c3c:	48 8b 7a 30          	mov    rdi,QWORD PTR [rdx+0x30]
  401c40:	48 89 7d 50          	mov    QWORD PTR [rbp+0x50],rdi
  401c44:	48 8b 7a 38          	mov    rdi,QWORD PTR [rdx+0x38]
  401c48:	48 89 7d 58          	mov    QWORD PTR [rbp+0x58],rdi
  401c4c:	48 8b 7a 40          	mov    rdi,QWORD PTR [rdx+0x40]
  401c50:	48 89 7d 60          	mov    QWORD PTR [rbp+0x60],rdi
  401c54:	48 8b 7a 48          	mov    rdi,QWORD PTR [rdx+0x48]
  401c58:	48 89 7d 68          	mov    QWORD PTR [rbp+0x68],rdi
  401c5c:	48 8b 7a 50          	mov    rdi,QWORD PTR [rdx+0x50]
  401c60:	4c 29 e2             	sub    rdx,r12
  401c63:	8d 94 13 00 f0 ff ff 	lea    edx,[rbx+rdx*1-0x1000]
  401c6a:	48 89 7d 70          	mov    QWORD PTR [rbp+0x70],rdi
  401c6e:	89 55 08             	mov    DWORD PTR [rbp+0x8],edx
  401c71:	48 81 c4 60 10 00 00 	add    rsp,0x1060
  401c78:	5b                   	pop    rbx
  401c79:	5d                   	pop    rbp
  401c7a:	41 5c                	pop    r12
  401c7c:	c3                   	ret    
  401c7d:	0f 1f 00             	nop    DWORD PTR [rax]
  401c80:	48 81 c4 60 10 00 00 	add    rsp,0x1060
  401c87:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401c8c:	5b                   	pop    rbx
  401c8d:	5d                   	pop    rbp
  401c8e:	41 5c                	pop    r12
  401c90:	c3                   	ret    
  401c91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  401c98:	0f 1f 84 00 00 00 00 
  401c9f:	00 
  401ca0:	8b 06                	mov    eax,DWORD PTR [rsi]
  401ca2:	0f c8                	bswap  eax
  401ca4:	89 c0                	mov    eax,eax
  401ca6:	48 01 f0             	add    rax,rsi
  401ca9:	48 3b 47 10          	cmp    rax,QWORD PTR [rdi+0x10]
  401cad:	72 01                	jb     401cb0 <dlerror@plt+0x250>
  401caf:	c3                   	ret    
  401cb0:	53                   	push   rbx
  401cb1:	31 c0                	xor    eax,eax
  401cb3:	48 89 fb             	mov    rbx,rdi
  401cb6:	bf 00 55 40 00       	mov    edi,0x405500
  401cbb:	e8 10 07 00 00       	call   4023d0 <dlerror@plt+0x970>
  401cc0:	48 8b 43 18          	mov    rax,QWORD PTR [rbx+0x18]
  401cc4:	5b                   	pop    rbx
  401cc5:	c3                   	ret    
  401cc6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401ccd:	00 00 00 
  401cd0:	41 56                	push   r14
  401cd2:	41 55                	push   r13
  401cd4:	49 89 f5             	mov    r13,rsi
  401cd7:	41 54                	push   r12
  401cd9:	55                   	push   rbp
  401cda:	49 89 fc             	mov    r12,rdi
  401cdd:	53                   	push   rbx
  401cde:	48 83 ec 70          	sub    rsp,0x70
  401ce2:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401ce5:	48 85 ff             	test   rdi,rdi
  401ce8:	0f 84 22 01 00 00    	je     401e10 <dlerror@plt+0x3b0>
  401cee:	41 8b 75 04          	mov    esi,DWORD PTR [r13+0x4]
  401cf2:	31 d2                	xor    edx,edx
  401cf4:	0f ce                	bswap  esi
  401cf6:	41 03 74 24 08       	add    esi,DWORD PTR [r12+0x8]
  401cfb:	e8 10 fc ff ff       	call   401910 <fseek@plt>
  401d00:	41 8b 5d 08          	mov    ebx,DWORD PTR [r13+0x8]
  401d04:	0f cb                	bswap  ebx
  401d06:	89 db                	mov    ebx,ebx
  401d08:	48 89 df             	mov    rdi,rbx
  401d0b:	e8 d0 fb ff ff       	call   4018e0 <malloc@plt>
  401d10:	48 85 c0             	test   rax,rax
  401d13:	48 89 c5             	mov    rbp,rax
  401d16:	0f 84 45 01 00 00    	je     401e61 <dlerror@plt+0x401>
  401d1c:	49 8b 0c 24          	mov    rcx,QWORD PTR [r12]
  401d20:	ba 01 00 00 00       	mov    edx,0x1
  401d25:	48 89 de             	mov    rsi,rbx
  401d28:	48 89 ef             	mov    rdi,rbp
  401d2b:	e8 70 f9 ff ff       	call   4016a0 <fread@plt>
  401d30:	48 85 c0             	test   rax,rax
  401d33:	0f 84 0f 01 00 00    	je     401e48 <dlerror@plt+0x3e8>
  401d39:	41 80 7d 10 01       	cmp    BYTE PTR [r13+0x10],0x1
  401d3e:	74 30                	je     401d70 <dlerror@plt+0x310>
  401d40:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  401d44:	48 85 ff             	test   rdi,rdi
  401d47:	74 0d                	je     401d56 <dlerror@plt+0x2f6>
  401d49:	e8 a2 f9 ff ff       	call   4016f0 <fclose@plt>
  401d4e:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
  401d55:	00 
  401d56:	48 83 c4 70          	add    rsp,0x70
  401d5a:	48 89 e8             	mov    rax,rbp
  401d5d:	5b                   	pop    rbx
  401d5e:	5d                   	pop    rbp
  401d5f:	41 5c                	pop    r12
  401d61:	41 5d                	pop    r13
  401d63:	41 5e                	pop    r14
  401d65:	c3                   	ret    
  401d66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401d6d:	00 00 00 
  401d70:	e8 8b fc ff ff       	call   401a00 <zlibVersion@plt>
  401d75:	41 8b 5d 0c          	mov    ebx,DWORD PTR [r13+0xc]
  401d79:	0f cb                	bswap  ebx
  401d7b:	89 df                	mov    edi,ebx
  401d7d:	e8 5e fb ff ff       	call   4018e0 <malloc@plt>
  401d82:	48 85 c0             	test   rax,rax
  401d85:	49 89 c6             	mov    r14,rax
  401d88:	0f 84 2d 01 00 00    	je     401ebb <dlerror@plt+0x45b>
  401d8e:	41 8b 55 08          	mov    edx,DWORD PTR [r13+0x8]
  401d92:	be 4a 54 40 00       	mov    esi,0x40544a
  401d97:	48 89 e7             	mov    rdi,rsp
  401d9a:	48 c7 44 24 40 00 00 	mov    QWORD PTR [rsp+0x40],0x0
  401da1:	00 00 
  401da3:	48 c7 44 24 48 00 00 	mov    QWORD PTR [rsp+0x48],0x0
  401daa:	00 00 
  401dac:	48 c7 44 24 50 00 00 	mov    QWORD PTR [rsp+0x50],0x0
  401db3:	00 00 
  401db5:	48 89 2c 24          	mov    QWORD PTR [rsp],rbp
  401db9:	0f ca                	bswap  edx
  401dbb:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401dc0:	89 5c 24 20          	mov    DWORD PTR [rsp+0x20],ebx
  401dc4:	89 54 24 08          	mov    DWORD PTR [rsp+0x8],edx
  401dc8:	ba 70 00 00 00       	mov    edx,0x70
  401dcd:	e8 ae fb ff ff       	call   401980 <inflateInit_@plt>
  401dd2:	85 c0                	test   eax,eax
  401dd4:	0f 88 9a 00 00 00    	js     401e74 <dlerror@plt+0x414>
  401dda:	be 04 00 00 00       	mov    esi,0x4
  401ddf:	48 89 e7             	mov    rdi,rsp
  401de2:	e8 89 f8 ff ff       	call   401670 <inflate@plt>
  401de7:	85 c0                	test   eax,eax
  401de9:	0f 88 b7 00 00 00    	js     401ea6 <dlerror@plt+0x446>
  401def:	48 89 e7             	mov    rdi,rsp
  401df2:	e8 69 fa ff ff       	call   401860 <inflateEnd@plt>
  401df7:	48 89 ef             	mov    rdi,rbp
  401dfa:	4c 89 f5             	mov    rbp,r14
  401dfd:	e8 0e f8 ff ff       	call   401610 <free@plt>
  401e02:	e9 39 ff ff ff       	jmp    401d40 <dlerror@plt+0x2e0>
  401e07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401e0e:	00 00 
  401e10:	49 8d 7c 24 78       	lea    rdi,[r12+0x78]
  401e15:	be 2d 54 40 00       	mov    esi,0x40542d
  401e1a:	e8 81 fb ff ff       	call   4019a0 <fopen@plt>
  401e1f:	48 85 c0             	test   rax,rax
  401e22:	48 89 c7             	mov    rdi,rax
  401e25:	49 89 04 24          	mov    QWORD PTR [r12],rax
  401e29:	0f 85 bf fe ff ff    	jne    401cee <dlerror@plt+0x28e>
  401e2f:	bf 6b 54 40 00       	mov    edi,0x40546b
  401e34:	31 c0                	xor    eax,eax
  401e36:	31 ed                	xor    ebp,ebp
  401e38:	e8 93 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401e3d:	e9 14 ff ff ff       	jmp    401d56 <dlerror@plt+0x2f6>
  401e42:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401e48:	bf 30 54 40 00       	mov    edi,0x405430
  401e4d:	e8 7e 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401e52:	48 89 ef             	mov    rdi,rbp
  401e55:	31 ed                	xor    ebp,ebp
  401e57:	e8 b4 f7 ff ff       	call   401610 <free@plt>
  401e5c:	e9 f5 fe ff ff       	jmp    401d56 <dlerror@plt+0x2f6>
  401e61:	bf 20 55 40 00       	mov    edi,0x405520
  401e66:	31 c0                	xor    eax,eax
  401e68:	31 ed                	xor    ebp,ebp
  401e6a:	e8 61 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401e6f:	e9 e2 fe ff ff       	jmp    401d56 <dlerror@plt+0x2f6>
  401e74:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  401e79:	89 c6                	mov    esi,eax
  401e7b:	bf 68 55 40 00       	mov    edi,0x405568
  401e80:	31 c0                	xor    eax,eax
  401e82:	e8 49 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401e87:	48 89 ef             	mov    rdi,rbp
  401e8a:	31 ed                	xor    ebp,ebp
  401e8c:	e8 7f f7 ff ff       	call   401610 <free@plt>
  401e91:	49 8d 75 12          	lea    rsi,[r13+0x12]
  401e95:	bf 85 54 40 00       	mov    edi,0x405485
  401e9a:	31 c0                	xor    eax,eax
  401e9c:	e8 2f 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401ea1:	e9 b0 fe ff ff       	jmp    401d56 <dlerror@plt+0x2f6>
  401ea6:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  401eab:	89 c6                	mov    esi,eax
  401ead:	bf 50 54 40 00       	mov    edi,0x405450
  401eb2:	31 c0                	xor    eax,eax
  401eb4:	e8 17 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401eb9:	eb cc                	jmp    401e87 <dlerror@plt+0x427>
  401ebb:	bf 40 55 40 00       	mov    edi,0x405540
  401ec0:	31 c0                	xor    eax,eax
  401ec2:	e8 09 05 00 00       	call   4023d0 <dlerror@plt+0x970>
  401ec7:	eb be                	jmp    401e87 <dlerror@plt+0x427>
  401ec9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401ed0:	41 56                	push   r14
  401ed2:	41 55                	push   r13
  401ed4:	49 89 f6             	mov    r14,rsi
  401ed7:	41 54                	push   r12
  401ed9:	55                   	push   rbp
  401eda:	53                   	push   rbx
  401edb:	48 89 fb             	mov    rbx,rdi
  401ede:	e8 ed fd ff ff       	call   401cd0 <dlerror@plt+0x270>
  401ee3:	48 89 df             	mov    rdi,rbx
  401ee6:	48 89 c5             	mov    rbp,rax
  401ee9:	e8 c2 2c 00 00       	call   404bb0 <dlerror@plt+0x3150>
  401eee:	83 f8 ff             	cmp    eax,0xffffffff
  401ef1:	74 67                	je     401f5a <dlerror@plt+0x4fa>
  401ef3:	4d 8d 66 12          	lea    r12,[r14+0x12]
  401ef7:	48 8d bb 78 20 00 00 	lea    rdi,[rbx+0x2078]
  401efe:	4c 89 e6             	mov    rsi,r12
  401f01:	e8 2a 2f 00 00       	call   404e30 <dlerror@plt+0x33d0>
  401f06:	41 8b 5e 0c          	mov    ebx,DWORD PTR [r14+0xc]
  401f0a:	48 85 c0             	test   rax,rax
  401f0d:	49 89 c5             	mov    r13,rax
  401f10:	0f cb                	bswap  ebx
  401f12:	89 db                	mov    ebx,ebx
  401f14:	74 6d                	je     401f83 <dlerror@plt+0x523>
  401f16:	48 89 c1             	mov    rcx,rax
  401f19:	ba 01 00 00 00       	mov    edx,0x1
  401f1e:	48 89 de             	mov    rsi,rbx
  401f21:	48 89 ef             	mov    rdi,rbp
  401f24:	e8 e7 fa ff ff       	call   401a10 <fwrite@plt>
  401f29:	48 83 f8 01          	cmp    rax,0x1
  401f2d:	74 05                	je     401f34 <dlerror@plt+0x4d4>
  401f2f:	48 85 db             	test   rbx,rbx
  401f32:	75 34                	jne    401f68 <dlerror@plt+0x508>
  401f34:	4c 89 ef             	mov    rdi,r13
  401f37:	e8 54 f9 ff ff       	call   401890 <fileno@plt>
  401f3c:	be c0 01 00 00       	mov    esi,0x1c0
  401f41:	89 c7                	mov    edi,eax
  401f43:	e8 28 fa ff ff       	call   401970 <fchmod@plt>
  401f48:	4c 89 ef             	mov    rdi,r13
  401f4b:	e8 a0 f7 ff ff       	call   4016f0 <fclose@plt>
  401f50:	48 89 ef             	mov    rdi,rbp
  401f53:	e8 b8 f6 ff ff       	call   401610 <free@plt>
  401f58:	31 c0                	xor    eax,eax
  401f5a:	5b                   	pop    rbx
  401f5b:	5d                   	pop    rbp
  401f5c:	41 5c                	pop    r12
  401f5e:	41 5d                	pop    r13
  401f60:	41 5e                	pop    r14
  401f62:	c3                   	ret    
  401f63:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401f68:	31 c0                	xor    eax,eax
  401f6a:	4c 89 e2             	mov    rdx,r12
  401f6d:	be 88 55 40 00       	mov    esi,0x405588
  401f72:	bf bf 54 40 00       	mov    edi,0x4054bf
  401f77:	e8 24 05 00 00       	call   4024a0 <dlerror@plt+0xa40>
  401f7c:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401f81:	eb d7                	jmp    401f5a <dlerror@plt+0x4fa>
  401f83:	31 c0                	xor    eax,eax
  401f85:	4c 89 e2             	mov    rdx,r12
  401f88:	be 9d 54 40 00       	mov    esi,0x40549d
  401f8d:	bf b9 54 40 00       	mov    edi,0x4054b9
  401f92:	e8 09 05 00 00       	call   4024a0 <dlerror@plt+0xa40>
  401f97:	b8 ff ff ff ff       	mov    eax,0xffffffff
  401f9c:	eb bc                	jmp    401f5a <dlerror@plt+0x4fa>
  401f9e:	66 90                	xchg   ax,ax
  401fa0:	55                   	push   rbp
  401fa1:	53                   	push   rbx
  401fa2:	48 89 fb             	mov    rbx,rdi
  401fa5:	48 83 ec 08          	sub    rsp,0x8
  401fa9:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401fac:	48 85 ff             	test   rdi,rdi
  401faf:	0f 84 c3 00 00 00    	je     402078 <dlerror@plt+0x618>
  401fb5:	31 f6                	xor    esi,esi
  401fb7:	ba 02 00 00 00       	mov    edx,0x2
  401fbc:	e8 4f f9 ff ff       	call   401910 <fseek@plt>
  401fc1:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  401fc4:	e8 47 f8 ff ff       	call   401810 <ftell@plt>
  401fc9:	48 89 df             	mov    rdi,rbx
  401fcc:	89 c6                	mov    esi,eax
  401fce:	e8 9d fb ff ff       	call   401b70 <dlerror@plt+0x110>
  401fd3:	83 f8 ff             	cmp    eax,0xffffffff
  401fd6:	0f 84 bc 00 00 00    	je     402098 <dlerror@plt+0x638>
  401fdc:	8b 73 2c             	mov    esi,DWORD PTR [rbx+0x2c]
  401fdf:	8b 43 34             	mov    eax,DWORD PTR [rbx+0x34]
  401fe2:	31 d2                	xor    edx,edx
  401fe4:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  401fe7:	c7 83 7c 40 00 00 00 	mov    DWORD PTR [rbx+0x407c],0x0
  401fee:	00 00 00 
  401ff1:	0f ce                	bswap  esi
  401ff3:	03 73 08             	add    esi,DWORD PTR [rbx+0x8]
  401ff6:	0f c8                	bswap  eax
  401ff8:	89 05 5e 5a 20 00    	mov    DWORD PTR [rip+0x205a5e],eax        # 607a5c <stderr@@GLIBC_2.2.5+0xc>
  401ffe:	e8 0d f9 ff ff       	call   401910 <fseek@plt>
  402003:	8b 6b 30             	mov    ebp,DWORD PTR [rbx+0x30]
  402006:	0f cd                	bswap  ebp
  402008:	89 ed                	mov    ebp,ebp
  40200a:	48 89 ef             	mov    rdi,rbp
  40200d:	e8 ce f8 ff ff       	call   4018e0 <malloc@plt>
  402012:	48 85 c0             	test   rax,rax
  402015:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  402019:	0f 84 af 00 00 00    	je     4020ce <dlerror@plt+0x66e>
  40201f:	48 8b 0b             	mov    rcx,QWORD PTR [rbx]
  402022:	ba 01 00 00 00       	mov    edx,0x1
  402027:	48 89 ee             	mov    rsi,rbp
  40202a:	48 89 c7             	mov    rdi,rax
  40202d:	e8 6e f6 ff ff       	call   4016a0 <fread@plt>
  402032:	48 85 c0             	test   rax,rax
  402035:	74 69                	je     4020a0 <dlerror@plt+0x640>
  402037:	8b 43 30             	mov    eax,DWORD PTR [rbx+0x30]
  40203a:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  40203d:	0f c8                	bswap  eax
  40203f:	89 c0                	mov    eax,eax
  402041:	48 03 43 10          	add    rax,QWORD PTR [rbx+0x10]
  402045:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
  402049:	e8 42 f6 ff ff       	call   401690 <ferror@plt>
  40204e:	85 c0                	test   eax,eax
  402050:	89 c5                	mov    ebp,eax
  402052:	75 6c                	jne    4020c0 <dlerror@plt+0x660>
  402054:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  402057:	48 85 ff             	test   rdi,rdi
  40205a:	74 0c                	je     402068 <dlerror@plt+0x608>
  40205c:	e8 8f f6 ff ff       	call   4016f0 <fclose@plt>
  402061:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  402068:	48 83 c4 08          	add    rsp,0x8
  40206c:	89 e8                	mov    eax,ebp
  40206e:	5b                   	pop    rbx
  40206f:	5d                   	pop    rbp
  402070:	c3                   	ret    
  402071:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402078:	48 8d 7b 78          	lea    rdi,[rbx+0x78]
  40207c:	be 2d 54 40 00       	mov    esi,0x40542d
  402081:	e8 1a f9 ff ff       	call   4019a0 <fopen@plt>
  402086:	48 85 c0             	test   rax,rax
  402089:	48 89 c7             	mov    rdi,rax
  40208c:	48 89 03             	mov    QWORD PTR [rbx],rax
  40208f:	0f 85 20 ff ff ff    	jne    401fb5 <dlerror@plt+0x555>
  402095:	0f 1f 00             	nop    DWORD PTR [rax]
  402098:	bd ff ff ff ff       	mov    ebp,0xffffffff
  40209d:	eb c9                	jmp    402068 <dlerror@plt+0x608>
  40209f:	90                   	nop
  4020a0:	be cd 54 40 00       	mov    esi,0x4054cd
  4020a5:	bf e7 54 40 00       	mov    edi,0x4054e7
  4020aa:	bd ff ff ff ff       	mov    ebp,0xffffffff
  4020af:	e8 ec 03 00 00       	call   4024a0 <dlerror@plt+0xa40>
  4020b4:	eb b2                	jmp    402068 <dlerror@plt+0x608>
  4020b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4020bd:	00 00 00 
  4020c0:	bf ed 54 40 00       	mov    edi,0x4054ed
  4020c5:	31 c0                	xor    eax,eax
  4020c7:	e8 04 03 00 00       	call   4023d0 <dlerror@plt+0x970>
  4020cc:	eb ca                	jmp    402098 <dlerror@plt+0x638>
  4020ce:	be b0 55 40 00       	mov    esi,0x4055b0
  4020d3:	bf c6 54 40 00       	mov    edi,0x4054c6
  4020d8:	bd ff ff ff ff       	mov    ebp,0xffffffff
  4020dd:	e8 be 03 00 00       	call   4024a0 <dlerror@plt+0xa40>
  4020e2:	eb 84                	jmp    402068 <dlerror@plt+0x608>
  4020e4:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4020eb:	00 00 00 00 00 
  4020f0:	41 55                	push   r13
  4020f2:	41 54                	push   r12
  4020f4:	49 89 d4             	mov    r12,rdx
  4020f7:	55                   	push   rbp
  4020f8:	53                   	push   rbx
  4020f9:	48 89 f5             	mov    rbp,rsi
  4020fc:	48 89 fb             	mov    rbx,rdi
  4020ff:	be 00 10 00 00       	mov    esi,0x1000
  402104:	48 89 ef             	mov    rdi,rbp
  402107:	48 83 ec 08          	sub    rsp,0x8
  40210b:	e8 70 f6 ff ff       	call   401780 <strnlen@plt>
  402110:	be 00 10 00 00       	mov    esi,0x1000
  402115:	49 89 c5             	mov    r13,rax
  402118:	4c 89 e7             	mov    rdi,r12
  40211b:	e8 60 f6 ff ff       	call   401780 <strnlen@plt>
  402120:	49 8d 54 05 01       	lea    rdx,[r13+rax*1+0x1]
  402125:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40212a:	48 81 fa 00 10 00 00 	cmp    rdx,0x1000
  402131:	77 58                	ja     40218b <dlerror@plt+0x72b>
  402133:	48 8d 7b 78          	lea    rdi,[rbx+0x78]
  402137:	ba 00 10 00 00       	mov    edx,0x1000
  40213c:	48 89 ee             	mov    rsi,rbp
  40213f:	e8 5c f7 ff ff       	call   4018a0 <__stpcpy_chk@plt>
  402144:	4c 89 e6             	mov    rsi,r12
  402147:	4c 8d a3 78 10 00 00 	lea    r12,[rbx+0x1078]
  40214e:	ba 00 10 00 00       	mov    edx,0x1000
  402153:	48 89 c7             	mov    rdi,rax
  402156:	e8 e5 f7 ff ff       	call   401940 <__strcpy_chk@plt>
  40215b:	ba 00 10 00 00       	mov    edx,0x1000
  402160:	48 89 ee             	mov    rsi,rbp
  402163:	4c 89 e7             	mov    rdi,r12
  402166:	e8 d5 f7 ff ff       	call   401940 <__strcpy_chk@plt>
  40216b:	48 8d bb 78 30 00 00 	lea    rdi,[rbx+0x3078]
  402172:	c7 83 78 40 00 00 00 	mov    DWORD PTR [rbx+0x4078],0x0
  402179:	00 00 00 
  40217c:	ba 00 10 00 00       	mov    edx,0x1000
  402181:	4c 89 e6             	mov    rsi,r12
  402184:	e8 b7 f7 ff ff       	call   401940 <__strcpy_chk@plt>
  402189:	31 c0                	xor    eax,eax
  40218b:	48 83 c4 08          	add    rsp,0x8
  40218f:	5b                   	pop    rbx
  402190:	5d                   	pop    rbp
  402191:	41 5c                	pop    r12
  402193:	41 5d                	pop    r13
  402195:	c3                   	ret    
  402196:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40219d:	00 00 00 
  4021a0:	53                   	push   rbx
  4021a1:	48 89 fb             	mov    rbx,rdi
  4021a4:	e8 47 ff ff ff       	call   4020f0 <dlerror@plt+0x690>
  4021a9:	85 c0                	test   eax,eax
  4021ab:	75 20                	jne    4021cd <dlerror@plt+0x76d>
  4021ad:	48 89 df             	mov    rdi,rbx
  4021b0:	e8 eb fd ff ff       	call   401fa0 <dlerror@plt+0x540>
  4021b5:	85 c0                	test   eax,eax
  4021b7:	74 19                	je     4021d2 <dlerror@plt+0x772>
  4021b9:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  4021bc:	48 85 ff             	test   rdi,rdi
  4021bf:	74 0c                	je     4021cd <dlerror@plt+0x76d>
  4021c1:	e8 2a f5 ff ff       	call   4016f0 <fclose@plt>
  4021c6:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
  4021cd:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4021d2:	5b                   	pop    rbx
  4021d3:	c3                   	ret    
  4021d4:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4021db:	00 00 00 00 00 
  4021e0:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  4021e4:	c3                   	ret    
  4021e5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4021ec:	00 00 00 00 
  4021f0:	8b 06                	mov    eax,DWORD PTR [rsi]
  4021f2:	0f c8                	bswap  eax
  4021f4:	89 c0                	mov    eax,eax
  4021f6:	48 01 c6             	add    rsi,rax
  4021f9:	48 3b 77 18          	cmp    rsi,QWORD PTR [rdi+0x18]
  4021fd:	b8 00 00 00 00       	mov    eax,0x0
  402202:	48 0f 42 c6          	cmovb  rax,rsi
  402206:	c3                   	ret    
  402207:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40220e:	00 00 
  402210:	8b 47 34             	mov    eax,DWORD PTR [rdi+0x34]
  402213:	0f c8                	bswap  eax
  402215:	c3                   	ret    
  402216:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40221d:	00 00 00 
  402220:	48 85 ff             	test   rdi,rdi
  402223:	74 2b                	je     402250 <dlerror@plt+0x7f0>
  402225:	53                   	push   rbx
  402226:	48 89 fb             	mov    rbx,rdi
  402229:	48 8b 7f 10          	mov    rdi,QWORD PTR [rdi+0x10]
  40222d:	48 85 ff             	test   rdi,rdi
  402230:	74 05                	je     402237 <dlerror@plt+0x7d7>
  402232:	e8 d9 f3 ff ff       	call   401610 <free@plt>
  402237:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  40223a:	48 85 ff             	test   rdi,rdi
  40223d:	74 05                	je     402244 <dlerror@plt+0x7e4>
  40223f:	e8 ac f4 ff ff       	call   4016f0 <fclose@plt>
  402244:	48 89 df             	mov    rdi,rbx
  402247:	5b                   	pop    rbx
  402248:	e9 c3 f3 ff ff       	jmp    401610 <free@plt>
  40224d:	0f 1f 00             	nop    DWORD PTR [rax]
  402250:	f3 c3                	repz ret 
  402252:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  402259:	1f 84 00 00 00 00 00 
  402260:	41 56                	push   r14
  402262:	41 55                	push   r13
  402264:	49 89 fd             	mov    r13,rdi
  402267:	41 54                	push   r12
  402269:	55                   	push   rbp
  40226a:	49 89 f4             	mov    r12,rsi
  40226d:	53                   	push   rbx
  40226e:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
  402272:	48 89 f7             	mov    rdi,rsi
  402275:	e8 b6 f4 ff ff       	call   401730 <strlen@plt>
  40227a:	4d 8b 75 18          	mov    r14,QWORD PTR [r13+0x18]
  40227e:	48 63 e8             	movsxd rbp,eax
  402281:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402288:	4c 39 f3             	cmp    rbx,r14
  40228b:	73 2d                	jae    4022ba <dlerror@plt+0x85a>
  40228d:	80 7b 11 6f          	cmp    BYTE PTR [rbx+0x11],0x6f
  402291:	74 35                	je     4022c8 <dlerror@plt+0x868>
  402293:	8b 0b                	mov    ecx,DWORD PTR [rbx]
  402295:	0f c9                	bswap  ecx
  402297:	89 c9                	mov    ecx,ecx
  402299:	48 01 cb             	add    rbx,rcx
  40229c:	49 3b 5d 10          	cmp    rbx,QWORD PTR [r13+0x10]
  4022a0:	73 e6                	jae    402288 <dlerror@plt+0x828>
  4022a2:	31 c0                	xor    eax,eax
  4022a4:	bf 00 55 40 00       	mov    edi,0x405500
  4022a9:	e8 22 01 00 00       	call   4023d0 <dlerror@plt+0x970>
  4022ae:	49 8b 5d 18          	mov    rbx,QWORD PTR [r13+0x18]
  4022b2:	49 89 de             	mov    r14,rbx
  4022b5:	4c 39 f3             	cmp    rbx,r14
  4022b8:	72 d3                	jb     40228d <dlerror@plt+0x82d>
  4022ba:	5b                   	pop    rbx
  4022bb:	31 c0                	xor    eax,eax
  4022bd:	5d                   	pop    rbp
  4022be:	41 5c                	pop    r12
  4022c0:	41 5d                	pop    r13
  4022c2:	41 5e                	pop    r14
  4022c4:	c3                   	ret    
  4022c5:	0f 1f 00             	nop    DWORD PTR [rax]
  4022c8:	48 8d 7b 12          	lea    rdi,[rbx+0x12]
  4022cc:	48 89 ea             	mov    rdx,rbp
  4022cf:	4c 89 e6             	mov    rsi,r12
  4022d2:	e8 79 f3 ff ff       	call   401650 <strncmp@plt>
  4022d7:	85 c0                	test   eax,eax
  4022d9:	75 b8                	jne    402293 <dlerror@plt+0x833>
  4022db:	80 7c 2b 12 00       	cmp    BYTE PTR [rbx+rbp*1+0x12],0x0
  4022e0:	48 8d 54 2b 13       	lea    rdx,[rbx+rbp*1+0x13]
  4022e5:	48 8d 44 2b 12       	lea    rax,[rbx+rbp*1+0x12]
  4022ea:	5b                   	pop    rbx
  4022eb:	5d                   	pop    rbp
  4022ec:	41 5c                	pop    r12
  4022ee:	48 0f 45 c2          	cmovne rax,rdx
  4022f2:	41 5d                	pop    r13
  4022f4:	41 5e                	pop    r14
  4022f6:	c3                   	ret    
  4022f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4022fe:	00 00 
  402300:	48 89 fa             	mov    rdx,rdi
  402303:	48 8b 3d 46 57 20 00 	mov    rdi,QWORD PTR [rip+0x205746]        # 607a50 <stderr@@GLIBC_2.2.5>
  40230a:	48 89 f1             	mov    rcx,rsi
  40230d:	be 01 00 00 00       	mov    esi,0x1
  402312:	e9 09 f3 ff ff       	jmp    401620 <__vfprintf_chk@plt>
  402317:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40231e:	00 00 
  402320:	48 81 ec d8 00 00 00 	sub    rsp,0xd8
  402327:	84 c0                	test   al,al
  402329:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  40232e:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  402333:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  402338:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  40233d:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  402342:	74 37                	je     40237b <dlerror@plt+0x91b>
  402344:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  402349:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  40234e:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  402353:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  40235a:	00 
  40235b:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  402362:	00 
  402363:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  40236a:	00 
  40236b:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  402372:	00 
  402373:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  40237a:	00 
  40237b:	48 8d 84 24 e0 00 00 	lea    rax,[rsp+0xe0]
  402382:	00 
  402383:	48 89 fa             	mov    rdx,rdi
  402386:	48 8d 4c 24 08       	lea    rcx,[rsp+0x8]
  40238b:	be 01 00 00 00       	mov    esi,0x1
  402390:	48 8b 3d b9 56 20 00 	mov    rdi,QWORD PTR [rip+0x2056b9]        # 607a50 <stderr@@GLIBC_2.2.5>
  402397:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  40239c:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  4023a1:	c7 44 24 08 08 00 00 	mov    DWORD PTR [rsp+0x8],0x8
  4023a8:	00 
  4023a9:	c7 44 24 0c 30 00 00 	mov    DWORD PTR [rsp+0xc],0x30
  4023b0:	00 
  4023b1:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  4023b6:	e8 65 f2 ff ff       	call   401620 <__vfprintf_chk@plt>
  4023bb:	48 81 c4 d8 00 00 00 	add    rsp,0xd8
  4023c2:	c3                   	ret    
  4023c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4023ca:	84 00 00 00 00 00 
  4023d0:	53                   	push   rbx
  4023d1:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
  4023d8:	84 c0                	test   al,al
  4023da:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
  4023df:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  4023e4:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  4023e9:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  4023ee:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  4023f3:	74 37                	je     40242c <dlerror@plt+0x9cc>
  4023f5:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  4023fa:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  4023ff:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  402404:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  40240b:	00 
  40240c:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  402413:	00 
  402414:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  40241b:	00 
  40241c:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  402423:	00 
  402424:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  40242b:	00 
  40242c:	48 89 fb             	mov    rbx,rdi
  40242f:	e8 ac f2 ff ff       	call   4016e0 <getpid@plt>
  402434:	ba d3 55 40 00       	mov    edx,0x4055d3
  402439:	89 c1                	mov    ecx,eax
  40243b:	be 01 00 00 00       	mov    esi,0x1
  402440:	48 8b 3d 09 56 20 00 	mov    rdi,QWORD PTR [rip+0x205609]        # 607a50 <stderr@@GLIBC_2.2.5>
  402447:	31 c0                	xor    eax,eax
  402449:	e8 d2 f5 ff ff       	call   401a20 <__fprintf_chk@plt>
  40244e:	48 8d 84 24 e0 00 00 	lea    rax,[rsp+0xe0]
  402455:	00 
  402456:	48 8b 3d f3 55 20 00 	mov    rdi,QWORD PTR [rip+0x2055f3]        # 607a50 <stderr@@GLIBC_2.2.5>
  40245d:	48 8d 4c 24 08       	lea    rcx,[rsp+0x8]
  402462:	48 89 da             	mov    rdx,rbx
  402465:	be 01 00 00 00       	mov    esi,0x1
  40246a:	c7 44 24 08 08 00 00 	mov    DWORD PTR [rsp+0x8],0x8
  402471:	00 
  402472:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  402477:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  40247c:	c7 44 24 0c 30 00 00 	mov    DWORD PTR [rsp+0xc],0x30
  402483:	00 
  402484:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  402489:	e8 92 f1 ff ff       	call   401620 <__vfprintf_chk@plt>
  40248e:	48 81 c4 d0 00 00 00 	add    rsp,0xd0
  402495:	5b                   	pop    rbx
  402496:	c3                   	ret    
  402497:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40249e:	00 00 
  4024a0:	53                   	push   rbx
  4024a1:	48 89 fb             	mov    rbx,rdi
  4024a4:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
  4024ab:	84 c0                	test   al,al
  4024ad:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
  4024b2:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  4024b7:	4c 89 44 24 40       	mov    QWORD PTR [rsp+0x40],r8
  4024bc:	4c 89 4c 24 48       	mov    QWORD PTR [rsp+0x48],r9
  4024c1:	74 37                	je     4024fa <dlerror@plt+0xa9a>
  4024c3:	0f 29 44 24 50       	movaps XMMWORD PTR [rsp+0x50],xmm0
  4024c8:	0f 29 4c 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm1
  4024cd:	0f 29 54 24 70       	movaps XMMWORD PTR [rsp+0x70],xmm2
  4024d2:	0f 29 9c 24 80 00 00 	movaps XMMWORD PTR [rsp+0x80],xmm3
  4024d9:	00 
  4024da:	0f 29 a4 24 90 00 00 	movaps XMMWORD PTR [rsp+0x90],xmm4
  4024e1:	00 
  4024e2:	0f 29 ac 24 a0 00 00 	movaps XMMWORD PTR [rsp+0xa0],xmm5
  4024e9:	00 
  4024ea:	0f 29 b4 24 b0 00 00 	movaps XMMWORD PTR [rsp+0xb0],xmm6
  4024f1:	00 
  4024f2:	0f 29 bc 24 c0 00 00 	movaps XMMWORD PTR [rsp+0xc0],xmm7
  4024f9:	00 
  4024fa:	48 8d 84 24 e0 00 00 	lea    rax,[rsp+0xe0]
  402501:	00 
  402502:	48 8d 4c 24 08       	lea    rcx,[rsp+0x8]
  402507:	48 89 f2             	mov    rdx,rsi
  40250a:	be 01 00 00 00       	mov    esi,0x1
  40250f:	48 8b 3d 3a 55 20 00 	mov    rdi,QWORD PTR [rip+0x20553a]        # 607a50 <stderr@@GLIBC_2.2.5>
  402516:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  40251b:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
  402520:	c7 44 24 08 10 00 00 	mov    DWORD PTR [rsp+0x8],0x10
  402527:	00 
  402528:	c7 44 24 0c 30 00 00 	mov    DWORD PTR [rsp+0xc],0x30
  40252f:	00 
  402530:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  402535:	e8 e6 f0 ff ff       	call   401620 <__vfprintf_chk@plt>
  40253a:	48 89 df             	mov    rdi,rbx
  40253d:	e8 6e f4 ff ff       	call   4019b0 <perror@plt>
  402542:	48 81 c4 d0 00 00 00 	add    rsp,0xd0
  402549:	5b                   	pop    rbx
  40254a:	c3                   	ret    
  40254b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402550:	53                   	push   rbx
  402551:	48 89 fb             	mov    rbx,rdi
  402554:	48 81 ec 60 01 00 00 	sub    rsp,0x160
  40255b:	84 c0                	test   al,al
  40255d:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
  402564:	00 
  402565:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  40256c:	00 
  40256d:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  402574:	00 
  402575:	4c 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],r9
  40257c:	00 
  40257d:	74 40                	je     4025bf <dlerror@plt+0xb5f>
  40257f:	0f 29 84 24 e0 00 00 	movaps XMMWORD PTR [rsp+0xe0],xmm0
  402586:	00 
  402587:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  40258e:	00 
  40258f:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  402596:	00 
  402597:	0f 29 9c 24 10 01 00 	movaps XMMWORD PTR [rsp+0x110],xmm3
  40259e:	00 
  40259f:	0f 29 a4 24 20 01 00 	movaps XMMWORD PTR [rsp+0x120],xmm4
  4025a6:	00 
  4025a7:	0f 29 ac 24 30 01 00 	movaps XMMWORD PTR [rsp+0x130],xmm5
  4025ae:	00 
  4025af:	0f 29 b4 24 40 01 00 	movaps XMMWORD PTR [rsp+0x140],xmm6
  4025b6:	00 
  4025b7:	0f 29 bc 24 50 01 00 	movaps XMMWORD PTR [rsp+0x150],xmm7
  4025be:	00 
  4025bf:	48 8d 84 24 70 01 00 	lea    rax,[rsp+0x170]
  4025c6:	00 
  4025c7:	4c 8d 4c 24 08       	lea    r9,[rsp+0x8]
  4025cc:	49 89 f0             	mov    r8,rsi
  4025cf:	48 89 df             	mov    rdi,rbx
  4025d2:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
  4025d9:	ba 01 00 00 00       	mov    edx,0x1
  4025de:	be 00 10 00 00       	mov    esi,0x1000
  4025e3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  4025e8:	48 8d 84 24 b0 00 00 	lea    rax,[rsp+0xb0]
  4025ef:	00 
  4025f0:	c7 44 24 08 10 00 00 	mov    DWORD PTR [rsp+0x8],0x10
  4025f7:	00 
  4025f8:	c7 44 24 0c 30 00 00 	mov    DWORD PTR [rsp+0xc],0x30
  4025ff:	00 
  402600:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  402605:	e8 16 f3 ff ff       	call   401920 <__vsnprintf_chk@plt>
  40260a:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
  40260f:	48 89 de             	mov    rsi,rbx
  402612:	bf 01 00 00 00       	mov    edi,0x1
  402617:	e8 94 f2 ff ff       	call   4018b0 <__xstat@plt>
  40261c:	48 81 c4 60 01 00 00 	add    rsp,0x160
  402623:	5b                   	pop    rbx
  402624:	c3                   	ret    
  402625:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40262c:	00 00 00 00 
  402630:	41 56                	push   r14
  402632:	41 55                	push   r13
  402634:	49 89 fd             	mov    r13,rdi
  402637:	41 54                	push   r12
  402639:	55                   	push   rbp
  40263a:	ba 01 10 00 00       	mov    edx,0x1001
  40263f:	53                   	push   rbx
  402640:	48 81 ec 10 50 00 00 	sub    rsp,0x5010
  402647:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
  40264a:	48 8d bc 24 00 40 00 	lea    rdi,[rsp+0x4000]
  402651:	00 
  402652:	e8 e9 ef ff ff       	call   401640 <strncpy@plt>
  402657:	80 bc 24 00 50 00 00 	cmp    BYTE PTR [rsp+0x5000],0x0
  40265e:	00 
  40265f:	0f 85 22 02 00 00    	jne    402887 <dlerror@plt+0xe27>
  402665:	48 8d bc 24 00 40 00 	lea    rdi,[rsp+0x4000]
  40266c:	00 
  40266d:	be d9 55 40 00       	mov    esi,0x4055d9
  402672:	4c 8d a4 24 00 10 00 	lea    r12,[rsp+0x1000]
  402679:	00 
  40267a:	e8 41 f3 ff ff       	call   4019c0 <strtok@plt>
  40267f:	ba 00 10 00 00       	mov    edx,0x1000
  402684:	48 89 c6             	mov    rsi,rax
  402687:	48 89 e7             	mov    rdi,rsp
  40268a:	e8 b1 f2 ff ff       	call   401940 <__strcpy_chk@plt>
  40268f:	31 ff                	xor    edi,edi
  402691:	be d9 55 40 00       	mov    esi,0x4055d9
  402696:	e8 25 f3 ff ff       	call   4019c0 <strtok@plt>
  40269b:	ba 00 10 00 00       	mov    edx,0x1000
  4026a0:	48 89 c6             	mov    rsi,rax
  4026a3:	4c 89 e7             	mov    rdi,r12
  4026a6:	e8 95 f2 ff ff       	call   401940 <__strcpy_chk@plt>
  4026ab:	80 3c 24 00          	cmp    BYTE PTR [rsp],0x0
  4026af:	0f 84 d2 01 00 00    	je     402887 <dlerror@plt+0xe27>
  4026b5:	80 bc 24 00 10 00 00 	cmp    BYTE PTR [rsp+0x1000],0x0
  4026bc:	00 
  4026bd:	0f 84 c4 01 00 00    	je     402887 <dlerror@plt+0xe27>
  4026c3:	48 8d bc 24 00 40 00 	lea    rdi,[rsp+0x4000]
  4026ca:	00 
  4026cb:	48 89 e6             	mov    rsi,rsp
  4026ce:	48 8d ab 78 10 00 00 	lea    rbp,[rbx+0x1078]
  4026d5:	e8 e6 0a 00 00       	call   4031c0 <dlerror@plt+0x1760>
  4026da:	48 83 ec 08          	sub    rsp,0x8
  4026de:	41 b9 db 55 40 00    	mov    r9d,0x4055db
  4026e4:	48 89 ea             	mov    rdx,rbp
  4026e7:	41 54                	push   r12
  4026e9:	4c 89 c9             	mov    rcx,r9
  4026ec:	31 c0                	xor    eax,eax
  4026ee:	be e4 55 40 00       	mov    esi,0x4055e4
  4026f3:	4c 8d 84 24 10 40 00 	lea    r8,[rsp+0x4010]
  4026fa:	00 
  4026fb:	48 8d bc 24 10 20 00 	lea    rdi,[rsp+0x2010]
  402702:	00 
  402703:	e8 48 fe ff ff       	call   402550 <dlerror@plt+0xaf0>
  402708:	85 c0                	test   eax,eax
  40270a:	5a                   	pop    rdx
  40270b:	59                   	pop    rcx
  40270c:	75 4a                	jne    402758 <dlerror@plt+0xcf8>
  40270e:	48 89 df             	mov    rdi,rbx
  402711:	e8 9a 24 00 00       	call   404bb0 <dlerror@plt+0x3150>
  402716:	83 f8 ff             	cmp    eax,0xffffffff
  402719:	0f 84 91 02 00 00    	je     4029b0 <dlerror@plt+0xf50>
  40271f:	48 8d b3 78 20 00 00 	lea    rsi,[rbx+0x2078]
  402726:	48 8d bc 24 00 20 00 	lea    rdi,[rsp+0x2000]
  40272d:	00 
  40272e:	4c 89 e2             	mov    rdx,r12
  402731:	e8 ba 28 00 00       	call   404ff0 <dlerror@plt+0x3590>
  402736:	83 f8 ff             	cmp    eax,0xffffffff
  402739:	0f 84 71 02 00 00    	je     4029b0 <dlerror@plt+0xf50>
  40273f:	31 c0                	xor    eax,eax
  402741:	48 81 c4 10 50 00 00 	add    rsp,0x5010
  402748:	5b                   	pop    rbx
  402749:	5d                   	pop    rbp
  40274a:	41 5c                	pop    r12
  40274c:	41 5d                	pop    r13
  40274e:	41 5e                	pop    r14
  402750:	c3                   	ret    
  402751:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402758:	48 83 ec 08          	sub    rsp,0x8
  40275c:	41 b9 db 55 40 00    	mov    r9d,0x4055db
  402762:	41 b8 dd 55 40 00    	mov    r8d,0x4055dd
  402768:	41 54                	push   r12
  40276a:	68 db 55 40 00       	push   0x4055db
  40276f:	4c 89 c9             	mov    rcx,r9
  402772:	48 89 ea             	mov    rdx,rbp
  402775:	be e0 55 40 00       	mov    esi,0x4055e0
  40277a:	48 8d 84 24 18 40 00 	lea    rax,[rsp+0x4018]
  402781:	00 
  402782:	50                   	push   rax
  402783:	31 c0                	xor    eax,eax
  402785:	48 8d bc 24 20 20 00 	lea    rdi,[rsp+0x2020]
  40278c:	00 
  40278d:	e8 be fd ff ff       	call   402550 <dlerror@plt+0xaf0>
  402792:	48 83 c4 20          	add    rsp,0x20
  402796:	85 c0                	test   eax,eax
  402798:	0f 84 70 ff ff ff    	je     40270e <dlerror@plt+0xcae>
  40279e:	48 8d bc 24 00 30 00 	lea    rdi,[rsp+0x3000]
  4027a5:	00 
  4027a6:	31 c0                	xor    eax,eax
  4027a8:	49 89 e0             	mov    r8,rsp
  4027ab:	b9 db 55 40 00       	mov    ecx,0x4055db
  4027b0:	48 89 ea             	mov    rdx,rbp
  4027b3:	be ef 55 40 00       	mov    esi,0x4055ef
  4027b8:	e8 93 fd ff ff       	call   402550 <dlerror@plt+0xaf0>
  4027bd:	85 c0                	test   eax,eax
  4027bf:	0f 85 db 00 00 00    	jne    4028a0 <dlerror@plt+0xe40>
  4027c5:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
  4027c9:	e8 e2 23 00 00       	call   404bb0 <dlerror@plt+0x3150>
  4027ce:	83 f8 ff             	cmp    eax,0xffffffff
  4027d1:	0f 84 19 01 00 00    	je     4028f0 <dlerror@plt+0xe90>
  4027d7:	49 8b 5d 08          	mov    rbx,QWORD PTR [r13+0x8]
  4027db:	49 8d 6d 10          	lea    rbp,[r13+0x10]
  4027df:	4d 8d 75 08          	lea    r14,[r13+0x8]
  4027e3:	48 85 db             	test   rbx,rbx
  4027e6:	75 1c                	jne    402804 <dlerror@plt+0xda4>
  4027e8:	e9 23 01 00 00       	jmp    402910 <dlerror@plt+0xeb0>
  4027ed:	0f 1f 00             	nop    DWORD PTR [rax]
  4027f0:	49 89 ee             	mov    r14,rbp
  4027f3:	48 83 c5 08          	add    rbp,0x8
  4027f7:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  4027fb:	48 85 db             	test   rbx,rbx
  4027fe:	0f 84 0c 01 00 00    	je     402910 <dlerror@plt+0xeb0>
  402804:	48 8d 7b 78          	lea    rdi,[rbx+0x78]
  402808:	48 8d b4 24 00 30 00 	lea    rsi,[rsp+0x3000]
  40280f:	00 
  402810:	e8 db ef ff ff       	call   4017f0 <strcmp@plt>
  402815:	85 c0                	test   eax,eax
  402817:	75 d7                	jne    4027f0 <dlerror@plt+0xd90>
  402819:	48 8b 6b 10          	mov    rbp,QWORD PTR [rbx+0x10]
  40281d:	48 3b 6b 18          	cmp    rbp,QWORD PTR [rbx+0x18]
  402821:	0f 83 18 ff ff ff    	jae    40273f <dlerror@plt+0xcdf>
  402827:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40282e:	00 00 
  402830:	48 8d 7d 12          	lea    rdi,[rbp+0x12]
  402834:	4c 89 e6             	mov    rsi,r12
  402837:	e8 b4 ef ff ff       	call   4017f0 <strcmp@plt>
  40283c:	85 c0                	test   eax,eax
  40283e:	75 0f                	jne    40284f <dlerror@plt+0xdef>
  402840:	48 89 ee             	mov    rsi,rbp
  402843:	48 89 df             	mov    rdi,rbx
  402846:	e8 85 f6 ff ff       	call   401ed0 <dlerror@plt+0x470>
  40284b:	85 c0                	test   eax,eax
  40284d:	75 21                	jne    402870 <dlerror@plt+0xe10>
  40284f:	48 89 ee             	mov    rsi,rbp
  402852:	48 89 df             	mov    rdi,rbx
  402855:	e8 46 f4 ff ff       	call   401ca0 <dlerror@plt+0x240>
  40285a:	48 3b 43 18          	cmp    rax,QWORD PTR [rbx+0x18]
  40285e:	48 89 c5             	mov    rbp,rax
  402861:	72 cd                	jb     402830 <dlerror@plt+0xdd0>
  402863:	e9 d7 fe ff ff       	jmp    40273f <dlerror@plt+0xcdf>
  402868:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40286f:	00 
  402870:	bf 48 56 40 00       	mov    edi,0x405648
  402875:	4c 89 e6             	mov    rsi,r12
  402878:	31 c0                	xor    eax,eax
  40287a:	e8 51 fb ff ff       	call   4023d0 <dlerror@plt+0x970>
  40287f:	48 89 df             	mov    rdi,rbx
  402882:	e8 89 ed ff ff       	call   401610 <free@plt>
  402887:	48 81 c4 10 50 00 00 	add    rsp,0x5010
  40288e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402893:	5b                   	pop    rbx
  402894:	5d                   	pop    rbp
  402895:	41 5c                	pop    r12
  402897:	41 5d                	pop    r13
  402899:	41 5e                	pop    r14
  40289b:	c3                   	ret    
  40289c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4028a0:	48 8d bc 24 00 30 00 	lea    rdi,[rsp+0x3000]
  4028a7:	00 
  4028a8:	31 c0                	xor    eax,eax
  4028aa:	49 89 e0             	mov    r8,rsp
  4028ad:	b9 db 55 40 00       	mov    ecx,0x4055db
  4028b2:	48 89 ea             	mov    rdx,rbp
  4028b5:	be fa 55 40 00       	mov    esi,0x4055fa
  4028ba:	e8 91 fc ff ff       	call   402550 <dlerror@plt+0xaf0>
  4028bf:	85 c0                	test   eax,eax
  4028c1:	0f 84 fe fe ff ff    	je     4027c5 <dlerror@plt+0xd65>
  4028c7:	48 8d bc 24 00 30 00 	lea    rdi,[rsp+0x3000]
  4028ce:	00 
  4028cf:	31 c0                	xor    eax,eax
  4028d1:	49 89 e0             	mov    r8,rsp
  4028d4:	b9 db 55 40 00       	mov    ecx,0x4055db
  4028d9:	48 89 ea             	mov    rdx,rbp
  4028dc:	be e8 55 40 00       	mov    esi,0x4055e8
  4028e1:	e8 6a fc ff ff       	call   402550 <dlerror@plt+0xaf0>
  4028e6:	85 c0                	test   eax,eax
  4028e8:	0f 84 d7 fe ff ff    	je     4027c5 <dlerror@plt+0xd65>
  4028ee:	66 90                	xchg   ax,ax
  4028f0:	48 8d b4 24 00 30 00 	lea    rsi,[rsp+0x3000]
  4028f7:	00 
  4028f8:	31 c0                	xor    eax,eax
  4028fa:	bf 05 56 40 00       	mov    edi,0x405605
  4028ff:	e8 cc fa ff ff       	call   4023d0 <dlerror@plt+0x970>
  402904:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402909:	e9 33 fe ff ff       	jmp    402741 <dlerror@plt+0xce1>
  40290e:	66 90                	xchg   ax,ax
  402910:	bf 90 40 00 00       	mov    edi,0x4090
  402915:	e8 c6 ef ff ff       	call   4018e0 <malloc@plt>
  40291a:	48 85 c0             	test   rax,rax
  40291d:	48 89 c3             	mov    rbx,rax
  402920:	0f 84 e9 00 00 00    	je     402a0f <dlerror@plt+0xfaf>
  402926:	48 8d 78 78          	lea    rdi,[rax+0x78]
  40292a:	48 8d b4 24 00 30 00 	lea    rsi,[rsp+0x3000]
  402931:	00 
  402932:	ba 00 10 00 00       	mov    edx,0x1000
  402937:	e8 04 ed ff ff       	call   401640 <strncpy@plt>
  40293c:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
  402940:	48 8d bb 78 10 00 00 	lea    rdi,[rbx+0x1078]
  402947:	ba 00 10 00 00       	mov    edx,0x1000
  40294c:	48 8d b5 78 10 00 00 	lea    rsi,[rbp+0x1078]
  402953:	e8 e8 ec ff ff       	call   401640 <strncpy@plt>
  402958:	48 8d b5 78 20 00 00 	lea    rsi,[rbp+0x2078]
  40295f:	48 8d bb 78 20 00 00 	lea    rdi,[rbx+0x2078]
  402966:	ba 00 10 00 00       	mov    edx,0x1000
  40296b:	e8 d0 ec ff ff       	call   401640 <strncpy@plt>
  402970:	80 bb 77 10 00 00 00 	cmp    BYTE PTR [rbx+0x1077],0x0
  402977:	75 57                	jne    4029d0 <dlerror@plt+0xf70>
  402979:	80 bb 77 20 00 00 00 	cmp    BYTE PTR [rbx+0x2077],0x0
  402980:	75 4e                	jne    4029d0 <dlerror@plt+0xf70>
  402982:	80 bb 77 30 00 00 00 	cmp    BYTE PTR [rbx+0x3077],0x0
  402989:	75 45                	jne    4029d0 <dlerror@plt+0xf70>
  40298b:	8b 85 78 40 00 00    	mov    eax,DWORD PTR [rbp+0x4078]
  402991:	48 89 df             	mov    rdi,rbx
  402994:	89 83 78 40 00 00    	mov    DWORD PTR [rbx+0x4078],eax
  40299a:	e8 01 f6 ff ff       	call   401fa0 <dlerror@plt+0x540>
  40299f:	85 c0                	test   eax,eax
  4029a1:	75 46                	jne    4029e9 <dlerror@plt+0xf89>
  4029a3:	49 89 1e             	mov    QWORD PTR [r14],rbx
  4029a6:	e9 6e fe ff ff       	jmp    402819 <dlerror@plt+0xdb9>
  4029ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4029b0:	31 c0                	xor    eax,eax
  4029b2:	4c 89 e6             	mov    rsi,r12
  4029b5:	bf 36 56 40 00       	mov    edi,0x405636
  4029ba:	e8 11 fa ff ff       	call   4023d0 <dlerror@plt+0x970>
  4029bf:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4029c4:	e9 78 fd ff ff       	jmp    402741 <dlerror@plt+0xce1>
  4029c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4029d0:	bf d0 56 40 00       	mov    edi,0x4056d0
  4029d5:	31 c0                	xor    eax,eax
  4029d7:	e8 f4 f9 ff ff       	call   4023d0 <dlerror@plt+0x970>
  4029dc:	48 89 df             	mov    rdi,rbx
  4029df:	e8 2c ec ff ff       	call   401610 <free@plt>
  4029e4:	e9 07 ff ff ff       	jmp    4028f0 <dlerror@plt+0xe90>
  4029e9:	48 8d 94 24 00 30 00 	lea    rdx,[rsp+0x3000]
  4029f0:	00 
  4029f1:	be 1c 56 40 00       	mov    esi,0x40561c
  4029f6:	bf c6 54 40 00       	mov    edi,0x4054c6
  4029fb:	31 c0                	xor    eax,eax
  4029fd:	e8 9e fa ff ff       	call   4024a0 <dlerror@plt+0xa40>
  402a02:	48 89 df             	mov    rdi,rbx
  402a05:	e8 06 ec ff ff       	call   401610 <free@plt>
  402a0a:	e9 e1 fe ff ff       	jmp    4028f0 <dlerror@plt+0xe90>
  402a0f:	be a8 56 40 00       	mov    esi,0x4056a8
  402a14:	bf c6 54 40 00       	mov    edi,0x4054c6
  402a19:	31 c0                	xor    eax,eax
  402a1b:	e8 80 fa ff ff       	call   4024a0 <dlerror@plt+0xa40>
  402a20:	e9 cb fe ff ff       	jmp    4028f0 <dlerror@plt+0xe90>
  402a25:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  402a2c:	00 00 00 00 
  402a30:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  402a34:	48 3b 47 18          	cmp    rax,QWORD PTR [rdi+0x18]
  402a38:	73 6d                	jae    402aa7 <dlerror@plt+0x1047>
  402a3a:	0f b6 50 11          	movzx  edx,BYTE PTR [rax+0x11]
  402a3e:	80 fa 64             	cmp    dl,0x64
  402a41:	40 0f 94 c6          	sete   sil
  402a45:	80 fa 78             	cmp    dl,0x78
  402a48:	0f 94 c1             	sete   cl
  402a4b:	40 08 ce             	or     sil,cl
  402a4e:	75 5a                	jne    402aaa <dlerror@plt+0x104a>
  402a50:	53                   	push   rbx
  402a51:	48 89 fb             	mov    rbx,rdi
  402a54:	eb 20                	jmp    402a76 <dlerror@plt+0x1016>
  402a56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402a5d:	00 00 00 
  402a60:	0f b6 50 11          	movzx  edx,BYTE PTR [rax+0x11]
  402a64:	80 fa 64             	cmp    dl,0x64
  402a67:	40 0f 94 c6          	sete   sil
  402a6b:	80 fa 78             	cmp    dl,0x78
  402a6e:	0f 94 c1             	sete   cl
  402a71:	40 08 ce             	or     sil,cl
  402a74:	75 2a                	jne    402aa0 <dlerror@plt+0x1040>
  402a76:	83 ea 5a             	sub    edx,0x5a
  402a79:	81 e2 f7 00 00 00    	and    edx,0xf7
  402a7f:	74 1f                	je     402aa0 <dlerror@plt+0x1040>
  402a81:	48 89 c6             	mov    rsi,rax
  402a84:	48 89 df             	mov    rdi,rbx
  402a87:	e8 14 f2 ff ff       	call   401ca0 <dlerror@plt+0x240>
  402a8c:	48 39 43 18          	cmp    QWORD PTR [rbx+0x18],rax
  402a90:	77 ce                	ja     402a60 <dlerror@plt+0x1000>
  402a92:	31 c0                	xor    eax,eax
  402a94:	5b                   	pop    rbx
  402a95:	c3                   	ret    
  402a96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402a9d:	00 00 00 
  402aa0:	b8 01 00 00 00       	mov    eax,0x1
  402aa5:	5b                   	pop    rbx
  402aa6:	c3                   	ret    
  402aa7:	31 c0                	xor    eax,eax
  402aa9:	c3                   	ret    
  402aaa:	b8 01 00 00 00       	mov    eax,0x1
  402aaf:	c3                   	ret    
  402ab0:	41 54                	push   r12
  402ab2:	55                   	push   rbp
  402ab3:	49 89 fc             	mov    r12,rdi
  402ab6:	53                   	push   rbx
  402ab7:	31 c0                	xor    eax,eax
  402ab9:	b9 14 00 00 00       	mov    ecx,0x14
  402abe:	48 81 ec a0 00 00 00 	sub    rsp,0xa0
  402ac5:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
  402ac9:	49 3b 5c 24 18       	cmp    rbx,QWORD PTR [r12+0x18]
  402ace:	48 89 e7             	mov    rdi,rsp
  402ad1:	48 89 e5             	mov    rbp,rsp
  402ad4:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  402ad7:	4c 89 24 24          	mov    QWORD PTR [rsp],r12
  402adb:	72 28                	jb     402b05 <dlerror@plt+0x10a5>
  402add:	e9 9f 00 00 00       	jmp    402b81 <dlerror@plt+0x1121>
  402ae2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402ae8:	3c 78                	cmp    al,0x78
  402aea:	74 28                	je     402b14 <dlerror@plt+0x10b4>
  402aec:	3c 64                	cmp    al,0x64
  402aee:	74 40                	je     402b30 <dlerror@plt+0x10d0>
  402af0:	48 89 de             	mov    rsi,rbx
  402af3:	4c 89 e7             	mov    rdi,r12
  402af6:	e8 a5 f1 ff ff       	call   401ca0 <dlerror@plt+0x240>
  402afb:	49 39 44 24 18       	cmp    QWORD PTR [r12+0x18],rax
  402b00:	48 89 c3             	mov    rbx,rax
  402b03:	76 43                	jbe    402b48 <dlerror@plt+0x10e8>
  402b05:	0f b6 43 11          	movzx  eax,BYTE PTR [rbx+0x11]
  402b09:	8d 50 a6             	lea    edx,[rax-0x5a]
  402b0c:	81 e2 f7 00 00 00    	and    edx,0xf7
  402b12:	75 d4                	jne    402ae8 <dlerror@plt+0x1088>
  402b14:	48 89 de             	mov    rsi,rbx
  402b17:	4c 89 e7             	mov    rdi,r12
  402b1a:	e8 b1 f3 ff ff       	call   401ed0 <dlerror@plt+0x470>
  402b1f:	85 c0                	test   eax,eax
  402b21:	74 cd                	je     402af0 <dlerror@plt+0x1090>
  402b23:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402b28:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
  402b2e:	eb 20                	jmp    402b50 <dlerror@plt+0x10f0>
  402b30:	48 8d 73 12          	lea    rsi,[rbx+0x12]
  402b34:	48 89 ef             	mov    rdi,rbp
  402b37:	e8 f4 fa ff ff       	call   402630 <dlerror@plt+0xbd0>
  402b3c:	83 f8 ff             	cmp    eax,0xffffffff
  402b3f:	75 af                	jne    402af0 <dlerror@plt+0x1090>
  402b41:	eb e0                	jmp    402b23 <dlerror@plt+0x10c3>
  402b43:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402b48:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402b4d:	45 31 e4             	xor    r12d,r12d
  402b50:	48 85 ff             	test   rdi,rdi
  402b53:	48 8d 5d 10          	lea    rbx,[rbp+0x10]
  402b57:	74 19                	je     402b72 <dlerror@plt+0x1112>
  402b59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402b60:	48 83 c3 08          	add    rbx,0x8
  402b64:	e8 b7 f6 ff ff       	call   402220 <dlerror@plt+0x7c0>
  402b69:	48 8b 7b f8          	mov    rdi,QWORD PTR [rbx-0x8]
  402b6d:	48 85 ff             	test   rdi,rdi
  402b70:	75 ee                	jne    402b60 <dlerror@plt+0x1100>
  402b72:	48 81 c4 a0 00 00 00 	add    rsp,0xa0
  402b79:	44 89 e0             	mov    eax,r12d
  402b7c:	5b                   	pop    rbx
  402b7d:	5d                   	pop    rbp
  402b7e:	41 5c                	pop    r12
  402b80:	c3                   	ret    
  402b81:	45 31 e4             	xor    r12d,r12d
  402b84:	eb ec                	jmp    402b72 <dlerror@plt+0x1112>
  402b86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402b8d:	00 00 00 
  402b90:	41 57                	push   r15
  402b92:	41 56                	push   r14
  402b94:	41 55                	push   r13
  402b96:	41 54                	push   r12
  402b98:	55                   	push   rbp
  402b99:	53                   	push   rbx
  402b9a:	48 89 fd             	mov    rbp,rdi
  402b9d:	48 81 ec 18 10 00 00 	sub    rsp,0x1018
  402ba4:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
  402ba8:	bf 5d 56 40 00       	mov    edi,0x40565d
  402bad:	ff 15 65 4f 20 00    	call   QWORD PTR [rip+0x204f65]        # 607b18 <stderr@@GLIBC_2.2.5+0xc8>
  402bb3:	48 85 c0             	test   rax,rax
  402bb6:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  402bbb:	0f 84 64 01 00 00    	je     402d25 <dlerror@plt+0x12c5>
  402bc1:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402bc6:	ff 15 1c 4f 20 00    	call   QWORD PTR [rip+0x204f1c]        # 607ae8 <stderr@@GLIBC_2.2.5+0x98>
  402bcc:	48 85 c0             	test   rax,rax
  402bcf:	49 89 c6             	mov    r14,rax
  402bd2:	0f 84 5e 01 00 00    	je     402d36 <dlerror@plt+0x12d6>
  402bd8:	48 3b 5d 18          	cmp    rbx,QWORD PTR [rbp+0x18]
  402bdc:	72 22                	jb     402c00 <dlerror@plt+0x11a0>
  402bde:	e9 e5 00 00 00       	jmp    402cc8 <dlerror@plt+0x1268>
  402be3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402be8:	48 89 de             	mov    rsi,rbx
  402beb:	48 89 ef             	mov    rdi,rbp
  402bee:	e8 ad f0 ff ff       	call   401ca0 <dlerror@plt+0x240>
  402bf3:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
  402bf7:	48 89 c3             	mov    rbx,rax
  402bfa:	0f 86 c8 00 00 00    	jbe    402cc8 <dlerror@plt+0x1268>
  402c00:	80 7b 11 73          	cmp    BYTE PTR [rbx+0x11],0x73
  402c04:	75 e2                	jne    402be8 <dlerror@plt+0x1188>
  402c06:	4c 8d 63 12          	lea    r12,[rbx+0x12]
  402c0a:	48 89 de             	mov    rsi,rbx
  402c0d:	48 89 ef             	mov    rdi,rbp
  402c10:	e8 bb f0 ff ff       	call   401cd0 <dlerror@plt+0x270>
  402c15:	be 00 10 00 00       	mov    esi,0x1000
  402c1a:	4c 89 e7             	mov    rdi,r12
  402c1d:	49 89 c5             	mov    r13,rax
  402c20:	e8 5b eb ff ff       	call   401780 <strnlen@plt>
  402c25:	48 3d fb 0f 00 00    	cmp    rax,0xffb
  402c2b:	0f 87 ab 00 00 00    	ja     402cdc <dlerror@plt+0x127c>
  402c31:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  402c36:	ba 00 10 00 00       	mov    edx,0x1000
  402c3b:	4c 89 e6             	mov    rsi,r12
  402c3e:	e8 5d ec ff ff       	call   4018a0 <__stpcpy_chk@plt>
  402c43:	c7 00 2e 70 79 00    	mov    DWORD PTR [rax],0x79702e
  402c49:	8b 05 11 51 21 00    	mov    eax,DWORD PTR [rip+0x215111]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  402c4f:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
  402c54:	85 c0                	test   eax,eax
  402c56:	74 60                	je     402cb8 <dlerror@plt+0x1258>
  402c58:	ff 15 6a 4e 20 00    	call   QWORD PTR [rip+0x204e6a]        # 607ac8 <stderr@@GLIBC_2.2.5+0x78>
  402c5e:	49 89 c7             	mov    r15,rax
  402c61:	4c 89 fa             	mov    rdx,r15
  402c64:	be 7d 56 40 00       	mov    esi,0x40567d
  402c69:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  402c6e:	ff 15 64 4e 20 00    	call   QWORD PTR [rip+0x204e64]        # 607ad8 <stderr@@GLIBC_2.2.5+0x88>
  402c74:	4c 89 ff             	mov    rdi,r15
  402c77:	ff 15 fb 4e 20 00    	call   QWORD PTR [rip+0x204efb]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  402c7d:	8b 73 0c             	mov    esi,DWORD PTR [rbx+0xc]
  402c80:	4c 89 ef             	mov    rdi,r13
  402c83:	0f ce                	bswap  esi
  402c85:	89 f6                	mov    esi,esi
  402c87:	ff 15 d3 4d 20 00    	call   QWORD PTR [rip+0x204dd3]        # 607a60 <stderr@@GLIBC_2.2.5+0x10>
  402c8d:	48 85 c0             	test   rax,rax
  402c90:	74 5d                	je     402cef <dlerror@plt+0x128f>
  402c92:	4c 89 f2             	mov    rdx,r14
  402c95:	4c 89 f6             	mov    rsi,r14
  402c98:	48 89 c7             	mov    rdi,rax
  402c9b:	ff 15 c7 4d 20 00    	call   QWORD PTR [rip+0x204dc7]        # 607a68 <stderr@@GLIBC_2.2.5+0x18>
  402ca1:	48 85 c0             	test   rax,rax
  402ca4:	74 63                	je     402d09 <dlerror@plt+0x12a9>
  402ca6:	4c 89 ef             	mov    rdi,r13
  402ca9:	e8 62 e9 ff ff       	call   401610 <free@plt>
  402cae:	e9 35 ff ff ff       	jmp    402be8 <dlerror@plt+0x1188>
  402cb3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402cb8:	ff 15 da 4d 20 00    	call   QWORD PTR [rip+0x204dda]        # 607a98 <stderr@@GLIBC_2.2.5+0x48>
  402cbe:	49 89 c7             	mov    r15,rax
  402cc1:	eb 9e                	jmp    402c61 <dlerror@plt+0x1201>
  402cc3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402cc8:	31 c0                	xor    eax,eax
  402cca:	48 81 c4 18 10 00 00 	add    rsp,0x1018
  402cd1:	5b                   	pop    rbx
  402cd2:	5d                   	pop    rbp
  402cd3:	41 5c                	pop    r12
  402cd5:	41 5d                	pop    r13
  402cd7:	41 5e                	pop    r14
  402cd9:	41 5f                	pop    r15
  402cdb:	c3                   	ret    
  402cdc:	31 c0                	xor    eax,eax
  402cde:	bf 66 56 40 00       	mov    edi,0x405666
  402ce3:	e8 e8 f6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  402ce8:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402ced:	eb db                	jmp    402cca <dlerror@plt+0x126a>
  402cef:	4c 89 e6             	mov    rsi,r12
  402cf2:	bf 38 57 40 00       	mov    edi,0x405738
  402cf7:	e8 d4 f6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  402cfc:	ff 15 1e 4e 20 00    	call   QWORD PTR [rip+0x204e1e]        # 607b20 <stderr@@GLIBC_2.2.5+0xd0>
  402d02:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402d07:	eb c1                	jmp    402cca <dlerror@plt+0x126a>
  402d09:	ff 15 11 4e 20 00    	call   QWORD PTR [rip+0x204e11]        # 607b20 <stderr@@GLIBC_2.2.5+0xd0>
  402d0f:	31 c0                	xor    eax,eax
  402d11:	4c 89 e6             	mov    rsi,r12
  402d14:	bf 86 56 40 00       	mov    edi,0x405686
  402d19:	e8 b2 f6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  402d1e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402d23:	eb a5                	jmp    402cca <dlerror@plt+0x126a>
  402d25:	bf f0 56 40 00       	mov    edi,0x4056f0
  402d2a:	e8 a1 f6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  402d2f:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402d34:	eb 94                	jmp    402cca <dlerror@plt+0x126a>
  402d36:	31 c0                	xor    eax,eax
  402d38:	bf 10 57 40 00       	mov    edi,0x405710
  402d3d:	e8 8e f6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  402d42:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402d47:	eb 81                	jmp    402cca <dlerror@plt+0x126a>
  402d49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  402d50:	41 54                	push   r12
  402d52:	49 89 f4             	mov    r12,rsi
  402d55:	55                   	push   rbp
  402d56:	53                   	push   rbx
  402d57:	48 89 fb             	mov    rbx,rdi
  402d5a:	bf 5d 56 40 00       	mov    edi,0x40565d
  402d5f:	ff 15 b3 4d 20 00    	call   QWORD PTR [rip+0x204db3]        # 607b18 <stderr@@GLIBC_2.2.5+0xc8>
  402d65:	48 85 c0             	test   rax,rax
  402d68:	0f 84 b2 00 00 00    	je     402e20 <dlerror@plt+0x13c0>
  402d6e:	48 89 c7             	mov    rdi,rax
  402d71:	ff 15 71 4d 20 00    	call   QWORD PTR [rip+0x204d71]        # 607ae8 <stderr@@GLIBC_2.2.5+0x98>
  402d77:	48 89 de             	mov    rsi,rbx
  402d7a:	48 89 c7             	mov    rdi,rax
  402d7d:	ff 15 b5 4d 20 00    	call   QWORD PTR [rip+0x204db5]        # 607b38 <stderr@@GLIBC_2.2.5+0xe8>
  402d83:	48 85 c0             	test   rax,rax
  402d86:	48 89 c3             	mov    rbx,rax
  402d89:	0f 84 a1 00 00 00    	je     402e30 <dlerror@plt+0x13d0>
  402d8f:	48 89 c7             	mov    rdi,rax
  402d92:	be b8 54 40 00       	mov    esi,0x4054b8
  402d97:	31 c0                	xor    eax,eax
  402d99:	ff 15 41 4d 20 00    	call   QWORD PTR [rip+0x204d41]        # 607ae0 <stderr@@GLIBC_2.2.5+0x90>
  402d9f:	48 85 c0             	test   rax,rax
  402da2:	48 89 c5             	mov    rbp,rax
  402da5:	0f 84 95 00 00 00    	je     402e40 <dlerror@plt+0x13e0>
  402dab:	ff 15 7f 4d 20 00    	call   QWORD PTR [rip+0x204d7f]        # 607b30 <stderr@@GLIBC_2.2.5+0xe0>
  402db1:	48 89 ef             	mov    rdi,rbp
  402db4:	ff 15 36 4d 20 00    	call   QWORD PTR [rip+0x204d36]        # 607af0 <stderr@@GLIBC_2.2.5+0xa0>
  402dba:	41 89 04 24          	mov    DWORD PTR [r12],eax
  402dbe:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
  402dc4:	ff 15 5e 4d 20 00    	call   QWORD PTR [rip+0x204d5e]        # 607b28 <stderr@@GLIBC_2.2.5+0xd8>
  402dca:	48 85 c0             	test   rax,rax
  402dcd:	74 29                	je     402df8 <dlerror@plt+0x1398>
  402dcf:	48 89 df             	mov    rdi,rbx
  402dd2:	ff 15 a0 4d 20 00    	call   QWORD PTR [rip+0x204da0]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  402dd8:	48 89 ef             	mov    rdi,rbp
  402ddb:	ff 15 97 4d 20 00    	call   QWORD PTR [rip+0x204d97]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  402de1:	ff 15 39 4d 20 00    	call   QWORD PTR [rip+0x204d39]        # 607b20 <stderr@@GLIBC_2.2.5+0xd0>
  402de7:	ff 15 43 4d 20 00    	call   QWORD PTR [rip+0x204d43]        # 607b30 <stderr@@GLIBC_2.2.5+0xe0>
  402ded:	44 89 e0             	mov    eax,r12d
  402df0:	5b                   	pop    rbx
  402df1:	5d                   	pop    rbp
  402df2:	41 5c                	pop    r12
  402df4:	c3                   	ret    
  402df5:	0f 1f 00             	nop    DWORD PTR [rax]
  402df8:	45 31 e4             	xor    r12d,r12d
  402dfb:	48 89 df             	mov    rdi,rbx
  402dfe:	ff 15 74 4d 20 00    	call   QWORD PTR [rip+0x204d74]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  402e04:	48 89 ef             	mov    rdi,rbp
  402e07:	ff 15 6b 4d 20 00    	call   QWORD PTR [rip+0x204d6b]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  402e0d:	ff 15 1d 4d 20 00    	call   QWORD PTR [rip+0x204d1d]        # 607b30 <stderr@@GLIBC_2.2.5+0xe0>
  402e13:	44 89 e0             	mov    eax,r12d
  402e16:	5b                   	pop    rbx
  402e17:	5d                   	pop    rbp
  402e18:	41 5c                	pop    r12
  402e1a:	c3                   	ret    
  402e1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402e20:	31 ed                	xor    ebp,ebp
  402e22:	31 db                	xor    ebx,ebx
  402e24:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
  402e2a:	eb a3                	jmp    402dcf <dlerror@plt+0x136f>
  402e2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402e30:	31 ed                	xor    ebp,ebp
  402e32:	41 bc fe ff ff ff    	mov    r12d,0xfffffffe
  402e38:	eb 95                	jmp    402dcf <dlerror@plt+0x136f>
  402e3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402e40:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
  402e46:	eb 87                	jmp    402dcf <dlerror@plt+0x136f>
  402e48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  402e4f:	00 
  402e50:	f3 c3                	repz ret 
  402e52:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  402e59:	1f 84 00 00 00 00 00 
  402e60:	41 54                	push   r12
  402e62:	55                   	push   rbp
  402e63:	53                   	push   rbx
  402e64:	48 89 fb             	mov    rbx,rdi
  402e67:	e8 64 12 00 00       	call   4040d0 <dlerror@plt+0x2670>
  402e6c:	85 c0                	test   eax,eax
  402e6e:	75 50                	jne    402ec0 <dlerror@plt+0x1460>
  402e70:	c7 83 7c 40 00 00 01 	mov    DWORD PTR [rbx+0x407c],0x1
  402e77:	00 00 00 
  402e7a:	48 89 df             	mov    rdi,rbx
  402e7d:	e8 fe 14 00 00       	call   404380 <dlerror@plt+0x2920>
  402e82:	85 c0                	test   eax,eax
  402e84:	75 3a                	jne    402ec0 <dlerror@plt+0x1460>
  402e86:	48 89 df             	mov    rdi,rbx
  402e89:	e8 e2 17 00 00       	call   404670 <dlerror@plt+0x2c10>
  402e8e:	85 c0                	test   eax,eax
  402e90:	75 2e                	jne    402ec0 <dlerror@plt+0x1460>
  402e92:	48 89 df             	mov    rdi,rbx
  402e95:	e8 46 1a 00 00       	call   4048e0 <dlerror@plt+0x2e80>
  402e9a:	85 c0                	test   eax,eax
  402e9c:	75 22                	jne    402ec0 <dlerror@plt+0x1460>
  402e9e:	48 8b 05 13 4d 20 00 	mov    rax,QWORD PTR [rip+0x204d13]        # 607bb8 <stderr@@GLIBC_2.2.5+0x168>
  402ea5:	48 83 38 00          	cmp    QWORD PTR [rax],0x0
  402ea9:	74 25                	je     402ed0 <dlerror@plt+0x1470>
  402eab:	48 89 df             	mov    rdi,rbx
  402eae:	5b                   	pop    rbx
  402eaf:	5d                   	pop    rbp
  402eb0:	41 5c                	pop    r12
  402eb2:	e9 d9 fc ff ff       	jmp    402b90 <dlerror@plt+0x1130>
  402eb7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  402ebe:	00 00 
  402ec0:	5b                   	pop    rbx
  402ec1:	b8 ff ff ff ff       	mov    eax,0xffffffff
  402ec6:	5d                   	pop    rbp
  402ec7:	41 5c                	pop    r12
  402ec9:	c3                   	ret    
  402eca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402ed0:	31 f6                	xor    esi,esi
  402ed2:	31 ff                	xor    edi,edi
  402ed4:	e8 87 ea ff ff       	call   401960 <setlocale@plt>
  402ed9:	48 89 c7             	mov    rdi,rax
  402edc:	e8 cf e8 ff ff       	call   4017b0 <__strdup@plt>
  402ee1:	be b8 54 40 00       	mov    esi,0x4054b8
  402ee6:	31 ff                	xor    edi,edi
  402ee8:	48 89 c5             	mov    rbp,rax
  402eeb:	e8 70 ea ff ff       	call   401960 <setlocale@plt>
  402ef0:	bf 0e 00 00 00       	mov    edi,0xe
  402ef5:	e8 06 ea ff ff       	call   401900 <nl_langinfo@plt>
  402efa:	48 89 ee             	mov    rsi,rbp
  402efd:	31 ff                	xor    edi,edi
  402eff:	49 89 c4             	mov    r12,rax
  402f02:	e8 59 ea ff ff       	call   401960 <setlocale@plt>
  402f07:	48 89 ef             	mov    rdi,rbp
  402f0a:	e8 01 e7 ff ff       	call   401610 <free@plt>
  402f0f:	48 8b 15 a2 4c 20 00 	mov    rdx,QWORD PTR [rip+0x204ca2]        # 607bb8 <stderr@@GLIBC_2.2.5+0x168>
  402f16:	4c 89 22             	mov    QWORD PTR [rdx],r12
  402f19:	eb 90                	jmp    402eab <dlerror@plt+0x144b>
  402f1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  402f20:	e9 0b 1a 00 00       	jmp    404930 <dlerror@plt+0x2ed0>
  402f25:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  402f2c:	00 00 00 00 
  402f30:	f3 c3                	repz ret 
  402f32:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402f39:	00 00 00 
  402f3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402f40:	41 56                	push   r14
  402f42:	41 55                	push   r13
  402f44:	41 89 fd             	mov    r13d,edi
  402f47:	41 54                	push   r12
  402f49:	55                   	push   rbp
  402f4a:	49 89 f4             	mov    r12,rsi
  402f4d:	53                   	push   rbx
  402f4e:	be 90 40 00 00       	mov    esi,0x4090
  402f53:	bf 01 00 00 00       	mov    edi,0x1
  402f58:	48 81 ec 00 30 00 00 	sub    rsp,0x3000
  402f5f:	e8 7c e8 ff ff       	call   4017e0 <calloc@plt>
  402f64:	48 85 c0             	test   rax,rax
  402f67:	48 89 c3             	mov    rbx,rax
  402f6a:	0f 84 34 02 00 00    	je     4031a4 <dlerror@plt+0x1744>
  402f70:	49 8b 34 24          	mov    rsi,QWORD PTR [r12]
  402f74:	48 89 e7             	mov    rdi,rsp
  402f77:	4c 8d b4 24 00 10 00 	lea    r14,[rsp+0x1000]
  402f7e:	00 
  402f7f:	e8 3c 05 00 00       	call   4034c0 <dlerror@plt+0x1a60>
  402f84:	48 8d bc 24 00 20 00 	lea    rdi,[rsp+0x2000]
  402f8b:	00 
  402f8c:	48 89 e6             	mov    rsi,rsp
  402f8f:	e8 fc 05 00 00       	call   403590 <dlerror@plt+0x1b30>
  402f94:	48 89 e6             	mov    rsi,rsp
  402f97:	4c 89 f7             	mov    rdi,r14
  402f9a:	e8 e1 05 00 00       	call   403580 <dlerror@plt+0x1b20>
  402f9f:	bf ba 57 40 00       	mov    edi,0x4057ba
  402fa4:	e8 e7 1a 00 00       	call   404a90 <dlerror@plt+0x3030>
  402fa9:	bf ba 57 40 00       	mov    edi,0x4057ba
  402fae:	48 89 c5             	mov    rbp,rax
  402fb1:	e8 8a 1b 00 00       	call   404b40 <dlerror@plt+0x30e0>
  402fb6:	4d 89 f1             	mov    r9,r14
  402fb9:	41 8b 01             	mov    eax,DWORD PTR [r9]
  402fbc:	49 83 c1 04          	add    r9,0x4
  402fc0:	44 8d 80 ff fe fe fe 	lea    r8d,[rax-0x1010101]
  402fc7:	f7 d0                	not    eax
  402fc9:	41 21 c0             	and    r8d,eax
  402fcc:	41 81 e0 80 80 80 80 	and    r8d,0x80808080
  402fd3:	74 e4                	je     402fb9 <dlerror@plt+0x1559>
  402fd5:	44 89 c0             	mov    eax,r8d
  402fd8:	4c 89 f6             	mov    rsi,r14
  402fdb:	48 89 df             	mov    rdi,rbx
  402fde:	c1 e8 10             	shr    eax,0x10
  402fe1:	41 f7 c0 80 80 00 00 	test   r8d,0x8080
  402fe8:	44 0f 44 c0          	cmove  r8d,eax
  402fec:	49 8d 41 02          	lea    rax,[r9+0x2]
  402ff0:	4c 0f 44 c8          	cmove  r9,rax
  402ff4:	45 00 c0             	add    r8b,r8b
  402ff7:	49 83 d9 03          	sbb    r9,0x3
  402ffb:	4d 29 f1             	sub    r9,r14
  402ffe:	4a 8d 14 0c          	lea    rdx,[rsp+r9*1]
  403002:	e8 99 f1 ff ff       	call   4021a0 <dlerror@plt+0x740>
  403007:	85 c0                	test   eax,eax
  403009:	0f 85 99 00 00 00    	jne    4030a8 <dlerror@plt+0x1648>
  40300f:	48 85 ed             	test   rbp,rbp
  403012:	44 89 ab 80 40 00 00 	mov    DWORD PTR [rbx+0x4080],r13d
  403019:	4c 89 a3 88 40 00 00 	mov    QWORD PTR [rbx+0x4088],r12
  403020:	0f 84 fa 00 00 00    	je     403120 <dlerror@plt+0x16c0>
  403026:	48 89 ee             	mov    rsi,rbp
  403029:	4c 89 f7             	mov    rdi,r14
  40302c:	e8 bf e7 ff ff       	call   4017f0 <strcmp@plt>
  403031:	85 c0                	test   eax,eax
  403033:	74 42                	je     403077 <dlerror@plt+0x1617>
  403035:	4c 8d a3 78 20 00 00 	lea    r12,[rbx+0x2078]
  40303c:	ba 00 10 00 00       	mov    edx,0x1000
  403041:	48 89 ee             	mov    rsi,rbp
  403044:	4c 89 e7             	mov    rdi,r12
  403047:	e8 f4 e5 ff ff       	call   401640 <strncpy@plt>
  40304c:	80 bb 77 30 00 00 00 	cmp    BYTE PTR [rbx+0x3077],0x0
  403053:	0f 85 37 01 00 00    	jne    403190 <dlerror@plt+0x1730>
  403059:	48 8d bb 78 30 00 00 	lea    rdi,[rbx+0x3078]
  403060:	ba 00 10 00 00       	mov    edx,0x1000
  403065:	4c 89 e6             	mov    rsi,r12
  403068:	c7 83 78 40 00 00 01 	mov    DWORD PTR [rbx+0x4078],0x1
  40306f:	00 00 00 
  403072:	e8 c9 e8 ff ff       	call   401940 <__strcpy_chk@plt>
  403077:	48 89 df             	mov    rdi,rbx
  40307a:	e8 d1 fd ff ff       	call   402e50 <dlerror@plt+0x13f0>
  40307f:	48 89 df             	mov    rdi,rbx
  403082:	e8 d9 fd ff ff       	call   402e60 <dlerror@plt+0x1400>
  403087:	48 89 df             	mov    rdi,rbx
  40308a:	89 c5                	mov    ebp,eax
  40308c:	e8 8f fe ff ff       	call   402f20 <dlerror@plt+0x14c0>
  403091:	89 e8                	mov    eax,ebp
  403093:	48 81 c4 00 30 00 00 	add    rsp,0x3000
  40309a:	5b                   	pop    rbx
  40309b:	5d                   	pop    rbp
  40309c:	41 5c                	pop    r12
  40309e:	41 5d                	pop    r13
  4030a0:	41 5e                	pop    r14
  4030a2:	c3                   	ret    
  4030a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4030a8:	4c 89 f2             	mov    rdx,r14
  4030ab:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  4030ad:	48 83 c2 04          	add    rdx,0x4
  4030b1:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
  4030b7:	f7 d1                	not    ecx
  4030b9:	21 c8                	and    eax,ecx
  4030bb:	25 80 80 80 80       	and    eax,0x80808080
  4030c0:	74 e9                	je     4030ab <dlerror@plt+0x164b>
  4030c2:	89 c1                	mov    ecx,eax
  4030c4:	4c 89 f6             	mov    rsi,r14
  4030c7:	48 89 df             	mov    rdi,rbx
  4030ca:	c1 e9 10             	shr    ecx,0x10
  4030cd:	a9 80 80 00 00       	test   eax,0x8080
  4030d2:	0f 44 c1             	cmove  eax,ecx
  4030d5:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
  4030d9:	48 0f 44 d1          	cmove  rdx,rcx
  4030dd:	00 c0                	add    al,al
  4030df:	48 8d 84 24 00 20 00 	lea    rax,[rsp+0x2000]
  4030e6:	00 
  4030e7:	48 83 da 03          	sbb    rdx,0x3
  4030eb:	4c 29 f2             	sub    rdx,r14
  4030ee:	48 01 c2             	add    rdx,rax
  4030f1:	e8 aa f0 ff ff       	call   4021a0 <dlerror@plt+0x740>
  4030f6:	85 c0                	test   eax,eax
  4030f8:	0f 84 11 ff ff ff    	je     40300f <dlerror@plt+0x15af>
  4030fe:	48 8d 94 24 00 20 00 	lea    rdx,[rsp+0x2000]
  403105:	00 
  403106:	31 c0                	xor    eax,eax
  403108:	48 89 e6             	mov    rsi,rsp
  40310b:	bf 90 57 40 00       	mov    edi,0x405790
  403110:	e8 bb f2 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403115:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40311a:	e9 74 ff ff ff       	jmp    403093 <dlerror@plt+0x1633>
  40311f:	90                   	nop
  403120:	48 89 df             	mov    rdi,rbx
  403123:	e8 88 f9 ff ff       	call   402ab0 <dlerror@plt+0x1050>
  403128:	85 c0                	test   eax,eax
  40312a:	75 64                	jne    403190 <dlerror@plt+0x1730>
  40312c:	80 bb 78 20 00 00 00 	cmp    BYTE PTR [rbx+0x2078],0x0
  403133:	48 8d ab 78 20 00 00 	lea    rbp,[rbx+0x2078]
  40313a:	4c 89 f6             	mov    rsi,r14
  40313d:	bf ba 57 40 00       	mov    edi,0x4057ba
  403142:	48 0f 45 f5          	cmovne rsi,rbp
  403146:	e8 e5 19 00 00       	call   404b30 <dlerror@plt+0x30d0>
  40314b:	48 89 df             	mov    rdi,rbx
  40314e:	e8 dd 1f 00 00       	call   405130 <dlerror@plt+0x36d0>
  403153:	83 f8 ff             	cmp    eax,0xffffffff
  403156:	74 38                	je     403190 <dlerror@plt+0x1730>
  403158:	31 c0                	xor    eax,eax
  40315a:	e8 d1 fd ff ff       	call   402f30 <dlerror@plt+0x14d0>
  40315f:	4c 89 e1             	mov    rcx,r12
  403162:	44 89 ea             	mov    edx,r13d
  403165:	48 89 de             	mov    rsi,rbx
  403168:	48 89 e7             	mov    rdi,rsp
  40316b:	e8 50 20 00 00       	call   4051c0 <dlerror@plt+0x3760>
  403170:	83 bb 78 40 00 00 01 	cmp    DWORD PTR [rbx+0x4078],0x1
  403177:	41 89 c4             	mov    r12d,eax
  40317a:	74 1e                	je     40319a <dlerror@plt+0x173a>
  40317c:	48 89 df             	mov    rdi,rbx
  40317f:	e8 9c f0 ff ff       	call   402220 <dlerror@plt+0x7c0>
  403184:	44 89 e0             	mov    eax,r12d
  403187:	e9 07 ff ff ff       	jmp    403093 <dlerror@plt+0x1633>
  40318c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  403190:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403195:	e9 f9 fe ff ff       	jmp    403093 <dlerror@plt+0x1633>
  40319a:	48 89 ef             	mov    rdi,rbp
  40319d:	e8 0e 1b 00 00       	call   404cb0 <dlerror@plt+0x3250>
  4031a2:	eb d8                	jmp    40317c <dlerror@plt+0x171c>
  4031a4:	31 c0                	xor    eax,eax
  4031a6:	be 60 57 40 00       	mov    esi,0x405760
  4031ab:	bf b3 57 40 00       	mov    edi,0x4057b3
  4031b0:	e8 eb f2 ff ff       	call   4024a0 <dlerror@plt+0xa40>
  4031b5:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4031ba:	e9 d4 fe ff ff       	jmp    403093 <dlerror@plt+0x1633>
  4031bf:	90                   	nop
  4031c0:	53                   	push   rbx
  4031c1:	ba 00 10 00 00       	mov    edx,0x1000
  4031c6:	48 89 fb             	mov    rbx,rdi
  4031c9:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  4031d0:	48 89 e7             	mov    rdi,rsp
  4031d3:	e8 68 e7 ff ff       	call   401940 <__strcpy_chk@plt>
  4031d8:	48 89 e7             	mov    rdi,rsp
  4031db:	e8 80 e5 ff ff       	call   401760 <dirname@plt>
  4031e0:	48 89 df             	mov    rdi,rbx
  4031e3:	48 89 c6             	mov    rsi,rax
  4031e6:	e8 75 e4 ff ff       	call   401660 <strcpy@plt>
  4031eb:	48 81 c4 00 10 00 00 	add    rsp,0x1000
  4031f2:	5b                   	pop    rbx
  4031f3:	c3                   	ret    
  4031f4:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4031fb:	00 00 00 00 00 
  403200:	53                   	push   rbx
  403201:	48 89 fb             	mov    rbx,rdi
  403204:	48 89 f7             	mov    rdi,rsi
  403207:	e8 74 e6 ff ff       	call   401880 <__xpg_basename@plt>
  40320c:	48 89 df             	mov    rdi,rbx
  40320f:	48 89 c6             	mov    rsi,rax
  403212:	5b                   	pop    rbx
  403213:	e9 48 e4 ff ff       	jmp    401660 <strcpy@plt>
  403218:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40321f:	00 
  403220:	41 55                	push   r13
  403222:	41 54                	push   r12
  403224:	49 89 f4             	mov    r12,rsi
  403227:	55                   	push   rbp
  403228:	53                   	push   rbx
  403229:	48 89 d5             	mov    rbp,rdx
  40322c:	48 89 fb             	mov    rbx,rdi
  40322f:	48 83 ec 08          	sub    rsp,0x8
  403233:	48 85 ff             	test   rdi,rdi
  403236:	0f 84 ac 00 00 00    	je     4032e8 <dlerror@plt+0x1888>
  40323c:	48 8d 47 08          	lea    rax,[rdi+0x8]
  403240:	48 89 d9             	mov    rcx,rbx
  403243:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
  40324a:	48 c7 87 f8 0f 00 00 	mov    QWORD PTR [rdi+0xff8],0x0
  403251:	00 00 00 00 
  403255:	48 83 e0 f8          	and    rax,0xfffffffffffffff8
  403259:	48 29 c1             	sub    rcx,rax
  40325c:	48 89 c7             	mov    rdi,rax
  40325f:	31 c0                	xor    eax,eax
  403261:	81 c1 00 10 00 00    	add    ecx,0x1000
  403267:	c1 e9 03             	shr    ecx,0x3
  40326a:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
  40326d:	4c 89 e7             	mov    rdi,r12
  403270:	e8 bb e4 ff ff       	call   401730 <strlen@plt>
  403275:	4c 89 e6             	mov    rsi,r12
  403278:	48 89 c2             	mov    rdx,rax
  40327b:	48 89 df             	mov    rdi,rbx
  40327e:	e8 bd e3 ff ff       	call   401640 <strncpy@plt>
  403283:	48 89 df             	mov    rdi,rbx
  403286:	e8 a5 e4 ff ff       	call   401730 <strlen@plt>
  40328b:	80 7c 03 ff 2f       	cmp    BYTE PTR [rbx+rax*1-0x1],0x2f
  403290:	74 09                	je     40329b <dlerror@plt+0x183b>
  403292:	c6 04 03 2f          	mov    BYTE PTR [rbx+rax*1],0x2f
  403296:	c6 44 03 01 00       	mov    BYTE PTR [rbx+rax*1+0x1],0x0
  40329b:	48 89 ef             	mov    rdi,rbp
  40329e:	e8 8d e4 ff ff       	call   401730 <strlen@plt>
  4032a3:	80 7c 05 ff 2f       	cmp    BYTE PTR [rbp+rax*1-0x1],0x2f
  4032a8:	74 1e                	je     4032c8 <dlerror@plt+0x1868>
  4032aa:	48 89 ee             	mov    rsi,rbp
  4032ad:	48 89 df             	mov    rdi,rbx
  4032b0:	e8 3b e7 ff ff       	call   4019f0 <strcat@plt>
  4032b5:	48 89 d8             	mov    rax,rbx
  4032b8:	48 83 c4 08          	add    rsp,0x8
  4032bc:	5b                   	pop    rbx
  4032bd:	5d                   	pop    rbp
  4032be:	41 5c                	pop    r12
  4032c0:	41 5d                	pop    r13
  4032c2:	c3                   	ret    
  4032c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4032c8:	48 8d 50 fe          	lea    rdx,[rax-0x2]
  4032cc:	48 89 ee             	mov    rsi,rbp
  4032cf:	48 89 df             	mov    rdi,rbx
  4032d2:	e8 b9 e4 ff ff       	call   401790 <strncat@plt>
  4032d7:	48 83 c4 08          	add    rsp,0x8
  4032db:	48 89 d8             	mov    rax,rbx
  4032de:	5b                   	pop    rbx
  4032df:	5d                   	pop    rbp
  4032e0:	41 5c                	pop    r12
  4032e2:	41 5d                	pop    r13
  4032e4:	c3                   	ret    
  4032e5:	0f 1f 00             	nop    DWORD PTR [rax]
  4032e8:	48 89 f7             	mov    rdi,rsi
  4032eb:	e8 40 e4 ff ff       	call   401730 <strlen@plt>
  4032f0:	48 89 ef             	mov    rdi,rbp
  4032f3:	48 89 c3             	mov    rbx,rax
  4032f6:	e8 35 e4 ff ff       	call   401730 <strlen@plt>
  4032fb:	4c 8d 6c 03 02       	lea    r13,[rbx+rax*1+0x2]
  403300:	4c 89 ef             	mov    rdi,r13
  403303:	e8 d8 e5 ff ff       	call   4018e0 <malloc@plt>
  403308:	48 85 c0             	test   rax,rax
  40330b:	48 89 c3             	mov    rbx,rax
  40330e:	74 12                	je     403322 <dlerror@plt+0x18c2>
  403310:	4c 89 ea             	mov    rdx,r13
  403313:	31 f6                	xor    esi,esi
  403315:	48 89 c7             	mov    rdi,rax
  403318:	e8 53 e4 ff ff       	call   401770 <memset@plt>
  40331d:	e9 4b ff ff ff       	jmp    40326d <dlerror@plt+0x180d>
  403322:	31 c0                	xor    eax,eax
  403324:	eb 92                	jmp    4032b8 <dlerror@plt+0x1858>
  403326:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40332d:	00 00 00 
  403330:	f3 c3                	repz ret 
  403332:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  403339:	1f 84 00 00 00 00 00 
  403340:	48 83 ec 08          	sub    rsp,0x8
  403344:	48 89 fe             	mov    rsi,rdi
  403347:	48 89 d7             	mov    rdi,rdx
  40334a:	e8 01 e5 ff ff       	call   401850 <realpath@plt>
  40334f:	48 85 c0             	test   rax,rax
  403352:	0f 95 c0             	setne  al
  403355:	48 83 c4 08          	add    rsp,0x8
  403359:	0f b6 c0             	movzx  eax,al
  40335c:	c3                   	ret    
  40335d:	0f 1f 00             	nop    DWORD PTR [rax]
  403360:	48 81 ec 98 00 00 00 	sub    rsp,0x98
  403367:	48 89 fe             	mov    rsi,rdi
  40336a:	bf 01 00 00 00       	mov    edi,0x1
  40336f:	48 89 e2             	mov    rdx,rsp
  403372:	e8 39 e5 ff ff       	call   4018b0 <__xstat@plt>
  403377:	85 c0                	test   eax,eax
  403379:	0f 94 c0             	sete   al
  40337c:	48 81 c4 98 00 00 00 	add    rsp,0x98
  403383:	0f b6 c0             	movzx  eax,al
  403386:	c3                   	ret    
  403387:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40338e:	00 00 
  403390:	41 57                	push   r15
  403392:	41 56                	push   r14
  403394:	49 89 fe             	mov    r14,rdi
  403397:	41 55                	push   r13
  403399:	41 54                	push   r12
  40339b:	bf 53 64 40 00       	mov    edi,0x406453
  4033a0:	55                   	push   rbp
  4033a1:	53                   	push   rbx
  4033a2:	49 89 f4             	mov    r12,rsi
  4033a5:	48 81 ec b8 20 00 00 	sub    rsp,0x20b8
  4033ac:	e8 df 16 00 00       	call   404a90 <dlerror@plt+0x3030>
  4033b1:	48 85 c0             	test   rax,rax
  4033b4:	48 89 c5             	mov    rbp,rax
  4033b7:	0f 84 cc 00 00 00    	je     403489 <dlerror@plt+0x1a29>
  4033bd:	41 bd 00 10 00 00    	mov    r13d,0x1000
  4033c3:	eb 69                	jmp    40342e <dlerror@plt+0x19ce>
  4033c5:	0f 1f 00             	nop    DWORD PTR [rax]
  4033c8:	48 89 c3             	mov    rbx,rax
  4033cb:	48 8d bc 24 90 00 00 	lea    rdi,[rsp+0x90]
  4033d2:	00 
  4033d3:	b9 01 10 00 00       	mov    ecx,0x1001
  4033d8:	48 29 eb             	sub    rbx,rbp
  4033db:	48 89 ee             	mov    rsi,rbp
  4033de:	48 81 fb 00 10 00 00 	cmp    rbx,0x1000
  4033e5:	49 0f 47 dd          	cmova  rbx,r13
  4033e9:	48 89 da             	mov    rdx,rbx
  4033ec:	e8 3f e5 ff ff       	call   401930 <__strncpy_chk@plt>
  4033f1:	48 8d b4 24 90 00 00 	lea    rsi,[rsp+0x90]
  4033f8:	00 
  4033f9:	48 8d bc 24 a0 10 00 	lea    rdi,[rsp+0x10a0]
  403400:	00 
  403401:	4c 89 e2             	mov    rdx,r12
  403404:	c6 84 1c 90 00 00 00 	mov    BYTE PTR [rsp+rbx*1+0x90],0x0
  40340b:	00 
  40340c:	e8 0f fe ff ff       	call   403220 <dlerror@plt+0x17c0>
  403411:	48 8d b4 24 a0 10 00 	lea    rsi,[rsp+0x10a0]
  403418:	00 
  403419:	48 89 e2             	mov    rdx,rsp
  40341c:	bf 01 00 00 00       	mov    edi,0x1
  403421:	e8 8a e4 ff ff       	call   4018b0 <__xstat@plt>
  403426:	85 c0                	test   eax,eax
  403428:	74 76                	je     4034a0 <dlerror@plt+0x1a40>
  40342a:	49 8d 6f 01          	lea    rbp,[r15+0x1]
  40342e:	be 3a 00 00 00       	mov    esi,0x3a
  403433:	48 89 ef             	mov    rdi,rbp
  403436:	e8 15 e3 ff ff       	call   401750 <strchr@plt>
  40343b:	48 85 c0             	test   rax,rax
  40343e:	49 89 c7             	mov    r15,rax
  403441:	75 85                	jne    4033c8 <dlerror@plt+0x1968>
  403443:	48 8d bc 24 90 00 00 	lea    rdi,[rsp+0x90]
  40344a:	00 
  40344b:	ba 00 10 00 00       	mov    edx,0x1000
  403450:	48 89 ee             	mov    rsi,rbp
  403453:	e8 e8 e1 ff ff       	call   401640 <strncpy@plt>
  403458:	48 8d b4 24 90 00 00 	lea    rsi,[rsp+0x90]
  40345f:	00 
  403460:	48 8d bc 24 a0 10 00 	lea    rdi,[rsp+0x10a0]
  403467:	00 
  403468:	4c 89 e2             	mov    rdx,r12
  40346b:	e8 b0 fd ff ff       	call   403220 <dlerror@plt+0x17c0>
  403470:	48 8d b4 24 a0 10 00 	lea    rsi,[rsp+0x10a0]
  403477:	00 
  403478:	48 89 e2             	mov    rdx,rsp
  40347b:	bf 01 00 00 00       	mov    edi,0x1
  403480:	e8 2b e4 ff ff       	call   4018b0 <__xstat@plt>
  403485:	85 c0                	test   eax,eax
  403487:	74 17                	je     4034a0 <dlerror@plt+0x1a40>
  403489:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40348e:	48 81 c4 b8 20 00 00 	add    rsp,0x20b8
  403495:	5b                   	pop    rbx
  403496:	5d                   	pop    rbp
  403497:	41 5c                	pop    r12
  403499:	41 5d                	pop    r13
  40349b:	41 5e                	pop    r14
  40349d:	41 5f                	pop    r15
  40349f:	c3                   	ret    
  4034a0:	48 8d b4 24 a0 10 00 	lea    rsi,[rsp+0x10a0]
  4034a7:	00 
  4034a8:	ba 00 10 00 00       	mov    edx,0x1000
  4034ad:	4c 89 f7             	mov    rdi,r14
  4034b0:	e8 8b e1 ff ff       	call   401640 <strncpy@plt>
  4034b5:	31 c0                	xor    eax,eax
  4034b7:	eb d5                	jmp    40348e <dlerror@plt+0x1a2e>
  4034b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4034c0:	41 54                	push   r12
  4034c2:	55                   	push   rbp
  4034c3:	49 89 f4             	mov    r12,rsi
  4034c6:	53                   	push   rbx
  4034c7:	48 89 fe             	mov    rsi,rdi
  4034ca:	48 89 fb             	mov    rbx,rdi
  4034cd:	ba 00 10 00 00       	mov    edx,0x1000
  4034d2:	bf c4 57 40 00       	mov    edi,0x4057c4
  4034d7:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  4034de:	e8 dd e1 ff ff       	call   4016c0 <readlink@plt>
  4034e3:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  4034e7:	74 17                	je     403500 <dlerror@plt+0x1aa0>
  4034e9:	c6 04 03 00          	mov    BYTE PTR [rbx+rax*1],0x0
  4034ed:	31 c0                	xor    eax,eax
  4034ef:	48 81 c4 00 10 00 00 	add    rsp,0x1000
  4034f6:	5b                   	pop    rbx
  4034f7:	5d                   	pop    rbp
  4034f8:	41 5c                	pop    r12
  4034fa:	c3                   	ret    
  4034fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  403500:	41 80 3c 24 2f       	cmp    BYTE PTR [r12],0x2f
  403505:	74 12                	je     403519 <dlerror@plt+0x1ab9>
  403507:	be 2f 00 00 00       	mov    esi,0x2f
  40350c:	4c 89 e7             	mov    rdi,r12
  40350f:	e8 3c e2 ff ff       	call   401750 <strchr@plt>
  403514:	48 85 c0             	test   rax,rax
  403517:	74 27                	je     403540 <dlerror@plt+0x1ae0>
  403519:	4c 89 e2             	mov    rdx,r12
  40351c:	48 89 df             	mov    rdi,rbx
  40351f:	be 00 10 00 00       	mov    esi,0x1000
  403524:	e8 17 fe ff ff       	call   403340 <dlerror@plt+0x18e0>
  403529:	85 c0                	test   eax,eax
  40352b:	0f 94 c0             	sete   al
  40352e:	48 81 c4 00 10 00 00 	add    rsp,0x1000
  403535:	0f b6 c0             	movzx  eax,al
  403538:	5b                   	pop    rbx
  403539:	f7 d8                	neg    eax
  40353b:	5d                   	pop    rbp
  40353c:	41 5c                	pop    r12
  40353e:	c3                   	ret    
  40353f:	90                   	nop
  403540:	4c 89 e6             	mov    rsi,r12
  403543:	48 89 e7             	mov    rdi,rsp
  403546:	e8 45 fe ff ff       	call   403390 <dlerror@plt+0x1930>
  40354b:	83 f8 ff             	cmp    eax,0xffffffff
  40354e:	89 c5                	mov    ebp,eax
  403550:	74 05                	je     403557 <dlerror@plt+0x1af7>
  403552:	48 89 e2             	mov    rdx,rsp
  403555:	eb c5                	jmp    40351c <dlerror@plt+0x1abc>
  403557:	ba 00 10 00 00       	mov    edx,0x1000
  40355c:	4c 89 e6             	mov    rsi,r12
  40355f:	48 89 e7             	mov    rdi,rsp
  403562:	e8 d9 e0 ff ff       	call   401640 <strncpy@plt>
  403567:	80 bc 24 ff 0f 00 00 	cmp    BYTE PTR [rsp+0xfff],0x0
  40356e:	00 
  40356f:	74 e1                	je     403552 <dlerror@plt+0x1af2>
  403571:	89 e8                	mov    eax,ebp
  403573:	e9 77 ff ff ff       	jmp    4034ef <dlerror@plt+0x1a8f>
  403578:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40357f:	00 
  403580:	e9 3b fc ff ff       	jmp    4031c0 <dlerror@plt+0x1760>
  403585:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40358c:	00 00 00 00 
  403590:	48 83 ec 08          	sub    rsp,0x8
  403594:	e8 77 e1 ff ff       	call   401710 <stpcpy@plt>
  403599:	c7 00 2e 70 6b 67    	mov    DWORD PTR [rax],0x676b702e
  40359f:	c6 40 04 00          	mov    BYTE PTR [rax+0x4],0x0
  4035a3:	48 83 c4 08          	add    rsp,0x8
  4035a7:	c3                   	ret    
  4035a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4035af:	00 
  4035b0:	55                   	push   rbp
  4035b1:	53                   	push   rbx
  4035b2:	89 f5                	mov    ebp,esi
  4035b4:	be d3 57 40 00       	mov    esi,0x4057d3
  4035b9:	48 89 fb             	mov    rbx,rdi
  4035bc:	48 83 ec 08          	sub    rsp,0x8
  4035c0:	e8 7b e4 ff ff       	call   401a40 <dlsym@plt>
  4035c5:	48 85 c0             	test   rax,rax
  4035c8:	48 89 05 f1 45 20 00 	mov    QWORD PTR [rip+0x2045f1],rax        # 607bc0 <stderr@@GLIBC_2.2.5+0x170>
  4035cf:	0f 84 ab 05 00 00    	je     403b80 <dlerror@plt+0x2120>
  4035d5:	be ec 57 40 00       	mov    esi,0x4057ec
  4035da:	48 89 df             	mov    rdi,rbx
  4035dd:	e8 5e e4 ff ff       	call   401a40 <dlsym@plt>
  4035e2:	48 85 c0             	test   rax,rax
  4035e5:	48 89 05 cc 45 20 00 	mov    QWORD PTR [rip+0x2045cc],rax        # 607bb8 <stderr@@GLIBC_2.2.5+0x168>
  4035ec:	0f 84 a2 05 00 00    	je     403b94 <dlerror@plt+0x2134>
  4035f2:	be 09 58 40 00       	mov    esi,0x405809
  4035f7:	48 89 df             	mov    rdi,rbx
  4035fa:	e8 41 e4 ff ff       	call   401a40 <dlsym@plt>
  4035ff:	48 85 c0             	test   rax,rax
  403602:	48 89 05 a7 45 20 00 	mov    QWORD PTR [rip+0x2045a7],rax        # 607bb0 <stderr@@GLIBC_2.2.5+0x160>
  403609:	0f 84 99 05 00 00    	je     403ba8 <dlerror@plt+0x2148>
  40360f:	be 17 58 40 00       	mov    esi,0x405817
  403614:	48 89 df             	mov    rdi,rbx
  403617:	e8 24 e4 ff ff       	call   401a40 <dlsym@plt>
  40361c:	48 85 c0             	test   rax,rax
  40361f:	48 89 05 82 45 20 00 	mov    QWORD PTR [rip+0x204582],rax        # 607ba8 <stderr@@GLIBC_2.2.5+0x158>
  403626:	0f 84 90 05 00 00    	je     403bbc <dlerror@plt+0x215c>
  40362c:	be 30 58 40 00       	mov    esi,0x405830
  403631:	48 89 df             	mov    rdi,rbx
  403634:	e8 07 e4 ff ff       	call   401a40 <dlsym@plt>
  403639:	48 85 c0             	test   rax,rax
  40363c:	48 89 05 5d 45 20 00 	mov    QWORD PTR [rip+0x20455d],rax        # 607ba0 <stderr@@GLIBC_2.2.5+0x150>
  403643:	0f 84 87 05 00 00    	je     403bd0 <dlerror@plt+0x2170>
  403649:	be 3e 58 40 00       	mov    esi,0x40583e
  40364e:	48 89 df             	mov    rdi,rbx
  403651:	e8 ea e3 ff ff       	call   401a40 <dlsym@plt>
  403656:	48 85 c0             	test   rax,rax
  403659:	48 89 05 38 45 20 00 	mov    QWORD PTR [rip+0x204538],rax        # 607b98 <stderr@@GLIBC_2.2.5+0x148>
  403660:	0f 84 7e 05 00 00    	je     403be4 <dlerror@plt+0x2184>
  403666:	be 55 58 40 00       	mov    esi,0x405855
  40366b:	48 89 df             	mov    rdi,rbx
  40366e:	e8 cd e3 ff ff       	call   401a40 <dlsym@plt>
  403673:	48 85 c0             	test   rax,rax
  403676:	48 89 05 13 45 20 00 	mov    QWORD PTR [rip+0x204513],rax        # 607b90 <stderr@@GLIBC_2.2.5+0x140>
  40367d:	0f 84 75 05 00 00    	je     403bf8 <dlerror@plt+0x2198>
  403683:	be 65 58 40 00       	mov    esi,0x405865
  403688:	48 89 df             	mov    rdi,rbx
  40368b:	e8 b0 e3 ff ff       	call   401a40 <dlsym@plt>
  403690:	48 85 c0             	test   rax,rax
  403693:	48 89 05 ee 44 20 00 	mov    QWORD PTR [rip+0x2044ee],rax        # 607b88 <stderr@@GLIBC_2.2.5+0x138>
  40369a:	0f 84 6c 05 00 00    	je     403c0c <dlerror@plt+0x21ac>
  4036a0:	be 74 58 40 00       	mov    esi,0x405874
  4036a5:	48 89 df             	mov    rdi,rbx
  4036a8:	e8 93 e3 ff ff       	call   401a40 <dlsym@plt>
  4036ad:	48 85 c0             	test   rax,rax
  4036b0:	48 89 05 c9 44 20 00 	mov    QWORD PTR [rip+0x2044c9],rax        # 607b80 <stderr@@GLIBC_2.2.5+0x130>
  4036b7:	0f 84 63 05 00 00    	je     403c20 <dlerror@plt+0x21c0>
  4036bd:	be 82 58 40 00       	mov    esi,0x405882
  4036c2:	48 89 df             	mov    rdi,rbx
  4036c5:	e8 76 e3 ff ff       	call   401a40 <dlsym@plt>
  4036ca:	48 85 c0             	test   rax,rax
  4036cd:	48 89 05 a4 44 20 00 	mov    QWORD PTR [rip+0x2044a4],rax        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  4036d4:	0f 84 5a 05 00 00    	je     403c34 <dlerror@plt+0x21d4>
  4036da:	be a8 58 40 00       	mov    esi,0x4058a8
  4036df:	48 89 df             	mov    rdi,rbx
  4036e2:	e8 59 e3 ff ff       	call   401a40 <dlsym@plt>
  4036e7:	48 85 c0             	test   rax,rax
  4036ea:	48 89 05 7f 44 20 00 	mov    QWORD PTR [rip+0x20447f],rax        # 607b70 <stderr@@GLIBC_2.2.5+0x120>
  4036f1:	0f 84 51 05 00 00    	je     403c48 <dlerror@plt+0x21e8>
  4036f7:	be d2 58 40 00       	mov    esi,0x4058d2
  4036fc:	48 89 df             	mov    rdi,rbx
  4036ff:	e8 3c e3 ff ff       	call   401a40 <dlsym@plt>
  403704:	48 85 c0             	test   rax,rax
  403707:	48 89 05 5a 44 20 00 	mov    QWORD PTR [rip+0x20445a],rax        # 607b68 <stderr@@GLIBC_2.2.5+0x118>
  40370e:	0f 84 48 05 00 00    	je     403c5c <dlerror@plt+0x21fc>
  403714:	be f8 58 40 00       	mov    esi,0x4058f8
  403719:	48 89 df             	mov    rdi,rbx
  40371c:	e8 1f e3 ff ff       	call   401a40 <dlsym@plt>
  403721:	48 85 c0             	test   rax,rax
  403724:	48 89 05 35 44 20 00 	mov    QWORD PTR [rip+0x204435],rax        # 607b60 <stderr@@GLIBC_2.2.5+0x110>
  40372b:	0f 84 0b 07 00 00    	je     403e3c <dlerror@plt+0x23dc>
  403731:	83 fd 1d             	cmp    ebp,0x1d
  403734:	0f 8f b6 02 00 00    	jg     4039f0 <dlerror@plt+0x1f90>
  40373a:	be 56 59 40 00       	mov    esi,0x405956
  40373f:	48 89 df             	mov    rdi,rbx
  403742:	e8 f9 e2 ff ff       	call   401a40 <dlsym@plt>
  403747:	48 85 c0             	test   rax,rax
  40374a:	48 89 05 f7 43 20 00 	mov    QWORD PTR [rip+0x2043f7],rax        # 607b48 <stderr@@GLIBC_2.2.5+0xf8>
  403751:	0f 84 19 05 00 00    	je     403c70 <dlerror@plt+0x2210>
  403757:	be 68 59 40 00       	mov    esi,0x405968
  40375c:	48 89 df             	mov    rdi,rbx
  40375f:	e8 dc e2 ff ff       	call   401a40 <dlsym@plt>
  403764:	48 85 c0             	test   rax,rax
  403767:	48 89 05 d2 43 20 00 	mov    QWORD PTR [rip+0x2043d2],rax        # 607b40 <stderr@@GLIBC_2.2.5+0xf0>
  40376e:	0f 84 10 05 00 00    	je     403c84 <dlerror@plt+0x2224>
  403774:	be 79 59 40 00       	mov    esi,0x405979
  403779:	48 89 df             	mov    rdi,rbx
  40377c:	e8 bf e2 ff ff       	call   401a40 <dlsym@plt>
  403781:	48 85 c0             	test   rax,rax
  403784:	48 89 05 ad 43 20 00 	mov    QWORD PTR [rip+0x2043ad],rax        # 607b38 <stderr@@GLIBC_2.2.5+0xe8>
  40378b:	0f 84 07 05 00 00    	je     403c98 <dlerror@plt+0x2238>
  403791:	be 8e 59 40 00       	mov    esi,0x40598e
  403796:	48 89 df             	mov    rdi,rbx
  403799:	e8 a2 e2 ff ff       	call   401a40 <dlsym@plt>
  40379e:	48 85 c0             	test   rax,rax
  4037a1:	48 89 05 88 43 20 00 	mov    QWORD PTR [rip+0x204388],rax        # 607b30 <stderr@@GLIBC_2.2.5+0xe0>
  4037a8:	0f 84 fe 04 00 00    	je     403cac <dlerror@plt+0x224c>
  4037ae:	be b8 59 40 00       	mov    esi,0x4059b8
  4037b3:	48 89 df             	mov    rdi,rbx
  4037b6:	e8 85 e2 ff ff       	call   401a40 <dlsym@plt>
  4037bb:	48 85 c0             	test   rax,rax
  4037be:	48 89 05 63 43 20 00 	mov    QWORD PTR [rip+0x204363],rax        # 607b28 <stderr@@GLIBC_2.2.5+0xd8>
  4037c5:	0f 84 f5 04 00 00    	je     403cc0 <dlerror@plt+0x2260>
  4037cb:	be c7 59 40 00       	mov    esi,0x4059c7
  4037d0:	48 89 df             	mov    rdi,rbx
  4037d3:	e8 68 e2 ff ff       	call   401a40 <dlsym@plt>
  4037d8:	48 85 c0             	test   rax,rax
  4037db:	48 89 05 3e 43 20 00 	mov    QWORD PTR [rip+0x20433e],rax        # 607b20 <stderr@@GLIBC_2.2.5+0xd0>
  4037e2:	0f 84 ec 04 00 00    	je     403cd4 <dlerror@plt+0x2274>
  4037e8:	be f1 59 40 00       	mov    esi,0x4059f1
  4037ed:	48 89 df             	mov    rdi,rbx
  4037f0:	e8 4b e2 ff ff       	call   401a40 <dlsym@plt>
  4037f5:	48 85 c0             	test   rax,rax
  4037f8:	48 89 05 19 43 20 00 	mov    QWORD PTR [rip+0x204319],rax        # 607b18 <stderr@@GLIBC_2.2.5+0xc8>
  4037ff:	0f 84 e3 04 00 00    	je     403ce8 <dlerror@plt+0x2288>
  403805:	be 04 5a 40 00       	mov    esi,0x405a04
  40380a:	48 89 df             	mov    rdi,rbx
  40380d:	e8 2e e2 ff ff       	call   401a40 <dlsym@plt>
  403812:	48 85 c0             	test   rax,rax
  403815:	48 89 05 f4 42 20 00 	mov    QWORD PTR [rip+0x2042f4],rax        # 607b10 <stderr@@GLIBC_2.2.5+0xc0>
  40381c:	0f 84 ee 04 00 00    	je     403d10 <dlerror@plt+0x22b0>
  403822:	be 1c 5a 40 00       	mov    esi,0x405a1c
  403827:	48 89 df             	mov    rdi,rbx
  40382a:	e8 11 e2 ff ff       	call   401a40 <dlsym@plt>
  40382f:	48 85 c0             	test   rax,rax
  403832:	48 89 05 cf 42 20 00 	mov    QWORD PTR [rip+0x2042cf],rax        # 607b08 <stderr@@GLIBC_2.2.5+0xb8>
  403839:	0f 84 bd 04 00 00    	je     403cfc <dlerror@plt+0x229c>
  40383f:	be 32 5a 40 00       	mov    esi,0x405a32
  403844:	48 89 df             	mov    rdi,rbx
  403847:	e8 f4 e1 ff ff       	call   401a40 <dlsym@plt>
  40384c:	48 85 c0             	test   rax,rax
  40384f:	48 89 05 aa 42 20 00 	mov    QWORD PTR [rip+0x2042aa],rax        # 607b00 <stderr@@GLIBC_2.2.5+0xb0>
  403856:	0f 84 dc 04 00 00    	je     403d38 <dlerror@plt+0x22d8>
  40385c:	be 40 5a 40 00       	mov    esi,0x405a40
  403861:	48 89 df             	mov    rdi,rbx
  403864:	e8 d7 e1 ff ff       	call   401a40 <dlsym@plt>
  403869:	48 85 c0             	test   rax,rax
  40386c:	48 89 05 85 42 20 00 	mov    QWORD PTR [rip+0x204285],rax        # 607af8 <stderr@@GLIBC_2.2.5+0xa8>
  403873:	0f 84 ab 04 00 00    	je     403d24 <dlerror@plt+0x22c4>
  403879:	be 68 5a 40 00       	mov    esi,0x405a68
  40387e:	48 89 df             	mov    rdi,rbx
  403881:	e8 ba e1 ff ff       	call   401a40 <dlsym@plt>
  403886:	48 85 c0             	test   rax,rax
  403889:	48 89 05 60 42 20 00 	mov    QWORD PTR [rip+0x204260],rax        # 607af0 <stderr@@GLIBC_2.2.5+0xa0>
  403890:	0f 84 ca 04 00 00    	je     403d60 <dlerror@plt+0x2300>
  403896:	be 76 5a 40 00       	mov    esi,0x405a76
  40389b:	48 89 df             	mov    rdi,rbx
  40389e:	e8 9d e1 ff ff       	call   401a40 <dlsym@plt>
  4038a3:	48 85 c0             	test   rax,rax
  4038a6:	48 89 05 3b 42 20 00 	mov    QWORD PTR [rip+0x20423b],rax        # 607ae8 <stderr@@GLIBC_2.2.5+0x98>
  4038ad:	0f 84 99 04 00 00    	je     403d4c <dlerror@plt+0x22ec>
  4038b3:	be 87 5a 40 00       	mov    esi,0x405a87
  4038b8:	48 89 df             	mov    rdi,rbx
  4038bb:	e8 80 e1 ff ff       	call   401a40 <dlsym@plt>
  4038c0:	48 85 c0             	test   rax,rax
  4038c3:	48 89 05 16 42 20 00 	mov    QWORD PTR [rip+0x204216],rax        # 607ae0 <stderr@@GLIBC_2.2.5+0x90>
  4038ca:	0f 84 b8 04 00 00    	je     403d88 <dlerror@plt+0x2328>
  4038d0:	be 9d 5a 40 00       	mov    esi,0x405a9d
  4038d5:	48 89 df             	mov    rdi,rbx
  4038d8:	e8 63 e1 ff ff       	call   401a40 <dlsym@plt>
  4038dd:	48 85 c0             	test   rax,rax
  4038e0:	48 89 05 f1 41 20 00 	mov    QWORD PTR [rip+0x2041f1],rax        # 607ad8 <stderr@@GLIBC_2.2.5+0x88>
  4038e7:	0f 84 87 04 00 00    	je     403d74 <dlerror@plt+0x2314>
  4038ed:	be b4 5a 40 00       	mov    esi,0x405ab4
  4038f2:	48 89 df             	mov    rdi,rbx
  4038f5:	e8 46 e1 ff ff       	call   401a40 <dlsym@plt>
  4038fa:	48 85 c0             	test   rax,rax
  4038fd:	48 89 05 cc 41 20 00 	mov    QWORD PTR [rip+0x2041cc],rax        # 607ad0 <stderr@@GLIBC_2.2.5+0x80>
  403904:	0f 84 46 05 00 00    	je     403e50 <dlerror@plt+0x23f0>
  40390a:	83 fd 1d             	cmp    ebp,0x1d
  40390d:	0f 8e 2d 01 00 00    	jle    403a40 <dlerror@plt+0x1fe0>
  403913:	be ef 5a 40 00       	mov    esi,0x405aef
  403918:	48 89 df             	mov    rdi,rbx
  40391b:	e8 20 e1 ff ff       	call   401a40 <dlsym@plt>
  403920:	48 85 c0             	test   rax,rax
  403923:	48 89 05 96 41 20 00 	mov    QWORD PTR [rip+0x204196],rax        # 607ac0 <stderr@@GLIBC_2.2.5+0x70>
  40392a:	0f 84 6c 04 00 00    	je     403d9c <dlerror@plt+0x233c>
  403930:	be 03 5b 40 00       	mov    esi,0x405b03
  403935:	48 89 df             	mov    rdi,rbx
  403938:	e8 03 e1 ff ff       	call   401a40 <dlsym@plt>
  40393d:	48 85 c0             	test   rax,rax
  403940:	48 89 05 71 41 20 00 	mov    QWORD PTR [rip+0x204171],rax        # 607ab8 <stderr@@GLIBC_2.2.5+0x68>
  403947:	0f 84 8b 04 00 00    	je     403dd8 <dlerror@plt+0x2378>
  40394d:	be 13 5b 40 00       	mov    esi,0x405b13
  403952:	48 89 df             	mov    rdi,rbx
  403955:	e8 e6 e0 ff ff       	call   401a40 <dlsym@plt>
  40395a:	48 85 c0             	test   rax,rax
  40395d:	48 89 05 4c 41 20 00 	mov    QWORD PTR [rip+0x20414c],rax        # 607ab0 <stderr@@GLIBC_2.2.5+0x60>
  403964:	0f 84 5a 04 00 00    	je     403dc4 <dlerror@plt+0x2364>
  40396a:	be 23 5b 40 00       	mov    esi,0x405b23
  40396f:	48 89 df             	mov    rdi,rbx
  403972:	e8 c9 e0 ff ff       	call   401a40 <dlsym@plt>
  403977:	48 85 c0             	test   rax,rax
  40397a:	48 89 05 27 41 20 00 	mov    QWORD PTR [rip+0x204127],rax        # 607aa8 <stderr@@GLIBC_2.2.5+0x58>
  403981:	0f 84 29 04 00 00    	je     403db0 <dlerror@plt+0x2350>
  403987:	be 33 5b 40 00       	mov    esi,0x405b33
  40398c:	48 89 df             	mov    rdi,rbx
  40398f:	e8 ac e0 ff ff       	call   401a40 <dlsym@plt>
  403994:	48 85 c0             	test   rax,rax
  403997:	48 89 05 02 41 20 00 	mov    QWORD PTR [rip+0x204102],rax        # 607aa0 <stderr@@GLIBC_2.2.5+0x50>
  40399e:	0f 84 5c 04 00 00    	je     403e00 <dlerror@plt+0x23a0>
  4039a4:	be 41 5b 40 00       	mov    esi,0x405b41
  4039a9:	48 89 df             	mov    rdi,rbx
  4039ac:	e8 8f e0 ff ff       	call   401a40 <dlsym@plt>
  4039b1:	48 85 c0             	test   rax,rax
  4039b4:	48 89 05 ad 40 20 00 	mov    QWORD PTR [rip+0x2040ad],rax        # 607a68 <stderr@@GLIBC_2.2.5+0x18>
  4039bb:	0f 84 2b 04 00 00    	je     403dec <dlerror@plt+0x238c>
  4039c1:	be 98 60 40 00       	mov    esi,0x406098
  4039c6:	48 89 df             	mov    rdi,rbx
  4039c9:	e8 72 e0 ff ff       	call   401a40 <dlsym@plt>
  4039ce:	48 85 c0             	test   rax,rax
  4039d1:	48 89 05 88 40 20 00 	mov    QWORD PTR [rip+0x204088],rax        # 607a60 <stderr@@GLIBC_2.2.5+0x10>
  4039d8:	0f 84 86 04 00 00    	je     403e64 <dlerror@plt+0x2404>
  4039de:	83 fd 1d             	cmp    ebp,0x1d
  4039e1:	0f 8f a9 00 00 00    	jg     403a90 <dlerror@plt+0x2030>
  4039e7:	31 c0                	xor    eax,eax
  4039e9:	48 83 c4 08          	add    rsp,0x8
  4039ed:	5b                   	pop    rbx
  4039ee:	5d                   	pop    rbp
  4039ef:	c3                   	ret    
  4039f0:	be 06 59 40 00       	mov    esi,0x405906
  4039f5:	48 89 df             	mov    rdi,rbx
  4039f8:	e8 43 e0 ff ff       	call   401a40 <dlsym@plt>
  4039fd:	48 85 c0             	test   rax,rax
  403a00:	48 89 05 51 41 20 00 	mov    QWORD PTR [rip+0x204151],rax        # 607b58 <stderr@@GLIBC_2.2.5+0x108>
  403a07:	0f 84 07 04 00 00    	je     403e14 <dlerror@plt+0x23b4>
  403a0d:	be 2e 59 40 00       	mov    esi,0x40592e
  403a12:	48 89 df             	mov    rdi,rbx
  403a15:	e8 26 e0 ff ff       	call   401a40 <dlsym@plt>
  403a1a:	48 85 c0             	test   rax,rax
  403a1d:	48 89 05 2c 41 20 00 	mov    QWORD PTR [rip+0x20412c],rax        # 607b50 <stderr@@GLIBC_2.2.5+0x100>
  403a24:	0f 85 10 fd ff ff    	jne    40373a <dlerror@plt+0x1cda>
  403a2a:	bf 39 59 40 00       	mov    edi,0x405939
  403a2f:	e8 9c e9 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403a34:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403a39:	eb ae                	jmp    4039e9 <dlerror@plt+0x1f89>
  403a3b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  403a40:	be c7 5a 40 00       	mov    esi,0x405ac7
  403a45:	48 89 df             	mov    rdi,rbx
  403a48:	e8 f3 df ff ff       	call   401a40 <dlsym@plt>
  403a4d:	48 85 c0             	test   rax,rax
  403a50:	48 89 05 71 40 20 00 	mov    QWORD PTR [rip+0x204071],rax        # 607ac8 <stderr@@GLIBC_2.2.5+0x78>
  403a57:	0f 84 cb 03 00 00    	je     403e28 <dlerror@plt+0x23c8>
  403a5d:	be db 5a 40 00       	mov    esi,0x405adb
  403a62:	48 89 df             	mov    rdi,rbx
  403a65:	e8 d6 df ff ff       	call   401a40 <dlsym@plt>
  403a6a:	48 85 c0             	test   rax,rax
  403a6d:	48 89 05 14 40 20 00 	mov    QWORD PTR [rip+0x204014],rax        # 607a88 <stderr@@GLIBC_2.2.5+0x38>
  403a74:	0f 85 99 fe ff ff    	jne    403913 <dlerror@plt+0x1eb3>
  403a7a:	bf 88 5f 40 00       	mov    edi,0x405f88
  403a7f:	e8 4c e9 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403a84:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403a89:	e9 5b ff ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403a8e:	66 90                	xchg   ax,ax
  403a90:	be 51 5b 40 00       	mov    esi,0x405b51
  403a95:	48 89 df             	mov    rdi,rbx
  403a98:	e8 a3 df ff ff       	call   401a40 <dlsym@plt>
  403a9d:	48 85 c0             	test   rax,rax
  403aa0:	48 89 05 f1 3f 20 00 	mov    QWORD PTR [rip+0x203ff1],rax        # 607a98 <stderr@@GLIBC_2.2.5+0x48>
  403aa7:	0f 84 f3 03 00 00    	je     403ea0 <dlerror@plt+0x2440>
  403aad:	83 fd 22             	cmp    ebp,0x22
  403ab0:	0f 8f 92 00 00 00    	jg     403b48 <dlerror@plt+0x20e8>
  403ab6:	be 76 5b 40 00       	mov    esi,0x405b76
  403abb:	48 89 df             	mov    rdi,rbx
  403abe:	e8 7d df ff ff       	call   401a40 <dlsym@plt>
  403ac3:	48 85 c0             	test   rax,rax
  403ac6:	48 89 05 c3 3f 20 00 	mov    QWORD PTR [rip+0x203fc3],rax        # 607a90 <stderr@@GLIBC_2.2.5+0x40>
  403acd:	0f 84 df 03 00 00    	je     403eb2 <dlerror@plt+0x2452>
  403ad3:	be b0 5b 40 00       	mov    esi,0x405bb0
  403ad8:	48 89 df             	mov    rdi,rbx
  403adb:	e8 60 df ff ff       	call   401a40 <dlsym@plt>
  403ae0:	48 85 c0             	test   rax,rax
  403ae3:	48 89 05 96 3f 20 00 	mov    QWORD PTR [rip+0x203f96],rax        # 607a80 <stderr@@GLIBC_2.2.5+0x30>
  403aea:	0f 84 88 03 00 00    	je     403e78 <dlerror@plt+0x2418>
  403af0:	be 85 5b 40 00       	mov    esi,0x405b85
  403af5:	48 89 df             	mov    rdi,rbx
  403af8:	e8 43 df ff ff       	call   401a40 <dlsym@plt>
  403afd:	48 85 c0             	test   rax,rax
  403b00:	48 89 05 69 3f 20 00 	mov    QWORD PTR [rip+0x203f69],rax        # 607a70 <stderr@@GLIBC_2.2.5+0x20>
  403b07:	0f 84 81 03 00 00    	je     403e8e <dlerror@plt+0x242e>
  403b0d:	83 fd 1f             	cmp    ebp,0x1f
  403b10:	0f 8e d1 fe ff ff    	jle    4039e7 <dlerror@plt+0x1f87>
  403b16:	be 96 5b 40 00       	mov    esi,0x405b96
  403b1b:	48 89 df             	mov    rdi,rbx
  403b1e:	e8 1d df ff ff       	call   401a40 <dlsym@plt>
  403b23:	48 85 c0             	test   rax,rax
  403b26:	48 89 05 4b 3f 20 00 	mov    QWORD PTR [rip+0x203f4b],rax        # 607a78 <stderr@@GLIBC_2.2.5+0x28>
  403b2d:	0f 85 b4 fe ff ff    	jne    4039e7 <dlerror@plt+0x1f87>
  403b33:	bf b8 61 40 00       	mov    edi,0x4061b8
  403b38:	e8 93 e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403b3d:	83 c8 ff             	or     eax,0xffffffff
  403b40:	e9 a4 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403b45:	0f 1f 00             	nop    DWORD PTR [rax]
  403b48:	be 66 5b 40 00       	mov    esi,0x405b66
  403b4d:	48 89 df             	mov    rdi,rbx
  403b50:	e8 eb de ff ff       	call   401a40 <dlsym@plt>
  403b55:	48 85 c0             	test   rax,rax
  403b58:	48 89 05 31 3f 20 00 	mov    QWORD PTR [rip+0x203f31],rax        # 607a90 <stderr@@GLIBC_2.2.5+0x40>
  403b5f:	0f 85 6e ff ff ff    	jne    403ad3 <dlerror@plt+0x2073>
  403b65:	bf 18 61 40 00       	mov    edi,0x406118
  403b6a:	e8 61 e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403b6f:	83 c8 ff             	or     eax,0xffffffff
  403b72:	e9 72 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403b77:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  403b7e:	00 00 
  403b80:	bf c8 5b 40 00       	mov    edi,0x405bc8
  403b85:	e8 46 e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403b8a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403b8f:	e9 55 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403b94:	bf f8 5b 40 00       	mov    edi,0x405bf8
  403b99:	e8 32 e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403b9e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403ba3:	e9 41 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403ba8:	bf 28 5c 40 00       	mov    edi,0x405c28
  403bad:	e8 1e e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403bb2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403bb7:	e9 2d fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403bbc:	bf 48 5c 40 00       	mov    edi,0x405c48
  403bc1:	e8 0a e8 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403bc6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403bcb:	e9 19 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403bd0:	bf 78 5c 40 00       	mov    edi,0x405c78
  403bd5:	e8 f6 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403bda:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403bdf:	e9 05 fe ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403be4:	bf 98 5c 40 00       	mov    edi,0x405c98
  403be9:	e8 e2 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403bee:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403bf3:	e9 f1 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403bf8:	bf c8 5c 40 00       	mov    edi,0x405cc8
  403bfd:	e8 ce e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c02:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c07:	e9 dd fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c0c:	bf f0 5c 40 00       	mov    edi,0x405cf0
  403c11:	e8 ba e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c16:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c1b:	e9 c9 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c20:	bf 18 5d 40 00       	mov    edi,0x405d18
  403c25:	e8 a6 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c2a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c2f:	e9 b5 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c34:	bf 8c 58 40 00       	mov    edi,0x40588c
  403c39:	e8 92 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c3e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c43:	e9 a1 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c48:	bf b4 58 40 00       	mov    edi,0x4058b4
  403c4d:	e8 7e e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c52:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c57:	e9 8d fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c5c:	bf dc 58 40 00       	mov    edi,0x4058dc
  403c61:	e8 6a e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c66:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c6b:	e9 79 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c70:	bf 58 5d 40 00       	mov    edi,0x405d58
  403c75:	e8 56 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c7a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c7f:	e9 65 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c84:	bf 80 5d 40 00       	mov    edi,0x405d80
  403c89:	e8 42 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403c8e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403c93:	e9 51 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403c98:	bf a8 5d 40 00       	mov    edi,0x405da8
  403c9d:	e8 2e e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403ca2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403ca7:	e9 3d fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403cac:	bf 9a 59 40 00       	mov    edi,0x40599a
  403cb1:	e8 1a e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403cb6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403cbb:	e9 29 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403cc0:	bf d0 5d 40 00       	mov    edi,0x405dd0
  403cc5:	e8 06 e7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403cca:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403ccf:	e9 15 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403cd4:	bf d3 59 40 00       	mov    edi,0x4059d3
  403cd9:	e8 f2 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403cde:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403ce3:	e9 01 fd ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403ce8:	bf f8 5d 40 00       	mov    edi,0x405df8
  403ced:	e8 de e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403cf2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403cf7:	e9 ed fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403cfc:	bf 50 5e 40 00       	mov    edi,0x405e50
  403d01:	e8 ca e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d06:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d0b:	e9 d9 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d10:	bf 20 5e 40 00       	mov    edi,0x405e20
  403d15:	e8 b6 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d1a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d1f:	e9 c5 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d24:	bf 4b 5a 40 00       	mov    edi,0x405a4b
  403d29:	e8 a2 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d2e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d33:	e9 b1 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d38:	bf 78 5e 40 00       	mov    edi,0x405e78
  403d3d:	e8 8e e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d42:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d47:	e9 9d fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d4c:	bf b8 5e 40 00       	mov    edi,0x405eb8
  403d51:	e8 7a e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d56:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d5b:	e9 89 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d60:	bf 98 5e 40 00       	mov    edi,0x405e98
  403d65:	e8 66 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d6a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d6f:	e9 75 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d74:	bf 08 5f 40 00       	mov    edi,0x405f08
  403d79:	e8 52 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d7e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d83:	e9 61 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d88:	bf e0 5e 40 00       	mov    edi,0x405ee0
  403d8d:	e8 3e e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403d92:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403d97:	e9 4d fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403d9c:	bf b0 5f 40 00       	mov    edi,0x405fb0
  403da1:	e8 2a e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403da6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403dab:	e9 39 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403db0:	bf 28 60 40 00       	mov    edi,0x406028
  403db5:	e8 16 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403dba:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403dbf:	e9 25 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403dc4:	bf 00 60 40 00       	mov    edi,0x406000
  403dc9:	e8 02 e6 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403dce:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403dd3:	e9 11 fc ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403dd8:	bf d8 5f 40 00       	mov    edi,0x405fd8
  403ddd:	e8 ee e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403de2:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403de7:	e9 fd fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403dec:	bf 70 60 40 00       	mov    edi,0x406070
  403df1:	e8 da e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403df6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403dfb:	e9 e9 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e00:	bf 50 60 40 00       	mov    edi,0x406050
  403e05:	e8 c6 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e0a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e0f:	e9 d5 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e14:	bf 11 59 40 00       	mov    edi,0x405911
  403e19:	e8 b2 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e1e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e23:	e9 c1 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e28:	bf 60 5f 40 00       	mov    edi,0x405f60
  403e2d:	e8 9e e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e32:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e37:	e9 ad fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e3c:	bf 38 5d 40 00       	mov    edi,0x405d38
  403e41:	e8 8a e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e46:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e4b:	e9 99 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e50:	bf 38 5f 40 00       	mov    edi,0x405f38
  403e55:	e8 76 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e5a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e5f:	e9 85 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e64:	bf b8 60 40 00       	mov    edi,0x4060b8
  403e69:	e8 62 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e6e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e73:	e9 71 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e78:	31 c0                	xor    eax,eax
  403e7a:	bf 68 61 40 00       	mov    edi,0x406168
  403e7f:	e8 4c e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e84:	b8 ff ff ff ff       	mov    eax,0xffffffff
  403e89:	e9 5b fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403e8e:	bf 90 61 40 00       	mov    edi,0x406190
  403e93:	e8 38 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403e98:	83 c8 ff             	or     eax,0xffffffff
  403e9b:	e9 49 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403ea0:	bf f0 60 40 00       	mov    edi,0x4060f0
  403ea5:	e8 26 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403eaa:	83 c8 ff             	or     eax,0xffffffff
  403ead:	e9 37 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403eb2:	bf 40 61 40 00       	mov    edi,0x406140
  403eb7:	e8 14 e5 ff ff       	call   4023d0 <dlerror@plt+0x970>
  403ebc:	83 c8 ff             	or     eax,0xffffffff
  403ebf:	e9 25 fb ff ff       	jmp    4039e9 <dlerror@plt+0x1f89>
  403ec4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  403ecb:	00 00 00 
  403ece:	66 90                	xchg   ax,ax
  403ed0:	48 8b 05 69 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c69]        # 607b40 <stderr@@GLIBC_2.2.5+0xf0>
  403ed7:	ff e0                	jmp    rax
  403ed9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  403ee0:	48 8b 05 61 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c61]        # 607b48 <stderr@@GLIBC_2.2.5+0xf8>
  403ee7:	ff e0                	jmp    rax
  403ee9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  403ef0:	48 8b 05 a9 3b 20 00 	mov    rax,QWORD PTR [rip+0x203ba9]        # 607aa0 <stderr@@GLIBC_2.2.5+0x50>
  403ef7:	ff e0                	jmp    rax
  403ef9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  403f00:	48 8b 05 b1 3b 20 00 	mov    rax,QWORD PTR [rip+0x203bb1]        # 607ab8 <stderr@@GLIBC_2.2.5+0x68>
  403f07:	ff e0                	jmp    rax
  403f09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  403f10:	48 8b 05 a9 3b 20 00 	mov    rax,QWORD PTR [rip+0x203ba9]        # 607ac0 <stderr@@GLIBC_2.2.5+0x70>
  403f17:	ff e0                	jmp    rax
  403f19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  403f20:	41 56                	push   r14
  403f22:	41 55                	push   r13
  403f24:	41 54                	push   r12
  403f26:	55                   	push   rbp
  403f27:	45 31 e4             	xor    r12d,r12d
  403f2a:	53                   	push   rbx
  403f2b:	48 89 fd             	mov    rbp,rdi
  403f2e:	48 81 ec 10 40 00 00 	sub    rsp,0x4010
  403f35:	48 8b 05 64 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c64]        # 607ba0 <stderr@@GLIBC_2.2.5+0x150>
  403f3c:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
  403f40:	48 3b 5f 18          	cmp    rbx,QWORD PTR [rdi+0x18]
  403f44:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403f4a:	48 8b 05 5f 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c5f]        # 607bb0 <stderr@@GLIBC_2.2.5+0x160>
  403f51:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403f57:	48 8b 05 62 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c62]        # 607bc0 <stderr@@GLIBC_2.2.5+0x170>
  403f5e:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403f64:	48 8b 05 2d 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c2d]        # 607b98 <stderr@@GLIBC_2.2.5+0x148>
  403f6b:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403f71:	48 8b 05 30 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c30]        # 607ba8 <stderr@@GLIBC_2.2.5+0x158>
  403f78:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403f7e:	48 8b 05 03 3c 20 00 	mov    rax,QWORD PTR [rip+0x203c03]        # 607b88 <stderr@@GLIBC_2.2.5+0x138>
  403f85:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  403f8b:	72 37                	jb     403fc4 <dlerror@plt+0x2564>
  403f8d:	e9 dd 00 00 00       	jmp    40406f <dlerror@plt+0x260f>
  403f92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  403f98:	3c 75                	cmp    al,0x75
  403f9a:	74 64                	je     404000 <dlerror@plt+0x25a0>
  403f9c:	3c 76                	cmp    al,0x76
  403f9e:	75 10                	jne    403fb0 <dlerror@plt+0x2550>
  403fa0:	48 8b 05 e1 3b 20 00 	mov    rax,QWORD PTR [rip+0x203be1]        # 607b88 <stderr@@GLIBC_2.2.5+0x138>
  403fa7:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403fad:	0f 1f 00             	nop    DWORD PTR [rax]
  403fb0:	48 89 de             	mov    rsi,rbx
  403fb3:	48 89 ef             	mov    rdi,rbp
  403fb6:	e8 e5 dc ff ff       	call   401ca0 <dlerror@plt+0x240>
  403fbb:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
  403fbf:	48 89 c3             	mov    rbx,rax
  403fc2:	76 64                	jbe    404028 <dlerror@plt+0x25c8>
  403fc4:	80 7b 11 6f          	cmp    BYTE PTR [rbx+0x11],0x6f
  403fc8:	75 e6                	jne    403fb0 <dlerror@plt+0x2550>
  403fca:	48 8d 73 12          	lea    rsi,[rbx+0x12]
  403fce:	bf e4 61 40 00       	mov    edi,0x4061e4
  403fd3:	b9 04 00 00 00       	mov    ecx,0x4
  403fd8:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
  403fda:	74 d4                	je     403fb0 <dlerror@plt+0x2550>
  403fdc:	0f b6 43 12          	movzx  eax,BYTE PTR [rbx+0x12]
  403fe0:	3c 57                	cmp    al,0x57
  403fe2:	74 2c                	je     404010 <dlerror@plt+0x25b0>
  403fe4:	7f b2                	jg     403f98 <dlerror@plt+0x2538>
  403fe6:	3c 4f                	cmp    al,0x4f
  403fe8:	75 c6                	jne    403fb0 <dlerror@plt+0x2550>
  403fea:	48 8b 05 9f 3b 20 00 	mov    rax,QWORD PTR [rip+0x203b9f]        # 607b90 <stderr@@GLIBC_2.2.5+0x140>
  403ff1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
  403ff7:	eb b7                	jmp    403fb0 <dlerror@plt+0x2550>
  403ff9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404000:	41 bc 01 00 00 00    	mov    r12d,0x1
  404006:	eb a8                	jmp    403fb0 <dlerror@plt+0x2550>
  404008:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40400f:	00 
  404010:	8b 05 4a 3d 21 00    	mov    eax,DWORD PTR [rip+0x213d4a]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  404016:	85 c0                	test   eax,eax
  404018:	74 6e                	je     404088 <dlerror@plt+0x2628>
  40401a:	48 8d 7b 14          	lea    rdi,[rbx+0x14]
  40401e:	e8 ed fe ff ff       	call   403f10 <dlerror@plt+0x24b0>
  404023:	eb 8b                	jmp    403fb0 <dlerror@plt+0x2550>
  404025:	0f 1f 00             	nop    DWORD PTR [rax]
  404028:	45 85 e4             	test   r12d,r12d
  40402b:	74 42                	je     40406f <dlerror@plt+0x260f>
  40402d:	48 8b 3d 0c 3a 20 00 	mov    rdi,QWORD PTR [rip+0x203a0c]        # 607a40 <stdout@@GLIBC_2.2.5>
  404034:	e8 b7 d8 ff ff       	call   4018f0 <fflush@plt>
  404039:	48 8b 3d 10 3a 20 00 	mov    rdi,QWORD PTR [rip+0x203a10]        # 607a50 <stderr@@GLIBC_2.2.5>
  404040:	e8 ab d8 ff ff       	call   4018f0 <fflush@plt>
  404045:	48 8b 3d fc 39 20 00 	mov    rdi,QWORD PTR [rip+0x2039fc]        # 607a48 <stdin@@GLIBC_2.2.5>
  40404c:	31 f6                	xor    esi,esi
  40404e:	e8 ed d6 ff ff       	call   401740 <setbuf@plt>
  404053:	48 8b 3d e6 39 20 00 	mov    rdi,QWORD PTR [rip+0x2039e6]        # 607a40 <stdout@@GLIBC_2.2.5>
  40405a:	31 f6                	xor    esi,esi
  40405c:	e8 df d6 ff ff       	call   401740 <setbuf@plt>
  404061:	48 8b 3d e8 39 20 00 	mov    rdi,QWORD PTR [rip+0x2039e8]        # 607a50 <stderr@@GLIBC_2.2.5>
  404068:	31 f6                	xor    esi,esi
  40406a:	e8 d1 d6 ff ff       	call   401740 <setbuf@plt>
  40406f:	31 c0                	xor    eax,eax
  404071:	48 81 c4 10 40 00 00 	add    rsp,0x4010
  404078:	5b                   	pop    rbx
  404079:	5d                   	pop    rbp
  40407a:	41 5c                	pop    r12
  40407c:	41 5d                	pop    r13
  40407e:	41 5e                	pop    r14
  404080:	c3                   	ret    
  404081:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404088:	4c 8d 73 14          	lea    r14,[rbx+0x14]
  40408c:	ba 00 10 00 00       	mov    edx,0x1000
  404091:	48 89 e7             	mov    rdi,rsp
  404094:	4c 89 f6             	mov    rsi,r14
  404097:	e8 14 d6 ff ff       	call   4016b0 <mbstowcs@plt>
  40409c:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  4040a0:	49 89 c5             	mov    r13,rax
  4040a3:	74 0e                	je     4040b3 <dlerror@plt+0x2653>
  4040a5:	48 89 e7             	mov    rdi,rsp
  4040a8:	ff 15 12 3a 20 00    	call   QWORD PTR [rip+0x203a12]        # 607ac0 <stderr@@GLIBC_2.2.5+0x70>
  4040ae:	e9 fd fe ff ff       	jmp    403fb0 <dlerror@plt+0x2550>
  4040b3:	31 c0                	xor    eax,eax
  4040b5:	4c 89 f6             	mov    rsi,r14
  4040b8:	bf 58 62 40 00       	mov    edi,0x406258
  4040bd:	e8 0e e3 ff ff       	call   4023d0 <dlerror@plt+0x970>
  4040c2:	44 89 e8             	mov    eax,r13d
  4040c5:	eb aa                	jmp    404071 <dlerror@plt+0x2611>
  4040c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4040ce:	00 00 
  4040d0:	53                   	push   rbx
  4040d1:	48 8d 77 38          	lea    rsi,[rdi+0x38]
  4040d5:	48 89 fb             	mov    rbx,rdi
  4040d8:	ba 40 00 00 00       	mov    edx,0x40
  4040dd:	48 81 ec 40 10 00 00 	sub    rsp,0x1040
  4040e4:	8b 05 72 39 20 00    	mov    eax,DWORD PTR [rip+0x203972]        # 607a5c <stderr@@GLIBC_2.2.5+0xc>
  4040ea:	48 89 e7             	mov    rdi,rsp
  4040ed:	83 e8 14             	sub    eax,0x14
  4040f0:	83 f8 09             	cmp    eax,0x9
  4040f3:	0f 96 c0             	setbe  al
  4040f6:	0f b6 c0             	movzx  eax,al
  4040f9:	89 05 61 3c 21 00    	mov    DWORD PTR [rip+0x213c61],eax        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  4040ff:	e8 3c d5 ff ff       	call   401640 <strncpy@plt>
  404104:	80 7c 24 3f 00       	cmp    BYTE PTR [rsp+0x3f],0x0
  404109:	75 3d                	jne    404148 <dlerror@plt+0x26e8>
  40410b:	48 8d b3 78 30 00 00 	lea    rsi,[rbx+0x3078]
  404112:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  404117:	48 89 e2             	mov    rdx,rsp
  40411a:	e8 01 f1 ff ff       	call   403220 <dlerror@plt+0x17c0>
  40411f:	48 8d 7c 24 40       	lea    rdi,[rsp+0x40]
  404124:	e8 f7 0f 00 00       	call   405120 <dlerror@plt+0x36c0>
  404129:	48 85 c0             	test   rax,rax
  40412c:	74 2d                	je     40415b <dlerror@plt+0x26fb>
  40412e:	8b 35 28 39 20 00    	mov    esi,DWORD PTR [rip+0x203928]        # 607a5c <stderr@@GLIBC_2.2.5+0xc>
  404134:	48 89 c7             	mov    rdi,rax
  404137:	e8 74 f4 ff ff       	call   4035b0 <dlerror@plt+0x1b50>
  40413c:	48 81 c4 40 10 00 00 	add    rsp,0x1040
  404143:	5b                   	pop    rbx
  404144:	c3                   	ret    
  404145:	0f 1f 00             	nop    DWORD PTR [rax]
  404148:	31 c0                	xor    eax,eax
  40414a:	bf a0 62 40 00       	mov    edi,0x4062a0
  40414f:	e8 7c e2 ff ff       	call   4023d0 <dlerror@plt+0x970>
  404154:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404159:	eb e1                	jmp    40413c <dlerror@plt+0x26dc>
  40415b:	e8 00 d9 ff ff       	call   401a60 <dlerror@plt>
  404160:	48 8d 74 24 40       	lea    rsi,[rsp+0x40]
  404165:	48 89 c2             	mov    rdx,rax
  404168:	bf c0 62 40 00       	mov    edi,0x4062c0
  40416d:	31 c0                	xor    eax,eax
  40416f:	e8 5c e2 ff ff       	call   4023d0 <dlerror@plt+0x970>
  404174:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404179:	eb c1                	jmp    40413c <dlerror@plt+0x26dc>
  40417b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404180:	31 c0                	xor    eax,eax
  404182:	c3                   	ret    
  404183:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40418a:	84 00 00 00 00 00 
  404190:	55                   	push   rbp
  404191:	53                   	push   rbx
  404192:	48 89 fd             	mov    rbp,rdi
  404195:	48 89 eb             	mov    rbx,rbp
  404198:	48 83 ec 08          	sub    rsp,0x8
  40419c:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  40419f:	48 85 ff             	test   rdi,rdi
  4041a2:	74 15                	je     4041b9 <dlerror@plt+0x2759>
  4041a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4041a8:	48 83 c3 08          	add    rbx,0x8
  4041ac:	e8 5f d4 ff ff       	call   401610 <free@plt>
  4041b1:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
  4041b4:	48 85 ff             	test   rdi,rdi
  4041b7:	75 ef                	jne    4041a8 <dlerror@plt+0x2748>
  4041b9:	48 83 c4 08          	add    rsp,0x8
  4041bd:	48 89 ef             	mov    rdi,rbp
  4041c0:	5b                   	pop    rbx
  4041c1:	5d                   	pop    rbp
  4041c2:	e9 49 d4 ff ff       	jmp    401610 <free@plt>
  4041c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4041ce:	00 00 
  4041d0:	41 57                	push   r15
  4041d2:	41 56                	push   r14
  4041d4:	41 55                	push   r13
  4041d6:	41 54                	push   r12
  4041d8:	49 89 f5             	mov    r13,rsi
  4041db:	55                   	push   rbp
  4041dc:	53                   	push   rbx
  4041dd:	31 f6                	xor    esi,esi
  4041df:	89 fb                	mov    ebx,edi
  4041e1:	31 ff                	xor    edi,edi
  4041e3:	48 83 ec 18          	sub    rsp,0x18
  4041e7:	e8 74 d7 ff ff       	call   401960 <setlocale@plt>
  4041ec:	48 89 c7             	mov    rdi,rax
  4041ef:	e8 bc d5 ff ff       	call   4017b0 <__strdup@plt>
  4041f4:	48 85 c0             	test   rax,rax
  4041f7:	49 89 c7             	mov    r15,rax
  4041fa:	0f 84 da 00 00 00    	je     4042da <dlerror@plt+0x287a>
  404200:	44 8d 73 01          	lea    r14d,[rbx+0x1]
  404204:	be 01 00 00 00       	mov    esi,0x1
  404209:	4d 63 f6             	movsxd r14,r14d
  40420c:	4a 8d 04 f5 00 00 00 	lea    rax,[r14*8+0x0]
  404213:	00 
  404214:	48 89 c7             	mov    rdi,rax
  404217:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40421c:	e8 bf d5 ff ff       	call   4017e0 <calloc@plt>
  404221:	48 85 c0             	test   rax,rax
  404224:	48 89 c5             	mov    rbp,rax
  404227:	0f 84 ad 00 00 00    	je     4042da <dlerror@plt+0x287a>
  40422d:	31 ff                	xor    edi,edi
  40422f:	be b8 54 40 00       	mov    esi,0x4054b8
  404234:	e8 27 d7 ff ff       	call   401960 <setlocale@plt>
  404239:	85 db                	test   ebx,ebx
  40423b:	7e 6b                	jle    4042a8 <dlerror@plt+0x2848>
  40423d:	83 eb 01             	sub    ebx,0x1
  404240:	45 31 f6             	xor    r14d,r14d
  404243:	48 83 c3 01          	add    rbx,0x1
  404247:	eb 10                	jmp    404259 <dlerror@plt+0x27f9>
  404249:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404250:	49 83 c6 01          	add    r14,0x1
  404254:	49 39 de             	cmp    r14,rbx
  404257:	74 4f                	je     4042a8 <dlerror@plt+0x2848>
  404259:	31 f6                	xor    esi,esi
  40425b:	4b 8b 7c f5 00       	mov    rdi,QWORD PTR [r13+r14*8+0x0]
  404260:	ff 15 2a 38 20 00    	call   QWORD PTR [rip+0x20382a]        # 607a90 <stderr@@GLIBC_2.2.5+0x40>
  404266:	48 85 c0             	test   rax,rax
  404269:	4a 89 44 f5 00       	mov    QWORD PTR [rbp+r14*8+0x0],rax
  40426e:	75 e0                	jne    404250 <dlerror@plt+0x27f0>
  404270:	48 89 ef             	mov    rdi,rbp
  404273:	e8 18 ff ff ff       	call   404190 <dlerror@plt+0x2730>
  404278:	4c 89 ff             	mov    rdi,r15
  40427b:	e8 90 d3 ff ff       	call   401610 <free@plt>
  404280:	41 8d 76 01          	lea    esi,[r14+0x1]
  404284:	31 c0                	xor    eax,eax
  404286:	bf f0 62 40 00       	mov    edi,0x4062f0
  40428b:	e8 40 e1 ff ff       	call   4023d0 <dlerror@plt+0x970>
  404290:	31 c0                	xor    eax,eax
  404292:	48 83 c4 18          	add    rsp,0x18
  404296:	5b                   	pop    rbx
  404297:	5d                   	pop    rbp
  404298:	41 5c                	pop    r12
  40429a:	41 5d                	pop    r13
  40429c:	41 5e                	pop    r14
  40429e:	41 5f                	pop    r15
  4042a0:	c3                   	ret    
  4042a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4042a8:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  4042ad:	4c 89 fe             	mov    rsi,r15
  4042b0:	31 ff                	xor    edi,edi
  4042b2:	48 c7 44 05 f8 00 00 	mov    QWORD PTR [rbp+rax*1-0x8],0x0
  4042b9:	00 00 
  4042bb:	e8 a0 d6 ff ff       	call   401960 <setlocale@plt>
  4042c0:	4c 89 ff             	mov    rdi,r15
  4042c3:	e8 48 d3 ff ff       	call   401610 <free@plt>
  4042c8:	48 83 c4 18          	add    rsp,0x18
  4042cc:	48 89 e8             	mov    rax,rbp
  4042cf:	5b                   	pop    rbx
  4042d0:	5d                   	pop    rbp
  4042d1:	41 5c                	pop    r12
  4042d3:	41 5d                	pop    r13
  4042d5:	41 5e                	pop    r14
  4042d7:	41 5f                	pop    r15
  4042d9:	c3                   	ret    
  4042da:	31 c0                	xor    eax,eax
  4042dc:	bf e9 61 40 00       	mov    edi,0x4061e9
  4042e1:	e8 ea e0 ff ff       	call   4023d0 <dlerror@plt+0x970>
  4042e6:	31 c0                	xor    eax,eax
  4042e8:	eb a8                	jmp    404292 <dlerror@plt+0x2832>
  4042ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4042f0:	55                   	push   rbp
  4042f1:	53                   	push   rbx
  4042f2:	48 89 f5             	mov    rbp,rsi
  4042f5:	48 89 fb             	mov    rbx,rdi
  4042f8:	31 f6                	xor    esi,esi
  4042fa:	31 ff                	xor    edi,edi
  4042fc:	48 83 ec 18          	sub    rsp,0x18
  404300:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  404305:	e8 56 d6 ff ff       	call   401960 <setlocale@plt>
  40430a:	48 89 c7             	mov    rdi,rax
  40430d:	e8 9e d4 ff ff       	call   4017b0 <__strdup@plt>
  404312:	31 ff                	xor    edi,edi
  404314:	be b8 54 40 00       	mov    esi,0x4054b8
  404319:	48 89 05 38 3a 21 00 	mov    QWORD PTR [rip+0x213a38],rax        # 617d58 <stderr@@GLIBC_2.2.5+0x10308>
  404320:	e8 3b d6 ff ff       	call   401960 <setlocale@plt>
  404325:	48 89 ef             	mov    rdi,rbp
  404328:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
  40432d:	ff 15 5d 37 20 00    	call   QWORD PTR [rip+0x20375d]        # 607a90 <stderr@@GLIBC_2.2.5+0x40>
  404333:	48 8b 35 1e 3a 21 00 	mov    rsi,QWORD PTR [rip+0x213a1e]        # 617d58 <stderr@@GLIBC_2.2.5+0x10308>
  40433a:	48 89 c5             	mov    rbp,rax
  40433d:	31 ff                	xor    edi,edi
  40433f:	e8 1c d6 ff ff       	call   401960 <setlocale@plt>
  404344:	48 85 ed             	test   rbp,rbp
  404347:	74 27                	je     404370 <dlerror@plt+0x2910>
  404349:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  40434e:	48 89 ee             	mov    rsi,rbp
  404351:	48 89 df             	mov    rdi,rbx
  404354:	e8 77 d4 ff ff       	call   4017d0 <wcsncpy@plt>
  404359:	48 89 ef             	mov    rdi,rbp
  40435c:	e8 af d2 ff ff       	call   401610 <free@plt>
  404361:	48 89 d8             	mov    rax,rbx
  404364:	48 83 c4 18          	add    rsp,0x18
  404368:	5b                   	pop    rbx
  404369:	5d                   	pop    rbp
  40436a:	c3                   	ret    
  40436b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404370:	31 c0                	xor    eax,eax
  404372:	eb f0                	jmp    404364 <dlerror@plt+0x2904>
  404374:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40437b:	00 00 00 00 00 
  404380:	55                   	push   rbp
  404381:	53                   	push   rbx
  404382:	48 8d 77 78          	lea    rsi,[rdi+0x78]
  404386:	48 89 fb             	mov    rbx,rdi
  404389:	ba 00 10 00 00       	mov    edx,0x1000
  40438e:	48 83 ec 08          	sub    rsp,0x8
  404392:	44 8b 15 c7 39 21 00 	mov    r10d,DWORD PTR [rip+0x2139c7]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  404399:	45 85 d2             	test   r10d,r10d
  40439c:	0f 84 06 01 00 00    	je     4044a8 <dlerror@plt+0x2a48>
  4043a2:	bf 40 6d 61 00       	mov    edi,0x616d40
  4043a7:	e8 94 d2 ff ff       	call   401640 <strncpy@plt>
  4043ac:	bf 40 6d 61 00       	mov    edi,0x616d40
  4043b1:	e8 2a fb ff ff       	call   403ee0 <dlerror@plt+0x2480>
  4043b6:	44 8b 0d a3 39 21 00 	mov    r9d,DWORD PTR [rip+0x2139a3]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  4043bd:	48 8d ab 78 30 00 00 	lea    rbp,[rbx+0x3078]
  4043c4:	45 85 c9             	test   r9d,r9d
  4043c7:	0f 85 03 01 00 00    	jne    4044d0 <dlerror@plt+0x2a70>
  4043cd:	ba 00 10 00 00       	mov    edx,0x1000
  4043d2:	48 89 ee             	mov    rsi,rbp
  4043d5:	bf 80 dc 60 00       	mov    edi,0x60dc80
  4043da:	e8 11 ff ff ff       	call   4042f0 <dlerror@plt+0x2890>
  4043df:	48 85 c0             	test   rax,rax
  4043e2:	0f 84 6c 02 00 00    	je     404654 <dlerror@plt+0x2bf4>
  4043e8:	bf 80 dc 60 00       	mov    edi,0x60dc80
  4043ed:	ff 15 4d 37 20 00    	call   QWORD PTR [rip+0x20374d]        # 607b40 <stderr@@GLIBC_2.2.5+0xf0>
  4043f3:	44 8b 05 66 39 21 00 	mov    r8d,DWORD PTR [rip+0x213966]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  4043fa:	48 89 ef             	mov    rdi,rbp
  4043fd:	45 85 c0             	test   r8d,r8d
  404400:	0f 84 f9 00 00 00    	je     4044ff <dlerror@plt+0x2a9f>
  404406:	e8 25 d3 ff ff       	call   401730 <strlen@plt>
  40440b:	b9 0e 20 00 00       	mov    ecx,0x200e
  404410:	48 89 c2             	mov    rdx,rax
  404413:	48 89 ee             	mov    rsi,rbp
  404416:	bf 40 bc 60 00       	mov    edi,0x60bc40
  40441b:	e8 10 d5 ff ff       	call   401930 <__strncpy_chk@plt>
  404420:	48 89 df             	mov    rdi,rbx
  404423:	e8 f8 fa ff ff       	call   403f20 <dlerror@plt+0x24c0>
  404428:	ff 15 32 37 20 00    	call   QWORD PTR [rip+0x203732]        # 607b60 <stderr@@GLIBC_2.2.5+0x110>
  40442e:	8b 15 2c 39 21 00    	mov    edx,DWORD PTR [rip+0x21392c]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  404434:	85 d2                	test   edx,edx
  404436:	0f 84 a4 01 00 00    	je     4045e0 <dlerror@plt+0x2b80>
  40443c:	bf 40 bc 60 00       	mov    edi,0x60bc40
  404441:	e8 aa fa ff ff       	call   403ef0 <dlerror@plt+0x2490>
  404446:	8b 05 14 39 21 00    	mov    eax,DWORD PTR [rip+0x213914]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  40444c:	48 8b b3 88 40 00 00 	mov    rsi,QWORD PTR [rbx+0x4088]
  404453:	8b bb 80 40 00 00    	mov    edi,DWORD PTR [rbx+0x4080]
  404459:	85 c0                	test   eax,eax
  40445b:	0f 85 8f 01 00 00    	jne    4045f0 <dlerror@plt+0x2b90>
  404461:	e8 6a fd ff ff       	call   4041d0 <dlerror@plt+0x2770>
  404466:	48 85 c0             	test   rax,rax
  404469:	48 89 c5             	mov    rbp,rax
  40446c:	0f 84 b8 01 00 00    	je     40462a <dlerror@plt+0x2bca>
  404472:	8b bb 80 40 00 00    	mov    edi,DWORD PTR [rbx+0x4080]
  404478:	31 d2                	xor    edx,edx
  40447a:	48 89 c6             	mov    rsi,rax
  40447d:	ff 15 35 36 20 00    	call   QWORD PTR [rip+0x203635]        # 607ab8 <stderr@@GLIBC_2.2.5+0x68>
  404483:	48 89 ef             	mov    rdi,rbp
  404486:	e8 05 fd ff ff       	call   404190 <dlerror@plt+0x2730>
  40448b:	ff 15 97 36 20 00    	call   QWORD PTR [rip+0x203697]        # 607b28 <stderr@@GLIBC_2.2.5+0xd8>
  404491:	48 85 c0             	test   rax,rax
  404494:	0f 85 66 01 00 00    	jne    404600 <dlerror@plt+0x2ba0>
  40449a:	48 83 c4 08          	add    rsp,0x8
  40449e:	5b                   	pop    rbx
  40449f:	5d                   	pop    rbp
  4044a0:	c3                   	ret    
  4044a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4044a8:	bf 00 2d 61 00       	mov    edi,0x612d00
  4044ad:	e8 3e fe ff ff       	call   4042f0 <dlerror@plt+0x2890>
  4044b2:	48 85 c0             	test   rax,rax
  4044b5:	0f 84 5b 01 00 00    	je     404616 <dlerror@plt+0x2bb6>
  4044bb:	bf 00 2d 61 00       	mov    edi,0x612d00
  4044c0:	ff 15 82 36 20 00    	call   QWORD PTR [rip+0x203682]        # 607b48 <stderr@@GLIBC_2.2.5+0xf8>
  4044c6:	e9 eb fe ff ff       	jmp    4043b6 <dlerror@plt+0x2956>
  4044cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4044d0:	ba 01 10 00 00       	mov    edx,0x1001
  4044d5:	48 89 ee             	mov    rsi,rbp
  4044d8:	bf c0 1c 61 00       	mov    edi,0x611cc0
  4044dd:	e8 5e d4 ff ff       	call   401940 <__strcpy_chk@plt>
  4044e2:	bf c0 1c 61 00       	mov    edi,0x611cc0
  4044e7:	e8 e4 f9 ff ff       	call   403ed0 <dlerror@plt+0x2470>
  4044ec:	44 8b 05 6d 38 21 00 	mov    r8d,DWORD PTR [rip+0x21386d]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  4044f3:	48 89 ef             	mov    rdi,rbp
  4044f6:	45 85 c0             	test   r8d,r8d
  4044f9:	0f 85 07 ff ff ff    	jne    404406 <dlerror@plt+0x29a6>
  4044ff:	e8 2c d2 ff ff       	call   401730 <strlen@plt>
  404504:	b9 0e 20 00 00       	mov    ecx,0x200e
  404509:	48 89 c2             	mov    rdx,rax
  40450c:	48 89 ee             	mov    rsi,rbp
  40450f:	bf 40 bc 60 00       	mov    edi,0x60bc40
  404514:	e8 17 d4 ff ff       	call   401930 <__strncpy_chk@plt>
  404519:	ba 40 bc 60 00       	mov    edx,0x60bc40
  40451e:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  404520:	48 83 c2 04          	add    rdx,0x4
  404524:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
  40452a:	f7 d1                	not    ecx
  40452c:	21 c8                	and    eax,ecx
  40452e:	25 80 80 80 80       	and    eax,0x80808080
  404533:	74 e9                	je     40451e <dlerror@plt+0x2abe>
  404535:	89 c1                	mov    ecx,eax
  404537:	be 2f 00 00 00       	mov    esi,0x2f
  40453c:	bf 3a 00 00 00       	mov    edi,0x3a
  404541:	c1 e9 10             	shr    ecx,0x10
  404544:	a9 80 80 00 00       	test   eax,0x8080
  404549:	0f 44 c1             	cmove  eax,ecx
  40454c:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
  404550:	48 0f 44 d1          	cmove  rdx,rcx
  404554:	00 c0                	add    al,al
  404556:	48 83 da 03          	sbb    rdx,0x3
  40455a:	48 81 ea 40 bc 60 00 	sub    rdx,0x60bc40
  404561:	48 8d 8a 40 bc 60 00 	lea    rcx,[rdx+0x60bc40]
  404568:	66 89 b2 40 bc 60 00 	mov    WORD PTR [rdx+0x60bc40],si
  40456f:	48 8d 82 41 bc 60 00 	lea    rax,[rdx+0x60bc41]
  404576:	48 ba 62 61 73 65 5f 	movabs rdx,0x62696c5f65736162
  40457d:	6c 69 62 
  404580:	48 89 51 01          	mov    QWORD PTR [rcx+0x1],rdx
  404584:	48 b9 72 61 72 79 2e 	movabs rcx,0x70697a2e79726172
  40458b:	7a 69 70 
  40458e:	66 89 78 10          	mov    WORD PTR [rax+0x10],di
  404592:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  404596:	48 89 ef             	mov    rdi,rbp
  404599:	e8 92 d1 ff ff       	call   401730 <strlen@plt>
  40459e:	b9 0e 20 00 00       	mov    ecx,0x200e
  4045a3:	48 89 c2             	mov    rdx,rax
  4045a6:	48 89 ee             	mov    rsi,rbp
  4045a9:	bf 40 bc 60 00       	mov    edi,0x60bc40
  4045ae:	e8 7d d4 ff ff       	call   401a30 <__strncat_chk@plt>
  4045b3:	ba 00 10 00 00       	mov    edx,0x1000
  4045b8:	be 40 bc 60 00       	mov    esi,0x60bc40
  4045bd:	bf 00 7c 60 00       	mov    edi,0x607c00
  4045c2:	e8 29 fd ff ff       	call   4042f0 <dlerror@plt+0x2890>
  4045c7:	48 85 c0             	test   rax,rax
  4045ca:	74 74                	je     404640 <dlerror@plt+0x2be0>
  4045cc:	bf 00 7c 60 00       	mov    edi,0x607c00
  4045d1:	ff 15 81 35 20 00    	call   QWORD PTR [rip+0x203581]        # 607b58 <stderr@@GLIBC_2.2.5+0x108>
  4045d7:	e9 44 fe ff ff       	jmp    404420 <dlerror@plt+0x29c0>
  4045dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4045e0:	bf 00 7c 60 00       	mov    edi,0x607c00
  4045e5:	ff 15 b5 34 20 00    	call   QWORD PTR [rip+0x2034b5]        # 607aa0 <stderr@@GLIBC_2.2.5+0x50>
  4045eb:	e9 56 fe ff ff       	jmp    404446 <dlerror@plt+0x29e6>
  4045f0:	31 d2                	xor    edx,edx
  4045f2:	e8 09 f9 ff ff       	call   403f00 <dlerror@plt+0x24a0>
  4045f7:	e9 8f fe ff ff       	jmp    40448b <dlerror@plt+0x2a2b>
  4045fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  404600:	31 c0                	xor    eax,eax
  404602:	bf d0 63 40 00       	mov    edi,0x4063d0
  404607:	e8 c4 dd ff ff       	call   4023d0 <dlerror@plt+0x970>
  40460c:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404611:	e9 84 fe ff ff       	jmp    40449a <dlerror@plt+0x2a3a>
  404616:	bf 30 63 40 00       	mov    edi,0x406330
  40461b:	e8 b0 dd ff ff       	call   4023d0 <dlerror@plt+0x970>
  404620:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404625:	e9 70 fe ff ff       	jmp    40449a <dlerror@plt+0x2a3a>
  40462a:	31 c0                	xor    eax,eax
  40462c:	bf a8 63 40 00       	mov    edi,0x4063a8
  404631:	e8 9a dd ff ff       	call   4023d0 <dlerror@plt+0x970>
  404636:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40463b:	e9 5a fe ff ff       	jmp    40449a <dlerror@plt+0x2a3a>
  404640:	bf 80 63 40 00       	mov    edi,0x406380
  404645:	e8 86 dd ff ff       	call   4023d0 <dlerror@plt+0x970>
  40464a:	b8 ff ff ff ff       	mov    eax,0xffffffff
  40464f:	e9 46 fe ff ff       	jmp    40449a <dlerror@plt+0x2a3a>
  404654:	bf 58 63 40 00       	mov    edi,0x406358
  404659:	e8 72 dd ff ff       	call   4023d0 <dlerror@plt+0x970>
  40465e:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404663:	e9 32 fe ff ff       	jmp    40449a <dlerror@plt+0x2a3a>
  404668:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40466f:	00 
  404670:	8b 15 ea 36 21 00    	mov    edx,DWORD PTR [rip+0x2136ea]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  404676:	41 56                	push   r14
  404678:	41 55                	push   r13
  40467a:	41 54                	push   r12
  40467c:	55                   	push   rbp
  40467d:	48 89 fd             	mov    rbp,rdi
  404680:	53                   	push   rbx
  404681:	85 d2                	test   edx,edx
  404683:	48 8d bf 78 30 00 00 	lea    rdi,[rdi+0x3078]
  40468a:	0f 84 68 01 00 00    	je     4047f8 <dlerror@plt+0x2d98>
  404690:	ff 15 32 34 20 00    	call   QWORD PTR [rip+0x203432]        # 607ac8 <stderr@@GLIBC_2.2.5+0x78>
  404696:	48 85 c0             	test   rax,rax
  404699:	0f 84 64 01 00 00    	je     404803 <dlerror@plt+0x2da3>
  40469f:	48 89 c6             	mov    rsi,rax
  4046a2:	bf f8 61 40 00       	mov    edi,0x4061f8
  4046a7:	ff 15 fb 33 20 00    	call   QWORD PTR [rip+0x2033fb]        # 607aa8 <stderr@@GLIBC_2.2.5+0x58>
  4046ad:	bf 01 62 40 00       	mov    edi,0x406201
  4046b2:	ff 15 50 34 20 00    	call   QWORD PTR [rip+0x203450]        # 607b08 <stderr@@GLIBC_2.2.5+0xb8>
  4046b8:	48 89 c7             	mov    rdi,rax
  4046bb:	ff 15 27 34 20 00    	call   QWORD PTR [rip+0x203427]        # 607ae8 <stderr@@GLIBC_2.2.5+0x98>
  4046c1:	be 09 62 40 00       	mov    esi,0x406209
  4046c6:	48 89 c7             	mov    rdi,rax
  4046c9:	ff 15 69 34 20 00    	call   QWORD PTR [rip+0x203469]        # 607b38 <stderr@@GLIBC_2.2.5+0xe8>
  4046cf:	48 8b 5d 10          	mov    rbx,QWORD PTR [rbp+0x10]
  4046d3:	48 3b 5d 18          	cmp    rbx,QWORD PTR [rbp+0x18]
  4046d7:	49 89 c5             	mov    r13,rax
  4046da:	72 24                	jb     404700 <dlerror@plt+0x2ca0>
  4046dc:	e9 e7 00 00 00       	jmp    4047c8 <dlerror@plt+0x2d68>
  4046e1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4046e8:	48 89 de             	mov    rsi,rbx
  4046eb:	48 89 ef             	mov    rdi,rbp
  4046ee:	e8 ad d5 ff ff       	call   401ca0 <dlerror@plt+0x240>
  4046f3:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
  4046f7:	48 89 c3             	mov    rbx,rax
  4046fa:	0f 86 c8 00 00 00    	jbe    4047c8 <dlerror@plt+0x2d68>
  404700:	0f b6 53 11          	movzx  edx,BYTE PTR [rbx+0x11]
  404704:	83 e2 df             	and    edx,0xffffffdf
  404707:	80 fa 4d             	cmp    dl,0x4d
  40470a:	75 dc                	jne    4046e8 <dlerror@plt+0x2c88>
  40470c:	48 89 de             	mov    rsi,rbx
  40470f:	48 89 ef             	mov    rdi,rbp
  404712:	e8 b9 d5 ff ff       	call   401cd0 <dlerror@plt+0x270>
  404717:	49 89 c4             	mov    r12,rax
  40471a:	8b 05 40 36 21 00    	mov    eax,DWORD PTR [rip+0x213640]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  404720:	8b 4b 0c             	mov    ecx,DWORD PTR [rbx+0xc]
  404723:	85 c0                	test   eax,eax
  404725:	0f c9                	bswap  ecx
  404727:	0f 85 ab 00 00 00    	jne    4047d8 <dlerror@plt+0x2d78>
  40472d:	83 3d 28 33 20 00 24 	cmp    DWORD PTR [rip+0x203328],0x24        # 607a5c <stderr@@GLIBC_2.2.5+0xc>
  404734:	7e 5a                	jle    404790 <dlerror@plt+0x2d30>
  404736:	83 e9 10             	sub    ecx,0x10
  404739:	49 8d 54 24 10       	lea    rdx,[r12+0x10]
  40473e:	be 12 62 40 00       	mov    esi,0x406212
  404743:	4c 89 ef             	mov    rdi,r13
  404746:	31 c0                	xor    eax,eax
  404748:	ff 15 92 33 20 00    	call   QWORD PTR [rip+0x203392]        # 607ae0 <stderr@@GLIBC_2.2.5+0x90>
  40474e:	48 85 c0             	test   rax,rax
  404751:	4c 8d 73 12          	lea    r14,[rbx+0x12]
  404755:	74 5a                	je     4047b1 <dlerror@plt+0x2d51>
  404757:	48 89 c6             	mov    rsi,rax
  40475a:	4c 89 f7             	mov    rdi,r14
  40475d:	ff 15 ad 33 20 00    	call   QWORD PTR [rip+0x2033ad]        # 607b10 <stderr@@GLIBC_2.2.5+0xc0>
  404763:	48 85 c0             	test   rax,rax
  404766:	74 49                	je     4047b1 <dlerror@plt+0x2d51>
  404768:	ff 15 ba 33 20 00    	call   QWORD PTR [rip+0x2033ba]        # 607b28 <stderr@@GLIBC_2.2.5+0xd8>
  40476e:	48 85 c0             	test   rax,rax
  404771:	74 0c                	je     40477f <dlerror@plt+0x2d1f>
  404773:	ff 15 a7 33 20 00    	call   QWORD PTR [rip+0x2033a7]        # 607b20 <stderr@@GLIBC_2.2.5+0xd0>
  404779:	ff 15 b1 33 20 00    	call   QWORD PTR [rip+0x2033b1]        # 607b30 <stderr@@GLIBC_2.2.5+0xe0>
  40477f:	4c 89 e7             	mov    rdi,r12
  404782:	e8 89 ce ff ff       	call   401610 <free@plt>
  404787:	e9 5c ff ff ff       	jmp    4046e8 <dlerror@plt+0x2c88>
  40478c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  404790:	83 e9 0c             	sub    ecx,0xc
  404793:	31 c0                	xor    eax,eax
  404795:	49 8d 54 24 0c       	lea    rdx,[r12+0xc]
  40479a:	be 12 62 40 00       	mov    esi,0x406212
  40479f:	4c 89 ef             	mov    rdi,r13
  4047a2:	4c 8d 73 12          	lea    r14,[rbx+0x12]
  4047a6:	ff 15 34 33 20 00    	call   QWORD PTR [rip+0x203334]        # 607ae0 <stderr@@GLIBC_2.2.5+0x90>
  4047ac:	48 85 c0             	test   rax,rax
  4047af:	75 a6                	jne    404757 <dlerror@plt+0x2cf7>
  4047b1:	4c 89 f6             	mov    rsi,r14
  4047b4:	bf 15 62 40 00       	mov    edi,0x406215
  4047b9:	31 c0                	xor    eax,eax
  4047bb:	e8 10 dc ff ff       	call   4023d0 <dlerror@plt+0x970>
  4047c0:	eb a6                	jmp    404768 <dlerror@plt+0x2d08>
  4047c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4047c8:	31 c0                	xor    eax,eax
  4047ca:	5b                   	pop    rbx
  4047cb:	5d                   	pop    rbp
  4047cc:	41 5c                	pop    r12
  4047ce:	41 5d                	pop    r13
  4047d0:	41 5e                	pop    r14
  4047d2:	c3                   	ret    
  4047d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4047d8:	83 e9 08             	sub    ecx,0x8
  4047db:	49 8d 54 24 08       	lea    rdx,[r12+0x8]
  4047e0:	be 0f 62 40 00       	mov    esi,0x40620f
  4047e5:	4c 89 ef             	mov    rdi,r13
  4047e8:	31 c0                	xor    eax,eax
  4047ea:	ff 15 f0 32 20 00    	call   QWORD PTR [rip+0x2032f0]        # 607ae0 <stderr@@GLIBC_2.2.5+0x90>
  4047f0:	e9 59 ff ff ff       	jmp    40474e <dlerror@plt+0x2cee>
  4047f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4047f8:	ff 15 7a 32 20 00    	call   QWORD PTR [rip+0x20327a]        # 607a78 <stderr@@GLIBC_2.2.5+0x28>
  4047fe:	e9 93 fe ff ff       	jmp    404696 <dlerror@plt+0x2c36>
  404803:	bf f8 63 40 00       	mov    edi,0x4063f8
  404808:	e8 c3 db ff ff       	call   4023d0 <dlerror@plt+0x970>
  40480d:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404812:	eb b6                	jmp    4047ca <dlerror@plt+0x2d6a>
  404814:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40481b:	00 00 00 00 00 
  404820:	55                   	push   rbp
  404821:	53                   	push   rbx
  404822:	48 83 ec 08          	sub    rsp,0x8
  404826:	8b 5e 04             	mov    ebx,DWORD PTR [rsi+0x4]
  404829:	8b 05 31 35 21 00    	mov    eax,DWORD PTR [rip+0x213531]        # 617d60 <stderr@@GLIBC_2.2.5+0x10310>
  40482f:	0f cb                	bswap  ebx
  404831:	03 5f 08             	add    ebx,DWORD PTR [rdi+0x8]
  404834:	85 c0                	test   eax,eax
  404836:	74 48                	je     404880 <dlerror@plt+0x2e20>
  404838:	48 8d 77 78          	lea    rsi,[rdi+0x78]
  40483c:	89 da                	mov    edx,ebx
  40483e:	bf 26 62 40 00       	mov    edi,0x406226
  404843:	31 c0                	xor    eax,eax
  404845:	ff 15 3d 32 20 00    	call   QWORD PTR [rip+0x20323d]        # 607a88 <stderr@@GLIBC_2.2.5+0x38>
  40484b:	48 89 c3             	mov    rbx,rax
  40484e:	bf 32 62 40 00       	mov    edi,0x406232
  404853:	ff 15 57 32 20 00    	call   QWORD PTR [rip+0x203257]        # 607ab0 <stderr@@GLIBC_2.2.5+0x60>
  404859:	48 85 c0             	test   rax,rax
  40485c:	74 65                	je     4048c3 <dlerror@plt+0x2e63>
  40485e:	48 89 de             	mov    rsi,rbx
  404861:	48 89 c7             	mov    rdi,rax
  404864:	ff 15 96 32 20 00    	call   QWORD PTR [rip+0x203296]        # 607b00 <stderr@@GLIBC_2.2.5+0xb0>
  40486a:	89 c3                	mov    ebx,eax
  40486c:	31 c0                	xor    eax,eax
  40486e:	85 db                	test   ebx,ebx
  404870:	75 3e                	jne    4048b0 <dlerror@plt+0x2e50>
  404872:	48 83 c4 08          	add    rsp,0x8
  404876:	5b                   	pop    rbx
  404877:	5d                   	pop    rbp
  404878:	c3                   	ret    
  404879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404880:	48 83 c7 78          	add    rdi,0x78
  404884:	ff 15 ee 31 20 00    	call   QWORD PTR [rip+0x2031ee]        # 607a78 <stderr@@GLIBC_2.2.5+0x28>
  40488a:	48 89 c5             	mov    rbp,rax
  40488d:	89 da                	mov    edx,ebx
  40488f:	48 89 c6             	mov    rsi,rax
  404892:	bf 2c 62 40 00       	mov    edi,0x40622c
  404897:	31 c0                	xor    eax,eax
  404899:	ff 15 e1 31 20 00    	call   QWORD PTR [rip+0x2031e1]        # 607a80 <stderr@@GLIBC_2.2.5+0x30>
  40489f:	48 89 ef             	mov    rdi,rbp
  4048a2:	48 89 c3             	mov    rbx,rax
  4048a5:	ff 15 cd 32 20 00    	call   QWORD PTR [rip+0x2032cd]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  4048ab:	eb a1                	jmp    40484e <dlerror@plt+0x2dee>
  4048ad:	0f 1f 00             	nop    DWORD PTR [rax]
  4048b0:	bf 37 62 40 00       	mov    edi,0x406237
  4048b5:	e8 16 db ff ff       	call   4023d0 <dlerror@plt+0x970>
  4048ba:	48 83 c4 08          	add    rsp,0x8
  4048be:	89 d8                	mov    eax,ebx
  4048c0:	5b                   	pop    rbx
  4048c1:	5d                   	pop    rbp
  4048c2:	c3                   	ret    
  4048c3:	bf 20 64 40 00       	mov    edi,0x406420
  4048c8:	e8 03 db ff ff       	call   4023d0 <dlerror@plt+0x970>
  4048cd:	48 89 df             	mov    rdi,rbx
  4048d0:	ff 15 a2 32 20 00    	call   QWORD PTR [rip+0x2032a2]        # 607b78 <stderr@@GLIBC_2.2.5+0x128>
  4048d6:	b8 ff ff ff ff       	mov    eax,0xffffffff
  4048db:	eb 95                	jmp    404872 <dlerror@plt+0x2e12>
  4048dd:	0f 1f 00             	nop    DWORD PTR [rax]
  4048e0:	55                   	push   rbp
  4048e1:	53                   	push   rbx
  4048e2:	48 89 fd             	mov    rbp,rdi
  4048e5:	48 83 ec 08          	sub    rsp,0x8
  4048e9:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
  4048ed:	48 3b 5f 18          	cmp    rbx,QWORD PTR [rdi+0x18]
  4048f1:	72 19                	jb     40490c <dlerror@plt+0x2eac>
  4048f3:	eb 2b                	jmp    404920 <dlerror@plt+0x2ec0>
  4048f5:	0f 1f 00             	nop    DWORD PTR [rax]
  4048f8:	48 89 de             	mov    rsi,rbx
  4048fb:	48 89 ef             	mov    rdi,rbp
  4048fe:	e8 9d d3 ff ff       	call   401ca0 <dlerror@plt+0x240>
  404903:	48 39 45 18          	cmp    QWORD PTR [rbp+0x18],rax
  404907:	48 89 c3             	mov    rbx,rax
  40490a:	76 14                	jbe    404920 <dlerror@plt+0x2ec0>
  40490c:	80 7b 11 7a          	cmp    BYTE PTR [rbx+0x11],0x7a
  404910:	75 e6                	jne    4048f8 <dlerror@plt+0x2e98>
  404912:	48 89 de             	mov    rsi,rbx
  404915:	48 89 ef             	mov    rdi,rbp
  404918:	e8 03 ff ff ff       	call   404820 <dlerror@plt+0x2dc0>
  40491d:	eb d9                	jmp    4048f8 <dlerror@plt+0x2e98>
  40491f:	90                   	nop
  404920:	48 83 c4 08          	add    rsp,0x8
  404924:	31 c0                	xor    eax,eax
  404926:	5b                   	pop    rbx
  404927:	5d                   	pop    rbp
  404928:	c3                   	ret    
  404929:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404930:	83 bf 7c 40 00 00 01 	cmp    DWORD PTR [rdi+0x407c],0x1
  404937:	74 07                	je     404940 <dlerror@plt+0x2ee0>
  404939:	f3 c3                	repz ret 
  40493b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404940:	48 8b 05 29 32 20 00 	mov    rax,QWORD PTR [rip+0x203229]        # 607b70 <stderr@@GLIBC_2.2.5+0x120>
  404947:	ff e0                	jmp    rax
  404949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404950:	f3 c3                	repz ret 
  404952:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  404959:	1f 84 00 00 00 00 00 
  404960:	89 fe                	mov    esi,edi
  404962:	8b 3d e0 33 21 00    	mov    edi,DWORD PTR [rip+0x2133e0]        # 617d48 <stderr@@GLIBC_2.2.5+0x102f8>
  404968:	e9 03 cf ff ff       	jmp    401870 <kill@plt>
  40496d:	0f 1f 00             	nop    DWORD PTR [rax]
  404970:	41 57                	push   r15
  404972:	41 56                	push   r14
  404974:	49 89 f7             	mov    r15,rsi
  404977:	41 55                	push   r13
  404979:	41 54                	push   r12
  40497b:	49 89 fe             	mov    r14,rdi
  40497e:	55                   	push   rbp
  40497f:	53                   	push   rbx
  404980:	49 89 d5             	mov    r13,rdx
  404983:	48 83 ec 18          	sub    rsp,0x18
  404987:	48 85 ff             	test   rdi,rdi
  40498a:	0f 84 b8 00 00 00    	je     404a48 <dlerror@plt+0x2fe8>
  404990:	e8 9b cd ff ff       	call   401730 <strlen@plt>
  404995:	4d 85 ff             	test   r15,r15
  404998:	89 c5                	mov    ebp,eax
  40499a:	0f 84 b8 00 00 00    	je     404a58 <dlerror@plt+0x2ff8>
  4049a0:	4c 89 ff             	mov    rdi,r15
  4049a3:	e8 88 cd ff ff       	call   401730 <strlen@plt>
  4049a8:	4d 85 ed             	test   r13,r13
  4049ab:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  4049af:	0f 84 bb 00 00 00    	je     404a70 <dlerror@plt+0x3010>
  4049b5:	4c 89 ef             	mov    rdi,r13
  4049b8:	e8 73 cd ff ff       	call   401730 <strlen@plt>
  4049bd:	41 89 c4             	mov    r12d,eax
  4049c0:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  4049c4:	01 e8                	add    eax,ebp
  4049c6:	41 8d 7c 04 01       	lea    edi,[r12+rax*1+0x1]
  4049cb:	48 63 ff             	movsxd rdi,edi
  4049ce:	e8 0d cf ff ff       	call   4018e0 <malloc@plt>
  4049d3:	48 85 c0             	test   rax,rax
  4049d6:	48 89 c3             	mov    rbx,rax
  4049d9:	0f 84 a1 00 00 00    	je     404a80 <dlerror@plt+0x3020>
  4049df:	85 ed                	test   ebp,ebp
  4049e1:	c6 00 00             	mov    BYTE PTR [rax],0x0
  4049e4:	75 1a                	jne    404a00 <dlerror@plt+0x2fa0>
  4049e6:	45 85 e4             	test   r12d,r12d
  4049e9:	48 89 d8             	mov    rax,rbx
  4049ec:	75 38                	jne    404a26 <dlerror@plt+0x2fc6>
  4049ee:	48 83 c4 18          	add    rsp,0x18
  4049f2:	5b                   	pop    rbx
  4049f3:	5d                   	pop    rbp
  4049f4:	41 5c                	pop    r12
  4049f6:	41 5d                	pop    r13
  4049f8:	41 5e                	pop    r14
  4049fa:	41 5f                	pop    r15
  4049fc:	c3                   	ret    
  4049fd:	0f 1f 00             	nop    DWORD PTR [rax]
  404a00:	48 89 c7             	mov    rdi,rax
  404a03:	4c 89 f6             	mov    rsi,r14
  404a06:	e8 05 cd ff ff       	call   401710 <stpcpy@plt>
  404a0b:	48 89 c7             	mov    rdi,rax
  404a0e:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  404a12:	85 c0                	test   eax,eax
  404a14:	74 d0                	je     4049e6 <dlerror@plt+0x2f86>
  404a16:	45 85 e4             	test   r12d,r12d
  404a19:	48 89 d8             	mov    rax,rbx
  404a1c:	74 d0                	je     4049ee <dlerror@plt+0x2f8e>
  404a1e:	4c 89 fe             	mov    rsi,r15
  404a21:	e8 3a cc ff ff       	call   401660 <strcpy@plt>
  404a26:	4c 89 ee             	mov    rsi,r13
  404a29:	48 89 df             	mov    rdi,rbx
  404a2c:	e8 bf cf ff ff       	call   4019f0 <strcat@plt>
  404a31:	48 83 c4 18          	add    rsp,0x18
  404a35:	48 89 d8             	mov    rax,rbx
  404a38:	5b                   	pop    rbx
  404a39:	5d                   	pop    rbp
  404a3a:	41 5c                	pop    r12
  404a3c:	41 5d                	pop    r13
  404a3e:	41 5e                	pop    r14
  404a40:	41 5f                	pop    r15
  404a42:	c3                   	ret    
  404a43:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404a48:	31 ed                	xor    ebp,ebp
  404a4a:	4d 85 ff             	test   r15,r15
  404a4d:	0f 85 4d ff ff ff    	jne    4049a0 <dlerror@plt+0x2f40>
  404a53:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404a58:	4d 85 ed             	test   r13,r13
  404a5b:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [rsp+0xc],0x0
  404a62:	00 
  404a63:	0f 85 4c ff ff ff    	jne    4049b5 <dlerror@plt+0x2f55>
  404a69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404a70:	45 31 e4             	xor    r12d,r12d
  404a73:	e9 48 ff ff ff       	jmp    4049c0 <dlerror@plt+0x2f60>
  404a78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  404a7f:	00 
  404a80:	31 c0                	xor    eax,eax
  404a82:	e9 67 ff ff ff       	jmp    4049ee <dlerror@plt+0x2f8e>
  404a87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  404a8e:	00 00 
  404a90:	48 83 ec 08          	sub    rsp,0x8
  404a94:	e8 47 cb ff ff       	call   4015e0 <getenv@plt>
  404a99:	48 85 c0             	test   rax,rax
  404a9c:	74 12                	je     404ab0 <dlerror@plt+0x3050>
  404a9e:	80 38 00             	cmp    BYTE PTR [rax],0x0
  404aa1:	74 0d                	je     404ab0 <dlerror@plt+0x3050>
  404aa3:	48 89 c7             	mov    rdi,rax
  404aa6:	48 83 c4 08          	add    rsp,0x8
  404aaa:	e9 01 cd ff ff       	jmp    4017b0 <__strdup@plt>
  404aaf:	90                   	nop
  404ab0:	31 c0                	xor    eax,eax
  404ab2:	48 83 c4 08          	add    rsp,0x8
  404ab6:	c3                   	ret    
  404ab7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  404abe:	00 00 
  404ac0:	55                   	push   rbp
  404ac1:	53                   	push   rbx
  404ac2:	48 89 fd             	mov    rbp,rdi
  404ac5:	bf 48 64 40 00       	mov    edi,0x406448
  404aca:	48 83 ec 08          	sub    rsp,0x8
  404ace:	e8 bd ff ff ff       	call   404a90 <dlerror@plt+0x3030>
  404ad3:	48 85 c0             	test   rax,rax
  404ad6:	48 89 c3             	mov    rbx,rax
  404ad9:	74 12                	je     404aed <dlerror@plt+0x308d>
  404adb:	ba 01 00 00 00       	mov    edx,0x1
  404ae0:	48 89 c6             	mov    rsi,rax
  404ae3:	bf 58 64 40 00       	mov    edi,0x406458
  404ae8:	e8 e3 cb ff ff       	call   4016d0 <setenv@plt>
  404aed:	48 89 da             	mov    rdx,rbx
  404af0:	48 89 ef             	mov    rdi,rbp
  404af3:	be d9 55 40 00       	mov    esi,0x4055d9
  404af8:	e8 73 fe ff ff       	call   404970 <dlerror@plt+0x2f10>
  404afd:	ba 01 00 00 00       	mov    edx,0x1
  404b02:	48 89 c3             	mov    rbx,rax
  404b05:	48 89 c6             	mov    rsi,rax
  404b08:	bf 48 64 40 00       	mov    edi,0x406448
  404b0d:	e8 be cb ff ff       	call   4016d0 <setenv@plt>
  404b12:	48 89 df             	mov    rdi,rbx
  404b15:	89 c5                	mov    ebp,eax
  404b17:	e8 f4 ca ff ff       	call   401610 <free@plt>
  404b1c:	48 83 c4 08          	add    rsp,0x8
  404b20:	89 e8                	mov    eax,ebp
  404b22:	5b                   	pop    rbx
  404b23:	5d                   	pop    rbp
  404b24:	c3                   	ret    
  404b25:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  404b2c:	00 00 00 00 
  404b30:	ba 01 00 00 00       	mov    edx,0x1
  404b35:	e9 96 cb ff ff       	jmp    4016d0 <setenv@plt>
  404b3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  404b40:	e9 8b ce ff ff       	jmp    4019d0 <unsetenv@plt>
  404b45:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  404b4c:	00 00 00 00 
  404b50:	53                   	push   rbx
  404b51:	48 89 fb             	mov    rbx,rdi
  404b54:	e8 d7 cb ff ff       	call   401730 <strlen@plt>
  404b59:	80 7c 03 ff 2f       	cmp    BYTE PTR [rbx+rax*1-0x1],0x2f
  404b5e:	74 11                	je     404b71 <dlerror@plt+0x3111>
  404b60:	b9 2f 00 00 00       	mov    ecx,0x2f
  404b65:	48 89 df             	mov    rdi,rbx
  404b68:	66 89 0c 03          	mov    WORD PTR [rbx+rax*1],cx
  404b6c:	e8 bf cb ff ff       	call   401730 <strlen@plt>
  404b71:	48 01 d8             	add    rax,rbx
  404b74:	48 ba 5f 4d 45 49 58 	movabs rdx,0x5858585849454d5f
  404b7b:	58 58 58 
  404b7e:	48 89 df             	mov    rdi,rbx
  404b81:	48 89 10             	mov    QWORD PTR [rax],rdx
  404b84:	ba 58 58 00 00       	mov    edx,0x5858
  404b89:	c6 40 0a 00          	mov    BYTE PTR [rax+0xa],0x0
  404b8d:	66 89 50 08          	mov    WORD PTR [rax+0x8],dx
  404b91:	e8 ba cd ff ff       	call   401950 <mkdtemp@plt>
  404b96:	48 85 c0             	test   rax,rax
  404b99:	0f 95 c0             	setne  al
  404b9c:	0f b6 c0             	movzx  eax,al
  404b9f:	5b                   	pop    rbx
  404ba0:	c3                   	ret    
  404ba1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  404ba8:	0f 1f 84 00 00 00 00 
  404baf:	00 
  404bb0:	31 c0                	xor    eax,eax
  404bb2:	83 bf 78 40 00 00 01 	cmp    DWORD PTR [rdi+0x4078],0x1
  404bb9:	74 53                	je     404c0e <dlerror@plt+0x31ae>
  404bbb:	41 54                	push   r12
  404bbd:	55                   	push   rbp
  404bbe:	be 74 64 40 00       	mov    esi,0x406474
  404bc3:	53                   	push   rbx
  404bc4:	49 89 fc             	mov    r12,rdi
  404bc7:	49 8d 9c 24 78 20 00 	lea    rbx,[r12+0x2078]
  404bce:	00 
  404bcf:	e8 8c d6 ff ff       	call   402260 <dlerror@plt+0x800>
  404bd4:	48 85 c0             	test   rax,rax
  404bd7:	74 37                	je     404c10 <dlerror@plt+0x31b0>
  404bd9:	ba 00 10 00 00       	mov    edx,0x1000
  404bde:	48 89 c6             	mov    rsi,rax
  404be1:	48 89 df             	mov    rdi,rbx
  404be4:	e8 57 cd ff ff       	call   401940 <__strcpy_chk@plt>
  404be9:	48 89 df             	mov    rdi,rbx
  404bec:	e8 5f ff ff ff       	call   404b50 <dlerror@plt+0x30f0>
  404bf1:	85 c0                	test   eax,eax
  404bf3:	0f 85 97 00 00 00    	jne    404c90 <dlerror@plt+0x3230>
  404bf9:	31 c0                	xor    eax,eax
  404bfb:	bf d8 64 40 00       	mov    edi,0x4064d8
  404c00:	e8 cb d7 ff ff       	call   4023d0 <dlerror@plt+0x970>
  404c05:	b8 ff ff ff ff       	mov    eax,0xffffffff
  404c0a:	5b                   	pop    rbx
  404c0b:	5d                   	pop    rbp
  404c0c:	41 5c                	pop    r12
  404c0e:	f3 c3                	repz ret 
  404c10:	bd 80 65 40 00       	mov    ebp,0x406580
  404c15:	bf 6d 64 40 00       	mov    edi,0x40646d
  404c1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  404c20:	e8 6b fe ff ff       	call   404a90 <dlerror@plt+0x3030>
  404c25:	48 85 c0             	test   rax,rax
  404c28:	74 1c                	je     404c46 <dlerror@plt+0x31e6>
  404c2a:	ba 00 10 00 00       	mov    edx,0x1000
  404c2f:	48 89 c6             	mov    rsi,rax
  404c32:	48 89 df             	mov    rdi,rbx
  404c35:	e8 06 cd ff ff       	call   401940 <__strcpy_chk@plt>
  404c3a:	48 89 df             	mov    rdi,rbx
  404c3d:	e8 0e ff ff ff       	call   404b50 <dlerror@plt+0x30f0>
  404c42:	85 c0                	test   eax,eax
  404c44:	75 4a                	jne    404c90 <dlerror@plt+0x3230>
  404c46:	48 83 c5 08          	add    rbp,0x8
  404c4a:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
  404c4e:	48 85 ff             	test   rdi,rdi
  404c51:	75 cd                	jne    404c20 <dlerror@plt+0x31c0>
  404c53:	bd 60 65 40 00       	mov    ebp,0x406560
  404c58:	be bb 64 40 00       	mov    esi,0x4064bb
  404c5d:	eb 0e                	jmp    404c6d <dlerror@plt+0x320d>
  404c5f:	90                   	nop
  404c60:	48 83 c5 08          	add    rbp,0x8
  404c64:	48 8b 75 00          	mov    rsi,QWORD PTR [rbp+0x0]
  404c68:	48 85 f6             	test   rsi,rsi
  404c6b:	74 8c                	je     404bf9 <dlerror@plt+0x3199>
  404c6d:	ba 00 10 00 00       	mov    edx,0x1000
  404c72:	48 89 df             	mov    rdi,rbx
  404c75:	e8 c6 cc ff ff       	call   401940 <__strcpy_chk@plt>
  404c7a:	48 89 df             	mov    rdi,rbx
  404c7d:	e8 ce fe ff ff       	call   404b50 <dlerror@plt+0x30f0>
  404c82:	85 c0                	test   eax,eax
  404c84:	74 da                	je     404c60 <dlerror@plt+0x3200>
  404c86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  404c8d:	00 00 00 
  404c90:	41 c7 84 24 78 40 00 	mov    DWORD PTR [r12+0x4078],0x1
  404c97:	00 01 00 00 00 
  404c9c:	31 c0                	xor    eax,eax
  404c9e:	e9 67 ff ff ff       	jmp    404c0a <dlerror@plt+0x31aa>
  404ca3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  404caa:	84 00 00 00 00 00 
  404cb0:	41 55                	push   r13
  404cb2:	41 54                	push   r12
  404cb4:	ba 00 10 00 00       	mov    edx,0x1000
  404cb9:	55                   	push   rbp
  404cba:	53                   	push   rbx
  404cbb:	48 89 fe             	mov    rsi,rdi
  404cbe:	49 89 fd             	mov    r13,rdi
  404cc1:	48 81 ec a8 10 00 00 	sub    rsp,0x10a8
  404cc8:	48 8d ac 24 90 00 00 	lea    rbp,[rsp+0x90]
  404ccf:	00 
  404cd0:	48 89 ef             	mov    rdi,rbp
  404cd3:	e8 68 c9 ff ff       	call   401640 <strncpy@plt>
  404cd8:	48 89 ea             	mov    rdx,rbp
  404cdb:	8b 0a                	mov    ecx,DWORD PTR [rdx]
  404cdd:	48 83 c2 04          	add    rdx,0x4
  404ce1:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
  404ce7:	f7 d1                	not    ecx
  404ce9:	21 c8                	and    eax,ecx
  404ceb:	25 80 80 80 80       	and    eax,0x80808080
  404cf0:	74 e9                	je     404cdb <dlerror@plt+0x327b>
  404cf2:	89 c1                	mov    ecx,eax
  404cf4:	c1 e9 10             	shr    ecx,0x10
  404cf7:	a9 80 80 00 00       	test   eax,0x8080
  404cfc:	0f 44 c1             	cmove  eax,ecx
  404cff:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
  404d03:	48 0f 44 d1          	cmove  rdx,rcx
  404d07:	00 c0                	add    al,al
  404d09:	48 83 da 03          	sbb    rdx,0x3
  404d0d:	48 29 ea             	sub    rdx,rbp
  404d10:	8d 42 ff             	lea    eax,[rdx-0x1]
  404d13:	41 89 d4             	mov    r12d,edx
  404d16:	48 98                	cdqe   
  404d18:	80 bc 04 90 00 00 00 	cmp    BYTE PTR [rsp+rax*1+0x90],0x2f
  404d1f:	2f 
  404d20:	74 0e                	je     404d30 <dlerror@plt+0x32d0>
  404d22:	b8 2f 00 00 00       	mov    eax,0x2f
  404d27:	44 8d 62 01          	lea    r12d,[rdx+0x1]
  404d2b:	66 89 44 15 00       	mov    WORD PTR [rbp+rdx*1+0x0],ax
  404d30:	4c 89 ef             	mov    rdi,r13
  404d33:	4d 63 e4             	movsxd r12,r12d
  404d36:	e8 c5 c9 ff ff       	call   401700 <opendir@plt>
  404d3b:	48 89 c7             	mov    rdi,rax
  404d3e:	48 89 c3             	mov    rbx,rax
  404d41:	e8 7a cb ff ff       	call   4018c0 <readdir@plt>
  404d46:	48 85 c0             	test   rax,rax
  404d49:	48 89 c2             	mov    rdx,rax
  404d4c:	75 62                	jne    404db0 <dlerror@plt+0x3350>
  404d4e:	e9 8d 00 00 00       	jmp    404de0 <dlerror@plt+0x3380>
  404d53:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404d58:	48 8d 72 13          	lea    rsi,[rdx+0x13]
  404d5c:	48 89 ef             	mov    rdi,rbp
  404d5f:	ba 01 10 00 00       	mov    edx,0x1001
  404d64:	42 c6 84 24 90 00 00 	mov    BYTE PTR [rsp+r12*1+0x90],0x0
  404d6b:	00 00 
  404d6d:	e8 5e c8 ff ff       	call   4015d0 <__strcat_chk@plt>
  404d72:	48 89 e2             	mov    rdx,rsp
  404d75:	48 89 ee             	mov    rsi,rbp
  404d78:	bf 01 00 00 00       	mov    edi,0x1
  404d7d:	e8 2e cb ff ff       	call   4018b0 <__xstat@plt>
  404d82:	85 c0                	test   eax,eax
  404d84:	75 1a                	jne    404da0 <dlerror@plt+0x3340>
  404d86:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  404d8a:	48 89 ef             	mov    rdi,rbp
  404d8d:	25 00 f0 00 00       	and    eax,0xf000
  404d92:	3d 00 40 00 00       	cmp    eax,0x4000
  404d97:	74 67                	je     404e00 <dlerror@plt+0x33a0>
  404d99:	e8 92 c8 ff ff       	call   401630 <unlink@plt>
  404d9e:	66 90                	xchg   ax,ax
  404da0:	48 89 df             	mov    rdi,rbx
  404da3:	e8 18 cb ff ff       	call   4018c0 <readdir@plt>
  404da8:	48 85 c0             	test   rax,rax
  404dab:	48 89 c2             	mov    rdx,rax
  404dae:	74 30                	je     404de0 <dlerror@plt+0x3380>
  404db0:	80 7a 13 2e          	cmp    BYTE PTR [rdx+0x13],0x2e
  404db4:	75 a2                	jne    404d58 <dlerror@plt+0x32f8>
  404db6:	0f b6 42 14          	movzx  eax,BYTE PTR [rdx+0x14]
  404dba:	84 c0                	test   al,al
  404dbc:	74 e2                	je     404da0 <dlerror@plt+0x3340>
  404dbe:	3c 2e                	cmp    al,0x2e
  404dc0:	75 96                	jne    404d58 <dlerror@plt+0x32f8>
  404dc2:	80 7a 15 00          	cmp    BYTE PTR [rdx+0x15],0x0
  404dc6:	75 90                	jne    404d58 <dlerror@plt+0x32f8>
  404dc8:	48 89 df             	mov    rdi,rbx
  404dcb:	e8 f0 ca ff ff       	call   4018c0 <readdir@plt>
  404dd0:	48 85 c0             	test   rax,rax
  404dd3:	48 89 c2             	mov    rdx,rax
  404dd6:	75 d8                	jne    404db0 <dlerror@plt+0x3350>
  404dd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  404ddf:	00 
  404de0:	48 89 df             	mov    rdi,rbx
  404de3:	e8 b8 c9 ff ff       	call   4017a0 <closedir@plt>
  404de8:	4c 89 ef             	mov    rdi,r13
  404deb:	e8 30 c9 ff ff       	call   401720 <rmdir@plt>
  404df0:	48 81 c4 a8 10 00 00 	add    rsp,0x10a8
  404df7:	5b                   	pop    rbx
  404df8:	5d                   	pop    rbp
  404df9:	41 5c                	pop    r12
  404dfb:	41 5d                	pop    r13
  404dfd:	c3                   	ret    
  404dfe:	66 90                	xchg   ax,ax
  404e00:	e8 ab fe ff ff       	call   404cb0 <dlerror@plt+0x3250>
  404e05:	eb 99                	jmp    404da0 <dlerror@plt+0x3340>
  404e07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  404e0e:	00 00 
  404e10:	80 bf 78 20 00 00 00 	cmp    BYTE PTR [rdi+0x2078],0x0
  404e17:	75 07                	jne    404e20 <dlerror@plt+0x33c0>
  404e19:	f3 c3                	repz ret 
  404e1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  404e20:	48 81 c7 78 20 00 00 	add    rdi,0x2078
  404e27:	e9 84 fe ff ff       	jmp    404cb0 <dlerror@plt+0x3250>
  404e2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  404e30:	41 54                	push   r12
  404e32:	55                   	push   rbp
  404e33:	ba 00 10 00 00       	mov    edx,0x1000
  404e38:	53                   	push   rbx
  404e39:	48 89 f3             	mov    rbx,rsi
  404e3c:	48 89 fe             	mov    rsi,rdi
  404e3f:	48 81 ec 90 20 00 00 	sub    rsp,0x2090
  404e46:	4c 8d a4 24 90 00 00 	lea    r12,[rsp+0x90]
  404e4d:	00 
  404e4e:	4c 89 e7             	mov    rdi,r12
  404e51:	e8 ea c7 ff ff       	call   401640 <strncpy@plt>
  404e56:	48 8d bc 24 90 10 00 	lea    rdi,[rsp+0x1090]
  404e5d:	00 
  404e5e:	ba 00 10 00 00       	mov    edx,0x1000
  404e63:	48 89 de             	mov    rsi,rbx
  404e66:	e8 d5 c7 ff ff       	call   401640 <strncpy@plt>
  404e6b:	80 bc 24 8f 10 00 00 	cmp    BYTE PTR [rsp+0x108f],0x0
  404e72:	00 
  404e73:	0f 85 17 01 00 00    	jne    404f90 <dlerror@plt+0x3530>
  404e79:	80 bc 24 8f 20 00 00 	cmp    BYTE PTR [rsp+0x208f],0x0
  404e80:	00 
  404e81:	0f 85 09 01 00 00    	jne    404f90 <dlerror@plt+0x3530>
  404e87:	4c 89 e3             	mov    rbx,r12
  404e8a:	8b 13                	mov    edx,DWORD PTR [rbx]
  404e8c:	48 83 c3 04          	add    rbx,0x4
  404e90:	8d 82 ff fe fe fe    	lea    eax,[rdx-0x1010101]
  404e96:	f7 d2                	not    edx
  404e98:	21 d0                	and    eax,edx
  404e9a:	25 80 80 80 80       	and    eax,0x80808080
  404e9f:	74 e9                	je     404e8a <dlerror@plt+0x342a>
  404ea1:	89 c2                	mov    edx,eax
  404ea3:	48 8d bc 24 90 10 00 	lea    rdi,[rsp+0x1090]
  404eaa:	00 
  404eab:	be db 55 40 00       	mov    esi,0x4055db
  404eb0:	c1 ea 10             	shr    edx,0x10
  404eb3:	a9 80 80 00 00       	test   eax,0x8080
  404eb8:	0f 44 c2             	cmove  eax,edx
  404ebb:	48 8d 53 02          	lea    rdx,[rbx+0x2]
  404ebf:	48 0f 44 da          	cmove  rbx,rdx
  404ec3:	00 c0                	add    al,al
  404ec5:	48 83 db 03          	sbb    rbx,0x3
  404ec9:	4c 29 e3             	sub    rbx,r12
  404ecc:	e8 ef ca ff ff       	call   4019c0 <strtok@plt>
  404ed1:	48 85 c0             	test   rax,rax
  404ed4:	48 89 c5             	mov    rbp,rax
  404ed7:	0f 84 c3 00 00 00    	je     404fa0 <dlerror@plt+0x3540>
  404edd:	0f 1f 00             	nop    DWORD PTR [rax]
  404ee0:	48 89 ef             	mov    rdi,rbp
  404ee3:	e8 48 c8 ff ff       	call   401730 <strlen@plt>
  404ee8:	48 8d 5c 03 01       	lea    rbx,[rbx+rax*1+0x1]
  404eed:	48 81 fb fe 0f 00 00 	cmp    rbx,0xffe
  404ef4:	0f 87 96 00 00 00    	ja     404f90 <dlerror@plt+0x3530>
  404efa:	4c 89 e1             	mov    rcx,r12
  404efd:	8b 01                	mov    eax,DWORD PTR [rcx]
  404eff:	48 83 c1 04          	add    rcx,0x4
  404f03:	8d 90 ff fe fe fe    	lea    edx,[rax-0x1010101]
  404f09:	f7 d0                	not    eax
  404f0b:	21 c2                	and    edx,eax
  404f0d:	81 e2 80 80 80 80    	and    edx,0x80808080
  404f13:	74 e8                	je     404efd <dlerror@plt+0x349d>
  404f15:	89 d0                	mov    eax,edx
  404f17:	48 89 ee             	mov    rsi,rbp
  404f1a:	c1 e8 10             	shr    eax,0x10
  404f1d:	f7 c2 80 80 00 00    	test   edx,0x8080
  404f23:	0f 44 d0             	cmove  edx,eax
  404f26:	48 8d 41 02          	lea    rax,[rcx+0x2]
  404f2a:	48 0f 44 c8          	cmove  rcx,rax
  404f2e:	00 d2                	add    dl,dl
  404f30:	b8 2f 00 00 00       	mov    eax,0x2f
  404f35:	48 83 d9 03          	sbb    rcx,0x3
  404f39:	ba 00 10 00 00       	mov    edx,0x1000
  404f3e:	48 8d 79 01          	lea    rdi,[rcx+0x1]
  404f42:	66 89 01             	mov    WORD PTR [rcx],ax
  404f45:	e8 f6 c9 ff ff       	call   401940 <__strcpy_chk@plt>
  404f4a:	31 ff                	xor    edi,edi
  404f4c:	be db 55 40 00       	mov    esi,0x4055db
  404f51:	e8 6a ca ff ff       	call   4019c0 <strtok@plt>
  404f56:	48 85 c0             	test   rax,rax
  404f59:	48 89 c5             	mov    rbp,rax
  404f5c:	74 42                	je     404fa0 <dlerror@plt+0x3540>
  404f5e:	48 89 e2             	mov    rdx,rsp
  404f61:	4c 89 e6             	mov    rsi,r12
  404f64:	bf 01 00 00 00       	mov    edi,0x1
  404f69:	e8 42 c9 ff ff       	call   4018b0 <__xstat@plt>
  404f6e:	85 c0                	test   eax,eax
  404f70:	0f 89 6a ff ff ff    	jns    404ee0 <dlerror@plt+0x3480>
  404f76:	be c0 01 00 00       	mov    esi,0x1c0
  404f7b:	4c 89 e7             	mov    rdi,r12
  404f7e:	e8 fd c6 ff ff       	call   401680 <mkdir@plt>
  404f83:	e9 58 ff ff ff       	jmp    404ee0 <dlerror@plt+0x3480>
  404f88:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  404f8f:	00 
  404f90:	48 81 c4 90 20 00 00 	add    rsp,0x2090
  404f97:	31 c0                	xor    eax,eax
  404f99:	5b                   	pop    rbx
  404f9a:	5d                   	pop    rbp
  404f9b:	41 5c                	pop    r12
  404f9d:	c3                   	ret    
  404f9e:	66 90                	xchg   ax,ax
  404fa0:	48 89 e2             	mov    rdx,rsp
  404fa3:	4c 89 e6             	mov    rsi,r12
  404fa6:	bf 01 00 00 00       	mov    edi,0x1
  404fab:	e8 00 c9 ff ff       	call   4018b0 <__xstat@plt>
  404fb0:	85 c0                	test   eax,eax
  404fb2:	74 19                	je     404fcd <dlerror@plt+0x356d>
  404fb4:	be 87 64 40 00       	mov    esi,0x406487
  404fb9:	4c 89 e7             	mov    rdi,r12
  404fbc:	e8 df c9 ff ff       	call   4019a0 <fopen@plt>
  404fc1:	48 81 c4 90 20 00 00 	add    rsp,0x2090
  404fc8:	5b                   	pop    rbx
  404fc9:	5d                   	pop    rbp
  404fca:	41 5c                	pop    r12
  404fcc:	c3                   	ret    
  404fcd:	4c 89 e6             	mov    rsi,r12
  404fd0:	bf 10 65 40 00       	mov    edi,0x406510
  404fd5:	e8 f6 d3 ff ff       	call   4023d0 <dlerror@plt+0x970>
  404fda:	be 87 64 40 00       	mov    esi,0x406487
  404fdf:	4c 89 e7             	mov    rdi,r12
  404fe2:	e8 b9 c9 ff ff       	call   4019a0 <fopen@plt>
  404fe7:	eb d8                	jmp    404fc1 <dlerror@plt+0x3561>
  404fe9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  404ff0:	41 54                	push   r12
  404ff2:	55                   	push   rbp
  404ff3:	49 89 d4             	mov    r12,rdx
  404ff6:	53                   	push   rbx
  404ff7:	48 89 f5             	mov    rbp,rsi
  404ffa:	be 2d 54 40 00       	mov    esi,0x40542d
  404fff:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
  405006:	e8 95 c9 ff ff       	call   4019a0 <fopen@plt>
  40500b:	4c 89 e6             	mov    rsi,r12
  40500e:	48 89 ef             	mov    rdi,rbp
  405011:	48 89 c3             	mov    rbx,rax
  405014:	e8 17 fe ff ff       	call   404e30 <dlerror@plt+0x33d0>
  405019:	48 85 c0             	test   rax,rax
  40501c:	49 89 c4             	mov    r12,rax
  40501f:	0f 84 c3 00 00 00    	je     4050e8 <dlerror@plt+0x3688>
  405025:	48 85 db             	test   rbx,rbx
  405028:	0f 84 ba 00 00 00    	je     4050e8 <dlerror@plt+0x3688>
  40502e:	66 90                	xchg   ax,ax
  405030:	48 89 df             	mov    rdi,rbx
  405033:	e8 e8 c7 ff ff       	call   401820 <feof@plt>
  405038:	85 c0                	test   eax,eax
  40503a:	0f 85 d0 00 00 00    	jne    405110 <dlerror@plt+0x36b0>
  405040:	48 89 d9             	mov    rcx,rbx
  405043:	ba 01 00 00 00       	mov    edx,0x1
  405048:	be 00 10 00 00       	mov    esi,0x1000
  40504d:	48 89 e7             	mov    rdi,rsp
  405050:	e8 4b c6 ff ff       	call   4016a0 <fread@plt>
  405055:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
  405059:	48 89 c5             	mov    rbp,rax
  40505c:	74 6a                	je     4050c8 <dlerror@plt+0x3668>
  40505e:	4c 89 e1             	mov    rcx,r12
  405061:	ba 01 00 00 00       	mov    edx,0x1
  405066:	be 00 10 00 00       	mov    esi,0x1000
  40506b:	48 89 e7             	mov    rdi,rsp
  40506e:	e8 9d c9 ff ff       	call   401a10 <fwrite@plt>
  405073:	85 c0                	test   eax,eax
  405075:	7e 0c                	jle    405083 <dlerror@plt+0x3623>
  405077:	4c 89 e7             	mov    rdi,r12
  40507a:	e8 11 c6 ff ff       	call   401690 <ferror@plt>
  40507f:	85 c0                	test   eax,eax
  405081:	74 ad                	je     405030 <dlerror@plt+0x35d0>
  405083:	4c 89 e7             	mov    rdi,r12
  405086:	bd ff ff ff ff       	mov    ebp,0xffffffff
  40508b:	e8 b0 c7 ff ff       	call   401840 <clearerr@plt>
  405090:	4c 89 e7             	mov    rdi,r12
  405093:	e8 f8 c7 ff ff       	call   401890 <fileno@plt>
  405098:	be c0 01 00 00       	mov    esi,0x1c0
  40509d:	89 c7                	mov    edi,eax
  40509f:	e8 cc c8 ff ff       	call   401970 <fchmod@plt>
  4050a4:	48 89 df             	mov    rdi,rbx
  4050a7:	e8 44 c6 ff ff       	call   4016f0 <fclose@plt>
  4050ac:	4c 89 e7             	mov    rdi,r12
  4050af:	e8 3c c6 ff ff       	call   4016f0 <fclose@plt>
  4050b4:	48 81 c4 00 10 00 00 	add    rsp,0x1000
  4050bb:	89 e8                	mov    eax,ebp
  4050bd:	5b                   	pop    rbx
  4050be:	5d                   	pop    rbp
  4050bf:	41 5c                	pop    r12
  4050c1:	c3                   	ret    
  4050c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4050c8:	48 89 df             	mov    rdi,rbx
  4050cb:	e8 c0 c5 ff ff       	call   401690 <ferror@plt>
  4050d0:	85 c0                	test   eax,eax
  4050d2:	0f 84 58 ff ff ff    	je     405030 <dlerror@plt+0x35d0>
  4050d8:	48 89 df             	mov    rdi,rbx
  4050db:	e8 60 c7 ff ff       	call   401840 <clearerr@plt>
  4050e0:	eb ae                	jmp    405090 <dlerror@plt+0x3630>
  4050e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4050e8:	48 85 db             	test   rbx,rbx
  4050eb:	74 08                	je     4050f5 <dlerror@plt+0x3695>
  4050ed:	48 89 df             	mov    rdi,rbx
  4050f0:	e8 fb c5 ff ff       	call   4016f0 <fclose@plt>
  4050f5:	4d 85 e4             	test   r12,r12
  4050f8:	bd ff ff ff ff       	mov    ebp,0xffffffff
  4050fd:	75 ad                	jne    4050ac <dlerror@plt+0x364c>
  4050ff:	48 81 c4 00 10 00 00 	add    rsp,0x1000
  405106:	89 e8                	mov    eax,ebp
  405108:	5b                   	pop    rbx
  405109:	5d                   	pop    rbp
  40510a:	41 5c                	pop    r12
  40510c:	c3                   	ret    
  40510d:	0f 1f 00             	nop    DWORD PTR [rax]
  405110:	31 ed                	xor    ebp,ebp
  405112:	e9 79 ff ff ff       	jmp    405090 <dlerror@plt+0x3630>
  405117:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40511e:	00 00 
  405120:	be 02 01 00 00       	mov    esi,0x102
  405125:	e9 a6 c7 ff ff       	jmp    4018d0 <dlopen@plt>
  40512a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  405130:	80 bf 78 20 00 00 00 	cmp    BYTE PTR [rdi+0x2078],0x0
  405137:	75 0f                	jne    405148 <dlerror@plt+0x36e8>
  405139:	48 81 c7 78 10 00 00 	add    rdi,0x1078
  405140:	e9 7b f9 ff ff       	jmp    404ac0 <dlerror@plt+0x3060>
  405145:	0f 1f 00             	nop    DWORD PTR [rax]
  405148:	48 81 c7 78 20 00 00 	add    rdi,0x2078
  40514f:	e9 6c f9 ff ff       	jmp    404ac0 <dlerror@plt+0x3060>
  405154:	66 66 66 2e 0f 1f 84 	data16 data16 nop WORD PTR cs:[rax+rax*1+0x0]
  40515b:	00 00 00 00 00 
  405160:	48 83 ec 28          	sub    rsp,0x28
  405164:	bf 8a 64 40 00       	mov    edi,0x40648a
  405169:	e8 22 f9 ff ff       	call   404a90 <dlerror@plt+0x3030>
  40516e:	48 89 c2             	mov    rdx,rax
  405171:	31 c0                	xor    eax,eax
  405173:	48 85 d2             	test   rdx,rdx
  405176:	74 39                	je     4051b1 <dlerror@plt+0x3751>
  405178:	e8 63 c5 ff ff       	call   4016e0 <getpid@plt>
  40517d:	ba 01 00 00 00       	mov    edx,0x1
  405182:	4c 63 c8             	movsxd r9,eax
  405185:	be 17 00 00 00       	mov    esi,0x17
  40518a:	48 89 e7             	mov    rdi,rsp
  40518d:	41 b8 95 64 40 00    	mov    r8d,0x406495
  405193:	b9 17 00 00 00       	mov    ecx,0x17
  405198:	31 c0                	xor    eax,eax
  40519a:	e8 51 c4 ff ff       	call   4015f0 <__snprintf_chk@plt>
  40519f:	ba 01 00 00 00       	mov    edx,0x1
  4051a4:	48 89 e6             	mov    rsi,rsp
  4051a7:	bf 8a 64 40 00       	mov    edi,0x40648a
  4051ac:	e8 1f c5 ff ff       	call   4016d0 <setenv@plt>
  4051b1:	48 83 c4 28          	add    rsp,0x28
  4051b5:	c3                   	ret    
  4051b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4051bd:	00 00 00 
  4051c0:	41 57                	push   r15
  4051c2:	49 89 ff             	mov    r15,rdi
  4051c5:	41 56                	push   r14
  4051c7:	8d 7a 01             	lea    edi,[rdx+0x1]
  4051ca:	41 55                	push   r13
  4051cc:	41 54                	push   r12
  4051ce:	55                   	push   rbp
  4051cf:	53                   	push   rbx
  4051d0:	89 d5                	mov    ebp,edx
  4051d2:	49 89 f6             	mov    r14,rsi
  4051d5:	48 63 ff             	movsxd rdi,edi
  4051d8:	be 08 00 00 00       	mov    esi,0x8
  4051dd:	48 83 ec 18          	sub    rsp,0x18
  4051e1:	49 89 cd             	mov    r13,rcx
  4051e4:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [rsp+0xc],0x0
  4051eb:	00 
  4051ec:	e8 ef c5 ff ff       	call   4017e0 <calloc@plt>
  4051f1:	85 ed                	test   ebp,ebp
  4051f3:	49 89 c4             	mov    r12,rax
  4051f6:	48 89 05 53 2b 21 00 	mov    QWORD PTR [rip+0x212b53],rax        # 617d50 <stderr@@GLIBC_2.2.5+0x10300>
  4051fd:	c7 05 45 2b 21 00 00 	mov    DWORD PTR [rip+0x212b45],0x0        # 617d4c <stderr@@GLIBC_2.2.5+0x102fc>
  405204:	00 00 00 
  405207:	7e 2f                	jle    405238 <dlerror@plt+0x37d8>
  405209:	83 ed 01             	sub    ebp,0x1
  40520c:	31 db                	xor    ebx,ebx
  40520e:	48 83 c5 01          	add    rbp,0x1
  405212:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  405218:	49 8b 7c dd 00       	mov    rdi,QWORD PTR [r13+rbx*8+0x0]
  40521d:	8d 43 01             	lea    eax,[rbx+0x1]
  405220:	89 05 26 2b 21 00    	mov    DWORD PTR [rip+0x212b26],eax        # 617d4c <stderr@@GLIBC_2.2.5+0x102fc>
  405226:	e8 85 c5 ff ff       	call   4017b0 <__strdup@plt>
  40522b:	49 89 04 dc          	mov    QWORD PTR [r12+rbx*8],rax
  40522f:	48 83 c3 01          	add    rbx,0x1
  405233:	48 39 eb             	cmp    rbx,rbp
  405236:	75 e0                	jne    405218 <dlerror@plt+0x37b8>
  405238:	e8 13 c8 ff ff       	call   401a50 <fork@plt>
  40523d:	85 c0                	test   eax,eax
  40523f:	89 c3                	mov    ebx,eax
  405241:	0f 88 31 01 00 00    	js     405378 <dlerror@plt+0x3918>
  405247:	0f 84 e0 00 00 00    	je     40532d <dlerror@plt+0x38cd>
  40524d:	be 99 64 40 00       	mov    esi,0x406499
  405252:	4c 89 f7             	mov    rdi,r14
  405255:	89 1d ed 2a 21 00    	mov    DWORD PTR [rip+0x212aed],ebx        # 617d48 <stderr@@GLIBC_2.2.5+0x102f8>
  40525b:	41 bc 60 49 40 00    	mov    r12d,0x404960
  405261:	bd 01 00 00 00       	mov    ebp,0x1
  405266:	e8 f5 cf ff ff       	call   402260 <dlerror@plt+0x800>
  40526b:	48 85 c0             	test   rax,rax
  40526e:	b8 50 49 40 00       	mov    eax,0x404950
  405273:	4c 0f 45 e0          	cmovne r12,rax
  405277:	31 db                	xor    ebx,ebx
  405279:	eb 0b                	jmp    405286 <dlerror@plt+0x3826>
  40527b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  405280:	83 c3 01             	add    ebx,0x1
  405283:	83 c5 01             	add    ebp,0x1
  405286:	83 fb 11             	cmp    ebx,0x11
  405289:	74 f5                	je     405280 <dlerror@plt+0x3820>
  40528b:	4c 89 e6             	mov    rsi,r12
  40528e:	89 df                	mov    edi,ebx
  405290:	e8 6b c5 ff ff       	call   401800 <signal@plt>
  405295:	83 fd 41             	cmp    ebp,0x41
  405298:	75 e6                	jne    405280 <dlerror@plt+0x3820>
  40529a:	8b 3d a8 2a 21 00    	mov    edi,DWORD PTR [rip+0x212aa8]        # 617d48 <stderr@@GLIBC_2.2.5+0x102f8>
  4052a0:	48 8d 74 24 0c       	lea    rsi,[rsp+0xc]
  4052a5:	31 d2                	xor    edx,edx
  4052a7:	31 db                	xor    ebx,ebx
  4052a9:	e8 e2 c6 ff ff       	call   401990 <waitpid@plt>
  4052ae:	41 89 c5             	mov    r13d,eax
  4052b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4052b8:	31 f6                	xor    esi,esi
  4052ba:	89 df                	mov    edi,ebx
  4052bc:	83 c3 01             	add    ebx,0x1
  4052bf:	e8 3c c5 ff ff       	call   401800 <signal@plt>
  4052c4:	83 fb 41             	cmp    ebx,0x41
  4052c7:	75 ef                	jne    4052b8 <dlerror@plt+0x3858>
  4052c9:	44 8b 25 7c 2a 21 00 	mov    r12d,DWORD PTR [rip+0x212a7c]        # 617d4c <stderr@@GLIBC_2.2.5+0x102fc>
  4052d0:	48 8b 2d 79 2a 21 00 	mov    rbp,QWORD PTR [rip+0x212a79]        # 617d50 <stderr@@GLIBC_2.2.5+0x10300>
  4052d7:	45 85 e4             	test   r12d,r12d
  4052da:	7e 17                	jle    4052f3 <dlerror@plt+0x3893>
  4052dc:	31 db                	xor    ebx,ebx
  4052de:	66 90                	xchg   ax,ax
  4052e0:	48 8b 7c dd 00       	mov    rdi,QWORD PTR [rbp+rbx*8+0x0]
  4052e5:	48 83 c3 01          	add    rbx,0x1
  4052e9:	e8 22 c3 ff ff       	call   401610 <free@plt>
  4052ee:	41 39 dc             	cmp    r12d,ebx
  4052f1:	7f ed                	jg     4052e0 <dlerror@plt+0x3880>
  4052f3:	48 89 ef             	mov    rdi,rbp
  4052f6:	e8 15 c3 ff ff       	call   401610 <free@plt>
  4052fb:	45 85 ed             	test   r13d,r13d
  4052fe:	78 6c                	js     40536c <dlerror@plt+0x390c>
  405300:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  405304:	89 c7                	mov    edi,eax
  405306:	83 e7 7f             	and    edi,0x7f
  405309:	74 68                	je     405373 <dlerror@plt+0x3913>
  40530b:	8d 47 01             	lea    eax,[rdi+0x1]
  40530e:	bb 01 00 00 00       	mov    ebx,0x1
  405313:	3c 01                	cmp    al,0x1
  405315:	7e 05                	jle    40531c <dlerror@plt+0x38bc>
  405317:	e8 e4 c2 ff ff       	call   401600 <raise@plt>
  40531c:	48 83 c4 18          	add    rsp,0x18
  405320:	89 d8                	mov    eax,ebx
  405322:	5b                   	pop    rbx
  405323:	5d                   	pop    rbp
  405324:	41 5c                	pop    r12
  405326:	41 5d                	pop    r13
  405328:	41 5e                	pop    r14
  40532a:	41 5f                	pop    r15
  40532c:	c3                   	ret    
  40532d:	31 c0                	xor    eax,eax
  40532f:	e8 2c fe ff ff       	call   405160 <dlerror@plt+0x3700>
  405334:	48 8b 2d 15 2a 21 00 	mov    rbp,QWORD PTR [rip+0x212a15]        # 617d50 <stderr@@GLIBC_2.2.5+0x10300>
  40533b:	4c 89 ff             	mov    rdi,r15
  40533e:	48 89 ee             	mov    rsi,rbp
  405341:	e8 9a c6 ff ff       	call   4019e0 <execvp@plt>
  405346:	85 c0                	test   eax,eax
  405348:	0f 89 ff fe ff ff    	jns    40524d <dlerror@plt+0x37ed>
  40534e:	44 8b 25 f7 29 21 00 	mov    r12d,DWORD PTR [rip+0x2129f7]        # 617d4c <stderr@@GLIBC_2.2.5+0x102fc>
  405355:	41 bd ff ff ff ff    	mov    r13d,0xffffffff
  40535b:	45 85 e4             	test   r12d,r12d
  40535e:	0f 8f 78 ff ff ff    	jg     4052dc <dlerror@plt+0x387c>
  405364:	48 89 ef             	mov    rdi,rbp
  405367:	e8 a4 c2 ff ff       	call   401610 <free@plt>
  40536c:	bb 01 00 00 00       	mov    ebx,0x1
  405371:	eb a9                	jmp    40531c <dlerror@plt+0x38bc>
  405373:	0f b6 dc             	movzx  ebx,ah
  405376:	eb a4                	jmp    40531c <dlerror@plt+0x38bc>
  405378:	48 8b 2d d1 29 21 00 	mov    rbp,QWORD PTR [rip+0x2129d1]        # 617d50 <stderr@@GLIBC_2.2.5+0x10300>
  40537f:	eb cd                	jmp    40534e <dlerror@plt+0x38ee>
  405381:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  405388:	00 00 00 
  40538b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  405390:	41 57                	push   r15
  405392:	41 89 ff             	mov    r15d,edi
  405395:	41 56                	push   r14
  405397:	49 89 f6             	mov    r14,rsi
  40539a:	41 55                	push   r13
  40539c:	49 89 d5             	mov    r13,rdx
  40539f:	41 54                	push   r12
  4053a1:	4c 8d 25 d8 21 20 00 	lea    r12,[rip+0x2021d8]        # 607580 <dlerror@plt+0x205b20>
  4053a8:	55                   	push   rbp
  4053a9:	48 8d 2d d8 21 20 00 	lea    rbp,[rip+0x2021d8]        # 607588 <dlerror@plt+0x205b28>
  4053b0:	53                   	push   rbx
  4053b1:	4c 29 e5             	sub    rbp,r12
  4053b4:	31 db                	xor    ebx,ebx
  4053b6:	48 c1 fd 03          	sar    rbp,0x3
  4053ba:	48 83 ec 08          	sub    rsp,0x8
  4053be:	e8 d5 c1 ff ff       	call   401598 <__strcat_chk@plt-0x38>
  4053c3:	48 85 ed             	test   rbp,rbp
  4053c6:	74 1e                	je     4053e6 <dlerror@plt+0x3986>
  4053c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4053cf:	00 
  4053d0:	4c 89 ea             	mov    rdx,r13
  4053d3:	4c 89 f6             	mov    rsi,r14
  4053d6:	44 89 ff             	mov    edi,r15d
  4053d9:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  4053dd:	48 83 c3 01          	add    rbx,0x1
  4053e1:	48 39 eb             	cmp    rbx,rbp
  4053e4:	75 ea                	jne    4053d0 <dlerror@plt+0x3970>
  4053e6:	48 83 c4 08          	add    rsp,0x8
  4053ea:	5b                   	pop    rbx
  4053eb:	5d                   	pop    rbp
  4053ec:	41 5c                	pop    r12
  4053ee:	41 5d                	pop    r13
  4053f0:	41 5e                	pop    r14
  4053f2:	41 5f                	pop    r15
  4053f4:	c3                   	ret    
  4053f5:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  4053fc:	00 00 00 00 
  405400:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000405404 <.fini>:
  405404:	48 83 ec 08          	sub    rsp,0x8
  405408:	48 83 c4 08          	add    rsp,0x8
  40540c:	c3                   	ret    
