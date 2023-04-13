
shell:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a58 <_init>:
  400a58:	f3 0f 1e fa          	endbr64 
  400a5c:	48 83 ec 08          	sub    $0x8,%rsp
  400a60:	48 8b 05 81 25 20 00 	mov    0x202581(%rip),%rax        # 602fe8 <__gmon_start__@Base>
  400a67:	48 85 c0             	test   %rax,%rax
  400a6a:	74 02                	je     400a6e <_init+0x16>
  400a6c:	ff d0                	callq  *%rax
  400a6e:	48 83 c4 08          	add    $0x8,%rsp
  400a72:	c3                   	retq   

Disassembly of section .plt:

0000000000400a80 <.plt>:
  400a80:	ff 35 82 25 20 00    	pushq  0x202582(%rip)        # 603008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a86:	ff 25 84 25 20 00    	jmpq   *0x202584(%rip)        # 603010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a90 <free@plt>:
  400a90:	ff 25 82 25 20 00    	jmpq   *0x202582(%rip)        # 603018 <free@GLIBC_2.2.5>
  400a96:	68 00 00 00 00       	pushq  $0x0
  400a9b:	e9 e0 ff ff ff       	jmpq   400a80 <.plt>

0000000000400aa0 <abort@plt>:
  400aa0:	ff 25 7a 25 20 00    	jmpq   *0x20257a(%rip)        # 603020 <abort@GLIBC_2.2.5>
  400aa6:	68 01 00 00 00       	pushq  $0x1
  400aab:	e9 d0 ff ff ff       	jmpq   400a80 <.plt>

0000000000400ab0 <dup2@plt>:
  400ab0:	ff 25 72 25 20 00    	jmpq   *0x202572(%rip)        # 603028 <dup2@GLIBC_2.2.5>
  400ab6:	68 02 00 00 00       	pushq  $0x2
  400abb:	e9 c0 ff ff ff       	jmpq   400a80 <.plt>

0000000000400ac0 <printf@plt>:
  400ac0:	ff 25 6a 25 20 00    	jmpq   *0x20256a(%rip)        # 603030 <printf@GLIBC_2.2.5>
  400ac6:	68 03 00 00 00       	pushq  $0x3
  400acb:	e9 b0 ff ff ff       	jmpq   400a80 <.plt>

0000000000400ad0 <fgetc@plt>:
  400ad0:	ff 25 62 25 20 00    	jmpq   *0x202562(%rip)        # 603038 <fgetc@GLIBC_2.2.5>
  400ad6:	68 04 00 00 00       	pushq  $0x4
  400adb:	e9 a0 ff ff ff       	jmpq   400a80 <.plt>

0000000000400ae0 <close@plt>:
  400ae0:	ff 25 5a 25 20 00    	jmpq   *0x20255a(%rip)        # 603040 <close@GLIBC_2.2.5>
  400ae6:	68 05 00 00 00       	pushq  $0x5
  400aeb:	e9 90 ff ff ff       	jmpq   400a80 <.plt>

0000000000400af0 <pipe@plt>:
  400af0:	ff 25 52 25 20 00    	jmpq   *0x202552(%rip)        # 603048 <pipe@GLIBC_2.2.5>
  400af6:	68 06 00 00 00       	pushq  $0x6
  400afb:	e9 80 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b00 <strtok_r@plt>:
  400b00:	ff 25 4a 25 20 00    	jmpq   *0x20254a(%rip)        # 603050 <strtok_r@GLIBC_2.2.5>
  400b06:	68 07 00 00 00       	pushq  $0x7
  400b0b:	e9 70 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b10 <calloc@plt>:
  400b10:	ff 25 42 25 20 00    	jmpq   *0x202542(%rip)        # 603058 <calloc@GLIBC_2.2.5>
  400b16:	68 08 00 00 00       	pushq  $0x8
  400b1b:	e9 60 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b20 <strcmp@plt>:
  400b20:	ff 25 3a 25 20 00    	jmpq   *0x20253a(%rip)        # 603060 <strcmp@GLIBC_2.2.5>
  400b26:	68 09 00 00 00       	pushq  $0x9
  400b2b:	e9 50 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b30 <fprintf@plt>:
  400b30:	ff 25 32 25 20 00    	jmpq   *0x202532(%rip)        # 603068 <fprintf@GLIBC_2.2.5>
  400b36:	68 0a 00 00 00       	pushq  $0xa
  400b3b:	e9 40 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b40 <memcpy@plt>:
  400b40:	ff 25 2a 25 20 00    	jmpq   *0x20252a(%rip)        # 603070 <memcpy@GLIBC_2.14>
  400b46:	68 0b 00 00 00       	pushq  $0xb
  400b4b:	e9 30 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b50 <malloc@plt>:
  400b50:	ff 25 22 25 20 00    	jmpq   *0x202522(%rip)        # 603078 <malloc@GLIBC_2.2.5>
  400b56:	68 0c 00 00 00       	pushq  $0xc
  400b5b:	e9 20 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b60 <fflush@plt>:
  400b60:	ff 25 1a 25 20 00    	jmpq   *0x20251a(%rip)        # 603080 <fflush@GLIBC_2.2.5>
  400b66:	68 0d 00 00 00       	pushq  $0xd
  400b6b:	e9 10 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b70 <realloc@plt>:
  400b70:	ff 25 12 25 20 00    	jmpq   *0x202512(%rip)        # 603088 <realloc@GLIBC_2.2.5>
  400b76:	68 0e 00 00 00       	pushq  $0xe
  400b7b:	e9 00 ff ff ff       	jmpq   400a80 <.plt>

0000000000400b80 <longjmp@plt>:
  400b80:	ff 25 0a 25 20 00    	jmpq   *0x20250a(%rip)        # 603090 <longjmp@GLIBC_2.2.5>
  400b86:	68 0f 00 00 00       	pushq  $0xf
  400b8b:	e9 f0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400b90 <waitpid@plt>:
  400b90:	ff 25 02 25 20 00    	jmpq   *0x202502(%rip)        # 603098 <waitpid@GLIBC_2.2.5>
  400b96:	68 10 00 00 00       	pushq  $0x10
  400b9b:	e9 e0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400ba0 <execvp@plt>:
  400ba0:	ff 25 fa 24 20 00    	jmpq   *0x2024fa(%rip)        # 6030a0 <execvp@GLIBC_2.2.5>
  400ba6:	68 11 00 00 00       	pushq  $0x11
  400bab:	e9 d0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400bb0 <exit@plt>:
  400bb0:	ff 25 f2 24 20 00    	jmpq   *0x2024f2(%rip)        # 6030a8 <exit@GLIBC_2.2.5>
  400bb6:	68 12 00 00 00       	pushq  $0x12
  400bbb:	e9 c0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400bc0 <fwrite@plt>:
  400bc0:	ff 25 ea 24 20 00    	jmpq   *0x2024ea(%rip)        # 6030b0 <fwrite@GLIBC_2.2.5>
  400bc6:	68 13 00 00 00       	pushq  $0x13
  400bcb:	e9 b0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400bd0 <wait@plt>:
  400bd0:	ff 25 e2 24 20 00    	jmpq   *0x2024e2(%rip)        # 6030b8 <wait@GLIBC_2.2.5>
  400bd6:	68 14 00 00 00       	pushq  $0x14
  400bdb:	e9 a0 fe ff ff       	jmpq   400a80 <.plt>

0000000000400be0 <fork@plt>:
  400be0:	ff 25 da 24 20 00    	jmpq   *0x2024da(%rip)        # 6030c0 <fork@GLIBC_2.2.5>
  400be6:	68 15 00 00 00       	pushq  $0x15
  400beb:	e9 90 fe ff ff       	jmpq   400a80 <.plt>

Disassembly of section .text:

0000000000400bf0 <_start>:
  400bf0:	f3 0f 1e fa          	endbr64 
  400bf4:	31 ed                	xor    %ebp,%ebp
  400bf6:	49 89 d1             	mov    %rdx,%r9
  400bf9:	5e                   	pop    %rsi
  400bfa:	48 89 e2             	mov    %rsp,%rdx
  400bfd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400c01:	50                   	push   %rax
  400c02:	54                   	push   %rsp
  400c03:	49 c7 c0 30 25 40 00 	mov    $0x402530,%r8
  400c0a:	48 c7 c1 c0 24 40 00 	mov    $0x4024c0,%rcx
  400c11:	48 c7 c7 d6 0c 40 00 	mov    $0x400cd6,%rdi
  400c18:	ff 15 c2 23 20 00    	callq  *0x2023c2(%rip)        # 602fe0 <__libc_start_main@GLIBC_2.2.5>
  400c1e:	f4                   	hlt    

0000000000400c1f <.annobin_init.c>:
  400c1f:	90                   	nop

0000000000400c20 <_dl_relocate_static_pie>:
  400c20:	f3 0f 1e fa          	endbr64 
  400c24:	c3                   	retq   

0000000000400c25 <.annobin__dl_relocate_static_pie.end>:
  400c25:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c2c:	00 00 00 
  400c2f:	90                   	nop

0000000000400c30 <deregister_tm_clones>:
  400c30:	48 8d 3d c9 24 20 00 	lea    0x2024c9(%rip),%rdi        # 603100 <stdin@@GLIBC_2.2.5>
  400c37:	48 8d 05 c2 24 20 00 	lea    0x2024c2(%rip),%rax        # 603100 <stdin@@GLIBC_2.2.5>
  400c3e:	48 39 f8             	cmp    %rdi,%rax
  400c41:	74 15                	je     400c58 <deregister_tm_clones+0x28>
  400c43:	48 8b 05 8e 23 20 00 	mov    0x20238e(%rip),%rax        # 602fd8 <_ITM_deregisterTMCloneTable@Base>
  400c4a:	48 85 c0             	test   %rax,%rax
  400c4d:	74 09                	je     400c58 <deregister_tm_clones+0x28>
  400c4f:	ff e0                	jmpq   *%rax
  400c51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400c58:	c3                   	retq   
  400c59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400c60 <register_tm_clones>:
  400c60:	48 8d 3d 99 24 20 00 	lea    0x202499(%rip),%rdi        # 603100 <stdin@@GLIBC_2.2.5>
  400c67:	48 8d 35 92 24 20 00 	lea    0x202492(%rip),%rsi        # 603100 <stdin@@GLIBC_2.2.5>
  400c6e:	48 29 fe             	sub    %rdi,%rsi
  400c71:	48 89 f0             	mov    %rsi,%rax
  400c74:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400c78:	48 c1 f8 03          	sar    $0x3,%rax
  400c7c:	48 01 c6             	add    %rax,%rsi
  400c7f:	48 d1 fe             	sar    %rsi
  400c82:	74 14                	je     400c98 <register_tm_clones+0x38>
  400c84:	48 8b 05 65 23 20 00 	mov    0x202365(%rip),%rax        # 602ff0 <_ITM_registerTMCloneTable@Base>
  400c8b:	48 85 c0             	test   %rax,%rax
  400c8e:	74 08                	je     400c98 <register_tm_clones+0x38>
  400c90:	ff e0                	jmpq   *%rax
  400c92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400c98:	c3                   	retq   
  400c99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ca0 <__do_global_dtors_aux>:
  400ca0:	f3 0f 1e fa          	endbr64 
  400ca4:	80 3d 7d 24 20 00 00 	cmpb   $0x0,0x20247d(%rip)        # 603128 <completed.0>
  400cab:	75 13                	jne    400cc0 <__do_global_dtors_aux+0x20>
  400cad:	55                   	push   %rbp
  400cae:	48 89 e5             	mov    %rsp,%rbp
  400cb1:	e8 7a ff ff ff       	callq  400c30 <deregister_tm_clones>
  400cb6:	c6 05 6b 24 20 00 01 	movb   $0x1,0x20246b(%rip)        # 603128 <completed.0>
  400cbd:	5d                   	pop    %rbp
  400cbe:	c3                   	retq   
  400cbf:	90                   	nop
  400cc0:	c3                   	retq   
  400cc1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400cc8:	00 00 00 00 
  400ccc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400cd0 <frame_dummy>:
  400cd0:	f3 0f 1e fa          	endbr64 
  400cd4:	eb 8a                	jmp    400c60 <register_tm_clones>

0000000000400cd6 <main>:
  400cd6:	55                   	push   %rbp
  400cd7:	48 89 e5             	mov    %rsp,%rbp
  400cda:	48 83 ec 20          	sub    $0x20,%rsp
  400cde:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400ce1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400ce5:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400ce9:	7e 28                	jle    400d13 <main+0x3d>
  400ceb:	48 8b 05 2e 24 20 00 	mov    0x20242e(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  400cf2:	48 89 c1             	mov    %rax,%rcx
  400cf5:	ba 0f 00 00 00       	mov    $0xf,%edx
  400cfa:	be 01 00 00 00       	mov    $0x1,%esi
  400cff:	bf 50 25 40 00       	mov    $0x402550,%edi
  400d04:	e8 b7 fe ff ff       	callq  400bc0 <fwrite@plt>
  400d09:	bf 01 00 00 00       	mov    $0x1,%edi
  400d0e:	e8 9d fe ff ff       	callq  400bb0 <exit@plt>
  400d13:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400d1a:	eb 6a                	jmp    400d86 <main+0xb0>
  400d1c:	bf 60 25 40 00       	mov    $0x402560,%edi
  400d21:	b8 00 00 00 00       	mov    $0x0,%eax
  400d26:	e8 95 fd ff ff       	callq  400ac0 <printf@plt>
  400d2b:	48 8b 05 ce 23 20 00 	mov    0x2023ce(%rip),%rax        # 603100 <stdin@@GLIBC_2.2.5>
  400d32:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  400d36:	48 89 d6             	mov    %rdx,%rsi
  400d39:	48 89 c7             	mov    %rax,%rdi
  400d3c:	e8 68 04 00 00       	callq  4011a9 <readaline>
  400d41:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400d44:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d48:	48 85 c0             	test   %rax,%rax
  400d4b:	75 02                	jne    400d4f <main+0x79>
  400d4d:	eb 37                	jmp    400d86 <main+0xb0>
  400d4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d53:	be 66 25 40 00       	mov    $0x402566,%esi
  400d58:	48 89 c7             	mov    %rax,%rdi
  400d5b:	e8 c0 fd ff ff       	callq  400b20 <strcmp@plt>
  400d60:	85 c0                	test   %eax,%eax
  400d62:	75 16                	jne    400d7a <main+0xa4>
  400d64:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d68:	48 89 c7             	mov    %rax,%rdi
  400d6b:	e8 20 fd ff ff       	callq  400a90 <free@plt>
  400d70:	bf 00 00 00 00       	mov    $0x0,%edi
  400d75:	e8 36 fe ff ff       	callq  400bb0 <exit@plt>
  400d7a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400d7e:	48 89 c7             	mov    %rax,%rdi
  400d81:	e8 0d 00 00 00       	callq  400d93 <execute_commands>
  400d86:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  400d8a:	75 90                	jne    400d1c <main+0x46>
  400d8c:	b8 00 00 00 00       	mov    $0x0,%eax
  400d91:	c9                   	leaveq 
  400d92:	c3                   	retq   

0000000000400d93 <execute_commands>:
  400d93:	55                   	push   %rbp
  400d94:	48 89 e5             	mov    %rsp,%rbp
  400d97:	48 83 ec 50          	sub    $0x50,%rsp
  400d9b:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400d9f:	bf 05 00 00 00       	mov    $0x5,%edi
  400da4:	e8 8a 07 00 00       	callq  401533 <Seq_new>
  400da9:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400dad:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  400db2:	75 28                	jne    400ddc <execute_commands+0x49>
  400db4:	48 8b 05 65 23 20 00 	mov    0x202365(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  400dbb:	48 89 c1             	mov    %rax,%rcx
  400dbe:	ba 19 00 00 00       	mov    $0x19,%edx
  400dc3:	be 01 00 00 00       	mov    $0x1,%esi
  400dc8:	bf 6b 25 40 00       	mov    $0x40256b,%edi
  400dcd:	e8 ee fd ff ff       	callq  400bc0 <fwrite@plt>
  400dd2:	bf 01 00 00 00       	mov    $0x1,%edi
  400dd7:	e8 d4 fd ff ff       	callq  400bb0 <exit@plt>
  400ddc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400de0:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  400de4:	48 89 d6             	mov    %rdx,%rsi
  400de7:	48 89 c7             	mov    %rax,%rdi
  400dea:	e8 48 06 00 00       	callq  401437 <populate_progs>
  400def:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400df3:	48 89 c7             	mov    %rax,%rdi
  400df6:	e8 59 09 00 00       	callq  401754 <Seq_length>
  400dfb:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400dfe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400e05:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400e0c:	eb 7a                	jmp    400e88 <execute_commands+0xf5>
  400e0e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400e12:	48 89 c7             	mov    %rax,%rdi
  400e15:	e8 d6 fc ff ff       	callq  400af0 <pipe@plt>
  400e1a:	83 f8 ff             	cmp    $0xffffffff,%eax
  400e1d:	75 28                	jne    400e47 <execute_commands+0xb4>
  400e1f:	48 8b 05 fa 22 20 00 	mov    0x2022fa(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  400e26:	48 89 c1             	mov    %rax,%rcx
  400e29:	ba 0c 00 00 00       	mov    $0xc,%edx
  400e2e:	be 01 00 00 00       	mov    $0x1,%esi
  400e33:	bf 85 25 40 00       	mov    $0x402585,%edi
  400e38:	e8 83 fd ff ff       	callq  400bc0 <fwrite@plt>
  400e3d:	bf 01 00 00 00       	mov    $0x1,%edi
  400e42:	e8 69 fd ff ff       	callq  400bb0 <exit@plt>
  400e47:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e4b:	48 89 c7             	mov    %rax,%rdi
  400e4e:	e8 55 0b 00 00       	callq  4019a8 <Seq_remlo>
  400e53:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400e57:	8b 7d d4             	mov    -0x2c(%rbp),%edi
  400e5a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400e5e:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  400e61:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  400e65:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  400e69:	41 89 f8             	mov    %edi,%r8d
  400e6c:	48 89 c7             	mov    %rax,%rdi
  400e6f:	e8 03 01 00 00       	callq  400f77 <fork_program>
  400e74:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  400e77:	89 c7                	mov    %eax,%edi
  400e79:	e8 62 fc ff ff       	callq  400ae0 <close@plt>
  400e7e:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400e81:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400e84:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  400e88:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400e8b:	83 e8 01             	sub    $0x1,%eax
  400e8e:	39 45 f8             	cmp    %eax,-0x8(%rbp)
  400e91:	0f 8c 77 ff ff ff    	jl     400e0e <execute_commands+0x7b>
  400e97:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400e9b:	0f 8e 9d 00 00 00    	jle    400f3e <execute_commands+0x1ab>
  400ea1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400ea5:	48 89 c7             	mov    %rax,%rdi
  400ea8:	e8 fb 0a 00 00       	callq  4019a8 <Seq_remlo>
  400ead:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400eb1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400eb5:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  400eb8:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  400ebc:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
  400ec0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  400ec6:	48 89 c7             	mov    %rax,%rdi
  400ec9:	e8 a9 00 00 00       	callq  400f77 <fork_program>
  400ece:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
  400ed2:	ba 00 00 00 00       	mov    $0x0,%edx
  400ed7:	48 89 c6             	mov    %rax,%rsi
  400eda:	bf ff ff ff ff       	mov    $0xffffffff,%edi
  400edf:	e8 ac fc ff ff       	callq  400b90 <waitpid@plt>
  400ee4:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400ee7:	83 e0 7f             	and    $0x7f,%eax
  400eea:	85 c0                	test   %eax,%eax
  400eec:	75 22                	jne    400f10 <execute_commands+0x17d>
  400eee:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400ef1:	c1 f8 08             	sar    $0x8,%eax
  400ef4:	0f b6 c0             	movzbl %al,%eax
  400ef7:	89 45 cc             	mov    %eax,-0x34(%rbp)
  400efa:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400efd:	89 c6                	mov    %eax,%esi
  400eff:	bf 92 25 40 00       	mov    $0x402592,%edi
  400f04:	b8 00 00 00 00       	mov    $0x0,%eax
  400f09:	e8 b2 fb ff ff       	callq  400ac0 <printf@plt>
  400f0e:	eb 4c                	jmp    400f5c <execute_commands+0x1c9>
  400f10:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400f13:	83 e0 7f             	and    $0x7f,%eax
  400f16:	83 c0 01             	add    $0x1,%eax
  400f19:	d0 f8                	sar    %al
  400f1b:	84 c0                	test   %al,%al
  400f1d:	7e 3d                	jle    400f5c <execute_commands+0x1c9>
  400f1f:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400f22:	83 e0 7f             	and    $0x7f,%eax
  400f25:	89 45 cc             	mov    %eax,-0x34(%rbp)
  400f28:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400f2b:	89 c6                	mov    %eax,%esi
  400f2d:	bf a2 25 40 00       	mov    $0x4025a2,%edi
  400f32:	b8 00 00 00 00       	mov    $0x0,%eax
  400f37:	e8 84 fb ff ff       	callq  400ac0 <printf@plt>
  400f3c:	eb 1e                	jmp    400f5c <execute_commands+0x1c9>
  400f3e:	48 8b 05 db 21 20 00 	mov    0x2021db(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  400f45:	48 89 c1             	mov    %rax,%rcx
  400f48:	ba 16 00 00 00       	mov    $0x16,%edx
  400f4d:	be 01 00 00 00       	mov    $0x1,%esi
  400f52:	bf bb 25 40 00       	mov    $0x4025bb,%edi
  400f57:	e8 64 fc ff ff       	callq  400bc0 <fwrite@plt>
  400f5c:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400f60:	48 89 c7             	mov    %rax,%rdi
  400f63:	e8 28 fb ff ff       	callq  400a90 <free@plt>
  400f68:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  400f6c:	48 89 c7             	mov    %rax,%rdi
  400f6f:	e8 95 07 00 00       	callq  401709 <Seq_free>
  400f74:	90                   	nop
  400f75:	c9                   	leaveq 
  400f76:	c3                   	retq   

0000000000400f77 <fork_program>:
  400f77:	55                   	push   %rbp
  400f78:	48 89 e5             	mov    %rsp,%rbp
  400f7b:	48 83 ec 30          	sub    $0x30,%rsp
  400f7f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400f83:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400f87:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  400f8b:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  400f8e:	44 89 45 d0          	mov    %r8d,-0x30(%rbp)
  400f92:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400f96:	48 8b 00             	mov    (%rax),%rax
  400f99:	be 66 25 40 00       	mov    $0x402566,%esi
  400f9e:	48 89 c7             	mov    %rax,%rdi
  400fa1:	e8 7a fb ff ff       	callq  400b20 <strcmp@plt>
  400fa6:	85 c0                	test   %eax,%eax
  400fa8:	75 21                	jne    400fcb <fork_program+0x54>
  400faa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  400fae:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400fb2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400fb6:	48 89 ce             	mov    %rcx,%rsi
  400fb9:	48 89 c7             	mov    %rax,%rdi
  400fbc:	e8 68 01 00 00       	callq  401129 <free_prog>
  400fc1:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc6:	e8 e5 fb ff ff       	callq  400bb0 <exit@plt>
  400fcb:	e8 10 fc ff ff       	callq  400be0 <fork@plt>
  400fd0:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400fd3:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  400fd7:	79 3f                	jns    401018 <fork_program+0xa1>
  400fd9:	48 8b 05 40 21 20 00 	mov    0x202140(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  400fe0:	48 89 c1             	mov    %rax,%rcx
  400fe3:	ba 0c 00 00 00       	mov    $0xc,%edx
  400fe8:	be 01 00 00 00       	mov    $0x1,%esi
  400fed:	bf d2 25 40 00       	mov    $0x4025d2,%edi
  400ff2:	e8 c9 fb ff ff       	callq  400bc0 <fwrite@plt>
  400ff7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  400ffb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  400fff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401003:	48 89 ce             	mov    %rcx,%rsi
  401006:	48 89 c7             	mov    %rax,%rdi
  401009:	e8 1b 01 00 00       	callq  401129 <free_prog>
  40100e:	bf 01 00 00 00       	mov    $0x1,%edi
  401013:	e8 98 fb ff ff       	callq  400bb0 <exit@plt>
  401018:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  40101c:	0f 85 f8 00 00 00    	jne    40111a <fork_program+0x1a3>
  401022:	bf 00 00 00 00       	mov    $0x0,%edi
  401027:	e8 a4 fb ff ff       	callq  400bd0 <wait@plt>
  40102c:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
  401030:	74 45                	je     401077 <fork_program+0x100>
  401032:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401035:	be 00 00 00 00       	mov    $0x0,%esi
  40103a:	89 c7                	mov    %eax,%edi
  40103c:	e8 6f fa ff ff       	callq  400ab0 <dup2@plt>
  401041:	85 c0                	test   %eax,%eax
  401043:	74 28                	je     40106d <fork_program+0xf6>
  401045:	48 8b 05 d4 20 20 00 	mov    0x2020d4(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  40104c:	48 89 c1             	mov    %rax,%rcx
  40104f:	ba 0c 00 00 00       	mov    $0xc,%edx
  401054:	be 01 00 00 00       	mov    $0x1,%esi
  401059:	bf df 25 40 00       	mov    $0x4025df,%edi
  40105e:	e8 5d fb ff ff       	callq  400bc0 <fwrite@plt>
  401063:	bf 01 00 00 00       	mov    $0x1,%edi
  401068:	e8 43 fb ff ff       	callq  400bb0 <exit@plt>
  40106d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401070:	89 c7                	mov    %eax,%edi
  401072:	e8 69 fa ff ff       	callq  400ae0 <close@plt>
  401077:	83 7d d0 01          	cmpl   $0x1,-0x30(%rbp)
  40107b:	74 46                	je     4010c3 <fork_program+0x14c>
  40107d:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401080:	be 01 00 00 00       	mov    $0x1,%esi
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 24 fa ff ff       	callq  400ab0 <dup2@plt>
  40108c:	83 f8 01             	cmp    $0x1,%eax
  40108f:	74 28                	je     4010b9 <fork_program+0x142>
  401091:	48 8b 05 88 20 20 00 	mov    0x202088(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  401098:	48 89 c1             	mov    %rax,%rcx
  40109b:	ba 0c 00 00 00       	mov    $0xc,%edx
  4010a0:	be 01 00 00 00       	mov    $0x1,%esi
  4010a5:	bf df 25 40 00       	mov    $0x4025df,%edi
  4010aa:	e8 11 fb ff ff       	callq  400bc0 <fwrite@plt>
  4010af:	bf 01 00 00 00       	mov    $0x1,%edi
  4010b4:	e8 f7 fa ff ff       	callq  400bb0 <exit@plt>
  4010b9:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4010bc:	89 c7                	mov    %eax,%edi
  4010be:	e8 1d fa ff ff       	callq  400ae0 <close@plt>
  4010c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4010c7:	48 8b 00             	mov    (%rax),%rax
  4010ca:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4010ce:	48 89 d6             	mov    %rdx,%rsi
  4010d1:	48 89 c7             	mov    %rax,%rdi
  4010d4:	e8 c7 fa ff ff       	callq  400ba0 <execvp@plt>
  4010d9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4010dd:	48 8b 10             	mov    (%rax),%rdx
  4010e0:	48 8b 05 39 20 20 00 	mov    0x202039(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  4010e7:	be f0 25 40 00       	mov    $0x4025f0,%esi
  4010ec:	48 89 c7             	mov    %rax,%rdi
  4010ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4010f4:	e8 37 fa ff ff       	callq  400b30 <fprintf@plt>
  4010f9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4010fd:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401101:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401105:	48 89 ce             	mov    %rcx,%rsi
  401108:	48 89 c7             	mov    %rax,%rdi
  40110b:	e8 19 00 00 00       	callq  401129 <free_prog>
  401110:	bf 7f 00 00 00       	mov    $0x7f,%edi
  401115:	e8 96 fa ff ff       	callq  400bb0 <exit@plt>
  40111a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40111e:	48 89 c7             	mov    %rax,%rdi
  401121:	e8 6a f9 ff ff       	callq  400a90 <free@plt>
  401126:	90                   	nop
  401127:	c9                   	leaveq 
  401128:	c3                   	retq   

0000000000401129 <free_prog>:
  401129:	55                   	push   %rbp
  40112a:	48 89 e5             	mov    %rsp,%rbp
  40112d:	48 83 ec 30          	sub    $0x30,%rsp
  401131:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401135:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401139:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40113d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401141:	48 89 c7             	mov    %rax,%rdi
  401144:	e8 0b 06 00 00       	callq  401754 <Seq_length>
  401149:	89 45 f8             	mov    %eax,-0x8(%rbp)
  40114c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401153:	eb 25                	jmp    40117a <free_prog+0x51>
  401155:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401159:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40115c:	89 d6                	mov    %edx,%esi
  40115e:	48 89 c7             	mov    %rax,%rdi
  401161:	e8 25 06 00 00       	callq  40178b <Seq_get>
  401166:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40116a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40116e:	48 89 c7             	mov    %rax,%rdi
  401171:	e8 1a f9 ff ff       	callq  400a90 <free@plt>
  401176:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40117a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40117d:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  401180:	7c d3                	jl     401155 <free_prog+0x2c>
  401182:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401186:	48 89 c7             	mov    %rax,%rdi
  401189:	e8 7b 05 00 00       	callq  401709 <Seq_free>
  40118e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401192:	48 89 c7             	mov    %rax,%rdi
  401195:	e8 f6 f8 ff ff       	callq  400a90 <free@plt>
  40119a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40119e:	48 89 c7             	mov    %rax,%rdi
  4011a1:	e8 ea f8 ff ff       	callq  400a90 <free@plt>
  4011a6:	90                   	nop
  4011a7:	c9                   	leaveq 
  4011a8:	c3                   	retq   

00000000004011a9 <readaline>:
  4011a9:	55                   	push   %rbp
  4011aa:	48 89 e5             	mov    %rsp,%rbp
  4011ad:	48 83 ec 30          	sub    $0x30,%rsp
  4011b1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4011b5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4011b9:	c7 45 fc 64 00 00 00 	movl   $0x64,-0x4(%rbp)
  4011c0:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4011c3:	48 98                	cltq   
  4011c5:	48 89 c7             	mov    %rax,%rdi
  4011c8:	e8 83 f9 ff ff       	callq  400b50 <malloc@plt>
  4011cd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4011d1:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4011d6:	75 28                	jne    401200 <readaline+0x57>
  4011d8:	48 8b 05 41 1f 20 00 	mov    0x201f41(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  4011df:	48 89 c1             	mov    %rax,%rcx
  4011e2:	ba 0e 00 00 00       	mov    $0xe,%edx
  4011e7:	be 01 00 00 00       	mov    $0x1,%esi
  4011ec:	bf 12 26 40 00       	mov    $0x402612,%edi
  4011f1:	e8 ca f9 ff ff       	callq  400bc0 <fwrite@plt>
  4011f6:	bf 01 00 00 00       	mov    $0x1,%edi
  4011fb:	e8 b0 f9 ff ff       	callq  400bb0 <exit@plt>
  401200:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401207:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  40120e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401212:	48 89 c7             	mov    %rax,%rdi
  401215:	e8 b6 f8 ff ff       	callq  400ad0 <fgetc@plt>
  40121a:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40121d:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%rbp)
  401221:	74 06                	je     401229 <readaline+0x80>
  401223:	83 7d e8 0a          	cmpl   $0xa,-0x18(%rbp)
  401227:	75 64                	jne    40128d <readaline+0xe4>
  401229:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  40122d:	75 31                	jne    401260 <readaline+0xb7>
  40122f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401233:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40123a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40123e:	48 89 c7             	mov    %rax,%rdi
  401241:	e8 4a f8 ff ff       	callq  400a90 <free@plt>
  401246:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%rbp)
  40124a:	75 0a                	jne    401256 <readaline+0xad>
  40124c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401251:	e9 ae 00 00 00       	jmpq   401304 <readaline+0x15b>
  401256:	b8 00 00 00 00       	mov    $0x0,%eax
  40125b:	e9 a4 00 00 00       	jmpq   401304 <readaline+0x15b>
  401260:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401263:	48 63 d0             	movslq %eax,%rdx
  401266:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40126a:	48 01 d0             	add    %rdx,%rax
  40126d:	c6 00 00             	movb   $0x0,(%rax)
  401270:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401274:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401278:	48 89 10             	mov    %rdx,(%rax)
  40127b:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%rbp)
  40127f:	74 05                	je     401286 <readaline+0xdd>
  401281:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401284:	eb 7e                	jmp    401304 <readaline+0x15b>
  401286:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40128b:	eb 77                	jmp    401304 <readaline+0x15b>
  40128d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401290:	48 63 d0             	movslq %eax,%rdx
  401293:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401297:	48 01 d0             	add    %rdx,%rax
  40129a:	8b 55 e8             	mov    -0x18(%rbp),%edx
  40129d:	88 10                	mov    %dl,(%rax)
  40129f:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
  4012a3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012a6:	83 e8 01             	sub    $0x1,%eax
  4012a9:	39 45 ec             	cmp    %eax,-0x14(%rbp)
  4012ac:	0f 85 5c ff ff ff    	jne    40120e <readaline+0x65>
  4012b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4012b5:	01 c0                	add    %eax,%eax
  4012b7:	48 63 d0             	movslq %eax,%rdx
  4012ba:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4012be:	48 89 d6             	mov    %rdx,%rsi
  4012c1:	48 89 c7             	mov    %rax,%rdi
  4012c4:	e8 a7 f8 ff ff       	callq  400b70 <realloc@plt>
  4012c9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4012cd:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4012d2:	75 28                	jne    4012fc <readaline+0x153>
  4012d4:	48 8b 05 45 1e 20 00 	mov    0x201e45(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  4012db:	48 89 c1             	mov    %rax,%rcx
  4012de:	ba 0e 00 00 00       	mov    $0xe,%edx
  4012e3:	be 01 00 00 00       	mov    $0x1,%esi
  4012e8:	bf 12 26 40 00       	mov    $0x402612,%edi
  4012ed:	e8 ce f8 ff ff       	callq  400bc0 <fwrite@plt>
  4012f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4012f7:	e8 b4 f8 ff ff       	callq  400bb0 <exit@plt>
  4012fc:	d1 65 fc             	shll   -0x4(%rbp)
  4012ff:	e9 0a ff ff ff       	jmpq   40120e <readaline+0x65>
  401304:	c9                   	leaveq 
  401305:	c3                   	retq   

0000000000401306 <process_prog>:
  401306:	55                   	push   %rbp
  401307:	48 89 e5             	mov    %rsp,%rbp
  40130a:	48 83 ec 30          	sub    $0x30,%rsp
  40130e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401312:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401316:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40131d:	00 
  40131e:	48 c7 45 f0 0a 00 00 	movq   $0xa,-0x10(%rbp)
  401325:	00 
  401326:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40132a:	48 c1 e0 03          	shl    $0x3,%rax
  40132e:	48 89 c7             	mov    %rax,%rdi
  401331:	e8 1a f8 ff ff       	callq  400b50 <malloc@plt>
  401336:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40133a:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40133f:	0f 85 a3 00 00 00    	jne    4013e8 <process_prog+0xe2>
  401345:	48 8b 05 d4 1d 20 00 	mov    0x201dd4(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  40134c:	48 89 c1             	mov    %rax,%rcx
  40134f:	ba 0c 00 00 00       	mov    $0xc,%edx
  401354:	be 01 00 00 00       	mov    $0x1,%esi
  401359:	bf 21 26 40 00       	mov    $0x402621,%edi
  40135e:	e8 5d f8 ff ff       	callq  400bc0 <fwrite@plt>
  401363:	bf 01 00 00 00       	mov    $0x1,%edi
  401368:	e8 43 f8 ff ff       	callq  400bb0 <exit@plt>
  40136d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401371:	48 83 e8 01          	sub    $0x1,%rax
  401375:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  401379:	75 4e                	jne    4013c9 <process_prog+0xc3>
  40137b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40137f:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
  401383:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401387:	48 89 d6             	mov    %rdx,%rsi
  40138a:	48 89 c7             	mov    %rax,%rdi
  40138d:	e8 de f7 ff ff       	callq  400b70 <realloc@plt>
  401392:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401396:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40139b:	75 28                	jne    4013c5 <process_prog+0xbf>
  40139d:	48 8b 05 7c 1d 20 00 	mov    0x201d7c(%rip),%rax        # 603120 <stderr@@GLIBC_2.2.5>
  4013a4:	48 89 c1             	mov    %rax,%rcx
  4013a7:	ba 0c 00 00 00       	mov    $0xc,%edx
  4013ac:	be 01 00 00 00       	mov    $0x1,%esi
  4013b1:	bf 21 26 40 00       	mov    $0x402621,%edi
  4013b6:	e8 05 f8 ff ff       	callq  400bc0 <fwrite@plt>
  4013bb:	bf 01 00 00 00       	mov    $0x1,%edi
  4013c0:	e8 eb f7 ff ff       	callq  400bb0 <exit@plt>
  4013c5:	48 d1 65 f0          	shlq   -0x10(%rbp)
  4013c9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4013cd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4013d4:	00 
  4013d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4013d9:	48 01 c2             	add    %rax,%rdx
  4013dc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4013e0:	48 89 02             	mov    %rax,(%rdx)
  4013e3:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
  4013e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4013ec:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  4013f0:	be 2e 26 40 00       	mov    $0x40262e,%esi
  4013f5:	48 89 c7             	mov    %rax,%rdi
  4013f8:	e8 03 f7 ff ff       	callq  400b00 <strtok_r@plt>
  4013fd:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401401:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  401406:	0f 85 61 ff ff ff    	jne    40136d <process_prog+0x67>
  40140c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401410:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401417:	00 
  401418:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40141c:	48 01 d0             	add    %rdx,%rax
  40141f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401426:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40142a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40142e:	48 89 10             	mov    %rdx,(%rax)
  401431:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401435:	c9                   	leaveq 
  401436:	c3                   	retq   

0000000000401437 <populate_progs>:
  401437:	55                   	push   %rbp
  401438:	48 89 e5             	mov    %rsp,%rbp
  40143b:	48 83 ec 20          	sub    $0x20,%rsp
  40143f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401443:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  401447:	eb 26                	jmp    40146f <populate_progs+0x38>
  401449:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40144d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401451:	48 89 d6             	mov    %rdx,%rsi
  401454:	48 89 c7             	mov    %rax,%rdi
  401457:	e8 aa fe ff ff       	callq  401306 <process_prog>
  40145c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401460:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401464:	48 89 d6             	mov    %rdx,%rsi
  401467:	48 89 c7             	mov    %rax,%rdi
  40146a:	e8 06 06 00 00       	callq  401a75 <Seq_addhi>
  40146f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401473:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  401477:	be 30 26 40 00       	mov    $0x402630,%esi
  40147c:	48 89 c7             	mov    %rax,%rdi
  40147f:	e8 7c f6 ff ff       	callq  400b00 <strtok_r@plt>
  401484:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401488:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40148d:	75 ba                	jne    401449 <populate_progs+0x12>
  40148f:	90                   	nop
  401490:	90                   	nop
  401491:	c9                   	leaveq 
  401492:	c3                   	retq   
  401493:	90                   	nop

0000000000401494 <expand>:
  401494:	55                   	push   %rbp
  401495:	48 89 e5             	mov    %rsp,%rbp
  401498:	48 83 ec 20          	sub    $0x20,%rsp
  40149c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4014a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014a4:	8b 00                	mov    (%rax),%eax
  4014a6:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4014a9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4014ac:	8d 14 00             	lea    (%rax,%rax,1),%edx
  4014af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014b3:	89 d6                	mov    %edx,%esi
  4014b5:	48 89 c7             	mov    %rax,%rdi
  4014b8:	e8 fb 09 00 00       	callq  401eb8 <UArray_resize>
  4014bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014c1:	8b 40 14             	mov    0x14(%rax),%eax
  4014c4:	85 c0                	test   %eax,%eax
  4014c6:	7e 69                	jle    401531 <expand+0x9d>
  4014c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014cc:	48 8b 40 08          	mov    0x8(%rax),%rax
  4014d0:	48 89 c2             	mov    %rax,%rdx
  4014d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014d7:	8b 40 14             	mov    0x14(%rax),%eax
  4014da:	48 98                	cltq   
  4014dc:	48 c1 e0 03          	shl    $0x3,%rax
  4014e0:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  4014e4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4014e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4014ec:	8b 40 14             	mov    0x14(%rax),%eax
  4014ef:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4014f2:	89 d1                	mov    %edx,%ecx
  4014f4:	29 c1                	sub    %eax,%ecx
  4014f6:	89 c8                	mov    %ecx,%eax
  4014f8:	48 98                	cltq   
  4014fa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  401501:	00 
  401502:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401505:	48 98                	cltq   
  401507:	48 c1 e0 03          	shl    $0x3,%rax
  40150b:	48 03 45 f0          	add    -0x10(%rbp),%rax
  40150f:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  401513:	48 89 ce             	mov    %rcx,%rsi
  401516:	48 89 c7             	mov    %rax,%rdi
  401519:	e8 22 f6 ff ff       	callq  400b40 <memcpy@plt>
  40151e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401522:	8b 40 14             	mov    0x14(%rax),%eax
  401525:	89 c2                	mov    %eax,%edx
  401527:	03 55 fc             	add    -0x4(%rbp),%edx
  40152a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40152e:	89 50 14             	mov    %edx,0x14(%rax)
  401531:	c9                   	leaveq 
  401532:	c3                   	retq   

0000000000401533 <Seq_new>:
  401533:	55                   	push   %rbp
  401534:	48 89 e5             	mov    %rsp,%rbp
  401537:	53                   	push   %rbx
  401538:	48 83 ec 28          	sub    $0x28,%rsp
  40153c:	89 7d dc             	mov    %edi,-0x24(%rbp)
  40153f:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  401543:	79 1b                	jns    401560 <Seq_new+0x2d>
  401545:	ba 1c 00 00 00       	mov    $0x1c,%edx
  40154a:	48 8d 35 e1 10 00 00 	lea    0x10e1(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401551:	48 8d 05 80 18 20 00 	lea    0x201880(%rip),%rax        # 602dd8 <Assert_Failed>
  401558:	48 89 c7             	mov    %rax,%rdi
  40155b:	e8 8c 0b 00 00       	callq  4020ec <Except_raise>
  401560:	b9 1d 00 00 00       	mov    $0x1d,%ecx
  401565:	48 8d 15 c6 10 00 00 	lea    0x10c6(%rip),%rdx        # 402632 <_IO_stdin_used+0xea>
  40156c:	be 18 00 00 00       	mov    $0x18,%esi
  401571:	bf 01 00 00 00       	mov    $0x1,%edi
  401576:	e8 a0 0d 00 00       	callq  40231b <Mem_calloc>
  40157b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40157f:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  401583:	75 07                	jne    40158c <Seq_new+0x59>
  401585:	c7 45 dc 10 00 00 00 	movl   $0x10,-0x24(%rbp)
  40158c:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40158f:	48 98                	cltq   
  401591:	48 c1 e0 03          	shl    $0x3,%rax
  401595:	ba 21 00 00 00       	mov    $0x21,%edx
  40159a:	48 8d 35 91 10 00 00 	lea    0x1091(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  4015a1:	48 89 c7             	mov    %rax,%rdi
  4015a4:	e8 e3 0c 00 00       	callq  40228c <Mem_alloc>
  4015a9:	48 89 c2             	mov    %rax,%rdx
  4015ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015b0:	8b 5d dc             	mov    -0x24(%rbp),%ebx
  4015b3:	48 89 d1             	mov    %rdx,%rcx
  4015b6:	ba 08 00 00 00       	mov    $0x8,%edx
  4015bb:	89 de                	mov    %ebx,%esi
  4015bd:	48 89 c7             	mov    %rax,%rdi
  4015c0:	e8 b5 06 00 00       	callq  401c7a <UArrayRep_init>
  4015c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4015c9:	48 83 c4 28          	add    $0x28,%rsp
  4015cd:	5b                   	pop    %rbx
  4015ce:	c9                   	leaveq 
  4015cf:	c3                   	retq   

00000000004015d0 <Seq_seq>:
  4015d0:	55                   	push   %rbp
  4015d1:	48 89 e5             	mov    %rsp,%rbp
  4015d4:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
  4015db:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
  4015e2:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  4015e9:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  4015f0:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
  4015f7:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
  4015fe:	0f b6 c0             	movzbl %al,%eax
  401601:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401608:	00 
  401609:	48 8d 05 29 00 00 00 	lea    0x29(%rip),%rax        # 401639 <Seq_seq+0x69>
  401610:	48 29 d0             	sub    %rdx,%rax
  401613:	48 8d 55 ff          	lea    -0x1(%rbp),%rdx
  401617:	ff e0                	jmpq   *%rax
  401619:	0f 29 7a f1          	movaps %xmm7,-0xf(%rdx)
  40161d:	0f 29 72 e1          	movaps %xmm6,-0x1f(%rdx)
  401621:	0f 29 6a d1          	movaps %xmm5,-0x2f(%rdx)
  401625:	0f 29 62 c1          	movaps %xmm4,-0x3f(%rdx)
  401629:	0f 29 5a b1          	movaps %xmm3,-0x4f(%rdx)
  40162d:	0f 29 52 a1          	movaps %xmm2,-0x5f(%rdx)
  401631:	0f 29 4a 91          	movaps %xmm1,-0x6f(%rdx)
  401635:	0f 29 42 81          	movaps %xmm0,-0x7f(%rdx)
  401639:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
  401640:	bf 00 00 00 00       	mov    $0x0,%edi
  401645:	e8 e9 fe ff ff       	callq  401533 <Seq_new>
  40164a:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  401651:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401658:	c7 00 08 00 00 00    	movl   $0x8,(%rax)
  40165e:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401665:	c7 40 04 30 00 00 00 	movl   $0x30,0x4(%rax)
  40166c:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401673:	48 8d 55 10          	lea    0x10(%rbp),%rdx
  401677:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40167b:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
  401682:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
  401689:	48 89 50 10          	mov    %rdx,0x10(%rax)
  40168d:	eb 67                	jmp    4016f6 <Seq_seq+0x126>
  40168f:	48 8b 95 28 ff ff ff 	mov    -0xd8(%rbp),%rdx
  401696:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40169d:	48 89 d6             	mov    %rdx,%rsi
  4016a0:	48 89 c7             	mov    %rax,%rdi
  4016a3:	e8 cd 03 00 00       	callq  401a75 <Seq_addhi>
  4016a8:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
  4016ae:	83 f8 30             	cmp    $0x30,%eax
  4016b1:	73 24                	jae    4016d7 <Seq_seq+0x107>
  4016b3:	48 8b 95 40 ff ff ff 	mov    -0xc0(%rbp),%rdx
  4016ba:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
  4016c0:	89 c0                	mov    %eax,%eax
  4016c2:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  4016c6:	8b 95 30 ff ff ff    	mov    -0xd0(%rbp),%edx
  4016cc:	83 c2 08             	add    $0x8,%edx
  4016cf:	89 95 30 ff ff ff    	mov    %edx,-0xd0(%rbp)
  4016d5:	eb 15                	jmp    4016ec <Seq_seq+0x11c>
  4016d7:	48 8b 95 38 ff ff ff 	mov    -0xc8(%rbp),%rdx
  4016de:	48 89 d0             	mov    %rdx,%rax
  4016e1:	48 83 c2 08          	add    $0x8,%rdx
  4016e5:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
  4016ec:	48 8b 00             	mov    (%rax),%rax
  4016ef:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  4016f6:	48 83 bd 28 ff ff ff 	cmpq   $0x0,-0xd8(%rbp)
  4016fd:	00 
  4016fe:	75 8f                	jne    40168f <Seq_seq+0xbf>
  401700:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  401707:	c9                   	leaveq 
  401708:	c3                   	retq   

0000000000401709 <Seq_free>:
  401709:	55                   	push   %rbp
  40170a:	48 89 e5             	mov    %rsp,%rbp
  40170d:	48 83 ec 10          	sub    $0x10,%rsp
  401711:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401715:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40171a:	74 0c                	je     401728 <Seq_free+0x1f>
  40171c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401720:	48 8b 00             	mov    (%rax),%rax
  401723:	48 85 c0             	test   %rax,%rax
  401726:	75 1d                	jne    401745 <Seq_free+0x3c>
  401728:	ba 2e 00 00 00       	mov    $0x2e,%edx
  40172d:	48 8d 35 fe 0e 00 00 	lea    0xefe(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401734:	48 8d 05 9d 16 20 00 	lea    0x20169d(%rip),%rax        # 602dd8 <Assert_Failed>
  40173b:	48 89 c7             	mov    %rax,%rdi
  40173e:	e8 a9 09 00 00       	callq  4020ec <Except_raise>
  401743:	eb 01                	jmp    401746 <Seq_free+0x3d>
  401745:	90                   	nop
  401746:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40174a:	48 89 c7             	mov    %rax,%rdi
  40174d:	e8 eb 05 00 00       	callq  401d3d <UArray_free>
  401752:	c9                   	leaveq 
  401753:	c3                   	retq   

0000000000401754 <Seq_length>:
  401754:	55                   	push   %rbp
  401755:	48 89 e5             	mov    %rsp,%rbp
  401758:	48 83 ec 10          	sub    $0x10,%rsp
  40175c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401760:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401765:	75 1b                	jne    401782 <Seq_length+0x2e>
  401767:	ba 33 00 00 00       	mov    $0x33,%edx
  40176c:	48 8d 35 bf 0e 00 00 	lea    0xebf(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401773:	48 8d 05 5e 16 20 00 	lea    0x20165e(%rip),%rax        # 602dd8 <Assert_Failed>
  40177a:	48 89 c7             	mov    %rax,%rdi
  40177d:	e8 6a 09 00 00       	callq  4020ec <Except_raise>
  401782:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401786:	8b 40 10             	mov    0x10(%rax),%eax
  401789:	c9                   	leaveq 
  40178a:	c3                   	retq   

000000000040178b <Seq_get>:
  40178b:	55                   	push   %rbp
  40178c:	48 89 e5             	mov    %rsp,%rbp
  40178f:	53                   	push   %rbx
  401790:	48 83 ec 18          	sub    $0x18,%rsp
  401794:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401798:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  40179b:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4017a0:	75 1b                	jne    4017bd <Seq_get+0x32>
  4017a2:	ba 37 00 00 00       	mov    $0x37,%edx
  4017a7:	48 8d 35 84 0e 00 00 	lea    0xe84(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  4017ae:	48 8d 05 23 16 20 00 	lea    0x201623(%rip),%rax        # 602dd8 <Assert_Failed>
  4017b5:	48 89 c7             	mov    %rax,%rdi
  4017b8:	e8 2f 09 00 00       	callq  4020ec <Except_raise>
  4017bd:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  4017c1:	78 0c                	js     4017cf <Seq_get+0x44>
  4017c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017c7:	8b 40 10             	mov    0x10(%rax),%eax
  4017ca:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  4017cd:	7f 1d                	jg     4017ec <Seq_get+0x61>
  4017cf:	ba 38 00 00 00       	mov    $0x38,%edx
  4017d4:	48 8d 35 57 0e 00 00 	lea    0xe57(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  4017db:	48 8d 05 f6 15 20 00 	lea    0x2015f6(%rip),%rax        # 602dd8 <Assert_Failed>
  4017e2:	48 89 c7             	mov    %rax,%rdi
  4017e5:	e8 02 09 00 00       	callq  4020ec <Except_raise>
  4017ea:	eb 01                	jmp    4017ed <Seq_get+0x62>
  4017ec:	90                   	nop
  4017ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017f1:	48 8b 40 08          	mov    0x8(%rax),%rax
  4017f5:	48 89 c1             	mov    %rax,%rcx
  4017f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4017fc:	8b 40 14             	mov    0x14(%rax),%eax
  4017ff:	03 45 e4             	add    -0x1c(%rbp),%eax
  401802:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401806:	8b 1a                	mov    (%rdx),%ebx
  401808:	89 c2                	mov    %eax,%edx
  40180a:	c1 fa 1f             	sar    $0x1f,%edx
  40180d:	f7 fb                	idiv   %ebx
  40180f:	89 d0                	mov    %edx,%eax
  401811:	48 98                	cltq   
  401813:	48 c1 e0 03          	shl    $0x3,%rax
  401817:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  40181b:	48 8b 00             	mov    (%rax),%rax
  40181e:	48 83 c4 18          	add    $0x18,%rsp
  401822:	5b                   	pop    %rbx
  401823:	c9                   	leaveq 
  401824:	c3                   	retq   

0000000000401825 <Seq_put>:
  401825:	55                   	push   %rbp
  401826:	48 89 e5             	mov    %rsp,%rbp
  401829:	53                   	push   %rbx
  40182a:	48 83 ec 38          	sub    $0x38,%rsp
  40182e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401832:	89 75 d4             	mov    %esi,-0x2c(%rbp)
  401835:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  401839:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  40183e:	75 1b                	jne    40185b <Seq_put+0x36>
  401840:	ba 3e 00 00 00       	mov    $0x3e,%edx
  401845:	48 8d 35 e6 0d 00 00 	lea    0xde6(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  40184c:	48 8d 05 85 15 20 00 	lea    0x201585(%rip),%rax        # 602dd8 <Assert_Failed>
  401853:	48 89 c7             	mov    %rax,%rdi
  401856:	e8 91 08 00 00       	callq  4020ec <Except_raise>
  40185b:	83 7d d4 00          	cmpl   $0x0,-0x2c(%rbp)
  40185f:	78 0c                	js     40186d <Seq_put+0x48>
  401861:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401865:	8b 40 10             	mov    0x10(%rax),%eax
  401868:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  40186b:	7f 1d                	jg     40188a <Seq_put+0x65>
  40186d:	ba 3f 00 00 00       	mov    $0x3f,%edx
  401872:	48 8d 35 b9 0d 00 00 	lea    0xdb9(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401879:	48 8d 05 58 15 20 00 	lea    0x201558(%rip),%rax        # 602dd8 <Assert_Failed>
  401880:	48 89 c7             	mov    %rax,%rdi
  401883:	e8 64 08 00 00       	callq  4020ec <Except_raise>
  401888:	eb 01                	jmp    40188b <Seq_put+0x66>
  40188a:	90                   	nop
  40188b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40188f:	48 8b 40 08          	mov    0x8(%rax),%rax
  401893:	48 89 c1             	mov    %rax,%rcx
  401896:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40189a:	8b 40 14             	mov    0x14(%rax),%eax
  40189d:	03 45 d4             	add    -0x2c(%rbp),%eax
  4018a0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4018a4:	8b 1a                	mov    (%rdx),%ebx
  4018a6:	89 c2                	mov    %eax,%edx
  4018a8:	c1 fa 1f             	sar    $0x1f,%edx
  4018ab:	f7 fb                	idiv   %ebx
  4018ad:	89 d0                	mov    %edx,%eax
  4018af:	48 98                	cltq   
  4018b1:	48 c1 e0 03          	shl    $0x3,%rax
  4018b5:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  4018b9:	48 8b 00             	mov    (%rax),%rax
  4018bc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4018c0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4018c4:	48 8b 40 08          	mov    0x8(%rax),%rax
  4018c8:	48 89 c1             	mov    %rax,%rcx
  4018cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4018cf:	8b 40 14             	mov    0x14(%rax),%eax
  4018d2:	03 45 d4             	add    -0x2c(%rbp),%eax
  4018d5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4018d9:	8b 1a                	mov    (%rdx),%ebx
  4018db:	89 c2                	mov    %eax,%edx
  4018dd:	c1 fa 1f             	sar    $0x1f,%edx
  4018e0:	f7 fb                	idiv   %ebx
  4018e2:	89 d0                	mov    %edx,%eax
  4018e4:	48 98                	cltq   
  4018e6:	48 c1 e0 03          	shl    $0x3,%rax
  4018ea:	48 8d 14 01          	lea    (%rcx,%rax,1),%rdx
  4018ee:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4018f2:	48 89 02             	mov    %rax,(%rdx)
  4018f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4018f9:	48 83 c4 38          	add    $0x38,%rsp
  4018fd:	5b                   	pop    %rbx
  4018fe:	c9                   	leaveq 
  4018ff:	c3                   	retq   

0000000000401900 <Seq_remhi>:
  401900:	55                   	push   %rbp
  401901:	48 89 e5             	mov    %rsp,%rbp
  401904:	53                   	push   %rbx
  401905:	48 83 ec 28          	sub    $0x28,%rsp
  401909:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40190d:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401912:	75 1b                	jne    40192f <Seq_remhi+0x2f>
  401914:	ba 48 00 00 00       	mov    $0x48,%edx
  401919:	48 8d 35 12 0d 00 00 	lea    0xd12(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401920:	48 8d 05 b1 14 20 00 	lea    0x2014b1(%rip),%rax        # 602dd8 <Assert_Failed>
  401927:	48 89 c7             	mov    %rax,%rdi
  40192a:	e8 bd 07 00 00       	callq  4020ec <Except_raise>
  40192f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401933:	8b 40 10             	mov    0x10(%rax),%eax
  401936:	85 c0                	test   %eax,%eax
  401938:	7f 1b                	jg     401955 <Seq_remhi+0x55>
  40193a:	ba 49 00 00 00       	mov    $0x49,%edx
  40193f:	48 8d 35 ec 0c 00 00 	lea    0xcec(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401946:	48 8d 05 8b 14 20 00 	lea    0x20148b(%rip),%rax        # 602dd8 <Assert_Failed>
  40194d:	48 89 c7             	mov    %rax,%rdi
  401950:	e8 97 07 00 00       	callq  4020ec <Except_raise>
  401955:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401959:	8b 40 10             	mov    0x10(%rax),%eax
  40195c:	8d 50 ff             	lea    -0x1(%rax),%edx
  40195f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401963:	89 50 10             	mov    %edx,0x10(%rax)
  401966:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40196a:	8b 40 10             	mov    0x10(%rax),%eax
  40196d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401970:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401974:	48 8b 40 08          	mov    0x8(%rax),%rax
  401978:	48 89 c1             	mov    %rax,%rcx
  40197b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40197f:	8b 40 14             	mov    0x14(%rax),%eax
  401982:	03 45 ec             	add    -0x14(%rbp),%eax
  401985:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401989:	8b 1a                	mov    (%rdx),%ebx
  40198b:	89 c2                	mov    %eax,%edx
  40198d:	c1 fa 1f             	sar    $0x1f,%edx
  401990:	f7 fb                	idiv   %ebx
  401992:	89 d0                	mov    %edx,%eax
  401994:	48 98                	cltq   
  401996:	48 c1 e0 03          	shl    $0x3,%rax
  40199a:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  40199e:	48 8b 00             	mov    (%rax),%rax
  4019a1:	48 83 c4 28          	add    $0x28,%rsp
  4019a5:	5b                   	pop    %rbx
  4019a6:	c9                   	leaveq 
  4019a7:	c3                   	retq   

00000000004019a8 <Seq_remlo>:
  4019a8:	55                   	push   %rbp
  4019a9:	48 89 e5             	mov    %rsp,%rbp
  4019ac:	53                   	push   %rbx
  4019ad:	48 83 ec 28          	sub    $0x28,%rsp
  4019b1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4019b5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  4019bc:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  4019c1:	75 1b                	jne    4019de <Seq_remlo+0x36>
  4019c3:	ba 51 00 00 00       	mov    $0x51,%edx
  4019c8:	48 8d 35 63 0c 00 00 	lea    0xc63(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  4019cf:	48 8d 05 02 14 20 00 	lea    0x201402(%rip),%rax        # 602dd8 <Assert_Failed>
  4019d6:	48 89 c7             	mov    %rax,%rdi
  4019d9:	e8 0e 07 00 00       	callq  4020ec <Except_raise>
  4019de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4019e2:	8b 40 10             	mov    0x10(%rax),%eax
  4019e5:	85 c0                	test   %eax,%eax
  4019e7:	7f 1b                	jg     401a04 <Seq_remlo+0x5c>
  4019e9:	ba 52 00 00 00       	mov    $0x52,%edx
  4019ee:	48 8d 35 3d 0c 00 00 	lea    0xc3d(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  4019f5:	48 8d 05 dc 13 20 00 	lea    0x2013dc(%rip),%rax        # 602dd8 <Assert_Failed>
  4019fc:	48 89 c7             	mov    %rax,%rdi
  4019ff:	e8 e8 06 00 00       	callq  4020ec <Except_raise>
  401a04:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a08:	48 8b 40 08          	mov    0x8(%rax),%rax
  401a0c:	48 89 c1             	mov    %rax,%rcx
  401a0f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a13:	8b 40 14             	mov    0x14(%rax),%eax
  401a16:	03 45 ec             	add    -0x14(%rbp),%eax
  401a19:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401a1d:	8b 1a                	mov    (%rdx),%ebx
  401a1f:	89 c2                	mov    %eax,%edx
  401a21:	c1 fa 1f             	sar    $0x1f,%edx
  401a24:	f7 fb                	idiv   %ebx
  401a26:	89 d0                	mov    %edx,%eax
  401a28:	48 98                	cltq   
  401a2a:	48 c1 e0 03          	shl    $0x3,%rax
  401a2e:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  401a32:	48 8b 00             	mov    (%rax),%rax
  401a35:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401a39:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a3d:	8b 40 14             	mov    0x14(%rax),%eax
  401a40:	8d 50 01             	lea    0x1(%rax),%edx
  401a43:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a47:	8b 08                	mov    (%rax),%ecx
  401a49:	89 d0                	mov    %edx,%eax
  401a4b:	89 c2                	mov    %eax,%edx
  401a4d:	c1 fa 1f             	sar    $0x1f,%edx
  401a50:	f7 f9                	idiv   %ecx
  401a52:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a56:	89 50 14             	mov    %edx,0x14(%rax)
  401a59:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a5d:	8b 40 10             	mov    0x10(%rax),%eax
  401a60:	8d 50 ff             	lea    -0x1(%rax),%edx
  401a63:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401a67:	89 50 10             	mov    %edx,0x10(%rax)
  401a6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401a6e:	48 83 c4 28          	add    $0x28,%rsp
  401a72:	5b                   	pop    %rbx
  401a73:	c9                   	leaveq 
  401a74:	c3                   	retq   

0000000000401a75 <Seq_addhi>:
  401a75:	55                   	push   %rbp
  401a76:	48 89 e5             	mov    %rsp,%rbp
  401a79:	53                   	push   %rbx
  401a7a:	48 83 ec 28          	sub    $0x28,%rsp
  401a7e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401a82:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401a86:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401a8b:	75 1b                	jne    401aa8 <Seq_addhi+0x33>
  401a8d:	ba 5b 00 00 00       	mov    $0x5b,%edx
  401a92:	48 8d 35 99 0b 00 00 	lea    0xb99(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401a99:	48 8d 05 38 13 20 00 	lea    0x201338(%rip),%rax        # 602dd8 <Assert_Failed>
  401aa0:	48 89 c7             	mov    %rax,%rdi
  401aa3:	e8 44 06 00 00       	callq  4020ec <Except_raise>
  401aa8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401aac:	8b 50 10             	mov    0x10(%rax),%edx
  401aaf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ab3:	8b 00                	mov    (%rax),%eax
  401ab5:	39 c2                	cmp    %eax,%edx
  401ab7:	75 0c                	jne    401ac5 <Seq_addhi+0x50>
  401ab9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401abd:	48 89 c7             	mov    %rax,%rdi
  401ac0:	e8 cf f9 ff ff       	callq  401494 <expand>
  401ac5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ac9:	8b 40 10             	mov    0x10(%rax),%eax
  401acc:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401acf:	8d 50 01             	lea    0x1(%rax),%edx
  401ad2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ad6:	89 50 10             	mov    %edx,0x10(%rax)
  401ad9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401add:	48 8b 40 08          	mov    0x8(%rax),%rax
  401ae1:	48 89 c1             	mov    %rax,%rcx
  401ae4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ae8:	8b 40 14             	mov    0x14(%rax),%eax
  401aeb:	03 45 ec             	add    -0x14(%rbp),%eax
  401aee:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401af2:	8b 1a                	mov    (%rdx),%ebx
  401af4:	89 c2                	mov    %eax,%edx
  401af6:	c1 fa 1f             	sar    $0x1f,%edx
  401af9:	f7 fb                	idiv   %ebx
  401afb:	89 d0                	mov    %edx,%eax
  401afd:	48 98                	cltq   
  401aff:	48 c1 e0 03          	shl    $0x3,%rax
  401b03:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  401b07:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401b0b:	48 89 10             	mov    %rdx,(%rax)
  401b0e:	48 8b 00             	mov    (%rax),%rax
  401b11:	48 83 c4 28          	add    $0x28,%rsp
  401b15:	5b                   	pop    %rbx
  401b16:	c9                   	leaveq 
  401b17:	c3                   	retq   

0000000000401b18 <Seq_addlo>:
  401b18:	55                   	push   %rbp
  401b19:	48 89 e5             	mov    %rsp,%rbp
  401b1c:	53                   	push   %rbx
  401b1d:	48 83 ec 28          	sub    $0x28,%rsp
  401b21:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401b25:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401b29:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401b30:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  401b35:	75 1b                	jne    401b52 <Seq_addlo+0x3a>
  401b37:	ba 64 00 00 00       	mov    $0x64,%edx
  401b3c:	48 8d 35 ef 0a 00 00 	lea    0xaef(%rip),%rsi        # 402632 <_IO_stdin_used+0xea>
  401b43:	48 8d 05 8e 12 20 00 	lea    0x20128e(%rip),%rax        # 602dd8 <Assert_Failed>
  401b4a:	48 89 c7             	mov    %rax,%rdi
  401b4d:	e8 9a 05 00 00       	callq  4020ec <Except_raise>
  401b52:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b56:	8b 50 10             	mov    0x10(%rax),%edx
  401b59:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b5d:	8b 00                	mov    (%rax),%eax
  401b5f:	39 c2                	cmp    %eax,%edx
  401b61:	75 0c                	jne    401b6f <Seq_addlo+0x57>
  401b63:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b67:	48 89 c7             	mov    %rax,%rdi
  401b6a:	e8 25 f9 ff ff       	callq  401494 <expand>
  401b6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b73:	8b 40 14             	mov    0x14(%rax),%eax
  401b76:	8d 50 ff             	lea    -0x1(%rax),%edx
  401b79:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b7d:	89 50 14             	mov    %edx,0x14(%rax)
  401b80:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b84:	8b 40 14             	mov    0x14(%rax),%eax
  401b87:	85 c0                	test   %eax,%eax
  401b89:	79 10                	jns    401b9b <Seq_addlo+0x83>
  401b8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b8f:	8b 00                	mov    (%rax),%eax
  401b91:	8d 50 ff             	lea    -0x1(%rax),%edx
  401b94:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b98:	89 50 14             	mov    %edx,0x14(%rax)
  401b9b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401b9f:	8b 40 10             	mov    0x10(%rax),%eax
  401ba2:	8d 50 01             	lea    0x1(%rax),%edx
  401ba5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401ba9:	89 50 10             	mov    %edx,0x10(%rax)
  401bac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401bb0:	48 8b 40 08          	mov    0x8(%rax),%rax
  401bb4:	48 89 c1             	mov    %rax,%rcx
  401bb7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401bbb:	8b 40 14             	mov    0x14(%rax),%eax
  401bbe:	03 45 ec             	add    -0x14(%rbp),%eax
  401bc1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  401bc5:	8b 1a                	mov    (%rdx),%ebx
  401bc7:	89 c2                	mov    %eax,%edx
  401bc9:	c1 fa 1f             	sar    $0x1f,%edx
  401bcc:	f7 fb                	idiv   %ebx
  401bce:	89 d0                	mov    %edx,%eax
  401bd0:	48 98                	cltq   
  401bd2:	48 c1 e0 03          	shl    $0x3,%rax
  401bd6:	48 8d 04 01          	lea    (%rcx,%rax,1),%rax
  401bda:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  401bde:	48 89 10             	mov    %rdx,(%rax)
  401be1:	48 8b 00             	mov    (%rax),%rax
  401be4:	48 83 c4 28          	add    $0x28,%rsp
  401be8:	5b                   	pop    %rbx
  401be9:	c9                   	leaveq 
  401bea:	c3                   	retq   
  401beb:	90                   	nop

0000000000401bec <UArray_new>:
  401bec:	55                   	push   %rbp
  401bed:	48 89 e5             	mov    %rsp,%rbp
  401bf0:	53                   	push   %rbx
  401bf1:	48 83 ec 28          	sub    $0x28,%rsp
  401bf5:	89 7d dc             	mov    %edi,-0x24(%rbp)
  401bf8:	89 75 d8             	mov    %esi,-0x28(%rbp)
  401bfb:	ba 0b 00 00 00       	mov    $0xb,%edx
  401c00:	48 8d 35 35 0a 00 00 	lea    0xa35(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401c07:	bf 10 00 00 00       	mov    $0x10,%edi
  401c0c:	e8 7b 06 00 00       	callq  40228c <Mem_alloc>
  401c11:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401c15:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  401c19:	7e 3b                	jle    401c56 <UArray_new+0x6a>
  401c1b:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401c1e:	48 63 d8             	movslq %eax,%rbx
  401c21:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401c24:	48 98                	cltq   
  401c26:	b9 0d 00 00 00       	mov    $0xd,%ecx
  401c2b:	48 8d 15 0a 0a 00 00 	lea    0xa0a(%rip),%rdx        # 40263c <_IO_stdin_used+0xf4>
  401c32:	48 89 de             	mov    %rbx,%rsi
  401c35:	48 89 c7             	mov    %rax,%rdi
  401c38:	e8 de 06 00 00       	callq  40231b <Mem_calloc>
  401c3d:	48 89 c1             	mov    %rax,%rcx
  401c40:	8b 55 d8             	mov    -0x28(%rbp),%edx
  401c43:	8b 5d dc             	mov    -0x24(%rbp),%ebx
  401c46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c4a:	89 de                	mov    %ebx,%esi
  401c4c:	48 89 c7             	mov    %rax,%rdi
  401c4f:	e8 26 00 00 00       	callq  401c7a <UArrayRep_init>
  401c54:	eb 19                	jmp    401c6f <UArray_new+0x83>
  401c56:	8b 55 d8             	mov    -0x28(%rbp),%edx
  401c59:	8b 5d dc             	mov    -0x24(%rbp),%ebx
  401c5c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c60:	b9 00 00 00 00       	mov    $0x0,%ecx
  401c65:	89 de                	mov    %ebx,%esi
  401c67:	48 89 c7             	mov    %rax,%rdi
  401c6a:	e8 0b 00 00 00       	callq  401c7a <UArrayRep_init>
  401c6f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c73:	48 83 c4 28          	add    $0x28,%rsp
  401c77:	5b                   	pop    %rbx
  401c78:	c9                   	leaveq 
  401c79:	c3                   	retq   

0000000000401c7a <UArrayRep_init>:
  401c7a:	55                   	push   %rbp
  401c7b:	48 89 e5             	mov    %rsp,%rbp
  401c7e:	48 83 ec 20          	sub    $0x20,%rsp
  401c82:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c86:	89 75 f4             	mov    %esi,-0xc(%rbp)
  401c89:	89 55 f0             	mov    %edx,-0x10(%rbp)
  401c8c:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
  401c90:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401c95:	75 1b                	jne    401cb2 <UArrayRep_init+0x38>
  401c97:	ba 13 00 00 00       	mov    $0x13,%edx
  401c9c:	48 8d 35 99 09 00 00 	lea    0x999(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401ca3:	48 8d 05 2e 11 20 00 	lea    0x20112e(%rip),%rax        # 602dd8 <Assert_Failed>
  401caa:	48 89 c7             	mov    %rax,%rdi
  401cad:	e8 3a 04 00 00       	callq  4020ec <Except_raise>
  401cb2:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401cb7:	74 06                	je     401cbf <UArrayRep_init+0x45>
  401cb9:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401cbd:	7f 28                	jg     401ce7 <UArrayRep_init+0x6d>
  401cbf:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401cc3:	75 07                	jne    401ccc <UArrayRep_init+0x52>
  401cc5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401cca:	74 1b                	je     401ce7 <UArrayRep_init+0x6d>
  401ccc:	ba 14 00 00 00       	mov    $0x14,%edx
  401cd1:	48 8d 35 64 09 00 00 	lea    0x964(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401cd8:	48 8d 05 f9 10 20 00 	lea    0x2010f9(%rip),%rax        # 602dd8 <Assert_Failed>
  401cdf:	48 89 c7             	mov    %rax,%rdi
  401ce2:	e8 05 04 00 00       	callq  4020ec <Except_raise>
  401ce7:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
  401ceb:	7f 1b                	jg     401d08 <UArrayRep_init+0x8e>
  401ced:	ba 15 00 00 00       	mov    $0x15,%edx
  401cf2:	48 8d 35 43 09 00 00 	lea    0x943(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401cf9:	48 8d 05 d8 10 20 00 	lea    0x2010d8(%rip),%rax        # 602dd8 <Assert_Failed>
  401d00:	48 89 c7             	mov    %rax,%rdi
  401d03:	e8 e4 03 00 00       	callq  4020ec <Except_raise>
  401d08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d0c:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401d0f:	89 10                	mov    %edx,(%rax)
  401d11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d15:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401d18:	89 50 04             	mov    %edx,0x4(%rax)
  401d1b:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401d1f:	7e 0e                	jle    401d2f <UArrayRep_init+0xb5>
  401d21:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401d25:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d29:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401d2d:	eb 0c                	jmp    401d3b <UArrayRep_init+0xc1>
  401d2f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d33:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401d3a:	00 
  401d3b:	c9                   	leaveq 
  401d3c:	c3                   	retq   

0000000000401d3d <UArray_free>:
  401d3d:	55                   	push   %rbp
  401d3e:	48 89 e5             	mov    %rsp,%rbp
  401d41:	48 83 ec 10          	sub    $0x10,%rsp
  401d45:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d49:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401d4e:	74 0c                	je     401d5c <UArray_free+0x1f>
  401d50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d54:	48 8b 00             	mov    (%rax),%rax
  401d57:	48 85 c0             	test   %rax,%rax
  401d5a:	75 1d                	jne    401d79 <UArray_free+0x3c>
  401d5c:	ba 1e 00 00 00       	mov    $0x1e,%edx
  401d61:	48 8d 35 d4 08 00 00 	lea    0x8d4(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401d68:	48 8d 05 69 10 20 00 	lea    0x201069(%rip),%rax        # 602dd8 <Assert_Failed>
  401d6f:	48 89 c7             	mov    %rax,%rdi
  401d72:	e8 75 03 00 00       	callq  4020ec <Except_raise>
  401d77:	eb 01                	jmp    401d7a <UArray_free+0x3d>
  401d79:	90                   	nop
  401d7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d7e:	48 8b 00             	mov    (%rax),%rax
  401d81:	48 8b 40 08          	mov    0x8(%rax),%rax
  401d85:	ba 1f 00 00 00       	mov    $0x1f,%edx
  401d8a:	48 8d 35 ab 08 00 00 	lea    0x8ab(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401d91:	48 89 c7             	mov    %rax,%rdi
  401d94:	e8 3e 06 00 00       	callq  4023d7 <Mem_free>
  401d99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d9d:	48 8b 00             	mov    (%rax),%rax
  401da0:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401da7:	00 
  401da8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dac:	48 8b 00             	mov    (%rax),%rax
  401daf:	ba 20 00 00 00       	mov    $0x20,%edx
  401db4:	48 8d 35 81 08 00 00 	lea    0x881(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401dbb:	48 89 c7             	mov    %rax,%rdi
  401dbe:	e8 14 06 00 00       	callq  4023d7 <Mem_free>
  401dc3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401dc7:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  401dce:	c9                   	leaveq 
  401dcf:	c3                   	retq   

0000000000401dd0 <UArray_at>:
  401dd0:	55                   	push   %rbp
  401dd1:	48 89 e5             	mov    %rsp,%rbp
  401dd4:	48 83 ec 10          	sub    $0x10,%rsp
  401dd8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401ddc:	89 75 f4             	mov    %esi,-0xc(%rbp)
  401ddf:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401de4:	75 1b                	jne    401e01 <UArray_at+0x31>
  401de6:	ba 23 00 00 00       	mov    $0x23,%edx
  401deb:	48 8d 35 4a 08 00 00 	lea    0x84a(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401df2:	48 8d 05 df 0f 20 00 	lea    0x200fdf(%rip),%rax        # 602dd8 <Assert_Failed>
  401df9:	48 89 c7             	mov    %rax,%rdi
  401dfc:	e8 eb 02 00 00       	callq  4020ec <Except_raise>
  401e01:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  401e05:	78 0b                	js     401e12 <UArray_at+0x42>
  401e07:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e0b:	8b 00                	mov    (%rax),%eax
  401e0d:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  401e10:	7f 1d                	jg     401e2f <UArray_at+0x5f>
  401e12:	ba 24 00 00 00       	mov    $0x24,%edx
  401e17:	48 8d 35 1e 08 00 00 	lea    0x81e(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401e1e:	48 8d 05 b3 0f 20 00 	lea    0x200fb3(%rip),%rax        # 602dd8 <Assert_Failed>
  401e25:	48 89 c7             	mov    %rax,%rdi
  401e28:	e8 bf 02 00 00       	callq  4020ec <Except_raise>
  401e2d:	eb 01                	jmp    401e30 <UArray_at+0x60>
  401e2f:	90                   	nop
  401e30:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e34:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401e38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e3c:	8b 40 04             	mov    0x4(%rax),%eax
  401e3f:	0f af 45 f4          	imul   -0xc(%rbp),%eax
  401e43:	48 98                	cltq   
  401e45:	48 8d 04 02          	lea    (%rdx,%rax,1),%rax
  401e49:	c9                   	leaveq 
  401e4a:	c3                   	retq   

0000000000401e4b <UArray_length>:
  401e4b:	55                   	push   %rbp
  401e4c:	48 89 e5             	mov    %rsp,%rbp
  401e4f:	48 83 ec 10          	sub    $0x10,%rsp
  401e53:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e57:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401e5c:	75 1b                	jne    401e79 <UArray_length+0x2e>
  401e5e:	ba 28 00 00 00       	mov    $0x28,%edx
  401e63:	48 8d 35 d2 07 00 00 	lea    0x7d2(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401e6a:	48 8d 05 67 0f 20 00 	lea    0x200f67(%rip),%rax        # 602dd8 <Assert_Failed>
  401e71:	48 89 c7             	mov    %rax,%rdi
  401e74:	e8 73 02 00 00       	callq  4020ec <Except_raise>
  401e79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e7d:	8b 00                	mov    (%rax),%eax
  401e7f:	c9                   	leaveq 
  401e80:	c3                   	retq   

0000000000401e81 <UArray_size>:
  401e81:	55                   	push   %rbp
  401e82:	48 89 e5             	mov    %rsp,%rbp
  401e85:	48 83 ec 10          	sub    $0x10,%rsp
  401e89:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e8d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  401e92:	75 1b                	jne    401eaf <UArray_size+0x2e>
  401e94:	ba 2c 00 00 00       	mov    $0x2c,%edx
  401e99:	48 8d 35 9c 07 00 00 	lea    0x79c(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401ea0:	48 8d 05 31 0f 20 00 	lea    0x200f31(%rip),%rax        # 602dd8 <Assert_Failed>
  401ea7:	48 89 c7             	mov    %rax,%rdi
  401eaa:	e8 3d 02 00 00       	callq  4020ec <Except_raise>
  401eaf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401eb3:	8b 40 04             	mov    0x4(%rax),%eax
  401eb6:	c9                   	leaveq 
  401eb7:	c3                   	retq   

0000000000401eb8 <UArray_resize>:
  401eb8:	55                   	push   %rbp
  401eb9:	48 89 e5             	mov    %rsp,%rbp
  401ebc:	53                   	push   %rbx
  401ebd:	48 83 ec 18          	sub    $0x18,%rsp
  401ec1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401ec5:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401ec8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401ecd:	75 1b                	jne    401eea <UArray_resize+0x32>
  401ecf:	ba 30 00 00 00       	mov    $0x30,%edx
  401ed4:	48 8d 35 61 07 00 00 	lea    0x761(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401edb:	48 8d 05 f6 0e 20 00 	lea    0x200ef6(%rip),%rax        # 602dd8 <Assert_Failed>
  401ee2:	48 89 c7             	mov    %rax,%rdi
  401ee5:	e8 02 02 00 00       	callq  4020ec <Except_raise>
  401eea:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  401eee:	79 1b                	jns    401f0b <UArray_resize+0x53>
  401ef0:	ba 31 00 00 00       	mov    $0x31,%edx
  401ef5:	48 8d 35 40 07 00 00 	lea    0x740(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401efc:	48 8d 05 d5 0e 20 00 	lea    0x200ed5(%rip),%rax        # 602dd8 <Assert_Failed>
  401f03:	48 89 c7             	mov    %rax,%rdi
  401f06:	e8 e1 01 00 00       	callq  4020ec <Except_raise>
  401f0b:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  401f0f:	75 2a                	jne    401f3b <UArray_resize+0x83>
  401f11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f15:	48 8b 40 08          	mov    0x8(%rax),%rax
  401f19:	ba 33 00 00 00       	mov    $0x33,%edx
  401f1e:	48 8d 35 17 07 00 00 	lea    0x717(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401f25:	48 89 c7             	mov    %rax,%rdi
  401f28:	e8 aa 04 00 00       	callq  4023d7 <Mem_free>
  401f2d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f31:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  401f38:	00 
  401f39:	eb 70                	jmp    401fab <UArray_resize+0xf3>
  401f3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f3f:	8b 00                	mov    (%rax),%eax
  401f41:	85 c0                	test   %eax,%eax
  401f43:	75 2e                	jne    401f73 <UArray_resize+0xbb>
  401f45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f49:	8b 40 04             	mov    0x4(%rax),%eax
  401f4c:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
  401f50:	48 98                	cltq   
  401f52:	ba 35 00 00 00       	mov    $0x35,%edx
  401f57:	48 8d 35 de 06 00 00 	lea    0x6de(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401f5e:	48 89 c7             	mov    %rax,%rdi
  401f61:	e8 26 03 00 00       	callq  40228c <Mem_alloc>
  401f66:	48 89 c2             	mov    %rax,%rdx
  401f69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f6d:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401f71:	eb 38                	jmp    401fab <UArray_resize+0xf3>
  401f73:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f77:	8b 40 04             	mov    0x4(%rax),%eax
  401f7a:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
  401f7e:	48 63 d8             	movslq %eax,%rbx
  401f81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f85:	48 8b 40 08          	mov    0x8(%rax),%rax
  401f89:	b9 37 00 00 00       	mov    $0x37,%ecx
  401f8e:	48 8d 15 a7 06 00 00 	lea    0x6a7(%rip),%rdx        # 40263c <_IO_stdin_used+0xf4>
  401f95:	48 89 de             	mov    %rbx,%rsi
  401f98:	48 89 c7             	mov    %rax,%rdi
  401f9b:	e8 5f 04 00 00       	callq  4023ff <Mem_resize>
  401fa0:	48 89 c2             	mov    %rax,%rdx
  401fa3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401fa7:	48 89 50 08          	mov    %rdx,0x8(%rax)
  401fab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401faf:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  401fb2:	89 10                	mov    %edx,(%rax)
  401fb4:	48 83 c4 18          	add    $0x18,%rsp
  401fb8:	5b                   	pop    %rbx
  401fb9:	c9                   	leaveq 
  401fba:	c3                   	retq   

0000000000401fbb <UArray_copy>:
  401fbb:	55                   	push   %rbp
  401fbc:	48 89 e5             	mov    %rsp,%rbp
  401fbf:	48 83 ec 20          	sub    $0x20,%rsp
  401fc3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401fc7:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401fca:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  401fcf:	75 1b                	jne    401fec <UArray_copy+0x31>
  401fd1:	ba 3c 00 00 00       	mov    $0x3c,%edx
  401fd6:	48 8d 35 5f 06 00 00 	lea    0x65f(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401fdd:	48 8d 05 f4 0d 20 00 	lea    0x200df4(%rip),%rax        # 602dd8 <Assert_Failed>
  401fe4:	48 89 c7             	mov    %rax,%rdi
  401fe7:	e8 00 01 00 00       	callq  4020ec <Except_raise>
  401fec:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
  401ff0:	79 1b                	jns    40200d <UArray_copy+0x52>
  401ff2:	ba 3d 00 00 00       	mov    $0x3d,%edx
  401ff7:	48 8d 35 3e 06 00 00 	lea    0x63e(%rip),%rsi        # 40263c <_IO_stdin_used+0xf4>
  401ffe:	48 8d 05 d3 0d 20 00 	lea    0x200dd3(%rip),%rax        # 602dd8 <Assert_Failed>
  402005:	48 89 c7             	mov    %rax,%rdi
  402008:	e8 df 00 00 00       	callq  4020ec <Except_raise>
  40200d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402011:	8b 50 04             	mov    0x4(%rax),%edx
  402014:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  402017:	89 d6                	mov    %edx,%esi
  402019:	89 c7                	mov    %eax,%edi
  40201b:	e8 cc fb ff ff       	callq  401bec <UArray_new>
  402020:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402024:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402028:	8b 10                	mov    (%rax),%edx
  40202a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40202e:	8b 00                	mov    (%rax),%eax
  402030:	39 c2                	cmp    %eax,%edx
  402032:	7c 3a                	jl     40206e <UArray_copy+0xb3>
  402034:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402038:	8b 00                	mov    (%rax),%eax
  40203a:	85 c0                	test   %eax,%eax
  40203c:	7e 30                	jle    40206e <UArray_copy+0xb3>
  40203e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402042:	8b 10                	mov    (%rax),%edx
  402044:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402048:	8b 40 04             	mov    0x4(%rax),%eax
  40204b:	0f af c2             	imul   %edx,%eax
  40204e:	48 63 d0             	movslq %eax,%rdx
  402051:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402055:	48 8b 48 08          	mov    0x8(%rax),%rcx
  402059:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40205d:	48 8b 40 08          	mov    0x8(%rax),%rax
  402061:	48 89 ce             	mov    %rcx,%rsi
  402064:	48 89 c7             	mov    %rax,%rdi
  402067:	e8 d4 ea ff ff       	callq  400b40 <memcpy@plt>
  40206c:	eb 48                	jmp    4020b6 <UArray_copy+0xfb>
  40206e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402072:	8b 10                	mov    (%rax),%edx
  402074:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402078:	8b 00                	mov    (%rax),%eax
  40207a:	39 c2                	cmp    %eax,%edx
  40207c:	7e 38                	jle    4020b6 <UArray_copy+0xfb>
  40207e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402082:	8b 00                	mov    (%rax),%eax
  402084:	85 c0                	test   %eax,%eax
  402086:	7e 2e                	jle    4020b6 <UArray_copy+0xfb>
  402088:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40208c:	8b 10                	mov    (%rax),%edx
  40208e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402092:	8b 40 04             	mov    0x4(%rax),%eax
  402095:	0f af c2             	imul   %edx,%eax
  402098:	48 63 d0             	movslq %eax,%rdx
  40209b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40209f:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4020a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020a7:	48 8b 40 08          	mov    0x8(%rax),%rax
  4020ab:	48 89 ce             	mov    %rcx,%rsi
  4020ae:	48 89 c7             	mov    %rax,%rdi
  4020b1:	e8 8a ea ff ff       	callq  400b40 <memcpy@plt>
  4020b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020ba:	c9                   	leaveq 
  4020bb:	c3                   	retq   

00000000004020bc <assert>:
  4020bc:	55                   	push   %rbp
  4020bd:	48 89 e5             	mov    %rsp,%rbp
  4020c0:	48 83 ec 10          	sub    $0x10,%rsp
  4020c4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4020c7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  4020cb:	75 1b                	jne    4020e8 <assert+0x2c>
  4020cd:	ba 05 00 00 00       	mov    $0x5,%edx
  4020d2:	48 8d 35 81 05 00 00 	lea    0x581(%rip),%rsi        # 40265a <_IO_stdin_used+0x112>
  4020d9:	48 8d 05 f8 0c 20 00 	lea    0x200cf8(%rip),%rax        # 602dd8 <Assert_Failed>
  4020e0:	48 89 c7             	mov    %rax,%rdi
  4020e3:	e8 04 00 00 00       	callq  4020ec <Except_raise>
  4020e8:	c9                   	leaveq 
  4020e9:	c3                   	retq   
  4020ea:	66 90                	xchg   %ax,%ax

00000000004020ec <Except_raise>:
  4020ec:	55                   	push   %rbp
  4020ed:	48 89 e5             	mov    %rsp,%rbp
  4020f0:	53                   	push   %rbx
  4020f1:	48 83 ec 38          	sub    $0x38,%rsp
  4020f5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4020f9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4020fd:	89 55 cc             	mov    %edx,-0x34(%rbp)
  402100:	48 8d 05 29 10 20 00 	lea    0x201029(%rip),%rax        # 603130 <Except_stack>
  402107:	48 8b 00             	mov    (%rax),%rax
  40210a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  40210e:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  402113:	75 1b                	jne    402130 <Except_raise+0x44>
  402115:	ba 13 00 00 00       	mov    $0x13,%edx
  40211a:	48 8d 35 46 05 00 00 	lea    0x546(%rip),%rsi        # 402667 <_IO_stdin_used+0x11f>
  402121:	48 8d 05 b0 0c 20 00 	lea    0x200cb0(%rip),%rax        # 602dd8 <Assert_Failed>
  402128:	48 89 c7             	mov    %rax,%rdi
  40212b:	e8 bc ff ff ff       	callq  4020ec <Except_raise>
  402130:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402135:	0f 85 f9 00 00 00    	jne    402234 <Except_raise+0x148>
  40213b:	48 8b 05 b6 0e 20 00 	mov    0x200eb6(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  402142:	48 8b 00             	mov    (%rax),%rax
  402145:	48 89 c2             	mov    %rax,%rdx
  402148:	48 8d 05 25 05 00 00 	lea    0x525(%rip),%rax        # 402674 <_IO_stdin_used+0x12c>
  40214f:	48 89 d1             	mov    %rdx,%rcx
  402152:	ba 12 00 00 00       	mov    $0x12,%edx
  402157:	be 01 00 00 00       	mov    $0x1,%esi
  40215c:	48 89 c7             	mov    %rax,%rdi
  40215f:	e8 5c ea ff ff       	callq  400bc0 <fwrite@plt>
  402164:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402168:	48 8b 00             	mov    (%rax),%rax
  40216b:	48 85 c0             	test   %rax,%rax
  40216e:	74 2a                	je     40219a <Except_raise+0xae>
  402170:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402174:	48 8b 10             	mov    (%rax),%rdx
  402177:	48 8d 0d 09 05 00 00 	lea    0x509(%rip),%rcx        # 402687 <_IO_stdin_used+0x13f>
  40217e:	48 8b 05 73 0e 20 00 	mov    0x200e73(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  402185:	48 8b 00             	mov    (%rax),%rax
  402188:	48 89 ce             	mov    %rcx,%rsi
  40218b:	48 89 c7             	mov    %rax,%rdi
  40218e:	b8 00 00 00 00       	mov    $0x0,%eax
  402193:	e8 98 e9 ff ff       	callq  400b30 <fprintf@plt>
  402198:	eb 25                	jmp    4021bf <Except_raise+0xd3>
  40219a:	48 8d 0d ea 04 00 00 	lea    0x4ea(%rip),%rcx        # 40268b <_IO_stdin_used+0x143>
  4021a1:	48 8b 05 50 0e 20 00 	mov    0x200e50(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  4021a8:	48 8b 00             	mov    (%rax),%rax
  4021ab:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4021af:	48 89 ce             	mov    %rcx,%rsi
  4021b2:	48 89 c7             	mov    %rax,%rdi
  4021b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ba:	e8 71 e9 ff ff       	callq  400b30 <fprintf@plt>
  4021bf:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  4021c4:	74 2e                	je     4021f4 <Except_raise+0x108>
  4021c6:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
  4021ca:	7e 28                	jle    4021f4 <Except_raise+0x108>
  4021cc:	48 8d 1d c1 04 00 00 	lea    0x4c1(%rip),%rbx        # 402694 <_IO_stdin_used+0x14c>
  4021d3:	48 8b 05 1e 0e 20 00 	mov    0x200e1e(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  4021da:	48 8b 00             	mov    (%rax),%rax
  4021dd:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  4021e0:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4021e4:	48 89 de             	mov    %rbx,%rsi
  4021e7:	48 89 c7             	mov    %rax,%rdi
  4021ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ef:	e8 3c e9 ff ff       	callq  400b30 <fprintf@plt>
  4021f4:	48 8b 05 fd 0d 20 00 	mov    0x200dfd(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  4021fb:	48 8b 00             	mov    (%rax),%rax
  4021fe:	48 89 c2             	mov    %rax,%rdx
  402201:	48 8d 05 9e 04 00 00 	lea    0x49e(%rip),%rax        # 4026a6 <_IO_stdin_used+0x15e>
  402208:	48 89 d1             	mov    %rdx,%rcx
  40220b:	ba 0c 00 00 00       	mov    $0xc,%edx
  402210:	be 01 00 00 00       	mov    $0x1,%esi
  402215:	48 89 c7             	mov    %rax,%rdi
  402218:	e8 a3 e9 ff ff       	callq  400bc0 <fwrite@plt>
  40221d:	48 8b 05 d4 0d 20 00 	mov    0x200dd4(%rip),%rax        # 602ff8 <stderr@@GLIBC_2.2.5-0x128>
  402224:	48 8b 00             	mov    (%rax),%rax
  402227:	48 89 c7             	mov    %rax,%rdi
  40222a:	e8 31 e9 ff ff       	callq  400b60 <fflush@plt>
  40222f:	e8 6c e8 ff ff       	callq  400aa0 <abort@plt>
  402234:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402238:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  40223c:	48 89 90 e0 00 00 00 	mov    %rdx,0xe0(%rax)
  402243:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402247:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40224b:	48 89 90 d0 00 00 00 	mov    %rdx,0xd0(%rax)
  402252:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402256:	8b 55 cc             	mov    -0x34(%rbp),%edx
  402259:	89 90 d8 00 00 00    	mov    %edx,0xd8(%rax)
  40225f:	48 8d 05 ca 0e 20 00 	lea    0x200eca(%rip),%rax        # 603130 <Except_stack>
  402266:	48 8b 00             	mov    (%rax),%rax
  402269:	48 8b 10             	mov    (%rax),%rdx
  40226c:	48 8d 05 bd 0e 20 00 	lea    0x200ebd(%rip),%rax        # 603130 <Except_stack>
  402273:	48 89 10             	mov    %rdx,(%rax)
  402276:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40227a:	48 83 c0 08          	add    $0x8,%rax
  40227e:	be 01 00 00 00       	mov    $0x1,%esi
  402283:	48 89 c7             	mov    %rax,%rdi
  402286:	e8 f5 e8 ff ff       	callq  400b80 <longjmp@plt>
  40228b:	90                   	nop

000000000040228c <Mem_alloc>:
  40228c:	55                   	push   %rbp
  40228d:	48 89 e5             	mov    %rsp,%rbp
  402290:	48 83 ec 30          	sub    $0x30,%rsp
  402294:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402298:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40229c:	89 55 dc             	mov    %edx,-0x24(%rbp)
  40229f:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4022a4:	7f 1b                	jg     4022c1 <Mem_alloc+0x35>
  4022a6:	ba 0a 00 00 00       	mov    $0xa,%edx
  4022ab:	48 8d 35 13 04 00 00 	lea    0x413(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  4022b2:	48 8d 05 1f 0b 20 00 	lea    0x200b1f(%rip),%rax        # 602dd8 <Assert_Failed>
  4022b9:	48 89 c7             	mov    %rax,%rdi
  4022bc:	e8 2b fe ff ff       	callq  4020ec <Except_raise>
  4022c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022c5:	48 89 c7             	mov    %rax,%rdi
  4022c8:	e8 83 e8 ff ff       	callq  400b50 <malloc@plt>
  4022cd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4022d1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4022d6:	75 3d                	jne    402315 <Mem_alloc+0x89>
  4022d8:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  4022dd:	75 1d                	jne    4022fc <Mem_alloc+0x70>
  4022df:	ba 0f 00 00 00       	mov    $0xf,%edx
  4022e4:	48 8d 35 da 03 00 00 	lea    0x3da(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  4022eb:	48 8d 05 ee 0a 20 00 	lea    0x200aee(%rip),%rax        # 602de0 <Mem_Failed>
  4022f2:	48 89 c7             	mov    %rax,%rdi
  4022f5:	e8 f2 fd ff ff       	callq  4020ec <Except_raise>
  4022fa:	eb 19                	jmp    402315 <Mem_alloc+0x89>
  4022fc:	8b 55 dc             	mov    -0x24(%rbp),%edx
  4022ff:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402303:	48 89 c6             	mov    %rax,%rsi
  402306:	48 8d 05 d3 0a 20 00 	lea    0x200ad3(%rip),%rax        # 602de0 <Mem_Failed>
  40230d:	48 89 c7             	mov    %rax,%rdi
  402310:	e8 d7 fd ff ff       	callq  4020ec <Except_raise>
  402315:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402319:	c9                   	leaveq 
  40231a:	c3                   	retq   

000000000040231b <Mem_calloc>:
  40231b:	55                   	push   %rbp
  40231c:	48 89 e5             	mov    %rsp,%rbp
  40231f:	48 83 ec 30          	sub    $0x30,%rsp
  402323:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402327:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40232b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  40232f:	89 4d d4             	mov    %ecx,-0x2c(%rbp)
  402332:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402337:	7f 1b                	jg     402354 <Mem_calloc+0x39>
  402339:	ba 18 00 00 00       	mov    $0x18,%edx
  40233e:	48 8d 35 80 03 00 00 	lea    0x380(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  402345:	48 8d 05 8c 0a 20 00 	lea    0x200a8c(%rip),%rax        # 602dd8 <Assert_Failed>
  40234c:	48 89 c7             	mov    %rax,%rdi
  40234f:	e8 98 fd ff ff       	callq  4020ec <Except_raise>
  402354:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
  402359:	7f 1b                	jg     402376 <Mem_calloc+0x5b>
  40235b:	ba 19 00 00 00       	mov    $0x19,%edx
  402360:	48 8d 35 5e 03 00 00 	lea    0x35e(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  402367:	48 8d 05 6a 0a 20 00 	lea    0x200a6a(%rip),%rax        # 602dd8 <Assert_Failed>
  40236e:	48 89 c7             	mov    %rax,%rdi
  402371:	e8 76 fd ff ff       	callq  4020ec <Except_raise>
  402376:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  40237a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40237e:	48 89 d6             	mov    %rdx,%rsi
  402381:	48 89 c7             	mov    %rax,%rdi
  402384:	e8 87 e7 ff ff       	callq  400b10 <calloc@plt>
  402389:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40238d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  402392:	75 3d                	jne    4023d1 <Mem_calloc+0xb6>
  402394:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
  402399:	75 1d                	jne    4023b8 <Mem_calloc+0x9d>
  40239b:	ba 1e 00 00 00       	mov    $0x1e,%edx
  4023a0:	48 8d 35 1e 03 00 00 	lea    0x31e(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  4023a7:	48 8d 05 32 0a 20 00 	lea    0x200a32(%rip),%rax        # 602de0 <Mem_Failed>
  4023ae:	48 89 c7             	mov    %rax,%rdi
  4023b1:	e8 36 fd ff ff       	callq  4020ec <Except_raise>
  4023b6:	eb 19                	jmp    4023d1 <Mem_calloc+0xb6>
  4023b8:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  4023bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4023bf:	48 89 c6             	mov    %rax,%rsi
  4023c2:	48 8d 05 17 0a 20 00 	lea    0x200a17(%rip),%rax        # 602de0 <Mem_Failed>
  4023c9:	48 89 c7             	mov    %rax,%rdi
  4023cc:	e8 1b fd ff ff       	callq  4020ec <Except_raise>
  4023d1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023d5:	c9                   	leaveq 
  4023d6:	c3                   	retq   

00000000004023d7 <Mem_free>:
  4023d7:	55                   	push   %rbp
  4023d8:	48 89 e5             	mov    %rsp,%rbp
  4023db:	48 83 ec 20          	sub    $0x20,%rsp
  4023df:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4023e3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4023e7:	89 55 ec             	mov    %edx,-0x14(%rbp)
  4023ea:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4023ef:	74 0c                	je     4023fd <Mem_free+0x26>
  4023f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4023f5:	48 89 c7             	mov    %rax,%rdi
  4023f8:	e8 93 e6 ff ff       	callq  400a90 <free@plt>
  4023fd:	c9                   	leaveq 
  4023fe:	c3                   	retq   

00000000004023ff <Mem_resize>:
  4023ff:	55                   	push   %rbp
  402400:	48 89 e5             	mov    %rsp,%rbp
  402403:	48 83 ec 20          	sub    $0x20,%rsp
  402407:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40240b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40240f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402413:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  402416:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  40241b:	75 1b                	jne    402438 <Mem_resize+0x39>
  40241d:	ba 2a 00 00 00       	mov    $0x2a,%edx
  402422:	48 8d 35 9c 02 00 00 	lea    0x29c(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  402429:	48 8d 05 a8 09 20 00 	lea    0x2009a8(%rip),%rax        # 602dd8 <Assert_Failed>
  402430:	48 89 c7             	mov    %rax,%rdi
  402433:	e8 b4 fc ff ff       	callq  4020ec <Except_raise>
  402438:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40243d:	7f 1b                	jg     40245a <Mem_resize+0x5b>
  40243f:	ba 2b 00 00 00       	mov    $0x2b,%edx
  402444:	48 8d 35 7a 02 00 00 	lea    0x27a(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  40244b:	48 8d 05 86 09 20 00 	lea    0x200986(%rip),%rax        # 602dd8 <Assert_Failed>
  402452:	48 89 c7             	mov    %rax,%rdi
  402455:	e8 92 fc ff ff       	callq  4020ec <Except_raise>
  40245a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40245e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402462:	48 89 d6             	mov    %rdx,%rsi
  402465:	48 89 c7             	mov    %rax,%rdi
  402468:	e8 03 e7 ff ff       	callq  400b70 <realloc@plt>
  40246d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402471:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  402476:	75 3d                	jne    4024b5 <Mem_resize+0xb6>
  402478:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  40247d:	75 1d                	jne    40249c <Mem_resize+0x9d>
  40247f:	ba 30 00 00 00       	mov    $0x30,%edx
  402484:	48 8d 35 3a 02 00 00 	lea    0x23a(%rip),%rsi        # 4026c5 <_IO_stdin_used+0x17d>
  40248b:	48 8d 05 4e 09 20 00 	lea    0x20094e(%rip),%rax        # 602de0 <Mem_Failed>
  402492:	48 89 c7             	mov    %rax,%rdi
  402495:	e8 52 fc ff ff       	callq  4020ec <Except_raise>
  40249a:	eb 19                	jmp    4024b5 <Mem_resize+0xb6>
  40249c:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  40249f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024a3:	48 89 c6             	mov    %rax,%rsi
  4024a6:	48 8d 05 33 09 20 00 	lea    0x200933(%rip),%rax        # 602de0 <Mem_Failed>
  4024ad:	48 89 c7             	mov    %rax,%rdi
  4024b0:	e8 37 fc ff ff       	callq  4020ec <Except_raise>
  4024b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4024b9:	c9                   	leaveq 
  4024ba:	c3                   	retq   
  4024bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024c0 <__libc_csu_init>:
  4024c0:	f3 0f 1e fa          	endbr64 
  4024c4:	41 57                	push   %r15
  4024c6:	49 89 d7             	mov    %rdx,%r15
  4024c9:	41 56                	push   %r14
  4024cb:	49 89 f6             	mov    %rsi,%r14
  4024ce:	41 55                	push   %r13
  4024d0:	41 89 fd             	mov    %edi,%r13d
  4024d3:	41 54                	push   %r12
  4024d5:	4c 8d 25 ec 08 20 00 	lea    0x2008ec(%rip),%r12        # 602dc8 <__frame_dummy_init_array_entry>
  4024dc:	55                   	push   %rbp
  4024dd:	48 8d 2d ec 08 20 00 	lea    0x2008ec(%rip),%rbp        # 602dd0 <__init_array_end>
  4024e4:	53                   	push   %rbx
  4024e5:	4c 29 e5             	sub    %r12,%rbp
  4024e8:	48 83 ec 08          	sub    $0x8,%rsp
  4024ec:	e8 67 e5 ff ff       	callq  400a58 <_init>
  4024f1:	48 c1 fd 03          	sar    $0x3,%rbp
  4024f5:	74 1f                	je     402516 <__libc_csu_init+0x56>
  4024f7:	31 db                	xor    %ebx,%ebx
  4024f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402500:	4c 89 fa             	mov    %r15,%rdx
  402503:	4c 89 f6             	mov    %r14,%rsi
  402506:	44 89 ef             	mov    %r13d,%edi
  402509:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40250d:	48 83 c3 01          	add    $0x1,%rbx
  402511:	48 39 dd             	cmp    %rbx,%rbp
  402514:	75 ea                	jne    402500 <__libc_csu_init+0x40>
  402516:	48 83 c4 08          	add    $0x8,%rsp
  40251a:	5b                   	pop    %rbx
  40251b:	5d                   	pop    %rbp
  40251c:	41 5c                	pop    %r12
  40251e:	41 5d                	pop    %r13
  402520:	41 5e                	pop    %r14
  402522:	41 5f                	pop    %r15
  402524:	c3                   	retq   

0000000000402525 <.annobin___libc_csu_fini.start>:
  402525:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40252c:	00 00 00 00 

0000000000402530 <__libc_csu_fini>:
  402530:	f3 0f 1e fa          	endbr64 
  402534:	c3                   	retq   

Disassembly of section .fini:

0000000000402538 <_fini>:
  402538:	f3 0f 1e fa          	endbr64 
  40253c:	48 83 ec 08          	sub    $0x8,%rsp
  402540:	48 83 c4 08          	add    $0x8,%rsp
  402544:	c3                   	retq   
