	.file	"gen_random_vector.cc"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE38:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB371:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE371:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB450:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L7
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L8
.L7:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE450:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
.LC0:
	.string	"default"
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.align 2
	.weak	_ZNSt13random_deviceC2Ev
	.type	_ZNSt13random_deviceC2Ev, @function
_ZNSt13random_deviceC2Ev:
.LFB2913:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2913
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-65(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC0(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	leaq	-64(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
.LEHB1:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE1:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L12
	jmp	.L15
.L14:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L11
.L13:
	endbr64
	movq	%rax, %rbx
.L11:
	leaq	-65(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L15:
	call	__stack_chk_fail@PLT
.L12:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2913:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceC2Ev,"aG",@progbits,_ZNSt13random_deviceC5Ev,comdat
.LLSDA2913:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2913-.LLSDACSB2913
.LLSDACSB2913:
	.uleb128 .LEHB0-.LFB2913
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L13-.LFB2913
	.uleb128 0
	.uleb128 .LEHB1-.LFB2913
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L14-.LFB2913
	.uleb128 0
	.uleb128 .LEHB2-.LFB2913
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2913:
	.section	.text._ZNSt13random_deviceC2Ev,"axG",@progbits,_ZNSt13random_deviceC5Ev,comdat
	.size	_ZNSt13random_deviceC2Ev, .-_ZNSt13random_deviceC2Ev
	.weak	_ZNSt13random_deviceC1Ev
	.set	_ZNSt13random_deviceC1Ev,_ZNSt13random_deviceC2Ev
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.align 2
	.weak	_ZNSt13random_deviceD2Ev
	.type	_ZNSt13random_deviceD2Ev, @function
_ZNSt13random_deviceD2Ev:
.LFB2919:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2919
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2919:
	.section	.gcc_except_table._ZNSt13random_deviceD2Ev,"aG",@progbits,_ZNSt13random_deviceD5Ev,comdat
.LLSDA2919:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2919-.LLSDACSB2919
.LLSDACSB2919:
.LLSDACSE2919:
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.size	_ZNSt13random_deviceD2Ev, .-_ZNSt13random_deviceD2Ev
	.weak	_ZNSt13random_deviceD1Ev
	.set	_ZNSt13random_deviceD1Ev,_ZNSt13random_deviceD2Ev
	.section	.text._ZNSt13random_deviceclEv,"axG",@progbits,_ZNSt13random_deviceclEv,comdat
	.align 2
	.weak	_ZNSt13random_deviceclEv
	.type	_ZNSt13random_deviceclEv, @function
_ZNSt13random_deviceclEv:
.LFB2924:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_device9_M_getvalEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2924:
	.size	_ZNSt13random_deviceclEv, .-_ZNSt13random_deviceclEv
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4654:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L20
	movq	-16(%rbp), %rax
	jmp	.L21
.L20:
	movq	-8(%rbp), %rax
.L21:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4654:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.rodata
.LC1:
	.string	"../data/vector%d.bin"
.LC2:
	.string	"../src/data/vector%d.bin"
.LC3:
	.string	"../data_big/vector%d.bin"
.LC4:
	.string	"../src/data_big/vector%d.bin"
	.align 8
.LC5:
	.string	"Could not open binary_file.bin"
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.weak	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.type	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, @function
_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji:
.LFB5813:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5813
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1432, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -50584(%rbp)
	movl	%esi, -50588(%rbp)
	movl	%edx, -50592(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpl	$1, -50592(%rbp)
	jne	.L23
	movl	-50588(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L23:
	cmpl	$2, -50592(%rbp)
	jne	.L24
	movl	-50588(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L24:
	cmpl	$3, -50592(%rbp)
	jne	.L25
	movl	-50588(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L25:
	cmpl	$4, -50592(%rbp)
	jne	.L26
	movl	-50588(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L26:
	leaq	-50032(%rbp), %rcx
	leaq	-50560(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE3:
	leaq	-50560(%rbp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv@PLT
	testb	%al, %al
	je	.L28
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	jmp	.L28
.L29:
	leaq	-50568(%rbp), %rax
	movq	-50584(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEE9push_backERKd
.L28:
	leaq	-50568(%rbp), %rcx
	leaq	-50560(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSi4readEPcl@PLT
	movq	(%rax), %rdx
	subq	$24, %rdx
	movq	(%rdx), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv@PLT
	testb	%al, %al
	jne	.L29
	leaq	-50560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE4:
	leaq	-50560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L31
	jmp	.L33
.L32:
	endbr64
	movq	%rax, %rbx
	leaq	-50560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L33:
	call	__stack_chk_fail@PLT
.L31:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5813:
	.section	.gcc_except_table._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"aG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
.LLSDA5813:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5813-.LLSDACSB5813
.LLSDACSB5813:
	.uleb128 .LEHB3-.LFB5813
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB5813
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L32-.LFB5813
	.uleb128 0
	.uleb128 .LEHB5-.LFB5813
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE5813:
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.size	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, .-_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.weak	_Z7vec_genIdEviiT_S0_i
	.type	_Z7vec_genIdEviiT_S0_i, @function
_Z7vec_genIdEviiT_S0_i:
.LFB5814:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5814
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL1:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL1
	subq	$1544, %rsp
	.cfi_offset 3, -24
	movl	%edi, -50660(%rbp)
	movl	%esi, -50664(%rbp)
	vmovsd	%xmm0, -50672(%rbp)
	vmovsd	%xmm1, -50680(%rbp)
	movl	%edx, -50684(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -50648(%rbp)
	jmp	.L35
.L42:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE6:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE7:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-50680(%rbp), %rdx
	movq	-50672(%rbp), %rax
	movl	-50664(%rbp), %r8d
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movq	%rdx, %rcx
	vmovq	%rax, %xmm0
	movl	%r8d, %edx
.LEHB8:
	call	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.LEHE8:
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	addl	%eax, %eax
	incl	%eax
	movslq	%eax, %rcx
	leaq	-50649(%rbp), %rdx
	leaq	-50576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE9:
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtsi2sdl	-50664(%rbp), %xmm2, %xmm2
	vmovsd	%xmm2, -50696(%rbp)
	leaq	-50576(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	$0, -50644(%rbp)
	jmp	.L36
.L37:
	movl	-50644(%rbp), %edx
	leaq	-50640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -50696(%rbp)
	movl	-50644(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	movl	-50644(%rbp), %edx
	leaq	-50608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -50696(%rbp)
	movl	-50664(%rbp), %edx
	movl	-50644(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	incl	-50644(%rbp)
.L36:
	movl	-50664(%rbp), %eax
	cmpl	%eax, -50644(%rbp)
	jb	.L37
	cmpl	$1, -50684(%rbp)
	jne	.L38
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L38:
	cmpl	$2, -50684(%rbp)
	jne	.L39
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L39:
	cmpl	$3, -50684(%rbp)
	jne	.L40
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L40:
	cmpl	$4, -50684(%rbp)
	jne	.L41
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L41:
	leaq	-50032(%rbp), %rcx
	leaq	-50544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE10:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	salq	$3, %rax
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE4dataEv
	movq	%rax, %rcx
	leaq	-50544(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSo5writeEPKcl@PLT
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE11:
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-50648(%rbp)
.L35:
	movl	-50660(%rbp), %eax
	cmpl	%eax, -50648(%rbp)
	jb	.L42
	jmp	.L57
.L51:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.L52:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L45
.L54:
	endbr64
	movq	%rax, %rbx
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L47
.L56:
	endbr64
	movq	%rax, %rbx
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L49
.L55:
	endbr64
	movq	%rax, %rbx
.L49:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L47
.L53:
	endbr64
	movq	%rax, %rbx
.L47:
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L45:
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE12:
.L57:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L50
	call	__stack_chk_fail@PLT
.L50:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5814:
	.section	.gcc_except_table._Z7vec_genIdEviiT_S0_i,"aG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
.LLSDA5814:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5814-.LLSDACSB5814
.LLSDACSB5814:
	.uleb128 .LEHB6-.LFB5814
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L51-.LFB5814
	.uleb128 0
	.uleb128 .LEHB7-.LFB5814
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L52-.LFB5814
	.uleb128 0
	.uleb128 .LEHB8-.LFB5814
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L53-.LFB5814
	.uleb128 0
	.uleb128 .LEHB9-.LFB5814
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L54-.LFB5814
	.uleb128 0
	.uleb128 .LEHB10-.LFB5814
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L55-.LFB5814
	.uleb128 0
	.uleb128 .LEHB11-.LFB5814
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L56-.LFB5814
	.uleb128 0
	.uleb128 .LEHB12-.LFB5814
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE5814:
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.size	_Z7vec_genIdEviiT_S0_i, .-_Z7vec_genIdEviiT_S0_i
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.weak	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.type	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, @function
_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi:
.LFB5815:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5815
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL2:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL2
	subq	$1544, %rsp
	.cfi_offset 3, -24
	movl	%edi, -50660(%rbp)
	movl	%esi, -50664(%rbp)
	vmovsd	%xmm0, -50672(%rbp)
	vmovsd	%xmm1, -50680(%rbp)
	movl	%edx, -50684(%rbp)
	movq	%rcx, -50696(%rbp)
	movl	%r8d, -50688(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -50652(%rbp)
	jmp	.L59
.L66:
	movl	-50688(%rbp), %eax
	imull	-50660(%rbp), %eax
	movl	%eax, %edx
	movl	-50652(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -50644(%rbp)
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE13:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE14:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	-50644(%rbp), %eax
	cltq
	movq	-50696(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rax, %rcx
	leaq	-50680(%rbp), %rdx
	movq	-50672(%rbp), %rax
	movl	-50664(%rbp), %r9d
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movq	%rcx, %r8
	movq	%rdx, %rcx
	vmovq	%rax, %xmm0
	movl	%r9d, %edx
.LEHB15:
	call	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
.LEHE15:
	leaq	-50653(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	addl	%eax, %eax
	incl	%eax
	movslq	%eax, %rcx
	leaq	-50653(%rbp), %rdx
	leaq	-50576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE16:
	leaq	-50653(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtsi2sdl	-50664(%rbp), %xmm2, %xmm2
	vmovsd	%xmm2, -50704(%rbp)
	leaq	-50576(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50704(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	$0, -50648(%rbp)
	jmp	.L60
.L61:
	movl	-50648(%rbp), %edx
	leaq	-50640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -50704(%rbp)
	movl	-50648(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50704(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	movl	-50648(%rbp), %edx
	leaq	-50608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -50704(%rbp)
	movl	-50664(%rbp), %edx
	movl	-50648(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50704(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	incl	-50648(%rbp)
.L60:
	movl	-50664(%rbp), %eax
	cmpl	%eax, -50648(%rbp)
	jb	.L61
	cmpl	$1, -50684(%rbp)
	jne	.L62
	movl	-50652(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L62:
	cmpl	$2, -50684(%rbp)
	jne	.L63
	movl	-50652(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L63:
	cmpl	$3, -50684(%rbp)
	jne	.L64
	movl	-50652(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L64:
	cmpl	$4, -50684(%rbp)
	jne	.L65
	movl	-50652(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L65:
	leaq	-50032(%rbp), %rcx
	leaq	-50544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE17:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	salq	$3, %rax
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE4dataEv
	movq	%rax, %rcx
	leaq	-50544(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSo5writeEPKcl@PLT
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE18:
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-50652(%rbp)
.L59:
	movl	-50660(%rbp), %eax
	cmpl	%eax, -50652(%rbp)
	jb	.L66
	jmp	.L81
.L75:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.L76:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L69
.L78:
	endbr64
	movq	%rax, %rbx
	leaq	-50653(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L71
.L80:
	endbr64
	movq	%rax, %rbx
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L73
.L79:
	endbr64
	movq	%rax, %rbx
.L73:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L71
.L77:
	endbr64
	movq	%rax, %rbx
.L71:
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L69:
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE19:
.L81:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L74
	call	__stack_chk_fail@PLT
.L74:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5815:
	.section	.gcc_except_table._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"aG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
.LLSDA5815:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5815-.LLSDACSB5815
.LLSDACSB5815:
	.uleb128 .LEHB13-.LFB5815
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L75-.LFB5815
	.uleb128 0
	.uleb128 .LEHB14-.LFB5815
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L76-.LFB5815
	.uleb128 0
	.uleb128 .LEHB15-.LFB5815
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L77-.LFB5815
	.uleb128 0
	.uleb128 .LEHB16-.LFB5815
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L78-.LFB5815
	.uleb128 0
	.uleb128 .LEHB17-.LFB5815
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L79-.LFB5815
	.uleb128 0
	.uleb128 .LEHB18-.LFB5815
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L80-.LFB5815
	.uleb128 0
	.uleb128 .LEHB19-.LFB5815
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE5815:
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.size	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, .-_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.section	.rodata
	.align 8
.LC6:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~~~ GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.align 8
.LC7:
	.string	"\n~~~~~~~~~~~~~~~~~~~~~~~~~ END OF GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.weak	_Z13vec_gen_printIdEviiT_S0_i
	.type	_Z13vec_gen_printIdEviiT_S0_i, @function
_Z13vec_gen_printIdEviiT_S0_i:
.LFB5816:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5816
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL3:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL3
	subq	$1544, %rsp
	.cfi_offset 3, -24
	movl	%edi, -50660(%rbp)
	movl	%esi, -50664(%rbp)
	vmovsd	%xmm0, -50672(%rbp)
	vmovsd	%xmm1, -50680(%rbp)
	movl	%edx, -50684(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -50648(%rbp)
	jmp	.L83
.L90:
	movl	-50648(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB20:
	call	printf@PLT
.LEHE20:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE21:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-50576(%rbp), %rdx
	leaq	-50608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE22:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-50680(%rbp), %rdx
	movq	-50672(%rbp), %rax
	movl	-50664(%rbp), %r8d
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movq	%rdx, %rcx
	vmovq	%rax, %xmm0
	movl	%r8d, %edx
.LEHB23:
	call	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.LEHE23:
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-50664(%rbp), %eax
	addl	%eax, %eax
	incl	%eax
	movslq	%eax, %rcx
	leaq	-50649(%rbp), %rdx
	leaq	-50576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE24:
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtsi2sdl	-50664(%rbp), %xmm2, %xmm2
	vmovsd	%xmm2, -50696(%rbp)
	leaq	-50576(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	$0, -50644(%rbp)
	jmp	.L84
.L85:
	movl	-50644(%rbp), %edx
	leaq	-50640(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -50696(%rbp)
	movl	-50644(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	movl	-50644(%rbp), %edx
	leaq	-50608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -50696(%rbp)
	movl	-50664(%rbp), %edx
	movl	-50644(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-50576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-50696(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	incl	-50644(%rbp)
.L84:
	movl	-50664(%rbp), %eax
	cmpl	%eax, -50644(%rbp)
	jb	.L85
	cmpl	$1, -50684(%rbp)
	jne	.L86
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L86:
	cmpl	$2, -50684(%rbp)
	jne	.L87
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L87:
	cmpl	$3, -50684(%rbp)
	jne	.L88
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L88:
	cmpl	$4, -50684(%rbp)
	jne	.L89
	movl	-50648(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L89:
	leaq	-50032(%rbp), %rcx
	leaq	-50544(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE25:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	salq	$3, %rax
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE4dataEv
	movq	%rax, %rcx
	leaq	-50544(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSo5writeEPKcl@PLT
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
	movl	-50648(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.LEHE26:
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-50648(%rbp)
.L83:
	movl	-50660(%rbp), %eax
	cmpl	%eax, -50648(%rbp)
	jb	.L90
	jmp	.L105
.L99:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.L100:
	endbr64
	movq	%rax, %rbx
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L93
.L102:
	endbr64
	movq	%rax, %rbx
	leaq	-50649(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L95
.L104:
	endbr64
	movq	%rax, %rbx
	leaq	-50544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L97
.L103:
	endbr64
	movq	%rax, %rbx
.L97:
	leaq	-50576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L95
.L101:
	endbr64
	movq	%rax, %rbx
.L95:
	leaq	-50608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L93:
	leaq	-50640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE27:
.L105:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L98
	call	__stack_chk_fail@PLT
.L98:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5816:
	.section	.gcc_except_table._Z13vec_gen_printIdEviiT_S0_i,"aG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
.LLSDA5816:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5816-.LLSDACSB5816
.LLSDACSB5816:
	.uleb128 .LEHB20-.LFB5816
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB5816
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L99-.LFB5816
	.uleb128 0
	.uleb128 .LEHB22-.LFB5816
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L100-.LFB5816
	.uleb128 0
	.uleb128 .LEHB23-.LFB5816
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L101-.LFB5816
	.uleb128 0
	.uleb128 .LEHB24-.LFB5816
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L102-.LFB5816
	.uleb128 0
	.uleb128 .LEHB25-.LFB5816
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L103-.LFB5816
	.uleb128 0
	.uleb128 .LEHB26-.LFB5816
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L104-.LFB5816
	.uleb128 0
	.uleb128 .LEHB27-.LFB5816
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE5816:
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.size	_Z13vec_gen_printIdEviiT_S0_i, .-_Z13vec_gen_printIdEviiT_S0_i
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.weak	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5817:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5817
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1984, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -10152(%rbp)
	movq	%rsi, -10160(%rbp)
	movl	%edx, -10164(%rbp)
	vmovsd	%xmm0, -10176(%rbp)
	movq	%rcx, -10184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-10164(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-10064(%rbp), %rdx
	leaq	-10096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE28:
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-10184(%rbp), %rdx
	movq	-10176(%rbp), %rax
	movl	-10164(%rbp), %esi
	leaq	-10096(%rbp), %rcx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
.LEHB29:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	jmp	.L107
.L115:
	vmovsd	.LC9(%rip), %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceC1Ev
.LEHE29:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt13random_deviceclEv
	movl	%eax, %edx
	leaq	-5024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	leaq	-10104(%rbp), %rax
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEC1Eii
	leaq	-5024(%rbp), %rdx
	leaq	-10104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC10(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	movl	$0, -10140(%rbp)
	jmp	.L108
.L109:
	movl	-10140(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-10096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-10128(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -10192(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10192(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	.LC9(%rip), %xmm0
	vdivsd	-10128(%rbp), %xmm0, %xmm3
	vmovsd	%xmm3, -10192(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10160(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10192(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-10140(%rbp)
.L108:
	movl	-10140(%rbp), %eax
	cmpl	-10164(%rbp), %eax
	jl	.L109
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	movq	-10176(%rbp), %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vmovsd	%xmm0, -10120(%rbp)
	vmovsd	-10120(%rbp), %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm0
	vmovsd	%xmm0, -10112(%rbp)
	vcvttsd2usi	-10112(%rbp), %ebx
	movl	-10164(%rbp), %r12d
	movq	-10152(%rbp), %rdx
	leaq	-10064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE30:
	leaq	-10064(%rbp), %rax
	movl	%ebx, %edx
	movl	%r12d, %esi
	movq	%rax, %rdi
.LEHB31:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE31:
	vmovq	%xmm0, %rax
	movq	-10184(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movl	$0, -10144(%rbp)
	jmp	.L110
.L111:
	movl	-10144(%rbp), %eax
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	incl	-10144(%rbp)
.L110:
	movl	-10144(%rbp), %ebx
	movq	-10152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L111
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L125
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	je	.L112
.L125:
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	jmp	.L114
.L112:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
.L114:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
.L107:
	vmovsd	-10176(%rbp), %xmm0
	vcomisd	-10136(%rbp), %xmm0
	ja	.L115
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC14(%rip), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L115
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vcomisd	.LC15(%rip), %xmm0
	ja	.L115
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L120
	jmp	.L126
.L121:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.L124:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L118
.L123:
	endbr64
	movq	%rax, %rbx
.L118:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	jmp	.L119
.L122:
	endbr64
	movq	%rax, %rbx
.L119:
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE32:
.L126:
	call	__stack_chk_fail@PLT
.L120:
	addq	$10176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5817:
	.section	.gcc_except_table._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"aG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
.LLSDA5817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5817-.LLSDACSB5817
.LLSDACSB5817:
	.uleb128 .LEHB28-.LFB5817
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L121-.LFB5817
	.uleb128 0
	.uleb128 .LEHB29-.LFB5817
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L122-.LFB5817
	.uleb128 0
	.uleb128 .LEHB30-.LFB5817
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L123-.LFB5817
	.uleb128 0
	.uleb128 .LEHB31-.LFB5817
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L124-.LFB5817
	.uleb128 0
	.uleb128 .LEHB32-.LFB5817
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE5817:
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.weak	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.type	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, @function
_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_:
.LFB5818:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5818
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$2000, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -10152(%rbp)
	movq	%rsi, -10160(%rbp)
	movl	%edx, -10164(%rbp)
	vmovsd	%xmm0, -10176(%rbp)
	movq	%rcx, -10184(%rbp)
	movq	%r8, -10192(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-10164(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-10064(%rbp), %rdx
	leaq	-10096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE33:
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-10184(%rbp), %rdx
	movq	-10176(%rbp), %rax
	movl	-10164(%rbp), %esi
	leaq	-10096(%rbp), %rcx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
.LEHB34:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	jmp	.L128
.L136:
	vmovsd	.LC9(%rip), %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceC1Ev
.LEHE34:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt13random_deviceclEv
	movl	%eax, %edx
	leaq	-5024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	leaq	-10104(%rbp), %rax
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEC1Eii
	leaq	-5024(%rbp), %rdx
	leaq	-10104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC10(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	movl	$0, -10140(%rbp)
	jmp	.L129
.L130:
	movl	-10140(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-10096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-10128(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -10200(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10200(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	.LC9(%rip), %xmm0
	vdivsd	-10128(%rbp), %xmm0, %xmm3
	vmovsd	%xmm3, -10200(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10160(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10200(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-10140(%rbp)
.L129:
	movl	-10140(%rbp), %eax
	cmpl	-10164(%rbp), %eax
	jl	.L130
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	movq	-10176(%rbp), %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vmovsd	%xmm0, -10120(%rbp)
	vmovsd	-10120(%rbp), %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm0
	vmovsd	%xmm0, -10112(%rbp)
	vcvttsd2usi	-10112(%rbp), %ebx
	movl	-10164(%rbp), %r12d
	movq	-10152(%rbp), %rdx
	leaq	-10064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE35:
	leaq	-10064(%rbp), %rax
	movl	%ebx, %edx
	movl	%r12d, %esi
	movq	%rax, %rdi
.LEHB36:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE36:
	vmovq	%xmm0, %rax
	movq	-10184(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movl	$0, -10144(%rbp)
	jmp	.L131
.L132:
	movl	-10144(%rbp), %eax
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	incl	-10144(%rbp)
.L131:
	movl	-10144(%rbp), %ebx
	movq	-10152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L132
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L146
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	je	.L133
.L146:
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	jmp	.L135
.L133:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
.L135:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
.L128:
	vmovsd	-10176(%rbp), %xmm0
	vcomisd	-10136(%rbp), %xmm0
	ja	.L136
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC14(%rip), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L136
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vcomisd	.LC15(%rip), %xmm0
	ja	.L136
	movq	-10192(%rbp), %rax
	vmovsd	-10136(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L141
	jmp	.L147
.L142:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB37:
	call	_Unwind_Resume@PLT
.L145:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L139
.L144:
	endbr64
	movq	%rax, %rbx
.L139:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	jmp	.L140
.L143:
	endbr64
	movq	%rax, %rbx
.L140:
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE37:
.L147:
	call	__stack_chk_fail@PLT
.L141:
	addq	$10192, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5818:
	.section	.gcc_except_table._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"aG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
.LLSDA5818:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5818-.LLSDACSB5818
.LLSDACSB5818:
	.uleb128 .LEHB33-.LFB5818
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L142-.LFB5818
	.uleb128 0
	.uleb128 .LEHB34-.LFB5818
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L143-.LFB5818
	.uleb128 0
	.uleb128 .LEHB35-.LFB5818
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L144-.LFB5818
	.uleb128 0
	.uleb128 .LEHB36-.LFB5818
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L145-.LFB5818
	.uleb128 0
	.uleb128 .LEHB37-.LFB5818
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE5818:
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.size	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, .-_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.section	.text._Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5819:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	vmovss	%xmm0, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -36(%rbp)
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-64(%rbp), %eax
	vmovd	%eax, %xmm0
	call	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L149
.L150:
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-64(%rbp), %eax
	vmovd	%eax, %xmm0
	call	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L149:
	vmovss	-36(%rbp), %xmm1
	vmovss	-64(%rbp), %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L150
	movq	-72(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vmovss	.LC18(%rip), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L150
	movq	-72(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vcomiss	.LC19(%rip), %xmm0
	ja	.L150
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L151
	call	__stack_chk_fail@PLT
.L151:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5819:
	.size	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5823:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	vmovsd	%xmm0, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L153
.L154:
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L153:
	vmovsd	-40(%rbp), %xmm1
	vmovsd	-72(%rbp), %xmm0
	vcomisd	%xmm1, %xmm0
	ja	.L154
	movq	-80(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC14(%rip), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L154
	movq	-80(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vcomisd	.LC15(%rip), %xmm0
	ja	.L154
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5823:
	.size	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.rodata
.LC20:
	.string	"\n -> START GENERATE_V"
.LC21:
	.string	"  END GENERATE_V "
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.weak	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5827:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5827
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1984, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -10152(%rbp)
	movq	%rsi, -10160(%rbp)
	movl	%edx, -10164(%rbp)
	vmovsd	%xmm0, -10176(%rbp)
	movq	%rcx, -10184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
.LEHB38:
	call	puts@PLT
.LEHE38:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-10164(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-10064(%rbp), %rdx
	leaq	-10096(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE39:
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-10184(%rbp), %rdx
	movq	-10176(%rbp), %rax
	movl	-10164(%rbp), %esi
	leaq	-10096(%rbp), %rcx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
.LEHB40:
	call	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	jmp	.L157
.L165:
	vmovsd	.LC9(%rip), %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceC1Ev
.LEHE40:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
.LEHB41:
	call	_ZNSt13random_deviceclEv
	movl	%eax, %edx
	leaq	-5024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	leaq	-10104(%rbp), %rax
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEC1Eii
	leaq	-5024(%rbp), %rdx
	leaq	-10104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC10(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -10128(%rbp)
	movl	$0, -10140(%rbp)
	jmp	.L158
.L159:
	movl	-10140(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-10096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-10128(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -10192(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10192(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	.LC9(%rip), %xmm0
	vdivsd	-10128(%rbp), %xmm0, %xmm3
	vmovsd	%xmm3, -10192(%rbp)
	movl	-10140(%rbp), %eax
	cltq
	movq	-10160(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-10192(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-10140(%rbp)
.L158:
	movl	-10140(%rbp), %eax
	cmpl	-10164(%rbp), %eax
	jl	.L159
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	movq	-10176(%rbp), %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vmovsd	%xmm0, -10120(%rbp)
	vmovsd	-10120(%rbp), %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm0
	vmovsd	%xmm0, -10112(%rbp)
	vcvttsd2usi	-10112(%rbp), %ebx
	movl	-10164(%rbp), %r12d
	movq	-10152(%rbp), %rdx
	leaq	-10064(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE41:
	leaq	-10064(%rbp), %rax
	movl	%ebx, %edx
	movl	%r12d, %esi
	movq	%rax, %rdi
.LEHB42:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE42:
	vmovq	%xmm0, %rax
	movq	-10184(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movl	$0, -10144(%rbp)
	jmp	.L160
.L161:
	movl	-10144(%rbp), %eax
	movq	-10152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	incl	-10144(%rbp)
.L160:
	movl	-10144(%rbp), %ebx
	movq	-10152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L161
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L175
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	je	.L162
.L175:
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	-10136(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
	jmp	.L164
.L162:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -10136(%rbp)
.L164:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
.L157:
	vmovsd	-10176(%rbp), %xmm0
	vcomisd	-10136(%rbp), %xmm0
	ja	.L165
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC14(%rip), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L165
	movq	-10184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vcomisd	.LC15(%rip), %xmm0
	ja	.L165
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
.LEHB43:
	call	puts@PLT
.LEHE43:
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L170
	jmp	.L176
.L171:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB44:
	call	_Unwind_Resume@PLT
.L174:
	endbr64
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L168
.L173:
	endbr64
	movq	%rax, %rbx
.L168:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	jmp	.L169
.L172:
	endbr64
	movq	%rax, %rbx
.L169:
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE44:
.L176:
	call	__stack_chk_fail@PLT
.L170:
	addq	$10176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5827:
	.section	.gcc_except_table._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"aG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
.LLSDA5827:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5827-.LLSDACSB5827
.LLSDACSB5827:
	.uleb128 .LEHB38-.LFB5827
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB5827
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L171-.LFB5827
	.uleb128 0
	.uleb128 .LEHB40-.LFB5827
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L172-.LFB5827
	.uleb128 0
	.uleb128 .LEHB41-.LFB5827
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L173-.LFB5827
	.uleb128 0
	.uleb128 .LEHB42-.LFB5827
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L174-.LFB5827
	.uleb128 0
	.uleb128 .LEHB43-.LFB5827
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L172-.LFB5827
	.uleb128 0
	.uleb128 .LEHB44-.LFB5827
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
.LLSDACSE5827:
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.rodata
.LC22:
	.string	"   -"
.LC23:
	.string	"   ----------> START GEN FP"
.LC24:
	.string	"In while"
.LC25:
	.string	"   ----------- End GEN FP"
	.section	.text._Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5828:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	vmovss	%xmm0, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -36(%rbp)
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-64(%rbp), %eax
	vmovd	%eax, %xmm0
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L178
.L179:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-72(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movl	-64(%rbp), %eax
	vmovd	%eax, %xmm0
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L178:
	vmovss	-36(%rbp), %xmm1
	vmovss	-64(%rbp), %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L179
	movq	-72(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vmovss	.LC18(%rip), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L179
	movq	-72(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vcomiss	.LC19(%rip), %xmm0
	ja	.L179
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L180
	call	__stack_chk_fail@PLT
.L180:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5828:
	.size	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5829:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	vmovsd	%xmm0, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L182
.L183:
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-60(%rbp), %esi
	leaq	-32(%rbp), %rdi
	movq	-80(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	movq	-72(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	leaq	-32(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L182:
	vmovsd	-40(%rbp), %xmm1
	vmovsd	-72(%rbp), %xmm0
	vcomisd	%xmm1, %xmm0
	ja	.L183
	movq	-80(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovsd	.LC14(%rip), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L183
	movq	-80(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vcomisd	.LC15(%rip), %xmm0
	ja	.L183
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L184
	call	__stack_chk_fail@PLT
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5829:
	.size	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.text
	.globl	_Z14vec_gen_randomiii
	.type	_Z14vec_gen_randomiii, @function
_Z14vec_gen_randomiii:
.LFB5457:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5457
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	leaq	-57344(%rsp), %r11
.LPSRL4:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL4
	subq	$2792, %rsp
	.cfi_offset 3, -24
	movl	%edi, -60116(%rbp)
	movl	%esi, -60120(%rbp)
	movl	%edx, -60124(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$0, -60104(%rbp)
	jmp	.L186
.L193:
	leaq	-60096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-60120(%rbp), %eax
	addl	%eax, %eax
	incl	%eax
	movslq	%eax, %rcx
	leaq	-60096(%rbp), %rdx
	leaq	-60080(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB45:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE45:
	leaq	-60096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtsi2sdl	-60120(%rbp), %xmm2, %xmm2
	vmovsd	%xmm2, -60136(%rbp)
	leaq	-60080(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-60136(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	$1, -60100(%rbp)
	jmp	.L187
.L188:
	leaq	-60048(%rbp), %rax
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSt13random_deviceC1Ev
.LEHE46:
	leaq	-60048(%rbp), %rax
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSt13random_deviceclEv
	movl	%eax, %edx
	leaq	-55040(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	vmovsd	.LC26(%rip), %xmm0
	leaq	-60096(%rbp), %rdx
	vmovsd	%xmm0, %xmm0, %xmm1
	movq	.LC8(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSt25uniform_real_distributionIdEC1Edd
	leaq	-55040(%rbp), %rdx
	leaq	-60096(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
.LEHE47:
	vmovq	%xmm0, %rax
	vmovsd	.LC27(%rip), %xmm0
	vmovq	%rax, %xmm4
	vsubsd	%xmm0, %xmm4, %xmm3
	vmovsd	%xmm3, -60136(%rbp)
	movl	-60100(%rbp), %edx
	leaq	-60080(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-60136(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	leaq	-60048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	incl	-60100(%rbp)
.L187:
	movl	-60120(%rbp), %eax
	addl	%eax, %eax
	incl	%eax
	cmpl	%eax, -60100(%rbp)
	jb	.L188
	cmpl	$1, -60124(%rbp)
	jne	.L189
	movl	-60104(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L189:
	cmpl	$2, -60124(%rbp)
	jne	.L190
	movl	-60104(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L190:
	cmpl	$3, -60124(%rbp)
	jne	.L191
	movl	-60104(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC3(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L191:
	cmpl	$4, -60124(%rbp)
	jne	.L192
	movl	-60104(%rbp), %edx
	leaq	-50032(%rbp), %rax
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
.L192:
	leaq	-50032(%rbp), %rcx
	leaq	-55040(%rbp), %rax
	movl	$4, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode@PLT
.LEHE48:
	leaq	-60080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	salq	$3, %rax
	movq	%rax, %rbx
	leaq	-60080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE4dataEv
	movq	%rax, %rcx
	leaq	-55040(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB49:
	call	_ZNSo5writeEPKcl@PLT
	leaq	-55040(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv@PLT
.LEHE49:
	leaq	-55040(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	leaq	-60080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-60104(%rbp)
.L186:
	movl	-60116(%rbp), %eax
	cmpl	%eax, -60104(%rbp)
	jb	.L193
	jmp	.L203
.L199:
	endbr64
	movq	%rax, %rbx
	leaq	-60096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB50:
	call	_Unwind_Resume@PLT
.L200:
	endbr64
	movq	%rax, %rbx
	leaq	-60048(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	jmp	.L196
.L202:
	endbr64
	movq	%rax, %rbx
	leaq	-55040(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L196
.L201:
	endbr64
	movq	%rax, %rbx
.L196:
	leaq	-60080(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE50:
.L203:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L198
	call	__stack_chk_fail@PLT
.L198:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5457:
	.section	.gcc_except_table,"a",@progbits
.LLSDA5457:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5457-.LLSDACSB5457
.LLSDACSB5457:
	.uleb128 .LEHB45-.LFB5457
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L199-.LFB5457
	.uleb128 0
	.uleb128 .LEHB46-.LFB5457
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L201-.LFB5457
	.uleb128 0
	.uleb128 .LEHB47-.LFB5457
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L200-.LFB5457
	.uleb128 0
	.uleb128 .LEHB48-.LFB5457
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L201-.LFB5457
	.uleb128 0
	.uleb128 .LEHB49-.LFB5457
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L202-.LFB5457
	.uleb128 0
	.uleb128 .LEHB50-.LFB5457
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE5457:
	.text
	.size	_Z14vec_gen_randomiii, .-_Z14vec_gen_randomiii
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB5461:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5461:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB5460:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L207
.L208:
	incq	-16(%rbp)
.L207:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L208
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L210
	call	__stack_chk_fail@PLT
.L210:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5460:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB5568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5568:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB5790:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5790
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB51:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE51:
	cmpq	$0, -64(%rbp)
	je	.L213
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB52:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L214
.L213:
	movl	$1, %eax
.L214:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE52:
	jmp	.L218
.L217:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB53:
	call	_Unwind_Resume@PLT
.LEHE53:
.L218:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L216
	call	__stack_chk_fail@PLT
.L216:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5790:
	.section	.gcc_except_table
.LLSDA5790:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5790-.LLSDACSB5790
.LLSDACSB5790:
	.uleb128 .LEHB51-.LFB5790
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB5790
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L217-.LFB5790
	.uleb128 0
	.uleb128 .LEHB53-.LFB5790
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE5790:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB5805:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L220
	movq	-16(%rbp), %rax
	jmp	.L221
.L220:
	movq	-8(%rbp), %rax
.L221:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5805:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB5831:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5831:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB5834:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5834:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_:
.LFB5837:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5837
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB54:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE54:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB55:
	call	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
.LEHE55:
	jmp	.L227
.L226:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB56:
	call	_Unwind_Resume@PLT
.LEHE56:
.L227:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5837:
	.section	.gcc_except_table
.LLSDA5837:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5837-.LLSDACSB5837
.LLSDACSB5837:
	.uleb128 .LEHB54-.LFB5837
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB5837
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L226-.LFB5837
	.uleb128 0
	.uleb128 .LEHB56-.LFB5837
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
.LLSDACSE5837:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB5840:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5840
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5840:
	.section	.gcc_except_table
.LLSDA5840:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5840-.LLSDACSB5840
.LLSDACSB5840:
.LLSDACSE5840:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB5842:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5842:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB5844:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5844:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt25uniform_real_distributionIdEC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdEC5Edd,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEC2Edd
	.type	_ZNSt25uniform_real_distributionIdEC2Edd, @function
_ZNSt25uniform_real_distributionIdEC2Edd:
.LFB5847:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rdx
	vmovsd	-24(%rbp), %xmm0
	movq	-16(%rbp), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5847:
	.size	_ZNSt25uniform_real_distributionIdEC2Edd, .-_ZNSt25uniform_real_distributionIdEC2Edd
	.weak	_ZNSt25uniform_real_distributionIdEC1Edd
	.set	_ZNSt25uniform_real_distributionIdEC1Edd,_ZNSt25uniform_real_distributionIdEC2Edd
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_, @function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_:
.LFB5849:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5849:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_, .-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_
	.section	.text._ZNSt6vectorIdSaIdEE4dataEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE4dataEv,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE4dataEv
	.type	_ZNSt6vectorIdSaIdEE4dataEv, @function
_ZNSt6vectorIdSaIdEE4dataEv:
.LFB5857:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5857:
	.size	_ZNSt6vectorIdSaIdEE4dataEv, .-_ZNSt6vectorIdSaIdEE4dataEv
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, @function
_ZNKSt6vectorIdSaIdEE4sizeEv:
.LFB5858:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5858:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB5988:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5988:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC28:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB5987:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5987
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L242
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L242
	movl	$1, %eax
	jmp	.L243
.L242:
	movl	$0, %eax
.L243:
	testb	%al, %al
	je	.L244
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
.LEHB57:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L244:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L245
	leaq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE57:
.L245:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB58:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE58:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB59:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE59:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L248
	jmp	.L251
.L249:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB60:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE60:
.L250:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB61:
	call	_Unwind_Resume@PLT
.LEHE61:
.L251:
	call	__stack_chk_fail@PLT
.L248:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5987:
	.section	.gcc_except_table
	.align 4
.LLSDA5987:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5987-.LLSDATTD5987
.LLSDATTD5987:
	.byte	0x1
	.uleb128 .LLSDACSE5987-.LLSDACSB5987
.LLSDACSB5987:
	.uleb128 .LEHB57-.LFB5987
	.uleb128 .LEHE57-.LEHB57
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB58-.LFB5987
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L249-.LFB5987
	.uleb128 0x1
	.uleb128 .LEHB59-.LFB5987
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB5987
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L250-.LFB5987
	.uleb128 0
	.uleb128 .LEHB61-.LFB5987
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSE5987:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5987:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSt6vectorIdSaIdEE9push_backERKd,"axG",@progbits,_ZNSt6vectorIdSaIdEE9push_backERKd,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE9push_backERKd
	.type	_ZNSt6vectorIdSaIdEE9push_backERKd, @function
_ZNSt6vectorIdSaIdEE9push_backERKd:
.LFB6015:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L253
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L255
.L253:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
.L255:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6015:
	.size	_ZNSt6vectorIdSaIdEE9push_backERKd, .-_ZNSt6vectorIdSaIdEE9push_backERKd
	.section	.text._ZNSt24uniform_int_distributionIiEC2Eii,"axG",@progbits,_ZNSt24uniform_int_distributionIiEC5Eii,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEC2Eii
	.type	_ZNSt24uniform_int_distributionIiEC2Eii, @function
_ZNSt24uniform_int_distributionIiEC2Eii:
.LFB6019:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6019:
	.size	_ZNSt24uniform_int_distributionIiEC2Eii, .-_ZNSt24uniform_int_distributionIiEC2Eii
	.weak	_ZNSt24uniform_int_distributionIiEC1Eii
	.set	_ZNSt24uniform_int_distributionIiEC1Eii,_ZNSt24uniform_int_distributionIiEC2Eii
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_:
.LFB6021:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6021:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS1_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS1_, @function
_ZNSt6vectorIdSaIdEEC2ERKS1_:
.LFB6023:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6023
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB62:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
.LEHE62:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB63:
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE63:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB64:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
.LEHE64:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L262
	jmp	.L265
.L263:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB65:
	call	_Unwind_Resume@PLT
.L264:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE65:
.L265:
	call	__stack_chk_fail@PLT
.L262:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6023:
	.section	.gcc_except_table
.LLSDA6023:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6023-.LLSDACSB6023
.LLSDACSB6023:
	.uleb128 .LEHB62-.LFB6023
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB6023
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L263-.LFB6023
	.uleb128 0
	.uleb128 .LEHB64-.LFB6023
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L264-.LFB6023
	.uleb128 0
	.uleb128 .LEHB65-.LFB6023
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE6023:
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2ERKS1_, .-_ZNSt6vectorIdSaIdEEC2ERKS1_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS1_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS1_,_ZNSt6vectorIdSaIdEEC2ERKS1_
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.weak	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj:
.LFB6025:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -88(%rbp)
	movl	%esi, -92(%rbp)
	movl	%edx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movl	$1, -68(%rbp)
	jmp	.L267
.L270:
	movl	$1, -64(%rbp)
	jmp	.L268
.L269:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-64(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -104(%rbp)
	movl	-64(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	leaq	-48(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	-104(%rbp), %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	-56(%rbp), %xmm3
	vmovsd	%xmm3, -104(%rbp)
	movl	-64(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-104(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-48(%rbp), %xmm4
	vmovsd	%xmm4, -104(%rbp)
	movl	-64(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-104(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	incl	-64(%rbp)
.L268:
	movl	-64(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jb	.L269
	incl	-68(%rbp)
.L267:
	movl	-96(%rbp), %eax
	decl	%eax
	cmpl	%eax, -68(%rbp)
	jbe	.L270
	movl	$0, -60(%rbp)
	jmp	.L271
.L272:
	movl	-60(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovsd	-40(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	incl	-60(%rbp)
.L271:
	movl	-60(%rbp), %eax
	cmpl	-92(%rbp), %eax
	jb	.L272
	vmovsd	-40(%rbp), %xmm5
	vmovsd	%xmm5, -104(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-104(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L274
	call	__stack_chk_fail@PLT
.L274:
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6025:
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev:
.LFB6030:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6030:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD2Ev
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6026:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6026
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	vmovss	%xmm0, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	vcvtss2sd	-160(%rbp), %xmm3, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -136(%rbp)
	vcvtss2sd	-136(%rbp), %xmm0, %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -132(%rbp)
	vcvtusi2sdl	-156(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -128(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	movl	-156(%rbp), %eax
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rax, %rsi
.LEHB66:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE66:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	vcvttss2usi	-128(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB67:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE67:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movl	$0, -140(%rbp)
	jmp	.L277
.L278:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vmulss	-136(%rbp), %xmm0, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	call	_Z5roundIfET_S0_
	vmovd	%xmm0, %ebx
	movl	-140(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	%ebx, (%rax)
	incl	-140(%rbp)
.L277:
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vmovss	-128(%rbp), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L278
	vcvtss2sd	-136(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm5
	vmovss	%xmm5, -184(%rbp)
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm5
	vmovss	%xmm5, (%rax)
	vmovss	-128(%rbp), %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	movl	$0, -140(%rbp)
	jmp	.L279
.L280:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -116(%rbp)
	vcvtss2sd	-116(%rbp), %xmm6, %xmm6
	vmovsd	%xmm6, -184(%rbp)
	movl	-140(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vcvttss2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm7
	vmulsd	-184(%rbp), %xmm7, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vmovss	%xmm2, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm2
	vmovss	%xmm2, (%rax)
	incl	-140(%rbp)
.L279:
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vmovss	-128(%rbp), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L280
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rsi
	leaq	-141(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB68:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE68:
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	-136(%rbp), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -124(%rbp)
	vmovss	-136(%rbp), %xmm3
	vmovss	%xmm3, -184(%rbp)
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm3
	vmovss	%xmm3, (%rax)
	movl	$1, -140(%rbp)
	jmp	.L281
.L282:
	movl	-140(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vsubss	-124(%rbp), %xmm0, %xmm4
	vmovss	%xmm4, -184(%rbp)
	movl	-140(%rbp), %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm4
	vmovss	%xmm4, (%rax)
	incl	-140(%rbp)
.L281:
	vcvtusi2ssl	-140(%rbp), %xmm1, %xmm1
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L282
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	vcvttss2usi	-128(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.L283
.L284:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -120(%rbp)
	vcvtss2sd	-120(%rbp), %xmm7, %xmm7
	vmovsd	%xmm7, -184(%rbp)
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vcvttss2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-184(%rbp), %xmm6, %xmm5
	vmovsd	%xmm5, -184(%rbp)
	vcvttss2usi	-132(%rbp), %r12d
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vaddss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %ebx
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB69:
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE69:
	leaq	-48(%rbp), %rax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB70:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE70:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	-184(%rbp), %xmm5
	vsubsd	%xmm0, %xmm5, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vmovss	%xmm2, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm2
	vmovss	%xmm2, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	incl	-140(%rbp)
.L283:
	movl	-140(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jb	.L284
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE3endEv
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_
	vcvttss2usi	-132(%rbp), %ebx
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE71:
	movl	-156(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB72:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE72:
	vmovd	%xmm0, %eax
	movq	-176(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	-168(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	movl	$0, -140(%rbp)
	jmp	.L285
.L286:
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	movq	-168(%rbp), %rax
	vmovss	(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	-168(%rbp), %rax
	vmovss	%xmm0, (%rax)
	incl	-140(%rbp)
.L285:
	movl	-140(%rbp), %ebx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L286
	movq	-176(%rbp), %rax
	vmovss	(%rax), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jp	.L306
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	je	.L287
.L306:
	movq	-168(%rbp), %rax
	vmovss	(%rax), %xmm1
	movq	-176(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm2
	vandps	%xmm2, %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
	movq	-168(%rbp), %rax
	vmovss	%xmm0, (%rax)
	jmp	.L309
.L287:
	movq	-168(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L309:
	nop
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L299
	jmp	.L308
.L300:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB73:
	call	_Unwind_Resume@PLT
.L301:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	jmp	.L293
.L302:
	endbr64
	movq	%rax, %rbx
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	jmp	.L295
.L304:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L297
.L305:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L297
.L303:
	endbr64
	movq	%rax, %rbx
.L297:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L295:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L293:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE73:
.L308:
	call	__stack_chk_fail@PLT
.L299:
	movq	-152(%rbp), %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6026:
	.section	.gcc_except_table
.LLSDA6026:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6026-.LLSDACSB6026
.LLSDACSB6026:
	.uleb128 .LEHB66-.LFB6026
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L300-.LFB6026
	.uleb128 0
	.uleb128 .LEHB67-.LFB6026
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L301-.LFB6026
	.uleb128 0
	.uleb128 .LEHB68-.LFB6026
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L302-.LFB6026
	.uleb128 0
	.uleb128 .LEHB69-.LFB6026
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L303-.LFB6026
	.uleb128 0
	.uleb128 .LEHB70-.LFB6026
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L304-.LFB6026
	.uleb128 0
	.uleb128 .LEHB71-.LFB6026
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L303-.LFB6026
	.uleb128 0
	.uleb128 .LEHB72-.LFB6026
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L305-.LFB6026
	.uleb128 0
	.uleb128 .LEHB73-.LFB6026
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE6026:
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEED2Ev
	.type	_ZNSt6vectorIfSaIfEED2Ev, @function
_ZNSt6vectorIfSaIfEED2Ev:
.LFB6037:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6037
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6037:
	.section	.gcc_except_table
.LLSDA6037:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6037-.LLSDACSB6037
.LLSDACSB6037:
.LLSDACSE6037:
	.section	.text._ZNSt6vectorIfSaIfEED2Ev,"axG",@progbits,_ZNSt6vectorIfSaIfEED5Ev,comdat
	.size	_ZNSt6vectorIfSaIfEED2Ev, .-_ZNSt6vectorIfSaIfEED2Ev
	.weak	_ZNSt6vectorIfSaIfEED1Ev
	.set	_ZNSt6vectorIfSaIfEED1Ev,_ZNSt6vectorIfSaIfEED2Ev
	.section	.text._ZNSt6vectorIfSaIfEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEaSEOS1_
	.type	_ZNSt6vectorIfSaIfEEaSEOS1_, @function
_ZNSt6vectorIfSaIfEEaSEOS1_:
.LFB6039:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6039:
	.size	_ZNSt6vectorIfSaIfEEaSEOS1_, .-_ZNSt6vectorIfSaIfEEaSEOS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB6044:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6044:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6040:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6040
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	vmovsd	%xmm0, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-200(%rbp), %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm3
	vdivsd	%xmm0, %xmm3, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vmovsd	-160(%rbp), %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm5
	vaddsd	%xmm0, %xmm5, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -144(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-188(%rbp), %eax
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movq	%rax, %rsi
.LEHB74:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE74:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vcvttsd2usi	-144(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB75:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE75:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -164(%rbp)
	jmp	.L315
.L316:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	-160(%rbp), %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rbx
	movl	-164(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	incl	-164(%rbp)
.L315:
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L316
	vmovsd	-160(%rbp), %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm3
	vmovsd	%xmm3, -224(%rbp)
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-144(%rbp), %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movl	$0, -164(%rbp)
	jmp	.L317
.L318:
	call	rand@PLT
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC31(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movl	-164(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-120(%rbp), %xmm6, %xmm5
	vmovsd	%xmm5, -224(%rbp)
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	incl	-164(%rbp)
.L317:
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L318
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rsi
	leaq	-165(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB76:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE76:
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	-160(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	-160(%rbp), %xmm7
	vmovsd	%xmm7, -224(%rbp)
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm7
	vmovsd	%xmm7, (%rax)
	movl	$1, -164(%rbp)
	jmp	.L319
.L320:
	movl	-164(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vsubsd	-136(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -224(%rbp)
	movl	-164(%rbp), %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	incl	-164(%rbp)
.L319:
	vcvtusi2sdl	-164(%rbp), %xmm1, %xmm1
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcomisd	%xmm1, %xmm0
	ja	.L320
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	vcvttsd2usi	-144(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L321
.L322:
	call	rand@PLT
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC31(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-128(%rbp), %xmm6, %xmm4
	vmovsd	%xmm4, -224(%rbp)
	vcvttsd2usi	-152(%rbp), %r12d
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vaddsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %ebx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB77:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE77:
	leaq	-48(%rbp), %rax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB78:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE78:
	vmovq	%xmm0, %rax
	vmovsd	-224(%rbp), %xmm4
	vmovq	%rax, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovsd	%xmm3, -224(%rbp)
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-164(%rbp)
.L321:
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jb	.L322
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
.LEHB79:
	call	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	vcvttsd2usi	-152(%rbp), %ebx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE79:
	movl	-188(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB80:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE80:
	vmovq	%xmm0, %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-208(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movl	$0, -164(%rbp)
	jmp	.L323
.L324:
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	incl	-164(%rbp)
.L323:
	movl	-164(%rbp), %ebx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L324
	movq	-216(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L344
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	je	.L325
.L344:
	movq	-208(%rbp), %rax
	vmovsd	(%rax), %xmm1
	movq	-216(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm2
	vandpd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	jmp	.L347
.L325:
	movq	-208(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L347:
	nop
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L337
	jmp	.L346
.L338:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB81:
	call	_Unwind_Resume@PLT
.L339:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L331
.L340:
	endbr64
	movq	%rax, %rbx
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L333
.L342:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L335
.L343:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L335
.L341:
	endbr64
	movq	%rax, %rbx
.L335:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L333:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L331:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE81:
.L346:
	call	__stack_chk_fail@PLT
.L337:
	movq	-184(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6040:
	.section	.gcc_except_table
.LLSDA6040:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6040-.LLSDACSB6040
.LLSDACSB6040:
	.uleb128 .LEHB74-.LFB6040
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L338-.LFB6040
	.uleb128 0
	.uleb128 .LEHB75-.LFB6040
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L339-.LFB6040
	.uleb128 0
	.uleb128 .LEHB76-.LFB6040
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L340-.LFB6040
	.uleb128 0
	.uleb128 .LEHB77-.LFB6040
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L341-.LFB6040
	.uleb128 0
	.uleb128 .LEHB78-.LFB6040
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L342-.LFB6040
	.uleb128 0
	.uleb128 .LEHB79-.LFB6040
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L341-.LFB6040
	.uleb128 0
	.uleb128 .LEHB80-.LFB6040
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L343-.LFB6040
	.uleb128 0
	.uleb128 .LEHB81-.LFB6040
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE6040:
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._ZNSt6vectorIdSaIdEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEaSEOS1_
	.type	_ZNSt6vectorIdSaIdEEaSEOS1_, @function
_ZNSt6vectorIdSaIdEEaSEOS1_:
.LFB6050:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6050:
	.size	_ZNSt6vectorIdSaIdEEaSEOS1_, .-_ZNSt6vectorIdSaIdEEaSEOS1_
	.section	.rodata
.LC32:
	.string	"             -"
	.align 8
.LC33:
	.string	"             ----------> START GENSUM \n "
	.align 8
.LC34:
	.string	"                            Before                "
	.align 8
.LC35:
	.string	"                           After                "
	.align 8
.LC36:
	.string	"             ----------- END GENSUM "
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6051:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6051
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -152(%rbp)
	movl	%esi, -156(%rbp)
	vmovss	%xmm0, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
.LEHB82:
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE82:
	vcvtss2sd	-160(%rbp), %xmm3, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -136(%rbp)
	vcvtss2sd	-136(%rbp), %xmm0, %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm5
	vmovq	%xmm5, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm6
	vaddsd	%xmm0, %xmm6, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -132(%rbp)
	vcvtusi2sdl	-156(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -128(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	movl	-156(%rbp), %eax
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-152(%rbp), %rdi
	movq	%rax, %rsi
.LEHB83:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE83:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	vcvttss2usi	-128(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB84:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE84:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movl	$0, -140(%rbp)
	jmp	.L351
.L352:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vmulss	-136(%rbp), %xmm0, %xmm2
	vmovd	%xmm2, %eax
	vmovd	%eax, %xmm0
	call	_Z5roundIfET_S0_
	vmovd	%xmm0, %ebx
	movl	-140(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	%ebx, (%rax)
	incl	-140(%rbp)
.L351:
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vmovss	-128(%rbp), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L352
	vcvtss2sd	-136(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm5
	vmovss	%xmm5, -184(%rbp)
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm5
	vmovss	%xmm5, (%rax)
	vmovss	-128(%rbp), %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	movl	$0, -140(%rbp)
	jmp	.L353
.L354:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -116(%rbp)
	vcvtss2sd	-116(%rbp), %xmm6, %xmm6
	vmovsd	%xmm6, -184(%rbp)
	movl	-140(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vcvttss2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm7
	vmulsd	-184(%rbp), %xmm7, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vmovss	%xmm2, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm2
	vmovss	%xmm2, (%rax)
	incl	-140(%rbp)
.L353:
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vmovss	-128(%rbp), %xmm1
	vcomiss	%xmm0, %xmm1
	ja	.L354
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfEC1Ev
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rsi
	leaq	-141(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB85:
	call	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
.LEHE85:
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	-136(%rbp), %xmm1
	vdivss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -124(%rbp)
	vmovss	-136(%rbp), %xmm3
	vmovss	%xmm3, -184(%rbp)
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm3
	vmovss	%xmm3, (%rax)
	movl	$1, -140(%rbp)
	jmp	.L355
.L356:
	movl	-140(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vsubss	-124(%rbp), %xmm0, %xmm4
	vmovss	%xmm4, -184(%rbp)
	movl	-140(%rbp), %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm4
	vmovss	%xmm4, (%rax)
	incl	-140(%rbp)
.L355:
	vcvtusi2ssl	-140(%rbp), %xmm1, %xmm1
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L356
	vcvtusi2ssl	-156(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vmovss	.LC30(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
.LEHB86:
	call	puts@PLT
	vcvttss2usi	-128(%rbp), %eax
	movl	%eax, -140(%rbp)
	jmp	.L357
.L358:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -120(%rbp)
	vcvtss2sd	-120(%rbp), %xmm7, %xmm7
	vmovsd	%xmm7, -184(%rbp)
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vcvttss2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-184(%rbp), %xmm6, %xmm5
	vmovsd	%xmm5, -184(%rbp)
	vcvttss2usi	-132(%rbp), %r12d
	vcvtusi2ssl	-140(%rbp), %xmm0, %xmm0
	vsubss	-128(%rbp), %xmm0, %xmm0
	vaddss	-128(%rbp), %xmm0, %xmm0
	vcvttss2usi	%xmm0, %ebx
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE86:
	leaq	-48(%rbp), %rax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB87:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE87:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	-184(%rbp), %xmm5
	vsubsd	%xmm0, %xmm5, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vmovss	%xmm2, -184(%rbp)
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-184(%rbp), %xmm2
	vmovss	%xmm2, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	incl	-140(%rbp)
.L357:
	movl	-140(%rbp), %eax
	cmpl	-156(%rbp), %eax
	jb	.L358
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
.LEHB88:
	call	puts@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE3endEv
	movq	%rax, %rbx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_
	vcvttss2usi	-132(%rbp), %ebx
	movq	-152(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
.LEHE88:
	movl	-156(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB89:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE89:
	vmovd	%xmm0, %eax
	movq	-176(%rbp), %rdx
	movl	%eax, (%rdx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	-168(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
	movl	$0, -140(%rbp)
	jmp	.L359
.L360:
	movl	-140(%rbp), %eax
	movq	-152(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm1
	vandps	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	movq	-168(%rbp), %rax
	vmovss	(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	-168(%rbp), %rax
	vmovss	%xmm0, (%rax)
	incl	-140(%rbp)
.L359:
	movl	-140(%rbp), %ebx
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L360
	movq	-176(%rbp), %rax
	vmovss	(%rax), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	jp	.L380
	vxorps	%xmm1, %xmm1, %xmm1
	vucomiss	%xmm1, %xmm0
	je	.L361
.L380:
	movq	-168(%rbp), %rax
	vmovss	(%rax), %xmm1
	movq	-176(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	.LC17(%rip), %xmm2
	vandps	%xmm2, %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
	movq	-168(%rbp), %rax
	vmovss	%xmm0, (%rax)
	jmp	.L363
.L361:
	movq	-168(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax)
.L363:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
.LEHB90:
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE90:
	nop
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L373
	jmp	.L381
.L374:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB91:
	call	_Unwind_Resume@PLT
.L375:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	jmp	.L367
.L376:
	endbr64
	movq	%rax, %rbx
	leaq	-141(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	jmp	.L369
.L378:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L371
.L379:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	jmp	.L371
.L377:
	endbr64
	movq	%rax, %rbx
.L371:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L369:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
.L367:
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE91:
.L381:
	call	__stack_chk_fail@PLT
.L373:
	movq	-152(%rbp), %rax
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6051:
	.section	.gcc_except_table
.LLSDA6051:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6051-.LLSDACSB6051
.LLSDACSB6051:
	.uleb128 .LEHB82-.LFB6051
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB6051
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L374-.LFB6051
	.uleb128 0
	.uleb128 .LEHB84-.LFB6051
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L375-.LFB6051
	.uleb128 0
	.uleb128 .LEHB85-.LFB6051
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L376-.LFB6051
	.uleb128 0
	.uleb128 .LEHB86-.LFB6051
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L377-.LFB6051
	.uleb128 0
	.uleb128 .LEHB87-.LFB6051
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L378-.LFB6051
	.uleb128 0
	.uleb128 .LEHB88-.LFB6051
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L377-.LFB6051
	.uleb128 0
	.uleb128 .LEHB89-.LFB6051
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L379-.LFB6051
	.uleb128 0
	.uleb128 .LEHB90-.LFB6051
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L377-.LFB6051
	.uleb128 0
	.uleb128 .LEHB91-.LFB6051
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
.LLSDACSE6051:
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6052:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6052
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	vmovsd	%xmm0, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
.LEHB92:
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE92:
	movq	-200(%rbp), %rax
	vmovq	%rax, %xmm0
	call	log@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC11(%rip), %xmm0
	vmovq	%rax, %xmm3
	vdivsd	%xmm0, %xmm3, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vmovsd	-160(%rbp), %xmm0
	vmovsd	.LC12(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm4
	vmovq	%xmm4, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm5
	vaddsd	%xmm0, %xmm5, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm6
	vmovq	%xmm6, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -144(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-188(%rbp), %eax
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	-184(%rbp), %rdi
	movq	%rax, %rsi
.LEHB93:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE93:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vcvttsd2usi	-144(%rbp), %rsi
	leaq	-80(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB94:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE94:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -164(%rbp)
	jmp	.L383
.L384:
	call	rand@PLT
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	vmovss	.LC29(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	-160(%rbp), %xmm0, %xmm7
	vmovq	%xmm7, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rbx
	movl	-164(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	incl	-164(%rbp)
.L383:
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L384
	vmovsd	-160(%rbp), %xmm0
	vmovsd	.LC27(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	call	round@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC9(%rip), %xmm0
	vmovq	%rax, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm3
	vmovsd	%xmm3, -224(%rbp)
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-144(%rbp), %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movl	$0, -164(%rbp)
	jmp	.L385
.L386:
	call	rand@PLT
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC31(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -120(%rbp)
	movl	-164(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-120(%rbp), %xmm6, %xmm5
	vmovsd	%xmm5, -224(%rbp)
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	incl	-164(%rbp)
.L385:
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vmovsd	-144(%rbp), %xmm1
	vcomisd	%xmm0, %xmm1
	ja	.L386
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -48(%rbp)
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rsi
	leaq	-165(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB95:
	call	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
.LEHE95:
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	-160(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	-160(%rbp), %xmm7
	vmovsd	%xmm7, -224(%rbp)
	leaq	-80(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm7
	vmovsd	%xmm7, (%rax)
	movl	$1, -164(%rbp)
	jmp	.L387
.L388:
	movl	-164(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vsubsd	-136(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -224(%rbp)
	movl	-164(%rbp), %edx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	incl	-164(%rbp)
.L387:
	vcvtusi2sdl	-164(%rbp), %xmm1, %xmm1
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcomisd	%xmm1, %xmm0
	ja	.L388
	vcvtusi2sdl	-188(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
.LEHB96:
	call	puts@PLT
	vcvttsd2usi	-144(%rbp), %eax
	movl	%eax, -164(%rbp)
	jmp	.L389
.L390:
	call	rand@PLT
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	.LC31(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	movq	.LC27(%rip), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm6
	vmulsd	-128(%rbp), %xmm6, %xmm4
	vmovsd	%xmm4, -224(%rbp)
	vcvttsd2usi	-152(%rbp), %r12d
	vcvtusi2sdl	-164(%rbp), %xmm0, %xmm0
	vsubsd	-144(%rbp), %xmm0, %xmm0
	vaddsd	-144(%rbp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %ebx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE96:
	leaq	-48(%rbp), %rax
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%rax, %rdi
.LEHB97:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE97:
	vmovq	%xmm0, %rax
	vmovsd	-224(%rbp), %xmm4
	vmovq	%rax, %xmm5
	vsubsd	%xmm5, %xmm4, %xmm3
	vmovsd	%xmm3, -224(%rbp)
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-224(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-164(%rbp)
.L389:
	movl	-164(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jb	.L390
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
.LEHB98:
	call	puts@PLT
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, %rbx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE5beginEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	vcvttsd2usi	-152(%rbp), %ebx
	movq	-184(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE98:
	movl	-188(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ebx, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB99:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE99:
	vmovq	%xmm0, %rax
	movq	-216(%rbp), %rdx
	movq	%rax, (%rdx)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-208(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movl	$0, -164(%rbp)
	jmp	.L391
.L392:
	movl	-164(%rbp), %eax
	movq	-184(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	incl	-164(%rbp)
.L391:
	movl	-164(%rbp), %ebx
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	jne	.L392
	movq	-216(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L412
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	je	.L393
.L412:
	movq	-208(%rbp), %rax
	vmovsd	(%rax), %xmm1
	movq	-216(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	.LC13(%rip), %xmm2
	vandpd	%xmm2, %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
	movq	-208(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	jmp	.L395
.L393:
	movq	-208(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
.L395:
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
.LEHB100:
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE100:
	nop
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L405
	jmp	.L413
.L406:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB101:
	call	_Unwind_Resume@PLT
.L407:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L399
.L408:
	endbr64
	movq	%rax, %rbx
	leaq	-165(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L401
.L410:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L403
.L411:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L403
.L409:
	endbr64
	movq	%rax, %rbx
.L403:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L401:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L399:
	movq	-184(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE101:
.L413:
	call	__stack_chk_fail@PLT
.L405:
	movq	-184(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6052:
	.section	.gcc_except_table
.LLSDA6052:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6052-.LLSDACSB6052
.LLSDACSB6052:
	.uleb128 .LEHB92-.LFB6052
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB93-.LFB6052
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L406-.LFB6052
	.uleb128 0
	.uleb128 .LEHB94-.LFB6052
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L407-.LFB6052
	.uleb128 0
	.uleb128 .LEHB95-.LFB6052
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L408-.LFB6052
	.uleb128 0
	.uleb128 .LEHB96-.LFB6052
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L409-.LFB6052
	.uleb128 0
	.uleb128 .LEHB97-.LFB6052
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L410-.LFB6052
	.uleb128 0
	.uleb128 .LEHB98-.LFB6052
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L409-.LFB6052
	.uleb128 0
	.uleb128 .LEHB99-.LFB6052
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L411-.LFB6052
	.uleb128 0
	.uleb128 .LEHB100-.LFB6052
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L409-.LFB6052
	.uleb128 0
	.uleb128 .LEHB101-.LFB6052
	.uleb128 .LEHE101-.LEHB101
	.uleb128 0
	.uleb128 0
.LLSDACSE6052:
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB6054:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6054:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB6057:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6057:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.rodata
	.align 8
.LC37:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB6059:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	testb	%bl, %bl
	je	.L417
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L417:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L419
	call	__stack_chk_fail@PLT
.L419:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6059:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_:
.LFB6061:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6061
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB102:
	call	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
.LEHE102:
	jmp	.L423
.L422:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB103:
	call	_Unwind_Resume@PLT
.LEHE103:
.L423:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6061:
	.section	.gcc_except_table
.LLSDA6061:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6061-.LLSDACSB6061
.LLSDACSB6061:
	.uleb128 .LEHB102-.LFB6061
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L422-.LFB6061
	.uleb128 0
	.uleb128 .LEHB103-.LFB6061
	.uleb128 .LEHE103-.LEHB103
	.uleb128 0
	.uleb128 0
.LLSDACSE6061:
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_,_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB6064:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6064
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6064:
	.section	.gcc_except_table
.LLSDA6064:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6064-.LLSDACSB6064
.LLSDACSB6064:
.LLSDACSE6064:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.type	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, @function
_ZNSt6vectorIdSaIdEE21_M_default_initializeEm:
.LFB6066:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6066:
	.size	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, .-_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB6067:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6067:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB6068:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPdEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6068:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB6069:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	$1, -16(%rbp)
	jmp	.L430
.L431:
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$30, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1812433253, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	incq	-16(%rbp)
.L430:
	cmpq	$623, -16(%rbp)
	jbe	.L431
	movq	-24(%rbp), %rax
	movq	$624, 4992(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6069:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt25uniform_real_distributionIdE10param_typeC2Edd,"axG",@progbits,_ZNSt25uniform_real_distributionIdE10param_typeC5Edd,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.type	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd, @function
_ZNSt25uniform_real_distributionIdE10param_typeC2Edd:
.LFB6071:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	%xmm1, -24(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	vmovsd	-24(%rbp), %xmm0
	vmovsd	%xmm0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6071:
	.size	_ZNSt25uniform_real_distributionIdE10param_typeC2Edd, .-_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.weak	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd
	.set	_ZNSt25uniform_real_distributionIdE10param_typeC1Edd,_ZNSt25uniform_real_distributionIdE10param_typeC2Edd
	.section	.text._ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	.type	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE, @function
_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE:
.LFB6073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	vmovq	%xmm0, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	vmovq	%xmm0, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	vmovq	%xmm0, %rax
	vmovq	%rbx, %xmm1
	vmovq	%rax, %xmm2
	vsubsd	%xmm2, %xmm1, %xmm0
	vmovq	%r12, %xmm4
	vmulsd	%xmm0, %xmm4, %xmm3
	vmovsd	%xmm3, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vaddsd	-64(%rbp), %xmm5, %xmm0
	vmovq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L435
	call	__stack_chk_fail@PLT
.L435:
	vmovq	%rax, %xmm0
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6073:
	.size	_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE, .-_ZNSt25uniform_real_distributionIdEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEdRT_RKNS0_10param_typeE
	.section	.text._ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_,"axG",@progbits,_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_
	.type	_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_, @function
_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_:
.LFB6093:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6093:
	.size	_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_, .-_ZNKSt6vectorIdSaIdEE11_M_data_ptrIdEEPT_S4_
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB6158:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6158:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB6159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6159:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB6160:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6160:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_:
.LFB6179:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6179:
	.size	_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE3endEv
	.type	_ZNSt6vectorIdSaIdEE3endEv, @function
_ZNSt6vectorIdSaIdEE3endEv:
.LFB6180:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L447
	call	__stack_chk_fail@PLT
.L447:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6180:
	.size	_ZNSt6vectorIdSaIdEE3endEv, .-_ZNSt6vectorIdSaIdEE3endEv
	.section	.rodata
.LC38:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.type	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, @function
_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_:
.LFB6181:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	leaq	.LC38(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE5beginEv
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE9constructIdJRKdEEEvRS0_PT_DpOT0_
	movq	$0, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	movq	%rax, -32(%rbp)
	addq	$8, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	16(%rdx), %rdx
	subq	-64(%rbp), %rdx
	sarq	$3, %rdx
	movq	-64(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rax, %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L449
	call	__stack_chk_fail@PLT
.L449:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6181:
	.size	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, .-_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.section	.text._ZNSt24uniform_int_distributionIiE10param_typeC2Eii,"axG",@progbits,_ZNSt24uniform_int_distributionIiE10param_typeC5Eii,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.type	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii, @function
_ZNSt24uniform_int_distributionIiE10param_typeC2Eii:
.LFB6186:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6186:
	.size	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii, .-_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.weak	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	.set	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii,_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv:
.LFB6189:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6189:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE:
.LFB6188:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -88(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	movslq	%eax, %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	movslq	%eax, %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	movq	%rax, -64(%rbp)
	movl	$4294967294, %eax
	cmpq	%rax, -64(%rbp)
	ja	.L454
	movq	-64(%rbp), %rax
	incq	%rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %edx
	movq	-128(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_
	movl	%eax, %eax
	movq	%rax, -96(%rbp)
	jmp	.L455
.L454:
	movl	$4294967295, %eax
	cmpq	%rax, -64(%rbp)
	jbe	.L456
.L457:
	movabsq	$4294967296, %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	leaq	-32(%rbp), %rax
	movq	-128(%rbp), %rsi
	movq	-120(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	salq	$32, %rax
	movq	%rax, -48(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	-48(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	.L457
	movq	-96(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L457
	jmp	.L455
.L456:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -96(%rbp)
.L455:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	movl	%eax, %edx
	movq	-96(%rbp), %rax
	addl	%edx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L459
	call	__stack_chk_fail@PLT
.L459:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6188:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_:
.LFB6191:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L462
	call	__stack_chk_fail@PLT
.L462:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6191:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB6192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6192:
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE5beginEv
	.type	_ZNKSt6vectorIdSaIdEE5beginEv, @function
_ZNKSt6vectorIdSaIdEE5beginEv:
.LFB6193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L467
	call	__stack_chk_fail@PLT
.L467:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6193:
	.size	_ZNKSt6vectorIdSaIdEE5beginEv, .-_ZNKSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNKSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE3endEv
	.type	_ZNKSt6vectorIdSaIdEE3endEv, @function
_ZNKSt6vectorIdSaIdEE3endEv:
.LFB6194:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L470
	call	__stack_chk_fail@PLT
.L470:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6194:
	.size	_ZNKSt6vectorIdSaIdEE3endEv, .-_ZNKSt6vectorIdSaIdEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
.LFB6195:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6195:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.section	.text._Z6TwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z6TwoSumIdEvT_S0_RS0_S1_,comdat
	.weak	_Z6TwoSumIdEvT_S0_RS0_S1_
	.type	_Z6TwoSumIdEvT_S0_RS0_S1_, @function
_Z6TwoSumIdEvT_S0_RS0_S1_:
.LFB6196:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vaddsd	-32(%rbp), %xmm0, %xmm0
	movq	-40(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vsubsd	-24(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	movq	-40(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vsubsd	-8(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm1
	vmovsd	-32(%rbp), %xmm0
	vsubsd	-8(%rbp), %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	movq	-48(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6196:
	.size	_Z6TwoSumIdEvT_S0_RS0_S1_, .-_Z6TwoSumIdEvT_S0_RS0_S1_
	.section	.text._ZNSaIfEC2Ev,"axG",@progbits,_ZNSaIfEC5Ev,comdat
	.align 2
	.weak	_ZNSaIfEC2Ev
	.type	_ZNSaIfEC2Ev, @function
_ZNSaIfEC2Ev:
.LFB6198:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6198:
	.size	_ZNSaIfEC2Ev, .-_ZNSaIfEC2Ev
	.weak	_ZNSaIfEC1Ev
	.set	_ZNSaIfEC1Ev,_ZNSaIfEC2Ev
	.section	.text._ZNSaIfED2Ev,"axG",@progbits,_ZNSaIfED5Ev,comdat
	.align 2
	.weak	_ZNSaIfED2Ev
	.type	_ZNSaIfED2Ev, @function
_ZNSaIfED2Ev:
.LFB6201:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6201:
	.size	_ZNSaIfED2Ev, .-_ZNSaIfED2Ev
	.weak	_ZNSaIfED1Ev
	.set	_ZNSaIfED1Ev,_ZNSaIfED2Ev
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKfRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKfRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
	.type	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_, @function
_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_:
.LFB6204:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6204
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB104:
	call	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
.LEHE104:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB105:
	call	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
.LEHE105:
	jmp	.L479
.L478:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB106:
	call	_Unwind_Resume@PLT
.LEHE106:
.L479:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6204:
	.section	.gcc_except_table
.LLSDA6204:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6204-.LLSDACSB6204
.LLSDACSB6204:
	.uleb128 .LEHB104-.LFB6204
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB6204
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L478-.LFB6204
	.uleb128 0
	.uleb128 .LEHB106-.LFB6204
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
.LLSDACSE6204:
	.section	.text._ZNSt6vectorIfSaIfEEC2EmRKfRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5EmRKfRKS0_,comdat
	.size	_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_, .-_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_
	.set	_ZNSt6vectorIfSaIfEEC1EmRKfRKS0_,_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_
	.section	.text._ZNSt6vectorIfSaIfEEixEm,"axG",@progbits,_ZNSt6vectorIfSaIfEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEixEm
	.type	_ZNSt6vectorIfSaIfEEixEm, @function
_ZNSt6vectorIfSaIfEEixEm:
.LFB6206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6206:
	.size	_ZNSt6vectorIfSaIfEEixEm, .-_ZNSt6vectorIfSaIfEEixEm
	.section	.text._Z5roundIfET_S0_,"axG",@progbits,_Z5roundIfET_S0_,comdat
	.weak	_Z5roundIfET_S0_
	.type	_Z5roundIfET_S0_, @function
_Z5roundIfET_S0_:
.LFB6207:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovss	%xmm0, -4(%rbp)
	vmovss	-4(%rbp), %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	vcomiss	%xmm1, %xmm0
	jbe	.L488
	vcvtss2sd	-4(%rbp), %xmm0, %xmm0
	vmovsd	.LC39(%rip), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	jmp	.L486
.L488:
	vcvtss2sd	-4(%rbp), %xmm0, %xmm0
	vmovsd	.LC39(%rip), %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	vcvttsd2sil	%xmm0, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
.L486:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6207:
	.size	_Z5roundIfET_S0_, .-_Z5roundIfET_S0_
	.section	.text._ZNSt6vectorIfSaIfEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEC2ERKS1_
	.type	_ZNSt6vectorIfSaIfEEC2ERKS1_, @function
_ZNSt6vectorIfSaIfEEC2ERKS1_:
.LFB6209:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6209
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB107:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_
.LEHE107:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB108:
	call	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
.LEHE108:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIfSaIfEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB109:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E
.LEHE109:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L492
	jmp	.L495
.L493:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB110:
	call	_Unwind_Resume@PLT
.L494:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE110:
.L495:
	call	__stack_chk_fail@PLT
.L492:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6209:
	.section	.gcc_except_table
.LLSDA6209:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6209-.LLSDACSB6209
.LLSDACSB6209:
	.uleb128 .LEHB107-.LFB6209
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB108-.LFB6209
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L493-.LFB6209
	.uleb128 0
	.uleb128 .LEHB109-.LFB6209
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L494-.LFB6209
	.uleb128 0
	.uleb128 .LEHB110-.LFB6209
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
.LLSDACSE6209:
	.section	.text._ZNSt6vectorIfSaIfEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIfSaIfEEC2ERKS1_, .-_ZNSt6vectorIfSaIfEEC2ERKS1_
	.weak	_ZNSt6vectorIfSaIfEEC1ERKS1_
	.set	_ZNSt6vectorIfSaIfEEC1ERKS1_,_ZNSt6vectorIfSaIfEEC2ERKS1_
	.section	.text._Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,comdat
	.weak	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj:
.LFB6211:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEC1ERKS1_
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -48(%rbp)
	movl	$1, -44(%rbp)
	jmp	.L497
.L500:
	movl	$1, -40(%rbp)
	jmp	.L498
.L499:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -56(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -52(%rbp)
	movl	-40(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm2
	vmovss	%xmm2, -84(%rbp)
	movl	-40(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	movl	(%rax), %eax
	leaq	-52(%rbp), %rcx
	leaq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovss	-84(%rbp), %xmm1
	vmovd	%eax, %xmm0
	call	_Z6TwoSumIfEvT_S0_RS0_S1_
	vmovss	-56(%rbp), %xmm3
	vmovss	%xmm3, -84(%rbp)
	movl	-40(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-84(%rbp), %xmm3
	vmovss	%xmm3, (%rax)
	vmovss	-52(%rbp), %xmm4
	vmovss	%xmm4, -84(%rbp)
	movl	-40(%rbp), %eax
	decl	%eax
	movl	%eax, %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	-84(%rbp), %xmm4
	vmovss	%xmm4, (%rax)
	incl	-40(%rbp)
.L498:
	movl	-40(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L499
	incl	-44(%rbp)
.L497:
	movl	-80(%rbp), %eax
	decl	%eax
	cmpl	%eax, -44(%rbp)
	jbe	.L500
	movl	$0, -36(%rbp)
	jmp	.L501
.L502:
	movl	-36(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEixEm
	vmovss	(%rax), %xmm0
	vmovss	-48(%rbp), %xmm1
	vaddss	%xmm0, %xmm1, %xmm0
	vmovss	%xmm0, -48(%rbp)
	incl	-36(%rbp)
.L501:
	movl	-36(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jb	.L502
	vmovss	-48(%rbp), %xmm5
	vmovss	%xmm5, -84(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	vmovss	-84(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L504
	call	__stack_chk_fail@PLT
.L504:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6211:
	.size	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.section	.text._ZNSt6vectorIfSaIfEE5beginEv,"axG",@progbits,_ZNSt6vectorIfSaIfEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE5beginEv
	.type	_ZNSt6vectorIfSaIfEE5beginEv, @function
_ZNSt6vectorIfSaIfEE5beginEv:
.LFB6212:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L507
	call	__stack_chk_fail@PLT
.L507:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6212:
	.size	_ZNSt6vectorIfSaIfEE5beginEv, .-_ZNSt6vectorIfSaIfEE5beginEv
	.section	.text._ZNSt6vectorIfSaIfEE3endEv,"axG",@progbits,_ZNSt6vectorIfSaIfEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE3endEv
	.type	_ZNSt6vectorIfSaIfEE3endEv, @function
_ZNSt6vectorIfSaIfEE3endEv:
.LFB6213:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L510
	call	__stack_chk_fail@PLT
.L510:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6213:
	.size	_ZNSt6vectorIfSaIfEE3endEv, .-_ZNSt6vectorIfSaIfEE3endEv
	.section	.text._ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_,"axG",@progbits,_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_,comdat
	.weak	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_
	.type	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_, @function
_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_:
.LFB6214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	je	.L517
	leaq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl
	movq	%rax, -40(%rbp)
	jmp	.L513
.L515:
	call	rand@PLT
	movslq	%eax, %rbx
	leaq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	leaq	1(%rax), %rcx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	je	.L514
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_
.L514:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
.L513:
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	jne	.L515
.L517:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L516
	call	__stack_chk_fail@PLT
.L516:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6214:
	.size	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_, .-_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEEvT_S7_
	.section	.text._ZNKSt6vectorIfSaIfEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE4sizeEv
	.type	_ZNKSt6vectorIfSaIfEE4sizeEv, @function
_ZNKSt6vectorIfSaIfEE4sizeEv:
.LFB6215:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6215:
	.size	_ZNKSt6vectorIfSaIfEE4sizeEv, .-_ZNKSt6vectorIfSaIfEE4sizeEv
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEED2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEED2Ev, @function
_ZNSt12_Vector_baseIfSaIfEED2Ev:
.LFB6220:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6220
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$2, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6220:
	.section	.gcc_except_table
.LLSDA6220:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6220-.LLSDACSB6220
.LLSDACSB6220:
.LLSDACSE6220:
	.section	.text._ZNSt12_Vector_baseIfSaIfEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIfSaIfEED2Ev, .-_ZNSt12_Vector_baseIfSaIfEED2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEED1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEED1Ev,_ZNSt12_Vector_baseIfSaIfEED2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv:
.LFB6222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6222:
	.size	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPffEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPffEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPffEvT_S1_RSaIT0_E:
.LFB6223:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPfEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6223:
	.size	_ZSt8_DestroyIPffEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPffEvT_S1_RSaIT0_E
	.section	.text._ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB6224:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6224:
	.size	_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIfSaIfEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB6225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEEC1ERKS0_
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt15__alloc_on_moveISaIfEEvRT_S2_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L527
	call	__stack_chk_fail@PLT
.L527:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6225:
	.size	_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorIfSaIfEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKdRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKdRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_:
.LFB6227:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6227
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-24(%rbp), %rbx
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB111:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE111:
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB112:
	call	_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd
.LEHE112:
	jmp	.L531
.L530:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB113:
	call	_Unwind_Resume@PLT
.LEHE113:
.L531:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6227:
	.section	.gcc_except_table
.LLSDA6227:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6227-.LLSDACSB6227
.LLSDACSB6227:
	.uleb128 .LEHB111-.LFB6227
	.uleb128 .LEHE111-.LEHB111
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB112-.LFB6227
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L530-.LFB6227
	.uleb128 0
	.uleb128 .LEHB113-.LFB6227
	.uleb128 .LEHE113-.LEHB113
	.uleb128 0
	.uleb128 0
.LLSDACSE6227:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKdRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKdRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKdRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_
	.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE5beginEv
	.type	_ZNSt6vectorIdSaIdEE5beginEv, @function
_ZNSt6vectorIdSaIdEE5beginEv:
.LFB6229:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L534
	call	__stack_chk_fail@PLT
.L534:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6229:
	.size	_ZNSt6vectorIdSaIdEE5beginEv, .-_ZNSt6vectorIdSaIdEE5beginEv
	.section	.text._ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_,"axG",@progbits,_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_,comdat
	.weak	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	.type	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, @function
_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_:
.LFB6230:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rdx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	je	.L541
	leaq	-56(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -40(%rbp)
	jmp	.L537
.L539:
	call	rand@PLT
	movslq	%eax, %rbx
	leaq	-56(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	leaq	1(%rax), %rcx
	movq	%rbx, %rax
	cqto
	idivq	%rcx
	leaq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	je	.L538
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
.L538:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
.L537:
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	jne	.L539
.L541:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L540
	call	__stack_chk_fail@PLT
.L540:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6230:
	.size	_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_, .-_ZSt14random_shuffleIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_
	.section	.text._ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB6234:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6234:
	.size	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB6235:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS0_
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L545
	call	__stack_chk_fail@PLT
.L545:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6235:
	.size	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB6236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L548
	call	__stack_chk_fail@PLT
.L548:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6236:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB6238:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6238:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB6241:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6241:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm:
.LFB6243:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6243:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB6244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L554
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L554:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6244:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
.LFB6245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6245:
	.size	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB6246:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6246:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB6247:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6247:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB6248:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	$1, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6248:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC5ERS2_,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_:
.LFB6250:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6250:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_
	.set	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC1ERS2_,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEC2ERS2_
	.section	.text._ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv,"axG",@progbits,_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv,comdat
	.align 2
	.weak	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	.type	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv, @function
_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv:
.LFB6252:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6252:
	.size	_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv, .-_ZNSt8__detail8_AdaptorISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEdEclEv
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1bEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1bEv, @function
_ZNKSt25uniform_real_distributionIdE10param_type1bEv:
.LFB6253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	8(%rax), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6253:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1bEv, .-_ZNKSt25uniform_real_distributionIdE10param_type1bEv
	.section	.text._ZNKSt25uniform_real_distributionIdE10param_type1aEv,"axG",@progbits,_ZNKSt25uniform_real_distributionIdE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.type	_ZNKSt25uniform_real_distributionIdE10param_type1aEv, @function
_ZNKSt25uniform_real_distributionIdE10param_type1aEv:
.LFB6254:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6254:
	.size	_ZNKSt25uniform_real_distributionIdE10param_type1aEv, .-_ZNKSt25uniform_real_distributionIdE10param_type1aEv
	.section	.text._ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB6317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6317:
	.size	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_:
.LFB6318:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKdEOT_RNSt16remove_referenceIS2_E4typeE
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	vmovsd	-32(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6318:
	.size	_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIdE9constructIdJRKdEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
.LFB6320:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6320:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.section	.text._ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc:
.LFB6322:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L574
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L574:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L575
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L576
.L575:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	jmp	.L577
.L576:
	movq	-32(%rbp), %rax
.L577:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L579
	call	__stack_chk_fail@PLT
.L579:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6322:
	.size	_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB6323:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6323:
	.size	_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPdSt6vectorIdSaIdEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB6324:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L583
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L585
.L583:
	movl	$0, %eax
.L585:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6324:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_, @function
_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_:
.LFB6325:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6325:
	.size	_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_, .-_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
.LFB6326:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6326:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZNKSt24uniform_int_distributionIiE10param_type1bEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIiE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	.type	_ZNKSt24uniform_int_distributionIiE10param_type1bEv, @function
_ZNKSt24uniform_int_distributionIiE10param_type1bEv:
.LFB6328:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6328:
	.size	_ZNKSt24uniform_int_distributionIiE10param_type1bEv, .-_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	.section	.text._ZNKSt24uniform_int_distributionIiE10param_type1aEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIiE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	.type	_ZNKSt24uniform_int_distributionIiE10param_type1aEv, @function
_ZNKSt24uniform_int_distributionIiE10param_type1aEv:
.LFB6329:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6329:
	.size	_ZNKSt24uniform_int_distributionIiE10param_type1aEv, .-_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	.section	.text._ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_,"axG",@progbits,_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_,comdat
	.weak	_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_
	.type	_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_, @function
_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_:
.LFB6330:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movl	-28(%rbp), %edx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jnb	.L595
	movl	-28(%rbp), %eax
	negl	%eax
	movl	$0, %edx
	divl	-28(%rbp)
	movl	%edx, -12(%rbp)
	jmp	.L596
.L597:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movl	-28(%rbp), %edx
	imulq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, -16(%rbp)
.L596:
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jb	.L597
.L595:
	movq	-8(%rbp), %rax
	shrq	$32, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6330:
	.size	_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_, .-_ZNSt24uniform_int_distributionIiE5_S_ndImSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEjEET1_RT0_S4_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB6331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	cmpq	$623, %rax
	jbe	.L600
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
.L600:
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	%rdx, 4992(%rcx)
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$18, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6331:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_:
.LFB6332:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6332:
	.size	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_:
.LFB6334:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6334:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB6336:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6336:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIfEC2Ev:
.LFB6339:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6339:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIfEC1Ev,_ZN9__gnu_cxx13new_allocatorIfEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIfED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIfED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIfED2Ev:
.LFB6342:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6342:
	.size	_ZN9__gnu_cxx13new_allocatorIfED2Ev, .-_ZN9__gnu_cxx13new_allocatorIfED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIfED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIfED1Ev,_ZN9__gnu_cxx13new_allocatorIfED2Ev
	.section	.text._ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_:
.LFB6344:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIfED1Ev
	testb	%bl, %bl
	je	.L610
	leaq	.LC37(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L610:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L612
	call	__stack_chk_fail@PLT
.L612:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6344:
	.size	_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_:
.LFB6346:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6346
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB114:
	call	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
.LEHE114:
	jmp	.L616
.L615:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB115:
	call	_Unwind_Resume@PLT
.LEHE115:
.L616:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6346:
	.section	.gcc_except_table
.LLSDA6346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6346-.LLSDACSB6346
.LLSDACSB6346:
	.uleb128 .LEHB114-.LFB6346
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L615-.LFB6346
	.uleb128 0
	.uleb128 .LEHB115-.LFB6346
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE6346:
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_, .-_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEEC1EmRKS0_,_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_
	.section	.text._ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf,"axG",@progbits,_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.type	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf, @function
_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf:
.LFB6348:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6348:
	.size	_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf, .-_ZNSt6vectorIfSaIfEE18_M_fill_initializeEmRKf
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_:
.LFB6349:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L620
	call	__stack_chk_fail@PLT
.L620:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6349:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIfEfE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv:
.LFB6350:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6350:
	.size	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIfSaIfEE5beginEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE5beginEv
	.type	_ZNKSt6vectorIfSaIfEE5beginEv, @function
_ZNKSt6vectorIfSaIfEE5beginEv:
.LFB6351:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L625
	call	__stack_chk_fail@PLT
.L625:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6351:
	.size	_ZNKSt6vectorIfSaIfEE5beginEv, .-_ZNKSt6vectorIfSaIfEE5beginEv
	.section	.text._ZNKSt6vectorIfSaIfEE3endEv,"axG",@progbits,_ZNKSt6vectorIfSaIfEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIfSaIfEE3endEv
	.type	_ZNKSt6vectorIfSaIfEE3endEv, @function
_ZNKSt6vectorIfSaIfEE3endEv:
.LFB6352:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L628
	call	__stack_chk_fail@PLT
.L628:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6352:
	.size	_ZNKSt6vectorIfSaIfEE3endEv, .-_ZNKSt6vectorIfSaIfEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E:
.LFB6353:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6353:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPffET0_T_SA_S9_RSaIT1_E
	.section	.text._Z6TwoSumIfEvT_S0_RS0_S1_,"axG",@progbits,_Z6TwoSumIfEvT_S0_RS0_S1_,comdat
	.weak	_Z6TwoSumIfEvT_S0_RS0_S1_
	.type	_Z6TwoSumIfEvT_S0_RS0_S1_, @function
_Z6TwoSumIfEvT_S0_RS0_S1_:
.LFB6354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovss	%xmm0, -20(%rbp)
	vmovss	%xmm1, -24(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, -4(%rbp)
	vmovss	-20(%rbp), %xmm0
	vaddss	-24(%rbp), %xmm0, %xmm0
	movq	-32(%rbp), %rax
	vmovss	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	vmovss	(%rax), %xmm0
	vsubss	-20(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rbp)
	movq	-32(%rbp), %rax
	vmovss	(%rax), %xmm0
	vsubss	-4(%rbp), %xmm0, %xmm0
	vmovss	-20(%rbp), %xmm1
	vsubss	%xmm0, %xmm1, %xmm1
	vmovss	-24(%rbp), %xmm0
	vsubss	-4(%rbp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	movq	-40(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6354:
	.size	_Z6TwoSumIfEvT_S0_RS0_S1_, .-_Z6TwoSumIfEvT_S0_RS0_S1_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_:
.LFB6356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6356:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC2ERKS1_
	.section	.text._ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB6358:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6358:
	.size	_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPfSt6vectorIfSaIfEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl:
.LFB6359:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L637
	call	__stack_chk_fail@PLT
.L637:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6359:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEplEl
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv:
.LFB6360:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	4(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6360:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEppEv
	.section	.text._ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB6361:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6361:
	.size	_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPfSt6vectorIfSaIfEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_:
.LFB6362:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	movq	%rax, %rbx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6362:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEES6_EvT_T0_
	.section	.text._ZNSaIfEC2ERKS_,"axG",@progbits,_ZNSaIfEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIfEC2ERKS_
	.type	_ZNSaIfEC2ERKS_, @function
_ZNSaIfEC2ERKS_:
.LFB6366:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6366:
	.size	_ZNSaIfEC2ERKS_, .-_ZNSaIfEC2ERKS_
	.weak	_ZNSaIfEC1ERKS_
	.set	_ZNSaIfEC1ERKS_,_ZNSaIfEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.type	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, @function
_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm:
.LFB6371:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L646
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
.L646:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6371:
	.size	_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm, .-_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm
	.section	.text._ZSt8_DestroyIPfEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPfEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPfEvT_S1_
	.type	_ZSt8_DestroyIPfEvT_S1_, @function
_ZSt8_DestroyIPfEvT_S1_:
.LFB6372:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6372:
	.size	_ZSt8_DestroyIPfEvT_S1_, .-_ZSt8_DestroyIPfEvT_S1_
	.section	.text._ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv:
.LFB6373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIfSaIfEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6373:
	.size	_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv, .-_ZNKSt12_Vector_baseIfSaIfEE13get_allocatorEv
	.section	.text._ZNSt6vectorIfSaIfEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIfSaIfEEC2ERKS0_
	.type	_ZNSt6vectorIfSaIfEEC2ERKS0_, @function
_ZNSt6vectorIfSaIfEEC2ERKS0_:
.LFB6375:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6375:
	.size	_ZNSt6vectorIfSaIfEEC2ERKS0_, .-_ZNSt6vectorIfSaIfEEC2ERKS0_
	.weak	_ZNSt6vectorIfSaIfEEC1ERKS0_
	.set	_ZNSt6vectorIfSaIfEEC1ERKS0_,_ZNSt6vectorIfSaIfEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_
	.type	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_, @function
_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB6377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L652
	call	__stack_chk_fail@PLT
.L652:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6377:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_, .-_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_swap_dataERS2_
	.section	.text._ZSt15__alloc_on_moveISaIfEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIfEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaIfEEvRT_S2_, @function
_ZSt15__alloc_on_moveISaIfEEvRT_S2_:
.LFB6378:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6378:
	.size	_ZSt15__alloc_on_moveISaIfEEvRT_S2_, .-_ZSt15__alloc_on_moveISaIfEEvRT_S2_
	.section	.text._ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd,"axG",@progbits,_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd
	.type	_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd, @function
_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd:
.LFB6379:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6379:
	.size	_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd, .-_ZNSt6vectorIdSaIdEE18_M_fill_initializeEmRKd
	.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB6380:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6380:
	.size	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, @function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl:
.LFB6381:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-48(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L659
	call	__stack_chk_fail@PLT
.L659:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6381:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEplEl
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv:
.LFB6382:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6382:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEv
	.section	.text._ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.type	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_, @function
_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_:
.LFB6383:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movq	%rax, %rbx
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6383:
	.size	_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_, .-_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEES6_EvT_T0_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv:
.LFB6388:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6388:
	.size	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS0_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS0_, @function
_ZNSt6vectorIdSaIdEEC2ERKS0_:
.LFB6390:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6390:
	.size	_ZNSt6vectorIdSaIdEEC2ERKS0_, .-_ZNSt6vectorIdSaIdEEC2ERKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS0_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS0_,_ZNSt6vectorIdSaIdEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB6392:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L667
	call	__stack_chk_fail@PLT
.L667:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6392:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	.section	.text._ZSt15__alloc_on_moveISaIdEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIdEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaIdEEvRT_S2_, @function
_ZSt15__alloc_on_moveISaIdEEvRT_S2_:
.LFB6393:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6393:
	.size	_ZSt15__alloc_on_moveISaIdEEvRT_S2_, .-_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB6394:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6394:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB6396:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6396:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB6399:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6399:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB6401:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6401:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPdmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
.LFB6402:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6402:
	.size	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB6403:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6403:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB6404:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6404:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB6405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	imulq	$624, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6405:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB6406:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	$53, -56(%rbp)
	fldt	.LC40(%rip)
	fstpt	-32(%rbp)
	movq	$32, -48(%rbp)
	movq	$2, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	vmovsd	.LC9(%rip), %xmm0
	vmovsd	%xmm0, -72(%rbp)
	movq	$2, -64(%rbp)
	jmp	.L682
.L683:
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rbx
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE3minEv
	movq	%rax, %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	vcvtusi2sdq	%rax, %xmm0, %xmm0
	vmulsd	-72(%rbp), %xmm0, %xmm0
	vmovsd	-80(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	fldl	-72(%rbp)
	fldt	.LC40(%rip)
	fmulp	%st, %st(1)
	fstpl	-72(%rbp)
	decq	-64(%rbp)
.L682:
	cmpq	$0, -64(%rbp)
	jne	.L683
	vmovsd	-80(%rbp), %xmm0
	vdivsd	-72(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -88(%rbp)
	vmovsd	-88(%rbp), %xmm0
	vmovsd	.LC9(%rip), %xmm1
	vcomisd	%xmm1, %xmm0
	setnb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	je	.L684
	vmovsd	.LC41(%rip), %xmm0
	vmovsd	%xmm0, -88(%rbp)
.L684:
	vmovsd	-88(%rbp), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6406:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text._ZNKSt6vectorIdSaIdEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.type	_ZNKSt6vectorIdSaIdEE8max_sizeEv, @function
_ZNKSt6vectorIdSaIdEE8max_sizeEv:
.LFB6451:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6451:
	.size	_ZNKSt6vectorIdSaIdEE8max_sizeEv, .-_ZNKSt6vectorIdSaIdEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB6452:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6452:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE:
.LFB6453:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6453:
	.size	_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE, .-_ZNSt6vectorIdSaIdEE14_S_do_relocateEPdS2_S2_RS0_St17integral_constantIbLb1EE
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB6455:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	$-2147483648, -40(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	$0, -56(%rbp)
	jmp	.L693
.L696:
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rax
	leaq	397(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	-8(%rbp), %rax
	shrq	%rax
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L694
	movl	$2567483615, %eax
	jmp	.L695
.L694:
	movl	$0, %eax
.L695:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	incq	-56(%rbp)
.L693:
	cmpq	$226, -56(%rbp)
	jbe	.L696
	movq	$227, -48(%rbp)
	jmp	.L697
.L700:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	-227(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rdx
	movq	-16(%rbp), %rax
	shrq	%rax
	xorq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L698
	movl	$2567483615, %eax
	jmp	.L699
.L698:
	movl	$0, %eax
.L699:
	xorq	%rdx, %rax
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	incq	-48(%rbp)
.L697:
	cmpq	$622, -48(%rbp)
	jbe	.L700
	movq	-72(%rbp), %rax
	movq	4984(%rax), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$2147483647, %eax
	orq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-72(%rbp), %rax
	movq	3168(%rax), %rdx
	movq	-24(%rbp), %rax
	shrq	%rax
	xorq	%rax, %rdx
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L701
	movl	$2567483615, %eax
	jmp	.L702
.L701:
	movl	$0, %eax
.L702:
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4984(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4992(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6455:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
.LFB6456:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6456:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.section	.text._ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_:
.LFB6457:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$2305843009213693951, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L707
	call	__stack_chk_fail@PLT
.L707:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6457:
	.size	_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIfSaIfEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_:
.LFB6459:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6459:
	.size	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm:
.LFB6461:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$2, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6461:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIfSaIfEE17_M_create_storageEm
	.section	.text._ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E:
.LFB6462:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6462:
	.size	_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E
	.section	.text._ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_:
.LFB6463:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIfEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6463:
	.size	_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIfEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_:
.LFB6465:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6465:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_:
.LFB6467:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6467:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv:
.LFB6469:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6469:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEE4baseEv
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv:
.LFB6470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6470:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEdeEv
	.section	.text._ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_:
.LFB6472:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6472:
	.size	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB6471:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	vmovss	(%rax), %xmm0
	vmovss	%xmm0, -12(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	vmovss	(%rax), %xmm0
	movq	-24(%rbp), %rax
	vmovss	%xmm0, (%rax)
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRfEONSt16remove_referenceIT_E4typeEOS2_
	vmovss	(%rax), %xmm0
	movq	-32(%rbp), %rax
	vmovss	%xmm0, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L724
	call	__stack_chk_fail@PLT
.L724:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6471:
	.size	_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIfENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_:
.LFB6474:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6474:
	.size	_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIfEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIfEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIfEC2ERKS1_
	.section	.text._ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.type	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm, @function
_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm:
.LFB6476:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6476:
	.size	_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm, .-_ZNSt16allocator_traitsISaIfEE10deallocateERS0_Pfm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_:
.LFB6477:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6477:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPfEEvT_S3_
	.section	.text._ZNSt12_Vector_baseIfSaIfEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_, @function
_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_:
.LFB6479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIfSaIfEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6479:
	.size	_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_, .-_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIfSaIfEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIfSaIfEEC1ERKS0_,_ZNSt12_Vector_baseIfSaIfEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev:
.LFB6482:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6482:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_
	.type	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_, @function
_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB6484:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6484:
	.size	_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_, .-_ZNSt12_Vector_baseIfSaIfEE17_Vector_impl_data12_M_copy_dataERKS2_
	.section	.text._ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB6485:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6485:
	.size	_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaIfEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E,"axG",@progbits,_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E,comdat
	.weak	_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E
	.type	_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, @function
_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E:
.LFB6486:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6486:
	.size	_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E, .-_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
.LFB6487:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6487:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.section	.text._ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_:
.LFB6489:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6489:
	.size	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,"axG",@progbits,_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_,comdat
	.weak	_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.type	_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, @function
_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_:
.LFB6488:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_
	vmovsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRdEONSt16remove_referenceIT_E4typeEOS2_
	vmovsd	(%rax), %xmm0
	movq	-32(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L740
	call	__stack_chk_fail@PLT
.L740:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6488:
	.size	_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_, .-_ZSt4swapIdENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SE_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_:
.LFB6491:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6491:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB6493:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6493:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	.section	.text._ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB6494:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6494:
	.size	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB6495:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6495:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB6496:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6496:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZSt11__addressofIdEPT_RS0_,"axG",@progbits,_ZSt11__addressofIdEPT_RS0_,comdat
	.weak	_ZSt11__addressofIdEPT_RS0_
	.type	_ZSt11__addressofIdEPT_RS0_, @function
_ZSt11__addressofIdEPT_RS0_:
.LFB6498:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6498:
	.size	_ZSt11__addressofIdEPT_RS0_, .-_ZSt11__addressofIdEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
.LFB6497:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L752
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIdEPT_RS0_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10_ConstructIdJEEvPT_DpOT0_
	addq	$8, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	movq	%rax, -24(%rbp)
.L752:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6497:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB6525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6525:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB6524:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L757
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L758
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L758:
	call	_ZSt17__throw_bad_allocv@PLT
.L757:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6524:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.type	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_, @function
_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_:
.LFB6526:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %rdi
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6526:
	.size	_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_, .-_ZSt12__relocate_aIPdS0_SaIdEET0_T_S3_S2_RT1_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB6527:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6527:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_:
.LFB6528:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6528:
	.size	_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIfEE8max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm:
.LFB6529:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L767
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	jmp	.L769
.L767:
	movl	$0, %eax
.L769:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6529:
	.size	_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm, .-_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm
	.section	.text._ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_:
.LFB6530:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6530:
	.size	_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPfmfET_S1_T0_RKT1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_:
.LFB6531:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6531:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfEET0_T_SC_SB_
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.type	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm, @function
_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm:
.LFB6532:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6532:
	.size	_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm, .-_ZN9__gnu_cxx13new_allocatorIfE10deallocateEPfm
	.section	.text._ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_:
.LFB6533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6533:
	.size	_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt20uninitialized_fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZSt10_ConstructIdJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIdJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIdJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIdJEEvPT_DpOT0_, @function
_ZSt10_ConstructIdJEEvPT_DpOT0_:
.LFB6534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6534:
	.size	_ZSt10_ConstructIdJEEvPT_DpOT0_, .-_ZSt10_ConstructIdJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
.LFB6535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt17__size_to_integerm
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6535:
	.size	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB6548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6548:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,"axG",@progbits,_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E,comdat
	.weak	_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.type	_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, @function
_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E:
.LFB6549:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jle	.L784
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L784:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6549:
	.size	_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E, .-_ZSt14__relocate_a_1IddENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS2_E4typeES4_S4_S4_RSaIT0_E
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_:
.LFB6550:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6550:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
.LFB6551:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6551:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv:
.LFB6553:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6553:
	.size	_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIfE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIfEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIfEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIfEE8allocateERS0_m:
.LFB6554:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6554:
	.size	_ZNSt16allocator_traitsISaIfEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIfEE8allocateERS0_m
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_:
.LFB6555:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6555:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPfmfEET_S3_T0_RKT1_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_:
.LFB6556:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6556:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET0_T_SA_S9_
	.section	.text._ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_,"axG",@progbits,_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_,comdat
	.weak	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_
	.type	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_, @function
_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_:
.LFB6557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6557:
	.size	_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_, .-_ZNSt22__uninitialized_fill_nILb1EE15__uninit_fill_nIPdmdEET_S3_T0_RKT1_
	.section	.text._ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB6558:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6558:
	.size	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB6559:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L803
	movq	-8(%rbp), %rax
	jmp	.L804
.L803:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__fill_aIPddEvT_S1_RKT0_
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L804:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6559:
	.size	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB6562:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6562:
	.size	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB6563:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6563:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB6564:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6564:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv:
.LFB6565:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6565:
	.size	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv:
.LFB6566:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIfE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L814
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L815
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L815:
	call	_ZSt17__throw_bad_allocv@PLT
.L814:
	movq	-16(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6566:
	.size	_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIfE8allocateEmPKv
	.section	.text._ZSt6fill_nIPfmfET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPfmfET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPfmfET_S1_T0_RKT1_, @function
_ZSt6fill_nIPfmfET_S1_T0_RKT1_:
.LFB6567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt17__size_to_integerm
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6567:
	.size	_ZSt6fill_nIPfmfET_S1_T0_RKT1_, .-_ZSt6fill_nIPfmfET_S1_T0_RKT1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_:
.LFB6568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6568:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_:
.LFB6569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPfET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPfET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6569:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEEEPfET1_T0_SA_S9_
	.section	.text._ZSt8__fill_aIPddEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPddEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPddEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPddEvT_S1_RKT0_, @function
_ZSt8__fill_aIPddEvT_S1_RKT0_:
.LFB6572:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6572:
	.size	_ZSt8__fill_aIPddEvT_S1_RKT0_, .-_ZSt8__fill_aIPddEvT_S1_RKT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
.LFB6573:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6573:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB6574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6574:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB6575:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6575:
	.size	_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPfENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB6576:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L831
	movq	-8(%rbp), %rax
	jmp	.L832
.L831:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__fill_aIPffEvT_S1_RKT0_
	movq	-16(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L832:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6576:
	.size	_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPfmfET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB6577:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6577:
	.size	_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKfSt6vectorIfSaIfEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPfET_S1_,"axG",@progbits,_ZSt12__niter_baseIPfET_S1_,comdat
	.weak	_ZSt12__niter_baseIPfET_S1_
	.type	_ZSt12__niter_baseIPfET_S1_, @function
_ZSt12__niter_baseIPfET_S1_:
.LFB6578:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6578:
	.size	_ZSt12__niter_baseIPfET_S1_, .-_ZSt12__niter_baseIPfET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_:
.LFB6579:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6579:
	.size	_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKfPfET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPfET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPfET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPfET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPfET_RKS1_S1_, @function
_ZSt12__niter_wrapIPfET_RKS1_S1_:
.LFB6580:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6580:
	.size	_ZSt12__niter_wrapIPfET_RKS1_S1_, .-_ZSt12__niter_wrapIPfET_RKS1_S1_
	.section	.text._ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB6581:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	jmp	.L842
.L843:
	movq	-24(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	addq	$8, -24(%rbp)
.L842:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L843
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6581:
	.size	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB6582:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L845
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L845:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6582:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.section	.text._ZSt8__fill_aIPffEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPffEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPffEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPffEvT_S1_RKT0_, @function
_ZSt8__fill_aIPffEvT_S1_RKT0_:
.LFB6583:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6583:
	.size	_ZSt8__fill_aIPffEvT_S1_RKT0_, .-_ZSt8__fill_aIPffEvT_S1_RKT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv:
.LFB6584:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6584:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKfSt6vectorIfSaIfEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_:
.LFB6585:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6585:
	.size	_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKfPfET1_T0_S4_S3_
	.section	.text._ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB6586:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovss	(%rax), %xmm0
	vmovss	%xmm0, -4(%rbp)
	jmp	.L853
.L854:
	movq	-24(%rbp), %rax
	vmovss	-4(%rbp), %xmm0
	vmovss	%xmm0, (%rax)
	addq	$4, -24(%rbp)
.L853:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L854
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6586:
	.size	_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPffEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_:
.LFB6587:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L856
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L856:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6587:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIfEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB6588:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L860
	cmpl	$65535, -8(%rbp)
	jne	.L860
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L860:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6588:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z14vec_gen_randomiii, @function
_GLOBAL__sub_I__Z14vec_gen_randomiii:
.LFB6589:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6589:
	.size	_GLOBAL__sub_I__Z14vec_gen_randomiii, .-_GLOBAL__sub_I__Z14vec_gen_randomiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14vec_gen_randomiii
	.section	.rodata
	.align 8
.LC8:
	.long	0
	.long	0
	.align 8
.LC9:
	.long	0
	.long	1072693248
	.align 8
.LC10:
	.long	0
	.long	1079574528
	.align 8
.LC11:
	.long	-17155601
	.long	1072049730
	.align 8
.LC12:
	.long	0
	.long	1078362112
	.align 16
.LC13:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC14:
	.long	0
	.long	940572672
	.align 8
.LC15:
	.long	-536870912
	.long	1206910975
	.align 16
.LC17:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.align 4
.LC18:
	.long	8388608
	.align 4
.LC19:
	.long	2139095039
	.align 8
.LC26:
	.long	0
	.long	1074790400
	.align 8
.LC27:
	.long	0
	.long	1073741824
	.align 4
.LC29:
	.long	1325400064
	.align 4
.LC30:
	.long	1065353216
	.align 8
.LC31:
	.long	-4194304
	.long	1105199103
	.align 8
.LC39:
	.long	0
	.long	1071644672
	.align 16
.LC40:
	.long	0
	.long	-2147483648
	.long	16415
	.long	0
	.align 8
.LC41:
	.long	-1
	.long	1072693247
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
