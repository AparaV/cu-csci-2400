
code3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 b8 34 33 32 32 37 	movabs $0x3838613732323334,%rax
   7:	61 38 38 
   a:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
   f:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  16:	00 00 
  18:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  1d:	c3                   	retq   
