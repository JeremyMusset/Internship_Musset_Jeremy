	.file	"common.cc"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"axG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.weak	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.type	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, @function
_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii:
.LFB3629:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -72(%rbp)
	movl	%r8d, -76(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	cmpl	$0, -68(%rbp)
	jg	.L2
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L3
.L2:
	cmpl	$1, -72(%rbp)
	jne	.L4
	cmpl	$1, -76(%rbp)
	jne	.L4
	movl	-68(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	%eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, -24(%rbp)
	je	.L5
	movl	$0, -36(%rbp)
	jmp	.L6
.L7:
	movl	-36(%rbp), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -88(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	incl	-36(%rbp)
.L6:
	movl	-36(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
.L5:
	cmpl	$4, -68(%rbp)
	jg	.L8
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	jmp	.L3
.L8:
	movl	-24(%rbp), %eax
	incl	%eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	decl	%eax
	movl	%eax, -36(%rbp)
	jmp	.L9
.L10:
	movl	-36(%rbp), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -88(%rbp)
	movl	-36(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-16(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -88(%rbp)
	movl	-36(%rbp), %eax
	incl	%eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -96(%rbp)
	movl	-36(%rbp), %eax
	incl	%eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	-88(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -88(%rbp)
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm7
	vmovsd	%xmm7, -96(%rbp)
	movl	-36(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	-88(%rbp), %xmm0, %xmm1
	vmovsd	%xmm1, -88(%rbp)
	movl	-36(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -96(%rbp)
	movl	-36(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	-88(%rbp), %xmm0, %xmm3
	vmovsd	%xmm3, -88(%rbp)
	movl	-36(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -96(%rbp)
	movl	-36(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	-88(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	addl	$5, -36(%rbp)
.L9:
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L10
	jmp	.L11
.L4:
	movl	$1, -32(%rbp)
	movl	$1, -28(%rbp)
	cmpl	$0, -72(%rbp)
	jns	.L12
	movl	$1, %eax
	subl	-68(%rbp), %eax
	imull	-72(%rbp), %eax
	incl	%eax
	movl	%eax, -32(%rbp)
.L12:
	cmpl	$0, -76(%rbp)
	jns	.L13
	movl	$1, %eax
	subl	-68(%rbp), %eax
	imull	-76(%rbp), %eax
	incl	%eax
	movl	%eax, -28(%rbp)
.L13:
	movl	$0, -36(%rbp)
	jmp	.L14
.L15:
	movl	-32(%rbp), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -88(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-64(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vmovsd	-16(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	movl	-72(%rbp), %eax
	addl	%eax, -32(%rbp)
	movl	-76(%rbp), %eax
	addl	%eax, -28(%rbp)
	incl	-36(%rbp)
.L14:
	movl	-36(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L15
.L11:
	vmovsd	-16(%rbp), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
.L3:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3629:
	.size	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, .-_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.weak	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii:
.LFB3630:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -120(%rbp)
	movl	%r8d, -124(%rbp)
	movl	%r9d, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-128(%rbp), %eax
	movl	%eax, %edi
	call	omp_set_num_threads@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -80(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -72(%rbp)
	cmpl	$0, -116(%rbp)
	jg	.L17
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L18
.L17:
	cmpl	$1, -120(%rbp)
	jne	.L19
	cmpl	$1, -124(%rbp)
	jne	.L19
	movl	-116(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	%eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -88(%rbp)
	cmpl	$0, -88(%rbp)
	je	.L20
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-88(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -80(%rbp)
.L20:
	cmpl	$4, -116(%rbp)
	jg	.L21
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	-72(%rbp), %xmm0
	jmp	.L18
.L21:
	movl	-88(%rbp), %eax
	incl	%eax
	movl	%eax, -84(%rbp)
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -80(%rbp)
	jmp	.L22
.L19:
	movl	$1, -96(%rbp)
	movl	$1, -92(%rbp)
	cmpl	$0, -120(%rbp)
	jns	.L23
	movl	$1, %eax
	subl	-116(%rbp), %eax
	imull	-120(%rbp), %eax
	incl	%eax
	movl	%eax, -96(%rbp)
.L23:
	cmpl	$0, -124(%rbp)
	jns	.L24
	movl	$1, %eax
	subl	-116(%rbp), %eax
	imull	-124(%rbp), %eax
	incl	%eax
	movl	%eax, -92(%rbp)
.L24:
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm0, -48(%rbp)
	movl	-124(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	-96(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-92(%rbp), %eax
	movl	%eax, -24(%rbp)
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-48(%rbp), %xmm0
	vmovsd	%xmm0, -80(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -92(%rbp)
.L22:
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vmovsd	-72(%rbp), %xmm0
.L18:
	vmovq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L25
	call	__stack_chk_fail@PLT
.L25:
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3630:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.section	.text._Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,"axG",@progbits,_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,comdat
	.weak	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.type	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, @function
_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd:
.LFB3631:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movl	%r8d, -60(%rbp)
	movq	%r9, -72(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	movq	-72(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	cmpl	$0, -52(%rbp)
	jle	.L41
	cmpl	$1, -56(%rbp)
	jne	.L29
	cmpl	$1, -60(%rbp)
	jne	.L29
	movl	-52(%rbp), %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	sarl	%eax
	movl	%edx, %esi
	sarl	$31, %esi
	subl	%esi, %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.L30
	movl	$0, -28(%rbp)
	jmp	.L31
.L32:
	movl	-28(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -80(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	-8(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	incl	-28(%rbp)
.L31:
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jl	.L32
.L30:
	cmpl	$4, -52(%rbp)
	jg	.L33
	movq	-72(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	jmp	.L26
.L33:
	movl	-16(%rbp), %eax
	incl	%eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	decl	%eax
	movl	%eax, -28(%rbp)
	jmp	.L34
.L35:
	movl	-28(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -80(%rbp)
	movl	-28(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -80(%rbp)
	movl	-28(%rbp), %eax
	incl	%eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -88(%rbp)
	movl	-28(%rbp), %eax
	incl	%eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -80(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm7
	vmovsd	%xmm7, -88(%rbp)
	movl	-28(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	%xmm1, -80(%rbp)
	movl	-28(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -88(%rbp)
	movl	-28(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm3
	vmovsd	%xmm3, -80(%rbp)
	movl	-28(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -88(%rbp)
	movl	-28(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	addl	$5, -28(%rbp)
.L34:
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L35
	jmp	.L36
.L29:
	movl	$1, -24(%rbp)
	movl	$1, -20(%rbp)
	cmpl	$0, -56(%rbp)
	jns	.L37
	movl	$1, %eax
	subl	-52(%rbp), %eax
	imull	-56(%rbp), %eax
	incl	%eax
	movl	%eax, -24(%rbp)
.L37:
	cmpl	$0, -60(%rbp)
	jns	.L38
	movl	$1, %eax
	subl	-52(%rbp), %eax
	imull	-60(%rbp), %eax
	incl	%eax
	movl	%eax, -20(%rbp)
.L38:
	movl	$0, -28(%rbp)
	jmp	.L39
.L40:
	movl	-24(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -80(%rbp)
	movl	-20(%rbp), %eax
	cltq
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	-8(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	movl	-56(%rbp), %eax
	addl	%eax, -24(%rbp)
	movl	-60(%rbp), %eax
	addl	%eax, -20(%rbp)
	incl	-28(%rbp)
.L39:
	movl	-28(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L40
.L36:
	movq	-72(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	jmp	.L26
.L41:
	nop
.L26:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3631:
	.size	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, .-_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB3759:
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
.LFE3759:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB3966:
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
	jne	.L46
	cmpl	$65535, -8(%rbp)
	jne	.L46
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
.L46:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3966:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_common.cc, @function
_GLOBAL__sub_I_common.cc:
.LFB3967:
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
.LFE3967:
	.size	_GLOBAL__sub_I_common.cc, .-_GLOBAL__sub_I_common.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_common.cc
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0:
.LFB3968:
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
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %r12d
	call	omp_get_num_threads@PLT
	movl	%eax, %ebx
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jl	.L49
.L53:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jge	.L50
	movl	%eax, -32(%rbp)
.L51:
	movl	-32(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	cltq
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jl	.L51
.L50:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L52:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L52
	jmp	.L54
.L49:
	movl	$0, %eax
	incl	%ecx
	jmp	.L53
.L54:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3968:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1:
.LFB3969:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -72(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movq	-72(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -48(%rbp)
	movq	-72(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -44(%rbp)
	movl	-48(%rbp), %eax
	leal	-1(%rax), %r12d
	movl	-44(%rbp), %r13d
	call	omp_get_num_threads@PLT
	movl	%eax, %ebx
	call	omp_get_thread_num@PLT
	movl	%eax, %edi
	leal	4(%r13), %eax
	subl	%r12d, %eax
	movslq	%eax, %rdx
	imulq	$1717986919, %rdx, %rdx
	shrq	$32, %rdx
	sarl	%edx
	sarl	$31, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	movl	%esi, %eax
	cltd
	idivl	%ebx
	movl	%edx, %eax
	cmpl	%eax, %edi
	jl	.L56
.L60:
	imull	%ecx, %edi
	movl	%edi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %edx
	cmpl	%edx, %eax
	jge	.L57
	movl	%eax, %ecx
	sall	$2, %ecx
	addl	%ecx, %eax
	addl	%r12d, %eax
	movl	%eax, -52(%rbp)
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	(%rax,%r12), %ebx
.L58:
	movl	-52(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm1
	vmovsd	%xmm1, -80(%rbp)
	movl	-52(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-80(%rbp), %xmm0, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -80(%rbp)
	movl	-52(%rbp), %eax
	incl	%eax
	cltq
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -88(%rbp)
	movl	-52(%rbp), %eax
	incl	%eax
	cltq
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -80(%rbp)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -88(%rbp)
	movl	-52(%rbp), %eax
	addl	$2, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -80(%rbp)
	movl	-52(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm7
	vmovsd	%xmm7, -88(%rbp)
	movl	-52(%rbp), %eax
	addl	$3, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm1
	vmovsd	%xmm1, -80(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -88(%rbp)
	movl	-52(%rbp), %eax
	addl	$4, %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-88(%rbp), %xmm0, %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	addl	$5, -52(%rbp)
	cmpl	%ebx, -52(%rbp)
	jl	.L58
.L57:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L59:
	vmovq	%rdx, %xmm0
	vaddsd	-40(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L59
	jmp	.L61
.L56:
	movl	$0, %eax
	incl	%ecx
	jmp	.L60
.L61:
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3969:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2:
.LFB3970:
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
	movq	%rdi, -56(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	32(%rax), %eax
	movl	%eax, -36(%rbp)
	movq	-56(%rbp), %rax
	movl	28(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-56(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %r12d
	call	omp_get_num_threads@PLT
	movl	%eax, %ebx
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%eax, %ecx
	movl	%r12d, %eax
	cltd
	idivl	%ebx
	movl	%edx, %eax
	cmpl	%eax, %esi
	jl	.L63
.L67:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jge	.L64
	movl	%eax, -40(%rbp)
.L65:
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %eax
	cltq
	movq	-56(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-64(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-56(%rbp), %rax
	movl	36(%rax), %edx
	movl	-32(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 36(%rax)
	movq	-56(%rbp), %rax
	movl	40(%rax), %edx
	movl	-36(%rbp), %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movl	%edx, 40(%rax)
	incl	-40(%rbp)
	cmpl	%ebx, -40(%rbp)
	jl	.L65
.L64:
	movq	-56(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L66:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L66
	jmp	.L68
.L63:
	movl	$0, %eax
	incl	%ecx
	jmp	.L67
.L68:
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3970:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	-1060927616
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
