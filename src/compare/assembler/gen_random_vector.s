	.file	"gen_random_vector.cc"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1565:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1565:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.p2align 4
	.weak	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj:
.LFB5578:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rbp
	je	.L18
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L32
	movq	%rdi, %r13
	movq	%rdx, %rdi
	call	_Znwm@PLT
	movq	0(%r13), %rsi
	movq	%rax, %rdi
	movq	8(%r13), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L4:
	cmpq	%rsi, %rax
	je	.L7
	call	memmove@PLT
	movq	%rax, %rdi
.L7:
	movl	%r12d, %esi
	subl	$1, %esi
	je	.L8
	cmpl	$1, %ebx
	jbe	.L8
	leal	-1(%rbx), %eax
	movl	$1, %ecx
	leaq	(%rdi,%rax,8), %rdx
	.p2align 4,,10
	.p2align 3
.L9:
	movsd	(%rdi), %xmm1
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L10:
	movsd	8(%rax), %xmm0
	movapd	%xmm1, %xmm2
	addq	$8, %rax
	addsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm3
	movapd	%xmm1, %xmm4
	subsd	%xmm0, %xmm3
	subsd	%xmm3, %xmm4
	subsd	%xmm3, %xmm2
	subsd	%xmm4, %xmm0
	addsd	%xmm2, %xmm0
	unpcklpd	%xmm1, %xmm0
	movups	%xmm0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L10
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jbe	.L9
.L11:
	movl	%ebx, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	%edx
	salq	$4, %rdx
	addq	%rdi, %rdx
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
	movl	%ebx, %eax
	andl	$-2, %eax
	andl	$1, %ebx
	je	.L12
.L13:
	addsd	(%rdi,%rax,8), %xmm0
.L12:
	testq	%rdi, %rdi
	je	.L3
	movq	%rbp, %rsi
	movsd	%xmm0, 8(%rsp)
	call	_ZdlPvm@PLT
	movsd	8(%rsp), %xmm0
.L3:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L4
.L32:
	testq	%rdx, %rdx
	jns	.L6
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L8:
	pxor	%xmm0, %xmm0
	testl	%ebx, %ebx
	je	.L12
	xorl	%eax, %eax
	cmpl	$1, %ebx
	je	.L13
	jmp	.L11
.L6:
	call	_ZSt17__throw_bad_allocv@PLT
	.cfi_endproc
.LFE5578:
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.section	.rodata._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB5594:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5594
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
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movl	%esi, 52(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	call	log@PLT
	movsd	.LC4(%rip), %xmm2
	divsd	.LC1(%rip), %xmm0
	movsd	.LC3(%rip), %xmm3
	movsd	%xmm0, 32(%rsp)
	divsd	.LC2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.L34
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm7
	andnpd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm7, %xmm3
	addsd	%xmm3, %xmm1
	orpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
.L34:
	movl	52(%rsp), %r13d
	addsd	.LC5(%rip), %xmm0
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%r13, %xmm7
	movq	%xmm0, %r15
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm7, 40(%rsp)
	call	round@PLT
	movq	$0, 16(%r12)
	movsd	%xmm0, 8(%rsp)
	pxor	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	testq	%r13, %r13
	je	.L37
	salq	$3, %r13
	movq	%r13, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	movq	%rax, %xmm0
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	call	memset@PLT
.L103:
	movsd	8(%rsp), %xmm7
	comisd	.LC7(%rip), %xmm7
	movq	%rbx, 8(%r12)
	jnb	.L38
	cvttsd2siq	%xmm7, %rax
.L39:
	movq	%rax, %rdi
	shrq	$60, %rdi
	jne	.L147
	leaq	0(,%rax,8), %r14
	testq	%rax, %rax
	je	.L107
	movq	%r14, %rdi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 104(%rsp)
	cmpq	%r13, %rax
	je	.L41
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L41:
	movsd	8(%rsp), %xmm4
	pxor	%xmm5, %xmm5
	comisd	%xmm5, %xmm4
	jbe	.L139
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L44:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	.LC9(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	32(%rsp), %xmm0
	call	round@PLT
	movsd	8(%rsp), %xmm5
	movsd	%xmm0, 0(%r13,%rbx,8)
	leal	1(%rbp), %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	movq	%rbx, %rbp
	comisd	%xmm0, %xmm5
	ja	.L44
	movsd	.LC6(%rip), %xmm0
	mulsd	32(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	movsd	8(%rsp), %xmm0
	subsd	.LC5(%rip), %xmm0
	comisd	.LC7(%rip), %xmm0
	jnb	.L104
	cvttsd2siq	%xmm0, %rax
.L105:
	movsd	.LC10(%rip), %xmm5
	movsd	.LC11(%rip), %xmm6
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movq	$0x000000000, 0(%r13,%rax,8)
	movsd	%xmm5, 16(%rsp)
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L51:
	call	rand@PLT
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movl	%eax, %ebp
	cvttsd2sil	0(%r13,%rbx,8), %eax
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movq	(%r12), %rax
	movsd	8(%rsp), %xmm7
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	24(%rsp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax,%rbx,8)
	leal	1(%r14), %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	movq	%rbx, %r14
	comisd	%xmm0, %xmm7
	ja	.L51
.L50:
	movsd	40(%rsp), %xmm3
	subsd	8(%rsp), %xmm3
	comisd	.LC7(%rip), %xmm3
	movq	%xmm3, %rbx
	jnb	.L54
	cvttsd2siq	%xmm3, %rax
.L55:
	movq	%rax, %rdi
	shrq	$60, %rdi
	jne	.L148
	testq	%rax, %rax
	je	.L57
	leaq	0(,%rax,8), %r14
	movq	%r14, %rdi
	movq	%r14, 96(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.L61
	movq	96(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L61:
	movsd	32(%rsp), %xmm3
	movq	%rbx, %xmm2
	movq	%rbx, %xmm5
	subsd	.LC5(%rip), %xmm2
	comisd	.LC5(%rip), %xmm5
	movapd	%xmm3, %xmm1
	movsd	%xmm3, 0(%rbp)
	divsd	%xmm2, %xmm1
	jbe	.L60
	movapd	%xmm3, %xmm0
	movl	$2, %eax
	movl	$2, %edx
	movsd	.LC10(%rip), %xmm7
	subsd	%xmm1, %xmm0
	comisd	%xmm7, %xmm5
	movsd	%xmm0, 8(%rbp)
	jbe	.L60
	movq	%rbx, %xmm3
	.p2align 4,,10
	.p2align 3
.L63:
	leal	-1(%rax), %ecx
	movsd	0(%rbp,%rcx,8), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%rbp,%rdx,8)
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	movq	%rdx, %rax
	comisd	%xmm0, %xmm3
	ja	.L63
.L60:
	comisd	.LC7(%rip), %xmm2
	jnb	.L66
	cvttsd2siq	%xmm2, %rax
.L67:
	movq	$0x000000000, 0(%rbp,%rax,8)
	movq	%r15, %xmm7
	cvttsd2siq	8(%rsp), %rax
	cvttsd2siq	%xmm7, %rdi
	movl	%eax, %r14d
	movq	%rdi, 56(%rsp)
	cmpl	%eax, 52(%rsp)
	jbe	.L81
	movl	%eax, %eax
	movsd	.LC10(%rip), %xmm3
	movsd	.LC11(%rip), %xmm4
	leaq	0(,%rax,8), %r15
	leaq	112(%rsp), %rax
	movq	%rax, 64(%rsp)
	movsd	%xmm3, 16(%rsp)
	movsd	%xmm4, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L82:
	call	rand@PLT
	pxor	%xmm2, %xmm2
	movl	%eax, %ebx
	movl	%r14d, %eax
	cvtsi2sdq	%rax, %xmm2
	subsd	8(%rsp), %xmm2
	comisd	.LC7(%rip), %xmm2
	jnb	.L73
	cvttsd2siq	%xmm2, %rax
.L74:
	cvttsd2sil	0(%rbp,%rax,8), %eax
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movsd	%xmm2, 32(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movsd	32(%rsp), %xmm2
	addsd	8(%rsp), %xmm2
	pxor	%xmm6, %xmm6
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movq	(%r12), %rsi
	movq	$0, 128(%rsp)
	cvtsi2sdl	%ebx, %xmm0
	divsd	24(%rsp), %xmm0
	addsd	%xmm0, %xmm0
	movaps	%xmm6, 112(%rsp)
	cvttsd2siq	%xmm2, %rax
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%rax, 32(%rsp)
	movq	8(%r12), %rax
	movq	%rax, %rdx
	movsd	%xmm0, 40(%rsp)
	subq	%rsi, %rdx
	je	.L108
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L149
	movq	%rdx, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L75:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%rax, %rsi
	je	.L78
	movq	%rcx, %rdi
	movq	%rdx, 72(%rsp)
	call	memmove@PLT
	movq	72(%rsp), %rdx
	movq	%rax, %rcx
.L78:
	addq	%rdx, %rcx
	movl	32(%rsp), %esi
	movl	56(%rsp), %edx
	movq	64(%rsp), %rdi
	movq	%rcx, 120(%rsp)
.LEHB4:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE4:
	movapd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm0
	movq	(%r12), %rax
	movq	112(%rsp), %rdi
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L79
	movq	128(%rsp), %rsi
	addl	$1, %r14d
	addq	$8, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%r14d, 52(%rsp)
	jne	.L82
.L81:
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L150
.L69:
	leaq	8(%r15), %r14
	cmpq	%r14, %rbx
	je	.L83
	.p2align 4,,10
	.p2align 3
.L85:
	call	rand@PLT
	movq	%r14, %rcx
	subq	%r15, %rcx
	cltq
	sarq	$3, %rcx
	cqto
	addq	$1, %rcx
	idivq	%rcx
	leaq	(%r15,%rdx,8), %rax
	cmpq	%rax, %r14
	je	.L84
	movsd	(%r14), %xmm0
	movsd	(%rax), %xmm1
	movsd	%xmm1, (%r14)
	movsd	%xmm0, (%rax)
.L84:
	addq	$8, %r14
	cmpq	%r14, %rbx
	jne	.L85
	movq	8(%r12), %r14
	movq	(%r12), %r15
.L83:
	pxor	%xmm0, %xmm0
	movq	%r14, %rbx
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	subq	%r15, %rbx
	je	.L109
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L151
	movq	%rbx, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	8(%r12), %r14
	movq	(%r12), %r15
	movq	%rax, %rcx
	movq	%r14, %rdx
	subq	%r15, %rdx
.L86:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%r15, %r14
	je	.L89
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L89:
	addq	%rdx, %rcx
	movl	52(%rsp), %esi
	movl	56(%rsp), %edx
	leaq	112(%rsp), %rdi
	movq	%rcx, 120(%rsp)
.LEHB6:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE6:
	movq	88(%rsp), %rax
	movq	112(%rsp), %rdi
	movsd	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L90
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L90:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	pxor	%xmm1, %xmm1
	movq	80(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$3, %rcx
	movq	$0x000000000, (%rdi)
	je	.L91
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L92:
	movsd	(%rsi,%rax,8), %xmm0
	andpd	.LC4(%rip), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L92
.L91:
	movq	88(%rsp), %rax
	pxor	%xmm6, %xmm6
	movsd	(%rax), %xmm0
	ucomisd	%xmm6, %xmm0
	jp	.L119
	pxor	%xmm2, %xmm2
	je	.L93
.L119:
	andpd	.LC4(%rip), %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
.L93:
	movq	80(%rsp), %rax
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	movsd	%xmm2, (%rax)
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L152
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.L38:
	.cfi_restore_state
	movapd	%xmm7, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L73:
	movabsq	$-9223372036854775808, %rdi
	movapd	%xmm2, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	xorq	%rdi, %rax
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L108:
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L79:
	addl	$1, %r14d
	addq	$8, %r15
	cmpl	%r14d, 52(%rsp)
	jne	.L82
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	jne	.L69
.L150:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L54:
	movapd	%xmm3, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L107:
	movq	$0, 104(%rsp)
	xorl	%r13d, %r13d
	jmp	.L41
	.p2align 4,,10
	.p2align 3
.L66:
	subsd	.LC7(%rip), %xmm2
	cvttsd2siq	%xmm2, %rax
	btcq	$63, %rax
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L104:
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L105
	.p2align 4,,10
	.p2align 3
.L37:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L149:
	testq	%rdx, %rdx
	jns	.L77
.LEHB7:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L77:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L139:
	movsd	.LC6(%rip), %xmm0
	mulsd	32(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	movsd	8(%rsp), %xmm0
	subsd	.LC5(%rip), %xmm0
	comisd	.LC7(%rip), %xmm0
	jnb	.L48
	cvttsd2siq	%xmm0, %rax
.L49:
	movq	$0x000000000, 0(%r13,%rax,8)
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L109:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L86
.L48:
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L49
.L151:
	testq	%rbx, %rbx
	jns	.L88
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L88:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE7:
.L147:
	leaq	.LC8(%rip), %rdi
.LEHB8:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE8:
.L152:
	call	__stack_chk_fail@PLT
.L148:
	leaq	.LC8(%rip), %rdi
.LEHB9:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE9:
.L57:
	movsd	32(%rsp), %xmm4
	movsd	%xmm4, 0
	ud2
.L113:
	endbr64
	movq	%rax, %rbx
	jmp	.L100
.L114:
	endbr64
	movq	%rax, %rbx
	jmp	.L97
.L112:
	endbr64
	movq	%rax, %rbp
	jmp	.L101
.L115:
	endbr64
.L146:
	movq	%rax, %rbx
	jmp	.L98
.L116:
	endbr64
	jmp	.L146
.L98:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L97
	call	_ZdlPvm@PLT
.L97:
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L100:
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rbp
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L101:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L102
	call	_ZdlPvm@PLT
.L102:
	movq	%rbp, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
	.cfi_endproc
.LFE5594:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA5594:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5594-.LLSDACSB5594
.LLSDACSB5594:
	.uleb128 .LEHB0-.LFB5594
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB5594
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L112-.LFB5594
	.uleb128 0
	.uleb128 .LEHB2-.LFB5594
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L113-.LFB5594
	.uleb128 0
	.uleb128 .LEHB3-.LFB5594
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L114-.LFB5594
	.uleb128 0
	.uleb128 .LEHB4-.LFB5594
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L115-.LFB5594
	.uleb128 0
	.uleb128 .LEHB5-.LFB5594
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L114-.LFB5594
	.uleb128 0
	.uleb128 .LEHB6-.LFB5594
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L116-.LFB5594
	.uleb128 0
	.uleb128 .LEHB7-.LFB5594
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L114-.LFB5594
	.uleb128 0
	.uleb128 .LEHB8-.LFB5594
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L112-.LFB5594
	.uleb128 0
	.uleb128 .LEHB9-.LFB5594
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L113-.LFB5594
	.uleb128 0
	.uleb128 .LEHB10-.LFB5594
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE5594:
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5375:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %rcx
	movq	%xmm0, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r14
	leaq	8(%rsp), %r13
	movq	$0x000000000, 8(%rsp)
	movq	%r14, %rdi
	movq	%r13, %rdx
	call	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	16(%rsp), %xmm5
	movq	32(%rsp), %rax
	movaps	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm5, (%rbx)
	testq	%rdi, %rdi
	jne	.L172
	jmp	.L157
	.p2align 4,,10
	.p2align 3
.L161:
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movq	%r15, %xmm0
	call	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm3, %xmm3
	movq	16(%rbx), %rsi
	movdqa	16(%rsp), %xmm2
	movq	32(%rsp), %rax
	movaps	%xmm3, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm2, (%rbx)
	testq	%rdi, %rdi
	je	.L157
.L172:
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L157
	call	_ZdlPvm@PLT
.L157:
	movq	%r15, %xmm1
	comisd	8(%rsp), %xmm1
	ja	.L161
	movsd	0(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm4
	andpd	.LC4(%rip), %xmm0
	comisd	%xmm0, %xmm4
	ja	.L161
	comisd	.LC13(%rip), %xmm0
	ja	.L161
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L173
	addq	$56, %rsp
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
.L173:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5375:
	.size	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.rodata._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.1,"aMS",@progbits,1
.LC14:
	.string	"             -"
	.section	.rodata._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"             ----------> START GENSUM \n "
	.align 8
.LC16:
	.string	"                            Before                "
	.align 8
.LC17:
	.string	"                           After                "
	.align 8
.LC18:
	.string	"             ----------- END GENSUM "
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB5607:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5607
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
	movq	%rdi, %r12
	leaq	.LC14(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movl	%esi, 44(%rsp)
	movq	%rdx, 80(%rsp)
	movq	%rcx, 88(%rsp)
	movsd	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
.LEHB11:
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movsd	(%rsp), %xmm0
	call	log@PLT
	movsd	.LC4(%rip), %xmm2
	divsd	.LC1(%rip), %xmm0
	movsd	.LC3(%rip), %xmm3
	movsd	%xmm0, 24(%rsp)
	divsd	.LC2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.L175
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm4
	andnpd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm4, %xmm3
	addsd	%xmm3, %xmm1
	orpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
.L175:
	movl	44(%rsp), %r13d
	addsd	.LC5(%rip), %xmm0
	pxor	%xmm7, %xmm7
	cvtsi2sdq	%r13, %xmm7
	movsd	%xmm0, 72(%rsp)
	movsd	.LC6(%rip), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm7, 32(%rsp)
	call	round@PLT
	movq	$0, 16(%r12)
	movsd	%xmm0, (%rsp)
	pxor	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	testq	%r13, %r13
	je	.L178
	salq	$3, %r13
	movq	%r13, %rdi
	call	_Znwm@PLT
.LEHE11:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	movq	%rax, %xmm0
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	call	memset@PLT
.L244:
	movsd	(%rsp), %xmm7
	comisd	.LC7(%rip), %xmm7
	movq	%rbx, 8(%r12)
	jnb	.L179
	cvttsd2siq	%xmm7, %rax
.L180:
	movq	%rax, %rsi
	shrq	$60, %rsi
	jne	.L288
	leaq	0(,%rax,8), %r14
	testq	%rax, %rax
	je	.L248
	movq	%r14, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 104(%rsp)
	cmpq	%r13, %rax
	je	.L182
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L182:
	movsd	(%rsp), %xmm4
	pxor	%xmm5, %xmm5
	comisd	%xmm5, %xmm4
	jbe	.L280
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L185:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	.LC9(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	24(%rsp), %xmm0
	call	round@PLT
	movsd	(%rsp), %xmm5
	movsd	%xmm0, 0(%r13,%rbx,8)
	leal	1(%rbp), %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	movq	%rbx, %rbp
	comisd	%xmm0, %xmm5
	ja	.L185
	movsd	.LC6(%rip), %xmm0
	mulsd	24(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	movsd	(%rsp), %xmm0
	subsd	.LC5(%rip), %xmm0
	comisd	.LC7(%rip), %xmm0
	jnb	.L245
	cvttsd2siq	%xmm0, %rax
.L246:
	movsd	.LC10(%rip), %xmm4
	movsd	.LC11(%rip), %xmm5
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	movq	$0x000000000, 0(%r13,%rax,8)
	movsd	%xmm4, 8(%rsp)
	movsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L192:
	call	rand@PLT
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm0
	movl	%eax, %ebp
	cvttsd2sil	0(%r13,%rbx,8), %eax
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movq	(%r12), %rax
	movsd	(%rsp), %xmm7
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebp, %xmm0
	divsd	16(%rsp), %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax,%rbx,8)
	leal	1(%r14), %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
	movq	%rbx, %r14
	comisd	%xmm0, %xmm7
	ja	.L192
.L191:
	movsd	32(%rsp), %xmm3
	subsd	(%rsp), %xmm3
	comisd	.LC7(%rip), %xmm3
	movq	%xmm3, %rbx
	jnb	.L195
	cvttsd2siq	%xmm3, %rax
.L196:
	movq	%rax, %rsi
	shrq	$60, %rsi
	jne	.L289
	testq	%rax, %rax
	je	.L198
	leaq	0(,%rax,8), %r15
	movq	%r15, %rdi
	movq	%r15, 96(%rsp)
.LEHB13:
	call	_Znwm@PLT
.LEHE13:
	movq	%rax, %rbp
	testq	%r15, %r15
	je	.L202
	movq	96(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L202:
	movsd	24(%rsp), %xmm3
	movq	%rbx, %xmm2
	movq	%rbx, %xmm6
	subsd	.LC5(%rip), %xmm2
	comisd	.LC5(%rip), %xmm6
	movapd	%xmm3, %xmm1
	movsd	%xmm3, 0(%rbp)
	divsd	%xmm2, %xmm1
	jbe	.L201
	movapd	%xmm3, %xmm0
	movl	$2, %eax
	movl	$2, %edx
	movsd	.LC10(%rip), %xmm5
	subsd	%xmm1, %xmm0
	comisd	%xmm5, %xmm6
	movsd	%xmm0, 8(%rbp)
	jbe	.L201
	movq	%rbx, %xmm3
	.p2align 4,,10
	.p2align 3
.L204:
	leal	-1(%rax), %ecx
	movsd	0(%rbp,%rcx,8), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 0(%rbp,%rdx,8)
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	movq	%rdx, %rax
	comisd	%xmm0, %xmm3
	ja	.L204
.L201:
	comisd	.LC7(%rip), %xmm2
	jnb	.L207
	cvttsd2siq	%xmm2, %rax
.L208:
	movq	$0x000000000, 0(%rbp,%rax,8)
	leaq	.LC16(%rip), %rdi
.LEHB14:
	call	puts@PLT
	cvttsd2siq	(%rsp), %rax
	movl	%eax, %r14d
	cmpl	%eax, 44(%rsp)
	jbe	.L221
	cvttsd2siq	72(%rsp), %rsi
	movl	%eax, %eax
	movsd	.LC10(%rip), %xmm6
	leaq	0(,%rax,8), %r15
	leaq	112(%rsp), %rax
	movsd	.LC11(%rip), %xmm3
	movq	%rax, 56(%rsp)
	movsd	%xmm6, 8(%rsp)
	movq	%rsi, 48(%rsp)
	movsd	%xmm3, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L222:
	call	rand@PLT
	pxor	%xmm2, %xmm2
	movl	%eax, %ebx
	movl	%r14d, %eax
	cvtsi2sdq	%rax, %xmm2
	subsd	(%rsp), %xmm2
	comisd	.LC7(%rip), %xmm2
	jnb	.L213
	cvttsd2siq	%xmm2, %rax
.L214:
	cvttsd2sil	0(%rbp,%rax,8), %eax
	pxor	%xmm1, %xmm1
	movsd	8(%rsp), %xmm0
	movsd	%xmm2, 24(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movsd	24(%rsp), %xmm2
	addsd	(%rsp), %xmm2
	pxor	%xmm6, %xmm6
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movq	(%r12), %rsi
	movq	$0, 128(%rsp)
	cvtsi2sdl	%ebx, %xmm0
	divsd	16(%rsp), %xmm0
	addsd	%xmm0, %xmm0
	movaps	%xmm6, 112(%rsp)
	cvttsd2siq	%xmm2, %rax
	subsd	.LC5(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movq	%rax, 24(%rsp)
	movq	8(%r12), %rax
	movq	%rax, %rdx
	movsd	%xmm0, 32(%rsp)
	subq	%rsi, %rdx
	je	.L249
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L290
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L215:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%rax, %rsi
	je	.L218
	movq	%rcx, %rdi
	movq	%rdx, 64(%rsp)
	call	memmove@PLT
	movq	64(%rsp), %rdx
	movq	%rax, %rcx
.L218:
	addq	%rdx, %rcx
	movl	24(%rsp), %esi
	movl	48(%rsp), %edx
	movq	56(%rsp), %rdi
	movq	%rcx, 120(%rsp)
.LEHB15:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE15:
	movapd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm0
	movq	(%r12), %rax
	movq	112(%rsp), %rdi
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L219
	movq	128(%rsp), %rsi
	addl	$1, %r14d
	addq	$8, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%r14d, 44(%rsp)
	jne	.L222
.L221:
	leaq	.LC17(%rip), %rdi
.LEHB16:
	call	puts@PLT
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L223
	leaq	8(%r15), %rax
	cmpq	%rax, %rbx
	je	.L224
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L226:
	call	rand@PLT
	movq	%r14, %rcx
	subq	%r15, %rcx
	cltq
	sarq	$3, %rcx
	cqto
	addq	$1, %rcx
	idivq	%rcx
	leaq	(%r15,%rdx,8), %rax
	cmpq	%rax, %r14
	je	.L225
	movsd	(%r14), %xmm0
	movsd	(%rax), %xmm1
	movsd	%xmm1, (%r14)
	movsd	%xmm0, (%rax)
.L225:
	addq	$8, %r14
	cmpq	%r14, %rbx
	jne	.L226
	movq	8(%r12), %rax
	movq	(%r12), %r15
.L224:
	pxor	%xmm0, %xmm0
	movq	%rax, %rbx
	movq	$0, 128(%rsp)
	cvttsd2siq	72(%rsp), %r14
	movaps	%xmm0, 112(%rsp)
	subq	%r15, %rbx
	je	.L250
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L291
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE16:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %r15
	movq	%rax, %rdx
	subq	%r15, %rdx
.L227:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%rax, %r15
	je	.L230
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L230:
	movl	44(%rsp), %esi
	addq	%rdx, %rcx
	leaq	112(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rcx, 120(%rsp)
.LEHB17:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE17:
	movq	88(%rsp), %rax
	movq	112(%rsp), %rdi
	movsd	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L231
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L231:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	pxor	%xmm1, %xmm1
	movq	80(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$3, %rcx
	movq	$0x000000000, (%rdi)
	je	.L232
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L233:
	movsd	(%rsi,%rax,8), %xmm0
	andpd	.LC4(%rip), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L233
.L232:
	movq	88(%rsp), %rax
	pxor	%xmm7, %xmm7
	movsd	(%rax), %xmm0
	ucomisd	%xmm7, %xmm0
	jp	.L260
	pxor	%xmm2, %xmm2
	je	.L234
.L260:
	andpd	.LC4(%rip), %xmm0
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
.L234:
	movq	80(%rsp), %rax
	leaq	.LC18(%rip), %rdi
	movsd	%xmm2, (%rax)
.LEHB18:
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L292
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.L179:
	.cfi_restore_state
	movapd	%xmm7, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L213:
	movabsq	$-9223372036854775808, %rdi
	movapd	%xmm2, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	xorq	%rdi, %rax
	jmp	.L214
	.p2align 4,,10
	.p2align 3
.L249:
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L215
	.p2align 4,,10
	.p2align 3
.L219:
	addl	$1, %r14d
	addq	$8, %r15
	cmpl	%r14d, 44(%rsp)
	jne	.L222
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L195:
	movapd	%xmm3, %xmm0
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L248:
	movq	$0, 104(%rsp)
	xorl	%r13d, %r13d
	jmp	.L182
	.p2align 4,,10
	.p2align 3
.L207:
	subsd	.LC7(%rip), %xmm2
	cvttsd2siq	%xmm2, %rax
	btcq	$63, %rax
	jmp	.L208
	.p2align 4,,10
	.p2align 3
.L245:
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L178:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L290:
	testq	%rdx, %rdx
	jns	.L217
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L217:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L223:
	pxor	%xmm0, %xmm0
	cvttsd2siq	72(%rsp), %r14
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	jmp	.L230
	.p2align 4,,10
	.p2align 3
.L280:
	movsd	.LC6(%rip), %xmm0
	mulsd	24(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movsd	%xmm0, 0(%r13)
	movsd	(%rsp), %xmm0
	subsd	.LC5(%rip), %xmm0
	comisd	.LC7(%rip), %xmm0
	jnb	.L189
	cvttsd2siq	%xmm0, %rax
.L190:
	movq	$0x000000000, 0(%r13,%rax,8)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L250:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L227
.L189:
	subsd	.LC7(%rip), %xmm0
	cvttsd2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L190
.L291:
	testq	%rbx, %rbx
	jns	.L229
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L229:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE18:
.L288:
	leaq	.LC8(%rip), %rdi
.LEHB19:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE19:
.L292:
	call	__stack_chk_fail@PLT
.L289:
	leaq	.LC8(%rip), %rdi
.LEHB20:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE20:
.L198:
	movsd	24(%rsp), %xmm7
	movsd	%xmm7, 0
	ud2
.L254:
	endbr64
	movq	%rax, %rbx
	jmp	.L241
.L255:
	endbr64
	movq	%rax, %rbx
	jmp	.L238
.L253:
	endbr64
	movq	%rax, %rbp
	jmp	.L242
.L256:
	endbr64
.L287:
	movq	%rax, %rbx
	jmp	.L239
.L257:
	endbr64
	jmp	.L287
.L239:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L238
	call	_ZdlPvm@PLT
.L238:
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L241:
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rbp
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L242:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L243
	call	_ZdlPvm@PLT
.L243:
	movq	%rbp, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
	.cfi_endproc
.LFE5607:
	.section	.gcc_except_table._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA5607:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5607-.LLSDACSB5607
.LLSDACSB5607:
	.uleb128 .LEHB11-.LFB5607
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB5607
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L253-.LFB5607
	.uleb128 0
	.uleb128 .LEHB13-.LFB5607
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L254-.LFB5607
	.uleb128 0
	.uleb128 .LEHB14-.LFB5607
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L255-.LFB5607
	.uleb128 0
	.uleb128 .LEHB15-.LFB5607
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L256-.LFB5607
	.uleb128 0
	.uleb128 .LEHB16-.LFB5607
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L255-.LFB5607
	.uleb128 0
	.uleb128 .LEHB17-.LFB5607
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L257-.LFB5607
	.uleb128 0
	.uleb128 .LEHB18-.LFB5607
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L255-.LFB5607
	.uleb128 0
	.uleb128 .LEHB19-.LFB5607
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L253-.LFB5607
	.uleb128 0
	.uleb128 .LEHB20-.LFB5607
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L254-.LFB5607
	.uleb128 0
	.uleb128 .LEHB21-.LFB5607
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE5607:
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.rodata._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_.str1.1,"aMS",@progbits,1
.LC19:
	.string	"   -"
.LC20:
	.string	"   ----------> START GEN FP"
.LC21:
	.string	"In while"
.LC22:
	.string	"   ----------- End GEN FP"
	.section	.text._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5381:
	.cfi_startproc
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
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	leaq	.LC19(%rip), %rdi
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movsd	%xmm0, 8(%rsp)
	leaq	32(%rsp), %r14
	leaq	24(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movsd	8(%rsp), %xmm0
	movq	%r13, %rdx
	movq	$0x000000000, 24(%rsp)
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	32(%rsp), %xmm4
	movq	48(%rsp), %rax
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm4, (%rbx)
	testq	%rdi, %rdi
	je	.L295
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L295
	call	_ZdlPvm@PLT
.L295:
	leaq	.LC21(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L297:
	movsd	8(%rsp), %xmm1
	comisd	24(%rsp), %xmm1
	ja	.L301
.L311:
	movsd	0(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm3
	andpd	.LC4(%rip), %xmm0
	comisd	%xmm0, %xmm3
	ja	.L301
	comisd	.LC13(%rip), %xmm0
	jbe	.L310
.L301:
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movsd	8(%rsp), %xmm0
	movq	%r13, %rdx
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	32(%rsp), %xmm2
	movq	48(%rsp), %rax
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm2, (%rbx)
	testq	%rdi, %rdi
	je	.L297
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L297
	call	_ZdlPvm@PLT
	movsd	8(%rsp), %xmm1
	comisd	24(%rsp), %xmm1
	jbe	.L311
	jmp	.L301
	.p2align 4,,10
	.p2align 3
.L310:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L312
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
.L312:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5381:
	.size	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.rodata._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC23:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.type	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, @function
_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_:
.LFB5742:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	movabsq	$1152921504606846975, %rdx
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %r12
	movq	(%rdi), %r14
	movq	%r12, %rax
	subq	%r14, %rax
	sarq	$3, %rax
	cmpq	%rdx, %rax
	je	.L333
	testq	%rax, %rax
	movl	$1, %edx
	movq	%rdi, %rbp
	movq	%rsi, %r13
	cmovne	%rax, %rdx
	xorl	%ecx, %ecx
	addq	%rdx, %rax
	movq	%rsi, %rdx
	setc	%cl
	subq	%r14, %rdx
	testq	%rcx, %rcx
	jne	.L326
	testq	%rax, %rax
	jne	.L318
	xorl	%ebx, %ebx
	xorl	%edi, %edi
.L324:
	movsd	(%r15), %xmm0
	subq	%r13, %r12
	leaq	8(%rdi,%rdx), %r15
	movq	%rdi, %xmm1
	leaq	(%r15,%r12), %rax
	movq	%rax, %xmm2
	movsd	%xmm0, (%rdi,%rdx)
	punpcklqdq	%xmm2, %xmm1
	movaps	%xmm1, (%rsp)
	testq	%rdx, %rdx
	jg	.L334
	testq	%r12, %r12
	jg	.L322
	testq	%r14, %r14
	jne	.L332
.L323:
	movdqa	(%rsp), %xmm3
	movq	%rbx, 16(%rbp)
	movups	%xmm3, 0(%rbp)
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
	.p2align 4,,10
	.p2align 3
.L334:
	.cfi_restore_state
	movq	%r14, %rsi
	call	memmove@PLT
	testq	%r12, %r12
	jg	.L322
.L332:
	movq	16(%rbp), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
	jmp	.L323
	.p2align 4,,10
	.p2align 3
.L322:
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	memcpy@PLT
	testq	%r14, %r14
	je	.L323
	jmp	.L332
	.p2align 4,,10
	.p2align 3
.L326:
	movabsq	$9223372036854775800, %rbx
.L317:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	addq	%rax, %rbx
	jmp	.L324
	.p2align 4,,10
	.p2align 3
.L318:
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	0(,%rax,8), %rbx
	jmp	.L317
.L333:
	leaq	.LC23(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5742:
	.size	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, .-_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.section	.rodata._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji.str1.1,"aMS",@progbits,1
.LC24:
	.string	"../data/vector%d.bin"
.LC25:
	.string	"../src/data/vector%d.bin"
.LC26:
	.string	"../data_big/vector%d.bin"
.LC27:
	.string	"../src/data_big/vector%d.bin"
	.section	.rodata._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji.str1.8,"aMS",@progbits,1
	.align 8
.LC28:
	.string	"Could not open binary_file.bin"
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.p2align 4
	.weak	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.type	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, @function
_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji:
.LFB5365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5365
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-49152(%rsp), %r11
	.cfi_def_cfa 11, 49208
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$1416, %rsp
	.cfi_def_cfa_offset 50624
	movq	%fs:40, %rax
	movq	%rax, 50552(%rsp)
	xorl	%eax, %eax
	movq	%rdi, %rbx
	movl	%esi, %r8d
	cmpl	$1, %edx
	je	.L370
	cmpl	$2, %edx
	je	.L338
	cmpl	$3, %edx
	je	.L371
	cmpl	$4, %edx
	jne	.L337
	leaq	544(%rsp), %rdi
	leaq	.LC27(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L337:
	leaq	272(%rsp), %r15
	leaq	16(%rsp), %rbp
	movq	%r15, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	movq	8+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %r13
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movups	%xmm0, 504(%rsp)
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 272(%rsp)
	xorl	%eax, %eax
	movw	%ax, 496(%rsp)
	movups	%xmm0, 520(%rsp)
	movq	-24(%r13), %rax
	movq	$0, 488(%rsp)
	movq	%r13, 16(%rsp)
	movq	%rcx, 16(%rsp,%rax)
	movq	$0, 24(%rsp)
	movq	-24(%r13), %rdi
	addq	%rbp, %rdi
.LEHB22:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE22:
	leaq	24+_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	32(%rsp), %r14
	movq	%rax, 16(%rsp)
	movq	%r14, %rdi
	addq	$40, %rax
	movq	%rax, 272(%rsp)
.LEHB23:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE23:
	movq	%r14, %rsi
	movq	%r15, %rdi
.LEHB24:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	544(%rsp), %rsi
	movl	$12, %edx
	movq	%r14, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	16(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbp, %rdi
	testq	%rax, %rax
	je	.L372
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE24:
.L343:
	testb	$5, 304(%rsp)
	jne	.L373
.L345:
	leaq	8(%rsp), %r12
.L352:
	movl	$8, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB25:
	call	_ZNSi4readEPcl@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L374
.L355:
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.L353
	movsd	8(%rsp), %xmm0
	addq	$8, %rsi
	movl	$8, %edx
	movq	%rbp, %rdi
	movsd	%xmm0, -8(%rsi)
	movq	%rsi, 8(%rbx)
	movq	%r12, %rsi
	call	_ZNSi4readEPcl@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L355
.L374:
	movq	%r14, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE25:
	testq	%rax, %rax
	je	.L375
.L356:
	leaq	24+_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 16(%rsp)
	addq	$40, %rax
	movq	%rax, 272(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 32(%rsp)
.LEHB26:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE26:
.L358:
	leaq	136(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	88(%rsp), %rdi
	movq	%rax, 32(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%r13), %rax
	movq	%r13, 16(%rsp)
	movq	%r15, %rdi
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rcx, 16(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 272(%rsp)
	movq	$0, 24(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	50552(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L376
	addq	$50568, %rsp
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
.L371:
	.cfi_restore_state
	leaq	544(%rsp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L353:
	movq	%r12, %rdx
	movq	%rbx, %rdi
.LEHB27:
	call	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	jmp	.L352
	.p2align 4,,10
	.p2align 3
.L373:
	movl	$30, %edx
	leaq	.LC28(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cerr(%rip), %rax
	leaq	_ZSt4cerr(%rip), %rcx
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %r12
	testq	%r12, %r12
	je	.L377
	cmpb	$0, 56(%r12)
	je	.L350
	movsbl	67(%r12), %esi
.L351:
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE27:
	jmp	.L345
	.p2align 4,,10
	.p2align 3
.L372:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB28:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE28:
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L338:
	leaq	544(%rsp), %rdi
	leaq	.LC25(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L370:
	leaq	544(%rsp), %rdi
	movl	$50000, %edx
	movl	$1, %esi
	leaq	.LC24(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L350:
	movq	%r12, %rdi
.LEHB29:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L351
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L351
	.p2align 4,,10
	.p2align 3
.L375:
	movq	16(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L356
.L377:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE29:
.L376:
	call	__stack_chk_fail@PLT
.L364:
	endbr64
	movq	%rax, %rbp
	jmp	.L347
.L365:
	endbr64
	movq	%rax, %rbp
	jmp	.L346
.L362:
	endbr64
	movq	%rax, %r12
	jmp	.L359
.L366:
	endbr64
	movq	%rax, %rdi
	jmp	.L357
.L363:
	endbr64
	movq	%rax, %rbp
	jmp	.L348
.L346:
	movq	%r14, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L347:
	movq	-24(%r13), %rax
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r13, 16(%rsp)
	movq	%rcx, 16(%rsp,%rax)
	movq	$0, 24(%rsp)
.L348:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rdi
	movq	%rax, 272(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%rbp, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L357:
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L358
.L359:
	movq	%rbp, %rdi
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%r12, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
	.cfi_endproc
.LFE5365:
	.section	.gcc_except_table._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"aG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.align 4
.LLSDA5365:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5365-.LLSDATTD5365
.LLSDATTD5365:
	.byte	0x1
	.uleb128 .LLSDACSE5365-.LLSDACSB5365
.LLSDACSB5365:
	.uleb128 .LEHB22-.LFB5365
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L363-.LFB5365
	.uleb128 0
	.uleb128 .LEHB23-.LFB5365
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L364-.LFB5365
	.uleb128 0
	.uleb128 .LEHB24-.LFB5365
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L365-.LFB5365
	.uleb128 0
	.uleb128 .LEHB25-.LFB5365
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L362-.LFB5365
	.uleb128 0
	.uleb128 .LEHB26-.LFB5365
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L366-.LFB5365
	.uleb128 0x1
	.uleb128 .LEHB27-.LFB5365
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L362-.LFB5365
	.uleb128 0
	.uleb128 .LEHB28-.LFB5365
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L365-.LFB5365
	.uleb128 0
	.uleb128 .LEHB29-.LFB5365
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L362-.LFB5365
	.uleb128 0
	.uleb128 .LEHB30-.LFB5365
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB5365
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE5365:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5365:
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.size	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, .-_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.section	.text._Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,comdat
	.p2align 4
	.weak	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj:
.LFB5772:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movl	%edx, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	8(%rdi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %rbp
	je	.L393
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rdx
	ja	.L406
	movq	%rdi, %r13
	movq	%rdx, %rdi
	call	_Znwm@PLT
	movq	0(%r13), %rsi
	movq	%rax, %rdi
	movq	8(%r13), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L379:
	cmpq	%rsi, %rax
	je	.L382
	call	memmove@PLT
	movq	%rax, %rdi
.L382:
	movl	%r12d, %esi
	subl	$1, %esi
	je	.L383
	cmpl	$1, %ebx
	jbe	.L383
	leal	-1(%rbx), %eax
	movl	$1, %ecx
	movq	%rax, %r8
	leaq	(%rdi,%rax,4), %rdx
	.p2align 4,,10
	.p2align 3
.L384:
	movss	(%rdi), %xmm1
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L385:
	movss	4(%rax), %xmm0
	movaps	%xmm1, %xmm2
	addq	$4, %rax
	addss	%xmm0, %xmm1
	movaps	%xmm1, %xmm3
	movaps	%xmm1, %xmm4
	subss	%xmm0, %xmm3
	subss	%xmm3, %xmm4
	subss	%xmm3, %xmm2
	subss	%xmm4, %xmm0
	addss	%xmm2, %xmm0
	unpcklps	%xmm1, %xmm0
	movlps	%xmm0, -4(%rax)
	cmpq	%rdx, %rax
	jne	.L385
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jbe	.L384
.L386:
	cmpl	$2, %r8d
	jbe	.L395
	movl	%ebx, %edx
	movq	%rdi, %rax
	pxor	%xmm0, %xmm0
	shrl	$2, %edx
	salq	$4, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L389:
	movups	(%rax), %xmm1
	addq	$16, %rax
	addss	%xmm1, %xmm0
	movaps	%xmm1, %xmm2
	shufps	$85, %xmm1, %xmm2
	addss	%xmm0, %xmm2
	movaps	%xmm1, %xmm0
	unpckhps	%xmm1, %xmm0
	shufps	$255, %xmm1, %xmm1
	addss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cmpq	%rdx, %rax
	jne	.L389
	movl	%ebx, %eax
	andl	$-4, %eax
	testb	$3, %bl
	je	.L387
.L388:
	movl	%eax, %edx
	addss	(%rdi,%rdx,4), %xmm0
	leal	1(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L387
	addl	$2, %eax
	addss	(%rdi,%rdx,4), %xmm0
	cmpl	%eax, %ebx
	jbe	.L387
	addss	(%rdi,%rax,4), %xmm0
.L387:
	testq	%rdi, %rdi
	je	.L378
	movq	%rbp, %rsi
	movss	%xmm0, 12(%rsp)
	call	_ZdlPvm@PLT
	movss	12(%rsp), %xmm0
.L378:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L393:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L379
.L406:
	testq	%rdx, %rdx
	jns	.L381
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L383:
	pxor	%xmm0, %xmm0
	testl	%ebx, %ebx
	je	.L387
	leal	-1(%rbx), %r8d
	jmp	.L386
.L395:
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	jmp	.L388
.L381:
	call	_ZSt17__throw_bad_allocv@PLT
	.cfi_endproc
.LFE5772:
	.size	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB5579:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5579
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	cvtss2sd	%xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movl	%esi, 44(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	call	log@PLT
	pxor	%xmm7, %xmm7
	movsd	.LC4(%rip), %xmm2
	pxor	%xmm6, %xmm6
	divsd	.LC1(%rip), %xmm0
	movsd	.LC3(%rip), %xmm3
	cvtsd2ss	%xmm0, %xmm7
	cvtss2sd	%xmm7, %xmm6
	movapd	%xmm6, %xmm0
	divsd	.LC2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movss	%xmm7, 24(%rsp)
	andpd	%xmm2, %xmm1
	movsd	%xmm6, 16(%rsp)
	ucomisd	%xmm1, %xmm3
	jbe	.L408
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm5
	andnpd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm5, %xmm3
	addsd	%xmm3, %xmm1
	orpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
.L408:
	addsd	.LC5(%rip), %xmm0
	movl	44(%rsp), %ebx
	pxor	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	pxor	%xmm0, %xmm0
	movss	%xmm5, 32(%rsp)
	cvtsi2sdq	%rbx, %xmm0
	mulsd	.LC6(%rip), %xmm0
	call	round@PLT
	pxor	%xmm3, %xmm3
	movq	$0, 16(%r12)
	cvtsd2ss	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movss	%xmm3, 8(%rsp)
	movups	%xmm0, (%r12)
	testq	%rbx, %rbx
	je	.L411
	leaq	0(,%rbx,4), %r13
	movq	%r13, %rdi
.LEHB32:
	call	_Znwm@PLT
.LEHE32:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbp
	movq	%rax, %xmm0
	movq	%rax, %rdi
	movq	%rbp, 16(%r12)
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	call	memset@PLT
.L485:
	movss	8(%rsp), %xmm6
	comiss	.LC30(%rip), %xmm6
	movq	%rbp, 8(%r12)
	jnb	.L412
	cvttss2siq	%xmm6, %rax
.L413:
	movq	%rax, %rsi
	shrq	$61, %rsi
	jne	.L529
	leaq	0(,%rax,4), %r14
	testq	%rax, %rax
	je	.L489
	movq	%r14, %rdi
.LEHB33:
	call	_Znwm@PLT
.LEHE33:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 88(%rsp)
	cmpq	%r13, %rax
	je	.L415
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L415:
	movss	8(%rsp), %xmm7
	pxor	%xmm5, %xmm5
	comiss	%xmm5, %xmm7
	jbe	.L521
	movss	.LC9(%rip), %xmm7
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movss	%xmm7, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L427:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	cvtsi2ssl	%eax, %xmm0
	mulss	40(%rsp), %xmm0
	mulss	24(%rsp), %xmm0
	comiss	%xmm6, %xmm0
	cvtss2sd	%xmm0, %xmm0
	jbe	.L522
	addsd	.LC6(%rip), %xmm0
	movss	8(%rsp), %xmm4
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 0(%r13,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm4
	ja	.L427
.L423:
	movsd	.LC6(%rip), %xmm0
	mulsd	16(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movss	.LC31(%rip), %xmm3
	movss	%xmm3, 48(%rsp)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 0(%r13)
	movss	8(%rsp), %xmm0
	subss	%xmm3, %xmm0
	comiss	.LC30(%rip), %xmm0
	jnb	.L486
	cvttss2siq	%xmm0, %rax
.L487:
	movsd	.LC10(%rip), %xmm3
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movl	$0x00000000, 0(%r13,%rax,4)
	movsd	%xmm3, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L431:
	call	rand@PLT
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movl	%eax, %r15d
	cvttss2sil	0(%r13,%rbp,4), %eax
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movq	(%r12), %rax
	movss	8(%rsp), %xmm3
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	40(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm3
	ja	.L431
.L430:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbx, %xmm0
	subss	8(%rsp), %xmm0
	comiss	.LC30(%rip), %xmm0
	movd	%xmm0, %ebx
	jnb	.L436
	cvttss2siq	%xmm0, %rax
.L437:
	movq	%rax, %rdi
	shrq	$61, %rdi
	jne	.L530
	testq	%rax, %rax
	je	.L439
	leaq	0(,%rax,4), %r15
	movq	%r15, %rdi
	movq	%r15, 80(%rsp)
.LEHB34:
	call	_Znwm@PLT
.LEHE34:
	movq	%rax, %rbp
	testq	%r15, %r15
	je	.L443
	movq	80(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L443:
	movss	48(%rsp), %xmm6
	movd	%ebx, %xmm2
	movd	%ebx, %xmm5
	movss	24(%rsp), %xmm7
	subss	%xmm6, %xmm2
	comiss	%xmm6, %xmm5
	movaps	%xmm7, %xmm1
	movss	%xmm7, 0(%rbp)
	divss	%xmm2, %xmm1
	jbe	.L442
	movaps	%xmm7, %xmm0
	movl	$2, %eax
	movl	$2, %edx
	subss	%xmm1, %xmm0
	comiss	.LC32(%rip), %xmm5
	movss	%xmm0, 4(%rbp)
	jbe	.L442
	movd	%ebx, %xmm3
	.p2align 4,,10
	.p2align 3
.L445:
	leal	-1(%rax), %ecx
	movss	0(%rbp,%rcx,4), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 0(%rbp,%rdx,4)
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movq	%rdx, %rax
	comiss	%xmm0, %xmm3
	ja	.L445
.L442:
	comiss	.LC30(%rip), %xmm2
	jnb	.L448
	cvttss2siq	%xmm2, %rax
.L449:
	cvttss2siq	32(%rsp), %rbx
	movl	$0x00000000, 0(%rbp,%rax,4)
	cvttss2siq	8(%rsp), %rax
	movq	%rbx, 48(%rsp)
	movl	%eax, %r14d
	cmpl	%eax, 44(%rsp)
	jbe	.L463
	movss	.LC9(%rip), %xmm4
	movsd	.LC10(%rip), %xmm7
	movl	%eax, %eax
	leaq	0(,%rax,4), %r15
	movss	%xmm4, 40(%rsp)
	movsd	%xmm7, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L464:
	call	rand@PLT
	pxor	%xmm2, %xmm2
	movl	%eax, %ebx
	movl	%r14d, %eax
	cvtsi2ssq	%rax, %xmm2
	subss	8(%rsp), %xmm2
	comiss	.LC30(%rip), %xmm2
	jnb	.L455
	cvttss2siq	%xmm2, %rax
.L456:
	cvttss2sil	0(%rbp,%rax,4), %eax
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movss	%xmm2, 24(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movss	24(%rsp), %xmm2
	addss	8(%rsp), %xmm2
	pxor	%xmm7, %xmm7
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movq	(%r12), %rsi
	movq	$0, 112(%rsp)
	cvtsi2ssl	%ebx, %xmm0
	mulss	40(%rsp), %xmm0
	movaps	%xmm7, 96(%rsp)
	cvttss2siq	%xmm2, %rax
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	movq	%rax, 24(%rsp)
	movq	8(%r12), %rax
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movq	%rax, %rdx
	movsd	%xmm0, 32(%rsp)
	subq	%rsi, %rdx
	je	.L490
	movabsq	$9223372036854775804, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L531
	movq	%rdx, %rdi
.LEHB35:
	call	_Znwm@PLT
.LEHE35:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L457:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L460
	movq	%rcx, %rdi
	movq	%rdx, 56(%rsp)
	call	memmove@PLT
	movq	56(%rsp), %rdx
	movq	%rax, %rcx
.L460:
	addq	%rdx, %rcx
	movl	24(%rsp), %esi
	movl	48(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB36:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE36:
	pxor	%xmm1, %xmm1
	movq	(%r12), %rax
	movq	96(%rsp), %rdi
	cvtss2sd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L461
	movq	112(%rsp), %rsi
	addl	$1, %r14d
	addq	$4, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%r14d, 44(%rsp)
	jne	.L464
.L463:
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L532
.L451:
	leaq	4(%r15), %r14
	cmpq	%r14, %rbx
	je	.L465
	.p2align 4,,10
	.p2align 3
.L467:
	call	rand@PLT
	movq	%r14, %rcx
	subq	%r15, %rcx
	cltq
	sarq	$2, %rcx
	cqto
	addq	$1, %rcx
	idivq	%rcx
	leaq	(%r15,%rdx,4), %rax
	cmpq	%rax, %r14
	je	.L466
	movss	(%r14), %xmm0
	movss	(%rax), %xmm1
	movss	%xmm1, (%r14)
	movss	%xmm0, (%rax)
.L466:
	addq	$4, %r14
	cmpq	%r14, %rbx
	jne	.L467
	movq	8(%r12), %r14
	movq	(%r12), %r15
.L465:
	movq	$0, 112(%rsp)
	pxor	%xmm0, %xmm0
	movq	%r14, %rbx
	movaps	%xmm0, 96(%rsp)
	subq	%r15, %rbx
	je	.L491
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rbx
	ja	.L533
	movq	%rbx, %rdi
.LEHB37:
	call	_Znwm@PLT
.LEHE37:
	movq	8(%r12), %r14
	movq	(%r12), %r15
	movq	%rax, %rcx
	movq	%r14, %rdx
	subq	%r15, %rdx
.L468:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%r15, %r14
	je	.L471
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L471:
	addq	%rdx, %rcx
	movl	44(%rsp), %esi
	movl	48(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB38:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE38:
	movq	72(%rsp), %rax
	movq	96(%rsp), %rdi
	movss	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L472
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L472:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	pxor	%xmm1, %xmm1
	movq	64(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$2, %rcx
	movl	$0x00000000, (%rdi)
	je	.L473
	xorl	%edx, %edx
	xorl	%eax, %eax
	movss	.LC33(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L474:
	movss	(%rsi,%rax,4), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L474
.L473:
	movq	72(%rsp), %rax
	pxor	%xmm4, %xmm4
	movss	(%rax), %xmm0
	ucomiss	%xmm4, %xmm0
	jp	.L502
	pxor	%xmm2, %xmm2
	je	.L475
.L502:
	andps	.LC33(%rip), %xmm0
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
.L475:
	movq	64(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	movss	%xmm2, (%rax)
	call	_ZdlPvm@PLT
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L534
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.L412:
	.cfi_restore_state
	movaps	%xmm6, %xmm0
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L413
	.p2align 4,,10
	.p2align 3
.L522:
	subsd	.LC6(%rip), %xmm0
	movss	8(%rsp), %xmm5
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 0(%r13,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm5
	ja	.L427
	jmp	.L423
	.p2align 4,,10
	.p2align 3
.L455:
	movabsq	$-9223372036854775808, %rdi
	movaps	%xmm2, %xmm0
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	xorq	%rdi, %rax
	jmp	.L456
	.p2align 4,,10
	.p2align 3
.L490:
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L457
	.p2align 4,,10
	.p2align 3
.L461:
	addl	$1, %r14d
	addq	$4, %r15
	cmpl	%r14d, 44(%rsp)
	jne	.L464
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	jne	.L451
.L532:
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L436:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L437
	.p2align 4,,10
	.p2align 3
.L489:
	movq	$0, 88(%rsp)
	xorl	%r13d, %r13d
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L448:
	subss	.LC30(%rip), %xmm2
	cvttss2siq	%xmm2, %rax
	btcq	$63, %rax
	jmp	.L449
	.p2align 4,,10
	.p2align 3
.L486:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L487
	.p2align 4,,10
	.p2align 3
.L411:
	movq	$0, (%r12)
	xorl	%ebp, %ebp
	movq	$0, 16(%r12)
	jmp	.L485
	.p2align 4,,10
	.p2align 3
.L531:
	testq	%rdx, %rdx
	jns	.L459
.LEHB39:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L459:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L521:
	movsd	.LC6(%rip), %xmm0
	mulsd	16(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movss	.LC31(%rip), %xmm6
	movss	%xmm6, 48(%rsp)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 0(%r13)
	movss	8(%rsp), %xmm0
	subss	%xmm6, %xmm0
	comiss	.LC30(%rip), %xmm0
	jnb	.L428
	cvttss2siq	%xmm0, %rax
.L429:
	movl	$0x00000000, 0(%r13,%rax,4)
	jmp	.L430
	.p2align 4,,10
	.p2align 3
.L491:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L468
.L428:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L429
.L533:
	testq	%rbx, %rbx
	jns	.L470
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L470:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE39:
.L529:
	leaq	.LC8(%rip), %rdi
.LEHB40:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE40:
.L534:
	call	__stack_chk_fail@PLT
.L530:
	leaq	.LC8(%rip), %rdi
.LEHB41:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE41:
.L439:
	movss	24(%rsp), %xmm3
	movss	%xmm3, 0
	ud2
.L495:
	endbr64
	movq	%rax, %rbx
	jmp	.L482
.L496:
	endbr64
	movq	%rax, %rbx
	jmp	.L479
.L494:
	endbr64
	movq	%rax, %rbp
	jmp	.L483
.L497:
	endbr64
.L528:
	movq	%rax, %rbx
	jmp	.L480
.L498:
	endbr64
	jmp	.L528
.L480:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L479
	call	_ZdlPvm@PLT
.L479:
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L482:
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rbp
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L483:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L484
	call	_ZdlPvm@PLT
.L484:
	movq	%rbp, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.LEHE42:
	.cfi_endproc
.LFE5579:
	.section	.gcc_except_table._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA5579:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5579-.LLSDACSB5579
.LLSDACSB5579:
	.uleb128 .LEHB32-.LFB5579
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB5579
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L494-.LFB5579
	.uleb128 0
	.uleb128 .LEHB34-.LFB5579
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L495-.LFB5579
	.uleb128 0
	.uleb128 .LEHB35-.LFB5579
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L496-.LFB5579
	.uleb128 0
	.uleb128 .LEHB36-.LFB5579
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L497-.LFB5579
	.uleb128 0
	.uleb128 .LEHB37-.LFB5579
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L496-.LFB5579
	.uleb128 0
	.uleb128 .LEHB38-.LFB5579
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L498-.LFB5579
	.uleb128 0
	.uleb128 .LEHB39-.LFB5579
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L496-.LFB5579
	.uleb128 0
	.uleb128 .LEHB40-.LFB5579
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L494-.LFB5579
	.uleb128 0
	.uleb128 .LEHB41-.LFB5579
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L495-.LFB5579
	.uleb128 0
	.uleb128 .LEHB42-.LFB5579
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE5579:
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5371:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %rcx
	movd	%xmm0, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	leaq	16(%rsp), %r14
	leaq	12(%rsp), %r13
	movl	$0x00000000, 12(%rsp)
	movq	%r14, %rdi
	movq	%r13, %rdx
	call	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	16(%rsp), %xmm5
	movq	32(%rsp), %rax
	movaps	%xmm0, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm5, (%rbx)
	testq	%rdi, %rdi
	jne	.L554
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L543:
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r13, %rdx
	movd	%r15d, %xmm0
	call	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm3, %xmm3
	movq	16(%rbx), %rsi
	movdqa	16(%rsp), %xmm2
	movq	32(%rsp), %rax
	movaps	%xmm3, 16(%rsp)
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm2, (%rbx)
	testq	%rdi, %rdi
	je	.L539
.L554:
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L539
	call	_ZdlPvm@PLT
.L539:
	movd	%r15d, %xmm1
	comiss	12(%rsp), %xmm1
	ja	.L543
	movss	0(%rbp), %xmm0
	movss	.LC34(%rip), %xmm4
	andps	.LC33(%rip), %xmm0
	comiss	%xmm0, %xmm4
	ja	.L543
	comiss	.LC35(%rip), %xmm0
	ja	.L543
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L555
	addq	$56, %rsp
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
.L555:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5371:
	.size	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB5606:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5606
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
	movq	%rdi, %r12
	leaq	.LC14(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movl	%esi, 56(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 72(%rsp)
	movss	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.LEHB43:
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	movss	(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	call	log@PLT
	pxor	%xmm7, %xmm7
	movsd	.LC4(%rip), %xmm2
	pxor	%xmm6, %xmm6
	divsd	.LC1(%rip), %xmm0
	movsd	.LC3(%rip), %xmm3
	cvtsd2ss	%xmm0, %xmm7
	cvtss2sd	%xmm7, %xmm6
	movapd	%xmm6, %xmm0
	movss	%xmm7, 24(%rsp)
	divsd	.LC2(%rip), %xmm0
	movapd	%xmm0, %xmm1
	movsd	%xmm6, 16(%rsp)
	andpd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm3
	jbe	.L557
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm3
	movsd	.LC5(%rip), %xmm5
	andnpd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm3
	andpd	%xmm5, %xmm3
	addsd	%xmm3, %xmm1
	orpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm0
.L557:
	addsd	.LC5(%rip), %xmm0
	movl	56(%rsp), %ebx
	pxor	%xmm5, %xmm5
	cvtsd2ss	%xmm0, %xmm5
	pxor	%xmm0, %xmm0
	movss	%xmm5, 60(%rsp)
	cvtsi2sdq	%rbx, %xmm0
	mulsd	.LC6(%rip), %xmm0
	call	round@PLT
	pxor	%xmm3, %xmm3
	movq	$0, 16(%r12)
	cvtsd2ss	%xmm0, %xmm3
	pxor	%xmm0, %xmm0
	movss	%xmm3, (%rsp)
	movups	%xmm0, (%r12)
	testq	%rbx, %rbx
	je	.L560
	leaq	0(,%rbx,4), %r13
	movq	%r13, %rdi
	call	_Znwm@PLT
.LEHE43:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbp
	movq	%rax, %xmm0
	movq	%rax, %rdi
	movq	%rbp, 16(%r12)
	punpcklqdq	%xmm0, %xmm0
	movups	%xmm0, (%r12)
	call	memset@PLT
.L634:
	movss	(%rsp), %xmm6
	comiss	.LC30(%rip), %xmm6
	movq	%rbp, 8(%r12)
	jnb	.L561
	cvttss2siq	%xmm6, %rax
.L562:
	movq	%rax, %rsi
	shrq	$61, %rsi
	jne	.L678
	leaq	0(,%rax,4), %r14
	testq	%rax, %rax
	je	.L638
	movq	%r14, %rdi
.LEHB44:
	call	_Znwm@PLT
.LEHE44:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 88(%rsp)
	cmpq	%r13, %rax
	je	.L564
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L564:
	movss	(%rsp), %xmm7
	pxor	%xmm5, %xmm5
	comiss	%xmm5, %xmm7
	jbe	.L670
	movss	.LC9(%rip), %xmm7
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movss	%xmm7, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L576:
	call	rand@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm6, %xmm6
	cvtsi2ssl	%eax, %xmm0
	mulss	12(%rsp), %xmm0
	mulss	24(%rsp), %xmm0
	comiss	%xmm6, %xmm0
	cvtss2sd	%xmm0, %xmm0
	jbe	.L671
	addsd	.LC6(%rip), %xmm0
	movss	(%rsp), %xmm4
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 0(%r13,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm4
	ja	.L576
.L572:
	movsd	.LC6(%rip), %xmm0
	mulsd	16(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movss	.LC31(%rip), %xmm3
	movss	%xmm3, 32(%rsp)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 0(%r13)
	movss	(%rsp), %xmm0
	subss	%xmm3, %xmm0
	comiss	.LC30(%rip), %xmm0
	jnb	.L635
	cvttss2siq	%xmm0, %rax
.L636:
	movsd	.LC10(%rip), %xmm3
	xorl	%r14d, %r14d
	xorl	%ebp, %ebp
	movl	$0x00000000, 0(%r13,%rax,4)
	movsd	%xmm3, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L580:
	call	rand@PLT
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movl	%eax, %r15d
	cvttss2sil	0(%r13,%rbp,4), %eax
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movq	(%r12), %rax
	movss	(%rsp), %xmm3
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%r15d, %xmm0
	mulss	12(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm3
	ja	.L580
.L579:
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbx, %xmm0
	subss	(%rsp), %xmm0
	comiss	.LC30(%rip), %xmm0
	movd	%xmm0, %ebx
	jnb	.L585
	cvttss2siq	%xmm0, %rax
.L586:
	movq	%rax, %rsi
	shrq	$61, %rsi
	jne	.L679
	testq	%rax, %rax
	je	.L588
	leaq	0(,%rax,4), %r15
	movq	%r15, %rdi
	movq	%r15, 80(%rsp)
.LEHB45:
	call	_Znwm@PLT
.LEHE45:
	movq	%rax, %rbp
	testq	%r15, %r15
	je	.L592
	movq	80(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L592:
	movss	32(%rsp), %xmm6
	movd	%ebx, %xmm2
	movd	%ebx, %xmm5
	movss	24(%rsp), %xmm7
	subss	%xmm6, %xmm2
	comiss	%xmm6, %xmm5
	movaps	%xmm7, %xmm1
	movss	%xmm7, 0(%rbp)
	divss	%xmm2, %xmm1
	jbe	.L591
	movaps	%xmm7, %xmm0
	movl	$2, %eax
	movl	$2, %edx
	subss	%xmm1, %xmm0
	comiss	.LC32(%rip), %xmm5
	movss	%xmm0, 4(%rbp)
	jbe	.L591
	movd	%ebx, %xmm3
	.p2align 4,,10
	.p2align 3
.L594:
	leal	-1(%rax), %ecx
	movss	0(%rbp,%rcx,4), %xmm0
	subss	%xmm1, %xmm0
	movss	%xmm0, 0(%rbp,%rdx,4)
	leal	1(%rax), %edx
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rdx, %xmm0
	movq	%rdx, %rax
	comiss	%xmm0, %xmm3
	ja	.L594
.L591:
	comiss	.LC30(%rip), %xmm2
	jnb	.L597
	cvttss2siq	%xmm2, %rax
.L598:
	movl	$0x00000000, 0(%rbp,%rax,4)
	leaq	.LC16(%rip), %rdi
.LEHB46:
	call	puts@PLT
	cvttss2siq	(%rsp), %rax
	movl	%eax, %r14d
	cmpl	%eax, 56(%rsp)
	jbe	.L611
	cvttss2siq	60(%rsp), %rbx
	movss	.LC9(%rip), %xmm4
	movl	%eax, %eax
	movsd	.LC10(%rip), %xmm7
	leaq	0(,%rax,4), %r15
	movss	%xmm4, 12(%rsp)
	movsd	%xmm7, 16(%rsp)
	movq	%rbx, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L612:
	call	rand@PLT
	pxor	%xmm2, %xmm2
	movl	%eax, %ebx
	movl	%r14d, %eax
	cvtsi2ssq	%rax, %xmm2
	subss	(%rsp), %xmm2
	comiss	.LC30(%rip), %xmm2
	jnb	.L603
	cvttss2siq	%xmm2, %rax
.L604:
	cvttss2sil	0(%rbp,%rax,4), %eax
	pxor	%xmm1, %xmm1
	movsd	16(%rsp), %xmm0
	movss	%xmm2, 24(%rsp)
	cvtsi2sdl	%eax, %xmm1
	call	pow@PLT
	movss	24(%rsp), %xmm2
	addss	(%rsp), %xmm2
	pxor	%xmm7, %xmm7
	movapd	%xmm0, %xmm1
	pxor	%xmm0, %xmm0
	movq	(%r12), %rsi
	movq	$0, 112(%rsp)
	cvtsi2ssl	%ebx, %xmm0
	mulss	12(%rsp), %xmm0
	movaps	%xmm7, 96(%rsp)
	cvttss2siq	%xmm2, %rax
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm0, %xmm0
	subsd	.LC5(%rip), %xmm0
	movq	%rax, 24(%rsp)
	movq	8(%r12), %rax
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	%xmm1, %xmm0
	movq	%rax, %rdx
	movsd	%xmm0, 32(%rsp)
	subq	%rsi, %rdx
	je	.L639
	movabsq	$9223372036854775804, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L680
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE46:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L605:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%rax, %rsi
	je	.L608
	movq	%rcx, %rdi
	movq	%rdx, 48(%rsp)
	call	memmove@PLT
	movq	48(%rsp), %rdx
	movq	%rax, %rcx
.L608:
	addq	%rdx, %rcx
	movl	24(%rsp), %esi
	movl	40(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB47:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE47:
	pxor	%xmm1, %xmm1
	movq	(%r12), %rax
	movq	96(%rsp), %rdi
	cvtss2sd	%xmm0, %xmm1
	movsd	32(%rsp), %xmm0
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L609
	movq	112(%rsp), %rsi
	addl	$1, %r14d
	addq	$4, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%r14d, 56(%rsp)
	jne	.L612
.L611:
	leaq	.LC17(%rip), %rdi
.LEHB48:
	call	puts@PLT
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L613
	leaq	4(%r15), %rax
	cmpq	%rax, %rbx
	je	.L614
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L616:
	call	rand@PLT
	movq	%r14, %rcx
	subq	%r15, %rcx
	cltq
	sarq	$2, %rcx
	cqto
	addq	$1, %rcx
	idivq	%rcx
	leaq	(%r15,%rdx,4), %rax
	cmpq	%rax, %r14
	je	.L615
	movss	(%r14), %xmm0
	movss	(%rax), %xmm1
	movss	%xmm1, (%r14)
	movss	%xmm0, (%rax)
.L615:
	addq	$4, %r14
	cmpq	%r14, %rbx
	jne	.L616
	movq	8(%r12), %rax
	movq	(%r12), %r15
.L614:
	pxor	%xmm0, %xmm0
	movq	%rax, %rbx
	movq	$0, 112(%rsp)
	cvttss2siq	60(%rsp), %r14
	movaps	%xmm0, 96(%rsp)
	subq	%r15, %rbx
	je	.L640
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rbx
	ja	.L681
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE48:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %r15
	movq	%rax, %rdx
	subq	%r15, %rdx
.L617:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%r15, %rax
	je	.L620
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L620:
	movl	56(%rsp), %esi
	addq	%rdx, %rcx
	leaq	96(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rcx, 104(%rsp)
.LEHB49:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE49:
	movq	72(%rsp), %rax
	movq	96(%rsp), %rdi
	movss	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L621
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L621:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	pxor	%xmm1, %xmm1
	movq	64(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$2, %rcx
	movl	$0x00000000, (%rdi)
	je	.L622
	xorl	%edx, %edx
	xorl	%eax, %eax
	movss	.LC33(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L623:
	movss	(%rsi,%rax,4), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	andps	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movss	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L623
.L622:
	movq	72(%rsp), %rax
	pxor	%xmm4, %xmm4
	movss	(%rax), %xmm0
	ucomiss	%xmm4, %xmm0
	jp	.L651
	pxor	%xmm2, %xmm2
	je	.L624
.L651:
	andps	.LC33(%rip), %xmm0
	movaps	%xmm1, %xmm2
	divss	%xmm0, %xmm2
.L624:
	movq	64(%rsp), %rax
	leaq	.LC18(%rip), %rdi
	movss	%xmm2, (%rax)
.LEHB50:
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L682
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.L561:
	.cfi_restore_state
	movaps	%xmm6, %xmm0
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L562
	.p2align 4,,10
	.p2align 3
.L671:
	subsd	.LC6(%rip), %xmm0
	movss	(%rsp), %xmm5
	cvttsd2sil	%xmm0, %eax
	pxor	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	movss	%xmm0, 0(%r13,%rbp,4)
	leal	1(%r14), %ebp
	pxor	%xmm0, %xmm0
	cvtsi2ssq	%rbp, %xmm0
	movq	%rbp, %r14
	comiss	%xmm0, %xmm5
	ja	.L576
	jmp	.L572
	.p2align 4,,10
	.p2align 3
.L603:
	movabsq	$-9223372036854775808, %rsi
	movaps	%xmm2, %xmm0
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	xorq	%rsi, %rax
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L639:
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L609:
	addl	$1, %r14d
	addq	$4, %r15
	cmpl	%r14d, 56(%rsp)
	jne	.L612
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L585:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L586
	.p2align 4,,10
	.p2align 3
.L638:
	movq	$0, 88(%rsp)
	xorl	%r13d, %r13d
	jmp	.L564
	.p2align 4,,10
	.p2align 3
.L597:
	subss	.LC30(%rip), %xmm2
	cvttss2siq	%xmm2, %rax
	btcq	$63, %rax
	jmp	.L598
	.p2align 4,,10
	.p2align 3
.L635:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L636
	.p2align 4,,10
	.p2align 3
.L560:
	movq	$0, (%r12)
	xorl	%ebp, %ebp
	movq	$0, 16(%r12)
	jmp	.L634
	.p2align 4,,10
	.p2align 3
.L680:
	testq	%rdx, %rdx
	jns	.L607
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L607:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L613:
	pxor	%xmm0, %xmm0
	cvttss2siq	60(%rsp), %r14
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	jmp	.L620
	.p2align 4,,10
	.p2align 3
.L670:
	movsd	.LC6(%rip), %xmm0
	mulsd	16(%rsp), %xmm0
	call	round@PLT
	addsd	.LC5(%rip), %xmm0
	movss	.LC31(%rip), %xmm6
	movss	%xmm6, 32(%rsp)
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 0(%r13)
	movss	(%rsp), %xmm0
	subss	%xmm6, %xmm0
	comiss	.LC30(%rip), %xmm0
	jnb	.L577
	cvttss2siq	%xmm0, %rax
.L578:
	movl	$0x00000000, 0(%r13,%rax,4)
	jmp	.L579
	.p2align 4,,10
	.p2align 3
.L640:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L617
.L577:
	subss	.LC30(%rip), %xmm0
	cvttss2siq	%xmm0, %rax
	btcq	$63, %rax
	jmp	.L578
.L681:
	testq	%rbx, %rbx
	jns	.L619
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L619:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE50:
.L678:
	leaq	.LC8(%rip), %rdi
.LEHB51:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE51:
.L682:
	call	__stack_chk_fail@PLT
.L679:
	leaq	.LC8(%rip), %rdi
.LEHB52:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE52:
.L588:
	movss	24(%rsp), %xmm3
	movss	%xmm3, 0
	ud2
.L644:
	endbr64
	movq	%rax, %rbx
	jmp	.L631
.L645:
	endbr64
	movq	%rax, %rbx
	jmp	.L628
.L643:
	endbr64
	movq	%rax, %rbp
	jmp	.L632
.L646:
	endbr64
.L677:
	movq	%rax, %rbx
	jmp	.L629
.L647:
	endbr64
	jmp	.L677
.L629:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L628
	call	_ZdlPvm@PLT
.L628:
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L631:
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rbp
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L632:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L633
	call	_ZdlPvm@PLT
.L633:
	movq	%rbp, %rdi
.LEHB53:
	call	_Unwind_Resume@PLT
.LEHE53:
	.cfi_endproc
.LFE5606:
	.section	.gcc_except_table._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA5606:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5606-.LLSDACSB5606
.LLSDACSB5606:
	.uleb128 .LEHB43-.LFB5606
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB5606
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L643-.LFB5606
	.uleb128 0
	.uleb128 .LEHB45-.LFB5606
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L644-.LFB5606
	.uleb128 0
	.uleb128 .LEHB46-.LFB5606
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L645-.LFB5606
	.uleb128 0
	.uleb128 .LEHB47-.LFB5606
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L646-.LFB5606
	.uleb128 0
	.uleb128 .LEHB48-.LFB5606
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L645-.LFB5606
	.uleb128 0
	.uleb128 .LEHB49-.LFB5606
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L647-.LFB5606
	.uleb128 0
	.uleb128 .LEHB50-.LFB5606
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L645-.LFB5606
	.uleb128 0
	.uleb128 .LEHB51-.LFB5606
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L643-.LFB5606
	.uleb128 0
	.uleb128 .LEHB52-.LFB5606
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L644-.LFB5606
	.uleb128 0
	.uleb128 .LEHB53-.LFB5606
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE5606:
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5380:
	.cfi_startproc
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
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	leaq	.LC19(%rip), %rdi
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movss	%xmm0, 12(%rsp)
	leaq	32(%rsp), %r13
	leaq	28(%rsp), %r14
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	movss	12(%rsp), %xmm0
	movq	%r14, %rdx
	movl	$0x00000000, 28(%rsp)
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	32(%rsp), %xmm4
	movq	48(%rsp), %rax
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm4, (%rbx)
	testq	%rdi, %rdi
	je	.L685
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L685
	call	_ZdlPvm@PLT
.L685:
	leaq	.LC21(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L687:
	movss	12(%rsp), %xmm1
	comiss	28(%rsp), %xmm1
	ja	.L691
.L701:
	movss	0(%rbp), %xmm0
	movss	.LC34(%rip), %xmm3
	andps	.LC33(%rip), %xmm0
	comiss	%xmm0, %xmm3
	ja	.L691
	comiss	.LC35(%rip), %xmm0
	jbe	.L700
.L691:
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	%rbp, %rcx
	movss	12(%rsp), %xmm0
	movq	%r14, %rdx
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbx), %rdi
	pxor	%xmm0, %xmm0
	movq	16(%rbx), %rsi
	movdqa	32(%rsp), %xmm2
	movq	48(%rsp), %rax
	movaps	%xmm0, 32(%rsp)
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	movups	%xmm2, (%rbx)
	testq	%rdi, %rdi
	je	.L687
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L687
	call	_ZdlPvm@PLT
	movss	12(%rsp), %xmm1
	comiss	28(%rsp), %xmm1
	jbe	.L701
	jmp	.L691
	.p2align 4,,10
	.p2align 3
.L700:
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L702
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
.L702:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5380:
	.size	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB6018:
	.cfi_startproc
	endbr64
	movq	%rdi, %r8
	movq	(%rdi), %rdi
	movl	$2567483615, %r10d
	movq	%r8, %rax
	leaq	1816(%r8), %r9
	movq	%r8, %rdx
	.p2align 4,,10
	.p2align 3
.L705:
	andq	$-2147483648, %rdi
	movq	%rdi, %rcx
	movq	8(%rdx), %rdi
	movq	%rdi, %rsi
	andl	$2147483647, %esi
	orq	%rcx, %rsi
	movq	%rsi, %rcx
	shrq	%rcx
	xorq	3176(%rdx), %rcx
	andl	$1, %esi
	je	.L704
	xorq	%r10, %rcx
.L704:
	movq	%rcx, (%rdx)
	addq	$8, %rdx
	cmpq	%r9, %rdx
	jne	.L705
	movq	1816(%r8), %rsi
	leaq	3168(%r8), %rdi
	movl	$2567483615, %r9d
	.p2align 4,,10
	.p2align 3
.L707:
	andq	$-2147483648, %rsi
	movq	%rsi, %rdx
	movq	1824(%rax), %rsi
	movq	%rsi, %rcx
	andl	$2147483647, %ecx
	orq	%rdx, %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	xorq	(%rax), %rdx
	andl	$1, %ecx
	je	.L706
	xorq	%r9, %rdx
.L706:
	movq	%rdx, 1816(%rax)
	addq	$8, %rax
	cmpq	%rdi, %rax
	jne	.L707
	movq	4984(%r8), %rax
	movq	(%r8), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%r8), %rdx
	testb	$1, %al
	je	.L708
	movl	$2567483615, %eax
	xorq	%rax, %rdx
.L708:
	movq	%rdx, 4984(%r8)
	movq	$0, 4992(%r8)
	ret
	.cfi_endproc
.LFE6018:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC36:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~~~ GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.align 8
.LC41:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~ END GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB43:
	.text
.LHOTB43:
	.p2align 4
	.globl	_Z14vec_gen_randomiii
	.type	_Z14vec_gen_randomiii, @function
_Z14vec_gen_randomiii:
.LFB5021:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5021
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-57344(%rsp), %r11
	.cfi_def_cfa 11, 57400
.LPSRL1:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL1
	.cfi_def_cfa_register 7
	subq	$2776, %rsp
	.cfi_def_cfa_offset 60176
	movl	%edi, 60(%rsp)
	movl	%esi, 44(%rsp)
	movl	%edx, 40(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 60104(%rsp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L720
	movq	.LC42(%rip), %xmm4
	leal	(%rsi,%rsi), %eax
	xorl	%r15d, %r15d
	leal	1(%rax), %esi
	subl	$1, %eax
	salq	$3, %rax
	movl	%esi, 56(%rsp)
	movslq	%esi, %rsi
	movq	%rsi, 24(%rsp)
	salq	$3, %rsi
	movq	%rax, 48(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, %xmm5
	movq	%rsi, 16(%rsp)
	punpcklqdq	%xmm5, %xmm4
	movaps	%xmm4, 64(%rsp)
.L755:
	leaq	.LC36(%rip), %rsi
	movl	%r15d, %edx
	movl	$1, %edi
	xorl	%eax, %eax
.LEHB54:
	call	__printf_chk@PLT
	movabsq	$1152921504606846975, %rsi
	cmpq	%rsi, 24(%rsp)
	ja	.L774
	movq	16(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE54:
	cmpq	$1, 24(%rsp)
	movq	%rax, %r14
	leaq	8(%rax), %r12
	je	.L723
	leaq	(%rax,%rbx), %rsi
	movq	%rsi, 32(%rsp)
	cmpq	%r12, %rsi
	je	.L724
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	memset@PLT
.L724:
	pxor	%xmm0, %xmm0
	cmpl	$1, 56(%rsp)
	cvtsi2sdl	44(%rsp), %xmm0
	movsd	%xmm0, (%r14)
	jbe	.L725
	movq	48(%rsp), %rax
	leaq	5088(%rsp), %rbp
	leaq	80(%rsp), %r13
	leaq	5104(%rsp), %rbx
	leaq	16(%r14,%rax), %rax
	movq	%rax, (%rsp)
.L739:
	movl	$27765, %edx
	movq	%rbx, 5088(%rsp)
	movq	%rbp, %rsi
	movq	%r13, %rdi
	movl	$1634100580, (%rbx)
	movw	%dx, 4(%rbx)
	movb	$116, 6(%rbx)
	movq	$7, 5096(%rsp)
	movb	$0, 5111(%rsp)
.LEHB55:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE55:
	movq	5088(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L726
	movq	5104(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L726:
	movq	%r13, %rdi
.LEHB56:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE56:
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, 5088(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L731:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, 0(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L731
	movq	$624, 10080(%rsp)
	movq	%rbp, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10080(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	5088(%rsp,%rax,8), %rax
	movq	%rcx, 10080(%rsp)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	js	.L732
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L733:
	pxor	%xmm2, %xmm2
	addsd	%xmm2, %xmm1
	cmpq	$623, %rcx
	ja	.L775
.L734:
	leaq	1(%rcx), %rax
	movq	%rax, 10080(%rsp)
	movq	5088(%rsp,%rcx,8), %rax
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rax, %rdx
	movq	%rdx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rax, %rdx
	js	.L735
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L736:
	mulsd	.LC37(%rip), %xmm0
	addsd	%xmm1, %xmm0
	mulsd	.LC38(%rip), %xmm0
	comisd	.LC5(%rip), %xmm0
	jnb	.L737
	mulsd	.LC39(%rip), %xmm0
	pxor	%xmm3, %xmm3
	addsd	%xmm3, %xmm0
	subsd	.LC10(%rip), %xmm0
	movsd	%xmm0, (%r12)
.L773:
	movq	%r13, %rdi
	addq	$8, %r12
	call	_ZNSt13random_device7_M_finiEv@PLT
	cmpq	%r12, (%rsp)
	jne	.L739
.L725:
	cmpl	$1, 40(%rsp)
	je	.L776
	movl	40(%rsp), %eax
	cmpl	$2, %eax
	je	.L742
	cmpl	$3, %eax
	je	.L777
	cmpl	$4, 40(%rsp)
	jne	.L741
	movl	%r15d, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	10096(%rsp), %rdi
	leaq	.LC27(%rip), %rcx
	call	__sprintf_chk@PLT
.L741:
	movl	%r15d, %edx
	leaq	.LC41(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LEHB57:
	call	__printf_chk@PLT
.LEHE57:
	leaq	5336(%rsp), %r13
	leaq	5088(%rsp), %rbp
	movq	%r13, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, 5336(%rsp)
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	movw	%ax, 5560(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 5568(%rsp)
	movaps	%xmm0, 5584(%rsp)
	movq	-24(%rbx), %rdi
	movq	$0, 5552(%rsp)
	addq	%rbp, %rdi
	movq	%rbx, 5088(%rsp)
	movq	%rax, (%rdi)
.LEHB58:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE58:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	5096(%rsp), %r12
	movq	%rax, 5088(%rsp)
	movq	%r12, %rdi
	addq	$40, %rax
	movq	%rax, 5336(%rsp)
.LEHB59:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE59:
	movq	%r12, %rsi
	movq	%r13, %rdi
.LEHB60:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	10096(%rsp), %rsi
	movl	$20, %edx
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	5088(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbp, %rdi
	testq	%rax, %rax
	je	.L778
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE60:
.L747:
	movq	32(%rsp), %rdx
	movq	%r14, %rsi
	movq	%rbp, %rdi
	subq	%r14, %rdx
.LEHB61:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE61:
	testq	%rax, %rax
	je	.L779
.L752:
	movdqa	64(%rsp), %xmm6
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r12, %rdi
	movq	%rax, 5336(%rsp)
	movaps	%xmm6, 5088(%rsp)
.LEHB62:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE62:
	leaq	5200(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	5152(%rsp), %rdi
	movq	%rax, 5096(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%r13, %rdi
	movq	%rbx, 5088(%rsp)
	movq	%rsi, 5088(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 5336(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
.L753:
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	addl	$1, %r15d
	call	_ZdlPvm@PLT
	cmpl	60(%rsp), %r15d
	jne	.L755
.L720:
	movq	60104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L780
	addq	$60120, %rsp
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
.L735:
	.cfi_restore_state
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L736
.L732:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L733
.L775:
	movq	%rbp, %rdi
	movsd	%xmm1, 8(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10080(%rsp), %rcx
	movsd	8(%rsp), %xmm1
	jmp	.L734
.L737:
	movq	.LC40(%rip), %rax
	movq	%rax, (%r12)
	jmp	.L773
.L778:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB63:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE63:
	jmp	.L747
.L742:
	movl	%r15d, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	10096(%rsp), %rdi
	leaq	.LC25(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L741
.L776:
	movl	%r15d, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	10096(%rsp), %rdi
	leaq	.LC24(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L741
.L777:
	movl	%r15d, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	10096(%rsp), %rdi
	leaq	.LC26(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L741
.L779:
	movq	5088(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbp, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB64:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE64:
	jmp	.L752
.L723:
	pxor	%xmm0, %xmm0
	movq	%r12, 32(%rsp)
	cvtsi2sdl	44(%rsp), %xmm0
	movsd	%xmm0, (%rax)
	jmp	.L725
.L774:
	leaq	.LC8(%rip), %rdi
.LEHB65:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE65:
.L780:
	call	__stack_chk_fail@PLT
.L765:
	endbr64
	movq	%rax, %rbp
	jmp	.L750
.L763:
	endbr64
	movq	%rax, %rbp
	jmp	.L728
.L766:
	endbr64
	movq	%rax, %rbp
	jmp	.L749
.L767:
	endbr64
	movq	%rax, %rdi
	jmp	.L754
.L764:
	endbr64
	movq	%rax, %rbp
	jmp	.L751
.L761:
	endbr64
	movq	%rax, %rbp
	jmp	.L730
.L760:
	endbr64
	movq	%rax, %rbp
	jmp	.L757
.L762:
	endbr64
	movq	%rax, %rbx
	jmp	.L758
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA5021:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5021-.LLSDATTD5021
.LLSDATTD5021:
	.byte	0x1
	.uleb128 .LLSDACSE5021-.LLSDACSB5021
.LLSDACSB5021:
	.uleb128 .LEHB54-.LFB5021
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB5021
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L763-.LFB5021
	.uleb128 0
	.uleb128 .LEHB56-.LFB5021
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L760-.LFB5021
	.uleb128 0
	.uleb128 .LEHB57-.LFB5021
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L761-.LFB5021
	.uleb128 0
	.uleb128 .LEHB58-.LFB5021
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L764-.LFB5021
	.uleb128 0
	.uleb128 .LEHB59-.LFB5021
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L765-.LFB5021
	.uleb128 0
	.uleb128 .LEHB60-.LFB5021
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L766-.LFB5021
	.uleb128 0
	.uleb128 .LEHB61-.LFB5021
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L762-.LFB5021
	.uleb128 0
	.uleb128 .LEHB62-.LFB5021
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L767-.LFB5021
	.uleb128 0x1
	.uleb128 .LEHB63-.LFB5021
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L766-.LFB5021
	.uleb128 0
	.uleb128 .LEHB64-.LFB5021
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L762-.LFB5021
	.uleb128 0
	.uleb128 .LEHB65-.LFB5021
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSE5021:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5021:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC5021
	.type	_Z14vec_gen_randomiii.cold, @function
_Z14vec_gen_randomiii.cold:
.LFSB5021:
.L749:
	.cfi_def_cfa_offset 60176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L750:
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%rbx, 5088(%rsp)
	movq	%rsi, 5088(%rsp,%rax)
.L751:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rdi
	movq	%rax, 5336(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
.L730:
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
.LEHB66:
	call	_Unwind_Resume@PLT
.LEHE66:
.L728:
	movq	5088(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L730
	movq	5104(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
	jmp	.L730
.L754:
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	leaq	5200(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	5152(%rsp), %rdi
	movq	%rax, 5096(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%r13, %rdi
	movq	%rbx, 5088(%rsp)
	movq	%rsi, 5088(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 5336(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L753
.L757:
	movq	%r13, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L730
.L758:
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	jmp	.L730
	.cfi_endproc
.LFE5021:
	.section	.gcc_except_table
	.align 4
.LLSDAC5021:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC5021-.LLSDATTDC5021
.LLSDATTDC5021:
	.byte	0x1
	.uleb128 .LLSDACSEC5021-.LLSDACSBC5021
.LLSDACSBC5021:
	.uleb128 .LEHB66-.LCOLDB43
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSEC5021:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATTC5021:
	.section	.text.unlikely
	.text
	.size	_Z14vec_gen_randomiii, .-_Z14vec_gen_randomiii
	.section	.text.unlikely
	.size	_Z14vec_gen_randomiii.cold, .-_Z14vec_gen_randomiii.cold
.LCOLDE43:
	.text
.LHOTE43:
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB6158:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	subq	%rax, %r13
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rax, %rbp
	movl	$4294967294, %eax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%rax, %r13
	jbe	.L798
	movl	$4294967295, %eax
	cmpq	%rax, %r13
	je	.L788
.L796:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	jbe	.L789
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L789:
	leaq	1(%rax), %rdx
	movq	(%r12,%rax,8), %rax
	movq	%rdx, 4992(%r12)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	setc	%al
	movzbl	%al, %eax
	cmpq	%rbx, %r13
	jb	.L796
	testq	%rax, %rax
	jne	.L796
.L787:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leal	0(%rbp,%rbx), %eax
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
.L798:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	addq	$1, %r13
	movl	%r13d, %r15d
	cmpq	$623, %rax
	ja	.L799
.L783:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%ebx, %r13d
	jbe	.L784
	movl	%r13d, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L786
	jmp	.L784
	.p2align 4,,10
	.p2align 3
.L785:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%ebx, %r14d
	jbe	.L784
.L786:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L785
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L785
	.p2align 4,,10
	.p2align 3
.L784:
	shrq	$32, %rbx
	jmp	.L787
	.p2align 4,,10
	.p2align 3
.L788:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L800
.L793:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	jmp	.L787
	.p2align 4,,10
	.p2align 3
.L799:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L783
	.p2align 4,,10
	.p2align 3
.L800:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L793
	.cfi_endproc
.LFE6158:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0:
.LFB6161:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%esi, %rax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rax, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%edx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	%rax, %rbp
	movl	$4294967294, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%rax, %rbp
	jbe	.L821
	movl	$4294967295, %eax
	cmpq	%rax, %rbp
	je	.L808
.L812:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r13), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	ja	.L822
.L809:
	leaq	1(%rax), %rcx
	movq	0(%r13,%rax,8), %rax
	movq	%rcx, 4992(%r13)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	jc	.L812
	salq	$32, %rbx
	cmpq	$623, %rcx
	ja	.L823
.L813:
	leaq	1(%rcx), %rax
	movq	%rax, 4992(%r13)
	movq	0(%r13,%rcx,8), %rax
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	setc	%al
	movzbl	%al, %eax
	cmpq	%rbx, %rbp
	jb	.L812
	testq	%rax, %rax
	jne	.L812
.L807:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leal	(%r12,%rbx), %eax
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
.L822:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L809
	.p2align 4,,10
	.p2align 3
.L823:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rcx
	jmp	.L813
	.p2align 4,,10
	.p2align 3
.L821:
	movq	4992(%rdi), %rax
	addq	$1, %rbp
	movl	%ebp, %r15d
	cmpq	$623, %rax
	ja	.L824
.L803:
	movq	0(%r13,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r13)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%rbp, %rbx
	cmpl	%ebx, %ebp
	jbe	.L804
	movl	%ebp, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L806
	jmp	.L804
	.p2align 4,,10
	.p2align 3
.L805:
	movq	0(%r13,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r13)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%rbp, %rbx
	cmpl	%ebx, %r14d
	jbe	.L804
.L806:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L805
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L805
	.p2align 4,,10
	.p2align 3
.L804:
	shrq	$32, %rbx
	jmp	.L807
	.p2align 4,,10
	.p2align 3
.L808:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L825
.L817:
	movq	0(%r13,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r13)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	jmp	.L807
	.p2align 4,,10
	.p2align 3
.L824:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L803
.L825:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L817
	.cfi_endproc
.LFE6161:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	.section	.rodata._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_.str1.1,"aMS",@progbits,1
.LC44:
	.string	"\n -> START GENERATE_V"
.LC46:
	.string	"  END GENERATE_V "
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align 4
	.weak	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5379:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5379
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$1944, %rsp
	.cfi_def_cfa_offset 10192
	movq	%rsi, 24(%rsp)
	movslq	%edx, %r14
	movq	%rdi, %r12
	leaq	.LC44(%rip), %rdi
	movq	%rcx, 16(%rsp)
	movsd	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 10120(%rsp)
	xorl	%eax, %eax
.LEHB67:
	call	puts@PLT
	movq	%r14, %rax
	shrq	$60, %rax
	jne	.L894
	pxor	%xmm0, %xmm0
	movq	%r14, %r13
	movq	$0, 64(%rsp)
	leaq	0(,%r14,8), %rbp
	movaps	%xmm0, 48(%rsp)
	testq	%r14, %r14
	je	.L828
	movq	%rbp, %rdi
	call	_Znwm@PLT
.LEHE67:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %rbx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	cmpq	$1, %r14
	je	.L863
	cmpq	%rdi, %rbx
	je	.L829
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L829:
	movq	16(%rsp), %rdx
	movsd	(%rsp), %xmm0
	leaq	48(%rsp), %rdi
	movl	%r13d, %esi
	movq	%rbx, 56(%rsp)
.LEHB68:
	call	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE68:
	movl	%r13d, %eax
	pxor	%xmm1, %xmm1
	shrl	%eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, 32(%rsp)
	movl	%r13d, %eax
	andl	$-2, %eax
	movl	%eax, 44(%rsp)
	movslq	%eax, %rbx
	salq	$3, %rbx
	.p2align 4,,10
	.p2align 3
.L830:
	movsd	(%rsp), %xmm6
	comisd	%xmm1, %xmm6
	ja	.L856
	movq	16(%rsp), %rax
	movsd	.LC12(%rip), %xmm7
	movsd	(%rax), %xmm0
	andpd	.LC4(%rip), %xmm0
	comisd	%xmm0, %xmm7
	ja	.L856
	comisd	.LC13(%rip), %xmm0
	jbe	.L895
.L856:
	leaq	5120(%rsp), %rbp
	leaq	112(%rsp), %r14
	movl	$27765, %eax
	movl	$1634100580, 5136(%rsp)
	leaq	5136(%rsp), %r15
	movq	%rbp, %rsi
	movq	%r14, %rdi
	movw	%ax, 5140(%rsp)
	movq	%r15, 5120(%rsp)
	movb	$116, 5142(%rsp)
	movq	$7, 5128(%rsp)
	movb	$0, 5143(%rsp)
.LEHB69:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE69:
	movq	5120(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L831
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L831:
	movq	%r14, %rdi
.LEHB70:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, 5120(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L836:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, 0(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L836
	movl	$1000, %edx
	movq	%rbp, %rdi
	movl	$-1000, %esi
	movq	$624, 10112(%rsp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC45(%rip), %xmm0
	testl	%r13d, %r13d
	jle	.L896
	movq	24(%rsp), %rax
	movq	(%r12), %rcx
	leal	-1(%r13), %edi
	movq	48(%rsp), %rsi
	movsd	.LC5(%rip), %xmm5
	movq	(%rax), %rdx
	leaq	8(%rsi), %r8
	movapd	%xmm5, %xmm2
	divsd	%xmm0, %xmm2
	cmpq	%r8, %rcx
	setne	%al
	cmpq	%r8, %rdx
	setne	%r8b
	andl	%r8d, %eax
	leaq	8(%rcx), %r8
	cmpq	%r8, %rdx
	setne	%r8b
	testb	%r8b, %al
	je	.L841
	cmpl	$1, %edi
	jbe	.L841
	movapd	%xmm0, %xmm4
	movapd	%xmm2, %xmm3
	movq	32(%rsp), %rdi
	xorl	%eax, %eax
	unpcklpd	%xmm4, %xmm4
	unpcklpd	%xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L842:
	movupd	(%rsi,%rax), %xmm1
	mulpd	%xmm4, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movups	%xmm3, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L842
	cmpl	%r13d, 44(%rsp)
	je	.L844
	mulsd	(%rsi,%rbx), %xmm0
	movsd	%xmm0, (%rcx,%rbx)
	movsd	%xmm2, (%rdx,%rbx)
.L844:
	movsd	(%rsp), %xmm0
	movsd	%xmm5, 8(%rsp)
	call	log@PLT
	movsd	.LC47(%rip), %xmm1
	movsd	.LC3(%rip), %xmm2
	divsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	movsd	8(%rsp), %xmm5
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.L838
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm2
	andpd	%xmm5, %xmm2
	addsd	%xmm2, %xmm1
	movsd	.LC47(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
.L838:
	addsd	%xmm5, %xmm0
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	$0, 96(%rsp)
	movq	%rax, %rdx
	cvttsd2siq	%xmm0, %r15
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	subq	%rsi, %rdx
	je	.L897
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbp
	cmpq	%rax, %rdx
	ja	.L898
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE70:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L840:
	movq	%rcx, %xmm0
	addq	%rcx, %rbp
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	cmpq	%rsi, %rax
	je	.L850
	movq	%rcx, %rdi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L850:
	addq	%rdx, %rcx
	leaq	80(%rsp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, 88(%rsp)
.LEHB71:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE71:
	movq	16(%rsp), %r15
	movq	80(%rsp), %rdi
	movsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L851
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movsd	(%r15), %xmm0
.L851:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L864
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L853:
	movsd	(%rsi,%rax,8), %xmm1
	andpd	.LC4(%rip), %xmm1
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	addsd	%xmm1, %xmm2
	cmpq	%rcx, %rax
	jb	.L853
.L852:
	pxor	%xmm7, %xmm7
	ucomisd	%xmm7, %xmm0
	jp	.L870
	pxor	%xmm1, %xmm1
	je	.L854
.L870:
	andpd	.LC4(%rip), %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
.L854:
	movq	%r14, %rdi
	movsd	%xmm1, 8(%rsp)
	call	_ZNSt13random_device7_M_finiEv@PLT
	movsd	8(%rsp), %xmm1
	jmp	.L830
.L897:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L840
.L841:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L846:
	movsd	(%rsi,%rax,8), %xmm1
	movq	%rax, %r8
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	movsd	%xmm2, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L846
	jmp	.L844
.L896:
	movsd	.LC5(%rip), %xmm5
	jmp	.L844
.L864:
	pxor	%xmm2, %xmm2
	jmp	.L852
.L898:
	testq	%rdx, %rdx
	jns	.L849
.LEHB72:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE72:
.L895:
	leaq	.LC46(%rip), %rdi
.LEHB73:
	call	puts@PLT
.LEHE73:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L826
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L826:
	movq	10120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L899
	addq	$10136, %rsp
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
.L828:
	.cfi_restore_state
	movq	$0, 48(%rsp)
	xorl	%ebx, %ebx
	movq	$0, 64(%rsp)
	jmp	.L829
.L849:
.LEHB74:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE74:
.L863:
	movq	%rdi, %rbx
	jmp	.L829
.L894:
	leaq	.LC8(%rip), %rdi
.LEHB75:
	call	_ZSt20__throw_length_errorPKc@PLT
.L899:
	call	__stack_chk_fail@PLT
.L866:
	endbr64
	movq	%rax, %rbp
	jmp	.L835
.L868:
	endbr64
	movq	%rax, %rbp
	jmp	.L858
.L833:
	movq	5120(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L835
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L835:
	movq	48(%rsp), %rdi
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L861
	call	_ZdlPvm@PLT
.L861:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE75:
.L858:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L860
	call	_ZdlPvm@PLT
.L860:
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L835
.L869:
	endbr64
	movq	%rax, %rbp
	jmp	.L833
.L867:
	endbr64
	movq	%rax, %rbp
	jmp	.L860
	.cfi_endproc
.LFE5379:
	.section	.gcc_except_table
.LLSDA5379:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5379-.LLSDACSB5379
.LLSDACSB5379:
	.uleb128 .LEHB67-.LFB5379
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB5379
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L866-.LFB5379
	.uleb128 0
	.uleb128 .LEHB69-.LFB5379
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L869-.LFB5379
	.uleb128 0
	.uleb128 .LEHB70-.LFB5379
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L867-.LFB5379
	.uleb128 0
	.uleb128 .LEHB71-.LFB5379
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L868-.LFB5379
	.uleb128 0
	.uleb128 .LEHB72-.LFB5379
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L867-.LFB5379
	.uleb128 0
	.uleb128 .LEHB73-.LFB5379
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L866-.LFB5379
	.uleb128 0
	.uleb128 .LEHB74-.LFB5379
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L867-.LFB5379
	.uleb128 0
	.uleb128 .LEHB75-.LFB5379
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE5379:
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.rodata._Z13vec_gen_printIdEviiT_S0_i.str1.8,"aMS",@progbits,1
	.align 8
.LC48:
	.string	"\n~~~~~~~~~~~~~~~~~~~~~~~~~ END OF GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.p2align 4
	.weak	_Z13vec_gen_printIdEviiT_S0_i
	.type	_Z13vec_gen_printIdEviiT_S0_i, @function
_Z13vec_gen_printIdEviiT_S0_i:
.LFB5368:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5368
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-49152(%rsp), %r11
	.cfi_def_cfa 11, 49208
.LPSRL2:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL2
	.cfi_def_cfa_register 7
	subq	$1528, %rsp
	.cfi_def_cfa_offset 50736
	movl	%edi, 68(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm0, 40(%rsp)
	movsd	%xmm1, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 50664(%rsp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L900
	movslq	%esi, %rax
	movl	%esi, %r13d
	xorl	%ebx, %ebx
	movq	.LC42(%rip), %xmm3
	movq	%rax, (%rsp)
	leaq	0(,%rax,8), %r15
	leal	1(%rsi,%rsi), %eax
	cltq
	movq	%rax, 24(%rsp)
	salq	$3, %rax
	movq	%rax, 32(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, %xmm4
	punpcklqdq	%xmm4, %xmm3
	movaps	%xmm3, 48(%rsp)
.L932:
	movl	%ebx, %edx
	leaq	.LC36(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LEHB76:
	call	__printf_chk@PLT
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, (%rsp)
	ja	.L967
	movq	(%rsp), %r14
	pxor	%xmm0, %xmm0
	movq	$0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	testq	%r14, %r14
	je	.L903
	movq	%r15, %rdi
	call	_Znwm@PLT
.LEHE76:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	cmpq	$1, %r14
	je	.L940
	cmpq	%rbp, %rdi
	je	.L904
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L904:
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	movq	%rbp, 88(%rsp)
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
.LEHB77:
	call	_Znwm@PLT
.LEHE77:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	cmpq	$1, (%rsp)
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 128(%rsp)
	leaq	8(%rax), %rdi
	movaps	%xmm0, 112(%rsp)
	je	.L968
	cmpq	%rdi, %rbp
	je	.L905
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L905:
	movsd	40(%rsp), %xmm0
	leaq	72(%rsp), %rcx
	leaq	112(%rsp), %rsi
	movl	%r13d, %edx
	leaq	80(%rsp), %rdi
	movq	%rbp, 120(%rsp)
.LEHB78:
	call	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, 24(%rsp)
	ja	.L969
	movq	32(%rsp), %r14
	movq	%r14, %rdi
	call	_Znwm@PLT
.LEHE78:
	leaq	8(%rax), %rdi
	cmpq	$1, 24(%rsp)
	movq	%rax, %rbp
	movq	%rdi, 16(%rsp)
	je	.L907
	leaq	(%rax,%r14), %rcx
	movq	%rcx, 16(%rsp)
	cmpq	%rdi, %rcx
	je	.L907
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L907:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	movsd	%xmm0, 0(%rbp)
	testl	%r13d, %r13d
	je	.L912
	movq	80(%rsp), %r8
	movq	112(%rsp), %rdi
	leal	1(%r13), %esi
	xorl	%eax, %eax
	movl	%r13d, %ecx
	.p2align 4,,10
	.p2align 3
.L911:
	movsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	movsd	%xmm0, 8(%rbp,%rax,8)
	movsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	movsd	%xmm0, 0(%rbp,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L911
.L912:
	cmpl	$1, 64(%rsp)
	je	.L970
	movl	64(%rsp), %eax
	cmpl	$2, %eax
	je	.L914
	cmpl	$3, %eax
	je	.L971
	cmpl	$4, 64(%rsp)
	jne	.L913
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	656(%rsp), %rdi
	leaq	.LC27(%rip), %rcx
	call	__sprintf_chk@PLT
.L913:
	leaq	392(%rsp), %r14
	leaq	144(%rsp), %r12
	movq	%r14, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%r12, 8(%rsp)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 624(%rsp)
	movq	%rax, 392(%rsp)
	xorl	%eax, %eax
	movw	%ax, 616(%rsp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 640(%rsp)
	movq	-24(%rax), %rdi
	movq	%rax, 144(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 608(%rsp)
	addq	%r12, %rdi
	movq	%rax, (%rdi)
.LEHB79:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE79:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	152(%rsp), %r12
	movq	%rax, 144(%rsp)
	movq	%r12, %rdi
	addq	$40, %rax
	movq	%rax, 392(%rsp)
.LEHB80:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE80:
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB81:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	656(%rsp), %rsi
	movl	$20, %edx
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	144(%rsp), %rdx
	movq	8(%rsp), %rdi
	addq	-24(%rdx), %rdi
	testq	%rax, %rax
	je	.L972
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE81:
.L919:
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	subq	%rbp, %rdx
.LEHB82:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
	testq	%rax, %rax
	je	.L973
.L925:
	movl	%ebx, %edx
	leaq	.LC48(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LEHE82:
	movdqa	48(%rsp), %xmm2
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r12, %rdi
	movq	%rax, 392(%rsp)
	movaps	%xmm2, 144(%rsp)
.LEHB83:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE83:
.L966:
	leaq	256(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	208(%rsp), %rdi
	movq	%rax, 152(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r14, %rdi
	movq	%rax, 144(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 144(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 392(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L928
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L928:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L929
	movq	96(%rsp), %rsi
	addl	$1, %ebx
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, 68(%rsp)
	jne	.L932
.L900:
	movq	50664(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L974
	addq	$50680, %rsp
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
.L903:
	.cfi_restore_state
	movq	%r15, 96(%rsp)
	xorl	%ebp, %ebp
	movq	$0, 112(%rsp)
	movq	%r15, 128(%rsp)
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L929:
	addl	$1, %ebx
	cmpl	68(%rsp), %ebx
	jne	.L932
	jmp	.L900
	.p2align 4,,10
	.p2align 3
.L972:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB84:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE84:
	jmp	.L919
	.p2align 4,,10
	.p2align 3
.L970:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	656(%rsp), %rdi
	leaq	.LC24(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L971:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	656(%rsp), %rdi
	leaq	.LC26(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L914:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	656(%rsp), %rdi
	leaq	.LC25(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L913
	.p2align 4,,10
	.p2align 3
.L940:
	movq	%rdi, %rbp
	jmp	.L904
	.p2align 4,,10
	.p2align 3
.L968:
	movq	%rdi, %rbp
	jmp	.L905
	.p2align 4,,10
	.p2align 3
.L973:
	movq	144(%rsp), %rax
	movq	8(%rsp), %rdi
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB85:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE85:
	jmp	.L925
.L967:
	leaq	.LC8(%rip), %rdi
.LEHB86:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE86:
.L969:
	leaq	.LC8(%rip), %rdi
.LEHB87:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE87:
.L974:
	call	__stack_chk_fail@PLT
.L945:
	endbr64
	movq	%rax, %rbx
	jmp	.L933
.L943:
	endbr64
	movq	%rax, %rbp
	jmp	.L936
.L944:
	endbr64
	movq	%rax, %rbp
	jmp	.L934
.L933:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L924:
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZdlPvm@PLT
.L934:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L936
	call	_ZdlPvm@PLT
.L936:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L937
	call	_ZdlPvm@PLT
.L937:
	movq	%rbp, %rdi
.LEHB88:
	call	_Unwind_Resume@PLT
.LEHE88:
.L948:
	endbr64
	movq	%rax, %rbx
	jmp	.L921
.L947:
	endbr64
	movq	%rax, %rbx
	jmp	.L922
.L921:
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L922:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 144(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 144(%rsp,%rax)
.L923:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 392(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L924
.L946:
	endbr64
	movq	%rax, %rbx
	jmp	.L923
.L949:
	endbr64
	movq	%rax, %rdi
.L927:
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L966
	.cfi_endproc
.LFE5368:
	.section	.gcc_except_table
	.align 4
.LLSDA5368:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5368-.LLSDATTD5368
.LLSDATTD5368:
	.byte	0x1
	.uleb128 .LLSDACSE5368-.LLSDACSB5368
.LLSDACSB5368:
	.uleb128 .LEHB76-.LFB5368
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB5368
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L943-.LFB5368
	.uleb128 0
	.uleb128 .LEHB78-.LFB5368
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L944-.LFB5368
	.uleb128 0
	.uleb128 .LEHB79-.LFB5368
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L946-.LFB5368
	.uleb128 0
	.uleb128 .LEHB80-.LFB5368
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L947-.LFB5368
	.uleb128 0
	.uleb128 .LEHB81-.LFB5368
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L948-.LFB5368
	.uleb128 0
	.uleb128 .LEHB82-.LFB5368
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L945-.LFB5368
	.uleb128 0
	.uleb128 .LEHB83-.LFB5368
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L949-.LFB5368
	.uleb128 0x1
	.uleb128 .LEHB84-.LFB5368
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L948-.LFB5368
	.uleb128 0
	.uleb128 .LEHB85-.LFB5368
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L945-.LFB5368
	.uleb128 0
	.uleb128 .LEHB86-.LFB5368
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB5368
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L944-.LFB5368
	.uleb128 0
	.uleb128 .LEHB88-.LFB5368
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
.LLSDACSE5368:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5368:
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.size	_Z13vec_gen_printIdEviiT_S0_i, .-_Z13vec_gen_printIdEviiT_S0_i
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.p2align 4
	.weak	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.type	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, @function
_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_:
.LFB5370:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5370
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$1960, %rsp
	.cfi_def_cfa_offset 10208
	movq	%rsi, 32(%rsp)
	movslq	%edx, %r14
	movq	%rcx, 24(%rsp)
	movq	%r8, 56(%rsp)
	movsd	%xmm0, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 10136(%rsp)
	movq	%r14, %rax
	shrq	$60, %rax
	jne	.L1043
	pxor	%xmm0, %xmm0
	movq	%rdi, %r12
	movq	%r14, %r13
	movq	$0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	leaq	0(,%r14,8), %rbp
	testq	%r14, %r14
	je	.L977
	movq	%rbp, %rdi
.LEHB89:
	call	_Znwm@PLT
.LEHE89:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %rbx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	cmpq	$1, %r14
	je	.L1012
	cmpq	%rdi, %rbx
	je	.L978
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L978:
	movq	24(%rsp), %rdx
	leaq	64(%rsp), %rdi
	movl	%r13d, %esi
	movq	%rbx, 72(%rsp)
	movsd	8(%rsp), %xmm0
.LEHB90:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE90:
	movl	%r13d, %eax
	pxor	%xmm1, %xmm1
	shrl	%eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, 40(%rsp)
	movl	%r13d, %eax
	andl	$-2, %eax
	movl	%eax, 52(%rsp)
	movslq	%eax, %rbx
	salq	$3, %rbx
	.p2align 4,,10
	.p2align 3
.L979:
	movsd	8(%rsp), %xmm6
	comisd	%xmm1, %xmm6
	ja	.L1005
	movq	24(%rsp), %rax
	movsd	.LC12(%rip), %xmm7
	movsd	(%rax), %xmm0
	andpd	.LC4(%rip), %xmm0
	comisd	%xmm0, %xmm7
	ja	.L1005
	comisd	.LC13(%rip), %xmm0
	jbe	.L1044
.L1005:
	leaq	5136(%rsp), %rbp
	leaq	128(%rsp), %r14
	movl	$27765, %eax
	movl	$1634100580, 5152(%rsp)
	leaq	5152(%rsp), %r15
	movq	%rbp, %rsi
	movq	%r14, %rdi
	movw	%ax, 5156(%rsp)
	movq	%r15, 5136(%rsp)
	movb	$116, 5158(%rsp)
	movq	$7, 5144(%rsp)
	movb	$0, 5159(%rsp)
.LEHB91:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE91:
	movq	5136(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L980
	movq	5152(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L980:
	movq	%r14, %rdi
.LEHB92:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, 5136(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L985:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, 0(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L985
	movl	$1000, %edx
	movq	%rbp, %rdi
	movl	$-1000, %esi
	movq	$624, 10128(%rsp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC45(%rip), %xmm0
	testl	%r13d, %r13d
	jle	.L1045
	movq	32(%rsp), %rax
	movq	(%r12), %rcx
	leal	-1(%r13), %edi
	movq	64(%rsp), %rsi
	movsd	.LC5(%rip), %xmm5
	movq	(%rax), %rdx
	leaq	8(%rsi), %r8
	movapd	%xmm5, %xmm2
	divsd	%xmm0, %xmm2
	cmpq	%r8, %rcx
	setne	%al
	cmpq	%r8, %rdx
	setne	%r8b
	andl	%r8d, %eax
	leaq	8(%rcx), %r8
	cmpq	%r8, %rdx
	setne	%r8b
	testb	%r8b, %al
	je	.L990
	cmpl	$1, %edi
	jbe	.L990
	movapd	%xmm0, %xmm4
	movapd	%xmm2, %xmm3
	movq	40(%rsp), %rdi
	xorl	%eax, %eax
	unpcklpd	%xmm4, %xmm4
	unpcklpd	%xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L991:
	movupd	(%rsi,%rax), %xmm1
	mulpd	%xmm4, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movups	%xmm3, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L991
	cmpl	%r13d, 52(%rsp)
	je	.L993
	mulsd	(%rsi,%rbx), %xmm0
	movsd	%xmm0, (%rcx,%rbx)
	movsd	%xmm2, (%rdx,%rbx)
.L993:
	movsd	8(%rsp), %xmm0
	movsd	%xmm5, 16(%rsp)
	call	log@PLT
	movsd	.LC47(%rip), %xmm1
	movsd	.LC3(%rip), %xmm2
	divsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	movsd	16(%rsp), %xmm5
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.L987
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm2
	andpd	%xmm5, %xmm2
	addsd	%xmm2, %xmm1
	movsd	.LC47(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
.L987:
	addsd	%xmm5, %xmm0
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	$0, 112(%rsp)
	movq	%rax, %rdx
	cvttsd2siq	%xmm0, %r15
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	subq	%rsi, %rdx
	je	.L1046
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbp
	cmpq	%rax, %rdx
	ja	.L1047
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE92:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L989:
	movq	%rcx, %xmm0
	addq	%rcx, %rbp
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L999
	movq	%rcx, %rdi
	movq	%rdx, 16(%rsp)
	call	memmove@PLT
	movq	16(%rsp), %rdx
	movq	%rax, %rcx
.L999:
	addq	%rdx, %rcx
	leaq	96(%rsp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, 104(%rsp)
.LEHB93:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE93:
	movq	24(%rsp), %r15
	movq	96(%rsp), %rdi
	movsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L1000
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movsd	(%r15), %xmm0
.L1000:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L1013
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1002:
	movsd	(%rsi,%rax,8), %xmm1
	andpd	.LC4(%rip), %xmm1
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	addsd	%xmm1, %xmm2
	cmpq	%rcx, %rax
	jb	.L1002
.L1001:
	pxor	%xmm7, %xmm7
	ucomisd	%xmm7, %xmm0
	jp	.L1019
	pxor	%xmm1, %xmm1
	je	.L1003
.L1019:
	andpd	.LC4(%rip), %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
.L1003:
	movq	%r14, %rdi
	movsd	%xmm1, 16(%rsp)
	call	_ZNSt13random_device7_M_finiEv@PLT
	movsd	16(%rsp), %xmm1
	jmp	.L979
.L1046:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L989
.L990:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L995:
	movsd	(%rsi,%rax,8), %xmm1
	movq	%rax, %r8
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	movsd	%xmm2, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L995
	jmp	.L993
.L1045:
	movsd	.LC5(%rip), %xmm5
	jmp	.L993
.L1013:
	pxor	%xmm2, %xmm2
	jmp	.L1001
.L1047:
	testq	%rdx, %rdx
	jns	.L998
.LEHB94:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L1044:
	movq	56(%rsp), %rax
	movq	64(%rsp), %rdi
	movsd	%xmm1, (%rax)
	testq	%rdi, %rdi
	je	.L975
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L975:
	movq	10136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1048
	addq	$10152, %rsp
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
.L977:
	.cfi_restore_state
	movq	$0, 64(%rsp)
	xorl	%ebx, %ebx
	movq	$0, 80(%rsp)
	jmp	.L978
.L998:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE94:
.L1012:
	movq	%rdi, %rbx
	jmp	.L978
.L1043:
	leaq	.LC8(%rip), %rdi
.LEHB95:
	call	_ZSt20__throw_length_errorPKc@PLT
.L1048:
	call	__stack_chk_fail@PLT
.L1015:
	endbr64
	movq	%rax, %rbp
	jmp	.L984
.L1017:
	endbr64
	movq	%rax, %rbp
	jmp	.L1007
.L982:
	movq	5136(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L984
	movq	5152(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L984:
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1010
	call	_ZdlPvm@PLT
.L1010:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE95:
.L1007:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1009
	call	_ZdlPvm@PLT
.L1009:
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L984
.L1018:
	endbr64
	movq	%rax, %rbp
	jmp	.L982
.L1016:
	endbr64
	movq	%rax, %rbp
	jmp	.L1009
	.cfi_endproc
.LFE5370:
	.section	.gcc_except_table
.LLSDA5370:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5370-.LLSDACSB5370
.LLSDACSB5370:
	.uleb128 .LEHB89-.LFB5370
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB90-.LFB5370
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L1015-.LFB5370
	.uleb128 0
	.uleb128 .LEHB91-.LFB5370
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L1018-.LFB5370
	.uleb128 0
	.uleb128 .LEHB92-.LFB5370
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L1016-.LFB5370
	.uleb128 0
	.uleb128 .LEHB93-.LFB5370
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L1017-.LFB5370
	.uleb128 0
	.uleb128 .LEHB94-.LFB5370
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L1016-.LFB5370
	.uleb128 0
	.uleb128 .LEHB95-.LFB5370
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
.LLSDACSE5370:
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.size	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, .-_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.p2align 4
	.weak	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.type	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, @function
_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi:
.LFB5367:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5367
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-49152(%rsp), %r11
	.cfi_def_cfa 11, 49208
.LPSRL3:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL3
	.cfi_def_cfa_register 7
	subq	$1544, %rsp
	.cfi_def_cfa_offset 50752
	movl	%edi, 80(%rsp)
	movl	%edx, 20(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm1, 88(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 50680(%rsp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L1049
	movl	%r8d, %ebx
	movslq	%esi, %rax
	movl	%esi, %r13d
	movabsq	$1152921504606846975, %rcx
	imull	%edi, %ebx
	movq	%rax, 40(%rsp)
	movl	%ebx, 84(%rsp)
	cmpq	%rcx, %rax
	ja	.L1051
	leaq	0(,%rax,8), %r15
	leal	1(%rsi,%rsi), %eax
	movq	.LC42(%rip), %xmm3
	movl	$0, 16(%rsp)
	cltq
	movq	%rax, 24(%rsp)
	salq	$3, %rax
	movq	%rax, 32(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, %xmm4
	punpcklqdq	%xmm4, %xmm3
	movaps	%xmm3, 64(%rsp)
.L1052:
	movq	40(%rsp), %r14
	pxor	%xmm0, %xmm0
	movq	$0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	testq	%r14, %r14
	je	.L1053
	movq	%r15, %rdi
.LEHB96:
	call	_Znwm@PLT
.LEHE96:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	$1, %r14
	je	.L1089
	cmpq	%rbp, %rdi
	je	.L1054
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1054:
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	movq	%rbp, 104(%rsp)
	movq	$0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
.LEHB97:
	call	_Znwm@PLT
.LEHE97:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	leaq	8(%rax), %rdi
	cmpq	$1, 40(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 144(%rsp)
	movq	$0x000000000, (%rax)
	movaps	%xmm0, 128(%rsp)
	je	.L1116
	cmpq	%rdi, %rbp
	je	.L1055
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1055:
	movq	56(%rsp), %rax
	movslq	%ebx, %rbx
	leaq	88(%rsp), %rcx
	movl	%r13d, %edx
	movsd	48(%rsp), %xmm0
	leaq	128(%rsp), %rsi
	leaq	96(%rsp), %rdi
	movq	%rbp, 136(%rsp)
	movq	(%rax), %rax
	leaq	(%rax,%rbx,8), %r8
.LEHB98:
	call	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	movabsq	$1152921504606846975, %rbx
	cmpq	%rbx, 24(%rsp)
	ja	.L1117
	movq	32(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE98:
	leaq	8(%rax), %rdi
	cmpq	$1, 24(%rsp)
	movq	%rax, %rbp
	movq	%rdi, 8(%rsp)
	je	.L1057
	leaq	(%rax,%rbx), %rcx
	movq	%rcx, 8(%rsp)
	cmpq	%rdi, %rcx
	je	.L1057
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1057:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%r13d, %xmm0
	movsd	%xmm0, 0(%rbp)
	testl	%r13d, %r13d
	je	.L1062
	movq	96(%rsp), %r8
	leal	1(%r13), %esi
	movl	%r13d, %ecx
	xorl	%eax, %eax
	movq	128(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L1061:
	movsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	movsd	%xmm0, 8(%rbp,%rax,8)
	movsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	movsd	%xmm0, 0(%rbp,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L1061
.L1062:
	cmpl	$1, 20(%rsp)
	je	.L1118
	movl	20(%rsp), %eax
	cmpl	$2, %eax
	je	.L1064
	cmpl	$3, %eax
	je	.L1119
	cmpl	$4, 20(%rsp)
	jne	.L1063
	movl	16(%rsp), %r8d
	leaq	672(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L1063:
	leaq	408(%rsp), %r14
	leaq	160(%rsp), %rbx
	movq	%r14, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rax, 408(%rsp)
	xorl	%eax, %eax
	movw	%ax, 632(%rsp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 640(%rsp)
	movaps	%xmm0, 656(%rsp)
	movq	-24(%rax), %rdi
	movq	%rax, 160(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 624(%rsp)
	addq	%rbx, %rdi
	movq	%rax, (%rdi)
.LEHB99:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE99:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	168(%rsp), %r12
	movq	%rax, 160(%rsp)
	movq	%r12, %rdi
	addq	$40, %rax
	movq	%rax, 408(%rsp)
.LEHB100:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE100:
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB101:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	672(%rsp), %rsi
	movl	$20, %edx
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	160(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	.L1120
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE101:
.L1069:
	movq	8(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	subq	%rbp, %rdx
.LEHB102:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE102:
	testq	%rax, %rax
	je	.L1121
.L1075:
	movdqa	64(%rsp), %xmm2
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r12, %rdi
	movq	%rax, 408(%rsp)
	movaps	%xmm2, 160(%rsp)
.LEHB103:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE103:
.L1115:
	leaq	272(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	224(%rsp), %rdi
	movq	%rax, 168(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	movq	%r14, %rdi
	movq	%rax, 160(%rsp)
	movq	-24(%rax), %rax
	movq	%rbx, 160(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 408(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1078
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1078:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1079
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, 16(%rsp)
	movl	16(%rsp), %eax
	cmpl	%eax, 80(%rsp)
	je	.L1049
.L1080:
	movl	84(%rsp), %ebx
	addl	16(%rsp), %ebx
	jmp	.L1052
	.p2align 4,,10
	.p2align 3
.L1053:
	movq	%r15, 112(%rsp)
	xorl	%ebp, %ebp
	movq	$0, 128(%rsp)
	movq	%r15, 144(%rsp)
	jmp	.L1055
	.p2align 4,,10
	.p2align 3
.L1079:
	addl	$1, 16(%rsp)
	movl	16(%rsp), %eax
	cmpl	80(%rsp), %eax
	jne	.L1080
.L1049:
	movq	50680(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1122
	addq	$50696, %rsp
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
.L1120:
	.cfi_restore_state
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB104:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE104:
	jmp	.L1069
	.p2align 4,,10
	.p2align 3
.L1118:
	movl	16(%rsp), %r8d
	leaq	672(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1119:
	movl	16(%rsp), %r8d
	leaq	672(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1064:
	movl	16(%rsp), %r8d
	leaq	672(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1089:
	movq	%rdi, %rbp
	jmp	.L1054
	.p2align 4,,10
	.p2align 3
.L1116:
	movq	%rdi, %rbp
	jmp	.L1055
	.p2align 4,,10
	.p2align 3
.L1121:
	movq	160(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB105:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE105:
	jmp	.L1075
.L1051:
	leaq	.LC8(%rip), %rdi
.LEHB106:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE106:
.L1117:
	leaq	.LC8(%rip), %rdi
.LEHB107:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE107:
.L1122:
	call	__stack_chk_fail@PLT
.L1094:
	endbr64
	movq	%rax, %r12
	jmp	.L1082
.L1092:
	endbr64
	movq	%rax, %rbp
	jmp	.L1085
.L1093:
	endbr64
	movq	%rax, %rbp
	jmp	.L1083
.L1082:
	movq	%rbx, %rdi
	movq	%r12, %rbx
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L1074:
	movq	32(%rsp), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZdlPvm@PLT
.L1083:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1085
	call	_ZdlPvm@PLT
.L1085:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1086
	call	_ZdlPvm@PLT
.L1086:
	movq	%rbp, %rdi
.LEHB108:
	call	_Unwind_Resume@PLT
.LEHE108:
.L1097:
	endbr64
	movq	%rax, %r13
	jmp	.L1071
.L1096:
	endbr64
	movq	%rax, %r13
	jmp	.L1072
.L1071:
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L1072:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	movq	%rax, 160(%rsp)
	movq	-24(%rax), %rax
	movq	%rbx, 160(%rsp,%rax)
	movq	%r13, %rbx
.L1073:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 408(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1074
.L1095:
	endbr64
	movq	%rax, %rbx
	jmp	.L1073
.L1098:
	endbr64
	movq	%rax, %rdi
.L1077:
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L1115
	.cfi_endproc
.LFE5367:
	.section	.gcc_except_table
	.align 4
.LLSDA5367:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5367-.LLSDATTD5367
.LLSDATTD5367:
	.byte	0x1
	.uleb128 .LLSDACSE5367-.LLSDACSB5367
.LLSDACSB5367:
	.uleb128 .LEHB96-.LFB5367
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB5367
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1092-.LFB5367
	.uleb128 0
	.uleb128 .LEHB98-.LFB5367
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1093-.LFB5367
	.uleb128 0
	.uleb128 .LEHB99-.LFB5367
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1095-.LFB5367
	.uleb128 0
	.uleb128 .LEHB100-.LFB5367
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1096-.LFB5367
	.uleb128 0
	.uleb128 .LEHB101-.LFB5367
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1097-.LFB5367
	.uleb128 0
	.uleb128 .LEHB102-.LFB5367
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1094-.LFB5367
	.uleb128 0
	.uleb128 .LEHB103-.LFB5367
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1098-.LFB5367
	.uleb128 0x1
	.uleb128 .LEHB104-.LFB5367
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1097-.LFB5367
	.uleb128 0
	.uleb128 .LEHB105-.LFB5367
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L1094-.LFB5367
	.uleb128 0
	.uleb128 .LEHB106-.LFB5367
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB5367
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L1093-.LFB5367
	.uleb128 0
	.uleb128 .LEHB108-.LFB5367
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
.LLSDACSE5367:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5367:
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.size	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, .-_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align 4
	.weak	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5369:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5369
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$4096, %rsp
	.cfi_def_cfa_offset 8248
	orq	$0, (%rsp)
	subq	$1944, %rsp
	.cfi_def_cfa_offset 10192
	movq	%rsi, 24(%rsp)
	movslq	%edx, %r14
	movq	%rcx, 16(%rsp)
	movsd	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 10120(%rsp)
	movq	%r14, %rax
	shrq	$60, %rax
	jne	.L1191
	pxor	%xmm0, %xmm0
	movq	%rdi, %r12
	movq	%r14, %r13
	movq	$0, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	leaq	0(,%r14,8), %rbp
	testq	%r14, %r14
	je	.L1125
	movq	%rbp, %rdi
.LEHB109:
	call	_Znwm@PLT
.LEHE109:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %rbx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	cmpq	$1, %r14
	je	.L1160
	cmpq	%rdi, %rbx
	je	.L1126
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1126:
	movq	16(%rsp), %rdx
	movsd	(%rsp), %xmm0
	leaq	48(%rsp), %rdi
	movl	%r13d, %esi
	movq	%rbx, 56(%rsp)
.LEHB110:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE110:
	movl	%r13d, %eax
	pxor	%xmm1, %xmm1
	shrl	%eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, 32(%rsp)
	movl	%r13d, %eax
	andl	$-2, %eax
	movl	%eax, 44(%rsp)
	movslq	%eax, %rbx
	salq	$3, %rbx
	.p2align 4,,10
	.p2align 3
.L1127:
	movsd	(%rsp), %xmm6
	comisd	%xmm1, %xmm6
	ja	.L1153
	movq	16(%rsp), %rax
	movsd	.LC12(%rip), %xmm7
	movsd	(%rax), %xmm0
	andpd	.LC4(%rip), %xmm0
	comisd	%xmm0, %xmm7
	ja	.L1153
	comisd	.LC13(%rip), %xmm0
	jbe	.L1192
.L1153:
	leaq	5120(%rsp), %rbp
	leaq	112(%rsp), %r14
	movl	$27765, %eax
	movl	$1634100580, 5136(%rsp)
	leaq	5136(%rsp), %r15
	movq	%rbp, %rsi
	movq	%r14, %rdi
	movw	%ax, 5140(%rsp)
	movq	%r15, 5120(%rsp)
	movb	$116, 5142(%rsp)
	movq	$7, 5128(%rsp)
	movb	$0, 5143(%rsp)
.LEHB111:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE111:
	movq	5120(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L1128
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1128:
	movq	%r14, %rdi
.LEHB112:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, 5120(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1133:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, 0(%rbp,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L1133
	movl	$1000, %edx
	movq	%rbp, %rdi
	movl	$-1000, %esi
	movq	$624, 10112(%rsp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LC45(%rip), %xmm0
	testl	%r13d, %r13d
	jle	.L1193
	movq	24(%rsp), %rax
	movq	(%r12), %rcx
	leal	-1(%r13), %edi
	movq	48(%rsp), %rsi
	movsd	.LC5(%rip), %xmm5
	movq	(%rax), %rdx
	leaq	8(%rsi), %r8
	movapd	%xmm5, %xmm2
	divsd	%xmm0, %xmm2
	cmpq	%r8, %rcx
	setne	%al
	cmpq	%r8, %rdx
	setne	%r8b
	andl	%r8d, %eax
	leaq	8(%rcx), %r8
	cmpq	%r8, %rdx
	setne	%r8b
	testb	%r8b, %al
	je	.L1138
	cmpl	$1, %edi
	jbe	.L1138
	movapd	%xmm0, %xmm4
	movapd	%xmm2, %xmm3
	movq	32(%rsp), %rdi
	xorl	%eax, %eax
	unpcklpd	%xmm4, %xmm4
	unpcklpd	%xmm3, %xmm3
	.p2align 4,,10
	.p2align 3
.L1139:
	movupd	(%rsi,%rax), %xmm1
	mulpd	%xmm4, %xmm1
	movups	%xmm1, (%rcx,%rax)
	movups	%xmm3, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdi
	jne	.L1139
	cmpl	%r13d, 44(%rsp)
	je	.L1141
	mulsd	(%rsi,%rbx), %xmm0
	movsd	%xmm0, (%rcx,%rbx)
	movsd	%xmm2, (%rdx,%rbx)
.L1141:
	movsd	(%rsp), %xmm0
	movsd	%xmm5, 8(%rsp)
	call	log@PLT
	movsd	.LC47(%rip), %xmm1
	movsd	.LC3(%rip), %xmm2
	divsd	.LC1(%rip), %xmm0
	divsd	.LC2(%rip), %xmm0
	movsd	8(%rsp), %xmm5
	andpd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm2
	jbe	.L1135
	cvttsd2siq	%xmm0, %rax
	pxor	%xmm1, %xmm1
	movapd	%xmm0, %xmm2
	cvtsi2sdq	%rax, %xmm1
	cmpnlesd	%xmm1, %xmm2
	andpd	%xmm5, %xmm2
	addsd	%xmm2, %xmm1
	movsd	.LC47(%rip), %xmm2
	andnpd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
.L1135:
	addsd	%xmm5, %xmm0
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	$0, 96(%rsp)
	movq	%rax, %rdx
	cvttsd2siq	%xmm0, %r15
	pxor	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	subq	%rsi, %rdx
	je	.L1194
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbp
	cmpq	%rax, %rdx
	ja	.L1195
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE112:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L1137:
	movq	%rcx, %xmm0
	addq	%rcx, %rbp
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	cmpq	%rsi, %rax
	je	.L1147
	movq	%rcx, %rdi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L1147:
	addq	%rdx, %rcx
	leaq	80(%rsp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, 88(%rsp)
.LEHB113:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE113:
	movq	16(%rsp), %r15
	movq	80(%rsp), %rdi
	movsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L1148
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movsd	(%r15), %xmm0
.L1148:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L1161
	xorl	%edx, %edx
	pxor	%xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1150:
	movsd	(%rsi,%rax,8), %xmm1
	andpd	.LC4(%rip), %xmm1
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	addsd	%xmm1, %xmm2
	cmpq	%rcx, %rax
	jb	.L1150
.L1149:
	pxor	%xmm7, %xmm7
	ucomisd	%xmm7, %xmm0
	jp	.L1167
	pxor	%xmm1, %xmm1
	je	.L1151
.L1167:
	andpd	.LC4(%rip), %xmm0
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm1
.L1151:
	movq	%r14, %rdi
	movsd	%xmm1, 8(%rsp)
	call	_ZNSt13random_device7_M_finiEv@PLT
	movsd	8(%rsp), %xmm1
	jmp	.L1127
.L1194:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L1137
.L1138:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1143:
	movsd	(%rsi,%rax,8), %xmm1
	movq	%rax, %r8
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	movsd	%xmm2, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L1143
	jmp	.L1141
.L1193:
	movsd	.LC5(%rip), %xmm5
	jmp	.L1141
.L1161:
	pxor	%xmm2, %xmm2
	jmp	.L1149
.L1195:
	testq	%rdx, %rdx
	jns	.L1146
.LEHB114:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L1192:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1123
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1123:
	movq	10120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1196
	addq	$10136, %rsp
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
.L1125:
	.cfi_restore_state
	movq	$0, 48(%rsp)
	xorl	%ebx, %ebx
	movq	$0, 64(%rsp)
	jmp	.L1126
.L1146:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE114:
.L1160:
	movq	%rdi, %rbx
	jmp	.L1126
.L1191:
	leaq	.LC8(%rip), %rdi
.LEHB115:
	call	_ZSt20__throw_length_errorPKc@PLT
.L1196:
	call	__stack_chk_fail@PLT
.L1163:
	endbr64
	movq	%rax, %rbp
	jmp	.L1132
.L1165:
	endbr64
	movq	%rax, %rbp
	jmp	.L1155
.L1130:
	movq	5120(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.L1132
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1132:
	movq	48(%rsp), %rdi
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1158
	call	_ZdlPvm@PLT
.L1158:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE115:
.L1155:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1157
	call	_ZdlPvm@PLT
.L1157:
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L1132
.L1166:
	endbr64
	movq	%rax, %rbp
	jmp	.L1130
.L1164:
	endbr64
	movq	%rax, %rbp
	jmp	.L1157
	.cfi_endproc
.LFE5369:
	.section	.gcc_except_table
.LLSDA5369:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5369-.LLSDACSB5369
.LLSDACSB5369:
	.uleb128 .LEHB109-.LFB5369
	.uleb128 .LEHE109-.LEHB109
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB110-.LFB5369
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1163-.LFB5369
	.uleb128 0
	.uleb128 .LEHB111-.LFB5369
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1166-.LFB5369
	.uleb128 0
	.uleb128 .LEHB112-.LFB5369
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1164-.LFB5369
	.uleb128 0
	.uleb128 .LEHB113-.LFB5369
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1165-.LFB5369
	.uleb128 0
	.uleb128 .LEHB114-.LFB5369
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L1164-.LFB5369
	.uleb128 0
	.uleb128 .LEHB115-.LFB5369
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
.LLSDACSE5369:
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.p2align 4
	.weak	_Z7vec_genIdEviiT_S0_i
	.type	_Z7vec_genIdEviiT_S0_i, @function
_Z7vec_genIdEviiT_S0_i:
.LFB5366:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5366
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
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-49152(%rsp), %r11
	.cfi_def_cfa 11, 49208
.LPSRL4:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL4
	.cfi_def_cfa_register 7
	subq	$1528, %rsp
	.cfi_def_cfa_offset 50736
	movl	%edi, 68(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm0, 40(%rsp)
	movsd	%xmm1, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 50664(%rsp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L1197
	movabsq	$1152921504606846975, %rcx
	movslq	%esi, %rax
	movl	%esi, %ebx
	movq	%rax, 32(%rsp)
	cmpq	%rcx, %rax
	ja	.L1264
	leaq	0(,%rax,8), %r15
	leal	1(%rsi,%rsi), %eax
	movq	.LC42(%rip), %xmm3
	movl	$0, 4(%rsp)
	cltq
	movq	%rax, 24(%rsp)
	leaq	0(,%rax,8), %r13
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, %xmm4
	punpcklqdq	%xmm4, %xmm3
	movaps	%xmm3, 48(%rsp)
.L1229:
	movq	32(%rsp), %r14
	pxor	%xmm0, %xmm0
	movq	$0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	testq	%r14, %r14
	je	.L1200
	movq	%r15, %rdi
.LEHB116:
	call	_Znwm@PLT
.LEHE116:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	cmpq	$1, %r14
	je	.L1237
	cmpq	%rbp, %rdi
	je	.L1201
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1201:
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	movq	%rbp, 88(%rsp)
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
.LEHB117:
	call	_Znwm@PLT
.LEHE117:
	movq	%rax, %xmm0
	leaq	(%rax,%r15), %rbp
	leaq	8(%rax), %rdi
	cmpq	$1, 32(%rsp)
	punpcklqdq	%xmm0, %xmm0
	movq	%rbp, 128(%rsp)
	movq	$0x000000000, (%rax)
	movaps	%xmm0, 112(%rsp)
	je	.L1265
	cmpq	%rdi, %rbp
	je	.L1202
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1202:
	movsd	40(%rsp), %xmm0
	leaq	72(%rsp), %rcx
	leaq	112(%rsp), %rsi
	movl	%ebx, %edx
	leaq	80(%rsp), %rdi
	movq	%rbp, 120(%rsp)
.LEHB118:
	call	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, 24(%rsp)
	ja	.L1266
	movq	%r13, %rdi
	call	_Znwm@PLT
.LEHE118:
	leaq	8(%rax), %rdi
	cmpq	$1, 24(%rsp)
	movq	%rax, %rbp
	movq	%rdi, 16(%rsp)
	je	.L1204
	leaq	(%rax,%r13), %rax
	movq	%rax, 16(%rsp)
	cmpq	%rdi, %rax
	je	.L1204
	leaq	-8(%r13), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1204:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%ebx, %xmm0
	movsd	%xmm0, 0(%rbp)
	testl	%ebx, %ebx
	je	.L1209
	movq	80(%rsp), %r8
	movq	112(%rsp), %rdi
	leal	1(%rbx), %esi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1208:
	movsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	movsd	%xmm0, 8(%rbp,%rax,8)
	movsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	movsd	%xmm0, 0(%rbp,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L1208
.L1209:
	cmpl	$1, 64(%rsp)
	je	.L1267
	movl	64(%rsp), %eax
	cmpl	$2, %eax
	je	.L1211
	cmpl	$3, %eax
	je	.L1268
	cmpl	$4, 64(%rsp)
	jne	.L1210
	movl	4(%rsp), %r8d
	leaq	656(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L1210:
	leaq	392(%rsp), %r14
	leaq	144(%rsp), %r12
	movq	%r14, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%r12, 8(%rsp)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 624(%rsp)
	movq	%rax, 392(%rsp)
	xorl	%eax, %eax
	movw	%ax, 616(%rsp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movaps	%xmm0, 640(%rsp)
	movq	-24(%rax), %rdi
	movq	%rax, 144(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 608(%rsp)
	addq	%r12, %rdi
	movq	%rax, (%rdi)
.LEHB119:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE119:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	152(%rsp), %r12
	movq	%rax, 144(%rsp)
	movq	%r12, %rdi
	addq	$40, %rax
	movq	%rax, 392(%rsp)
.LEHB120:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE120:
	movq	%r12, %rsi
	movq	%r14, %rdi
.LEHB121:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	656(%rsp), %rsi
	movl	$20, %edx
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	144(%rsp), %rdx
	movq	8(%rsp), %rdi
	addq	-24(%rdx), %rdi
	testq	%rax, %rax
	je	.L1269
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE121:
.L1216:
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rdi
	movq	%rbp, %rsi
	subq	%rbp, %rdx
.LEHB122:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE122:
	testq	%rax, %rax
	je	.L1270
.L1222:
	movdqa	48(%rsp), %xmm2
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r12, %rdi
	movq	%rax, 392(%rsp)
	movaps	%xmm2, 144(%rsp)
.LEHB123:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE123:
.L1263:
	leaq	256(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	208(%rsp), %rdi
	movq	%rax, 152(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r14, %rdi
	movq	%rax, 144(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 144(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 392(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%rbp, %rdi
	movq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1225
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1225:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L1226
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, 4(%rsp)
	movl	4(%rsp), %eax
	cmpl	%eax, 68(%rsp)
	jne	.L1229
.L1197:
	movq	50664(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L1271
	addq	$50680, %rsp
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
.L1200:
	.cfi_restore_state
	movq	%r15, 96(%rsp)
	xorl	%ebp, %ebp
	movq	$0, 112(%rsp)
	movq	%r15, 128(%rsp)
	jmp	.L1202
	.p2align 4,,10
	.p2align 3
.L1226:
	addl	$1, 4(%rsp)
	movl	4(%rsp), %eax
	cmpl	68(%rsp), %eax
	jne	.L1229
	jmp	.L1197
	.p2align 4,,10
	.p2align 3
.L1269:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB124:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE124:
	jmp	.L1216
	.p2align 4,,10
	.p2align 3
.L1267:
	movl	4(%rsp), %r8d
	leaq	656(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC24(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1210
	.p2align 4,,10
	.p2align 3
.L1268:
	movl	4(%rsp), %r8d
	leaq	656(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1210
	.p2align 4,,10
	.p2align 3
.L1211:
	movl	4(%rsp), %r8d
	leaq	656(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1210
	.p2align 4,,10
	.p2align 3
.L1237:
	movq	%rdi, %rbp
	jmp	.L1201
	.p2align 4,,10
	.p2align 3
.L1265:
	movq	%rdi, %rbp
	jmp	.L1202
	.p2align 4,,10
	.p2align 3
.L1270:
	movq	144(%rsp), %rax
	movq	8(%rsp), %rdi
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB125:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE125:
	jmp	.L1222
.L1264:
	leaq	.LC8(%rip), %rdi
.LEHB126:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE126:
.L1266:
	leaq	.LC8(%rip), %rdi
.LEHB127:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE127:
.L1271:
	call	__stack_chk_fail@PLT
.L1242:
	endbr64
	movq	%rax, %rbx
	jmp	.L1230
.L1240:
	endbr64
	movq	%rax, %rbp
	jmp	.L1233
.L1241:
	endbr64
	movq	%rax, %rbp
	jmp	.L1231
.L1230:
	movq	8(%rsp), %rdi
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L1221:
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rbp
	call	_ZdlPvm@PLT
.L1231:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1233
	call	_ZdlPvm@PLT
.L1233:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1234
	call	_ZdlPvm@PLT
.L1234:
	movq	%rbp, %rdi
.LEHB128:
	call	_Unwind_Resume@PLT
.LEHE128:
.L1245:
	endbr64
	movq	%rax, %rbx
	jmp	.L1218
.L1244:
	endbr64
	movq	%rax, %rbx
	jmp	.L1219
.L1218:
	movq	%r12, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L1219:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 144(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 144(%rsp,%rax)
.L1220:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 392(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1221
.L1243:
	endbr64
	movq	%rax, %rbx
	jmp	.L1220
.L1246:
	endbr64
	movq	%rax, %rdi
.L1224:
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L1263
	.cfi_endproc
.LFE5366:
	.section	.gcc_except_table
	.align 4
.LLSDA5366:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5366-.LLSDATTD5366
.LLSDATTD5366:
	.byte	0x1
	.uleb128 .LLSDACSE5366-.LLSDACSB5366
.LLSDACSB5366:
	.uleb128 .LEHB116-.LFB5366
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB5366
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1240-.LFB5366
	.uleb128 0
	.uleb128 .LEHB118-.LFB5366
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1241-.LFB5366
	.uleb128 0
	.uleb128 .LEHB119-.LFB5366
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1243-.LFB5366
	.uleb128 0
	.uleb128 .LEHB120-.LFB5366
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1244-.LFB5366
	.uleb128 0
	.uleb128 .LEHB121-.LFB5366
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1245-.LFB5366
	.uleb128 0
	.uleb128 .LEHB122-.LFB5366
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1242-.LFB5366
	.uleb128 0
	.uleb128 .LEHB123-.LFB5366
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1246-.LFB5366
	.uleb128 0x1
	.uleb128 .LEHB124-.LFB5366
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1245-.LFB5366
	.uleb128 0
	.uleb128 .LEHB125-.LFB5366
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L1242-.LFB5366
	.uleb128 0
	.uleb128 .LEHB126-.LFB5366
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB5366
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L1241-.LFB5366
	.uleb128 0
	.uleb128 .LEHB128-.LFB5366
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
.LLSDACSE5366:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5366:
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.size	_Z7vec_genIdEviiT_S0_i, .-_Z7vec_genIdEviiT_S0_i
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z14vec_gen_randomiii, @function
_GLOBAL__sub_I__Z14vec_gen_randomiii:
.LFB6139:
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
.LFE6139:
	.size	_GLOBAL__sub_I__Z14vec_gen_randomiii, .-_GLOBAL__sub_I__Z14vec_gen_randomiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14vec_gen_randomiii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	-17155601
	.long	1072049730
	.align 8
.LC2:
	.long	0
	.long	1078362112
	.align 8
.LC3:
	.long	0
	.long	1127219200
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC4:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC5:
	.long	0
	.long	1072693248
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1138753536
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC9:
	.long	805306368
	.section	.rodata.cst8
	.align 8
.LC10:
	.long	0
	.long	1073741824
	.align 8
.LC11:
	.long	-4194304
	.long	1105199103
	.align 8
.LC12:
	.long	0
	.long	940572672
	.align 8
.LC13:
	.long	-536870912
	.long	1206910975
	.section	.rodata.cst4
	.align 4
.LC30:
	.long	1593835520
	.align 4
.LC31:
	.long	1065353216
	.set	.LC32,.LC10+4
	.section	.rodata.cst16
	.align 16
.LC33:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC34:
	.long	8388608
	.align 4
.LC35:
	.long	2139095039
	.section	.rodata.cst8
	.align 8
.LC37:
	.long	0
	.long	1106247680
	.align 8
.LC38:
	.long	0
	.long	1005584384
	.align 8
.LC39:
	.long	0
	.long	1074790400
	.align 8
.LC40:
	.long	-2
	.long	1073741823
	.section	.data.rel.ro,"aw"
	.align 8
.LC42:
	.quad	_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	.section	.rodata.cst8
	.align 8
.LC45:
	.long	0
	.long	1079574528
	.set	.LC47,.LC4
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
