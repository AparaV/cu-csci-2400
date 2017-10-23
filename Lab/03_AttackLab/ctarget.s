
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c60 <_init>:
  400c60:	48 83 ec 08          	sub    $0x8,%rsp
  400c64:	48 8b 05 8d 33 20 00 	mov    0x20338d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400c6b:	48 85 c0             	test   %rax,%rax
  400c6e:	74 05                	je     400c75 <_init+0x15>
  400c70:	e8 2b 01 00 00       	callq  400da0 <__gmon_start__@plt>
  400c75:	48 83 c4 08          	add    $0x8,%rsp
  400c79:	c3                   	retq   

Disassembly of section .plt:

0000000000400c80 <strcasecmp@plt-0x10>:
  400c80:	ff 35 82 33 20 00    	pushq  0x203382(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c86:	ff 25 84 33 20 00    	jmpq   *0x203384(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c90 <strcasecmp@plt>:
  400c90:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c96:	68 00 00 00 00       	pushq  $0x0
  400c9b:	e9 e0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ca0 <__errno_location@plt>:
  400ca0:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ca6:	68 01 00 00 00       	pushq  $0x1
  400cab:	e9 d0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cb0 <srandom@plt>:
  400cb0:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cb6:	68 02 00 00 00       	pushq  $0x2
  400cbb:	e9 c0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cc0 <strncmp@plt>:
  400cc0:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cc6:	68 03 00 00 00       	pushq  $0x3
  400ccb:	e9 b0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cd0 <strcpy@plt>:
  400cd0:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cd6:	68 04 00 00 00       	pushq  $0x4
  400cdb:	e9 a0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ce0 <puts@plt>:
  400ce0:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ce6:	68 05 00 00 00       	pushq  $0x5
  400ceb:	e9 90 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cf0 <write@plt>:
  400cf0:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cf6:	68 06 00 00 00       	pushq  $0x6
  400cfb:	e9 80 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d00 <__stack_chk_fail@plt>:
  400d00:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d06:	68 07 00 00 00       	pushq  $0x7
  400d0b:	e9 70 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d10 <mmap@plt>:
  400d10:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d16:	68 08 00 00 00       	pushq  $0x8
  400d1b:	e9 60 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d26:	68 09 00 00 00       	pushq  $0x9
  400d2b:	e9 50 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d36:	68 0a 00 00 00       	pushq  $0xa
  400d3b:	e9 40 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d40 <close@plt>:
  400d40:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d46:	68 0b 00 00 00       	pushq  $0xb
  400d4b:	e9 30 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d50 <read@plt>:
  400d50:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d56:	68 0c 00 00 00       	pushq  $0xc
  400d5b:	e9 20 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d66:	68 0d 00 00 00       	pushq  $0xd
  400d6b:	e9 10 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d76:	68 0e 00 00 00       	pushq  $0xe
  400d7b:	e9 00 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d86:	68 0f 00 00 00       	pushq  $0xf
  400d8b:	e9 f0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d90 <__memmove_chk@plt>:
  400d90:	ff 25 02 33 20 00    	jmpq   *0x203302(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d96:	68 10 00 00 00       	pushq  $0x10
  400d9b:	e9 e0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400da0 <__gmon_start__@plt>:
  400da0:	ff 25 fa 32 20 00    	jmpq   *0x2032fa(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400da6:	68 11 00 00 00       	pushq  $0x11
  400dab:	e9 d0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 f2 32 20 00    	jmpq   *0x2032f2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400db6:	68 12 00 00 00       	pushq  $0x12
  400dbb:	e9 c0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 ea 32 20 00    	jmpq   *0x2032ea(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dc6:	68 13 00 00 00       	pushq  $0x13
  400dcb:	e9 b0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 e2 32 20 00    	jmpq   *0x2032e2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dd6:	68 14 00 00 00       	pushq  $0x14
  400ddb:	e9 a0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400de0 <random@plt>:
  400de0:	ff 25 da 32 20 00    	jmpq   *0x2032da(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400de6:	68 15 00 00 00       	pushq  $0x15
  400deb:	e9 90 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 d2 32 20 00    	jmpq   *0x2032d2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400df6:	68 16 00 00 00       	pushq  $0x16
  400dfb:	e9 80 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 ca 32 20 00    	jmpq   *0x2032ca(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e06:	68 17 00 00 00       	pushq  $0x17
  400e0b:	e9 70 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 c2 32 20 00    	jmpq   *0x2032c2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e16:	68 18 00 00 00       	pushq  $0x18
  400e1b:	e9 60 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 ba 32 20 00    	jmpq   *0x2032ba(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e26:	68 19 00 00 00       	pushq  $0x19
  400e2b:	e9 50 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 b2 32 20 00    	jmpq   *0x2032b2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e36:	68 1a 00 00 00       	pushq  $0x1a
  400e3b:	e9 40 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 aa 32 20 00    	jmpq   *0x2032aa(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e46:	68 1b 00 00 00       	pushq  $0x1b
  400e4b:	e9 30 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 a2 32 20 00    	jmpq   *0x2032a2(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e56:	68 1c 00 00 00       	pushq  $0x1c
  400e5b:	e9 20 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 9a 32 20 00    	jmpq   *0x20329a(%rip)        # 604100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e66:	68 1d 00 00 00       	pushq  $0x1d
  400e6b:	e9 10 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 92 32 20 00    	jmpq   *0x203292(%rip)        # 604108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e76:	68 1e 00 00 00       	pushq  $0x1e
  400e7b:	e9 00 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 8a 32 20 00    	jmpq   *0x20328a(%rip)        # 604110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e86:	68 1f 00 00 00       	pushq  $0x1f
  400e8b:	e9 f0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 82 32 20 00    	jmpq   *0x203282(%rip)        # 604118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e96:	68 20 00 00 00       	pushq  $0x20
  400e9b:	e9 e0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 7a 32 20 00    	jmpq   *0x20327a(%rip)        # 604120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400ea6:	68 21 00 00 00       	pushq  $0x21
  400eab:	e9 d0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 72 32 20 00    	jmpq   *0x203272(%rip)        # 604128 <_GLOBAL_OFFSET_TABLE_+0x128>
  400eb6:	68 22 00 00 00       	pushq  $0x22
  400ebb:	e9 c0 fd ff ff       	jmpq   400c80 <_init+0x20>

Disassembly of section .text:

0000000000400ec0 <_start>:
  400ec0:	31 ed                	xor    %ebp,%ebp
  400ec2:	49 89 d1             	mov    %rdx,%r9
  400ec5:	5e                   	pop    %rsi
  400ec6:	48 89 e2             	mov    %rsp,%rdx
  400ec9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ecd:	50                   	push   %rax
  400ece:	54                   	push   %rsp
  400ecf:	49 c7 c0 60 2e 40 00 	mov    $0x402e60,%r8
  400ed6:	48 c7 c1 f0 2d 40 00 	mov    $0x402df0,%rcx
  400edd:	48 c7 c7 bf 11 40 00 	mov    $0x4011bf,%rdi
  400ee4:	e8 77 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ee9:	f4                   	hlt    
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <deregister_tm_clones>:
  400ef0:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400ef5:	55                   	push   %rbp
  400ef6:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400efc:	48 83 f8 0e          	cmp    $0xe,%rax
  400f00:	48 89 e5             	mov    %rsp,%rbp
  400f03:	77 02                	ja     400f07 <deregister_tm_clones+0x17>
  400f05:	5d                   	pop    %rbp
  400f06:	c3                   	retq   
  400f07:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0c:	48 85 c0             	test   %rax,%rax
  400f0f:	74 f4                	je     400f05 <deregister_tm_clones+0x15>
  400f11:	5d                   	pop    %rbp
  400f12:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f17:	ff e0                	jmpq   *%rax
  400f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f20 <register_tm_clones>:
  400f20:	b8 b0 44 60 00       	mov    $0x6044b0,%eax
  400f25:	55                   	push   %rbp
  400f26:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400f2c:	48 c1 f8 03          	sar    $0x3,%rax
  400f30:	48 89 e5             	mov    %rsp,%rbp
  400f33:	48 89 c2             	mov    %rax,%rdx
  400f36:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400f3a:	48 01 d0             	add    %rdx,%rax
  400f3d:	48 d1 f8             	sar    %rax
  400f40:	75 02                	jne    400f44 <register_tm_clones+0x24>
  400f42:	5d                   	pop    %rbp
  400f43:	c3                   	retq   
  400f44:	ba 00 00 00 00       	mov    $0x0,%edx
  400f49:	48 85 d2             	test   %rdx,%rdx
  400f4c:	74 f4                	je     400f42 <register_tm_clones+0x22>
  400f4e:	5d                   	pop    %rbp
  400f4f:	48 89 c6             	mov    %rax,%rsi
  400f52:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400f57:	ff e2                	jmpq   *%rdx
  400f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 89 35 20 00 00 	cmpb   $0x0,0x203589(%rip)        # 6044f0 <completed.6973>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 7e ff ff ff       	callq  400ef0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 76 35 20 00 01 	movb   $0x1,0x203576(%rip)        # 6044f0 <completed.6973>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	48 83 3d 98 2e 20 00 	cmpq   $0x0,0x202e98(%rip)        # 603e20 <__JCR_END__>
  400f87:	00 
  400f88:	74 1e                	je     400fa8 <frame_dummy+0x28>
  400f8a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f8f:	48 85 c0             	test   %rax,%rax
  400f92:	74 14                	je     400fa8 <frame_dummy+0x28>
  400f94:	55                   	push   %rbp
  400f95:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400f9a:	48 89 e5             	mov    %rsp,%rbp
  400f9d:	ff d0                	callq  *%rax
  400f9f:	5d                   	pop    %rbp
  400fa0:	e9 7b ff ff ff       	jmpq   400f20 <register_tm_clones>
  400fa5:	0f 1f 00             	nopl   (%rax)
  400fa8:	e9 73 ff ff ff       	jmpq   400f20 <register_tm_clones>
  400fad:	0f 1f 00             	nopl   (%rax)

0000000000400fb0 <usage>:
  400fb0:	48 83 ec 08          	sub    $0x8,%rsp
  400fb4:	48 89 fa             	mov    %rdi,%rdx
  400fb7:	83 3d 6a 35 20 00 00 	cmpl   $0x0,0x20356a(%rip)        # 604528 <is_checker>
  400fbe:	74 3e                	je     400ffe <usage+0x4e>
  400fc0:	be 78 2e 40 00       	mov    $0x402e78,%esi
  400fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	e8 4c fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fd4:	bf b0 2e 40 00       	mov    $0x402eb0,%edi
  400fd9:	e8 02 fd ff ff       	callq  400ce0 <puts@plt>
  400fde:	bf 28 30 40 00       	mov    $0x403028,%edi
  400fe3:	e8 f8 fc ff ff       	callq  400ce0 <puts@plt>
  400fe8:	bf d8 2e 40 00       	mov    $0x402ed8,%edi
  400fed:	e8 ee fc ff ff       	callq  400ce0 <puts@plt>
  400ff2:	bf 42 30 40 00       	mov    $0x403042,%edi
  400ff7:	e8 e4 fc ff ff       	callq  400ce0 <puts@plt>
  400ffc:	eb 32                	jmp    401030 <usage+0x80>
  400ffe:	be 5e 30 40 00       	mov    $0x40305e,%esi
  401003:	bf 01 00 00 00       	mov    $0x1,%edi
  401008:	b8 00 00 00 00       	mov    $0x0,%eax
  40100d:	e8 0e fe ff ff       	callq  400e20 <__printf_chk@plt>
  401012:	bf 00 2f 40 00       	mov    $0x402f00,%edi
  401017:	e8 c4 fc ff ff       	callq  400ce0 <puts@plt>
  40101c:	bf 28 2f 40 00       	mov    $0x402f28,%edi
  401021:	e8 ba fc ff ff       	callq  400ce0 <puts@plt>
  401026:	bf 7c 30 40 00       	mov    $0x40307c,%edi
  40102b:	e8 b0 fc ff ff       	callq  400ce0 <puts@plt>
  401030:	bf 00 00 00 00       	mov    $0x0,%edi
  401035:	e8 36 fe ff ff       	callq  400e70 <exit@plt>

000000000040103a <initialize_target>:
  40103a:	55                   	push   %rbp
  40103b:	53                   	push   %rbx
  40103c:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401043:	89 f5                	mov    %esi,%ebp
  401045:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40104c:	00 00 
  40104e:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  401055:	00 
  401056:	31 c0                	xor    %eax,%eax
  401058:	89 3d ba 34 20 00    	mov    %edi,0x2034ba(%rip)        # 604518 <check_level>
  40105e:	8b 3d 04 31 20 00    	mov    0x203104(%rip),%edi        # 604168 <target_id>
  401064:	e8 5a 1d 00 00       	callq  402dc3 <gencookie>
  401069:	89 05 b5 34 20 00    	mov    %eax,0x2034b5(%rip)        # 604524 <cookie>
  40106f:	89 c7                	mov    %eax,%edi
  401071:	e8 4d 1d 00 00       	callq  402dc3 <gencookie>
  401076:	89 05 a4 34 20 00    	mov    %eax,0x2034a4(%rip)        # 604520 <authkey>
  40107c:	8b 05 e6 30 20 00    	mov    0x2030e6(%rip),%eax        # 604168 <target_id>
  401082:	8d 78 01             	lea    0x1(%rax),%edi
  401085:	e8 26 fc ff ff       	callq  400cb0 <srandom@plt>
  40108a:	e8 51 fd ff ff       	callq  400de0 <random@plt>
  40108f:	89 c7                	mov    %eax,%edi
  401091:	e8 03 03 00 00       	callq  401399 <scramble>
  401096:	89 c3                	mov    %eax,%ebx
  401098:	85 ed                	test   %ebp,%ebp
  40109a:	74 18                	je     4010b4 <initialize_target+0x7a>
  40109c:	bf 00 00 00 00       	mov    $0x0,%edi
  4010a1:	e8 2a fd ff ff       	callq  400dd0 <time@plt>
  4010a6:	89 c7                	mov    %eax,%edi
  4010a8:	e8 03 fc ff ff       	callq  400cb0 <srandom@plt>
  4010ad:	e8 2e fd ff ff       	callq  400de0 <random@plt>
  4010b2:	eb 05                	jmp    4010b9 <initialize_target+0x7f>
  4010b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4010b9:	01 c3                	add    %eax,%ebx
  4010bb:	0f b7 db             	movzwl %bx,%ebx
  4010be:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010c5:	89 c0                	mov    %eax,%eax
  4010c7:	48 89 05 d2 33 20 00 	mov    %rax,0x2033d2(%rip)        # 6044a0 <buf_offset>
  4010ce:	c6 05 73 40 20 00 63 	movb   $0x63,0x204073(%rip)        # 605148 <target_prefix>
  4010d5:	83 3d cc 33 20 00 00 	cmpl   $0x0,0x2033cc(%rip)        # 6044a8 <notify>
  4010dc:	0f 84 bb 00 00 00    	je     40119d <initialize_target+0x163>
  4010e2:	83 3d 3f 34 20 00 00 	cmpl   $0x0,0x20343f(%rip)        # 604528 <is_checker>
  4010e9:	0f 85 ae 00 00 00    	jne    40119d <initialize_target+0x163>
  4010ef:	be 00 01 00 00       	mov    $0x100,%esi
  4010f4:	48 89 e7             	mov    %rsp,%rdi
  4010f7:	e8 64 fd ff ff       	callq  400e60 <gethostname@plt>
  4010fc:	85 c0                	test   %eax,%eax
  4010fe:	74 25                	je     401125 <initialize_target+0xeb>
  401100:	bf 58 2f 40 00       	mov    $0x402f58,%edi
  401105:	e8 d6 fb ff ff       	callq  400ce0 <puts@plt>
  40110a:	bf 08 00 00 00       	mov    $0x8,%edi
  40110f:	e8 5c fd ff ff       	callq  400e70 <exit@plt>
  401114:	48 89 e6             	mov    %rsp,%rsi
  401117:	e8 74 fb ff ff       	callq  400c90 <strcasecmp@plt>
  40111c:	85 c0                	test   %eax,%eax
  40111e:	74 21                	je     401141 <initialize_target+0x107>
  401120:	83 c3 01             	add    $0x1,%ebx
  401123:	eb 05                	jmp    40112a <initialize_target+0xf0>
  401125:	bb 00 00 00 00       	mov    $0x0,%ebx
  40112a:	48 63 c3             	movslq %ebx,%rax
  40112d:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  401134:	00 
  401135:	48 85 ff             	test   %rdi,%rdi
  401138:	75 da                	jne    401114 <initialize_target+0xda>
  40113a:	b8 00 00 00 00       	mov    $0x0,%eax
  40113f:	eb 05                	jmp    401146 <initialize_target+0x10c>
  401141:	b8 01 00 00 00       	mov    $0x1,%eax
  401146:	85 c0                	test   %eax,%eax
  401148:	75 1c                	jne    401166 <initialize_target+0x12c>
  40114a:	48 89 e2             	mov    %rsp,%rdx
  40114d:	be 90 2f 40 00       	mov    $0x402f90,%esi
  401152:	bf 01 00 00 00       	mov    $0x1,%edi
  401157:	e8 c4 fc ff ff       	callq  400e20 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 0a fd ff ff       	callq  400e70 <exit@plt>
  401166:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40116d:	00 
  40116e:	e8 b8 19 00 00       	callq  402b2b <init_driver>
  401173:	85 c0                	test   %eax,%eax
  401175:	79 26                	jns    40119d <initialize_target+0x163>
  401177:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40117e:	00 
  40117f:	be d0 2f 40 00       	mov    $0x402fd0,%esi
  401184:	bf 01 00 00 00       	mov    $0x1,%edi
  401189:	b8 00 00 00 00       	mov    $0x0,%eax
  40118e:	e8 8d fc ff ff       	callq  400e20 <__printf_chk@plt>
  401193:	bf 08 00 00 00       	mov    $0x8,%edi
  401198:	e8 d3 fc ff ff       	callq  400e70 <exit@plt>
  40119d:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4011a4:	00 
  4011a5:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011ac:	00 00 
  4011ae:	74 05                	je     4011b5 <initialize_target+0x17b>
  4011b0:	e8 4b fb ff ff       	callq  400d00 <__stack_chk_fail@plt>
  4011b5:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011bc:	5b                   	pop    %rbx
  4011bd:	5d                   	pop    %rbp
  4011be:	c3                   	retq   

00000000004011bf <main>:
  4011bf:	41 56                	push   %r14
  4011c1:	41 55                	push   %r13
  4011c3:	41 54                	push   %r12
  4011c5:	55                   	push   %rbp
  4011c6:	53                   	push   %rbx
  4011c7:	41 89 fc             	mov    %edi,%r12d
  4011ca:	48 89 f3             	mov    %rsi,%rbx
  4011cd:	be 9e 1e 40 00       	mov    $0x401e9e,%esi
  4011d2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011d7:	e8 94 fb ff ff       	callq  400d70 <signal@plt>
  4011dc:	be 50 1e 40 00       	mov    $0x401e50,%esi
  4011e1:	bf 07 00 00 00       	mov    $0x7,%edi
  4011e6:	e8 85 fb ff ff       	callq  400d70 <signal@plt>
  4011eb:	be ec 1e 40 00       	mov    $0x401eec,%esi
  4011f0:	bf 04 00 00 00       	mov    $0x4,%edi
  4011f5:	e8 76 fb ff ff       	callq  400d70 <signal@plt>
  4011fa:	83 3d 27 33 20 00 00 	cmpl   $0x0,0x203327(%rip)        # 604528 <is_checker>
  401201:	74 20                	je     401223 <main+0x64>
  401203:	be 3a 1f 40 00       	mov    $0x401f3a,%esi
  401208:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120d:	e8 5e fb ff ff       	callq  400d70 <signal@plt>
  401212:	bf 05 00 00 00       	mov    $0x5,%edi
  401217:	e8 14 fb ff ff       	callq  400d30 <alarm@plt>
  40121c:	bd 9a 30 40 00       	mov    $0x40309a,%ebp
  401221:	eb 05                	jmp    401228 <main+0x69>
  401223:	bd 95 30 40 00       	mov    $0x403095,%ebp
  401228:	48 8b 05 91 32 20 00 	mov    0x203291(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  40122f:	48 89 05 da 32 20 00 	mov    %rax,0x2032da(%rip)        # 604510 <infile>
  401236:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40123c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401242:	e9 c6 00 00 00       	jmpq   40130d <main+0x14e>
  401247:	83 e8 61             	sub    $0x61,%eax
  40124a:	3c 10                	cmp    $0x10,%al
  40124c:	0f 87 9c 00 00 00    	ja     4012ee <main+0x12f>
  401252:	0f b6 c0             	movzbl %al,%eax
  401255:	ff 24 c5 e0 30 40 00 	jmpq   *0x4030e0(,%rax,8)
  40125c:	48 8b 3b             	mov    (%rbx),%rdi
  40125f:	e8 4c fd ff ff       	callq  400fb0 <usage>
  401264:	be 4d 33 40 00       	mov    $0x40334d,%esi
  401269:	48 8b 3d 70 32 20 00 	mov    0x203270(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  401270:	e8 bb fb ff ff       	callq  400e30 <fopen@plt>
  401275:	48 89 05 94 32 20 00 	mov    %rax,0x203294(%rip)        # 604510 <infile>
  40127c:	48 85 c0             	test   %rax,%rax
  40127f:	0f 85 88 00 00 00    	jne    40130d <main+0x14e>
  401285:	48 8b 0d 54 32 20 00 	mov    0x203254(%rip),%rcx        # 6044e0 <optarg@@GLIBC_2.2.5>
  40128c:	ba a2 30 40 00       	mov    $0x4030a2,%edx
  401291:	be 01 00 00 00       	mov    $0x1,%esi
  401296:	48 8b 3d 4b 32 20 00 	mov    0x20324b(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  40129d:	e8 ee fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a7:	e9 e4 00 00 00       	jmpq   401390 <main+0x1d1>
  4012ac:	ba 10 00 00 00       	mov    $0x10,%edx
  4012b1:	be 00 00 00 00       	mov    $0x0,%esi
  4012b6:	48 8b 3d 23 32 20 00 	mov    0x203223(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  4012bd:	e8 8e fb ff ff       	callq  400e50 <strtoul@plt>
  4012c2:	41 89 c6             	mov    %eax,%r14d
  4012c5:	eb 46                	jmp    40130d <main+0x14e>
  4012c7:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012cc:	be 00 00 00 00       	mov    $0x0,%esi
  4012d1:	48 8b 3d 08 32 20 00 	mov    0x203208(%rip),%rdi        # 6044e0 <optarg@@GLIBC_2.2.5>
  4012d8:	e8 d3 fa ff ff       	callq  400db0 <strtol@plt>
  4012dd:	41 89 c5             	mov    %eax,%r13d
  4012e0:	eb 2b                	jmp    40130d <main+0x14e>
  4012e2:	c7 05 bc 31 20 00 00 	movl   $0x0,0x2031bc(%rip)        # 6044a8 <notify>
  4012e9:	00 00 00 
  4012ec:	eb 1f                	jmp    40130d <main+0x14e>
  4012ee:	0f be d2             	movsbl %dl,%edx
  4012f1:	be bf 30 40 00       	mov    $0x4030bf,%esi
  4012f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4012fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401300:	e8 1b fb ff ff       	callq  400e20 <__printf_chk@plt>
  401305:	48 8b 3b             	mov    (%rbx),%rdi
  401308:	e8 a3 fc ff ff       	callq  400fb0 <usage>
  40130d:	48 89 ea             	mov    %rbp,%rdx
  401310:	48 89 de             	mov    %rbx,%rsi
  401313:	44 89 e7             	mov    %r12d,%edi
  401316:	e8 25 fb ff ff       	callq  400e40 <getopt@plt>
  40131b:	89 c2                	mov    %eax,%edx
  40131d:	3c ff                	cmp    $0xff,%al
  40131f:	0f 85 22 ff ff ff    	jne    401247 <main+0x88>
  401325:	be 00 00 00 00       	mov    $0x0,%esi
  40132a:	44 89 ef             	mov    %r13d,%edi
  40132d:	e8 08 fd ff ff       	callq  40103a <initialize_target>
  401332:	83 3d ef 31 20 00 00 	cmpl   $0x0,0x2031ef(%rip)        # 604528 <is_checker>
  401339:	74 2a                	je     401365 <main+0x1a6>
  40133b:	44 3b 35 de 31 20 00 	cmp    0x2031de(%rip),%r14d        # 604520 <authkey>
  401342:	74 21                	je     401365 <main+0x1a6>
  401344:	44 89 f2             	mov    %r14d,%edx
  401347:	be f8 2f 40 00       	mov    $0x402ff8,%esi
  40134c:	bf 01 00 00 00       	mov    $0x1,%edi
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 c5 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40135b:	b8 00 00 00 00       	mov    $0x0,%eax
  401360:	e8 76 07 00 00       	callq  401adb <check_fail>
  401365:	8b 15 b9 31 20 00    	mov    0x2031b9(%rip),%edx        # 604524 <cookie>
  40136b:	be d2 30 40 00       	mov    $0x4030d2,%esi
  401370:	bf 01 00 00 00       	mov    $0x1,%edi
  401375:	b8 00 00 00 00       	mov    $0x0,%eax
  40137a:	e8 a1 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40137f:	48 8b 3d 1a 31 20 00 	mov    0x20311a(%rip),%rdi        # 6044a0 <buf_offset>
  401386:	e8 af 0c 00 00       	callq  40203a <stable_launch>
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	5b                   	pop    %rbx
  401391:	5d                   	pop    %rbp
  401392:	41 5c                	pop    %r12
  401394:	41 5d                	pop    %r13
  401396:	41 5e                	pop    %r14
  401398:	c3                   	retq   

0000000000401399 <scramble>:
  401399:	b8 00 00 00 00       	mov    $0x0,%eax
  40139e:	eb 11                	jmp    4013b1 <scramble+0x18>
  4013a0:	69 c8 8f 1f 00 00    	imul   $0x1f8f,%eax,%ecx
  4013a6:	01 f9                	add    %edi,%ecx
  4013a8:	89 c2                	mov    %eax,%edx
  4013aa:	89 4c 94 c8          	mov    %ecx,-0x38(%rsp,%rdx,4)
  4013ae:	83 c0 01             	add    $0x1,%eax
  4013b1:	83 f8 09             	cmp    $0x9,%eax
  4013b4:	76 ea                	jbe    4013a0 <scramble+0x7>
  4013b6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013ba:	69 c0 f9 b4 00 00    	imul   $0xb4f9,%eax,%eax
  4013c0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013c4:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013c8:	69 c0 83 de 00 00    	imul   $0xde83,%eax,%eax
  4013ce:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013d2:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  4013d6:	69 c0 ae 0b 00 00    	imul   $0xbae,%eax,%eax
  4013dc:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  4013e0:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4013e4:	69 c0 59 b1 00 00    	imul   $0xb159,%eax,%eax
  4013ea:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4013ee:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4013f2:	69 c0 cb d1 00 00    	imul   $0xd1cb,%eax,%eax
  4013f8:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4013fc:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401400:	69 c0 38 0f 00 00    	imul   $0xf38,%eax,%eax
  401406:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40140a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40140e:	69 c0 66 af 00 00    	imul   $0xaf66,%eax,%eax
  401414:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401418:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  40141c:	69 c0 aa cd 00 00    	imul   $0xcdaa,%eax,%eax
  401422:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401426:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40142a:	69 c0 64 97 00 00    	imul   $0x9764,%eax,%eax
  401430:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401434:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401438:	69 c0 24 dc 00 00    	imul   $0xdc24,%eax,%eax
  40143e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401442:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401446:	69 c0 d1 15 00 00    	imul   $0x15d1,%eax,%eax
  40144c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401450:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401454:	69 c0 bd 37 00 00    	imul   $0x37bd,%eax,%eax
  40145a:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40145e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401462:	69 c0 bb 1e 00 00    	imul   $0x1ebb,%eax,%eax
  401468:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40146c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401470:	69 c0 9f 14 00 00    	imul   $0x149f,%eax,%eax
  401476:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40147a:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40147e:	69 c0 e2 93 00 00    	imul   $0x93e2,%eax,%eax
  401484:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401488:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40148c:	69 c0 be 03 00 00    	imul   $0x3be,%eax,%eax
  401492:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401496:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40149a:	69 c0 34 23 00 00    	imul   $0x2334,%eax,%eax
  4014a0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014a4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014a8:	69 c0 4c 0d 00 00    	imul   $0xd4c,%eax,%eax
  4014ae:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4014b2:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  4014b6:	69 c0 51 c8 00 00    	imul   $0xc851,%eax,%eax
  4014bc:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  4014c0:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  4014c4:	69 c0 8a 0d 00 00    	imul   $0xd8a,%eax,%eax
  4014ca:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  4014ce:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014d2:	69 c0 1c 63 00 00    	imul   $0x631c,%eax,%eax
  4014d8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014dc:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014e0:	69 c0 47 1a 00 00    	imul   $0x1a47,%eax,%eax
  4014e6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014ea:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014ee:	69 c0 6e 7c 00 00    	imul   $0x7c6e,%eax,%eax
  4014f4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014f8:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  4014fc:	69 c0 95 84 00 00    	imul   $0x8495,%eax,%eax
  401502:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401506:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40150a:	69 c0 8c ba 00 00    	imul   $0xba8c,%eax,%eax
  401510:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401514:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401518:	69 c0 dc 22 00 00    	imul   $0x22dc,%eax,%eax
  40151e:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401522:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401526:	69 c0 b8 94 00 00    	imul   $0x94b8,%eax,%eax
  40152c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401530:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401534:	69 c0 34 bb 00 00    	imul   $0xbb34,%eax,%eax
  40153a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40153e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401542:	69 c0 a6 22 00 00    	imul   $0x22a6,%eax,%eax
  401548:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40154c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401550:	69 c0 a2 97 00 00    	imul   $0x97a2,%eax,%eax
  401556:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40155a:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40155e:	69 c0 fb 5e 00 00    	imul   $0x5efb,%eax,%eax
  401564:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401568:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40156c:	69 c0 63 ff 00 00    	imul   $0xff63,%eax,%eax
  401572:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401576:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40157a:	69 c0 a3 7d 00 00    	imul   $0x7da3,%eax,%eax
  401580:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401584:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401588:	69 c0 11 b1 00 00    	imul   $0xb111,%eax,%eax
  40158e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401592:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401596:	69 c0 54 cb 00 00    	imul   $0xcb54,%eax,%eax
  40159c:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015a0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015a4:	69 c0 10 e0 00 00    	imul   $0xe010,%eax,%eax
  4015aa:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015ae:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015b2:	69 c0 5e db 00 00    	imul   $0xdb5e,%eax,%eax
  4015b8:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015bc:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  4015c0:	69 c0 f2 40 00 00    	imul   $0x40f2,%eax,%eax
  4015c6:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  4015ca:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015ce:	69 c0 48 e2 00 00    	imul   $0xe248,%eax,%eax
  4015d4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015d8:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015dc:	69 c0 a0 6b 00 00    	imul   $0x6ba0,%eax,%eax
  4015e2:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015e6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015ea:	69 c0 41 26 00 00    	imul   $0x2641,%eax,%eax
  4015f0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4015f4:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4015f8:	69 c0 31 6d 00 00    	imul   $0x6d31,%eax,%eax
  4015fe:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401602:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401606:	69 c0 16 e9 00 00    	imul   $0xe916,%eax,%eax
  40160c:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401610:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401614:	69 c0 6c 6e 00 00    	imul   $0x6e6c,%eax,%eax
  40161a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40161e:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401622:	69 c0 39 f8 00 00    	imul   $0xf839,%eax,%eax
  401628:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40162c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401630:	69 c0 44 c2 00 00    	imul   $0xc244,%eax,%eax
  401636:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40163a:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40163e:	69 c0 70 a1 00 00    	imul   $0xa170,%eax,%eax
  401644:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401648:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40164c:	69 c0 64 d9 00 00    	imul   $0xd964,%eax,%eax
  401652:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401656:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40165a:	69 c0 56 ce 00 00    	imul   $0xce56,%eax,%eax
  401660:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401664:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401668:	69 c0 07 65 00 00    	imul   $0x6507,%eax,%eax
  40166e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401672:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401676:	69 c0 12 49 00 00    	imul   $0x4912,%eax,%eax
  40167c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401680:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401684:	69 c0 1a c8 00 00    	imul   $0xc81a,%eax,%eax
  40168a:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40168e:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401692:	69 c0 6e 3f 00 00    	imul   $0x3f6e,%eax,%eax
  401698:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40169c:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016a0:	69 c0 3d 7c 00 00    	imul   $0x7c3d,%eax,%eax
  4016a6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016aa:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4016ae:	69 c0 94 ce 00 00    	imul   $0xce94,%eax,%eax
  4016b4:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4016b8:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4016bc:	69 c0 8a be 00 00    	imul   $0xbe8a,%eax,%eax
  4016c2:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4016c6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016ca:	69 c0 5a 76 00 00    	imul   $0x765a,%eax,%eax
  4016d0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016d4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016d8:	69 c0 ce af 00 00    	imul   $0xafce,%eax,%eax
  4016de:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016e2:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016e6:	69 c0 20 54 00 00    	imul   $0x5420,%eax,%eax
  4016ec:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016f0:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016f4:	69 c0 2d 6b 00 00    	imul   $0x6b2d,%eax,%eax
  4016fa:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016fe:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  401702:	69 c0 49 24 00 00    	imul   $0x2449,%eax,%eax
  401708:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  40170c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401710:	69 c0 8f a3 00 00    	imul   $0xa38f,%eax,%eax
  401716:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40171a:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  40171e:	69 c0 19 ef 00 00    	imul   $0xef19,%eax,%eax
  401724:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  401728:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40172c:	69 c0 cc e4 00 00    	imul   $0xe4cc,%eax,%eax
  401732:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401736:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40173a:	69 c0 69 07 00 00    	imul   $0x769,%eax,%eax
  401740:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401744:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401748:	69 c0 1a 57 00 00    	imul   $0x571a,%eax,%eax
  40174e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401752:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  401756:	69 c0 ea 8e 00 00    	imul   $0x8eea,%eax,%eax
  40175c:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  401760:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401764:	69 c0 ec 74 00 00    	imul   $0x74ec,%eax,%eax
  40176a:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40176e:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401772:	69 c0 41 28 00 00    	imul   $0x2841,%eax,%eax
  401778:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40177c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401780:	69 c0 0e f0 00 00    	imul   $0xf00e,%eax,%eax
  401786:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40178a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40178e:	69 c0 07 d9 00 00    	imul   $0xd907,%eax,%eax
  401794:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401798:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40179c:	69 c0 aa eb 00 00    	imul   $0xebaa,%eax,%eax
  4017a2:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4017a6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4017aa:	69 c0 53 da 00 00    	imul   $0xda53,%eax,%eax
  4017b0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4017b4:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4017b8:	69 c0 d1 ae 00 00    	imul   $0xaed1,%eax,%eax
  4017be:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4017c2:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4017c6:	69 c0 b2 b9 00 00    	imul   $0xb9b2,%eax,%eax
  4017cc:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4017d0:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4017d4:	69 c0 ce 7a 00 00    	imul   $0x7ace,%eax,%eax
  4017da:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4017de:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4017e2:	69 c0 70 47 00 00    	imul   $0x4770,%eax,%eax
  4017e8:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4017ec:	8b 44 24 cc          	mov    -0x34(%rsp),%eax
  4017f0:	69 c0 b5 a3 00 00    	imul   $0xa3b5,%eax,%eax
  4017f6:	89 44 24 cc          	mov    %eax,-0x34(%rsp)
  4017fa:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4017fe:	69 c0 50 9b 00 00    	imul   $0x9b50,%eax,%eax
  401804:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401808:	8b 44 24 c8          	mov    -0x38(%rsp),%eax
  40180c:	69 c0 f8 f3 00 00    	imul   $0xf3f8,%eax,%eax
  401812:	89 44 24 c8          	mov    %eax,-0x38(%rsp)
  401816:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40181a:	69 c0 55 d2 00 00    	imul   $0xd255,%eax,%eax
  401820:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401824:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401828:	69 c0 35 f3 00 00    	imul   $0xf335,%eax,%eax
  40182e:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401832:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401836:	69 c0 47 6a 00 00    	imul   $0x6a47,%eax,%eax
  40183c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401840:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401844:	69 c0 98 2f 00 00    	imul   $0x2f98,%eax,%eax
  40184a:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40184e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401852:	69 c0 4b 59 00 00    	imul   $0x594b,%eax,%eax
  401858:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40185c:	ba 00 00 00 00       	mov    $0x0,%edx
  401861:	b8 00 00 00 00       	mov    $0x0,%eax
  401866:	eb 0b                	jmp    401873 <scramble+0x4da>
  401868:	89 d1                	mov    %edx,%ecx
  40186a:	8b 4c 8c c8          	mov    -0x38(%rsp,%rcx,4),%ecx
  40186e:	01 c8                	add    %ecx,%eax
  401870:	83 c2 01             	add    $0x1,%edx
  401873:	83 fa 09             	cmp    $0x9,%edx
  401876:	76 f0                	jbe    401868 <scramble+0x4cf>
  401878:	f3 c3                	repz retq 

000000000040187a <getbuf>:
  40187a:	48 83 ec 28          	sub    $0x28,%rsp
  40187e:	48 89 e7             	mov    %rsp,%rdi
  401881:	e8 8a 02 00 00       	callq  401b10 <Gets>
  401886:	b8 01 00 00 00       	mov    $0x1,%eax
  40188b:	48 83 c4 28          	add    $0x28,%rsp
  40188f:	c3                   	retq   

0000000000401890 <touch1>:
  401890:	48 83 ec 08          	sub    $0x8,%rsp
  401894:	c7 05 7e 2c 20 00 01 	movl   $0x1,0x202c7e(%rip)        # 60451c <vlevel>
  40189b:	00 00 00 
  40189e:	bf a6 31 40 00       	mov    $0x4031a6,%edi
  4018a3:	e8 38 f4 ff ff       	callq  400ce0 <puts@plt>
  4018a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ad:	e8 b4 04 00 00       	callq  401d66 <validate>
  4018b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4018b7:	e8 b4 f5 ff ff       	callq  400e70 <exit@plt>

00000000004018bc <touch2>:
  4018bc:	48 83 ec 08          	sub    $0x8,%rsp
  4018c0:	89 fa                	mov    %edi,%edx
  4018c2:	c7 05 50 2c 20 00 02 	movl   $0x2,0x202c50(%rip)        # 60451c <vlevel>
  4018c9:	00 00 00 
  4018cc:	3b 3d 52 2c 20 00    	cmp    0x202c52(%rip),%edi        # 604524 <cookie>
  4018d2:	75 20                	jne    4018f4 <touch2+0x38>
  4018d4:	be c8 31 40 00       	mov    $0x4031c8,%esi
  4018d9:	bf 01 00 00 00       	mov    $0x1,%edi
  4018de:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e3:	e8 38 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018e8:	bf 02 00 00 00       	mov    $0x2,%edi
  4018ed:	e8 74 04 00 00       	callq  401d66 <validate>
  4018f2:	eb 1e                	jmp    401912 <touch2+0x56>
  4018f4:	be f0 31 40 00       	mov    $0x4031f0,%esi
  4018f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4018fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401903:	e8 18 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  401908:	bf 02 00 00 00       	mov    $0x2,%edi
  40190d:	e8 16 05 00 00       	callq  401e28 <fail>
  401912:	bf 00 00 00 00       	mov    $0x0,%edi
  401917:	e8 54 f5 ff ff       	callq  400e70 <exit@plt>

000000000040191c <hexmatch>:
  40191c:	41 54                	push   %r12
  40191e:	55                   	push   %rbp
  40191f:	53                   	push   %rbx
  401920:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401924:	41 89 fc             	mov    %edi,%r12d
  401927:	48 89 f5             	mov    %rsi,%rbp
  40192a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401931:	00 00 
  401933:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401938:	31 c0                	xor    %eax,%eax
  40193a:	e8 a1 f4 ff ff       	callq  400de0 <random@plt>
  40193f:	48 89 c1             	mov    %rax,%rcx
  401942:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401949:	0a d7 a3 
  40194c:	48 f7 ea             	imul   %rdx
  40194f:	48 01 ca             	add    %rcx,%rdx
  401952:	48 c1 fa 06          	sar    $0x6,%rdx
  401956:	48 89 c8             	mov    %rcx,%rax
  401959:	48 c1 f8 3f          	sar    $0x3f,%rax
  40195d:	48 29 c2             	sub    %rax,%rdx
  401960:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401964:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401968:	48 c1 e0 02          	shl    $0x2,%rax
  40196c:	48 29 c1             	sub    %rax,%rcx
  40196f:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  401973:	45 89 e0             	mov    %r12d,%r8d
  401976:	b9 c3 31 40 00       	mov    $0x4031c3,%ecx
  40197b:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401982:	be 01 00 00 00       	mov    $0x1,%esi
  401987:	48 89 df             	mov    %rbx,%rdi
  40198a:	b8 00 00 00 00       	mov    $0x0,%eax
  40198f:	e8 0c f5 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401994:	ba 09 00 00 00       	mov    $0x9,%edx
  401999:	48 89 de             	mov    %rbx,%rsi
  40199c:	48 89 ef             	mov    %rbp,%rdi
  40199f:	e8 1c f3 ff ff       	callq  400cc0 <strncmp@plt>
  4019a4:	85 c0                	test   %eax,%eax
  4019a6:	0f 94 c0             	sete   %al
  4019a9:	0f b6 c0             	movzbl %al,%eax
  4019ac:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
  4019b1:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4019b8:	00 00 
  4019ba:	74 05                	je     4019c1 <hexmatch+0xa5>
  4019bc:	e8 3f f3 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  4019c1:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  4019c5:	5b                   	pop    %rbx
  4019c6:	5d                   	pop    %rbp
  4019c7:	41 5c                	pop    %r12
  4019c9:	c3                   	retq   

00000000004019ca <touch3>:
  4019ca:	53                   	push   %rbx
  4019cb:	48 89 fb             	mov    %rdi,%rbx
  4019ce:	c7 05 44 2b 20 00 03 	movl   $0x3,0x202b44(%rip)        # 60451c <vlevel>
  4019d5:	00 00 00 
  4019d8:	48 89 fe             	mov    %rdi,%rsi
  4019db:	8b 3d 43 2b 20 00    	mov    0x202b43(%rip),%edi        # 604524 <cookie>
  4019e1:	e8 36 ff ff ff       	callq  40191c <hexmatch>
  4019e6:	85 c0                	test   %eax,%eax
  4019e8:	74 23                	je     401a0d <touch3+0x43>
  4019ea:	48 89 da             	mov    %rbx,%rdx
  4019ed:	be 18 32 40 00       	mov    $0x403218,%esi
  4019f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019fc:	e8 1f f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401a01:	bf 03 00 00 00       	mov    $0x3,%edi
  401a06:	e8 5b 03 00 00       	callq  401d66 <validate>
  401a0b:	eb 21                	jmp    401a2e <touch3+0x64>
  401a0d:	48 89 da             	mov    %rbx,%rdx
  401a10:	be 40 32 40 00       	mov    $0x403240,%esi
  401a15:	bf 01 00 00 00       	mov    $0x1,%edi
  401a1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a1f:	e8 fc f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a24:	bf 03 00 00 00       	mov    $0x3,%edi
  401a29:	e8 fa 03 00 00       	callq  401e28 <fail>
  401a2e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a33:	e8 38 f4 ff ff       	callq  400e70 <exit@plt>

0000000000401a38 <test>:
  401a38:	48 83 ec 08          	sub    $0x8,%rsp
  401a3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a41:	e8 34 fe ff ff       	callq  40187a <getbuf>
  401a46:	89 c2                	mov    %eax,%edx
  401a48:	be 68 32 40 00       	mov    $0x403268,%esi
  401a4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401a52:	b8 00 00 00 00       	mov    $0x0,%eax
  401a57:	e8 c4 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a5c:	48 83 c4 08          	add    $0x8,%rsp
  401a60:	c3                   	retq   
  401a61:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a68:	00 00 00 
  401a6b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401a70 <save_char>:
  401a70:	8b 05 ce 36 20 00    	mov    0x2036ce(%rip),%eax        # 605144 <gets_cnt>
  401a76:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401a7b:	7f 49                	jg     401ac6 <save_char+0x56>
  401a7d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401a80:	89 f9                	mov    %edi,%ecx
  401a82:	c0 e9 04             	shr    $0x4,%cl
  401a85:	83 e1 0f             	and    $0xf,%ecx
  401a88:	0f b6 b1 90 35 40 00 	movzbl 0x403590(%rcx),%esi
  401a8f:	48 63 ca             	movslq %edx,%rcx
  401a92:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401a99:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a9c:	83 e7 0f             	and    $0xf,%edi
  401a9f:	0f b6 b7 90 35 40 00 	movzbl 0x403590(%rdi),%esi
  401aa6:	48 63 c9             	movslq %ecx,%rcx
  401aa9:	40 88 b1 40 45 60 00 	mov    %sil,0x604540(%rcx)
  401ab0:	83 c2 02             	add    $0x2,%edx
  401ab3:	48 63 d2             	movslq %edx,%rdx
  401ab6:	c6 82 40 45 60 00 20 	movb   $0x20,0x604540(%rdx)
  401abd:	83 c0 01             	add    $0x1,%eax
  401ac0:	89 05 7e 36 20 00    	mov    %eax,0x20367e(%rip)        # 605144 <gets_cnt>
  401ac6:	f3 c3                	repz retq 

0000000000401ac8 <save_term>:
  401ac8:	8b 05 76 36 20 00    	mov    0x203676(%rip),%eax        # 605144 <gets_cnt>
  401ace:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401ad1:	48 98                	cltq   
  401ad3:	c6 80 40 45 60 00 00 	movb   $0x0,0x604540(%rax)
  401ada:	c3                   	retq   

0000000000401adb <check_fail>:
  401adb:	48 83 ec 08          	sub    $0x8,%rsp
  401adf:	0f be 15 62 36 20 00 	movsbl 0x203662(%rip),%edx        # 605148 <target_prefix>
  401ae6:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401aec:	8b 0d 26 2a 20 00    	mov    0x202a26(%rip),%ecx        # 604518 <check_level>
  401af2:	be 8b 32 40 00       	mov    $0x40328b,%esi
  401af7:	bf 01 00 00 00       	mov    $0x1,%edi
  401afc:	b8 00 00 00 00       	mov    $0x0,%eax
  401b01:	e8 1a f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401b06:	bf 01 00 00 00       	mov    $0x1,%edi
  401b0b:	e8 60 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401b10 <Gets>:
  401b10:	41 54                	push   %r12
  401b12:	55                   	push   %rbp
  401b13:	53                   	push   %rbx
  401b14:	49 89 fc             	mov    %rdi,%r12
  401b17:	c7 05 23 36 20 00 00 	movl   $0x0,0x203623(%rip)        # 605144 <gets_cnt>
  401b1e:	00 00 00 
  401b21:	48 89 fb             	mov    %rdi,%rbx
  401b24:	eb 11                	jmp    401b37 <Gets+0x27>
  401b26:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401b2a:	88 03                	mov    %al,(%rbx)
  401b2c:	0f b6 f8             	movzbl %al,%edi
  401b2f:	e8 3c ff ff ff       	callq  401a70 <save_char>
  401b34:	48 89 eb             	mov    %rbp,%rbx
  401b37:	48 8b 3d d2 29 20 00 	mov    0x2029d2(%rip),%rdi        # 604510 <infile>
  401b3e:	e8 ad f2 ff ff       	callq  400df0 <_IO_getc@plt>
  401b43:	83 f8 ff             	cmp    $0xffffffff,%eax
  401b46:	74 05                	je     401b4d <Gets+0x3d>
  401b48:	83 f8 0a             	cmp    $0xa,%eax
  401b4b:	75 d9                	jne    401b26 <Gets+0x16>
  401b4d:	c6 03 00             	movb   $0x0,(%rbx)
  401b50:	b8 00 00 00 00       	mov    $0x0,%eax
  401b55:	e8 6e ff ff ff       	callq  401ac8 <save_term>
  401b5a:	4c 89 e0             	mov    %r12,%rax
  401b5d:	5b                   	pop    %rbx
  401b5e:	5d                   	pop    %rbp
  401b5f:	41 5c                	pop    %r12
  401b61:	c3                   	retq   

0000000000401b62 <notify_server>:
  401b62:	53                   	push   %rbx
  401b63:	48 81 ec 30 40 00 00 	sub    $0x4030,%rsp
  401b6a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b71:	00 00 
  401b73:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401b7a:	00 
  401b7b:	31 c0                	xor    %eax,%eax
  401b7d:	83 3d a4 29 20 00 00 	cmpl   $0x0,0x2029a4(%rip)        # 604528 <is_checker>
  401b84:	0f 85 bb 01 00 00    	jne    401d45 <notify_server+0x1e3>
  401b8a:	89 fb                	mov    %edi,%ebx
  401b8c:	8b 05 b2 35 20 00    	mov    0x2035b2(%rip),%eax        # 605144 <gets_cnt>
  401b92:	83 c0 64             	add    $0x64,%eax
  401b95:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401b9a:	7e 1e                	jle    401bba <notify_server+0x58>
  401b9c:	be c0 33 40 00       	mov    $0x4033c0,%esi
  401ba1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ba6:	b8 00 00 00 00       	mov    $0x0,%eax
  401bab:	e8 70 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401bb0:	bf 01 00 00 00       	mov    $0x1,%edi
  401bb5:	e8 b6 f2 ff ff       	callq  400e70 <exit@plt>
  401bba:	0f be 05 87 35 20 00 	movsbl 0x203587(%rip),%eax        # 605148 <target_prefix>
  401bc1:	83 3d e0 28 20 00 00 	cmpl   $0x0,0x2028e0(%rip)        # 6044a8 <notify>
  401bc8:	74 08                	je     401bd2 <notify_server+0x70>
  401bca:	8b 15 50 29 20 00    	mov    0x202950(%rip),%edx        # 604520 <authkey>
  401bd0:	eb 05                	jmp    401bd7 <notify_server+0x75>
  401bd2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401bd7:	85 db                	test   %ebx,%ebx
  401bd9:	74 08                	je     401be3 <notify_server+0x81>
  401bdb:	41 b9 a1 32 40 00    	mov    $0x4032a1,%r9d
  401be1:	eb 06                	jmp    401be9 <notify_server+0x87>
  401be3:	41 b9 a6 32 40 00    	mov    $0x4032a6,%r9d
  401be9:	48 c7 44 24 18 40 45 	movq   $0x604540,0x18(%rsp)
  401bf0:	60 00 
  401bf2:	89 74 24 10          	mov    %esi,0x10(%rsp)
  401bf6:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401bfa:	89 14 24             	mov    %edx,(%rsp)
  401bfd:	44 8b 05 64 25 20 00 	mov    0x202564(%rip),%r8d        # 604168 <target_id>
  401c04:	b9 ab 32 40 00       	mov    $0x4032ab,%ecx
  401c09:	ba 00 20 00 00       	mov    $0x2000,%edx
  401c0e:	be 01 00 00 00       	mov    $0x1,%esi
  401c13:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401c18:	b8 00 00 00 00       	mov    $0x0,%eax
  401c1d:	e8 7e f2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401c22:	83 3d 7f 28 20 00 00 	cmpl   $0x0,0x20287f(%rip)        # 6044a8 <notify>
  401c29:	0f 84 86 00 00 00    	je     401cb5 <notify_server+0x153>
  401c2f:	85 db                	test   %ebx,%ebx
  401c31:	74 70                	je     401ca3 <notify_server+0x141>
  401c33:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  401c3a:	00 
  401c3b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401c41:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401c46:	48 8b 15 23 25 20 00 	mov    0x202523(%rip),%rdx        # 604170 <lab>
  401c4d:	48 8b 35 24 25 20 00 	mov    0x202524(%rip),%rsi        # 604178 <course>
  401c54:	48 8b 3d 05 25 20 00 	mov    0x202505(%rip),%rdi        # 604160 <user_id>
  401c5b:	e8 be 10 00 00       	callq  402d1e <driver_post>
  401c60:	85 c0                	test   %eax,%eax
  401c62:	79 26                	jns    401c8a <notify_server+0x128>
  401c64:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  401c6b:	00 
  401c6c:	be c7 32 40 00       	mov    $0x4032c7,%esi
  401c71:	bf 01 00 00 00       	mov    $0x1,%edi
  401c76:	b8 00 00 00 00       	mov    $0x0,%eax
  401c7b:	e8 a0 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c80:	bf 01 00 00 00       	mov    $0x1,%edi
  401c85:	e8 e6 f1 ff ff       	callq  400e70 <exit@plt>
  401c8a:	bf f0 33 40 00       	mov    $0x4033f0,%edi
  401c8f:	e8 4c f0 ff ff       	callq  400ce0 <puts@plt>
  401c94:	bf d3 32 40 00       	mov    $0x4032d3,%edi
  401c99:	e8 42 f0 ff ff       	callq  400ce0 <puts@plt>
  401c9e:	e9 a2 00 00 00       	jmpq   401d45 <notify_server+0x1e3>
  401ca3:	bf dd 32 40 00       	mov    $0x4032dd,%edi
  401ca8:	e8 33 f0 ff ff       	callq  400ce0 <puts@plt>
  401cad:	0f 1f 00             	nopl   (%rax)
  401cb0:	e9 90 00 00 00       	jmpq   401d45 <notify_server+0x1e3>
  401cb5:	85 db                	test   %ebx,%ebx
  401cb7:	74 09                	je     401cc2 <notify_server+0x160>
  401cb9:	ba a1 32 40 00       	mov    $0x4032a1,%edx
  401cbe:	66 90                	xchg   %ax,%ax
  401cc0:	eb 05                	jmp    401cc7 <notify_server+0x165>
  401cc2:	ba a6 32 40 00       	mov    $0x4032a6,%edx
  401cc7:	be 28 34 40 00       	mov    $0x403428,%esi
  401ccc:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401cd6:	e8 45 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cdb:	48 8b 15 7e 24 20 00 	mov    0x20247e(%rip),%rdx        # 604160 <user_id>
  401ce2:	be e4 32 40 00       	mov    $0x4032e4,%esi
  401ce7:	bf 01 00 00 00       	mov    $0x1,%edi
  401cec:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf1:	e8 2a f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cf6:	48 8b 15 7b 24 20 00 	mov    0x20247b(%rip),%rdx        # 604178 <course>
  401cfd:	be f1 32 40 00       	mov    $0x4032f1,%esi
  401d02:	bf 01 00 00 00       	mov    $0x1,%edi
  401d07:	b8 00 00 00 00       	mov    $0x0,%eax
  401d0c:	e8 0f f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401d11:	48 8b 15 58 24 20 00 	mov    0x202458(%rip),%rdx        # 604170 <lab>
  401d18:	be fd 32 40 00       	mov    $0x4032fd,%esi
  401d1d:	bf 01 00 00 00       	mov    $0x1,%edi
  401d22:	b8 00 00 00 00       	mov    $0x0,%eax
  401d27:	e8 f4 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d2c:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401d31:	be 06 33 40 00       	mov    $0x403306,%esi
  401d36:	bf 01 00 00 00       	mov    $0x1,%edi
  401d3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401d40:	e8 db f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d45:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  401d4c:	00 
  401d4d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401d54:	00 00 
  401d56:	74 05                	je     401d5d <notify_server+0x1fb>
  401d58:	e8 a3 ef ff ff       	callq  400d00 <__stack_chk_fail@plt>
  401d5d:	48 81 c4 30 40 00 00 	add    $0x4030,%rsp
  401d64:	5b                   	pop    %rbx
  401d65:	c3                   	retq   

0000000000401d66 <validate>:
  401d66:	53                   	push   %rbx
  401d67:	89 fb                	mov    %edi,%ebx
  401d69:	83 3d b8 27 20 00 00 	cmpl   $0x0,0x2027b8(%rip)        # 604528 <is_checker>
  401d70:	74 6b                	je     401ddd <validate+0x77>
  401d72:	39 3d a4 27 20 00    	cmp    %edi,0x2027a4(%rip)        # 60451c <vlevel>
  401d78:	74 14                	je     401d8e <validate+0x28>
  401d7a:	bf 12 33 40 00       	mov    $0x403312,%edi
  401d7f:	e8 5c ef ff ff       	callq  400ce0 <puts@plt>
  401d84:	b8 00 00 00 00       	mov    $0x0,%eax
  401d89:	e8 4d fd ff ff       	callq  401adb <check_fail>
  401d8e:	8b 15 84 27 20 00    	mov    0x202784(%rip),%edx        # 604518 <check_level>
  401d94:	39 fa                	cmp    %edi,%edx
  401d96:	74 20                	je     401db8 <validate+0x52>
  401d98:	89 f9                	mov    %edi,%ecx
  401d9a:	be 50 34 40 00       	mov    $0x403450,%esi
  401d9f:	bf 01 00 00 00       	mov    $0x1,%edi
  401da4:	b8 00 00 00 00       	mov    $0x0,%eax
  401da9:	e8 72 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dae:	b8 00 00 00 00       	mov    $0x0,%eax
  401db3:	e8 23 fd ff ff       	callq  401adb <check_fail>
  401db8:	0f be 15 89 33 20 00 	movsbl 0x203389(%rip),%edx        # 605148 <target_prefix>
  401dbf:	41 b8 40 45 60 00    	mov    $0x604540,%r8d
  401dc5:	89 f9                	mov    %edi,%ecx
  401dc7:	be 30 33 40 00       	mov    $0x403330,%esi
  401dcc:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401dd6:	e8 45 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401ddb:	eb 49                	jmp    401e26 <validate+0xc0>
  401ddd:	39 3d 39 27 20 00    	cmp    %edi,0x202739(%rip)        # 60451c <vlevel>
  401de3:	74 18                	je     401dfd <validate+0x97>
  401de5:	bf 12 33 40 00       	mov    $0x403312,%edi
  401dea:	e8 f1 ee ff ff       	callq  400ce0 <puts@plt>
  401def:	89 de                	mov    %ebx,%esi
  401df1:	bf 00 00 00 00       	mov    $0x0,%edi
  401df6:	e8 67 fd ff ff       	callq  401b62 <notify_server>
  401dfb:	eb 29                	jmp    401e26 <validate+0xc0>
  401dfd:	0f be 0d 44 33 20 00 	movsbl 0x203344(%rip),%ecx        # 605148 <target_prefix>
  401e04:	89 fa                	mov    %edi,%edx
  401e06:	be 78 34 40 00       	mov    $0x403478,%esi
  401e0b:	bf 01 00 00 00       	mov    $0x1,%edi
  401e10:	b8 00 00 00 00       	mov    $0x0,%eax
  401e15:	e8 06 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e1a:	89 de                	mov    %ebx,%esi
  401e1c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e21:	e8 3c fd ff ff       	callq  401b62 <notify_server>
  401e26:	5b                   	pop    %rbx
  401e27:	c3                   	retq   

0000000000401e28 <fail>:
  401e28:	48 83 ec 08          	sub    $0x8,%rsp
  401e2c:	83 3d f5 26 20 00 00 	cmpl   $0x0,0x2026f5(%rip)        # 604528 <is_checker>
  401e33:	74 0a                	je     401e3f <fail+0x17>
  401e35:	b8 00 00 00 00       	mov    $0x0,%eax
  401e3a:	e8 9c fc ff ff       	callq  401adb <check_fail>
  401e3f:	89 fe                	mov    %edi,%esi
  401e41:	bf 00 00 00 00       	mov    $0x0,%edi
  401e46:	e8 17 fd ff ff       	callq  401b62 <notify_server>
  401e4b:	48 83 c4 08          	add    $0x8,%rsp
  401e4f:	c3                   	retq   

0000000000401e50 <bushandler>:
  401e50:	48 83 ec 08          	sub    $0x8,%rsp
  401e54:	83 3d cd 26 20 00 00 	cmpl   $0x0,0x2026cd(%rip)        # 604528 <is_checker>
  401e5b:	74 14                	je     401e71 <bushandler+0x21>
  401e5d:	bf 45 33 40 00       	mov    $0x403345,%edi
  401e62:	e8 79 ee ff ff       	callq  400ce0 <puts@plt>
  401e67:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6c:	e8 6a fc ff ff       	callq  401adb <check_fail>
  401e71:	bf b0 34 40 00       	mov    $0x4034b0,%edi
  401e76:	e8 65 ee ff ff       	callq  400ce0 <puts@plt>
  401e7b:	bf 4f 33 40 00       	mov    $0x40334f,%edi
  401e80:	e8 5b ee ff ff       	callq  400ce0 <puts@plt>
  401e85:	be 00 00 00 00       	mov    $0x0,%esi
  401e8a:	bf 00 00 00 00       	mov    $0x0,%edi
  401e8f:	e8 ce fc ff ff       	callq  401b62 <notify_server>
  401e94:	bf 01 00 00 00       	mov    $0x1,%edi
  401e99:	e8 d2 ef ff ff       	callq  400e70 <exit@plt>

0000000000401e9e <seghandler>:
  401e9e:	48 83 ec 08          	sub    $0x8,%rsp
  401ea2:	83 3d 7f 26 20 00 00 	cmpl   $0x0,0x20267f(%rip)        # 604528 <is_checker>
  401ea9:	74 14                	je     401ebf <seghandler+0x21>
  401eab:	bf 65 33 40 00       	mov    $0x403365,%edi
  401eb0:	e8 2b ee ff ff       	callq  400ce0 <puts@plt>
  401eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eba:	e8 1c fc ff ff       	callq  401adb <check_fail>
  401ebf:	bf d0 34 40 00       	mov    $0x4034d0,%edi
  401ec4:	e8 17 ee ff ff       	callq  400ce0 <puts@plt>
  401ec9:	bf 4f 33 40 00       	mov    $0x40334f,%edi
  401ece:	e8 0d ee ff ff       	callq  400ce0 <puts@plt>
  401ed3:	be 00 00 00 00       	mov    $0x0,%esi
  401ed8:	bf 00 00 00 00       	mov    $0x0,%edi
  401edd:	e8 80 fc ff ff       	callq  401b62 <notify_server>
  401ee2:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee7:	e8 84 ef ff ff       	callq  400e70 <exit@plt>

0000000000401eec <illegalhandler>:
  401eec:	48 83 ec 08          	sub    $0x8,%rsp
  401ef0:	83 3d 31 26 20 00 00 	cmpl   $0x0,0x202631(%rip)        # 604528 <is_checker>
  401ef7:	74 14                	je     401f0d <illegalhandler+0x21>
  401ef9:	bf 78 33 40 00       	mov    $0x403378,%edi
  401efe:	e8 dd ed ff ff       	callq  400ce0 <puts@plt>
  401f03:	b8 00 00 00 00       	mov    $0x0,%eax
  401f08:	e8 ce fb ff ff       	callq  401adb <check_fail>
  401f0d:	bf f8 34 40 00       	mov    $0x4034f8,%edi
  401f12:	e8 c9 ed ff ff       	callq  400ce0 <puts@plt>
  401f17:	bf 4f 33 40 00       	mov    $0x40334f,%edi
  401f1c:	e8 bf ed ff ff       	callq  400ce0 <puts@plt>
  401f21:	be 00 00 00 00       	mov    $0x0,%esi
  401f26:	bf 00 00 00 00       	mov    $0x0,%edi
  401f2b:	e8 32 fc ff ff       	callq  401b62 <notify_server>
  401f30:	bf 01 00 00 00       	mov    $0x1,%edi
  401f35:	e8 36 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f3a <sigalrmhandler>:
  401f3a:	48 83 ec 08          	sub    $0x8,%rsp
  401f3e:	83 3d e3 25 20 00 00 	cmpl   $0x0,0x2025e3(%rip)        # 604528 <is_checker>
  401f45:	74 14                	je     401f5b <sigalrmhandler+0x21>
  401f47:	bf 8c 33 40 00       	mov    $0x40338c,%edi
  401f4c:	e8 8f ed ff ff       	callq  400ce0 <puts@plt>
  401f51:	b8 00 00 00 00       	mov    $0x0,%eax
  401f56:	e8 80 fb ff ff       	callq  401adb <check_fail>
  401f5b:	ba 05 00 00 00       	mov    $0x5,%edx
  401f60:	be 28 35 40 00       	mov    $0x403528,%esi
  401f65:	bf 01 00 00 00       	mov    $0x1,%edi
  401f6a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f6f:	e8 ac ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f74:	be 00 00 00 00       	mov    $0x0,%esi
  401f79:	bf 00 00 00 00       	mov    $0x0,%edi
  401f7e:	e8 df fb ff ff       	callq  401b62 <notify_server>
  401f83:	bf 01 00 00 00       	mov    $0x1,%edi
  401f88:	e8 e3 ee ff ff       	callq  400e70 <exit@plt>

0000000000401f8d <launch>:
  401f8d:	55                   	push   %rbp
  401f8e:	48 89 e5             	mov    %rsp,%rbp
  401f91:	48 83 ec 10          	sub    $0x10,%rsp
  401f95:	48 89 fa             	mov    %rdi,%rdx
  401f98:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f9f:	00 00 
  401fa1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401fa5:	31 c0                	xor    %eax,%eax
  401fa7:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401fab:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401faf:	48 29 c4             	sub    %rax,%rsp
  401fb2:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401fb7:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401fbb:	be f4 00 00 00       	mov    $0xf4,%esi
  401fc0:	e8 5b ed ff ff       	callq  400d20 <memset@plt>
  401fc5:	48 8b 05 f4 24 20 00 	mov    0x2024f4(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401fcc:	48 39 05 3d 25 20 00 	cmp    %rax,0x20253d(%rip)        # 604510 <infile>
  401fd3:	75 14                	jne    401fe9 <launch+0x5c>
  401fd5:	be 94 33 40 00       	mov    $0x403394,%esi
  401fda:	bf 01 00 00 00       	mov    $0x1,%edi
  401fdf:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe4:	e8 37 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401fe9:	c7 05 29 25 20 00 00 	movl   $0x0,0x202529(%rip)        # 60451c <vlevel>
  401ff0:	00 00 00 
  401ff3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff8:	e8 3b fa ff ff       	callq  401a38 <test>
  401ffd:	83 3d 24 25 20 00 00 	cmpl   $0x0,0x202524(%rip)        # 604528 <is_checker>
  402004:	74 14                	je     40201a <launch+0x8d>
  402006:	bf a1 33 40 00       	mov    $0x4033a1,%edi
  40200b:	e8 d0 ec ff ff       	callq  400ce0 <puts@plt>
  402010:	b8 00 00 00 00       	mov    $0x0,%eax
  402015:	e8 c1 fa ff ff       	callq  401adb <check_fail>
  40201a:	bf ac 33 40 00       	mov    $0x4033ac,%edi
  40201f:	e8 bc ec ff ff       	callq  400ce0 <puts@plt>
  402024:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402028:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40202f:	00 00 
  402031:	74 05                	je     402038 <launch+0xab>
  402033:	e8 c8 ec ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402038:	c9                   	leaveq 
  402039:	c3                   	retq   

000000000040203a <stable_launch>:
  40203a:	53                   	push   %rbx
  40203b:	48 89 3d c6 24 20 00 	mov    %rdi,0x2024c6(%rip)        # 604508 <global_offset>
  402042:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402048:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40204e:	b9 32 01 00 00       	mov    $0x132,%ecx
  402053:	ba 07 00 00 00       	mov    $0x7,%edx
  402058:	be 00 00 10 00       	mov    $0x100000,%esi
  40205d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402062:	e8 a9 ec ff ff       	callq  400d10 <mmap@plt>
  402067:	48 89 c3             	mov    %rax,%rbx
  40206a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402070:	74 37                	je     4020a9 <stable_launch+0x6f>
  402072:	be 00 00 10 00       	mov    $0x100000,%esi
  402077:	48 89 c7             	mov    %rax,%rdi
  40207a:	e8 91 ed ff ff       	callq  400e10 <munmap@plt>
  40207f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402084:	ba 60 35 40 00       	mov    $0x403560,%edx
  402089:	be 01 00 00 00       	mov    $0x1,%esi
  40208e:	48 8b 3d 53 24 20 00 	mov    0x202453(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  402095:	b8 00 00 00 00       	mov    $0x0,%eax
  40209a:	e8 f1 ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  40209f:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a4:	e8 c7 ed ff ff       	callq  400e70 <exit@plt>
  4020a9:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4020b0:	48 89 15 99 30 20 00 	mov    %rdx,0x203099(%rip)        # 605150 <stack_top>
  4020b7:	48 89 e0             	mov    %rsp,%rax
  4020ba:	48 89 d4             	mov    %rdx,%rsp
  4020bd:	48 89 c2             	mov    %rax,%rdx
  4020c0:	48 89 15 39 24 20 00 	mov    %rdx,0x202439(%rip)        # 604500 <global_save_stack>
  4020c7:	48 8b 3d 3a 24 20 00 	mov    0x20243a(%rip),%rdi        # 604508 <global_offset>
  4020ce:	e8 ba fe ff ff       	callq  401f8d <launch>
  4020d3:	48 8b 05 26 24 20 00 	mov    0x202426(%rip),%rax        # 604500 <global_save_stack>
  4020da:	48 89 c4             	mov    %rax,%rsp
  4020dd:	be 00 00 10 00       	mov    $0x100000,%esi
  4020e2:	48 89 df             	mov    %rbx,%rdi
  4020e5:	e8 26 ed ff ff       	callq  400e10 <munmap@plt>
  4020ea:	5b                   	pop    %rbx
  4020eb:	c3                   	retq   
  4020ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004020f0 <rio_readinitb>:
  4020f0:	89 37                	mov    %esi,(%rdi)
  4020f2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4020f9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4020fd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402101:	c3                   	retq   

0000000000402102 <sigalrm_handler>:
  402102:	48 83 ec 08          	sub    $0x8,%rsp
  402106:	b9 00 00 00 00       	mov    $0x0,%ecx
  40210b:	ba a0 35 40 00       	mov    $0x4035a0,%edx
  402110:	be 01 00 00 00       	mov    $0x1,%esi
  402115:	48 8b 3d cc 23 20 00 	mov    0x2023cc(%rip),%rdi        # 6044e8 <stderr@@GLIBC_2.2.5>
  40211c:	b8 00 00 00 00       	mov    $0x0,%eax
  402121:	e8 6a ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  402126:	bf 01 00 00 00       	mov    $0x1,%edi
  40212b:	e8 40 ed ff ff       	callq  400e70 <exit@plt>

0000000000402130 <rio_writen>:
  402130:	41 55                	push   %r13
  402132:	41 54                	push   %r12
  402134:	55                   	push   %rbp
  402135:	53                   	push   %rbx
  402136:	48 83 ec 08          	sub    $0x8,%rsp
  40213a:	41 89 fc             	mov    %edi,%r12d
  40213d:	48 89 f5             	mov    %rsi,%rbp
  402140:	49 89 d5             	mov    %rdx,%r13
  402143:	48 89 d3             	mov    %rdx,%rbx
  402146:	eb 28                	jmp    402170 <rio_writen+0x40>
  402148:	48 89 da             	mov    %rbx,%rdx
  40214b:	48 89 ee             	mov    %rbp,%rsi
  40214e:	44 89 e7             	mov    %r12d,%edi
  402151:	e8 9a eb ff ff       	callq  400cf0 <write@plt>
  402156:	48 85 c0             	test   %rax,%rax
  402159:	7f 0f                	jg     40216a <rio_writen+0x3a>
  40215b:	e8 40 eb ff ff       	callq  400ca0 <__errno_location@plt>
  402160:	83 38 04             	cmpl   $0x4,(%rax)
  402163:	75 15                	jne    40217a <rio_writen+0x4a>
  402165:	b8 00 00 00 00       	mov    $0x0,%eax
  40216a:	48 29 c3             	sub    %rax,%rbx
  40216d:	48 01 c5             	add    %rax,%rbp
  402170:	48 85 db             	test   %rbx,%rbx
  402173:	75 d3                	jne    402148 <rio_writen+0x18>
  402175:	4c 89 e8             	mov    %r13,%rax
  402178:	eb 07                	jmp    402181 <rio_writen+0x51>
  40217a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402181:	48 83 c4 08          	add    $0x8,%rsp
  402185:	5b                   	pop    %rbx
  402186:	5d                   	pop    %rbp
  402187:	41 5c                	pop    %r12
  402189:	41 5d                	pop    %r13
  40218b:	c3                   	retq   

000000000040218c <rio_read>:
  40218c:	41 56                	push   %r14
  40218e:	41 55                	push   %r13
  402190:	41 54                	push   %r12
  402192:	55                   	push   %rbp
  402193:	53                   	push   %rbx
  402194:	48 89 fb             	mov    %rdi,%rbx
  402197:	49 89 f6             	mov    %rsi,%r14
  40219a:	49 89 d5             	mov    %rdx,%r13
  40219d:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  4021a1:	eb 2a                	jmp    4021cd <rio_read+0x41>
  4021a3:	8b 3b                	mov    (%rbx),%edi
  4021a5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021aa:	4c 89 e6             	mov    %r12,%rsi
  4021ad:	e8 9e eb ff ff       	callq  400d50 <read@plt>
  4021b2:	89 43 04             	mov    %eax,0x4(%rbx)
  4021b5:	85 c0                	test   %eax,%eax
  4021b7:	79 0c                	jns    4021c5 <rio_read+0x39>
  4021b9:	e8 e2 ea ff ff       	callq  400ca0 <__errno_location@plt>
  4021be:	83 38 04             	cmpl   $0x4,(%rax)
  4021c1:	74 0a                	je     4021cd <rio_read+0x41>
  4021c3:	eb 37                	jmp    4021fc <rio_read+0x70>
  4021c5:	85 c0                	test   %eax,%eax
  4021c7:	74 3c                	je     402205 <rio_read+0x79>
  4021c9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4021cd:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4021d0:	85 ed                	test   %ebp,%ebp
  4021d2:	7e cf                	jle    4021a3 <rio_read+0x17>
  4021d4:	89 e8                	mov    %ebp,%eax
  4021d6:	4c 39 e8             	cmp    %r13,%rax
  4021d9:	72 03                	jb     4021de <rio_read+0x52>
  4021db:	44 89 ed             	mov    %r13d,%ebp
  4021de:	4c 63 e5             	movslq %ebp,%r12
  4021e1:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4021e5:	4c 89 e2             	mov    %r12,%rdx
  4021e8:	4c 89 f7             	mov    %r14,%rdi
  4021eb:	e8 d0 eb ff ff       	callq  400dc0 <memcpy@plt>
  4021f0:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021f4:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021f7:	4c 89 e0             	mov    %r12,%rax
  4021fa:	eb 0e                	jmp    40220a <rio_read+0x7e>
  4021fc:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402203:	eb 05                	jmp    40220a <rio_read+0x7e>
  402205:	b8 00 00 00 00       	mov    $0x0,%eax
  40220a:	5b                   	pop    %rbx
  40220b:	5d                   	pop    %rbp
  40220c:	41 5c                	pop    %r12
  40220e:	41 5d                	pop    %r13
  402210:	41 5e                	pop    %r14
  402212:	c3                   	retq   

0000000000402213 <rio_readlineb>:
  402213:	41 55                	push   %r13
  402215:	41 54                	push   %r12
  402217:	55                   	push   %rbp
  402218:	53                   	push   %rbx
  402219:	48 83 ec 18          	sub    $0x18,%rsp
  40221d:	49 89 fd             	mov    %rdi,%r13
  402220:	48 89 f5             	mov    %rsi,%rbp
  402223:	49 89 d4             	mov    %rdx,%r12
  402226:	bb 01 00 00 00       	mov    $0x1,%ebx
  40222b:	eb 3e                	jmp    40226b <rio_readlineb+0x58>
  40222d:	ba 01 00 00 00       	mov    $0x1,%edx
  402232:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402237:	4c 89 ef             	mov    %r13,%rdi
  40223a:	e8 4d ff ff ff       	callq  40218c <rio_read>
  40223f:	83 f8 01             	cmp    $0x1,%eax
  402242:	75 12                	jne    402256 <rio_readlineb+0x43>
  402244:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402248:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40224d:	88 45 00             	mov    %al,0x0(%rbp)
  402250:	3c 0a                	cmp    $0xa,%al
  402252:	75 10                	jne    402264 <rio_readlineb+0x51>
  402254:	eb 1c                	jmp    402272 <rio_readlineb+0x5f>
  402256:	85 c0                	test   %eax,%eax
  402258:	75 24                	jne    40227e <rio_readlineb+0x6b>
  40225a:	48 83 fb 01          	cmp    $0x1,%rbx
  40225e:	66 90                	xchg   %ax,%ax
  402260:	75 13                	jne    402275 <rio_readlineb+0x62>
  402262:	eb 23                	jmp    402287 <rio_readlineb+0x74>
  402264:	48 83 c3 01          	add    $0x1,%rbx
  402268:	48 89 d5             	mov    %rdx,%rbp
  40226b:	4c 39 e3             	cmp    %r12,%rbx
  40226e:	72 bd                	jb     40222d <rio_readlineb+0x1a>
  402270:	eb 03                	jmp    402275 <rio_readlineb+0x62>
  402272:	48 89 d5             	mov    %rdx,%rbp
  402275:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402279:	48 89 d8             	mov    %rbx,%rax
  40227c:	eb 0e                	jmp    40228c <rio_readlineb+0x79>
  40227e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402285:	eb 05                	jmp    40228c <rio_readlineb+0x79>
  402287:	b8 00 00 00 00       	mov    $0x0,%eax
  40228c:	48 83 c4 18          	add    $0x18,%rsp
  402290:	5b                   	pop    %rbx
  402291:	5d                   	pop    %rbp
  402292:	41 5c                	pop    %r12
  402294:	41 5d                	pop    %r13
  402296:	c3                   	retq   

0000000000402297 <urlencode>:
  402297:	41 54                	push   %r12
  402299:	55                   	push   %rbp
  40229a:	53                   	push   %rbx
  40229b:	48 83 ec 10          	sub    $0x10,%rsp
  40229f:	48 89 fb             	mov    %rdi,%rbx
  4022a2:	48 89 f5             	mov    %rsi,%rbp
  4022a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022ac:	00 00 
  4022ae:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022b3:	31 c0                	xor    %eax,%eax
  4022b5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4022bc:	f2 ae                	repnz scas %es:(%rdi),%al
  4022be:	48 f7 d1             	not    %rcx
  4022c1:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4022c4:	e9 aa 00 00 00       	jmpq   402373 <urlencode+0xdc>
  4022c9:	44 0f b6 03          	movzbl (%rbx),%r8d
  4022cd:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4022d1:	0f 94 c2             	sete   %dl
  4022d4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4022d8:	0f 94 c0             	sete   %al
  4022db:	08 c2                	or     %al,%dl
  4022dd:	75 24                	jne    402303 <urlencode+0x6c>
  4022df:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4022e3:	74 1e                	je     402303 <urlencode+0x6c>
  4022e5:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4022e9:	74 18                	je     402303 <urlencode+0x6c>
  4022eb:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4022ef:	3c 09                	cmp    $0x9,%al
  4022f1:	76 10                	jbe    402303 <urlencode+0x6c>
  4022f3:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4022f7:	3c 19                	cmp    $0x19,%al
  4022f9:	76 08                	jbe    402303 <urlencode+0x6c>
  4022fb:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4022ff:	3c 19                	cmp    $0x19,%al
  402301:	77 0a                	ja     40230d <urlencode+0x76>
  402303:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402307:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40230b:	eb 5f                	jmp    40236c <urlencode+0xd5>
  40230d:	41 80 f8 20          	cmp    $0x20,%r8b
  402311:	75 0a                	jne    40231d <urlencode+0x86>
  402313:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402317:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40231b:	eb 4f                	jmp    40236c <urlencode+0xd5>
  40231d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402321:	3c 5f                	cmp    $0x5f,%al
  402323:	0f 96 c2             	setbe  %dl
  402326:	41 80 f8 09          	cmp    $0x9,%r8b
  40232a:	0f 94 c0             	sete   %al
  40232d:	08 c2                	or     %al,%dl
  40232f:	74 50                	je     402381 <urlencode+0xea>
  402331:	45 0f b6 c0          	movzbl %r8b,%r8d
  402335:	b9 38 36 40 00       	mov    $0x403638,%ecx
  40233a:	ba 08 00 00 00       	mov    $0x8,%edx
  40233f:	be 01 00 00 00       	mov    $0x1,%esi
  402344:	48 89 e7             	mov    %rsp,%rdi
  402347:	b8 00 00 00 00       	mov    $0x0,%eax
  40234c:	e8 4f eb ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402351:	0f b6 04 24          	movzbl (%rsp),%eax
  402355:	88 45 00             	mov    %al,0x0(%rbp)
  402358:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40235d:	88 45 01             	mov    %al,0x1(%rbp)
  402360:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402365:	88 45 02             	mov    %al,0x2(%rbp)
  402368:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40236c:	48 83 c3 01          	add    $0x1,%rbx
  402370:	44 89 e0             	mov    %r12d,%eax
  402373:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402377:	85 c0                	test   %eax,%eax
  402379:	0f 85 4a ff ff ff    	jne    4022c9 <urlencode+0x32>
  40237f:	eb 05                	jmp    402386 <urlencode+0xef>
  402381:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402386:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40238b:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402392:	00 00 
  402394:	74 05                	je     40239b <urlencode+0x104>
  402396:	e8 65 e9 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  40239b:	48 83 c4 10          	add    $0x10,%rsp
  40239f:	5b                   	pop    %rbx
  4023a0:	5d                   	pop    %rbp
  4023a1:	41 5c                	pop    %r12
  4023a3:	c3                   	retq   

00000000004023a4 <submitr>:
  4023a4:	41 57                	push   %r15
  4023a6:	41 56                	push   %r14
  4023a8:	41 55                	push   %r13
  4023aa:	41 54                	push   %r12
  4023ac:	55                   	push   %rbp
  4023ad:	53                   	push   %rbx
  4023ae:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4023b5:	49 89 fc             	mov    %rdi,%r12
  4023b8:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4023bc:	49 89 d7             	mov    %rdx,%r15
  4023bf:	49 89 ce             	mov    %rcx,%r14
  4023c2:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4023c7:	4d 89 cd             	mov    %r9,%r13
  4023ca:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  4023d1:	00 
  4023d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023d9:	00 00 
  4023db:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  4023e2:	00 
  4023e3:	31 c0                	xor    %eax,%eax
  4023e5:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  4023ec:	00 
  4023ed:	ba 00 00 00 00       	mov    $0x0,%edx
  4023f2:	be 01 00 00 00       	mov    $0x1,%esi
  4023f7:	bf 02 00 00 00       	mov    $0x2,%edi
  4023fc:	e8 af ea ff ff       	callq  400eb0 <socket@plt>
  402401:	89 c5                	mov    %eax,%ebp
  402403:	85 c0                	test   %eax,%eax
  402405:	79 4e                	jns    402455 <submitr+0xb1>
  402407:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40240e:	3a 20 43 
  402411:	48 89 03             	mov    %rax,(%rbx)
  402414:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40241b:	20 75 6e 
  40241e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402422:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402429:	74 6f 20 
  40242c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402430:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402437:	65 20 73 
  40243a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40243e:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402445:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40244b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402450:	e9 84 06 00 00       	jmpq   402ad9 <submitr+0x735>
  402455:	4c 89 e7             	mov    %r12,%rdi
  402458:	e8 23 e9 ff ff       	callq  400d80 <gethostbyname@plt>
  40245d:	48 85 c0             	test   %rax,%rax
  402460:	75 67                	jne    4024c9 <submitr+0x125>
  402462:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402469:	3a 20 44 
  40246c:	48 89 03             	mov    %rax,(%rbx)
  40246f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402476:	20 75 6e 
  402479:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40247d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402484:	74 6f 20 
  402487:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40248b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402492:	76 65 20 
  402495:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402499:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024a0:	72 20 61 
  4024a3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024a7:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4024ae:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4024b4:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4024b8:	89 ef                	mov    %ebp,%edi
  4024ba:	e8 81 e8 ff ff       	callq  400d40 <close@plt>
  4024bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024c4:	e9 10 06 00 00       	jmpq   402ad9 <submitr+0x735>
  4024c9:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4024d0:	00 00 
  4024d2:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4024d9:	00 00 
  4024db:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  4024e2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4024e6:	48 8b 40 18          	mov    0x18(%rax),%rax
  4024ea:	48 8b 30             	mov    (%rax),%rsi
  4024ed:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  4024f2:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4024f7:	e8 94 e8 ff ff       	callq  400d90 <__memmove_chk@plt>
  4024fc:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402501:	66 c1 c8 08          	ror    $0x8,%ax
  402505:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40250a:	ba 10 00 00 00       	mov    $0x10,%edx
  40250f:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402514:	89 ef                	mov    %ebp,%edi
  402516:	e8 65 e9 ff ff       	callq  400e80 <connect@plt>
  40251b:	85 c0                	test   %eax,%eax
  40251d:	79 59                	jns    402578 <submitr+0x1d4>
  40251f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402526:	3a 20 55 
  402529:	48 89 03             	mov    %rax,(%rbx)
  40252c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402533:	20 74 6f 
  402536:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40253a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402541:	65 63 74 
  402544:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402548:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40254f:	68 65 20 
  402552:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402556:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40255d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402563:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402567:	89 ef                	mov    %ebp,%edi
  402569:	e8 d2 e7 ff ff       	callq  400d40 <close@plt>
  40256e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402573:	e9 61 05 00 00       	jmpq   402ad9 <submitr+0x735>
  402578:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40257f:	4c 89 ef             	mov    %r13,%rdi
  402582:	b8 00 00 00 00       	mov    $0x0,%eax
  402587:	48 89 d1             	mov    %rdx,%rcx
  40258a:	f2 ae                	repnz scas %es:(%rdi),%al
  40258c:	48 f7 d1             	not    %rcx
  40258f:	48 89 ce             	mov    %rcx,%rsi
  402592:	4c 89 ff             	mov    %r15,%rdi
  402595:	48 89 d1             	mov    %rdx,%rcx
  402598:	f2 ae                	repnz scas %es:(%rdi),%al
  40259a:	48 f7 d1             	not    %rcx
  40259d:	49 89 c8             	mov    %rcx,%r8
  4025a0:	4c 89 f7             	mov    %r14,%rdi
  4025a3:	48 89 d1             	mov    %rdx,%rcx
  4025a6:	f2 ae                	repnz scas %es:(%rdi),%al
  4025a8:	49 29 c8             	sub    %rcx,%r8
  4025ab:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4025b0:	48 89 d1             	mov    %rdx,%rcx
  4025b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4025b5:	49 29 c8             	sub    %rcx,%r8
  4025b8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4025bd:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4025c2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4025c8:	76 72                	jbe    40263c <submitr+0x298>
  4025ca:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025d1:	3a 20 52 
  4025d4:	48 89 03             	mov    %rax,(%rbx)
  4025d7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4025de:	20 73 74 
  4025e1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025e5:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4025ec:	74 6f 6f 
  4025ef:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025f3:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4025fa:	65 2e 20 
  4025fd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402601:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402608:	61 73 65 
  40260b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40260f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402616:	49 54 52 
  402619:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40261d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402624:	55 46 00 
  402627:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40262b:	89 ef                	mov    %ebp,%edi
  40262d:	e8 0e e7 ff ff       	callq  400d40 <close@plt>
  402632:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402637:	e9 9d 04 00 00       	jmpq   402ad9 <submitr+0x735>
  40263c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402643:	00 
  402644:	b9 00 04 00 00       	mov    $0x400,%ecx
  402649:	b8 00 00 00 00       	mov    $0x0,%eax
  40264e:	48 89 f7             	mov    %rsi,%rdi
  402651:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402654:	4c 89 ef             	mov    %r13,%rdi
  402657:	e8 3b fc ff ff       	callq  402297 <urlencode>
  40265c:	85 c0                	test   %eax,%eax
  40265e:	0f 89 8a 00 00 00    	jns    4026ee <submitr+0x34a>
  402664:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40266b:	3a 20 52 
  40266e:	48 89 03             	mov    %rax,(%rbx)
  402671:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402678:	20 73 74 
  40267b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40267f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402686:	63 6f 6e 
  402689:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40268d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402694:	20 61 6e 
  402697:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40269b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4026a2:	67 61 6c 
  4026a5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026a9:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4026b0:	6e 70 72 
  4026b3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026b7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4026be:	6c 65 20 
  4026c1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026c5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4026cc:	63 74 65 
  4026cf:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4026d3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4026d9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4026dd:	89 ef                	mov    %ebp,%edi
  4026df:	e8 5c e6 ff ff       	callq  400d40 <close@plt>
  4026e4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026e9:	e9 eb 03 00 00       	jmpq   402ad9 <submitr+0x735>
  4026ee:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  4026f3:	48 8d 84 24 40 20 00 	lea    0x2040(%rsp),%rax
  4026fa:	00 
  4026fb:	48 89 04 24          	mov    %rax,(%rsp)
  4026ff:	4d 89 f9             	mov    %r15,%r9
  402702:	4d 89 f0             	mov    %r14,%r8
  402705:	b9 c8 35 40 00       	mov    $0x4035c8,%ecx
  40270a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40270f:	be 01 00 00 00       	mov    $0x1,%esi
  402714:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402719:	b8 00 00 00 00       	mov    $0x0,%eax
  40271e:	e8 7d e7 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402723:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402728:	b8 00 00 00 00       	mov    $0x0,%eax
  40272d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402734:	f2 ae                	repnz scas %es:(%rdi),%al
  402736:	48 f7 d1             	not    %rcx
  402739:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40273d:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402742:	89 ef                	mov    %ebp,%edi
  402744:	e8 e7 f9 ff ff       	callq  402130 <rio_writen>
  402749:	48 85 c0             	test   %rax,%rax
  40274c:	79 6e                	jns    4027bc <submitr+0x418>
  40274e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402755:	3a 20 43 
  402758:	48 89 03             	mov    %rax,(%rbx)
  40275b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402762:	20 75 6e 
  402765:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402769:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402770:	74 6f 20 
  402773:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402777:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40277e:	20 74 6f 
  402781:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402785:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  40278c:	72 65 73 
  40278f:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402793:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  40279a:	65 72 76 
  40279d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027a1:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4027a7:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4027ab:	89 ef                	mov    %ebp,%edi
  4027ad:	e8 8e e5 ff ff       	callq  400d40 <close@plt>
  4027b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027b7:	e9 1d 03 00 00       	jmpq   402ad9 <submitr+0x735>
  4027bc:	89 ee                	mov    %ebp,%esi
  4027be:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4027c5:	00 
  4027c6:	e8 25 f9 ff ff       	callq  4020f0 <rio_readinitb>
  4027cb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027d0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4027d5:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4027dc:	00 
  4027dd:	e8 31 fa ff ff       	callq  402213 <rio_readlineb>
  4027e2:	48 85 c0             	test   %rax,%rax
  4027e5:	7f 7d                	jg     402864 <submitr+0x4c0>
  4027e7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027ee:	3a 20 43 
  4027f1:	48 89 03             	mov    %rax,(%rbx)
  4027f4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4027fb:	20 75 6e 
  4027fe:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402802:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402809:	74 6f 20 
  40280c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402810:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402817:	66 69 72 
  40281a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40281e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402825:	61 64 65 
  402828:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40282c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402833:	6d 20 72 
  402836:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40283a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402841:	20 73 65 
  402844:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402848:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40284f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402853:	89 ef                	mov    %ebp,%edi
  402855:	e8 e6 e4 ff ff       	callq  400d40 <close@plt>
  40285a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40285f:	e9 75 02 00 00       	jmpq   402ad9 <submitr+0x735>
  402864:	4c 8d 84 24 40 60 00 	lea    0x6040(%rsp),%r8
  40286b:	00 
  40286c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402871:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
  402878:	00 
  402879:	be 3f 36 40 00       	mov    $0x40363f,%esi
  40287e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402883:	b8 00 00 00 00       	mov    $0x0,%eax
  402888:	e8 73 e5 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  40288d:	41 bc 0d 00 00 00    	mov    $0xd,%r12d
  402893:	41 bd 0a 00 00 00    	mov    $0xa,%r13d
  402899:	e9 95 00 00 00       	jmpq   402933 <submitr+0x58f>
  40289e:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028a3:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4028a8:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4028af:	00 
  4028b0:	e8 5e f9 ff ff       	callq  402213 <rio_readlineb>
  4028b5:	48 85 c0             	test   %rax,%rax
  4028b8:	7f 79                	jg     402933 <submitr+0x58f>
  4028ba:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028c1:	3a 20 43 
  4028c4:	48 89 03             	mov    %rax,(%rbx)
  4028c7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028ce:	20 75 6e 
  4028d1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028d5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028dc:	74 6f 20 
  4028df:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028e3:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4028ea:	68 65 61 
  4028ed:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028f1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4028f8:	66 72 6f 
  4028fb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028ff:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402906:	20 72 65 
  402909:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40290d:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402914:	73 65 72 
  402917:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40291b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402922:	89 ef                	mov    %ebp,%edi
  402924:	e8 17 e4 ff ff       	callq  400d40 <close@plt>
  402929:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40292e:	e9 a6 01 00 00       	jmpq   402ad9 <submitr+0x735>
  402933:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
  402938:	44 89 e6             	mov    %r12d,%esi
  40293b:	29 c6                	sub    %eax,%esi
  40293d:	89 f0                	mov    %esi,%eax
  40293f:	75 15                	jne    402956 <submitr+0x5b2>
  402941:	0f b6 44 24 41       	movzbl 0x41(%rsp),%eax
  402946:	44 89 ea             	mov    %r13d,%edx
  402949:	29 c2                	sub    %eax,%edx
  40294b:	89 d0                	mov    %edx,%eax
  40294d:	75 07                	jne    402956 <submitr+0x5b2>
  40294f:	0f b6 44 24 42       	movzbl 0x42(%rsp),%eax
  402954:	f7 d8                	neg    %eax
  402956:	85 c0                	test   %eax,%eax
  402958:	0f 85 40 ff ff ff    	jne    40289e <submitr+0x4fa>
  40295e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402963:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402968:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  40296f:	00 
  402970:	e8 9e f8 ff ff       	callq  402213 <rio_readlineb>
  402975:	48 85 c0             	test   %rax,%rax
  402978:	0f 8f 83 00 00 00    	jg     402a01 <submitr+0x65d>
  40297e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402985:	3a 20 43 
  402988:	48 89 03             	mov    %rax,(%rbx)
  40298b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402992:	20 75 6e 
  402995:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402999:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029a0:	74 6f 20 
  4029a3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029a7:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4029ae:	73 74 61 
  4029b1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029b5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4029bc:	65 73 73 
  4029bf:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029c3:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4029ca:	72 6f 6d 
  4029cd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029d1:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4029d8:	6c 74 20 
  4029db:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4029df:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4029e6:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  4029ec:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  4029f0:	89 ef                	mov    %ebp,%edi
  4029f2:	e8 49 e3 ff ff       	callq  400d40 <close@plt>
  4029f7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029fc:	e9 d8 00 00 00       	jmpq   402ad9 <submitr+0x735>
  402a01:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402a06:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402a0d:	74 37                	je     402a46 <submitr+0x6a2>
  402a0f:	4c 8d 8c 24 40 60 00 	lea    0x6040(%rsp),%r9
  402a16:	00 
  402a17:	b9 08 36 40 00       	mov    $0x403608,%ecx
  402a1c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402a23:	be 01 00 00 00       	mov    $0x1,%esi
  402a28:	48 89 df             	mov    %rbx,%rdi
  402a2b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a30:	e8 6b e4 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402a35:	89 ef                	mov    %ebp,%edi
  402a37:	e8 04 e3 ff ff       	callq  400d40 <close@plt>
  402a3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a41:	e9 93 00 00 00       	jmpq   402ad9 <submitr+0x735>
  402a46:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402a4b:	48 89 df             	mov    %rbx,%rdi
  402a4e:	e8 7d e2 ff ff       	callq  400cd0 <strcpy@plt>
  402a53:	89 ef                	mov    %ebp,%edi
  402a55:	e8 e6 e2 ff ff       	callq  400d40 <close@plt>
  402a5a:	0f b6 03             	movzbl (%rbx),%eax
  402a5d:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402a62:	29 c2                	sub    %eax,%edx
  402a64:	75 22                	jne    402a88 <submitr+0x6e4>
  402a66:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402a6a:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402a6f:	29 c8                	sub    %ecx,%eax
  402a71:	75 17                	jne    402a8a <submitr+0x6e6>
  402a73:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402a77:	b8 0a 00 00 00       	mov    $0xa,%eax
  402a7c:	29 c8                	sub    %ecx,%eax
  402a7e:	75 0a                	jne    402a8a <submitr+0x6e6>
  402a80:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402a84:	f7 d8                	neg    %eax
  402a86:	eb 02                	jmp    402a8a <submitr+0x6e6>
  402a88:	89 d0                	mov    %edx,%eax
  402a8a:	85 c0                	test   %eax,%eax
  402a8c:	74 38                	je     402ac6 <submitr+0x722>
  402a8e:	bf 50 36 40 00       	mov    $0x403650,%edi
  402a93:	b9 05 00 00 00       	mov    $0x5,%ecx
  402a98:	48 89 de             	mov    %rbx,%rsi
  402a9b:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402a9d:	0f 97 c1             	seta   %cl
  402aa0:	0f 92 c0             	setb   %al
  402aa3:	38 c1                	cmp    %al,%cl
  402aa5:	74 26                	je     402acd <submitr+0x729>
  402aa7:	85 d2                	test   %edx,%edx
  402aa9:	75 10                	jne    402abb <submitr+0x717>
  402aab:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402aaf:	b2 4b                	mov    $0x4b,%dl
  402ab1:	29 c2                	sub    %eax,%edx
  402ab3:	75 06                	jne    402abb <submitr+0x717>
  402ab5:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402ab9:	f7 da                	neg    %edx
  402abb:	85 d2                	test   %edx,%edx
  402abd:	75 15                	jne    402ad4 <submitr+0x730>
  402abf:	b8 00 00 00 00       	mov    $0x0,%eax
  402ac4:	eb 13                	jmp    402ad9 <submitr+0x735>
  402ac6:	b8 00 00 00 00       	mov    $0x0,%eax
  402acb:	eb 0c                	jmp    402ad9 <submitr+0x735>
  402acd:	b8 00 00 00 00       	mov    $0x0,%eax
  402ad2:	eb 05                	jmp    402ad9 <submitr+0x735>
  402ad4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ad9:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402ae0:	00 
  402ae1:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402ae8:	00 00 
  402aea:	74 05                	je     402af1 <submitr+0x74d>
  402aec:	e8 0f e2 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402af1:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402af8:	5b                   	pop    %rbx
  402af9:	5d                   	pop    %rbp
  402afa:	41 5c                	pop    %r12
  402afc:	41 5d                	pop    %r13
  402afe:	41 5e                	pop    %r14
  402b00:	41 5f                	pop    %r15
  402b02:	c3                   	retq   

0000000000402b03 <init_timeout>:
  402b03:	53                   	push   %rbx
  402b04:	89 fb                	mov    %edi,%ebx
  402b06:	85 ff                	test   %edi,%edi
  402b08:	74 1f                	je     402b29 <init_timeout+0x26>
  402b0a:	85 ff                	test   %edi,%edi
  402b0c:	79 05                	jns    402b13 <init_timeout+0x10>
  402b0e:	bb 00 00 00 00       	mov    $0x0,%ebx
  402b13:	be 02 21 40 00       	mov    $0x402102,%esi
  402b18:	bf 0e 00 00 00       	mov    $0xe,%edi
  402b1d:	e8 4e e2 ff ff       	callq  400d70 <signal@plt>
  402b22:	89 df                	mov    %ebx,%edi
  402b24:	e8 07 e2 ff ff       	callq  400d30 <alarm@plt>
  402b29:	5b                   	pop    %rbx
  402b2a:	c3                   	retq   

0000000000402b2b <init_driver>:
  402b2b:	55                   	push   %rbp
  402b2c:	53                   	push   %rbx
  402b2d:	48 83 ec 28          	sub    $0x28,%rsp
  402b31:	48 89 fd             	mov    %rdi,%rbp
  402b34:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b3b:	00 00 
  402b3d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402b42:	31 c0                	xor    %eax,%eax
  402b44:	be 01 00 00 00       	mov    $0x1,%esi
  402b49:	bf 0d 00 00 00       	mov    $0xd,%edi
  402b4e:	e8 1d e2 ff ff       	callq  400d70 <signal@plt>
  402b53:	be 01 00 00 00       	mov    $0x1,%esi
  402b58:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b5d:	e8 0e e2 ff ff       	callq  400d70 <signal@plt>
  402b62:	be 01 00 00 00       	mov    $0x1,%esi
  402b67:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402b6c:	e8 ff e1 ff ff       	callq  400d70 <signal@plt>
  402b71:	ba 00 00 00 00       	mov    $0x0,%edx
  402b76:	be 01 00 00 00       	mov    $0x1,%esi
  402b7b:	bf 02 00 00 00       	mov    $0x2,%edi
  402b80:	e8 2b e3 ff ff       	callq  400eb0 <socket@plt>
  402b85:	89 c3                	mov    %eax,%ebx
  402b87:	85 c0                	test   %eax,%eax
  402b89:	79 4f                	jns    402bda <init_driver+0xaf>
  402b8b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402b92:	3a 20 43 
  402b95:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b99:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ba0:	20 75 6e 
  402ba3:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ba7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bae:	74 6f 20 
  402bb1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402bb5:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402bbc:	65 20 73 
  402bbf:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bc3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402bca:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402bd0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bd5:	e9 28 01 00 00       	jmpq   402d02 <init_driver+0x1d7>
  402bda:	bf 8f 31 40 00       	mov    $0x40318f,%edi
  402bdf:	e8 9c e1 ff ff       	callq  400d80 <gethostbyname@plt>
  402be4:	48 85 c0             	test   %rax,%rax
  402be7:	75 68                	jne    402c51 <init_driver+0x126>
  402be9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402bf0:	3a 20 44 
  402bf3:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402bf7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402bfe:	20 75 6e 
  402c01:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402c05:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402c0c:	74 6f 20 
  402c0f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402c13:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402c1a:	76 65 20 
  402c1d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402c21:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402c28:	72 20 61 
  402c2b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402c2f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402c36:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402c3c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402c40:	89 df                	mov    %ebx,%edi
  402c42:	e8 f9 e0 ff ff       	callq  400d40 <close@plt>
  402c47:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c4c:	e9 b1 00 00 00       	jmpq   402d02 <init_driver+0x1d7>
  402c51:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402c58:	00 
  402c59:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402c60:	00 00 
  402c62:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402c68:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402c6c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402c70:	48 8b 30             	mov    (%rax),%rsi
  402c73:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402c78:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402c7d:	e8 0e e1 ff ff       	callq  400d90 <__memmove_chk@plt>
  402c82:	66 c7 44 24 02 4e f3 	movw   $0xf34e,0x2(%rsp)
  402c89:	ba 10 00 00 00       	mov    $0x10,%edx
  402c8e:	48 89 e6             	mov    %rsp,%rsi
  402c91:	89 df                	mov    %ebx,%edi
  402c93:	e8 e8 e1 ff ff       	callq  400e80 <connect@plt>
  402c98:	85 c0                	test   %eax,%eax
  402c9a:	79 50                	jns    402cec <init_driver+0x1c1>
  402c9c:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ca3:	3a 20 55 
  402ca6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402caa:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402cb1:	20 74 6f 
  402cb4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cb8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402cbf:	65 63 74 
  402cc2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cc6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ccd:	65 72 76 
  402cd0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402cd4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402cda:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402cde:	89 df                	mov    %ebx,%edi
  402ce0:	e8 5b e0 ff ff       	callq  400d40 <close@plt>
  402ce5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cea:	eb 16                	jmp    402d02 <init_driver+0x1d7>
  402cec:	89 df                	mov    %ebx,%edi
  402cee:	e8 4d e0 ff ff       	callq  400d40 <close@plt>
  402cf3:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402cf9:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402cfd:	b8 00 00 00 00       	mov    $0x0,%eax
  402d02:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402d07:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402d0e:	00 00 
  402d10:	74 05                	je     402d17 <init_driver+0x1ec>
  402d12:	e8 e9 df ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402d17:	48 83 c4 28          	add    $0x28,%rsp
  402d1b:	5b                   	pop    %rbx
  402d1c:	5d                   	pop    %rbp
  402d1d:	c3                   	retq   

0000000000402d1e <driver_post>:
  402d1e:	53                   	push   %rbx
  402d1f:	48 83 ec 10          	sub    $0x10,%rsp
  402d23:	4c 89 cb             	mov    %r9,%rbx
  402d26:	45 85 c0             	test   %r8d,%r8d
  402d29:	74 27                	je     402d52 <driver_post+0x34>
  402d2b:	48 89 ca             	mov    %rcx,%rdx
  402d2e:	be 55 36 40 00       	mov    $0x403655,%esi
  402d33:	bf 01 00 00 00       	mov    $0x1,%edi
  402d38:	b8 00 00 00 00       	mov    $0x0,%eax
  402d3d:	e8 de e0 ff ff       	callq  400e20 <__printf_chk@plt>
  402d42:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d47:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d4b:	b8 00 00 00 00       	mov    $0x0,%eax
  402d50:	eb 39                	jmp    402d8b <driver_post+0x6d>
  402d52:	48 85 ff             	test   %rdi,%rdi
  402d55:	74 26                	je     402d7d <driver_post+0x5f>
  402d57:	80 3f 00             	cmpb   $0x0,(%rdi)
  402d5a:	74 21                	je     402d7d <driver_post+0x5f>
  402d5c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402d60:	49 89 c9             	mov    %rcx,%r9
  402d63:	49 89 d0             	mov    %rdx,%r8
  402d66:	48 89 f9             	mov    %rdi,%rcx
  402d69:	48 89 f2             	mov    %rsi,%rdx
  402d6c:	be f3 4e 00 00       	mov    $0x4ef3,%esi
  402d71:	bf 8f 31 40 00       	mov    $0x40318f,%edi
  402d76:	e8 29 f6 ff ff       	callq  4023a4 <submitr>
  402d7b:	eb 0e                	jmp    402d8b <driver_post+0x6d>
  402d7d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402d82:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402d86:	b8 00 00 00 00       	mov    $0x0,%eax
  402d8b:	48 83 c4 10          	add    $0x10,%rsp
  402d8f:	5b                   	pop    %rbx
  402d90:	c3                   	retq   

0000000000402d91 <check>:
  402d91:	89 f8                	mov    %edi,%eax
  402d93:	c1 e8 1c             	shr    $0x1c,%eax
  402d96:	85 c0                	test   %eax,%eax
  402d98:	74 1d                	je     402db7 <check+0x26>
  402d9a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402d9f:	eb 0b                	jmp    402dac <check+0x1b>
  402da1:	89 f8                	mov    %edi,%eax
  402da3:	d3 e8                	shr    %cl,%eax
  402da5:	3c 0a                	cmp    $0xa,%al
  402da7:	74 14                	je     402dbd <check+0x2c>
  402da9:	83 c1 08             	add    $0x8,%ecx
  402dac:	83 f9 1f             	cmp    $0x1f,%ecx
  402daf:	7e f0                	jle    402da1 <check+0x10>
  402db1:	b8 01 00 00 00       	mov    $0x1,%eax
  402db6:	c3                   	retq   
  402db7:	b8 00 00 00 00       	mov    $0x0,%eax
  402dbc:	c3                   	retq   
  402dbd:	b8 00 00 00 00       	mov    $0x0,%eax
  402dc2:	c3                   	retq   

0000000000402dc3 <gencookie>:
  402dc3:	53                   	push   %rbx
  402dc4:	83 c7 01             	add    $0x1,%edi
  402dc7:	e8 e4 de ff ff       	callq  400cb0 <srandom@plt>
  402dcc:	e8 0f e0 ff ff       	callq  400de0 <random@plt>
  402dd1:	89 c3                	mov    %eax,%ebx
  402dd3:	89 c7                	mov    %eax,%edi
  402dd5:	e8 b7 ff ff ff       	callq  402d91 <check>
  402dda:	85 c0                	test   %eax,%eax
  402ddc:	74 ee                	je     402dcc <gencookie+0x9>
  402dde:	89 d8                	mov    %ebx,%eax
  402de0:	5b                   	pop    %rbx
  402de1:	c3                   	retq   
  402de2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402de9:	00 00 00 
  402dec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402df0 <__libc_csu_init>:
  402df0:	41 57                	push   %r15
  402df2:	41 89 ff             	mov    %edi,%r15d
  402df5:	41 56                	push   %r14
  402df7:	49 89 f6             	mov    %rsi,%r14
  402dfa:	41 55                	push   %r13
  402dfc:	49 89 d5             	mov    %rdx,%r13
  402dff:	41 54                	push   %r12
  402e01:	4c 8d 25 08 10 20 00 	lea    0x201008(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402e08:	55                   	push   %rbp
  402e09:	48 8d 2d 08 10 20 00 	lea    0x201008(%rip),%rbp        # 603e18 <__init_array_end>
  402e10:	53                   	push   %rbx
  402e11:	4c 29 e5             	sub    %r12,%rbp
  402e14:	31 db                	xor    %ebx,%ebx
  402e16:	48 c1 fd 03          	sar    $0x3,%rbp
  402e1a:	48 83 ec 08          	sub    $0x8,%rsp
  402e1e:	e8 3d de ff ff       	callq  400c60 <_init>
  402e23:	48 85 ed             	test   %rbp,%rbp
  402e26:	74 1e                	je     402e46 <__libc_csu_init+0x56>
  402e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402e2f:	00 
  402e30:	4c 89 ea             	mov    %r13,%rdx
  402e33:	4c 89 f6             	mov    %r14,%rsi
  402e36:	44 89 ff             	mov    %r15d,%edi
  402e39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402e3d:	48 83 c3 01          	add    $0x1,%rbx
  402e41:	48 39 eb             	cmp    %rbp,%rbx
  402e44:	75 ea                	jne    402e30 <__libc_csu_init+0x40>
  402e46:	48 83 c4 08          	add    $0x8,%rsp
  402e4a:	5b                   	pop    %rbx
  402e4b:	5d                   	pop    %rbp
  402e4c:	41 5c                	pop    %r12
  402e4e:	41 5d                	pop    %r13
  402e50:	41 5e                	pop    %r14
  402e52:	41 5f                	pop    %r15
  402e54:	c3                   	retq   
  402e55:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402e5c:	00 00 00 00 

0000000000402e60 <__libc_csu_fini>:
  402e60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402e64 <_fini>:
  402e64:	48 83 ec 08          	sub    $0x8,%rsp
  402e68:	48 83 c4 08          	add    $0x8,%rsp
  402e6c:	c3                   	retq   
