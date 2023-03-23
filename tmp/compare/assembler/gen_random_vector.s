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
.LFB6113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	movl	%esi, %r13d
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edx, %ebx
	andq	$-64, %rsp
	subq	$64, %rsp
	movq	8(%rdi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r12
	je	.L20
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L36
	movq	%rdi, %r14
	movq	%rdx, %rdi
	call	_Znwm@PLT
	movq	(%r14), %rsi
	movq	%rax, %rdi
	movq	8(%r14), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L4:
	cmpq	%rsi, %rax
	je	.L7
	call	memmove@PLT
	movq	%rax, %rdi
.L7:
	subl	$1, %ebx
	movl	%ebx, %esi
	je	.L8
	cmpl	$1, %r13d
	jbe	.L8
	leal	-2(%r13), %eax
	movl	$1, %ecx
	leaq	8(%rdi), %r8
	leaq	16(%rdi,%rax,8), %rdx
	.p2align 4,,10
	.p2align 3
.L9:
	vmovsd	(%rdi), %xmm0
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L10:
	vaddsd	(%rax), %xmm0, %xmm0
	movq	$0x000000000, -8(%rax)
	addq	$8, %rax
	vmovsd	%xmm0, -8(%rax)
	cmpq	%rax, %rdx
	jne	.L10
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jbe	.L9
.L11:
	leal	-1(%r13), %eax
	cmpl	$6, %eax
	jbe	.L22
	movl	%r13d, %edx
	movq	%rdi, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	shrl	$3, %edx
	salq	$6, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L14:
	vaddpd	(%rax), %zmm0, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L14
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%r13d, %eax
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %eax
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	testb	$7, %r13b
	je	.L34
.L13:
	movl	%r13d, %edx
	subl	%eax, %edx
	leal	-1(%rdx), %ecx
	cmpl	$2, %ecx
	jbe	.L17
	movl	%eax, %ecx
	vmovupd	(%rdi,%rcx,8), %ymm1
	movl	%edx, %ecx
	andl	$-4, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	addl	%ecx, %eax
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%ecx, %edx
	je	.L34
.L17:
	movl	%eax, %edx
	vaddsd	(%rdi,%rdx,8), %xmm0, %xmm0
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jbe	.L34
	addl	$2, %eax
	vaddsd	(%rdi,%rdx,8), %xmm0, %xmm0
	cmpl	%eax, %r13d
	jbe	.L34
	vaddsd	(%rdi,%rax,8), %xmm0, %xmm0
	vzeroupper
.L12:
	testq	%rdi, %rdi
	je	.L3
	movq	%r12, %rsi
	vmovsd	%xmm0, 56(%rsp)
	call	_ZdlPvm@PLT
	vmovsd	56(%rsp), %xmm0
.L3:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L34:
	.cfi_restore_state
	vzeroupper
	jmp	.L12
.L20:
	xorl	%edi, %edi
	jmp	.L4
.L36:
	testq	%rdx, %rdx
	jns	.L6
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L8:
	vxorpd	%xmm0, %xmm0, %xmm0
	testl	%r13d, %r13d
	je	.L12
	jmp	.L11
.L22:
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L13
.L6:
	call	_ZSt17__throw_bad_allocv@PLT
	.cfi_endproc
.LFE6113:
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.section	.rodata._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6129:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6129
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
	movl	%esi, %ebx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdx, 72(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
	call	log@PLT
	vmulsd	.LC1(%rip), %xmm0, %xmm3
	movl	%ebx, %edx
	vmovsd	.LC4(%rip), %xmm5
	vmulsd	.LC2(%rip), %xmm3, %xmm0
	movq	$0, 16(%r12)
	vmovsd	%xmm3, 48(%rsp)
	vxorpd	%xmm3, %xmm3, %xmm3
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm4
	vcvtusi2sdl	%ebx, %xmm3, %xmm0
	vmovsd	%xmm4, 88(%rsp)
	vmovsd	%xmm0, 64(%rsp)
	vmulsd	%xmm0, %xmm5, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm4
	vpxor	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm4, 8(%rsp)
	vmovdqu	%xmm0, (%r12)
	testq	%rdx, %rdx
	je	.L38
	leaq	0(,%rdx,8), %r13
	movq	%r13, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	vmovq	%rax, %xmm4
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, (%r12)
	call	memset@PLT
.L85:
	vcvttsd2usi	8(%rsp), %rax
	movq	%rbx, 8(%r12)
	movq	%rax, %rdi
	shrq	$60, %rdi
	jne	.L128
	leaq	0(,%rax,8), %r14
	testq	%rax, %rax
	je	.L88
	movq	%r14, %rdi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 104(%rsp)
	cmpq	%r13, %rax
	je	.L40
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L40:
	vmovsd	.LC4(%rip), %xmm5
	vmulsd	48(%rsp), %xmm5, %xmm0
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%r14d, %r14d
	vmovsd	8(%rsp), %xmm2
	vcomisd	%xmm5, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm4
	vsubsd	.LC3(%rip), %xmm2, %xmm0
	vcvttsd2usi	%xmm0, %rax
	vmovq	%xmm4, %rbp
	leaq	0(%r13,%rax,8), %rbx
	jbe	.L119
	.p2align 4,,10
	.p2align 3
.L43:
	call	rand@PLT
	vxorps	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	8(%rsp), %xmm7
	vcvtsi2ssl	%eax, %xmm4, %xmm0
	vmulss	.LC8(%rip), %xmm0, %xmm0
	movl	%r14d, %eax
	addl	$1, %r14d
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	48(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vcvtusi2sdl	%r14d, %xmm3, %xmm0
	vcomisd	%xmm0, %xmm7
	ja	.L43
	vmovsd	.LC9(%rip), %xmm2
	movq	%rbp, 0(%r13)
	vmovsd	.LC10(%rip), %xmm4
	movq	$0x000000000, (%rbx)
	xorl	%ebx, %ebx
	vmovsd	.LC11(%rip), %xmm7
	vmovsd	%xmm2, 24(%rsp)
	vmovsd	%xmm4, 32(%rsp)
	vmovsd	%xmm7, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L45:
	call	rand@PLT
	movl	%ebx, %ebp
	addl	$1, %ebx
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtsi2sdl	%eax, %xmm6, %xmm0
	vmovsd	32(%rsp), %xmm2
	vfmadd132sd	24(%rsp), %xmm2, %xmm0
	vcvttsd2sil	0(%r13,%rbp,8), %eax
	vcvtsi2sdl	%eax, %xmm6, %xmm1
	vmovsd	%xmm0, 16(%rsp)
	vmovsd	40(%rsp), %xmm0
	call	pow@PLT
	vmulsd	16(%rsp), %xmm0, %xmm0
	movq	(%r12), %rax
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovsd	8(%rsp), %xmm3
	vmovsd	%xmm0, (%rax,%rbp,8)
	vcvtusi2sdl	%ebx, %xmm6, %xmm0
	vcomisd	%xmm0, %xmm3
	ja	.L45
.L86:
	vmovsd	64(%rsp), %xmm3
	vsubsd	8(%rsp), %xmm3, %xmm7
	vcvttsd2usi	%xmm7, %rax
	vmovsd	%xmm7, 16(%rsp)
	movq	%rax, %rdi
	shrq	$60, %rdi
	jne	.L129
	testq	%rax, %rax
	je	.L47
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	movq	%rbx, 96(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.L51
	movq	96(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L51:
	vmovsd	16(%rsp), %xmm5
	vsubsd	.LC3(%rip), %xmm5, %xmm2
	vcomisd	.LC3(%rip), %xmm5
	vmovsd	48(%rsp), %xmm3
	vdivsd	%xmm2, %xmm3, %xmm1
	vmovsd	%xmm3, 0(%rbp)
	jbe	.L50
	vmovsd	.LC11(%rip), %xmm4
	vsubsd	%xmm1, %xmm3, %xmm0
	movl	$2, %eax
	vcomisd	%xmm4, %xmm5
	vmovsd	%xmm0, 8(%rbp)
	jbe	.L50
	.p2align 4,,10
	.p2align 3
.L53:
	leal	-1(%rax), %ecx
	movl	%eax, %edx
	vxorpd	%xmm4, %xmm4, %xmm4
	addl	$1, %eax
	vmovsd	0(%rbp,%rcx,8), %xmm0
	vmovsd	16(%rsp), %xmm3
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 0(%rbp,%rdx,8)
	vcvtusi2sdl	%eax, %xmm4, %xmm0
	vcomisd	%xmm0, %xmm3
	ja	.L53
.L50:
	vcvttsd2usi	%xmm2, %rax
	vcvttsd2usi	8(%rsp), %ebx
	movq	$0x000000000, 0(%rbp,%rax,8)
	vcvttsd2usi	88(%rsp), %eax
	movl	%eax, 48(%rsp)
	cmpl	%ebx, 60(%rsp)
	jbe	.L63
	vmovsd	.LC9(%rip), %xmm2
	movl	%ebx, %r15d
	vmovsd	.LC10(%rip), %xmm4
	vmovsd	.LC11(%rip), %xmm7
	salq	$3, %r15
	vmovsd	%xmm2, 24(%rsp)
	vmovsd	%xmm4, 32(%rsp)
	vmovsd	%xmm7, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L64:
	call	rand@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	32(%rsp), %xmm7
	vcvtsi2sdl	%eax, %xmm5, %xmm0
	vfmadd132sd	24(%rsp), %xmm7, %xmm0
	vmovsd	%xmm0, 16(%rsp)
	vcvtusi2sdl	%ebx, %xmm5, %xmm0
	vsubsd	8(%rsp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rax
	vmovsd	40(%rsp), %xmm0
	vcvttsd2sil	0(%rbp,%rax,8), %eax
	vcvtsi2sdl	%eax, %xmm5, %xmm1
	call	pow@PLT
	vmulsd	16(%rsp), %xmm0, %xmm2
	movq	8(%r12), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%r12), %rsi
	vmovdqa	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movq	%rax, %rdx
	vmovsd	%xmm2, 16(%rsp)
	subq	%rsi, %rdx
	je	.L89
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r14
	cmpq	%rax, %rdx
	ja	.L130
	movq	%rdx, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L57:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r14
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r14, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%rax, %rsi
	je	.L60
	movq	%rcx, %rdi
	movq	%rdx, 64(%rsp)
	call	memmove@PLT
	movq	64(%rsp), %rdx
	movq	%rax, %rcx
.L60:
	addq	%rdx, %rcx
	movl	48(%rsp), %edx
	leaq	112(%rsp), %rdi
	movl	%ebx, %esi
	movq	%rcx, 120(%rsp)
.LEHB4:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE4:
	vmovsd	16(%rsp), %xmm7
	movq	(%r12), %rax
	movq	112(%rsp), %rdi
	vsubsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L61
	movq	128(%rsp), %rsi
	addl	$1, %ebx
	addq	$8, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, 60(%rsp)
	jne	.L64
.L63:
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L131
.L55:
	leaq	8(%r15), %r14
	cmpq	%r14, %rbx
	je	.L65
	.p2align 4,,10
	.p2align 3
.L67:
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
	je	.L66
	vmovsd	(%r14), %xmm0
	vmovsd	(%rax), %xmm1
	vmovsd	%xmm1, (%r14)
	vmovsd	%xmm0, (%rax)
.L66:
	addq	$8, %r14
	cmpq	%r14, %rbx
	jne	.L67
	movq	8(%r12), %r14
	movq	(%r12), %r15
.L65:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r14, %rbx
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	subq	%r15, %rbx
	je	.L90
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L132
	movq	%rbx, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	8(%r12), %r14
	movq	(%r12), %r15
	movq	%rax, %rcx
	movq	%r14, %rdx
	subq	%r15, %rdx
.L68:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%r15, %r14
	je	.L71
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L71:
	addq	%rdx, %rcx
	movl	60(%rsp), %esi
	movl	48(%rsp), %edx
	leaq	112(%rsp), %rdi
	movq	%rcx, 120(%rsp)
.LEHB6:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE6:
	movq	80(%rsp), %rax
	movq	112(%rsp), %rdi
	vmovsd	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L72
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L72:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	72(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$3, %rcx
	movq	$0x000000000, (%rdi)
	je	.L73
	vmovq	.LC12(%rip), %xmm2
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L74:
	vmovsd	(%rsi,%rax,8), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	vandpd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L74
.L73:
	movq	80(%rsp), %rax
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm5, %xmm0
	jp	.L99
	je	.L75
.L99:
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
.L75:
	movq	72(%rsp), %rax
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	vmovsd	%xmm0, (%rax)
	call	_ZdlPvm@PLT
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	136(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L133
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
.L89:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L61:
	addl	$1, %ebx
	addq	$8, %r15
	cmpl	%ebx, 60(%rsp)
	jne	.L64
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	jne	.L55
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L88:
	movq	$0, 104(%rsp)
	xorl	%r13d, %r13d
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L38:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L130:
	testq	%rdx, %rdx
	jns	.L59
.LEHB7:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L131:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L59:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L119:
	vmovsd	%xmm4, 0(%r13)
	movq	$0x000000000, (%rbx)
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L90:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L68
.L132:
	testq	%rbx, %rbx
	jns	.L70
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L70:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE7:
.L128:
	leaq	.LC7(%rip), %rdi
.LEHB8:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE8:
.L133:
	call	__stack_chk_fail@PLT
.L129:
	leaq	.LC7(%rip), %rdi
.LEHB9:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE9:
.L92:
	endbr64
	movq	%rax, %rbx
	jmp	.L83
.L95:
	endbr64
.L127:
	movq	%rax, %rbx
.L80:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L79
	vzeroupper
	call	_ZdlPvm@PLT
.L79:
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L82:
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L83:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L123
	vzeroupper
	call	_ZdlPvm@PLT
.L84:
	movq	%rbx, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.LEHE10:
.L123:
	vzeroupper
	jmp	.L84
.L47:
	vmovsd	48(%rsp), %xmm2
	vmovsd	%xmm2, 0
	ud2
.L94:
	endbr64
	movq	%rax, %rbx
	jmp	.L79
.L96:
	endbr64
	jmp	.L127
.L93:
	endbr64
	movq	%rax, %rbx
	jmp	.L82
	.cfi_endproc
.LFE6129:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA6129:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6129-.LLSDACSB6129
.LLSDACSB6129:
	.uleb128 .LEHB0-.LFB6129
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB6129
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L92-.LFB6129
	.uleb128 0
	.uleb128 .LEHB2-.LFB6129
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L93-.LFB6129
	.uleb128 0
	.uleb128 .LEHB3-.LFB6129
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L94-.LFB6129
	.uleb128 0
	.uleb128 .LEHB4-.LFB6129
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L95-.LFB6129
	.uleb128 0
	.uleb128 .LEHB5-.LFB6129
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L94-.LFB6129
	.uleb128 0
	.uleb128 .LEHB6-.LFB6129
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L96-.LFB6129
	.uleb128 0
	.uleb128 .LEHB7-.LFB6129
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L94-.LFB6129
	.uleb128 0
	.uleb128 .LEHB8-.LFB6129
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L92-.LFB6129
	.uleb128 0
	.uleb128 .LEHB9-.LFB6129
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L93-.LFB6129
	.uleb128 0
	.uleb128 .LEHB10-.LFB6129
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE6129:
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5910:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %rcx
	vmovq	%xmm0, %r15
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
	vmovdqa	16(%rsp), %xmm5
	movq	32(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm5, (%rbx)
	vmovdqa	%xmm0, 16(%rsp)
	testq	%rdi, %rdi
	jne	.L154
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L142:
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r13, %rdx
	vmovq	%r15, %xmm0
	call	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	16(%rsp), %xmm2
	movq	32(%rsp), %rax
	vpxor	%xmm3, %xmm3, %xmm3
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm2, (%rbx)
	vmovdqa	%xmm3, 16(%rsp)
	testq	%rdi, %rdi
	je	.L138
.L154:
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L138
	call	_ZdlPvm@PLT
.L138:
	vmovq	%r15, %xmm1
	vcomisd	8(%rsp), %xmm1
	ja	.L142
	vmovsd	0(%rbp), %xmm0
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vcomisd	.LC13(%rip), %xmm0
	ja	.L142
	vmovsd	.LC14(%rip), %xmm4
	vcomisd	%xmm0, %xmm4
	ja	.L142
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L155
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
.L155:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5910:
	.size	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.rodata._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.1,"aMS",@progbits,1
.LC15:
	.string	"             -"
	.section	.rodata._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC16:
	.string	"             ----------> START GENSUM \n "
	.align 8
.LC17:
	.string	"                            Before                "
	.align 8
.LC18:
	.string	"                           After                "
	.align 8
.LC19:
	.string	"             ----------- END GENSUM "
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6142:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6142
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
	leaq	.LC15(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdx, 80(%rsp)
	movl	%esi, 60(%rsp)
	movq	%rcx, 88(%rsp)
	vmovsd	%xmm0, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 136(%rsp)
	xorl	%eax, %eax
.LEHB11:
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	vmovsd	8(%rsp), %xmm0
	call	log@PLT
	vmulsd	.LC1(%rip), %xmm0, %xmm3
	movl	%ebx, %edx
	vmovsd	.LC4(%rip), %xmm5
	vmulsd	.LC2(%rip), %xmm3, %xmm0
	movq	$0, 16(%r12)
	vmovsd	%xmm3, 48(%rsp)
	vxorpd	%xmm3, %xmm3, %xmm3
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm4
	vcvtusi2sdl	%ebx, %xmm3, %xmm0
	vmovsd	%xmm4, 72(%rsp)
	vmovsd	%xmm0, 64(%rsp)
	vmulsd	%xmm0, %xmm5, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm4
	vpxor	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm4, 8(%rsp)
	vmovdqu	%xmm0, (%r12)
	testq	%rdx, %rdx
	je	.L157
	leaq	0(,%rdx,8), %r13
	movq	%r13, %rdi
	call	_Znwm@PLT
.LEHE11:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	vmovq	%rax, %xmm4
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, (%r12)
	call	memset@PLT
.L204:
	vcvttsd2usi	8(%rsp), %rax
	movq	%rbx, 8(%r12)
	movq	%rax, %rsi
	shrq	$60, %rsi
	jne	.L247
	leaq	0(,%rax,8), %r14
	testq	%rax, %rax
	je	.L207
	movq	%r14, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 104(%rsp)
	cmpq	%r13, %rax
	je	.L159
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L159:
	vmovsd	.LC4(%rip), %xmm5
	vmulsd	48(%rsp), %xmm5, %xmm0
	vxorpd	%xmm5, %xmm5, %xmm5
	xorl	%r14d, %r14d
	vmovsd	8(%rsp), %xmm2
	vcomisd	%xmm5, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm4
	vsubsd	.LC3(%rip), %xmm2, %xmm0
	vcvttsd2usi	%xmm0, %rax
	vmovq	%xmm4, %rbp
	leaq	0(%r13,%rax,8), %rbx
	jbe	.L238
	.p2align 4,,10
	.p2align 3
.L162:
	call	rand@PLT
	vxorps	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovsd	8(%rsp), %xmm7
	vcvtsi2ssl	%eax, %xmm4, %xmm0
	vmulss	.LC8(%rip), %xmm0, %xmm0
	movl	%r14d, %eax
	addl	$1, %r14d
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	48(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vcvtusi2sdl	%r14d, %xmm3, %xmm0
	vcomisd	%xmm0, %xmm7
	ja	.L162
	vmovsd	.LC9(%rip), %xmm3
	movq	%rbp, 0(%r13)
	vmovsd	.LC10(%rip), %xmm2
	movq	$0x000000000, (%rbx)
	xorl	%ebx, %ebx
	vmovsd	.LC11(%rip), %xmm4
	vmovsd	%xmm3, 40(%rsp)
	vmovsd	%xmm2, 24(%rsp)
	vmovsd	%xmm4, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L164:
	call	rand@PLT
	movl	%ebx, %ebp
	addl	$1, %ebx
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtsi2sdl	%eax, %xmm6, %xmm0
	vmovsd	24(%rsp), %xmm2
	vfmadd132sd	40(%rsp), %xmm2, %xmm0
	vcvttsd2sil	0(%r13,%rbp,8), %eax
	vcvtsi2sdl	%eax, %xmm6, %xmm1
	vmovsd	%xmm0, 16(%rsp)
	vmovsd	32(%rsp), %xmm0
	call	pow@PLT
	vmulsd	16(%rsp), %xmm0, %xmm0
	movq	(%r12), %rax
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovsd	8(%rsp), %xmm3
	vmovsd	%xmm0, (%rax,%rbp,8)
	vcvtusi2sdl	%ebx, %xmm6, %xmm0
	vcomisd	%xmm0, %xmm3
	ja	.L164
.L205:
	vmovsd	64(%rsp), %xmm3
	vsubsd	8(%rsp), %xmm3, %xmm7
	vcvttsd2usi	%xmm7, %rax
	vmovsd	%xmm7, 16(%rsp)
	movq	%rax, %rsi
	shrq	$60, %rsi
	jne	.L248
	testq	%rax, %rax
	je	.L166
	leaq	0(,%rax,8), %rbx
	movq	%rbx, %rdi
	movq	%rbx, 96(%rsp)
.LEHB13:
	call	_Znwm@PLT
.LEHE13:
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.L170
	movq	96(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L170:
	vmovsd	16(%rsp), %xmm7
	vsubsd	.LC3(%rip), %xmm7, %xmm2
	vcomisd	.LC3(%rip), %xmm7
	vmovsd	48(%rsp), %xmm5
	vdivsd	%xmm2, %xmm5, %xmm1
	vmovsd	%xmm5, 0(%rbp)
	jbe	.L169
	vmovsd	.LC11(%rip), %xmm4
	vsubsd	%xmm1, %xmm5, %xmm0
	movl	$2, %eax
	vcomisd	%xmm4, %xmm7
	vmovsd	%xmm0, 8(%rbp)
	jbe	.L169
	.p2align 4,,10
	.p2align 3
.L172:
	leal	-1(%rax), %ecx
	movl	%eax, %edx
	vxorpd	%xmm4, %xmm4, %xmm4
	addl	$1, %eax
	vmovsd	0(%rbp,%rcx,8), %xmm0
	vmovsd	16(%rsp), %xmm3
	vsubsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 0(%rbp,%rdx,8)
	vcvtusi2sdl	%eax, %xmm4, %xmm0
	vcomisd	%xmm0, %xmm3
	ja	.L172
.L169:
	vcvttsd2usi	%xmm2, %rax
	leaq	.LC17(%rip), %rdi
	movq	$0x000000000, 0(%rbp,%rax,8)
.LEHB14:
	call	puts@PLT
	vcvttsd2usi	8(%rsp), %ebx
	cmpl	%ebx, 60(%rsp)
	jbe	.L181
	vcvttsd2usi	72(%rsp), %eax
	movl	%ebx, %r15d
	vmovsd	.LC9(%rip), %xmm2
	vmovsd	.LC10(%rip), %xmm4
	salq	$3, %r15
	vmovsd	.LC11(%rip), %xmm3
	vmovsd	%xmm2, 40(%rsp)
	vmovsd	%xmm4, 24(%rsp)
	movl	%eax, 48(%rsp)
	vmovsd	%xmm3, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L182:
	call	rand@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	24(%rsp), %xmm7
	vcvtsi2sdl	%eax, %xmm5, %xmm0
	vfmadd132sd	40(%rsp), %xmm7, %xmm0
	vmovsd	%xmm0, 16(%rsp)
	vcvtusi2sdl	%ebx, %xmm5, %xmm0
	vsubsd	8(%rsp), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %rax
	vmovsd	32(%rsp), %xmm0
	vcvttsd2sil	0(%rbp,%rax,8), %eax
	vcvtsi2sdl	%eax, %xmm5, %xmm1
	call	pow@PLT
	vmulsd	16(%rsp), %xmm0, %xmm2
	movq	8(%r12), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%r12), %rsi
	vmovdqa	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movq	%rax, %rdx
	vmovsd	%xmm2, 16(%rsp)
	subq	%rsi, %rdx
	je	.L208
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r14
	cmpq	%rax, %rdx
	ja	.L249
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L175:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r14
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r14, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%rsi, %rax
	je	.L178
	movq	%rcx, %rdi
	movq	%rdx, 64(%rsp)
	call	memmove@PLT
	movq	64(%rsp), %rdx
	movq	%rax, %rcx
.L178:
	addq	%rdx, %rcx
	movl	48(%rsp), %edx
	leaq	112(%rsp), %rdi
	movl	%ebx, %esi
	movq	%rcx, 120(%rsp)
.LEHB15:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE15:
	vmovsd	16(%rsp), %xmm7
	movq	(%r12), %rax
	movq	112(%rsp), %rdi
	vsubsd	%xmm0, %xmm7, %xmm0
	vmovsd	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L179
	movq	128(%rsp), %rsi
	addl	$1, %ebx
	addq	$8, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, 60(%rsp)
	jne	.L182
.L181:
	leaq	.LC18(%rip), %rdi
.LEHB16:
	call	puts@PLT
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L183
	leaq	8(%r15), %rax
	cmpq	%rax, %rbx
	je	.L184
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L186:
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
	je	.L185
	vmovsd	(%r14), %xmm0
	vmovsd	(%rax), %xmm1
	vmovsd	%xmm1, (%r14)
	vmovsd	%xmm0, (%rax)
.L185:
	addq	$8, %r14
	cmpq	%r14, %rbx
	jne	.L186
	movq	8(%r12), %rax
	movq	(%r12), %r15
.L184:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, %rbx
	movq	$0, 128(%rsp)
	vcvttsd2usi	72(%rsp), %r14d
	vmovdqa	%xmm0, 112(%rsp)
	subq	%r15, %rbx
	je	.L209
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L250
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE16:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %r15
	movq	%rax, %rdx
	subq	%r15, %rdx
.L187:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%rax, %r15
	je	.L190
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rdx
	movq	%rax, %rcx
.L190:
	movl	60(%rsp), %esi
	addq	%rdx, %rcx
	leaq	112(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rcx, 120(%rsp)
.LEHB17:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE17:
	movq	88(%rsp), %rax
	movq	112(%rsp), %rdi
	vmovsd	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L191
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L191:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	80(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$3, %rcx
	movq	$0x000000000, (%rdi)
	je	.L192
	vmovq	.LC12(%rip), %xmm2
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L193:
	vmovsd	(%rsi,%rax,8), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	vandpd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L193
.L192:
	movq	88(%rsp), %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovsd	(%rax), %xmm0
	vucomisd	%xmm7, %xmm0
	jp	.L218
	je	.L194
.L218:
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
.L194:
	movq	80(%rsp), %rax
	leaq	.LC19(%rip), %rdi
	vmovsd	%xmm0, (%rax)
.LEHB18:
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
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
	jne	.L251
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
.L208:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L175
	.p2align 4,,10
	.p2align 3
.L179:
	addl	$1, %ebx
	addq	$8, %r15
	cmpl	%ebx, 60(%rsp)
	jne	.L182
	jmp	.L181
	.p2align 4,,10
	.p2align 3
.L207:
	movq	$0, 104(%rsp)
	xorl	%r13d, %r13d
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L157:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L249:
	testq	%rdx, %rdx
	jns	.L177
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L183:
	vpxor	%xmm0, %xmm0, %xmm0
	vcvttsd2usi	72(%rsp), %r14d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	jmp	.L190
	.p2align 4,,10
	.p2align 3
.L177:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L238:
	vmovsd	%xmm4, 0(%r13)
	movq	$0x000000000, (%rbx)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L209:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L187
.L250:
	testq	%rbx, %rbx
	jns	.L189
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L189:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE18:
.L247:
	leaq	.LC7(%rip), %rdi
.LEHB19:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE19:
.L251:
	call	__stack_chk_fail@PLT
.L248:
	leaq	.LC7(%rip), %rdi
.LEHB20:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE20:
.L211:
	endbr64
	movq	%rax, %rbx
	jmp	.L202
.L214:
	endbr64
.L246:
	movq	%rax, %rbx
.L199:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L198
	vzeroupper
	call	_ZdlPvm@PLT
.L198:
	movq	96(%rsp), %rsi
	movq	%rbp, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L201:
	movq	104(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L202:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L242
	vzeroupper
	call	_ZdlPvm@PLT
.L203:
	movq	%rbx, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L242:
	vzeroupper
	jmp	.L203
.L166:
	vmovsd	48(%rsp), %xmm7
	vmovsd	%xmm7, 0
	ud2
.L213:
	endbr64
	movq	%rax, %rbx
	jmp	.L198
.L215:
	endbr64
	jmp	.L246
.L212:
	endbr64
	movq	%rax, %rbx
	jmp	.L201
	.cfi_endproc
.LFE6142:
	.section	.gcc_except_table._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA6142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6142-.LLSDACSB6142
.LLSDACSB6142:
	.uleb128 .LEHB11-.LFB6142
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB6142
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L211-.LFB6142
	.uleb128 0
	.uleb128 .LEHB13-.LFB6142
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L212-.LFB6142
	.uleb128 0
	.uleb128 .LEHB14-.LFB6142
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L213-.LFB6142
	.uleb128 0
	.uleb128 .LEHB15-.LFB6142
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L214-.LFB6142
	.uleb128 0
	.uleb128 .LEHB16-.LFB6142
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L213-.LFB6142
	.uleb128 0
	.uleb128 .LEHB17-.LFB6142
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L215-.LFB6142
	.uleb128 0
	.uleb128 .LEHB18-.LFB6142
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L213-.LFB6142
	.uleb128 0
	.uleb128 .LEHB19-.LFB6142
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L211-.LFB6142
	.uleb128 0
	.uleb128 .LEHB20-.LFB6142
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L212-.LFB6142
	.uleb128 0
	.uleb128 .LEHB21-.LFB6142
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE6142:
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.rodata._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_.str1.1,"aMS",@progbits,1
.LC20:
	.string	"   -"
.LC21:
	.string	"   ----------> START GEN FP"
.LC22:
	.string	"In while"
.LC23:
	.string	"   ----------- End GEN FP"
	.section	.text._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5916:
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
	leaq	.LC20(%rip), %rdi
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	vmovsd	%xmm0, 8(%rsp)
	leaq	32(%rsp), %r14
	leaq	24(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	vmovsd	8(%rsp), %xmm0
	movq	%r13, %rdx
	movq	$0x000000000, 24(%rsp)
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	32(%rsp), %xmm4
	movq	48(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm4, (%rbx)
	vmovdqa	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L254
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L254
	call	_ZdlPvm@PLT
.L254:
	leaq	.LC22(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L256:
	vmovsd	8(%rsp), %xmm1
	vcomisd	24(%rsp), %xmm1
	ja	.L260
	vmovsd	0(%rbp), %xmm0
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vcomisd	.LC13(%rip), %xmm0
	ja	.L260
	vmovsd	.LC14(%rip), %xmm3
	vcomisd	%xmm0, %xmm3
	jbe	.L270
.L260:
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	vmovsd	8(%rsp), %xmm0
	movq	%r13, %rdx
	call	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	32(%rsp), %xmm2
	movq	48(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm2, (%rbx)
	vmovdqa	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L256
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L256
	call	_ZdlPvm@PLT
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L270:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L271
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
.L271:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5916:
	.size	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.rodata._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.str1.1,"aMS",@progbits,1
.LC24:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.type	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, @function
_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_:
.LFB6277:
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
	je	.L293
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
	jne	.L285
	testq	%rax, %rax
	jne	.L277
	xorl	%ebx, %ebx
	xorl	%edi, %edi
.L283:
	vmovsd	(%r15), %xmm0
	subq	%r13, %r12
	leaq	8(%rdi,%rdx), %r15
	vmovq	%rdi, %xmm2
	leaq	(%r15,%r12), %rax
	vpinsrq	$1, %rax, %xmm2, %xmm1
	vmovsd	%xmm0, (%rdi,%rdx)
	vmovdqa	%xmm1, (%rsp)
	testq	%rdx, %rdx
	jg	.L294
	testq	%r12, %r12
	jg	.L281
	testq	%r14, %r14
	jne	.L292
.L282:
	vmovdqa	(%rsp), %xmm3
	movq	%rbx, 16(%rbp)
	vmovdqu	%xmm3, 0(%rbp)
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
.L294:
	.cfi_restore_state
	movq	%r14, %rsi
	call	memmove@PLT
	testq	%r12, %r12
	jg	.L281
.L292:
	movq	16(%rbp), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
	jmp	.L282
	.p2align 4,,10
	.p2align 3
.L281:
	movq	%r12, %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	memcpy@PLT
	testq	%r14, %r14
	je	.L282
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L285:
	movabsq	$9223372036854775800, %rbx
.L276:
	movq	%rbx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rdi
	addq	%rax, %rbx
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L277:
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, %rax
	cmova	%rcx, %rax
	leaq	0(,%rax,8), %rbx
	jmp	.L276
.L293:
	leaq	.LC24(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6277:
	.size	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_, .-_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	.section	.rodata._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji.str1.1,"aMS",@progbits,1
.LC25:
	.string	"../data/vector%d.bin"
.LC26:
	.string	"../src/data/vector%d.bin"
.LC27:
	.string	"../data_big/vector%d.bin"
.LC28:
	.string	"../src/data_big/vector%d.bin"
	.section	.rodata._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji.str1.8,"aMS",@progbits,1
	.align 8
.LC29:
	.string	"Could not open binary_file.bin"
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.p2align 4
	.weak	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.type	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, @function
_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji:
.LFB5900:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5900
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	leaq	-49152(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$1440, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, 50584(%rsp)
	xorl	%eax, %eax
	movq	%rdi, %rbx
	movl	%esi, %r8d
	cmpl	$1, %edx
	je	.L331
	cmpl	$2, %edx
	je	.L298
	cmpl	$3, %edx
	je	.L332
	cmpl	$4, %edx
	jne	.L297
	leaq	576(%rsp), %rdi
	leaq	.LC28(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L297:
	leaq	288(%rsp), %r15
	leaq	32(%rsp), %r12
	movq	%r15, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rax, 288(%rsp)
	xorl	%eax, %eax
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movw	%ax, 512(%rsp)
	movq	8+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	vmovdqu	%ymm0, 520(%rsp)
	movq	%rax, 32(%rsp)
	movq	-24(%rax), %rax
	movq	$0, 504(%rsp)
	movq	%rcx, 32(%rsp,%rax)
	movq	8+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, 40(%rsp)
	movq	-24(%rax), %rdi
	addq	%r12, %rdi
	vzeroupper
.LEHB22:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE22:
	leaq	24+_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	48(%rsp), %r14
	movq	%rax, 32(%rsp)
	movq	%r14, %rdi
	addq	$40, %rax
	movq	%rax, 288(%rsp)
.LEHB23:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE23:
	movq	%r14, %rsi
	movq	%r15, %rdi
.LEHB24:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	576(%rsp), %rsi
	movl	$12, %edx
	movq	%r14, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	32(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r12, %rdi
	testq	%rax, %rax
	je	.L333
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE24:
.L303:
	testb	$5, 320(%rsp)
	jne	.L334
.L305:
	leaq	24(%rsp), %r13
.L312:
	movl	$8, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB25:
	call	_ZNSi4readEPcl@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	jne	.L335
.L315:
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	je	.L313
	vmovsd	24(%rsp), %xmm0
	addq	$8, %rsi
	movl	$8, %edx
	movq	%r12, %rdi
	vmovsd	%xmm0, -8(%rsi)
	movq	%rsi, 8(%rbx)
	movq	%r13, %rsi
	call	_ZNSi4readEPcl@PLT
	movq	(%rax), %rdx
	movq	-24(%rdx), %rdx
	testb	$5, 32(%rax,%rdx)
	je	.L315
.L335:
	movq	%r14, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE25:
	testq	%rax, %rax
	je	.L336
.L316:
	leaq	24+_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 32(%rsp)
	addq	$40, %rax
	movq	%rax, 288(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 48(%rsp)
.LEHB26:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE26:
.L318:
	leaq	152(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	104(%rsp), %rdi
	movq	%rax, 48(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r15, %rdi
	movq	%rax, 32(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 32(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 288(%rsp)
	movq	$0, 40(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	50584(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L337
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L332:
	.cfi_restore_state
	leaq	576(%rsp), %rdi
	leaq	.LC27(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L313:
	movq	%r13, %rdx
	movq	%rbx, %rdi
.LEHB27:
	call	_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L334:
	movl	$30, %edx
	leaq	.LC29(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cerr(%rip), %rax
	leaq	_ZSt4cerr(%rip), %rcx
	movq	-24(%rax), %rax
	movq	240(%rcx,%rax), %r13
	testq	%r13, %r13
	je	.L338
	cmpb	$0, 56(%r13)
	je	.L310
	movsbl	67(%r13), %esi
.L311:
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE27:
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L333:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB28:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE28:
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L298:
	leaq	576(%rsp), %rdi
	leaq	.LC26(%rip), %rcx
	movl	$50000, %edx
	xorl	%eax, %eax
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L331:
	leaq	576(%rsp), %rdi
	movl	$50000, %edx
	movl	$1, %esi
	leaq	.LC25(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L297
	.p2align 4,,10
	.p2align 3
.L310:
	movq	%r13, %rdi
.LEHB29:
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L311
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L311
	.p2align 4,,10
	.p2align 3
.L336:
	movq	32(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%r12, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
	jmp	.L316
.L338:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE29:
.L337:
	call	__stack_chk_fail@PLT
.L324:
	endbr64
	movq	%rax, %rbx
	jmp	.L307
.L325:
	endbr64
	movq	%rax, %rbx
	jmp	.L306
.L322:
	endbr64
	movq	%rax, %r13
	jmp	.L319
.L326:
	endbr64
	movq	%rax, %rdi
	jmp	.L317
.L323:
	endbr64
	movq	%rax, %rbx
	jmp	.L308
.L306:
	movq	%r14, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L307:
	movq	8+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, 32(%rsp)
	movq	-24(%rax), %rax
	movq	%rcx, 32(%rsp,%rax)
	movq	$0, 40(%rsp)
.L308:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rdi
	movq	%rax, 288(%rsp)
	vzeroupper
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	%rbx, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L317:
	vzeroupper
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L318
.L319:
	movq	%r12, %rdi
	vzeroupper
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%r13, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
	.cfi_endproc
.LFE5900:
	.section	.gcc_except_table._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"aG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.align 4
.LLSDA5900:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5900-.LLSDATTD5900
.LLSDATTD5900:
	.byte	0x1
	.uleb128 .LLSDACSE5900-.LLSDACSB5900
.LLSDACSB5900:
	.uleb128 .LEHB22-.LFB5900
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L323-.LFB5900
	.uleb128 0
	.uleb128 .LEHB23-.LFB5900
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L324-.LFB5900
	.uleb128 0
	.uleb128 .LEHB24-.LFB5900
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L325-.LFB5900
	.uleb128 0
	.uleb128 .LEHB25-.LFB5900
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L322-.LFB5900
	.uleb128 0
	.uleb128 .LEHB26-.LFB5900
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L326-.LFB5900
	.uleb128 0x1
	.uleb128 .LEHB27-.LFB5900
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L322-.LFB5900
	.uleb128 0
	.uleb128 .LEHB28-.LFB5900
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L325-.LFB5900
	.uleb128 0
	.uleb128 .LEHB29-.LFB5900
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L322-.LFB5900
	.uleb128 0
	.uleb128 .LEHB30-.LFB5900
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB5900
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE5900:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5900:
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.size	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, .-_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.section	.text._Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,comdat
	.p2align 4
	.weak	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj:
.LFB6307:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	movl	%edx, %r13d
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%esi, %ebx
	andq	$-64, %rsp
	subq	$64, %rsp
	movq	8(%rdi), %rax
	movq	(%rdi), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, %r12
	je	.L356
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rdx
	ja	.L376
	movq	%rdi, %r14
	movq	%rdx, %rdi
	call	_Znwm@PLT
	movq	(%r14), %rsi
	movq	%rax, %rdi
	movq	8(%r14), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L340:
	cmpq	%rsi, %rax
	je	.L343
	call	memmove@PLT
	movq	%rax, %rdi
.L343:
	movl	%r13d, %esi
	subl	$1, %esi
	je	.L344
	cmpl	$1, %ebx
	jbe	.L344
	leal	-2(%rbx), %eax
	movl	$1, %ecx
	leaq	4(%rdi), %r8
	leaq	8(%rdi,%rax,4), %rdx
	.p2align 4,,10
	.p2align 3
.L345:
	vmovss	(%rdi), %xmm0
	movq	%r8, %rax
	.p2align 4,,10
	.p2align 3
.L346:
	vaddss	(%rax), %xmm0, %xmm0
	movl	$0x00000000, -4(%rax)
	addq	$4, %rax
	vmovss	%xmm0, -4(%rax)
	cmpq	%rdx, %rax
	jne	.L346
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jbe	.L345
.L347:
	leal	-1(%rbx), %eax
	cmpl	$14, %eax
	jbe	.L358
	movl	%ebx, %edx
	movq	%rdi, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	shrl	$4, %edx
	salq	$6, %rdx
	addq	%rdi, %rdx
	.p2align 4,,10
	.p2align 3
.L350:
	vaddps	(%rax), %zmm0, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L350
	vextracti64x4	$0x1, %zmm0, %ymm1
	movl	%ebx, %eax
	vaddps	%ymm0, %ymm1, %ymm1
	andl	$-16, %eax
	vextractf128	$0x1, %ymm1, %xmm0
	vaddps	%xmm1, %xmm0, %xmm0
	vmovhlps	%xmm0, %xmm0, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vshufps	$85, %xmm1, %xmm1, %xmm0
	vaddps	%xmm1, %xmm0, %xmm0
	testb	$15, %bl
	je	.L374
.L349:
	movl	%ebx, %edx
	subl	%eax, %edx
	leal	-1(%rdx), %ecx
	cmpl	$6, %ecx
	jbe	.L353
	movl	%eax, %ecx
	vmovups	(%rdi,%rcx,4), %ymm2
	movl	%edx, %ecx
	andl	$-8, %ecx
	vextractf128	$0x1, %ymm2, %xmm1
	addl	%ecx, %eax
	vaddps	%xmm2, %xmm1, %xmm1
	vmovhlps	%xmm1, %xmm1, %xmm2
	vaddps	%xmm1, %xmm2, %xmm2
	vshufps	$85, %xmm2, %xmm2, %xmm1
	vaddps	%xmm2, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	cmpl	%ecx, %edx
	je	.L374
.L353:
	movl	%eax, %edx
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	leal	1(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L374
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	leal	2(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L374
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	leal	3(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L374
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	leal	4(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L374
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	leal	5(%rax), %edx
	cmpl	%edx, %ebx
	jbe	.L374
	addl	$6, %eax
	vaddss	(%rdi,%rdx,4), %xmm0, %xmm0
	cmpl	%eax, %ebx
	jbe	.L374
	vaddss	(%rdi,%rax,4), %xmm0, %xmm0
	vzeroupper
.L348:
	testq	%rdi, %rdi
	je	.L339
	movq	%r12, %rsi
	vmovss	%xmm0, 60(%rsp)
	call	_ZdlPvm@PLT
	vmovss	60(%rsp), %xmm0
.L339:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L374:
	.cfi_restore_state
	vzeroupper
	jmp	.L348
.L356:
	xorl	%edi, %edi
	jmp	.L340
.L376:
	testq	%rdx, %rdx
	jns	.L342
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L344:
	vxorps	%xmm0, %xmm0, %xmm0
	testl	%ebx, %ebx
	je	.L348
	jmp	.L347
.L358:
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	.L349
.L342:
	call	_ZSt17__throw_bad_allocv@PLT
	.cfi_endproc
.LFE6307:
	.size	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6114:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6114
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vcvtss2sd	%xmm0, %xmm0, %xmm0
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
	movl	%esi, %ebx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdx, 64(%rsp)
	movl	%esi, 48(%rsp)
	movq	%rcx, 72(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
	call	log@PLT
	vmulsd	.LC1(%rip), %xmm0, %xmm0
	movl	%ebx, %edx
	movq	$0, 16(%r12)
	vcvtsd2ss	%xmm0, %xmm0, %xmm7
	vcvtss2sd	%xmm7, %xmm7, %xmm3
	vmulsd	.LC2(%rip), %xmm3, %xmm0
	vmovsd	%xmm3, 8(%rsp)
	vmovss	%xmm7, 36(%rsp)
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm5
	vmovss	%xmm5, 40(%rsp)
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtusi2sdl	%ebx, %xmm5, %xmm0
	vmulsd	.LC4(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vmovss	%xmm3, (%rsp)
	vmovdqu	%xmm0, (%r12)
	testq	%rdx, %rdx
	je	.L378
	leaq	0(,%rdx,4), %r13
	movq	%r13, %rdi
.LEHB32:
	call	_Znwm@PLT
.LEHE32:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	vmovq	%rax, %xmm4
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, (%r12)
	call	memset@PLT
.L429:
	vcvttss2usi	(%rsp), %rax
	movq	%rbx, 8(%r12)
	movq	%rax, %rdi
	shrq	$61, %rdi
	jne	.L471
	leaq	0(,%rax,4), %r14
	testq	%rax, %rax
	je	.L432
	movq	%r14, %rdi
.LEHB33:
	call	_Znwm@PLT
.LEHE33:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 88(%rsp)
	cmpq	%r13, %rax
	je	.L380
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L380:
	vmovsd	.LC4(%rip), %xmm3
	vmulsd	8(%rsp), %xmm3, %xmm0
	vxorps	%xmm7, %xmm7, %xmm7
	vmovss	(%rsp), %xmm4
	vcomiss	%xmm7, %xmm4
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm6
	vsubss	.LC31(%rip), %xmm4, %xmm0
	vmovd	%xmm6, %ebp
	vcvttss2usi	%xmm0, %rax
	leaq	0(%r13,%rax,4), %rbx
	jbe	.L462
	vmovss	.LC8(%rip), %xmm6
	vmulss	36(%rsp), %xmm6, %xmm3
	xorl	%r14d, %r14d
	vmovss	%xmm6, 8(%rsp)
	vmovss	%xmm3, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L388:
	call	rand@PLT
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ssl	%eax, %xmm6, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0
	movl	%r14d, %eax
	vcomiss	%xmm3, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	jbe	.L463
	vaddsd	.LC4(%rip), %xmm0, %xmm0
	addl	$1, %r14d
	vmovss	(%rsp), %xmm5
	vcvttsd2sil	%xmm0, %edx
	vcvtsi2ssl	%edx, %xmm6, %xmm0
	vmovss	%xmm0, 0(%r13,%rax,4)
	vcvtusi2ssl	%r14d, %xmm6, %xmm0
	vcomiss	%xmm0, %xmm5
	ja	.L388
.L386:
	vmovsd	.LC11(%rip), %xmm6
	movl	%ebp, 0(%r13)
	vmovsd	.LC10(%rip), %xmm3
	movl	$0x00000000, (%rbx)
	xorl	%ebx, %ebx
	vmovsd	%xmm6, 24(%rsp)
	vmovsd	%xmm3, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L389:
	call	rand@PLT
	vxorps	%xmm7, %xmm7, %xmm7
	vmovsd	16(%rsp), %xmm3
	movl	%ebx, %r14d
	vcvtsi2ssl	%eax, %xmm7, %xmm0
	vmulss	8(%rsp), %xmm0, %xmm0
	addl	$1, %ebx
	vcvttss2sil	0(%r13,%r14,4), %eax
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm5
	vmovsd	24(%rsp), %xmm0
	vfmadd132sd	%xmm0, %xmm3, %xmm5
	vmovq	%xmm5, %rbp
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%eax, %xmm5, %xmm1
	call	pow@PLT
	vmovq	%rbp, %xmm4
	movq	(%r12), %rax
	vxorps	%xmm7, %xmm7, %xmm7
	vmovsd	%xmm0, %xmm0, %xmm1
	vcvtsd2ss	%xmm4, %xmm4, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax,%r14,4)
	vcvtusi2ssl	%ebx, %xmm7, %xmm0
	vmovss	(%rsp), %xmm7
	vcomiss	%xmm0, %xmm7
	ja	.L389
.L430:
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtusi2ssl	48(%rsp), %xmm5, %xmm0
	vsubss	(%rsp), %xmm0, %xmm7
	vcvttss2usi	%xmm7, %rax
	vmovss	%xmm7, 8(%rsp)
	movq	%rax, %rdi
	shrq	$61, %rdi
	jne	.L472
	testq	%rax, %rax
	je	.L391
	leaq	0(,%rax,4), %rbx
	movq	%rbx, %rdi
	movq	%rbx, 80(%rsp)
.LEHB34:
	call	_Znwm@PLT
.LEHE34:
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.L395
	movq	80(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L395:
	vmovss	8(%rsp), %xmm7
	vsubss	.LC31(%rip), %xmm7, %xmm2
	vcomiss	.LC31(%rip), %xmm7
	vmovss	36(%rsp), %xmm5
	vdivss	%xmm2, %xmm5, %xmm1
	vmovss	%xmm5, 0(%rbp)
	jbe	.L394
	vsubss	%xmm1, %xmm5, %xmm0
	movl	$2, %eax
	vcomiss	.LC32(%rip), %xmm7
	vmovss	%xmm0, 4(%rbp)
	jbe	.L394
	.p2align 4,,10
	.p2align 3
.L397:
	leal	-1(%rax), %ecx
	movl	%eax, %edx
	vxorps	%xmm7, %xmm7, %xmm7
	addl	$1, %eax
	vmovss	0(%rbp,%rcx,4), %xmm0
	vmovss	8(%rsp), %xmm3
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 0(%rbp,%rdx,4)
	vcvtusi2ssl	%eax, %xmm7, %xmm0
	vcomiss	%xmm0, %xmm3
	ja	.L397
.L394:
	vcvttss2usi	%xmm2, %rax
	vcvttss2usi	(%rsp), %ebx
	movl	$0x00000000, 0(%rbp,%rax,4)
	vcvttss2usi	40(%rsp), %eax
	movl	%eax, 52(%rsp)
	cmpl	%ebx, 48(%rsp)
	jbe	.L407
	vmovss	.LC8(%rip), %xmm4
	movl	%ebx, %eax
	vmovsd	.LC11(%rip), %xmm6
	vmovsd	.LC10(%rip), %xmm2
	leaq	0(,%rax,4), %r15
	vmovss	%xmm4, 8(%rsp)
	vmovsd	%xmm6, 24(%rsp)
	vmovsd	%xmm2, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L408:
	call	rand@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	24(%rsp), %xmm4
	vmovsd	16(%rsp), %xmm2
	vcvtsi2ssl	%eax, %xmm5, %xmm0
	vmulss	8(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm3
	vfmadd132sd	%xmm4, %xmm2, %xmm3
	vcvtusi2ssl	%ebx, %xmm5, %xmm2
	vsubss	(%rsp), %xmm2, %xmm0
	vcvttss2usi	%xmm0, %rax
	vmovsd	%xmm4, %xmm4, %xmm0
	vmovss	%xmm2, 36(%rsp)
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%xmm3, %r14
	vcvttss2sil	0(%rbp,%rax,4), %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm1
	call	pow@PLT
	vmovq	%r14, %xmm7
	movq	(%r12), %rsi
	vmovss	36(%rsp), %xmm2
	movq	$0, 112(%rsp)
	vmovsd	%xmm0, %xmm0, %xmm1
	vcvtsd2ss	%xmm7, %xmm7, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvttss2usi	%xmm2, %eax
	vmulsd	%xmm1, %xmm0, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	movl	%eax, 36(%rsp)
	movq	8(%r12), %rax
	vmovsd	%xmm3, 40(%rsp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L433
	movabsq	$9223372036854775804, %rax
	movq	%rdx, %r14
	cmpq	%rax, %rdx
	ja	.L473
	movq	%rdx, %rdi
.LEHB35:
	call	_Znwm@PLT
.LEHE35:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L401:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r14
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r14, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L404
	movq	%rcx, %rdi
	movq	%rdx, 56(%rsp)
	call	memmove@PLT
	movq	56(%rsp), %rdx
	movq	%rax, %rcx
.L404:
	addq	%rdx, %rcx
	movl	36(%rsp), %esi
	movl	52(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB36:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE36:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	(%r12), %rax
	movq	96(%rsp), %rdi
	vmovsd	40(%rsp), %xmm4
	vsubsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L405
	movq	112(%rsp), %rsi
	addl	$1, %ebx
	addq	$4, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, 48(%rsp)
	jne	.L408
.L407:
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L474
.L399:
	leaq	4(%r15), %r14
	cmpq	%r14, %rbx
	je	.L409
	.p2align 4,,10
	.p2align 3
.L411:
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
	je	.L410
	vmovss	(%r14), %xmm0
	vmovss	(%rax), %xmm1
	vmovss	%xmm1, (%r14)
	vmovss	%xmm0, (%rax)
.L410:
	addq	$4, %r14
	cmpq	%r14, %rbx
	jne	.L411
	movq	8(%r12), %r14
	movq	(%r12), %r15
.L409:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r14, %rbx
	movq	$0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	subq	%r15, %rbx
	je	.L434
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rbx
	ja	.L475
	movq	%rbx, %rdi
.LEHB37:
	call	_Znwm@PLT
.LEHE37:
	movq	8(%r12), %r14
	movq	(%r12), %r15
	movq	%rax, %rcx
	movq	%r14, %rdx
	subq	%r15, %rdx
.L412:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	cmpq	%r14, %r15
	je	.L415
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L415:
	addq	%rdx, %rcx
	movl	48(%rsp), %esi
	movl	52(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB38:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE38:
	movq	72(%rsp), %rax
	movq	96(%rsp), %rdi
	vmovss	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L416
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L416:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	vxorps	%xmm1, %xmm1, %xmm1
	movq	64(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$2, %rcx
	movl	$0x00000000, (%rdi)
	je	.L417
	vmovss	.LC33(%rip), %xmm2
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L418:
	vmovss	(%rsi,%rax,4), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	vandps	%xmm2, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L418
.L417:
	movq	72(%rsp), %rax
	vxorps	%xmm7, %xmm7, %xmm7
	vmovss	(%rax), %xmm0
	vucomiss	%xmm7, %xmm0
	jp	.L444
	je	.L419
.L444:
	vandps	.LC33(%rip), %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
.L419:
	movq	64(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	vmovss	%xmm0, (%rax)
	call	_ZdlPvm@PLT
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L476
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
.L463:
	.cfi_restore_state
	vsubsd	.LC4(%rip), %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	addl	$1, %r14d
	vmovss	(%rsp), %xmm6
	vcvttsd2sil	%xmm0, %edx
	vcvtsi2ssl	%edx, %xmm2, %xmm0
	vmovss	%xmm0, 0(%r13,%rax,4)
	vcvtusi2ssl	%r14d, %xmm2, %xmm0
	vcomiss	%xmm0, %xmm6
	ja	.L388
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L433:
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L401
	.p2align 4,,10
	.p2align 3
.L405:
	addl	$1, %ebx
	addq	$4, %r15
	cmpl	%ebx, 48(%rsp)
	jne	.L408
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	jne	.L399
	jmp	.L474
	.p2align 4,,10
	.p2align 3
.L432:
	movq	$0, 88(%rsp)
	xorl	%r13d, %r13d
	jmp	.L380
	.p2align 4,,10
	.p2align 3
.L378:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L429
	.p2align 4,,10
	.p2align 3
.L473:
	testq	%rdx, %rdx
	jns	.L403
.LEHB39:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L474:
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	jmp	.L415
	.p2align 4,,10
	.p2align 3
.L403:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L462:
	vmovss	%xmm6, 0(%r13)
	movl	$0x00000000, (%rbx)
	jmp	.L430
	.p2align 4,,10
	.p2align 3
.L434:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L412
.L475:
	testq	%rbx, %rbx
	jns	.L414
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L414:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE39:
.L471:
	leaq	.LC7(%rip), %rdi
.LEHB40:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE40:
.L476:
	call	__stack_chk_fail@PLT
.L472:
	leaq	.LC7(%rip), %rdi
.LEHB41:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE41:
.L436:
	endbr64
	movq	%rax, %rbx
	jmp	.L427
.L439:
	endbr64
.L470:
	movq	%rax, %rbx
.L424:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L423
	vzeroupper
	call	_ZdlPvm@PLT
.L423:
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L426:
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L427:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L466
	vzeroupper
	call	_ZdlPvm@PLT
.L428:
	movq	%rbx, %rdi
.LEHB42:
	call	_Unwind_Resume@PLT
.LEHE42:
.L466:
	vzeroupper
	jmp	.L428
.L391:
	vmovss	36(%rsp), %xmm5
	vmovss	%xmm5, 0
	ud2
.L438:
	endbr64
	movq	%rax, %rbx
	jmp	.L423
.L440:
	endbr64
	jmp	.L470
.L437:
	endbr64
	movq	%rax, %rbx
	jmp	.L426
	.cfi_endproc
.LFE6114:
	.section	.gcc_except_table._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA6114:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6114-.LLSDACSB6114
.LLSDACSB6114:
	.uleb128 .LEHB32-.LFB6114
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB6114
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L436-.LFB6114
	.uleb128 0
	.uleb128 .LEHB34-.LFB6114
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L437-.LFB6114
	.uleb128 0
	.uleb128 .LEHB35-.LFB6114
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L438-.LFB6114
	.uleb128 0
	.uleb128 .LEHB36-.LFB6114
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L439-.LFB6114
	.uleb128 0
	.uleb128 .LEHB37-.LFB6114
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L438-.LFB6114
	.uleb128 0
	.uleb128 .LEHB38-.LFB6114
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L440-.LFB6114
	.uleb128 0
	.uleb128 .LEHB39-.LFB6114
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L438-.LFB6114
	.uleb128 0
	.uleb128 .LEHB40-.LFB6114
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L436-.LFB6114
	.uleb128 0
	.uleb128 .LEHB41-.LFB6114
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L437-.LFB6114
	.uleb128 0
	.uleb128 .LEHB42-.LFB6114
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
.LLSDACSE6114:
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5906:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %rcx
	vmovd	%xmm0, %r15d
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
	vmovdqa	16(%rsp), %xmm5
	movq	32(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm5, (%rbx)
	vmovdqa	%xmm0, 16(%rsp)
	testq	%rdi, %rdi
	jne	.L497
	jmp	.L481
	.p2align 4,,10
	.p2align 3
.L485:
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	movq	%r13, %rdx
	vmovd	%r15d, %xmm0
	call	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	16(%rsp), %xmm2
	movq	32(%rsp), %rax
	vpxor	%xmm3, %xmm3, %xmm3
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 32(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm2, (%rbx)
	vmovdqa	%xmm3, 16(%rsp)
	testq	%rdi, %rdi
	je	.L481
.L497:
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	16(%rsp), %rdi
	movq	32(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L481
	call	_ZdlPvm@PLT
.L481:
	vmovd	%r15d, %xmm1
	vcomiss	12(%rsp), %xmm1
	ja	.L485
	vmovss	0(%rbp), %xmm0
	vandps	.LC33(%rip), %xmm0, %xmm0
	vcomiss	.LC34(%rip), %xmm0
	ja	.L485
	vmovss	.LC35(%rip), %xmm4
	vcomiss	%xmm0, %xmm4
	ja	.L485
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L498
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
.L498:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5906:
	.size	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align 4
	.weak	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.type	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, @function
_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_:
.LFB6141:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA6141
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
	leaq	.LC15(%rip), %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdx, 64(%rsp)
	movl	%esi, 44(%rsp)
	movq	%rcx, 72(%rsp)
	vmovss	%xmm0, (%rsp)
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.LEHB43:
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	vmovss	(%rsp), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	log@PLT
	movl	%ebx, %edx
	movq	$0, 16(%r12)
	vmulsd	.LC1(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm7
	vcvtss2sd	%xmm7, %xmm7, %xmm3
	vmulsd	.LC2(%rip), %xmm3, %xmm0
	vmovsd	%xmm3, 8(%rsp)
	vmovss	%xmm7, 40(%rsp)
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm5
	vmovss	%xmm5, 60(%rsp)
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtusi2sdl	%ebx, %xmm5, %xmm0
	vmulsd	.LC4(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vmovss	%xmm3, (%rsp)
	vmovdqu	%xmm0, (%r12)
	testq	%rdx, %rdx
	je	.L500
	leaq	0(,%rdx,4), %r13
	movq	%r13, %rdi
	call	_Znwm@PLT
.LEHE43:
	movq	%r13, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r13), %rbx
	vmovq	%rax, %xmm4
	movq	%rax, %rdi
	movq	%rbx, 16(%r12)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqu	%xmm0, (%r12)
	call	memset@PLT
.L551:
	vcvttss2usi	(%rsp), %rax
	movq	%rbx, 8(%r12)
	movq	%rax, %rsi
	shrq	$61, %rsi
	jne	.L593
	leaq	0(,%rax,4), %r14
	testq	%rax, %rax
	je	.L554
	movq	%r14, %rdi
.LEHB44:
	call	_Znwm@PLT
.LEHE44:
	movq	%rax, %r13
	leaq	(%rax,%r14), %rax
	movq	%rax, 88(%rsp)
	cmpq	%r13, %rax
	je	.L502
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L502:
	vmovsd	.LC4(%rip), %xmm3
	vmulsd	8(%rsp), %xmm3, %xmm0
	vxorps	%xmm7, %xmm7, %xmm7
	vmovss	(%rsp), %xmm4
	vcomiss	%xmm7, %xmm4
	vmovsd	%xmm0, %xmm0, %xmm1
	vandpd	.LC5(%rip), %xmm1, %xmm1
	vorpd	.LC6(%rip), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vrndscalesd	$3, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm6
	vsubss	.LC31(%rip), %xmm4, %xmm0
	vmovd	%xmm6, %ebp
	vcvttss2usi	%xmm0, %rax
	leaq	0(%r13,%rax,4), %rbx
	jbe	.L584
	vmovss	.LC8(%rip), %xmm6
	vmulss	40(%rsp), %xmm6, %xmm5
	xorl	%r14d, %r14d
	vmovss	%xmm6, 8(%rsp)
	vmovss	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L510:
	call	rand@PLT
	vxorps	%xmm6, %xmm6, %xmm6
	vxorps	%xmm3, %xmm3, %xmm3
	vcvtsi2ssl	%eax, %xmm6, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0
	movl	%r14d, %eax
	vcomiss	%xmm3, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	jbe	.L585
	vaddsd	.LC4(%rip), %xmm0, %xmm0
	addl	$1, %r14d
	vmovss	(%rsp), %xmm5
	vcvttsd2sil	%xmm0, %edx
	vcvtsi2ssl	%edx, %xmm6, %xmm0
	vmovss	%xmm0, 0(%r13,%rax,4)
	vcvtusi2ssl	%r14d, %xmm6, %xmm0
	vcomiss	%xmm0, %xmm5
	ja	.L510
.L508:
	vmovsd	.LC11(%rip), %xmm4
	movl	%ebp, 0(%r13)
	vmovsd	.LC10(%rip), %xmm5
	movl	$0x00000000, (%rbx)
	xorl	%ebx, %ebx
	vmovsd	%xmm4, 24(%rsp)
	vmovsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L511:
	call	rand@PLT
	vxorps	%xmm7, %xmm7, %xmm7
	vmovsd	16(%rsp), %xmm3
	movl	%ebx, %r14d
	vcvtsi2ssl	%eax, %xmm7, %xmm0
	vmulss	8(%rsp), %xmm0, %xmm0
	addl	$1, %ebx
	vcvttss2sil	0(%r13,%r14,4), %eax
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm5
	vmovsd	24(%rsp), %xmm0
	vfmadd132sd	%xmm0, %xmm3, %xmm5
	vmovq	%xmm5, %rbp
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtsi2sdl	%eax, %xmm5, %xmm1
	call	pow@PLT
	vmovq	%rbp, %xmm4
	movq	(%r12), %rax
	vxorps	%xmm7, %xmm7, %xmm7
	vmovsd	%xmm0, %xmm0, %xmm1
	vcvtsd2ss	%xmm4, %xmm4, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax,%r14,4)
	vcvtusi2ssl	%ebx, %xmm7, %xmm0
	vmovss	(%rsp), %xmm7
	vcomiss	%xmm0, %xmm7
	ja	.L511
.L552:
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtusi2ssl	44(%rsp), %xmm5, %xmm0
	vsubss	(%rsp), %xmm0, %xmm7
	vcvttss2usi	%xmm7, %rax
	vmovss	%xmm7, 8(%rsp)
	movq	%rax, %rsi
	shrq	$61, %rsi
	jne	.L594
	testq	%rax, %rax
	je	.L513
	leaq	0(,%rax,4), %rbx
	movq	%rbx, %rdi
	movq	%rbx, 80(%rsp)
.LEHB45:
	call	_Znwm@PLT
.LEHE45:
	movq	%rax, %rbp
	testq	%rbx, %rbx
	je	.L517
	movq	80(%rsp), %rdx
	xorl	%esi, %esi
	movq	%rax, %rdi
	call	memset@PLT
.L517:
	vmovss	8(%rsp), %xmm6
	vsubss	.LC31(%rip), %xmm6, %xmm2
	vcomiss	.LC31(%rip), %xmm6
	vmovss	40(%rsp), %xmm7
	vdivss	%xmm2, %xmm7, %xmm1
	vmovss	%xmm7, 0(%rbp)
	jbe	.L516
	vsubss	%xmm1, %xmm7, %xmm0
	movl	$2, %eax
	vcomiss	.LC32(%rip), %xmm6
	vmovss	%xmm0, 4(%rbp)
	jbe	.L516
	.p2align 4,,10
	.p2align 3
.L519:
	leal	-1(%rax), %ecx
	movl	%eax, %edx
	vxorps	%xmm7, %xmm7, %xmm7
	addl	$1, %eax
	vmovss	0(%rbp,%rcx,4), %xmm0
	vmovss	8(%rsp), %xmm3
	vsubss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, 0(%rbp,%rdx,4)
	vcvtusi2ssl	%eax, %xmm7, %xmm0
	vcomiss	%xmm0, %xmm3
	ja	.L519
.L516:
	vcvttss2usi	%xmm2, %rax
	leaq	.LC17(%rip), %rdi
	movl	$0x00000000, 0(%rbp,%rax,4)
.LEHB46:
	call	puts@PLT
	vcvttss2usi	(%rsp), %ebx
	cmpl	%ebx, 44(%rsp)
	jbe	.L528
	vcvttss2usi	60(%rsp), %eax
	vmovss	.LC8(%rip), %xmm4
	vmovsd	.LC11(%rip), %xmm2
	vmovsd	.LC10(%rip), %xmm5
	vmovss	%xmm4, 8(%rsp)
	vmovsd	%xmm2, 24(%rsp)
	movl	%eax, 56(%rsp)
	movl	%ebx, %eax
	leaq	0(,%rax,4), %r15
	vmovsd	%xmm5, 16(%rsp)
	.p2align 4,,10
	.p2align 3
.L529:
	call	rand@PLT
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	24(%rsp), %xmm4
	vmovsd	16(%rsp), %xmm2
	vcvtsi2ssl	%eax, %xmm5, %xmm0
	vmulss	8(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm3
	vfmadd132sd	%xmm4, %xmm2, %xmm3
	vcvtusi2ssl	%ebx, %xmm5, %xmm2
	vsubss	(%rsp), %xmm2, %xmm0
	vcvttss2usi	%xmm0, %rax
	vmovsd	%xmm4, %xmm4, %xmm0
	vmovss	%xmm2, 40(%rsp)
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovq	%xmm3, %r14
	vcvttss2sil	0(%rbp,%rax,4), %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm1
	call	pow@PLT
	vmovq	%r14, %xmm7
	movq	(%r12), %rsi
	vmovss	40(%rsp), %xmm2
	movq	$0, 112(%rsp)
	vmovsd	%xmm0, %xmm0, %xmm1
	vcvtsd2ss	%xmm7, %xmm7, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vcvttss2usi	%xmm2, %eax
	vmulsd	%xmm1, %xmm0, %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, 96(%rsp)
	movl	%eax, 40(%rsp)
	movq	8(%r12), %rax
	vmovsd	%xmm3, 32(%rsp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L555
	movabsq	$9223372036854775804, %rax
	movq	%rdx, %r14
	cmpq	%rax, %rdx
	ja	.L595
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE46:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L522:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r14
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r14, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	cmpq	%rax, %rsi
	je	.L525
	movq	%rcx, %rdi
	movq	%rdx, 48(%rsp)
	call	memmove@PLT
	movq	48(%rsp), %rdx
	movq	%rax, %rcx
.L525:
	addq	%rdx, %rcx
	movl	40(%rsp), %esi
	movl	56(%rsp), %edx
	leaq	96(%rsp), %rdi
	movq	%rcx, 104(%rsp)
.LEHB47:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE47:
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movq	(%r12), %rax
	movq	96(%rsp), %rdi
	vmovsd	32(%rsp), %xmm4
	vsubsd	%xmm0, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rax,%r15)
	testq	%rdi, %rdi
	je	.L526
	movq	112(%rsp), %rsi
	addl	$1, %ebx
	addq	$4, %r15
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, 44(%rsp)
	jne	.L529
.L528:
	leaq	.LC18(%rip), %rdi
.LEHB48:
	call	puts@PLT
	movq	8(%r12), %rbx
	movq	(%r12), %r15
	cmpq	%rbx, %r15
	je	.L530
	leaq	4(%r15), %rax
	cmpq	%rax, %rbx
	je	.L531
	movq	%rax, %r14
	.p2align 4,,10
	.p2align 3
.L533:
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
	je	.L532
	vmovss	(%r14), %xmm0
	vmovss	(%rax), %xmm1
	vmovss	%xmm1, (%r14)
	vmovss	%xmm0, (%rax)
.L532:
	addq	$4, %r14
	cmpq	%r14, %rbx
	jne	.L533
	movq	8(%r12), %rax
	movq	(%r12), %r15
.L531:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, %rbx
	movq	$0, 112(%rsp)
	vcvttss2usi	60(%rsp), %r14d
	vmovdqa	%xmm0, 96(%rsp)
	subq	%r15, %rbx
	je	.L556
	movabsq	$9223372036854775804, %rax
	cmpq	%rax, %rbx
	ja	.L596
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE48:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %r15
	movq	%rax, %rdx
	subq	%r15, %rdx
.L534:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	cmpq	%rax, %r15
	je	.L537
	movq	%rcx, %rdi
	movq	%r15, %rsi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L537:
	movl	44(%rsp), %esi
	addq	%rdx, %rcx
	leaq	96(%rsp), %rdi
	movl	%r14d, %edx
	movq	%rcx, 104(%rsp)
.LEHB49:
	call	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.LEHE49:
	movq	72(%rsp), %rax
	movq	96(%rsp), %rdi
	vmovss	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L538
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L538:
	movq	(%r12), %rsi
	movq	8(%r12), %rcx
	vxorps	%xmm1, %xmm1, %xmm1
	movq	64(%rsp), %rdi
	subq	%rsi, %rcx
	sarq	$2, %rcx
	movl	$0x00000000, (%rdi)
	je	.L539
	vmovss	.LC33(%rip), %xmm2
	xorl	%edx, %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L540:
	vmovss	(%rsi,%rax,4), %xmm0
	leal	1(%rdx), %eax
	movq	%rax, %rdx
	vandps	%xmm2, %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, (%rdi)
	cmpq	%rcx, %rax
	jb	.L540
.L539:
	movq	72(%rsp), %rax
	vxorps	%xmm6, %xmm6, %xmm6
	vmovss	(%rax), %xmm0
	vucomiss	%xmm6, %xmm0
	jp	.L566
	je	.L541
.L566:
	vandps	.LC33(%rip), %xmm0, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
.L541:
	movq	64(%rsp), %rax
	leaq	.LC19(%rip), %rdi
	vmovss	%xmm0, (%rax)
.LEHB50:
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
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
	jne	.L597
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
.L585:
	.cfi_restore_state
	vsubsd	.LC4(%rip), %xmm0, %xmm0
	vxorps	%xmm2, %xmm2, %xmm2
	addl	$1, %r14d
	vmovss	(%rsp), %xmm6
	vcvttsd2sil	%xmm0, %edx
	vcvtsi2ssl	%edx, %xmm2, %xmm0
	vmovss	%xmm0, 0(%r13,%rax,4)
	vcvtusi2ssl	%r14d, %xmm2, %xmm0
	vcomiss	%xmm0, %xmm6
	ja	.L510
	jmp	.L508
	.p2align 4,,10
	.p2align 3
.L555:
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L522
	.p2align 4,,10
	.p2align 3
.L526:
	addl	$1, %ebx
	addq	$4, %r15
	cmpl	%ebx, 44(%rsp)
	jne	.L529
	jmp	.L528
	.p2align 4,,10
	.p2align 3
.L554:
	movq	$0, 88(%rsp)
	xorl	%r13d, %r13d
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L500:
	movq	$0, (%r12)
	xorl	%ebx, %ebx
	movq	$0, 16(%r12)
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L595:
	testq	%rdx, %rdx
	jns	.L524
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L530:
	vpxor	%xmm0, %xmm0, %xmm0
	vcvttss2usi	60(%rsp), %r14d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	$0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	jmp	.L537
	.p2align 4,,10
	.p2align 3
.L524:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L584:
	vmovss	%xmm6, 0(%r13)
	movl	$0x00000000, (%rbx)
	jmp	.L552
	.p2align 4,,10
	.p2align 3
.L556:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L534
.L596:
	testq	%rbx, %rbx
	jns	.L536
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L536:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE50:
.L593:
	leaq	.LC7(%rip), %rdi
.LEHB51:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE51:
.L597:
	call	__stack_chk_fail@PLT
.L594:
	leaq	.LC7(%rip), %rdi
.LEHB52:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE52:
.L558:
	endbr64
	movq	%rax, %rbx
	jmp	.L549
.L561:
	endbr64
.L592:
	movq	%rax, %rbx
.L546:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L545
	vzeroupper
	call	_ZdlPvm@PLT
.L545:
	movq	80(%rsp), %rsi
	movq	%rbp, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L548:
	movq	88(%rsp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L549:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L588
	vzeroupper
	call	_ZdlPvm@PLT
.L550:
	movq	%rbx, %rdi
.LEHB53:
	call	_Unwind_Resume@PLT
.LEHE53:
.L588:
	vzeroupper
	jmp	.L550
.L513:
	vmovss	40(%rsp), %xmm2
	vmovss	%xmm2, 0
	ud2
.L560:
	endbr64
	movq	%rax, %rbx
	jmp	.L545
.L562:
	endbr64
	jmp	.L592
.L559:
	endbr64
	movq	%rax, %rbx
	jmp	.L548
	.cfi_endproc
.LFE6141:
	.section	.gcc_except_table._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
.LLSDA6141:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6141-.LLSDACSB6141
.LLSDACSB6141:
	.uleb128 .LEHB43-.LFB6141
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB6141
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L558-.LFB6141
	.uleb128 0
	.uleb128 .LEHB45-.LFB6141
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L559-.LFB6141
	.uleb128 0
	.uleb128 .LEHB46-.LFB6141
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L560-.LFB6141
	.uleb128 0
	.uleb128 .LEHB47-.LFB6141
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L561-.LFB6141
	.uleb128 0
	.uleb128 .LEHB48-.LFB6141
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L560-.LFB6141
	.uleb128 0
	.uleb128 .LEHB49-.LFB6141
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L562-.LFB6141
	.uleb128 0
	.uleb128 .LEHB50-.LFB6141
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L560-.LFB6141
	.uleb128 0
	.uleb128 .LEHB51-.LFB6141
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L558-.LFB6141
	.uleb128 0
	.uleb128 .LEHB52-.LFB6141
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L559-.LFB6141
	.uleb128 0
	.uleb128 .LEHB53-.LFB6141
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE6141:
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.size	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .-_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.section	.text._Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.p2align 4
	.weak	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.type	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, @function
_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_:
.LFB5915:
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
	leaq	.LC20(%rip), %rdi
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	vmovss	%xmm0, 12(%rsp)
	leaq	32(%rsp), %r14
	leaq	28(%rsp), %r13
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	vmovss	12(%rsp), %xmm0
	movq	%r13, %rdx
	movl	$0x00000000, 28(%rsp)
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	32(%rsp), %xmm4
	movq	48(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm4, (%rbx)
	vmovdqa	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L600
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L600
	call	_ZdlPvm@PLT
.L600:
	leaq	.LC22(%rip), %r15
	.p2align 4,,10
	.p2align 3
.L602:
	vmovss	12(%rsp), %xmm1
	vcomiss	28(%rsp), %xmm1
	ja	.L606
	vmovss	0(%rbp), %xmm0
	vandps	.LC33(%rip), %xmm0, %xmm0
	vcomiss	.LC34(%rip), %xmm0
	ja	.L606
	vmovss	.LC35(%rip), %xmm3
	vcomiss	%xmm0, %xmm3
	jbe	.L616
.L606:
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movl	%r12d, %esi
	movq	%r14, %rdi
	movq	%rbp, %rcx
	vmovss	12(%rsp), %xmm0
	movq	%r13, %rdx
	call	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	vmovdqa	32(%rsp), %xmm2
	movq	48(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	$0, 48(%rsp)
	movq	%rax, 16(%rbx)
	vmovdqu	%xmm2, (%rbx)
	vmovdqa	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L602
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L602
	call	_ZdlPvm@PLT
	jmp	.L602
	.p2align 4,,10
	.p2align 3
.L616:
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L617
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
.L617:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5915:
	.size	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .-_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB6553:
	.cfi_startproc
	endbr64
	vpbroadcastq	.LC44(%rip), %zmm3
	movq	%rdi, %rdx
	movq	%rdi, %rax
	vpbroadcastq	.LC45(%rip), %zmm4
	vpbroadcastq	.LC46(%rip), %zmm5
	leaq	1792(%rdi), %rcx
	vpbroadcastq	.LC47(%rip), %zmm6
	.p2align 4,,10
	.p2align 3
.L619:
	vpandq	8(%rax), %zmm4, %zmm1
	vpandq	(%rax), %zmm3, %zmm0
	addq	$64, %rax
	vporq	%zmm1, %zmm0, %zmm0
	vpsrlq	$1, %zmm0, %zmm1
	vpandq	%zmm5, %zmm0, %zmm0
	vpxorq	3112(%rax), %zmm1, %zmm1
	vptestnmq	%zmm0, %zmm0, %k1
	vpxorq	%zmm6, %zmm1, %zmm2
	vpblendmq	%zmm1, %zmm2, %zmm0{%k1}
	vmovdqu64	%zmm0, -64(%rax)
	cmpq	%rcx, %rax
	jne	.L619
	movq	1800(%rdx), %rax
	movq	1792(%rdx), %rcx
	movq	%rax, %rsi
	andq	$-2147483648, %rcx
	andl	$2147483647, %esi
	orq	%rsi, %rcx
	movq	%rcx, %rsi
	shrq	%rsi
	xorq	4968(%rdx), %rsi
	andl	$1, %ecx
	je	.L620
	movl	$2567483615, %ecx
	xorq	%rcx, %rsi
.L620:
	movq	1808(%rdx), %rcx
	movq	%rsi, 1792(%rdx)
	andq	$-2147483648, %rax
	movq	%rcx, %rsi
	andl	$2147483647, %esi
	orq	%rsi, %rax
	movq	%rax, %rsi
	shrq	%rsi
	xorq	4976(%rdx), %rsi
	testb	$1, %al
	je	.L621
	movl	$2567483615, %eax
	xorq	%rax, %rsi
.L621:
	movq	1816(%rdx), %rax
	andq	$-2147483648, %rcx
	movq	%rsi, 1800(%rdx)
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, %rcx
	shrq	%rcx
	xorq	4984(%rdx), %rcx
	testb	$1, %al
	jne	.L622
.L624:
	movq	%rcx, 1808(%rdx)
	leaq	1816(%rdx), %rax
	leaq	4952(%rdx), %rcx
	.p2align 4,,10
	.p2align 3
.L623:
	vpandq	8(%rax), %zmm4, %zmm1
	vpandq	(%rax), %zmm3, %zmm0
	addq	$64, %rax
	vporq	%zmm1, %zmm0, %zmm0
	vpsrlq	$1, %zmm0, %zmm1
	vpandq	%zmm5, %zmm0, %zmm0
	vpxorq	-1880(%rax), %zmm1, %zmm1
	vptestnmq	%zmm0, %zmm0, %k1
	vpxorq	%zmm6, %zmm1, %zmm2
	vpblendmq	%zmm1, %zmm2, %zmm0{%k1}
	vmovdqu64	%zmm0, -64(%rax)
	cmpq	%rax, %rcx
	jne	.L623
	movq	4984(%rdx), %rax
	movq	(%rdx), %rcx
	vpxor	%xmm3, %xmm3, %xmm3
	vpbroadcastq	.LC44(%rip), %ymm0
	vpbroadcastq	.LC45(%rip), %ymm1
	vpand	4952(%rdx), %ymm0, %ymm0
	vpand	4960(%rdx), %ymm1, %ymm1
	andl	$2147483647, %ecx
	andq	$-2147483648, %rax
	orq	%rcx, %rax
	vpor	%ymm1, %ymm0, %ymm0
	movq	%rax, %rcx
	vpbroadcastq	.LC46(%rip), %ymm1
	vpsrlq	$1, %ymm0, %ymm2
	vpxor	3136(%rdx), %ymm2, %ymm2
	shrq	%rcx
	xorq	3168(%rdx), %rcx
	vpand	%ymm1, %ymm0, %ymm0
	vpbroadcastq	.LC47(%rip), %ymm1
	vpcmpeqq	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm2, %ymm1
	vpblendvb	%ymm0, %ymm2, %ymm1, %ymm0
	vmovdqu	%ymm0, 4952(%rdx)
	testb	$1, %al
	je	.L625
	movl	$2567483615, %eax
	xorq	%rax, %rcx
.L625:
	movq	%rcx, 4984(%rdx)
	movq	$0, 4992(%rdx)
	vzeroupper
	ret
.L622:
	movl	$2567483615, %eax
	xorq	%rax, %rcx
	jmp	.L624
	.cfi_endproc
.LFE6553:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text.unlikely,"ax",@progbits
.LCOLDB54:
	.text
.LHOTB54:
	.p2align 4
	.globl	_Z14vec_gen_randomiii
	.type	_Z14vec_gen_randomiii, @function
_Z14vec_gen_randomiii:
.LFB5556:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5556
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-32, %rsp
	leaq	-57344(%rsp), %r11
.LPSRL1:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL1
	subq	$2816, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, 48(%rsp)
	movl	%edx, 96(%rsp)
	movq	%fs:40, %rdx
	movq	%rdx, 60152(%rsp)
	xorl	%edx, %edx
	testl	%edi, %edi
	je	.L637
	leal	(%rsi,%rsi), %edx
	movl	%esi, %eax
	leal	1(%rdx), %esi
	movl	%esi, 52(%rsp)
	movslq	%esi, %rsi
	movq	%rsi, 64(%rsp)
	shrq	$60, %rsi
	jne	.L692
	movq	64(%rsp), %rsi
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovq	.LC53(%rip), %xmm3
	movl	$0, 100(%rsp)
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	leal	-1(%rdx), %eax
	salq	$3, %rax
	salq	$3, %rsi
	leaq	5120(%rsp), %r12
	movq	%rax, 40(%rsp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	movq	%rsi, 80(%rsp)
	vpinsrq	$1, %rax, %xmm3, %xmm2
	vmovsd	%xmm0, 72(%rsp)
	vmovdqa	%xmm2, 16(%rsp)
.L670:
	movq	80(%rsp), %rdi
.LEHB54:
	call	_Znwm@PLT
.LEHE54:
	cmpq	$1, 64(%rsp)
	movq	$0x000000000, (%rax)
	movq	%rax, %r15
	leaq	8(%rax), %r13
	je	.L640
	movq	80(%rsp), %rsi
	leaq	(%rax,%rsi), %rax
	movq	%rax, 56(%rsp)
	cmpq	%r13, %rax
	je	.L641
	leaq	-8(%rsi), %rdx
	movq	%r13, %rdi
	xorl	%esi, %esi
	call	memset@PLT
.L641:
	vmovsd	72(%rsp), %xmm2
	cmpl	$1, 52(%rsp)
	vmovsd	%xmm2, (%r15)
	jbe	.L654
	movq	40(%rsp), %rax
	leaq	5136(%rsp), %rbx
	leaq	112(%rsp), %r14
	leaq	16(%r15,%rax), %rax
	movq	%rax, 104(%rsp)
.L655:
	movl	$27765, %edx
	movq	%rbx, 5120(%rsp)
	movq	%r12, %rsi
	movq	%r14, %rdi
	movl	$1634100580, (%rbx)
	movw	%dx, 4(%rbx)
	movb	$116, 6(%rbx)
	movq	$7, 5128(%rsp)
	movb	$0, 5143(%rsp)
.LEHB55:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE55:
	movq	5120(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L645
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L645:
	movq	%r14, %rdi
.LEHB56:
	call	_ZNSt13random_device9_M_getvalEv@PLT
.LEHE56:
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, 5120(%rsp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L650:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, (%r12,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L650
	movq	$624, 10112(%rsp)
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10112(%rsp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	1(%rax), %rcx
	movq	5120(%rsp,%rax,8), %rax
	movq	%rcx, 10112(%rsp)
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
	vcvtusi2sdq	%rax, %xmm4, %xmm0
	vmovsd	%xmm0, %xmm0, %xmm1
	cmpq	$623, %rcx
	ja	.L693
.L651:
	leaq	1(%rcx), %rax
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	%rax, 10112(%rsp)
	movq	5120(%rsp,%rcx,8), %rax
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
	vcvtusi2sdq	%rax, %xmm5, %xmm0
	vfmadd132sd	.LC48(%rip), %xmm1, %xmm0
	vcomisd	.LC49(%rip), %xmm0
	jnb	.L652
	vmovsd	.LC50(%rip), %xmm6
	vfmadd213sd	.LC51(%rip), %xmm6, %xmm0
	vmovsd	%xmm0, 0(%r13)
.L691:
	movq	%r14, %rdi
	addq	$8, %r13
	call	_ZNSt13random_device7_M_finiEv@PLT
	cmpq	104(%rsp), %r13
	jne	.L655
.L654:
	cmpl	$1, 96(%rsp)
	je	.L694
	movl	96(%rsp), %eax
	cmpl	$2, %eax
	je	.L657
	cmpl	$3, %eax
	je	.L695
	cmpl	$4, 96(%rsp)
	jne	.L656
	movl	100(%rsp), %r8d
	leaq	10144(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L656:
	leaq	5368(%rsp), %r14
	movq	%r14, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%esi, %esi
	movq	%rax, 5368(%rsp)
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	movw	%ax, 5592(%rsp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	vmovdqa	%ymm0, 5600(%rsp)
	movq	-24(%rbx), %rdi
	movq	$0, 5584(%rsp)
	addq	%r12, %rdi
	movq	%rbx, 5120(%rsp)
	movq	%rax, (%rdi)
	vzeroupper
.LEHB57:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE57:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	5128(%rsp), %r13
	movq	%rax, 5120(%rsp)
	movq	%r13, %rdi
	addq	$40, %rax
	movq	%rax, 5368(%rsp)
.LEHB58:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE58:
	movq	%r13, %rsi
	movq	%r14, %rdi
.LEHB59:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	10144(%rsp), %rsi
	movl	$20, %edx
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	5120(%rsp), %rdx
	movq	-24(%rdx), %rdi
	addq	%r12, %rdi
	testq	%rax, %rax
	je	.L696
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE59:
.L662:
	movq	56(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	subq	%r15, %rdx
.LEHB60:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE60:
	testq	%rax, %rax
	je	.L697
.L667:
	vmovdqa	16(%rsp), %xmm3
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rdi
	movq	%rax, 5368(%rsp)
	vmovdqa	%xmm3, 5120(%rsp)
.LEHB61:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE61:
	leaq	5232(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	5184(%rsp), %rdi
	movq	%rax, 5128(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%r14, %rdi
	movq	%rbx, 5120(%rsp)
	movq	%rsi, 5120(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 5368(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
.L668:
	movq	80(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	addl	$1, 100(%rsp)
	movl	100(%rsp), %eax
	cmpl	48(%rsp), %eax
	jne	.L670
.L637:
	movq	60152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L698
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L693:
	.cfi_restore_state
	movq	%r12, %rdi
	vmovsd	%xmm0, 88(%rsp)
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	10112(%rsp), %rcx
	vmovsd	88(%rsp), %xmm1
	jmp	.L651
.L652:
	movq	.LC52(%rip), %rax
	movq	%rax, 0(%r13)
	jmp	.L691
.L696:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB62:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE62:
	jmp	.L662
.L657:
	movl	100(%rsp), %r8d
	leaq	10144(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L656
.L694:
	movl	100(%rsp), %r8d
	leaq	10144(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L656
.L695:
	movl	100(%rsp), %r8d
	leaq	10144(%rsp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L656
.L697:
	movq	5120(%rsp), %rax
	movq	-24(%rax), %rdi
	addq	%r12, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB63:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE63:
	jmp	.L667
.L640:
	vmovsd	72(%rsp), %xmm7
	movq	%r13, 56(%rsp)
	vmovsd	%xmm7, (%rax)
	jmp	.L654
.L692:
	leaq	.LC7(%rip), %rdi
.LEHB64:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE64:
.L698:
	call	__stack_chk_fail@PLT
.L681:
	endbr64
	movq	%rax, %rdi
	jmp	.L669
.L676:
	endbr64
	movq	%rax, %rbx
	jmp	.L673
.L680:
	endbr64
	movq	%rax, %r12
	jmp	.L664
.L679:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L665
.L678:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L666
.L675:
	endbr64
	movq	%rax, %r12
	jmp	.L672
.L677:
	endbr64
	movq	%rax, %r12
	jmp	.L647
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA5556:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5556-.LLSDATTD5556
.LLSDATTD5556:
	.byte	0x1
	.uleb128 .LLSDACSE5556-.LLSDACSB5556
.LLSDACSB5556:
	.uleb128 .LEHB54-.LFB5556
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB5556
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L677-.LFB5556
	.uleb128 0
	.uleb128 .LEHB56-.LFB5556
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L675-.LFB5556
	.uleb128 0
	.uleb128 .LEHB57-.LFB5556
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L678-.LFB5556
	.uleb128 0
	.uleb128 .LEHB58-.LFB5556
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L679-.LFB5556
	.uleb128 0
	.uleb128 .LEHB59-.LFB5556
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L680-.LFB5556
	.uleb128 0
	.uleb128 .LEHB60-.LFB5556
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L676-.LFB5556
	.uleb128 0
	.uleb128 .LEHB61-.LFB5556
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L681-.LFB5556
	.uleb128 0x1
	.uleb128 .LEHB62-.LFB5556
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L680-.LFB5556
	.uleb128 0
	.uleb128 .LEHB63-.LFB5556
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L676-.LFB5556
	.uleb128 0
	.uleb128 .LEHB64-.LFB5556
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE5556:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5556:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC5556
	.type	_Z14vec_gen_randomiii.cold, @function
_Z14vec_gen_randomiii.cold:
.LFSB5556:
.L669:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	vzeroupper
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	leaq	5232(%rsp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	5184(%rsp), %rdi
	movq	%rax, 5128(%rsp)
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%r14, %rdi
	movq	%rbx, 5120(%rsp)
	movq	%rsi, 5120(%rsp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, 5368(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L668
.L673:
	movq	%r12, %rdi
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%rbx, %r12
.L649:
	movq	80(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
.LEHB65:
	call	_Unwind_Resume@PLT
.LEHE65:
.L664:
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L665:
	movq	-24(%rbx), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rsi
	movq	%rbx, 5120(%rsp)
	movq	%rsi, 5120(%rsp,%rax)
.L666:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r14, %rdi
	movq	%rax, 5368(%rsp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L649
.L672:
	movq	%r14, %rdi
	vzeroupper
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L649
.L647:
	movq	5120(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L687
	movq	5136(%rsp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
	jmp	.L649
.L687:
	vzeroupper
	jmp	.L649
	.cfi_endproc
.LFE5556:
	.section	.gcc_except_table
	.align 4
.LLSDAC5556:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC5556-.LLSDATTDC5556
.LLSDATTDC5556:
	.byte	0x1
	.uleb128 .LLSDACSEC5556-.LLSDACSBC5556
.LLSDACSBC5556:
	.uleb128 .LEHB65-.LCOLDB54
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
.LLSDACSEC5556:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATTC5556:
	.section	.text.unlikely
	.text
	.size	_Z14vec_gen_randomiii, .-_Z14vec_gen_randomiii
	.section	.text.unlikely
	.size	_Z14vec_gen_randomiii.cold, .-_Z14vec_gen_randomiii.cold
.LCOLDE54:
	.text
.LHOTE54:
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0:
.LFB6693:
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
	jbe	.L716
	movl	$4294967295, %eax
	cmpq	%rax, %r13
	je	.L706
.L714:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	jbe	.L707
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L707:
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
	jb	.L714
	testq	%rax, %rax
	jne	.L714
.L705:
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
.L716:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	addq	$1, %r13
	movl	%r13d, %r15d
	cmpq	$623, %rax
	ja	.L717
.L701:
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
	jbe	.L702
	movl	%r13d, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L704
	jmp	.L702
	.p2align 4,,10
	.p2align 3
.L703:
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
	jbe	.L702
.L704:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L703
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L703
	.p2align 4,,10
	.p2align 3
.L702:
	shrq	$32, %rbx
	jmp	.L705
	.p2align 4,,10
	.p2align 3
.L706:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L718
.L711:
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
	jmp	.L705
	.p2align 4,,10
	.p2align 3
.L717:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L701
	.p2align 4,,10
	.p2align 3
.L718:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L711
	.cfi_endproc
.LFE6693:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0:
.LFB6696:
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
	jbe	.L739
	movl	$4294967295, %eax
	cmpq	%rax, %rbp
	je	.L726
.L730:
	movl	$-1, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rbx
	movq	4992(%r13), %rax
	salq	$32, %rbx
	cmpq	$623, %rax
	ja	.L740
.L727:
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
	jc	.L730
	salq	$32, %rbx
	cmpq	$623, %rcx
	ja	.L741
.L731:
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
	jb	.L730
	testq	%rax, %rax
	jne	.L730
.L725:
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
.L740:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L727
	.p2align 4,,10
	.p2align 3
.L741:
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rcx
	jmp	.L731
	.p2align 4,,10
	.p2align 3
.L739:
	movq	4992(%rdi), %rax
	addq	$1, %rbp
	movl	%ebp, %r15d
	cmpq	$623, %rax
	ja	.L742
.L721:
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
	jbe	.L722
	movl	%ebp, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L724
	jmp	.L722
	.p2align 4,,10
	.p2align 3
.L723:
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
	jbe	.L722
.L724:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L723
	movq	%r13, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L723
	.p2align 4,,10
	.p2align 3
.L722:
	shrq	$32, %rbx
	jmp	.L725
	.p2align 4,,10
	.p2align 3
.L726:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L743
.L735:
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
	jmp	.L725
	.p2align 4,,10
	.p2align 3
.L742:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L721
.L743:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r13), %rax
	jmp	.L735
	.cfi_endproc
.LFE6696:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	.section	.rodata._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_.str1.1,"aMS",@progbits,1
.LC55:
	.string	"\n -> START GENERATE_V"
.LC59:
	.string	"  END GENERATE_V "
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align 4
	.weak	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5914:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5914
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1984, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -10168(%rbp)
	movslq	%edx, %r15
	movq	%rdi, %rbx
	leaq	.LC55(%rip), %rdi
	movq	%rcx, -10144(%rbp)
	vmovsd	%xmm0, -10136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
.LEHB66:
	call	puts@PLT
	movq	%r15, %rax
	shrq	$60, %rax
	jne	.L820
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r15, %r13
	movq	$0, -10112(%rbp)
	leaq	0(,%r15,8), %r14
	vmovdqa	%xmm0, -10128(%rbp)
	testq	%r15, %r15
	je	.L746
	movq	%r14, %rdi
	call	_Znwm@PLT
.LEHE66:
	vmovq	%rax, %xmm6
	leaq	(%rax,%r14), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -10112(%rbp)
	vmovdqa	%xmm0, -10128(%rbp)
	cmpq	$1, %r15
	je	.L783
	cmpq	%rdi, %r12
	je	.L747
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L747:
	movq	-10144(%rbp), %rdx
	leaq	-10128(%rbp), %rdi
	movl	%r13d, %esi
	vmovsd	-10136(%rbp), %xmm0
	movq	%r12, -10120(%rbp)
.LEHB67:
	call	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE67:
	leal	-1(%r13), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%eax, -10156(%rbp)
	movl	%r13d, %eax
	shrl	$3, %eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$6, %rax
	movq	%rax, -10176(%rbp)
	movl	%r13d, %eax
	andl	$-8, %eax
	movl	%eax, -10160(%rbp)
	.p2align 4,,10
	.p2align 3
.L748:
	vmovsd	-10136(%rbp), %xmm6
	vcomisd	%xmm0, %xmm6
	ja	.L776
	movq	-10144(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vcomisd	.LC13(%rip), %xmm0
	ja	.L776
	vmovsd	.LC14(%rip), %xmm7
	vcomisd	%xmm0, %xmm7
	jbe	.L821
.L776:
	leaq	-5056(%rbp), %r12
	leaq	-10064(%rbp), %r14
	movl	$27765, %eax
	movl	$1634100580, -5040(%rbp)
	leaq	-5040(%rbp), %r15
	movq	%r12, %rsi
	movq	%r14, %rdi
	movw	%ax, -5036(%rbp)
	movq	%r15, -5056(%rbp)
	movb	$116, -5034(%rbp)
	movq	$7, -5048(%rbp)
	movb	$0, -5033(%rbp)
.LEHB68:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE68:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L749
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L749:
	movq	%r14, %rdi
.LEHB69:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, -5056(%rbp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L754:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, (%r12,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L754
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%r12, %rdi
	movq	$624, -64(%rbp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	vmulsd	.LC56(%rip), %xmm0, %xmm2
	testl	%r13d, %r13d
	jle	.L762
	movq	(%rbx), %rcx
	movq	-10168(%rbp), %rax
	movq	-10128(%rbp), %rsi
	vmovsd	.LC58(%rip), %xmm1
	movq	(%rax), %rdx
	movq	%rcx, %rax
	leaq	8(%rsi), %rdi
	vdivsd	%xmm0, %xmm1, %xmm1
	subq	%rdi, %rax
	movq	%rdx, %r8
	cmpq	$48, %rax
	seta	%al
	subq	%rdi, %r8
	cmpq	$48, %r8
	leaq	8(%rcx), %r8
	seta	%dil
	andl	%edi, %eax
	movq	%rdx, %rdi
	subq	%r8, %rdi
	cmpq	$48, %rdi
	seta	%dil
	testb	%dil, %al
	je	.L758
	movl	-10156(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L758
	cmpl	$6, %eax
	jbe	.L784
	movq	-10176(%rbp), %rdi
	vbroadcastsd	%xmm2, %zmm4
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L760:
	vmulpd	(%rsi,%rax), %zmm4, %zmm0
	vmovupd	%zmm0, (%rcx,%rax)
	vmovupd	%zmm3, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L760
	movl	-10160(%rbp), %edi
	cmpl	%r13d, %edi
	je	.L816
	movl	%r13d, %r9d
	subl	%edi, %r9d
	leal	-1(%r9), %eax
	cmpl	$2, %eax
	jbe	.L785
	movl	%edi, %r8d
	movl	%edi, %eax
.L759:
	vbroadcastsd	%xmm2, %ymm0
	movl	%r9d, %edi
	vmulpd	(%rsi,%rax,8), %ymm0, %ymm0
	andl	$-4, %edi
	vmovupd	%ymm0, (%rcx,%rax,8)
	vbroadcastsd	%xmm1, %ymm0
	vmovupd	%ymm0, (%rdx,%rax,8)
	leal	(%rdi,%r8), %eax
	cmpl	%edi, %r9d
	je	.L816
.L764:
	movslq	%eax, %r8
	vmulsd	(%rsi,%r8,8), %xmm2, %xmm0
	leaq	0(,%r8,8), %rdi
	vmovsd	%xmm0, (%rcx,%r8,8)
	vmovsd	%xmm1, (%rdx,%r8,8)
	leal	1(%rax), %r8d
	cmpl	%r8d, %r13d
	jle	.L816
	vmulsd	8(%rsi,%rdi), %xmm2, %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, 8(%rcx,%rdi)
	vmovsd	%xmm1, 8(%rdx,%rdi)
	cmpl	%eax, %r13d
	jle	.L816
	vmulsd	16(%rsi,%rdi), %xmm2, %xmm2
	vmovsd	%xmm2, 16(%rcx,%rdi)
	vmovsd	%xmm1, 16(%rdx,%rdi)
	vzeroupper
.L762:
	vmovsd	-10136(%rbp), %xmm0
	call	log@PLT
	vmulsd	.LC57(%rip), %xmm0, %xmm0
	movq	8(%rbx), %rax
	movq	$0, -10080(%rbp)
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %r15d
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -10096(%rbp)
	subq	%rsi, %rdx
	je	.L822
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	ja	.L823
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE69:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L757:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -10080(%rbp)
	vmovdqa	%xmm0, -10096(%rbp)
	cmpq	%rsi, %rax
	je	.L770
	movq	%rcx, %rdi
	movq	%rdx, -10152(%rbp)
	call	memmove@PLT
	movq	-10152(%rbp), %rdx
	movq	%rax, %rcx
.L770:
	addq	%rdx, %rcx
	leaq	-10096(%rbp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, -10088(%rbp)
.LEHB70:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE70:
	movq	-10144(%rbp), %r15
	movq	-10096(%rbp), %rdi
	vmovsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L771
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	vmovsd	(%r15), %xmm0
.L771:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L786
	xorl	%edx, %edx
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L773:
	vmovsd	(%rsi,%rax,8), %xmm1
	leal	1(%rdx), %eax
	vandpd	.LC12(%rip), %xmm1, %xmm1
	movq	%rax, %rdx
	vaddsd	%xmm1, %xmm2, %xmm2
	cmpq	%rcx, %rax
	jb	.L773
.L772:
	vxorpd	%xmm5, %xmm5, %xmm5
	vucomisd	%xmm5, %xmm0
	jp	.L791
	je	.L774
.L791:
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm0
.L774:
	vmovsd	%xmm0, -10152(%rbp)
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	vmovsd	-10152(%rbp), %xmm0
	jmp	.L748
.L816:
	vzeroupper
	jmp	.L762
.L822:
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L757
.L758:
	movl	-10156(%rbp), %r8d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L766:
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	movq	%rax, %rdi
	vmovsd	%xmm0, (%rcx,%rax,8)
	vmovsd	%xmm1, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L766
	jmp	.L762
.L786:
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L772
.L784:
	movl	%r13d, %r9d
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L759
.L785:
	movl	%edi, %eax
	jmp	.L764
.L823:
	testq	%rdx, %rdx
	jns	.L769
.LEHB71:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE71:
.L821:
	leaq	.LC59(%rip), %rdi
.LEHB72:
	call	puts@PLT
.LEHE72:
	movq	-10128(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L744
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L744:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L824
	addq	$10176, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L746:
	.cfi_restore_state
	movq	$0, -10128(%rbp)
	xorl	%r12d, %r12d
	movq	$0, -10112(%rbp)
	jmp	.L747
.L769:
.LEHB73:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE73:
.L783:
	movq	%rdi, %r12
	jmp	.L747
.L820:
	leaq	.LC7(%rip), %rdi
.LEHB74:
	call	_ZSt20__throw_length_errorPKc@PLT
.L824:
	call	__stack_chk_fail@PLT
.L787:
	endbr64
	movq	%rax, %r12
	jmp	.L753
.L789:
	endbr64
	movq	%rax, %r12
	jmp	.L778
.L751:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L753
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L753:
	movq	-10128(%rbp), %rdi
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L817
	vzeroupper
	call	_ZdlPvm@PLT
.L781:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE74:
.L778:
	movq	-10096(%rbp), %rdi
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L780
	vzeroupper
	call	_ZdlPvm@PLT
.L780:
	movq	%r14, %rdi
	vzeroupper
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L753
.L817:
	vzeroupper
	jmp	.L781
.L790:
	endbr64
	movq	%rax, %r12
	jmp	.L751
.L788:
	endbr64
	movq	%rax, %r12
	jmp	.L780
	.cfi_endproc
.LFE5914:
	.section	.gcc_except_table
.LLSDA5914:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5914-.LLSDACSB5914
.LLSDACSB5914:
	.uleb128 .LEHB66-.LFB5914
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB67-.LFB5914
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L787-.LFB5914
	.uleb128 0
	.uleb128 .LEHB68-.LFB5914
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L790-.LFB5914
	.uleb128 0
	.uleb128 .LEHB69-.LFB5914
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L788-.LFB5914
	.uleb128 0
	.uleb128 .LEHB70-.LFB5914
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L789-.LFB5914
	.uleb128 0
	.uleb128 .LEHB71-.LFB5914
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L788-.LFB5914
	.uleb128 0
	.uleb128 .LEHB72-.LFB5914
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L787-.LFB5914
	.uleb128 0
	.uleb128 .LEHB73-.LFB5914
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L788-.LFB5914
	.uleb128 0
	.uleb128 .LEHB74-.LFB5914
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
.LLSDACSE5914:
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.rodata._Z13vec_gen_printIdEviiT_S0_i.str1.8,"aMS",@progbits,1
	.align 8
.LC60:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~~~ GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.align 8
.LC61:
	.string	"\n~~~~~~~~~~~~~~~~~~~~~~~~~ END OF GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.p2align 4
	.weak	_Z13vec_gen_printIdEviiT_S0_i
	.type	_Z13vec_gen_printIdEviiT_S0_i, @function
_Z13vec_gen_printIdEviiT_S0_i:
.LFB5903:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5903
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL2:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL2
	subq	$1536, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, -50696(%rbp)
	movl	%edx, -50692(%rbp)
	vmovsd	%xmm0, -50712(%rbp)
	vmovsd	%xmm1, -50648(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L825
	movslq	%esi, %rax
	movl	%esi, %r14d
	xorl	%ebx, %ebx
	vmovq	.LC53(%rip), %xmm5
	movq	%rax, -50664(%rbp)
	salq	$3, %rax
	movq	%rax, -50656(%rbp)
	leal	1(%rsi,%rsi), %eax
	cltq
	movq	%rax, -50704(%rbp)
	salq	$3, %rax
	movq	%rax, -50680(%rbp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	vpinsrq	$1, %rax, %xmm5, %xmm4
	vmovdqa	%xmm4, -50736(%rbp)
.L857:
	movl	%ebx, %edx
	leaq	.LC60(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
.LEHB75:
	call	__printf_chk@PLT
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, -50664(%rbp)
	ja	.L894
	movq	-50664(%rbp), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	testq	%r15, %r15
	je	.L828
	movq	-50656(%rbp), %rdi
	call	_Znwm@PLT
.LEHE75:
	movq	-50656(%rbp), %rcx
	vmovq	%rax, %xmm2
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	leaq	(%rax,%rcx), %r12
	movq	%r12, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	cmpq	$1, %r15
	je	.L865
	cmpq	%r12, %rdi
	je	.L829
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L829:
	movq	-50656(%rbp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, -50632(%rbp)
	movq	$0, -50592(%rbp)
	vmovdqa	%xmm0, -50608(%rbp)
.LEHB76:
	call	_Znwm@PLT
.LEHE76:
	movq	-50656(%rbp), %rcx
	vmovq	%rax, %xmm3
	leaq	8(%rax), %rdi
	cmpq	$1, -50664(%rbp)
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	$0x000000000, (%rax)
	vmovdqa	%xmm0, -50608(%rbp)
	leaq	(%rax,%rcx), %r12
	movq	%r12, -50592(%rbp)
	je	.L895
	cmpq	%rdi, %r12
	je	.L830
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L830:
	vmovsd	-50712(%rbp), %xmm0
	leaq	-50648(%rbp), %rcx
	movl	%r14d, %edx
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movq	%r12, -50600(%rbp)
.LEHB77:
	call	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	movabsq	$1152921504606846975, %rcx
	cmpq	%rcx, -50704(%rbp)
	ja	.L896
	movq	-50680(%rbp), %rdi
	call	_Znwm@PLT
.LEHE77:
	leaq	8(%rax), %rdi
	cmpq	$1, -50704(%rbp)
	movq	%rax, %r12
	movq	%rdi, -50688(%rbp)
	je	.L832
	movq	-50680(%rbp), %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, -50688(%rbp)
	cmpq	%rdi, %rax
	je	.L832
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L832:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtsi2sdl	%r14d, %xmm6, %xmm0
	vmovsd	%xmm0, (%r12)
	testl	%r14d, %r14d
	je	.L837
	movq	-50640(%rbp), %r8
	leal	1(%r14), %esi
	movl	%r14d, %ecx
	xorl	%eax, %eax
	movq	-50608(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L836:
	vmovsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	vmovsd	%xmm0, 8(%r12,%rax,8)
	vmovsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L836
.L837:
	cmpl	$1, -50692(%rbp)
	je	.L897
	movl	-50692(%rbp), %eax
	cmpl	$2, %eax
	je	.L839
	cmpl	$3, %eax
	je	.L898
	cmpl	$4, -50692(%rbp)
	jne	.L838
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	-50064(%rbp), %rdi
	leaq	.LC28(%rip), %rcx
	call	__sprintf_chk@PLT
.L838:
	leaq	-50328(%rbp), %r15
	leaq	-50576(%rbp), %r13
	movq	%r15, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	xorl	%esi, %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rax, -50328(%rbp)
	xorl	%eax, %eax
	movw	%ax, -50104(%rbp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	vmovdqa	%ymm0, -50096(%rbp)
	movq	-24(%rax), %rdi
	movq	%rax, -50576(%rbp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, -50672(%rbp)
	movq	$0, -50112(%rbp)
	addq	%r13, %rdi
	movq	%rax, (%rdi)
	vzeroupper
.LEHB78:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE78:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50568(%rbp), %r13
	movq	%rax, -50576(%rbp)
	movq	%r13, %rdi
	addq	$40, %rax
	movq	%rax, -50328(%rbp)
.LEHB79:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE79:
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB80:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	-50064(%rbp), %rsi
	movl	$20, %edx
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	-50576(%rbp), %rdx
	movq	-50672(%rbp), %rdi
	addq	-24(%rdx), %rdi
	testq	%rax, %rax
	je	.L899
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE80:
.L844:
	movq	-50688(%rbp), %rdx
	movq	-50672(%rbp), %rdi
	movq	%r12, %rsi
	subq	%r12, %rdx
.LEHB81:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
	testq	%rax, %rax
	je	.L900
.L850:
	movl	%ebx, %edx
	leaq	.LC61(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LEHE81:
	vmovdqa	-50736(%rbp), %xmm7
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rdi
	movq	%rax, -50328(%rbp)
	vmovdqa	%xmm7, -50576(%rbp)
.LEHB82:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE82:
.L893:
	leaq	-50464(%rbp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50512(%rbp), %rdi
	movq	%rax, -50568(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r15, %rdi
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -50328(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
	movq	-50680(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	-50608(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L853
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L853:
	movq	-50640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L854
	movq	-50624(%rbp), %rsi
	addl	$1, %ebx
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	cmpl	%ebx, -50696(%rbp)
	jne	.L857
.L825:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L901
	addq	$50688, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L828:
	.cfi_restore_state
	movq	-50656(%rbp), %rax
	xorl	%r12d, %r12d
	movq	$0, -50608(%rbp)
	movq	%rax, -50624(%rbp)
	movq	%rax, -50592(%rbp)
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L854:
	addl	$1, %ebx
	cmpl	-50696(%rbp), %ebx
	jne	.L857
	jmp	.L825
	.p2align 4,,10
	.p2align 3
.L899:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB83:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE83:
	jmp	.L844
	.p2align 4,,10
	.p2align 3
.L897:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	-50064(%rbp), %rdi
	leaq	.LC25(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L838
	.p2align 4,,10
	.p2align 3
.L898:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	-50064(%rbp), %rdi
	leaq	.LC27(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L838
	.p2align 4,,10
	.p2align 3
.L839:
	movl	%ebx, %r8d
	movl	$50000, %edx
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	-50064(%rbp), %rdi
	leaq	.LC26(%rip), %rcx
	call	__sprintf_chk@PLT
	jmp	.L838
	.p2align 4,,10
	.p2align 3
.L865:
	movq	%rdi, %r12
	jmp	.L829
	.p2align 4,,10
	.p2align 3
.L895:
	movq	%rdi, %r12
	jmp	.L830
	.p2align 4,,10
	.p2align 3
.L900:
	movq	-50576(%rbp), %rax
	movq	-50672(%rbp), %rdi
	addq	-24(%rax), %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB84:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE84:
	jmp	.L850
.L894:
	leaq	.LC7(%rip), %rdi
.LEHB85:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE85:
.L896:
	leaq	.LC7(%rip), %rdi
.LEHB86:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE86:
.L901:
	call	__stack_chk_fail@PLT
.L870:
	endbr64
	movq	%rax, %rbx
	jmp	.L858
.L868:
	endbr64
	movq	%rax, %r12
	jmp	.L861
.L869:
	endbr64
	movq	%rax, %r12
	jmp	.L859
.L858:
	movq	-50672(%rbp), %rdi
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.L849:
	movq	-50680(%rbp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %r12
	call	_ZdlPvm@PLT
.L859:
	movq	-50608(%rbp), %rdi
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L861
	vzeroupper
	call	_ZdlPvm@PLT
.L861:
	movq	-50640(%rbp), %rdi
	movq	-50624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L890
	vzeroupper
	call	_ZdlPvm@PLT
.L862:
	movq	%r12, %rdi
.LEHB87:
	call	_Unwind_Resume@PLT
.LEHE87:
.L890:
	vzeroupper
	jmp	.L862
.L873:
	endbr64
	movq	%rax, %rbx
	jmp	.L846
.L872:
	endbr64
	movq	%rax, %rbx
	jmp	.L847
.L846:
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L847:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
.L848:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rdi
	movq	%rax, -50328(%rbp)
	vzeroupper
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L849
.L871:
	endbr64
	movq	%rax, %rbx
	jmp	.L848
.L874:
	endbr64
	movq	%rax, %rdi
.L852:
	vzeroupper
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	jmp	.L893
	.cfi_endproc
.LFE5903:
	.section	.gcc_except_table
	.align 4
.LLSDA5903:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5903-.LLSDATTD5903
.LLSDATTD5903:
	.byte	0x1
	.uleb128 .LLSDACSE5903-.LLSDACSB5903
.LLSDACSB5903:
	.uleb128 .LEHB75-.LFB5903
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB5903
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L868-.LFB5903
	.uleb128 0
	.uleb128 .LEHB77-.LFB5903
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L869-.LFB5903
	.uleb128 0
	.uleb128 .LEHB78-.LFB5903
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L871-.LFB5903
	.uleb128 0
	.uleb128 .LEHB79-.LFB5903
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L872-.LFB5903
	.uleb128 0
	.uleb128 .LEHB80-.LFB5903
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L873-.LFB5903
	.uleb128 0
	.uleb128 .LEHB81-.LFB5903
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L870-.LFB5903
	.uleb128 0
	.uleb128 .LEHB82-.LFB5903
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L874-.LFB5903
	.uleb128 0x1
	.uleb128 .LEHB83-.LFB5903
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L873-.LFB5903
	.uleb128 0
	.uleb128 .LEHB84-.LFB5903
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L870-.LFB5903
	.uleb128 0
	.uleb128 .LEHB85-.LFB5903
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB5903
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L869-.LFB5903
	.uleb128 0
	.uleb128 .LEHB87-.LFB5903
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
.LLSDACSE5903:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5903:
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.size	_Z13vec_gen_printIdEviiT_S0_i, .-_Z13vec_gen_printIdEviiT_S0_i
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.p2align 4
	.weak	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.type	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, @function
_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_:
.LFB5905:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5905
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1984, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -10168(%rbp)
	movslq	%edx, %r15
	movq	%rcx, -10144(%rbp)
	movq	%r8, -10184(%rbp)
	vmovsd	%xmm0, -10136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	movq	%r15, %rax
	shrq	$60, %rax
	jne	.L978
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, %rbx
	movq	%r15, %r13
	movq	$0, -10112(%rbp)
	vmovdqa	%xmm0, -10128(%rbp)
	leaq	0(,%r15,8), %r14
	testq	%r15, %r15
	je	.L904
	movq	%r14, %rdi
.LEHB88:
	call	_Znwm@PLT
.LEHE88:
	vmovq	%rax, %xmm6
	leaq	(%rax,%r14), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -10112(%rbp)
	vmovdqa	%xmm0, -10128(%rbp)
	cmpq	$1, %r15
	je	.L941
	cmpq	%rdi, %r12
	je	.L905
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L905:
	movq	-10144(%rbp), %rdx
	leaq	-10128(%rbp), %rdi
	movl	%r13d, %esi
	vmovsd	-10136(%rbp), %xmm0
	movq	%r12, -10120(%rbp)
.LEHB89:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE89:
	leal	-1(%r13), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%eax, -10156(%rbp)
	movl	%r13d, %eax
	shrl	$3, %eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$6, %rax
	movq	%rax, -10176(%rbp)
	movl	%r13d, %eax
	andl	$-8, %eax
	movl	%eax, -10160(%rbp)
	.p2align 4,,10
	.p2align 3
.L906:
	vmovsd	-10136(%rbp), %xmm6
	vcomisd	%xmm0, %xmm6
	ja	.L934
	movq	-10144(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vandpd	.LC12(%rip), %xmm1, %xmm1
	vcomisd	.LC13(%rip), %xmm1
	ja	.L934
	vmovsd	.LC14(%rip), %xmm7
	vcomisd	%xmm1, %xmm7
	jbe	.L979
.L934:
	leaq	-5056(%rbp), %r12
	leaq	-10064(%rbp), %r14
	movl	$27765, %eax
	movl	$1634100580, -5040(%rbp)
	leaq	-5040(%rbp), %r15
	movq	%r12, %rsi
	movq	%r14, %rdi
	movw	%ax, -5036(%rbp)
	movq	%r15, -5056(%rbp)
	movb	$116, -5034(%rbp)
	movq	$7, -5048(%rbp)
	movb	$0, -5033(%rbp)
.LEHB90:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE90:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L907
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L907:
	movq	%r14, %rdi
.LEHB91:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, -5056(%rbp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L912:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, (%r12,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L912
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%r12, %rdi
	movq	$624, -64(%rbp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	vmulsd	.LC56(%rip), %xmm0, %xmm2
	testl	%r13d, %r13d
	jle	.L920
	movq	(%rbx), %rcx
	movq	-10168(%rbp), %rax
	movq	-10128(%rbp), %rsi
	vmovsd	.LC58(%rip), %xmm1
	movq	(%rax), %rdx
	movq	%rcx, %rax
	leaq	8(%rsi), %rdi
	vdivsd	%xmm0, %xmm1, %xmm1
	subq	%rdi, %rax
	movq	%rdx, %r8
	cmpq	$48, %rax
	seta	%al
	subq	%rdi, %r8
	cmpq	$48, %r8
	leaq	8(%rcx), %r8
	seta	%dil
	andl	%edi, %eax
	movq	%rdx, %rdi
	subq	%r8, %rdi
	cmpq	$48, %rdi
	seta	%dil
	testb	%dil, %al
	je	.L916
	movl	-10156(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L916
	cmpl	$6, %eax
	jbe	.L942
	movq	-10176(%rbp), %rdi
	vbroadcastsd	%xmm2, %zmm4
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L918:
	vmulpd	(%rsi,%rax), %zmm4, %zmm0
	vmovupd	%zmm0, (%rcx,%rax)
	vmovupd	%zmm3, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L918
	movl	-10160(%rbp), %edi
	cmpl	%r13d, %edi
	je	.L974
	movl	%r13d, %r9d
	subl	%edi, %r9d
	leal	-1(%r9), %eax
	cmpl	$2, %eax
	jbe	.L943
	movl	%edi, %r8d
	movl	%edi, %eax
.L917:
	vbroadcastsd	%xmm2, %ymm0
	movl	%r9d, %edi
	vmulpd	(%rsi,%rax,8), %ymm0, %ymm0
	andl	$-4, %edi
	vmovupd	%ymm0, (%rcx,%rax,8)
	vbroadcastsd	%xmm1, %ymm0
	vmovupd	%ymm0, (%rdx,%rax,8)
	leal	(%rdi,%r8), %eax
	cmpl	%edi, %r9d
	je	.L974
.L922:
	movslq	%eax, %r8
	vmulsd	(%rsi,%r8,8), %xmm2, %xmm0
	leaq	0(,%r8,8), %rdi
	vmovsd	%xmm0, (%rcx,%r8,8)
	vmovsd	%xmm1, (%rdx,%r8,8)
	leal	1(%rax), %r8d
	cmpl	%r8d, %r13d
	jle	.L974
	vmulsd	8(%rsi,%rdi), %xmm2, %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, 8(%rcx,%rdi)
	vmovsd	%xmm1, 8(%rdx,%rdi)
	cmpl	%eax, %r13d
	jle	.L974
	vmulsd	16(%rsi,%rdi), %xmm2, %xmm2
	vmovsd	%xmm2, 16(%rcx,%rdi)
	vmovsd	%xmm1, 16(%rdx,%rdi)
	vzeroupper
.L920:
	vmovsd	-10136(%rbp), %xmm0
	call	log@PLT
	vmulsd	.LC57(%rip), %xmm0, %xmm0
	movq	8(%rbx), %rax
	movq	$0, -10080(%rbp)
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %r15d
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -10096(%rbp)
	subq	%rsi, %rdx
	je	.L980
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	ja	.L981
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE91:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L915:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -10080(%rbp)
	vmovdqa	%xmm0, -10096(%rbp)
	cmpq	%rsi, %rax
	je	.L928
	movq	%rcx, %rdi
	movq	%rdx, -10152(%rbp)
	call	memmove@PLT
	movq	-10152(%rbp), %rdx
	movq	%rax, %rcx
.L928:
	addq	%rdx, %rcx
	leaq	-10096(%rbp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, -10088(%rbp)
.LEHB92:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE92:
	movq	-10144(%rbp), %r15
	movq	-10096(%rbp), %rdi
	vmovsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L929
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	vmovsd	(%r15), %xmm0
.L929:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L944
	xorl	%edx, %edx
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L931:
	vmovsd	(%rsi,%rax,8), %xmm1
	leal	1(%rdx), %eax
	vandpd	.LC12(%rip), %xmm1, %xmm1
	movq	%rax, %rdx
	vaddsd	%xmm1, %xmm2, %xmm2
	cmpq	%rcx, %rax
	jb	.L931
.L930:
	vxorpd	%xmm5, %xmm5, %xmm5
	vucomisd	%xmm5, %xmm0
	jp	.L949
	je	.L932
.L949:
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm0
.L932:
	vmovsd	%xmm0, -10152(%rbp)
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	vmovsd	-10152(%rbp), %xmm0
	jmp	.L906
.L974:
	vzeroupper
	jmp	.L920
.L980:
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L915
.L916:
	movl	-10156(%rbp), %r8d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L924:
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	movq	%rax, %rdi
	vmovsd	%xmm0, (%rcx,%rax,8)
	vmovsd	%xmm1, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L924
	jmp	.L920
.L944:
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L930
.L942:
	movl	%r13d, %r9d
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L917
.L943:
	movl	%edi, %eax
	jmp	.L922
.L981:
	testq	%rdx, %rdx
	jns	.L927
.LEHB93:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L979:
	movq	-10184(%rbp), %rax
	movq	-10128(%rbp), %rdi
	vmovsd	%xmm0, (%rax)
	testq	%rdi, %rdi
	je	.L902
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L902:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L982
	addq	$10176, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L904:
	.cfi_restore_state
	movq	$0, -10128(%rbp)
	xorl	%r12d, %r12d
	movq	$0, -10112(%rbp)
	jmp	.L905
.L927:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE93:
.L941:
	movq	%rdi, %r12
	jmp	.L905
.L978:
	leaq	.LC7(%rip), %rdi
.LEHB94:
	call	_ZSt20__throw_length_errorPKc@PLT
.L982:
	call	__stack_chk_fail@PLT
.L945:
	endbr64
	movq	%rax, %r12
	jmp	.L911
.L947:
	endbr64
	movq	%rax, %r12
	jmp	.L936
.L909:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L911
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L911:
	movq	-10128(%rbp), %rdi
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L975
	vzeroupper
	call	_ZdlPvm@PLT
.L939:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE94:
.L936:
	movq	-10096(%rbp), %rdi
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L938
	vzeroupper
	call	_ZdlPvm@PLT
.L938:
	movq	%r14, %rdi
	vzeroupper
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L911
.L975:
	vzeroupper
	jmp	.L939
.L948:
	endbr64
	movq	%rax, %r12
	jmp	.L909
.L946:
	endbr64
	movq	%rax, %r12
	jmp	.L938
	.cfi_endproc
.LFE5905:
	.section	.gcc_except_table
.LLSDA5905:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5905-.LLSDACSB5905
.LLSDACSB5905:
	.uleb128 .LEHB88-.LFB5905
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB5905
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L945-.LFB5905
	.uleb128 0
	.uleb128 .LEHB90-.LFB5905
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L948-.LFB5905
	.uleb128 0
	.uleb128 .LEHB91-.LFB5905
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L946-.LFB5905
	.uleb128 0
	.uleb128 .LEHB92-.LFB5905
	.uleb128 .LEHE92-.LEHB92
	.uleb128 .L947-.LFB5905
	.uleb128 0
	.uleb128 .LEHB93-.LFB5905
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L946-.LFB5905
	.uleb128 0
	.uleb128 .LEHB94-.LFB5905
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
.LLSDACSE5905:
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.size	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, .-_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.p2align 4
	.weak	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.type	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, @function
_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi:
.LFB5902:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5902
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL3:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL3
	subq	$1536, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, -50716(%rbp)
	movl	%edx, -50656(%rbp)
	movq	%rcx, -50712(%rbp)
	vmovsd	%xmm0, -50704(%rbp)
	vmovsd	%xmm1, -50648(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L983
	movl	%r8d, %ebx
	movslq	%esi, %rax
	movl	%esi, %r14d
	movabsq	$1152921504606846975, %rcx
	imull	%edi, %ebx
	movq	%rax, -50696(%rbp)
	movl	%ebx, -50720(%rbp)
	cmpq	%rcx, %rax
	ja	.L985
	vmovq	.LC53(%rip), %xmm5
	salq	$3, %rax
	movl	$0, -50652(%rbp)
	movq	%rax, -50664(%rbp)
	leal	1(%rsi,%rsi), %eax
	cltq
	movq	%rax, -50688(%rbp)
	salq	$3, %rax
	movq	%rax, -50672(%rbp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	vpinsrq	$1, %rax, %xmm5, %xmm4
	vmovdqa	%xmm4, -50736(%rbp)
.L986:
	movq	-50696(%rbp), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	testq	%r15, %r15
	je	.L987
	movq	-50664(%rbp), %rdi
.LEHB95:
	call	_Znwm@PLT
.LEHE95:
	movq	-50664(%rbp), %rcx
	vmovq	%rax, %xmm2
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	leaq	(%rax,%rcx), %r12
	movq	%r12, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	cmpq	$1, %r15
	je	.L1023
	cmpq	%r12, %rdi
	je	.L988
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L988:
	movq	-50664(%rbp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, -50632(%rbp)
	movq	$0, -50592(%rbp)
	vmovdqa	%xmm0, -50608(%rbp)
.LEHB96:
	call	_Znwm@PLT
.LEHE96:
	movq	-50664(%rbp), %rcx
	vmovq	%rax, %xmm3
	leaq	8(%rax), %rdi
	cmpq	$1, -50696(%rbp)
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	$0x000000000, (%rax)
	vmovdqa	%xmm0, -50608(%rbp)
	leaq	(%rax,%rcx), %r12
	movq	%r12, -50592(%rbp)
	je	.L1051
	cmpq	%rdi, %r12
	je	.L989
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L989:
	movq	-50712(%rbp), %rax
	movslq	%ebx, %rbx
	vmovsd	-50704(%rbp), %xmm0
	leaq	-50648(%rbp), %rcx
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movl	%r14d, %edx
	movq	%r12, -50600(%rbp)
	movq	(%rax), %rax
	leaq	(%rax,%rbx,8), %r8
.LEHB97:
	call	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	movabsq	$1152921504606846975, %rbx
	cmpq	%rbx, -50688(%rbp)
	ja	.L1052
	movq	-50672(%rbp), %rdi
	call	_Znwm@PLT
.LEHE97:
	leaq	8(%rax), %rdi
	cmpq	$1, -50688(%rbp)
	movq	%rax, %r12
	movq	%rdi, -50680(%rbp)
	je	.L991
	movq	-50672(%rbp), %rbx
	leaq	(%rax,%rbx), %rax
	movq	%rax, -50680(%rbp)
	cmpq	%rdi, %rax
	je	.L991
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L991:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtsi2sdl	%r14d, %xmm6, %xmm0
	vmovsd	%xmm0, (%r12)
	testl	%r14d, %r14d
	je	.L996
	movq	-50640(%rbp), %r8
	leal	1(%r14), %esi
	movl	%r14d, %ecx
	xorl	%eax, %eax
	movq	-50608(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L995:
	vmovsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	vmovsd	%xmm0, 8(%r12,%rax,8)
	vmovsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L995
.L996:
	cmpl	$1, -50656(%rbp)
	je	.L1053
	movl	-50656(%rbp), %eax
	cmpl	$2, %eax
	je	.L998
	cmpl	$3, %eax
	je	.L1054
	cmpl	$4, -50656(%rbp)
	jne	.L997
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L997:
	leaq	-50328(%rbp), %r15
	leaq	-50576(%rbp), %rbx
	movq	%r15, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rax, -50328(%rbp)
	xorl	%eax, %eax
	movw	%ax, -50104(%rbp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	vmovdqa	%ymm0, -50096(%rbp)
	movq	-24(%rax), %rdi
	movq	%rax, -50576(%rbp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, -50112(%rbp)
	addq	%rbx, %rdi
	movq	%rax, (%rdi)
	vzeroupper
.LEHB98:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE98:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50568(%rbp), %r13
	movq	%rax, -50576(%rbp)
	movq	%r13, %rdi
	addq	$40, %rax
	movq	%rax, -50328(%rbp)
.LEHB99:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE99:
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB100:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	-50064(%rbp), %rsi
	movl	$20, %edx
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	-50576(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	.L1055
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE100:
.L1003:
	movq	-50680(%rbp), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	subq	%r12, %rdx
.LEHB101:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE101:
	testq	%rax, %rax
	je	.L1056
.L1009:
	vmovdqa	-50736(%rbp), %xmm7
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rdi
	movq	%rax, -50328(%rbp)
	vmovdqa	%xmm7, -50576(%rbp)
.LEHB102:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE102:
	leaq	-50464(%rbp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50512(%rbp), %rdi
	movq	%rax, -50568(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	movq	%r15, %rdi
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rbx, -50576(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -50328(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
.L1010:
	movq	-50672(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	-50608(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L1012
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1012:
	movq	-50640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L1013
	movq	-50624(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, -50652(%rbp)
	movl	-50652(%rbp), %eax
	cmpl	%eax, -50716(%rbp)
	je	.L983
.L1014:
	movl	-50720(%rbp), %ebx
	addl	-50652(%rbp), %ebx
	jmp	.L986
	.p2align 4,,10
	.p2align 3
.L987:
	movq	-50664(%rbp), %rax
	xorl	%r12d, %r12d
	movq	$0, -50608(%rbp)
	movq	%rax, -50624(%rbp)
	movq	%rax, -50592(%rbp)
	jmp	.L989
	.p2align 4,,10
	.p2align 3
.L1013:
	addl	$1, -50652(%rbp)
	movl	-50652(%rbp), %eax
	cmpl	-50716(%rbp), %eax
	jne	.L1014
.L983:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1057
	addq	$50688, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L1055:
	.cfi_restore_state
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB103:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE103:
	jmp	.L1003
	.p2align 4,,10
	.p2align 3
.L1053:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L1054:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L998:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L997
	.p2align 4,,10
	.p2align 3
.L1023:
	movq	%rdi, %r12
	jmp	.L988
	.p2align 4,,10
	.p2align 3
.L1051:
	movq	%rdi, %r12
	jmp	.L989
	.p2align 4,,10
	.p2align 3
.L1056:
	movq	-50576(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB104:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE104:
	jmp	.L1009
.L985:
	leaq	.LC7(%rip), %rdi
.LEHB105:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE105:
.L1052:
	leaq	.LC7(%rip), %rdi
.LEHB106:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE106:
.L1057:
	call	__stack_chk_fail@PLT
.L1028:
	endbr64
	movq	%rax, %r13
	jmp	.L1016
.L1026:
	endbr64
	movq	%rax, %r12
	jmp	.L1019
.L1027:
	endbr64
	movq	%rax, %r12
	jmp	.L1017
.L1016:
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%r13, %rbx
.L1008:
	movq	-50672(%rbp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %r12
	call	_ZdlPvm@PLT
.L1017:
	movq	-50608(%rbp), %rdi
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1019
	vzeroupper
	call	_ZdlPvm@PLT
.L1019:
	movq	-50640(%rbp), %rdi
	movq	-50624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1048
	vzeroupper
	call	_ZdlPvm@PLT
.L1020:
	movq	%r12, %rdi
.LEHB107:
	call	_Unwind_Resume@PLT
.LEHE107:
.L1048:
	vzeroupper
	jmp	.L1020
.L1031:
	endbr64
	movq	%rax, %rbx
	jmp	.L1005
.L1030:
	endbr64
	movq	%rax, %rbx
	jmp	.L1006
.L1005:
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L1006:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
.L1007:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rdi
	movq	%rax, -50328(%rbp)
	vzeroupper
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1008
.L1029:
	endbr64
	movq	%rax, %rbx
	jmp	.L1007
.L1032:
	endbr64
	movq	%rax, %rdi
.L1011:
	vzeroupper
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	leaq	-50464(%rbp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50512(%rbp), %rdi
	movq	%rax, -50568(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r15, %rdi
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -50328(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1010
	.cfi_endproc
.LFE5902:
	.section	.gcc_except_table
	.align 4
.LLSDA5902:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5902-.LLSDATTD5902
.LLSDATTD5902:
	.byte	0x1
	.uleb128 .LLSDACSE5902-.LLSDACSB5902
.LLSDACSB5902:
	.uleb128 .LEHB95-.LFB5902
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB96-.LFB5902
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L1026-.LFB5902
	.uleb128 0
	.uleb128 .LEHB97-.LFB5902
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L1027-.LFB5902
	.uleb128 0
	.uleb128 .LEHB98-.LFB5902
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L1029-.LFB5902
	.uleb128 0
	.uleb128 .LEHB99-.LFB5902
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L1030-.LFB5902
	.uleb128 0
	.uleb128 .LEHB100-.LFB5902
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L1031-.LFB5902
	.uleb128 0
	.uleb128 .LEHB101-.LFB5902
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L1028-.LFB5902
	.uleb128 0
	.uleb128 .LEHB102-.LFB5902
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L1032-.LFB5902
	.uleb128 0x1
	.uleb128 .LEHB103-.LFB5902
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L1031-.LFB5902
	.uleb128 0
	.uleb128 .LEHB104-.LFB5902
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L1028-.LFB5902
	.uleb128 0
	.uleb128 .LEHB105-.LFB5902
	.uleb128 .LEHE105-.LEHB105
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB106-.LFB5902
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L1027-.LFB5902
	.uleb128 0
	.uleb128 .LEHB107-.LFB5902
	.uleb128 .LEHE107-.LEHB107
	.uleb128 0
	.uleb128 0
.LLSDACSE5902:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5902:
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.size	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, .-_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align 4
	.weak	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.type	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, @function
_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_:
.LFB5904:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5904
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1984, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%rsi, -10168(%rbp)
	movslq	%edx, %r15
	movq	%rcx, -10144(%rbp)
	vmovsd	%xmm0, -10136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	movq	%r15, %rax
	shrq	$60, %rax
	jne	.L1134
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, %rbx
	movq	%r15, %r13
	movq	$0, -10112(%rbp)
	vmovdqa	%xmm0, -10128(%rbp)
	leaq	0(,%r15,8), %r14
	testq	%r15, %r15
	je	.L1060
	movq	%r14, %rdi
.LEHB108:
	call	_Znwm@PLT
.LEHE108:
	vmovq	%rax, %xmm6
	leaq	(%rax,%r14), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -10112(%rbp)
	vmovdqa	%xmm0, -10128(%rbp)
	cmpq	$1, %r15
	je	.L1097
	cmpq	%rdi, %r12
	je	.L1061
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1061:
	movq	-10144(%rbp), %rdx
	leaq	-10128(%rbp), %rdi
	movl	%r13d, %esi
	vmovsd	-10136(%rbp), %xmm0
	movq	%r12, -10120(%rbp)
.LEHB109:
	call	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LEHE109:
	leal	-1(%r13), %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%eax, -10156(%rbp)
	movl	%r13d, %eax
	shrl	$3, %eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$6, %rax
	movq	%rax, -10176(%rbp)
	movl	%r13d, %eax
	andl	$-8, %eax
	movl	%eax, -10160(%rbp)
	.p2align 4,,10
	.p2align 3
.L1062:
	vmovsd	-10136(%rbp), %xmm6
	vcomisd	%xmm0, %xmm6
	ja	.L1090
	movq	-10144(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vcomisd	.LC13(%rip), %xmm0
	ja	.L1090
	vmovsd	.LC14(%rip), %xmm7
	vcomisd	%xmm0, %xmm7
	jbe	.L1135
.L1090:
	leaq	-5056(%rbp), %r12
	leaq	-10064(%rbp), %r14
	movl	$27765, %eax
	movl	$1634100580, -5040(%rbp)
	leaq	-5040(%rbp), %r15
	movq	%r12, %rsi
	movq	%r14, %rdi
	movw	%ax, -5036(%rbp)
	movq	%r15, -5056(%rbp)
	movb	$116, -5034(%rbp)
	movq	$7, -5048(%rbp)
	movb	$0, -5033(%rbp)
.LEHB110:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE110:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L1063
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L1063:
	movq	%r14, %rdi
.LEHB111:
	call	_ZNSt13random_device9_M_getvalEv@PLT
	movl	%eax, %eax
	movl	$1, %ecx
	movq	%rax, -5056(%rbp)
	movq	%rax, %rdx
	.p2align 4,,10
	.p2align 3
.L1068:
	movq	%rdx, %rax
	shrq	$30, %rax
	xorq	%rdx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rcx), %edx
	movq	%rdx, (%r12,%rcx,8)
	addq	$1, %rcx
	cmpq	$624, %rcx
	jne	.L1068
	movl	$1000, %edx
	movl	$-1000, %esi
	movq	%r12, %rdi
	movq	$624, -64(%rbp)
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE.constprop.0.isra.0
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	vmulsd	.LC56(%rip), %xmm0, %xmm2
	testl	%r13d, %r13d
	jle	.L1076
	movq	(%rbx), %rcx
	movq	-10168(%rbp), %rax
	movq	-10128(%rbp), %rsi
	vmovsd	.LC58(%rip), %xmm1
	movq	(%rax), %rdx
	movq	%rcx, %rax
	leaq	8(%rsi), %rdi
	vdivsd	%xmm0, %xmm1, %xmm1
	subq	%rdi, %rax
	movq	%rdx, %r8
	cmpq	$48, %rax
	seta	%al
	subq	%rdi, %r8
	cmpq	$48, %r8
	leaq	8(%rcx), %r8
	seta	%dil
	andl	%edi, %eax
	movq	%rdx, %rdi
	subq	%r8, %rdi
	cmpq	$48, %rdi
	seta	%dil
	testb	%dil, %al
	je	.L1072
	movl	-10156(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L1072
	cmpl	$6, %eax
	jbe	.L1098
	movq	-10176(%rbp), %rdi
	vbroadcastsd	%xmm2, %zmm4
	vbroadcastsd	%xmm1, %zmm3
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1074:
	vmulpd	(%rsi,%rax), %zmm4, %zmm0
	vmovupd	%zmm0, (%rcx,%rax)
	vmovupd	%zmm3, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L1074
	movl	-10160(%rbp), %edi
	cmpl	%r13d, %edi
	je	.L1130
	movl	%r13d, %r9d
	subl	%edi, %r9d
	leal	-1(%r9), %eax
	cmpl	$2, %eax
	jbe	.L1099
	movl	%edi, %r8d
	movl	%edi, %eax
.L1073:
	vbroadcastsd	%xmm2, %ymm0
	movl	%r9d, %edi
	vmulpd	(%rsi,%rax,8), %ymm0, %ymm0
	andl	$-4, %edi
	vmovupd	%ymm0, (%rcx,%rax,8)
	vbroadcastsd	%xmm1, %ymm0
	vmovupd	%ymm0, (%rdx,%rax,8)
	leal	(%rdi,%r8), %eax
	cmpl	%edi, %r9d
	je	.L1130
.L1078:
	movslq	%eax, %r8
	vmulsd	(%rsi,%r8,8), %xmm2, %xmm0
	leaq	0(,%r8,8), %rdi
	vmovsd	%xmm0, (%rcx,%r8,8)
	vmovsd	%xmm1, (%rdx,%r8,8)
	leal	1(%rax), %r8d
	cmpl	%r8d, %r13d
	jle	.L1130
	vmulsd	8(%rsi,%rdi), %xmm2, %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, 8(%rcx,%rdi)
	vmovsd	%xmm1, 8(%rdx,%rdi)
	cmpl	%eax, %r13d
	jle	.L1130
	vmulsd	16(%rsi,%rdi), %xmm2, %xmm2
	vmovsd	%xmm2, 16(%rcx,%rdi)
	vmovsd	%xmm1, 16(%rdx,%rdi)
	vzeroupper
.L1076:
	vmovsd	-10136(%rbp), %xmm0
	call	log@PLT
	vmulsd	.LC57(%rip), %xmm0, %xmm0
	movq	8(%rbx), %rax
	movq	$0, -10080(%rbp)
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	vrndscalesd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LC3(%rip), %xmm0, %xmm0
	vcvttsd2usi	%xmm0, %r15d
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%xmm0, -10096(%rbp)
	subq	%rsi, %rdx
	je	.L1136
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	ja	.L1137
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE111:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L1071:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -10080(%rbp)
	vmovdqa	%xmm0, -10096(%rbp)
	cmpq	%rsi, %rax
	je	.L1084
	movq	%rcx, %rdi
	movq	%rdx, -10152(%rbp)
	call	memmove@PLT
	movq	-10152(%rbp), %rdx
	movq	%rax, %rcx
.L1084:
	addq	%rdx, %rcx
	leaq	-10096(%rbp), %rdi
	movl	%r15d, %edx
	movl	%r13d, %esi
	movq	%rcx, -10088(%rbp)
.LEHB112:
	call	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.LEHE112:
	movq	-10144(%rbp), %r15
	movq	-10096(%rbp), %rdi
	vmovsd	%xmm0, (%r15)
	testq	%rdi, %rdi
	je	.L1085
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	vmovsd	(%r15), %xmm0
.L1085:
	movq	(%rbx), %rsi
	movq	8(%rbx), %rcx
	subq	%rsi, %rcx
	sarq	$3, %rcx
	je	.L1100
	xorl	%edx, %edx
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1087:
	vmovsd	(%rsi,%rax,8), %xmm1
	leal	1(%rdx), %eax
	vandpd	.LC12(%rip), %xmm1, %xmm1
	movq	%rax, %rdx
	vaddsd	%xmm1, %xmm2, %xmm2
	cmpq	%rcx, %rax
	jb	.L1087
.L1086:
	vxorpd	%xmm5, %xmm5, %xmm5
	vucomisd	%xmm5, %xmm0
	jp	.L1105
	je	.L1088
.L1105:
	vandpd	.LC12(%rip), %xmm0, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm0
.L1088:
	vmovsd	%xmm0, -10152(%rbp)
	movq	%r14, %rdi
	call	_ZNSt13random_device7_M_finiEv@PLT
	vmovsd	-10152(%rbp), %xmm0
	jmp	.L1062
.L1130:
	vzeroupper
	jmp	.L1076
.L1136:
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L1071
.L1072:
	movl	-10156(%rbp), %r8d
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1080:
	vmulsd	(%rsi,%rax,8), %xmm2, %xmm0
	movq	%rax, %rdi
	vmovsd	%xmm0, (%rcx,%rax,8)
	vmovsd	%xmm1, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdi
	jne	.L1080
	jmp	.L1076
.L1100:
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.L1086
.L1098:
	movl	%r13d, %r9d
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.L1073
.L1099:
	movl	%edi, %eax
	jmp	.L1078
.L1137:
	testq	%rdx, %rdx
	jns	.L1083
.LEHB113:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L1135:
	movq	-10128(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L1058
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1058:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1138
	addq	$10176, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L1060:
	.cfi_restore_state
	movq	$0, -10128(%rbp)
	xorl	%r12d, %r12d
	movq	$0, -10112(%rbp)
	jmp	.L1061
.L1083:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE113:
.L1097:
	movq	%rdi, %r12
	jmp	.L1061
.L1134:
	leaq	.LC7(%rip), %rdi
.LEHB114:
	call	_ZSt20__throw_length_errorPKc@PLT
.L1138:
	call	__stack_chk_fail@PLT
.L1101:
	endbr64
	movq	%rax, %r12
	jmp	.L1067
.L1103:
	endbr64
	movq	%rax, %r12
	jmp	.L1092
.L1065:
	movq	-5056(%rbp), %rdi
	cmpq	%r15, %rdi
	je	.L1067
	movq	-5040(%rbp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L1067:
	movq	-10128(%rbp), %rdi
	movq	-10112(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1131
	vzeroupper
	call	_ZdlPvm@PLT
.L1095:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE114:
.L1092:
	movq	-10096(%rbp), %rdi
	movq	-10080(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1094
	vzeroupper
	call	_ZdlPvm@PLT
.L1094:
	movq	%r14, %rdi
	vzeroupper
	call	_ZNSt13random_device7_M_finiEv@PLT
	jmp	.L1067
.L1131:
	vzeroupper
	jmp	.L1095
.L1104:
	endbr64
	movq	%rax, %r12
	jmp	.L1065
.L1102:
	endbr64
	movq	%rax, %r12
	jmp	.L1094
	.cfi_endproc
.LFE5904:
	.section	.gcc_except_table
.LLSDA5904:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5904-.LLSDACSB5904
.LLSDACSB5904:
	.uleb128 .LEHB108-.LFB5904
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB5904
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L1101-.LFB5904
	.uleb128 0
	.uleb128 .LEHB110-.LFB5904
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L1104-.LFB5904
	.uleb128 0
	.uleb128 .LEHB111-.LFB5904
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L1102-.LFB5904
	.uleb128 0
	.uleb128 .LEHB112-.LFB5904
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L1103-.LFB5904
	.uleb128 0
	.uleb128 .LEHB113-.LFB5904
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L1102-.LFB5904
	.uleb128 0
	.uleb128 .LEHB114-.LFB5904
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
.LLSDACSE5904:
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.size	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .-_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.p2align 4
	.weak	_Z7vec_genIdEviiT_S0_i
	.type	_Z7vec_genIdEviiT_S0_i, @function
_Z7vec_genIdEviiT_S0_i:
.LFB5901:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5901
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	leaq	-49152(%rsp), %r11
.LPSRL4:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL4
	subq	$1536, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, -50708(%rbp)
	movl	%edx, -50656(%rbp)
	vmovsd	%xmm0, -50704(%rbp)
	vmovsd	%xmm1, -50648(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	testl	%edi, %edi
	je	.L1139
	movabsq	$1152921504606846975, %rbx
	movslq	%esi, %rax
	movl	%esi, %r14d
	movq	%rax, -50696(%rbp)
	cmpq	%rbx, %rax
	ja	.L1207
	vmovq	.LC53(%rip), %xmm5
	salq	$3, %rax
	movl	$0, -50652(%rbp)
	movq	%rax, -50664(%rbp)
	leal	1(%rsi,%rsi), %eax
	cltq
	movq	%rax, -50688(%rbp)
	salq	$3, %rax
	movq	%rax, -50672(%rbp)
	leaq	16+_ZTVSt13basic_filebufIcSt11char_traitsIcEE(%rip), %rax
	vpinsrq	$1, %rax, %xmm5, %xmm4
	vmovdqa	%xmm4, -50736(%rbp)
.L1171:
	movq	-50696(%rbp), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	testq	%r15, %r15
	je	.L1142
	movq	-50664(%rbp), %rdi
.LEHB115:
	call	_Znwm@PLT
.LEHE115:
	movq	-50664(%rbp), %rcx
	vmovq	%rax, %xmm2
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	leaq	(%rax,%rcx), %rbx
	movq	%rbx, -50624(%rbp)
	vmovdqa	%xmm0, -50640(%rbp)
	cmpq	$1, %r15
	je	.L1179
	cmpq	%rbx, %rdi
	je	.L1143
	leaq	-8(%rcx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1143:
	movq	-50664(%rbp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, -50632(%rbp)
	movq	$0, -50592(%rbp)
	vmovdqa	%xmm0, -50608(%rbp)
.LEHB116:
	call	_Znwm@PLT
.LEHE116:
	movq	-50664(%rbp), %rbx
	vmovq	%rax, %xmm3
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	vmovdqa	%xmm0, -50608(%rbp)
	addq	%rax, %rbx
	cmpq	$1, -50696(%rbp)
	movq	%rbx, -50592(%rbp)
	je	.L1208
	cmpq	%rdi, %rbx
	je	.L1144
	movq	-50664(%rbp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
.L1144:
	vmovsd	-50704(%rbp), %xmm0
	leaq	-50648(%rbp), %rcx
	movl	%r14d, %edx
	leaq	-50608(%rbp), %rsi
	leaq	-50640(%rbp), %rdi
	movq	%rbx, -50600(%rbp)
.LEHB117:
	call	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	movabsq	$1152921504606846975, %rbx
	cmpq	%rbx, -50688(%rbp)
	ja	.L1209
	movq	-50672(%rbp), %rdi
	call	_Znwm@PLT
.LEHE117:
	leaq	8(%rax), %rdi
	cmpq	$1, -50688(%rbp)
	movq	%rax, %r12
	movq	%rdi, -50680(%rbp)
	je	.L1146
	movq	-50672(%rbp), %rbx
	leaq	(%rax,%rbx), %rax
	movq	%rax, -50680(%rbp)
	cmpq	%rdi, %rax
	je	.L1146
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L1146:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtsi2sdl	%r14d, %xmm6, %xmm0
	vmovsd	%xmm0, (%r12)
	testl	%r14d, %r14d
	je	.L1151
	movq	-50640(%rbp), %r8
	leal	1(%r14), %esi
	movl	%r14d, %ecx
	xorl	%eax, %eax
	movq	-50608(%rbp), %rdi
	.p2align 4,,10
	.p2align 3
.L1150:
	vmovsd	(%r8,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	vmovsd	%xmm0, 8(%r12,%rax,8)
	vmovsd	(%rdi,%rax,8), %xmm0
	addq	$1, %rax
	vmovsd	%xmm0, (%r12,%rdx,8)
	cmpq	%rax, %rcx
	jne	.L1150
.L1151:
	cmpl	$1, -50656(%rbp)
	je	.L1210
	movl	-50656(%rbp), %eax
	cmpl	$2, %eax
	je	.L1153
	cmpl	$3, %eax
	je	.L1211
	cmpl	$4, -50656(%rbp)
	jne	.L1152
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC28(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
.L1152:
	leaq	-50328(%rbp), %r15
	leaq	-50576(%rbp), %rbx
	movq	%r15, %rdi
	call	_ZNSt8ios_baseC2Ev@PLT
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rax, -50328(%rbp)
	xorl	%eax, %eax
	movw	%ax, -50104(%rbp)
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	vmovdqa	%ymm0, -50096(%rbp)
	movq	-24(%rax), %rdi
	movq	%rax, -50576(%rbp)
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	$0, -50112(%rbp)
	addq	%rbx, %rdi
	movq	%rax, (%rdi)
	vzeroupper
.LEHB118:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
.LEHE118:
	leaq	24+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50568(%rbp), %r13
	movq	%rax, -50576(%rbp)
	movq	%r13, %rdi
	addq	$40, %rax
	movq	%rax, -50328(%rbp)
.LEHB119:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev@PLT
.LEHE119:
	movq	%r13, %rsi
	movq	%r15, %rdi
.LEHB120:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E@PLT
	leaq	-50064(%rbp), %rsi
	movl	$20, %edx
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode@PLT
	movq	-50576(%rbp), %rdx
	movq	-24(%rdx), %rdi
	addq	%rbx, %rdi
	testq	%rax, %rax
	je	.L1212
	xorl	%esi, %esi
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE120:
.L1158:
	movq	-50680(%rbp), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	subq	%r12, %rdx
.LEHB121:
	call	_ZNSo5writeEPKcl@PLT
	movq	%r13, %rdi
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE121:
	testq	%rax, %rax
	je	.L1213
.L1164:
	vmovdqa	-50736(%rbp), %xmm7
	leaq	64+_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	%r13, %rdi
	movq	%rax, -50328(%rbp)
	vmovdqa	%xmm7, -50576(%rbp)
.LEHB122:
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv@PLT
.LEHE122:
	leaq	-50464(%rbp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50512(%rbp), %rdi
	movq	%rax, -50568(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rbx
	movq	%r15, %rdi
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rbx, -50576(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -50328(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
.L1165:
	movq	-50672(%rbp), %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
	movq	-50608(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L1167
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L1167:
	movq	-50640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L1168
	movq	-50624(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, -50652(%rbp)
	movl	-50652(%rbp), %eax
	cmpl	%eax, -50708(%rbp)
	jne	.L1171
.L1139:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L1214
	addq	$50688, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L1142:
	.cfi_restore_state
	movq	-50664(%rbp), %rax
	xorl	%ebx, %ebx
	movq	$0, -50608(%rbp)
	movq	%rax, -50624(%rbp)
	movq	%rax, -50592(%rbp)
	jmp	.L1144
	.p2align 4,,10
	.p2align 3
.L1168:
	addl	$1, -50652(%rbp)
	movl	-50652(%rbp), %eax
	cmpl	-50708(%rbp), %eax
	jne	.L1171
	jmp	.L1139
	.p2align 4,,10
	.p2align 3
.L1212:
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB123:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE123:
	jmp	.L1158
	.p2align 4,,10
	.p2align 3
.L1210:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC25(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1152
	.p2align 4,,10
	.p2align 3
.L1211:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC27(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1152
	.p2align 4,,10
	.p2align 3
.L1153:
	movl	-50652(%rbp), %r8d
	leaq	-50064(%rbp), %rdi
	movl	$50000, %edx
	xorl	%eax, %eax
	leaq	.LC26(%rip), %rcx
	movl	$1, %esi
	call	__sprintf_chk@PLT
	jmp	.L1152
	.p2align 4,,10
	.p2align 3
.L1179:
	movq	%rdi, %rbx
	jmp	.L1143
	.p2align 4,,10
	.p2align 3
.L1208:
	movq	%rdi, %rbx
	jmp	.L1144
	.p2align 4,,10
	.p2align 3
.L1213:
	movq	-50576(%rbp), %rax
	movq	-24(%rax), %rdi
	addq	%rbx, %rdi
	movl	32(%rdi), %esi
	orl	$4, %esi
.LEHB124:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate@PLT
.LEHE124:
	jmp	.L1164
.L1207:
	leaq	.LC7(%rip), %rdi
.LEHB125:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE125:
.L1209:
	leaq	.LC7(%rip), %rdi
.LEHB126:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE126:
.L1214:
	call	__stack_chk_fail@PLT
.L1184:
	endbr64
	movq	%rax, %r13
	jmp	.L1172
.L1182:
	endbr64
	movq	%rax, %r12
	jmp	.L1175
.L1183:
	endbr64
	movq	%rax, %r12
	jmp	.L1173
.L1172:
	movq	%rbx, %rdi
	vzeroupper
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movq	%r13, %rbx
.L1163:
	movq	-50672(%rbp), %rsi
	movq	%r12, %rdi
	movq	%rbx, %r12
	call	_ZdlPvm@PLT
.L1173:
	movq	-50608(%rbp), %rdi
	movq	-50592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1175
	vzeroupper
	call	_ZdlPvm@PLT
.L1175:
	movq	-50640(%rbp), %rdi
	movq	-50624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L1204
	vzeroupper
	call	_ZdlPvm@PLT
.L1176:
	movq	%r12, %rdi
.LEHB127:
	call	_Unwind_Resume@PLT
.LEHE127:
.L1204:
	vzeroupper
	jmp	.L1176
.L1187:
	endbr64
	movq	%rax, %rbx
	jmp	.L1160
.L1186:
	endbr64
	movq	%rax, %rbx
	jmp	.L1161
.L1160:
	movq	%r13, %rdi
	vzeroupper
	call	_ZNSt13basic_filebufIcSt11char_traitsIcEED1Ev@PLT
.L1161:
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
.L1162:
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%r15, %rdi
	movq	%rax, -50328(%rbp)
	vzeroupper
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1163
.L1185:
	endbr64
	movq	%rax, %rbx
	jmp	.L1162
.L1188:
	endbr64
	movq	%rax, %rdi
.L1166:
	vzeroupper
	call	__cxa_begin_catch@PLT
	call	__cxa_end_catch@PLT
	leaq	-50464(%rbp), %rdi
	call	_ZNSt12__basic_fileIcED1Ev@PLT
	leaq	16+_ZTVSt15basic_streambufIcSt11char_traitsIcEE(%rip), %rax
	leaq	-50512(%rbp), %rdi
	movq	%rax, -50568(%rbp)
	call	_ZNSt6localeD1Ev@PLT
	movq	8+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rax
	movq	16+_ZTTSt14basic_ofstreamIcSt11char_traitsIcEE(%rip), %rcx
	movq	%r15, %rdi
	movq	%rax, -50576(%rbp)
	movq	-24(%rax), %rax
	movq	%rcx, -50576(%rbp,%rax)
	leaq	16+_ZTVSt9basic_iosIcSt11char_traitsIcEE(%rip), %rax
	movq	%rax, -50328(%rbp)
	call	_ZNSt8ios_baseD2Ev@PLT
	jmp	.L1165
	.cfi_endproc
.LFE5901:
	.section	.gcc_except_table
	.align 4
.LLSDA5901:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5901-.LLSDATTD5901
.LLSDATTD5901:
	.byte	0x1
	.uleb128 .LLSDACSE5901-.LLSDACSB5901
.LLSDACSB5901:
	.uleb128 .LEHB115-.LFB5901
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB5901
	.uleb128 .LEHE116-.LEHB116
	.uleb128 .L1182-.LFB5901
	.uleb128 0
	.uleb128 .LEHB117-.LFB5901
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L1183-.LFB5901
	.uleb128 0
	.uleb128 .LEHB118-.LFB5901
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L1185-.LFB5901
	.uleb128 0
	.uleb128 .LEHB119-.LFB5901
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L1186-.LFB5901
	.uleb128 0
	.uleb128 .LEHB120-.LFB5901
	.uleb128 .LEHE120-.LEHB120
	.uleb128 .L1187-.LFB5901
	.uleb128 0
	.uleb128 .LEHB121-.LFB5901
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L1184-.LFB5901
	.uleb128 0
	.uleb128 .LEHB122-.LFB5901
	.uleb128 .LEHE122-.LEHB122
	.uleb128 .L1188-.LFB5901
	.uleb128 0x1
	.uleb128 .LEHB123-.LFB5901
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L1187-.LFB5901
	.uleb128 0
	.uleb128 .LEHB124-.LFB5901
	.uleb128 .LEHE124-.LEHB124
	.uleb128 .L1184-.LFB5901
	.uleb128 0
	.uleb128 .LEHB125-.LFB5901
	.uleb128 .LEHE125-.LEHB125
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB126-.LFB5901
	.uleb128 .LEHE126-.LEHB126
	.uleb128 .L1183-.LFB5901
	.uleb128 0
	.uleb128 .LEHB127-.LFB5901
	.uleb128 .LEHE127-.LEHB127
	.uleb128 0
	.uleb128 0
.LLSDACSE5901:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5901:
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.size	_Z7vec_genIdEviiT_S0_i, .-_Z7vec_genIdEviiT_S0_i
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I__Z14vec_gen_randomiii, @function
_GLOBAL__sub_I__Z14vec_gen_randomiii:
.LFB6674:
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
.LFE6674:
	.size	_GLOBAL__sub_I__Z14vec_gen_randomiii, .-_GLOBAL__sub_I__Z14vec_gen_randomiii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z14vec_gen_randomiii
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1697350398
	.long	1073157447
	.align 8
.LC2:
	.long	381774871
	.long	1066844524
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC6:
	.long	-1
	.long	1071644671
	.long	0
	.long	0
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC8:
	.long	805306368
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	2097152
	.long	1041235968
	.align 8
.LC10:
	.long	0
	.long	-1074790400
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.section	.rodata.cst16
	.align 16
.LC12:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC13:
	.long	-536870912
	.long	1206910975
	.align 8
.LC14:
	.long	0
	.long	940572672
	.section	.rodata.cst4
	.align 4
.LC31:
	.long	1065353216
	.set	.LC32,.LC11+4
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
	.long	2139095039
	.align 4
.LC35:
	.long	8388608
	.section	.rodata.cst8
	.align 8
.LC44:
	.quad	-2147483648
	.set	.LC45,.LC33
	.align 8
.LC46:
	.quad	1
	.align 8
.LC47:
	.quad	2567483615
	.align 8
.LC48:
	.long	0
	.long	1106247680
	.align 8
.LC49:
	.long	0
	.long	1139802112
	.align 8
.LC50:
	.long	0
	.long	1007681536
	.align 8
.LC51:
	.long	0
	.long	-1073741824
	.align 8
.LC52:
	.long	-2
	.long	1073741823
	.section	.data.rel.ro,"aw"
	.align 8
.LC53:
	.quad	_ZTVSt14basic_ofstreamIcSt11char_traitsIcEE+24
	.section	.rodata.cst8
	.align 8
.LC56:
	.long	1202590843
	.long	1065646817
	.align 8
.LC57:
	.long	1684223316
	.long	1067477543
	.align 8
.LC58:
	.long	0
	.long	1079574528
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
