
um:     file format elf64-x86-64


Disassembly of section .init:

0000000000400b10 <_init>:
  400b10:	48 83 ec 08          	sub    $0x8,%rsp
  400b14:	48 8b 05 cd 54 20 00 	mov    0x2054cd(%rip),%rax        # 605fe8 <__gmon_start__>
  400b1b:	48 85 c0             	test   %rax,%rax
  400b1e:	74 05                	je     400b25 <_init+0x15>
  400b20:	e8 eb 00 00 00       	callq  400c10 <__gmon_start__@plt>
  400b25:	48 83 c4 08          	add    $0x8,%rsp
  400b29:	c3                   	retq   

Disassembly of section .plt:

0000000000400b30 <.plt>:
  400b30:	ff 35 d2 54 20 00    	pushq  0x2054d2(%rip)        # 606008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b36:	ff 25 d4 54 20 00    	jmpq   *0x2054d4(%rip)        # 606010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b3c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b40 <free@plt>:
  400b40:	ff 25 d2 54 20 00    	jmpq   *0x2054d2(%rip)        # 606018 <free@GLIBC_2.2.5>
  400b46:	68 00 00 00 00       	pushq  $0x0
  400b4b:	e9 e0 ff ff ff       	jmpq   400b30 <.plt>

0000000000400b50 <abort@plt>:
  400b50:	ff 25 ca 54 20 00    	jmpq   *0x2054ca(%rip)        # 606020 <abort@GLIBC_2.2.5>
  400b56:	68 01 00 00 00       	pushq  $0x1
  400b5b:	e9 d0 ff ff ff       	jmpq   400b30 <.plt>

0000000000400b60 <fclose@plt>:
  400b60:	ff 25 c2 54 20 00    	jmpq   *0x2054c2(%rip)        # 606028 <fclose@GLIBC_2.2.5>
  400b66:	68 02 00 00 00       	pushq  $0x2
  400b6b:	e9 c0 ff ff ff       	jmpq   400b30 <.plt>

0000000000400b70 <strlen@plt>:
  400b70:	ff 25 ba 54 20 00    	jmpq   *0x2054ba(%rip)        # 606030 <strlen@GLIBC_2.2.5>
  400b76:	68 03 00 00 00       	pushq  $0x3
  400b7b:	e9 b0 ff ff ff       	jmpq   400b30 <.plt>

0000000000400b80 <strchr@plt>:
  400b80:	ff 25 b2 54 20 00    	jmpq   *0x2054b2(%rip)        # 606038 <strchr@GLIBC_2.2.5>
  400b86:	68 04 00 00 00       	pushq  $0x4
  400b8b:	e9 a0 ff ff ff       	jmpq   400b30 <.plt>

0000000000400b90 <printf@plt>:
  400b90:	ff 25 aa 54 20 00    	jmpq   *0x2054aa(%rip)        # 606040 <printf@GLIBC_2.2.5>
  400b96:	68 05 00 00 00       	pushq  $0x5
  400b9b:	e9 90 ff ff ff       	jmpq   400b30 <.plt>

0000000000400ba0 <_IO_putc@plt>:
  400ba0:	ff 25 a2 54 20 00    	jmpq   *0x2054a2(%rip)        # 606048 <_IO_putc@GLIBC_2.2.5>
  400ba6:	68 06 00 00 00       	pushq  $0x6
  400bab:	e9 80 ff ff ff       	jmpq   400b30 <.plt>

0000000000400bb0 <fgetc@plt>:
  400bb0:	ff 25 9a 54 20 00    	jmpq   *0x20549a(%rip)        # 606050 <fgetc@GLIBC_2.2.5>
  400bb6:	68 07 00 00 00       	pushq  $0x7
  400bbb:	e9 70 ff ff ff       	jmpq   400b30 <.plt>

0000000000400bc0 <fputc@plt>:
  400bc0:	ff 25 92 54 20 00    	jmpq   *0x205492(%rip)        # 606058 <fputc@GLIBC_2.2.5>
  400bc6:	68 08 00 00 00       	pushq  $0x8
  400bcb:	e9 60 ff ff ff       	jmpq   400b30 <.plt>

0000000000400bd0 <__libc_start_main@plt>:
  400bd0:	ff 25 8a 54 20 00    	jmpq   *0x20548a(%rip)        # 606060 <__libc_start_main@GLIBC_2.2.5>
  400bd6:	68 09 00 00 00       	pushq  $0x9
  400bdb:	e9 50 ff ff ff       	jmpq   400b30 <.plt>

0000000000400be0 <_setjmp@plt>:
  400be0:	ff 25 82 54 20 00    	jmpq   *0x205482(%rip)        # 606068 <_setjmp@GLIBC_2.2.5>
  400be6:	68 0a 00 00 00       	pushq  $0xa
  400beb:	e9 40 ff ff ff       	jmpq   400b30 <.plt>

0000000000400bf0 <calloc@plt>:
  400bf0:	ff 25 7a 54 20 00    	jmpq   *0x20547a(%rip)        # 606070 <calloc@GLIBC_2.2.5>
  400bf6:	68 0b 00 00 00       	pushq  $0xb
  400bfb:	e9 30 ff ff ff       	jmpq   400b30 <.plt>

0000000000400c00 <fprintf@plt>:
  400c00:	ff 25 72 54 20 00    	jmpq   *0x205472(%rip)        # 606078 <fprintf@GLIBC_2.2.5>
  400c06:	68 0c 00 00 00       	pushq  $0xc
  400c0b:	e9 20 ff ff ff       	jmpq   400b30 <.plt>

0000000000400c10 <__gmon_start__@plt>:
  400c10:	ff 25 6a 54 20 00    	jmpq   *0x20546a(%rip)        # 606080 <__gmon_start__>
  400c16:	68 0d 00 00 00       	pushq  $0xd
  400c1b:	e9 10 ff ff ff       	jmpq   400b30 <.plt>

0000000000400c20 <__xstat@plt>:
  400c20:	ff 25 62 54 20 00    	jmpq   *0x205462(%rip)        # 606088 <__xstat@GLIBC_2.2.5>
  400c26:	68 0e 00 00 00       	pushq  $0xe
  400c2b:	e9 00 ff ff ff       	jmpq   400b30 <.plt>

0000000000400c30 <malloc@plt>:
  400c30:	ff 25 5a 54 20 00    	jmpq   *0x20545a(%rip)        # 606090 <malloc@GLIBC_2.2.5>
  400c36:	68 0f 00 00 00       	pushq  $0xf
  400c3b:	e9 f0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c40 <fflush@plt>:
  400c40:	ff 25 52 54 20 00    	jmpq   *0x205452(%rip)        # 606098 <fflush@GLIBC_2.2.5>
  400c46:	68 10 00 00 00       	pushq  $0x10
  400c4b:	e9 e0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c50 <_IO_getc@plt>:
  400c50:	ff 25 4a 54 20 00    	jmpq   *0x20544a(%rip)        # 6060a0 <_IO_getc@GLIBC_2.2.5>
  400c56:	68 11 00 00 00       	pushq  $0x11
  400c5b:	e9 d0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c60 <realloc@plt>:
  400c60:	ff 25 42 54 20 00    	jmpq   *0x205442(%rip)        # 6060a8 <realloc@GLIBC_2.2.5>
  400c66:	68 12 00 00 00       	pushq  $0x12
  400c6b:	e9 c0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c70 <longjmp@plt>:
  400c70:	ff 25 3a 54 20 00    	jmpq   *0x20543a(%rip)        # 6060b0 <longjmp@GLIBC_2.2.5>
  400c76:	68 13 00 00 00       	pushq  $0x13
  400c7b:	e9 b0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c80 <fopen@plt>:
  400c80:	ff 25 32 54 20 00    	jmpq   *0x205432(%rip)        # 6060b8 <fopen@GLIBC_2.2.5>
  400c86:	68 14 00 00 00       	pushq  $0x14
  400c8b:	e9 a0 fe ff ff       	jmpq   400b30 <.plt>

0000000000400c90 <perror@plt>:
  400c90:	ff 25 2a 54 20 00    	jmpq   *0x20542a(%rip)        # 6060c0 <perror@GLIBC_2.2.5>
  400c96:	68 15 00 00 00       	pushq  $0x15
  400c9b:	e9 90 fe ff ff       	jmpq   400b30 <.plt>

0000000000400ca0 <sprintf@plt>:
  400ca0:	ff 25 22 54 20 00    	jmpq   *0x205422(%rip)        # 6060c8 <sprintf@GLIBC_2.2.5>
  400ca6:	68 16 00 00 00       	pushq  $0x16
  400cab:	e9 80 fe ff ff       	jmpq   400b30 <.plt>

0000000000400cb0 <exit@plt>:
  400cb0:	ff 25 1a 54 20 00    	jmpq   *0x20541a(%rip)        # 6060d0 <exit@GLIBC_2.2.5>
  400cb6:	68 17 00 00 00       	pushq  $0x17
  400cbb:	e9 70 fe ff ff       	jmpq   400b30 <.plt>

0000000000400cc0 <fwrite@plt>:
  400cc0:	ff 25 12 54 20 00    	jmpq   *0x205412(%rip)        # 6060d8 <fwrite@GLIBC_2.2.5>
  400cc6:	68 18 00 00 00       	pushq  $0x18
  400ccb:	e9 60 fe ff ff       	jmpq   400b30 <.plt>

0000000000400cd0 <__ctype_b_loc@plt>:
  400cd0:	ff 25 0a 54 20 00    	jmpq   *0x20540a(%rip)        # 6060e0 <__ctype_b_loc@GLIBC_2.3>
  400cd6:	68 19 00 00 00       	pushq  $0x19
  400cdb:	e9 50 fe ff ff       	jmpq   400b30 <.plt>

Disassembly of section .text:

0000000000400ce0 <main>:
  400ce0:	55                   	push   %rbp
  400ce1:	53                   	push   %rbx
  400ce2:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
  400ce9:	83 ff 02             	cmp    $0x2,%edi
  400cec:	0f 85 8b 00 00 00    	jne    400d7d <main+0x9d>
  400cf2:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400cf6:	48 89 f3             	mov    %rsi,%rbx
  400cf9:	be 69 4a 40 00       	mov    $0x404a69,%esi
  400cfe:	e8 7d ff ff ff       	callq  400c80 <fopen@plt>
  400d03:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  400d07:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  400d0c:	bf 01 00 00 00       	mov    $0x1,%edi
  400d11:	48 89 c5             	mov    %rax,%rbp
  400d14:	e8 07 ff ff ff       	callq  400c20 <__xstat@plt>
  400d19:	48 8b 5c 24 40       	mov    0x40(%rsp),%rbx
  400d1e:	f6 c3 03             	test   $0x3,%bl
  400d21:	75 44                	jne    400d67 <main+0x87>
  400d23:	89 de                	mov    %ebx,%esi
  400d25:	48 89 ef             	mov    %rbp,%rdi
  400d28:	e8 83 01 00 00       	callq  400eb0 <storeProgram>
  400d2d:	89 de                	mov    %ebx,%esi
  400d2f:	c1 ee 02             	shr    $0x2,%esi
  400d32:	48 89 c7             	mov    %rax,%rdi
  400d35:	e8 86 09 00 00       	callq  4016c0 <initUMMemory>
  400d3a:	48 89 ef             	mov    %rbp,%rdi
  400d3d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  400d42:	e8 19 fe ff ff       	callq  400b60 <fclose@plt>
  400d47:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  400d4c:	e8 ff 0a 00 00       	callq  401850 <runUM>
  400d51:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  400d56:	e8 85 07 00 00       	callq  4014e0 <freeUMMemory>
  400d5b:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
  400d62:	31 c0                	xor    %eax,%eax
  400d64:	5b                   	pop    %rbx
  400d65:	5d                   	pop    %rbp
  400d66:	c3                   	retq   
  400d67:	ba 53 00 00 00       	mov    $0x53,%edx
  400d6c:	be 64 4a 40 00       	mov    $0x404a64,%esi
  400d71:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  400d76:	e8 a5 22 00 00       	callq  403020 <Except_raise>
  400d7b:	eb a6                	jmp    400d23 <main+0x43>
  400d7d:	bf e0 4a 40 00       	mov    $0x404ae0,%edi
  400d82:	e8 09 ff ff ff       	callq  400c90 <perror@plt>
  400d87:	bf 01 00 00 00       	mov    $0x1,%edi
  400d8c:	e8 1f ff ff ff       	callq  400cb0 <exit@plt>

0000000000400d91 <_start>:
  400d91:	31 ed                	xor    %ebp,%ebp
  400d93:	49 89 d1             	mov    %rdx,%r9
  400d96:	5e                   	pop    %rsi
  400d97:	48 89 e2             	mov    %rsp,%rdx
  400d9a:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d9e:	50                   	push   %rax
  400d9f:	54                   	push   %rsp
  400da0:	49 c7 c0 50 4a 40 00 	mov    $0x404a50,%r8
  400da7:	48 c7 c1 e0 49 40 00 	mov    $0x4049e0,%rcx
  400dae:	48 c7 c7 e0 0c 40 00 	mov    $0x400ce0,%rdi
  400db5:	e8 16 fe ff ff       	callq  400bd0 <__libc_start_main@plt>
  400dba:	f4                   	hlt    
  400dbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400dc0 <deregister_tm_clones>:
  400dc0:	48 8d 3d 79 5b 20 00 	lea    0x205b79(%rip),%rdi        # 606940 <stdout@@GLIBC_2.2.5>
  400dc7:	48 8d 05 72 5b 20 00 	lea    0x205b72(%rip),%rax        # 606940 <stdout@@GLIBC_2.2.5>
  400dce:	48 39 f8             	cmp    %rdi,%rax
  400dd1:	74 15                	je     400de8 <deregister_tm_clones+0x28>
  400dd3:	48 8b 05 fe 51 20 00 	mov    0x2051fe(%rip),%rax        # 605fd8 <_ITM_deregisterTMCloneTable>
  400dda:	48 85 c0             	test   %rax,%rax
  400ddd:	74 09                	je     400de8 <deregister_tm_clones+0x28>
  400ddf:	ff e0                	jmpq   *%rax
  400de1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400de8:	c3                   	retq   
  400de9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400df0 <register_tm_clones>:
  400df0:	48 8d 3d 49 5b 20 00 	lea    0x205b49(%rip),%rdi        # 606940 <stdout@@GLIBC_2.2.5>
  400df7:	48 8d 35 42 5b 20 00 	lea    0x205b42(%rip),%rsi        # 606940 <stdout@@GLIBC_2.2.5>
  400dfe:	48 29 fe             	sub    %rdi,%rsi
  400e01:	48 89 f0             	mov    %rsi,%rax
  400e04:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400e08:	48 c1 f8 03          	sar    $0x3,%rax
  400e0c:	48 01 c6             	add    %rax,%rsi
  400e0f:	48 d1 fe             	sar    %rsi
  400e12:	74 14                	je     400e28 <register_tm_clones+0x38>
  400e14:	48 8b 05 d5 51 20 00 	mov    0x2051d5(%rip),%rax        # 605ff0 <_ITM_registerTMCloneTable>
  400e1b:	48 85 c0             	test   %rax,%rax
  400e1e:	74 08                	je     400e28 <register_tm_clones+0x38>
  400e20:	ff e0                	jmpq   *%rax
  400e22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400e28:	c3                   	retq   
  400e29:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e30 <__do_global_dtors_aux>:
  400e30:	80 3d 19 5b 20 00 00 	cmpb   $0x0,0x205b19(%rip)        # 606950 <completed.7307>
  400e37:	75 17                	jne    400e50 <__do_global_dtors_aux+0x20>
  400e39:	55                   	push   %rbp
  400e3a:	48 89 e5             	mov    %rsp,%rbp
  400e3d:	e8 7e ff ff ff       	callq  400dc0 <deregister_tm_clones>
  400e42:	c6 05 07 5b 20 00 01 	movb   $0x1,0x205b07(%rip)        # 606950 <completed.7307>
  400e49:	5d                   	pop    %rbp
  400e4a:	c3                   	retq   
  400e4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400e50:	c3                   	retq   
  400e51:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400e56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e5d:	00 00 00 

0000000000400e60 <frame_dummy>:
  400e60:	eb 8e                	jmp    400df0 <register_tm_clones>
  400e62:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e69:	00 00 00 
  400e6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e70 <readaWord>:
  400e70:	41 54                	push   %r12
  400e72:	49 89 fc             	mov    %rdi,%r12
  400e75:	55                   	push   %rbp
  400e76:	bd 18 00 00 00       	mov    $0x18,%ebp
  400e7b:	53                   	push   %rbx
  400e7c:	31 db                	xor    %ebx,%ebx
  400e7e:	4c 89 e7             	mov    %r12,%rdi
  400e81:	e8 ca fd ff ff       	callq  400c50 <_IO_getc@plt>
  400e86:	89 df                	mov    %ebx,%edi
  400e88:	89 ea                	mov    %ebp,%edx
  400e8a:	be 08 00 00 00       	mov    $0x8,%esi
  400e8f:	89 c1                	mov    %eax,%ecx
  400e91:	83 ed 08             	sub    $0x8,%ebp
  400e94:	e8 77 0e 00 00       	callq  401d10 <Bitpack_newu>
  400e99:	89 c3                	mov    %eax,%ebx
  400e9b:	83 fd f8             	cmp    $0xfffffff8,%ebp
  400e9e:	75 de                	jne    400e7e <readaWord+0xe>
  400ea0:	5b                   	pop    %rbx
  400ea1:	5d                   	pop    %rbp
  400ea2:	41 5c                	pop    %r12
  400ea4:	c3                   	retq   
  400ea5:	90                   	nop
  400ea6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ead:	00 00 00 

0000000000400eb0 <storeProgram>:
  400eb0:	41 55                	push   %r13
  400eb2:	41 54                	push   %r12
  400eb4:	55                   	push   %rbp
  400eb5:	48 89 fd             	mov    %rdi,%rbp
  400eb8:	53                   	push   %rbx
  400eb9:	89 f3                	mov    %esi,%ebx
  400ebb:	48 83 ec 08          	sub    $0x8,%rsp
  400ebf:	48 85 ff             	test   %rdi,%rdi
  400ec2:	74 44                	je     400f08 <storeProgram+0x58>
  400ec4:	89 df                	mov    %ebx,%edi
  400ec6:	e8 65 fd ff ff       	callq  400c30 <malloc@plt>
  400ecb:	89 de                	mov    %ebx,%esi
  400ecd:	c1 ee 02             	shr    $0x2,%esi
  400ed0:	49 89 c5             	mov    %rax,%r13
  400ed3:	74 1f                	je     400ef4 <storeProgram+0x44>
  400ed5:	48 89 c3             	mov    %rax,%rbx
  400ed8:	8d 46 ff             	lea    -0x1(%rsi),%eax
  400edb:	4d 8d 64 85 04       	lea    0x4(%r13,%rax,4),%r12
  400ee0:	48 89 ef             	mov    %rbp,%rdi
  400ee3:	48 83 c3 04          	add    $0x4,%rbx
  400ee7:	e8 84 ff ff ff       	callq  400e70 <readaWord>
  400eec:	89 43 fc             	mov    %eax,-0x4(%rbx)
  400eef:	4c 39 e3             	cmp    %r12,%rbx
  400ef2:	75 ec                	jne    400ee0 <storeProgram+0x30>
  400ef4:	48 83 c4 08          	add    $0x8,%rsp
  400ef8:	4c 89 e8             	mov    %r13,%rax
  400efb:	5b                   	pop    %rbx
  400efc:	5d                   	pop    %rbp
  400efd:	41 5c                	pop    %r12
  400eff:	41 5d                	pop    %r13
  400f01:	c3                   	retq   
  400f02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f08:	ba 61 00 00 00       	mov    $0x61,%edx
  400f0d:	be 64 4a 40 00       	mov    $0x404a64,%esi
  400f12:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  400f17:	e8 04 21 00 00       	callq  403020 <Except_raise>
  400f1c:	eb a6                	jmp    400ec4 <storeProgram+0x14>
  400f1e:	66 90                	xchg   %ax,%ax

0000000000400f20 <i_cmove>:
  400f20:	8b 02                	mov    (%rdx),%eax
  400f22:	85 c0                	test   %eax,%eax
  400f24:	74 04                	je     400f2a <i_cmove+0xa>
  400f26:	8b 06                	mov    (%rsi),%eax
  400f28:	89 07                	mov    %eax,(%rdi)
  400f2a:	c3                   	retq   
  400f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f30 <i_add>:
  400f30:	8d 04 37             	lea    (%rdi,%rsi,1),%eax
  400f33:	c3                   	retq   
  400f34:	66 90                	xchg   %ax,%ax
  400f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f3d:	00 00 00 

0000000000400f40 <i_multiply>:
  400f40:	89 f8                	mov    %edi,%eax
  400f42:	0f af c6             	imul   %esi,%eax
  400f45:	c3                   	retq   
  400f46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f4d:	00 00 00 

0000000000400f50 <i_divide>:
  400f50:	89 f8                	mov    %edi,%eax
  400f52:	31 d2                	xor    %edx,%edx
  400f54:	f7 f6                	div    %esi
  400f56:	c3                   	retq   
  400f57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f5e:	00 00 

0000000000400f60 <i_nand>:
  400f60:	21 f7                	and    %esi,%edi
  400f62:	89 f8                	mov    %edi,%eax
  400f64:	f7 d0                	not    %eax
  400f66:	c3                   	retq   
  400f67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f6e:	00 00 

0000000000400f70 <i_input>:
  400f70:	48 8b 3d d1 59 20 00 	mov    0x2059d1(%rip),%rdi        # 606948 <stdin@@GLIBC_2.2.5>
  400f77:	e9 34 fc ff ff       	jmpq   400bb0 <fgetc@plt>
  400f7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400f80 <i_output>:
  400f80:	55                   	push   %rbp
  400f81:	89 fd                	mov    %edi,%ebp
  400f83:	81 ff ff 00 00 00    	cmp    $0xff,%edi
  400f89:	77 15                	ja     400fa0 <i_output+0x20>
  400f8b:	48 8b 35 ae 59 20 00 	mov    0x2059ae(%rip),%rsi        # 606940 <stdout@@GLIBC_2.2.5>
  400f92:	89 ef                	mov    %ebp,%edi
  400f94:	5d                   	pop    %rbp
  400f95:	e9 26 fc ff ff       	jmpq   400bc0 <fputc@plt>
  400f9a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400fa0:	be 64 4a 40 00       	mov    $0x404a64,%esi
  400fa5:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  400faa:	ba 05 01 00 00       	mov    $0x105,%edx
  400faf:	e8 6c 20 00 00       	callq  403020 <Except_raise>
  400fb4:	48 8b 35 85 59 20 00 	mov    0x205985(%rip),%rsi        # 606940 <stdout@@GLIBC_2.2.5>
  400fbb:	89 ef                	mov    %ebp,%edi
  400fbd:	5d                   	pop    %rbp
  400fbe:	e9 fd fb ff ff       	jmpq   400bc0 <fputc@plt>
  400fc3:	0f 1f 00             	nopl   (%rax)
  400fc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400fcd:	00 00 00 

0000000000400fd0 <loadProgram>:
  400fd0:	41 57                	push   %r15
  400fd2:	41 56                	push   %r14
  400fd4:	41 55                	push   %r13
  400fd6:	41 54                	push   %r12
  400fd8:	55                   	push   %rbp
  400fd9:	48 89 fd             	mov    %rdi,%rbp
  400fdc:	53                   	push   %rbx
  400fdd:	89 f3                	mov    %esi,%ebx
  400fdf:	48 83 ec 08          	sub    $0x8,%rsp
  400fe3:	48 85 ff             	test   %rdi,%rdi
  400fe6:	0f 84 a4 00 00 00    	je     401090 <loadProgram+0xc0>
  400fec:	85 db                	test   %ebx,%ebx
  400fee:	75 10                	jne    401000 <loadProgram+0x30>
  400ff0:	48 83 c4 08          	add    $0x8,%rsp
  400ff4:	5b                   	pop    %rbx
  400ff5:	5d                   	pop    %rbp
  400ff6:	41 5c                	pop    %r12
  400ff8:	41 5d                	pop    %r13
  400ffa:	41 5e                	pop    %r14
  400ffc:	41 5f                	pop    %r15
  400ffe:	c3                   	retq   
  400fff:	90                   	nop
  401000:	48 8b 45 08          	mov    0x8(%rbp),%rax
  401004:	48 8b 40 08          	mov    0x8(%rax),%rax
  401008:	4c 8b 34 d8          	mov    (%rax,%rbx,8),%r14
  40100c:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401010:	45 89 f4             	mov    %r14d,%r12d
  401013:	4c 8b 78 08          	mov    0x8(%rax),%r15
  401017:	4a 8d 3c a5 00 00 00 	lea    0x0(,%r12,4),%rdi
  40101e:	00 
  40101f:	49 8b 1c df          	mov    (%r15,%rbx,8),%rbx
  401023:	e8 08 fc ff ff       	callq  400c30 <malloc@plt>
  401028:	49 89 c5             	mov    %rax,%r13
  40102b:	45 85 f6             	test   %r14d,%r14d
  40102e:	74 26                	je     401056 <loadProgram+0x86>
  401030:	41 8d 46 ff          	lea    -0x1(%r14),%eax
  401034:	4c 89 ee             	mov    %r13,%rsi
  401037:	48 89 da             	mov    %rbx,%rdx
  40103a:	48 8d 7c 83 04       	lea    0x4(%rbx,%rax,4),%rdi
  40103f:	48 29 de             	sub    %rbx,%rsi
  401042:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401048:	8b 0a                	mov    (%rdx),%ecx
  40104a:	89 0c 16             	mov    %ecx,(%rsi,%rdx,1)
  40104d:	48 83 c2 04          	add    $0x4,%rdx
  401051:	48 39 fa             	cmp    %rdi,%rdx
  401054:	75 f2                	jne    401048 <loadProgram+0x78>
  401056:	49 8b 3f             	mov    (%r15),%rdi
  401059:	e8 e2 fa ff ff       	callq  400b40 <free@plt>
  40105e:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
  401062:	48 85 db             	test   %rbx,%rbx
  401065:	74 69                	je     4010d0 <loadProgram+0x100>
  401067:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40106b:	48 8b 5d 08          	mov    0x8(%rbp),%rbx
  40106f:	4c 89 28             	mov    %r13,(%rax)
  401072:	48 85 db             	test   %rbx,%rbx
  401075:	74 39                	je     4010b0 <loadProgram+0xe0>
  401077:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40107b:	4c 89 20             	mov    %r12,(%rax)
  40107e:	48 83 c4 08          	add    $0x8,%rsp
  401082:	5b                   	pop    %rbx
  401083:	5d                   	pop    %rbp
  401084:	41 5c                	pop    %r12
  401086:	41 5d                	pop    %r13
  401088:	41 5e                	pop    %r14
  40108a:	41 5f                	pop    %r15
  40108c:	c3                   	retq   
  40108d:	0f 1f 00             	nopl   (%rax)
  401090:	ba 5f 01 00 00       	mov    $0x15f,%edx
  401095:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40109a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40109f:	e8 7c 1f 00 00       	callq  403020 <Except_raise>
  4010a4:	e9 43 ff ff ff       	jmpq   400fec <loadProgram+0x1c>
  4010a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4010b0:	ba f6 01 00 00       	mov    $0x1f6,%edx
  4010b5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4010ba:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4010bf:	e8 5c 1f 00 00       	callq  403020 <Except_raise>
  4010c4:	eb b1                	jmp    401077 <loadProgram+0xa7>
  4010c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010cd:	00 00 00 
  4010d0:	ba f6 01 00 00       	mov    $0x1f6,%edx
  4010d5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4010da:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4010df:	e8 3c 1f 00 00       	callq  403020 <Except_raise>
  4010e4:	eb 81                	jmp    401067 <loadProgram+0x97>
  4010e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4010ed:	00 00 00 

00000000004010f0 <Seg_Store>:
  4010f0:	48 8b 07             	mov    (%rdi),%rax
  4010f3:	89 f6                	mov    %esi,%esi
  4010f5:	89 d2                	mov    %edx,%edx
  4010f7:	48 8b 40 08          	mov    0x8(%rax),%rax
  4010fb:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
  4010ff:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
  401102:	c3                   	retq   
  401103:	0f 1f 00             	nopl   (%rax)
  401106:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40110d:	00 00 00 

0000000000401110 <Seg_Load>:
  401110:	48 8b 07             	mov    (%rdi),%rax
  401113:	89 f6                	mov    %esi,%esi
  401115:	89 d2                	mov    %edx,%edx
  401117:	48 8b 40 08          	mov    0x8(%rax),%rax
  40111b:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
  40111f:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  401122:	c3                   	retq   
  401123:	0f 1f 00             	nopl   (%rax)
  401126:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <getSeg0>:
  401130:	53                   	push   %rbx
  401131:	48 89 fb             	mov    %rdi,%rbx
  401134:	48 85 ff             	test   %rdi,%rdi
  401137:	74 0f                	je     401148 <getSeg0+0x18>
  401139:	48 8b 03             	mov    (%rbx),%rax
  40113c:	5b                   	pop    %rbx
  40113d:	48 8b 40 08          	mov    0x8(%rax),%rax
  401141:	48 8b 00             	mov    (%rax),%rax
  401144:	c3                   	retq   
  401145:	0f 1f 00             	nopl   (%rax)
  401148:	ba 8c 01 00 00       	mov    $0x18c,%edx
  40114d:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401152:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401157:	e8 c4 1e 00 00       	callq  403020 <Except_raise>
  40115c:	48 8b 03             	mov    (%rbx),%rax
  40115f:	5b                   	pop    %rbx
  401160:	48 8b 40 08          	mov    0x8(%rax),%rax
  401164:	48 8b 00             	mov    (%rax),%rax
  401167:	c3                   	retq   
  401168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40116f:	00 

0000000000401170 <getSeg0Size>:
  401170:	53                   	push   %rbx
  401171:	48 89 fb             	mov    %rdi,%rbx
  401174:	48 85 ff             	test   %rdi,%rdi
  401177:	74 17                	je     401190 <getSeg0Size+0x20>
  401179:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40117d:	5b                   	pop    %rbx
  40117e:	48 8b 40 08          	mov    0x8(%rax),%rax
  401182:	48 8b 00             	mov    (%rax),%rax
  401185:	c3                   	retq   
  401186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40118d:	00 00 00 
  401190:	ba 93 01 00 00       	mov    $0x193,%edx
  401195:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40119a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40119f:	e8 7c 1e 00 00       	callq  403020 <Except_raise>
  4011a4:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4011a8:	5b                   	pop    %rbx
  4011a9:	48 8b 40 08          	mov    0x8(%rax),%rax
  4011ad:	48 8b 00             	mov    (%rax),%rax
  4011b0:	c3                   	retq   
  4011b1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4011b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011bd:	00 00 00 

00000000004011c0 <UStack_new>:
  4011c0:	41 54                	push   %r12
  4011c2:	bf 10 00 00 00       	mov    $0x10,%edi
  4011c7:	e8 64 fa ff ff       	callq  400c30 <malloc@plt>
  4011cc:	bf 28 00 00 00       	mov    $0x28,%edi
  4011d1:	49 89 c4             	mov    %rax,%r12
  4011d4:	48 b8 00 00 00 00 0a 	movabs $0xa00000000,%rax
  4011db:	00 00 00 
  4011de:	49 89 04 24          	mov    %rax,(%r12)
  4011e2:	e8 49 fa ff ff       	callq  400c30 <malloc@plt>
  4011e7:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4011ec:	4c 89 e0             	mov    %r12,%rax
  4011ef:	41 5c                	pop    %r12
  4011f1:	c3                   	retq   
  4011f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4011f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4011fd:	00 00 00 

0000000000401200 <UStack_free>:
  401200:	53                   	push   %rbx
  401201:	48 8b 07             	mov    (%rdi),%rax
  401204:	48 89 fb             	mov    %rdi,%rbx
  401207:	48 8b 78 08          	mov    0x8(%rax),%rdi
  40120b:	e8 30 f9 ff ff       	callq  400b40 <free@plt>
  401210:	48 8b 3b             	mov    (%rbx),%rdi
  401213:	5b                   	pop    %rbx
  401214:	e9 27 f9 ff ff       	jmpq   400b40 <free@plt>
  401219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401220 <UStack_pop>:
  401220:	8b 07                	mov    (%rdi),%eax
  401222:	48 8b 57 08          	mov    0x8(%rdi),%rdx
  401226:	83 e8 01             	sub    $0x1,%eax
  401229:	89 07                	mov    %eax,(%rdi)
  40122b:	8b 04 82             	mov    (%rdx,%rax,4),%eax
  40122e:	c3                   	retq   
  40122f:	90                   	nop

0000000000401230 <UStack_isEmpty>:
  401230:	8b 07                	mov    (%rdi),%eax
  401232:	85 c0                	test   %eax,%eax
  401234:	0f 94 c0             	sete   %al
  401237:	c3                   	retq   
  401238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40123f:	00 

0000000000401240 <UStack_expand>:
  401240:	53                   	push   %rbx
  401241:	8b 47 04             	mov    0x4(%rdi),%eax
  401244:	48 89 fb             	mov    %rdi,%rbx
  401247:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40124b:	8d 74 00 01          	lea    0x1(%rax,%rax,1),%esi
  40124f:	48 c1 e6 02          	shl    $0x2,%rsi
  401253:	e8 08 fa ff ff       	callq  400c60 <realloc@plt>
  401258:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40125c:	8b 43 04             	mov    0x4(%rbx),%eax
  40125f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401263:	89 43 04             	mov    %eax,0x4(%rbx)
  401266:	5b                   	pop    %rbx
  401267:	c3                   	retq   
  401268:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40126f:	00 

0000000000401270 <UStack_push>:
  401270:	55                   	push   %rbp
  401271:	89 f5                	mov    %esi,%ebp
  401273:	53                   	push   %rbx
  401274:	48 89 fb             	mov    %rdi,%rbx
  401277:	48 83 ec 08          	sub    $0x8,%rsp
  40127b:	8b 07                	mov    (%rdi),%eax
  40127d:	3b 47 04             	cmp    0x4(%rdi),%eax
  401280:	74 16                	je     401298 <UStack_push+0x28>
  401282:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  401286:	89 2c 82             	mov    %ebp,(%rdx,%rax,4)
  401289:	83 03 01             	addl   $0x1,(%rbx)
  40128c:	48 83 c4 08          	add    $0x8,%rsp
  401290:	5b                   	pop    %rbx
  401291:	5d                   	pop    %rbp
  401292:	c3                   	retq   
  401293:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401298:	e8 a3 ff ff ff       	callq  401240 <UStack_expand>
  40129d:	8b 03                	mov    (%rbx),%eax
  40129f:	eb e1                	jmp    401282 <UStack_push+0x12>
  4012a1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4012a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4012ad:	00 00 00 

00000000004012b0 <Seg_unmap>:
  4012b0:	41 55                	push   %r13
  4012b2:	41 54                	push   %r12
  4012b4:	55                   	push   %rbp
  4012b5:	89 f5                	mov    %esi,%ebp
  4012b7:	53                   	push   %rbx
  4012b8:	48 89 fb             	mov    %rdi,%rbx
  4012bb:	48 83 ec 08          	sub    $0x8,%rsp
  4012bf:	48 85 ff             	test   %rdi,%rdi
  4012c2:	0f 84 20 01 00 00    	je     4013e8 <Seg_unmap+0x138>
  4012c8:	4c 8b 23             	mov    (%rbx),%r12
  4012cb:	4d 85 e4             	test   %r12,%r12
  4012ce:	0f 84 d4 00 00 00    	je     4013a8 <Seg_unmap+0xf8>
  4012d4:	41 3b 2c 24          	cmp    (%r12),%ebp
  4012d8:	73 66                	jae    401340 <Seg_unmap+0x90>
  4012da:	48 8b 03             	mov    (%rbx),%rax
  4012dd:	41 89 ec             	mov    %ebp,%r12d
  4012e0:	48 8b 40 08          	mov    0x8(%rax),%rax
  4012e4:	4e 8b 2c e0          	mov    (%rax,%r12,8),%r13
  4012e8:	4d 85 ed             	test   %r13,%r13
  4012eb:	74 73                	je     401360 <Seg_unmap+0xb0>
  4012ed:	4c 89 ef             	mov    %r13,%rdi
  4012f0:	e8 4b f8 ff ff       	callq  400b40 <free@plt>
  4012f5:	4c 8b 2b             	mov    (%rbx),%r13
  4012f8:	4d 85 ed             	test   %r13,%r13
  4012fb:	0f 84 87 00 00 00    	je     401388 <Seg_unmap+0xd8>
  401301:	49 8b 45 08          	mov    0x8(%r13),%rax
  401305:	4c 8b 6b 08          	mov    0x8(%rbx),%r13
  401309:	4a c7 04 e0 00 00 00 	movq   $0x0,(%rax,%r12,8)
  401310:	00 
  401311:	4d 85 ed             	test   %r13,%r13
  401314:	0f 84 ae 00 00 00    	je     4013c8 <Seg_unmap+0x118>
  40131a:	49 8b 45 08          	mov    0x8(%r13),%rax
  40131e:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  401322:	89 ee                	mov    %ebp,%esi
  401324:	4a c7 04 e0 00 00 00 	movq   $0x0,(%rax,%r12,8)
  40132b:	00 
  40132c:	48 83 c4 08          	add    $0x8,%rsp
  401330:	5b                   	pop    %rbx
  401331:	5d                   	pop    %rbp
  401332:	41 5c                	pop    %r12
  401334:	41 5d                	pop    %r13
  401336:	e9 35 ff ff ff       	jmpq   401270 <UStack_push>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401340:	ba 4e 01 00 00       	mov    $0x14e,%edx
  401345:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40134a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40134f:	e8 cc 1c 00 00       	callq  403020 <Except_raise>
  401354:	eb 84                	jmp    4012da <Seg_unmap+0x2a>
  401356:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40135d:	00 00 00 
  401360:	ba 50 01 00 00       	mov    $0x150,%edx
  401365:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40136a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40136f:	e8 ac 1c 00 00       	callq  403020 <Except_raise>
  401374:	4c 89 ef             	mov    %r13,%rdi
  401377:	e8 c4 f7 ff ff       	callq  400b40 <free@plt>
  40137c:	4c 8b 2b             	mov    (%rbx),%r13
  40137f:	4d 85 ed             	test   %r13,%r13
  401382:	0f 85 79 ff ff ff    	jne    401301 <Seg_unmap+0x51>
  401388:	ba f6 01 00 00       	mov    $0x1f6,%edx
  40138d:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401392:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401397:	e8 84 1c 00 00       	callq  403020 <Except_raise>
  40139c:	e9 60 ff ff ff       	jmpq   401301 <Seg_unmap+0x51>
  4013a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4013a8:	ba 0b 02 00 00       	mov    $0x20b,%edx
  4013ad:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4013b2:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4013b7:	e8 64 1c 00 00       	callq  403020 <Except_raise>
  4013bc:	e9 13 ff ff ff       	jmpq   4012d4 <Seg_unmap+0x24>
  4013c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4013c8:	ba f6 01 00 00       	mov    $0x1f6,%edx
  4013cd:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4013d2:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4013d7:	e8 44 1c 00 00       	callq  403020 <Except_raise>
  4013dc:	e9 39 ff ff ff       	jmpq   40131a <Seg_unmap+0x6a>
  4013e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4013e8:	ba 4d 01 00 00       	mov    $0x14d,%edx
  4013ed:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4013f2:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4013f7:	e8 24 1c 00 00       	callq  403020 <Except_raise>
  4013fc:	e9 c7 fe ff ff       	jmpq   4012c8 <Seg_unmap+0x18>
  401401:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401406:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40140d:	00 00 00 

0000000000401410 <DynAry_new>:
  401410:	41 54                	push   %r12
  401412:	bf 10 00 00 00       	mov    $0x10,%edi
  401417:	e8 14 f8 ff ff       	callq  400c30 <malloc@plt>
  40141c:	49 89 c4             	mov    %rax,%r12
  40141f:	48 85 c0             	test   %rax,%rax
  401422:	74 28                	je     40144c <DynAry_new+0x3c>
  401424:	48 b8 00 00 00 00 08 	movabs $0x800000000,%rax
  40142b:	00 00 00 
  40142e:	bf 40 00 00 00       	mov    $0x40,%edi
  401433:	49 89 04 24          	mov    %rax,(%r12)
  401437:	e8 f4 f7 ff ff       	callq  400c30 <malloc@plt>
  40143c:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  401441:	48 85 c0             	test   %rax,%rax
  401444:	74 1c                	je     401462 <DynAry_new+0x52>
  401446:	4c 89 e0             	mov    %r12,%rax
  401449:	41 5c                	pop    %r12
  40144b:	c3                   	retq   
  40144c:	ba d3 01 00 00       	mov    $0x1d3,%edx
  401451:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401456:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40145b:	e8 c0 1b 00 00       	callq  403020 <Except_raise>
  401460:	eb c2                	jmp    401424 <DynAry_new+0x14>
  401462:	ba d7 01 00 00       	mov    $0x1d7,%edx
  401467:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40146c:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401471:	e8 aa 1b 00 00       	callq  403020 <Except_raise>
  401476:	eb ce                	jmp    401446 <DynAry_new+0x36>
  401478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40147f:	00 

0000000000401480 <DynAry_free>:
  401480:	53                   	push   %rbx
  401481:	48 89 fb             	mov    %rdi,%rbx
  401484:	48 85 ff             	test   %rdi,%rdi
  401487:	74 27                	je     4014b0 <DynAry_free+0x30>
  401489:	48 8b 07             	mov    (%rdi),%rax
  40148c:	48 85 c0             	test   %rax,%rax
  40148f:	74 1f                	je     4014b0 <DynAry_free+0x30>
  401491:	48 8b 78 08          	mov    0x8(%rax),%rdi
  401495:	48 85 ff             	test   %rdi,%rdi
  401498:	74 16                	je     4014b0 <DynAry_free+0x30>
  40149a:	e8 a1 f6 ff ff       	callq  400b40 <free@plt>
  40149f:	48 8b 3b             	mov    (%rbx),%rdi
  4014a2:	5b                   	pop    %rbx
  4014a3:	e9 98 f6 ff ff       	jmpq   400b40 <free@plt>
  4014a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4014af:	00 
  4014b0:	ba de 01 00 00       	mov    $0x1de,%edx
  4014b5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4014ba:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4014bf:	e8 5c 1b 00 00       	callq  403020 <Except_raise>
  4014c4:	48 8b 03             	mov    (%rbx),%rax
  4014c7:	48 8b 78 08          	mov    0x8(%rax),%rdi
  4014cb:	e8 70 f6 ff ff       	callq  400b40 <free@plt>
  4014d0:	48 8b 3b             	mov    (%rbx),%rdi
  4014d3:	5b                   	pop    %rbx
  4014d4:	e9 67 f6 ff ff       	jmpq   400b40 <free@plt>
  4014d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004014e0 <freeUMMemory>:
  4014e0:	41 54                	push   %r12
  4014e2:	55                   	push   %rbp
  4014e3:	48 89 fd             	mov    %rdi,%rbp
  4014e6:	53                   	push   %rbx
  4014e7:	48 85 ff             	test   %rdi,%rdi
  4014ea:	0f 84 a0 00 00 00    	je     401590 <freeUMMemory+0xb0>
  4014f0:	48 8b 1f             	mov    (%rdi),%rbx
  4014f3:	48 85 db             	test   %rbx,%rbx
  4014f6:	0f 84 94 00 00 00    	je     401590 <freeUMMemory+0xb0>
  4014fc:	48 8b 43 10          	mov    0x10(%rbx),%rax
  401500:	48 8b 78 08          	mov    0x8(%rax),%rdi
  401504:	e8 37 f6 ff ff       	callq  400b40 <free@plt>
  401509:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
  40150d:	e8 2e f6 ff ff       	callq  400b40 <free@plt>
  401512:	4c 8b 45 00          	mov    0x0(%rbp),%r8
  401516:	49 8b 18             	mov    (%r8),%rbx
  401519:	48 85 db             	test   %rbx,%rbx
  40151c:	0f 84 8e 00 00 00    	je     4015b0 <freeUMMemory+0xd0>
  401522:	8b 03                	mov    (%rbx),%eax
  401524:	85 c0                	test   %eax,%eax
  401526:	74 43                	je     40156b <freeUMMemory+0x8b>
  401528:	83 e8 01             	sub    $0x1,%eax
  40152b:	31 db                	xor    %ebx,%ebx
  40152d:	4c 8d 24 c5 08 00 00 	lea    0x8(,%rax,8),%r12
  401534:	00 
  401535:	eb 12                	jmp    401549 <freeUMMemory+0x69>
  401537:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40153e:	00 00 
  401540:	48 83 c3 08          	add    $0x8,%rbx
  401544:	49 39 dc             	cmp    %rbx,%r12
  401547:	74 22                	je     40156b <freeUMMemory+0x8b>
  401549:	49 8b 00             	mov    (%r8),%rax
  40154c:	48 8b 40 08          	mov    0x8(%rax),%rax
  401550:	48 8b 3c 18          	mov    (%rax,%rbx,1),%rdi
  401554:	48 85 ff             	test   %rdi,%rdi
  401557:	74 e7                	je     401540 <freeUMMemory+0x60>
  401559:	e8 e2 f5 ff ff       	callq  400b40 <free@plt>
  40155e:	48 83 c3 08          	add    $0x8,%rbx
  401562:	4c 8b 45 00          	mov    0x0(%rbp),%r8
  401566:	49 39 dc             	cmp    %rbx,%r12
  401569:	75 de                	jne    401549 <freeUMMemory+0x69>
  40156b:	4c 89 c7             	mov    %r8,%rdi
  40156e:	e8 0d ff ff ff       	callq  401480 <DynAry_free>
  401573:	48 8b 45 00          	mov    0x0(%rbp),%rax
  401577:	48 8d 78 08          	lea    0x8(%rax),%rdi
  40157b:	e8 00 ff ff ff       	callq  401480 <DynAry_free>
  401580:	48 8b 7d 00          	mov    0x0(%rbp),%rdi
  401584:	5b                   	pop    %rbx
  401585:	5d                   	pop    %rbp
  401586:	41 5c                	pop    %r12
  401588:	e9 b3 f5 ff ff       	jmpq   400b40 <free@plt>
  40158d:	0f 1f 00             	nopl   (%rax)
  401590:	ba 1c 01 00 00       	mov    $0x11c,%edx
  401595:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40159a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40159f:	e8 7c 1a 00 00       	callq  403020 <Except_raise>
  4015a4:	48 8b 5d 00          	mov    0x0(%rbp),%rbx
  4015a8:	e9 4f ff ff ff       	jmpq   4014fc <freeUMMemory+0x1c>
  4015ad:	0f 1f 00             	nopl   (%rax)
  4015b0:	ba 0b 02 00 00       	mov    $0x20b,%edx
  4015b5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4015ba:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4015bf:	e8 5c 1a 00 00       	callq  403020 <Except_raise>
  4015c4:	4c 8b 45 00          	mov    0x0(%rbp),%r8
  4015c8:	e9 55 ff ff ff       	jmpq   401522 <freeUMMemory+0x42>
  4015cd:	0f 1f 00             	nopl   (%rax)

00000000004015d0 <DynAry_set>:
  4015d0:	41 54                	push   %r12
  4015d2:	49 89 d4             	mov    %rdx,%r12
  4015d5:	55                   	push   %rbp
  4015d6:	48 89 fd             	mov    %rdi,%rbp
  4015d9:	53                   	push   %rbx
  4015da:	89 f3                	mov    %esi,%ebx
  4015dc:	48 85 ff             	test   %rdi,%rdi
  4015df:	74 0f                	je     4015f0 <DynAry_set+0x20>
  4015e1:	48 8b 45 08          	mov    0x8(%rbp),%rax
  4015e5:	4c 89 24 d8          	mov    %r12,(%rax,%rbx,8)
  4015e9:	5b                   	pop    %rbx
  4015ea:	5d                   	pop    %rbp
  4015eb:	41 5c                	pop    %r12
  4015ed:	c3                   	retq   
  4015ee:	66 90                	xchg   %ax,%ax
  4015f0:	ba f6 01 00 00       	mov    $0x1f6,%edx
  4015f5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4015fa:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4015ff:	e8 1c 1a 00 00       	callq  403020 <Except_raise>
  401604:	48 8b 45 08          	mov    0x8(%rbp),%rax
  401608:	4c 89 24 d8          	mov    %r12,(%rax,%rbx,8)
  40160c:	5b                   	pop    %rbx
  40160d:	5d                   	pop    %rbp
  40160e:	41 5c                	pop    %r12
  401610:	c3                   	retq   
  401611:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401616:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40161d:	00 00 00 

0000000000401620 <DynAry_get>:
  401620:	48 8b 47 08          	mov    0x8(%rdi),%rax
  401624:	89 f6                	mov    %esi,%esi
  401626:	48 8b 04 f0          	mov    (%rax,%rsi,8),%rax
  40162a:	c3                   	retq   
  40162b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401630 <DynAry_expand>:
  401630:	53                   	push   %rbx
  401631:	8b 47 04             	mov    0x4(%rdi),%eax
  401634:	48 89 fb             	mov    %rdi,%rbx
  401637:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40163b:	8d 74 00 01          	lea    0x1(%rax,%rax,1),%esi
  40163f:	48 c1 e6 03          	shl    $0x3,%rsi
  401643:	e8 18 f6 ff ff       	callq  400c60 <realloc@plt>
  401648:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40164c:	8b 43 04             	mov    0x4(%rbx),%eax
  40164f:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401653:	89 43 04             	mov    %eax,0x4(%rbx)
  401656:	5b                   	pop    %rbx
  401657:	c3                   	retq   
  401658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40165f:	00 

0000000000401660 <DynAry_push>:
  401660:	55                   	push   %rbp
  401661:	48 89 f5             	mov    %rsi,%rbp
  401664:	53                   	push   %rbx
  401665:	48 89 fb             	mov    %rdi,%rbx
  401668:	48 83 ec 08          	sub    $0x8,%rsp
  40166c:	48 85 ff             	test   %rdi,%rdi
  40166f:	74 2f                	je     4016a0 <DynAry_push+0x40>
  401671:	8b 03                	mov    (%rbx),%eax
  401673:	3b 43 04             	cmp    0x4(%rbx),%eax
  401676:	74 18                	je     401690 <DynAry_push+0x30>
  401678:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  40167c:	89 c1                	mov    %eax,%ecx
  40167e:	48 89 2c ca          	mov    %rbp,(%rdx,%rcx,8)
  401682:	8d 50 01             	lea    0x1(%rax),%edx
  401685:	89 13                	mov    %edx,(%rbx)
  401687:	48 83 c4 08          	add    $0x8,%rsp
  40168b:	5b                   	pop    %rbx
  40168c:	5d                   	pop    %rbp
  40168d:	c3                   	retq   
  40168e:	66 90                	xchg   %ax,%ax
  401690:	48 89 df             	mov    %rbx,%rdi
  401693:	e8 98 ff ff ff       	callq  401630 <DynAry_expand>
  401698:	8b 03                	mov    (%rbx),%eax
  40169a:	eb dc                	jmp    401678 <DynAry_push+0x18>
  40169c:	0f 1f 40 00          	nopl   0x0(%rax)
  4016a0:	ba e8 01 00 00       	mov    $0x1e8,%edx
  4016a5:	be 64 4a 40 00       	mov    $0x404a64,%esi
  4016aa:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  4016af:	e8 6c 19 00 00       	callq  403020 <Except_raise>
  4016b4:	eb bb                	jmp    401671 <DynAry_push+0x11>
  4016b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4016bd:	00 00 00 

00000000004016c0 <initUMMemory>:
  4016c0:	41 54                	push   %r12
  4016c2:	55                   	push   %rbp
  4016c3:	48 89 fd             	mov    %rdi,%rbp
  4016c6:	bf 18 00 00 00       	mov    $0x18,%edi
  4016cb:	53                   	push   %rbx
  4016cc:	89 f3                	mov    %esi,%ebx
  4016ce:	e8 5d f5 ff ff       	callq  400c30 <malloc@plt>
  4016d3:	49 89 c4             	mov    %rax,%r12
  4016d6:	48 85 c0             	test   %rax,%rax
  4016d9:	74 43                	je     40171e <initUMMemory+0x5e>
  4016db:	31 c0                	xor    %eax,%eax
  4016dd:	e8 2e fd ff ff       	callq  401410 <DynAry_new>
  4016e2:	49 89 04 24          	mov    %rax,(%r12)
  4016e6:	31 c0                	xor    %eax,%eax
  4016e8:	e8 23 fd ff ff       	callq  401410 <DynAry_new>
  4016ed:	49 89 44 24 08       	mov    %rax,0x8(%r12)
  4016f2:	31 c0                	xor    %eax,%eax
  4016f4:	e8 c7 fa ff ff       	callq  4011c0 <UStack_new>
  4016f9:	49 8b 3c 24          	mov    (%r12),%rdi
  4016fd:	48 89 ee             	mov    %rbp,%rsi
  401700:	49 89 44 24 10       	mov    %rax,0x10(%r12)
  401705:	e8 56 ff ff ff       	callq  401660 <DynAry_push>
  40170a:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
  40170f:	89 de                	mov    %ebx,%esi
  401711:	e8 4a ff ff ff       	callq  401660 <DynAry_push>
  401716:	4c 89 e0             	mov    %r12,%rax
  401719:	5b                   	pop    %rbx
  40171a:	5d                   	pop    %rbp
  40171b:	41 5c                	pop    %r12
  40171d:	c3                   	retq   
  40171e:	ba 0e 01 00 00       	mov    $0x10e,%edx
  401723:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401728:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40172d:	e8 ee 18 00 00       	callq  403020 <Except_raise>
  401732:	eb a7                	jmp    4016db <initUMMemory+0x1b>
  401734:	66 90                	xchg   %ax,%ax
  401736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40173d:	00 00 00 

0000000000401740 <Seg_map>:
  401740:	41 57                	push   %r15
  401742:	41 56                	push   %r14
  401744:	41 55                	push   %r13
  401746:	41 54                	push   %r12
  401748:	55                   	push   %rbp
  401749:	89 f5                	mov    %esi,%ebp
  40174b:	53                   	push   %rbx
  40174c:	48 89 fb             	mov    %rdi,%rbx
  40174f:	48 83 ec 08          	sub    $0x8,%rsp
  401753:	48 85 ff             	test   %rdi,%rdi
  401756:	0f 84 d4 00 00 00    	je     401830 <Seg_map+0xf0>
  40175c:	41 89 ee             	mov    %ebp,%r14d
  40175f:	4a 8d 3c b5 00 00 00 	lea    0x0(,%r14,4),%rdi
  401766:	00 
  401767:	e8 c4 f4 ff ff       	callq  400c30 <malloc@plt>
  40176c:	49 89 c4             	mov    %rax,%r12
  40176f:	85 ed                	test   %ebp,%ebp
  401771:	74 1c                	je     40178f <Seg_map+0x4f>
  401773:	48 89 c2             	mov    %rax,%rdx
  401776:	8d 45 ff             	lea    -0x1(%rbp),%eax
  401779:	49 8d 4c 84 04       	lea    0x4(%r12,%rax,4),%rcx
  40177e:	66 90                	xchg   %ax,%ax
  401780:	c7 02 00 00 00 00    	movl   $0x0,(%rdx)
  401786:	48 83 c2 04          	add    $0x4,%rdx
  40178a:	48 39 d1             	cmp    %rdx,%rcx
  40178d:	75 f1                	jne    401780 <Seg_map+0x40>
  40178f:	48 8b 53 10          	mov    0x10(%rbx),%rdx
  401793:	48 8b 2b             	mov    (%rbx),%rbp
  401796:	8b 02                	mov    (%rdx),%eax
  401798:	85 c0                	test   %eax,%eax
  40179a:	75 34                	jne    4017d0 <Seg_map+0x90>
  40179c:	4c 89 e6             	mov    %r12,%rsi
  40179f:	48 89 ef             	mov    %rbp,%rdi
  4017a2:	e8 b9 fe ff ff       	callq  401660 <DynAry_push>
  4017a7:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
  4017ab:	4c 89 f6             	mov    %r14,%rsi
  4017ae:	41 89 c5             	mov    %eax,%r13d
  4017b1:	e8 aa fe ff ff       	callq  401660 <DynAry_push>
  4017b6:	48 83 c4 08          	add    $0x8,%rsp
  4017ba:	44 89 e8             	mov    %r13d,%eax
  4017bd:	5b                   	pop    %rbx
  4017be:	5d                   	pop    %rbp
  4017bf:	41 5c                	pop    %r12
  4017c1:	41 5d                	pop    %r13
  4017c3:	41 5e                	pop    %r14
  4017c5:	41 5f                	pop    %r15
  4017c7:	c3                   	retq   
  4017c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4017cf:	00 
  4017d0:	83 e8 01             	sub    $0x1,%eax
  4017d3:	89 02                	mov    %eax,(%rdx)
  4017d5:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  4017d9:	44 8b 2c 82          	mov    (%rdx,%rax,4),%r13d
  4017dd:	48 85 ed             	test   %rbp,%rbp
  4017e0:	74 34                	je     401816 <Seg_map+0xd6>
  4017e2:	48 8b 45 08          	mov    0x8(%rbp),%rax
  4017e6:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4017ea:	45 89 ef             	mov    %r13d,%r15d
  4017ed:	4e 89 24 f8          	mov    %r12,(%rax,%r15,8)
  4017f1:	48 85 db             	test   %rbx,%rbx
  4017f4:	74 0a                	je     401800 <Seg_map+0xc0>
  4017f6:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4017fa:	4e 89 34 f8          	mov    %r14,(%rax,%r15,8)
  4017fe:	eb b6                	jmp    4017b6 <Seg_map+0x76>
  401800:	ba f6 01 00 00       	mov    $0x1f6,%edx
  401805:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40180a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40180f:	e8 0c 18 00 00       	callq  403020 <Except_raise>
  401814:	eb e0                	jmp    4017f6 <Seg_map+0xb6>
  401816:	ba f6 01 00 00       	mov    $0x1f6,%edx
  40181b:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401820:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401825:	e8 f6 17 00 00       	callq  403020 <Except_raise>
  40182a:	eb b6                	jmp    4017e2 <Seg_map+0xa2>
  40182c:	0f 1f 40 00          	nopl   0x0(%rax)
  401830:	ba 35 01 00 00       	mov    $0x135,%edx
  401835:	be 64 4a 40 00       	mov    $0x404a64,%esi
  40183a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  40183f:	e8 dc 17 00 00       	callq  403020 <Except_raise>
  401844:	e9 13 ff ff ff       	jmpq   40175c <Seg_map+0x1c>
  401849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401850 <runUM>:
  401850:	41 55                	push   %r13
  401852:	66 0f ef c0          	pxor   %xmm0,%xmm0
  401856:	49 89 fd             	mov    %rdi,%r13
  401859:	41 54                	push   %r12
  40185b:	55                   	push   %rbp
  40185c:	53                   	push   %rbx
  40185d:	48 83 ec 28          	sub    $0x28,%rsp
  401861:	0f 29 04 24          	movaps %xmm0,(%rsp)
  401865:	0f 29 44 24 10       	movaps %xmm0,0x10(%rsp)
  40186a:	48 85 ff             	test   %rdi,%rdi
  40186d:	0f 84 55 02 00 00    	je     401ac8 <runUM+0x278>
  401873:	49 8b 45 00          	mov    0x0(%r13),%rax
  401877:	31 ed                	xor    %ebp,%ebp
  401879:	48 8b 40 08          	mov    0x8(%rax),%rax
  40187d:	4c 8b 20             	mov    (%rax),%r12
  401880:	89 e8                	mov    %ebp,%eax
  401882:	41 8b 1c 84          	mov    (%r12,%rax,4),%ebx
  401886:	89 d8                	mov    %ebx,%eax
  401888:	c1 e8 1c             	shr    $0x1c,%eax
  40188b:	81 fb ff ff ff df    	cmp    $0xdfffffff,%ebx
  401891:	0f 87 bb 01 00 00    	ja     401a52 <runUM+0x202>
  401897:	ff 24 c5 70 4a 40 00 	jmpq   *0x404a70(,%rax,8)
  40189e:	66 90                	xchg   %ax,%ax
  4018a0:	48 83 c4 28          	add    $0x28,%rsp
  4018a4:	5b                   	pop    %rbx
  4018a5:	5d                   	pop    %rbp
  4018a6:	41 5c                	pop    %r12
  4018a8:	41 5d                	pop    %r13
  4018aa:	c3                   	retq   
  4018ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018b0:	89 d8                	mov    %ebx,%eax
  4018b2:	89 da                	mov    %ebx,%edx
  4018b4:	83 e3 07             	and    $0x7,%ebx
  4018b7:	83 c5 01             	add    $0x1,%ebp
  4018ba:	c1 e8 03             	shr    $0x3,%eax
  4018bd:	c1 ea 06             	shr    $0x6,%edx
  4018c0:	83 e0 07             	and    $0x7,%eax
  4018c3:	83 e2 07             	and    $0x7,%edx
  4018c6:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4018c9:	23 04 9c             	and    (%rsp,%rbx,4),%eax
  4018cc:	f7 d0                	not    %eax
  4018ce:	89 04 94             	mov    %eax,(%rsp,%rdx,4)
  4018d1:	eb ad                	jmp    401880 <runUM+0x30>
  4018d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4018d8:	89 d8                	mov    %ebx,%eax
  4018da:	89 d9                	mov    %ebx,%ecx
  4018dc:	31 d2                	xor    %edx,%edx
  4018de:	83 e3 07             	and    $0x7,%ebx
  4018e1:	c1 e8 03             	shr    $0x3,%eax
  4018e4:	c1 e9 06             	shr    $0x6,%ecx
  4018e7:	83 c5 01             	add    $0x1,%ebp
  4018ea:	83 e0 07             	and    $0x7,%eax
  4018ed:	83 e1 07             	and    $0x7,%ecx
  4018f0:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4018f3:	f7 34 9c             	divl   (%rsp,%rbx,4)
  4018f6:	89 04 8c             	mov    %eax,(%rsp,%rcx,4)
  4018f9:	eb 85                	jmp    401880 <runUM+0x30>
  4018fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401900:	89 da                	mov    %ebx,%edx
  401902:	89 d8                	mov    %ebx,%eax
  401904:	83 e3 07             	and    $0x7,%ebx
  401907:	83 c5 01             	add    $0x1,%ebp
  40190a:	c1 ea 03             	shr    $0x3,%edx
  40190d:	c1 e8 06             	shr    $0x6,%eax
  401910:	83 e2 07             	and    $0x7,%edx
  401913:	83 e0 07             	and    $0x7,%eax
  401916:	8b 14 94             	mov    (%rsp,%rdx,4),%edx
  401919:	0f af 14 9c          	imul   (%rsp,%rbx,4),%edx
  40191d:	89 14 84             	mov    %edx,(%rsp,%rax,4)
  401920:	e9 5b ff ff ff       	jmpq   401880 <runUM+0x30>
  401925:	0f 1f 00             	nopl   (%rax)
  401928:	89 d9                	mov    %ebx,%ecx
  40192a:	89 d8                	mov    %ebx,%eax
  40192c:	83 e3 07             	and    $0x7,%ebx
  40192f:	83 c5 01             	add    $0x1,%ebp
  401932:	c1 e9 03             	shr    $0x3,%ecx
  401935:	c1 e8 06             	shr    $0x6,%eax
  401938:	8b 14 9c             	mov    (%rsp,%rbx,4),%edx
  40193b:	83 e1 07             	and    $0x7,%ecx
  40193e:	83 e0 07             	and    $0x7,%eax
  401941:	03 14 8c             	add    (%rsp,%rcx,4),%edx
  401944:	89 14 84             	mov    %edx,(%rsp,%rax,4)
  401947:	e9 34 ff ff ff       	jmpq   401880 <runUM+0x30>
  40194c:	0f 1f 40 00          	nopl   0x0(%rax)
  401950:	89 d8                	mov    %ebx,%eax
  401952:	49 8b 55 00          	mov    0x0(%r13),%rdx
  401956:	83 c5 01             	add    $0x1,%ebp
  401959:	c1 e8 06             	shr    $0x6,%eax
  40195c:	83 e0 07             	and    $0x7,%eax
  40195f:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  401963:	8b 34 84             	mov    (%rsp,%rax,4),%esi
  401966:	89 d8                	mov    %ebx,%eax
  401968:	83 e3 07             	and    $0x7,%ebx
  40196b:	c1 e8 03             	shr    $0x3,%eax
  40196e:	83 e0 07             	and    $0x7,%eax
  401971:	8b 14 84             	mov    (%rsp,%rax,4),%edx
  401974:	48 8b 04 f1          	mov    (%rcx,%rsi,8),%rax
  401978:	8b 0c 9c             	mov    (%rsp,%rbx,4),%ecx
  40197b:	89 0c 90             	mov    %ecx,(%rax,%rdx,4)
  40197e:	e9 fd fe ff ff       	jmpq   401880 <runUM+0x30>
  401983:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401988:	89 da                	mov    %ebx,%edx
  40198a:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  40198e:	89 d8                	mov    %ebx,%eax
  401990:	83 e3 07             	and    $0x7,%ebx
  401993:	c1 ea 03             	shr    $0x3,%edx
  401996:	c1 e8 06             	shr    $0x6,%eax
  401999:	83 c5 01             	add    $0x1,%ebp
  40199c:	83 e2 07             	and    $0x7,%edx
  40199f:	83 e0 07             	and    $0x7,%eax
  4019a2:	8b 34 94             	mov    (%rsp,%rdx,4),%esi
  4019a5:	48 8b 51 08          	mov    0x8(%rcx),%rdx
  4019a9:	8b 0c 9c             	mov    (%rsp,%rbx,4),%ecx
  4019ac:	48 8b 14 f2          	mov    (%rdx,%rsi,8),%rdx
  4019b0:	8b 14 8a             	mov    (%rdx,%rcx,4),%edx
  4019b3:	89 14 84             	mov    %edx,(%rsp,%rax,4)
  4019b6:	e9 c5 fe ff ff       	jmpq   401880 <runUM+0x30>
  4019bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4019c0:	89 d8                	mov    %ebx,%eax
  4019c2:	83 c5 01             	add    $0x1,%ebp
  4019c5:	83 e0 07             	and    $0x7,%eax
  4019c8:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4019cb:	85 c0                	test   %eax,%eax
  4019cd:	0f 84 ad fe ff ff    	je     401880 <runUM+0x30>
  4019d3:	89 d8                	mov    %ebx,%eax
  4019d5:	c1 eb 06             	shr    $0x6,%ebx
  4019d8:	c1 e8 03             	shr    $0x3,%eax
  4019db:	83 e3 07             	and    $0x7,%ebx
  4019de:	83 e0 07             	and    $0x7,%eax
  4019e1:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  4019e4:	89 04 9c             	mov    %eax,(%rsp,%rbx,4)
  4019e7:	e9 94 fe ff ff       	jmpq   401880 <runUM+0x30>
  4019ec:	0f 1f 40 00          	nopl   0x0(%rax)
  4019f0:	89 d8                	mov    %ebx,%eax
  4019f2:	81 e3 ff ff ff 01    	and    $0x1ffffff,%ebx
  4019f8:	83 c5 01             	add    $0x1,%ebp
  4019fb:	c1 e8 19             	shr    $0x19,%eax
  4019fe:	83 e0 07             	and    $0x7,%eax
  401a01:	89 1c 84             	mov    %ebx,(%rsp,%rax,4)
  401a04:	e9 77 fe ff ff       	jmpq   401880 <runUM+0x30>
  401a09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a10:	89 d8                	mov    %ebx,%eax
  401a12:	4c 89 ef             	mov    %r13,%rdi
  401a15:	83 e3 07             	and    $0x7,%ebx
  401a18:	c1 e8 03             	shr    $0x3,%eax
  401a1b:	83 e0 07             	and    $0x7,%eax
  401a1e:	8b 34 84             	mov    (%rsp,%rax,4),%esi
  401a21:	e8 aa f5 ff ff       	callq  400fd0 <loadProgram>
  401a26:	49 8b 45 00          	mov    0x0(%r13),%rax
  401a2a:	8b 2c 9c             	mov    (%rsp,%rbx,4),%ebp
  401a2d:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a31:	4c 8b 20             	mov    (%rax),%r12
  401a34:	e9 47 fe ff ff       	jmpq   401880 <runUM+0x30>
  401a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401a40:	48 8b 3d 01 4f 20 00 	mov    0x204f01(%rip),%rdi        # 606948 <stdin@@GLIBC_2.2.5>
  401a47:	83 e3 07             	and    $0x7,%ebx
  401a4a:	e8 61 f1 ff ff       	callq  400bb0 <fgetc@plt>
  401a4f:	89 04 9c             	mov    %eax,(%rsp,%rbx,4)
  401a52:	83 c5 01             	add    $0x1,%ebp
  401a55:	e9 26 fe ff ff       	jmpq   401880 <runUM+0x30>
  401a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401a60:	83 e3 07             	and    $0x7,%ebx
  401a63:	83 c5 01             	add    $0x1,%ebp
  401a66:	8b 3c 9c             	mov    (%rsp,%rbx,4),%edi
  401a69:	e8 12 f5 ff ff       	callq  400f80 <i_output>
  401a6e:	e9 0d fe ff ff       	jmpq   401880 <runUM+0x30>
  401a73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401a78:	83 e3 07             	and    $0x7,%ebx
  401a7b:	4c 89 ef             	mov    %r13,%rdi
  401a7e:	83 c5 01             	add    $0x1,%ebp
  401a81:	8b 34 9c             	mov    (%rsp,%rbx,4),%esi
  401a84:	e8 27 f8 ff ff       	callq  4012b0 <Seg_unmap>
  401a89:	49 8b 45 00          	mov    0x0(%r13),%rax
  401a8d:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a91:	4c 8b 20             	mov    (%rax),%r12
  401a94:	e9 e7 fd ff ff       	jmpq   401880 <runUM+0x30>
  401a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401aa0:	89 d8                	mov    %ebx,%eax
  401aa2:	4c 89 ef             	mov    %r13,%rdi
  401aa5:	c1 eb 03             	shr    $0x3,%ebx
  401aa8:	83 c5 01             	add    $0x1,%ebp
  401aab:	83 e0 07             	and    $0x7,%eax
  401aae:	83 e3 07             	and    $0x7,%ebx
  401ab1:	8b 34 84             	mov    (%rsp,%rax,4),%esi
  401ab4:	e8 87 fc ff ff       	callq  401740 <Seg_map>
  401ab9:	89 04 9c             	mov    %eax,(%rsp,%rbx,4)
  401abc:	e9 bf fd ff ff       	jmpq   401880 <runUM+0x30>
  401ac1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401ac8:	ba 8c 01 00 00       	mov    $0x18c,%edx
  401acd:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401ad2:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401ad7:	e8 44 15 00 00       	callq  403020 <Except_raise>
  401adc:	e9 92 fd ff ff       	jmpq   401873 <runUM+0x23>
  401ae1:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401aed:	00 00 00 

0000000000401af0 <DynAry_size>:
  401af0:	53                   	push   %rbx
  401af1:	48 89 fb             	mov    %rdi,%rbx
  401af4:	48 85 ff             	test   %rdi,%rdi
  401af7:	74 07                	je     401b00 <DynAry_size+0x10>
  401af9:	8b 03                	mov    (%rbx),%eax
  401afb:	5b                   	pop    %rbx
  401afc:	c3                   	retq   
  401afd:	0f 1f 00             	nopl   (%rax)
  401b00:	ba 0b 02 00 00       	mov    $0x20b,%edx
  401b05:	be 64 4a 40 00       	mov    $0x404a64,%esi
  401b0a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401b0f:	e8 0c 15 00 00       	callq  403020 <Except_raise>
  401b14:	8b 03                	mov    (%rbx),%eax
  401b16:	5b                   	pop    %rbx
  401b17:	c3                   	retq   
  401b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401b1f:	00 

0000000000401b20 <Bitpack_gets.part.0>:
  401b20:	41 55                	push   %r13
  401b22:	41 54                	push   %r12
  401b24:	49 89 fc             	mov    %rdi,%r12
  401b27:	55                   	push   %rbp
  401b28:	89 f5                	mov    %esi,%ebp
  401b2a:	53                   	push   %rbx
  401b2b:	8d 1c 32             	lea    (%rdx,%rsi,1),%ebx
  401b2e:	48 83 ec 08          	sub    $0x8,%rsp
  401b32:	83 fb 40             	cmp    $0x40,%ebx
  401b35:	77 49                	ja     401b80 <Bitpack_gets.part.0+0x60>
  401b37:	b9 40 00 00 00       	mov    $0x40,%ecx
  401b3c:	89 c8                	mov    %ecx,%eax
  401b3e:	29 d9                	sub    %ebx,%ecx
  401b40:	29 e8                	sub    %ebp,%eax
  401b42:	83 f9 40             	cmp    $0x40,%ecx
  401b45:	41 89 cd             	mov    %ecx,%r13d
  401b48:	89 c5                	mov    %eax,%ebp
  401b4a:	77 74                	ja     401bc0 <Bitpack_gets.part.0+0xa0>
  401b4c:	bb 00 00 00 00       	mov    $0x0,%ebx
  401b51:	74 09                	je     401b5c <Bitpack_gets.part.0+0x3c>
  401b53:	4c 89 e3             	mov    %r12,%rbx
  401b56:	44 89 e9             	mov    %r13d,%ecx
  401b59:	48 d3 e3             	shl    %cl,%rbx
  401b5c:	83 fd 40             	cmp    $0x40,%ebp
  401b5f:	77 3f                	ja     401ba0 <Bitpack_gets.part.0+0x80>
  401b61:	b9 3f 00 00 00       	mov    $0x3f,%ecx
  401b66:	74 02                	je     401b6a <Bitpack_gets.part.0+0x4a>
  401b68:	89 e9                	mov    %ebp,%ecx
  401b6a:	48 83 c4 08          	add    $0x8,%rsp
  401b6e:	48 89 d8             	mov    %rbx,%rax
  401b71:	5b                   	pop    %rbx
  401b72:	5d                   	pop    %rbp
  401b73:	41 5c                	pop    %r12
  401b75:	48 d3 f8             	sar    %cl,%rax
  401b78:	41 5d                	pop    %r13
  401b7a:	c3                   	retq   
  401b7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  401b80:	ba 50 00 00 00       	mov    $0x50,%edx
  401b85:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401b8a:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401b8f:	e8 8c 14 00 00       	callq  403020 <Except_raise>
  401b94:	eb a1                	jmp    401b37 <Bitpack_gets.part.0+0x17>
  401b96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b9d:	00 00 00 
  401ba0:	ba 2c 00 00 00       	mov    $0x2c,%edx
  401ba5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401baa:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401baf:	e8 6c 14 00 00       	callq  403020 <Except_raise>
  401bb4:	eb b2                	jmp    401b68 <Bitpack_gets.part.0+0x48>
  401bb6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401bbd:	00 00 00 
  401bc0:	ba 14 00 00 00       	mov    $0x14,%edx
  401bc5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401bca:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401bcf:	e8 4c 14 00 00       	callq  403020 <Except_raise>
  401bd4:	e9 7a ff ff ff       	jmpq   401b53 <Bitpack_gets.part.0+0x33>
  401bd9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401be0 <Bitpack_fitss>:
  401be0:	83 fe 3f             	cmp    $0x3f,%esi
  401be3:	b8 01 00 00 00       	mov    $0x1,%eax
  401be8:	77 1d                	ja     401c07 <Bitpack_fitss+0x27>
  401bea:	b9 40 00 00 00       	mov    $0x40,%ecx
  401bef:	31 c0                	xor    %eax,%eax
  401bf1:	29 f1                	sub    %esi,%ecx
  401bf3:	83 f9 40             	cmp    $0x40,%ecx
  401bf6:	74 09                	je     401c01 <Bitpack_fitss+0x21>
  401bf8:	48 89 f8             	mov    %rdi,%rax
  401bfb:	48 d3 e0             	shl    %cl,%rax
  401bfe:	48 d3 f8             	sar    %cl,%rax
  401c01:	48 39 c7             	cmp    %rax,%rdi
  401c04:	0f 94 c0             	sete   %al
  401c07:	f3 c3                	repz retq 
  401c09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401c10 <Bitpack_fitsu>:
  401c10:	83 fe 3f             	cmp    $0x3f,%esi
  401c13:	b8 01 00 00 00       	mov    $0x1,%eax
  401c18:	77 0b                	ja     401c25 <Bitpack_fitsu+0x15>
  401c1a:	89 f1                	mov    %esi,%ecx
  401c1c:	48 d3 ef             	shr    %cl,%rdi
  401c1f:	48 85 ff             	test   %rdi,%rdi
  401c22:	0f 94 c0             	sete   %al
  401c25:	f3 c3                	repz retq 
  401c27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401c2e:	00 00 

0000000000401c30 <Bitpack_gets>:
  401c30:	85 f6                	test   %esi,%esi
  401c32:	74 0c                	je     401c40 <Bitpack_gets+0x10>
  401c34:	e9 e7 fe ff ff       	jmpq   401b20 <Bitpack_gets.part.0>
  401c39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401c40:	31 c0                	xor    %eax,%eax
  401c42:	c3                   	retq   
  401c43:	66 66 66 66 2e 0f 1f 	data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401c4a:	84 00 00 00 00 00 

0000000000401c50 <Bitpack_getu>:
  401c50:	41 55                	push   %r13
  401c52:	49 89 fd             	mov    %rdi,%r13
  401c55:	41 54                	push   %r12
  401c57:	55                   	push   %rbp
  401c58:	89 f5                	mov    %esi,%ebp
  401c5a:	53                   	push   %rbx
  401c5b:	8d 1c 32             	lea    (%rdx,%rsi,1),%ebx
  401c5e:	48 83 ec 08          	sub    $0x8,%rsp
  401c62:	83 fb 40             	cmp    $0x40,%ebx
  401c65:	77 49                	ja     401cb0 <Bitpack_getu+0x60>
  401c67:	b8 40 00 00 00       	mov    $0x40,%eax
  401c6c:	89 c6                	mov    %eax,%esi
  401c6e:	29 d8                	sub    %ebx,%eax
  401c70:	29 ee                	sub    %ebp,%esi
  401c72:	83 f8 40             	cmp    $0x40,%eax
  401c75:	89 c3                	mov    %eax,%ebx
  401c77:	89 f5                	mov    %esi,%ebp
  401c79:	77 75                	ja     401cf0 <Bitpack_getu+0xa0>
  401c7b:	41 bc 00 00 00 00    	mov    $0x0,%r12d
  401c81:	74 08                	je     401c8b <Bitpack_getu+0x3b>
  401c83:	89 d9                	mov    %ebx,%ecx
  401c85:	49 d3 e5             	shl    %cl,%r13
  401c88:	4d 89 ec             	mov    %r13,%r12
  401c8b:	83 fd 40             	cmp    $0x40,%ebp
  401c8e:	77 40                	ja     401cd0 <Bitpack_getu+0x80>
  401c90:	b8 00 00 00 00       	mov    $0x0,%eax
  401c95:	74 08                	je     401c9f <Bitpack_getu+0x4f>
  401c97:	4c 89 e0             	mov    %r12,%rax
  401c9a:	89 e9                	mov    %ebp,%ecx
  401c9c:	48 d3 e8             	shr    %cl,%rax
  401c9f:	48 83 c4 08          	add    $0x8,%rsp
  401ca3:	5b                   	pop    %rbx
  401ca4:	5d                   	pop    %rbp
  401ca5:	41 5c                	pop    %r12
  401ca7:	41 5d                	pop    %r13
  401ca9:	c3                   	retq   
  401caa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  401cb0:	ba 58 00 00 00       	mov    $0x58,%edx
  401cb5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401cba:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401cbf:	e8 5c 13 00 00       	callq  403020 <Except_raise>
  401cc4:	eb a1                	jmp    401c67 <Bitpack_getu+0x17>
  401cc6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ccd:	00 00 00 
  401cd0:	ba 20 00 00 00       	mov    $0x20,%edx
  401cd5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401cda:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401cdf:	e8 3c 13 00 00       	callq  403020 <Except_raise>
  401ce4:	eb b1                	jmp    401c97 <Bitpack_getu+0x47>
  401ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401ced:	00 00 00 
  401cf0:	ba 14 00 00 00       	mov    $0x14,%edx
  401cf5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401cfa:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401cff:	e8 1c 13 00 00       	callq  403020 <Except_raise>
  401d04:	e9 7a ff ff ff       	jmpq   401c83 <Bitpack_getu+0x33>
  401d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401d10 <Bitpack_newu>:
  401d10:	41 56                	push   %r14
  401d12:	49 89 fe             	mov    %rdi,%r14
  401d15:	41 55                	push   %r13
  401d17:	41 89 f5             	mov    %esi,%r13d
  401d1a:	41 54                	push   %r12
  401d1c:	49 89 cc             	mov    %rcx,%r12
  401d1f:	55                   	push   %rbp
  401d20:	89 d5                	mov    %edx,%ebp
  401d22:	53                   	push   %rbx
  401d23:	8d 1c 32             	lea    (%rdx,%rsi,1),%ebx
  401d26:	83 fb 40             	cmp    $0x40,%ebx
  401d29:	0f 87 f9 00 00 00    	ja     401e28 <Bitpack_newu+0x118>
  401d2f:	44 89 ee             	mov    %r13d,%esi
  401d32:	4c 89 e7             	mov    %r12,%rdi
  401d35:	e8 d6 fe ff ff       	callq  401c10 <Bitpack_fitsu>
  401d3a:	84 c0                	test   %al,%al
  401d3c:	0f 84 c6 00 00 00    	je     401e08 <Bitpack_newu+0xf8>
  401d42:	83 fb 40             	cmp    $0x40,%ebx
  401d45:	0f 87 85 00 00 00    	ja     401dd0 <Bitpack_newu+0xc0>
  401d4b:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401d51:	74 0d                	je     401d60 <Bitpack_newu+0x50>
  401d53:	4d 89 f5             	mov    %r14,%r13
  401d56:	89 d9                	mov    %ebx,%ecx
  401d58:	49 d3 ed             	shr    %cl,%r13
  401d5b:	89 d9                	mov    %ebx,%ecx
  401d5d:	49 d3 e5             	shl    %cl,%r13
  401d60:	bb 40 00 00 00       	mov    $0x40,%ebx
  401d65:	29 eb                	sub    %ebp,%ebx
  401d67:	83 fb 40             	cmp    $0x40,%ebx
  401d6a:	77 34                	ja     401da0 <Bitpack_newu+0x90>
  401d6c:	ba 00 00 00 00       	mov    $0x0,%edx
  401d71:	74 0d                	je     401d80 <Bitpack_newu+0x70>
  401d73:	89 d9                	mov    %ebx,%ecx
  401d75:	49 d3 e6             	shl    %cl,%r14
  401d78:	4c 89 f2             	mov    %r14,%rdx
  401d7b:	89 d9                	mov    %ebx,%ecx
  401d7d:	48 d3 ea             	shr    %cl,%rdx
  401d80:	5b                   	pop    %rbx
  401d81:	4c 89 e0             	mov    %r12,%rax
  401d84:	89 e9                	mov    %ebp,%ecx
  401d86:	5d                   	pop    %rbp
  401d87:	41 5c                	pop    %r12
  401d89:	48 d3 e0             	shl    %cl,%rax
  401d8c:	4c 09 e8             	or     %r13,%rax
  401d8f:	41 5d                	pop    %r13
  401d91:	48 09 d0             	or     %rdx,%rax
  401d94:	41 5e                	pop    %r14
  401d96:	c3                   	retq   
  401d97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401d9e:	00 00 
  401da0:	ba 14 00 00 00       	mov    $0x14,%edx
  401da5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401daa:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401daf:	e8 6c 12 00 00       	callq  403020 <Except_raise>
  401db4:	89 d9                	mov    %ebx,%ecx
  401db6:	ba 20 00 00 00       	mov    $0x20,%edx
  401dbb:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401dc0:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401dc5:	49 d3 e6             	shl    %cl,%r14
  401dc8:	e8 53 12 00 00       	callq  403020 <Except_raise>
  401dcd:	eb a9                	jmp    401d78 <Bitpack_newu+0x68>
  401dcf:	90                   	nop
  401dd0:	ba 20 00 00 00       	mov    $0x20,%edx
  401dd5:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401dda:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401ddf:	e8 3c 12 00 00       	callq  403020 <Except_raise>
  401de4:	4d 89 f5             	mov    %r14,%r13
  401de7:	89 d9                	mov    %ebx,%ecx
  401de9:	ba 14 00 00 00       	mov    $0x14,%edx
  401dee:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401df3:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401df8:	49 d3 ed             	shr    %cl,%r13
  401dfb:	e8 20 12 00 00       	callq  403020 <Except_raise>
  401e00:	e9 56 ff ff ff       	jmpq   401d5b <Bitpack_newu+0x4b>
  401e05:	0f 1f 00             	nopl   (%rax)
  401e08:	ba 65 00 00 00       	mov    $0x65,%edx
  401e0d:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401e12:	bf 10 61 60 00       	mov    $0x606110,%edi
  401e17:	e8 04 12 00 00       	callq  403020 <Except_raise>
  401e1c:	e9 21 ff ff ff       	jmpq   401d42 <Bitpack_newu+0x32>
  401e21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  401e28:	ba 63 00 00 00       	mov    $0x63,%edx
  401e2d:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401e32:	bf e0 5d 60 00       	mov    $0x605de0,%edi
  401e37:	e8 e4 11 00 00       	callq  403020 <Except_raise>
  401e3c:	e9 ee fe ff ff       	jmpq   401d2f <Bitpack_newu+0x1f>
  401e41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401e48:	0f 1f 84 00 00 00 00 
  401e4f:	00 

0000000000401e50 <Bitpack_news>:
  401e50:	41 55                	push   %r13
  401e52:	41 89 d5             	mov    %edx,%r13d
  401e55:	41 54                	push   %r12
  401e57:	49 89 fc             	mov    %rdi,%r12
  401e5a:	48 89 cf             	mov    %rcx,%rdi
  401e5d:	55                   	push   %rbp
  401e5e:	48 89 cd             	mov    %rcx,%rbp
  401e61:	53                   	push   %rbx
  401e62:	89 f3                	mov    %esi,%ebx
  401e64:	48 83 ec 08          	sub    $0x8,%rsp
  401e68:	e8 73 fd ff ff       	callq  401be0 <Bitpack_fitss>
  401e6d:	84 c0                	test   %al,%al
  401e6f:	75 14                	jne    401e85 <Bitpack_news+0x35>
  401e71:	ba 6f 00 00 00       	mov    $0x6f,%edx
  401e76:	be 03 4b 40 00       	mov    $0x404b03,%esi
  401e7b:	bf 10 61 60 00       	mov    $0x606110,%edi
  401e80:	e8 9b 11 00 00       	callq  403020 <Except_raise>
  401e85:	89 de                	mov    %ebx,%esi
  401e87:	48 89 ef             	mov    %rbp,%rdi
  401e8a:	31 d2                	xor    %edx,%edx
  401e8c:	e8 bf fd ff ff       	callq  401c50 <Bitpack_getu>
  401e91:	48 83 c4 08          	add    $0x8,%rsp
  401e95:	89 de                	mov    %ebx,%esi
  401e97:	4c 89 e7             	mov    %r12,%rdi
  401e9a:	5b                   	pop    %rbx
  401e9b:	5d                   	pop    %rbp
  401e9c:	41 5c                	pop    %r12
  401e9e:	44 89 ea             	mov    %r13d,%edx
  401ea1:	48 89 c1             	mov    %rax,%rcx
  401ea4:	41 5d                	pop    %r13
  401ea6:	e9 65 fe ff ff       	jmpq   401d10 <Bitpack_newu>
  401eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401eb0 <Bitpack_run_tests>:
  401eb0:	41 56                	push   %r14
  401eb2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401eb7:	55                   	push   %rbp
  401eb8:	53                   	push   %rbx
  401eb9:	48 81 ec 20 02 00 00 	sub    $0x220,%rsp
  401ec0:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
  401ec7:	00 
  401ec8:	48 b8 ef be ad de ce 	movabs $0xfeedfacedeadbeef,%rax
  401ecf:	fa ed fe 
  401ed2:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%rsp)
  401ed9:	00 
  401eda:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
  401ee1:	00 
  401ee2:	8b 44 24 58          	mov    0x58(%rsp),%eax
  401ee6:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
  401eeb:	48 89 54 24 20       	mov    %rdx,0x20(%rsp)
  401ef0:	40 88 7c 24 43       	mov    %dil,0x43(%rsp)
  401ef5:	48 c7 84 24 b0 00 00 	movq   $0x0,0xb0(%rsp)
  401efc:	00 00 00 00 00 
  401f01:	83 f8 02             	cmp    $0x2,%eax
  401f04:	c7 84 24 a0 00 00 00 	movl   $0x0,0xa0(%rsp)
  401f0b:	00 00 00 00 
  401f0f:	c7 84 24 a4 00 00 00 	movl   $0x6,0xa4(%rsp)
  401f16:	06 00 00 00 
  401f1a:	c7 84 24 a8 00 00 00 	movl   $0x8,0xa8(%rsp)
  401f21:	08 00 00 00 
  401f25:	c7 84 24 ac 00 00 00 	movl   $0x40,0xac(%rsp)
  401f2c:	40 00 00 00 
  401f30:	c7 84 24 90 00 00 00 	movl   $0x10,0x90(%rsp)
  401f37:	10 00 00 00 
  401f3b:	c7 84 24 94 00 00 00 	movl   $0x0,0x94(%rsp)
  401f42:	00 00 00 00 
  401f46:	c7 84 24 98 00 00 00 	movl   $0x63,0x98(%rsp)
  401f4d:	63 00 00 00 
  401f51:	48 c7 84 24 00 01 00 	movq   $0xfffffffffffffffe,0x100(%rsp)
  401f58:	00 fe ff ff ff 
  401f5d:	48 c7 84 24 08 01 00 	movq   $0x7,0x108(%rsp)
  401f64:	00 07 00 00 00 
  401f69:	48 c7 84 24 10 01 00 	movq   $0x0,0x110(%rsp)
  401f70:	00 00 00 00 00 
  401f75:	48 c7 84 24 18 01 00 	movq   $0xb,0x118(%rsp)
  401f7c:	00 0b 00 00 00 
  401f81:	48 c7 84 24 20 01 00 	movq   $0xfffffffffffffff8,0x120(%rsp)
  401f88:	00 f8 ff ff ff 
  401f8d:	48 c7 84 24 28 01 00 	movq   $0xfffffffffffffff5,0x128(%rsp)
  401f94:	00 f5 ff ff ff 
  401f99:	48 c7 84 24 d0 00 00 	movq   $0x33,0xd0(%rsp)
  401fa0:	00 33 00 00 00 
  401fa5:	48 c7 84 24 d8 00 00 	movq   $0x7,0xd8(%rsp)
  401fac:	00 07 00 00 00 
  401fb1:	48 c7 84 24 e0 00 00 	movq   $0x0,0xe0(%rsp)
  401fb8:	00 00 00 00 00 
  401fbd:	48 c7 84 24 e8 00 00 	movq   $0xb,0xe8(%rsp)
  401fc4:	00 0b 00 00 00 
  401fc9:	48 c7 84 24 f0 00 00 	movq   $0x1,0xf0(%rsp)
  401fd0:	00 01 00 00 00 
  401fd5:	0f 87 bd 02 00 00    	ja     402298 <Bitpack_run_tests+0x3e8>
  401fdb:	48 8d 84 24 38 01 00 	lea    0x138(%rsp),%rax
  401fe2:	00 
  401fe3:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  401fe8:	8b 44 24 58          	mov    0x58(%rsp),%eax
  401fec:	c7 44 24 5c 00 00 00 	movl   $0x0,0x5c(%rsp)
  401ff3:	00 
  401ff4:	48 8b 84 c4 b0 00 00 	mov    0xb0(%rsp,%rax,8),%rax
  401ffb:	00 
  401ffc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402001:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
  402005:	83 f8 03             	cmp    $0x3,%eax
  402008:	0f 87 72 02 00 00    	ja     402280 <Bitpack_run_tests+0x3d0>
  40200e:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
  402012:	c7 44 24 60 00 00 00 	movl   $0x0,0x60(%rsp)
  402019:	00 
  40201a:	b9 40 00 00 00       	mov    $0x40,%ecx
  40201f:	8b 84 84 a0 00 00 00 	mov    0xa0(%rsp,%rax,4),%eax
  402026:	89 c3                	mov    %eax,%ebx
  402028:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40202c:	8b 44 24 60          	mov    0x60(%rsp),%eax
  402030:	29 d9                	sub    %ebx,%ecx
  402032:	89 4c 24 44          	mov    %ecx,0x44(%rsp)
  402036:	83 f8 02             	cmp    $0x2,%eax
  402039:	0f 87 29 02 00 00    	ja     402268 <Bitpack_run_tests+0x3b8>
  40203f:	90                   	nop
  402040:	8b 44 24 60          	mov    0x60(%rsp),%eax
  402044:	83 bc 84 90 00 00 00 	cmpl   $0x63,0x90(%rsp,%rax,4)
  40204b:	63 
  40204c:	0f 84 76 09 00 00    	je     4029c8 <Bitpack_run_tests+0xb18>
  402052:	8b 44 24 60          	mov    0x60(%rsp),%eax
  402056:	8b 84 84 90 00 00 00 	mov    0x90(%rsp,%rax,4),%eax
  40205d:	89 44 24 64          	mov    %eax,0x64(%rsp)
  402061:	c7 44 24 68 00 00 00 	movl   $0x0,0x68(%rsp)
  402068:	00 
  402069:	8b 44 24 68          	mov    0x68(%rsp),%eax
  40206d:	83 f8 05             	cmp    $0x5,%eax
  402070:	76 26                	jbe    402098 <Bitpack_run_tests+0x1e8>
  402072:	e9 d9 00 00 00       	jmpq   402150 <Bitpack_run_tests+0x2a0>
  402077:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40207e:	00 00 
  402080:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402084:	83 c0 01             	add    $0x1,%eax
  402087:	89 44 24 68          	mov    %eax,0x68(%rsp)
  40208b:	8b 44 24 68          	mov    0x68(%rsp),%eax
  40208f:	83 f8 05             	cmp    $0x5,%eax
  402092:	0f 87 b8 00 00 00    	ja     402150 <Bitpack_run_tests+0x2a0>
  402098:	8b 44 24 68          	mov    0x68(%rsp),%eax
  40209c:	48 83 bc c4 00 01 00 	cmpq   $0x0,0x100(%rsp,%rax,8)
  4020a3:	00 00 
  4020a5:	74 08                	je     4020af <Bitpack_run_tests+0x1ff>
  4020a7:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4020ab:	85 c0                	test   %eax,%eax
  4020ad:	74 d1                	je     402080 <Bitpack_run_tests+0x1d0>
  4020af:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4020b3:	03 44 24 0c          	add    0xc(%rsp),%eax
  4020b7:	83 f8 40             	cmp    $0x40,%eax
  4020ba:	77 c4                	ja     402080 <Bitpack_run_tests+0x1d0>
  4020bc:	48 8b 05 95 48 20 00 	mov    0x204895(%rip),%rax        # 606958 <Except_stack>
  4020c3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4020c8:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4020cf:	00 
  4020d0:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4020d7:	00 
  4020d8:	48 89 05 79 48 20 00 	mov    %rax,0x204879(%rip)        # 606958 <Except_stack>
  4020df:	e8 fc ea ff ff       	callq  400be0 <_setjmp@plt>
  4020e4:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
  4020e8:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
  4020ec:	85 c0                	test   %eax,%eax
  4020ee:	0f 84 3c 05 00 00    	je     402630 <Bitpack_run_tests+0x780>
  4020f4:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  4020f9:	c7 44 24 6c 02 00 00 	movl   $0x2,0x6c(%rsp)
  402100:	00 
  402101:	be 06 00 00 00       	mov    $0x6,%esi
  402106:	74 2d                	je     402135 <Bitpack_run_tests+0x285>
  402108:	8b 44 24 64          	mov    0x64(%rsp),%eax
  40210c:	85 c0                	test   %eax,%eax
  40210e:	0f 84 a4 01 00 00    	je     4022b8 <Bitpack_run_tests+0x408>
  402114:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402118:	03 44 24 0c          	add    0xc(%rsp),%eax
  40211c:	83 f8 40             	cmp    $0x40,%eax
  40211f:	0f 84 93 01 00 00    	je     4022b8 <Bitpack_run_tests+0x408>
  402125:	31 c0                	xor    %eax,%eax
  402127:	8b 4c 24 0c          	mov    0xc(%rsp),%ecx
  40212b:	31 f6                	xor    %esi,%esi
  40212d:	85 c9                	test   %ecx,%ecx
  40212f:	40 0f 94 c6          	sete   %sil
  402133:	09 c6                	or     %eax,%esi
  402135:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  40213a:	31 d2                	xor    %edx,%edx
  40213c:	bf 38 4b 40 00       	mov    $0x404b38,%edi
  402141:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402146:	ff d0                	callq  *%rax
  402148:	e9 33 ff ff ff       	jmpq   402080 <Bitpack_run_tests+0x1d0>
  40214d:	0f 1f 00             	nopl   (%rax)
  402150:	c7 44 24 7c 00 00 00 	movl   $0x0,0x7c(%rsp)
  402157:	00 
  402158:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  40215c:	83 f8 04             	cmp    $0x4,%eax
  40215f:	76 27                	jbe    402188 <Bitpack_run_tests+0x2d8>
  402161:	e9 ea 00 00 00       	jmpq   402250 <Bitpack_run_tests+0x3a0>
  402166:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40216d:	00 00 00 
  402170:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  402174:	83 c0 01             	add    $0x1,%eax
  402177:	89 44 24 7c          	mov    %eax,0x7c(%rsp)
  40217b:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  40217f:	83 f8 04             	cmp    $0x4,%eax
  402182:	0f 87 c8 00 00 00    	ja     402250 <Bitpack_run_tests+0x3a0>
  402188:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  40218c:	48 83 bc c4 d0 00 00 	cmpq   $0x0,0xd0(%rsp,%rax,8)
  402193:	00 00 
  402195:	74 0a                	je     4021a1 <Bitpack_run_tests+0x2f1>
  402197:	44 8b 54 24 0c       	mov    0xc(%rsp),%r10d
  40219c:	45 85 d2             	test   %r10d,%r10d
  40219f:	74 cf                	je     402170 <Bitpack_run_tests+0x2c0>
  4021a1:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4021a5:	03 44 24 0c          	add    0xc(%rsp),%eax
  4021a9:	83 f8 40             	cmp    $0x40,%eax
  4021ac:	77 c2                	ja     402170 <Bitpack_run_tests+0x2c0>
  4021ae:	48 8b 05 a3 47 20 00 	mov    0x2047a3(%rip),%rax        # 606958 <Except_stack>
  4021b5:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4021ba:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4021c1:	00 
  4021c2:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4021c9:	00 
  4021ca:	48 89 05 87 47 20 00 	mov    %rax,0x204787(%rip)        # 606958 <Except_stack>
  4021d1:	e8 0a ea ff ff       	callq  400be0 <_setjmp@plt>
  4021d6:	89 84 24 80 00 00 00 	mov    %eax,0x80(%rsp)
  4021dd:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  4021e4:	85 c0                	test   %eax,%eax
  4021e6:	0f 84 dc 00 00 00    	je     4022c8 <Bitpack_run_tests+0x418>
  4021ec:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  4021f1:	c7 84 24 80 00 00 00 	movl   $0x2,0x80(%rsp)
  4021f8:	02 00 00 00 
  4021fc:	be 06 00 00 00       	mov    $0x6,%esi
  402201:	74 2d                	je     402230 <Bitpack_run_tests+0x380>
  402203:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402207:	85 c0                	test   %eax,%eax
  402209:	0f 84 99 00 00 00    	je     4022a8 <Bitpack_run_tests+0x3f8>
  40220f:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402213:	03 44 24 0c          	add    0xc(%rsp),%eax
  402217:	83 f8 40             	cmp    $0x40,%eax
  40221a:	0f 84 88 00 00 00    	je     4022a8 <Bitpack_run_tests+0x3f8>
  402220:	31 c0                	xor    %eax,%eax
  402222:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  402226:	31 f6                	xor    %esi,%esi
  402228:	85 d2                	test   %edx,%edx
  40222a:	40 0f 94 c6          	sete   %sil
  40222e:	09 c6                	or     %eax,%esi
  402230:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402235:	31 d2                	xor    %edx,%edx
  402237:	bf 78 4c 40 00       	mov    $0x404c78,%edi
  40223c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402241:	ff d0                	callq  *%rax
  402243:	e9 28 ff ff ff       	jmpq   402170 <Bitpack_run_tests+0x2c0>
  402248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40224f:	00 
  402250:	8b 44 24 60          	mov    0x60(%rsp),%eax
  402254:	83 c0 01             	add    $0x1,%eax
  402257:	89 44 24 60          	mov    %eax,0x60(%rsp)
  40225b:	8b 44 24 60          	mov    0x60(%rsp),%eax
  40225f:	83 f8 02             	cmp    $0x2,%eax
  402262:	0f 86 d8 fd ff ff    	jbe    402040 <Bitpack_run_tests+0x190>
  402268:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
  40226c:	83 c0 01             	add    $0x1,%eax
  40226f:	89 44 24 5c          	mov    %eax,0x5c(%rsp)
  402273:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
  402277:	83 f8 03             	cmp    $0x3,%eax
  40227a:	0f 86 8e fd ff ff    	jbe    40200e <Bitpack_run_tests+0x15e>
  402280:	8b 44 24 58          	mov    0x58(%rsp),%eax
  402284:	83 c0 01             	add    $0x1,%eax
  402287:	89 44 24 58          	mov    %eax,0x58(%rsp)
  40228b:	8b 44 24 58          	mov    0x58(%rsp),%eax
  40228f:	83 f8 02             	cmp    $0x2,%eax
  402292:	0f 86 50 fd ff ff    	jbe    401fe8 <Bitpack_run_tests+0x138>
  402298:	48 81 c4 20 02 00 00 	add    $0x220,%rsp
  40229f:	5b                   	pop    %rbx
  4022a0:	5d                   	pop    %rbp
  4022a1:	41 5e                	pop    %r14
  4022a3:	c3                   	retq   
  4022a4:	0f 1f 40 00          	nopl   0x0(%rax)
  4022a8:	b8 04 00 00 00       	mov    $0x4,%eax
  4022ad:	e9 70 ff ff ff       	jmpq   402222 <Bitpack_run_tests+0x372>
  4022b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4022b8:	b8 04 00 00 00       	mov    $0x4,%eax
  4022bd:	e9 65 fe ff ff       	jmpq   402127 <Bitpack_run_tests+0x277>
  4022c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4022c8:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  4022cc:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  4022d0:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4022d4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  4022d9:	48 8b 8c c4 d0 00 00 	mov    0xd0(%rsp,%rax,8),%rcx
  4022e0:	00 
  4022e1:	e8 2a fa ff ff       	callq  401d10 <Bitpack_newu>
  4022e6:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  4022ed:	85 c0                	test   %eax,%eax
  4022ef:	75 11                	jne    402302 <Bitpack_run_tests+0x452>
  4022f1:	48 8b 05 60 46 20 00 	mov    0x204660(%rip),%rax        # 606958 <Except_stack>
  4022f8:	48 8b 00             	mov    (%rax),%rax
  4022fb:	48 89 05 56 46 20 00 	mov    %rax,0x204656(%rip)        # 606958 <Except_stack>
  402302:	8b 84 24 80 00 00 00 	mov    0x80(%rsp),%eax
  402309:	83 f8 01             	cmp    $0x1,%eax
  40230c:	0f 84 d0 0b 00 00    	je     402ee2 <Bitpack_run_tests+0x1032>
  402312:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  402316:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  40231a:	8b 54 24 64          	mov    0x64(%rsp),%edx
  40231e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402323:	48 8b 8c c4 d0 00 00 	mov    0xd0(%rsp,%rax,8),%rcx
  40232a:	00 
  40232b:	e8 e0 f9 ff ff       	callq  401d10 <Bitpack_newu>
  402330:	80 7c 24 43 00       	cmpb   $0x0,0x43(%rsp)
  402335:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  40233a:	0f 85 98 0a 00 00    	jne    402dd8 <Bitpack_run_tests+0xf28>
  402340:	48 8b 05 11 46 20 00 	mov    0x204611(%rip),%rax        # 606958 <Except_stack>
  402347:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40234c:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  402353:	00 
  402354:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40235b:	00 
  40235c:	48 89 05 f5 45 20 00 	mov    %rax,0x2045f5(%rip)        # 606958 <Except_stack>
  402363:	e8 78 e8 ff ff       	callq  400be0 <_setjmp@plt>
  402368:	89 84 24 84 00 00 00 	mov    %eax,0x84(%rsp)
  40236f:	8b 84 24 84 00 00 00 	mov    0x84(%rsp),%eax
  402376:	85 c0                	test   %eax,%eax
  402378:	0f 84 c2 09 00 00    	je     402d40 <Bitpack_run_tests+0xe90>
  40237e:	44 8b 44 24 0c       	mov    0xc(%rsp),%r8d
  402383:	c7 84 24 84 00 00 00 	movl   $0x2,0x84(%rsp)
  40238a:	02 00 00 00 
  40238e:	bb 05 00 00 00       	mov    $0x5,%ebx
  402393:	45 85 c0             	test   %r8d,%r8d
  402396:	74 28                	je     4023c0 <Bitpack_run_tests+0x510>
  402398:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  40239d:	b3 06                	mov    $0x6,%bl
  40239f:	74 1f                	je     4023c0 <Bitpack_run_tests+0x510>
  4023a1:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4023a5:	85 c0                	test   %eax,%eax
  4023a7:	0f 84 b3 0a 00 00    	je     402e60 <Bitpack_run_tests+0xfb0>
  4023ad:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4023b1:	03 44 24 0c          	add    0xc(%rsp),%eax
  4023b5:	83 f8 40             	cmp    $0x40,%eax
  4023b8:	0f 84 a2 0a 00 00    	je     402e60 <Bitpack_run_tests+0xfb0>
  4023be:	30 db                	xor    %bl,%bl
  4023c0:	44 8b 44 24 64       	mov    0x64(%rsp),%r8d
  4023c5:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  4023ca:	bf d8 4b 40 00       	mov    $0x404bd8,%edi
  4023cf:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4023d3:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4023d8:	31 c0                	xor    %eax,%eax
  4023da:	e8 01 17 00 00       	callq  403ae0 <Fmt_string>
  4023df:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4023e4:	31 d2                	xor    %edx,%edx
  4023e6:	48 89 c7             	mov    %rax,%rdi
  4023e9:	89 de                	mov    %ebx,%esi
  4023eb:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4023f0:	ff d0                	callq  *%rax
  4023f2:	8b 84 24 84 00 00 00 	mov    0x84(%rsp),%eax
  4023f9:	85 c0                	test   %eax,%eax
  4023fb:	75 11                	jne    40240e <Bitpack_run_tests+0x55e>
  4023fd:	48 8b 05 54 45 20 00 	mov    0x204554(%rip),%rax        # 606958 <Except_stack>
  402404:	48 8b 00             	mov    (%rax),%rax
  402407:	48 89 05 4a 45 20 00 	mov    %rax,0x20454a(%rip)        # 606958 <Except_stack>
  40240e:	8b 84 24 84 00 00 00 	mov    0x84(%rsp),%eax
  402415:	83 f8 01             	cmp    $0x1,%eax
  402418:	0f 84 27 0b 00 00    	je     402f45 <Bitpack_run_tests+0x1095>
  40241e:	48 8b 05 33 45 20 00 	mov    0x204533(%rip),%rax        # 606958 <Except_stack>
  402425:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40242a:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  402431:	00 
  402432:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  402439:	00 
  40243a:	48 89 05 17 45 20 00 	mov    %rax,0x204517(%rip)        # 606958 <Except_stack>
  402441:	e8 9a e7 ff ff       	callq  400be0 <_setjmp@plt>
  402446:	89 84 24 88 00 00 00 	mov    %eax,0x88(%rsp)
  40244d:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
  402454:	85 c0                	test   %eax,%eax
  402456:	0f 84 04 08 00 00    	je     402c60 <Bitpack_run_tests+0xdb0>
  40245c:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  402460:	c7 84 24 88 00 00 00 	movl   $0x2,0x88(%rsp)
  402467:	02 00 00 00 
  40246b:	bb 05 00 00 00       	mov    $0x5,%ebx
  402470:	85 ff                	test   %edi,%edi
  402472:	74 2c                	je     4024a0 <Bitpack_run_tests+0x5f0>
  402474:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402479:	b3 06                	mov    $0x6,%bl
  40247b:	74 23                	je     4024a0 <Bitpack_run_tests+0x5f0>
  40247d:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402481:	85 c0                	test   %eax,%eax
  402483:	0f 84 97 09 00 00    	je     402e20 <Bitpack_run_tests+0xf70>
  402489:	8b 44 24 64          	mov    0x64(%rsp),%eax
  40248d:	03 44 24 0c          	add    0xc(%rsp),%eax
  402491:	83 f8 40             	cmp    $0x40,%eax
  402494:	0f 84 86 09 00 00    	je     402e20 <Bitpack_run_tests+0xf70>
  40249a:	30 db                	xor    %bl,%bl
  40249c:	0f 1f 40 00          	nopl   0x0(%rax)
  4024a0:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4024a4:	8b 74 24 64          	mov    0x64(%rsp),%esi
  4024a8:	41 b9 40 00 00 00    	mov    $0x40,%r9d
  4024ae:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  4024b2:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4024b6:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  4024ba:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  4024bf:	41 29 f1             	sub    %esi,%r9d
  4024c2:	be 40 00 00 00       	mov    $0x40,%esi
  4024c7:	29 d6                	sub    %edx,%esi
  4024c9:	89 f2                	mov    %esi,%edx
  4024cb:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4024d0:	01 f8                	add    %edi,%eax
  4024d2:	01 f9                	add    %edi,%ecx
  4024d4:	29 fa                	sub    %edi,%edx
  4024d6:	89 04 24             	mov    %eax,(%rsp)
  4024d9:	41 29 f9             	sub    %edi,%r9d
  4024dc:	31 c0                	xor    %eax,%eax
  4024de:	bf 10 4c 40 00       	mov    $0x404c10,%edi
  4024e3:	e8 f8 15 00 00       	callq  403ae0 <Fmt_string>
  4024e8:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4024ed:	31 d2                	xor    %edx,%edx
  4024ef:	48 89 c7             	mov    %rax,%rdi
  4024f2:	89 de                	mov    %ebx,%esi
  4024f4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4024f9:	ff d0                	callq  *%rax
  4024fb:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
  402502:	85 c0                	test   %eax,%eax
  402504:	75 11                	jne    402517 <Bitpack_run_tests+0x667>
  402506:	48 8b 05 4b 44 20 00 	mov    0x20444b(%rip),%rax        # 606958 <Except_stack>
  40250d:	48 8b 00             	mov    (%rax),%rax
  402510:	48 89 05 41 44 20 00 	mov    %rax,0x204441(%rip)        # 606958 <Except_stack>
  402517:	8b 84 24 88 00 00 00 	mov    0x88(%rsp),%eax
  40251e:	83 f8 01             	cmp    $0x1,%eax
  402521:	0f 84 3f 0a 00 00    	je     402f66 <Bitpack_run_tests+0x10b6>
  402527:	48 8b 05 2a 44 20 00 	mov    0x20442a(%rip),%rax        # 606958 <Except_stack>
  40252e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402533:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40253a:	00 
  40253b:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  402542:	00 
  402543:	48 89 05 0e 44 20 00 	mov    %rax,0x20440e(%rip)        # 606958 <Except_stack>
  40254a:	e8 91 e6 ff ff       	callq  400be0 <_setjmp@plt>
  40254f:	89 84 24 8c 00 00 00 	mov    %eax,0x8c(%rsp)
  402556:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  40255d:	85 c0                	test   %eax,%eax
  40255f:	0f 84 63 06 00 00    	je     402bc8 <Bitpack_run_tests+0xd18>
  402565:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  402569:	c7 84 24 8c 00 00 00 	movl   $0x2,0x8c(%rsp)
  402570:	02 00 00 00 
  402574:	bb 05 00 00 00       	mov    $0x5,%ebx
  402579:	85 f6                	test   %esi,%esi
  40257b:	74 2b                	je     4025a8 <Bitpack_run_tests+0x6f8>
  40257d:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402582:	b3 06                	mov    $0x6,%bl
  402584:	74 22                	je     4025a8 <Bitpack_run_tests+0x6f8>
  402586:	8b 44 24 64          	mov    0x64(%rsp),%eax
  40258a:	85 c0                	test   %eax,%eax
  40258c:	0f 84 9e 08 00 00    	je     402e30 <Bitpack_run_tests+0xf80>
  402592:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402596:	03 44 24 0c          	add    0xc(%rsp),%eax
  40259a:	83 f8 40             	cmp    $0x40,%eax
  40259d:	0f 84 8d 08 00 00    	je     402e30 <Bitpack_run_tests+0xf80>
  4025a3:	30 db                	xor    %bl,%bl
  4025a5:	0f 1f 00             	nopl   (%rax)
  4025a8:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  4025ac:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  4025b0:	bf f0 4c 40 00       	mov    $0x404cf0,%edi
  4025b5:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  4025b9:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  4025be:	4c 8b 84 c4 d0 00 00 	mov    0xd0(%rsp,%rax,8),%r8
  4025c5:	00 
  4025c6:	31 c0                	xor    %eax,%eax
  4025c8:	e8 13 15 00 00       	callq  403ae0 <Fmt_string>
  4025cd:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4025d2:	31 d2                	xor    %edx,%edx
  4025d4:	48 89 c7             	mov    %rax,%rdi
  4025d7:	89 de                	mov    %ebx,%esi
  4025d9:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  4025de:	ff d0                	callq  *%rax
  4025e0:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  4025e7:	85 c0                	test   %eax,%eax
  4025e9:	75 11                	jne    4025fc <Bitpack_run_tests+0x74c>
  4025eb:	48 8b 05 66 43 20 00 	mov    0x204366(%rip),%rax        # 606958 <Except_stack>
  4025f2:	48 8b 00             	mov    (%rax),%rax
  4025f5:	48 89 05 5c 43 20 00 	mov    %rax,0x20435c(%rip)        # 606958 <Except_stack>
  4025fc:	8b 84 24 8c 00 00 00 	mov    0x8c(%rsp),%eax
  402603:	83 f8 01             	cmp    $0x1,%eax
  402606:	0f 85 64 fb ff ff    	jne    402170 <Bitpack_run_tests+0x2c0>
  40260c:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402613:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  40261a:	00 
  40261b:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402622:	00 
  402623:	e8 f8 09 00 00       	callq  403020 <Except_raise>
  402628:	e9 43 fb ff ff       	jmpq   402170 <Bitpack_run_tests+0x2c0>
  40262d:	0f 1f 00             	nopl   (%rax)
  402630:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402634:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  402638:	8b 54 24 64          	mov    0x64(%rsp),%edx
  40263c:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402641:	48 8b 8c c4 00 01 00 	mov    0x100(%rsp,%rax,8),%rcx
  402648:	00 
  402649:	e8 02 f8 ff ff       	callq  401e50 <Bitpack_news>
  40264e:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
  402652:	85 c0                	test   %eax,%eax
  402654:	75 11                	jne    402667 <Bitpack_run_tests+0x7b7>
  402656:	48 8b 05 fb 42 20 00 	mov    0x2042fb(%rip),%rax        # 606958 <Except_stack>
  40265d:	48 8b 00             	mov    (%rax),%rax
  402660:	48 89 05 f1 42 20 00 	mov    %rax,0x2042f1(%rip)        # 606958 <Except_stack>
  402667:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
  40266b:	83 f8 01             	cmp    $0x1,%eax
  40266e:	0f 84 b0 08 00 00    	je     402f24 <Bitpack_run_tests+0x1074>
  402674:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402678:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  40267c:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402680:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402685:	48 8b 8c c4 00 01 00 	mov    0x100(%rsp,%rax,8),%rcx
  40268c:	00 
  40268d:	e8 be f7 ff ff       	callq  401e50 <Bitpack_news>
  402692:	80 7c 24 43 00       	cmpb   $0x0,0x43(%rsp)
  402697:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  40269c:	0f 85 1e 04 00 00    	jne    402ac0 <Bitpack_run_tests+0xc10>
  4026a2:	48 8b 05 af 42 20 00 	mov    0x2042af(%rip),%rax        # 606958 <Except_stack>
  4026a9:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  4026ae:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  4026b5:	00 
  4026b6:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  4026bd:	00 
  4026be:	48 89 05 93 42 20 00 	mov    %rax,0x204293(%rip)        # 606958 <Except_stack>
  4026c5:	e8 16 e5 ff ff       	callq  400be0 <_setjmp@plt>
  4026ca:	89 44 24 70          	mov    %eax,0x70(%rsp)
  4026ce:	8b 44 24 70          	mov    0x70(%rsp),%eax
  4026d2:	85 c0                	test   %eax,%eax
  4026d4:	0f 84 56 04 00 00    	je     402b30 <Bitpack_run_tests+0xc80>
  4026da:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
  4026df:	c7 44 24 70 02 00 00 	movl   $0x2,0x70(%rsp)
  4026e6:	00 
  4026e7:	bb 05 00 00 00       	mov    $0x5,%ebx
  4026ec:	45 85 f6             	test   %r14d,%r14d
  4026ef:	74 2f                	je     402720 <Bitpack_run_tests+0x870>
  4026f1:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  4026f6:	b3 06                	mov    $0x6,%bl
  4026f8:	74 26                	je     402720 <Bitpack_run_tests+0x870>
  4026fa:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4026fe:	85 c0                	test   %eax,%eax
  402700:	0f 84 4a 07 00 00    	je     402e50 <Bitpack_run_tests+0xfa0>
  402706:	8b 44 24 64          	mov    0x64(%rsp),%eax
  40270a:	03 44 24 0c          	add    0xc(%rsp),%eax
  40270e:	83 f8 40             	cmp    $0x40,%eax
  402711:	0f 84 39 07 00 00    	je     402e50 <Bitpack_run_tests+0xfa0>
  402717:	30 db                	xor    %bl,%bl
  402719:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402720:	44 8b 44 24 64       	mov    0x64(%rsp),%r8d
  402725:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40272a:	bf d8 4b 40 00       	mov    $0x404bd8,%edi
  40272f:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402733:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  402738:	31 c0                	xor    %eax,%eax
  40273a:	e8 a1 13 00 00       	callq  403ae0 <Fmt_string>
  40273f:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402744:	31 d2                	xor    %edx,%edx
  402746:	48 89 c7             	mov    %rax,%rdi
  402749:	89 de                	mov    %ebx,%esi
  40274b:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402750:	ff d0                	callq  *%rax
  402752:	8b 44 24 70          	mov    0x70(%rsp),%eax
  402756:	85 c0                	test   %eax,%eax
  402758:	75 11                	jne    40276b <Bitpack_run_tests+0x8bb>
  40275a:	48 8b 05 f7 41 20 00 	mov    0x2041f7(%rip),%rax        # 606958 <Except_stack>
  402761:	48 8b 00             	mov    (%rax),%rax
  402764:	48 89 05 ed 41 20 00 	mov    %rax,0x2041ed(%rip)        # 606958 <Except_stack>
  40276b:	8b 44 24 70          	mov    0x70(%rsp),%eax
  40276f:	83 f8 01             	cmp    $0x1,%eax
  402772:	0f 84 8b 07 00 00    	je     402f03 <Bitpack_run_tests+0x1053>
  402778:	48 8b 05 d9 41 20 00 	mov    0x2041d9(%rip),%rax        # 606958 <Except_stack>
  40277f:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  402784:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  40278b:	00 
  40278c:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  402793:	00 
  402794:	48 89 05 bd 41 20 00 	mov    %rax,0x2041bd(%rip)        # 606958 <Except_stack>
  40279b:	e8 40 e4 ff ff       	callq  400be0 <_setjmp@plt>
  4027a0:	89 44 24 74          	mov    %eax,0x74(%rsp)
  4027a4:	8b 44 24 74          	mov    0x74(%rsp),%eax
  4027a8:	85 c0                	test   %eax,%eax
  4027aa:	0f 84 28 02 00 00    	je     4029d8 <Bitpack_run_tests+0xb28>
  4027b0:	8b 6c 24 0c          	mov    0xc(%rsp),%ebp
  4027b4:	c7 44 24 74 02 00 00 	movl   $0x2,0x74(%rsp)
  4027bb:	00 
  4027bc:	bb 05 00 00 00       	mov    $0x5,%ebx
  4027c1:	85 ed                	test   %ebp,%ebp
  4027c3:	74 2b                	je     4027f0 <Bitpack_run_tests+0x940>
  4027c5:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  4027ca:	b3 06                	mov    $0x6,%bl
  4027cc:	74 22                	je     4027f0 <Bitpack_run_tests+0x940>
  4027ce:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4027d2:	85 c0                	test   %eax,%eax
  4027d4:	0f 84 66 06 00 00    	je     402e40 <Bitpack_run_tests+0xf90>
  4027da:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4027de:	03 44 24 0c          	add    0xc(%rsp),%eax
  4027e2:	83 f8 40             	cmp    $0x40,%eax
  4027e5:	0f 84 55 06 00 00    	je     402e40 <Bitpack_run_tests+0xf90>
  4027eb:	30 db                	xor    %bl,%bl
  4027ed:	0f 1f 00             	nopl   (%rax)
  4027f0:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4027f4:	8b 74 24 64          	mov    0x64(%rsp),%esi
  4027f8:	41 b9 40 00 00 00    	mov    $0x40,%r9d
  4027fe:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402802:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402806:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  40280a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  40280f:	41 29 f1             	sub    %esi,%r9d
  402812:	be 40 00 00 00       	mov    $0x40,%esi
  402817:	29 d6                	sub    %edx,%esi
  402819:	89 f2                	mov    %esi,%edx
  40281b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  402820:	01 f8                	add    %edi,%eax
  402822:	01 f9                	add    %edi,%ecx
  402824:	29 fa                	sub    %edi,%edx
  402826:	89 04 24             	mov    %eax,(%rsp)
  402829:	41 29 f9             	sub    %edi,%r9d
  40282c:	31 c0                	xor    %eax,%eax
  40282e:	bf 10 4c 40 00       	mov    $0x404c10,%edi
  402833:	e8 a8 12 00 00       	callq  403ae0 <Fmt_string>
  402838:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  40283d:	31 d2                	xor    %edx,%edx
  40283f:	48 89 c7             	mov    %rax,%rdi
  402842:	89 de                	mov    %ebx,%esi
  402844:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402849:	ff d0                	callq  *%rax
  40284b:	8b 44 24 74          	mov    0x74(%rsp),%eax
  40284f:	85 c0                	test   %eax,%eax
  402851:	75 11                	jne    402864 <Bitpack_run_tests+0x9b4>
  402853:	48 8b 05 fe 40 20 00 	mov    0x2040fe(%rip),%rax        # 606958 <Except_stack>
  40285a:	48 8b 00             	mov    (%rax),%rax
  40285d:	48 89 05 f4 40 20 00 	mov    %rax,0x2040f4(%rip)        # 606958 <Except_stack>
  402864:	8b 44 24 74          	mov    0x74(%rsp),%eax
  402868:	83 f8 01             	cmp    $0x1,%eax
  40286b:	0f 84 50 06 00 00    	je     402ec1 <Bitpack_run_tests+0x1011>
  402871:	48 8b 05 e0 40 20 00 	mov    0x2040e0(%rip),%rax        # 606958 <Except_stack>
  402878:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  40287d:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
  402884:	00 
  402885:	48 8d 84 24 30 01 00 	lea    0x130(%rsp),%rax
  40288c:	00 
  40288d:	48 89 05 c4 40 20 00 	mov    %rax,0x2040c4(%rip)        # 606958 <Except_stack>
  402894:	e8 47 e3 ff ff       	callq  400be0 <_setjmp@plt>
  402899:	89 44 24 78          	mov    %eax,0x78(%rsp)
  40289d:	8b 44 24 78          	mov    0x78(%rsp),%eax
  4028a1:	85 c0                	test   %eax,%eax
  4028a3:	0f 85 a7 00 00 00    	jne    402950 <Bitpack_run_tests+0xaa0>
  4028a9:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
  4028ad:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4028b1:	85 db                	test   %ebx,%ebx
  4028b3:	0f 85 b1 05 00 00    	jne    402e6a <Bitpack_run_tests+0xfba>
  4028b9:	8b 44 24 68          	mov    0x68(%rsp),%eax
  4028bd:	31 ed                	xor    %ebp,%ebp
  4028bf:	bb 05 00 00 00       	mov    $0x5,%ebx
  4028c4:	48 83 bc c4 00 01 00 	cmpq   $0x0,0x100(%rsp,%rax,8)
  4028cb:	00 00 
  4028cd:	40 0f 94 c5          	sete   %bpl
  4028d1:	8b 44 24 68          	mov    0x68(%rsp),%eax
  4028d5:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  4028d9:	bf 50 4c 40 00       	mov    $0x404c50,%edi
  4028de:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  4028e2:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  4028e7:	4c 8b 84 c4 00 01 00 	mov    0x100(%rsp,%rax,8),%r8
  4028ee:	00 
  4028ef:	31 c0                	xor    %eax,%eax
  4028f1:	e8 ea 11 00 00       	callq  403ae0 <Fmt_string>
  4028f6:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4028fb:	89 ea                	mov    %ebp,%edx
  4028fd:	48 89 c7             	mov    %rax,%rdi
  402900:	89 de                	mov    %ebx,%esi
  402902:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402907:	ff d0                	callq  *%rax
  402909:	8b 44 24 78          	mov    0x78(%rsp),%eax
  40290d:	85 c0                	test   %eax,%eax
  40290f:	75 11                	jne    402922 <Bitpack_run_tests+0xa72>
  402911:	48 8b 05 40 40 20 00 	mov    0x204040(%rip),%rax        # 606958 <Except_stack>
  402918:	48 8b 00             	mov    (%rax),%rax
  40291b:	48 89 05 36 40 20 00 	mov    %rax,0x204036(%rip)        # 606958 <Except_stack>
  402922:	8b 44 24 78          	mov    0x78(%rsp),%eax
  402926:	83 f8 01             	cmp    $0x1,%eax
  402929:	0f 85 51 f7 ff ff    	jne    402080 <Bitpack_run_tests+0x1d0>
  40292f:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402936:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  40293d:	00 
  40293e:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402945:	00 
  402946:	e8 d5 06 00 00       	callq  403020 <Except_raise>
  40294b:	e9 30 f7 ff ff       	jmpq   402080 <Bitpack_run_tests+0x1d0>
  402950:	44 8b 5c 24 0c       	mov    0xc(%rsp),%r11d
  402955:	c7 44 24 78 02 00 00 	movl   $0x2,0x78(%rsp)
  40295c:	00 
  40295d:	bb 05 00 00 00       	mov    $0x5,%ebx
  402962:	45 85 db             	test   %r11d,%r11d
  402965:	74 29                	je     402990 <Bitpack_run_tests+0xae0>
  402967:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  40296c:	b3 06                	mov    $0x6,%bl
  40296e:	74 20                	je     402990 <Bitpack_run_tests+0xae0>
  402970:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402974:	85 c0                	test   %eax,%eax
  402976:	0f 84 15 06 00 00    	je     402f91 <Bitpack_run_tests+0x10e1>
  40297c:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402980:	03 44 24 0c          	add    0xc(%rsp),%eax
  402984:	83 f8 40             	cmp    $0x40,%eax
  402987:	0f 84 04 06 00 00    	je     402f91 <Bitpack_run_tests+0x10e1>
  40298d:	30 db                	xor    %bl,%bl
  40298f:	90                   	nop
  402990:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402994:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  402998:	bf 50 4c 40 00       	mov    $0x404c50,%edi
  40299d:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  4029a1:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  4029a6:	4c 8b 84 c4 00 01 00 	mov    0x100(%rsp,%rax,8),%r8
  4029ad:	00 
  4029ae:	31 c0                	xor    %eax,%eax
  4029b0:	e8 2b 11 00 00       	callq  403ae0 <Fmt_string>
  4029b5:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  4029ba:	31 d2                	xor    %edx,%edx
  4029bc:	e9 3c ff ff ff       	jmpq   4028fd <Bitpack_run_tests+0xa4d>
  4029c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029c8:	8b 44 24 44          	mov    0x44(%rsp),%eax
  4029cc:	e9 8c f6 ff ff       	jmpq   40205d <Bitpack_run_tests+0x1ad>
  4029d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4029d8:	8b 54 24 64          	mov    0x64(%rsp),%edx
  4029dc:	8b 44 24 64          	mov    0x64(%rsp),%eax
  4029e0:	be 40 00 00 00       	mov    $0x40,%esi
  4029e5:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
  4029ea:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  4029ef:	31 ed                	xor    %ebp,%ebp
  4029f1:	29 c6                	sub    %eax,%esi
  4029f3:	44 01 f2             	add    %r14d,%edx
  4029f6:	44 29 f6             	sub    %r14d,%esi
  4029f9:	e8 52 f2 ff ff       	callq  401c50 <Bitpack_getu>
  4029fe:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402a02:	48 89 c3             	mov    %rax,%rbx
  402a05:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402a09:	be 40 00 00 00       	mov    $0x40,%esi
  402a0e:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402a13:	29 c6                	sub    %eax,%esi
  402a15:	44 01 f2             	add    %r14d,%edx
  402a18:	44 29 f6             	sub    %r14d,%esi
  402a1b:	e8 30 f2 ff ff       	callq  401c50 <Bitpack_getu>
  402a20:	48 39 c3             	cmp    %rax,%rbx
  402a23:	bb 05 00 00 00       	mov    $0x5,%ebx
  402a28:	40 0f 94 c5          	sete   %bpl
  402a2c:	45 85 f6             	test   %r14d,%r14d
  402a2f:	74 2f                	je     402a60 <Bitpack_run_tests+0xbb0>
  402a31:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402a36:	b3 06                	mov    $0x6,%bl
  402a38:	74 26                	je     402a60 <Bitpack_run_tests+0xbb0>
  402a3a:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402a3e:	85 c0                	test   %eax,%eax
  402a40:	0f 84 93 05 00 00    	je     402fd9 <Bitpack_run_tests+0x1129>
  402a46:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402a4a:	03 44 24 0c          	add    0xc(%rsp),%eax
  402a4e:	83 f8 40             	cmp    $0x40,%eax
  402a51:	0f 84 82 05 00 00    	je     402fd9 <Bitpack_run_tests+0x1129>
  402a57:	30 db                	xor    %bl,%bl
  402a59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402a60:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402a64:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402a68:	41 b9 40 00 00 00    	mov    $0x40,%r9d
  402a6e:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402a72:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402a76:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  402a7a:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402a7f:	41 29 f1             	sub    %esi,%r9d
  402a82:	be 40 00 00 00       	mov    $0x40,%esi
  402a87:	29 c6                	sub    %eax,%esi
  402a89:	89 f0                	mov    %esi,%eax
  402a8b:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  402a90:	01 fa                	add    %edi,%edx
  402a92:	29 f8                	sub    %edi,%eax
  402a94:	01 f9                	add    %edi,%ecx
  402a96:	89 14 24             	mov    %edx,(%rsp)
  402a99:	41 29 f9             	sub    %edi,%r9d
  402a9c:	89 c2                	mov    %eax,%edx
  402a9e:	bf 10 4c 40 00       	mov    $0x404c10,%edi
  402aa3:	31 c0                	xor    %eax,%eax
  402aa5:	e8 36 10 00 00       	callq  403ae0 <Fmt_string>
  402aaa:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402aaf:	89 ea                	mov    %ebp,%edx
  402ab1:	e9 89 fd ff ff       	jmpq   40283f <Bitpack_run_tests+0x98f>
  402ab6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402abd:	00 00 00 
  402ac0:	8b 54 24 68          	mov    0x68(%rsp),%edx
  402ac4:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402ac8:	bf 70 4b 40 00       	mov    $0x404b70,%edi
  402acd:	8b 5c 24 0c          	mov    0xc(%rsp),%ebx
  402ad1:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402ad5:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402ada:	4c 8b 84 c4 00 01 00 	mov    0x100(%rsp,%rax,8),%r8
  402ae1:	00 
  402ae2:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
  402ae7:	4c 8b 8c d4 00 01 00 	mov    0x100(%rsp,%rdx,8),%r9
  402aee:	00 
  402aef:	89 da                	mov    %ebx,%edx
  402af1:	48 89 04 24          	mov    %rax,(%rsp)
  402af5:	31 c0                	xor    %eax,%eax
  402af7:	e8 94 e0 ff ff       	callq  400b90 <printf@plt>
  402afc:	8b 44 24 68          	mov    0x68(%rsp),%eax
  402b00:	31 f6                	xor    %esi,%esi
  402b02:	85 db                	test   %ebx,%ebx
  402b04:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402b08:	48 8b 8c c4 00 01 00 	mov    0x100(%rsp,%rax,8),%rcx
  402b0f:	00 
  402b10:	0f 85 85 04 00 00    	jne    402f9b <Bitpack_run_tests+0x10eb>
  402b16:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
  402b1b:	bf a8 4b 40 00       	mov    $0x404ba8,%edi
  402b20:	31 c0                	xor    %eax,%eax
  402b22:	e8 69 e0 ff ff       	callq  400b90 <printf@plt>
  402b27:	e9 76 fb ff ff       	jmpq   4026a2 <Bitpack_run_tests+0x7f2>
  402b2c:	0f 1f 40 00          	nopl   0x0(%rax)
  402b30:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402b34:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  402b39:	31 d2                	xor    %edx,%edx
  402b3b:	31 ed                	xor    %ebp,%ebp
  402b3d:	e8 0e f1 ff ff       	callq  401c50 <Bitpack_getu>
  402b42:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402b46:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402b4b:	48 89 c3             	mov    %rax,%rbx
  402b4e:	31 d2                	xor    %edx,%edx
  402b50:	e8 fb f0 ff ff       	callq  401c50 <Bitpack_getu>
  402b55:	48 39 c3             	cmp    %rax,%rbx
  402b58:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  402b5c:	bb 05 00 00 00       	mov    $0x5,%ebx
  402b61:	40 0f 94 c5          	sete   %bpl
  402b65:	85 c0                	test   %eax,%eax
  402b67:	74 2f                	je     402b98 <Bitpack_run_tests+0xce8>
  402b69:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402b6e:	b3 06                	mov    $0x6,%bl
  402b70:	74 26                	je     402b98 <Bitpack_run_tests+0xce8>
  402b72:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402b76:	85 c0                	test   %eax,%eax
  402b78:	0f 84 65 04 00 00    	je     402fe3 <Bitpack_run_tests+0x1133>
  402b7e:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402b82:	03 44 24 0c          	add    0xc(%rsp),%eax
  402b86:	83 f8 40             	cmp    $0x40,%eax
  402b89:	0f 84 54 04 00 00    	je     402fe3 <Bitpack_run_tests+0x1133>
  402b8f:	30 db                	xor    %bl,%bl
  402b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402b98:	44 8b 44 24 64       	mov    0x64(%rsp),%r8d
  402b9d:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  402ba2:	bf d8 4b 40 00       	mov    $0x404bd8,%edi
  402ba7:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402bab:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  402bb0:	31 c0                	xor    %eax,%eax
  402bb2:	e8 29 0f 00 00       	callq  403ae0 <Fmt_string>
  402bb7:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402bbc:	89 ea                	mov    %ebp,%edx
  402bbe:	e9 83 fb ff ff       	jmpq   402746 <Bitpack_run_tests+0x896>
  402bc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402bc8:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
  402bcd:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402bd1:	31 ed                	xor    %ebp,%ebp
  402bd3:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  402bd8:	bb 05 00 00 00       	mov    $0x5,%ebx
  402bdd:	44 89 f6             	mov    %r14d,%esi
  402be0:	e8 6b f0 ff ff       	callq  401c50 <Bitpack_getu>
  402be5:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
  402be9:	48 3b 84 d4 d0 00 00 	cmp    0xd0(%rsp,%rdx,8),%rax
  402bf0:	00 
  402bf1:	40 0f 94 c5          	sete   %bpl
  402bf5:	45 85 f6             	test   %r14d,%r14d
  402bf8:	74 2e                	je     402c28 <Bitpack_run_tests+0xd78>
  402bfa:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402bff:	b3 06                	mov    $0x6,%bl
  402c01:	74 25                	je     402c28 <Bitpack_run_tests+0xd78>
  402c03:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402c07:	85 c0                	test   %eax,%eax
  402c09:	0f 84 c0 03 00 00    	je     402fcf <Bitpack_run_tests+0x111f>
  402c0f:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402c13:	03 44 24 0c          	add    0xc(%rsp),%eax
  402c17:	83 f8 40             	cmp    $0x40,%eax
  402c1a:	0f 84 af 03 00 00    	je     402fcf <Bitpack_run_tests+0x111f>
  402c20:	30 db                	xor    %bl,%bl
  402c22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402c28:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  402c2c:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  402c30:	bf f0 4c 40 00       	mov    $0x404cf0,%edi
  402c35:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402c39:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  402c3e:	4c 8b 84 c4 d0 00 00 	mov    0xd0(%rsp,%rax,8),%r8
  402c45:	00 
  402c46:	31 c0                	xor    %eax,%eax
  402c48:	e8 93 0e 00 00       	callq  403ae0 <Fmt_string>
  402c4d:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402c52:	89 ea                	mov    %ebp,%edx
  402c54:	e9 7b f9 ff ff       	jmpq   4025d4 <Bitpack_run_tests+0x724>
  402c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402c60:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402c64:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402c68:	be 40 00 00 00       	mov    $0x40,%esi
  402c6d:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
  402c72:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  402c77:	31 ed                	xor    %ebp,%ebp
  402c79:	29 c6                	sub    %eax,%esi
  402c7b:	44 01 f2             	add    %r14d,%edx
  402c7e:	44 29 f6             	sub    %r14d,%esi
  402c81:	e8 ca ef ff ff       	callq  401c50 <Bitpack_getu>
  402c86:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402c8a:	48 89 c3             	mov    %rax,%rbx
  402c8d:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402c91:	be 40 00 00 00       	mov    $0x40,%esi
  402c96:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402c9b:	29 c6                	sub    %eax,%esi
  402c9d:	44 01 f2             	add    %r14d,%edx
  402ca0:	44 29 f6             	sub    %r14d,%esi
  402ca3:	e8 a8 ef ff ff       	callq  401c50 <Bitpack_getu>
  402ca8:	48 39 c3             	cmp    %rax,%rbx
  402cab:	bb 05 00 00 00       	mov    $0x5,%ebx
  402cb0:	40 0f 94 c5          	sete   %bpl
  402cb4:	45 85 f6             	test   %r14d,%r14d
  402cb7:	74 2f                	je     402ce8 <Bitpack_run_tests+0xe38>
  402cb9:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402cbe:	b3 06                	mov    $0x6,%bl
  402cc0:	74 26                	je     402ce8 <Bitpack_run_tests+0xe38>
  402cc2:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402cc6:	85 c0                	test   %eax,%eax
  402cc8:	0f 84 ed 02 00 00    	je     402fbb <Bitpack_run_tests+0x110b>
  402cce:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402cd2:	03 44 24 0c          	add    0xc(%rsp),%eax
  402cd6:	83 f8 40             	cmp    $0x40,%eax
  402cd9:	0f 84 dc 02 00 00    	je     402fbb <Bitpack_run_tests+0x110b>
  402cdf:	30 db                	xor    %bl,%bl
  402ce1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402ce8:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402cec:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402cf0:	41 b9 40 00 00 00    	mov    $0x40,%r9d
  402cf6:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402cfa:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402cfe:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  402d02:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  402d07:	41 29 f1             	sub    %esi,%r9d
  402d0a:	be 40 00 00 00       	mov    $0x40,%esi
  402d0f:	29 c6                	sub    %eax,%esi
  402d11:	89 f0                	mov    %esi,%eax
  402d13:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  402d18:	01 fa                	add    %edi,%edx
  402d1a:	29 f8                	sub    %edi,%eax
  402d1c:	01 f9                	add    %edi,%ecx
  402d1e:	89 14 24             	mov    %edx,(%rsp)
  402d21:	41 29 f9             	sub    %edi,%r9d
  402d24:	89 c2                	mov    %eax,%edx
  402d26:	bf 10 4c 40 00       	mov    $0x404c10,%edi
  402d2b:	31 c0                	xor    %eax,%eax
  402d2d:	e8 ae 0d 00 00       	callq  403ae0 <Fmt_string>
  402d32:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402d37:	89 ea                	mov    %ebp,%edx
  402d39:	e9 b1 f7 ff ff       	jmpq   4024ef <Bitpack_run_tests+0x63f>
  402d3e:	66 90                	xchg   %ax,%ax
  402d40:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402d44:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  402d49:	31 d2                	xor    %edx,%edx
  402d4b:	31 ed                	xor    %ebp,%ebp
  402d4d:	e8 fe ee ff ff       	callq  401c50 <Bitpack_getu>
  402d52:	8b 74 24 64          	mov    0x64(%rsp),%esi
  402d56:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
  402d5b:	31 d2                	xor    %edx,%edx
  402d5d:	48 89 c3             	mov    %rax,%rbx
  402d60:	e8 eb ee ff ff       	callq  401c50 <Bitpack_getu>
  402d65:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
  402d6a:	48 39 c3             	cmp    %rax,%rbx
  402d6d:	bb 05 00 00 00       	mov    $0x5,%ebx
  402d72:	40 0f 94 c5          	sete   %bpl
  402d76:	45 85 c9             	test   %r9d,%r9d
  402d79:	74 2d                	je     402da8 <Bitpack_run_tests+0xef8>
  402d7b:	83 7c 24 0c 40       	cmpl   $0x40,0xc(%rsp)
  402d80:	b3 06                	mov    $0x6,%bl
  402d82:	74 24                	je     402da8 <Bitpack_run_tests+0xef8>
  402d84:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402d88:	85 c0                	test   %eax,%eax
  402d8a:	0f 84 35 02 00 00    	je     402fc5 <Bitpack_run_tests+0x1115>
  402d90:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402d94:	03 44 24 0c          	add    0xc(%rsp),%eax
  402d98:	83 f8 40             	cmp    $0x40,%eax
  402d9b:	0f 84 24 02 00 00    	je     402fc5 <Bitpack_run_tests+0x1115>
  402da1:	30 db                	xor    %bl,%bl
  402da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402da8:	44 8b 44 24 64       	mov    0x64(%rsp),%r8d
  402dad:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  402db2:	bf d8 4b 40 00       	mov    $0x404bd8,%edi
  402db7:	8b 54 24 64          	mov    0x64(%rsp),%edx
  402dbb:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  402dc0:	31 c0                	xor    %eax,%eax
  402dc2:	e8 19 0d 00 00       	callq  403ae0 <Fmt_string>
  402dc7:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  402dcc:	89 ea                	mov    %ebp,%edx
  402dce:	e9 13 f6 ff ff       	jmpq   4023e6 <Bitpack_run_tests+0x536>
  402dd3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  402dd8:	8b 54 24 7c          	mov    0x7c(%rsp),%edx
  402ddc:	8b 44 24 7c          	mov    0x7c(%rsp),%eax
  402de0:	bf b8 4c 40 00       	mov    $0x404cb8,%edi
  402de5:	8b 4c 24 64          	mov    0x64(%rsp),%ecx
  402de9:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  402dee:	4c 8b 84 c4 d0 00 00 	mov    0xd0(%rsp,%rax,8),%r8
  402df5:	00 
  402df6:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
  402dfb:	4c 8b 8c d4 d0 00 00 	mov    0xd0(%rsp,%rdx,8),%r9
  402e02:	00 
  402e03:	8b 54 24 0c          	mov    0xc(%rsp),%edx
  402e07:	48 89 04 24          	mov    %rax,(%rsp)
  402e0b:	31 c0                	xor    %eax,%eax
  402e0d:	e8 7e dd ff ff       	callq  400b90 <printf@plt>
  402e12:	e9 29 f5 ff ff       	jmpq   402340 <Bitpack_run_tests+0x490>
  402e17:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e1e:	00 00 
  402e20:	bb 04 00 00 00       	mov    $0x4,%ebx
  402e25:	e9 76 f6 ff ff       	jmpq   4024a0 <Bitpack_run_tests+0x5f0>
  402e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e30:	bb 04 00 00 00       	mov    $0x4,%ebx
  402e35:	e9 6e f7 ff ff       	jmpq   4025a8 <Bitpack_run_tests+0x6f8>
  402e3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e40:	bb 04 00 00 00       	mov    $0x4,%ebx
  402e45:	e9 a6 f9 ff ff       	jmpq   4027f0 <Bitpack_run_tests+0x940>
  402e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e50:	bb 04 00 00 00       	mov    $0x4,%ebx
  402e55:	e9 c6 f8 ff ff       	jmpq   402720 <Bitpack_run_tests+0x870>
  402e5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  402e60:	bb 04 00 00 00       	mov    $0x4,%ebx
  402e65:	e9 56 f5 ff ff       	jmpq   4023c0 <Bitpack_run_tests+0x510>
  402e6a:	44 8b 74 24 0c       	mov    0xc(%rsp),%r14d
  402e6f:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  402e74:	31 ed                	xor    %ebp,%ebp
  402e76:	bb 06 00 00 00       	mov    $0x6,%ebx
  402e7b:	44 89 f6             	mov    %r14d,%esi
  402e7e:	e8 9d ec ff ff       	callq  401b20 <Bitpack_gets.part.0>
  402e83:	8b 54 24 68          	mov    0x68(%rsp),%edx
  402e87:	48 3b 84 d4 00 01 00 	cmp    0x100(%rsp,%rdx,8),%rax
  402e8e:	00 
  402e8f:	40 0f 94 c5          	sete   %bpl
  402e93:	41 83 fe 40          	cmp    $0x40,%r14d
  402e97:	0f 84 34 fa ff ff    	je     4028d1 <Bitpack_run_tests+0xa21>
  402e9d:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402ea1:	85 c0                	test   %eax,%eax
  402ea3:	0f 84 de 00 00 00    	je     402f87 <Bitpack_run_tests+0x10d7>
  402ea9:	8b 44 24 64          	mov    0x64(%rsp),%eax
  402ead:	03 44 24 0c          	add    0xc(%rsp),%eax
  402eb1:	83 f8 40             	cmp    $0x40,%eax
  402eb4:	0f 84 cd 00 00 00    	je     402f87 <Bitpack_run_tests+0x10d7>
  402eba:	30 db                	xor    %bl,%bl
  402ebc:	e9 10 fa ff ff       	jmpq   4028d1 <Bitpack_run_tests+0xa21>
  402ec1:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402ec8:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402ecf:	00 
  402ed0:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402ed7:	00 
  402ed8:	e8 43 01 00 00       	callq  403020 <Except_raise>
  402edd:	e9 8f f9 ff ff       	jmpq   402871 <Bitpack_run_tests+0x9c1>
  402ee2:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402ee9:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402ef0:	00 
  402ef1:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402ef8:	00 
  402ef9:	e8 22 01 00 00       	callq  403020 <Except_raise>
  402efe:	e9 0f f4 ff ff       	jmpq   402312 <Bitpack_run_tests+0x462>
  402f03:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402f0a:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402f11:	00 
  402f12:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402f19:	00 
  402f1a:	e8 01 01 00 00       	callq  403020 <Except_raise>
  402f1f:	e9 54 f8 ff ff       	jmpq   402778 <Bitpack_run_tests+0x8c8>
  402f24:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402f2b:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402f32:	00 
  402f33:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402f3a:	00 
  402f3b:	e8 e0 00 00 00       	callq  403020 <Except_raise>
  402f40:	e9 2f f7 ff ff       	jmpq   402674 <Bitpack_run_tests+0x7c4>
  402f45:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402f4c:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402f53:	00 
  402f54:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402f5b:	00 
  402f5c:	e8 bf 00 00 00       	callq  403020 <Except_raise>
  402f61:	e9 b8 f4 ff ff       	jmpq   40241e <Bitpack_run_tests+0x56e>
  402f66:	8b 94 24 08 02 00 00 	mov    0x208(%rsp),%edx
  402f6d:	48 8b b4 24 00 02 00 	mov    0x200(%rsp),%rsi
  402f74:	00 
  402f75:	48 8b bc 24 10 02 00 	mov    0x210(%rsp),%rdi
  402f7c:	00 
  402f7d:	e8 9e 00 00 00       	callq  403020 <Except_raise>
  402f82:	e9 a0 f5 ff ff       	jmpq   402527 <Bitpack_run_tests+0x677>
  402f87:	bb 04 00 00 00       	mov    $0x4,%ebx
  402f8c:	e9 40 f9 ff ff       	jmpq   4028d1 <Bitpack_run_tests+0xa21>
  402f91:	bb 04 00 00 00       	mov    $0x4,%ebx
  402f96:	e9 f5 f9 ff ff       	jmpq   402990 <Bitpack_run_tests+0xae0>
  402f9b:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  402f9f:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  402fa4:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
  402fa9:	e8 72 eb ff ff       	callq  401b20 <Bitpack_gets.part.0>
  402fae:	48 8b 4c 24 48       	mov    0x48(%rsp),%rcx
  402fb3:	48 89 c6             	mov    %rax,%rsi
  402fb6:	e9 5b fb ff ff       	jmpq   402b16 <Bitpack_run_tests+0xc66>
  402fbb:	bb 04 00 00 00       	mov    $0x4,%ebx
  402fc0:	e9 23 fd ff ff       	jmpq   402ce8 <Bitpack_run_tests+0xe38>
  402fc5:	bb 04 00 00 00       	mov    $0x4,%ebx
  402fca:	e9 d9 fd ff ff       	jmpq   402da8 <Bitpack_run_tests+0xef8>
  402fcf:	bb 04 00 00 00       	mov    $0x4,%ebx
  402fd4:	e9 4f fc ff ff       	jmpq   402c28 <Bitpack_run_tests+0xd78>
  402fd9:	bb 04 00 00 00       	mov    $0x4,%ebx
  402fde:	e9 7d fa ff ff       	jmpq   402a60 <Bitpack_run_tests+0xbb0>
  402fe3:	bb 04 00 00 00       	mov    $0x4,%ebx
  402fe8:	e9 ab fb ff ff       	jmpq   402b98 <Bitpack_run_tests+0xce8>
  402fed:	0f 1f 00             	nopl   (%rax)

0000000000402ff0 <assert>:
  402ff0:	85 ff                	test   %edi,%edi
  402ff2:	74 0c                	je     403000 <assert+0x10>
  402ff4:	f3 c3                	repz retq 
  402ff6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ffd:	00 00 00 
  403000:	48 8d 3d d9 2d 20 00 	lea    0x202dd9(%rip),%rdi        # 605de0 <Assert_Failed>
  403007:	48 8d 35 0a 1d 00 00 	lea    0x1d0a(%rip),%rsi        # 404d18 <_IO_stdin_used+0x2b8>
  40300e:	ba 05 00 00 00       	mov    $0x5,%edx
  403013:	e9 08 00 00 00       	jmpq   403020 <Except_raise>
  403018:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40301f:	00 

0000000000403020 <Except_raise>:
  403020:	48 89 5c 24 d8       	mov    %rbx,-0x28(%rsp)
  403025:	48 89 6c 24 e0       	mov    %rbp,-0x20(%rsp)
  40302a:	48 89 fb             	mov    %rdi,%rbx
  40302d:	4c 89 64 24 e8       	mov    %r12,-0x18(%rsp)
  403032:	4c 89 74 24 f8       	mov    %r14,-0x8(%rsp)
  403037:	49 89 f4             	mov    %rsi,%r12
  40303a:	4c 89 6c 24 f0       	mov    %r13,-0x10(%rsp)
  40303f:	48 83 ec 28          	sub    $0x28,%rsp
  403043:	4c 8d 35 0e 39 20 00 	lea    0x20390e(%rip),%r14        # 606958 <Except_stack>
  40304a:	48 85 ff             	test   %rdi,%rdi
  40304d:	89 d5                	mov    %edx,%ebp
  40304f:	4d 8b 2e             	mov    (%r14),%r13
  403052:	0f 84 a8 00 00 00    	je     403100 <Except_raise+0xe0>
  403058:	4d 85 ed             	test   %r13,%r13
  40305b:	74 33                	je     403090 <Except_raise+0x70>
  40305d:	49 8b 06             	mov    (%r14),%rax
  403060:	49 8d 7d 08          	lea    0x8(%r13),%rdi
  403064:	49 89 9d e0 00 00 00 	mov    %rbx,0xe0(%r13)
  40306b:	4d 89 a5 d0 00 00 00 	mov    %r12,0xd0(%r13)
  403072:	41 89 ad d8 00 00 00 	mov    %ebp,0xd8(%r13)
  403079:	be 01 00 00 00       	mov    $0x1,%esi
  40307e:	48 8b 00             	mov    (%rax),%rax
  403081:	49 89 06             	mov    %rax,(%r14)
  403084:	e8 e7 db ff ff       	callq  400c70 <longjmp@plt>
  403089:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403090:	4c 8b 2d 61 2f 20 00 	mov    0x202f61(%rip),%r13        # 605ff8 <stderr@GLIBC_2.2.5>
  403097:	48 8d 3d a5 1c 00 00 	lea    0x1ca5(%rip),%rdi        # 404d43 <_IO_stdin_used+0x2e3>
  40309e:	ba 12 00 00 00       	mov    $0x12,%edx
  4030a3:	be 01 00 00 00       	mov    $0x1,%esi
  4030a8:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  4030ac:	e8 0f dc ff ff       	callq  400cc0 <fwrite@plt>
  4030b1:	48 8b 13             	mov    (%rbx),%rdx
  4030b4:	48 85 d2             	test   %rdx,%rdx
  4030b7:	0f 84 83 00 00 00    	je     403140 <Except_raise+0x120>
  4030bd:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  4030c1:	48 8d 35 8e 1c 00 00 	lea    0x1c8e(%rip),%rsi        # 404d56 <_IO_stdin_used+0x2f6>
  4030c8:	31 c0                	xor    %eax,%eax
  4030ca:	e8 31 db ff ff       	callq  400c00 <fprintf@plt>
  4030cf:	85 ed                	test   %ebp,%ebp
  4030d1:	7f 4d                	jg     403120 <Except_raise+0x100>
  4030d3:	49 8b 4d 00          	mov    0x0(%r13),%rcx
  4030d7:	48 8d 3d 97 1c 00 00 	lea    0x1c97(%rip),%rdi        # 404d75 <_IO_stdin_used+0x315>
  4030de:	ba 0c 00 00 00       	mov    $0xc,%edx
  4030e3:	be 01 00 00 00       	mov    $0x1,%esi
  4030e8:	e8 d3 db ff ff       	callq  400cc0 <fwrite@plt>
  4030ed:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  4030f1:	e8 4a db ff ff       	callq  400c40 <fflush@plt>
  4030f6:	e8 55 da ff ff       	callq  400b50 <abort@plt>
  4030fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403100:	48 8d 3d d9 2c 20 00 	lea    0x202cd9(%rip),%rdi        # 605de0 <Assert_Failed>
  403107:	48 8d 35 28 1c 00 00 	lea    0x1c28(%rip),%rsi        # 404d36 <_IO_stdin_used+0x2d6>
  40310e:	ba 13 00 00 00       	mov    $0x13,%edx
  403113:	e8 08 ff ff ff       	callq  403020 <Except_raise>
  403118:	e9 3b ff ff ff       	jmpq   403058 <Except_raise+0x38>
  40311d:	0f 1f 00             	nopl   (%rax)
  403120:	4d 85 e4             	test   %r12,%r12
  403123:	74 ae                	je     4030d3 <Except_raise+0xb3>
  403125:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  403129:	48 8d 35 33 1c 00 00 	lea    0x1c33(%rip),%rsi        # 404d63 <_IO_stdin_used+0x303>
  403130:	89 e9                	mov    %ebp,%ecx
  403132:	4c 89 e2             	mov    %r12,%rdx
  403135:	31 c0                	xor    %eax,%eax
  403137:	e8 c4 da ff ff       	callq  400c00 <fprintf@plt>
  40313c:	eb 95                	jmp    4030d3 <Except_raise+0xb3>
  40313e:	66 90                	xchg   %ax,%ax
  403140:	49 8b 7d 00          	mov    0x0(%r13),%rdi
  403144:	48 8d 35 0f 1c 00 00 	lea    0x1c0f(%rip),%rsi        # 404d5a <_IO_stdin_used+0x2fa>
  40314b:	48 89 da             	mov    %rbx,%rdx
  40314e:	31 c0                	xor    %eax,%eax
  403150:	e8 ab da ff ff       	callq  400c00 <fprintf@plt>
  403155:	e9 75 ff ff ff       	jmpq   4030cf <Except_raise+0xaf>
  40315a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403160 <cvt_c>:
  403160:	41 57                	push   %r15
  403162:	41 56                	push   %r14
  403164:	45 89 ce             	mov    %r9d,%r14d
  403167:	41 55                	push   %r13
  403169:	41 54                	push   %r12
  40316b:	49 89 cc             	mov    %rcx,%r12
  40316e:	55                   	push   %rbp
  40316f:	48 89 d5             	mov    %rdx,%rbp
  403172:	53                   	push   %rbx
  403173:	48 89 f3             	mov    %rsi,%rbx
  403176:	48 83 ec 08          	sub    $0x8,%rsp
  40317a:	41 81 f9 00 00 00 80 	cmp    $0x80000000,%r9d
  403181:	0f 84 b9 00 00 00    	je     403240 <cvt_c+0xe0>
  403187:	45 85 c9             	test   %r9d,%r9d
  40318a:	0f 88 a0 00 00 00    	js     403230 <cvt_c+0xd0>
  403190:	41 80 78 2d 00       	cmpb   $0x0,0x2d(%r8)
  403195:	4d 8d 78 2d          	lea    0x2d(%r8),%r15
  403199:	75 2b                	jne    4031c6 <cvt_c+0x66>
  40319b:	41 8d 46 ff          	lea    -0x1(%r14),%eax
  40319f:	85 c0                	test   %eax,%eax
  4031a1:	7e 23                	jle    4031c6 <cvt_c+0x66>
  4031a3:	45 8d 6e fe          	lea    -0x2(%r14),%r13d
  4031a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4031ae:	00 00 
  4031b0:	41 83 ed 01          	sub    $0x1,%r13d
  4031b4:	4c 89 e6             	mov    %r12,%rsi
  4031b7:	bf 20 00 00 00       	mov    $0x20,%edi
  4031bc:	ff d5                	callq  *%rbp
  4031be:	41 8d 45 01          	lea    0x1(%r13),%eax
  4031c2:	85 c0                	test   %eax,%eax
  4031c4:	7f ea                	jg     4031b0 <cvt_c+0x50>
  4031c6:	8b 13                	mov    (%rbx),%edx
  4031c8:	83 fa 30             	cmp    $0x30,%edx
  4031cb:	73 53                	jae    403220 <cvt_c+0xc0>
  4031cd:	89 d0                	mov    %edx,%eax
  4031cf:	48 03 43 10          	add    0x10(%rbx),%rax
  4031d3:	83 c2 08             	add    $0x8,%edx
  4031d6:	89 13                	mov    %edx,(%rbx)
  4031d8:	0f b6 38             	movzbl (%rax),%edi
  4031db:	4c 89 e6             	mov    %r12,%rsi
  4031de:	ff d5                	callq  *%rbp
  4031e0:	41 80 3f 00          	cmpb   $0x0,(%r15)
  4031e4:	74 26                	je     40320c <cvt_c+0xac>
  4031e6:	41 8d 46 ff          	lea    -0x1(%r14),%eax
  4031ea:	85 c0                	test   %eax,%eax
  4031ec:	7e 1e                	jle    40320c <cvt_c+0xac>
  4031ee:	41 8d 5e fe          	lea    -0x2(%r14),%ebx
  4031f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4031f8:	83 eb 01             	sub    $0x1,%ebx
  4031fb:	4c 89 e6             	mov    %r12,%rsi
  4031fe:	bf 20 00 00 00       	mov    $0x20,%edi
  403203:	ff d5                	callq  *%rbp
  403205:	8d 43 01             	lea    0x1(%rbx),%eax
  403208:	85 c0                	test   %eax,%eax
  40320a:	7f ec                	jg     4031f8 <cvt_c+0x98>
  40320c:	48 83 c4 08          	add    $0x8,%rsp
  403210:	5b                   	pop    %rbx
  403211:	5d                   	pop    %rbp
  403212:	41 5c                	pop    %r12
  403214:	41 5d                	pop    %r13
  403216:	41 5e                	pop    %r14
  403218:	41 5f                	pop    %r15
  40321a:	c3                   	retq   
  40321b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403220:	48 8b 43 08          	mov    0x8(%rbx),%rax
  403224:	48 8d 50 08          	lea    0x8(%rax),%rdx
  403228:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  40322c:	eb aa                	jmp    4031d8 <cvt_c+0x78>
  40322e:	66 90                	xchg   %ax,%ax
  403230:	4d 8d 78 2d          	lea    0x2d(%r8),%r15
  403234:	41 c6 40 2d 01       	movb   $0x1,0x2d(%r8)
  403239:	41 f7 de             	neg    %r14d
  40323c:	eb 88                	jmp    4031c6 <cvt_c+0x66>
  40323e:	66 90                	xchg   %ax,%ax
  403240:	45 31 f6             	xor    %r14d,%r14d
  403243:	e9 48 ff ff ff       	jmpq   403190 <cvt_c+0x30>
  403248:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40324f:	00 

0000000000403250 <insert>:
  403250:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  403255:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  40325a:	48 83 ec 18          	sub    $0x18,%rsp
  40325e:	48 63 56 10          	movslq 0x10(%rsi),%rdx
  403262:	48 8b 46 08          	mov    0x8(%rsi),%rax
  403266:	89 fd                	mov    %edi,%ebp
  403268:	48 03 16             	add    (%rsi),%rdx
  40326b:	48 89 f3             	mov    %rsi,%rbx
  40326e:	48 39 d0             	cmp    %rdx,%rax
  403271:	72 1c                	jb     40328f <insert+0x3f>
  403273:	48 8d 3d 6e 2b 20 00 	lea    0x202b6e(%rip),%rdi        # 605de8 <Fmt_Overflow>
  40327a:	48 8d 35 01 1b 00 00 	lea    0x1b01(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403281:	ba a2 00 00 00       	mov    $0xa2,%edx
  403286:	e8 95 fd ff ff       	callq  403020 <Except_raise>
  40328b:	48 8b 43 08          	mov    0x8(%rbx),%rax
  40328f:	40 88 28             	mov    %bpl,(%rax)
  403292:	48 83 c0 01          	add    $0x1,%rax
  403296:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40329a:	89 e8                	mov    %ebp,%eax
  40329c:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4032a1:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4032a6:	48 83 c4 18          	add    $0x18,%rsp
  4032aa:	c3                   	retq   
  4032ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004032b0 <append>:
  4032b0:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  4032b5:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  4032ba:	48 89 f3             	mov    %rsi,%rbx
  4032bd:	48 83 ec 18          	sub    $0x18,%rsp
  4032c1:	89 fd                	mov    %edi,%ebp
  4032c3:	48 8b 46 08          	mov    0x8(%rsi),%rax
  4032c7:	48 8b 3e             	mov    (%rsi),%rdi
  4032ca:	8b 76 10             	mov    0x10(%rsi),%esi
  4032cd:	48 63 d6             	movslq %esi,%rdx
  4032d0:	48 8d 14 17          	lea    (%rdi,%rdx,1),%rdx
  4032d4:	48 39 d0             	cmp    %rdx,%rax
  4032d7:	72 2b                	jb     403304 <append+0x54>
  4032d9:	48 8d 15 a2 1a 00 00 	lea    0x1aa2(%rip),%rdx        # 404d82 <_IO_stdin_used+0x322>
  4032e0:	01 f6                	add    %esi,%esi
  4032e2:	b9 a9 00 00 00       	mov    $0xa9,%ecx
  4032e7:	48 63 f6             	movslq %esi,%rsi
  4032ea:	e8 01 16 00 00       	callq  4048f0 <Mem_resize>
  4032ef:	8b 53 10             	mov    0x10(%rbx),%edx
  4032f2:	48 89 03             	mov    %rax,(%rbx)
  4032f5:	48 63 ca             	movslq %edx,%rcx
  4032f8:	01 d2                	add    %edx,%edx
  4032fa:	48 01 c8             	add    %rcx,%rax
  4032fd:	89 53 10             	mov    %edx,0x10(%rbx)
  403300:	48 89 43 08          	mov    %rax,0x8(%rbx)
  403304:	40 88 28             	mov    %bpl,(%rax)
  403307:	48 83 c0 01          	add    $0x1,%rax
  40330b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40330f:	89 e8                	mov    %ebp,%eax
  403311:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  403316:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  40331b:	48 83 c4 18          	add    $0x18,%rsp
  40331f:	c3                   	retq   

0000000000403320 <outc>:
  403320:	e9 7b d8 ff ff       	jmpq   400ba0 <_IO_putc@plt>
  403325:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40332a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403330 <Fmt_puts>:
  403330:	41 57                	push   %r15
  403332:	41 56                	push   %r14
  403334:	45 89 ce             	mov    %r9d,%r14d
  403337:	41 55                	push   %r13
  403339:	41 89 f5             	mov    %esi,%r13d
  40333c:	41 54                	push   %r12
  40333e:	49 89 cc             	mov    %rcx,%r12
  403341:	55                   	push   %rbp
  403342:	48 89 fd             	mov    %rdi,%rbp
  403345:	53                   	push   %rbx
  403346:	48 89 d3             	mov    %rdx,%rbx
  403349:	48 83 ec 18          	sub    $0x18,%rsp
  40334d:	48 85 ff             	test   %rdi,%rdi
  403350:	44 8b 7c 24 50       	mov    0x50(%rsp),%r15d
  403355:	0f 84 32 01 00 00    	je     40348d <Fmt_puts+0x15d>
  40335b:	45 85 ed             	test   %r13d,%r13d
  40335e:	0f 88 04 01 00 00    	js     403468 <Fmt_puts+0x138>
  403364:	4d 85 c0             	test   %r8,%r8
  403367:	0f 84 45 01 00 00    	je     4034b2 <Fmt_puts+0x182>
  40336d:	41 81 fe 00 00 00 80 	cmp    $0x80000000,%r14d
  403374:	0f 84 d6 00 00 00    	je     403450 <Fmt_puts+0x120>
  40337a:	45 85 f6             	test   %r14d,%r14d
  40337d:	0f 88 ad 00 00 00    	js     403430 <Fmt_puts+0x100>
  403383:	49 8d 50 2d          	lea    0x2d(%r8),%rdx
  403387:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
  40338c:	45 85 ff             	test   %r15d,%r15d
  40338f:	78 0c                	js     40339d <Fmt_puts+0x6d>
  403391:	45 39 ef             	cmp    %r13d,%r15d
  403394:	41 c6 40 30 00       	movb   $0x0,0x30(%r8)
  403399:	45 0f 4c ef          	cmovl  %r15d,%r13d
  40339d:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4033a2:	80 3a 00             	cmpb   $0x0,(%rdx)
  4033a5:	75 24                	jne    4033cb <Fmt_puts+0x9b>
  4033a7:	45 89 f7             	mov    %r14d,%r15d
  4033aa:	45 29 ef             	sub    %r13d,%r15d
  4033ad:	45 85 ff             	test   %r15d,%r15d
  4033b0:	7e 19                	jle    4033cb <Fmt_puts+0x9b>
  4033b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4033b8:	41 83 ef 01          	sub    $0x1,%r15d
  4033bc:	4c 89 e6             	mov    %r12,%rsi
  4033bf:	bf 20 00 00 00       	mov    $0x20,%edi
  4033c4:	ff d3                	callq  *%rbx
  4033c6:	45 85 ff             	test   %r15d,%r15d
  4033c9:	7f ed                	jg     4033b8 <Fmt_puts+0x88>
  4033cb:	45 85 ed             	test   %r13d,%r13d
  4033ce:	49 89 ef             	mov    %rbp,%r15
  4033d1:	7e 1c                	jle    4033ef <Fmt_puts+0xbf>
  4033d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4033d8:	41 0f b6 3f          	movzbl (%r15),%edi
  4033dc:	49 83 c7 01          	add    $0x1,%r15
  4033e0:	4c 89 e6             	mov    %r12,%rsi
  4033e3:	ff d3                	callq  *%rbx
  4033e5:	44 89 f8             	mov    %r15d,%eax
  4033e8:	29 e8                	sub    %ebp,%eax
  4033ea:	41 39 c5             	cmp    %eax,%r13d
  4033ed:	7f e9                	jg     4033d8 <Fmt_puts+0xa8>
  4033ef:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4033f4:	80 38 00             	cmpb   $0x0,(%rax)
  4033f7:	74 22                	je     40341b <Fmt_puts+0xeb>
  4033f9:	45 29 ee             	sub    %r13d,%r14d
  4033fc:	45 85 f6             	test   %r14d,%r14d
  4033ff:	7e 1a                	jle    40341b <Fmt_puts+0xeb>
  403401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403408:	41 83 ee 01          	sub    $0x1,%r14d
  40340c:	4c 89 e6             	mov    %r12,%rsi
  40340f:	bf 20 00 00 00       	mov    $0x20,%edi
  403414:	ff d3                	callq  *%rbx
  403416:	45 85 f6             	test   %r14d,%r14d
  403419:	7f ed                	jg     403408 <Fmt_puts+0xd8>
  40341b:	48 83 c4 18          	add    $0x18,%rsp
  40341f:	5b                   	pop    %rbx
  403420:	5d                   	pop    %rbp
  403421:	41 5c                	pop    %r12
  403423:	41 5d                	pop    %r13
  403425:	41 5e                	pop    %r14
  403427:	41 5f                	pop    %r15
  403429:	c3                   	retq   
  40342a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403430:	49 8d 40 2d          	lea    0x2d(%r8),%rax
  403434:	41 f7 de             	neg    %r14d
  403437:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40343c:	41 c6 40 2d 01       	movb   $0x1,0x2d(%r8)
  403441:	e9 46 ff ff ff       	jmpq   40338c <Fmt_puts+0x5c>
  403446:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40344d:	00 00 00 
  403450:	49 8d 40 2d          	lea    0x2d(%r8),%rax
  403454:	45 31 f6             	xor    %r14d,%r14d
  403457:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40345c:	e9 2b ff ff ff       	jmpq   40338c <Fmt_puts+0x5c>
  403461:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403468:	48 8d 3d 71 29 20 00 	lea    0x202971(%rip),%rdi        # 605de0 <Assert_Failed>
  40346f:	48 8d 35 0c 19 00 00 	lea    0x190c(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403476:	ba b4 00 00 00       	mov    $0xb4,%edx
  40347b:	4c 89 04 24          	mov    %r8,(%rsp)
  40347f:	e8 9c fb ff ff       	callq  403020 <Except_raise>
  403484:	4c 8b 04 24          	mov    (%rsp),%r8
  403488:	e9 d7 fe ff ff       	jmpq   403364 <Fmt_puts+0x34>
  40348d:	48 8d 3d 4c 29 20 00 	lea    0x20294c(%rip),%rdi        # 605de0 <Assert_Failed>
  403494:	48 8d 35 e7 18 00 00 	lea    0x18e7(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  40349b:	ba b3 00 00 00       	mov    $0xb3,%edx
  4034a0:	4c 89 04 24          	mov    %r8,(%rsp)
  4034a4:	e8 77 fb ff ff       	callq  403020 <Except_raise>
  4034a9:	4c 8b 04 24          	mov    (%rsp),%r8
  4034ad:	e9 a9 fe ff ff       	jmpq   40335b <Fmt_puts+0x2b>
  4034b2:	48 8d 3d 27 29 20 00 	lea    0x202927(%rip),%rdi        # 605de0 <Assert_Failed>
  4034b9:	48 8d 35 c2 18 00 00 	lea    0x18c2(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4034c0:	ba b5 00 00 00       	mov    $0xb5,%edx
  4034c5:	4c 89 04 24          	mov    %r8,(%rsp)
  4034c9:	e8 52 fb ff ff       	callq  403020 <Except_raise>
  4034ce:	4c 8b 04 24          	mov    (%rsp),%r8
  4034d2:	e9 96 fe ff ff       	jmpq   40336d <Fmt_puts+0x3d>
  4034d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4034de:	00 00 

00000000004034e0 <cvt_s>:
  4034e0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4034e5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4034ea:	48 89 d5             	mov    %rdx,%rbp
  4034ed:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4034f2:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4034f7:	49 89 cc             	mov    %rcx,%r12
  4034fa:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4034ff:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  403504:	48 83 ec 38          	sub    $0x38,%rsp
  403508:	8b 16                	mov    (%rsi),%edx
  40350a:	4d 89 c5             	mov    %r8,%r13
  40350d:	45 89 ce             	mov    %r9d,%r14d
  403510:	44 8b 7c 24 40       	mov    0x40(%rsp),%r15d
  403515:	83 fa 30             	cmp    $0x30,%edx
  403518:	73 5e                	jae    403578 <cvt_s+0x98>
  40351a:	89 d0                	mov    %edx,%eax
  40351c:	48 03 46 10          	add    0x10(%rsi),%rax
  403520:	83 c2 08             	add    $0x8,%edx
  403523:	89 16                	mov    %edx,(%rsi)
  403525:	48 8b 18             	mov    (%rax),%rbx
  403528:	48 85 db             	test   %rbx,%rbx
  40352b:	74 5f                	je     40358c <cvt_s+0xac>
  40352d:	48 89 df             	mov    %rbx,%rdi
  403530:	e8 3b d6 ff ff       	callq  400b70 <strlen@plt>
  403535:	44 89 7c 24 40       	mov    %r15d,0x40(%rsp)
  40353a:	45 89 f1             	mov    %r14d,%r9d
  40353d:	4d 89 e8             	mov    %r13,%r8
  403540:	4c 89 e1             	mov    %r12,%rcx
  403543:	48 89 ea             	mov    %rbp,%rdx
  403546:	48 89 df             	mov    %rbx,%rdi
  403549:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  40354e:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  403553:	89 c6                	mov    %eax,%esi
  403555:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  40355a:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40355f:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  403564:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  403569:	48 83 c4 38          	add    $0x38,%rsp
  40356d:	e9 be fd ff ff       	jmpq   403330 <Fmt_puts>
  403572:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403578:	48 8b 46 08          	mov    0x8(%rsi),%rax
  40357c:	48 8d 50 08          	lea    0x8(%rax),%rdx
  403580:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  403584:	48 8b 18             	mov    (%rax),%rbx
  403587:	48 85 db             	test   %rbx,%rbx
  40358a:	75 a1                	jne    40352d <cvt_s+0x4d>
  40358c:	48 8d 3d 4d 28 20 00 	lea    0x20284d(%rip),%rdi        # 605de0 <Assert_Failed>
  403593:	48 8d 35 e8 17 00 00 	lea    0x17e8(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  40359a:	ba 1b 00 00 00       	mov    $0x1b,%edx
  40359f:	e8 7c fa ff ff       	callq  403020 <Except_raise>
  4035a4:	eb 87                	jmp    40352d <cvt_s+0x4d>
  4035a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4035ad:	00 00 00 

00000000004035b0 <Fmt_vfmt>:
  4035b0:	41 57                	push   %r15
  4035b2:	41 56                	push   %r14
  4035b4:	41 55                	push   %r13
  4035b6:	49 89 fd             	mov    %rdi,%r13
  4035b9:	41 54                	push   %r12
  4035bb:	55                   	push   %rbp
  4035bc:	53                   	push   %rbx
  4035bd:	48 89 d3             	mov    %rdx,%rbx
  4035c0:	48 81 ec 58 01 00 00 	sub    $0x158,%rsp
  4035c7:	48 85 ff             	test   %rdi,%rdi
  4035ca:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  4035cf:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  4035d4:	0f 84 c2 03 00 00    	je     40399c <Fmt_vfmt+0x3ec>
  4035da:	48 85 db             	test   %rbx,%rbx
  4035dd:	0f 84 9c 03 00 00    	je     40397f <Fmt_vfmt+0x3cf>
  4035e3:	48 8d 54 24 50       	lea    0x50(%rsp),%rdx
  4035e8:	bd ff ff ff 7f       	mov    $0x7fffffff,%ebp
  4035ed:	41 bc 67 66 66 66    	mov    $0x66666667,%r12d
  4035f3:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  4035f8:	0f b6 13             	movzbl (%rbx),%edx
  4035fb:	84 d2                	test   %dl,%dl
  4035fd:	0f 84 cf 00 00 00    	je     4036d2 <Fmt_vfmt+0x122>
  403603:	80 fa 25             	cmp    $0x25,%dl
  403606:	0f 85 ac 00 00 00    	jne    4036b8 <Fmt_vfmt+0x108>
  40360c:	48 83 c3 01          	add    $0x1,%rbx
  403610:	44 0f b6 33          	movzbl (%rbx),%r14d
  403614:	41 80 fe 25          	cmp    $0x25,%r14b
  403618:	44 89 f2             	mov    %r14d,%edx
  40361b:	0f 84 97 00 00 00    	je     4036b8 <Fmt_vfmt+0x108>
  403621:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
  403626:	4c 8d 3d f3 2a 20 00 	lea    0x202af3(%rip),%r15        # 606120 <Fmt_flags>
  40362d:	31 c0                	xor    %eax,%eax
  40362f:	b9 20 00 00 00       	mov    $0x20,%ecx
  403634:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  403637:	49 8b 3f             	mov    (%r15),%rdi
  40363a:	48 85 ff             	test   %rdi,%rdi
  40363d:	0f 84 a8 00 00 00    	je     4036eb <Fmt_vfmt+0x13b>
  403643:	45 84 f6             	test   %r14b,%r14b
  403646:	75 27                	jne    40366f <Fmt_vfmt+0xbf>
  403648:	e9 9e 00 00 00       	jmpq   4036eb <Fmt_vfmt+0x13b>
  40364d:	0f 1f 00             	nopl   (%rax)
  403650:	83 c0 01             	add    $0x1,%eax
  403653:	48 83 c3 01          	add    $0x1,%rbx
  403657:	42 88 44 34 50       	mov    %al,0x50(%rsp,%r14,1)
  40365c:	44 0f b6 33          	movzbl (%rbx),%r14d
  403660:	45 84 f6             	test   %r14b,%r14b
  403663:	44 89 f2             	mov    %r14d,%edx
  403666:	0f 84 7f 00 00 00    	je     4036eb <Fmt_vfmt+0x13b>
  40366c:	49 8b 3f             	mov    (%r15),%rdi
  40366f:	41 0f b6 d6          	movzbl %r14b,%edx
  403673:	89 d6                	mov    %edx,%esi
  403675:	89 54 24 20          	mov    %edx,0x20(%rsp)
  403679:	e8 02 d5 ff ff       	callq  400b80 <strchr@plt>
  40367e:	48 85 c0             	test   %rax,%rax
  403681:	8b 54 24 20          	mov    0x20(%rsp),%edx
  403685:	74 61                	je     4036e8 <Fmt_vfmt+0x138>
  403687:	4c 63 f2             	movslq %edx,%r14
  40368a:	42 0f b6 44 34 50    	movzbl 0x50(%rsp,%r14,1),%eax
  403690:	3c ff                	cmp    $0xff,%al
  403692:	75 bc                	jne    403650 <Fmt_vfmt+0xa0>
  403694:	48 8d 3d 45 27 20 00 	lea    0x202745(%rip),%rdi        # 605de0 <Assert_Failed>
  40369b:	48 8d 35 e0 16 00 00 	lea    0x16e0(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4036a2:	ba 12 01 00 00       	mov    $0x112,%edx
  4036a7:	e8 74 f9 ff ff       	callq  403020 <Except_raise>
  4036ac:	42 0f b6 44 34 50    	movzbl 0x50(%rsp,%r14,1),%eax
  4036b2:	eb 9c                	jmp    403650 <Fmt_vfmt+0xa0>
  4036b4:	0f 1f 40 00          	nopl   0x0(%rax)
  4036b8:	48 83 c3 01          	add    $0x1,%rbx
  4036bc:	0f b6 fa             	movzbl %dl,%edi
  4036bf:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  4036c4:	41 ff d5             	callq  *%r13
  4036c7:	0f b6 13             	movzbl (%rbx),%edx
  4036ca:	84 d2                	test   %dl,%dl
  4036cc:	0f 85 31 ff ff ff    	jne    403603 <Fmt_vfmt+0x53>
  4036d2:	48 81 c4 58 01 00 00 	add    $0x158,%rsp
  4036d9:	5b                   	pop    %rbx
  4036da:	5d                   	pop    %rbp
  4036db:	41 5c                	pop    %r12
  4036dd:	41 5d                	pop    %r13
  4036df:	41 5e                	pop    %r14
  4036e1:	41 5f                	pop    %r15
  4036e3:	c3                   	retq   
  4036e4:	0f 1f 40 00          	nopl   0x0(%rax)
  4036e8:	44 89 f2             	mov    %r14d,%edx
  4036eb:	41 80 fe 2a          	cmp    $0x2a,%r14b
  4036ef:	0f 84 bb 01 00 00    	je     4038b0 <Fmt_vfmt+0x300>
  4036f5:	88 54 24 20          	mov    %dl,0x20(%rsp)
  4036f9:	e8 d2 d5 ff ff       	callq  400cd0 <__ctype_b_loc@plt>
  4036fe:	49 89 c7             	mov    %rax,%r15
  403701:	49 0f be c6          	movsbq %r14b,%rax
  403705:	45 31 f6             	xor    %r14d,%r14d
  403708:	49 8b 37             	mov    (%r15),%rsi
  40370b:	0f b6 54 24 20       	movzbl 0x20(%rsp),%edx
  403710:	f6 44 46 01 08       	testb  $0x8,0x1(%rsi,%rax,2)
  403715:	75 59                	jne    403770 <Fmt_vfmt+0x1c0>
  403717:	41 b9 00 00 00 80    	mov    $0x80000000,%r9d
  40371d:	80 fa 2e             	cmp    $0x2e,%dl
  403720:	41 bf 00 00 00 80    	mov    $0x80000000,%r15d
  403726:	0f 84 cb 00 00 00    	je     4037f7 <Fmt_vfmt+0x247>
  40372c:	44 0f b6 f2          	movzbl %dl,%r14d
  403730:	48 8d 0d 09 2a 20 00 	lea    0x202a09(%rip),%rcx        # 606140 <cvt>
  403737:	48 83 c3 01          	add    $0x1,%rbx
  40373b:	4d 63 c6             	movslq %r14d,%r8
  40373e:	4a 8b 04 c1          	mov    (%rcx,%r8,8),%rax
  403742:	48 85 c0             	test   %rax,%rax
  403745:	0f 84 c2 01 00 00    	je     40390d <Fmt_vfmt+0x35d>
  40374b:	44 89 3c 24          	mov    %r15d,(%rsp)
  40374f:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
  403754:	4c 89 ea             	mov    %r13,%rdx
  403757:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
  40375c:	48 8b 74 24 38       	mov    0x38(%rsp),%rsi
  403761:	44 89 f7             	mov    %r14d,%edi
  403764:	ff d0                	callq  *%rax
  403766:	e9 8d fe ff ff       	jmpq   4035f8 <Fmt_vfmt+0x48>
  40376b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403770:	4c 89 6c 24 40       	mov    %r13,0x40(%rsp)
  403775:	4d 89 fd             	mov    %r15,%r13
  403778:	eb 20                	jmp    40379a <Fmt_vfmt+0x1ea>
  40377a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403780:	48 83 c3 01          	add    $0x1,%rbx
  403784:	47 8d 34 b6          	lea    (%r14,%r14,4),%r14d
  403788:	0f b6 13             	movzbl (%rbx),%edx
  40378b:	47 8d 34 77          	lea    (%r15,%r14,2),%r14d
  40378f:	48 0f be c2          	movsbq %dl,%rax
  403793:	f6 44 46 01 08       	testb  $0x8,0x1(%rsi,%rax,2)
  403798:	74 46                	je     4037e0 <Fmt_vfmt+0x230>
  40379a:	44 0f be fa          	movsbl %dl,%r15d
  40379e:	89 e9                	mov    %ebp,%ecx
  4037a0:	41 83 ef 30          	sub    $0x30,%r15d
  4037a4:	44 29 f9             	sub    %r15d,%ecx
  4037a7:	89 c8                	mov    %ecx,%eax
  4037a9:	c1 f9 1f             	sar    $0x1f,%ecx
  4037ac:	41 f7 ec             	imul   %r12d
  4037af:	c1 fa 02             	sar    $0x2,%edx
  4037b2:	29 ca                	sub    %ecx,%edx
  4037b4:	44 39 f2             	cmp    %r14d,%edx
  4037b7:	7d c7                	jge    403780 <Fmt_vfmt+0x1d0>
  4037b9:	48 8d 3d 20 26 20 00 	lea    0x202620(%rip),%rdi        # 605de0 <Assert_Failed>
  4037c0:	48 8d 35 bb 15 00 00 	lea    0x15bb(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4037c7:	ba 1f 01 00 00       	mov    $0x11f,%edx
  4037cc:	e8 4f f8 ff ff       	callq  403020 <Except_raise>
  4037d1:	49 8b 75 00          	mov    0x0(%r13),%rsi
  4037d5:	eb a9                	jmp    403780 <Fmt_vfmt+0x1d0>
  4037d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4037de:	00 00 
  4037e0:	80 fa 2e             	cmp    $0x2e,%dl
  4037e3:	4c 8b 6c 24 40       	mov    0x40(%rsp),%r13
  4037e8:	45 89 f1             	mov    %r14d,%r9d
  4037eb:	41 bf 00 00 00 80    	mov    $0x80000000,%r15d
  4037f1:	0f 85 35 ff ff ff    	jne    40372c <Fmt_vfmt+0x17c>
  4037f7:	48 83 c3 01          	add    $0x1,%rbx
  4037fb:	0f b6 13             	movzbl (%rbx),%edx
  4037fe:	80 fa 2a             	cmp    $0x2a,%dl
  403801:	0f 84 45 01 00 00    	je     40394c <Fmt_vfmt+0x39c>
  403807:	88 54 24 20          	mov    %dl,0x20(%rsp)
  40380b:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
  403810:	45 31 f6             	xor    %r14d,%r14d
  403813:	e8 b8 d4 ff ff       	callq  400cd0 <__ctype_b_loc@plt>
  403818:	0f b6 54 24 20       	movzbl 0x20(%rsp),%edx
  40381d:	48 89 c1             	mov    %rax,%rcx
  403820:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  403825:	48 8b 31             	mov    (%rcx),%rsi
  403828:	48 0f be c2          	movsbq %dl,%rax
  40382c:	f6 44 46 01 08       	testb  $0x8,0x1(%rsi,%rax,2)
  403831:	0f 84 f5 fe ff ff    	je     40372c <Fmt_vfmt+0x17c>
  403837:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
  40383c:	44 89 4c 24 40       	mov    %r9d,0x40(%rsp)
  403841:	49 89 cd             	mov    %rcx,%r13
  403844:	eb 24                	jmp    40386a <Fmt_vfmt+0x2ba>
  403846:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40384d:	00 00 00 
  403850:	48 83 c3 01          	add    $0x1,%rbx
  403854:	47 8d 34 b6          	lea    (%r14,%r14,4),%r14d
  403858:	0f b6 13             	movzbl (%rbx),%edx
  40385b:	47 8d 34 77          	lea    (%r15,%r14,2),%r14d
  40385f:	48 0f be c2          	movsbq %dl,%rax
  403863:	f6 44 46 01 08       	testb  $0x8,0x1(%rsi,%rax,2)
  403868:	74 79                	je     4038e3 <Fmt_vfmt+0x333>
  40386a:	44 0f be fa          	movsbl %dl,%r15d
  40386e:	89 e9                	mov    %ebp,%ecx
  403870:	41 83 ef 30          	sub    $0x30,%r15d
  403874:	44 29 f9             	sub    %r15d,%ecx
  403877:	89 c8                	mov    %ecx,%eax
  403879:	c1 f9 1f             	sar    $0x1f,%ecx
  40387c:	41 f7 ec             	imul   %r12d
  40387f:	c1 fa 02             	sar    $0x2,%edx
  403882:	29 ca                	sub    %ecx,%edx
  403884:	41 39 d6             	cmp    %edx,%r14d
  403887:	7e c7                	jle    403850 <Fmt_vfmt+0x2a0>
  403889:	48 8d 3d 50 25 20 00 	lea    0x202550(%rip),%rdi        # 605de0 <Assert_Failed>
  403890:	48 8d 35 eb 14 00 00 	lea    0x14eb(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403897:	ba 2d 01 00 00       	mov    $0x12d,%edx
  40389c:	e8 7f f7 ff ff       	callq  403020 <Except_raise>
  4038a1:	49 8b 75 00          	mov    0x0(%r13),%rsi
  4038a5:	eb a9                	jmp    403850 <Fmt_vfmt+0x2a0>
  4038a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4038ae:	00 00 
  4038b0:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  4038b5:	8b 11                	mov    (%rcx),%edx
  4038b7:	83 fa 30             	cmp    $0x30,%edx
  4038ba:	73 39                	jae    4038f5 <Fmt_vfmt+0x345>
  4038bc:	89 d0                	mov    %edx,%eax
  4038be:	48 03 41 10          	add    0x10(%rcx),%rax
  4038c2:	83 c2 08             	add    $0x8,%edx
  4038c5:	89 11                	mov    %edx,(%rcx)
  4038c7:	44 8b 08             	mov    (%rax),%r9d
  4038ca:	41 81 f9 00 00 00 80 	cmp    $0x80000000,%r9d
  4038d1:	0f 84 fa 00 00 00    	je     4039d1 <Fmt_vfmt+0x421>
  4038d7:	48 83 c3 01          	add    $0x1,%rbx
  4038db:	0f b6 13             	movzbl (%rbx),%edx
  4038de:	e9 3a fe ff ff       	jmpq   40371d <Fmt_vfmt+0x16d>
  4038e3:	44 8b 4c 24 40       	mov    0x40(%rsp),%r9d
  4038e8:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
  4038ed:	45 89 f7             	mov    %r14d,%r15d
  4038f0:	e9 37 fe ff ff       	jmpq   40372c <Fmt_vfmt+0x17c>
  4038f5:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4038fa:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  4038ff:	48 8b 42 08          	mov    0x8(%rdx),%rax
  403903:	48 8d 50 08          	lea    0x8(%rax),%rdx
  403907:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  40390b:	eb ba                	jmp    4038c7 <Fmt_vfmt+0x317>
  40390d:	48 8d 3d cc 24 20 00 	lea    0x2024cc(%rip),%rdi        # 605de0 <Assert_Failed>
  403914:	48 8d 35 67 14 00 00 	lea    0x1467(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  40391b:	ba 33 01 00 00       	mov    $0x133,%edx
  403920:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
  403925:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
  40392a:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
  40392f:	e8 ec f6 ff ff       	callq  403020 <Except_raise>
  403934:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403939:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  40393e:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  403943:	4a 8b 04 c1          	mov    (%rcx,%r8,8),%rax
  403947:	e9 ff fd ff ff       	jmpq   40374b <Fmt_vfmt+0x19b>
  40394c:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  403951:	8b 11                	mov    (%rcx),%edx
  403953:	83 fa 30             	cmp    $0x30,%edx
  403956:	73 61                	jae    4039b9 <Fmt_vfmt+0x409>
  403958:	89 d0                	mov    %edx,%eax
  40395a:	48 03 41 10          	add    0x10(%rcx),%rax
  40395e:	83 c2 08             	add    $0x8,%edx
  403961:	89 11                	mov    %edx,(%rcx)
  403963:	44 8b 38             	mov    (%rax),%r15d
  403966:	41 81 ff 00 00 00 80 	cmp    $0x80000000,%r15d
  40396d:	0f 84 85 00 00 00    	je     4039f8 <Fmt_vfmt+0x448>
  403973:	48 83 c3 01          	add    $0x1,%rbx
  403977:	0f b6 13             	movzbl (%rbx),%edx
  40397a:	e9 ad fd ff ff       	jmpq   40372c <Fmt_vfmt+0x17c>
  40397f:	48 8d 3d 5a 24 20 00 	lea    0x20245a(%rip),%rdi        # 605de0 <Assert_Failed>
  403986:	48 8d 35 f5 13 00 00 	lea    0x13f5(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  40398d:	ba 06 01 00 00       	mov    $0x106,%edx
  403992:	e8 89 f6 ff ff       	callq  403020 <Except_raise>
  403997:	e9 47 fc ff ff       	jmpq   4035e3 <Fmt_vfmt+0x33>
  40399c:	48 8d 3d 3d 24 20 00 	lea    0x20243d(%rip),%rdi        # 605de0 <Assert_Failed>
  4039a3:	48 8d 35 d8 13 00 00 	lea    0x13d8(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4039aa:	ba 05 01 00 00       	mov    $0x105,%edx
  4039af:	e8 6c f6 ff ff       	callq  403020 <Except_raise>
  4039b4:	e9 21 fc ff ff       	jmpq   4035da <Fmt_vfmt+0x2a>
  4039b9:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  4039be:	48 8b 4c 24 38       	mov    0x38(%rsp),%rcx
  4039c3:	48 8b 42 08          	mov    0x8(%rdx),%rax
  4039c7:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4039cb:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  4039cf:	eb 92                	jmp    403963 <Fmt_vfmt+0x3b3>
  4039d1:	48 8d 3d 08 24 20 00 	lea    0x202408(%rip),%rdi        # 605de0 <Assert_Failed>
  4039d8:	48 8d 35 a3 13 00 00 	lea    0x13a3(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4039df:	ba 1a 01 00 00       	mov    $0x11a,%edx
  4039e4:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
  4039e9:	e8 32 f6 ff ff       	callq  403020 <Except_raise>
  4039ee:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  4039f3:	e9 df fe ff ff       	jmpq   4038d7 <Fmt_vfmt+0x327>
  4039f8:	48 8d 3d e1 23 20 00 	lea    0x2023e1(%rip),%rdi        # 605de0 <Assert_Failed>
  4039ff:	48 8d 35 7c 13 00 00 	lea    0x137c(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403a06:	ba 28 01 00 00       	mov    $0x128,%edx
  403a0b:	44 89 4c 24 10       	mov    %r9d,0x10(%rsp)
  403a10:	e8 0b f6 ff ff       	callq  403020 <Except_raise>
  403a15:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  403a1a:	e9 54 ff ff ff       	jmpq   403973 <Fmt_vfmt+0x3c3>
  403a1f:	90                   	nop

0000000000403a20 <Fmt_vstring>:
  403a20:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  403a25:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  403a2a:	48 89 fb             	mov    %rdi,%rbx
  403a2d:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  403a32:	48 83 ec 38          	sub    $0x38,%rsp
  403a36:	48 85 ff             	test   %rdi,%rdi
  403a39:	49 89 f4             	mov    %rsi,%r12
  403a3c:	74 7a                	je     403ab8 <Fmt_vstring+0x98>
  403a3e:	48 8d 35 3d 13 00 00 	lea    0x133d(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403a45:	ba fe 00 00 00       	mov    $0xfe,%edx
  403a4a:	bf 00 01 00 00       	mov    $0x100,%edi
  403a4f:	c7 44 24 10 00 01 00 	movl   $0x100,0x10(%rsp)
  403a56:	00 
  403a57:	e8 c4 0c 00 00       	callq  404720 <Mem_alloc>
  403a5c:	48 8d 3d 4d f8 ff ff 	lea    -0x7b3(%rip),%rdi        # 4032b0 <append>
  403a63:	4c 89 e1             	mov    %r12,%rcx
  403a66:	48 89 da             	mov    %rbx,%rdx
  403a69:	48 89 e6             	mov    %rsp,%rsi
  403a6c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403a71:	48 89 04 24          	mov    %rax,(%rsp)
  403a75:	e8 36 fb ff ff       	callq  4035b0 <Fmt_vfmt>
  403a7a:	48 89 e6             	mov    %rsp,%rsi
  403a7d:	31 ff                	xor    %edi,%edi
  403a7f:	e8 2c f8 ff ff       	callq  4032b0 <append>
  403a84:	48 8b 3c 24          	mov    (%rsp),%rdi
  403a88:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  403a8d:	48 8d 15 ee 12 00 00 	lea    0x12ee(%rip),%rdx        # 404d82 <_IO_stdin_used+0x322>
  403a94:	b9 01 01 00 00       	mov    $0x101,%ecx
  403a99:	48 29 fe             	sub    %rdi,%rsi
  403a9c:	e8 4f 0e 00 00       	callq  4048f0 <Mem_resize>
  403aa1:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  403aa6:	48 8b 6c 24 28       	mov    0x28(%rsp),%rbp
  403aab:	4c 8b 64 24 30       	mov    0x30(%rsp),%r12
  403ab0:	48 83 c4 38          	add    $0x38,%rsp
  403ab4:	c3                   	retq   
  403ab5:	0f 1f 00             	nopl   (%rax)
  403ab8:	48 8d 3d 21 23 20 00 	lea    0x202321(%rip),%rdi        # 605de0 <Assert_Failed>
  403abf:	48 8d 35 bc 12 00 00 	lea    0x12bc(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403ac6:	ba fc 00 00 00       	mov    $0xfc,%edx
  403acb:	e8 50 f5 ff ff       	callq  403020 <Except_raise>
  403ad0:	e9 69 ff ff ff       	jmpq   403a3e <Fmt_vstring+0x1e>
  403ad5:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403ae0 <Fmt_string>:
  403ae0:	53                   	push   %rbx
  403ae1:	0f b6 c0             	movzbl %al,%eax
  403ae4:	48 89 fb             	mov    %rdi,%rbx
  403ae7:	48 81 ec d0 00 00 00 	sub    $0xd0,%rsp
  403aee:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  403af3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  403afa:	00 
  403afb:	48 8d 05 44 00 00 00 	lea    0x44(%rip),%rax        # 403b46 <Fmt_string+0x66>
  403b02:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  403b07:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  403b0c:	48 29 d0             	sub    %rdx,%rax
  403b0f:	48 8d 94 24 cf 00 00 	lea    0xcf(%rsp),%rdx
  403b16:	00 
  403b17:	48 85 ff             	test   %rdi,%rdi
  403b1a:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  403b1f:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  403b24:	ff e0                	jmpq   *%rax
  403b26:	0f 29 7a f1          	movaps %xmm7,-0xf(%rdx)
  403b2a:	0f 29 72 e1          	movaps %xmm6,-0x1f(%rdx)
  403b2e:	0f 29 6a d1          	movaps %xmm5,-0x2f(%rdx)
  403b32:	0f 29 62 c1          	movaps %xmm4,-0x3f(%rdx)
  403b36:	0f 29 5a b1          	movaps %xmm3,-0x4f(%rdx)
  403b3a:	0f 29 52 a1          	movaps %xmm2,-0x5f(%rdx)
  403b3e:	0f 29 4a 91          	movaps %xmm1,-0x6f(%rdx)
  403b42:	0f 29 42 81          	movaps %xmm0,-0x7f(%rdx)
  403b46:	74 40                	je     403b88 <Fmt_string+0xa8>
  403b48:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403b4f:	00 
  403b50:	48 89 e6             	mov    %rsp,%rsi
  403b53:	48 89 df             	mov    %rbx,%rdi
  403b56:	c7 04 24 08 00 00 00 	movl   $0x8,(%rsp)
  403b5d:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  403b64:	00 
  403b65:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403b6a:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  403b6f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403b74:	e8 a7 fe ff ff       	callq  403a20 <Fmt_vstring>
  403b79:	48 81 c4 d0 00 00 00 	add    $0xd0,%rsp
  403b80:	5b                   	pop    %rbx
  403b81:	c3                   	retq   
  403b82:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  403b88:	48 8d 3d 51 22 20 00 	lea    0x202251(%rip),%rdi        # 605de0 <Assert_Failed>
  403b8f:	48 8d 35 ec 11 00 00 	lea    0x11ec(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403b96:	ba f4 00 00 00       	mov    $0xf4,%edx
  403b9b:	e8 80 f4 ff ff       	callq  403020 <Except_raise>
  403ba0:	eb a6                	jmp    403b48 <Fmt_string+0x68>
  403ba2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403ba9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000403bb0 <Fmt_vsfmt>:
  403bb0:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  403bb5:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  403bba:	48 89 fb             	mov    %rdi,%rbx
  403bbd:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  403bc2:	48 83 ec 48          	sub    $0x48,%rsp
  403bc6:	48 85 ff             	test   %rdi,%rdi
  403bc9:	41 89 f4             	mov    %esi,%r12d
  403bcc:	48 89 d5             	mov    %rdx,%rbp
  403bcf:	0f 84 bb 00 00 00    	je     403c90 <Fmt_vsfmt+0xe0>
  403bd5:	45 85 e4             	test   %r12d,%r12d
  403bd8:	7e 5e                	jle    403c38 <Fmt_vsfmt+0x88>
  403bda:	48 85 ed             	test   %rbp,%rbp
  403bdd:	0f 84 7d 00 00 00    	je     403c60 <Fmt_vsfmt+0xb0>
  403be3:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
  403be8:	48 89 5c 24 10       	mov    %rbx,0x10(%rsp)
  403bed:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  403bf2:	48 8d 3d 57 f6 ff ff 	lea    -0x9a9(%rip),%rdi        # 403250 <insert>
  403bf9:	48 89 ea             	mov    %rbp,%rdx
  403bfc:	44 89 64 24 20       	mov    %r12d,0x20(%rsp)
  403c01:	48 89 de             	mov    %rbx,%rsi
  403c04:	e8 a7 f9 ff ff       	callq  4035b0 <Fmt_vfmt>
  403c09:	48 89 de             	mov    %rbx,%rsi
  403c0c:	31 ff                	xor    %edi,%edi
  403c0e:	e8 3d f6 ff ff       	callq  403250 <insert>
  403c13:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  403c18:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
  403c1d:	48 8b 6c 24 38       	mov    0x38(%rsp),%rbp
  403c22:	4c 8b 64 24 40       	mov    0x40(%rsp),%r12
  403c27:	83 e8 01             	sub    $0x1,%eax
  403c2a:	2b 44 24 10          	sub    0x10(%rsp),%eax
  403c2e:	48 83 c4 48          	add    $0x48,%rsp
  403c32:	c3                   	retq   
  403c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403c38:	48 8d 3d a1 21 20 00 	lea    0x2021a1(%rip),%rdi        # 605de0 <Assert_Failed>
  403c3f:	48 8d 35 3c 11 00 00 	lea    0x113c(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403c46:	ba e9 00 00 00       	mov    $0xe9,%edx
  403c4b:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  403c50:	e8 cb f3 ff ff       	callq  403020 <Except_raise>
  403c55:	48 85 ed             	test   %rbp,%rbp
  403c58:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  403c5d:	75 84                	jne    403be3 <Fmt_vsfmt+0x33>
  403c5f:	90                   	nop
  403c60:	48 8d 3d 79 21 20 00 	lea    0x202179(%rip),%rdi        # 605de0 <Assert_Failed>
  403c67:	48 8d 35 14 11 00 00 	lea    0x1114(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403c6e:	ba ea 00 00 00       	mov    $0xea,%edx
  403c73:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  403c78:	e8 a3 f3 ff ff       	callq  403020 <Except_raise>
  403c7d:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  403c82:	e9 5c ff ff ff       	jmpq   403be3 <Fmt_vsfmt+0x33>
  403c87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403c8e:	00 00 
  403c90:	48 8d 3d 49 21 20 00 	lea    0x202149(%rip),%rdi        # 605de0 <Assert_Failed>
  403c97:	48 8d 35 e4 10 00 00 	lea    0x10e4(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403c9e:	ba e8 00 00 00       	mov    $0xe8,%edx
  403ca3:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  403ca8:	e8 73 f3 ff ff       	callq  403020 <Except_raise>
  403cad:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  403cb2:	e9 1e ff ff ff       	jmpq   403bd5 <Fmt_vsfmt+0x25>
  403cb7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  403cbe:	00 00 

0000000000403cc0 <Fmt_sfmt>:
  403cc0:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  403cc7:	0f b6 c0             	movzbl %al,%eax
  403cca:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  403ccf:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  403cd6:	00 
  403cd7:	48 8d 05 37 00 00 00 	lea    0x37(%rip),%rax        # 403d15 <Fmt_sfmt+0x55>
  403cde:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  403ce3:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  403ce8:	48 29 c8             	sub    %rcx,%rax
  403ceb:	48 8d 8c 24 cf 00 00 	lea    0xcf(%rsp),%rcx
  403cf2:	00 
  403cf3:	ff e0                	jmpq   *%rax
  403cf5:	0f 29 79 f1          	movaps %xmm7,-0xf(%rcx)
  403cf9:	0f 29 71 e1          	movaps %xmm6,-0x1f(%rcx)
  403cfd:	0f 29 69 d1          	movaps %xmm5,-0x2f(%rcx)
  403d01:	0f 29 61 c1          	movaps %xmm4,-0x3f(%rcx)
  403d05:	0f 29 59 b1          	movaps %xmm3,-0x4f(%rcx)
  403d09:	0f 29 51 a1          	movaps %xmm2,-0x5f(%rcx)
  403d0d:	0f 29 49 91          	movaps %xmm1,-0x6f(%rcx)
  403d11:	0f 29 41 81          	movaps %xmm0,-0x7f(%rcx)
  403d15:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403d1c:	00 
  403d1d:	48 89 e1             	mov    %rsp,%rcx
  403d20:	c7 04 24 18 00 00 00 	movl   $0x18,(%rsp)
  403d27:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  403d2e:	00 
  403d2f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403d34:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  403d39:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403d3e:	e8 6d fe ff ff       	callq  403bb0 <Fmt_vsfmt>
  403d43:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  403d4a:	c3                   	retq   
  403d4b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403d50 <Fmt_fprint>:
  403d50:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  403d57:	0f b6 c0             	movzbl %al,%eax
  403d5a:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  403d5f:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  403d66:	00 
  403d67:	48 8d 05 3f 00 00 00 	lea    0x3f(%rip),%rax        # 403dad <Fmt_fprint+0x5d>
  403d6e:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  403d73:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  403d78:	48 89 e1             	mov    %rsp,%rcx
  403d7b:	48 29 d0             	sub    %rdx,%rax
  403d7e:	48 8d 94 24 cf 00 00 	lea    0xcf(%rsp),%rdx
  403d85:	00 
  403d86:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  403d8b:	ff e0                	jmpq   *%rax
  403d8d:	0f 29 7a f1          	movaps %xmm7,-0xf(%rdx)
  403d91:	0f 29 72 e1          	movaps %xmm6,-0x1f(%rdx)
  403d95:	0f 29 6a d1          	movaps %xmm5,-0x2f(%rdx)
  403d99:	0f 29 62 c1          	movaps %xmm4,-0x3f(%rdx)
  403d9d:	0f 29 5a b1          	movaps %xmm3,-0x4f(%rdx)
  403da1:	0f 29 52 a1          	movaps %xmm2,-0x5f(%rdx)
  403da5:	0f 29 4a 91          	movaps %xmm1,-0x6f(%rdx)
  403da9:	0f 29 42 81          	movaps %xmm0,-0x7f(%rdx)
  403dad:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403db4:	00 
  403db5:	48 89 f2             	mov    %rsi,%rdx
  403db8:	48 89 fe             	mov    %rdi,%rsi
  403dbb:	48 8d 3d 5e f5 ff ff 	lea    -0xaa2(%rip),%rdi        # 403320 <outc>
  403dc2:	c7 04 24 10 00 00 00 	movl   $0x10,(%rsp)
  403dc9:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  403dd0:	00 
  403dd1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403dd6:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  403ddb:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403de0:	e8 cb f7 ff ff       	callq  4035b0 <Fmt_vfmt>
  403de5:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  403dec:	c3                   	retq   
  403ded:	0f 1f 00             	nopl   (%rax)

0000000000403df0 <Fmt_print>:
  403df0:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  403df7:	0f b6 c0             	movzbl %al,%eax
  403dfa:	48 89 54 24 30       	mov    %rdx,0x30(%rsp)
  403dff:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  403e06:	00 
  403e07:	48 8d 05 44 00 00 00 	lea    0x44(%rip),%rax        # 403e52 <Fmt_print+0x62>
  403e0e:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  403e13:	48 89 74 24 28       	mov    %rsi,0x28(%rsp)
  403e18:	48 89 e1             	mov    %rsp,%rcx
  403e1b:	48 29 d0             	sub    %rdx,%rax
  403e1e:	48 8d 94 24 cf 00 00 	lea    0xcf(%rsp),%rdx
  403e25:	00 
  403e26:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  403e2b:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  403e30:	ff e0                	jmpq   *%rax
  403e32:	0f 29 7a f1          	movaps %xmm7,-0xf(%rdx)
  403e36:	0f 29 72 e1          	movaps %xmm6,-0x1f(%rdx)
  403e3a:	0f 29 6a d1          	movaps %xmm5,-0x2f(%rdx)
  403e3e:	0f 29 62 c1          	movaps %xmm4,-0x3f(%rdx)
  403e42:	0f 29 5a b1          	movaps %xmm3,-0x4f(%rdx)
  403e46:	0f 29 52 a1          	movaps %xmm2,-0x5f(%rdx)
  403e4a:	0f 29 4a 91          	movaps %xmm1,-0x6f(%rdx)
  403e4e:	0f 29 42 81          	movaps %xmm0,-0x7f(%rdx)
  403e52:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403e59:	00 
  403e5a:	48 89 fa             	mov    %rdi,%rdx
  403e5d:	48 8d 3d bc f4 ff ff 	lea    -0xb44(%rip),%rdi        # 403320 <outc>
  403e64:	c7 04 24 08 00 00 00 	movl   $0x8,(%rsp)
  403e6b:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  403e72:	00 
  403e73:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403e78:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  403e7d:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403e82:	48 8b 05 57 21 20 00 	mov    0x202157(%rip),%rax        # 605fe0 <stdout@@GLIBC_2.2.5-0x960>
  403e89:	48 8b 30             	mov    (%rax),%rsi
  403e8c:	e8 1f f7 ff ff       	callq  4035b0 <Fmt_vfmt>
  403e91:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  403e98:	c3                   	retq   
  403e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000403ea0 <Fmt_fmt>:
  403ea0:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
  403ea7:	0f b6 c0             	movzbl %al,%eax
  403eaa:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
  403eaf:	48 8d 0c 85 00 00 00 	lea    0x0(,%rax,4),%rcx
  403eb6:	00 
  403eb7:	48 8d 05 37 00 00 00 	lea    0x37(%rip),%rax        # 403ef5 <Fmt_fmt+0x55>
  403ebe:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
  403ec3:	4c 89 4c 24 48       	mov    %r9,0x48(%rsp)
  403ec8:	48 29 c8             	sub    %rcx,%rax
  403ecb:	48 8d 8c 24 cf 00 00 	lea    0xcf(%rsp),%rcx
  403ed2:	00 
  403ed3:	ff e0                	jmpq   *%rax
  403ed5:	0f 29 79 f1          	movaps %xmm7,-0xf(%rcx)
  403ed9:	0f 29 71 e1          	movaps %xmm6,-0x1f(%rcx)
  403edd:	0f 29 69 d1          	movaps %xmm5,-0x2f(%rcx)
  403ee1:	0f 29 61 c1          	movaps %xmm4,-0x3f(%rcx)
  403ee5:	0f 29 59 b1          	movaps %xmm3,-0x4f(%rcx)
  403ee9:	0f 29 51 a1          	movaps %xmm2,-0x5f(%rcx)
  403eed:	0f 29 49 91          	movaps %xmm1,-0x6f(%rcx)
  403ef1:	0f 29 41 81          	movaps %xmm0,-0x7f(%rcx)
  403ef5:	48 8d 84 24 e0 00 00 	lea    0xe0(%rsp),%rax
  403efc:	00 
  403efd:	48 89 e1             	mov    %rsp,%rcx
  403f00:	c7 04 24 18 00 00 00 	movl   $0x18,(%rsp)
  403f07:	c7 44 24 04 30 00 00 	movl   $0x30,0x4(%rsp)
  403f0e:	00 
  403f0f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  403f14:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  403f19:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  403f1e:	e8 8d f6 ff ff       	callq  4035b0 <Fmt_vfmt>
  403f23:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
  403f2a:	c3                   	retq   
  403f2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403f30 <Fmt_register>:
  403f30:	48 89 5c 24 f0       	mov    %rbx,-0x10(%rsp)
  403f35:	89 fb                	mov    %edi,%ebx
  403f37:	48 89 6c 24 f8       	mov    %rbp,-0x8(%rsp)
  403f3c:	8d 43 ff             	lea    -0x1(%rbx),%eax
  403f3f:	48 83 ec 18          	sub    $0x18,%rsp
  403f43:	48 89 f5             	mov    %rsi,%rbp
  403f46:	3d fe 00 00 00       	cmp    $0xfe,%eax
  403f4b:	76 18                	jbe    403f65 <Fmt_register+0x35>
  403f4d:	48 8d 3d 8c 1e 20 00 	lea    0x201e8c(%rip),%rdi        # 605de0 <Assert_Failed>
  403f54:	48 8d 35 27 0e 00 00 	lea    0xe27(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  403f5b:	ba 3a 01 00 00       	mov    $0x13a,%edx
  403f60:	e8 bb f0 ff ff       	callq  403020 <Except_raise>
  403f65:	48 8d 15 d4 21 20 00 	lea    0x2021d4(%rip),%rdx        # 606140 <cvt>
  403f6c:	48 63 db             	movslq %ebx,%rbx
  403f6f:	48 8b 04 da          	mov    (%rdx,%rbx,8),%rax
  403f73:	48 89 2c da          	mov    %rbp,(%rdx,%rbx,8)
  403f77:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  403f7c:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  403f81:	48 83 c4 18          	add    $0x18,%rsp
  403f85:	c3                   	retq   
  403f86:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403f8d:	00 00 00 

0000000000403f90 <Fmt_putd>:
  403f90:	41 57                	push   %r15
  403f92:	45 89 cf             	mov    %r9d,%r15d
  403f95:	41 56                	push   %r14
  403f97:	41 55                	push   %r13
  403f99:	41 89 f5             	mov    %esi,%r13d
  403f9c:	41 54                	push   %r12
  403f9e:	49 89 cc             	mov    %rcx,%r12
  403fa1:	55                   	push   %rbp
  403fa2:	48 89 fd             	mov    %rdi,%rbp
  403fa5:	53                   	push   %rbx
  403fa6:	48 89 d3             	mov    %rdx,%rbx
  403fa9:	48 83 ec 28          	sub    $0x28,%rsp
  403fad:	48 85 ff             	test   %rdi,%rdi
  403fb0:	44 8b 74 24 60       	mov    0x60(%rsp),%r14d
  403fb5:	0f 84 5c 02 00 00    	je     404217 <Fmt_putd+0x287>
  403fbb:	45 85 ed             	test   %r13d,%r13d
  403fbe:	0f 88 2c 02 00 00    	js     4041f0 <Fmt_putd+0x260>
  403fc4:	4d 85 c0             	test   %r8,%r8
  403fc7:	0f 84 71 02 00 00    	je     40423e <Fmt_putd+0x2ae>
  403fcd:	41 81 ff 00 00 00 80 	cmp    $0x80000000,%r15d
  403fd4:	0f 84 f6 01 00 00    	je     4041d0 <Fmt_putd+0x240>
  403fda:	45 85 ff             	test   %r15d,%r15d
  403fdd:	0f 88 5d 01 00 00    	js     404140 <Fmt_putd+0x1b0>
  403fe3:	49 8d 50 2d          	lea    0x2d(%r8),%rdx
  403fe7:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  403fec:	45 85 f6             	test   %r14d,%r14d
  403fef:	78 05                	js     403ff6 <Fmt_putd+0x66>
  403ff1:	41 c6 40 30 00       	movb   $0x0,0x30(%r8)
  403ff6:	45 85 ed             	test   %r13d,%r13d
  403ff9:	7e 14                	jle    40400f <Fmt_putd+0x7f>
  403ffb:	0f b6 45 00          	movzbl 0x0(%rbp),%eax
  403fff:	3c 2b                	cmp    $0x2b,%al
  404001:	0f 84 59 01 00 00    	je     404160 <Fmt_putd+0x1d0>
  404007:	3c 2d                	cmp    $0x2d,%al
  404009:	0f 84 51 01 00 00    	je     404160 <Fmt_putd+0x1d0>
  40400f:	c7 44 24 10 2b 00 00 	movl   $0x2b,0x10(%rsp)
  404016:	00 
  404017:	41 80 78 2b 00       	cmpb   $0x0,0x2b(%r8)
  40401c:	75 10                	jne    40402e <Fmt_putd+0x9e>
  40401e:	41 80 78 20 01       	cmpb   $0x1,0x20(%r8)
  404023:	19 d2                	sbb    %edx,%edx
  404025:	f7 d2                	not    %edx
  404027:	83 e2 20             	and    $0x20,%edx
  40402a:	89 54 24 10          	mov    %edx,0x10(%rsp)
  40402e:	45 85 f6             	test   %r14d,%r14d
  404031:	b8 01 00 00 00       	mov    $0x1,%eax
  404036:	44 0f 48 f0          	cmovs  %eax,%r14d
  40403a:	45 39 f5             	cmp    %r14d,%r13d
  40403d:	44 89 74 24 14       	mov    %r14d,0x14(%rsp)
  404042:	7c 20                	jl     404064 <Fmt_putd+0xd4>
  404044:	45 85 f6             	test   %r14d,%r14d
  404047:	0f 85 2b 01 00 00    	jne    404178 <Fmt_putd+0x1e8>
  40404d:	41 83 fd 01          	cmp    $0x1,%r13d
  404051:	0f 85 21 01 00 00    	jne    404178 <Fmt_putd+0x1e8>
  404057:	31 c0                	xor    %eax,%eax
  404059:	80 7d 00 30          	cmpb   $0x30,0x0(%rbp)
  40405d:	0f 95 c0             	setne  %al
  404060:	89 44 24 14          	mov    %eax,0x14(%rsp)
  404064:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  404069:	83 7c 24 10 01       	cmpl   $0x1,0x10(%rsp)
  40406e:	83 5c 24 14 ff       	sbbl   $0xffffffff,0x14(%rsp)
  404073:	80 3a 00             	cmpb   $0x0,(%rdx)
  404076:	0f 85 35 01 00 00    	jne    4041b1 <Fmt_putd+0x221>
  40407c:	41 80 78 30 00       	cmpb   $0x0,0x30(%r8)
  404081:	0f 84 01 01 00 00    	je     404188 <Fmt_putd+0x1f8>
  404087:	8b 54 24 10          	mov    0x10(%rsp),%edx
  40408b:	85 d2                	test   %edx,%edx
  40408d:	0f 85 4e 01 00 00    	jne    4041e1 <Fmt_putd+0x251>
  404093:	44 89 fa             	mov    %r15d,%edx
  404096:	2b 54 24 14          	sub    0x14(%rsp),%edx
  40409a:	85 d2                	test   %edx,%edx
  40409c:	7e 1b                	jle    4040b9 <Fmt_putd+0x129>
  40409e:	66 90                	xchg   %ax,%ax
  4040a0:	89 54 24 08          	mov    %edx,0x8(%rsp)
  4040a4:	4c 89 e6             	mov    %r12,%rsi
  4040a7:	bf 30 00 00 00       	mov    $0x30,%edi
  4040ac:	ff d3                	callq  *%rbx
  4040ae:	8b 54 24 08          	mov    0x8(%rsp),%edx
  4040b2:	83 ea 01             	sub    $0x1,%edx
  4040b5:	85 d2                	test   %edx,%edx
  4040b7:	7f e7                	jg     4040a0 <Fmt_putd+0x110>
  4040b9:	45 29 ee             	sub    %r13d,%r14d
  4040bc:	45 85 f6             	test   %r14d,%r14d
  4040bf:	7e 1a                	jle    4040db <Fmt_putd+0x14b>
  4040c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4040c8:	41 83 ee 01          	sub    $0x1,%r14d
  4040cc:	4c 89 e6             	mov    %r12,%rsi
  4040cf:	bf 30 00 00 00       	mov    $0x30,%edi
  4040d4:	ff d3                	callq  *%rbx
  4040d6:	45 85 f6             	test   %r14d,%r14d
  4040d9:	7f ed                	jg     4040c8 <Fmt_putd+0x138>
  4040db:	45 85 ed             	test   %r13d,%r13d
  4040de:	7e 1f                	jle    4040ff <Fmt_putd+0x16f>
  4040e0:	49 89 ee             	mov    %rbp,%r14
  4040e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4040e8:	41 0f b6 3e          	movzbl (%r14),%edi
  4040ec:	49 83 c6 01          	add    $0x1,%r14
  4040f0:	4c 89 e6             	mov    %r12,%rsi
  4040f3:	ff d3                	callq  *%rbx
  4040f5:	44 89 f0             	mov    %r14d,%eax
  4040f8:	29 e8                	sub    %ebp,%eax
  4040fa:	41 39 c5             	cmp    %eax,%r13d
  4040fd:	7f e9                	jg     4040e8 <Fmt_putd+0x158>
  4040ff:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  404104:	80 38 00             	cmpb   $0x0,(%rax)
  404107:	74 22                	je     40412b <Fmt_putd+0x19b>
  404109:	44 2b 7c 24 14       	sub    0x14(%rsp),%r15d
  40410e:	45 85 ff             	test   %r15d,%r15d
  404111:	7e 18                	jle    40412b <Fmt_putd+0x19b>
  404113:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404118:	41 83 ef 01          	sub    $0x1,%r15d
  40411c:	4c 89 e6             	mov    %r12,%rsi
  40411f:	bf 20 00 00 00       	mov    $0x20,%edi
  404124:	ff d3                	callq  *%rbx
  404126:	45 85 ff             	test   %r15d,%r15d
  404129:	7f ed                	jg     404118 <Fmt_putd+0x188>
  40412b:	48 83 c4 28          	add    $0x28,%rsp
  40412f:	5b                   	pop    %rbx
  404130:	5d                   	pop    %rbp
  404131:	41 5c                	pop    %r12
  404133:	41 5d                	pop    %r13
  404135:	41 5e                	pop    %r14
  404137:	41 5f                	pop    %r15
  404139:	c3                   	retq   
  40413a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404140:	49 8d 40 2d          	lea    0x2d(%r8),%rax
  404144:	41 f7 df             	neg    %r15d
  404147:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  40414c:	41 c6 40 2d 01       	movb   $0x1,0x2d(%r8)
  404151:	e9 96 fe ff ff       	jmpq   403fec <Fmt_putd+0x5c>
  404156:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40415d:	00 00 00 
  404160:	0f be c0             	movsbl %al,%eax
  404163:	48 83 c5 01          	add    $0x1,%rbp
  404167:	41 83 ed 01          	sub    $0x1,%r13d
  40416b:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40416f:	e9 ba fe ff ff       	jmpq   40402e <Fmt_putd+0x9e>
  404174:	0f 1f 40 00          	nopl   0x0(%rax)
  404178:	44 89 6c 24 14       	mov    %r13d,0x14(%rsp)
  40417d:	e9 e2 fe ff ff       	jmpq   404064 <Fmt_putd+0xd4>
  404182:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404188:	44 89 fa             	mov    %r15d,%edx
  40418b:	2b 54 24 14          	sub    0x14(%rsp),%edx
  40418f:	85 d2                	test   %edx,%edx
  404191:	7e 1e                	jle    4041b1 <Fmt_putd+0x221>
  404193:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404198:	89 54 24 08          	mov    %edx,0x8(%rsp)
  40419c:	4c 89 e6             	mov    %r12,%rsi
  40419f:	bf 20 00 00 00       	mov    $0x20,%edi
  4041a4:	ff d3                	callq  *%rbx
  4041a6:	8b 54 24 08          	mov    0x8(%rsp),%edx
  4041aa:	83 ea 01             	sub    $0x1,%edx
  4041ad:	85 d2                	test   %edx,%edx
  4041af:	7f e7                	jg     404198 <Fmt_putd+0x208>
  4041b1:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4041b5:	85 c0                	test   %eax,%eax
  4041b7:	0f 84 fc fe ff ff    	je     4040b9 <Fmt_putd+0x129>
  4041bd:	4c 89 e6             	mov    %r12,%rsi
  4041c0:	8b 7c 24 10          	mov    0x10(%rsp),%edi
  4041c4:	ff d3                	callq  *%rbx
  4041c6:	e9 ee fe ff ff       	jmpq   4040b9 <Fmt_putd+0x129>
  4041cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4041d0:	49 8d 40 2d          	lea    0x2d(%r8),%rax
  4041d4:	45 31 ff             	xor    %r15d,%r15d
  4041d7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4041dc:	e9 0b fe ff ff       	jmpq   403fec <Fmt_putd+0x5c>
  4041e1:	4c 89 e6             	mov    %r12,%rsi
  4041e4:	8b 7c 24 10          	mov    0x10(%rsp),%edi
  4041e8:	ff d3                	callq  *%rbx
  4041ea:	e9 a4 fe ff ff       	jmpq   404093 <Fmt_putd+0x103>
  4041ef:	90                   	nop
  4041f0:	48 8d 3d e9 1b 20 00 	lea    0x201be9(%rip),%rdi        # 605de0 <Assert_Failed>
  4041f7:	48 8d 35 84 0b 00 00 	lea    0xb84(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4041fe:	ba 44 01 00 00       	mov    $0x144,%edx
  404203:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  404208:	e8 13 ee ff ff       	callq  403020 <Except_raise>
  40420d:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  404212:	e9 ad fd ff ff       	jmpq   403fc4 <Fmt_putd+0x34>
  404217:	48 8d 3d c2 1b 20 00 	lea    0x201bc2(%rip),%rdi        # 605de0 <Assert_Failed>
  40421e:	48 8d 35 5d 0b 00 00 	lea    0xb5d(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  404225:	ba 43 01 00 00       	mov    $0x143,%edx
  40422a:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40422f:	e8 ec ed ff ff       	callq  403020 <Except_raise>
  404234:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  404239:	e9 7d fd ff ff       	jmpq   403fbb <Fmt_putd+0x2b>
  40423e:	48 8d 3d 9b 1b 20 00 	lea    0x201b9b(%rip),%rdi        # 605de0 <Assert_Failed>
  404245:	48 8d 35 36 0b 00 00 	lea    0xb36(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  40424c:	ba 45 01 00 00       	mov    $0x145,%edx
  404251:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  404256:	e8 c5 ed ff ff       	callq  403020 <Except_raise>
  40425b:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  404260:	e9 68 fd ff ff       	jmpq   403fcd <Fmt_putd+0x3d>
  404265:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  40426a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000404270 <cvt_x>:
  404270:	48 83 ec 48          	sub    $0x48,%rsp
  404274:	8b 3e                	mov    (%rsi),%edi
  404276:	83 ff 30             	cmp    $0x30,%edi
  404279:	73 5d                	jae    4042d8 <cvt_x+0x68>
  40427b:	89 f8                	mov    %edi,%eax
  40427d:	48 03 46 10          	add    0x10(%rsi),%rax
  404281:	83 c7 08             	add    $0x8,%edi
  404284:	89 3e                	mov    %edi,(%rsi)
  404286:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40428b:	8b 00                	mov    (%rax),%eax
  40428d:	4c 8d 1d f8 0a 00 00 	lea    0xaf8(%rip),%r11        # 404d8c <_IO_stdin_used+0x32c>
  404294:	48 8d 7e 2b          	lea    0x2b(%rsi),%rdi
  404298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40429f:	00 
  4042a0:	49 89 c2             	mov    %rax,%r10
  4042a3:	c1 e8 04             	shr    $0x4,%eax
  4042a6:	48 83 ef 01          	sub    $0x1,%rdi
  4042aa:	41 83 e2 0f          	and    $0xf,%r10d
  4042ae:	85 c0                	test   %eax,%eax
  4042b0:	47 0f b6 14 13       	movzbl (%r11,%r10,1),%r10d
  4042b5:	44 88 17             	mov    %r10b,(%rdi)
  4042b8:	75 e6                	jne    4042a0 <cvt_x+0x30>
  4042ba:	8b 44 24 50          	mov    0x50(%rsp),%eax
  4042be:	48 83 c6 2b          	add    $0x2b,%rsi
  4042c2:	29 fe                	sub    %edi,%esi
  4042c4:	89 04 24             	mov    %eax,(%rsp)
  4042c7:	e8 c4 fc ff ff       	callq  403f90 <Fmt_putd>
  4042cc:	48 83 c4 48          	add    $0x48,%rsp
  4042d0:	c3                   	retq   
  4042d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4042d8:	48 8b 46 08          	mov    0x8(%rsi),%rax
  4042dc:	48 8d 78 08          	lea    0x8(%rax),%rdi
  4042e0:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
  4042e4:	eb a0                	jmp    404286 <cvt_x+0x16>
  4042e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4042ed:	00 00 00 

00000000004042f0 <cvt_u>:
  4042f0:	53                   	push   %rbx
  4042f1:	49 89 d2             	mov    %rdx,%r10
  4042f4:	48 83 ec 40          	sub    $0x40,%rsp
  4042f8:	8b 16                	mov    (%rsi),%edx
  4042fa:	83 fa 30             	cmp    $0x30,%edx
  4042fd:	73 61                	jae    404360 <cvt_u+0x70>
  4042ff:	89 d0                	mov    %edx,%eax
  404301:	48 03 46 10          	add    0x10(%rsi),%rax
  404305:	83 c2 08             	add    $0x8,%edx
  404308:	89 16                	mov    %edx,(%rsi)
  40430a:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40430f:	44 8b 18             	mov    (%rax),%r11d
  404312:	bb cd cc cc cc       	mov    $0xcccccccd,%ebx
  404317:	48 8d 7e 2b          	lea    0x2b(%rsi),%rdi
  40431b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404320:	44 89 d8             	mov    %r11d,%eax
  404323:	48 83 ef 01          	sub    $0x1,%rdi
  404327:	f7 e3                	mul    %ebx
  404329:	c1 ea 03             	shr    $0x3,%edx
  40432c:	8d 04 92             	lea    (%rdx,%rdx,4),%eax
  40432f:	01 c0                	add    %eax,%eax
  404331:	41 29 c3             	sub    %eax,%r11d
  404334:	41 83 c3 30          	add    $0x30,%r11d
  404338:	85 d2                	test   %edx,%edx
  40433a:	44 88 1f             	mov    %r11b,(%rdi)
  40433d:	41 89 d3             	mov    %edx,%r11d
  404340:	75 de                	jne    404320 <cvt_u+0x30>
  404342:	8b 44 24 50          	mov    0x50(%rsp),%eax
  404346:	48 83 c6 2b          	add    $0x2b,%rsi
  40434a:	4c 89 d2             	mov    %r10,%rdx
  40434d:	29 fe                	sub    %edi,%esi
  40434f:	89 04 24             	mov    %eax,(%rsp)
  404352:	e8 39 fc ff ff       	callq  403f90 <Fmt_putd>
  404357:	48 83 c4 40          	add    $0x40,%rsp
  40435b:	5b                   	pop    %rbx
  40435c:	c3                   	retq   
  40435d:	0f 1f 00             	nopl   (%rax)
  404360:	48 8b 46 08          	mov    0x8(%rsi),%rax
  404364:	48 8d 50 08          	lea    0x8(%rax),%rdx
  404368:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  40436c:	eb 9c                	jmp    40430a <cvt_u+0x1a>
  40436e:	66 90                	xchg   %ax,%ax

0000000000404370 <cvt_p>:
  404370:	48 83 ec 48          	sub    $0x48,%rsp
  404374:	8b 3e                	mov    (%rsi),%edi
  404376:	83 ff 30             	cmp    $0x30,%edi
  404379:	73 5d                	jae    4043d8 <cvt_p+0x68>
  40437b:	89 f8                	mov    %edi,%eax
  40437d:	48 03 46 10          	add    0x10(%rsi),%rax
  404381:	83 c7 08             	add    $0x8,%edi
  404384:	89 3e                	mov    %edi,(%rsi)
  404386:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40438b:	48 8b 00             	mov    (%rax),%rax
  40438e:	4c 8d 1d f7 09 00 00 	lea    0x9f7(%rip),%r11        # 404d8c <_IO_stdin_used+0x32c>
  404395:	48 8d 7e 2b          	lea    0x2b(%rsi),%rdi
  404399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4043a0:	49 89 c2             	mov    %rax,%r10
  4043a3:	48 c1 e8 04          	shr    $0x4,%rax
  4043a7:	48 83 ef 01          	sub    $0x1,%rdi
  4043ab:	41 83 e2 0f          	and    $0xf,%r10d
  4043af:	48 85 c0             	test   %rax,%rax
  4043b2:	47 0f b6 14 13       	movzbl (%r11,%r10,1),%r10d
  4043b7:	44 88 17             	mov    %r10b,(%rdi)
  4043ba:	75 e4                	jne    4043a0 <cvt_p+0x30>
  4043bc:	48 83 c6 2b          	add    $0x2b,%rsi
  4043c0:	c7 04 24 00 00 00 80 	movl   $0x80000000,(%rsp)
  4043c7:	29 fe                	sub    %edi,%esi
  4043c9:	e8 c2 fb ff ff       	callq  403f90 <Fmt_putd>
  4043ce:	48 83 c4 48          	add    $0x48,%rsp
  4043d2:	c3                   	retq   
  4043d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4043d8:	48 8b 46 08          	mov    0x8(%rsi),%rax
  4043dc:	48 8d 78 08          	lea    0x8(%rax),%rdi
  4043e0:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
  4043e4:	eb a0                	jmp    404386 <cvt_p+0x16>
  4043e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4043ed:	00 00 00 

00000000004043f0 <cvt_o>:
  4043f0:	53                   	push   %rbx
  4043f1:	48 83 ec 40          	sub    $0x40,%rsp
  4043f5:	8b 3e                	mov    (%rsi),%edi
  4043f7:	83 ff 30             	cmp    $0x30,%edi
  4043fa:	73 54                	jae    404450 <cvt_o+0x60>
  4043fc:	89 f8                	mov    %edi,%eax
  4043fe:	48 03 46 10          	add    0x10(%rsi),%rax
  404402:	83 c7 08             	add    $0x8,%edi
  404405:	89 3e                	mov    %edi,(%rsi)
  404407:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40440c:	8b 00                	mov    (%rax),%eax
  40440e:	48 8d 7e 2b          	lea    0x2b(%rsi),%rdi
  404412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404418:	89 c3                	mov    %eax,%ebx
  40441a:	c1 e8 03             	shr    $0x3,%eax
  40441d:	48 83 ef 01          	sub    $0x1,%rdi
  404421:	83 e3 07             	and    $0x7,%ebx
  404424:	41 89 da             	mov    %ebx,%r10d
  404427:	41 83 c2 30          	add    $0x30,%r10d
  40442b:	85 c0                	test   %eax,%eax
  40442d:	44 88 17             	mov    %r10b,(%rdi)
  404430:	75 e6                	jne    404418 <cvt_o+0x28>
  404432:	8b 44 24 50          	mov    0x50(%rsp),%eax
  404436:	48 83 c6 2b          	add    $0x2b,%rsi
  40443a:	29 fe                	sub    %edi,%esi
  40443c:	89 04 24             	mov    %eax,(%rsp)
  40443f:	e8 4c fb ff ff       	callq  403f90 <Fmt_putd>
  404444:	48 83 c4 40          	add    $0x40,%rsp
  404448:	5b                   	pop    %rbx
  404449:	c3                   	retq   
  40444a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404450:	48 8b 46 08          	mov    0x8(%rsi),%rax
  404454:	48 8d 78 08          	lea    0x8(%rax),%rdi
  404458:	48 89 7e 08          	mov    %rdi,0x8(%rsi)
  40445c:	eb a9                	jmp    404407 <cvt_o+0x17>
  40445e:	66 90                	xchg   %ax,%ax

0000000000404460 <cvt_f>:
  404460:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  404465:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  40446a:	48 89 f3             	mov    %rsi,%rbx
  40446d:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  404472:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  404477:	89 fd                	mov    %edi,%ebp
  404479:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  40447e:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  404483:	48 81 ec f8 01 00 00 	sub    $0x1f8,%rsp
  40448a:	44 8b b4 24 00 02 00 	mov    0x200(%rsp),%r14d
  404491:	00 
  404492:	48 89 54 24 18       	mov    %rdx,0x18(%rsp)
  404497:	49 89 cc             	mov    %rcx,%r12
  40449a:	4d 89 c5             	mov    %r8,%r13
  40449d:	45 89 cf             	mov    %r9d,%r15d
  4044a0:	41 83 fe 00          	cmp    $0x0,%r14d
  4044a4:	0f 8c 76 01 00 00    	jl     404620 <cvt_f+0x1c0>
  4044aa:	0f 85 f0 00 00 00    	jne    4045a0 <cvt_f+0x140>
  4044b0:	83 ff 67             	cmp    $0x67,%edi
  4044b3:	0f 85 e7 00 00 00    	jne    4045a0 <cvt_f+0x140>
  4044b9:	b9 30 00 00 00       	mov    $0x30,%ecx
  4044be:	be 31 00 00 00       	mov    $0x31,%esi
  4044c3:	41 be 01 00 00 00    	mov    $0x1,%r14d
  4044c9:	40 88 2d 4c 1c 20 00 	mov    %bpl,0x201c4c(%rip)        # 60611c <fmt.2481+0x4>
  4044d0:	40 88 35 44 1c 20 00 	mov    %sil,0x201c44(%rip)        # 60611b <fmt.2481+0x3>
  4044d7:	88 0d 3d 1c 20 00    	mov    %cl,0x201c3d(%rip)        # 60611a <fmt.2481+0x2>
  4044dd:	8b 53 04             	mov    0x4(%rbx),%edx
  4044e0:	81 fa b0 00 00 00    	cmp    $0xb0,%edx
  4044e6:	0f 82 1c 01 00 00    	jb     404608 <cvt_f+0x1a8>
  4044ec:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4044f0:	48 8d 50 08          	lea    0x8(%rax),%rdx
  4044f4:	48 89 53 08          	mov    %rdx,0x8(%rbx)
  4044f8:	48 8d 5c 24 20       	lea    0x20(%rsp),%rbx
  4044fd:	f2 0f 10 00          	movsd  (%rax),%xmm0
  404501:	48 8d 35 10 1c 20 00 	lea    0x201c10(%rip),%rsi        # 606118 <fmt.2481>
  404508:	b8 01 00 00 00       	mov    $0x1,%eax
  40450d:	48 89 df             	mov    %rbx,%rdi
  404510:	e8 8b c7 ff ff       	callq  400ca0 <sprintf@plt>
  404515:	48 89 de             	mov    %rbx,%rsi
  404518:	8b 16                	mov    (%rsi),%edx
  40451a:	48 83 c6 04          	add    $0x4,%rsi
  40451e:	8d 82 ff fe fe fe    	lea    -0x1010101(%rdx),%eax
  404524:	f7 d2                	not    %edx
  404526:	21 d0                	and    %edx,%eax
  404528:	25 80 80 80 80       	and    $0x80808080,%eax
  40452d:	74 e9                	je     404518 <cvt_f+0xb8>
  40452f:	89 c2                	mov    %eax,%edx
  404531:	45 89 f9             	mov    %r15d,%r9d
  404534:	4d 89 e8             	mov    %r13,%r8
  404537:	c1 ea 10             	shr    $0x10,%edx
  40453a:	a9 80 80 00 00       	test   $0x8080,%eax
  40453f:	4c 89 e1             	mov    %r12,%rcx
  404542:	0f 44 c2             	cmove  %edx,%eax
  404545:	48 8d 56 02          	lea    0x2(%rsi),%rdx
  404549:	48 89 df             	mov    %rbx,%rdi
  40454c:	44 89 34 24          	mov    %r14d,(%rsp)
  404550:	48 0f 44 f2          	cmove  %rdx,%rsi
  404554:	00 c0                	add    %al,%al
  404556:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  40455b:	48 83 de 03          	sbb    $0x3,%rsi
  40455f:	48 29 de             	sub    %rbx,%rsi
  404562:	e8 29 fa ff ff       	callq  403f90 <Fmt_putd>
  404567:	48 8b 9c 24 c8 01 00 	mov    0x1c8(%rsp),%rbx
  40456e:	00 
  40456f:	48 8b ac 24 d0 01 00 	mov    0x1d0(%rsp),%rbp
  404576:	00 
  404577:	4c 8b a4 24 d8 01 00 	mov    0x1d8(%rsp),%r12
  40457e:	00 
  40457f:	4c 8b ac 24 e0 01 00 	mov    0x1e0(%rsp),%r13
  404586:	00 
  404587:	4c 8b b4 24 e8 01 00 	mov    0x1e8(%rsp),%r14
  40458e:	00 
  40458f:	4c 8b bc 24 f0 01 00 	mov    0x1f0(%rsp),%r15
  404596:	00 
  404597:	48 81 c4 f8 01 00 00 	add    $0x1f8,%rsp
  40459e:	c3                   	retq   
  40459f:	90                   	nop
  4045a0:	41 83 fe 63          	cmp    $0x63,%r14d
  4045a4:	0f 8e 8b 00 00 00    	jle    404635 <cvt_f+0x1d5>
  4045aa:	48 8d 3d 2f 18 20 00 	lea    0x20182f(%rip),%rdi        # 605de0 <Assert_Failed>
  4045b1:	48 8d 35 ca 07 00 00 	lea    0x7ca(%rip),%rsi        # 404d82 <_IO_stdin_used+0x322>
  4045b8:	ba 7e 00 00 00       	mov    $0x7e,%edx
  4045bd:	e8 5e ea ff ff       	callq  403020 <Except_raise>
  4045c2:	bf 67 66 66 66       	mov    $0x66666667,%edi
  4045c7:	44 89 f0             	mov    %r14d,%eax
  4045ca:	f7 ef                	imul   %edi
  4045cc:	44 89 f0             	mov    %r14d,%eax
  4045cf:	c1 f8 1f             	sar    $0x1f,%eax
  4045d2:	89 d1                	mov    %edx,%ecx
  4045d4:	44 89 f2             	mov    %r14d,%edx
  4045d7:	c1 f9 02             	sar    $0x2,%ecx
  4045da:	29 c1                	sub    %eax,%ecx
  4045dc:	8d 04 89             	lea    (%rcx,%rcx,4),%eax
  4045df:	01 c0                	add    %eax,%eax
  4045e1:	28 c2                	sub    %al,%dl
  4045e3:	89 c8                	mov    %ecx,%eax
  4045e5:	89 d6                	mov    %edx,%esi
  4045e7:	f7 ef                	imul   %edi
  4045e9:	89 c8                	mov    %ecx,%eax
  4045eb:	83 c6 30             	add    $0x30,%esi
  4045ee:	c1 f8 1f             	sar    $0x1f,%eax
  4045f1:	c1 fa 02             	sar    $0x2,%edx
  4045f4:	29 c2                	sub    %eax,%edx
  4045f6:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
  4045f9:	01 d2                	add    %edx,%edx
  4045fb:	28 d1                	sub    %dl,%cl
  4045fd:	83 c1 30             	add    $0x30,%ecx
  404600:	e9 c4 fe ff ff       	jmpq   4044c9 <cvt_f+0x69>
  404605:	0f 1f 00             	nopl   (%rax)
  404608:	89 d0                	mov    %edx,%eax
  40460a:	83 c2 10             	add    $0x10,%edx
  40460d:	48 03 43 10          	add    0x10(%rbx),%rax
  404611:	89 53 04             	mov    %edx,0x4(%rbx)
  404614:	e9 df fe ff ff       	jmpq   4044f8 <cvt_f+0x98>
  404619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404620:	b9 30 00 00 00       	mov    $0x30,%ecx
  404625:	be 36 00 00 00       	mov    $0x36,%esi
  40462a:	41 be 06 00 00 00    	mov    $0x6,%r14d
  404630:	e9 94 fe ff ff       	jmpq   4044c9 <cvt_f+0x69>
  404635:	44 89 f2             	mov    %r14d,%edx
  404638:	b9 0a 00 00 00       	mov    $0xa,%ecx
  40463d:	44 89 f0             	mov    %r14d,%eax
  404640:	c1 fa 1f             	sar    $0x1f,%edx
  404643:	f7 f9                	idiv   %ecx
  404645:	8d 72 30             	lea    0x30(%rdx),%esi
  404648:	89 c2                	mov    %eax,%edx
  40464a:	c1 fa 1f             	sar    $0x1f,%edx
  40464d:	f7 f9                	idiv   %ecx
  40464f:	8d 4a 30             	lea    0x30(%rdx),%ecx
  404652:	e9 72 fe ff ff       	jmpq   4044c9 <cvt_f+0x69>
  404657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40465e:	00 00 

0000000000404660 <cvt_d>:
  404660:	55                   	push   %rbp
  404661:	49 89 d2             	mov    %rdx,%r10
  404664:	53                   	push   %rbx
  404665:	48 83 ec 48          	sub    $0x48,%rsp
  404669:	8b 16                	mov    (%rsi),%edx
  40466b:	83 fa 30             	cmp    $0x30,%edx
  40466e:	0f 83 8c 00 00 00    	jae    404700 <cvt_d+0xa0>
  404674:	89 d0                	mov    %edx,%eax
  404676:	48 03 46 10          	add    0x10(%rsi),%rax
  40467a:	83 c2 08             	add    $0x8,%edx
  40467d:	89 16                	mov    %edx,(%rsi)
  40467f:	8b 28                	mov    (%rax),%ebp
  404681:	81 fd 00 00 00 80    	cmp    $0x80000000,%ebp
  404687:	41 89 eb             	mov    %ebp,%r11d
  40468a:	74 0e                	je     40469a <cvt_d+0x3a>
  40468c:	89 e8                	mov    %ebp,%eax
  40468e:	c1 f8 1f             	sar    $0x1f,%eax
  404691:	41 89 c3             	mov    %eax,%r11d
  404694:	41 31 eb             	xor    %ebp,%r11d
  404697:	41 29 c3             	sub    %eax,%r11d
  40469a:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  40469f:	bb cd cc cc cc       	mov    $0xcccccccd,%ebx
  4046a4:	48 8d 7e 2b          	lea    0x2b(%rsi),%rdi
  4046a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4046af:	00 
  4046b0:	44 89 d8             	mov    %r11d,%eax
  4046b3:	48 83 ef 01          	sub    $0x1,%rdi
  4046b7:	f7 e3                	mul    %ebx
  4046b9:	c1 ea 03             	shr    $0x3,%edx
  4046bc:	8d 04 92             	lea    (%rdx,%rdx,4),%eax
  4046bf:	01 c0                	add    %eax,%eax
  4046c1:	41 29 c3             	sub    %eax,%r11d
  4046c4:	41 83 c3 30          	add    $0x30,%r11d
  4046c8:	85 d2                	test   %edx,%edx
  4046ca:	44 88 1f             	mov    %r11b,(%rdi)
  4046cd:	41 89 d3             	mov    %edx,%r11d
  4046d0:	75 de                	jne    4046b0 <cvt_d+0x50>
  4046d2:	85 ed                	test   %ebp,%ebp
  4046d4:	79 07                	jns    4046dd <cvt_d+0x7d>
  4046d6:	48 83 ef 01          	sub    $0x1,%rdi
  4046da:	c6 07 2d             	movb   $0x2d,(%rdi)
  4046dd:	8b 44 24 60          	mov    0x60(%rsp),%eax
  4046e1:	48 83 c6 2b          	add    $0x2b,%rsi
  4046e5:	4c 89 d2             	mov    %r10,%rdx
  4046e8:	29 fe                	sub    %edi,%esi
  4046ea:	89 04 24             	mov    %eax,(%rsp)
  4046ed:	e8 9e f8 ff ff       	callq  403f90 <Fmt_putd>
  4046f2:	48 83 c4 48          	add    $0x48,%rsp
  4046f6:	5b                   	pop    %rbx
  4046f7:	5d                   	pop    %rbp
  4046f8:	c3                   	retq   
  4046f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404700:	48 8b 46 08          	mov    0x8(%rsi),%rax
  404704:	48 8d 50 08          	lea    0x8(%rax),%rdx
  404708:	48 89 56 08          	mov    %rdx,0x8(%rsi)
  40470c:	e9 6e ff ff ff       	jmpq   40467f <cvt_d+0x1f>
  404711:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404718:	00 00 00 
  40471b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000404720 <Mem_alloc>:
  404720:	48 89 5c 24 e8       	mov    %rbx,-0x18(%rsp)
  404725:	48 89 6c 24 f0       	mov    %rbp,-0x10(%rsp)
  40472a:	48 89 f3             	mov    %rsi,%rbx
  40472d:	4c 89 64 24 f8       	mov    %r12,-0x8(%rsp)
  404732:	48 83 ec 28          	sub    $0x28,%rsp
  404736:	48 85 ff             	test   %rdi,%rdi
  404739:	49 89 fc             	mov    %rdi,%r12
  40473c:	89 d5                	mov    %edx,%ebp
  40473e:	7e 50                	jle    404790 <Mem_alloc+0x70>
  404740:	4c 89 e7             	mov    %r12,%rdi
  404743:	e8 e8 c4 ff ff       	callq  400c30 <malloc@plt>
  404748:	48 85 c0             	test   %rax,%rax
  40474b:	74 1b                	je     404768 <Mem_alloc+0x48>
  40474d:	48 8b 5c 24 10       	mov    0x10(%rsp),%rbx
  404752:	48 8b 6c 24 18       	mov    0x18(%rsp),%rbp
  404757:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
  40475c:	48 83 c4 28          	add    $0x28,%rsp
  404760:	c3                   	retq   
  404761:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404768:	48 85 db             	test   %rbx,%rbx
  40476b:	74 43                	je     4047b0 <Mem_alloc+0x90>
  40476d:	48 8d 3d 7c 16 20 00 	lea    0x20167c(%rip),%rdi        # 605df0 <Mem_Failed>
  404774:	89 ea                	mov    %ebp,%edx
  404776:	48 89 de             	mov    %rbx,%rsi
  404779:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40477e:	e8 9d e8 ff ff       	callq  403020 <Except_raise>
  404783:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  404788:	eb c3                	jmp    40474d <Mem_alloc+0x2d>
  40478a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404790:	48 8d 3d 49 16 20 00 	lea    0x201649(%rip),%rdi        # 605de0 <Assert_Failed>
  404797:	48 8d 35 18 06 00 00 	lea    0x618(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  40479e:	ba 0a 00 00 00       	mov    $0xa,%edx
  4047a3:	e8 78 e8 ff ff       	callq  403020 <Except_raise>
  4047a8:	eb 96                	jmp    404740 <Mem_alloc+0x20>
  4047aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4047b0:	48 8d 3d 39 16 20 00 	lea    0x201639(%rip),%rdi        # 605df0 <Mem_Failed>
  4047b7:	48 8d 35 f8 05 00 00 	lea    0x5f8(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  4047be:	ba 0f 00 00 00       	mov    $0xf,%edx
  4047c3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4047c8:	e8 53 e8 ff ff       	callq  403020 <Except_raise>
  4047cd:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4047d2:	e9 76 ff ff ff       	jmpq   40474d <Mem_alloc+0x2d>
  4047d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4047de:	00 00 

00000000004047e0 <Mem_calloc>:
  4047e0:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
  4047e5:	48 89 6c 24 e8       	mov    %rbp,-0x18(%rsp)
  4047ea:	48 89 d3             	mov    %rdx,%rbx
  4047ed:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  4047f2:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
  4047f7:	48 83 ec 38          	sub    $0x38,%rsp
  4047fb:	48 85 ff             	test   %rdi,%rdi
  4047fe:	48 89 fd             	mov    %rdi,%rbp
  404801:	49 89 f4             	mov    %rsi,%r12
  404804:	41 89 cd             	mov    %ecx,%r13d
  404807:	7e 5f                	jle    404868 <Mem_calloc+0x88>
  404809:	4d 85 e4             	test   %r12,%r12
  40480c:	7e 7a                	jle    404888 <Mem_calloc+0xa8>
  40480e:	4c 89 e6             	mov    %r12,%rsi
  404811:	48 89 ef             	mov    %rbp,%rdi
  404814:	e8 d7 c3 ff ff       	callq  400bf0 <calloc@plt>
  404819:	48 85 c0             	test   %rax,%rax
  40481c:	74 22                	je     404840 <Mem_calloc+0x60>
  40481e:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  404823:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  404828:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
  40482d:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  404832:	48 83 c4 38          	add    $0x38,%rsp
  404836:	c3                   	retq   
  404837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40483e:	00 00 
  404840:	48 85 db             	test   %rbx,%rbx
  404843:	74 63                	je     4048a8 <Mem_calloc+0xc8>
  404845:	48 8d 3d a4 15 20 00 	lea    0x2015a4(%rip),%rdi        # 605df0 <Mem_Failed>
  40484c:	44 89 ea             	mov    %r13d,%edx
  40484f:	48 89 de             	mov    %rbx,%rsi
  404852:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404857:	e8 c4 e7 ff ff       	callq  403020 <Except_raise>
  40485c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  404861:	eb bb                	jmp    40481e <Mem_calloc+0x3e>
  404863:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404868:	48 8d 3d 71 15 20 00 	lea    0x201571(%rip),%rdi        # 605de0 <Assert_Failed>
  40486f:	48 8d 35 40 05 00 00 	lea    0x540(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  404876:	ba 18 00 00 00       	mov    $0x18,%edx
  40487b:	e8 a0 e7 ff ff       	callq  403020 <Except_raise>
  404880:	4d 85 e4             	test   %r12,%r12
  404883:	7f 89                	jg     40480e <Mem_calloc+0x2e>
  404885:	0f 1f 00             	nopl   (%rax)
  404888:	48 8d 3d 51 15 20 00 	lea    0x201551(%rip),%rdi        # 605de0 <Assert_Failed>
  40488f:	48 8d 35 20 05 00 00 	lea    0x520(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  404896:	ba 19 00 00 00       	mov    $0x19,%edx
  40489b:	e8 80 e7 ff ff       	callq  403020 <Except_raise>
  4048a0:	e9 69 ff ff ff       	jmpq   40480e <Mem_calloc+0x2e>
  4048a5:	0f 1f 00             	nopl   (%rax)
  4048a8:	48 8d 3d 41 15 20 00 	lea    0x201541(%rip),%rdi        # 605df0 <Mem_Failed>
  4048af:	48 8d 35 00 05 00 00 	lea    0x500(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  4048b6:	ba 1e 00 00 00       	mov    $0x1e,%edx
  4048bb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4048c0:	e8 5b e7 ff ff       	callq  403020 <Except_raise>
  4048c5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4048ca:	e9 4f ff ff ff       	jmpq   40481e <Mem_calloc+0x3e>
  4048cf:	90                   	nop

00000000004048d0 <Mem_free>:
  4048d0:	48 85 ff             	test   %rdi,%rdi
  4048d3:	74 0b                	je     4048e0 <Mem_free+0x10>
  4048d5:	e9 66 c2 ff ff       	jmpq   400b40 <free@plt>
  4048da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4048e0:	f3 c3                	repz retq 
  4048e2:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4048e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004048f0 <Mem_resize>:
  4048f0:	48 89 5c 24 e0       	mov    %rbx,-0x20(%rsp)
  4048f5:	48 89 6c 24 e8       	mov    %rbp,-0x18(%rsp)
  4048fa:	48 89 d3             	mov    %rdx,%rbx
  4048fd:	4c 89 64 24 f0       	mov    %r12,-0x10(%rsp)
  404902:	4c 89 6c 24 f8       	mov    %r13,-0x8(%rsp)
  404907:	48 83 ec 38          	sub    $0x38,%rsp
  40490b:	48 85 ff             	test   %rdi,%rdi
  40490e:	48 89 fd             	mov    %rdi,%rbp
  404911:	49 89 f4             	mov    %rsi,%r12
  404914:	41 89 cd             	mov    %ecx,%r13d
  404917:	74 7f                	je     404998 <Mem_resize+0xa8>
  404919:	4d 85 e4             	test   %r12,%r12
  40491c:	7e 5a                	jle    404978 <Mem_resize+0x88>
  40491e:	4c 89 e6             	mov    %r12,%rsi
  404921:	48 89 ef             	mov    %rbp,%rdi
  404924:	e8 37 c3 ff ff       	callq  400c60 <realloc@plt>
  404929:	48 85 c0             	test   %rax,%rax
  40492c:	74 22                	je     404950 <Mem_resize+0x60>
  40492e:	48 8b 5c 24 18       	mov    0x18(%rsp),%rbx
  404933:	48 8b 6c 24 20       	mov    0x20(%rsp),%rbp
  404938:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
  40493d:	4c 8b 6c 24 30       	mov    0x30(%rsp),%r13
  404942:	48 83 c4 38          	add    $0x38,%rsp
  404946:	c3                   	retq   
  404947:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40494e:	00 00 
  404950:	48 85 db             	test   %rbx,%rbx
  404953:	74 63                	je     4049b8 <Mem_resize+0xc8>
  404955:	48 8d 3d 94 14 20 00 	lea    0x201494(%rip),%rdi        # 605df0 <Mem_Failed>
  40495c:	44 89 ea             	mov    %r13d,%edx
  40495f:	48 89 de             	mov    %rbx,%rsi
  404962:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  404967:	e8 b4 e6 ff ff       	callq  403020 <Except_raise>
  40496c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  404971:	eb bb                	jmp    40492e <Mem_resize+0x3e>
  404973:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  404978:	48 8d 3d 61 14 20 00 	lea    0x201461(%rip),%rdi        # 605de0 <Assert_Failed>
  40497f:	48 8d 35 30 04 00 00 	lea    0x430(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  404986:	ba 2b 00 00 00       	mov    $0x2b,%edx
  40498b:	e8 90 e6 ff ff       	callq  403020 <Except_raise>
  404990:	eb 8c                	jmp    40491e <Mem_resize+0x2e>
  404992:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  404998:	48 8d 3d 41 14 20 00 	lea    0x201441(%rip),%rdi        # 605de0 <Assert_Failed>
  40499f:	48 8d 35 10 04 00 00 	lea    0x410(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  4049a6:	ba 2a 00 00 00       	mov    $0x2a,%edx
  4049ab:	e8 70 e6 ff ff       	callq  403020 <Except_raise>
  4049b0:	e9 64 ff ff ff       	jmpq   404919 <Mem_resize+0x29>
  4049b5:	0f 1f 00             	nopl   (%rax)
  4049b8:	48 8d 3d 31 14 20 00 	lea    0x201431(%rip),%rdi        # 605df0 <Mem_Failed>
  4049bf:	48 8d 35 f0 03 00 00 	lea    0x3f0(%rip),%rsi        # 404db6 <_IO_stdin_used+0x356>
  4049c6:	ba 30 00 00 00       	mov    $0x30,%edx
  4049cb:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4049d0:	e8 4b e6 ff ff       	callq  403020 <Except_raise>
  4049d5:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4049da:	e9 4f ff ff ff       	jmpq   40492e <Mem_resize+0x3e>
  4049df:	90                   	nop

00000000004049e0 <__libc_csu_init>:
  4049e0:	41 57                	push   %r15
  4049e2:	41 89 ff             	mov    %edi,%r15d
  4049e5:	41 56                	push   %r14
  4049e7:	49 89 f6             	mov    %rsi,%r14
  4049ea:	41 55                	push   %r13
  4049ec:	49 89 d5             	mov    %rdx,%r13
  4049ef:	41 54                	push   %r12
  4049f1:	4c 8d 25 d8 13 20 00 	lea    0x2013d8(%rip),%r12        # 605dd0 <__frame_dummy_init_array_entry>
  4049f8:	55                   	push   %rbp
  4049f9:	48 8d 2d d8 13 20 00 	lea    0x2013d8(%rip),%rbp        # 605dd8 <__init_array_end>
  404a00:	53                   	push   %rbx
  404a01:	4c 29 e5             	sub    %r12,%rbp
  404a04:	31 db                	xor    %ebx,%ebx
  404a06:	48 c1 fd 03          	sar    $0x3,%rbp
  404a0a:	48 83 ec 08          	sub    $0x8,%rsp
  404a0e:	e8 fd c0 ff ff       	callq  400b10 <_init>
  404a13:	48 85 ed             	test   %rbp,%rbp
  404a16:	74 1e                	je     404a36 <__libc_csu_init+0x56>
  404a18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404a1f:	00 
  404a20:	4c 89 ea             	mov    %r13,%rdx
  404a23:	4c 89 f6             	mov    %r14,%rsi
  404a26:	44 89 ff             	mov    %r15d,%edi
  404a29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  404a2d:	48 83 c3 01          	add    $0x1,%rbx
  404a31:	48 39 eb             	cmp    %rbp,%rbx
  404a34:	75 ea                	jne    404a20 <__libc_csu_init+0x40>
  404a36:	48 83 c4 08          	add    $0x8,%rsp
  404a3a:	5b                   	pop    %rbx
  404a3b:	5d                   	pop    %rbp
  404a3c:	41 5c                	pop    %r12
  404a3e:	41 5d                	pop    %r13
  404a40:	41 5e                	pop    %r14
  404a42:	41 5f                	pop    %r15
  404a44:	c3                   	retq   
  404a45:	90                   	nop
  404a46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404a4d:	00 00 00 

0000000000404a50 <__libc_csu_fini>:
  404a50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000404a54 <_fini>:
  404a54:	48 83 ec 08          	sub    $0x8,%rsp
  404a58:	48 83 c4 08          	add    $0x8,%rsp
  404a5c:	c3                   	retq   
