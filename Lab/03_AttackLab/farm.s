
farm.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <start_farm>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	b8 01 00 00 00       	mov    $0x1,%eax
   9:	5d                   	pop    %rbp
   a:	c3                   	retq   

000000000000000b <addval_424>:
   b:	55                   	push   %rbp
   c:	48 89 e5             	mov    %rsp,%rbp
   f:	89 7d fc             	mov    %edi,-0x4(%rbp)
  12:	8b 45 fc             	mov    -0x4(%rbp),%eax
  15:	2d 59 af 6f 3c       	sub    $0x3c6faf59,%eax
  1a:	5d                   	pop    %rbp
  1b:	c3                   	retq   

000000000000001c <getval_130>:
  1c:	55                   	push   %rbp
  1d:	48 89 e5             	mov    %rsp,%rbp
  20:	b8 d8 c3 76 0f       	mov    $0xf76c3d8,%eax
  25:	5d                   	pop    %rbp
  26:	c3                   	retq   

0000000000000027 <addval_232>:
  27:	55                   	push   %rbp
  28:	48 89 e5             	mov    %rsp,%rbp
  2b:	89 7d fc             	mov    %edi,-0x4(%rbp)
  2e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  31:	2d b8 76 38 6f       	sub    $0x6f3876b8,%eax
  36:	5d                   	pop    %rbp
  37:	c3                   	retq   

0000000000000038 <getval_104>:
  38:	55                   	push   %rbp
  39:	48 89 e5             	mov    %rsp,%rbp
  3c:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  41:	5d                   	pop    %rbp
  42:	c3                   	retq   

0000000000000043 <addval_489>:
  43:	55                   	push   %rbp
  44:	48 89 e5             	mov    %rsp,%rbp
  47:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4d:	2d 25 b7 7e 38       	sub    $0x387eb725,%eax
  52:	5d                   	pop    %rbp
  53:	c3                   	retq   

0000000000000054 <setval_484>:
  54:	55                   	push   %rbp
  55:	48 89 e5             	mov    %rsp,%rbp
  58:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  60:	c7 00 58 90 90 c3    	movl   $0xc3909058,(%rax)
  66:	90                   	nop
  67:	5d                   	pop    %rbp
  68:	c3                   	retq   

0000000000000069 <addval_375>:
  69:	55                   	push   %rbp
  6a:	48 89 e5             	mov    %rsp,%rbp
  6d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  70:	8b 45 fc             	mov    -0x4(%rbp),%eax
  73:	2d a8 6f 6f 3c       	sub    $0x3c6f6fa8,%eax
  78:	5d                   	pop    %rbp
  79:	c3                   	retq   

000000000000007a <addval_499>:
  7a:	55                   	push   %rbp
  7b:	48 89 e5             	mov    %rsp,%rbp
  7e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  81:	8b 45 fc             	mov    -0x4(%rbp),%eax
  84:	2d b6 76 38 3c       	sub    $0x3c3876b6,%eax
  89:	5d                   	pop    %rbp
  8a:	c3                   	retq   

000000000000008b <mid_farm>:
  8b:	55                   	push   %rbp
  8c:	48 89 e5             	mov    %rsp,%rbp
  8f:	b8 01 00 00 00       	mov    $0x1,%eax
  94:	5d                   	pop    %rbp
  95:	c3                   	retq   

0000000000000096 <add_xy>:
  96:	55                   	push   %rbp
  97:	48 89 e5             	mov    %rsp,%rbp
  9a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  9e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  a2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  a6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  aa:	48 01 d0             	add    %rdx,%rax
  ad:	5d                   	pop    %rbp
  ae:	c3                   	retq   

00000000000000af <getval_265>:
  af:	55                   	push   %rbp
  b0:	48 89 e5             	mov    %rsp,%rbp
  b3:	b8 5d 89 d6 90       	mov    $0x90d6895d,%eax
  b8:	5d                   	pop    %rbp
  b9:	c3                   	retq   

00000000000000ba <getval_350>:
  ba:	55                   	push   %rbp
  bb:	48 89 e5             	mov    %rsp,%rbp
  be:	b8 89 c1 c4 d2       	mov    $0xd2c4c189,%eax
  c3:	5d                   	pop    %rbp
  c4:	c3                   	retq   

00000000000000c5 <setval_200>:
  c5:	55                   	push   %rbp
  c6:	48 89 e5             	mov    %rsp,%rbp
  c9:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  d1:	c7 00 48 89 e0 c1    	movl   $0xc1e08948,(%rax)
  d7:	90                   	nop
  d8:	5d                   	pop    %rbp
  d9:	c3                   	retq   

00000000000000da <setval_339>:
  da:	55                   	push   %rbp
  db:	48 89 e5             	mov    %rsp,%rbp
  de:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  e6:	c7 00 89 ca 18 c9    	movl   $0xc918ca89,(%rax)
  ec:	90                   	nop
  ed:	5d                   	pop    %rbp
  ee:	c3                   	retq   

00000000000000ef <setval_390>:
  ef:	55                   	push   %rbp
  f0:	48 89 e5             	mov    %rsp,%rbp
  f3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  fb:	c7 00 81 d6 08 db    	movl   $0xdb08d681,(%rax)
 101:	90                   	nop
 102:	5d                   	pop    %rbp
 103:	c3                   	retq   

0000000000000104 <getval_108>:
 104:	55                   	push   %rbp
 105:	48 89 e5             	mov    %rsp,%rbp
 108:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
 10d:	5d                   	pop    %rbp
 10e:	c3                   	retq   

000000000000010f <getval_332>:
 10f:	55                   	push   %rbp
 110:	48 89 e5             	mov    %rsp,%rbp
 113:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
 118:	5d                   	pop    %rbp
 119:	c3                   	retq   

000000000000011a <addval_235>:
 11a:	55                   	push   %rbp
 11b:	48 89 e5             	mov    %rsp,%rbp
 11e:	89 7d fc             	mov    %edi,-0x4(%rbp)
 121:	8b 45 fc             	mov    -0x4(%rbp),%eax
 124:	2d 36 1c 76 3e       	sub    $0x3e761c36,%eax
 129:	5d                   	pop    %rbp
 12a:	c3                   	retq   

000000000000012b <addval_154>:
 12b:	55                   	push   %rbp
 12c:	48 89 e5             	mov    %rsp,%rbp
 12f:	89 7d fc             	mov    %edi,-0x4(%rbp)
 132:	8b 45 fc             	mov    -0x4(%rbp),%eax
 135:	2d 77 29 e7 3f       	sub    $0x3fe72977,%eax
 13a:	5d                   	pop    %rbp
 13b:	c3                   	retq   

000000000000013c <addval_374>:
 13c:	55                   	push   %rbp
 13d:	48 89 e5             	mov    %rsp,%rbp
 140:	89 7d fc             	mov    %edi,-0x4(%rbp)
 143:	8b 45 fc             	mov    -0x4(%rbp),%eax
 146:	2d 75 29 f7 3f       	sub    $0x3ff72975,%eax
 14b:	5d                   	pop    %rbp
 14c:	c3                   	retq   

000000000000014d <getval_465>:
 14d:	55                   	push   %rbp
 14e:	48 89 e5             	mov    %rsp,%rbp
 151:	b8 89 c1 18 d2       	mov    $0xd218c189,%eax
 156:	5d                   	pop    %rbp
 157:	c3                   	retq   

0000000000000158 <setval_300>:
 158:	55                   	push   %rbp
 159:	48 89 e5             	mov    %rsp,%rbp
 15c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 160:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 164:	c7 00 89 c1 c2 de    	movl   $0xdec2c189,(%rax)
 16a:	90                   	nop
 16b:	5d                   	pop    %rbp
 16c:	c3                   	retq   

000000000000016d <addval_389>:
 16d:	55                   	push   %rbp
 16e:	48 89 e5             	mov    %rsp,%rbp
 171:	89 7d fc             	mov    %edi,-0x4(%rbp)
 174:	8b 45 fc             	mov    -0x4(%rbp),%eax
 177:	2d 73 29 7b 2d       	sub    $0x2d7b2973,%eax
 17c:	5d                   	pop    %rbp
 17d:	c3                   	retq   

000000000000017e <addval_352>:
 17e:	55                   	push   %rbp
 17f:	48 89 e5             	mov    %rsp,%rbp
 182:	89 7d fc             	mov    %edi,-0x4(%rbp)
 185:	8b 45 fc             	mov    -0x4(%rbp),%eax
 188:	05 89 ca c3 73       	add    $0x73c3ca89,%eax
 18d:	5d                   	pop    %rbp
 18e:	c3                   	retq   

000000000000018f <setval_233>:
 18f:	55                   	push   %rbp
 190:	48 89 e5             	mov    %rsp,%rbp
 193:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 197:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 19b:	c7 00 48 89 e0 c7    	movl   $0xc7e08948,(%rax)
 1a1:	90                   	nop
 1a2:	5d                   	pop    %rbp
 1a3:	c3                   	retq   

00000000000001a4 <setval_471>:
 1a4:	55                   	push   %rbp
 1a5:	48 89 e5             	mov    %rsp,%rbp
 1a8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1ac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1b0:	c7 00 09 ca 08 d2    	movl   $0xd208ca09,(%rax)
 1b6:	90                   	nop
 1b7:	5d                   	pop    %rbp
 1b8:	c3                   	retq   

00000000000001b9 <addval_393>:
 1b9:	55                   	push   %rbp
 1ba:	48 89 e5             	mov    %rsp,%rbp
 1bd:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1c0:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1c3:	2d 77 29 87 36       	sub    $0x36872977,%eax
 1c8:	5d                   	pop    %rbp
 1c9:	c3                   	retq   

00000000000001ca <setval_417>:
 1ca:	55                   	push   %rbp
 1cb:	48 89 e5             	mov    %rsp,%rbp
 1ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1d6:	c7 00 48 89 e0 c7    	movl   $0xc7e08948,(%rax)
 1dc:	90                   	nop
 1dd:	5d                   	pop    %rbp
 1de:	c3                   	retq   

00000000000001df <getval_451>:
 1df:	55                   	push   %rbp
 1e0:	48 89 e5             	mov    %rsp,%rbp
 1e3:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
 1e8:	5d                   	pop    %rbp
 1e9:	c3                   	retq   

00000000000001ea <setval_480>:
 1ea:	55                   	push   %rbp
 1eb:	48 89 e5             	mov    %rsp,%rbp
 1ee:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1f6:	c7 00 89 c1 30 db    	movl   $0xdb30c189,(%rax)
 1fc:	90                   	nop
 1fd:	5d                   	pop    %rbp
 1fe:	c3                   	retq   

00000000000001ff <addval_242>:
 1ff:	55                   	push   %rbp
 200:	48 89 e5             	mov    %rsp,%rbp
 203:	89 7d fc             	mov    %edi,-0x4(%rbp)
 206:	8b 45 fc             	mov    -0x4(%rbp),%eax
 209:	2d 77 35 d7 2d       	sub    $0x2dd73577,%eax
 20e:	5d                   	pop    %rbp
 20f:	c3                   	retq   

0000000000000210 <getval_475>:
 210:	55                   	push   %rbp
 211:	48 89 e5             	mov    %rsp,%rbp
 214:	b8 99 ca 08 d2       	mov    $0xd208ca99,%eax
 219:	5d                   	pop    %rbp
 21a:	c3                   	retq   

000000000000021b <getval_435>:
 21b:	55                   	push   %rbp
 21c:	48 89 e5             	mov    %rsp,%rbp
 21f:	b8 09 ca 38 c9       	mov    $0xc938ca09,%eax
 224:	5d                   	pop    %rbp
 225:	c3                   	retq   

0000000000000226 <setval_256>:
 226:	55                   	push   %rbp
 227:	48 89 e5             	mov    %rsp,%rbp
 22a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 22e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 232:	c7 00 12 4c 89 e0    	movl   $0xe0894c12,(%rax)
 238:	90                   	nop
 239:	5d                   	pop    %rbp
 23a:	c3                   	retq   

000000000000023b <setval_481>:
 23b:	55                   	push   %rbp
 23c:	48 89 e5             	mov    %rsp,%rbp
 23f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 243:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 247:	c7 00 f8 89 ca 91    	movl   $0x91ca89f8,(%rax)
 24d:	90                   	nop
 24e:	5d                   	pop    %rbp
 24f:	c3                   	retq   

0000000000000250 <getval_228>:
 250:	55                   	push   %rbp
 251:	48 89 e5             	mov    %rsp,%rbp
 254:	b8 88 48 99 e0       	mov    $0xe0994888,%eax
 259:	5d                   	pop    %rbp
 25a:	c3                   	retq   

000000000000025b <addval_149>:
 25b:	55                   	push   %rbp
 25c:	48 89 e5             	mov    %rsp,%rbp
 25f:	89 7d fc             	mov    %edi,-0x4(%rbp)
 262:	8b 45 fc             	mov    -0x4(%rbp),%eax
 265:	2d 77 3e b7 2d       	sub    $0x2db73e77,%eax
 26a:	5d                   	pop    %rbp
 26b:	c3                   	retq   

000000000000026c <addval_397>:
 26c:	55                   	push   %rbp
 26d:	48 89 e5             	mov    %rsp,%rbp
 270:	89 7d fc             	mov    %edi,-0x4(%rbp)
 273:	8b 45 fc             	mov    -0x4(%rbp),%eax
 276:	2d ef 7e 3e 3c       	sub    $0x3c3e7eef,%eax
 27b:	5d                   	pop    %rbp
 27c:	c3                   	retq   

000000000000027d <setval_421>:
 27d:	55                   	push   %rbp
 27e:	48 89 e5             	mov    %rsp,%rbp
 281:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 285:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 289:	c7 00 55 e0 a9 d6    	movl   $0xd6a9e055,(%rax)
 28f:	90                   	nop
 290:	5d                   	pop    %rbp
 291:	c3                   	retq   

0000000000000292 <getval_196>:
 292:	55                   	push   %rbp
 293:	48 89 e5             	mov    %rsp,%rbp
 296:	b8 89 d6 84 c9       	mov    $0xc984d689,%eax
 29b:	5d                   	pop    %rbp
 29c:	c3                   	retq   

000000000000029d <getval_174>:
 29d:	55                   	push   %rbp
 29e:	48 89 e5             	mov    %rsp,%rbp
 2a1:	b8 14 89 c1 c3       	mov    $0xc3c18914,%eax
 2a6:	5d                   	pop    %rbp
 2a7:	c3                   	retq   

00000000000002a8 <getval_262>:
 2a8:	55                   	push   %rbp
 2a9:	48 89 e5             	mov    %rsp,%rbp
 2ac:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
 2b1:	5d                   	pop    %rbp
 2b2:	c3                   	retq   

00000000000002b3 <end_farm>:
 2b3:	55                   	push   %rbp
 2b4:	48 89 e5             	mov    %rsp,%rbp
 2b7:	b8 01 00 00 00       	mov    $0x1,%eax
 2bc:	5d                   	pop    %rbp
 2bd:	c3                   	retq   
