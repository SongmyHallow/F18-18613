
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400ad8 <_init>:
  400ad8:	48 83 ec 08          	sub    $0x8,%rsp
  400adc:	48 8b 05 15 35 20 00 	mov    0x203515(%rip),%rax        # 603ff8 <__gmon_start__>
  400ae3:	48 85 c0             	test   %rax,%rax
  400ae6:	74 05                	je     400aed <_init+0x15>
  400ae8:	e8 e3 01 00 00       	callq  400cd0 <__gmon_start__@plt>
  400aed:	48 83 c4 08          	add    $0x8,%rsp
  400af1:	c3                   	retq   

Disassembly of section .plt:

0000000000400b00 <.plt>:
  400b00:	ff 35 02 35 20 00    	pushq  0x203502(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b06:	ff 25 04 35 20 00    	jmpq   *0x203504(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b10 <getenv@plt>:
  400b10:	ff 25 02 35 20 00    	jmpq   *0x203502(%rip)        # 604018 <getenv@GLIBC_2.2.5>
  400b16:	68 00 00 00 00       	pushq  $0x0
  400b1b:	e9 e0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b20 <strcasecmp@plt>:
  400b20:	ff 25 fa 34 20 00    	jmpq   *0x2034fa(%rip)        # 604020 <strcasecmp@GLIBC_2.2.5>
  400b26:	68 01 00 00 00       	pushq  $0x1
  400b2b:	e9 d0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b30 <__errno_location@plt>:
  400b30:	ff 25 f2 34 20 00    	jmpq   *0x2034f2(%rip)        # 604028 <__errno_location@GLIBC_2.2.5>
  400b36:	68 02 00 00 00       	pushq  $0x2
  400b3b:	e9 c0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b40 <strcpy@plt>:
  400b40:	ff 25 ea 34 20 00    	jmpq   *0x2034ea(%rip)        # 604030 <strcpy@GLIBC_2.2.5>
  400b46:	68 03 00 00 00       	pushq  $0x3
  400b4b:	e9 b0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b50 <puts@plt>:
  400b50:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604038 <puts@GLIBC_2.2.5>
  400b56:	68 04 00 00 00       	pushq  $0x4
  400b5b:	e9 a0 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b60 <write@plt>:
  400b60:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604040 <write@GLIBC_2.2.5>
  400b66:	68 05 00 00 00       	pushq  $0x5
  400b6b:	e9 90 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b70 <printf@plt>:
  400b70:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604048 <printf@GLIBC_2.2.5>
  400b76:	68 06 00 00 00       	pushq  $0x6
  400b7b:	e9 80 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b80 <alarm@plt>:
  400b80:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604050 <alarm@GLIBC_2.2.5>
  400b86:	68 07 00 00 00       	pushq  $0x7
  400b8b:	e9 70 ff ff ff       	jmpq   400b00 <.plt>

0000000000400b90 <close@plt>:
  400b90:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604058 <close@GLIBC_2.2.5>
  400b96:	68 08 00 00 00       	pushq  $0x8
  400b9b:	e9 60 ff ff ff       	jmpq   400b00 <.plt>

0000000000400ba0 <read@plt>:
  400ba0:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604060 <read@GLIBC_2.2.5>
  400ba6:	68 09 00 00 00       	pushq  $0x9
  400bab:	e9 50 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bb0 <__libc_start_main@plt>:
  400bb0:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604068 <__libc_start_main@GLIBC_2.2.5>
  400bb6:	68 0a 00 00 00       	pushq  $0xa
  400bbb:	e9 40 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bc0 <fgets@plt>:
  400bc0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604070 <fgets@GLIBC_2.2.5>
  400bc6:	68 0b 00 00 00       	pushq  $0xb
  400bcb:	e9 30 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bd0 <signal@plt>:
  400bd0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604078 <signal@GLIBC_2.2.5>
  400bd6:	68 0c 00 00 00       	pushq  $0xc
  400bdb:	e9 20 ff ff ff       	jmpq   400b00 <.plt>

0000000000400be0 <gethostbyname@plt>:
  400be0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604080 <gethostbyname@GLIBC_2.2.5>
  400be6:	68 0d 00 00 00       	pushq  $0xd
  400beb:	e9 10 ff ff ff       	jmpq   400b00 <.plt>

0000000000400bf0 <fprintf@plt>:
  400bf0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604088 <fprintf@GLIBC_2.2.5>
  400bf6:	68 0e 00 00 00       	pushq  $0xe
  400bfb:	e9 00 ff ff ff       	jmpq   400b00 <.plt>

0000000000400c00 <strtol@plt>:
  400c00:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604090 <strtol@GLIBC_2.2.5>
  400c06:	68 0f 00 00 00       	pushq  $0xf
  400c0b:	e9 f0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c10 <memcpy@plt>:
  400c10:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604098 <memcpy@GLIBC_2.14>
  400c16:	68 10 00 00 00       	pushq  $0x10
  400c1b:	e9 e0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c20 <fflush@plt>:
  400c20:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 6040a0 <fflush@GLIBC_2.2.5>
  400c26:	68 11 00 00 00       	pushq  $0x11
  400c2b:	e9 d0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c30 <__isoc99_sscanf@plt>:
  400c30:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 6040a8 <__isoc99_sscanf@GLIBC_2.7>
  400c36:	68 12 00 00 00       	pushq  $0x12
  400c3b:	e9 c0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c40 <bcopy@plt>:
  400c40:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 6040b0 <bcopy@GLIBC_2.2.5>
  400c46:	68 13 00 00 00       	pushq  $0x13
  400c4b:	e9 b0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c50 <fopen@plt>:
  400c50:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 6040b8 <fopen@GLIBC_2.2.5>
  400c56:	68 14 00 00 00       	pushq  $0x14
  400c5b:	e9 a0 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c60 <gethostname@plt>:
  400c60:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040c0 <gethostname@GLIBC_2.2.5>
  400c66:	68 15 00 00 00       	pushq  $0x15
  400c6b:	e9 90 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c70 <sprintf@plt>:
  400c70:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040c8 <sprintf@GLIBC_2.2.5>
  400c76:	68 16 00 00 00       	pushq  $0x16
  400c7b:	e9 80 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c80 <exit@plt>:
  400c80:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040d0 <exit@GLIBC_2.2.5>
  400c86:	68 17 00 00 00       	pushq  $0x17
  400c8b:	e9 70 fe ff ff       	jmpq   400b00 <.plt>

0000000000400c90 <connect@plt>:
  400c90:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040d8 <connect@GLIBC_2.2.5>
  400c96:	68 18 00 00 00       	pushq  $0x18
  400c9b:	e9 60 fe ff ff       	jmpq   400b00 <.plt>

0000000000400ca0 <sleep@plt>:
  400ca0:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040e0 <sleep@GLIBC_2.2.5>
  400ca6:	68 19 00 00 00       	pushq  $0x19
  400cab:	e9 50 fe ff ff       	jmpq   400b00 <.plt>

0000000000400cb0 <__ctype_b_loc@plt>:
  400cb0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040e8 <__ctype_b_loc@GLIBC_2.3>
  400cb6:	68 1a 00 00 00       	pushq  $0x1a
  400cbb:	e9 40 fe ff ff       	jmpq   400b00 <.plt>

0000000000400cc0 <socket@plt>:
  400cc0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040f0 <socket@GLIBC_2.2.5>
  400cc6:	68 1b 00 00 00       	pushq  $0x1b
  400ccb:	e9 30 fe ff ff       	jmpq   400b00 <.plt>

Disassembly of section .plt.got:

0000000000400cd0 <__gmon_start__@plt>:
  400cd0:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 603ff8 <__gmon_start__>
  400cd6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400ce0 <_start>:
  400ce0:	31 ed                	xor    %ebp,%ebp
  400ce2:	49 89 d1             	mov    %rdx,%r9
  400ce5:	5e                   	pop    %rsi
  400ce6:	48 89 e2             	mov    %rsp,%rdx
  400ce9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ced:	50                   	push   %rax
  400cee:	54                   	push   %rsp
  400cef:	49 c7 c0 00 24 40 00 	mov    $0x402400,%r8
  400cf6:	48 c7 c1 90 23 40 00 	mov    $0x402390,%rcx
  400cfd:	48 c7 c7 cd 0d 40 00 	mov    $0x400dcd,%rdi
  400d04:	e8 a7 fe ff ff       	callq  400bb0 <__libc_start_main@plt>
  400d09:	f4                   	hlt    
  400d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400d10 <deregister_tm_clones>:
  400d10:	b8 07 56 60 00       	mov    $0x605607,%eax
  400d15:	55                   	push   %rbp
  400d16:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400d1c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d20:	48 89 e5             	mov    %rsp,%rbp
  400d23:	77 02                	ja     400d27 <deregister_tm_clones+0x17>
  400d25:	5d                   	pop    %rbp
  400d26:	c3                   	retq   
  400d27:	b8 00 00 00 00       	mov    $0x0,%eax
  400d2c:	48 85 c0             	test   %rax,%rax
  400d2f:	74 f4                	je     400d25 <deregister_tm_clones+0x15>
  400d31:	5d                   	pop    %rbp
  400d32:	bf 00 56 60 00       	mov    $0x605600,%edi
  400d37:	ff e0                	jmpq   *%rax
  400d39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d40 <register_tm_clones>:
  400d40:	b8 00 56 60 00       	mov    $0x605600,%eax
  400d45:	55                   	push   %rbp
  400d46:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400d4c:	48 c1 f8 03          	sar    $0x3,%rax
  400d50:	48 89 e5             	mov    %rsp,%rbp
  400d53:	48 89 c2             	mov    %rax,%rdx
  400d56:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400d5a:	48 01 d0             	add    %rdx,%rax
  400d5d:	48 d1 f8             	sar    %rax
  400d60:	75 02                	jne    400d64 <register_tm_clones+0x24>
  400d62:	5d                   	pop    %rbp
  400d63:	c3                   	retq   
  400d64:	ba 00 00 00 00       	mov    $0x0,%edx
  400d69:	48 85 d2             	test   %rdx,%rdx
  400d6c:	74 f4                	je     400d62 <register_tm_clones+0x22>
  400d6e:	5d                   	pop    %rbp
  400d6f:	48 89 c6             	mov    %rax,%rsi
  400d72:	bf 00 56 60 00       	mov    $0x605600,%edi
  400d77:	ff e2                	jmpq   *%rdx
  400d79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d80 <__do_global_dtors_aux>:
  400d80:	80 3d 91 48 20 00 00 	cmpb   $0x0,0x204891(%rip)        # 605618 <completed.6355>
  400d87:	75 11                	jne    400d9a <__do_global_dtors_aux+0x1a>
  400d89:	55                   	push   %rbp
  400d8a:	48 89 e5             	mov    %rsp,%rbp
  400d8d:	e8 7e ff ff ff       	callq  400d10 <deregister_tm_clones>
  400d92:	5d                   	pop    %rbp
  400d93:	c6 05 7e 48 20 00 01 	movb   $0x1,0x20487e(%rip)        # 605618 <completed.6355>
  400d9a:	f3 c3                	repz retq 
  400d9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400da0 <frame_dummy>:
  400da0:	48 83 3d 68 30 20 00 	cmpq   $0x0,0x203068(%rip)        # 603e10 <__JCR_END__>
  400da7:	00 
  400da8:	74 1e                	je     400dc8 <frame_dummy+0x28>
  400daa:	b8 00 00 00 00       	mov    $0x0,%eax
  400daf:	48 85 c0             	test   %rax,%rax
  400db2:	74 14                	je     400dc8 <frame_dummy+0x28>
  400db4:	55                   	push   %rbp
  400db5:	bf 10 3e 60 00       	mov    $0x603e10,%edi
  400dba:	48 89 e5             	mov    %rsp,%rbp
  400dbd:	ff d0                	callq  *%rax
  400dbf:	5d                   	pop    %rbp
  400dc0:	e9 7b ff ff ff       	jmpq   400d40 <register_tm_clones>
  400dc5:	0f 1f 00             	nopl   (%rax)
  400dc8:	e9 73 ff ff ff       	jmpq   400d40 <register_tm_clones>

0000000000400dcd <main>:
  400dcd:	53                   	push   %rbx
  400dce:	83 ff 01             	cmp    $0x1,%edi
  400dd1:	75 10                	jne    400de3 <main+0x16>
  400dd3:	48 8b 05 2e 48 20 00 	mov    0x20482e(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  400dda:	48 89 05 3f 48 20 00 	mov    %rax,0x20483f(%rip)        # 605620 <infile>
  400de1:	eb 59                	jmp    400e3c <main+0x6f>
  400de3:	48 89 f3             	mov    %rsi,%rbx
  400de6:	83 ff 02             	cmp    $0x2,%edi
  400de9:	75 35                	jne    400e20 <main+0x53>
  400deb:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400def:	be 20 24 40 00       	mov    $0x402420,%esi
  400df4:	e8 57 fe ff ff       	callq  400c50 <fopen@plt>
  400df9:	48 89 05 20 48 20 00 	mov    %rax,0x204820(%rip)        # 605620 <infile>
  400e00:	48 85 c0             	test   %rax,%rax
  400e03:	75 37                	jne    400e3c <main+0x6f>
  400e05:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400e09:	48 8b 33             	mov    (%rbx),%rsi
  400e0c:	bf 22 24 40 00       	mov    $0x402422,%edi
  400e11:	e8 5a fd ff ff       	callq  400b70 <printf@plt>
  400e16:	bf 08 00 00 00       	mov    $0x8,%edi
  400e1b:	e8 60 fe ff ff       	callq  400c80 <exit@plt>
  400e20:	48 8b 36             	mov    (%rsi),%rsi
  400e23:	bf 3f 24 40 00       	mov    $0x40243f,%edi
  400e28:	b8 00 00 00 00       	mov    $0x0,%eax
  400e2d:	e8 3e fd ff ff       	callq  400b70 <printf@plt>
  400e32:	bf 08 00 00 00       	mov    $0x8,%edi
  400e37:	e8 44 fe ff ff       	callq  400c80 <exit@plt>
  400e3c:	e8 f2 04 00 00       	callq  401333 <initialize_bomb>
  400e41:	bf a8 24 40 00       	mov    $0x4024a8,%edi
  400e46:	e8 05 fd ff ff       	callq  400b50 <puts@plt>
  400e4b:	bf e8 24 40 00       	mov    $0x4024e8,%edi
  400e50:	e8 fb fc ff ff       	callq  400b50 <puts@plt>
  400e55:	e8 6d 07 00 00       	callq  4015c7 <read_line>
  400e5a:	48 89 c7             	mov    %rax,%rdi
  400e5d:	e8 9e 00 00 00       	callq  400f00 <phase_1>
  400e62:	e8 86 08 00 00       	callq  4016ed <phase_defused>
  400e67:	bf 18 25 40 00       	mov    $0x402518,%edi
  400e6c:	e8 df fc ff ff       	callq  400b50 <puts@plt>
  400e71:	e8 51 07 00 00       	callq  4015c7 <read_line>
  400e76:	48 89 c7             	mov    %rax,%rdi
  400e79:	e8 9e 00 00 00       	callq  400f1c <phase_2>
  400e7e:	e8 6a 08 00 00       	callq  4016ed <phase_defused>
  400e83:	bf 59 24 40 00       	mov    $0x402459,%edi
  400e88:	e8 c3 fc ff ff       	callq  400b50 <puts@plt>
  400e8d:	e8 35 07 00 00       	callq  4015c7 <read_line>
  400e92:	48 89 c7             	mov    %rax,%rdi
  400e95:	e8 c6 00 00 00       	callq  400f60 <phase_3>
  400e9a:	e8 4e 08 00 00       	callq  4016ed <phase_defused>
  400e9f:	bf 77 24 40 00       	mov    $0x402477,%edi
  400ea4:	e8 a7 fc ff ff       	callq  400b50 <puts@plt>
  400ea9:	e8 19 07 00 00       	callq  4015c7 <read_line>
  400eae:	48 89 c7             	mov    %rax,%rdi
  400eb1:	e8 74 01 00 00       	callq  40102a <phase_4>
  400eb6:	e8 32 08 00 00       	callq  4016ed <phase_defused>
  400ebb:	bf 48 25 40 00       	mov    $0x402548,%edi
  400ec0:	e8 8b fc ff ff       	callq  400b50 <puts@plt>
  400ec5:	e8 fd 06 00 00       	callq  4015c7 <read_line>
  400eca:	48 89 c7             	mov    %rax,%rdi
  400ecd:	e8 b5 01 00 00       	callq  401087 <phase_5>
  400ed2:	e8 16 08 00 00       	callq  4016ed <phase_defused>
  400ed7:	bf 86 24 40 00       	mov    $0x402486,%edi
  400edc:	e8 6f fc ff ff       	callq  400b50 <puts@plt>
  400ee1:	e8 e1 06 00 00       	callq  4015c7 <read_line>
  400ee6:	48 89 c7             	mov    %rax,%rdi
  400ee9:	e8 f4 01 00 00       	callq  4010e2 <phase_6>
  400eee:	e8 fa 07 00 00       	callq  4016ed <phase_defused>
  400ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef8:	5b                   	pop    %rbx
  400ef9:	c3                   	retq   
  400efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f00 <phase_1>:
  400f00:	48 83 ec 08          	sub    $0x8,%rsp
  400f04:	be 6c 25 40 00       	mov    $0x40256c,%esi
  400f09:	e8 d8 03 00 00       	callq  4012e6 <strings_not_equal>
  400f0e:	85 c0                	test   %eax,%eax
  400f10:	74 05                	je     400f17 <phase_1+0x17>
  400f12:	e8 38 06 00 00       	callq  40154f <explode_bomb>
  400f17:	48 83 c4 08          	add    $0x8,%rsp
  400f1b:	c3                   	retq   

0000000000400f1c <phase_2>:
  400f1c:	53                   	push   %rbx
  400f1d:	48 83 ec 20          	sub    $0x20,%rsp
  400f21:	48 89 e6             	mov    %rsp,%rsi
  400f24:	e8 5c 06 00 00       	callq  401585 <read_six_numbers>
  400f29:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  400f2d:	74 05                	je     400f34 <phase_2+0x18>
  400f2f:	e8 1b 06 00 00       	callq  40154f <explode_bomb>
  400f34:	bb 01 00 00 00       	mov    $0x1,%ebx
  400f39:	eb 1a                	jmp    400f55 <phase_2+0x39>
  400f3b:	48 63 d3             	movslq %ebx,%rdx
  400f3e:	8d 43 ff             	lea    -0x1(%rbx),%eax
  400f41:	48 98                	cltq   
  400f43:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  400f46:	01 c0                	add    %eax,%eax
  400f48:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
  400f4b:	74 05                	je     400f52 <phase_2+0x36>
  400f4d:	e8 fd 05 00 00       	callq  40154f <explode_bomb>
  400f52:	83 c3 01             	add    $0x1,%ebx
  400f55:	83 fb 05             	cmp    $0x5,%ebx
  400f58:	7e e1                	jle    400f3b <phase_2+0x1f>
  400f5a:	48 83 c4 20          	add    $0x20,%rsp
  400f5e:	5b                   	pop    %rbx
  400f5f:	c3                   	retq   

0000000000400f60 <phase_3>:
  400f60:	48 83 ec 18          	sub    $0x18,%rsp
  400f64:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  400f69:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400f6e:	be 7e 28 40 00       	mov    $0x40287e,%esi
  400f73:	b8 00 00 00 00       	mov    $0x0,%eax
  400f78:	e8 b3 fc ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  400f7d:	83 f8 01             	cmp    $0x1,%eax
  400f80:	7f 05                	jg     400f87 <phase_3+0x27>
  400f82:	e8 c8 05 00 00       	callq  40154f <explode_bomb>
  400f87:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400f8c:	77 3c                	ja     400fca <phase_3+0x6a>
  400f8e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400f92:	ff 24 c5 90 25 40 00 	jmpq   *0x402590(,%rax,8)
  400f99:	b8 b6 03 00 00       	mov    $0x3b6,%eax
  400f9e:	eb 3b                	jmp    400fdb <phase_3+0x7b>
  400fa0:	b8 ea 02 00 00       	mov    $0x2ea,%eax
  400fa5:	eb 34                	jmp    400fdb <phase_3+0x7b>
  400fa7:	b8 8c 02 00 00       	mov    $0x28c,%eax
  400fac:	eb 2d                	jmp    400fdb <phase_3+0x7b>
  400fae:	b8 25 03 00 00       	mov    $0x325,%eax
  400fb3:	eb 26                	jmp    400fdb <phase_3+0x7b>
  400fb5:	b8 39 01 00 00       	mov    $0x139,%eax
  400fba:	eb 1f                	jmp    400fdb <phase_3+0x7b>
  400fbc:	b8 9e 01 00 00       	mov    $0x19e,%eax
  400fc1:	eb 18                	jmp    400fdb <phase_3+0x7b>
  400fc3:	b8 e7 03 00 00       	mov    $0x3e7,%eax
  400fc8:	eb 11                	jmp    400fdb <phase_3+0x7b>
  400fca:	e8 80 05 00 00       	callq  40154f <explode_bomb>
  400fcf:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd4:	eb 05                	jmp    400fdb <phase_3+0x7b>
  400fd6:	b8 c4 02 00 00       	mov    $0x2c4,%eax
  400fdb:	3b 44 24 08          	cmp    0x8(%rsp),%eax
  400fdf:	74 05                	je     400fe6 <phase_3+0x86>
  400fe1:	e8 69 05 00 00       	callq  40154f <explode_bomb>
  400fe6:	48 83 c4 18          	add    $0x18,%rsp
  400fea:	c3                   	retq   

0000000000400feb <func4>:
  400feb:	48 83 ec 08          	sub    $0x8,%rsp
  400fef:	89 d0                	mov    %edx,%eax
  400ff1:	29 f0                	sub    %esi,%eax
  400ff3:	89 c1                	mov    %eax,%ecx
  400ff5:	c1 e9 1f             	shr    $0x1f,%ecx
  400ff8:	01 c8                	add    %ecx,%eax
  400ffa:	d1 f8                	sar    %eax
  400ffc:	01 f0                	add    %esi,%eax
  400ffe:	39 f8                	cmp    %edi,%eax
  401000:	7e 0c                	jle    40100e <func4+0x23>
  401002:	8d 50 ff             	lea    -0x1(%rax),%edx
  401005:	e8 e1 ff ff ff       	callq  400feb <func4>
  40100a:	01 c0                	add    %eax,%eax
  40100c:	eb 17                	jmp    401025 <func4+0x3a>
  40100e:	39 f8                	cmp    %edi,%eax
  401010:	7d 0e                	jge    401020 <func4+0x35>
  401012:	8d 70 01             	lea    0x1(%rax),%esi
  401015:	e8 d1 ff ff ff       	callq  400feb <func4>
  40101a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  40101e:	eb 05                	jmp    401025 <func4+0x3a>
  401020:	b8 00 00 00 00       	mov    $0x0,%eax
  401025:	48 83 c4 08          	add    $0x8,%rsp
  401029:	c3                   	retq   

000000000040102a <phase_4>:
  40102a:	48 83 ec 18          	sub    $0x18,%rsp
  40102e:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  401033:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401038:	be 7e 28 40 00       	mov    $0x40287e,%esi
  40103d:	b8 00 00 00 00       	mov    $0x0,%eax
  401042:	e8 e9 fb ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401047:	83 f8 02             	cmp    $0x2,%eax
  40104a:	75 0d                	jne    401059 <phase_4+0x2f>
  40104c:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401050:	85 c0                	test   %eax,%eax
  401052:	78 05                	js     401059 <phase_4+0x2f>
  401054:	83 f8 0e             	cmp    $0xe,%eax
  401057:	7e 05                	jle    40105e <phase_4+0x34>
  401059:	e8 f1 04 00 00       	callq  40154f <explode_bomb>
  40105e:	ba 0e 00 00 00       	mov    $0xe,%edx
  401063:	be 00 00 00 00       	mov    $0x0,%esi
  401068:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
  40106c:	e8 7a ff ff ff       	callq  400feb <func4>
  401071:	83 f8 02             	cmp    $0x2,%eax
  401074:	75 07                	jne    40107d <phase_4+0x53>
  401076:	83 7c 24 08 02       	cmpl   $0x2,0x8(%rsp)
  40107b:	74 05                	je     401082 <phase_4+0x58>
  40107d:	e8 cd 04 00 00       	callq  40154f <explode_bomb>
  401082:	48 83 c4 18          	add    $0x18,%rsp
  401086:	c3                   	retq   

0000000000401087 <phase_5>:
  401087:	53                   	push   %rbx
  401088:	48 83 ec 10          	sub    $0x10,%rsp
  40108c:	48 89 fb             	mov    %rdi,%rbx
  40108f:	e8 3d 02 00 00       	callq  4012d1 <string_length>
  401094:	83 f8 06             	cmp    $0x6,%eax
  401097:	74 05                	je     40109e <phase_5+0x17>
  401099:	e8 b1 04 00 00       	callq  40154f <explode_bomb>
  40109e:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a3:	eb 17                	jmp    4010bc <phase_5+0x35>
  4010a5:	48 63 d0             	movslq %eax,%rdx
  4010a8:	0f b6 0c 13          	movzbl (%rbx,%rdx,1),%ecx
  4010ac:	83 e1 0f             	and    $0xf,%ecx
  4010af:	0f b6 89 d0 25 40 00 	movzbl 0x4025d0(%rcx),%ecx
  4010b6:	88 0c 14             	mov    %cl,(%rsp,%rdx,1)
  4010b9:	83 c0 01             	add    $0x1,%eax
  4010bc:	83 f8 05             	cmp    $0x5,%eax
  4010bf:	7e e4                	jle    4010a5 <phase_5+0x1e>
  4010c1:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  4010c6:	be 80 25 40 00       	mov    $0x402580,%esi
  4010cb:	48 89 e7             	mov    %rsp,%rdi
  4010ce:	e8 13 02 00 00       	callq  4012e6 <strings_not_equal>
  4010d3:	85 c0                	test   %eax,%eax
  4010d5:	74 05                	je     4010dc <phase_5+0x55>
  4010d7:	e8 73 04 00 00       	callq  40154f <explode_bomb>
  4010dc:	48 83 c4 10          	add    $0x10,%rsp
  4010e0:	5b                   	pop    %rbx
  4010e1:	c3                   	retq   

00000000004010e2 <phase_6>:
  4010e2:	41 54                	push   %r12
  4010e4:	55                   	push   %rbp
  4010e5:	53                   	push   %rbx
  4010e6:	48 83 ec 50          	sub    $0x50,%rsp
  4010ea:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  4010ef:	e8 91 04 00 00       	callq  401585 <read_six_numbers>
  4010f4:	bd 00 00 00 00       	mov    $0x0,%ebp
  4010f9:	eb 3d                	jmp    401138 <phase_6+0x56>
  4010fb:	48 63 c5             	movslq %ebp,%rax
  4010fe:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  401102:	83 e8 01             	sub    $0x1,%eax
  401105:	83 f8 05             	cmp    $0x5,%eax
  401108:	76 05                	jbe    40110f <phase_6+0x2d>
  40110a:	e8 40 04 00 00       	callq  40154f <explode_bomb>
  40110f:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401113:	44 89 e3             	mov    %r12d,%ebx
  401116:	48 63 ed             	movslq %ebp,%rbp
  401119:	eb 15                	jmp    401130 <phase_6+0x4e>
  40111b:	48 63 c3             	movslq %ebx,%rax
  40111e:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  401122:	39 44 ac 30          	cmp    %eax,0x30(%rsp,%rbp,4)
  401126:	75 05                	jne    40112d <phase_6+0x4b>
  401128:	e8 22 04 00 00       	callq  40154f <explode_bomb>
  40112d:	83 c3 01             	add    $0x1,%ebx
  401130:	83 fb 05             	cmp    $0x5,%ebx
  401133:	7e e6                	jle    40111b <phase_6+0x39>
  401135:	44 89 e5             	mov    %r12d,%ebp
  401138:	83 fd 05             	cmp    $0x5,%ebp
  40113b:	7e be                	jle    4010fb <phase_6+0x19>
  40113d:	be 00 00 00 00       	mov    $0x0,%esi
  401142:	eb 26                	jmp    40116a <phase_6+0x88>
  401144:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401148:	83 c0 01             	add    $0x1,%eax
  40114b:	eb 0d                	jmp    40115a <phase_6+0x78>
  40114d:	b8 01 00 00 00       	mov    $0x1,%eax
  401152:	ba 00 43 60 00       	mov    $0x604300,%edx
  401157:	48 63 ce             	movslq %esi,%rcx
  40115a:	39 44 8c 30          	cmp    %eax,0x30(%rsp,%rcx,4)
  40115e:	7f e4                	jg     401144 <phase_6+0x62>
  401160:	48 63 c6             	movslq %esi,%rax
  401163:	48 89 14 c4          	mov    %rdx,(%rsp,%rax,8)
  401167:	83 c6 01             	add    $0x1,%esi
  40116a:	83 fe 05             	cmp    $0x5,%esi
  40116d:	7e de                	jle    40114d <phase_6+0x6b>
  40116f:	48 8b 1c 24          	mov    (%rsp),%rbx
  401173:	48 89 d9             	mov    %rbx,%rcx
  401176:	b8 01 00 00 00       	mov    $0x1,%eax
  40117b:	eb 11                	jmp    40118e <phase_6+0xac>
  40117d:	48 63 d0             	movslq %eax,%rdx
  401180:	48 8b 14 d4          	mov    (%rsp,%rdx,8),%rdx
  401184:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  401188:	83 c0 01             	add    $0x1,%eax
  40118b:	48 89 d1             	mov    %rdx,%rcx
  40118e:	83 f8 05             	cmp    $0x5,%eax
  401191:	7e ea                	jle    40117d <phase_6+0x9b>
  401193:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
  40119a:	00 
  40119b:	bd 00 00 00 00       	mov    $0x0,%ebp
  4011a0:	eb 16                	jmp    4011b8 <phase_6+0xd6>
  4011a2:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4011a6:	8b 00                	mov    (%rax),%eax
  4011a8:	39 03                	cmp    %eax,(%rbx)
  4011aa:	7e 05                	jle    4011b1 <phase_6+0xcf>
  4011ac:	e8 9e 03 00 00       	callq  40154f <explode_bomb>
  4011b1:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4011b5:	83 c5 01             	add    $0x1,%ebp
  4011b8:	83 fd 04             	cmp    $0x4,%ebp
  4011bb:	7e e5                	jle    4011a2 <phase_6+0xc0>
  4011bd:	48 83 c4 50          	add    $0x50,%rsp
  4011c1:	5b                   	pop    %rbx
  4011c2:	5d                   	pop    %rbp
  4011c3:	41 5c                	pop    %r12
  4011c5:	c3                   	retq   

00000000004011c6 <fun7>:
  4011c6:	48 83 ec 08          	sub    $0x8,%rsp
  4011ca:	48 85 ff             	test   %rdi,%rdi
  4011cd:	74 26                	je     4011f5 <fun7+0x2f>
  4011cf:	8b 07                	mov    (%rdi),%eax
  4011d1:	39 f0                	cmp    %esi,%eax
  4011d3:	7e 0d                	jle    4011e2 <fun7+0x1c>
  4011d5:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  4011d9:	e8 e8 ff ff ff       	callq  4011c6 <fun7>
  4011de:	01 c0                	add    %eax,%eax
  4011e0:	eb 1f                	jmp    401201 <fun7+0x3b>
  4011e2:	39 f0                	cmp    %esi,%eax
  4011e4:	74 16                	je     4011fc <fun7+0x36>
  4011e6:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  4011ea:	e8 d7 ff ff ff       	callq  4011c6 <fun7>
  4011ef:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  4011f3:	eb 0c                	jmp    401201 <fun7+0x3b>
  4011f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4011fa:	eb 05                	jmp    401201 <fun7+0x3b>
  4011fc:	b8 00 00 00 00       	mov    $0x0,%eax
  401201:	48 83 c4 08          	add    $0x8,%rsp
  401205:	c3                   	retq   

0000000000401206 <secret_phase>:
  401206:	53                   	push   %rbx
  401207:	e8 bb 03 00 00       	callq  4015c7 <read_line>
  40120c:	ba 0a 00 00 00       	mov    $0xa,%edx
  401211:	be 00 00 00 00       	mov    $0x0,%esi
  401216:	48 89 c7             	mov    %rax,%rdi
  401219:	e8 e2 f9 ff ff       	callq  400c00 <strtol@plt>
  40121e:	48 89 c3             	mov    %rax,%rbx
  401221:	8d 40 ff             	lea    -0x1(%rax),%eax
  401224:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  401229:	76 05                	jbe    401230 <secret_phase+0x2a>
  40122b:	e8 1f 03 00 00       	callq  40154f <explode_bomb>
  401230:	89 de                	mov    %ebx,%esi
  401232:	bf 20 41 60 00       	mov    $0x604120,%edi
  401237:	e8 8a ff ff ff       	callq  4011c6 <fun7>
  40123c:	83 f8 03             	cmp    $0x3,%eax
  40123f:	74 05                	je     401246 <secret_phase+0x40>
  401241:	e8 09 03 00 00       	callq  40154f <explode_bomb>
  401246:	bf e0 25 40 00       	mov    $0x4025e0,%edi
  40124b:	e8 00 f9 ff ff       	callq  400b50 <puts@plt>
  401250:	e8 98 04 00 00       	callq  4016ed <phase_defused>
  401255:	5b                   	pop    %rbx
  401256:	c3                   	retq   
  401257:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40125e:	00 00 

0000000000401260 <sig_handler>:
  401260:	48 83 ec 08          	sub    $0x8,%rsp
  401264:	bf 08 26 40 00       	mov    $0x402608,%edi
  401269:	e8 e2 f8 ff ff       	callq  400b50 <puts@plt>
  40126e:	bf 03 00 00 00       	mov    $0x3,%edi
  401273:	e8 28 fa ff ff       	callq  400ca0 <sleep@plt>
  401278:	bf f7 27 40 00       	mov    $0x4027f7,%edi
  40127d:	b8 00 00 00 00       	mov    $0x0,%eax
  401282:	e8 e9 f8 ff ff       	callq  400b70 <printf@plt>
  401287:	48 8b 3d 72 43 20 00 	mov    0x204372(%rip),%rdi        # 605600 <stdout@@GLIBC_2.2.5>
  40128e:	e8 8d f9 ff ff       	callq  400c20 <fflush@plt>
  401293:	bf 01 00 00 00       	mov    $0x1,%edi
  401298:	e8 03 fa ff ff       	callq  400ca0 <sleep@plt>
  40129d:	bf ff 27 40 00       	mov    $0x4027ff,%edi
  4012a2:	e8 a9 f8 ff ff       	callq  400b50 <puts@plt>
  4012a7:	bf 10 00 00 00       	mov    $0x10,%edi
  4012ac:	e8 cf f9 ff ff       	callq  400c80 <exit@plt>

00000000004012b1 <invalid_phase>:
  4012b1:	48 83 ec 08          	sub    $0x8,%rsp
  4012b5:	48 89 fe             	mov    %rdi,%rsi
  4012b8:	bf 07 28 40 00       	mov    $0x402807,%edi
  4012bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4012c2:	e8 a9 f8 ff ff       	callq  400b70 <printf@plt>
  4012c7:	bf 08 00 00 00       	mov    $0x8,%edi
  4012cc:	e8 af f9 ff ff       	callq  400c80 <exit@plt>

00000000004012d1 <string_length>:
  4012d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4012d6:	eb 07                	jmp    4012df <string_length+0xe>
  4012d8:	48 83 c7 01          	add    $0x1,%rdi
  4012dc:	83 c0 01             	add    $0x1,%eax
  4012df:	80 3f 00             	cmpb   $0x0,(%rdi)
  4012e2:	75 f4                	jne    4012d8 <string_length+0x7>
  4012e4:	f3 c3                	repz retq 

00000000004012e6 <strings_not_equal>:
  4012e6:	41 54                	push   %r12
  4012e8:	55                   	push   %rbp
  4012e9:	53                   	push   %rbx
  4012ea:	48 89 fb             	mov    %rdi,%rbx
  4012ed:	48 89 f5             	mov    %rsi,%rbp
  4012f0:	e8 dc ff ff ff       	callq  4012d1 <string_length>
  4012f5:	41 89 c4             	mov    %eax,%r12d
  4012f8:	48 89 ef             	mov    %rbp,%rdi
  4012fb:	e8 d1 ff ff ff       	callq  4012d1 <string_length>
  401300:	41 39 c4             	cmp    %eax,%r12d
  401303:	75 1d                	jne    401322 <strings_not_equal+0x3c>
  401305:	eb 0d                	jmp    401314 <strings_not_equal+0x2e>
  401307:	3a 45 00             	cmp    0x0(%rbp),%al
  40130a:	75 1d                	jne    401329 <strings_not_equal+0x43>
  40130c:	48 83 c3 01          	add    $0x1,%rbx
  401310:	48 83 c5 01          	add    $0x1,%rbp
  401314:	0f b6 03             	movzbl (%rbx),%eax
  401317:	84 c0                	test   %al,%al
  401319:	75 ec                	jne    401307 <strings_not_equal+0x21>
  40131b:	b8 00 00 00 00       	mov    $0x0,%eax
  401320:	eb 0c                	jmp    40132e <strings_not_equal+0x48>
  401322:	b8 01 00 00 00       	mov    $0x1,%eax
  401327:	eb 05                	jmp    40132e <strings_not_equal+0x48>
  401329:	b8 01 00 00 00       	mov    $0x1,%eax
  40132e:	5b                   	pop    %rbx
  40132f:	5d                   	pop    %rbp
  401330:	41 5c                	pop    %r12
  401332:	c3                   	retq   

0000000000401333 <initialize_bomb>:
  401333:	53                   	push   %rbx
  401334:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
  40133b:	be 60 12 40 00       	mov    $0x401260,%esi
  401340:	bf 02 00 00 00       	mov    $0x2,%edi
  401345:	e8 86 f8 ff ff       	callq  400bd0 <signal@plt>
  40134a:	be 40 00 00 00       	mov    $0x40,%esi
  40134f:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401356:	00 
  401357:	e8 04 f9 ff ff       	callq  400c60 <gethostname@plt>
  40135c:	85 c0                	test   %eax,%eax
  40135e:	74 2a                	je     40138a <initialize_bomb+0x57>
  401360:	bf 40 26 40 00       	mov    $0x402640,%edi
  401365:	e8 e6 f7 ff ff       	callq  400b50 <puts@plt>
  40136a:	bf 08 00 00 00       	mov    $0x8,%edi
  40136f:	e8 0c f9 ff ff       	callq  400c80 <exit@plt>
  401374:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  40137b:	00 
  40137c:	e8 9f f7 ff ff       	callq  400b20 <strcasecmp@plt>
  401381:	85 c0                	test   %eax,%eax
  401383:	74 21                	je     4013a6 <initialize_bomb+0x73>
  401385:	83 c3 01             	add    $0x1,%ebx
  401388:	eb 05                	jmp    40138f <initialize_bomb+0x5c>
  40138a:	bb 00 00 00 00       	mov    $0x0,%ebx
  40138f:	48 63 c3             	movslq %ebx,%rax
  401392:	48 8b 3c c5 80 53 60 	mov    0x605380(,%rax,8),%rdi
  401399:	00 
  40139a:	48 85 ff             	test   %rdi,%rdi
  40139d:	75 d5                	jne    401374 <initialize_bomb+0x41>
  40139f:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a4:	eb 05                	jmp    4013ab <initialize_bomb+0x78>
  4013a6:	b8 01 00 00 00       	mov    $0x1,%eax
  4013ab:	85 c0                	test   %eax,%eax
  4013ad:	75 14                	jne    4013c3 <initialize_bomb+0x90>
  4013af:	bf 78 26 40 00       	mov    $0x402678,%edi
  4013b4:	e8 97 f7 ff ff       	callq  400b50 <puts@plt>
  4013b9:	bf 08 00 00 00       	mov    $0x8,%edi
  4013be:	e8 bd f8 ff ff       	callq  400c80 <exit@plt>
  4013c3:	48 89 e7             	mov    %rsp,%rdi
  4013c6:	e8 8a 0d 00 00       	callq  402155 <init_driver>
  4013cb:	85 c0                	test   %eax,%eax
  4013cd:	79 1c                	jns    4013eb <initialize_bomb+0xb8>
  4013cf:	48 89 e6             	mov    %rsp,%rsi
  4013d2:	bf 18 28 40 00       	mov    $0x402818,%edi
  4013d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4013dc:	e8 8f f7 ff ff       	callq  400b70 <printf@plt>
  4013e1:	bf 08 00 00 00       	mov    $0x8,%edi
  4013e6:	e8 95 f8 ff ff       	callq  400c80 <exit@plt>
  4013eb:	48 81 c4 40 20 00 00 	add    $0x2040,%rsp
  4013f2:	5b                   	pop    %rbx
  4013f3:	c3                   	retq   

00000000004013f4 <initialize_bomb_solve>:
  4013f4:	f3 c3                	repz retq 

00000000004013f6 <blank_line>:
  4013f6:	55                   	push   %rbp
  4013f7:	53                   	push   %rbx
  4013f8:	48 83 ec 08          	sub    $0x8,%rsp
  4013fc:	48 89 fb             	mov    %rdi,%rbx
  4013ff:	eb 17                	jmp    401418 <blank_line+0x22>
  401401:	e8 aa f8 ff ff       	callq  400cb0 <__ctype_b_loc@plt>
  401406:	48 8b 00             	mov    (%rax),%rax
  401409:	48 83 c3 01          	add    $0x1,%rbx
  40140d:	48 0f be ed          	movsbq %bpl,%rbp
  401411:	f6 44 68 01 20       	testb  $0x20,0x1(%rax,%rbp,2)
  401416:	74 0f                	je     401427 <blank_line+0x31>
  401418:	0f b6 2b             	movzbl (%rbx),%ebp
  40141b:	40 84 ed             	test   %bpl,%bpl
  40141e:	75 e1                	jne    401401 <blank_line+0xb>
  401420:	b8 01 00 00 00       	mov    $0x1,%eax
  401425:	eb 05                	jmp    40142c <blank_line+0x36>
  401427:	b8 00 00 00 00       	mov    $0x0,%eax
  40142c:	48 83 c4 08          	add    $0x8,%rsp
  401430:	5b                   	pop    %rbx
  401431:	5d                   	pop    %rbp
  401432:	c3                   	retq   

0000000000401433 <skip>:
  401433:	53                   	push   %rbx
  401434:	48 63 05 e1 41 20 00 	movslq 0x2041e1(%rip),%rax        # 60561c <num_input_strings>
  40143b:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40143f:	48 c1 e7 04          	shl    $0x4,%rdi
  401443:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  40144a:	48 8b 15 cf 41 20 00 	mov    0x2041cf(%rip),%rdx        # 605620 <infile>
  401451:	be 50 00 00 00       	mov    $0x50,%esi
  401456:	e8 65 f7 ff ff       	callq  400bc0 <fgets@plt>
  40145b:	48 89 c3             	mov    %rax,%rbx
  40145e:	48 85 c0             	test   %rax,%rax
  401461:	74 0c                	je     40146f <skip+0x3c>
  401463:	48 89 c7             	mov    %rax,%rdi
  401466:	e8 8b ff ff ff       	callq  4013f6 <blank_line>
  40146b:	85 c0                	test   %eax,%eax
  40146d:	75 c5                	jne    401434 <skip+0x1>
  40146f:	48 89 d8             	mov    %rbx,%rax
  401472:	5b                   	pop    %rbx
  401473:	c3                   	retq   

0000000000401474 <send_msg>:
  401474:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  40147b:	41 89 f8             	mov    %edi,%r8d
  40147e:	44 8b 0d 97 41 20 00 	mov    0x204197(%rip),%r9d        # 60561c <num_input_strings>
  401485:	41 8d 41 ff          	lea    -0x1(%r9),%eax
  401489:	48 98                	cltq   
  40148b:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  40148f:	48 c1 e0 04          	shl    $0x4,%rax
  401493:	48 8d b0 40 56 60 00 	lea    0x605640(%rax),%rsi
  40149a:	48 89 f7             	mov    %rsi,%rdi
  40149d:	b8 00 00 00 00       	mov    $0x0,%eax
  4014a2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4014a9:	f2 ae                	repnz scas %es:(%rdi),%al
  4014ab:	48 f7 d1             	not    %rcx
  4014ae:	48 83 c1 63          	add    $0x63,%rcx
  4014b2:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4014b9:	76 14                	jbe    4014cf <send_msg+0x5b>
  4014bb:	bf b0 26 40 00       	mov    $0x4026b0,%edi
  4014c0:	e8 ab f6 ff ff       	callq  400b70 <printf@plt>
  4014c5:	bf 08 00 00 00       	mov    $0x8,%edi
  4014ca:	e8 b1 f7 ff ff       	callq  400c80 <exit@plt>
  4014cf:	45 85 c0             	test   %r8d,%r8d
  4014d2:	74 08                	je     4014dc <send_msg+0x68>
  4014d4:	41 b8 32 28 40 00    	mov    $0x402832,%r8d
  4014da:	eb 06                	jmp    4014e2 <send_msg+0x6e>
  4014dc:	41 b8 3a 28 40 00    	mov    $0x40283a,%r8d
  4014e2:	48 89 34 24          	mov    %rsi,(%rsp)
  4014e6:	b9 60 4b 60 00       	mov    $0x604b60,%ecx
  4014eb:	8b 15 6f 3e 20 00    	mov    0x203e6f(%rip),%edx        # 605360 <bomb_id>
  4014f1:	be 43 28 40 00       	mov    $0x402843,%esi
  4014f6:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  4014fd:	00 
  4014fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401503:	e8 68 f7 ff ff       	callq  400c70 <sprintf@plt>
  401508:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  40150d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401513:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  40151a:	00 
  40151b:	ba 60 43 60 00       	mov    $0x604360,%edx
  401520:	be 60 47 60 00       	mov    $0x604760,%esi
  401525:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  40152a:	e8 ef 0d 00 00       	callq  40231e <driver_post>
  40152f:	85 c0                	test   %eax,%eax
  401531:	79 14                	jns    401547 <send_msg+0xd3>
  401533:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401538:	e8 13 f6 ff ff       	callq  400b50 <puts@plt>
  40153d:	bf 00 00 00 00       	mov    $0x0,%edi
  401542:	e8 39 f7 ff ff       	callq  400c80 <exit@plt>
  401547:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40154e:	c3                   	retq   

000000000040154f <explode_bomb>:
  40154f:	48 83 ec 08          	sub    $0x8,%rsp
  401553:	bf 52 28 40 00       	mov    $0x402852,%edi
  401558:	e8 f3 f5 ff ff       	callq  400b50 <puts@plt>
  40155d:	bf 5b 28 40 00       	mov    $0x40285b,%edi
  401562:	e8 e9 f5 ff ff       	callq  400b50 <puts@plt>
  401567:	bf 00 00 00 00       	mov    $0x0,%edi
  40156c:	e8 03 ff ff ff       	callq  401474 <send_msg>
  401571:	bf d8 26 40 00       	mov    $0x4026d8,%edi
  401576:	e8 d5 f5 ff ff       	callq  400b50 <puts@plt>
  40157b:	bf 08 00 00 00       	mov    $0x8,%edi
  401580:	e8 fb f6 ff ff       	callq  400c80 <exit@plt>

0000000000401585 <read_six_numbers>:
  401585:	48 83 ec 18          	sub    $0x18,%rsp
  401589:	48 89 f2             	mov    %rsi,%rdx
  40158c:	48 8d 76 14          	lea    0x14(%rsi),%rsi
  401590:	48 8d 42 10          	lea    0x10(%rdx),%rax
  401594:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  401598:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  40159d:	48 89 04 24          	mov    %rax,(%rsp)
  4015a1:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  4015a5:	4c 8d 42 08          	lea    0x8(%rdx),%r8
  4015a9:	be 72 28 40 00       	mov    $0x402872,%esi
  4015ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4015b3:	e8 78 f6 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  4015b8:	83 f8 05             	cmp    $0x5,%eax
  4015bb:	7f 05                	jg     4015c2 <read_six_numbers+0x3d>
  4015bd:	e8 8d ff ff ff       	callq  40154f <explode_bomb>
  4015c2:	48 83 c4 18          	add    $0x18,%rsp
  4015c6:	c3                   	retq   

00000000004015c7 <read_line>:
  4015c7:	48 83 ec 08          	sub    $0x8,%rsp
  4015cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4015d0:	e8 5e fe ff ff       	callq  401433 <skip>
  4015d5:	48 85 c0             	test   %rax,%rax
  4015d8:	75 6e                	jne    401648 <read_line+0x81>
  4015da:	48 8b 05 27 40 20 00 	mov    0x204027(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  4015e1:	48 39 05 38 40 20 00 	cmp    %rax,0x204038(%rip)        # 605620 <infile>
  4015e8:	75 14                	jne    4015fe <read_line+0x37>
  4015ea:	bf 84 28 40 00       	mov    $0x402884,%edi
  4015ef:	e8 5c f5 ff ff       	callq  400b50 <puts@plt>
  4015f4:	bf 08 00 00 00       	mov    $0x8,%edi
  4015f9:	e8 82 f6 ff ff       	callq  400c80 <exit@plt>
  4015fe:	bf a2 28 40 00       	mov    $0x4028a2,%edi
  401603:	e8 08 f5 ff ff       	callq  400b10 <getenv@plt>
  401608:	48 85 c0             	test   %rax,%rax
  40160b:	74 0a                	je     401617 <read_line+0x50>
  40160d:	bf 00 00 00 00       	mov    $0x0,%edi
  401612:	e8 69 f6 ff ff       	callq  400c80 <exit@plt>
  401617:	48 8b 05 ea 3f 20 00 	mov    0x203fea(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  40161e:	48 89 05 fb 3f 20 00 	mov    %rax,0x203ffb(%rip)        # 605620 <infile>
  401625:	b8 00 00 00 00       	mov    $0x0,%eax
  40162a:	e8 04 fe ff ff       	callq  401433 <skip>
  40162f:	48 85 c0             	test   %rax,%rax
  401632:	75 14                	jne    401648 <read_line+0x81>
  401634:	bf 84 28 40 00       	mov    $0x402884,%edi
  401639:	e8 12 f5 ff ff       	callq  400b50 <puts@plt>
  40163e:	bf 00 00 00 00       	mov    $0x0,%edi
  401643:	e8 38 f6 ff ff       	callq  400c80 <exit@plt>
  401648:	8b 15 ce 3f 20 00    	mov    0x203fce(%rip),%edx        # 60561c <num_input_strings>
  40164e:	48 63 c2             	movslq %edx,%rax
  401651:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401655:	48 c1 e0 04          	shl    $0x4,%rax
  401659:	4c 8d 80 40 56 60 00 	lea    0x605640(%rax),%r8
  401660:	4c 89 c7             	mov    %r8,%rdi
  401663:	b8 00 00 00 00       	mov    $0x0,%eax
  401668:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40166f:	f2 ae                	repnz scas %es:(%rdi),%al
  401671:	48 f7 d1             	not    %rcx
  401674:	48 83 e9 01          	sub    $0x1,%rcx
  401678:	83 f9 4e             	cmp    $0x4e,%ecx
  40167b:	7e 46                	jle    4016c3 <read_line+0xfc>
  40167d:	bf ad 28 40 00       	mov    $0x4028ad,%edi
  401682:	e8 c9 f4 ff ff       	callq  400b50 <puts@plt>
  401687:	8b 05 8f 3f 20 00    	mov    0x203f8f(%rip),%eax        # 60561c <num_input_strings>
  40168d:	8d 50 01             	lea    0x1(%rax),%edx
  401690:	89 15 86 3f 20 00    	mov    %edx,0x203f86(%rip)        # 60561c <num_input_strings>
  401696:	48 98                	cltq   
  401698:	48 6b c0 50          	imul   $0x50,%rax,%rax
  40169c:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  4016a3:	75 6e 63 
  4016a6:	48 89 b8 40 56 60 00 	mov    %rdi,0x605640(%rax)
  4016ad:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  4016b4:	2a 2a 00 
  4016b7:	48 89 b8 48 56 60 00 	mov    %rdi,0x605648(%rax)
  4016be:	e8 8c fe ff ff       	callq  40154f <explode_bomb>
  4016c3:	83 e9 01             	sub    $0x1,%ecx
  4016c6:	48 63 c9             	movslq %ecx,%rcx
  4016c9:	48 63 c2             	movslq %edx,%rax
  4016cc:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  4016d0:	48 c1 e6 04          	shl    $0x4,%rsi
  4016d4:	c6 84 31 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rsi,1)
  4016db:	00 
  4016dc:	83 c2 01             	add    $0x1,%edx
  4016df:	89 15 37 3f 20 00    	mov    %edx,0x203f37(%rip)        # 60561c <num_input_strings>
  4016e5:	4c 89 c0             	mov    %r8,%rax
  4016e8:	48 83 c4 08          	add    $0x8,%rsp
  4016ec:	c3                   	retq   

00000000004016ed <phase_defused>:
  4016ed:	48 83 ec 68          	sub    $0x68,%rsp
  4016f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4016f6:	e8 79 fd ff ff       	callq  401474 <send_msg>
  4016fb:	83 3d 1a 3f 20 00 06 	cmpl   $0x6,0x203f1a(%rip)        # 60561c <num_input_strings>
  401702:	75 6d                	jne    401771 <phase_defused+0x84>
  401704:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401709:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40170e:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401713:	be c8 28 40 00       	mov    $0x4028c8,%esi
  401718:	bf 30 57 60 00       	mov    $0x605730,%edi
  40171d:	b8 00 00 00 00       	mov    $0x0,%eax
  401722:	e8 09 f5 ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401727:	83 f8 03             	cmp    $0x3,%eax
  40172a:	75 31                	jne    40175d <phase_defused+0x70>
  40172c:	be d1 28 40 00       	mov    $0x4028d1,%esi
  401731:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401736:	e8 ab fb ff ff       	callq  4012e6 <strings_not_equal>
  40173b:	85 c0                	test   %eax,%eax
  40173d:	75 1e                	jne    40175d <phase_defused+0x70>
  40173f:	bf 00 27 40 00       	mov    $0x402700,%edi
  401744:	e8 07 f4 ff ff       	callq  400b50 <puts@plt>
  401749:	bf 28 27 40 00       	mov    $0x402728,%edi
  40174e:	e8 fd f3 ff ff       	callq  400b50 <puts@plt>
  401753:	b8 00 00 00 00       	mov    $0x0,%eax
  401758:	e8 a9 fa ff ff       	callq  401206 <secret_phase>
  40175d:	bf 60 27 40 00       	mov    $0x402760,%edi
  401762:	e8 e9 f3 ff ff       	callq  400b50 <puts@plt>
  401767:	bf 90 27 40 00       	mov    $0x402790,%edi
  40176c:	e8 df f3 ff ff       	callq  400b50 <puts@plt>
  401771:	48 83 c4 68          	add    $0x68,%rsp
  401775:	c3                   	retq   
  401776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40177d:	00 00 00 

0000000000401780 <rio_readinitb>:
  401780:	89 37                	mov    %esi,(%rdi)
  401782:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401789:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40178d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401791:	c3                   	retq   

0000000000401792 <sigalrm_handler>:
  401792:	48 83 ec 08          	sub    $0x8,%rsp
  401796:	ba 00 00 00 00       	mov    $0x0,%edx
  40179b:	be 10 2a 40 00       	mov    $0x402a10,%esi
  4017a0:	48 8b 3d 69 3e 20 00 	mov    0x203e69(%rip),%rdi        # 605610 <stderr@@GLIBC_2.2.5>
  4017a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ac:	e8 3f f4 ff ff       	callq  400bf0 <fprintf@plt>
  4017b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4017b6:	e8 c5 f4 ff ff       	callq  400c80 <exit@plt>

00000000004017bb <urlencode>:
  4017bb:	41 54                	push   %r12
  4017bd:	55                   	push   %rbp
  4017be:	53                   	push   %rbx
  4017bf:	48 83 ec 10          	sub    $0x10,%rsp
  4017c3:	48 89 fb             	mov    %rdi,%rbx
  4017c6:	48 89 f5             	mov    %rsi,%rbp
  4017c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4017ce:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4017d5:	f2 ae                	repnz scas %es:(%rdi),%al
  4017d7:	48 f7 d1             	not    %rcx
  4017da:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4017dd:	e9 93 00 00 00       	jmpq   401875 <urlencode+0xba>
  4017e2:	0f b6 13             	movzbl (%rbx),%edx
  4017e5:	80 fa 2a             	cmp    $0x2a,%dl
  4017e8:	0f 94 c1             	sete   %cl
  4017eb:	80 fa 2d             	cmp    $0x2d,%dl
  4017ee:	0f 94 c0             	sete   %al
  4017f1:	08 c1                	or     %al,%cl
  4017f3:	75 1f                	jne    401814 <urlencode+0x59>
  4017f5:	80 fa 2e             	cmp    $0x2e,%dl
  4017f8:	74 1a                	je     401814 <urlencode+0x59>
  4017fa:	80 fa 5f             	cmp    $0x5f,%dl
  4017fd:	74 15                	je     401814 <urlencode+0x59>
  4017ff:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401802:	3c 09                	cmp    $0x9,%al
  401804:	76 0e                	jbe    401814 <urlencode+0x59>
  401806:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401809:	3c 19                	cmp    $0x19,%al
  40180b:	76 07                	jbe    401814 <urlencode+0x59>
  40180d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401810:	3c 19                	cmp    $0x19,%al
  401812:	77 09                	ja     40181d <urlencode+0x62>
  401814:	88 55 00             	mov    %dl,0x0(%rbp)
  401817:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40181b:	eb 51                	jmp    40186e <urlencode+0xb3>
  40181d:	80 fa 20             	cmp    $0x20,%dl
  401820:	75 0a                	jne    40182c <urlencode+0x71>
  401822:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401826:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40182a:	eb 42                	jmp    40186e <urlencode+0xb3>
  40182c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40182f:	3c 5f                	cmp    $0x5f,%al
  401831:	0f 96 c1             	setbe  %cl
  401834:	80 fa 09             	cmp    $0x9,%dl
  401837:	0f 94 c0             	sete   %al
  40183a:	08 c1                	or     %al,%cl
  40183c:	74 45                	je     401883 <urlencode+0xc8>
  40183e:	0f b6 d2             	movzbl %dl,%edx
  401841:	be c8 2a 40 00       	mov    $0x402ac8,%esi
  401846:	48 89 e7             	mov    %rsp,%rdi
  401849:	b8 00 00 00 00       	mov    $0x0,%eax
  40184e:	e8 1d f4 ff ff       	callq  400c70 <sprintf@plt>
  401853:	0f b6 04 24          	movzbl (%rsp),%eax
  401857:	88 45 00             	mov    %al,0x0(%rbp)
  40185a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40185f:	88 45 01             	mov    %al,0x1(%rbp)
  401862:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401867:	88 45 02             	mov    %al,0x2(%rbp)
  40186a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40186e:	48 83 c3 01          	add    $0x1,%rbx
  401872:	44 89 e0             	mov    %r12d,%eax
  401875:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401879:	85 c0                	test   %eax,%eax
  40187b:	0f 85 61 ff ff ff    	jne    4017e2 <urlencode+0x27>
  401881:	eb 05                	jmp    401888 <urlencode+0xcd>
  401883:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401888:	48 83 c4 10          	add    $0x10,%rsp
  40188c:	5b                   	pop    %rbx
  40188d:	5d                   	pop    %rbp
  40188e:	41 5c                	pop    %r12
  401890:	c3                   	retq   

0000000000401891 <rio_writen>:
  401891:	41 55                	push   %r13
  401893:	41 54                	push   %r12
  401895:	55                   	push   %rbp
  401896:	53                   	push   %rbx
  401897:	48 83 ec 08          	sub    $0x8,%rsp
  40189b:	41 89 fc             	mov    %edi,%r12d
  40189e:	48 89 f5             	mov    %rsi,%rbp
  4018a1:	49 89 d5             	mov    %rdx,%r13
  4018a4:	48 89 d3             	mov    %rdx,%rbx
  4018a7:	eb 28                	jmp    4018d1 <rio_writen+0x40>
  4018a9:	48 89 da             	mov    %rbx,%rdx
  4018ac:	48 89 ee             	mov    %rbp,%rsi
  4018af:	44 89 e7             	mov    %r12d,%edi
  4018b2:	e8 a9 f2 ff ff       	callq  400b60 <write@plt>
  4018b7:	48 85 c0             	test   %rax,%rax
  4018ba:	7f 0f                	jg     4018cb <rio_writen+0x3a>
  4018bc:	e8 6f f2 ff ff       	callq  400b30 <__errno_location@plt>
  4018c1:	83 38 04             	cmpl   $0x4,(%rax)
  4018c4:	75 15                	jne    4018db <rio_writen+0x4a>
  4018c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4018cb:	48 29 c3             	sub    %rax,%rbx
  4018ce:	48 01 c5             	add    %rax,%rbp
  4018d1:	48 85 db             	test   %rbx,%rbx
  4018d4:	75 d3                	jne    4018a9 <rio_writen+0x18>
  4018d6:	4c 89 e8             	mov    %r13,%rax
  4018d9:	eb 07                	jmp    4018e2 <rio_writen+0x51>
  4018db:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4018e2:	48 83 c4 08          	add    $0x8,%rsp
  4018e6:	5b                   	pop    %rbx
  4018e7:	5d                   	pop    %rbp
  4018e8:	41 5c                	pop    %r12
  4018ea:	41 5d                	pop    %r13
  4018ec:	c3                   	retq   

00000000004018ed <rio_read>:
  4018ed:	41 56                	push   %r14
  4018ef:	41 55                	push   %r13
  4018f1:	41 54                	push   %r12
  4018f3:	55                   	push   %rbp
  4018f4:	53                   	push   %rbx
  4018f5:	48 89 fb             	mov    %rdi,%rbx
  4018f8:	49 89 f6             	mov    %rsi,%r14
  4018fb:	49 89 d5             	mov    %rdx,%r13
  4018fe:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401902:	eb 2a                	jmp    40192e <rio_read+0x41>
  401904:	ba 00 20 00 00       	mov    $0x2000,%edx
  401909:	4c 89 e6             	mov    %r12,%rsi
  40190c:	8b 3b                	mov    (%rbx),%edi
  40190e:	e8 8d f2 ff ff       	callq  400ba0 <read@plt>
  401913:	89 43 04             	mov    %eax,0x4(%rbx)
  401916:	85 c0                	test   %eax,%eax
  401918:	79 0c                	jns    401926 <rio_read+0x39>
  40191a:	e8 11 f2 ff ff       	callq  400b30 <__errno_location@plt>
  40191f:	83 38 04             	cmpl   $0x4,(%rax)
  401922:	74 0a                	je     40192e <rio_read+0x41>
  401924:	eb 37                	jmp    40195d <rio_read+0x70>
  401926:	85 c0                	test   %eax,%eax
  401928:	74 3c                	je     401966 <rio_read+0x79>
  40192a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40192e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401931:	85 ed                	test   %ebp,%ebp
  401933:	7e cf                	jle    401904 <rio_read+0x17>
  401935:	89 e8                	mov    %ebp,%eax
  401937:	4c 39 e8             	cmp    %r13,%rax
  40193a:	72 03                	jb     40193f <rio_read+0x52>
  40193c:	44 89 ed             	mov    %r13d,%ebp
  40193f:	4c 63 e5             	movslq %ebp,%r12
  401942:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401946:	4c 89 e2             	mov    %r12,%rdx
  401949:	4c 89 f7             	mov    %r14,%rdi
  40194c:	e8 bf f2 ff ff       	callq  400c10 <memcpy@plt>
  401951:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401955:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401958:	4c 89 e0             	mov    %r12,%rax
  40195b:	eb 0e                	jmp    40196b <rio_read+0x7e>
  40195d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401964:	eb 05                	jmp    40196b <rio_read+0x7e>
  401966:	b8 00 00 00 00       	mov    $0x0,%eax
  40196b:	5b                   	pop    %rbx
  40196c:	5d                   	pop    %rbp
  40196d:	41 5c                	pop    %r12
  40196f:	41 5d                	pop    %r13
  401971:	41 5e                	pop    %r14
  401973:	c3                   	retq   

0000000000401974 <rio_readlineb>:
  401974:	41 55                	push   %r13
  401976:	41 54                	push   %r12
  401978:	55                   	push   %rbp
  401979:	53                   	push   %rbx
  40197a:	48 83 ec 18          	sub    $0x18,%rsp
  40197e:	49 89 fd             	mov    %rdi,%r13
  401981:	48 89 f5             	mov    %rsi,%rbp
  401984:	49 89 d4             	mov    %rdx,%r12
  401987:	bb 01 00 00 00       	mov    $0x1,%ebx
  40198c:	eb 3d                	jmp    4019cb <rio_readlineb+0x57>
  40198e:	ba 01 00 00 00       	mov    $0x1,%edx
  401993:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  401998:	4c 89 ef             	mov    %r13,%rdi
  40199b:	e8 4d ff ff ff       	callq  4018ed <rio_read>
  4019a0:	83 f8 01             	cmp    $0x1,%eax
  4019a3:	75 12                	jne    4019b7 <rio_readlineb+0x43>
  4019a5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4019a9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4019ae:	88 45 00             	mov    %al,0x0(%rbp)
  4019b1:	3c 0a                	cmp    $0xa,%al
  4019b3:	75 0f                	jne    4019c4 <rio_readlineb+0x50>
  4019b5:	eb 1b                	jmp    4019d2 <rio_readlineb+0x5e>
  4019b7:	85 c0                	test   %eax,%eax
  4019b9:	75 23                	jne    4019de <rio_readlineb+0x6a>
  4019bb:	48 83 fb 01          	cmp    $0x1,%rbx
  4019bf:	90                   	nop
  4019c0:	75 13                	jne    4019d5 <rio_readlineb+0x61>
  4019c2:	eb 23                	jmp    4019e7 <rio_readlineb+0x73>
  4019c4:	48 83 c3 01          	add    $0x1,%rbx
  4019c8:	48 89 d5             	mov    %rdx,%rbp
  4019cb:	4c 39 e3             	cmp    %r12,%rbx
  4019ce:	72 be                	jb     40198e <rio_readlineb+0x1a>
  4019d0:	eb 03                	jmp    4019d5 <rio_readlineb+0x61>
  4019d2:	48 89 d5             	mov    %rdx,%rbp
  4019d5:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4019d9:	48 89 d8             	mov    %rbx,%rax
  4019dc:	eb 0e                	jmp    4019ec <rio_readlineb+0x78>
  4019de:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019e5:	eb 05                	jmp    4019ec <rio_readlineb+0x78>
  4019e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4019ec:	48 83 c4 18          	add    $0x18,%rsp
  4019f0:	5b                   	pop    %rbx
  4019f1:	5d                   	pop    %rbp
  4019f2:	41 5c                	pop    %r12
  4019f4:	41 5d                	pop    %r13
  4019f6:	c3                   	retq   

00000000004019f7 <submitr>:
  4019f7:	41 57                	push   %r15
  4019f9:	41 56                	push   %r14
  4019fb:	41 55                	push   %r13
  4019fd:	41 54                	push   %r12
  4019ff:	55                   	push   %rbp
  401a00:	53                   	push   %rbx
  401a01:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  401a08:	49 89 fc             	mov    %rdi,%r12
  401a0b:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  401a0f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  401a14:	49 89 cf             	mov    %rcx,%r15
  401a17:	4d 89 c6             	mov    %r8,%r14
  401a1a:	4d 89 cd             	mov    %r9,%r13
  401a1d:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  401a24:	00 
  401a25:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  401a2c:	00 00 00 00 
  401a30:	ba 00 00 00 00       	mov    $0x0,%edx
  401a35:	be 01 00 00 00       	mov    $0x1,%esi
  401a3a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a3f:	e8 7c f2 ff ff       	callq  400cc0 <socket@plt>
  401a44:	89 c5                	mov    %eax,%ebp
  401a46:	85 c0                	test   %eax,%eax
  401a48:	79 4e                	jns    401a98 <submitr+0xa1>
  401a4a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401a51:	3a 20 43 
  401a54:	48 89 03             	mov    %rax,(%rbx)
  401a57:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401a5e:	20 75 6e 
  401a61:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401a65:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401a6c:	74 6f 20 
  401a6f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401a73:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401a7a:	65 20 73 
  401a7d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401a81:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  401a88:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  401a8e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401a93:	e9 83 06 00 00       	jmpq   40211b <submitr+0x724>
  401a98:	4c 89 e7             	mov    %r12,%rdi
  401a9b:	e8 40 f1 ff ff       	callq  400be0 <gethostbyname@plt>
  401aa0:	48 85 c0             	test   %rax,%rax
  401aa3:	75 75                	jne    401b1a <submitr+0x123>
  401aa5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401aac:	3a 20 44 
  401aaf:	48 89 03             	mov    %rax,(%rbx)
  401ab2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401ab9:	20 75 6e 
  401abc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ac0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ac7:	74 6f 20 
  401aca:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ace:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401ad5:	76 65 20 
  401ad8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401adc:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401ae3:	61 62 20 
  401ae6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401aea:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401af1:	72 20 61 
  401af4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401af8:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  401aff:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  401b05:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  401b09:	89 ef                	mov    %ebp,%edi
  401b0b:	e8 80 f0 ff ff       	callq  400b90 <close@plt>
  401b10:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b15:	e9 01 06 00 00       	jmpq   40211b <submitr+0x724>
  401b1a:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  401b21:	00 00 00 00 00 
  401b26:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  401b2d:	00 00 00 00 00 
  401b32:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  401b39:	00 02 00 
  401b3c:	48 8b 48 18          	mov    0x18(%rax),%rcx
  401b40:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b44:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  401b4b:	00 
  401b4c:	48 8b 39             	mov    (%rcx),%rdi
  401b4f:	e8 ec f0 ff ff       	callq  400c40 <bcopy@plt>
  401b54:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  401b59:	66 c1 c8 08          	ror    $0x8,%ax
  401b5d:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  401b64:	00 
  401b65:	ba 10 00 00 00       	mov    $0x10,%edx
  401b6a:	48 8d b4 24 40 a0 00 	lea    0xa040(%rsp),%rsi
  401b71:	00 
  401b72:	89 ef                	mov    %ebp,%edi
  401b74:	e8 17 f1 ff ff       	callq  400c90 <connect@plt>
  401b79:	85 c0                	test   %eax,%eax
  401b7b:	79 67                	jns    401be4 <submitr+0x1ed>
  401b7d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401b84:	3a 20 55 
  401b87:	48 89 03             	mov    %rax,(%rbx)
  401b8a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401b91:	20 74 6f 
  401b94:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401b98:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401b9f:	65 63 74 
  401ba2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ba6:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401bad:	68 65 20 
  401bb0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401bb4:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401bbb:	61 62 20 
  401bbe:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401bc2:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  401bc9:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  401bcf:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  401bd3:	89 ef                	mov    %ebp,%edi
  401bd5:	e8 b6 ef ff ff       	callq  400b90 <close@plt>
  401bda:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401bdf:	e9 37 05 00 00       	jmpq   40211b <submitr+0x724>
  401be4:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401beb:	4c 89 ef             	mov    %r13,%rdi
  401bee:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf3:	48 89 d1             	mov    %rdx,%rcx
  401bf6:	f2 ae                	repnz scas %es:(%rdi),%al
  401bf8:	48 f7 d1             	not    %rcx
  401bfb:	48 89 ce             	mov    %rcx,%rsi
  401bfe:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401c03:	48 89 d1             	mov    %rdx,%rcx
  401c06:	f2 ae                	repnz scas %es:(%rdi),%al
  401c08:	48 f7 d1             	not    %rcx
  401c0b:	49 89 c8             	mov    %rcx,%r8
  401c0e:	4c 89 ff             	mov    %r15,%rdi
  401c11:	48 89 d1             	mov    %rdx,%rcx
  401c14:	f2 ae                	repnz scas %es:(%rdi),%al
  401c16:	49 29 c8             	sub    %rcx,%r8
  401c19:	4c 89 f7             	mov    %r14,%rdi
  401c1c:	48 89 d1             	mov    %rdx,%rcx
  401c1f:	f2 ae                	repnz scas %es:(%rdi),%al
  401c21:	49 29 c8             	sub    %rcx,%r8
  401c24:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401c29:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  401c2e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401c34:	76 72                	jbe    401ca8 <submitr+0x2b1>
  401c36:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401c3d:	3a 20 52 
  401c40:	48 89 03             	mov    %rax,(%rbx)
  401c43:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401c4a:	20 73 74 
  401c4d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401c51:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401c58:	74 6f 6f 
  401c5b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401c5f:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401c66:	65 2e 20 
  401c69:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401c6d:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401c74:	61 73 65 
  401c77:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401c7b:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401c82:	49 54 52 
  401c85:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401c89:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401c90:	55 46 00 
  401c93:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401c97:	89 ef                	mov    %ebp,%edi
  401c99:	e8 f2 ee ff ff       	callq  400b90 <close@plt>
  401c9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ca3:	e9 73 04 00 00       	jmpq   40211b <submitr+0x724>
  401ca8:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  401caf:	00 
  401cb0:	b9 00 04 00 00       	mov    $0x400,%ecx
  401cb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cba:	48 89 f7             	mov    %rsi,%rdi
  401cbd:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401cc0:	4c 89 ef             	mov    %r13,%rdi
  401cc3:	e8 f3 fa ff ff       	callq  4017bb <urlencode>
  401cc8:	85 c0                	test   %eax,%eax
  401cca:	0f 89 8a 00 00 00    	jns    401d5a <submitr+0x363>
  401cd0:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401cd7:	3a 20 52 
  401cda:	48 89 03             	mov    %rax,(%rbx)
  401cdd:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401ce4:	20 73 74 
  401ce7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ceb:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  401cf2:	63 6f 6e 
  401cf5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401cf9:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  401d00:	20 61 6e 
  401d03:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401d07:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  401d0e:	67 61 6c 
  401d11:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401d15:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  401d1c:	6e 70 72 
  401d1f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401d23:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  401d2a:	6c 65 20 
  401d2d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401d31:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  401d38:	63 74 65 
  401d3b:	48 89 43 38          	mov    %rax,0x38(%rbx)
  401d3f:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  401d45:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  401d49:	89 ef                	mov    %ebp,%edi
  401d4b:	e8 40 ee ff ff       	callq  400b90 <close@plt>
  401d50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d55:	e9 c1 03 00 00       	jmpq   40211b <submitr+0x724>
  401d5a:	4c 89 24 24          	mov    %r12,(%rsp)
  401d5e:	4c 8d 8c 24 30 40 00 	lea    0x4030(%rsp),%r9
  401d65:	00 
  401d66:	4d 89 f8             	mov    %r15,%r8
  401d69:	4c 89 f1             	mov    %r14,%rcx
  401d6c:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  401d71:	be 38 2a 40 00       	mov    $0x402a38,%esi
  401d76:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401d7d:	00 
  401d7e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d83:	e8 e8 ee ff ff       	callq  400c70 <sprintf@plt>
  401d88:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401d8f:	00 
  401d90:	b8 00 00 00 00       	mov    $0x0,%eax
  401d95:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401d9c:	f2 ae                	repnz scas %es:(%rdi),%al
  401d9e:	48 f7 d1             	not    %rcx
  401da1:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401da5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401dac:	00 
  401dad:	89 ef                	mov    %ebp,%edi
  401daf:	e8 dd fa ff ff       	callq  401891 <rio_writen>
  401db4:	48 85 c0             	test   %rax,%rax
  401db7:	79 6b                	jns    401e24 <submitr+0x42d>
  401db9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401dc0:	3a 20 43 
  401dc3:	48 89 03             	mov    %rax,(%rbx)
  401dc6:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401dcd:	20 75 6e 
  401dd0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401dd4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401ddb:	74 6f 20 
  401dde:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401de2:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  401de9:	20 74 6f 
  401dec:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401df0:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  401df7:	41 75 74 
  401dfa:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401dfe:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  401e05:	73 65 72 
  401e08:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401e0c:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  401e13:	89 ef                	mov    %ebp,%edi
  401e15:	e8 76 ed ff ff       	callq  400b90 <close@plt>
  401e1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e1f:	e9 f7 02 00 00       	jmpq   40211b <submitr+0x724>
  401e24:	89 ee                	mov    %ebp,%esi
  401e26:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401e2d:	00 
  401e2e:	e8 4d f9 ff ff       	callq  401780 <rio_readinitb>
  401e33:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e38:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401e3f:	00 
  401e40:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401e47:	00 
  401e48:	e8 27 fb ff ff       	callq  401974 <rio_readlineb>
  401e4d:	48 85 c0             	test   %rax,%rax
  401e50:	7f 7f                	jg     401ed1 <submitr+0x4da>
  401e52:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401e59:	3a 20 43 
  401e5c:	48 89 03             	mov    %rax,(%rbx)
  401e5f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401e66:	20 75 6e 
  401e69:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401e6d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401e74:	74 6f 20 
  401e77:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401e7b:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  401e82:	66 69 72 
  401e85:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401e89:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  401e90:	61 64 65 
  401e93:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401e97:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  401e9e:	6d 20 41 
  401ea1:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401ea5:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  401eac:	62 20 73 
  401eaf:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401eb3:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  401eba:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  401ec0:	89 ef                	mov    %ebp,%edi
  401ec2:	e8 c9 ec ff ff       	callq  400b90 <close@plt>
  401ec7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ecc:	e9 4a 02 00 00       	jmpq   40211b <submitr+0x724>
  401ed1:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  401ed6:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  401edd:	00 
  401ede:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  401ee5:	00 
  401ee6:	be cf 2a 40 00       	mov    $0x402acf,%esi
  401eeb:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401ef2:	00 
  401ef3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef8:	e8 33 ed ff ff       	callq  400c30 <__isoc99_sscanf@plt>
  401efd:	e9 95 00 00 00       	jmpq   401f97 <submitr+0x5a0>
  401f02:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f07:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401f0e:	00 
  401f0f:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401f16:	00 
  401f17:	e8 58 fa ff ff       	callq  401974 <rio_readlineb>
  401f1c:	48 85 c0             	test   %rax,%rax
  401f1f:	7f 76                	jg     401f97 <submitr+0x5a0>
  401f21:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401f28:	3a 20 43 
  401f2b:	48 89 03             	mov    %rax,(%rbx)
  401f2e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401f35:	20 75 6e 
  401f38:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401f3c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401f43:	74 6f 20 
  401f46:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401f4a:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  401f51:	68 65 61 
  401f54:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401f58:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  401f5f:	66 72 6f 
  401f62:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401f66:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  401f6d:	6f 6c 61 
  401f70:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401f74:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  401f7b:	76 65 72 
  401f7e:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401f82:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  401f86:	89 ef                	mov    %ebp,%edi
  401f88:	e8 03 ec ff ff       	callq  400b90 <close@plt>
  401f8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f92:	e9 84 01 00 00       	jmpq   40211b <submitr+0x724>
  401f97:	0f b6 84 24 30 60 00 	movzbl 0x6030(%rsp),%eax
  401f9e:	00 
  401f9f:	83 e8 0d             	sub    $0xd,%eax
  401fa2:	75 15                	jne    401fb9 <submitr+0x5c2>
  401fa4:	0f b6 84 24 31 60 00 	movzbl 0x6031(%rsp),%eax
  401fab:	00 
  401fac:	83 e8 0a             	sub    $0xa,%eax
  401faf:	75 08                	jne    401fb9 <submitr+0x5c2>
  401fb1:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  401fb8:	00 
  401fb9:	85 c0                	test   %eax,%eax
  401fbb:	0f 85 41 ff ff ff    	jne    401f02 <submitr+0x50b>
  401fc1:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fc6:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401fcd:	00 
  401fce:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401fd5:	00 
  401fd6:	e8 99 f9 ff ff       	callq  401974 <rio_readlineb>
  401fdb:	48 85 c0             	test   %rax,%rax
  401fde:	0f 8f 80 00 00 00    	jg     402064 <submitr+0x66d>
  401fe4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401feb:	3a 20 43 
  401fee:	48 89 03             	mov    %rax,(%rbx)
  401ff1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ff8:	20 75 6e 
  401ffb:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401fff:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402006:	74 6f 20 
  402009:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40200d:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402014:	73 74 61 
  402017:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40201b:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402022:	65 73 73 
  402025:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402029:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402030:	72 6f 6d 
  402033:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402037:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40203e:	6c 61 62 
  402041:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402045:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  40204c:	65 72 00 
  40204f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402053:	89 ef                	mov    %ebp,%edi
  402055:	e8 36 eb ff ff       	callq  400b90 <close@plt>
  40205a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40205f:	e9 b7 00 00 00       	jmpq   40211b <submitr+0x724>
  402064:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  40206b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402071:	74 28                	je     40209b <submitr+0x6a4>
  402073:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402078:	be 98 2a 40 00       	mov    $0x402a98,%esi
  40207d:	48 89 df             	mov    %rbx,%rdi
  402080:	b8 00 00 00 00       	mov    $0x0,%eax
  402085:	e8 e6 eb ff ff       	callq  400c70 <sprintf@plt>
  40208a:	89 ef                	mov    %ebp,%edi
  40208c:	e8 ff ea ff ff       	callq  400b90 <close@plt>
  402091:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402096:	e9 80 00 00 00       	jmpq   40211b <submitr+0x724>
  40209b:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4020a2:	00 
  4020a3:	48 89 df             	mov    %rbx,%rdi
  4020a6:	e8 95 ea ff ff       	callq  400b40 <strcpy@plt>
  4020ab:	89 ef                	mov    %ebp,%edi
  4020ad:	e8 de ea ff ff       	callq  400b90 <close@plt>
  4020b2:	0f b6 03             	movzbl (%rbx),%eax
  4020b5:	83 e8 4f             	sub    $0x4f,%eax
  4020b8:	75 18                	jne    4020d2 <submitr+0x6db>
  4020ba:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4020be:	83 ea 4b             	sub    $0x4b,%edx
  4020c1:	75 11                	jne    4020d4 <submitr+0x6dd>
  4020c3:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4020c7:	83 ea 0a             	sub    $0xa,%edx
  4020ca:	75 08                	jne    4020d4 <submitr+0x6dd>
  4020cc:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  4020d0:	eb 02                	jmp    4020d4 <submitr+0x6dd>
  4020d2:	89 c2                	mov    %eax,%edx
  4020d4:	85 d2                	test   %edx,%edx
  4020d6:	74 30                	je     402108 <submitr+0x711>
  4020d8:	bf e0 2a 40 00       	mov    $0x402ae0,%edi
  4020dd:	b9 05 00 00 00       	mov    $0x5,%ecx
  4020e2:	48 89 de             	mov    %rbx,%rsi
  4020e5:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4020e7:	0f 97 c1             	seta   %cl
  4020ea:	0f 92 c2             	setb   %dl
  4020ed:	38 d1                	cmp    %dl,%cl
  4020ef:	74 1e                	je     40210f <submitr+0x718>
  4020f1:	85 c0                	test   %eax,%eax
  4020f3:	75 0d                	jne    402102 <submitr+0x70b>
  4020f5:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4020f9:	83 e8 4b             	sub    $0x4b,%eax
  4020fc:	75 04                	jne    402102 <submitr+0x70b>
  4020fe:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402102:	85 c0                	test   %eax,%eax
  402104:	75 10                	jne    402116 <submitr+0x71f>
  402106:	eb 13                	jmp    40211b <submitr+0x724>
  402108:	b8 00 00 00 00       	mov    $0x0,%eax
  40210d:	eb 0c                	jmp    40211b <submitr+0x724>
  40210f:	b8 00 00 00 00       	mov    $0x0,%eax
  402114:	eb 05                	jmp    40211b <submitr+0x724>
  402116:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40211b:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402122:	5b                   	pop    %rbx
  402123:	5d                   	pop    %rbp
  402124:	41 5c                	pop    %r12
  402126:	41 5d                	pop    %r13
  402128:	41 5e                	pop    %r14
  40212a:	41 5f                	pop    %r15
  40212c:	c3                   	retq   

000000000040212d <init_timeout>:
  40212d:	53                   	push   %rbx
  40212e:	89 fb                	mov    %edi,%ebx
  402130:	85 ff                	test   %edi,%edi
  402132:	74 1f                	je     402153 <init_timeout+0x26>
  402134:	85 ff                	test   %edi,%edi
  402136:	79 05                	jns    40213d <init_timeout+0x10>
  402138:	bb 00 00 00 00       	mov    $0x0,%ebx
  40213d:	be 92 17 40 00       	mov    $0x401792,%esi
  402142:	bf 0e 00 00 00       	mov    $0xe,%edi
  402147:	e8 84 ea ff ff       	callq  400bd0 <signal@plt>
  40214c:	89 df                	mov    %ebx,%edi
  40214e:	e8 2d ea ff ff       	callq  400b80 <alarm@plt>
  402153:	5b                   	pop    %rbx
  402154:	c3                   	retq   

0000000000402155 <init_driver>:
  402155:	55                   	push   %rbp
  402156:	53                   	push   %rbx
  402157:	48 83 ec 18          	sub    $0x18,%rsp
  40215b:	48 89 fd             	mov    %rdi,%rbp
  40215e:	be 01 00 00 00       	mov    $0x1,%esi
  402163:	bf 0d 00 00 00       	mov    $0xd,%edi
  402168:	e8 63 ea ff ff       	callq  400bd0 <signal@plt>
  40216d:	be 01 00 00 00       	mov    $0x1,%esi
  402172:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402177:	e8 54 ea ff ff       	callq  400bd0 <signal@plt>
  40217c:	be 01 00 00 00       	mov    $0x1,%esi
  402181:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402186:	e8 45 ea ff ff       	callq  400bd0 <signal@plt>
  40218b:	ba 00 00 00 00       	mov    $0x0,%edx
  402190:	be 01 00 00 00       	mov    $0x1,%esi
  402195:	bf 02 00 00 00       	mov    $0x2,%edi
  40219a:	e8 21 eb ff ff       	callq  400cc0 <socket@plt>
  40219f:	89 c3                	mov    %eax,%ebx
  4021a1:	85 c0                	test   %eax,%eax
  4021a3:	79 4f                	jns    4021f4 <init_driver+0x9f>
  4021a5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4021ac:	3a 20 43 
  4021af:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4021b3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4021ba:	20 75 6e 
  4021bd:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4021c1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4021c8:	74 6f 20 
  4021cb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4021cf:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4021d6:	65 20 73 
  4021d9:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4021dd:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4021e4:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4021ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021ef:	e9 23 01 00 00       	jmpq   402317 <init_driver+0x1c2>
  4021f4:	bf e5 2a 40 00       	mov    $0x402ae5,%edi
  4021f9:	e8 e2 e9 ff ff       	callq  400be0 <gethostbyname@plt>
  4021fe:	48 85 c0             	test   %rax,%rax
  402201:	75 68                	jne    40226b <init_driver+0x116>
  402203:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40220a:	3a 20 44 
  40220d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402211:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402218:	20 75 6e 
  40221b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40221f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402226:	74 6f 20 
  402229:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40222d:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402234:	76 65 20 
  402237:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40223b:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402242:	72 20 61 
  402245:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402249:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402250:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402256:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40225a:	89 df                	mov    %ebx,%edi
  40225c:	e8 2f e9 ff ff       	callq  400b90 <close@plt>
  402261:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402266:	e9 ac 00 00 00       	jmpq   402317 <init_driver+0x1c2>
  40226b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402272:	00 
  402273:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40227a:	00 00 
  40227c:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402282:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402286:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40228a:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  40228f:	48 8b 39             	mov    (%rcx),%rdi
  402292:	e8 a9 e9 ff ff       	callq  400c40 <bcopy@plt>
  402297:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  40229e:	ba 10 00 00 00       	mov    $0x10,%edx
  4022a3:	48 89 e6             	mov    %rsp,%rsi
  4022a6:	89 df                	mov    %ebx,%edi
  4022a8:	e8 e3 e9 ff ff       	callq  400c90 <connect@plt>
  4022ad:	85 c0                	test   %eax,%eax
  4022af:	79 50                	jns    402301 <init_driver+0x1ac>
  4022b1:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4022b8:	3a 20 55 
  4022bb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4022bf:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4022c6:	20 74 6f 
  4022c9:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4022cd:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4022d4:	65 63 74 
  4022d7:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4022db:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  4022e2:	65 72 76 
  4022e5:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4022e9:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4022ef:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4022f3:	89 df                	mov    %ebx,%edi
  4022f5:	e8 96 e8 ff ff       	callq  400b90 <close@plt>
  4022fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ff:	eb 16                	jmp    402317 <init_driver+0x1c2>
  402301:	89 df                	mov    %ebx,%edi
  402303:	e8 88 e8 ff ff       	callq  400b90 <close@plt>
  402308:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40230e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402312:	b8 00 00 00 00       	mov    $0x0,%eax
  402317:	48 83 c4 18          	add    $0x18,%rsp
  40231b:	5b                   	pop    %rbx
  40231c:	5d                   	pop    %rbp
  40231d:	c3                   	retq   

000000000040231e <driver_post>:
  40231e:	53                   	push   %rbx
  40231f:	48 83 ec 10          	sub    $0x10,%rsp
  402323:	4c 89 cb             	mov    %r9,%rbx
  402326:	45 85 c0             	test   %r8d,%r8d
  402329:	74 22                	je     40234d <driver_post+0x2f>
  40232b:	48 89 ce             	mov    %rcx,%rsi
  40232e:	bf fc 2a 40 00       	mov    $0x402afc,%edi
  402333:	b8 00 00 00 00       	mov    $0x0,%eax
  402338:	e8 33 e8 ff ff       	callq  400b70 <printf@plt>
  40233d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402342:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402346:	b8 00 00 00 00       	mov    $0x0,%eax
  40234b:	eb 39                	jmp    402386 <driver_post+0x68>
  40234d:	48 85 ff             	test   %rdi,%rdi
  402350:	74 26                	je     402378 <driver_post+0x5a>
  402352:	80 3f 00             	cmpb   $0x0,(%rdi)
  402355:	74 21                	je     402378 <driver_post+0x5a>
  402357:	4c 89 0c 24          	mov    %r9,(%rsp)
  40235b:	49 89 c9             	mov    %rcx,%r9
  40235e:	49 89 d0             	mov    %rdx,%r8
  402361:	48 89 f9             	mov    %rdi,%rcx
  402364:	48 89 f2             	mov    %rsi,%rdx
  402367:	be 50 00 00 00       	mov    $0x50,%esi
  40236c:	bf e5 2a 40 00       	mov    $0x402ae5,%edi
  402371:	e8 81 f6 ff ff       	callq  4019f7 <submitr>
  402376:	eb 0e                	jmp    402386 <driver_post+0x68>
  402378:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40237d:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402381:	b8 00 00 00 00       	mov    $0x0,%eax
  402386:	48 83 c4 10          	add    $0x10,%rsp
  40238a:	5b                   	pop    %rbx
  40238b:	c3                   	retq   
  40238c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402390 <__libc_csu_init>:
  402390:	41 57                	push   %r15
  402392:	41 89 ff             	mov    %edi,%r15d
  402395:	41 56                	push   %r14
  402397:	49 89 f6             	mov    %rsi,%r14
  40239a:	41 55                	push   %r13
  40239c:	49 89 d5             	mov    %rdx,%r13
  40239f:	41 54                	push   %r12
  4023a1:	4c 8d 25 58 1a 20 00 	lea    0x201a58(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  4023a8:	55                   	push   %rbp
  4023a9:	48 8d 2d 58 1a 20 00 	lea    0x201a58(%rip),%rbp        # 603e08 <__init_array_end>
  4023b0:	53                   	push   %rbx
  4023b1:	4c 29 e5             	sub    %r12,%rbp
  4023b4:	31 db                	xor    %ebx,%ebx
  4023b6:	48 c1 fd 03          	sar    $0x3,%rbp
  4023ba:	48 83 ec 08          	sub    $0x8,%rsp
  4023be:	e8 15 e7 ff ff       	callq  400ad8 <_init>
  4023c3:	48 85 ed             	test   %rbp,%rbp
  4023c6:	74 1e                	je     4023e6 <__libc_csu_init+0x56>
  4023c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023cf:	00 
  4023d0:	4c 89 ea             	mov    %r13,%rdx
  4023d3:	4c 89 f6             	mov    %r14,%rsi
  4023d6:	44 89 ff             	mov    %r15d,%edi
  4023d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4023dd:	48 83 c3 01          	add    $0x1,%rbx
  4023e1:	48 39 eb             	cmp    %rbp,%rbx
  4023e4:	75 ea                	jne    4023d0 <__libc_csu_init+0x40>
  4023e6:	48 83 c4 08          	add    $0x8,%rsp
  4023ea:	5b                   	pop    %rbx
  4023eb:	5d                   	pop    %rbp
  4023ec:	41 5c                	pop    %r12
  4023ee:	41 5d                	pop    %r13
  4023f0:	41 5e                	pop    %r14
  4023f2:	41 5f                	pop    %r15
  4023f4:	c3                   	retq   
  4023f5:	90                   	nop
  4023f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4023fd:	00 00 00 

0000000000402400 <__libc_csu_fini>:
  402400:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402404 <_fini>:
  402404:	48 83 ec 08          	sub    $0x8,%rsp
  402408:	48 83 c4 08          	add    $0x8,%rsp
  40240c:	c3                   	retq   
