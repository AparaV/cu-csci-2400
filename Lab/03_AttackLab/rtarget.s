
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c60 <_init>:
  400c60:	48 83 ec 08          	sub    $0x8,%rsp
  400c64:	48 8b 05 8d 43 20 00 	mov    0x20438d(%rip),%rax        # 604ff8 <_DYNAMIC+0x1d0>
  400c6b:	48 85 c0             	test   %rax,%rax
  400c6e:	74 05                	je     400c75 <_init+0x15>
  400c70:	e8 2b 01 00 00       	callq  400da0 <__gmon_start__@plt>
  400c75:	48 83 c4 08          	add    $0x8,%rsp
  400c79:	c3                   	retq   

Disassembly of section .plt:

0000000000400c80 <strcasecmp@plt-0x10>:
  400c80:	ff 35 82 43 20 00    	pushq  0x204382(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c86:	ff 25 84 43 20 00    	jmpq   *0x204384(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c90 <strcasecmp@plt>:
  400c90:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400c96:	68 00 00 00 00       	pushq  $0x0
  400c9b:	e9 e0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ca0 <__errno_location@plt>:
  400ca0:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ca6:	68 01 00 00 00       	pushq  $0x1
  400cab:	e9 d0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cb0 <srandom@plt>:
  400cb0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cb6:	68 02 00 00 00       	pushq  $0x2
  400cbb:	e9 c0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cc0 <strncmp@plt>:
  400cc0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cc6:	68 03 00 00 00       	pushq  $0x3
  400ccb:	e9 b0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cd0 <strcpy@plt>:
  400cd0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400cd6:	68 04 00 00 00       	pushq  $0x4
  400cdb:	e9 a0 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ce0 <puts@plt>:
  400ce0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ce6:	68 05 00 00 00       	pushq  $0x5
  400ceb:	e9 90 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400cf0 <write@plt>:
  400cf0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400cf6:	68 06 00 00 00       	pushq  $0x6
  400cfb:	e9 80 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d00 <__stack_chk_fail@plt>:
  400d00:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d06:	68 07 00 00 00       	pushq  $0x7
  400d0b:	e9 70 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d10 <mmap@plt>:
  400d10:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d16:	68 08 00 00 00       	pushq  $0x8
  400d1b:	e9 60 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d26:	68 09 00 00 00       	pushq  $0x9
  400d2b:	e9 50 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d36:	68 0a 00 00 00       	pushq  $0xa
  400d3b:	e9 40 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d40 <close@plt>:
  400d40:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d46:	68 0b 00 00 00       	pushq  $0xb
  400d4b:	e9 30 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d50 <read@plt>:
  400d50:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d56:	68 0c 00 00 00       	pushq  $0xc
  400d5b:	e9 20 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d66:	68 0d 00 00 00       	pushq  $0xd
  400d6b:	e9 10 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d76:	68 0e 00 00 00       	pushq  $0xe
  400d7b:	e9 00 ff ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d86:	68 0f 00 00 00       	pushq  $0xf
  400d8b:	e9 f0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400d90 <__memmove_chk@plt>:
  400d90:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400d96:	68 10 00 00 00       	pushq  $0x10
  400d9b:	e9 e0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400da0 <__gmon_start__@plt>:
  400da0:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400da6:	68 11 00 00 00       	pushq  $0x11
  400dab:	e9 d0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400db6:	68 12 00 00 00       	pushq  $0x12
  400dbb:	e9 c0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dc6:	68 13 00 00 00       	pushq  $0x13
  400dcb:	e9 b0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400dd6:	68 14 00 00 00       	pushq  $0x14
  400ddb:	e9 a0 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400de0 <random@plt>:
  400de0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400de6:	68 15 00 00 00       	pushq  $0x15
  400deb:	e9 90 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400df6:	68 16 00 00 00       	pushq  $0x16
  400dfb:	e9 80 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e06:	68 17 00 00 00       	pushq  $0x17
  400e0b:	e9 70 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e16:	68 18 00 00 00       	pushq  $0x18
  400e1b:	e9 60 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e26:	68 19 00 00 00       	pushq  $0x19
  400e2b:	e9 50 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e36:	68 1a 00 00 00       	pushq  $0x1a
  400e3b:	e9 40 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e46:	68 1b 00 00 00       	pushq  $0x1b
  400e4b:	e9 30 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e56:	68 1c 00 00 00       	pushq  $0x1c
  400e5b:	e9 20 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e66:	68 1d 00 00 00       	pushq  $0x1d
  400e6b:	e9 10 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e76:	68 1e 00 00 00       	pushq  $0x1e
  400e7b:	e9 00 fe ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e86:	68 1f 00 00 00       	pushq  $0x1f
  400e8b:	e9 f0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400e96:	68 20 00 00 00       	pushq  $0x20
  400e9b:	e9 e0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400ea6:	68 21 00 00 00       	pushq  $0x21
  400eab:	e9 d0 fd ff ff       	jmpq   400c80 <_init+0x20>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 605128 <_GLOBAL_OFFSET_TABLE_+0x128>
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
  400ecf:	49 c7 c0 80 2f 40 00 	mov    $0x402f80,%r8
  400ed6:	48 c7 c1 10 2f 40 00 	mov    $0x402f10,%rcx
  400edd:	48 c7 c7 bf 11 40 00 	mov    $0x4011bf,%rdi
  400ee4:	e8 77 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ee9:	f4                   	hlt    
  400eea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ef0 <deregister_tm_clones>:
  400ef0:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400ef5:	55                   	push   %rbp
  400ef6:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400efc:	48 83 f8 0e          	cmp    $0xe,%rax
  400f00:	48 89 e5             	mov    %rsp,%rbp
  400f03:	77 02                	ja     400f07 <deregister_tm_clones+0x17>
  400f05:	5d                   	pop    %rbp
  400f06:	c3                   	retq   
  400f07:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0c:	48 85 c0             	test   %rax,%rax
  400f0f:	74 f4                	je     400f05 <deregister_tm_clones+0x15>
  400f11:	5d                   	pop    %rbp
  400f12:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f17:	ff e0                	jmpq   *%rax
  400f19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f20 <register_tm_clones>:
  400f20:	b8 b0 54 60 00       	mov    $0x6054b0,%eax
  400f25:	55                   	push   %rbp
  400f26:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
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
  400f52:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f57:	ff e2                	jmpq   *%rdx
  400f59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400f60 <__do_global_dtors_aux>:
  400f60:	80 3d 89 45 20 00 00 	cmpb   $0x0,0x204589(%rip)        # 6054f0 <completed.6973>
  400f67:	75 11                	jne    400f7a <__do_global_dtors_aux+0x1a>
  400f69:	55                   	push   %rbp
  400f6a:	48 89 e5             	mov    %rsp,%rbp
  400f6d:	e8 7e ff ff ff       	callq  400ef0 <deregister_tm_clones>
  400f72:	5d                   	pop    %rbp
  400f73:	c6 05 76 45 20 00 01 	movb   $0x1,0x204576(%rip)        # 6054f0 <completed.6973>
  400f7a:	f3 c3                	repz retq 
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <frame_dummy>:
  400f80:	48 83 3d 98 3e 20 00 	cmpq   $0x0,0x203e98(%rip)        # 604e20 <__JCR_END__>
  400f87:	00 
  400f88:	74 1e                	je     400fa8 <frame_dummy+0x28>
  400f8a:	b8 00 00 00 00       	mov    $0x0,%eax
  400f8f:	48 85 c0             	test   %rax,%rax
  400f92:	74 14                	je     400fa8 <frame_dummy+0x28>
  400f94:	55                   	push   %rbp
  400f95:	bf 20 4e 60 00       	mov    $0x604e20,%edi
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
  400fb7:	83 3d 6a 45 20 00 00 	cmpl   $0x0,0x20456a(%rip)        # 605528 <is_checker>
  400fbe:	74 3e                	je     400ffe <usage+0x4e>
  400fc0:	be 98 2f 40 00       	mov    $0x402f98,%esi
  400fc5:	bf 01 00 00 00       	mov    $0x1,%edi
  400fca:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcf:	e8 4c fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fd4:	bf d0 2f 40 00       	mov    $0x402fd0,%edi
  400fd9:	e8 02 fd ff ff       	callq  400ce0 <puts@plt>
  400fde:	bf 48 31 40 00       	mov    $0x403148,%edi
  400fe3:	e8 f8 fc ff ff       	callq  400ce0 <puts@plt>
  400fe8:	bf f8 2f 40 00       	mov    $0x402ff8,%edi
  400fed:	e8 ee fc ff ff       	callq  400ce0 <puts@plt>
  400ff2:	bf 62 31 40 00       	mov    $0x403162,%edi
  400ff7:	e8 e4 fc ff ff       	callq  400ce0 <puts@plt>
  400ffc:	eb 32                	jmp    401030 <usage+0x80>
  400ffe:	be 7e 31 40 00       	mov    $0x40317e,%esi
  401003:	bf 01 00 00 00       	mov    $0x1,%edi
  401008:	b8 00 00 00 00       	mov    $0x0,%eax
  40100d:	e8 0e fe ff ff       	callq  400e20 <__printf_chk@plt>
  401012:	bf 20 30 40 00       	mov    $0x403020,%edi
  401017:	e8 c4 fc ff ff       	callq  400ce0 <puts@plt>
  40101c:	bf 48 30 40 00       	mov    $0x403048,%edi
  401021:	e8 ba fc ff ff       	callq  400ce0 <puts@plt>
  401026:	bf 9c 31 40 00       	mov    $0x40319c,%edi
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
  401058:	89 3d ba 44 20 00    	mov    %edi,0x2044ba(%rip)        # 605518 <check_level>
  40105e:	8b 3d 04 41 20 00    	mov    0x204104(%rip),%edi        # 605168 <target_id>
  401064:	e8 7a 1e 00 00       	callq  402ee3 <gencookie>
  401069:	89 05 b5 44 20 00    	mov    %eax,0x2044b5(%rip)        # 605524 <cookie>
  40106f:	89 c7                	mov    %eax,%edi
  401071:	e8 6d 1e 00 00       	callq  402ee3 <gencookie>
  401076:	89 05 a4 44 20 00    	mov    %eax,0x2044a4(%rip)        # 605520 <authkey>
  40107c:	8b 05 e6 40 20 00    	mov    0x2040e6(%rip),%eax        # 605168 <target_id>
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
  4010c7:	48 89 05 d2 43 20 00 	mov    %rax,0x2043d2(%rip)        # 6054a0 <buf_offset>
  4010ce:	c6 05 73 50 20 00 72 	movb   $0x72,0x205073(%rip)        # 606148 <target_prefix>
  4010d5:	83 3d cc 43 20 00 00 	cmpl   $0x0,0x2043cc(%rip)        # 6054a8 <notify>
  4010dc:	0f 84 bb 00 00 00    	je     40119d <initialize_target+0x163>
  4010e2:	83 3d 3f 44 20 00 00 	cmpl   $0x0,0x20443f(%rip)        # 605528 <is_checker>
  4010e9:	0f 85 ae 00 00 00    	jne    40119d <initialize_target+0x163>
  4010ef:	be 00 01 00 00       	mov    $0x100,%esi
  4010f4:	48 89 e7             	mov    %rsp,%rdi
  4010f7:	e8 64 fd ff ff       	callq  400e60 <gethostname@plt>
  4010fc:	85 c0                	test   %eax,%eax
  4010fe:	74 25                	je     401125 <initialize_target+0xeb>
  401100:	bf 78 30 40 00       	mov    $0x403078,%edi
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
  40112d:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  401134:	00 
  401135:	48 85 ff             	test   %rdi,%rdi
  401138:	75 da                	jne    401114 <initialize_target+0xda>
  40113a:	b8 00 00 00 00       	mov    $0x0,%eax
  40113f:	eb 05                	jmp    401146 <initialize_target+0x10c>
  401141:	b8 01 00 00 00       	mov    $0x1,%eax
  401146:	85 c0                	test   %eax,%eax
  401148:	75 1c                	jne    401166 <initialize_target+0x12c>
  40114a:	48 89 e2             	mov    %rsp,%rdx
  40114d:	be b0 30 40 00       	mov    $0x4030b0,%esi
  401152:	bf 01 00 00 00       	mov    $0x1,%edi
  401157:	e8 c4 fc ff ff       	callq  400e20 <__printf_chk@plt>
  40115c:	bf 08 00 00 00       	mov    $0x8,%edi
  401161:	e8 0a fd ff ff       	callq  400e70 <exit@plt>
  401166:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40116d:	00 
  40116e:	e8 d8 1a 00 00       	callq  402c4b <init_driver>
  401173:	85 c0                	test   %eax,%eax
  401175:	79 26                	jns    40119d <initialize_target+0x163>
  401177:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  40117e:	00 
  40117f:	be f0 30 40 00       	mov    $0x4030f0,%esi
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
  4011cd:	be be 1f 40 00       	mov    $0x401fbe,%esi
  4011d2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011d7:	e8 94 fb ff ff       	callq  400d70 <signal@plt>
  4011dc:	be 70 1f 40 00       	mov    $0x401f70,%esi
  4011e1:	bf 07 00 00 00       	mov    $0x7,%edi
  4011e6:	e8 85 fb ff ff       	callq  400d70 <signal@plt>
  4011eb:	be 0c 20 40 00       	mov    $0x40200c,%esi
  4011f0:	bf 04 00 00 00       	mov    $0x4,%edi
  4011f5:	e8 76 fb ff ff       	callq  400d70 <signal@plt>
  4011fa:	83 3d 27 43 20 00 00 	cmpl   $0x0,0x204327(%rip)        # 605528 <is_checker>
  401201:	74 20                	je     401223 <main+0x64>
  401203:	be 5a 20 40 00       	mov    $0x40205a,%esi
  401208:	bf 0e 00 00 00       	mov    $0xe,%edi
  40120d:	e8 5e fb ff ff       	callq  400d70 <signal@plt>
  401212:	bf 05 00 00 00       	mov    $0x5,%edi
  401217:	e8 14 fb ff ff       	callq  400d30 <alarm@plt>
  40121c:	bd ba 31 40 00       	mov    $0x4031ba,%ebp
  401221:	eb 05                	jmp    401228 <main+0x69>
  401223:	bd b5 31 40 00       	mov    $0x4031b5,%ebp
  401228:	48 8b 05 91 42 20 00 	mov    0x204291(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  40122f:	48 89 05 da 42 20 00 	mov    %rax,0x2042da(%rip)        # 605510 <infile>
  401236:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40123c:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401242:	e9 c6 00 00 00       	jmpq   40130d <main+0x14e>
  401247:	83 e8 61             	sub    $0x61,%eax
  40124a:	3c 10                	cmp    $0x10,%al
  40124c:	0f 87 9c 00 00 00    	ja     4012ee <main+0x12f>
  401252:	0f b6 c0             	movzbl %al,%eax
  401255:	ff 24 c5 00 32 40 00 	jmpq   *0x403200(,%rax,8)
  40125c:	48 8b 3b             	mov    (%rbx),%rdi
  40125f:	e8 4c fd ff ff       	callq  400fb0 <usage>
  401264:	be 6d 34 40 00       	mov    $0x40346d,%esi
  401269:	48 8b 3d 70 42 20 00 	mov    0x204270(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  401270:	e8 bb fb ff ff       	callq  400e30 <fopen@plt>
  401275:	48 89 05 94 42 20 00 	mov    %rax,0x204294(%rip)        # 605510 <infile>
  40127c:	48 85 c0             	test   %rax,%rax
  40127f:	0f 85 88 00 00 00    	jne    40130d <main+0x14e>
  401285:	48 8b 0d 54 42 20 00 	mov    0x204254(%rip),%rcx        # 6054e0 <optarg@@GLIBC_2.2.5>
  40128c:	ba c2 31 40 00       	mov    $0x4031c2,%edx
  401291:	be 01 00 00 00       	mov    $0x1,%esi
  401296:	48 8b 3d 4b 42 20 00 	mov    0x20424b(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  40129d:	e8 ee fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012a2:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a7:	e9 e4 00 00 00       	jmpq   401390 <main+0x1d1>
  4012ac:	ba 10 00 00 00       	mov    $0x10,%edx
  4012b1:	be 00 00 00 00       	mov    $0x0,%esi
  4012b6:	48 8b 3d 23 42 20 00 	mov    0x204223(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  4012bd:	e8 8e fb ff ff       	callq  400e50 <strtoul@plt>
  4012c2:	41 89 c6             	mov    %eax,%r14d
  4012c5:	eb 46                	jmp    40130d <main+0x14e>
  4012c7:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012cc:	be 00 00 00 00       	mov    $0x0,%esi
  4012d1:	48 8b 3d 08 42 20 00 	mov    0x204208(%rip),%rdi        # 6054e0 <optarg@@GLIBC_2.2.5>
  4012d8:	e8 d3 fa ff ff       	callq  400db0 <strtol@plt>
  4012dd:	41 89 c5             	mov    %eax,%r13d
  4012e0:	eb 2b                	jmp    40130d <main+0x14e>
  4012e2:	c7 05 bc 41 20 00 00 	movl   $0x0,0x2041bc(%rip)        # 6054a8 <notify>
  4012e9:	00 00 00 
  4012ec:	eb 1f                	jmp    40130d <main+0x14e>
  4012ee:	0f be d2             	movsbl %dl,%edx
  4012f1:	be df 31 40 00       	mov    $0x4031df,%esi
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
  401325:	be 01 00 00 00       	mov    $0x1,%esi
  40132a:	44 89 ef             	mov    %r13d,%edi
  40132d:	e8 08 fd ff ff       	callq  40103a <initialize_target>
  401332:	83 3d ef 41 20 00 00 	cmpl   $0x0,0x2041ef(%rip)        # 605528 <is_checker>
  401339:	74 2a                	je     401365 <main+0x1a6>
  40133b:	44 3b 35 de 41 20 00 	cmp    0x2041de(%rip),%r14d        # 605520 <authkey>
  401342:	74 21                	je     401365 <main+0x1a6>
  401344:	44 89 f2             	mov    %r14d,%edx
  401347:	be 18 31 40 00       	mov    $0x403118,%esi
  40134c:	bf 01 00 00 00       	mov    $0x1,%edi
  401351:	b8 00 00 00 00       	mov    $0x0,%eax
  401356:	e8 c5 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40135b:	b8 00 00 00 00       	mov    $0x0,%eax
  401360:	e8 96 08 00 00       	callq  401bfb <check_fail>
  401365:	8b 15 b9 41 20 00    	mov    0x2041b9(%rip),%edx        # 605524 <cookie>
  40136b:	be f2 31 40 00       	mov    $0x4031f2,%esi
  401370:	bf 01 00 00 00       	mov    $0x1,%edi
  401375:	b8 00 00 00 00       	mov    $0x0,%eax
  40137a:	e8 a1 fa ff ff       	callq  400e20 <__printf_chk@plt>
  40137f:	48 8b 3d 1a 41 20 00 	mov    0x20411a(%rip),%rdi        # 6054a0 <buf_offset>
  401386:	e8 22 0d 00 00       	callq  4020ad <launch>
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
  401881:	e8 aa 03 00 00       	callq  401c30 <Gets>
  401886:	b8 01 00 00 00       	mov    $0x1,%eax
  40188b:	48 83 c4 28          	add    $0x28,%rsp
  40188f:	c3                   	retq   

0000000000401890 <touch1>:
  401890:	48 83 ec 08          	sub    $0x8,%rsp
  401894:	c7 05 7e 3c 20 00 01 	movl   $0x1,0x203c7e(%rip)        # 60551c <vlevel>
  40189b:	00 00 00 
  40189e:	bf c6 32 40 00       	mov    $0x4032c6,%edi
  4018a3:	e8 38 f4 ff ff       	callq  400ce0 <puts@plt>
  4018a8:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ad:	e8 d4 05 00 00       	callq  401e86 <validate>
  4018b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4018b7:	e8 b4 f5 ff ff       	callq  400e70 <exit@plt>

00000000004018bc <touch2>:
  4018bc:	48 83 ec 08          	sub    $0x8,%rsp
  4018c0:	89 fa                	mov    %edi,%edx
  4018c2:	c7 05 50 3c 20 00 02 	movl   $0x2,0x203c50(%rip)        # 60551c <vlevel>
  4018c9:	00 00 00 
  4018cc:	3b 3d 52 3c 20 00    	cmp    0x203c52(%rip),%edi        # 605524 <cookie>
  4018d2:	75 20                	jne    4018f4 <touch2+0x38>
  4018d4:	be e8 32 40 00       	mov    $0x4032e8,%esi
  4018d9:	bf 01 00 00 00       	mov    $0x1,%edi
  4018de:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e3:	e8 38 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  4018e8:	bf 02 00 00 00       	mov    $0x2,%edi
  4018ed:	e8 94 05 00 00       	callq  401e86 <validate>
  4018f2:	eb 1e                	jmp    401912 <touch2+0x56>
  4018f4:	be 10 33 40 00       	mov    $0x403310,%esi
  4018f9:	bf 01 00 00 00       	mov    $0x1,%edi
  4018fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401903:	e8 18 f5 ff ff       	callq  400e20 <__printf_chk@plt>
  401908:	bf 02 00 00 00       	mov    $0x2,%edi
  40190d:	e8 36 06 00 00       	callq  401f48 <fail>
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
  401976:	b9 e3 32 40 00       	mov    $0x4032e3,%ecx
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
  4019ce:	c7 05 44 3b 20 00 03 	movl   $0x3,0x203b44(%rip)        # 60551c <vlevel>
  4019d5:	00 00 00 
  4019d8:	48 89 fe             	mov    %rdi,%rsi
  4019db:	8b 3d 43 3b 20 00    	mov    0x203b43(%rip),%edi        # 605524 <cookie>
  4019e1:	e8 36 ff ff ff       	callq  40191c <hexmatch>
  4019e6:	85 c0                	test   %eax,%eax
  4019e8:	74 23                	je     401a0d <touch3+0x43>
  4019ea:	48 89 da             	mov    %rbx,%rdx
  4019ed:	be 38 33 40 00       	mov    $0x403338,%esi
  4019f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019fc:	e8 1f f4 ff ff       	callq  400e20 <__printf_chk@plt>
  401a01:	bf 03 00 00 00       	mov    $0x3,%edi
  401a06:	e8 7b 04 00 00       	callq  401e86 <validate>
  401a0b:	eb 21                	jmp    401a2e <touch3+0x64>
  401a0d:	48 89 da             	mov    %rbx,%rdx
  401a10:	be 60 33 40 00       	mov    $0x403360,%esi
  401a15:	bf 01 00 00 00       	mov    $0x1,%edi
  401a1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401a1f:	e8 fc f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a24:	bf 03 00 00 00       	mov    $0x3,%edi
  401a29:	e8 1a 05 00 00       	callq  401f48 <fail>
  401a2e:	bf 00 00 00 00       	mov    $0x0,%edi
  401a33:	e8 38 f4 ff ff       	callq  400e70 <exit@plt>

0000000000401a38 <test>:
  401a38:	48 83 ec 08          	sub    $0x8,%rsp
  401a3c:	b8 00 00 00 00       	mov    $0x0,%eax
  401a41:	e8 34 fe ff ff       	callq  40187a <getbuf>
  401a46:	89 c2                	mov    %eax,%edx
  401a48:	be 88 33 40 00       	mov    $0x403388,%esi
  401a4d:	bf 01 00 00 00       	mov    $0x1,%edi
  401a52:	b8 00 00 00 00       	mov    $0x0,%eax
  401a57:	e8 c4 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401a5c:	48 83 c4 08          	add    $0x8,%rsp
  401a60:	c3                   	retq   

0000000000401a61 <start_farm>:
  401a61:	b8 01 00 00 00       	mov    $0x1,%eax
  401a66:	c3                   	retq   

0000000000401a67 <addval_424>:
  401a67:	8d 87 a7 50 90 c3    	lea    -0x3c6faf59(%rdi),%eax
  401a6d:	c3                   	retq   

0000000000401a6e <getval_130>:
  401a6e:	b8 d8 c3 76 0f       	mov    $0xf76c3d8,%eax
  401a73:	c3                   	retq   

0000000000401a74 <addval_232>:
  401a74:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  401a7a:	c3                   	retq   

0000000000401a7b <getval_104>:
  401a7b:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  401a80:	c3                   	retq   

0000000000401a81 <addval_489>:
  401a81:	8d 87 db 48 81 c7    	lea    -0x387eb725(%rdi),%eax
  401a87:	c3                   	retq   

0000000000401a88 <setval_484>:
  401a88:	c7 07 58 90 90 c3    	movl   $0xc3909058,(%rdi)
  401a8e:	c3                   	retq   

0000000000401a8f <addval_375>:
  401a8f:	8d 87 58 90 90 c3    	lea    -0x3c6f6fa8(%rdi),%eax
  401a95:	c3                   	retq   

0000000000401a96 <addval_499>:
  401a96:	8d 87 4a 89 c7 c3    	lea    -0x3c3876b6(%rdi),%eax
  401a9c:	c3                   	retq   

0000000000401a9d <mid_farm>:
  401a9d:	b8 01 00 00 00       	mov    $0x1,%eax
  401aa2:	c3                   	retq   

0000000000401aa3 <add_xy>:
  401aa3:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401aa7:	c3                   	retq   

0000000000401aa8 <getval_265>:
  401aa8:	b8 5d 89 d6 90       	mov    $0x90d6895d,%eax
  401aad:	c3                   	retq   

0000000000401aae <getval_350>:
  401aae:	b8 89 c1 c4 d2       	mov    $0xd2c4c189,%eax
  401ab3:	c3                   	retq   

0000000000401ab4 <setval_200>:
  401ab4:	c7 07 48 89 e0 c1    	movl   $0xc1e08948,(%rdi)
  401aba:	c3                   	retq   

0000000000401abb <setval_339>:
  401abb:	c7 07 89 ca 18 c9    	movl   $0xc918ca89,(%rdi)
  401ac1:	c3                   	retq   

0000000000401ac2 <setval_390>:
  401ac2:	c7 07 81 d6 08 db    	movl   $0xdb08d681,(%rdi)
  401ac8:	c3                   	retq   

0000000000401ac9 <getval_108>:
  401ac9:	b8 48 89 e0 c2       	mov    $0xc2e08948,%eax
  401ace:	c3                   	retq   

0000000000401acf <getval_332>:
  401acf:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401ad4:	c3                   	retq   

0000000000401ad5 <addval_235>:
  401ad5:	8d 87 ca e3 89 c1    	lea    -0x3e761c36(%rdi),%eax
  401adb:	c3                   	retq   

0000000000401adc <addval_154>:
  401adc:	8d 87 89 d6 18 c0    	lea    -0x3fe72977(%rdi),%eax
  401ae2:	c3                   	retq   

0000000000401ae3 <addval_374>:
  401ae3:	8d 87 8b d6 08 c0    	lea    -0x3ff72975(%rdi),%eax
  401ae9:	c3                   	retq   

0000000000401aea <getval_465>:
  401aea:	b8 89 c1 18 d2       	mov    $0xd218c189,%eax
  401aef:	c3                   	retq   

0000000000401af0 <setval_300>:
  401af0:	c7 07 89 c1 c2 de    	movl   $0xdec2c189,(%rdi)
  401af6:	c3                   	retq   

0000000000401af7 <addval_389>:
  401af7:	8d 87 8d d6 84 d2    	lea    -0x2d7b2973(%rdi),%eax
  401afd:	c3                   	retq   

0000000000401afe <addval_352>:
  401afe:	8d 87 89 ca c3 73    	lea    0x73c3ca89(%rdi),%eax
  401b04:	c3                   	retq   

0000000000401b05 <setval_233>:
  401b05:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401b0b:	c3                   	retq   

0000000000401b0c <setval_471>:
  401b0c:	c7 07 09 ca 08 d2    	movl   $0xd208ca09,(%rdi)
  401b12:	c3                   	retq   

0000000000401b13 <addval_393>:
  401b13:	8d 87 89 d6 78 c9    	lea    -0x36872977(%rdi),%eax
  401b19:	c3                   	retq   

0000000000401b1a <setval_417>:
  401b1a:	c7 07 48 89 e0 c7    	movl   $0xc7e08948,(%rdi)
  401b20:	c3                   	retq   

0000000000401b21 <getval_451>:
  401b21:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  401b26:	c3                   	retq   

0000000000401b27 <setval_480>:
  401b27:	c7 07 89 c1 30 db    	movl   $0xdb30c189,(%rdi)
  401b2d:	c3                   	retq   

0000000000401b2e <addval_242>:
  401b2e:	8d 87 89 ca 28 d2    	lea    -0x2dd73577(%rdi),%eax
  401b34:	c3                   	retq   

0000000000401b35 <getval_475>:
  401b35:	b8 99 ca 08 d2       	mov    $0xd208ca99,%eax
  401b3a:	c3                   	retq   

0000000000401b3b <getval_435>:
  401b3b:	b8 09 ca 38 c9       	mov    $0xc938ca09,%eax
  401b40:	c3                   	retq   

0000000000401b41 <setval_256>:
  401b41:	c7 07 12 4c 89 e0    	movl   $0xe0894c12,(%rdi)
  401b47:	c3                   	retq   

0000000000401b48 <setval_481>:
  401b48:	c7 07 f8 89 ca 91    	movl   $0x91ca89f8,(%rdi)
  401b4e:	c3                   	retq   

0000000000401b4f <getval_228>:
  401b4f:	b8 88 48 99 e0       	mov    $0xe0994888,%eax
  401b54:	c3                   	retq   

0000000000401b55 <addval_149>:
  401b55:	8d 87 89 c1 48 d2    	lea    -0x2db73e77(%rdi),%eax
  401b5b:	c3                   	retq   

0000000000401b5c <addval_397>:
  401b5c:	8d 87 11 81 c1 c3    	lea    -0x3c3e7eef(%rdi),%eax
  401b62:	c3                   	retq   

0000000000401b63 <setval_421>:
  401b63:	c7 07 55 e0 a9 d6    	movl   $0xd6a9e055,(%rdi)
  401b69:	c3                   	retq   

0000000000401b6a <getval_196>:
  401b6a:	b8 89 d6 84 c9       	mov    $0xc984d689,%eax
  401b6f:	c3                   	retq   

0000000000401b70 <getval_174>:
  401b70:	b8 14 89 c1 c3       	mov    $0xc3c18914,%eax
  401b75:	c3                   	retq   

0000000000401b76 <getval_262>:
  401b76:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401b7b:	c3                   	retq   

0000000000401b7c <end_farm>:
  401b7c:	b8 01 00 00 00       	mov    $0x1,%eax
  401b81:	c3                   	retq   
  401b82:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b89:	00 00 00 
  401b8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b90 <save_char>:
  401b90:	8b 05 ae 45 20 00    	mov    0x2045ae(%rip),%eax        # 606144 <gets_cnt>
  401b96:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b9b:	7f 49                	jg     401be6 <save_char+0x56>
  401b9d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401ba0:	89 f9                	mov    %edi,%ecx
  401ba2:	c0 e9 04             	shr    $0x4,%cl
  401ba5:	83 e1 0f             	and    $0xf,%ecx
  401ba8:	0f b6 b1 b0 36 40 00 	movzbl 0x4036b0(%rcx),%esi
  401baf:	48 63 ca             	movslq %edx,%rcx
  401bb2:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401bb9:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401bbc:	83 e7 0f             	and    $0xf,%edi
  401bbf:	0f b6 b7 b0 36 40 00 	movzbl 0x4036b0(%rdi),%esi
  401bc6:	48 63 c9             	movslq %ecx,%rcx
  401bc9:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401bd0:	83 c2 02             	add    $0x2,%edx
  401bd3:	48 63 d2             	movslq %edx,%rdx
  401bd6:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401bdd:	83 c0 01             	add    $0x1,%eax
  401be0:	89 05 5e 45 20 00    	mov    %eax,0x20455e(%rip)        # 606144 <gets_cnt>
  401be6:	f3 c3                	repz retq 

0000000000401be8 <save_term>:
  401be8:	8b 05 56 45 20 00    	mov    0x204556(%rip),%eax        # 606144 <gets_cnt>
  401bee:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401bf1:	48 98                	cltq   
  401bf3:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401bfa:	c3                   	retq   

0000000000401bfb <check_fail>:
  401bfb:	48 83 ec 08          	sub    $0x8,%rsp
  401bff:	0f be 15 42 45 20 00 	movsbl 0x204542(%rip),%edx        # 606148 <target_prefix>
  401c06:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401c0c:	8b 0d 06 39 20 00    	mov    0x203906(%rip),%ecx        # 605518 <check_level>
  401c12:	be ab 33 40 00       	mov    $0x4033ab,%esi
  401c17:	bf 01 00 00 00       	mov    $0x1,%edi
  401c1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c21:	e8 fa f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c26:	bf 01 00 00 00       	mov    $0x1,%edi
  401c2b:	e8 40 f2 ff ff       	callq  400e70 <exit@plt>

0000000000401c30 <Gets>:
  401c30:	41 54                	push   %r12
  401c32:	55                   	push   %rbp
  401c33:	53                   	push   %rbx
  401c34:	49 89 fc             	mov    %rdi,%r12
  401c37:	c7 05 03 45 20 00 00 	movl   $0x0,0x204503(%rip)        # 606144 <gets_cnt>
  401c3e:	00 00 00 
  401c41:	48 89 fb             	mov    %rdi,%rbx
  401c44:	eb 11                	jmp    401c57 <Gets+0x27>
  401c46:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401c4a:	88 03                	mov    %al,(%rbx)
  401c4c:	0f b6 f8             	movzbl %al,%edi
  401c4f:	e8 3c ff ff ff       	callq  401b90 <save_char>
  401c54:	48 89 eb             	mov    %rbp,%rbx
  401c57:	48 8b 3d b2 38 20 00 	mov    0x2038b2(%rip),%rdi        # 605510 <infile>
  401c5e:	e8 8d f1 ff ff       	callq  400df0 <_IO_getc@plt>
  401c63:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c66:	74 05                	je     401c6d <Gets+0x3d>
  401c68:	83 f8 0a             	cmp    $0xa,%eax
  401c6b:	75 d9                	jne    401c46 <Gets+0x16>
  401c6d:	c6 03 00             	movb   $0x0,(%rbx)
  401c70:	b8 00 00 00 00       	mov    $0x0,%eax
  401c75:	e8 6e ff ff ff       	callq  401be8 <save_term>
  401c7a:	4c 89 e0             	mov    %r12,%rax
  401c7d:	5b                   	pop    %rbx
  401c7e:	5d                   	pop    %rbp
  401c7f:	41 5c                	pop    %r12
  401c81:	c3                   	retq   

0000000000401c82 <notify_server>:
  401c82:	53                   	push   %rbx
  401c83:	48 81 ec 30 40 00 00 	sub    $0x4030,%rsp
  401c8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c91:	00 00 
  401c93:	48 89 84 24 28 40 00 	mov    %rax,0x4028(%rsp)
  401c9a:	00 
  401c9b:	31 c0                	xor    %eax,%eax
  401c9d:	83 3d 84 38 20 00 00 	cmpl   $0x0,0x203884(%rip)        # 605528 <is_checker>
  401ca4:	0f 85 bb 01 00 00    	jne    401e65 <notify_server+0x1e3>
  401caa:	89 fb                	mov    %edi,%ebx
  401cac:	8b 05 92 44 20 00    	mov    0x204492(%rip),%eax        # 606144 <gets_cnt>
  401cb2:	83 c0 64             	add    $0x64,%eax
  401cb5:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401cba:	7e 1e                	jle    401cda <notify_server+0x58>
  401cbc:	be e0 34 40 00       	mov    $0x4034e0,%esi
  401cc1:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc6:	b8 00 00 00 00       	mov    $0x0,%eax
  401ccb:	e8 50 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cd0:	bf 01 00 00 00       	mov    $0x1,%edi
  401cd5:	e8 96 f1 ff ff       	callq  400e70 <exit@plt>
  401cda:	0f be 05 67 44 20 00 	movsbl 0x204467(%rip),%eax        # 606148 <target_prefix>
  401ce1:	83 3d c0 37 20 00 00 	cmpl   $0x0,0x2037c0(%rip)        # 6054a8 <notify>
  401ce8:	74 08                	je     401cf2 <notify_server+0x70>
  401cea:	8b 15 30 38 20 00    	mov    0x203830(%rip),%edx        # 605520 <authkey>
  401cf0:	eb 05                	jmp    401cf7 <notify_server+0x75>
  401cf2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401cf7:	85 db                	test   %ebx,%ebx
  401cf9:	74 08                	je     401d03 <notify_server+0x81>
  401cfb:	41 b9 c1 33 40 00    	mov    $0x4033c1,%r9d
  401d01:	eb 06                	jmp    401d09 <notify_server+0x87>
  401d03:	41 b9 c6 33 40 00    	mov    $0x4033c6,%r9d
  401d09:	48 c7 44 24 18 40 55 	movq   $0x605540,0x18(%rsp)
  401d10:	60 00 
  401d12:	89 74 24 10          	mov    %esi,0x10(%rsp)
  401d16:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401d1a:	89 14 24             	mov    %edx,(%rsp)
  401d1d:	44 8b 05 44 34 20 00 	mov    0x203444(%rip),%r8d        # 605168 <target_id>
  401d24:	b9 cb 33 40 00       	mov    $0x4033cb,%ecx
  401d29:	ba 00 20 00 00       	mov    $0x2000,%edx
  401d2e:	be 01 00 00 00       	mov    $0x1,%esi
  401d33:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401d38:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3d:	e8 5e f1 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401d42:	83 3d 5f 37 20 00 00 	cmpl   $0x0,0x20375f(%rip)        # 6054a8 <notify>
  401d49:	0f 84 86 00 00 00    	je     401dd5 <notify_server+0x153>
  401d4f:	85 db                	test   %ebx,%ebx
  401d51:	74 70                	je     401dc3 <notify_server+0x141>
  401d53:	4c 8d 8c 24 20 20 00 	lea    0x2020(%rsp),%r9
  401d5a:	00 
  401d5b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d61:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  401d66:	48 8b 15 03 34 20 00 	mov    0x203403(%rip),%rdx        # 605170 <lab>
  401d6d:	48 8b 35 04 34 20 00 	mov    0x203404(%rip),%rsi        # 605178 <course>
  401d74:	48 8b 3d e5 33 20 00 	mov    0x2033e5(%rip),%rdi        # 605160 <user_id>
  401d7b:	e8 be 10 00 00       	callq  402e3e <driver_post>
  401d80:	85 c0                	test   %eax,%eax
  401d82:	79 26                	jns    401daa <notify_server+0x128>
  401d84:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  401d8b:	00 
  401d8c:	be e7 33 40 00       	mov    $0x4033e7,%esi
  401d91:	bf 01 00 00 00       	mov    $0x1,%edi
  401d96:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9b:	e8 80 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401da0:	bf 01 00 00 00       	mov    $0x1,%edi
  401da5:	e8 c6 f0 ff ff       	callq  400e70 <exit@plt>
  401daa:	bf 10 35 40 00       	mov    $0x403510,%edi
  401daf:	e8 2c ef ff ff       	callq  400ce0 <puts@plt>
  401db4:	bf f3 33 40 00       	mov    $0x4033f3,%edi
  401db9:	e8 22 ef ff ff       	callq  400ce0 <puts@plt>
  401dbe:	e9 a2 00 00 00       	jmpq   401e65 <notify_server+0x1e3>
  401dc3:	bf fd 33 40 00       	mov    $0x4033fd,%edi
  401dc8:	e8 13 ef ff ff       	callq  400ce0 <puts@plt>
  401dcd:	0f 1f 00             	nopl   (%rax)
  401dd0:	e9 90 00 00 00       	jmpq   401e65 <notify_server+0x1e3>
  401dd5:	85 db                	test   %ebx,%ebx
  401dd7:	74 09                	je     401de2 <notify_server+0x160>
  401dd9:	ba c1 33 40 00       	mov    $0x4033c1,%edx
  401dde:	66 90                	xchg   %ax,%ax
  401de0:	eb 05                	jmp    401de7 <notify_server+0x165>
  401de2:	ba c6 33 40 00       	mov    $0x4033c6,%edx
  401de7:	be 48 35 40 00       	mov    $0x403548,%esi
  401dec:	bf 01 00 00 00       	mov    $0x1,%edi
  401df1:	b8 00 00 00 00       	mov    $0x0,%eax
  401df6:	e8 25 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dfb:	48 8b 15 5e 33 20 00 	mov    0x20335e(%rip),%rdx        # 605160 <user_id>
  401e02:	be 04 34 40 00       	mov    $0x403404,%esi
  401e07:	bf 01 00 00 00       	mov    $0x1,%edi
  401e0c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e11:	e8 0a f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e16:	48 8b 15 5b 33 20 00 	mov    0x20335b(%rip),%rdx        # 605178 <course>
  401e1d:	be 11 34 40 00       	mov    $0x403411,%esi
  401e22:	bf 01 00 00 00       	mov    $0x1,%edi
  401e27:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2c:	e8 ef ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e31:	48 8b 15 38 33 20 00 	mov    0x203338(%rip),%rdx        # 605170 <lab>
  401e38:	be 1d 34 40 00       	mov    $0x40341d,%esi
  401e3d:	bf 01 00 00 00       	mov    $0x1,%edi
  401e42:	b8 00 00 00 00       	mov    $0x0,%eax
  401e47:	e8 d4 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e4c:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
  401e51:	be 26 34 40 00       	mov    $0x403426,%esi
  401e56:	bf 01 00 00 00       	mov    $0x1,%edi
  401e5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e60:	e8 bb ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e65:	48 8b 84 24 28 40 00 	mov    0x4028(%rsp),%rax
  401e6c:	00 
  401e6d:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e74:	00 00 
  401e76:	74 05                	je     401e7d <notify_server+0x1fb>
  401e78:	e8 83 ee ff ff       	callq  400d00 <__stack_chk_fail@plt>
  401e7d:	48 81 c4 30 40 00 00 	add    $0x4030,%rsp
  401e84:	5b                   	pop    %rbx
  401e85:	c3                   	retq   

0000000000401e86 <validate>:
  401e86:	53                   	push   %rbx
  401e87:	89 fb                	mov    %edi,%ebx
  401e89:	83 3d 98 36 20 00 00 	cmpl   $0x0,0x203698(%rip)        # 605528 <is_checker>
  401e90:	74 6b                	je     401efd <validate+0x77>
  401e92:	39 3d 84 36 20 00    	cmp    %edi,0x203684(%rip)        # 60551c <vlevel>
  401e98:	74 14                	je     401eae <validate+0x28>
  401e9a:	bf 32 34 40 00       	mov    $0x403432,%edi
  401e9f:	e8 3c ee ff ff       	callq  400ce0 <puts@plt>
  401ea4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ea9:	e8 4d fd ff ff       	callq  401bfb <check_fail>
  401eae:	8b 15 64 36 20 00    	mov    0x203664(%rip),%edx        # 605518 <check_level>
  401eb4:	39 fa                	cmp    %edi,%edx
  401eb6:	74 20                	je     401ed8 <validate+0x52>
  401eb8:	89 f9                	mov    %edi,%ecx
  401eba:	be 70 35 40 00       	mov    $0x403570,%esi
  401ebf:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ec9:	e8 52 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ece:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed3:	e8 23 fd ff ff       	callq  401bfb <check_fail>
  401ed8:	0f be 15 69 42 20 00 	movsbl 0x204269(%rip),%edx        # 606148 <target_prefix>
  401edf:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401ee5:	89 f9                	mov    %edi,%ecx
  401ee7:	be 50 34 40 00       	mov    $0x403450,%esi
  401eec:	bf 01 00 00 00       	mov    $0x1,%edi
  401ef1:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef6:	e8 25 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401efb:	eb 49                	jmp    401f46 <validate+0xc0>
  401efd:	39 3d 19 36 20 00    	cmp    %edi,0x203619(%rip)        # 60551c <vlevel>
  401f03:	74 18                	je     401f1d <validate+0x97>
  401f05:	bf 32 34 40 00       	mov    $0x403432,%edi
  401f0a:	e8 d1 ed ff ff       	callq  400ce0 <puts@plt>
  401f0f:	89 de                	mov    %ebx,%esi
  401f11:	bf 00 00 00 00       	mov    $0x0,%edi
  401f16:	e8 67 fd ff ff       	callq  401c82 <notify_server>
  401f1b:	eb 29                	jmp    401f46 <validate+0xc0>
  401f1d:	0f be 0d 24 42 20 00 	movsbl 0x204224(%rip),%ecx        # 606148 <target_prefix>
  401f24:	89 fa                	mov    %edi,%edx
  401f26:	be 98 35 40 00       	mov    $0x403598,%esi
  401f2b:	bf 01 00 00 00       	mov    $0x1,%edi
  401f30:	b8 00 00 00 00       	mov    $0x0,%eax
  401f35:	e8 e6 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f3a:	89 de                	mov    %ebx,%esi
  401f3c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f41:	e8 3c fd ff ff       	callq  401c82 <notify_server>
  401f46:	5b                   	pop    %rbx
  401f47:	c3                   	retq   

0000000000401f48 <fail>:
  401f48:	48 83 ec 08          	sub    $0x8,%rsp
  401f4c:	83 3d d5 35 20 00 00 	cmpl   $0x0,0x2035d5(%rip)        # 605528 <is_checker>
  401f53:	74 0a                	je     401f5f <fail+0x17>
  401f55:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5a:	e8 9c fc ff ff       	callq  401bfb <check_fail>
  401f5f:	89 fe                	mov    %edi,%esi
  401f61:	bf 00 00 00 00       	mov    $0x0,%edi
  401f66:	e8 17 fd ff ff       	callq  401c82 <notify_server>
  401f6b:	48 83 c4 08          	add    $0x8,%rsp
  401f6f:	c3                   	retq   

0000000000401f70 <bushandler>:
  401f70:	48 83 ec 08          	sub    $0x8,%rsp
  401f74:	83 3d ad 35 20 00 00 	cmpl   $0x0,0x2035ad(%rip)        # 605528 <is_checker>
  401f7b:	74 14                	je     401f91 <bushandler+0x21>
  401f7d:	bf 65 34 40 00       	mov    $0x403465,%edi
  401f82:	e8 59 ed ff ff       	callq  400ce0 <puts@plt>
  401f87:	b8 00 00 00 00       	mov    $0x0,%eax
  401f8c:	e8 6a fc ff ff       	callq  401bfb <check_fail>
  401f91:	bf d0 35 40 00       	mov    $0x4035d0,%edi
  401f96:	e8 45 ed ff ff       	callq  400ce0 <puts@plt>
  401f9b:	bf 6f 34 40 00       	mov    $0x40346f,%edi
  401fa0:	e8 3b ed ff ff       	callq  400ce0 <puts@plt>
  401fa5:	be 00 00 00 00       	mov    $0x0,%esi
  401faa:	bf 00 00 00 00       	mov    $0x0,%edi
  401faf:	e8 ce fc ff ff       	callq  401c82 <notify_server>
  401fb4:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb9:	e8 b2 ee ff ff       	callq  400e70 <exit@plt>

0000000000401fbe <seghandler>:
  401fbe:	48 83 ec 08          	sub    $0x8,%rsp
  401fc2:	83 3d 5f 35 20 00 00 	cmpl   $0x0,0x20355f(%rip)        # 605528 <is_checker>
  401fc9:	74 14                	je     401fdf <seghandler+0x21>
  401fcb:	bf 85 34 40 00       	mov    $0x403485,%edi
  401fd0:	e8 0b ed ff ff       	callq  400ce0 <puts@plt>
  401fd5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fda:	e8 1c fc ff ff       	callq  401bfb <check_fail>
  401fdf:	bf f0 35 40 00       	mov    $0x4035f0,%edi
  401fe4:	e8 f7 ec ff ff       	callq  400ce0 <puts@plt>
  401fe9:	bf 6f 34 40 00       	mov    $0x40346f,%edi
  401fee:	e8 ed ec ff ff       	callq  400ce0 <puts@plt>
  401ff3:	be 00 00 00 00       	mov    $0x0,%esi
  401ff8:	bf 00 00 00 00       	mov    $0x0,%edi
  401ffd:	e8 80 fc ff ff       	callq  401c82 <notify_server>
  402002:	bf 01 00 00 00       	mov    $0x1,%edi
  402007:	e8 64 ee ff ff       	callq  400e70 <exit@plt>

000000000040200c <illegalhandler>:
  40200c:	48 83 ec 08          	sub    $0x8,%rsp
  402010:	83 3d 11 35 20 00 00 	cmpl   $0x0,0x203511(%rip)        # 605528 <is_checker>
  402017:	74 14                	je     40202d <illegalhandler+0x21>
  402019:	bf 98 34 40 00       	mov    $0x403498,%edi
  40201e:	e8 bd ec ff ff       	callq  400ce0 <puts@plt>
  402023:	b8 00 00 00 00       	mov    $0x0,%eax
  402028:	e8 ce fb ff ff       	callq  401bfb <check_fail>
  40202d:	bf 18 36 40 00       	mov    $0x403618,%edi
  402032:	e8 a9 ec ff ff       	callq  400ce0 <puts@plt>
  402037:	bf 6f 34 40 00       	mov    $0x40346f,%edi
  40203c:	e8 9f ec ff ff       	callq  400ce0 <puts@plt>
  402041:	be 00 00 00 00       	mov    $0x0,%esi
  402046:	bf 00 00 00 00       	mov    $0x0,%edi
  40204b:	e8 32 fc ff ff       	callq  401c82 <notify_server>
  402050:	bf 01 00 00 00       	mov    $0x1,%edi
  402055:	e8 16 ee ff ff       	callq  400e70 <exit@plt>

000000000040205a <sigalrmhandler>:
  40205a:	48 83 ec 08          	sub    $0x8,%rsp
  40205e:	83 3d c3 34 20 00 00 	cmpl   $0x0,0x2034c3(%rip)        # 605528 <is_checker>
  402065:	74 14                	je     40207b <sigalrmhandler+0x21>
  402067:	bf ac 34 40 00       	mov    $0x4034ac,%edi
  40206c:	e8 6f ec ff ff       	callq  400ce0 <puts@plt>
  402071:	b8 00 00 00 00       	mov    $0x0,%eax
  402076:	e8 80 fb ff ff       	callq  401bfb <check_fail>
  40207b:	ba 05 00 00 00       	mov    $0x5,%edx
  402080:	be 48 36 40 00       	mov    $0x403648,%esi
  402085:	bf 01 00 00 00       	mov    $0x1,%edi
  40208a:	b8 00 00 00 00       	mov    $0x0,%eax
  40208f:	e8 8c ed ff ff       	callq  400e20 <__printf_chk@plt>
  402094:	be 00 00 00 00       	mov    $0x0,%esi
  402099:	bf 00 00 00 00       	mov    $0x0,%edi
  40209e:	e8 df fb ff ff       	callq  401c82 <notify_server>
  4020a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4020a8:	e8 c3 ed ff ff       	callq  400e70 <exit@plt>

00000000004020ad <launch>:
  4020ad:	55                   	push   %rbp
  4020ae:	48 89 e5             	mov    %rsp,%rbp
  4020b1:	48 83 ec 10          	sub    $0x10,%rsp
  4020b5:	48 89 fa             	mov    %rdi,%rdx
  4020b8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4020bf:	00 00 
  4020c1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4020c5:	31 c0                	xor    %eax,%eax
  4020c7:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  4020cb:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  4020cf:	48 29 c4             	sub    %rax,%rsp
  4020d2:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  4020d7:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  4020db:	be f4 00 00 00       	mov    $0xf4,%esi
  4020e0:	e8 3b ec ff ff       	callq  400d20 <memset@plt>
  4020e5:	48 8b 05 d4 33 20 00 	mov    0x2033d4(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4020ec:	48 39 05 1d 34 20 00 	cmp    %rax,0x20341d(%rip)        # 605510 <infile>
  4020f3:	75 14                	jne    402109 <launch+0x5c>
  4020f5:	be b4 34 40 00       	mov    $0x4034b4,%esi
  4020fa:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ff:	b8 00 00 00 00       	mov    $0x0,%eax
  402104:	e8 17 ed ff ff       	callq  400e20 <__printf_chk@plt>
  402109:	c7 05 09 34 20 00 00 	movl   $0x0,0x203409(%rip)        # 60551c <vlevel>
  402110:	00 00 00 
  402113:	b8 00 00 00 00       	mov    $0x0,%eax
  402118:	e8 1b f9 ff ff       	callq  401a38 <test>
  40211d:	83 3d 04 34 20 00 00 	cmpl   $0x0,0x203404(%rip)        # 605528 <is_checker>
  402124:	74 14                	je     40213a <launch+0x8d>
  402126:	bf c1 34 40 00       	mov    $0x4034c1,%edi
  40212b:	e8 b0 eb ff ff       	callq  400ce0 <puts@plt>
  402130:	b8 00 00 00 00       	mov    $0x0,%eax
  402135:	e8 c1 fa ff ff       	callq  401bfb <check_fail>
  40213a:	bf cc 34 40 00       	mov    $0x4034cc,%edi
  40213f:	e8 9c eb ff ff       	callq  400ce0 <puts@plt>
  402144:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402148:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40214f:	00 00 
  402151:	74 05                	je     402158 <launch+0xab>
  402153:	e8 a8 eb ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402158:	c9                   	leaveq 
  402159:	c3                   	retq   

000000000040215a <stable_launch>:
  40215a:	53                   	push   %rbx
  40215b:	48 89 3d a6 33 20 00 	mov    %rdi,0x2033a6(%rip)        # 605508 <global_offset>
  402162:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402168:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40216e:	b9 32 01 00 00       	mov    $0x132,%ecx
  402173:	ba 07 00 00 00       	mov    $0x7,%edx
  402178:	be 00 00 10 00       	mov    $0x100000,%esi
  40217d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402182:	e8 89 eb ff ff       	callq  400d10 <mmap@plt>
  402187:	48 89 c3             	mov    %rax,%rbx
  40218a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  402190:	74 37                	je     4021c9 <stable_launch+0x6f>
  402192:	be 00 00 10 00       	mov    $0x100000,%esi
  402197:	48 89 c7             	mov    %rax,%rdi
  40219a:	e8 71 ec ff ff       	callq  400e10 <munmap@plt>
  40219f:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  4021a4:	ba 80 36 40 00       	mov    $0x403680,%edx
  4021a9:	be 01 00 00 00       	mov    $0x1,%esi
  4021ae:	48 8b 3d 33 33 20 00 	mov    0x203333(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  4021b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ba:	e8 d1 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  4021bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c4:	e8 a7 ec ff ff       	callq  400e70 <exit@plt>
  4021c9:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  4021d0:	48 89 15 79 3f 20 00 	mov    %rdx,0x203f79(%rip)        # 606150 <stack_top>
  4021d7:	48 89 e0             	mov    %rsp,%rax
  4021da:	48 89 d4             	mov    %rdx,%rsp
  4021dd:	48 89 c2             	mov    %rax,%rdx
  4021e0:	48 89 15 19 33 20 00 	mov    %rdx,0x203319(%rip)        # 605500 <global_save_stack>
  4021e7:	48 8b 3d 1a 33 20 00 	mov    0x20331a(%rip),%rdi        # 605508 <global_offset>
  4021ee:	e8 ba fe ff ff       	callq  4020ad <launch>
  4021f3:	48 8b 05 06 33 20 00 	mov    0x203306(%rip),%rax        # 605500 <global_save_stack>
  4021fa:	48 89 c4             	mov    %rax,%rsp
  4021fd:	be 00 00 10 00       	mov    $0x100000,%esi
  402202:	48 89 df             	mov    %rbx,%rdi
  402205:	e8 06 ec ff ff       	callq  400e10 <munmap@plt>
  40220a:	5b                   	pop    %rbx
  40220b:	c3                   	retq   
  40220c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402210 <rio_readinitb>:
  402210:	89 37                	mov    %esi,(%rdi)
  402212:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  402219:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40221d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  402221:	c3                   	retq   

0000000000402222 <sigalrm_handler>:
  402222:	48 83 ec 08          	sub    $0x8,%rsp
  402226:	b9 00 00 00 00       	mov    $0x0,%ecx
  40222b:	ba c0 36 40 00       	mov    $0x4036c0,%edx
  402230:	be 01 00 00 00       	mov    $0x1,%esi
  402235:	48 8b 3d ac 32 20 00 	mov    0x2032ac(%rip),%rdi        # 6054e8 <stderr@@GLIBC_2.2.5>
  40223c:	b8 00 00 00 00       	mov    $0x0,%eax
  402241:	e8 4a ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  402246:	bf 01 00 00 00       	mov    $0x1,%edi
  40224b:	e8 20 ec ff ff       	callq  400e70 <exit@plt>

0000000000402250 <rio_writen>:
  402250:	41 55                	push   %r13
  402252:	41 54                	push   %r12
  402254:	55                   	push   %rbp
  402255:	53                   	push   %rbx
  402256:	48 83 ec 08          	sub    $0x8,%rsp
  40225a:	41 89 fc             	mov    %edi,%r12d
  40225d:	48 89 f5             	mov    %rsi,%rbp
  402260:	49 89 d5             	mov    %rdx,%r13
  402263:	48 89 d3             	mov    %rdx,%rbx
  402266:	eb 28                	jmp    402290 <rio_writen+0x40>
  402268:	48 89 da             	mov    %rbx,%rdx
  40226b:	48 89 ee             	mov    %rbp,%rsi
  40226e:	44 89 e7             	mov    %r12d,%edi
  402271:	e8 7a ea ff ff       	callq  400cf0 <write@plt>
  402276:	48 85 c0             	test   %rax,%rax
  402279:	7f 0f                	jg     40228a <rio_writen+0x3a>
  40227b:	e8 20 ea ff ff       	callq  400ca0 <__errno_location@plt>
  402280:	83 38 04             	cmpl   $0x4,(%rax)
  402283:	75 15                	jne    40229a <rio_writen+0x4a>
  402285:	b8 00 00 00 00       	mov    $0x0,%eax
  40228a:	48 29 c3             	sub    %rax,%rbx
  40228d:	48 01 c5             	add    %rax,%rbp
  402290:	48 85 db             	test   %rbx,%rbx
  402293:	75 d3                	jne    402268 <rio_writen+0x18>
  402295:	4c 89 e8             	mov    %r13,%rax
  402298:	eb 07                	jmp    4022a1 <rio_writen+0x51>
  40229a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022a1:	48 83 c4 08          	add    $0x8,%rsp
  4022a5:	5b                   	pop    %rbx
  4022a6:	5d                   	pop    %rbp
  4022a7:	41 5c                	pop    %r12
  4022a9:	41 5d                	pop    %r13
  4022ab:	c3                   	retq   

00000000004022ac <rio_read>:
  4022ac:	41 56                	push   %r14
  4022ae:	41 55                	push   %r13
  4022b0:	41 54                	push   %r12
  4022b2:	55                   	push   %rbp
  4022b3:	53                   	push   %rbx
  4022b4:	48 89 fb             	mov    %rdi,%rbx
  4022b7:	49 89 f6             	mov    %rsi,%r14
  4022ba:	49 89 d5             	mov    %rdx,%r13
  4022bd:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  4022c1:	eb 2a                	jmp    4022ed <rio_read+0x41>
  4022c3:	8b 3b                	mov    (%rbx),%edi
  4022c5:	ba 00 20 00 00       	mov    $0x2000,%edx
  4022ca:	4c 89 e6             	mov    %r12,%rsi
  4022cd:	e8 7e ea ff ff       	callq  400d50 <read@plt>
  4022d2:	89 43 04             	mov    %eax,0x4(%rbx)
  4022d5:	85 c0                	test   %eax,%eax
  4022d7:	79 0c                	jns    4022e5 <rio_read+0x39>
  4022d9:	e8 c2 e9 ff ff       	callq  400ca0 <__errno_location@plt>
  4022de:	83 38 04             	cmpl   $0x4,(%rax)
  4022e1:	74 0a                	je     4022ed <rio_read+0x41>
  4022e3:	eb 37                	jmp    40231c <rio_read+0x70>
  4022e5:	85 c0                	test   %eax,%eax
  4022e7:	74 3c                	je     402325 <rio_read+0x79>
  4022e9:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  4022ed:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4022f0:	85 ed                	test   %ebp,%ebp
  4022f2:	7e cf                	jle    4022c3 <rio_read+0x17>
  4022f4:	89 e8                	mov    %ebp,%eax
  4022f6:	4c 39 e8             	cmp    %r13,%rax
  4022f9:	72 03                	jb     4022fe <rio_read+0x52>
  4022fb:	44 89 ed             	mov    %r13d,%ebp
  4022fe:	4c 63 e5             	movslq %ebp,%r12
  402301:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402305:	4c 89 e2             	mov    %r12,%rdx
  402308:	4c 89 f7             	mov    %r14,%rdi
  40230b:	e8 b0 ea ff ff       	callq  400dc0 <memcpy@plt>
  402310:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402314:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402317:	4c 89 e0             	mov    %r12,%rax
  40231a:	eb 0e                	jmp    40232a <rio_read+0x7e>
  40231c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402323:	eb 05                	jmp    40232a <rio_read+0x7e>
  402325:	b8 00 00 00 00       	mov    $0x0,%eax
  40232a:	5b                   	pop    %rbx
  40232b:	5d                   	pop    %rbp
  40232c:	41 5c                	pop    %r12
  40232e:	41 5d                	pop    %r13
  402330:	41 5e                	pop    %r14
  402332:	c3                   	retq   

0000000000402333 <rio_readlineb>:
  402333:	41 55                	push   %r13
  402335:	41 54                	push   %r12
  402337:	55                   	push   %rbp
  402338:	53                   	push   %rbx
  402339:	48 83 ec 18          	sub    $0x18,%rsp
  40233d:	49 89 fd             	mov    %rdi,%r13
  402340:	48 89 f5             	mov    %rsi,%rbp
  402343:	49 89 d4             	mov    %rdx,%r12
  402346:	bb 01 00 00 00       	mov    $0x1,%ebx
  40234b:	eb 3e                	jmp    40238b <rio_readlineb+0x58>
  40234d:	ba 01 00 00 00       	mov    $0x1,%edx
  402352:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402357:	4c 89 ef             	mov    %r13,%rdi
  40235a:	e8 4d ff ff ff       	callq  4022ac <rio_read>
  40235f:	83 f8 01             	cmp    $0x1,%eax
  402362:	75 12                	jne    402376 <rio_readlineb+0x43>
  402364:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402368:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40236d:	88 45 00             	mov    %al,0x0(%rbp)
  402370:	3c 0a                	cmp    $0xa,%al
  402372:	75 10                	jne    402384 <rio_readlineb+0x51>
  402374:	eb 1c                	jmp    402392 <rio_readlineb+0x5f>
  402376:	85 c0                	test   %eax,%eax
  402378:	75 24                	jne    40239e <rio_readlineb+0x6b>
  40237a:	48 83 fb 01          	cmp    $0x1,%rbx
  40237e:	66 90                	xchg   %ax,%ax
  402380:	75 13                	jne    402395 <rio_readlineb+0x62>
  402382:	eb 23                	jmp    4023a7 <rio_readlineb+0x74>
  402384:	48 83 c3 01          	add    $0x1,%rbx
  402388:	48 89 d5             	mov    %rdx,%rbp
  40238b:	4c 39 e3             	cmp    %r12,%rbx
  40238e:	72 bd                	jb     40234d <rio_readlineb+0x1a>
  402390:	eb 03                	jmp    402395 <rio_readlineb+0x62>
  402392:	48 89 d5             	mov    %rdx,%rbp
  402395:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402399:	48 89 d8             	mov    %rbx,%rax
  40239c:	eb 0e                	jmp    4023ac <rio_readlineb+0x79>
  40239e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023a5:	eb 05                	jmp    4023ac <rio_readlineb+0x79>
  4023a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ac:	48 83 c4 18          	add    $0x18,%rsp
  4023b0:	5b                   	pop    %rbx
  4023b1:	5d                   	pop    %rbp
  4023b2:	41 5c                	pop    %r12
  4023b4:	41 5d                	pop    %r13
  4023b6:	c3                   	retq   

00000000004023b7 <urlencode>:
  4023b7:	41 54                	push   %r12
  4023b9:	55                   	push   %rbp
  4023ba:	53                   	push   %rbx
  4023bb:	48 83 ec 10          	sub    $0x10,%rsp
  4023bf:	48 89 fb             	mov    %rdi,%rbx
  4023c2:	48 89 f5             	mov    %rsi,%rbp
  4023c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023cc:	00 00 
  4023ce:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4023d3:	31 c0                	xor    %eax,%eax
  4023d5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023dc:	f2 ae                	repnz scas %es:(%rdi),%al
  4023de:	48 f7 d1             	not    %rcx
  4023e1:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4023e4:	e9 aa 00 00 00       	jmpq   402493 <urlencode+0xdc>
  4023e9:	44 0f b6 03          	movzbl (%rbx),%r8d
  4023ed:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023f1:	0f 94 c2             	sete   %dl
  4023f4:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023f8:	0f 94 c0             	sete   %al
  4023fb:	08 c2                	or     %al,%dl
  4023fd:	75 24                	jne    402423 <urlencode+0x6c>
  4023ff:	41 80 f8 2e          	cmp    $0x2e,%r8b
  402403:	74 1e                	je     402423 <urlencode+0x6c>
  402405:	41 80 f8 5f          	cmp    $0x5f,%r8b
  402409:	74 18                	je     402423 <urlencode+0x6c>
  40240b:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  40240f:	3c 09                	cmp    $0x9,%al
  402411:	76 10                	jbe    402423 <urlencode+0x6c>
  402413:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  402417:	3c 19                	cmp    $0x19,%al
  402419:	76 08                	jbe    402423 <urlencode+0x6c>
  40241b:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  40241f:	3c 19                	cmp    $0x19,%al
  402421:	77 0a                	ja     40242d <urlencode+0x76>
  402423:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  402427:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40242b:	eb 5f                	jmp    40248c <urlencode+0xd5>
  40242d:	41 80 f8 20          	cmp    $0x20,%r8b
  402431:	75 0a                	jne    40243d <urlencode+0x86>
  402433:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402437:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40243b:	eb 4f                	jmp    40248c <urlencode+0xd5>
  40243d:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402441:	3c 5f                	cmp    $0x5f,%al
  402443:	0f 96 c2             	setbe  %dl
  402446:	41 80 f8 09          	cmp    $0x9,%r8b
  40244a:	0f 94 c0             	sete   %al
  40244d:	08 c2                	or     %al,%dl
  40244f:	74 50                	je     4024a1 <urlencode+0xea>
  402451:	45 0f b6 c0          	movzbl %r8b,%r8d
  402455:	b9 58 37 40 00       	mov    $0x403758,%ecx
  40245a:	ba 08 00 00 00       	mov    $0x8,%edx
  40245f:	be 01 00 00 00       	mov    $0x1,%esi
  402464:	48 89 e7             	mov    %rsp,%rdi
  402467:	b8 00 00 00 00       	mov    $0x0,%eax
  40246c:	e8 2f ea ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402471:	0f b6 04 24          	movzbl (%rsp),%eax
  402475:	88 45 00             	mov    %al,0x0(%rbp)
  402478:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40247d:	88 45 01             	mov    %al,0x1(%rbp)
  402480:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402485:	88 45 02             	mov    %al,0x2(%rbp)
  402488:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40248c:	48 83 c3 01          	add    $0x1,%rbx
  402490:	44 89 e0             	mov    %r12d,%eax
  402493:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402497:	85 c0                	test   %eax,%eax
  402499:	0f 85 4a ff ff ff    	jne    4023e9 <urlencode+0x32>
  40249f:	eb 05                	jmp    4024a6 <urlencode+0xef>
  4024a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024a6:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  4024ab:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4024b2:	00 00 
  4024b4:	74 05                	je     4024bb <urlencode+0x104>
  4024b6:	e8 45 e8 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  4024bb:	48 83 c4 10          	add    $0x10,%rsp
  4024bf:	5b                   	pop    %rbx
  4024c0:	5d                   	pop    %rbp
  4024c1:	41 5c                	pop    %r12
  4024c3:	c3                   	retq   

00000000004024c4 <submitr>:
  4024c4:	41 57                	push   %r15
  4024c6:	41 56                	push   %r14
  4024c8:	41 55                	push   %r13
  4024ca:	41 54                	push   %r12
  4024cc:	55                   	push   %rbp
  4024cd:	53                   	push   %rbx
  4024ce:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
  4024d5:	49 89 fc             	mov    %rdi,%r12
  4024d8:	89 74 24 14          	mov    %esi,0x14(%rsp)
  4024dc:	49 89 d7             	mov    %rdx,%r15
  4024df:	49 89 ce             	mov    %rcx,%r14
  4024e2:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  4024e7:	4d 89 cd             	mov    %r9,%r13
  4024ea:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
  4024f1:	00 
  4024f2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024f9:	00 00 
  4024fb:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
  402502:	00 
  402503:	31 c0                	xor    %eax,%eax
  402505:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
  40250c:	00 
  40250d:	ba 00 00 00 00       	mov    $0x0,%edx
  402512:	be 01 00 00 00       	mov    $0x1,%esi
  402517:	bf 02 00 00 00       	mov    $0x2,%edi
  40251c:	e8 8f e9 ff ff       	callq  400eb0 <socket@plt>
  402521:	89 c5                	mov    %eax,%ebp
  402523:	85 c0                	test   %eax,%eax
  402525:	79 4e                	jns    402575 <submitr+0xb1>
  402527:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40252e:	3a 20 43 
  402531:	48 89 03             	mov    %rax,(%rbx)
  402534:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40253b:	20 75 6e 
  40253e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402542:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402549:	74 6f 20 
  40254c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402550:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402557:	65 20 73 
  40255a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40255e:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402565:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40256b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402570:	e9 84 06 00 00       	jmpq   402bf9 <submitr+0x735>
  402575:	4c 89 e7             	mov    %r12,%rdi
  402578:	e8 03 e8 ff ff       	callq  400d80 <gethostbyname@plt>
  40257d:	48 85 c0             	test   %rax,%rax
  402580:	75 67                	jne    4025e9 <submitr+0x125>
  402582:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402589:	3a 20 44 
  40258c:	48 89 03             	mov    %rax,(%rbx)
  40258f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402596:	20 75 6e 
  402599:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40259d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025a4:	74 6f 20 
  4025a7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025ab:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4025b2:	76 65 20 
  4025b5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025b9:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4025c0:	72 20 61 
  4025c3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025c7:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4025ce:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4025d4:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4025d8:	89 ef                	mov    %ebp,%edi
  4025da:	e8 61 e7 ff ff       	callq  400d40 <close@plt>
  4025df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025e4:	e9 10 06 00 00       	jmpq   402bf9 <submitr+0x735>
  4025e9:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
  4025f0:	00 00 
  4025f2:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
  4025f9:	00 00 
  4025fb:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
  402602:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402606:	48 8b 40 18          	mov    0x18(%rax),%rax
  40260a:	48 8b 30             	mov    (%rax),%rsi
  40260d:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
  402612:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402617:	e8 74 e7 ff ff       	callq  400d90 <__memmove_chk@plt>
  40261c:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  402621:	66 c1 c8 08          	ror    $0x8,%ax
  402625:	66 89 44 24 32       	mov    %ax,0x32(%rsp)
  40262a:	ba 10 00 00 00       	mov    $0x10,%edx
  40262f:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  402634:	89 ef                	mov    %ebp,%edi
  402636:	e8 45 e8 ff ff       	callq  400e80 <connect@plt>
  40263b:	85 c0                	test   %eax,%eax
  40263d:	79 59                	jns    402698 <submitr+0x1d4>
  40263f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402646:	3a 20 55 
  402649:	48 89 03             	mov    %rax,(%rbx)
  40264c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402653:	20 74 6f 
  402656:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40265a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402661:	65 63 74 
  402664:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402668:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40266f:	68 65 20 
  402672:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402676:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40267d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402683:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402687:	89 ef                	mov    %ebp,%edi
  402689:	e8 b2 e6 ff ff       	callq  400d40 <close@plt>
  40268e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402693:	e9 61 05 00 00       	jmpq   402bf9 <submitr+0x735>
  402698:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40269f:	4c 89 ef             	mov    %r13,%rdi
  4026a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4026a7:	48 89 d1             	mov    %rdx,%rcx
  4026aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4026ac:	48 f7 d1             	not    %rcx
  4026af:	48 89 ce             	mov    %rcx,%rsi
  4026b2:	4c 89 ff             	mov    %r15,%rdi
  4026b5:	48 89 d1             	mov    %rdx,%rcx
  4026b8:	f2 ae                	repnz scas %es:(%rdi),%al
  4026ba:	48 f7 d1             	not    %rcx
  4026bd:	49 89 c8             	mov    %rcx,%r8
  4026c0:	4c 89 f7             	mov    %r14,%rdi
  4026c3:	48 89 d1             	mov    %rdx,%rcx
  4026c6:	f2 ae                	repnz scas %es:(%rdi),%al
  4026c8:	49 29 c8             	sub    %rcx,%r8
  4026cb:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  4026d0:	48 89 d1             	mov    %rdx,%rcx
  4026d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026d5:	49 29 c8             	sub    %rcx,%r8
  4026d8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4026dd:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4026e2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026e8:	76 72                	jbe    40275c <submitr+0x298>
  4026ea:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026f1:	3a 20 52 
  4026f4:	48 89 03             	mov    %rax,(%rbx)
  4026f7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026fe:	20 73 74 
  402701:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402705:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40270c:	74 6f 6f 
  40270f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402713:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40271a:	65 2e 20 
  40271d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402721:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402728:	61 73 65 
  40272b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40272f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402736:	49 54 52 
  402739:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40273d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402744:	55 46 00 
  402747:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40274b:	89 ef                	mov    %ebp,%edi
  40274d:	e8 ee e5 ff ff       	callq  400d40 <close@plt>
  402752:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402757:	e9 9d 04 00 00       	jmpq   402bf9 <submitr+0x735>
  40275c:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402763:	00 
  402764:	b9 00 04 00 00       	mov    $0x400,%ecx
  402769:	b8 00 00 00 00       	mov    $0x0,%eax
  40276e:	48 89 f7             	mov    %rsi,%rdi
  402771:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402774:	4c 89 ef             	mov    %r13,%rdi
  402777:	e8 3b fc ff ff       	callq  4023b7 <urlencode>
  40277c:	85 c0                	test   %eax,%eax
  40277e:	0f 89 8a 00 00 00    	jns    40280e <submitr+0x34a>
  402784:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40278b:	3a 20 52 
  40278e:	48 89 03             	mov    %rax,(%rbx)
  402791:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402798:	20 73 74 
  40279b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40279f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4027a6:	63 6f 6e 
  4027a9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4027ad:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4027b4:	20 61 6e 
  4027b7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027bb:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4027c2:	67 61 6c 
  4027c5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027c9:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4027d0:	6e 70 72 
  4027d3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027d7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4027de:	6c 65 20 
  4027e1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027e5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4027ec:	63 74 65 
  4027ef:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4027f3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4027f9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4027fd:	89 ef                	mov    %ebp,%edi
  4027ff:	e8 3c e5 ff ff       	callq  400d40 <close@plt>
  402804:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402809:	e9 eb 03 00 00       	jmpq   402bf9 <submitr+0x735>
  40280e:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
  402813:	48 8d 84 24 40 20 00 	lea    0x2040(%rsp),%rax
  40281a:	00 
  40281b:	48 89 04 24          	mov    %rax,(%rsp)
  40281f:	4d 89 f9             	mov    %r15,%r9
  402822:	4d 89 f0             	mov    %r14,%r8
  402825:	b9 e8 36 40 00       	mov    $0x4036e8,%ecx
  40282a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40282f:	be 01 00 00 00       	mov    $0x1,%esi
  402834:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402839:	b8 00 00 00 00       	mov    $0x0,%eax
  40283e:	e8 5d e6 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402843:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  402848:	b8 00 00 00 00       	mov    $0x0,%eax
  40284d:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402854:	f2 ae                	repnz scas %es:(%rdi),%al
  402856:	48 f7 d1             	not    %rcx
  402859:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40285d:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402862:	89 ef                	mov    %ebp,%edi
  402864:	e8 e7 f9 ff ff       	callq  402250 <rio_writen>
  402869:	48 85 c0             	test   %rax,%rax
  40286c:	79 6e                	jns    4028dc <submitr+0x418>
  40286e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402875:	3a 20 43 
  402878:	48 89 03             	mov    %rax,(%rbx)
  40287b:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402882:	20 75 6e 
  402885:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402889:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402890:	74 6f 20 
  402893:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402897:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  40289e:	20 74 6f 
  4028a1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028a5:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4028ac:	72 65 73 
  4028af:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028b3:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4028ba:	65 72 76 
  4028bd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028c1:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4028c7:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4028cb:	89 ef                	mov    %ebp,%edi
  4028cd:	e8 6e e4 ff ff       	callq  400d40 <close@plt>
  4028d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028d7:	e9 1d 03 00 00       	jmpq   402bf9 <submitr+0x735>
  4028dc:	89 ee                	mov    %ebp,%esi
  4028de:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4028e5:	00 
  4028e6:	e8 25 f9 ff ff       	callq  402210 <rio_readinitb>
  4028eb:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028f0:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4028f5:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4028fc:	00 
  4028fd:	e8 31 fa ff ff       	callq  402333 <rio_readlineb>
  402902:	48 85 c0             	test   %rax,%rax
  402905:	7f 7d                	jg     402984 <submitr+0x4c0>
  402907:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40290e:	3a 20 43 
  402911:	48 89 03             	mov    %rax,(%rbx)
  402914:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40291b:	20 75 6e 
  40291e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402922:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402929:	74 6f 20 
  40292c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402930:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402937:	66 69 72 
  40293a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40293e:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402945:	61 64 65 
  402948:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40294c:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  402953:	6d 20 72 
  402956:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40295a:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  402961:	20 73 65 
  402964:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402968:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40296f:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  402973:	89 ef                	mov    %ebp,%edi
  402975:	e8 c6 e3 ff ff       	callq  400d40 <close@plt>
  40297a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40297f:	e9 75 02 00 00       	jmpq   402bf9 <submitr+0x735>
  402984:	4c 8d 84 24 40 60 00 	lea    0x6040(%rsp),%r8
  40298b:	00 
  40298c:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
  402991:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
  402998:	00 
  402999:	be 5f 37 40 00       	mov    $0x40375f,%esi
  40299e:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  4029a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4029a8:	e8 53 e4 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  4029ad:	41 bc 0d 00 00 00    	mov    $0xd,%r12d
  4029b3:	41 bd 0a 00 00 00    	mov    $0xa,%r13d
  4029b9:	e9 95 00 00 00       	jmpq   402a53 <submitr+0x58f>
  4029be:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029c3:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  4029c8:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  4029cf:	00 
  4029d0:	e8 5e f9 ff ff       	callq  402333 <rio_readlineb>
  4029d5:	48 85 c0             	test   %rax,%rax
  4029d8:	7f 79                	jg     402a53 <submitr+0x58f>
  4029da:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029e1:	3a 20 43 
  4029e4:	48 89 03             	mov    %rax,(%rbx)
  4029e7:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029ee:	20 75 6e 
  4029f1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029f5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029fc:	74 6f 20 
  4029ff:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a03:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402a0a:	68 65 61 
  402a0d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a11:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402a18:	66 72 6f 
  402a1b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a1f:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  402a26:	20 72 65 
  402a29:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a2d:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  402a34:	73 65 72 
  402a37:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a3b:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402a42:	89 ef                	mov    %ebp,%edi
  402a44:	e8 f7 e2 ff ff       	callq  400d40 <close@plt>
  402a49:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a4e:	e9 a6 01 00 00       	jmpq   402bf9 <submitr+0x735>
  402a53:	0f b6 44 24 40       	movzbl 0x40(%rsp),%eax
  402a58:	44 89 e6             	mov    %r12d,%esi
  402a5b:	29 c6                	sub    %eax,%esi
  402a5d:	89 f0                	mov    %esi,%eax
  402a5f:	75 15                	jne    402a76 <submitr+0x5b2>
  402a61:	0f b6 44 24 41       	movzbl 0x41(%rsp),%eax
  402a66:	44 89 ea             	mov    %r13d,%edx
  402a69:	29 c2                	sub    %eax,%edx
  402a6b:	89 d0                	mov    %edx,%eax
  402a6d:	75 07                	jne    402a76 <submitr+0x5b2>
  402a6f:	0f b6 44 24 42       	movzbl 0x42(%rsp),%eax
  402a74:	f7 d8                	neg    %eax
  402a76:	85 c0                	test   %eax,%eax
  402a78:	0f 85 40 ff ff ff    	jne    4029be <submitr+0x4fa>
  402a7e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a83:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402a88:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
  402a8f:	00 
  402a90:	e8 9e f8 ff ff       	callq  402333 <rio_readlineb>
  402a95:	48 85 c0             	test   %rax,%rax
  402a98:	0f 8f 83 00 00 00    	jg     402b21 <submitr+0x65d>
  402a9e:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402aa5:	3a 20 43 
  402aa8:	48 89 03             	mov    %rax,(%rbx)
  402aab:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ab2:	20 75 6e 
  402ab5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402ab9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ac0:	74 6f 20 
  402ac3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ac7:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402ace:	73 74 61 
  402ad1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ad5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402adc:	65 73 73 
  402adf:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402ae3:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402aea:	72 6f 6d 
  402aed:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402af1:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402af8:	6c 74 20 
  402afb:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402aff:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402b06:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402b0c:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402b10:	89 ef                	mov    %ebp,%edi
  402b12:	e8 29 e2 ff ff       	callq  400d40 <close@plt>
  402b17:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b1c:	e9 d8 00 00 00       	jmpq   402bf9 <submitr+0x735>
  402b21:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
  402b26:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402b2d:	74 37                	je     402b66 <submitr+0x6a2>
  402b2f:	4c 8d 8c 24 40 60 00 	lea    0x6040(%rsp),%r9
  402b36:	00 
  402b37:	b9 28 37 40 00       	mov    $0x403728,%ecx
  402b3c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b43:	be 01 00 00 00       	mov    $0x1,%esi
  402b48:	48 89 df             	mov    %rbx,%rdi
  402b4b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b50:	e8 4b e3 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402b55:	89 ef                	mov    %ebp,%edi
  402b57:	e8 e4 e1 ff ff       	callq  400d40 <close@plt>
  402b5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b61:	e9 93 00 00 00       	jmpq   402bf9 <submitr+0x735>
  402b66:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
  402b6b:	48 89 df             	mov    %rbx,%rdi
  402b6e:	e8 5d e1 ff ff       	callq  400cd0 <strcpy@plt>
  402b73:	89 ef                	mov    %ebp,%edi
  402b75:	e8 c6 e1 ff ff       	callq  400d40 <close@plt>
  402b7a:	0f b6 03             	movzbl (%rbx),%eax
  402b7d:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b82:	29 c2                	sub    %eax,%edx
  402b84:	75 22                	jne    402ba8 <submitr+0x6e4>
  402b86:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b8a:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b8f:	29 c8                	sub    %ecx,%eax
  402b91:	75 17                	jne    402baa <submitr+0x6e6>
  402b93:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b97:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b9c:	29 c8                	sub    %ecx,%eax
  402b9e:	75 0a                	jne    402baa <submitr+0x6e6>
  402ba0:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402ba4:	f7 d8                	neg    %eax
  402ba6:	eb 02                	jmp    402baa <submitr+0x6e6>
  402ba8:	89 d0                	mov    %edx,%eax
  402baa:	85 c0                	test   %eax,%eax
  402bac:	74 38                	je     402be6 <submitr+0x722>
  402bae:	bf 70 37 40 00       	mov    $0x403770,%edi
  402bb3:	b9 05 00 00 00       	mov    $0x5,%ecx
  402bb8:	48 89 de             	mov    %rbx,%rsi
  402bbb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402bbd:	0f 97 c1             	seta   %cl
  402bc0:	0f 92 c0             	setb   %al
  402bc3:	38 c1                	cmp    %al,%cl
  402bc5:	74 26                	je     402bed <submitr+0x729>
  402bc7:	85 d2                	test   %edx,%edx
  402bc9:	75 10                	jne    402bdb <submitr+0x717>
  402bcb:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402bcf:	b2 4b                	mov    $0x4b,%dl
  402bd1:	29 c2                	sub    %eax,%edx
  402bd3:	75 06                	jne    402bdb <submitr+0x717>
  402bd5:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402bd9:	f7 da                	neg    %edx
  402bdb:	85 d2                	test   %edx,%edx
  402bdd:	75 15                	jne    402bf4 <submitr+0x730>
  402bdf:	b8 00 00 00 00       	mov    $0x0,%eax
  402be4:	eb 13                	jmp    402bf9 <submitr+0x735>
  402be6:	b8 00 00 00 00       	mov    $0x0,%eax
  402beb:	eb 0c                	jmp    402bf9 <submitr+0x735>
  402bed:	b8 00 00 00 00       	mov    $0x0,%eax
  402bf2:	eb 05                	jmp    402bf9 <submitr+0x735>
  402bf4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bf9:	48 8b 9c 24 58 a0 00 	mov    0xa058(%rsp),%rbx
  402c00:	00 
  402c01:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402c08:	00 00 
  402c0a:	74 05                	je     402c11 <submitr+0x74d>
  402c0c:	e8 ef e0 ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402c11:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
  402c18:	5b                   	pop    %rbx
  402c19:	5d                   	pop    %rbp
  402c1a:	41 5c                	pop    %r12
  402c1c:	41 5d                	pop    %r13
  402c1e:	41 5e                	pop    %r14
  402c20:	41 5f                	pop    %r15
  402c22:	c3                   	retq   

0000000000402c23 <init_timeout>:
  402c23:	53                   	push   %rbx
  402c24:	89 fb                	mov    %edi,%ebx
  402c26:	85 ff                	test   %edi,%edi
  402c28:	74 1f                	je     402c49 <init_timeout+0x26>
  402c2a:	85 ff                	test   %edi,%edi
  402c2c:	79 05                	jns    402c33 <init_timeout+0x10>
  402c2e:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c33:	be 22 22 40 00       	mov    $0x402222,%esi
  402c38:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c3d:	e8 2e e1 ff ff       	callq  400d70 <signal@plt>
  402c42:	89 df                	mov    %ebx,%edi
  402c44:	e8 e7 e0 ff ff       	callq  400d30 <alarm@plt>
  402c49:	5b                   	pop    %rbx
  402c4a:	c3                   	retq   

0000000000402c4b <init_driver>:
  402c4b:	55                   	push   %rbp
  402c4c:	53                   	push   %rbx
  402c4d:	48 83 ec 28          	sub    $0x28,%rsp
  402c51:	48 89 fd             	mov    %rdi,%rbp
  402c54:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c5b:	00 00 
  402c5d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c62:	31 c0                	xor    %eax,%eax
  402c64:	be 01 00 00 00       	mov    $0x1,%esi
  402c69:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c6e:	e8 fd e0 ff ff       	callq  400d70 <signal@plt>
  402c73:	be 01 00 00 00       	mov    $0x1,%esi
  402c78:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c7d:	e8 ee e0 ff ff       	callq  400d70 <signal@plt>
  402c82:	be 01 00 00 00       	mov    $0x1,%esi
  402c87:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c8c:	e8 df e0 ff ff       	callq  400d70 <signal@plt>
  402c91:	ba 00 00 00 00       	mov    $0x0,%edx
  402c96:	be 01 00 00 00       	mov    $0x1,%esi
  402c9b:	bf 02 00 00 00       	mov    $0x2,%edi
  402ca0:	e8 0b e2 ff ff       	callq  400eb0 <socket@plt>
  402ca5:	89 c3                	mov    %eax,%ebx
  402ca7:	85 c0                	test   %eax,%eax
  402ca9:	79 4f                	jns    402cfa <init_driver+0xaf>
  402cab:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402cb2:	3a 20 43 
  402cb5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402cb9:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402cc0:	20 75 6e 
  402cc3:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cc7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cce:	74 6f 20 
  402cd1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cd5:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402cdc:	65 20 73 
  402cdf:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ce3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402cea:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402cf0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402cf5:	e9 28 01 00 00       	jmpq   402e22 <init_driver+0x1d7>
  402cfa:	bf af 32 40 00       	mov    $0x4032af,%edi
  402cff:	e8 7c e0 ff ff       	callq  400d80 <gethostbyname@plt>
  402d04:	48 85 c0             	test   %rax,%rax
  402d07:	75 68                	jne    402d71 <init_driver+0x126>
  402d09:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402d10:	3a 20 44 
  402d13:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d17:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402d1e:	20 75 6e 
  402d21:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d25:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d2c:	74 6f 20 
  402d2f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d33:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d3a:	76 65 20 
  402d3d:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d41:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d48:	72 20 61 
  402d4b:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d4f:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d56:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d5c:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d60:	89 df                	mov    %ebx,%edi
  402d62:	e8 d9 df ff ff       	callq  400d40 <close@plt>
  402d67:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d6c:	e9 b1 00 00 00       	jmpq   402e22 <init_driver+0x1d7>
  402d71:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d78:	00 
  402d79:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d80:	00 00 
  402d82:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d88:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d8c:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d90:	48 8b 30             	mov    (%rax),%rsi
  402d93:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d98:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d9d:	e8 ee df ff ff       	callq  400d90 <__memmove_chk@plt>
  402da2:	66 c7 44 24 02 4e f3 	movw   $0xf34e,0x2(%rsp)
  402da9:	ba 10 00 00 00       	mov    $0x10,%edx
  402dae:	48 89 e6             	mov    %rsp,%rsi
  402db1:	89 df                	mov    %ebx,%edi
  402db3:	e8 c8 e0 ff ff       	callq  400e80 <connect@plt>
  402db8:	85 c0                	test   %eax,%eax
  402dba:	79 50                	jns    402e0c <init_driver+0x1c1>
  402dbc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402dc3:	3a 20 55 
  402dc6:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402dca:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402dd1:	20 74 6f 
  402dd4:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402dd8:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ddf:	65 63 74 
  402de2:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402de6:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ded:	65 72 76 
  402df0:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402df4:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402dfa:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402dfe:	89 df                	mov    %ebx,%edi
  402e00:	e8 3b df ff ff       	callq  400d40 <close@plt>
  402e05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e0a:	eb 16                	jmp    402e22 <init_driver+0x1d7>
  402e0c:	89 df                	mov    %ebx,%edi
  402e0e:	e8 2d df ff ff       	callq  400d40 <close@plt>
  402e13:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402e19:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402e1d:	b8 00 00 00 00       	mov    $0x0,%eax
  402e22:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402e27:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402e2e:	00 00 
  402e30:	74 05                	je     402e37 <init_driver+0x1ec>
  402e32:	e8 c9 de ff ff       	callq  400d00 <__stack_chk_fail@plt>
  402e37:	48 83 c4 28          	add    $0x28,%rsp
  402e3b:	5b                   	pop    %rbx
  402e3c:	5d                   	pop    %rbp
  402e3d:	c3                   	retq   

0000000000402e3e <driver_post>:
  402e3e:	53                   	push   %rbx
  402e3f:	48 83 ec 10          	sub    $0x10,%rsp
  402e43:	4c 89 cb             	mov    %r9,%rbx
  402e46:	45 85 c0             	test   %r8d,%r8d
  402e49:	74 27                	je     402e72 <driver_post+0x34>
  402e4b:	48 89 ca             	mov    %rcx,%rdx
  402e4e:	be 75 37 40 00       	mov    $0x403775,%esi
  402e53:	bf 01 00 00 00       	mov    $0x1,%edi
  402e58:	b8 00 00 00 00       	mov    $0x0,%eax
  402e5d:	e8 be df ff ff       	callq  400e20 <__printf_chk@plt>
  402e62:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e67:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e6b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e70:	eb 39                	jmp    402eab <driver_post+0x6d>
  402e72:	48 85 ff             	test   %rdi,%rdi
  402e75:	74 26                	je     402e9d <driver_post+0x5f>
  402e77:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e7a:	74 21                	je     402e9d <driver_post+0x5f>
  402e7c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402e80:	49 89 c9             	mov    %rcx,%r9
  402e83:	49 89 d0             	mov    %rdx,%r8
  402e86:	48 89 f9             	mov    %rdi,%rcx
  402e89:	48 89 f2             	mov    %rsi,%rdx
  402e8c:	be f3 4e 00 00       	mov    $0x4ef3,%esi
  402e91:	bf af 32 40 00       	mov    $0x4032af,%edi
  402e96:	e8 29 f6 ff ff       	callq  4024c4 <submitr>
  402e9b:	eb 0e                	jmp    402eab <driver_post+0x6d>
  402e9d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402ea2:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402ea6:	b8 00 00 00 00       	mov    $0x0,%eax
  402eab:	48 83 c4 10          	add    $0x10,%rsp
  402eaf:	5b                   	pop    %rbx
  402eb0:	c3                   	retq   

0000000000402eb1 <check>:
  402eb1:	89 f8                	mov    %edi,%eax
  402eb3:	c1 e8 1c             	shr    $0x1c,%eax
  402eb6:	85 c0                	test   %eax,%eax
  402eb8:	74 1d                	je     402ed7 <check+0x26>
  402eba:	b9 00 00 00 00       	mov    $0x0,%ecx
  402ebf:	eb 0b                	jmp    402ecc <check+0x1b>
  402ec1:	89 f8                	mov    %edi,%eax
  402ec3:	d3 e8                	shr    %cl,%eax
  402ec5:	3c 0a                	cmp    $0xa,%al
  402ec7:	74 14                	je     402edd <check+0x2c>
  402ec9:	83 c1 08             	add    $0x8,%ecx
  402ecc:	83 f9 1f             	cmp    $0x1f,%ecx
  402ecf:	7e f0                	jle    402ec1 <check+0x10>
  402ed1:	b8 01 00 00 00       	mov    $0x1,%eax
  402ed6:	c3                   	retq   
  402ed7:	b8 00 00 00 00       	mov    $0x0,%eax
  402edc:	c3                   	retq   
  402edd:	b8 00 00 00 00       	mov    $0x0,%eax
  402ee2:	c3                   	retq   

0000000000402ee3 <gencookie>:
  402ee3:	53                   	push   %rbx
  402ee4:	83 c7 01             	add    $0x1,%edi
  402ee7:	e8 c4 dd ff ff       	callq  400cb0 <srandom@plt>
  402eec:	e8 ef de ff ff       	callq  400de0 <random@plt>
  402ef1:	89 c3                	mov    %eax,%ebx
  402ef3:	89 c7                	mov    %eax,%edi
  402ef5:	e8 b7 ff ff ff       	callq  402eb1 <check>
  402efa:	85 c0                	test   %eax,%eax
  402efc:	74 ee                	je     402eec <gencookie+0x9>
  402efe:	89 d8                	mov    %ebx,%eax
  402f00:	5b                   	pop    %rbx
  402f01:	c3                   	retq   
  402f02:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f09:	00 00 00 
  402f0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402f10 <__libc_csu_init>:
  402f10:	41 57                	push   %r15
  402f12:	41 89 ff             	mov    %edi,%r15d
  402f15:	41 56                	push   %r14
  402f17:	49 89 f6             	mov    %rsi,%r14
  402f1a:	41 55                	push   %r13
  402f1c:	49 89 d5             	mov    %rdx,%r13
  402f1f:	41 54                	push   %r12
  402f21:	4c 8d 25 e8 1e 20 00 	lea    0x201ee8(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402f28:	55                   	push   %rbp
  402f29:	48 8d 2d e8 1e 20 00 	lea    0x201ee8(%rip),%rbp        # 604e18 <__init_array_end>
  402f30:	53                   	push   %rbx
  402f31:	4c 29 e5             	sub    %r12,%rbp
  402f34:	31 db                	xor    %ebx,%ebx
  402f36:	48 c1 fd 03          	sar    $0x3,%rbp
  402f3a:	48 83 ec 08          	sub    $0x8,%rsp
  402f3e:	e8 1d dd ff ff       	callq  400c60 <_init>
  402f43:	48 85 ed             	test   %rbp,%rbp
  402f46:	74 1e                	je     402f66 <__libc_csu_init+0x56>
  402f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f4f:	00 
  402f50:	4c 89 ea             	mov    %r13,%rdx
  402f53:	4c 89 f6             	mov    %r14,%rsi
  402f56:	44 89 ff             	mov    %r15d,%edi
  402f59:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f5d:	48 83 c3 01          	add    $0x1,%rbx
  402f61:	48 39 eb             	cmp    %rbp,%rbx
  402f64:	75 ea                	jne    402f50 <__libc_csu_init+0x40>
  402f66:	48 83 c4 08          	add    $0x8,%rsp
  402f6a:	5b                   	pop    %rbx
  402f6b:	5d                   	pop    %rbp
  402f6c:	41 5c                	pop    %r12
  402f6e:	41 5d                	pop    %r13
  402f70:	41 5e                	pop    %r14
  402f72:	41 5f                	pop    %r15
  402f74:	c3                   	retq   
  402f75:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402f7c:	00 00 00 00 

0000000000402f80 <__libc_csu_fini>:
  402f80:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f84 <_fini>:
  402f84:	48 83 ec 08          	sub    $0x8,%rsp
  402f88:	48 83 c4 08          	add    $0x8,%rsp
  402f8c:	c3                   	retq   
