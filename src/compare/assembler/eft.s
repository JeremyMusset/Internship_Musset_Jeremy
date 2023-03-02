	.file	"eft.cc"
	.text
	.section	.text._Z6TwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z6TwoSumIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z6TwoSumIdEvT_S0_RS0_S1_
	.type	_Z6TwoSumIdEvT_S0_RS0_S1_, @function
_Z6TwoSumIdEvT_S0_RS0_S1_:
.LFB4552:
	.cfi_startproc
	endbr64
	movapd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm3
	movsd	%xmm2, (%rdi)
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm2
	subsd	%xmm3, %xmm1
	subsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsi)
	ret
	.cfi_endproc
.LFE4552:
	.size	_Z6TwoSumIdEvT_S0_RS0_S1_, .-_Z6TwoSumIdEvT_S0_RS0_S1_
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.p2align 4
	.weak	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj:
.LFB4553:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4553
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movl	%esi, 8(%rsp)
	movq	(%rdi), %rsi
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	movq	8(%rdi), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, 24(%rsp)
	je	.L21
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L39
	movq	%rdi, %rbx
	movq	%rdx, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	(%rbx), %rsi
	movq	%rax, %r15
	movq	8(%rbx), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L4:
	cmpq	%rax, %rsi
	je	.L7
	movq	%r15, %rdi
	call	memmove@PLT
.L7:
	subl	$1, %ebp
	movl	%ebp, 20(%rsp)
	je	.L8
	movl	8(%rsp), %eax
	movl	$1, %r14d
	leaq	48(%rsp), %r12
	subl	$2, %eax
	leaq	8(%r15,%rax,8), %r13
	.p2align 4,,10
	.p2align 3
.L9:
	cmpl	$1, 8(%rsp)
	movq	%r15, %rbx
	leaq	40(%rsp), %rbp
	jbe	.L11
	.p2align 4,,10
	.p2align 3
.L10:
	movsd	8(%rbx), %xmm0
	movsd	(%rbx), %xmm1
	movq	%r12, %rsi
	movq	%rbp, %rdi
	movq	$0x000000000, 40(%rsp)
	movq	$0x000000000, 48(%rsp)
.LEHB1:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_
.LEHE1:
	movsd	48(%rsp), %xmm0
	addq	$8, %rbx
	movhpd	40(%rsp), %xmm0
	movups	%xmm0, -8(%rbx)
	cmpq	%r13, %rbx
	jne	.L10
.L11:
	addl	$1, %r14d
	cmpl	20(%rsp), %r14d
	jbe	.L9
.L8:
	movl	8(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L23
	cmpl	$1, %ecx
	je	.L24
	shrl	%ecx
	movq	%r15, %rax
	pxor	%xmm0, %xmm0
	movl	%ecx, %edx
	salq	$4, %rdx
	addq	%r15, %rdx
	.p2align 4,,10
	.p2align 3
.L14:
	movsd	(%rax), %xmm1
	addq	$16, %rax
	addsd	%xmm1, %xmm0
	movsd	-8(%rax), %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rdx, %rax
	jne	.L14
	movl	8(%rsp), %ecx
	movl	%ecx, %eax
	andl	$-2, %eax
	andl	$1, %ecx
	je	.L12
.L13:
	addsd	(%r15,%rax,8), %xmm0
.L12:
	testq	%r15, %r15
	je	.L3
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	movsd	%xmm0, 8(%rsp)
	call	_ZdlPvm@PLT
	movsd	8(%rsp), %xmm0
.L3:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L40
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L21:
	.cfi_restore_state
	xorl	%r15d, %r15d
	jmp	.L4
.L39:
	testq	%rdx, %rdx
	jns	.L6
.LEHB2:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L23:
	pxor	%xmm0, %xmm0
	jmp	.L12
.L24:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	jmp	.L13
.L6:
	call	_ZSt17__throw_bad_allocv@PLT
.L40:
	call	__stack_chk_fail@PLT
.L25:
	endbr64
	movq	%rax, %rbp
.L18:
	testq	%r15, %r15
	je	.L19
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
.L19:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE4553:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"aG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
.LLSDA4553:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4553-.LLSDACSB4553
.LLSDACSB4553:
	.uleb128 .LEHB0-.LFB4553
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4553
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L25-.LFB4553
	.uleb128 0
	.uleb128 .LEHB2-.LFB4553
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4553:
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.section	.rodata._Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.p2align 4
	.weak	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.type	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, @function
_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_:
.LFB4554:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r15, %rax
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	shrq	$60, %rax
	jne	.L83
	movq	%rdi, 8(%rsp)
	leaq	0(,%r15,8), %r12
	testq	%r15, %r15
	je	.L41
	movq	%r12, %rdi
	movq	%rdx, %r14
	movq	%rcx, %r13
	call	_Znwm@PLT
	cmpq	$1, %r15
	movq	8(%rsp), %r8
	movq	%rax, %rbp
	leaq	(%rax,%r12), %rax
	movq	$0x000000000, 0(%rbp)
	je	.L44
	leaq	8(%rbp), %rdi
	movq	%r15, %rbx
	cmpq	%rax, %rdi
	je	.L45
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	8(%rsp), %r8
.L45:
	movq	(%r8), %rax
	leal	-1(%rbx), %r9d
	movl	%ebx, %esi
	cmpl	$1, %r9d
	leaq	8(%rax), %r8
	seta	%dl
	cmpq	%r8, %rbp
	setne	%dil
	andb	%dl, %dil
	je	.L84
	movl	%ebx, %ecx
	movapd	.LC3(%rip), %xmm1
	xorl	%edx, %edx
	shrl	%ecx
	salq	$4, %rcx
	.p2align 4,,10
	.p2align 3
.L49:
	movupd	(%rax,%rdx), %xmm0
	mulpd	%xmm1, %xmm0
	movups	%xmm0, 0(%rbp,%rdx)
	addq	$16, %rdx
	cmpq	%rcx, %rdx
	jne	.L49
	movl	%ebx, %edx
	andl	$-2, %edx
	andl	$1, %ebx
	je	.L48
	movsd	.LC2(%rip), %xmm0
	mulsd	(%rax,%rdx,8), %xmm0
	movsd	%xmm0, 0(%rbp,%rdx,8)
.L48:
	movq	(%r14), %rcx
	cmpq	%r8, %rcx
	setne	%dl
	testb	%dil, %dl
	je	.L51
	leaq	8(%rbp), %rdx
	cmpq	%rdx, %rcx
	je	.L51
	movl	%esi, %r10d
	xorl	%edx, %edx
	shrl	%r10d
	salq	$4, %r10
	.p2align 4,,10
	.p2align 3
.L52:
	movupd	0(%rbp,%rdx), %xmm0
	movupd	(%rax,%rdx), %xmm2
	movapd	%xmm0, %xmm1
	subpd	%xmm2, %xmm1
	subpd	%xmm1, %xmm0
	movups	%xmm0, (%rcx,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r10
	jne	.L52
	movl	%esi, %edx
	andl	$-2, %edx
	testb	$1, %sil
	je	.L55
	movsd	0(%rbp,%rdx,8), %xmm0
	movapd	%xmm0, %xmm1
	subsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rcx,%rdx,8)
.L55:
	movq	0(%r13), %r10
	leaq	8(%rcx), %rdx
	cmpq	%rdx, %r10
	setne	%r11b
	cmpq	%r8, %r10
	setne	%dl
	testb	%dl, %r11b
	je	.L56
	testb	%dil, %dil
	je	.L56
	movl	%esi, %edi
	xorl	%edx, %edx
	shrl	%edi
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L57:
	movupd	(%rax,%rdx), %xmm0
	movupd	(%rcx,%rdx), %xmm3
	subpd	%xmm3, %xmm0
	movups	%xmm0, (%r10,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %rdi
	jne	.L57
	movl	%esi, %edx
	andl	$-2, %edx
	andl	$1, %esi
	je	.L60
	movsd	(%rax,%rdx,8), %xmm0
	subsd	(%rcx,%rdx,8), %xmm0
	movsd	%xmm0, (%r10,%rdx,8)
.L60:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rsi
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	movq	(%r8), %rax
	xorl	%edi, %edi
	xorl	%r9d, %r9d
	movl	$1, %esi
	leaq	8(%rax), %r8
.L62:
	movsd	.LC2(%rip), %xmm1
	leal	1(%r9), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L47:
	movsd	(%rax,%rdx,8), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%rbp,%rdx,8)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	.L47
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L56:
	leal	1(%r9), %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L59:
	movsd	(%rax,%rdx,8), %xmm0
	subsd	(%rcx,%rdx,8), %xmm0
	movsd	%xmm0, (%r10,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L59
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L51:
	leal	1(%r9), %r10d
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L54:
	movsd	0(%rbp,%rdx,8), %xmm0
	movapd	%xmm0, %xmm1
	subsd	(%rax,%rdx,8), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %r10
	jne	.L54
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L41:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L84:
	.cfi_restore_state
	movl	%edx, %edi
	jmp	.L62
.L83:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4554:
	.size	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .-_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.section	.text._Z10FastTwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10FastTwoSumIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z10FastTwoSumIdEvT_S0_RS0_S1_
	.type	_Z10FastTwoSumIdEvT_S0_RS0_S1_, @function
_Z10FastTwoSumIdEvT_S0_RS0_S1_:
.LFB4555:
	.cfi_startproc
	endbr64
	movapd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	%xmm2, (%rdi)
	subsd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm2, (%rsi)
	ret
	.cfi_endproc
.LFE4555:
	.size	_Z10FastTwoSumIdEvT_S0_RS0_S1_, .-_Z10FastTwoSumIdEvT_S0_RS0_S1_
	.section	.text._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"axG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.p2align 4
	.weak	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.type	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_, @function
_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_:
.LFB4556:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4556
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movslq	%edx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%rcx, 8(%rsp)
	movq	%r8, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	movq	%r12, %rax
	shrq	$60, %rax
	jne	.L221
	pxor	%xmm0, %xmm0
	movq	%rdi, %r14
	movq	%rsi, %r13
	movq	%r12, %rbp
	movaps	%xmm0, 32(%rsp)
	leaq	0(,%r12,8), %rbx
	movq	$0, 48(%rsp)
	testq	%r12, %r12
	je	.L88
	movq	%rbx, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	leaq	(%rax,%rbx), %r15
	movq	%rax, 32(%rsp)
	leaq	8(%rax), %rdi
	movq	%r15, 48(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r12
	je	.L147
	cmpq	%rdi, %r15
	je	.L89
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L89:
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r15, 40(%rsp)
	movq	$0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	leaq	(%rax,%rbx), %r15
	movq	%rax, 64(%rsp)
	leaq	8(%rax), %rdi
	movq	%r15, 80(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r12
	je	.L222
	cmpq	%rdi, %r15
	je	.L90
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L90:
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r15, 72(%rsp)
	movq	$0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	(%rax,%rbx), %r15
	movq	%rax, 96(%rsp)
	leaq	8(%rax), %rdi
	movq	%r15, 112(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r12
	je	.L223
	cmpq	%rdi, %r15
	je	.L91
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L91:
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%r15, 104(%rsp)
	movq	$0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	leaq	(%rax,%rbx), %r15
	movq	%rax, 128(%rsp)
	leaq	8(%rax), %rdi
	movq	%r15, 144(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r12
	je	.L224
	cmpq	%rdi, %r15
	je	.L92
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L92:
	movq	%rbx, %rdi
	movq	%r15, 136(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	movq	%rax, %r15
	leaq	(%rax,%rbx), %rax
	movq	%rax, 24(%rsp)
	movq	$0x000000000, (%r15)
	cmpq	$1, %r12
	je	.L225
	leaq	8(%r15), %rdi
	cmpq	%rdi, 24(%rsp)
	je	.L94
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L94:
	movq	8(%rsp), %rax
	movq	0(%r13), %rcx
	movl	%ebp, %ebx
	movq	(%r14), %rsi
	movq	(%rax), %rdx
	leaq	8(%rcx), %rdi
	leal	-1(%rbp), %eax
	cmpq	%rdi, %rdx
	leaq	8(%rsi), %rdi
	setne	%r8b
	cmpq	%rdi, %rdx
	setne	%dil
	testb	%dil, %r8b
	je	.L140
	cmpl	$1, %eax
	jbe	.L140
	movl	%ebp, %edi
	xorl	%eax, %eax
	shrl	%edi
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L98:
	movupd	(%rcx,%rax), %xmm0
	movupd	(%rsi,%rax), %xmm7
	mulpd	%xmm7, %xmm0
	movups	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rdi, %rax
	jne	.L98
	movl	%ebp, %eax
	andl	$-2, %eax
	testb	$1, %bpl
	je	.L145
	movsd	(%rcx,%rax,8), %xmm0
	mulsd	(%rsi,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
.L145:
	movq	8(%r14), %rax
	pxor	%xmm0, %xmm0
	movq	$0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movq	%rax, %r12
	subq	%rsi, %r12
	je	.L151
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L226
	movq	%r12, %rdi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %rcx
	movq	8(%r14), %rax
	movq	(%r14), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L100:
	movq	%rcx, %xmm0
	addq	%rcx, %r12
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	cmpq	%rsi, %rax
	je	.L103
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L103:
	addq	%r14, %rcx
	leaq	160(%rsp), %r12
	leaq	32(%rsp), %rdx
	movl	%ebp, %esi
	movq	%rcx, 168(%rsp)
	movq	%r12, %rdi
	leaq	64(%rsp), %rcx
.LEHB9:
	call	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE9:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L104
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L104:
	movq	8(%r13), %rax
	movq	0(%r13), %rsi
	pxor	%xmm0, %xmm0
	movq	$0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movq	%rax, %r14
	subq	%rsi, %r14
	je	.L152
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L227
	movq	%r14, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	8(%r13), %rax
	movq	0(%r13), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L105:
	movq	%rcx, %xmm0
	addq	%rcx, %r14
	punpcklqdq	%xmm0, %xmm0
	movq	%r14, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	cmpq	%rsi, %rax
	je	.L108
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L108:
	addq	%r13, %rcx
	leaq	96(%rsp), %rdx
	movl	%ebp, %esi
	movq	%r12, %rdi
	movq	%rcx, 168(%rsp)
	leaq	128(%rsp), %rcx
.LEHB11:
	call	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE11:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L109
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L109:
	testl	%ebx, %ebx
	je	.L116
	movq	8(%rsp), %rax
	movq	32(%rsp), %r9
	movq	96(%rsp), %rcx
	movq	128(%rsp), %rdi
	movq	(%rax), %rsi
	movq	16(%rsp), %rax
	leaq	8(%rcx), %r10
	movq	64(%rsp), %r8
	movq	(%rax), %rdx
	leaq	8(%r9), %rax
	cmpq	%rax, %rdx
	setne	%al
	cmpq	%r10, %rdx
	setne	%r10b
	andl	%r10d, %eax
	leaq	8(%rdi), %r10
	cmpq	%r10, %rdx
	setne	%r10b
	andl	%r10d, %eax
	leaq	8(%r8), %r10
	cmpq	%r10, %rdx
	setne	%r10b
	andl	%r10d, %eax
	leaq	8(%rsi), %r10
	cmpq	%r10, %rdx
	setne	%r10b
	testb	%r10b, %al
	je	.L113
	cmpl	$1, %ebx
	je	.L113
	movl	%ebx, %r10d
	xorl	%eax, %eax
	shrl	%r10d
	salq	$4, %r10
	.p2align 4,,10
	.p2align 3
.L114:
	movupd	(%r9,%rax), %xmm4
	movupd	(%rcx,%rax), %xmm1
	movupd	(%rsi,%rax), %xmm0
	movupd	(%r8,%rax), %xmm7
	mulpd	%xmm4, %xmm1
	movupd	(%rdi,%rax), %xmm2
	mulpd	%xmm7, %xmm2
	subpd	%xmm1, %xmm0
	movupd	(%rcx,%rax), %xmm1
	mulpd	%xmm7, %xmm1
	movupd	(%rdi,%rax), %xmm7
	subpd	%xmm1, %xmm0
	movapd	%xmm4, %xmm1
	mulpd	%xmm7, %xmm1
	subpd	%xmm1, %xmm0
	subpd	%xmm0, %xmm2
	movups	%xmm2, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rax, %r10
	jne	.L114
	movl	%ebx, %eax
	andl	$-2, %eax
	andl	$1, %ebx
	je	.L116
	movsd	(%rcx,%rax,8), %xmm2
	movsd	(%r9,%rax,8), %xmm1
	movsd	(%r8,%rax,8), %xmm5
	movsd	(%rsi,%rax,8), %xmm0
	movapd	%xmm2, %xmm6
	movsd	(%rdi,%rax,8), %xmm4
	mulsd	%xmm1, %xmm6
	mulsd	%xmm5, %xmm2
	movapd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm1
	mulsd	%xmm5, %xmm3
	subsd	%xmm6, %xmm0
	subsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%rdx,%rax,8)
.L116:
	testq	%r15, %r15
	je	.L112
	movq	24(%rsp), %rsi
	movq	%r15, %rdi
	subq	%r15, %rsi
	call	_ZdlPvm@PLT
.L112:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L120
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L120:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L121
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L121:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L122
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L122:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L86
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L86:
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L228
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	movq	$0, 48(%rsp)
	movq	(%rdi), %rsi
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	movq	$0, 80(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 24(%rsp)
	movaps	%xmm0, 64(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, 128(%rsp)
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L151:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L152:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L147:
	movq	%rdi, %r15
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L222:
	movq	%rdi, %r15
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L223:
	movq	%rdi, %r15
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L224:
	movq	%rdi, %r15
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L225:
	movq	8(%rsp), %rax
	movq	(%r14), %rsi
	movl	$1, %ebx
	movq	0(%r13), %rcx
	movq	(%rax), %rdx
	xorl	%eax, %eax
.L140:
	leal	1(%rax), %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L96:
	movsd	(%rcx,%rax,8), %xmm0
	mulsd	(%rsi,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L96
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L113:
	movl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L118:
	movsd	(%rcx,%rax,8), %xmm2
	movsd	(%r9,%rax,8), %xmm1
	movsd	(%r8,%rax,8), %xmm5
	movsd	(%rsi,%rax,8), %xmm0
	movapd	%xmm2, %xmm6
	movsd	(%rdi,%rax,8), %xmm4
	mulsd	%xmm1, %xmm6
	mulsd	%xmm5, %xmm2
	movapd	%xmm4, %xmm3
	mulsd	%xmm4, %xmm1
	mulsd	%xmm5, %xmm3
	subsd	%xmm6, %xmm0
	subsd	%xmm2, %xmm0
	subsd	%xmm1, %xmm0
	subsd	%xmm0, %xmm3
	movsd	%xmm3, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L118
	jmp	.L116
.L226:
	testq	%r12, %r12
	jns	.L102
.LEHB12:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L227:
	testq	%r14, %r14
	jns	.L107
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L102:
	call	_ZSt17__throw_bad_allocv@PLT
.L107:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE12:
.L221:
	leaq	.LC1(%rip), %rdi
.LEHB13:
	call	_ZSt20__throw_length_errorPKc@PLT
.L228:
	call	__stack_chk_fail@PLT
.L154:
	endbr64
	movq	%rax, %rbp
	jmp	.L134
.L156:
	endbr64
	movq	%rax, %rbp
	jmp	.L130
.L155:
	endbr64
	movq	%rax, %rbp
	jmp	.L132
.L127:
	movq	160(%rsp), %rdi
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L126
	call	_ZdlPvm@PLT
.L126:
	movq	24(%rsp), %rsi
	subq	%r15, %rsi
	testq	%r15, %r15
	jne	.L229
.L129:
	movq	%rbx, %rbp
.L130:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L132
	call	_ZdlPvm@PLT
.L132:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L134
	call	_ZdlPvm@PLT
.L134:
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L136
	call	_ZdlPvm@PLT
.L136:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L137
	call	_ZdlPvm@PLT
.L137:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE13:
.L157:
	endbr64
	movq	%rax, %rbx
	jmp	.L126
.L159:
	endbr64
.L220:
	movq	%rax, %rbx
	jmp	.L127
.L153:
	endbr64
	movq	%rax, %rbp
	jmp	.L136
.L158:
	endbr64
	jmp	.L220
.L229:
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	jmp	.L129
	.cfi_endproc
.LFE4556:
	.section	.gcc_except_table._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"aG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
.LLSDA4556:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4556-.LLSDACSB4556
.LLSDACSB4556:
	.uleb128 .LEHB3-.LFB4556
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4556
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L153-.LFB4556
	.uleb128 0
	.uleb128 .LEHB5-.LFB4556
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L154-.LFB4556
	.uleb128 0
	.uleb128 .LEHB6-.LFB4556
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L155-.LFB4556
	.uleb128 0
	.uleb128 .LEHB7-.LFB4556
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L156-.LFB4556
	.uleb128 0
	.uleb128 .LEHB8-.LFB4556
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L157-.LFB4556
	.uleb128 0
	.uleb128 .LEHB9-.LFB4556
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L158-.LFB4556
	.uleb128 0
	.uleb128 .LEHB10-.LFB4556
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L157-.LFB4556
	.uleb128 0
	.uleb128 .LEHB11-.LFB4556
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L159-.LFB4556
	.uleb128 0
	.uleb128 .LEHB12-.LFB4556
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L157-.LFB4556
	.uleb128 0
	.uleb128 .LEHB13-.LFB4556
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE4556:
	.section	.text._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"axG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.size	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_, .-_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.section	.text._Z3FMAIdET_S0_S0_S0_,"axG",@progbits,_Z3FMAIdET_S0_S0_S0_,comdat
	.p2align 4
	.weak	_Z3FMAIdET_S0_S0_S0_
	.type	_Z3FMAIdET_S0_S0_S0_, @function
_Z3FMAIdET_S0_S0_S0_:
.LFB4557:
	.cfi_startproc
	endbr64
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	ret
	.cfi_endproc
.LFE4557:
	.size	_Z3FMAIdET_S0_S0_S0_, .-_Z3FMAIdET_S0_S0_S0_
	.section	.text._Z10TwoMultFMAIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10TwoMultFMAIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.type	_Z10TwoMultFMAIdEvT_S0_RS0_S1_, @function
_Z10TwoMultFMAIdEvT_S0_RS0_S1_:
.LFB4558:
	.cfi_startproc
	endbr64
	movapd	%xmm0, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, (%rdi)
	xorpd	.LC4(%rip), %xmm2
	call	_Z3FMAIdET_S0_S0_S0_
	movsd	%xmm0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4558:
	.size	_Z10TwoMultFMAIdEvT_S0_RS0_S1_, .-_Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_eft.cc, @function
_GLOBAL__sub_I_eft.cc:
.LFB4989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4989:
	.size	_GLOBAL__sub_I_eft.cc, .-_GLOBAL__sub_I_eft.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_eft.cc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.set	.LC2,.LC3
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.long	33554432
	.long	1101004800
	.long	33554432
	.long	1101004800
	.align 16
.LC4:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
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
