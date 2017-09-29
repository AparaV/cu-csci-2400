
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b50 <_init>:
  400b50:	48 83 ec 08          	sub    $0x8,%rsp
  400b54:	48 8b 05 9d 34 20 00 	mov    0x20349d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1d0>
  400b5b:	48 85 c0             	test   %rax,%rax
  400b5e:	74 05                	je     400b65 <_init+0x15>
  400b60:	e8 1b 01 00 00       	callq  400c80 <__gmon_start__@plt>
  400b65:	48 83 c4 08          	add    $0x8,%rsp
  400b69:	c3                   	retq   

Disassembly of section .plt:

0000000000400b70 <getenv@plt-0x10>:
  400b70:	ff 35 92 34 20 00    	pushq  0x203492(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b76:	ff 25 94 34 20 00    	jmpq   *0x203494(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b80 <getenv@plt>:
  400b80:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b86:	68 00 00 00 00       	pushq  $0x0
  400b8b:	e9 e0 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400b90 <strcasecmp@plt>:
  400b90:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b96:	68 01 00 00 00       	pushq  $0x1
  400b9b:	e9 d0 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400ba0 <__errno_location@plt>:
  400ba0:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ba6:	68 02 00 00 00       	pushq  $0x2
  400bab:	e9 c0 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400bb0 <strcpy@plt>:
  400bb0:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bb6:	68 03 00 00 00       	pushq  $0x3
  400bbb:	e9 b0 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400bc0 <puts@plt>:
  400bc0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400bc6:	68 04 00 00 00       	pushq  $0x4
  400bcb:	e9 a0 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400bd0 <write@plt>:
  400bd0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bd6:	68 05 00 00 00       	pushq  $0x5
  400bdb:	e9 90 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400be0 <__stack_chk_fail@plt>:
  400be0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400be6:	68 06 00 00 00       	pushq  $0x6
  400beb:	e9 80 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400bf0 <alarm@plt>:
  400bf0:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400bf6:	68 07 00 00 00       	pushq  $0x7
  400bfb:	e9 70 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c00 <close@plt>:
  400c00:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c06:	68 08 00 00 00       	pushq  $0x8
  400c0b:	e9 60 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c10 <read@plt>:
  400c10:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c16:	68 09 00 00 00       	pushq  $0x9
  400c1b:	e9 50 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c20 <__libc_start_main@plt>:
  400c20:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c26:	68 0a 00 00 00       	pushq  $0xa
  400c2b:	e9 40 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c30 <fgets@plt>:
  400c30:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c36:	68 0b 00 00 00       	pushq  $0xb
  400c3b:	e9 30 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c40 <signal@plt>:
  400c40:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c46:	68 0c 00 00 00       	pushq  $0xc
  400c4b:	e9 20 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c50 <gethostbyname@plt>:
  400c50:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c56:	68 0d 00 00 00       	pushq  $0xd
  400c5b:	e9 10 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c60 <__memmove_chk@plt>:
  400c60:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c66:	68 0e 00 00 00       	pushq  $0xe
  400c6b:	e9 00 ff ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c70 <__memcpy_chk@plt>:
  400c70:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c76:	68 0f 00 00 00       	pushq  $0xf
  400c7b:	e9 f0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c80 <__gmon_start__@plt>:
  400c80:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c86:	68 10 00 00 00       	pushq  $0x10
  400c8b:	e9 e0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400c90 <strtol@plt>:
  400c90:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c96:	68 11 00 00 00       	pushq  $0x11
  400c9b:	e9 d0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400ca0 <fflush@plt>:
  400ca0:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ca6:	68 12 00 00 00       	pushq  $0x12
  400cab:	e9 c0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400cb0 <__isoc99_sscanf@plt>:
  400cb0:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cb6:	68 13 00 00 00       	pushq  $0x13
  400cbb:	e9 b0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400cc0 <__printf_chk@plt>:
  400cc0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400cc6:	68 14 00 00 00       	pushq  $0x14
  400ccb:	e9 a0 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400cd0 <fopen@plt>:
  400cd0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cd6:	68 15 00 00 00       	pushq  $0x15
  400cdb:	e9 90 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400ce0 <gethostname@plt>:
  400ce0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400ce6:	68 16 00 00 00       	pushq  $0x16
  400ceb:	e9 80 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400cf0 <exit@plt>:
  400cf0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400cf6:	68 17 00 00 00       	pushq  $0x17
  400cfb:	e9 70 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d00 <connect@plt>:
  400d00:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d06:	68 18 00 00 00       	pushq  $0x18
  400d0b:	e9 60 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d10 <__fprintf_chk@plt>:
  400d10:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d16:	68 19 00 00 00       	pushq  $0x19
  400d1b:	e9 50 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d20 <sleep@plt>:
  400d20:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d26:	68 1a 00 00 00       	pushq  $0x1a
  400d2b:	e9 40 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d30 <__ctype_b_loc@plt>:
  400d30:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d36:	68 1b 00 00 00       	pushq  $0x1b
  400d3b:	e9 30 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d40 <__sprintf_chk@plt>:
  400d40:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d46:	68 1c 00 00 00       	pushq  $0x1c
  400d4b:	e9 20 fe ff ff       	jmpq   400b70 <_init+0x20>

0000000000400d50 <socket@plt>:
  400d50:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400d56:	68 1d 00 00 00       	pushq  $0x1d
  400d5b:	e9 10 fe ff ff       	jmpq   400b70 <_init+0x20>

Disassembly of section .text:

0000000000400d60 <_start>:
  400d60:	31 ed                	xor    %ebp,%ebp
  400d62:	49 89 d1             	mov    %rdx,%r9
  400d65:	5e                   	pop    %rsi
  400d66:	48 89 e2             	mov    %rsp,%rdx
  400d69:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d6d:	50                   	push   %rax
  400d6e:	54                   	push   %rsp
  400d6f:	49 c7 c0 c0 25 40 00 	mov    $0x4025c0,%r8
  400d76:	48 c7 c1 50 25 40 00 	mov    $0x402550,%rcx
  400d7d:	48 c7 c7 4d 0e 40 00 	mov    $0x400e4d,%rdi
  400d84:	e8 97 fe ff ff       	callq  400c20 <__libc_start_main@plt>
  400d89:	f4                   	hlt    
  400d8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d90 <deregister_tm_clones>:
  400d90:	b8 a7 49 60 00       	mov    $0x6049a7,%eax
  400d95:	55                   	push   %rbp
  400d96:	48 2d a0 49 60 00    	sub    $0x6049a0,%rax
  400d9c:	48 83 f8 0e          	cmp    $0xe,%rax
  400da0:	48 89 e5             	mov    %rsp,%rbp
  400da3:	77 02                	ja     400da7 <deregister_tm_clones+0x17>
  400da5:	5d                   	pop    %rbp
  400da6:	c3                   	retq   
  400da7:	b8 00 00 00 00       	mov    $0x0,%eax
  400dac:	48 85 c0             	test   %rax,%rax
  400daf:	74 f4                	je     400da5 <deregister_tm_clones+0x15>
  400db1:	5d                   	pop    %rbp
  400db2:	bf a0 49 60 00       	mov    $0x6049a0,%edi
  400db7:	ff e0                	jmpq   *%rax
  400db9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400dc0 <register_tm_clones>:
  400dc0:	b8 a0 49 60 00       	mov    $0x6049a0,%eax
  400dc5:	55                   	push   %rbp
  400dc6:	48 2d a0 49 60 00    	sub    $0x6049a0,%rax
  400dcc:	48 c1 f8 03          	sar    $0x3,%rax
  400dd0:	48 89 e5             	mov    %rsp,%rbp
  400dd3:	48 89 c2             	mov    %rax,%rdx
  400dd6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400dda:	48 01 d0             	add    %rdx,%rax
  400ddd:	48 d1 f8             	sar    %rax
  400de0:	75 02                	jne    400de4 <register_tm_clones+0x24>
  400de2:	5d                   	pop    %rbp
  400de3:	c3                   	retq   
  400de4:	ba 00 00 00 00       	mov    $0x0,%edx
  400de9:	48 85 d2             	test   %rdx,%rdx
  400dec:	74 f4                	je     400de2 <register_tm_clones+0x22>
  400dee:	5d                   	pop    %rbp
  400def:	48 89 c6             	mov    %rax,%rsi
  400df2:	bf a0 49 60 00       	mov    $0x6049a0,%edi
  400df7:	ff e2                	jmpq   *%rdx
  400df9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e00 <__do_global_dtors_aux>:
  400e00:	80 3d b1 3b 20 00 00 	cmpb   $0x0,0x203bb1(%rip)        # 6049b8 <completed.6973>
  400e07:	75 11                	jne    400e1a <__do_global_dtors_aux+0x1a>
  400e09:	55                   	push   %rbp
  400e0a:	48 89 e5             	mov    %rsp,%rbp
  400e0d:	e8 7e ff ff ff       	callq  400d90 <deregister_tm_clones>
  400e12:	5d                   	pop    %rbp
  400e13:	c6 05 9e 3b 20 00 01 	movb   $0x1,0x203b9e(%rip)        # 6049b8 <completed.6973>
  400e1a:	f3 c3                	repz retq 
  400e1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e20 <frame_dummy>:
  400e20:	48 83 3d f8 2f 20 00 	cmpq   $0x0,0x202ff8(%rip)        # 603e20 <__JCR_END__>
  400e27:	00 
  400e28:	74 1e                	je     400e48 <frame_dummy+0x28>
  400e2a:	b8 00 00 00 00       	mov    $0x0,%eax
  400e2f:	48 85 c0             	test   %rax,%rax
  400e32:	74 14                	je     400e48 <frame_dummy+0x28>
  400e34:	55                   	push   %rbp
  400e35:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400e3a:	48 89 e5             	mov    %rsp,%rbp
  400e3d:	ff d0                	callq  *%rax
  400e3f:	5d                   	pop    %rbp
  400e40:	e9 7b ff ff ff       	jmpq   400dc0 <register_tm_clones>
  400e45:	0f 1f 00             	nopl   (%rax)
  400e48:	e9 73 ff ff ff       	jmpq   400dc0 <register_tm_clones>

0000000000400e4d <main>:
  400e4d:	55                   	push   %rbp
  400e4e:	48 89 e5             	mov    %rsp,%rbp
  400e51:	53                   	push   %rbx
  400e52:	48 83 ec 08          	sub    $0x8,%rsp
  400e56:	83 ff 01             	cmp    $0x1,%edi
  400e59:	75 10                	jne    400e6b <main+0x1e>
  400e5b:	48 8b 05 46 3b 20 00 	mov    0x203b46(%rip),%rax        # 6049a8 <stdin@@GLIBC_2.2.5>
  400e62:	48 89 05 57 3b 20 00 	mov    %rax,0x203b57(%rip)        # 6049c0 <infile>
  400e69:	eb 63                	jmp    400ece <main+0x81>
  400e6b:	48 89 f3             	mov    %rsi,%rbx
  400e6e:	83 ff 02             	cmp    $0x2,%edi
  400e71:	75 3a                	jne    400ead <main+0x60>
  400e73:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e77:	be e4 25 40 00       	mov    $0x4025e4,%esi
  400e7c:	e8 4f fe ff ff       	callq  400cd0 <fopen@plt>
  400e81:	48 89 05 38 3b 20 00 	mov    %rax,0x203b38(%rip)        # 6049c0 <infile>
  400e88:	48 85 c0             	test   %rax,%rax
  400e8b:	75 41                	jne    400ece <main+0x81>
  400e8d:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400e91:	48 8b 13             	mov    (%rbx),%rdx
  400e94:	be e6 25 40 00       	mov    $0x4025e6,%esi
  400e99:	bf 01 00 00 00       	mov    $0x1,%edi
  400e9e:	e8 1d fe ff ff       	callq  400cc0 <__printf_chk@plt>
  400ea3:	bf 08 00 00 00       	mov    $0x8,%edi
  400ea8:	e8 43 fe ff ff       	callq  400cf0 <exit@plt>
  400ead:	48 8b 16             	mov    (%rsi),%rdx
  400eb0:	be 03 26 40 00       	mov    $0x402603,%esi
  400eb5:	bf 01 00 00 00       	mov    $0x1,%edi
  400eba:	b8 00 00 00 00       	mov    $0x0,%eax
  400ebf:	e8 fc fd ff ff       	callq  400cc0 <__printf_chk@plt>
  400ec4:	bf 08 00 00 00       	mov    $0x8,%edi
  400ec9:	e8 22 fe ff ff       	callq  400cf0 <exit@plt>
  400ece:	e8 6a 05 00 00       	callq  40143d <initialize_bomb>
  400ed3:	bf 68 26 40 00       	mov    $0x402668,%edi
  400ed8:	e8 e3 fc ff ff       	callq  400bc0 <puts@plt>
  400edd:	bf a8 26 40 00       	mov    $0x4026a8,%edi
  400ee2:	e8 d9 fc ff ff       	callq  400bc0 <puts@plt>
  400ee7:	e8 55 08 00 00       	callq  401741 <read_line>
  400eec:	48 89 c7             	mov    %rax,%rdi
  400eef:	e8 ac 00 00 00       	callq  400fa0 <phase_1>
  400ef4:	e8 6b 09 00 00       	callq  401864 <phase_defused>
  400ef9:	bf d8 26 40 00       	mov    $0x4026d8,%edi
  400efe:	e8 bd fc ff ff       	callq  400bc0 <puts@plt>
  400f03:	e8 39 08 00 00       	callq  401741 <read_line>
  400f08:	48 89 c7             	mov    %rax,%rdi
  400f0b:	e8 a9 00 00 00       	callq  400fb9 <phase_2>
  400f10:	e8 4f 09 00 00       	callq  401864 <phase_defused>
  400f15:	bf 1d 26 40 00       	mov    $0x40261d,%edi
  400f1a:	e8 a1 fc ff ff       	callq  400bc0 <puts@plt>
  400f1f:	e8 1d 08 00 00       	callq  401741 <read_line>
  400f24:	48 89 c7             	mov    %rax,%rdi
  400f27:	e8 e7 00 00 00       	callq  401013 <phase_3>
  400f2c:	e8 33 09 00 00       	callq  401864 <phase_defused>
  400f31:	bf 3b 26 40 00       	mov    $0x40263b,%edi
  400f36:	e8 85 fc ff ff       	callq  400bc0 <puts@plt>
  400f3b:	e8 01 08 00 00       	callq  401741 <read_line>
  400f40:	48 89 c7             	mov    %rax,%rdi
  400f43:	e8 8d 01 00 00       	callq  4010d5 <phase_4>
  400f48:	e8 17 09 00 00       	callq  401864 <phase_defused>
  400f4d:	bf 08 27 40 00       	mov    $0x402708,%edi
  400f52:	e8 69 fc ff ff       	callq  400bc0 <puts@plt>
  400f57:	e8 e5 07 00 00       	callq  401741 <read_line>
  400f5c:	48 89 c7             	mov    %rax,%rdi
  400f5f:	e8 c9 01 00 00       	callq  40112d <phase_5>
  400f64:	e8 fb 08 00 00       	callq  401864 <phase_defused>
  400f69:	bf 4a 26 40 00       	mov    $0x40264a,%edi
  400f6e:	e8 4d fc ff ff       	callq  400bc0 <puts@plt>
  400f73:	e8 c9 07 00 00       	callq  401741 <read_line>
  400f78:	48 89 c7             	mov    %rax,%rdi
  400f7b:	e8 11 02 00 00       	callq  401191 <phase_6>
  400f80:	e8 df 08 00 00       	callq  401864 <phase_defused>
  400f85:	b8 00 00 00 00       	mov    $0x0,%eax
  400f8a:	48 83 c4 08          	add    $0x8,%rsp
  400f8e:	5b                   	pop    %rbx
  400f8f:	5d                   	pop    %rbp
  400f90:	c3                   	retq   
  400f91:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f98:	00 00 00 
  400f9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400fa0 <phase_1>:
  400fa0:	55                   	push   %rbp
  400fa1:	48 89 e5             	mov    %rsp,%rbp
  400fa4:	be 30 27 40 00       	mov    $0x402730,%esi
  400fa9:	e8 1f 04 00 00       	callq  4013cd <strings_not_equal>
  400fae:	85 c0                	test   %eax,%eax
  400fb0:	74 05                	je     400fb7 <phase_1+0x17>
  400fb2:	e8 0e 07 00 00       	callq  4016c5 <explode_bomb>
  400fb7:	5d                   	pop    %rbp
  400fb8:	c3                   	retq   

0000000000400fb9 <phase_2>:
  400fb9:	55                   	push   %rbp
  400fba:	48 89 e5             	mov    %rsp,%rbp
  400fbd:	41 54                	push   %r12
  400fbf:	53                   	push   %rbx
  400fc0:	48 83 ec 20          	sub    $0x20,%rsp
  400fc4:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  400fc8:	e8 2e 07 00 00       	callq  4016fb <read_six_numbers>
  400fcd:	83 7d d0 00          	cmpl   $0x0,-0x30(%rbp)
  400fd1:	75 06                	jne    400fd9 <phase_2+0x20>
  400fd3:	83 7d d4 01          	cmpl   $0x1,-0x2c(%rbp)
  400fd7:	74 23                	je     400ffc <phase_2+0x43>
  400fd9:	e8 e7 06 00 00       	callq  4016c5 <explode_bomb>
  400fde:	66 90                	xchg   %ax,%ax
  400fe0:	eb 1a                	jmp    400ffc <phase_2+0x43>
  400fe2:	8b 43 f8             	mov    -0x8(%rbx),%eax
  400fe5:	03 43 fc             	add    -0x4(%rbx),%eax
  400fe8:	39 03                	cmp    %eax,(%rbx)
  400fea:	74 05                	je     400ff1 <phase_2+0x38>
  400fec:	e8 d4 06 00 00       	callq  4016c5 <explode_bomb>
  400ff1:	48 83 c3 04          	add    $0x4,%rbx
  400ff5:	4c 39 e3             	cmp    %r12,%rbx
  400ff8:	75 e8                	jne    400fe2 <phase_2+0x29>
  400ffa:	eb 0e                	jmp    40100a <phase_2+0x51>
  400ffc:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401000:	48 8d 58 08          	lea    0x8(%rax),%rbx
  401004:	4c 8d 60 18          	lea    0x18(%rax),%r12
  401008:	eb d8                	jmp    400fe2 <phase_2+0x29>
  40100a:	48 83 c4 20          	add    $0x20,%rsp
  40100e:	5b                   	pop    %rbx
  40100f:	41 5c                	pop    %r12
  401011:	5d                   	pop    %rbp
  401012:	c3                   	retq   

0000000000401013 <phase_3>:
  401013:	55                   	push   %rbp
  401014:	48 89 e5             	mov    %rsp,%rbp
  401017:	48 83 ec 10          	sub    $0x10,%rsp
  40101b:	48 8d 4d fc          	lea    -0x4(%rbp),%rcx
  40101f:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
  401023:	be 4d 2a 40 00       	mov    $0x402a4d,%esi
  401028:	b8 00 00 00 00       	mov    $0x0,%eax
  40102d:	e8 7e fc ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  401032:	83 f8 01             	cmp    $0x1,%eax
  401035:	7f 05                	jg     40103c <phase_3+0x29>
  401037:	e8 89 06 00 00       	callq  4016c5 <explode_bomb>
  40103c:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
  401040:	77 3b                	ja     40107d <phase_3+0x6a>
  401042:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401045:	ff 24 c5 80 27 40 00 	jmpq   *0x402780(,%rax,8)
  40104c:	b8 7e 01 00 00       	mov    $0x17e,%eax
  401051:	eb 3b                	jmp    40108e <phase_3+0x7b>
  401053:	b8 d5 00 00 00       	mov    $0xd5,%eax
  401058:	eb 34                	jmp    40108e <phase_3+0x7b>
  40105a:	b8 fc 02 00 00       	mov    $0x2fc,%eax
  40105f:	eb 2d                	jmp    40108e <phase_3+0x7b>
  401061:	b8 25 03 00 00       	mov    $0x325,%eax
  401066:	eb 26                	jmp    40108e <phase_3+0x7b>
  401068:	b8 f8 02 00 00       	mov    $0x2f8,%eax
  40106d:	eb 1f                	jmp    40108e <phase_3+0x7b>
  40106f:	b8 9b 02 00 00       	mov    $0x29b,%eax
  401074:	eb 18                	jmp    40108e <phase_3+0x7b>
  401076:	b8 fc 02 00 00       	mov    $0x2fc,%eax
  40107b:	eb 11                	jmp    40108e <phase_3+0x7b>
  40107d:	e8 43 06 00 00       	callq  4016c5 <explode_bomb>
  401082:	b8 00 00 00 00       	mov    $0x0,%eax
  401087:	eb 05                	jmp    40108e <phase_3+0x7b>
  401089:	b8 de 02 00 00       	mov    $0x2de,%eax
  40108e:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401091:	74 05                	je     401098 <phase_3+0x85>
  401093:	e8 2d 06 00 00       	callq  4016c5 <explode_bomb>
  401098:	c9                   	leaveq 
  401099:	c3                   	retq   

000000000040109a <func4>:
  40109a:	55                   	push   %rbp
  40109b:	48 89 e5             	mov    %rsp,%rbp
  40109e:	89 d0                	mov    %edx,%eax
  4010a0:	29 f0                	sub    %esi,%eax
  4010a2:	89 c1                	mov    %eax,%ecx
  4010a4:	c1 e9 1f             	shr    $0x1f,%ecx
  4010a7:	01 c8                	add    %ecx,%eax
  4010a9:	d1 f8                	sar    %eax
  4010ab:	8d 0c 30             	lea    (%rax,%rsi,1),%ecx
  4010ae:	39 f9                	cmp    %edi,%ecx
  4010b0:	7e 0e                	jle    4010c0 <func4+0x26>
  4010b2:	8d 51 ff             	lea    -0x1(%rcx),%edx
  4010b5:	e8 e0 ff ff ff       	callq  40109a <func4>
  4010ba:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4010be:	eb 13                	jmp    4010d3 <func4+0x39>
  4010c0:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c5:	39 f9                	cmp    %edi,%ecx
  4010c7:	7d 0a                	jge    4010d3 <func4+0x39>
  4010c9:	8d 71 01             	lea    0x1(%rcx),%esi
  4010cc:	e8 c9 ff ff ff       	callq  40109a <func4>
  4010d1:	01 c0                	add    %eax,%eax
  4010d3:	5d                   	pop    %rbp
  4010d4:	c3                   	retq   

00000000004010d5 <phase_4>:
  4010d5:	55                   	push   %rbp
  4010d6:	48 89 e5             	mov    %rsp,%rbp
  4010d9:	48 83 ec 10          	sub    $0x10,%rsp
  4010dd:	48 8d 4d fc          	lea    -0x4(%rbp),%rcx
  4010e1:	48 8d 55 f8          	lea    -0x8(%rbp),%rdx
  4010e5:	be 4d 2a 40 00       	mov    $0x402a4d,%esi
  4010ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ef:	e8 bc fb ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  4010f4:	83 f8 02             	cmp    $0x2,%eax
  4010f7:	75 0b                	jne    401104 <phase_4+0x2f>
  4010f9:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4010fc:	83 e8 10             	sub    $0x10,%eax
  4010ff:	83 f8 1e             	cmp    $0x1e,%eax
  401102:	76 05                	jbe    401109 <phase_4+0x34>
  401104:	e8 bc 05 00 00       	callq  4016c5 <explode_bomb>
  401109:	ba 2e 00 00 00       	mov    $0x2e,%edx
  40110e:	be 10 00 00 00       	mov    $0x10,%esi
  401113:	8b 7d f8             	mov    -0x8(%rbp),%edi
  401116:	e8 7f ff ff ff       	callq  40109a <func4>
  40111b:	83 f8 09             	cmp    $0x9,%eax
  40111e:	75 06                	jne    401126 <phase_4+0x51>
  401120:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  401124:	74 05                	je     40112b <phase_4+0x56>
  401126:	e8 9a 05 00 00       	callq  4016c5 <explode_bomb>
  40112b:	c9                   	leaveq 
  40112c:	c3                   	retq   

000000000040112d <phase_5>:
  40112d:	55                   	push   %rbp
  40112e:	48 89 e5             	mov    %rsp,%rbp
  401131:	48 83 ec 10          	sub    $0x10,%rsp
  401135:	4c 8d 45 fc          	lea    -0x4(%rbp),%r8
  401139:	48 8d 4d f8          	lea    -0x8(%rbp),%rcx
  40113d:	48 8d 55 f4          	lea    -0xc(%rbp),%rdx
  401141:	be 4a 2a 40 00       	mov    $0x402a4a,%esi
  401146:	b8 00 00 00 00       	mov    $0x0,%eax
  40114b:	e8 60 fb ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  401150:	83 f8 02             	cmp    $0x2,%eax
  401153:	7f 05                	jg     40115a <phase_5+0x2d>
  401155:	e8 6b 05 00 00       	callq  4016c5 <explode_bomb>
  40115a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40115d:	83 e0 0f             	and    $0xf,%eax
  401160:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401163:	ba 09 00 00 00       	mov    $0x9,%edx
  401168:	b9 00 00 00 00       	mov    $0x0,%ecx
  40116d:	01 c1                	add    %eax,%ecx
  40116f:	48 98                	cltq   
  401171:	8b 04 85 c0 27 40 00 	mov    0x4027c0(,%rax,4),%eax
  401178:	83 ea 01             	sub    $0x1,%edx
  40117b:	75 f0                	jne    40116d <phase_5+0x40>
  40117d:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  401180:	75 05                	jne    401187 <phase_5+0x5a>
  401182:	3b 4d fc             	cmp    -0x4(%rbp),%ecx
  401185:	74 05                	je     40118c <phase_5+0x5f>
  401187:	e8 39 05 00 00       	callq  4016c5 <explode_bomb>
  40118c:	c9                   	leaveq 
  40118d:	0f 1f 00             	nopl   (%rax)
  401190:	c3                   	retq   

0000000000401191 <phase_6>:
  401191:	55                   	push   %rbp
  401192:	48 89 e5             	mov    %rsp,%rbp
  401195:	41 56                	push   %r14
  401197:	41 55                	push   %r13
  401199:	41 54                	push   %r12
  40119b:	53                   	push   %rbx
  40119c:	48 83 ec 50          	sub    $0x50,%rsp
  4011a0:	48 8d 75 90          	lea    -0x70(%rbp),%rsi
  4011a4:	e8 52 05 00 00       	callq  4016fb <read_six_numbers>
  4011a9:	4c 8d 75 90          	lea    -0x70(%rbp),%r14
  4011ad:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4011b3:	4d 89 f4             	mov    %r14,%r12
  4011b6:	41 8b 06             	mov    (%r14),%eax
  4011b9:	83 e8 01             	sub    $0x1,%eax
  4011bc:	83 f8 05             	cmp    $0x5,%eax
  4011bf:	76 05                	jbe    4011c6 <phase_6+0x35>
  4011c1:	e8 ff 04 00 00       	callq  4016c5 <explode_bomb>
  4011c6:	41 83 c5 01          	add    $0x1,%r13d
  4011ca:	41 83 fd 06          	cmp    $0x6,%r13d
  4011ce:	75 07                	jne    4011d7 <phase_6+0x46>
  4011d0:	be 00 00 00 00       	mov    $0x0,%esi
  4011d5:	eb 44                	jmp    40121b <phase_6+0x8a>
  4011d7:	44 89 eb             	mov    %r13d,%ebx
  4011da:	48 63 c3             	movslq %ebx,%rax
  4011dd:	8b 44 85 90          	mov    -0x70(%rbp,%rax,4),%eax
  4011e1:	41 39 04 24          	cmp    %eax,(%r12)
  4011e5:	75 05                	jne    4011ec <phase_6+0x5b>
  4011e7:	e8 d9 04 00 00       	callq  4016c5 <explode_bomb>
  4011ec:	83 c3 01             	add    $0x1,%ebx
  4011ef:	83 fb 05             	cmp    $0x5,%ebx
  4011f2:	7e e6                	jle    4011da <phase_6+0x49>
  4011f4:	49 83 c6 04          	add    $0x4,%r14
  4011f8:	eb b9                	jmp    4011b3 <phase_6+0x22>
  4011fa:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4011fe:	83 c0 01             	add    $0x1,%eax
  401201:	39 c8                	cmp    %ecx,%eax
  401203:	75 f5                	jne    4011fa <phase_6+0x69>
  401205:	eb 05                	jmp    40120c <phase_6+0x7b>
  401207:	ba 10 45 60 00       	mov    $0x604510,%edx
  40120c:	48 89 54 75 b0       	mov    %rdx,-0x50(%rbp,%rsi,2)
  401211:	48 83 c6 04          	add    $0x4,%rsi
  401215:	48 83 fe 18          	cmp    $0x18,%rsi
  401219:	74 15                	je     401230 <phase_6+0x9f>
  40121b:	8b 4c 35 90          	mov    -0x70(%rbp,%rsi,1),%ecx
  40121f:	83 f9 01             	cmp    $0x1,%ecx
  401222:	7e e3                	jle    401207 <phase_6+0x76>
  401224:	b8 01 00 00 00       	mov    $0x1,%eax
  401229:	ba 10 45 60 00       	mov    $0x604510,%edx
  40122e:	eb ca                	jmp    4011fa <phase_6+0x69>
  401230:	48 8b 5d b0          	mov    -0x50(%rbp),%rbx
  401234:	48 8d 45 b8          	lea    -0x48(%rbp),%rax
  401238:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  40123c:	48 89 d9             	mov    %rbx,%rcx
  40123f:	48 8b 10             	mov    (%rax),%rdx
  401242:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401246:	48 83 c0 08          	add    $0x8,%rax
  40124a:	48 39 f0             	cmp    %rsi,%rax
  40124d:	74 05                	je     401254 <phase_6+0xc3>
  40124f:	48 89 d1             	mov    %rdx,%rcx
  401252:	eb eb                	jmp    40123f <phase_6+0xae>
  401254:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
  40125b:	00 
  40125c:	41 bc 05 00 00 00    	mov    $0x5,%r12d
  401262:	48 8b 43 08          	mov    0x8(%rbx),%rax
  401266:	8b 00                	mov    (%rax),%eax
  401268:	39 03                	cmp    %eax,(%rbx)
  40126a:	7e 05                	jle    401271 <phase_6+0xe0>
  40126c:	e8 54 04 00 00       	callq  4016c5 <explode_bomb>
  401271:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  401275:	41 83 ec 01          	sub    $0x1,%r12d
  401279:	75 e7                	jne    401262 <phase_6+0xd1>
  40127b:	48 83 c4 50          	add    $0x50,%rsp
  40127f:	5b                   	pop    %rbx
  401280:	41 5c                	pop    %r12
  401282:	41 5d                	pop    %r13
  401284:	41 5e                	pop    %r14
  401286:	5d                   	pop    %rbp
  401287:	c3                   	retq   

0000000000401288 <fun7>:
  401288:	55                   	push   %rbp
  401289:	48 89 e5             	mov    %rsp,%rbp
  40128c:	48 85 ff             	test   %rdi,%rdi
  40128f:	74 2b                	je     4012bc <fun7+0x34>
  401291:	8b 17                	mov    (%rdi),%edx
  401293:	39 f2                	cmp    %esi,%edx
  401295:	7e 0d                	jle    4012a4 <fun7+0x1c>
  401297:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40129b:	e8 e8 ff ff ff       	callq  401288 <fun7>
  4012a0:	01 c0                	add    %eax,%eax
  4012a2:	eb 1d                	jmp    4012c1 <fun7+0x39>
  4012a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a9:	39 f2                	cmp    %esi,%edx
  4012ab:	74 14                	je     4012c1 <fun7+0x39>
  4012ad:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4012b1:	e8 d2 ff ff ff       	callq  401288 <fun7>
  4012b6:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4012ba:	eb 05                	jmp    4012c1 <fun7+0x39>
  4012bc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4012c1:	5d                   	pop    %rbp
  4012c2:	c3                   	retq   

00000000004012c3 <secret_phase>:
  4012c3:	55                   	push   %rbp
  4012c4:	48 89 e5             	mov    %rsp,%rbp
  4012c7:	53                   	push   %rbx
  4012c8:	48 83 ec 08          	sub    $0x8,%rsp
  4012cc:	e8 70 04 00 00       	callq  401741 <read_line>
  4012d1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012d6:	be 00 00 00 00       	mov    $0x0,%esi
  4012db:	48 89 c7             	mov    %rax,%rdi
  4012de:	e8 ad f9 ff ff       	callq  400c90 <strtol@plt>
  4012e3:	48 89 c3             	mov    %rax,%rbx
  4012e6:	8d 40 ff             	lea    -0x1(%rax),%eax
  4012e9:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  4012ee:	76 05                	jbe    4012f5 <secret_phase+0x32>
  4012f0:	e8 d0 03 00 00       	callq  4016c5 <explode_bomb>
  4012f5:	89 de                	mov    %ebx,%esi
  4012f7:	bf 30 41 60 00       	mov    $0x604130,%edi
  4012fc:	e8 87 ff ff ff       	callq  401288 <fun7>
  401301:	83 f8 04             	cmp    $0x4,%eax
  401304:	74 05                	je     40130b <secret_phase+0x48>
  401306:	e8 ba 03 00 00       	callq  4016c5 <explode_bomb>
  40130b:	bf 50 27 40 00       	mov    $0x402750,%edi
  401310:	e8 ab f8 ff ff       	callq  400bc0 <puts@plt>
  401315:	e8 4a 05 00 00       	callq  401864 <phase_defused>
  40131a:	48 83 c4 08          	add    $0x8,%rsp
  40131e:	5b                   	pop    %rbx
  40131f:	5d                   	pop    %rbp
  401320:	c3                   	retq   
  401321:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401328:	00 00 00 
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <sig_handler>:
  401330:	55                   	push   %rbp
  401331:	48 89 e5             	mov    %rsp,%rbp
  401334:	bf 00 28 40 00       	mov    $0x402800,%edi
  401339:	e8 82 f8 ff ff       	callq  400bc0 <puts@plt>
  40133e:	bf 03 00 00 00       	mov    $0x3,%edi
  401343:	e8 d8 f9 ff ff       	callq  400d20 <sleep@plt>
  401348:	be c9 29 40 00       	mov    $0x4029c9,%esi
  40134d:	bf 01 00 00 00       	mov    $0x1,%edi
  401352:	b8 00 00 00 00       	mov    $0x0,%eax
  401357:	e8 64 f9 ff ff       	callq  400cc0 <__printf_chk@plt>
  40135c:	48 8b 3d 3d 36 20 00 	mov    0x20363d(%rip),%rdi        # 6049a0 <__TMC_END__>
  401363:	e8 38 f9 ff ff       	callq  400ca0 <fflush@plt>
  401368:	bf 01 00 00 00       	mov    $0x1,%edi
  40136d:	e8 ae f9 ff ff       	callq  400d20 <sleep@plt>
  401372:	bf d1 29 40 00       	mov    $0x4029d1,%edi
  401377:	e8 44 f8 ff ff       	callq  400bc0 <puts@plt>
  40137c:	bf 10 00 00 00       	mov    $0x10,%edi
  401381:	e8 6a f9 ff ff       	callq  400cf0 <exit@plt>

0000000000401386 <invalid_phase>:
  401386:	55                   	push   %rbp
  401387:	48 89 e5             	mov    %rsp,%rbp
  40138a:	48 89 fa             	mov    %rdi,%rdx
  40138d:	be d9 29 40 00       	mov    $0x4029d9,%esi
  401392:	bf 01 00 00 00       	mov    $0x1,%edi
  401397:	b8 00 00 00 00       	mov    $0x0,%eax
  40139c:	e8 1f f9 ff ff       	callq  400cc0 <__printf_chk@plt>
  4013a1:	bf 08 00 00 00       	mov    $0x8,%edi
  4013a6:	e8 45 f9 ff ff       	callq  400cf0 <exit@plt>

00000000004013ab <string_length>:
  4013ab:	55                   	push   %rbp
  4013ac:	48 89 e5             	mov    %rsp,%rbp
  4013af:	80 3f 00             	cmpb   $0x0,(%rdi)
  4013b2:	74 12                	je     4013c6 <string_length+0x1b>
  4013b4:	48 89 fa             	mov    %rdi,%rdx
  4013b7:	48 83 c2 01          	add    $0x1,%rdx
  4013bb:	89 d0                	mov    %edx,%eax
  4013bd:	29 f8                	sub    %edi,%eax
  4013bf:	80 3a 00             	cmpb   $0x0,(%rdx)
  4013c2:	75 f3                	jne    4013b7 <string_length+0xc>
  4013c4:	eb 05                	jmp    4013cb <string_length+0x20>
  4013c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4013cb:	5d                   	pop    %rbp
  4013cc:	c3                   	retq   

00000000004013cd <strings_not_equal>:
  4013cd:	55                   	push   %rbp
  4013ce:	48 89 e5             	mov    %rsp,%rbp
  4013d1:	41 55                	push   %r13
  4013d3:	41 54                	push   %r12
  4013d5:	53                   	push   %rbx
  4013d6:	48 89 fb             	mov    %rdi,%rbx
  4013d9:	49 89 f4             	mov    %rsi,%r12
  4013dc:	e8 ca ff ff ff       	callq  4013ab <string_length>
  4013e1:	41 89 c5             	mov    %eax,%r13d
  4013e4:	4c 89 e7             	mov    %r12,%rdi
  4013e7:	e8 bf ff ff ff       	callq  4013ab <string_length>
  4013ec:	ba 01 00 00 00       	mov    $0x1,%edx
  4013f1:	41 39 c5             	cmp    %eax,%r13d
  4013f4:	75 3e                	jne    401434 <strings_not_equal+0x67>
  4013f6:	0f b6 03             	movzbl (%rbx),%eax
  4013f9:	84 c0                	test   %al,%al
  4013fb:	74 24                	je     401421 <strings_not_equal+0x54>
  4013fd:	41 3a 04 24          	cmp    (%r12),%al
  401401:	74 08                	je     40140b <strings_not_equal+0x3e>
  401403:	eb 23                	jmp    401428 <strings_not_equal+0x5b>
  401405:	41 3a 04 24          	cmp    (%r12),%al
  401409:	75 24                	jne    40142f <strings_not_equal+0x62>
  40140b:	48 83 c3 01          	add    $0x1,%rbx
  40140f:	49 83 c4 01          	add    $0x1,%r12
  401413:	0f b6 03             	movzbl (%rbx),%eax
  401416:	84 c0                	test   %al,%al
  401418:	75 eb                	jne    401405 <strings_not_equal+0x38>
  40141a:	ba 00 00 00 00       	mov    $0x0,%edx
  40141f:	eb 13                	jmp    401434 <strings_not_equal+0x67>
  401421:	ba 00 00 00 00       	mov    $0x0,%edx
  401426:	eb 0c                	jmp    401434 <strings_not_equal+0x67>
  401428:	ba 01 00 00 00       	mov    $0x1,%edx
  40142d:	eb 05                	jmp    401434 <strings_not_equal+0x67>
  40142f:	ba 01 00 00 00       	mov    $0x1,%edx
  401434:	89 d0                	mov    %edx,%eax
  401436:	5b                   	pop    %rbx
  401437:	41 5c                	pop    %r12
  401439:	41 5d                	pop    %r13
  40143b:	5d                   	pop    %rbp
  40143c:	c3                   	retq   

000000000040143d <initialize_bomb>:
  40143d:	55                   	push   %rbp
  40143e:	48 89 e5             	mov    %rsp,%rbp
  401441:	53                   	push   %rbx
  401442:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
  401449:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401450:	00 00 
  401452:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401456:	31 c0                	xor    %eax,%eax
  401458:	be 30 13 40 00       	mov    $0x401330,%esi
  40145d:	bf 02 00 00 00       	mov    $0x2,%edi
  401462:	e8 d9 f7 ff ff       	callq  400c40 <signal@plt>
  401467:	be 40 00 00 00       	mov    $0x40,%esi
  40146c:	48 8d bd a0 df ff ff 	lea    -0x2060(%rbp),%rdi
  401473:	e8 68 f8 ff ff       	callq  400ce0 <gethostname@plt>
  401478:	85 c0                	test   %eax,%eax
  40147a:	75 13                	jne    40148f <initialize_bomb+0x52>
  40147c:	48 8b 3d 1d 31 20 00 	mov    0x20311d(%rip),%rdi        # 6045a0 <host_table>
  401483:	bb a8 45 60 00       	mov    $0x6045a8,%ebx
  401488:	48 85 ff             	test   %rdi,%rdi
  40148b:	75 16                	jne    4014a3 <initialize_bomb+0x66>
  40148d:	eb 58                	jmp    4014e7 <initialize_bomb+0xaa>
  40148f:	bf 38 28 40 00       	mov    $0x402838,%edi
  401494:	e8 27 f7 ff ff       	callq  400bc0 <puts@plt>
  401499:	bf 08 00 00 00       	mov    $0x8,%edi
  40149e:	e8 4d f8 ff ff       	callq  400cf0 <exit@plt>
  4014a3:	48 8d b5 a0 df ff ff 	lea    -0x2060(%rbp),%rsi
  4014aa:	e8 e1 f6 ff ff       	callq  400b90 <strcasecmp@plt>
  4014af:	85 c0                	test   %eax,%eax
  4014b1:	74 48                	je     4014fb <initialize_bomb+0xbe>
  4014b3:	48 83 c3 08          	add    $0x8,%rbx
  4014b7:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
  4014bb:	48 85 ff             	test   %rdi,%rdi
  4014be:	75 e3                	jne    4014a3 <initialize_bomb+0x66>
  4014c0:	eb 25                	jmp    4014e7 <initialize_bomb+0xaa>
  4014c2:	48 8d 95 e0 df ff ff 	lea    -0x2020(%rbp),%rdx
  4014c9:	be ea 29 40 00       	mov    $0x4029ea,%esi
  4014ce:	bf 01 00 00 00       	mov    $0x1,%edi
  4014d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4014d8:	e8 e3 f7 ff ff       	callq  400cc0 <__printf_chk@plt>
  4014dd:	bf 08 00 00 00       	mov    $0x8,%edi
  4014e2:	e8 09 f8 ff ff       	callq  400cf0 <exit@plt>
  4014e7:	bf 70 28 40 00       	mov    $0x402870,%edi
  4014ec:	e8 cf f6 ff ff       	callq  400bc0 <puts@plt>
  4014f1:	bf 08 00 00 00       	mov    $0x8,%edi
  4014f6:	e8 f5 f7 ff ff       	callq  400cf0 <exit@plt>
  4014fb:	48 8d bd e0 df ff ff 	lea    -0x2020(%rbp),%rdi
  401502:	e8 d9 0d 00 00       	callq  4022e0 <init_driver>
  401507:	85 c0                	test   %eax,%eax
  401509:	78 b7                	js     4014c2 <initialize_bomb+0x85>
  40150b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40150f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401516:	00 00 
  401518:	74 0b                	je     401525 <initialize_bomb+0xe8>
  40151a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401520:	e8 bb f6 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  401525:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
  40152c:	5b                   	pop    %rbx
  40152d:	5d                   	pop    %rbp
  40152e:	c3                   	retq   

000000000040152f <initialize_bomb_solve>:
  40152f:	55                   	push   %rbp
  401530:	48 89 e5             	mov    %rsp,%rbp
  401533:	5d                   	pop    %rbp
  401534:	c3                   	retq   

0000000000401535 <blank_line>:
  401535:	55                   	push   %rbp
  401536:	48 89 e5             	mov    %rsp,%rbp
  401539:	41 54                	push   %r12
  40153b:	53                   	push   %rbx
  40153c:	48 89 fb             	mov    %rdi,%rbx
  40153f:	eb 18                	jmp    401559 <blank_line+0x24>
  401541:	e8 ea f7 ff ff       	callq  400d30 <__ctype_b_loc@plt>
  401546:	48 83 c3 01          	add    $0x1,%rbx
  40154a:	4d 0f be e4          	movsbq %r12b,%r12
  40154e:	48 8b 00             	mov    (%rax),%rax
  401551:	42 f6 44 60 01 20    	testb  $0x20,0x1(%rax,%r12,2)
  401557:	74 10                	je     401569 <blank_line+0x34>
  401559:	44 0f b6 23          	movzbl (%rbx),%r12d
  40155d:	45 84 e4             	test   %r12b,%r12b
  401560:	75 df                	jne    401541 <blank_line+0xc>
  401562:	b8 01 00 00 00       	mov    $0x1,%eax
  401567:	eb 05                	jmp    40156e <blank_line+0x39>
  401569:	b8 00 00 00 00       	mov    $0x0,%eax
  40156e:	5b                   	pop    %rbx
  40156f:	41 5c                	pop    %r12
  401571:	5d                   	pop    %rbp
  401572:	c3                   	retq   

0000000000401573 <skip>:
  401573:	55                   	push   %rbp
  401574:	48 89 e5             	mov    %rsp,%rbp
  401577:	53                   	push   %rbx
  401578:	48 83 ec 08          	sub    $0x8,%rsp
  40157c:	48 63 05 39 34 20 00 	movslq 0x203439(%rip),%rax        # 6049bc <num_input_strings>
  401583:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  401587:	48 c1 e7 04          	shl    $0x4,%rdi
  40158b:	48 81 c7 e0 49 60 00 	add    $0x6049e0,%rdi
  401592:	48 8b 15 27 34 20 00 	mov    0x203427(%rip),%rdx        # 6049c0 <infile>
  401599:	be 50 00 00 00       	mov    $0x50,%esi
  40159e:	e8 8d f6 ff ff       	callq  400c30 <fgets@plt>
  4015a3:	48 89 c3             	mov    %rax,%rbx
  4015a6:	48 85 c0             	test   %rax,%rax
  4015a9:	74 0c                	je     4015b7 <skip+0x44>
  4015ab:	48 89 c7             	mov    %rax,%rdi
  4015ae:	e8 82 ff ff ff       	callq  401535 <blank_line>
  4015b3:	85 c0                	test   %eax,%eax
  4015b5:	75 c5                	jne    40157c <skip+0x9>
  4015b7:	48 89 d8             	mov    %rbx,%rax
  4015ba:	48 83 c4 08          	add    $0x8,%rsp
  4015be:	5b                   	pop    %rbx
  4015bf:	5d                   	pop    %rbp
  4015c0:	c3                   	retq   

00000000004015c1 <send_msg>:
  4015c1:	55                   	push   %rbp
  4015c2:	48 89 e5             	mov    %rsp,%rbp
  4015c5:	48 81 ec 20 40 00 00 	sub    $0x4020,%rsp
  4015cc:	41 89 f9             	mov    %edi,%r9d
  4015cf:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4015d6:	00 00 
  4015d8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4015dc:	31 c0                	xor    %eax,%eax
  4015de:	8b 35 d8 33 20 00    	mov    0x2033d8(%rip),%esi        # 6049bc <num_input_strings>
  4015e4:	8d 46 ff             	lea    -0x1(%rsi),%eax
  4015e7:	48 98                	cltq   
  4015e9:	4c 8d 04 80          	lea    (%rax,%rax,4),%r8
  4015ed:	49 c1 e0 04          	shl    $0x4,%r8
  4015f1:	49 81 c0 e0 49 60 00 	add    $0x6049e0,%r8
  4015f8:	4c 89 c7             	mov    %r8,%rdi
  4015fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401600:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401607:	f2 ae                	repnz scas %es:(%rdi),%al
  401609:	48 f7 d1             	not    %rcx
  40160c:	48 83 c1 63          	add    $0x63,%rcx
  401610:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  401617:	76 19                	jbe    401632 <send_msg+0x71>
  401619:	be a8 28 40 00       	mov    $0x4028a8,%esi
  40161e:	bf 01 00 00 00       	mov    $0x1,%edi
  401623:	e8 98 f6 ff ff       	callq  400cc0 <__printf_chk@plt>
  401628:	bf 08 00 00 00       	mov    $0x8,%edi
  40162d:	e8 be f6 ff ff       	callq  400cf0 <exit@plt>
  401632:	45 85 c9             	test   %r9d,%r9d
  401635:	b8 04 2a 40 00       	mov    $0x402a04,%eax
  40163a:	41 b9 0c 2a 40 00    	mov    $0x402a0c,%r9d
  401640:	4c 0f 45 c8          	cmovne %rax,%r9
  401644:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  401649:	89 34 24             	mov    %esi,(%rsp)
  40164c:	44 8b 05 3d 2f 20 00 	mov    0x202f3d(%rip),%r8d        # 604590 <bomb_id>
  401653:	b9 15 2a 40 00       	mov    $0x402a15,%ecx
  401658:	ba 00 20 00 00       	mov    $0x2000,%edx
  40165d:	be 01 00 00 00       	mov    $0x1,%esi
  401662:	48 8d bd f0 bf ff ff 	lea    -0x4010(%rbp),%rdi
  401669:	b8 00 00 00 00       	mov    $0x0,%eax
  40166e:	e8 cd f6 ff ff       	callq  400d40 <__sprintf_chk@plt>
  401673:	4c 8d 85 f0 df ff ff 	lea    -0x2010(%rbp),%r8
  40167a:	b9 00 00 00 00       	mov    $0x0,%ecx
  40167f:	48 8d 95 f0 bf ff ff 	lea    -0x4010(%rbp),%rdx
  401686:	be 70 45 60 00       	mov    $0x604570,%esi
  40168b:	bf 85 45 60 00       	mov    $0x604585,%edi
  401690:	e8 3b 0e 00 00       	callq  4024d0 <driver_post>
  401695:	85 c0                	test   %eax,%eax
  401697:	79 16                	jns    4016af <send_msg+0xee>
  401699:	48 8d bd f0 df ff ff 	lea    -0x2010(%rbp),%rdi
  4016a0:	e8 1b f5 ff ff       	callq  400bc0 <puts@plt>
  4016a5:	bf 00 00 00 00       	mov    $0x0,%edi
  4016aa:	e8 41 f6 ff ff       	callq  400cf0 <exit@plt>
  4016af:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4016b3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016ba:	00 00 
  4016bc:	74 05                	je     4016c3 <send_msg+0x102>
  4016be:	e8 1d f5 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  4016c3:	c9                   	leaveq 
  4016c4:	c3                   	retq   

00000000004016c5 <explode_bomb>:
  4016c5:	55                   	push   %rbp
  4016c6:	48 89 e5             	mov    %rsp,%rbp
  4016c9:	bf 21 2a 40 00       	mov    $0x402a21,%edi
  4016ce:	e8 ed f4 ff ff       	callq  400bc0 <puts@plt>
  4016d3:	bf 2a 2a 40 00       	mov    $0x402a2a,%edi
  4016d8:	e8 e3 f4 ff ff       	callq  400bc0 <puts@plt>
  4016dd:	bf 00 00 00 00       	mov    $0x0,%edi
  4016e2:	e8 da fe ff ff       	callq  4015c1 <send_msg>
  4016e7:	bf d0 28 40 00       	mov    $0x4028d0,%edi
  4016ec:	e8 cf f4 ff ff       	callq  400bc0 <puts@plt>
  4016f1:	bf 08 00 00 00       	mov    $0x8,%edi
  4016f6:	e8 f5 f5 ff ff       	callq  400cf0 <exit@plt>

00000000004016fb <read_six_numbers>:
  4016fb:	55                   	push   %rbp
  4016fc:	48 89 e5             	mov    %rsp,%rbp
  4016ff:	48 83 ec 10          	sub    $0x10,%rsp
  401703:	48 89 f2             	mov    %rsi,%rdx
  401706:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
  40170a:	48 8d 46 14          	lea    0x14(%rsi),%rax
  40170e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401713:	48 8d 46 10          	lea    0x10(%rsi),%rax
  401717:	48 89 04 24          	mov    %rax,(%rsp)
  40171b:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
  40171f:	4c 8d 46 08          	lea    0x8(%rsi),%r8
  401723:	be 41 2a 40 00       	mov    $0x402a41,%esi
  401728:	b8 00 00 00 00       	mov    $0x0,%eax
  40172d:	e8 7e f5 ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  401732:	83 f8 05             	cmp    $0x5,%eax
  401735:	7f 05                	jg     40173c <read_six_numbers+0x41>
  401737:	e8 89 ff ff ff       	callq  4016c5 <explode_bomb>
  40173c:	c9                   	leaveq 
  40173d:	0f 1f 00             	nopl   (%rax)
  401740:	c3                   	retq   

0000000000401741 <read_line>:
  401741:	55                   	push   %rbp
  401742:	48 89 e5             	mov    %rsp,%rbp
  401745:	b8 00 00 00 00       	mov    $0x0,%eax
  40174a:	e8 24 fe ff ff       	callq  401573 <skip>
  40174f:	48 85 c0             	test   %rax,%rax
  401752:	75 6e                	jne    4017c2 <read_line+0x81>
  401754:	48 8b 05 4d 32 20 00 	mov    0x20324d(%rip),%rax        # 6049a8 <stdin@@GLIBC_2.2.5>
  40175b:	48 39 05 5e 32 20 00 	cmp    %rax,0x20325e(%rip)        # 6049c0 <infile>
  401762:	75 14                	jne    401778 <read_line+0x37>
  401764:	bf 53 2a 40 00       	mov    $0x402a53,%edi
  401769:	e8 52 f4 ff ff       	callq  400bc0 <puts@plt>
  40176e:	bf 08 00 00 00       	mov    $0x8,%edi
  401773:	e8 78 f5 ff ff       	callq  400cf0 <exit@plt>
  401778:	bf 71 2a 40 00       	mov    $0x402a71,%edi
  40177d:	e8 fe f3 ff ff       	callq  400b80 <getenv@plt>
  401782:	48 85 c0             	test   %rax,%rax
  401785:	74 0a                	je     401791 <read_line+0x50>
  401787:	bf 00 00 00 00       	mov    $0x0,%edi
  40178c:	e8 5f f5 ff ff       	callq  400cf0 <exit@plt>
  401791:	48 8b 05 10 32 20 00 	mov    0x203210(%rip),%rax        # 6049a8 <stdin@@GLIBC_2.2.5>
  401798:	48 89 05 21 32 20 00 	mov    %rax,0x203221(%rip)        # 6049c0 <infile>
  40179f:	b8 00 00 00 00       	mov    $0x0,%eax
  4017a4:	e8 ca fd ff ff       	callq  401573 <skip>
  4017a9:	48 85 c0             	test   %rax,%rax
  4017ac:	75 14                	jne    4017c2 <read_line+0x81>
  4017ae:	bf 53 2a 40 00       	mov    $0x402a53,%edi
  4017b3:	e8 08 f4 ff ff       	callq  400bc0 <puts@plt>
  4017b8:	bf 00 00 00 00       	mov    $0x0,%edi
  4017bd:	e8 2e f5 ff ff       	callq  400cf0 <exit@plt>
  4017c2:	8b 15 f4 31 20 00    	mov    0x2031f4(%rip),%edx        # 6049bc <num_input_strings>
  4017c8:	48 63 c2             	movslq %edx,%rax
  4017cb:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  4017cf:	48 c1 e6 04          	shl    $0x4,%rsi
  4017d3:	48 81 c6 e0 49 60 00 	add    $0x6049e0,%rsi
  4017da:	48 89 f7             	mov    %rsi,%rdi
  4017dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4017e2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4017e9:	f2 ae                	repnz scas %es:(%rdi),%al
  4017eb:	48 f7 d1             	not    %rcx
  4017ee:	48 83 e9 01          	sub    $0x1,%rcx
  4017f2:	83 f9 4e             	cmp    $0x4e,%ecx
  4017f5:	7e 46                	jle    40183d <read_line+0xfc>
  4017f7:	bf 7c 2a 40 00       	mov    $0x402a7c,%edi
  4017fc:	e8 bf f3 ff ff       	callq  400bc0 <puts@plt>
  401801:	8b 05 b5 31 20 00    	mov    0x2031b5(%rip),%eax        # 6049bc <num_input_strings>
  401807:	8d 50 01             	lea    0x1(%rax),%edx
  40180a:	89 15 ac 31 20 00    	mov    %edx,0x2031ac(%rip)        # 6049bc <num_input_strings>
  401810:	48 98                	cltq   
  401812:	48 6b c0 50          	imul   $0x50,%rax,%rax
  401816:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  40181d:	75 6e 63 
  401820:	48 89 b8 e0 49 60 00 	mov    %rdi,0x6049e0(%rax)
  401827:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  40182e:	2a 2a 00 
  401831:	48 89 b8 e8 49 60 00 	mov    %rdi,0x6049e8(%rax)
  401838:	e8 88 fe ff ff       	callq  4016c5 <explode_bomb>
  40183d:	83 e9 01             	sub    $0x1,%ecx
  401840:	48 63 c9             	movslq %ecx,%rcx
  401843:	48 63 c2             	movslq %edx,%rax
  401846:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40184a:	48 c1 e0 04          	shl    $0x4,%rax
  40184e:	c6 84 01 e0 49 60 00 	movb   $0x0,0x6049e0(%rcx,%rax,1)
  401855:	00 
  401856:	83 c2 01             	add    $0x1,%edx
  401859:	89 15 5d 31 20 00    	mov    %edx,0x20315d(%rip)        # 6049bc <num_input_strings>
  40185f:	48 89 f0             	mov    %rsi,%rax
  401862:	5d                   	pop    %rbp
  401863:	c3                   	retq   

0000000000401864 <phase_defused>:
  401864:	55                   	push   %rbp
  401865:	48 89 e5             	mov    %rsp,%rbp
  401868:	48 83 ec 70          	sub    $0x70,%rsp
  40186c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401873:	00 00 
  401875:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401879:	31 c0                	xor    %eax,%eax
  40187b:	bf 01 00 00 00       	mov    $0x1,%edi
  401880:	e8 3c fd ff ff       	callq  4015c1 <send_msg>
  401885:	83 3d 30 31 20 00 06 	cmpl   $0x6,0x203130(%rip)        # 6049bc <num_input_strings>
  40188c:	75 69                	jne    4018f7 <phase_defused+0x93>
  40188e:	4c 8d 45 a0          	lea    -0x60(%rbp),%r8
  401892:	48 8d 4d 9c          	lea    -0x64(%rbp),%rcx
  401896:	48 8d 55 98          	lea    -0x68(%rbp),%rdx
  40189a:	be 97 2a 40 00       	mov    $0x402a97,%esi
  40189f:	bf d0 4a 60 00       	mov    $0x604ad0,%edi
  4018a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a9:	e8 02 f4 ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  4018ae:	83 f8 03             	cmp    $0x3,%eax
  4018b1:	75 30                	jne    4018e3 <phase_defused+0x7f>
  4018b3:	be a0 2a 40 00       	mov    $0x402aa0,%esi
  4018b8:	48 8d 7d a0          	lea    -0x60(%rbp),%rdi
  4018bc:	e8 0c fb ff ff       	callq  4013cd <strings_not_equal>
  4018c1:	85 c0                	test   %eax,%eax
  4018c3:	75 1e                	jne    4018e3 <phase_defused+0x7f>
  4018c5:	bf f8 28 40 00       	mov    $0x4028f8,%edi
  4018ca:	e8 f1 f2 ff ff       	callq  400bc0 <puts@plt>
  4018cf:	bf 20 29 40 00       	mov    $0x402920,%edi
  4018d4:	e8 e7 f2 ff ff       	callq  400bc0 <puts@plt>
  4018d9:	b8 00 00 00 00       	mov    $0x0,%eax
  4018de:	e8 e0 f9 ff ff       	callq  4012c3 <secret_phase>
  4018e3:	bf 58 29 40 00       	mov    $0x402958,%edi
  4018e8:	e8 d3 f2 ff ff       	callq  400bc0 <puts@plt>
  4018ed:	bf 88 29 40 00       	mov    $0x402988,%edi
  4018f2:	e8 c9 f2 ff ff       	callq  400bc0 <puts@plt>
  4018f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4018fb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401902:	00 00 
  401904:	74 05                	je     40190b <phase_defused+0xa7>
  401906:	e8 d5 f2 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  40190b:	c9                   	leaveq 
  40190c:	0f 1f 40 00          	nopl   0x0(%rax)
  401910:	c3                   	retq   
  401911:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401918:	00 00 00 
  40191b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401920 <sigalrm_handler>:
  401920:	55                   	push   %rbp
  401921:	48 89 e5             	mov    %rsp,%rbp
  401924:	b9 00 00 00 00       	mov    $0x0,%ecx
  401929:	ba 28 2b 40 00       	mov    $0x402b28,%edx
  40192e:	be 01 00 00 00       	mov    $0x1,%esi
  401933:	48 8b 3d 76 30 20 00 	mov    0x203076(%rip),%rdi        # 6049b0 <stderr@@GLIBC_2.2.5>
  40193a:	b8 00 00 00 00       	mov    $0x0,%eax
  40193f:	e8 cc f3 ff ff       	callq  400d10 <__fprintf_chk@plt>
  401944:	bf 01 00 00 00       	mov    $0x1,%edi
  401949:	e8 a2 f3 ff ff       	callq  400cf0 <exit@plt>

000000000040194e <rio_readlineb>:
  40194e:	55                   	push   %rbp
  40194f:	48 89 e5             	mov    %rsp,%rbp
  401952:	41 57                	push   %r15
  401954:	41 56                	push   %r14
  401956:	41 55                	push   %r13
  401958:	41 54                	push   %r12
  40195a:	53                   	push   %rbx
  40195b:	48 83 ec 38          	sub    $0x38,%rsp
  40195f:	49 89 f6             	mov    %rsi,%r14
  401962:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
  401966:	48 83 fa 01          	cmp    $0x1,%rdx
  40196a:	0f 86 c5 00 00 00    	jbe    401a35 <rio_readlineb+0xe7>
  401970:	48 89 fb             	mov    %rdi,%rbx
  401973:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%rbp)
  40197a:	4c 8d 6f 10          	lea    0x10(%rdi),%r13
  40197e:	eb 2d                	jmp    4019ad <rio_readlineb+0x5f>
  401980:	ba 00 20 00 00       	mov    $0x2000,%edx
  401985:	4c 89 ee             	mov    %r13,%rsi
  401988:	8b 3b                	mov    (%rbx),%edi
  40198a:	e8 81 f2 ff ff       	callq  400c10 <read@plt>
  40198f:	89 43 04             	mov    %eax,0x4(%rbx)
  401992:	85 c0                	test   %eax,%eax
  401994:	79 0f                	jns    4019a5 <rio_readlineb+0x57>
  401996:	e8 05 f2 ff ff       	callq  400ba0 <__errno_location@plt>
  40199b:	83 38 04             	cmpl   $0x4,(%rax)
  40199e:	74 0d                	je     4019ad <rio_readlineb+0x5f>
  4019a0:	e9 a1 00 00 00       	jmpq   401a46 <rio_readlineb+0xf8>
  4019a5:	85 c0                	test   %eax,%eax
  4019a7:	74 6f                	je     401a18 <rio_readlineb+0xca>
  4019a9:	4c 89 6b 08          	mov    %r13,0x8(%rbx)
  4019ad:	44 8b 63 04          	mov    0x4(%rbx),%r12d
  4019b1:	45 85 e4             	test   %r12d,%r12d
  4019b4:	7e ca                	jle    401980 <rio_readlineb+0x32>
  4019b6:	45 85 e4             	test   %r12d,%r12d
  4019b9:	41 0f 95 c7          	setne  %r15b
  4019bd:	41 0f b6 c7          	movzbl %r15b,%eax
  4019c1:	89 45 b8             	mov    %eax,-0x48(%rbp)
  4019c4:	45 0f b6 ff          	movzbl %r15b,%r15d
  4019c8:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  4019cc:	48 89 ce             	mov    %rcx,%rsi
  4019cf:	b9 01 00 00 00       	mov    $0x1,%ecx
  4019d4:	4c 89 fa             	mov    %r15,%rdx
  4019d7:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  4019db:	48 8d 7d cf          	lea    -0x31(%rbp),%rdi
  4019df:	e8 8c f2 ff ff       	callq  400c70 <__memcpy_chk@plt>
  4019e4:	4c 03 7d b0          	add    -0x50(%rbp),%r15
  4019e8:	4c 89 7b 08          	mov    %r15,0x8(%rbx)
  4019ec:	8b 45 b8             	mov    -0x48(%rbp),%eax
  4019ef:	41 29 c4             	sub    %eax,%r12d
  4019f2:	44 89 63 04          	mov    %r12d,0x4(%rbx)
  4019f6:	83 f8 01             	cmp    $0x1,%eax
  4019f9:	75 12                	jne    401a0d <rio_readlineb+0xbf>
  4019fb:	49 83 c6 01          	add    $0x1,%r14
  4019ff:	0f b6 45 cf          	movzbl -0x31(%rbp),%eax
  401a03:	41 88 46 ff          	mov    %al,-0x1(%r14)
  401a07:	3c 0a                	cmp    $0xa,%al
  401a09:	75 17                	jne    401a22 <rio_readlineb+0xd4>
  401a0b:	eb 2f                	jmp    401a3c <rio_readlineb+0xee>
  401a0d:	83 7d b8 00          	cmpl   $0x0,-0x48(%rbp)
  401a11:	75 3c                	jne    401a4f <rio_readlineb+0x101>
  401a13:	8b 45 bc             	mov    -0x44(%rbp),%eax
  401a16:	eb 03                	jmp    401a1b <rio_readlineb+0xcd>
  401a18:	8b 45 bc             	mov    -0x44(%rbp),%eax
  401a1b:	83 f8 01             	cmp    $0x1,%eax
  401a1e:	75 1c                	jne    401a3c <rio_readlineb+0xee>
  401a20:	eb 36                	jmp    401a58 <rio_readlineb+0x10a>
  401a22:	83 45 bc 01          	addl   $0x1,-0x44(%rbp)
  401a26:	48 63 45 bc          	movslq -0x44(%rbp),%rax
  401a2a:	48 3b 45 a8          	cmp    -0x58(%rbp),%rax
  401a2e:	73 0c                	jae    401a3c <rio_readlineb+0xee>
  401a30:	e9 78 ff ff ff       	jmpq   4019ad <rio_readlineb+0x5f>
  401a35:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%rbp)
  401a3c:	41 c6 06 00          	movb   $0x0,(%r14)
  401a40:	48 63 45 bc          	movslq -0x44(%rbp),%rax
  401a44:	eb 17                	jmp    401a5d <rio_readlineb+0x10f>
  401a46:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a4d:	eb 0e                	jmp    401a5d <rio_readlineb+0x10f>
  401a4f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a56:	eb 05                	jmp    401a5d <rio_readlineb+0x10f>
  401a58:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5d:	48 83 c4 38          	add    $0x38,%rsp
  401a61:	5b                   	pop    %rbx
  401a62:	41 5c                	pop    %r12
  401a64:	41 5d                	pop    %r13
  401a66:	41 5e                	pop    %r14
  401a68:	41 5f                	pop    %r15
  401a6a:	5d                   	pop    %rbp
  401a6b:	c3                   	retq   

0000000000401a6c <submitr>:
  401a6c:	55                   	push   %rbp
  401a6d:	48 89 e5             	mov    %rsp,%rbp
  401a70:	41 57                	push   %r15
  401a72:	41 56                	push   %r14
  401a74:	41 55                	push   %r13
  401a76:	41 54                	push   %r12
  401a78:	53                   	push   %rbx
  401a79:	48 81 ec 88 a0 00 00 	sub    $0xa088,%rsp
  401a80:	49 89 fe             	mov    %rdi,%r14
  401a83:	41 89 f4             	mov    %esi,%r12d
  401a86:	48 89 95 88 5f ff ff 	mov    %rdx,-0xa078(%rbp)
  401a8d:	48 89 8d 80 5f ff ff 	mov    %rcx,-0xa080(%rbp)
  401a94:	4c 89 85 70 5f ff ff 	mov    %r8,-0xa090(%rbp)
  401a9b:	4c 89 8d 78 5f ff ff 	mov    %r9,-0xa088(%rbp)
  401aa2:	48 8b 5d 10          	mov    0x10(%rbp),%rbx
  401aa6:	4c 8b 7d 18          	mov    0x18(%rbp),%r15
  401aaa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ab1:	00 00 
  401ab3:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  401ab7:	31 c0                	xor    %eax,%eax
  401ab9:	c7 85 9c 5f ff ff 00 	movl   $0x0,-0xa064(%rbp)
  401ac0:	00 00 00 
  401ac3:	ba 00 00 00 00       	mov    $0x0,%edx
  401ac8:	be 01 00 00 00       	mov    $0x1,%esi
  401acd:	bf 02 00 00 00       	mov    $0x2,%edi
  401ad2:	e8 79 f2 ff ff       	callq  400d50 <socket@plt>
  401ad7:	41 89 c5             	mov    %eax,%r13d
  401ada:	85 c0                	test   %eax,%eax
  401adc:	79 50                	jns    401b2e <submitr+0xc2>
  401ade:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401ae5:	3a 20 43 
  401ae8:	49 89 07             	mov    %rax,(%r15)
  401aeb:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401af2:	20 75 6e 
  401af5:	49 89 47 08          	mov    %rax,0x8(%r15)
  401af9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401b00:	74 6f 20 
  401b03:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b07:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401b0e:	65 20 73 
  401b11:	49 89 47 18          	mov    %rax,0x18(%r15)
  401b15:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
  401b1c:	65 
  401b1d:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
  401b24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b29:	e9 3d 06 00 00       	jmpq   40216b <submitr+0x6ff>
  401b2e:	4c 89 f7             	mov    %r14,%rdi
  401b31:	e8 1a f1 ff ff       	callq  400c50 <gethostbyname@plt>
  401b36:	48 85 c0             	test   %rax,%rax
  401b39:	75 6b                	jne    401ba6 <submitr+0x13a>
  401b3b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401b42:	3a 20 44 
  401b45:	49 89 07             	mov    %rax,(%r15)
  401b48:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401b4f:	20 75 6e 
  401b52:	49 89 47 08          	mov    %rax,0x8(%r15)
  401b56:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401b5d:	74 6f 20 
  401b60:	49 89 47 10          	mov    %rax,0x10(%r15)
  401b64:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401b6b:	76 65 20 
  401b6e:	49 89 47 18          	mov    %rax,0x18(%r15)
  401b72:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401b79:	72 20 61 
  401b7c:	49 89 47 20          	mov    %rax,0x20(%r15)
  401b80:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
  401b87:	65 
  401b88:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
  401b8f:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
  401b94:	44 89 ef             	mov    %r13d,%edi
  401b97:	e8 64 f0 ff ff       	callq  400c00 <close@plt>
  401b9c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ba1:	e9 c5 05 00 00       	jmpq   40216b <submitr+0x6ff>
  401ba6:	48 c7 85 a0 5f ff ff 	movq   $0x0,-0xa060(%rbp)
  401bad:	00 00 00 00 
  401bb1:	48 c7 85 a8 5f ff ff 	movq   $0x0,-0xa058(%rbp)
  401bb8:	00 00 00 00 
  401bbc:	66 c7 85 a0 5f ff ff 	movw   $0x2,-0xa060(%rbp)
  401bc3:	02 00 
  401bc5:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401bc9:	48 8b 40 18          	mov    0x18(%rax),%rax
  401bcd:	48 8d 8d a0 5f ff ff 	lea    -0xa060(%rbp),%rcx
  401bd4:	48 8d 79 04          	lea    0x4(%rcx),%rdi
  401bd8:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401bdd:	48 8b 30             	mov    (%rax),%rsi
  401be0:	e8 7b f0 ff ff       	callq  400c60 <__memmove_chk@plt>
  401be5:	66 41 c1 cc 08       	ror    $0x8,%r12w
  401bea:	66 44 89 a5 a2 5f ff 	mov    %r12w,-0xa05e(%rbp)
  401bf1:	ff 
  401bf2:	ba 10 00 00 00       	mov    $0x10,%edx
  401bf7:	48 8d b5 a0 5f ff ff 	lea    -0xa060(%rbp),%rsi
  401bfe:	44 89 ef             	mov    %r13d,%edi
  401c01:	e8 fa f0 ff ff       	callq  400d00 <connect@plt>
  401c06:	85 c0                	test   %eax,%eax
  401c08:	79 5d                	jns    401c67 <submitr+0x1fb>
  401c0a:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401c11:	3a 20 55 
  401c14:	49 89 07             	mov    %rax,(%r15)
  401c17:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401c1e:	20 74 6f 
  401c21:	49 89 47 08          	mov    %rax,0x8(%r15)
  401c25:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401c2c:	65 63 74 
  401c2f:	49 89 47 10          	mov    %rax,0x10(%r15)
  401c33:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401c3a:	68 65 20 
  401c3d:	49 89 47 18          	mov    %rax,0x18(%r15)
  401c41:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
  401c48:	76 
  401c49:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
  401c50:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
  401c55:	44 89 ef             	mov    %r13d,%edi
  401c58:	e8 a3 ef ff ff       	callq  400c00 <close@plt>
  401c5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c62:	e9 04 05 00 00       	jmpq   40216b <submitr+0x6ff>
  401c67:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401c6e:	48 89 df             	mov    %rbx,%rdi
  401c71:	b8 00 00 00 00       	mov    $0x0,%eax
  401c76:	48 89 d1             	mov    %rdx,%rcx
  401c79:	f2 ae                	repnz scas %es:(%rdi),%al
  401c7b:	48 f7 d1             	not    %rcx
  401c7e:	48 89 ce             	mov    %rcx,%rsi
  401c81:	48 8b bd 88 5f ff ff 	mov    -0xa078(%rbp),%rdi
  401c88:	48 89 d1             	mov    %rdx,%rcx
  401c8b:	f2 ae                	repnz scas %es:(%rdi),%al
  401c8d:	49 89 c8             	mov    %rcx,%r8
  401c90:	48 8b bd 80 5f ff ff 	mov    -0xa080(%rbp),%rdi
  401c97:	48 89 d1             	mov    %rdx,%rcx
  401c9a:	f2 ae                	repnz scas %es:(%rdi),%al
  401c9c:	48 f7 d1             	not    %rcx
  401c9f:	49 89 c9             	mov    %rcx,%r9
  401ca2:	48 8b bd 78 5f ff ff 	mov    -0xa088(%rbp),%rdi
  401ca9:	48 89 d1             	mov    %rdx,%rcx
  401cac:	f2 ae                	repnz scas %es:(%rdi),%al
  401cae:	4d 29 c1             	sub    %r8,%r9
  401cb1:	49 29 c9             	sub    %rcx,%r9
  401cb4:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401cb9:	49 8d 44 01 7b       	lea    0x7b(%r9,%rax,1),%rax
  401cbe:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401cc4:	76 73                	jbe    401d39 <submitr+0x2cd>
  401cc6:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401ccd:	3a 20 52 
  401cd0:	49 89 07             	mov    %rax,(%r15)
  401cd3:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401cda:	20 73 74 
  401cdd:	49 89 47 08          	mov    %rax,0x8(%r15)
  401ce1:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401ce8:	74 6f 6f 
  401ceb:	49 89 47 10          	mov    %rax,0x10(%r15)
  401cef:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401cf6:	65 2e 20 
  401cf9:	49 89 47 18          	mov    %rax,0x18(%r15)
  401cfd:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401d04:	61 73 65 
  401d07:	49 89 47 20          	mov    %rax,0x20(%r15)
  401d0b:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401d12:	49 54 52 
  401d15:	49 89 47 28          	mov    %rax,0x28(%r15)
  401d19:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401d20:	55 46 00 
  401d23:	49 89 47 30          	mov    %rax,0x30(%r15)
  401d27:	44 89 ef             	mov    %r13d,%edi
  401d2a:	e8 d1 ee ff ff       	callq  400c00 <close@plt>
  401d2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d34:	e9 32 04 00 00       	jmpq   40216b <submitr+0x6ff>
  401d39:	48 8d 95 b0 7f ff ff 	lea    -0x8050(%rbp),%rdx
  401d40:	b9 00 04 00 00       	mov    $0x400,%ecx
  401d45:	b8 00 00 00 00       	mov    $0x0,%eax
  401d4a:	48 89 d7             	mov    %rdx,%rdi
  401d4d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401d50:	48 89 df             	mov    %rbx,%rdi
  401d53:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401d5a:	f2 ae                	repnz scas %es:(%rdi),%al
  401d5c:	48 f7 d1             	not    %rcx
  401d5f:	48 83 e9 01          	sub    $0x1,%rcx
  401d63:	85 c9                	test   %ecx,%ecx
  401d65:	0f 84 18 04 00 00    	je     402183 <submitr+0x717>
  401d6b:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401d6e:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
  401d73:	49 89 d4             	mov    %rdx,%r12
  401d76:	44 0f b6 03          	movzbl (%rbx),%r8d
  401d7a:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401d7e:	74 23                	je     401da3 <submitr+0x337>
  401d80:	41 8d 40 d3          	lea    -0x2d(%r8),%eax
  401d84:	3c 01                	cmp    $0x1,%al
  401d86:	76 1b                	jbe    401da3 <submitr+0x337>
  401d88:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401d8c:	74 15                	je     401da3 <submitr+0x337>
  401d8e:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401d92:	3c 09                	cmp    $0x9,%al
  401d94:	76 0d                	jbe    401da3 <submitr+0x337>
  401d96:	44 89 c0             	mov    %r8d,%eax
  401d99:	83 e0 df             	and    $0xffffffdf,%eax
  401d9c:	83 e8 41             	sub    $0x41,%eax
  401d9f:	3c 19                	cmp    $0x19,%al
  401da1:	77 0b                	ja     401dae <submitr+0x342>
  401da3:	49 8d 44 24 01       	lea    0x1(%r12),%rax
  401da8:	45 88 04 24          	mov    %r8b,(%r12)
  401dac:	eb 70                	jmp    401e1e <submitr+0x3b2>
  401dae:	41 80 f8 20          	cmp    $0x20,%r8b
  401db2:	75 0c                	jne    401dc0 <submitr+0x354>
  401db4:	49 8d 44 24 01       	lea    0x1(%r12),%rax
  401db9:	41 c6 04 24 2b       	movb   $0x2b,(%r12)
  401dbe:	eb 5e                	jmp    401e1e <submitr+0x3b2>
  401dc0:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401dc4:	3c 5f                	cmp    $0x5f,%al
  401dc6:	76 0a                	jbe    401dd2 <submitr+0x366>
  401dc8:	41 80 f8 09          	cmp    $0x9,%r8b
  401dcc:	0f 85 36 04 00 00    	jne    402208 <submitr+0x79c>
  401dd2:	45 0f b6 c0          	movzbl %r8b,%r8d
  401dd6:	b9 00 2c 40 00       	mov    $0x402c00,%ecx
  401ddb:	ba 08 00 00 00       	mov    $0x8,%edx
  401de0:	be 01 00 00 00       	mov    $0x1,%esi
  401de5:	48 8d bd b0 df ff ff 	lea    -0x2050(%rbp),%rdi
  401dec:	b8 00 00 00 00       	mov    $0x0,%eax
  401df1:	e8 4a ef ff ff       	callq  400d40 <__sprintf_chk@plt>
  401df6:	0f b6 85 b0 df ff ff 	movzbl -0x2050(%rbp),%eax
  401dfd:	41 88 04 24          	mov    %al,(%r12)
  401e01:	0f b6 85 b1 df ff ff 	movzbl -0x204f(%rbp),%eax
  401e08:	41 88 44 24 01       	mov    %al,0x1(%r12)
  401e0d:	49 8d 44 24 03       	lea    0x3(%r12),%rax
  401e12:	0f b6 95 b2 df ff ff 	movzbl -0x204e(%rbp),%edx
  401e19:	41 88 54 24 02       	mov    %dl,0x2(%r12)
  401e1e:	48 83 c3 01          	add    $0x1,%rbx
  401e22:	4c 39 f3             	cmp    %r14,%rbx
  401e25:	0f 84 58 03 00 00    	je     402183 <submitr+0x717>
  401e2b:	49 89 c4             	mov    %rax,%r12
  401e2e:	e9 43 ff ff ff       	jmpq   401d76 <submitr+0x30a>
  401e33:	48 89 da             	mov    %rbx,%rdx
  401e36:	4c 89 e6             	mov    %r12,%rsi
  401e39:	44 89 ef             	mov    %r13d,%edi
  401e3c:	e8 8f ed ff ff       	callq  400bd0 <write@plt>
  401e41:	48 85 c0             	test   %rax,%rax
  401e44:	7f 11                	jg     401e57 <submitr+0x3eb>
  401e46:	e8 55 ed ff ff       	callq  400ba0 <__errno_location@plt>
  401e4b:	83 38 04             	cmpl   $0x4,(%rax)
  401e4e:	66 90                	xchg   %ax,%ax
  401e50:	75 12                	jne    401e64 <submitr+0x3f8>
  401e52:	b8 00 00 00 00       	mov    $0x0,%eax
  401e57:	49 01 c4             	add    %rax,%r12
  401e5a:	48 29 c3             	sub    %rax,%rbx
  401e5d:	75 d4                	jne    401e33 <submitr+0x3c7>
  401e5f:	4d 85 f6             	test   %r14,%r14
  401e62:	79 5f                	jns    401ec3 <submitr+0x457>
  401e64:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401e6b:	3a 20 43 
  401e6e:	49 89 07             	mov    %rax,(%r15)
  401e71:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401e78:	20 75 6e 
  401e7b:	49 89 47 08          	mov    %rax,0x8(%r15)
  401e7f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401e86:	74 6f 20 
  401e89:	49 89 47 10          	mov    %rax,0x10(%r15)
  401e8d:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401e94:	20 74 6f 
  401e97:	49 89 47 18          	mov    %rax,0x18(%r15)
  401e9b:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
  401ea2:	73 65 72 
  401ea5:	49 89 47 20          	mov    %rax,0x20(%r15)
  401ea9:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
  401eb0:	00 
  401eb1:	44 89 ef             	mov    %r13d,%edi
  401eb4:	e8 47 ed ff ff       	callq  400c00 <close@plt>
  401eb9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ebe:	e9 a8 02 00 00       	jmpq   40216b <submitr+0x6ff>
  401ec3:	44 89 ad b0 df ff ff 	mov    %r13d,-0x2050(%rbp)
  401eca:	c7 85 b4 df ff ff 00 	movl   $0x0,-0x204c(%rbp)
  401ed1:	00 00 00 
  401ed4:	48 8d 85 b0 df ff ff 	lea    -0x2050(%rbp),%rax
  401edb:	48 83 c0 10          	add    $0x10,%rax
  401edf:	48 89 85 b8 df ff ff 	mov    %rax,-0x2048(%rbp)
  401ee6:	ba 00 20 00 00       	mov    $0x2000,%edx
  401eeb:	48 8d b5 b0 5f ff ff 	lea    -0xa050(%rbp),%rsi
  401ef2:	48 8d bd b0 df ff ff 	lea    -0x2050(%rbp),%rdi
  401ef9:	e8 50 fa ff ff       	callq  40194e <rio_readlineb>
  401efe:	48 85 c0             	test   %rax,%rax
  401f01:	7f 74                	jg     401f77 <submitr+0x50b>
  401f03:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f0a:	3a 20 43 
  401f0d:	49 89 07             	mov    %rax,(%r15)
  401f10:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f17:	20 75 6e 
  401f1a:	49 89 47 08          	mov    %rax,0x8(%r15)
  401f1e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f25:	74 6f 20 
  401f28:	49 89 47 10          	mov    %rax,0x10(%r15)
  401f2c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401f33:	66 69 72 
  401f36:	49 89 47 18          	mov    %rax,0x18(%r15)
  401f3a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401f41:	61 64 65 
  401f44:	49 89 47 20          	mov    %rax,0x20(%r15)
  401f48:	48 b8 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rax
  401f4f:	6d 20 73 
  401f52:	49 89 47 28          	mov    %rax,0x28(%r15)
  401f56:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
  401f5d:	65 
  401f5e:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
  401f65:	44 89 ef             	mov    %r13d,%edi
  401f68:	e8 93 ec ff ff       	callq  400c00 <close@plt>
  401f6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f72:	e9 f4 01 00 00       	jmpq   40216b <submitr+0x6ff>
  401f77:	4c 8d 85 b0 bf ff ff 	lea    -0x4050(%rbp),%r8
  401f7e:	48 8d 8d 9c 5f ff ff 	lea    -0xa064(%rbp),%rcx
  401f85:	48 8d 95 b0 9f ff ff 	lea    -0x6050(%rbp),%rdx
  401f8c:	be 07 2c 40 00       	mov    $0x402c07,%esi
  401f91:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  401f98:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9d:	e8 0e ed ff ff       	callq  400cb0 <__isoc99_sscanf@plt>
  401fa2:	44 8b 85 9c 5f ff ff 	mov    -0xa064(%rbp),%r8d
  401fa9:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  401fb0:	0f 84 be 00 00 00    	je     402074 <submitr+0x608>
  401fb6:	4c 8d 8d b0 bf ff ff 	lea    -0x4050(%rbp),%r9
  401fbd:	b9 50 2b 40 00       	mov    $0x402b50,%ecx
  401fc2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401fc9:	be 01 00 00 00       	mov    $0x1,%esi
  401fce:	4c 89 ff             	mov    %r15,%rdi
  401fd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd6:	e8 65 ed ff ff       	callq  400d40 <__sprintf_chk@plt>
  401fdb:	44 89 ef             	mov    %r13d,%edi
  401fde:	e8 1d ec ff ff       	callq  400c00 <close@plt>
  401fe3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fe8:	e9 7e 01 00 00       	jmpq   40216b <submitr+0x6ff>
  401fed:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ff2:	48 8d b5 b0 5f ff ff 	lea    -0xa050(%rbp),%rsi
  401ff9:	48 8d bd b0 df ff ff 	lea    -0x2050(%rbp),%rdi
  402000:	e8 49 f9 ff ff       	callq  40194e <rio_readlineb>
  402005:	48 85 c0             	test   %rax,%rax
  402008:	7f 6a                	jg     402074 <submitr+0x608>
  40200a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402011:	3a 20 43 
  402014:	49 89 07             	mov    %rax,(%r15)
  402017:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40201e:	20 75 6e 
  402021:	49 89 47 08          	mov    %rax,0x8(%r15)
  402025:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40202c:	74 6f 20 
  40202f:	49 89 47 10          	mov    %rax,0x10(%r15)
  402033:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40203a:	68 65 61 
  40203d:	49 89 47 18          	mov    %rax,0x18(%r15)
  402041:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402048:	66 72 6f 
  40204b:	49 89 47 20          	mov    %rax,0x20(%r15)
  40204f:	48 b8 6d 20 73 65 72 	movabs $0x726576726573206d,%rax
  402056:	76 65 72 
  402059:	49 89 47 28          	mov    %rax,0x28(%r15)
  40205d:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
  402062:	44 89 ef             	mov    %r13d,%edi
  402065:	e8 96 eb ff ff       	callq  400c00 <close@plt>
  40206a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40206f:	e9 f7 00 00 00       	jmpq   40216b <submitr+0x6ff>
  402074:	80 bd b0 5f ff ff 0d 	cmpb   $0xd,-0xa050(%rbp)
  40207b:	0f 85 6c ff ff ff    	jne    401fed <submitr+0x581>
  402081:	80 bd b1 5f ff ff 0a 	cmpb   $0xa,-0xa04f(%rbp)
  402088:	0f 85 5f ff ff ff    	jne    401fed <submitr+0x581>
  40208e:	80 bd b2 5f ff ff 00 	cmpb   $0x0,-0xa04e(%rbp)
  402095:	0f 85 52 ff ff ff    	jne    401fed <submitr+0x581>
  40209b:	ba 00 20 00 00       	mov    $0x2000,%edx
  4020a0:	48 8d b5 b0 5f ff ff 	lea    -0xa050(%rbp),%rsi
  4020a7:	48 8d bd b0 df ff ff 	lea    -0x2050(%rbp),%rdi
  4020ae:	e8 9b f8 ff ff       	callq  40194e <rio_readlineb>
  4020b3:	48 85 c0             	test   %rax,%rax
  4020b6:	7f 70                	jg     402128 <submitr+0x6bc>
  4020b8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4020bf:	3a 20 43 
  4020c2:	49 89 07             	mov    %rax,(%r15)
  4020c5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020cc:	20 75 6e 
  4020cf:	49 89 47 08          	mov    %rax,0x8(%r15)
  4020d3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020da:	74 6f 20 
  4020dd:	49 89 47 10          	mov    %rax,0x10(%r15)
  4020e1:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4020e8:	73 74 61 
  4020eb:	49 89 47 18          	mov    %rax,0x18(%r15)
  4020ef:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4020f6:	65 73 73 
  4020f9:	49 89 47 20          	mov    %rax,0x20(%r15)
  4020fd:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402104:	72 6f 6d 
  402107:	49 89 47 28          	mov    %rax,0x28(%r15)
  40210b:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402112:	65 72 00 
  402115:	49 89 47 30          	mov    %rax,0x30(%r15)
  402119:	44 89 ef             	mov    %r13d,%edi
  40211c:	e8 df ea ff ff       	callq  400c00 <close@plt>
  402121:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402126:	eb 43                	jmp    40216b <submitr+0x6ff>
  402128:	48 8d b5 b0 5f ff ff 	lea    -0xa050(%rbp),%rsi
  40212f:	4c 89 ff             	mov    %r15,%rdi
  402132:	e8 79 ea ff ff       	callq  400bb0 <strcpy@plt>
  402137:	44 89 ef             	mov    %r13d,%edi
  40213a:	e8 c1 ea ff ff       	callq  400c00 <close@plt>
  40213f:	41 0f b6 07          	movzbl (%r15),%eax
  402143:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402148:	29 c2                	sub    %eax,%edx
  40214a:	75 15                	jne    402161 <submitr+0x6f5>
  40214c:	41 0f b6 47 01       	movzbl 0x1(%r15),%eax
  402151:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402156:	29 c2                	sub    %eax,%edx
  402158:	75 07                	jne    402161 <submitr+0x6f5>
  40215a:	41 0f b6 57 02       	movzbl 0x2(%r15),%edx
  40215f:	f7 da                	neg    %edx
  402161:	85 d2                	test   %edx,%edx
  402163:	0f 95 c0             	setne  %al
  402166:	0f b6 c0             	movzbl %al,%eax
  402169:	f7 d8                	neg    %eax
  40216b:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  40216f:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  402176:	00 00 
  402178:	0f 84 1c 01 00 00    	je     40229a <submitr+0x82e>
  40217e:	e9 12 01 00 00       	jmpq   402295 <submitr+0x829>
  402183:	48 8d 85 b0 7f ff ff 	lea    -0x8050(%rbp),%rax
  40218a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  40218f:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402196:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40219b:	48 8b 85 70 5f ff ff 	mov    -0xa090(%rbp),%rax
  4021a2:	48 89 04 24          	mov    %rax,(%rsp)
  4021a6:	4c 8b 8d 80 5f ff ff 	mov    -0xa080(%rbp),%r9
  4021ad:	4c 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%r8
  4021b4:	b9 80 2b 40 00       	mov    $0x402b80,%ecx
  4021b9:	ba 00 20 00 00       	mov    $0x2000,%edx
  4021be:	be 01 00 00 00       	mov    $0x1,%esi
  4021c3:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  4021ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4021cf:	e8 6c eb ff ff       	callq  400d40 <__sprintf_chk@plt>
  4021d4:	48 8d bd b0 5f ff ff 	lea    -0xa050(%rbp),%rdi
  4021db:	b8 00 00 00 00       	mov    $0x0,%eax
  4021e0:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4021e7:	f2 ae                	repnz scas %es:(%rdi),%al
  4021e9:	48 f7 d1             	not    %rcx
  4021ec:	48 83 e9 01          	sub    $0x1,%rcx
  4021f0:	49 89 ce             	mov    %rcx,%r14
  4021f3:	0f 84 ca fc ff ff    	je     401ec3 <submitr+0x457>
  4021f9:	48 89 cb             	mov    %rcx,%rbx
  4021fc:	4c 8d a5 b0 5f ff ff 	lea    -0xa050(%rbp),%r12
  402203:	e9 2b fc ff ff       	jmpq   401e33 <submitr+0x3c7>
  402208:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40220f:	3a 20 52 
  402212:	49 89 07             	mov    %rax,(%r15)
  402215:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40221c:	20 73 74 
  40221f:	49 89 47 08          	mov    %rax,0x8(%r15)
  402223:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40222a:	63 6f 6e 
  40222d:	49 89 47 10          	mov    %rax,0x10(%r15)
  402231:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402238:	20 61 6e 
  40223b:	49 89 47 18          	mov    %rax,0x18(%r15)
  40223f:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402246:	67 61 6c 
  402249:	49 89 47 20          	mov    %rax,0x20(%r15)
  40224d:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402254:	6e 70 72 
  402257:	49 89 47 28          	mov    %rax,0x28(%r15)
  40225b:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402262:	6c 65 20 
  402265:	49 89 47 30          	mov    %rax,0x30(%r15)
  402269:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402270:	63 74 65 
  402273:	49 89 47 38          	mov    %rax,0x38(%r15)
  402277:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
  40227e:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
  402283:	44 89 ef             	mov    %r13d,%edi
  402286:	e8 75 e9 ff ff       	callq  400c00 <close@plt>
  40228b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402290:	e9 d6 fe ff ff       	jmpq   40216b <submitr+0x6ff>
  402295:	e8 46 e9 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  40229a:	48 81 c4 88 a0 00 00 	add    $0xa088,%rsp
  4022a1:	5b                   	pop    %rbx
  4022a2:	41 5c                	pop    %r12
  4022a4:	41 5d                	pop    %r13
  4022a6:	41 5e                	pop    %r14
  4022a8:	41 5f                	pop    %r15
  4022aa:	5d                   	pop    %rbp
  4022ab:	c3                   	retq   

00000000004022ac <init_timeout>:
  4022ac:	55                   	push   %rbp
  4022ad:	48 89 e5             	mov    %rsp,%rbp
  4022b0:	53                   	push   %rbx
  4022b1:	48 83 ec 08          	sub    $0x8,%rsp
  4022b5:	89 fb                	mov    %edi,%ebx
  4022b7:	85 ff                	test   %edi,%edi
  4022b9:	74 1e                	je     4022d9 <init_timeout+0x2d>
  4022bb:	be 20 19 40 00       	mov    $0x401920,%esi
  4022c0:	bf 0e 00 00 00       	mov    $0xe,%edi
  4022c5:	e8 76 e9 ff ff       	callq  400c40 <signal@plt>
  4022ca:	85 db                	test   %ebx,%ebx
  4022cc:	bf 00 00 00 00       	mov    $0x0,%edi
  4022d1:	0f 49 fb             	cmovns %ebx,%edi
  4022d4:	e8 17 e9 ff ff       	callq  400bf0 <alarm@plt>
  4022d9:	48 83 c4 08          	add    $0x8,%rsp
  4022dd:	5b                   	pop    %rbx
  4022de:	5d                   	pop    %rbp
  4022df:	c3                   	retq   

00000000004022e0 <init_driver>:
  4022e0:	55                   	push   %rbp
  4022e1:	48 89 e5             	mov    %rsp,%rbp
  4022e4:	41 54                	push   %r12
  4022e6:	53                   	push   %rbx
  4022e7:	48 83 ec 20          	sub    $0x20,%rsp
  4022eb:	49 89 fc             	mov    %rdi,%r12
  4022ee:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022f5:	00 00 
  4022f7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4022fb:	31 c0                	xor    %eax,%eax
  4022fd:	be 01 00 00 00       	mov    $0x1,%esi
  402302:	bf 0d 00 00 00       	mov    $0xd,%edi
  402307:	e8 34 e9 ff ff       	callq  400c40 <signal@plt>
  40230c:	be 01 00 00 00       	mov    $0x1,%esi
  402311:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402316:	e8 25 e9 ff ff       	callq  400c40 <signal@plt>
  40231b:	be 01 00 00 00       	mov    $0x1,%esi
  402320:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402325:	e8 16 e9 ff ff       	callq  400c40 <signal@plt>
  40232a:	ba 00 00 00 00       	mov    $0x0,%edx
  40232f:	be 01 00 00 00       	mov    $0x1,%esi
  402334:	bf 02 00 00 00       	mov    $0x2,%edi
  402339:	e8 12 ea ff ff       	callq  400d50 <socket@plt>
  40233e:	89 c3                	mov    %eax,%ebx
  402340:	85 c0                	test   %eax,%eax
  402342:	79 56                	jns    40239a <init_driver+0xba>
  402344:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40234b:	3a 20 43 
  40234e:	49 89 04 24          	mov    %rax,(%r12)
  402352:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402359:	20 75 6e 
  40235c:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  402361:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402368:	74 6f 20 
  40236b:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  402370:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402377:	65 20 73 
  40237a:	49 89 44 24 18       	mov    %rax,0x18(%r12)
  40237f:	41 c7 44 24 20 6f 63 	movl   $0x656b636f,0x20(%r12)
  402386:	6b 65 
  402388:	66 41 c7 44 24 24 74 	movw   $0x74,0x24(%r12)
  40238f:	00 
  402390:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402395:	e9 19 01 00 00       	jmpq   4024b3 <init_driver+0x1d3>
  40239a:	bf b0 2a 40 00       	mov    $0x402ab0,%edi
  40239f:	e8 ac e8 ff ff       	callq  400c50 <gethostbyname@plt>
  4023a4:	48 85 c0             	test   %rax,%rax
  4023a7:	75 72                	jne    40241b <init_driver+0x13b>
  4023a9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4023b0:	3a 20 44 
  4023b3:	49 89 04 24          	mov    %rax,(%r12)
  4023b7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4023be:	20 75 6e 
  4023c1:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4023c6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4023cd:	74 6f 20 
  4023d0:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  4023d5:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4023dc:	76 65 20 
  4023df:	49 89 44 24 18       	mov    %rax,0x18(%r12)
  4023e4:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4023eb:	72 20 61 
  4023ee:	49 89 44 24 20       	mov    %rax,0x20(%r12)
  4023f3:	41 c7 44 24 28 64 64 	movl   $0x65726464,0x28(%r12)
  4023fa:	72 65 
  4023fc:	66 41 c7 44 24 2c 73 	movw   $0x7373,0x2c(%r12)
  402403:	73 
  402404:	41 c6 44 24 2e 00    	movb   $0x0,0x2e(%r12)
  40240a:	89 df                	mov    %ebx,%edi
  40240c:	e8 ef e7 ff ff       	callq  400c00 <close@plt>
  402411:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402416:	e9 98 00 00 00       	jmpq   4024b3 <init_driver+0x1d3>
  40241b:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  402422:	00 
  402423:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
  40242a:	00 
  40242b:	66 c7 45 d0 02 00    	movw   $0x2,-0x30(%rbp)
  402431:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402435:	48 8b 40 18          	mov    0x18(%rax),%rax
  402439:	48 8d 4d d0          	lea    -0x30(%rbp),%rcx
  40243d:	48 8d 79 04          	lea    0x4(%rcx),%rdi
  402441:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402446:	48 8b 30             	mov    (%rax),%rsi
  402449:	e8 12 e8 ff ff       	callq  400c60 <__memmove_chk@plt>
  40244e:	66 c7 45 d2 4e 8f    	movw   $0x8f4e,-0x2e(%rbp)
  402454:	ba 10 00 00 00       	mov    $0x10,%edx
  402459:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  40245d:	89 df                	mov    %ebx,%edi
  40245f:	e8 9c e8 ff ff       	callq  400d00 <connect@plt>
  402464:	85 c0                	test   %eax,%eax
  402466:	79 32                	jns    40249a <init_driver+0x1ba>
  402468:	41 b8 b0 2a 40 00    	mov    $0x402ab0,%r8d
  40246e:	b9 d8 2b 40 00       	mov    $0x402bd8,%ecx
  402473:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40247a:	be 01 00 00 00       	mov    $0x1,%esi
  40247f:	4c 89 e7             	mov    %r12,%rdi
  402482:	b8 00 00 00 00       	mov    $0x0,%eax
  402487:	e8 b4 e8 ff ff       	callq  400d40 <__sprintf_chk@plt>
  40248c:	89 df                	mov    %ebx,%edi
  40248e:	e8 6d e7 ff ff       	callq  400c00 <close@plt>
  402493:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402498:	eb 19                	jmp    4024b3 <init_driver+0x1d3>
  40249a:	89 df                	mov    %ebx,%edi
  40249c:	e8 5f e7 ff ff       	callq  400c00 <close@plt>
  4024a1:	66 41 c7 04 24 4f 4b 	movw   $0x4b4f,(%r12)
  4024a8:	41 c6 44 24 02 00    	movb   $0x0,0x2(%r12)
  4024ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4024b7:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4024be:	00 00 
  4024c0:	74 05                	je     4024c7 <init_driver+0x1e7>
  4024c2:	e8 19 e7 ff ff       	callq  400be0 <__stack_chk_fail@plt>
  4024c7:	48 83 c4 20          	add    $0x20,%rsp
  4024cb:	5b                   	pop    %rbx
  4024cc:	41 5c                	pop    %r12
  4024ce:	5d                   	pop    %rbp
  4024cf:	c3                   	retq   

00000000004024d0 <driver_post>:
  4024d0:	55                   	push   %rbp
  4024d1:	48 89 e5             	mov    %rsp,%rbp
  4024d4:	53                   	push   %rbx
  4024d5:	48 83 ec 18          	sub    $0x18,%rsp
  4024d9:	4c 89 c3             	mov    %r8,%rbx
  4024dc:	85 c9                	test   %ecx,%ecx
  4024de:	74 24                	je     402504 <driver_post+0x34>
  4024e0:	be 18 2c 40 00       	mov    $0x402c18,%esi
  4024e5:	bf 01 00 00 00       	mov    $0x1,%edi
  4024ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ef:	e8 cc e7 ff ff       	callq  400cc0 <__printf_chk@plt>
  4024f4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4024f9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4024fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402502:	eb 43                	jmp    402547 <driver_post+0x77>
  402504:	48 85 ff             	test   %rdi,%rdi
  402507:	74 30                	je     402539 <driver_post+0x69>
  402509:	80 3f 00             	cmpb   $0x0,(%rdi)
  40250c:	74 2b                	je     402539 <driver_post+0x69>
  40250e:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  402513:	48 89 14 24          	mov    %rdx,(%rsp)
  402517:	41 b9 2f 2c 40 00    	mov    $0x402c2f,%r9d
  40251d:	49 89 f0             	mov    %rsi,%r8
  402520:	48 89 f9             	mov    %rdi,%rcx
  402523:	ba 3c 2c 40 00       	mov    $0x402c3c,%edx
  402528:	be 8f 4e 00 00       	mov    $0x4e8f,%esi
  40252d:	bf b0 2a 40 00       	mov    $0x402ab0,%edi
  402532:	e8 35 f5 ff ff       	callq  401a6c <submitr>
  402537:	eb 0e                	jmp    402547 <driver_post+0x77>
  402539:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40253e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402542:	b8 00 00 00 00       	mov    $0x0,%eax
  402547:	48 83 c4 18          	add    $0x18,%rsp
  40254b:	5b                   	pop    %rbx
  40254c:	5d                   	pop    %rbp
  40254d:	c3                   	retq   
  40254e:	66 90                	xchg   %ax,%ax

0000000000402550 <__libc_csu_init>:
  402550:	41 57                	push   %r15
  402552:	41 89 ff             	mov    %edi,%r15d
  402555:	41 56                	push   %r14
  402557:	49 89 f6             	mov    %rsi,%r14
  40255a:	41 55                	push   %r13
  40255c:	49 89 d5             	mov    %rdx,%r13
  40255f:	41 54                	push   %r12
  402561:	4c 8d 25 a8 18 20 00 	lea    0x2018a8(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402568:	55                   	push   %rbp
  402569:	48 8d 2d a8 18 20 00 	lea    0x2018a8(%rip),%rbp        # 603e18 <__init_array_end>
  402570:	53                   	push   %rbx
  402571:	4c 29 e5             	sub    %r12,%rbp
  402574:	31 db                	xor    %ebx,%ebx
  402576:	48 c1 fd 03          	sar    $0x3,%rbp
  40257a:	48 83 ec 08          	sub    $0x8,%rsp
  40257e:	e8 cd e5 ff ff       	callq  400b50 <_init>
  402583:	48 85 ed             	test   %rbp,%rbp
  402586:	74 1e                	je     4025a6 <__libc_csu_init+0x56>
  402588:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40258f:	00 
  402590:	4c 89 ea             	mov    %r13,%rdx
  402593:	4c 89 f6             	mov    %r14,%rsi
  402596:	44 89 ff             	mov    %r15d,%edi
  402599:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40259d:	48 83 c3 01          	add    $0x1,%rbx
  4025a1:	48 39 eb             	cmp    %rbp,%rbx
  4025a4:	75 ea                	jne    402590 <__libc_csu_init+0x40>
  4025a6:	48 83 c4 08          	add    $0x8,%rsp
  4025aa:	5b                   	pop    %rbx
  4025ab:	5d                   	pop    %rbp
  4025ac:	41 5c                	pop    %r12
  4025ae:	41 5d                	pop    %r13
  4025b0:	41 5e                	pop    %r14
  4025b2:	41 5f                	pop    %r15
  4025b4:	c3                   	retq   
  4025b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4025bc:	00 00 00 00 

00000000004025c0 <__libc_csu_fini>:
  4025c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004025c4 <_fini>:
  4025c4:	48 83 ec 08          	sub    $0x8,%rsp
  4025c8:	48 83 c4 08          	add    $0x8,%rsp
  4025cc:	c3                   	retq   
