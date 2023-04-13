
timing:     file format elf64-x86-64


Disassembly of section .init:

0000000000400548 <_init>:
  400548:	f3 0f 1e fa          	endbr64 
  40054c:	48 83 ec 08          	sub    $0x8,%rsp
  400550:	48 8b 05 99 0a 20 00 	mov    0x200a99(%rip),%rax        # 600ff0 <__gmon_start__@Base>
  400557:	48 85 c0             	test   %rax,%rax
  40055a:	74 02                	je     40055e <_init+0x16>
  40055c:	ff d0                	callq  *%rax
  40055e:	48 83 c4 08          	add    $0x8,%rsp
  400562:	c3                   	retq   

Disassembly of section .plt:

0000000000400570 <.plt>:
  400570:	ff 35 92 0a 20 00    	pushq  0x200a92(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400576:	ff 25 94 0a 20 00    	jmpq   *0x200a94(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40057c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400580 <puts@plt>:
  400580:	ff 25 92 0a 20 00    	jmpq   *0x200a92(%rip)        # 601018 <puts@GLIBC_2.2.5>
  400586:	68 00 00 00 00       	pushq  $0x0
  40058b:	e9 e0 ff ff ff       	jmpq   400570 <.plt>

0000000000400590 <mmap@plt>:
  400590:	ff 25 8a 0a 20 00    	jmpq   *0x200a8a(%rip)        # 601020 <mmap@GLIBC_2.2.5>
  400596:	68 01 00 00 00       	pushq  $0x1
  40059b:	e9 d0 ff ff ff       	jmpq   400570 <.plt>

00000000004005a0 <printf@plt>:
  4005a0:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 601028 <printf@GLIBC_2.2.5>
  4005a6:	68 02 00 00 00       	pushq  $0x2
  4005ab:	e9 c0 ff ff ff       	jmpq   400570 <.plt>

00000000004005b0 <getrusage@plt>:
  4005b0:	ff 25 7a 0a 20 00    	jmpq   *0x200a7a(%rip)        # 601030 <getrusage@GLIBC_2.2.5>
  4005b6:	68 03 00 00 00       	pushq  $0x3
  4005bb:	e9 b0 ff ff ff       	jmpq   400570 <.plt>

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	f3 0f 1e fa          	endbr64 
  4005c4:	31 ed                	xor    %ebp,%ebp
  4005c6:	49 89 d1             	mov    %rdx,%r9
  4005c9:	5e                   	pop    %rsi
  4005ca:	48 89 e2             	mov    %rsp,%rdx
  4005cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005d1:	50                   	push   %rax
  4005d2:	54                   	push   %rsp
  4005d3:	49 c7 c0 a0 09 40 00 	mov    $0x4009a0,%r8
  4005da:	48 c7 c1 30 09 40 00 	mov    $0x400930,%rcx
  4005e1:	48 c7 c7 64 07 40 00 	mov    $0x400764,%rdi
  4005e8:	ff 15 fa 09 20 00    	callq  *0x2009fa(%rip)        # 600fe8 <__libc_start_main@GLIBC_2.2.5>
  4005ee:	f4                   	hlt    

00000000004005ef <.annobin_init.c>:
  4005ef:	90                   	nop

00000000004005f0 <_dl_relocate_static_pie>:
  4005f0:	f3 0f 1e fa          	endbr64 
  4005f4:	c3                   	retq   

00000000004005f5 <.annobin__dl_relocate_static_pie.end>:
  4005f5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005fc:	00 00 00 
  4005ff:	90                   	nop

0000000000400600 <deregister_tm_clones>:
  400600:	48 8d 3d 41 0a 20 00 	lea    0x200a41(%rip),%rdi        # 601048 <__TMC_END__>
  400607:	48 8d 05 3a 0a 20 00 	lea    0x200a3a(%rip),%rax        # 601048 <__TMC_END__>
  40060e:	48 39 f8             	cmp    %rdi,%rax
  400611:	74 15                	je     400628 <deregister_tm_clones+0x28>
  400613:	48 8b 05 c6 09 20 00 	mov    0x2009c6(%rip),%rax        # 600fe0 <_ITM_deregisterTMCloneTable@Base>
  40061a:	48 85 c0             	test   %rax,%rax
  40061d:	74 09                	je     400628 <deregister_tm_clones+0x28>
  40061f:	ff e0                	jmpq   *%rax
  400621:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400628:	c3                   	retq   
  400629:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400630 <register_tm_clones>:
  400630:	48 8d 3d 11 0a 20 00 	lea    0x200a11(%rip),%rdi        # 601048 <__TMC_END__>
  400637:	48 8d 35 0a 0a 20 00 	lea    0x200a0a(%rip),%rsi        # 601048 <__TMC_END__>
  40063e:	48 29 fe             	sub    %rdi,%rsi
  400641:	48 89 f0             	mov    %rsi,%rax
  400644:	48 c1 ee 3f          	shr    $0x3f,%rsi
  400648:	48 c1 f8 03          	sar    $0x3,%rax
  40064c:	48 01 c6             	add    %rax,%rsi
  40064f:	48 d1 fe             	sar    %rsi
  400652:	74 14                	je     400668 <register_tm_clones+0x38>
  400654:	48 8b 05 9d 09 20 00 	mov    0x20099d(%rip),%rax        # 600ff8 <_ITM_registerTMCloneTable@Base>
  40065b:	48 85 c0             	test   %rax,%rax
  40065e:	74 08                	je     400668 <register_tm_clones+0x38>
  400660:	ff e0                	jmpq   *%rax
  400662:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400668:	c3                   	retq   
  400669:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400670 <__do_global_dtors_aux>:
  400670:	f3 0f 1e fa          	endbr64 
  400674:	80 3d cd 09 20 00 00 	cmpb   $0x0,0x2009cd(%rip)        # 601048 <__TMC_END__>
  40067b:	75 13                	jne    400690 <__do_global_dtors_aux+0x20>
  40067d:	55                   	push   %rbp
  40067e:	48 89 e5             	mov    %rsp,%rbp
  400681:	e8 7a ff ff ff       	callq  400600 <deregister_tm_clones>
  400686:	c6 05 bb 09 20 00 01 	movb   $0x1,0x2009bb(%rip)        # 601048 <__TMC_END__>
  40068d:	5d                   	pop    %rbp
  40068e:	c3                   	retq   
  40068f:	90                   	nop
  400690:	c3                   	retq   
  400691:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  400698:	00 00 00 00 
  40069c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006a0 <frame_dummy>:
  4006a0:	f3 0f 1e fa          	endbr64 
  4006a4:	eb 8a                	jmp    400630 <register_tm_clones>

00000000004006a6 <usertime_elapsed>:
  4006a6:	55                   	push   %rbp
  4006a7:	48 89 e5             	mov    %rsp,%rbp
  4006aa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4006ae:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4006b2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4006b6:	48 8b 10             	mov    (%rax),%rdx
  4006b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006bd:	48 8b 00             	mov    (%rax),%rax
  4006c0:	48 29 c2             	sub    %rax,%rdx
  4006c3:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4006c7:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  4006cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4006d0:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4006d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4006d8:	48 8b 40 08          	mov    0x8(%rax),%rax
  4006dc:	48 29 c2             	sub    %rax,%rdx
  4006df:	66 0f ef d2          	pxor   %xmm2,%xmm2
  4006e3:	f2 48 0f 2a d2       	cvtsi2sd %rdx,%xmm2
  4006e8:	f2 0f 10 05 08 03 00 	movsd  0x308(%rip),%xmm0        # 4009f8 <_IO_stdin_used+0x40>
  4006ef:	00 
  4006f0:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  4006f4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  4006f8:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4006fd:	66 48 0f 6e c0       	movq   %rax,%xmm0
  400702:	5d                   	pop    %rbp
  400703:	c3                   	retq   

0000000000400704 <systime_elapsed>:
  400704:	55                   	push   %rbp
  400705:	48 89 e5             	mov    %rsp,%rbp
  400708:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40070c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400710:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400714:	48 8b 50 10          	mov    0x10(%rax),%rdx
  400718:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40071c:	48 8b 40 10          	mov    0x10(%rax),%rax
  400720:	48 29 c2             	sub    %rax,%rdx
  400723:	66 0f ef c9          	pxor   %xmm1,%xmm1
  400727:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
  40072c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400730:	48 8b 50 18          	mov    0x18(%rax),%rdx
  400734:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400738:	48 8b 40 18          	mov    0x18(%rax),%rax
  40073c:	48 29 c2             	sub    %rax,%rdx
  40073f:	66 0f ef d2          	pxor   %xmm2,%xmm2
  400743:	f2 48 0f 2a d2       	cvtsi2sd %rdx,%xmm2
  400748:	f2 0f 10 05 a8 02 00 	movsd  0x2a8(%rip),%xmm0        # 4009f8 <_IO_stdin_used+0x40>
  40074f:	00 
  400750:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  400754:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  400758:	66 48 0f 7e c0       	movq   %xmm0,%rax
  40075d:	66 48 0f 6e c0       	movq   %rax,%xmm0
  400762:	5d                   	pop    %rbp
  400763:	c3                   	retq   

0000000000400764 <main>:
  400764:	55                   	push   %rbp
  400765:	48 89 e5             	mov    %rsp,%rbp
  400768:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  40076f:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400773:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
  400778:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40077c:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  400781:	66 0f ef c0          	pxor   %xmm0,%xmm0
  400785:	f2 0f 11 45 e0       	movsd  %xmm0,-0x20(%rbp)
  40078a:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40078e:	f2 0f 11 45 d8       	movsd  %xmm0,-0x28(%rbp)
  400793:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  40079a:	48 89 c6             	mov    %rax,%rsi
  40079d:	bf 00 00 00 00       	mov    $0x0,%edi
  4007a2:	e8 09 fe ff ff       	callq  4005b0 <getrusage@plt>
  4007a7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4007ae:	eb 04                	jmp    4007b4 <main+0x50>
  4007b0:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4007b4:	81 7d fc 7f 96 98 00 	cmpl   $0x98967f,-0x4(%rbp)
  4007bb:	7e f3                	jle    4007b0 <main+0x4c>
  4007bd:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
  4007c4:	48 89 c6             	mov    %rax,%rsi
  4007c7:	bf 00 00 00 00       	mov    $0x0,%edi
  4007cc:	e8 df fd ff ff       	callq  4005b0 <getrusage@plt>
  4007d1:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
  4007d8:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  4007df:	48 89 d6             	mov    %rdx,%rsi
  4007e2:	48 89 c7             	mov    %rax,%rdi
  4007e5:	e8 1a ff ff ff       	callq  400704 <systime_elapsed>
  4007ea:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4007ef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4007f3:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
  4007fa:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  400801:	48 89 d6             	mov    %rdx,%rsi
  400804:	48 89 c7             	mov    %rax,%rdi
  400807:	e8 9a fe ff ff       	callq  4006a6 <usertime_elapsed>
  40080c:	66 48 0f 7e c0       	movq   %xmm0,%rax
  400811:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  400815:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  40081c:	48 89 c6             	mov    %rax,%rsi
  40081f:	bf 00 00 00 00       	mov    $0x0,%edi
  400824:	e8 87 fd ff ff       	callq  4005b0 <getrusage@plt>
  400829:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400830:	eb 29                	jmp    40085b <main+0xf7>
  400832:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400838:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  40083e:	b9 22 00 00 00       	mov    $0x22,%ecx
  400843:	ba 00 00 00 00       	mov    $0x0,%edx
  400848:	be 00 10 00 00       	mov    $0x1000,%esi
  40084d:	bf 00 00 00 00       	mov    $0x0,%edi
  400852:	e8 39 fd ff ff       	callq  400590 <mmap@plt>
  400857:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  40085b:	81 7d f8 7f 96 98 00 	cmpl   $0x98967f,-0x8(%rbp)
  400862:	7e ce                	jle    400832 <main+0xce>
  400864:	48 8d 85 b0 fe ff ff 	lea    -0x150(%rbp),%rax
  40086b:	48 89 c6             	mov    %rax,%rsi
  40086e:	bf 00 00 00 00       	mov    $0x0,%edi
  400873:	e8 38 fd ff ff       	callq  4005b0 <getrusage@plt>
  400878:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
  40087f:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  400886:	48 89 d6             	mov    %rdx,%rsi
  400889:	48 89 c7             	mov    %rax,%rdi
  40088c:	e8 73 fe ff ff       	callq  400704 <systime_elapsed>
  400891:	66 48 0f 7e c0       	movq   %xmm0,%rax
  400896:	66 48 0f 6e c0       	movq   %rax,%xmm0
  40089b:	f2 0f 5c 45 e0       	subsd  -0x20(%rbp),%xmm0
  4008a0:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
  4008a5:	48 8d 95 b0 fe ff ff 	lea    -0x150(%rbp),%rdx
  4008ac:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
  4008b3:	48 89 d6             	mov    %rdx,%rsi
  4008b6:	48 89 c7             	mov    %rax,%rdi
  4008b9:	e8 e8 fd ff ff       	callq  4006a6 <usertime_elapsed>
  4008be:	66 48 0f 7e c0       	movq   %xmm0,%rax
  4008c3:	66 48 0f 6e c0       	movq   %rax,%xmm0
  4008c8:	f2 0f 5c 45 d8       	subsd  -0x28(%rbp),%xmm0
  4008cd:	f2 0f 11 45 e8       	movsd  %xmm0,-0x18(%rbp)
  4008d2:	bf c0 09 40 00       	mov    $0x4009c0,%edi
  4008d7:	e8 a4 fc ff ff       	callq  400580 <puts@plt>
  4008dc:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  4008e1:	f2 0f 10 0d 17 01 00 	movsd  0x117(%rip),%xmm1        # 400a00 <_IO_stdin_used+0x48>
  4008e8:	00 
  4008e9:	66 0f 28 d0          	movapd %xmm0,%xmm2
  4008ed:	f2 0f 5e d1          	divsd  %xmm1,%xmm2
  4008f1:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  4008f6:	f2 0f 10 0d 02 01 00 	movsd  0x102(%rip),%xmm1        # 400a00 <_IO_stdin_used+0x48>
  4008fd:	00 
  4008fe:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
  400902:	66 48 0f 7e c0       	movq   %xmm0,%rax
  400907:	66 0f 28 ca          	movapd %xmm2,%xmm1
  40090b:	66 48 0f 6e c0       	movq   %rax,%xmm0
  400910:	bf d5 09 40 00       	mov    $0x4009d5,%edi
  400915:	b8 02 00 00 00       	mov    $0x2,%eax
  40091a:	e8 81 fc ff ff       	callq  4005a0 <printf@plt>
  40091f:	b8 00 00 00 00       	mov    $0x0,%eax
  400924:	c9                   	leaveq 
  400925:	c3                   	retq   
  400926:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40092d:	00 00 00 

0000000000400930 <__libc_csu_init>:
  400930:	f3 0f 1e fa          	endbr64 
  400934:	41 57                	push   %r15
  400936:	49 89 d7             	mov    %rdx,%r15
  400939:	41 56                	push   %r14
  40093b:	49 89 f6             	mov    %rsi,%r14
  40093e:	41 55                	push   %r13
  400940:	41 89 fd             	mov    %edi,%r13d
  400943:	41 54                	push   %r12
  400945:	4c 8d 25 74 04 20 00 	lea    0x200474(%rip),%r12        # 600dc0 <__frame_dummy_init_array_entry>
  40094c:	55                   	push   %rbp
  40094d:	48 8d 2d 74 04 20 00 	lea    0x200474(%rip),%rbp        # 600dc8 <__init_array_end>
  400954:	53                   	push   %rbx
  400955:	4c 29 e5             	sub    %r12,%rbp
  400958:	48 83 ec 08          	sub    $0x8,%rsp
  40095c:	e8 e7 fb ff ff       	callq  400548 <_init>
  400961:	48 c1 fd 03          	sar    $0x3,%rbp
  400965:	74 1f                	je     400986 <__libc_csu_init+0x56>
  400967:	31 db                	xor    %ebx,%ebx
  400969:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  400970:	4c 89 fa             	mov    %r15,%rdx
  400973:	4c 89 f6             	mov    %r14,%rsi
  400976:	44 89 ef             	mov    %r13d,%edi
  400979:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40097d:	48 83 c3 01          	add    $0x1,%rbx
  400981:	48 39 dd             	cmp    %rbx,%rbp
  400984:	75 ea                	jne    400970 <__libc_csu_init+0x40>
  400986:	48 83 c4 08          	add    $0x8,%rsp
  40098a:	5b                   	pop    %rbx
  40098b:	5d                   	pop    %rbp
  40098c:	41 5c                	pop    %r12
  40098e:	41 5d                	pop    %r13
  400990:	41 5e                	pop    %r14
  400992:	41 5f                	pop    %r15
  400994:	c3                   	retq   

0000000000400995 <.annobin___libc_csu_fini.start>:
  400995:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40099c:	00 00 00 00 

00000000004009a0 <__libc_csu_fini>:
  4009a0:	f3 0f 1e fa          	endbr64 
  4009a4:	c3                   	retq   

Disassembly of section .fini:

00000000004009a8 <_fini>:
  4009a8:	f3 0f 1e fa          	endbr64 
  4009ac:	48 83 ec 08          	sub    $0x8,%rsp
  4009b0:	48 83 c4 08          	add    $0x8,%rsp
  4009b4:	c3                   	retq   
