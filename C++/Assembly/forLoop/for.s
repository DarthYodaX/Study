
forLoop:     file format elf64-x86-64


Disassembly of section .init:

0000000000400640 <_init>:
  400640:	48 83 ec 08          	sub    $0x8,%rsp
  400644:	48 8b 05 ad 09 20 00 	mov    0x2009ad(%rip),%rax        # 600ff8 <_DYNAMIC+0x1e0>
  40064b:	48 85 c0             	test   %rax,%rax
  40064e:	74 05                	je     400655 <_init+0x15>
  400650:	e8 2b 00 00 00       	callq  400680 <__gmon_start__@plt>
  400655:	48 83 c4 08          	add    $0x8,%rsp
  400659:	c3                   	retq   

Disassembly of section .plt:

0000000000400660 <_ZNSolsEi@plt-0x10>:
  400660:	ff 35 a2 09 20 00    	pushq  0x2009a2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400666:	ff 25 a4 09 20 00    	jmpq   *0x2009a4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40066c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400670 <_ZNSolsEi@plt>:
  400670:	ff 25 a2 09 20 00    	jmpq   *0x2009a2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400676:	68 00 00 00 00       	pushq  $0x0
  40067b:	e9 e0 ff ff ff       	jmpq   400660 <_init+0x20>

0000000000400680 <__gmon_start__@plt>:
  400680:	ff 25 9a 09 20 00    	jmpq   *0x20099a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400686:	68 01 00 00 00       	pushq  $0x1
  40068b:	e9 d0 ff ff ff       	jmpq   400660 <_init+0x20>

0000000000400690 <_ZNSt8ios_base4InitC1Ev@plt>:
  400690:	ff 25 92 09 20 00    	jmpq   *0x200992(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400696:	68 02 00 00 00       	pushq  $0x2
  40069b:	e9 c0 ff ff ff       	jmpq   400660 <_init+0x20>

00000000004006a0 <__libc_start_main@plt>:
  4006a0:	ff 25 8a 09 20 00    	jmpq   *0x20098a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4006a6:	68 03 00 00 00       	pushq  $0x3
  4006ab:	e9 b0 ff ff ff       	jmpq   400660 <_init+0x20>

00000000004006b0 <__cxa_atexit@plt>:
  4006b0:	ff 25 82 09 20 00    	jmpq   *0x200982(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4006b6:	68 04 00 00 00       	pushq  $0x4
  4006bb:	e9 a0 ff ff ff       	jmpq   400660 <_init+0x20>

00000000004006c0 <_ZNSt8ios_base4InitD1Ev@plt>:
  4006c0:	ff 25 7a 09 20 00    	jmpq   *0x20097a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4006c6:	68 05 00 00 00       	pushq  $0x5
  4006cb:	e9 90 ff ff ff       	jmpq   400660 <_init+0x20>

00000000004006d0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  4006d0:	ff 25 72 09 20 00    	jmpq   *0x200972(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4006d6:	68 06 00 00 00       	pushq  $0x6
  4006db:	e9 80 ff ff ff       	jmpq   400660 <_init+0x20>

Disassembly of section .text:

00000000004006e0 <_start>:
  4006e0:	31 ed                	xor    %ebp,%ebp
  4006e2:	49 89 d1             	mov    %rdx,%r9
  4006e5:	5e                   	pop    %rsi
  4006e6:	48 89 e2             	mov    %rsp,%rdx
  4006e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4006ed:	50                   	push   %rax
  4006ee:	54                   	push   %rsp
  4006ef:	49 c7 c0 90 08 40 00 	mov    $0x400890,%r8
  4006f6:	48 c7 c1 20 08 40 00 	mov    $0x400820,%rcx
  4006fd:	48 c7 c7 cd 07 40 00 	mov    $0x4007cd,%rdi
  400704:	e8 97 ff ff ff       	callq  4006a0 <__libc_start_main@plt>
  400709:	f4                   	hlt    
  40070a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400710 <deregister_tm_clones>:
  400710:	b8 67 10 60 00       	mov    $0x601067,%eax
  400715:	55                   	push   %rbp
  400716:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  40071c:	48 83 f8 0e          	cmp    $0xe,%rax
  400720:	48 89 e5             	mov    %rsp,%rbp
  400723:	77 02                	ja     400727 <deregister_tm_clones+0x17>
  400725:	5d                   	pop    %rbp
  400726:	c3                   	retq   
  400727:	b8 00 00 00 00       	mov    $0x0,%eax
  40072c:	48 85 c0             	test   %rax,%rax
  40072f:	74 f4                	je     400725 <deregister_tm_clones+0x15>
  400731:	5d                   	pop    %rbp
  400732:	bf 60 10 60 00       	mov    $0x601060,%edi
  400737:	ff e0                	jmpq   *%rax
  400739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400740 <register_tm_clones>:
  400740:	b8 60 10 60 00       	mov    $0x601060,%eax
  400745:	55                   	push   %rbp
  400746:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  40074c:	48 c1 f8 03          	sar    $0x3,%rax
  400750:	48 89 e5             	mov    %rsp,%rbp
  400753:	48 89 c2             	mov    %rax,%rdx
  400756:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40075a:	48 01 d0             	add    %rdx,%rax
  40075d:	48 d1 f8             	sar    %rax
  400760:	75 02                	jne    400764 <register_tm_clones+0x24>
  400762:	5d                   	pop    %rbp
  400763:	c3                   	retq   
  400764:	ba 00 00 00 00       	mov    $0x0,%edx
  400769:	48 85 d2             	test   %rdx,%rdx
  40076c:	74 f4                	je     400762 <register_tm_clones+0x22>
  40076e:	5d                   	pop    %rbp
  40076f:	48 89 c6             	mov    %rax,%rsi
  400772:	bf 60 10 60 00       	mov    $0x601060,%edi
  400777:	ff e2                	jmpq   *%rdx
  400779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400780 <__do_global_dtors_aux>:
  400780:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 601170 <completed.6982>
  400787:	75 11                	jne    40079a <__do_global_dtors_aux+0x1a>
  400789:	55                   	push   %rbp
  40078a:	48 89 e5             	mov    %rsp,%rbp
  40078d:	e8 7e ff ff ff       	callq  400710 <deregister_tm_clones>
  400792:	5d                   	pop    %rbp
  400793:	c6 05 d6 09 20 00 01 	movb   $0x1,0x2009d6(%rip)        # 601170 <completed.6982>
  40079a:	f3 c3                	repz retq 
  40079c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007a0 <frame_dummy>:
  4007a0:	48 83 3d 68 06 20 00 	cmpq   $0x0,0x200668(%rip)        # 600e10 <__JCR_END__>
  4007a7:	00 
  4007a8:	74 1e                	je     4007c8 <frame_dummy+0x28>
  4007aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4007af:	48 85 c0             	test   %rax,%rax
  4007b2:	74 14                	je     4007c8 <frame_dummy+0x28>
  4007b4:	55                   	push   %rbp
  4007b5:	bf 10 0e 60 00       	mov    $0x600e10,%edi
  4007ba:	48 89 e5             	mov    %rsp,%rbp
  4007bd:	ff d0                	callq  *%rax
  4007bf:	5d                   	pop    %rbp
  4007c0:	e9 7b ff ff ff       	jmpq   400740 <register_tm_clones>
  4007c5:	0f 1f 00             	nopl   (%rax)
  4007c8:	e9 73 ff ff ff       	jmpq   400740 <register_tm_clones>

00000000004007cd <main>:
  4007cd:	48 83 ec 08          	sub    $0x8,%rsp
  4007d1:	be 00 00 00 00       	mov    $0x0,%esi
  4007d6:	bf 60 10 60 00       	mov    $0x601060,%edi
  4007db:	e8 90 fe ff ff       	callq  400670 <_ZNSolsEi@plt>
  4007e0:	bf 60 10 60 00       	mov    $0x601060,%edi
  4007e5:	e8 e6 fe ff ff       	callq  4006d0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>
  4007ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ef:	48 83 c4 08          	add    $0x8,%rsp
  4007f3:	c3                   	retq   

00000000004007f4 <_GLOBAL__sub_I_main>:
  4007f4:	48 83 ec 08          	sub    $0x8,%rsp
  4007f8:	bf 71 11 60 00       	mov    $0x601171,%edi
  4007fd:	e8 8e fe ff ff       	callq  400690 <_ZNSt8ios_base4InitC1Ev@plt>
  400802:	ba 58 10 60 00       	mov    $0x601058,%edx
  400807:	be 71 11 60 00       	mov    $0x601171,%esi
  40080c:	bf c0 06 40 00       	mov    $0x4006c0,%edi
  400811:	e8 9a fe ff ff       	callq  4006b0 <__cxa_atexit@plt>
  400816:	48 83 c4 08          	add    $0x8,%rsp
  40081a:	c3                   	retq   
  40081b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400820 <__libc_csu_init>:
  400820:	41 57                	push   %r15
  400822:	41 89 ff             	mov    %edi,%r15d
  400825:	41 56                	push   %r14
  400827:	49 89 f6             	mov    %rsi,%r14
  40082a:	41 55                	push   %r13
  40082c:	49 89 d5             	mov    %rdx,%r13
  40082f:	41 54                	push   %r12
  400831:	4c 8d 25 c0 05 20 00 	lea    0x2005c0(%rip),%r12        # 600df8 <__frame_dummy_init_array_entry>
  400838:	55                   	push   %rbp
  400839:	48 8d 2d c8 05 20 00 	lea    0x2005c8(%rip),%rbp        # 600e08 <__init_array_end>
  400840:	53                   	push   %rbx
  400841:	4c 29 e5             	sub    %r12,%rbp
  400844:	31 db                	xor    %ebx,%ebx
  400846:	48 c1 fd 03          	sar    $0x3,%rbp
  40084a:	48 83 ec 08          	sub    $0x8,%rsp
  40084e:	e8 ed fd ff ff       	callq  400640 <_init>
  400853:	48 85 ed             	test   %rbp,%rbp
  400856:	74 1e                	je     400876 <__libc_csu_init+0x56>
  400858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40085f:	00 
  400860:	4c 89 ea             	mov    %r13,%rdx
  400863:	4c 89 f6             	mov    %r14,%rsi
  400866:	44 89 ff             	mov    %r15d,%edi
  400869:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40086d:	48 83 c3 01          	add    $0x1,%rbx
  400871:	48 39 eb             	cmp    %rbp,%rbx
  400874:	75 ea                	jne    400860 <__libc_csu_init+0x40>
  400876:	48 83 c4 08          	add    $0x8,%rsp
  40087a:	5b                   	pop    %rbx
  40087b:	5d                   	pop    %rbp
  40087c:	41 5c                	pop    %r12
  40087e:	41 5d                	pop    %r13
  400880:	41 5e                	pop    %r14
  400882:	41 5f                	pop    %r15
  400884:	c3                   	retq   
  400885:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40088c:	00 00 00 00 

0000000000400890 <__libc_csu_fini>:
  400890:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400894 <_fini>:
  400894:	48 83 ec 08          	sub    $0x8,%rsp
  400898:	48 83 c4 08          	add    $0x8,%rsp
  40089c:	c3                   	retq   
