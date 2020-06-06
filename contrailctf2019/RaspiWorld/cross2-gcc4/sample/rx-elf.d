
rx-elf.x:     file format elf32-rx-le


Disassembly of section P:

00000020 <_null>:
  20:	02                            	rts

00000021 <_return_zero>:
  21:	66 01                         	mov.l	#0, r1
  23:	02                            	rts

00000024 <_return_one>:
  24:	66 11                         	mov.l	#1, r1
  26:	02                            	rts

00000027 <_return_int_size>:
  27:	66 41                         	mov.l	#4, r1
  29:	02                            	rts

0000002a <_return_pointer_size>:
  2a:	66 41                         	mov.l	#4, r1
  2c:	02                            	rts

0000002d <_return_short_size>:
  2d:	66 21                         	mov.l	#2, r1
  2f:	02                            	rts

00000030 <_return_long_size>:
  30:	66 41                         	mov.l	#4, r1
  32:	02                            	rts

00000033 <_return_short>:
  33:	fb 1a 88 77                   	mov.l	#0x7788, r1
  37:	02                            	rts

00000038 <_return_long>:
  38:	fb 12 aa 99 88 77             	mov.l	#0x778899aa, r1
  3e:	02                            	rts

0000003f <_return_short_upper>:
  3f:	fb 16 ee                      	mov.l	#-18, r1
  42:	02                            	rts

00000043 <_return_long_upper>:
  43:	fb 1e cc dd ee                	mov.l	#0xffeeddcc, r1
  48:	02                            	rts

00000049 <_return_arg1>:
  49:	02                            	rts

0000004a <_return_arg2>:
  4a:	ef 21                         	mov.l	r2, r1
  4c:	02                            	rts

0000004d <_add>:
  4d:	4b 21                         	add	r2, r1
  4f:	02                            	rts

00000050 <_add3>:
  50:	4b 21                         	add	r2, r1

00000052 <.LM30>:
  52:	4b 31                         	add	r3, r1
  54:	02                            	rts

00000055 <_add_two>:
  55:	62 21                         	add	#2, r1
  57:	02                            	rts

00000058 <_inc>:
  58:	62 11                         	add	#1, r1
  5a:	02                            	rts

0000005b <_or>:
  5b:	57 21                         	or	r2, r1
  5d:	02                            	rts

0000005e <_or_one>:
  5e:	65 11                         	or	#1, r1
  60:	02                            	rts

00000061 <_load>:
  61:	ec 11                         	mov.l	[r1], r1

00000063 <.LM41>:
  63:	02                            	rts

00000064 <_store>:
  64:	3e 10 ff                      	mov.l	#255, [r1]
  67:	02                            	rts

00000068 <_load_long>:
  68:	ec 11                         	mov.l	[r1], r1

0000006a <.LM46>:
  6a:	02                            	rts

0000006b <_store_long>:
  6b:	f8 12 44 33 22 11             	mov.l	#0x11223344, [r1]
  71:	02                            	rts

00000072 <_member>:
  72:	3e 11 01                      	mov.l	#1, 4[r1]

00000075 <.LM51>:
  75:	a8 91                         	mov.l	8[r1], r1
  77:	02                            	rts

00000078 <_get_static_value_addr>:
  78:	fb 12 04 04 00 00             	mov.l	#0x404, r1
  7e:	02                            	rts

0000007f <_get_static_value>:
  7f:	fb e2 04 04 00 00             	mov.l	#0x404, r14
  85:	ec e1                         	mov.l	[r14], r1
  87:	02                            	rts

00000088 <_set_static_value>:
  88:	fb e2 04 04 00 00             	mov.l	#0x404, r14
  8e:	e3 e1                         	mov.l	r1, [r14]
  90:	02                            	rts

00000091 <_set_stack>:
  91:	60 80                         	sub	#8, r0

00000093 <.LM59>:
  93:	3e 00 fe                      	mov.l	#254, [r0]

00000096 <.LM60>:
  96:	3e 01 ff                      	mov.l	#255, 4[r0]

00000099 <.LM61>:
  99:	67 02                         	rtsd	#8

0000009b <_use_stack>:
  9b:	60 80                         	sub	#8, r0

0000009d <.LM63>:
  9d:	3e 00 fe                      	mov.l	#254, [r0]

000000a0 <.LM64>:
  a0:	3e 01 ff                      	mov.l	#255, 4[r0]

000000a3 <.LM65>:
  a3:	ec 01                         	mov.l	[r0], r1

000000a5 <.LM66>:
  a5:	06 89 01 01                   	add	4[r0].l, r1
  a9:	67 02                         	rtsd	#8

000000ab <_call_self>:
  ab:	05 00 00 00                   	bsr.a	ab <_call_self>

000000af <.LVL28>:
  af:	02                            	rts

000000b0 <_call_simple>:
  b0:	05 99 ff ff                   	bsr.a	49 <_return_arg1>

000000b4 <.LM71>:
  b4:	02                            	rts

000000b5 <_call_complex1>:
  b5:	75 41 fe                      	mov.l	#254, r1
  b8:	05 91 ff ff                   	bsr.a	49 <_return_arg1>

000000bc <.LM74>:
  bc:	62 11                         	add	#1, r1
  be:	02                            	rts

000000bf <_call_complex2>:
  bf:	7e a7                         	push.l	r7
  c1:	ef 27                         	mov.l	r2, r7

000000c3 <.LM76>:
  c3:	ef 21                         	mov.l	r2, r1
  c5:	05 84 ff ff                   	bsr.a	49 <_return_arg1>

000000c9 <.LVL34>:
  c9:	fb e2 04 04 00 00             	mov.l	#0x404, r14
  cf:	e3 e1                         	mov.l	r1, [r14]

000000d1 <.LM77>:
  d1:	ef 71                         	mov.l	r7, r1
  d3:	3f 77 01                      	rtsd	#4, r7-r7

000000d6 <_call_pointer>:
  d6:	7f 11                         	jsr	r1

000000d8 <.LVL36>:
  d8:	02                            	rts

000000d9 <_condition>:
  d9:	47 21                         	cmp	r2, r1
  db:	1b                            	bne.s	de <.LM83>

000000dc <.LM82>:
  dc:	66 12                         	mov.l	#1, r2

000000de <.LM83>:
  de:	71 21 01                      	add	#1, r2, r1
  e1:	02                            	rts

000000e2 <_loop>:
  e2:	61 01                         	cmp	#0, r1
  e4:	2b 0f                         	ble.b	f3 <.LM90>

000000e6 <.LM86>:
  e6:	66 04                         	mov.l	#0, r4

000000e8 <.LM87>:
  e8:	ef 4e                         	mov.l	r4, r14

000000ea <.LM88>:
  ea:	4b e4                         	add	r14, r4

000000ec <.LM89>:
  ec:	62 1e                         	add	#1, r14
  ee:	47 1e                         	cmp	r1, r14
  f0:	21 fa                         	bne.b	ea <.LM88>
  f2:	0c                            	bra.s	f6 <.LM91>

000000f3 <.LM90>:
  f3:	66 04                         	mov.l	#0, r4
  f5:	03                            	nop

000000f6 <.LM91>:
  f6:	ef 41                         	mov.l	r4, r1
  f8:	02                            	rts

000000f9 <_many_args>:
  f9:	71 00 f0                      	add	#-16, r0, r0

000000fc <.LM93>:
  fc:	4b 41                         	add	r4, r1
  fe:	06 89 01 06                   	add	24[r0].l, r1

00000102 <.LM94>:
 102:	06 89 01 08                   	add	32[r0].l, r1
 106:	67 04                         	rtsd	#16

00000108 <_call_many_args>:
 108:	71 00 f0                      	add	#-16, r0, r0

0000010b <.LM96>:
 10b:	3e 00 04                      	mov.l	#4, [r0]
 10e:	3e 01 05                      	mov.l	#5, 4[r0]
 111:	3e 02 06                      	mov.l	#6, 8[r0]
 114:	3e 03 07                      	mov.l	#7, 12[r0]
 117:	66 01                         	mov.l	#0, r1
 119:	66 12                         	mov.l	#1, r2
 11b:	66 23                         	mov.l	#2, r3
 11d:	66 34                         	mov.l	#3, r4
 11f:	05 da ff ff                   	bsr.a	f9 <_many_args>

00000123 <.LM97>:
 123:	67 04                         	rtsd	#16

00000125 <_direct>:
 125:	03                            	nop
 126:	02                            	rts

00000127 <_binary>:
 127:	03                            	nop

00000128 <.LM102>:
 128:	00                            	brk
 129:	00                            	brk
 12a:	00                            	brk
 12b:	00                            	brk
 12c:	02                            	rts

0000012d <_main>:
 12d:	66 01                         	mov.l	#0, r1
 12f:	02                            	rts
