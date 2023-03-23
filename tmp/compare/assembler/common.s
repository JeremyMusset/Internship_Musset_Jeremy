	.file	"common.cc"
	.text
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.p2align 4
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0:
.LFB4035:
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
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	andq	$-64, %rsp
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	24(%rbx), %eax
	cltd
	idivl	%r12d
	cmpl	%edx, %esi
	jl	.L2
.L11:
	imull	%eax, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	leal	(%rdx,%rsi), %r9d
	leal	(%rax,%r9), %r8d
	cmpl	%r8d, %r9d
	jge	.L3
	movq	(%rbx), %rcx
	movq	(%rcx), %r13
	movq	8(%rbx), %rcx
	movq	(%rcx), %r12
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L13
	movslq	%edx, %rcx
	movslq	%esi, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%eax, %r10d
	addq	%rcx, %rdi
	shrl	$3, %r10d
	xorl	%ecx, %ecx
	salq	$3, %rdi
	salq	$6, %r10
	leaq	0(%r13,%rdi), %r11
	addq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L5:
	vmovupd	(%r11,%rcx), %zmm3
	vfmadd231pd	(%rdi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%r10, %rcx
	jne	.L5
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %ecx
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %ecx
	addl	%ecx, %r9d
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%eax, %ecx
	je	.L19
.L4:
	subl	%ecx, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L8
	movslq	%edx, %rdx
	movslq	%esi, %rsi
	addq	%rsi, %rdx
	addq	%rcx, %rdx
	vmovupd	0(%r13,%rdx,8), %ymm6
	vmulpd	(%r12,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %r9d
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L19
.L8:
	movslq	%r9d, %rax
	vmovsd	0(%r13,%rax,8), %xmm7
	leaq	0(,%rax,8), %rdx
	vfmadd231sd	(%r12,%rax,8), %xmm7, %xmm0
	leal	1(%r9), %eax
	cmpl	%eax, %r8d
	jle	.L19
	leal	2(%r9), %eax
	vmovsd	8(%r12,%rdx), %xmm7
	vfmadd231sd	8(%r13,%rdx), %xmm7, %xmm0
	cmpl	%eax, %r8d
	jle	.L19
	vmovsd	16(%r13,%rdx), %xmm7
	vfmadd231sd	16(%r12,%rdx), %xmm7, %xmm0
	vzeroupper
.L3:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L10:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L23
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	vzeroupper
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L2:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%ecx, %ecx
	jmp	.L4
.L23:
	movq	%rax, %rdx
	jmp	.L10
	.cfi_endproc
.LFE4035:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.p2align 4
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1:
.LFB4036:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	28(%rdi), %eax
	movq	%rdi, %rbx
	leal	-1(%rax), %r12d
	call	omp_get_num_threads@PLT
	movl	%eax, %ebp
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbx), %eax
	leal	4(%rax), %edx
	subl	%r12d, %edx
	movslq	%edx, %rax
	sarl	$31, %edx
	imulq	$1717986919, %rax, %rax
	sarq	$33, %rax
	subl	%edx, %eax
	cltd
	idivl	%ebp
	cmpl	%edx, %ecx
	jl	.L25
.L29:
	imull	%eax, %ecx
	vxorpd	%xmm2, %xmm2, %xmm2
	addl	%ecx, %edx
	addl	%edx, %eax
	cmpl	%eax, %edx
	jge	.L26
	leal	(%rax,%rax,4), %edi
	movq	(%rbx), %rax
	addl	%r12d, %edi
	movq	(%rax), %rsi
	movq	8(%rbx), %rax
	movq	(%rax), %rcx
	leal	(%rdx,%rdx,4), %eax
	addl	%r12d, %eax
	cltq
	.p2align 4,,10
	.p2align 3
.L27:
	vmovsd	8(%rsi,%rax,8), %xmm1
	vmovsd	24(%rsi,%rax,8), %xmm0
	vmulsd	8(%rcx,%rax,8), %xmm1, %xmm1
	vmovsd	(%rsi,%rax,8), %xmm3
	vmulsd	24(%rcx,%rax,8), %xmm0, %xmm0
	vfmadd231sd	(%rcx,%rax,8), %xmm3, %xmm1
	vmovsd	16(%rsi,%rax,8), %xmm4
	vfmadd231sd	16(%rcx,%rax,8), %xmm4, %xmm0
	vmovsd	32(%rsi,%rax,8), %xmm5
	vfmadd231sd	32(%rcx,%rax,8), %xmm5, %xmm2
	addq	$5, %rax
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	cmpl	%eax, %edi
	jg	.L27
.L26:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L28:
	vmovq	%rdx, %xmm7
	movq	%rdx, %rax
	vaddsd	%xmm7, %xmm2, %xmm6
	vmovq	%xmm6, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L36
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L29
.L36:
	movq	%rax, %rdx
	jmp	.L28
	.cfi_endproc
.LFE4036:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.p2align 4
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2:
.LFB4037:
	.cfi_startproc
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
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	andq	$-64, %rsp
	subq	$64, %rsp
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbx), %eax
	cltd
	idivl	%r12d
	cmpl	%edx, %ecx
	jl	.L38
.L50:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r10d
	cmpl	%r10d, %edx
	jge	.L39
	movq	(%rbx), %r12
	vmovq	28(%rbx), %xmm3
	vmovq	36(%rbx), %xmm1
	movl	32(%rbx), %edi
	movq	(%r12), %r11
	movq	8(%rbx), %r12
	vmovd	%xmm3, %r9d
	vpextrd	$1, %xmm3, %ecx
	movl	%edi, 60(%rsp)
	vpaddd	%xmm3, %xmm1, %xmm3
	movl	28(%rbx), %r8d
	vpextrd	$1, %xmm1, %edi
	movq	(%r12), %r15
	vmovd	%xmm1, %esi
	cmpl	$1, %r9d
	jne	.L54
	cmpl	$1, %ecx
	jne	.L54
	leal	-1(%rax), %r12d
	cmpl	$6, %r12d
	jbe	.L52
	movslq	%esi, %rcx
	movl	%eax, %r9d
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	(%r11,%rcx,8), %r14
	shrl	$3, %r9d
	movslq	%edi, %rcx
	leaq	(%r15,%rcx,8), %r13
	salq	$6, %r9
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L45:
	vmovupd	(%r14,%rcx), %zmm5
	vfmadd231pd	0(%r13,%rcx), %zmm5, %zmm0
	addq	$64, %rcx
	cmpq	%rcx, %r9
	jne	.L45
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %ecx
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %ecx
	addl	%ecx, %edx
	leal	(%rsi,%rcx), %r9d
	leal	(%rcx,%rdi), %r13d
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%ecx, %eax
	je	.L60
.L44:
	subl	%ecx, %eax
	leal	-1(%rax), %r14d
	cmpl	$2, %r14d
	jbe	.L47
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	addq	%rcx, %rsi
	addq	%rcx, %rdi
	movl	%eax, %ecx
	vmovupd	(%r15,%rdi,8), %ymm1
	vmulpd	(%r11,%rsi,8), %ymm1, %ymm1
	andl	$-4, %ecx
	addl	%ecx, %edx
	addl	%ecx, %r9d
	addl	%ecx, %r13d
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%ecx, %eax
	je	.L60
.L47:
	movslq	%r9d, %r9
	movslq	%r13d, %r13
	leal	1(%rdx), %esi
	vmovsd	(%r15,%r13,8), %xmm6
	leaq	0(,%r9,8), %rcx
	vfmadd231sd	(%r11,%r9,8), %xmm6, %xmm0
	leaq	0(,%r13,8), %rax
	cmpl	%esi, %r10d
	jle	.L60
	addl	$2, %edx
	vmovsd	8(%r11,%rcx), %xmm7
	vfmadd231sd	8(%r15,%rax), %xmm7, %xmm0
	cmpl	%edx, %r10d
	jle	.L60
	vmovsd	16(%r11,%rcx), %xmm7
	vfmadd231sd	16(%r15,%rax), %xmm7, %xmm0
	vzeroupper
.L43:
	movl	60(%rsp), %r11d
	imull	%r12d, %r8d
	imull	%r12d, %r11d
	vmovd	%r8d, %xmm4
	vpinsrd	$1, %r11d, %xmm4, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm1
	vmovq	%xmm1, 36(%rbx)
.L39:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L49:
	vmovq	%rdx, %xmm7
	movq	%rdx, %rax
	vaddsd	%xmm7, %xmm0, %xmm6
	vmovq	%xmm6, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L63
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
.L60:
	.cfi_restore_state
	vzeroupper
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L38:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L54:
	movslq	%ecx, %rcx
	movslq	%r9d, %r9
	movslq	%esi, %rsi
	movslq	%edi, %rdi
	leaq	0(,%rcx,8), %r12
	salq	$3, %r9
	leaq	(%r11,%rsi,8), %rsi
	leaq	(%r15,%rdi,8), %rcx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L42:
	addl	$1, %edx
	vmovsd	(%rsi), %xmm4
	addq	%r9, %rsi
	vfmadd231sd	(%rcx), %xmm4, %xmm0
	addq	%r12, %rcx
	cmpl	%edx, %r10d
	jne	.L42
	leal	-1(%rax), %r12d
	jmp	.L43
.L52:
	movl	%edi, %r13d
	vmovd	%xmm1, %r9d
	xorl	%ecx, %ecx
	jmp	.L44
.L63:
	movq	%rax, %rdx
	jmp	.L49
	.cfi_endproc
.LFE4037:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2
	.section	.text._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"axG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.p2align 4
	.weak	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.type	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, @function
_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii:
.LFB3696:
	.cfi_startproc
	endbr64
	movslq	%ecx, %rax
	testl	%edx, %edx
	jle	.L88
	cmpl	$1, %eax
	jne	.L66
	cmpl	$1, %r8d
	jne	.L66
	movslq	%edx, %rax
	movl	%edx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	imulq	$1717986919, %rax, %rax
	sarl	$31, %ecx
	sarq	$33, %rax
	subl	%ecx, %eax
	leal	(%rax,%rax,4), %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	jne	.L110
.L67:
	cmpl	$4, %edx
	jle	.L64
	movq	(%rdi), %rdi
	movq	(%rsi), %rcx
	cltq
	.p2align 4,,10
	.p2align 3
.L72:
	vmovsd	8(%rdi,%rax,8), %xmm1
	vmovsd	24(%rdi,%rax,8), %xmm2
	vmulsd	8(%rcx,%rax,8), %xmm1, %xmm1
	vmovsd	(%rdi,%rax,8), %xmm3
	vmulsd	24(%rcx,%rax,8), %xmm2, %xmm2
	vfmadd231sd	(%rcx,%rax,8), %xmm3, %xmm1
	vmovsd	16(%rdi,%rax,8), %xmm4
	vfmadd231sd	16(%rcx,%rax,8), %xmm4, %xmm2
	vmovsd	32(%rdi,%rax,8), %xmm5
	vfmadd231sd	32(%rcx,%rax,8), %xmm5, %xmm0
	addq	$5, %rax
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%eax, %edx
	jg	.L72
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	testl	%eax, %eax
	js	.L111
	testl	%r8d, %r8d
	js	.L112
	movq	(%rdi), %r10
	movq	(%rsi), %r9
	cmpl	$1, %r8d
	jne	.L92
	cmpl	$1, %eax
	jne	.L92
	leal	-1(%rdx), %eax
	cmpl	$6, %eax
	jbe	.L91
	movl	%edx, %ecx
	leaq	8(%r10), %rdi
	leaq	8(%r9), %rsi
	xorl	%eax, %eax
	shrl	$3, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	salq	$6, %rcx
	.p2align 4,,10
	.p2align 3
.L82:
	vmovupd	(%rsi,%rax), %zmm6
	vfmadd231pd	(%rdi,%rax), %zmm6, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rcx
	jne	.L82
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%edx, %eax
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %eax
	leal	1(%rax), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L109
.L81:
	movl	%edx, %r8d
	subl	%eax, %r8d
	leal	-1(%r8), %r11d
	cmpl	$2, %r11d
	jbe	.L86
	vmovupd	8(%r9,%rax,8), %ymm7
	vmulpd	8(%r10,%rax,8), %ymm7, %ymm1
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %edi
	addl	%eax, %ecx
	addl	%eax, %esi
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%r8d, %eax
	je	.L109
.L86:
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	vmovsd	(%r10,%rcx,8), %xmm6
	leaq	0(,%rcx,8), %rax
	leal	1(%rdi), %ecx
	vfmadd231sd	(%r9,%rsi,8), %xmm6, %xmm0
	leaq	0(,%rsi,8), %r8
	cmpl	%ecx, %edx
	jle	.L109
	addl	$2, %edi
	vmovsd	8(%r9,%r8), %xmm7
	vfmadd231sd	8(%r10,%rax), %xmm7, %xmm0
	cmpl	%edi, %edx
	jle	.L109
	vmovsd	16(%r9,%r8), %xmm6
	vfmadd231sd	16(%r10,%rax), %xmm6, %xmm0
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L109:
	vzeroupper
.L64:
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	vmovsd	.LC1(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%rdi), %r9
	movq	(%rsi), %r8
	cmpl	$4, %eax
	jne	.L68
	vmovupd	(%r9), %ymm0
	vmulpd	(%r8), %ymm0, %ymm0
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vzeroupper
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L111:
	movl	$1, %ecx
	subl	%edx, %ecx
	imull	%eax, %ecx
	addl	$1, %ecx
	testl	%r8d, %r8d
	jns	.L113
.L74:
	movl	$1, %r9d
	movq	(%rdi), %r10
	subl	%edx, %r9d
	imull	%r8d, %r9d
	leal	1(%r9), %r11d
	movq	(%rsi), %r9
.L77:
	movslq	%ecx, %rcx
	movslq	%r8d, %r8
	movslq	%r11d, %r11
	salq	$3, %rax
	leaq	(%r10,%rcx,8), %rdi
	salq	$3, %r8
	leaq	(%r9,%r11,8), %rsi
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L80:
	addl	$1, %ecx
	vmovsd	(%rdi), %xmm7
	addq	%rax, %rdi
	vfmadd231sd	(%rsi), %xmm7, %xmm0
	addq	%r8, %rsi
	cmpl	%ecx, %edx
	jne	.L80
	ret
.L68:
	cmpl	$1, %eax
	je	.L90
	vmovupd	(%r9), %xmm7
	vmulpd	(%r8), %xmm7, %xmm1
	movl	$2, %ecx
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	$2, %eax
	je	.L67
.L70:
	vmovsd	(%r9,%rcx,8), %xmm7
	vfmadd231sd	(%r8,%rcx,8), %xmm7, %xmm0
	jmp	.L67
.L91:
	xorl	%eax, %eax
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L81
.L90:
	xorl	%ecx, %ecx
	jmp	.L70
.L113:
	movq	(%rdi), %r10
	movq	(%rsi), %r9
	movl	$1, %r11d
	jmp	.L77
.L92:
	movl	$1, %r11d
	movl	$1, %ecx
	jmp	.L77
.L112:
	movl	$1, %ecx
	jmp	.L74
	.cfi_endproc
.LFE3696:
	.size	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, .-_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.p2align 4
	.weak	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii, @function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii:
.LFB3697:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	vmovq	%rdi, %xmm3
	movl	%r9d, %edi
	movl	%r8d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	vpinsrq	$1, %rsi, %xmm3, %xmm2
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edx, %ebx
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	vmovdqa	%xmm2, (%rsp)
	call	omp_set_num_threads@PLT
	testl	%ebx, %ebx
	jle	.L121
	cmpl	$1, %ebp
	jne	.L116
	cmpl	$1, %r12d
	jne	.L116
	movslq	%ebx, %rbp
	movl	%ebx, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	imulq	$1717986919, %rbp, %rbp
	sarl	$31, %eax
	sarq	$33, %rbp
	subl	%eax, %ebp
	leal	0(%rbp,%rbp,4), %eax
	movl	%ebx, %ebp
	subl	%eax, %ebp
	jne	.L133
.L117:
	cmpl	$4, %ebx
	jg	.L134
	.p2align 4,,10
	.p2align 3
.L114:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L135
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	.cfi_restore_state
	movl	$1, %eax
	testl	%ebp, %ebp
	jns	.L118
	subl	%ebx, %eax
	imull	%ebp, %eax
	addl	$1, %eax
.L118:
	vmovd	%r12d, %xmm4
	vmovd	%ebx, %xmm5
	vpinsrd	$1, %eax, %xmm4, %xmm1
	vpinsrd	$1, %ebp, %xmm5, %xmm0
	movl	$1, %eax
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	testl	%r12d, %r12d
	jns	.L119
	subl	%ebx, %eax
	imull	%r12d, %eax
	addl	$1, %eax
.L119:
	vmovdqa	(%rsp), %xmm7
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2(%rip), %rdi
	vmovdqu	%xmm0, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movl	%eax, 56(%rsp)
	vmovdqa	%xmm7, 16(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	32(%rsp), %xmm0
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L121:
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L134:
	vmovd	%ebx, %xmm6
	addl	$1, %ebp
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	vmovsd	%xmm0, 32(%rsp)
	vpinsrd	$1, %ebp, %xmm6, %xmm0
	xorl	%edx, %edx
	vmovdqa	(%rsp), %xmm6
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1(%rip), %rdi
	vmovq	%xmm0, 40(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	32(%rsp), %xmm0
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L133:
	vmovdqa	(%rsp), %xmm6
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0(%rip), %rdi
	movl	%ebp, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	32(%rsp), %xmm0
	jmp	.L117
.L135:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3697:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii, .-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.section	.text._Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,"axG",@progbits,_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,comdat
	.p2align 4
	.weak	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.type	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, @function
_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd:
.LFB3698:
	.cfi_startproc
	endbr64
	movq	$0x000000000, (%r9)
	testl	%edx, %edx
	jle	.L185
	movslq	%ecx, %rax
	cmpl	$1, %eax
	jne	.L138
	cmpl	$1, %r8d
	jne	.L138
	movslq	%edx, %rax
	movl	%edx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	imulq	$1717986919, %rax, %rax
	sarl	$31, %ecx
	sarq	$33, %rax
	subl	%ecx, %eax
	leal	(%rax,%rax,4), %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	jne	.L188
.L139:
	cmpl	$4, %edx
	jle	.L186
	movq	(%rdi), %rdi
	movq	(%rsi), %rcx
	cltq
	.p2align 4,,10
	.p2align 3
.L145:
	vmovsd	8(%rdi,%rax,8), %xmm1
	vmovsd	24(%rdi,%rax,8), %xmm2
	vmulsd	8(%rcx,%rax,8), %xmm1, %xmm1
	vmovsd	(%rdi,%rax,8), %xmm3
	vmulsd	24(%rcx,%rax,8), %xmm2, %xmm2
	vfmadd231sd	(%rcx,%rax,8), %xmm3, %xmm1
	vmovsd	16(%rdi,%rax,8), %xmm4
	vfmadd231sd	16(%rcx,%rax,8), %xmm4, %xmm2
	vmovsd	32(%rdi,%rax,8), %xmm5
	vfmadd231sd	32(%rcx,%rax,8), %xmm5, %xmm0
	addq	$5, %rax
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%eax, %edx
	jg	.L145
.L186:
	vmovsd	%xmm0, (%r9)
.L185:
	ret
	.p2align 4,,10
	.p2align 3
.L138:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	testl	%eax, %eax
	js	.L189
	testl	%r8d, %r8d
	js	.L190
	movq	(%rdi), %r11
	movq	(%rsi), %r10
	cmpl	$1, %r8d
	jne	.L165
	cmpl	$1, %eax
	jne	.L165
	leal	-1(%rdx), %eax
	cmpl	$6, %eax
	jbe	.L164
	movl	%edx, %ecx
	leaq	8(%r11), %rdi
	leaq	8(%r10), %rsi
	xorl	%eax, %eax
	shrl	$3, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	salq	$6, %rcx
	.p2align 4,,10
	.p2align 3
.L156:
	vmovupd	(%rsi,%rax), %zmm6
	vfmadd231pd	(%rdi,%rax), %zmm6, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rcx
	jne	.L156
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%edx, %eax
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %eax
	leal	1(%rax), %ecx
	movl	%eax, %edi
	movl	%ecx, %esi
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L182
.L155:
	movl	%edx, %r8d
	subl	%eax, %r8d
	leal	-1(%r8), %ebx
	cmpl	$2, %ebx
	jbe	.L160
	vmovupd	8(%r10,%rax,8), %ymm7
	vmulpd	8(%r11,%rax,8), %ymm7, %ymm1
	movl	%r8d, %eax
	andl	$-4, %eax
	addl	%eax, %edi
	addl	%eax, %ecx
	addl	%eax, %esi
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%r8d, %eax
	je	.L182
.L160:
	movslq	%ecx, %rcx
	movslq	%esi, %rsi
	vmovsd	(%r11,%rcx,8), %xmm6
	leaq	0(,%rcx,8), %rax
	leal	1(%rdi), %ecx
	vfmadd231sd	(%r10,%rsi,8), %xmm6, %xmm0
	leaq	0(,%rsi,8), %r8
	cmpl	%ecx, %edx
	jle	.L182
	addl	$2, %edi
	vmovsd	8(%r10,%r8), %xmm7
	vfmadd231sd	8(%r11,%rax), %xmm7, %xmm0
	cmpl	%edi, %edx
	jle	.L182
	vmovsd	16(%r10,%r8), %xmm6
	vfmadd231sd	16(%r11,%rax), %xmm6, %xmm0
	vzeroupper
.L146:
	movq	-8(%rbp), %rbx
	vmovsd	%xmm0, (%r9)
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	.cfi_restore 3
	.cfi_restore 6
	movq	(%rdi), %r10
	movq	(%rsi), %r8
	cmpl	$4, %eax
	jne	.L140
	vmovupd	(%r10), %ymm0
	vmulpd	(%r8), %ymm0, %ymm0
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vzeroupper
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L182:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	movq	-8(%rbp), %rbx
	vmovsd	%xmm0, (%r9)
	leave
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	.cfi_restore_state
	movl	$1, %ecx
	subl	%edx, %ecx
	imull	%eax, %ecx
	leal	1(%rcx), %ebx
	testl	%r8d, %r8d
	jns	.L191
.L148:
	movl	$1, %ecx
	movq	(%rdi), %r11
	movq	(%rsi), %r10
	subl	%edx, %ecx
	imull	%r8d, %ecx
	addl	$1, %ecx
.L151:
	movslq	%ecx, %rcx
	movslq	%ebx, %rbx
	movslq	%r8d, %r8
	salq	$3, %rax
	leaq	(%r10,%rcx,8), %rsi
	leaq	(%r11,%rbx,8), %rdi
	salq	$3, %r8
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L154:
	addl	$1, %ecx
	vmovsd	(%rdi), %xmm7
	addq	%rax, %rdi
	vfmadd231sd	(%rsi), %xmm7, %xmm0
	addq	%r8, %rsi
	cmpl	%ecx, %edx
	jne	.L154
	jmp	.L146
.L140:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	cmpl	$1, %eax
	je	.L163
	vmovupd	(%r10), %xmm7
	vmulpd	(%r8), %xmm7, %xmm1
	movl	$2, %ecx
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	$2, %eax
	je	.L139
.L142:
	vmovsd	(%r10,%rcx,8), %xmm7
	vfmadd231sd	(%r8,%rcx,8), %xmm7, %xmm0
	jmp	.L139
.L164:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movl	$1, %esi
	movl	$1, %ecx
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L155
.L163:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%ecx, %ecx
	jmp	.L142
.L191:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	(%rdi), %r11
	movq	(%rsi), %r10
	movl	$1, %ecx
	jmp	.L151
.L165:
	movl	$1, %ecx
	movl	$1, %ebx
	jmp	.L151
.L190:
	movl	$1, %ebx
	jmp	.L148
	.cfi_endproc
.LFE3698:
	.size	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, .-_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_common.cc, @function
_GLOBAL__sub_I_common.cc:
.LFB4034:
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
.LFE4034:
	.size	_GLOBAL__sub_I_common.cc, .-_GLOBAL__sub_I_common.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_common.cc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
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
