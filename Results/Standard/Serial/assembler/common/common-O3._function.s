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
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	omp_get_num_threads@PLT
	movl	%eax, %ebp
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbx), %eax
	cltd
	idivl	%ebp
	cmpl	%edx, %ecx
	jl	.L2
.L9:
	movl	%ecx, %esi
	pxor	%xmm0, %xmm0
	imull	%eax, %esi
	leal	(%rdx,%rsi), %ecx
	leal	(%rax,%rcx), %edi
	cmpl	%edi, %ecx
	jge	.L3
	movq	(%rbx), %rdi
	movq	(%rdi), %r8
	movq	8(%rbx), %rdi
	movq	(%rdi), %r9
	cmpl	$1, %eax
	je	.L4
	movslq	%edx, %rdx
	movslq	%esi, %rsi
	movl	%eax, %edi
	addq	%rdx, %rsi
	shrl	%edi
	xorl	%edx, %edx
	salq	$3, %rsi
	salq	$4, %rdi
	leaq	(%r8,%rsi), %r10
	addq	%r9, %rsi
	.p2align 4,,10
	.p2align 3
.L5:
	movupd	(%r10,%rdx), %xmm1
	movupd	(%rsi,%rdx), %xmm3
	addq	$16, %rdx
	mulpd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rdi, %rdx
	jne	.L5
	movl	%eax, %edx
	andl	$-2, %edx
	addl	%edx, %ecx
	cmpl	%eax, %edx
	je	.L3
.L4:
	movslq	%ecx, %rax
	movsd	(%r9,%rax,8), %xmm1
	mulsd	(%r8,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
.L3:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L8:
	movq	%rdx, %xmm4
	movq	%rdx, %rax
	addsd	%xmm0, %xmm4
	movq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L17
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L9
.L17:
	movq	%rax, %rdx
	jmp	.L8
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
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movslq	28(%rdi), %r13
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	leal	-1(%r13), %ebx
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbp), %eax
	leal	4(%rax), %edx
	subl	%ebx, %edx
	movslq	%edx, %rax
	sarl	$31, %edx
	imulq	$1717986919, %rax, %rax
	sarq	$33, %rax
	subl	%edx, %eax
	cltd
	idivl	%r12d
	cmpl	%edx, %ecx
	jl	.L19
.L26:
	imull	%eax, %ecx
	pxor	%xmm0, %xmm0
	movslq	%ecx, %r8
	leal	(%rdx,%r8), %ecx
	addl	%ecx, %eax
	cmpl	%eax, %ecx
	jge	.L20
	leal	(%rcx,%rcx,4), %r9d
	leal	(%rax,%rax,4), %eax
	movq	0(%rbp), %rsi
	movq	8(%rbp), %rdi
	subl	%r9d, %eax
	leal	(%rbx,%r9), %ecx
	movl	$3435973837, %r9d
	leal	-1(%rax), %r10d
	movq	(%rsi), %rsi
	movq	(%rdi), %rdi
	movq	%r10, %rax
	imulq	%r9, %r10
	shrq	$34, %r10
	addl	$1, %r10d
	cmpl	$4, %eax
	jbe	.L21
	movslq	%edx, %rdx
	addq	%rdx, %r8
	leaq	(%r8,%r8,4), %rax
	movl	%r10d, %r8d
	addq	%r13, %rax
	shrl	%r8d
	leaq	-8(,%rax,8), %rax
	subl	$1, %r8d
	leaq	(%rdi,%rax), %rdx
	leaq	(%r8,%r8,4), %r9
	addq	%rsi, %rax
	salq	$4, %r9
	leaq	80(%rdx), %r8
	addq	%r8, %r9
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L34:
	addq	$80, %r8
.L22:
	movupd	(%rax), %xmm7
	movupd	(%rdx), %xmm4
	addq	$80, %rax
	movupd	-64(%rax), %xmm6
	movupd	16(%rdx), %xmm3
	mulpd	%xmm7, %xmm4
	movupd	32(%rdx), %xmm2
	movupd	-48(%rax), %xmm7
	mulpd	%xmm6, %xmm3
	movupd	48(%rdx), %xmm1
	movupd	-32(%rax), %xmm6
	mulpd	%xmm7, %xmm2
	movupd	64(%rdx), %xmm5
	movupd	-16(%rax), %xmm7
	movq	%r8, %rdx
	mulpd	%xmm6, %xmm1
	mulpd	%xmm7, %xmm5
	addsd	%xmm4, %xmm0
	unpckhpd	%xmm4, %xmm4
	addsd	%xmm0, %xmm4
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm3
	addsd	%xmm4, %xmm0
	addsd	%xmm0, %xmm3
	movapd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm2
	addsd	%xmm3, %xmm0
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movapd	%xmm5, %xmm0
	unpckhpd	%xmm5, %xmm5
	addsd	%xmm1, %xmm0
	addsd	%xmm5, %xmm0
	cmpq	%r8, %r9
	jne	.L34
	movl	%r10d, %eax
	andl	$-2, %eax
	leal	(%rax,%rax,4), %edx
	addl	%edx, %ecx
	cmpl	%r10d, %eax
	je	.L20
.L21:
	movslq	%ecx, %rdx
	movsd	(%rdi,%rdx,8), %xmm1
	mulsd	(%rsi,%rdx,8), %xmm1
	leaq	0(,%rdx,8), %rax
	addsd	%xmm0, %xmm1
	movsd	8(%rdi,%rax), %xmm0
	mulsd	8(%rsi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	16(%rdi,%rax), %xmm0
	mulsd	16(%rsi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	24(%rdi,%rax), %xmm0
	mulsd	24(%rsi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%rdi,%rax), %xmm0
	mulsd	32(%rsi,%rax), %xmm0
	addsd	%xmm1, %xmm0
.L20:
	movq	16(%rbp), %rdx
	leaq	16(%rbp), %rcx
.L25:
	movq	%rdx, %xmm6
	movq	%rdx, %rax
	addsd	%xmm0, %xmm6
	movq	%xmm6, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L35
	addq	$8, %rsp
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
	.p2align 4,,10
	.p2align 3
.L19:
	.cfi_restore_state
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L26
.L35:
	movq	%rax, %rdx
	jmp	.L25
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	call	omp_get_num_threads@PLT
	movl	%eax, %ebp
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbx), %eax
	cltd
	idivl	%ebp
	cmpl	%edx, %ecx
	jl	.L37
.L47:
	imull	%eax, %ecx
	pxor	%xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jge	.L38
	movq	(%rbx), %r10
	movq	28(%rbx), %xmm1
	movq	36(%rbx), %xmm2
	movl	32(%rbx), %r9d
	movq	(%r10), %r11
	movdqa	%xmm1, %xmm3
	movd	%xmm1, %ebp
	movl	28(%rbx), %edi
	movq	8(%rbx), %r10
	pshufd	$0xe5, %xmm1, %xmm6
	paddd	%xmm2, %xmm3
	pshufd	$0xe5, %xmm2, %xmm7
	movd	%xmm6, %r12d
	movd	%xmm7, %esi
	movd	%xmm2, %ecx
	movq	(%r10), %r10
	cmpl	$1, %ebp
	jne	.L51
	cmpl	$1, %r12d
	jne	.L51
	cmpl	$1, %eax
	je	.L43
	movslq	%ecx, %rdx
	movl	%eax, %r8d
	leaq	(%r11,%rdx,8), %r12
	shrl	%r8d
	movslq	%esi, %rdx
	leaq	(%r10,%rdx,8), %rbp
	salq	$4, %r8
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L44:
	movupd	(%r12,%rdx), %xmm1
	movupd	0(%rbp,%rdx), %xmm4
	addq	$16, %rdx
	mulpd	%xmm4, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%r8, %rdx
	jne	.L44
	movl	%eax, %edx
	andl	$-2, %edx
	addl	%edx, %ecx
	addl	%edx, %esi
	cmpl	%edx, %eax
	je	.L42
.L43:
	movslq	%ecx, %rcx
	movslq	%esi, %rdx
	movsd	(%r11,%rcx,8), %xmm1
	mulsd	(%r10,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
.L42:
	subl	$1, %eax
	imull	%eax, %edi
	imull	%eax, %r9d
	movd	%edi, %xmm1
	movd	%r9d, %xmm6
	punpckldq	%xmm6, %xmm1
	paddd	%xmm3, %xmm1
	movq	%xmm1, 36(%rbx)
.L38:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L46:
	movq	%rdx, %xmm5
	movq	%rdx, %rax
	addsd	%xmm0, %xmm5
	movq	%xmm5, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L56
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
.L37:
	.cfi_restore_state
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L51:
	movslq	%ecx, %rcx
	movslq	%ebp, %rbp
	movslq	%r12d, %r12
	movslq	%esi, %rsi
	leaq	(%r11,%rcx,8), %r11
	salq	$3, %rbp
	salq	$3, %r12
	leaq	(%r10,%rsi,8), %rcx
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L41:
	movsd	(%r11), %xmm1
	mulsd	(%rcx), %xmm1
	addl	$1, %edx
	addq	%rbp, %r11
	addq	%r12, %rcx
	addsd	%xmm1, %xmm0
	cmpl	%edx, %r8d
	jne	.L41
	jmp	.L42
.L56:
	movq	%rax, %rdx
	jmp	.L46
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
	movq	%rdi, %r9
	movslq	%ecx, %rax
	movl	%edx, %edi
	testl	%edx, %edx
	jle	.L81
	cmpl	$1, %eax
	jne	.L59
	cmpl	$1, %r8d
	jne	.L59
	movslq	%edx, %rdx
	movl	%edi, %eax
	pxor	%xmm0, %xmm0
	imulq	$1717986919, %rdx, %rdx
	sarl	$31, %eax
	sarq	$33, %rdx
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%edi, %edx
	subl	%eax, %edx
	jne	.L101
.L60:
	cmpl	$4, %edi
	jle	.L57
	subl	$1, %edi
	movl	$3435973837, %eax
	movq	(%r9), %r8
	movq	(%rsi), %rsi
	subl	%edx, %edi
	movl	%edi, %r10d
	imulq	%rax, %r10
	shrq	$34, %r10
	addl	$1, %r10d
	cmpl	$4, %edi
	jbe	.L64
	movl	%r10d, %edi
	movslq	%edx, %rax
	shrl	%edi
	salq	$3, %rax
	subl	$1, %edi
	leaq	(%rsi,%rax), %rcx
	addq	%r8, %rax
	leaq	(%rdi,%rdi,4), %r9
	leaq	80(%rcx), %rdi
	salq	$4, %r9
	addq	%rdi, %r9
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L102:
	addq	$80, %rdi
.L65:
	movupd	(%rax), %xmm7
	movupd	(%rcx), %xmm2
	addq	$80, %rax
	movupd	-64(%rax), %xmm6
	movupd	16(%rcx), %xmm1
	mulpd	%xmm7, %xmm2
	movupd	48(%rcx), %xmm5
	movupd	-48(%rax), %xmm7
	mulpd	%xmm6, %xmm1
	movupd	-32(%rax), %xmm6
	movupd	32(%rcx), %xmm4
	movupd	64(%rcx), %xmm3
	movq	%rdi, %rcx
	mulpd	%xmm6, %xmm5
	mulpd	%xmm7, %xmm4
	movupd	-16(%rax), %xmm7
	movapd	%xmm2, %xmm6
	unpckhpd	%xmm2, %xmm2
	addsd	%xmm0, %xmm6
	mulpd	%xmm7, %xmm3
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm6, %xmm2
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	unpckhpd	%xmm4, %xmm4
	movapd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm5, %xmm1
	unpckhpd	%xmm5, %xmm5
	addsd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm3
	addsd	%xmm5, %xmm1
	addsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	cmpq	%rdi, %r9
	jne	.L102
	movl	%r10d, %eax
	andl	$-2, %eax
	leal	(%rax,%rax,4), %ecx
	addl	%ecx, %edx
	cmpl	%r10d, %eax
	je	.L57
.L64:
	movslq	%edx, %rdx
	movsd	(%rsi,%rdx,8), %xmm1
	mulsd	(%r8,%rdx,8), %xmm1
	leaq	0(,%rdx,8), %rax
	addsd	%xmm0, %xmm1
	movsd	8(%rsi,%rax), %xmm0
	mulsd	8(%r8,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	16(%rsi,%rax), %xmm0
	mulsd	16(%r8,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	24(%rsi,%rax), %xmm0
	mulsd	24(%r8,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%rsi,%rax), %xmm0
	mulsd	32(%r8,%rax), %xmm0
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	testl	%eax, %eax
	js	.L103
	testl	%r8d, %r8d
	js	.L104
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	cmpl	$1, %r8d
	jne	.L85
	cmpl	$1, %eax
	jne	.L85
	movl	%edi, %r10d
	cmpl	$1, %edi
	je	.L84
	movl	%edi, %edx
	leaq	8(%r9), %r8
	leaq	8(%rcx), %rsi
	xorl	%eax, %eax
	shrl	%edx
	pxor	%xmm0, %xmm0
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L77:
	movupd	(%rsi,%rax), %xmm1
	movupd	(%r8,%rax), %xmm7
	addq	$16, %rax
	mulpd	%xmm7, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	cmpq	%rax, %rdx
	jne	.L77
	andl	$-2, %edi
	movl	%edi, %edx
	leal	1(%rdi), %edi
	movslq	%edi, %rax
	cmpl	%r10d, %edx
	je	.L105
.L76:
	movslq	%edi, %rdi
	movsd	(%rcx,%rax,8), %xmm1
	mulsd	(%r9,%rdi,8), %xmm1
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	movsd	.LC1(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L101:
	movq	(%r9), %r8
	movq	(%rsi), %rcx
	cmpl	$1, %edx
	je	.L83
	movupd	(%r8), %xmm1
	movupd	(%rcx), %xmm6
	movl	%edx, %eax
	shrl	%eax
	mulpd	%xmm6, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	cmpl	$2, %eax
	jne	.L62
	movupd	16(%rcx), %xmm2
	movupd	16(%r8), %xmm1
	mulpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	jmp	.L60
	.p2align 4,,10
	.p2align 3
.L105:
	ret
	.p2align 4,,10
	.p2align 3
.L103:
	movl	$1, %edx
	subl	%edi, %edx
	imull	%eax, %edx
	leal	1(%rdx), %r10d
	testl	%r8d, %r8d
	jns	.L106
.L69:
	movl	$1, %edx
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	subl	%edi, %edx
	imull	%r8d, %edx
	addl	$1, %edx
.L72:
	movslq	%edx, %rdx
	movslq	%r10d, %r10
	movslq	%r8d, %r8
	salq	$3, %rax
	leaq	(%rcx,%rdx,8), %rcx
	leaq	(%r9,%r10,8), %rsi
	salq	$3, %r8
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L75:
	movsd	(%rsi), %xmm1
	mulsd	(%rcx), %xmm1
	addl	$1, %edx
	addq	%rax, %rsi
	addq	%r8, %rcx
	addsd	%xmm1, %xmm0
	cmpl	%edx, %edi
	jne	.L75
	ret
	.p2align 4,,10
	.p2align 3
.L62:
	cmpl	$2, %edx
	je	.L60
	movl	$2, %eax
.L61:
	movsd	(%r8,%rax,8), %xmm1
	mulsd	(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.L60
.L84:
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	jmp	.L76
.L83:
	xorl	%eax, %eax
	jmp	.L61
.L106:
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	movl	$1, %edx
	jmp	.L72
.L85:
	movl	$1, %edx
	movl	$1, %r10d
	jmp	.L72
.L104:
	movl	$1, %r10d
	jmp	.L69
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
	movq	%rdi, %r10
	movq	%rsi, %xmm3
	movl	%r9d, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%r10, %xmm2
	movl	%ecx, %ebp
	movl	%r8d, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	punpcklqdq	%xmm3, %xmm2
	movl	%edx, %ebx
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	movaps	%xmm2, (%rsp)
	call	omp_set_num_threads@PLT
	testl	%ebx, %ebx
	jle	.L114
	cmpl	$1, %ebp
	jne	.L109
	cmpl	$1, %r12d
	jne	.L109
	movslq	%ebx, %rbp
	movl	%ebx, %eax
	pxor	%xmm0, %xmm0
	imulq	$1717986919, %rbp, %rbp
	sarl	$31, %eax
	sarq	$33, %rbp
	subl	%eax, %ebp
	leal	0(%rbp,%rbp,4), %eax
	movl	%ebx, %ebp
	subl	%eax, %ebp
	jne	.L126
.L110:
	cmpl	$4, %ebx
	jg	.L127
	.p2align 4,,10
	.p2align 3
.L107:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L128
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
.L109:
	.cfi_restore_state
	movl	$1, %eax
	testl	%ebp, %ebp
	jns	.L111
	subl	%ebx, %eax
	imull	%ebp, %eax
	addl	$1, %eax
.L111:
	movd	%eax, %xmm4
	movd	%r12d, %xmm1
	movd	%ebx, %xmm0
	movl	$1, %eax
	movd	%ebp, %xmm5
	punpckldq	%xmm4, %xmm1
	punpckldq	%xmm5, %xmm0
	punpcklqdq	%xmm1, %xmm0
	testl	%r12d, %r12d
	jns	.L112
	subl	%ebx, %eax
	imull	%r12d, %eax
	addl	$1, %eax
.L112:
	movdqa	(%rsp), %xmm6
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.2(%rip), %rdi
	movups	%xmm0, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movl	%eax, 56(%rsp)
	movaps	%xmm6, 16(%rsp)
	call	GOMP_parallel@PLT
	movsd	32(%rsp), %xmm0
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L114:
	movsd	.LC1(%rip), %xmm0
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L127:
	addl	$1, %ebp
	movsd	%xmm0, 32(%rsp)
	movd	%ebx, %xmm0
	xorl	%ecx, %ecx
	movd	%ebp, %xmm7
	leaq	16(%rsp), %rsi
	xorl	%edx, %edx
	punpckldq	%xmm7, %xmm0
	movdqa	(%rsp), %xmm7
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1(%rip), %rdi
	movq	%xmm0, 40(%rsp)
	movaps	%xmm7, 16(%rsp)
	call	GOMP_parallel@PLT
	movsd	32(%rsp), %xmm0
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L126:
	movdqa	(%rsp), %xmm7
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0(%rip), %rdi
	movl	%ebp, 40(%rsp)
	movq	$0x000000000, 32(%rsp)
	movaps	%xmm7, 16(%rsp)
	call	GOMP_parallel@PLT
	movsd	32(%rsp), %xmm0
	jmp	.L110
.L128:
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
	movq	%rsi, %r10
	movq	$0x000000000, (%r9)
	movl	%edx, %esi
	movslq	%ecx, %rax
	testl	%edx, %edx
	jle	.L129
	cmpl	$1, %eax
	jne	.L131
	cmpl	$1, %r8d
	jne	.L131
	movslq	%edx, %rdx
	movl	%esi, %eax
	pxor	%xmm0, %xmm0
	imulq	$1717986919, %rdx, %rdx
	sarl	$31, %eax
	sarq	$33, %rdx
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	movl	%esi, %edx
	subl	%eax, %edx
	jne	.L174
.L132:
	cmpl	$4, %esi
	jle	.L149
	subl	$1, %esi
	movl	$3435973837, %eax
	movq	(%rdi), %rdi
	movq	(%r10), %r8
	subl	%edx, %esi
	movl	%esi, %r11d
	imulq	%rax, %r11
	shrq	$34, %r11
	addl	$1, %r11d
	cmpl	$4, %esi
	jbe	.L137
	movl	%r11d, %esi
	movslq	%edx, %rax
	shrl	%esi
	salq	$3, %rax
	subl	$1, %esi
	leaq	(%r8,%rax), %rcx
	addq	%rdi, %rax
	leaq	(%rsi,%rsi,4), %r10
	leaq	80(%rcx), %rsi
	salq	$4, %r10
	addq	%rsi, %r10
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L175:
	addq	$80, %rsi
.L138:
	movupd	(%rax), %xmm6
	movupd	(%rcx), %xmm2
	addq	$80, %rax
	movupd	-64(%rax), %xmm7
	movupd	16(%rcx), %xmm1
	mulpd	%xmm6, %xmm2
	movupd	32(%rcx), %xmm4
	movupd	-48(%rax), %xmm6
	mulpd	%xmm7, %xmm1
	movupd	48(%rcx), %xmm5
	movupd	-32(%rax), %xmm7
	mulpd	%xmm6, %xmm4
	movupd	64(%rcx), %xmm3
	movupd	-16(%rax), %xmm6
	movq	%rsi, %rcx
	mulpd	%xmm7, %xmm5
	mulpd	%xmm6, %xmm3
	addsd	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm2
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	unpckhpd	%xmm4, %xmm4
	movapd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movapd	%xmm5, %xmm1
	unpckhpd	%xmm5, %xmm5
	addsd	%xmm0, %xmm1
	movapd	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm3
	addsd	%xmm5, %xmm1
	addsd	%xmm1, %xmm0
	addsd	%xmm3, %xmm0
	cmpq	%rsi, %r10
	jne	.L175
	movl	%r11d, %eax
	andl	$-2, %eax
	leal	(%rax,%rax,4), %ecx
	addl	%ecx, %edx
	cmpl	%r11d, %eax
	je	.L149
.L137:
	movslq	%edx, %rdx
	movsd	(%r8,%rdx,8), %xmm1
	mulsd	(%rdi,%rdx,8), %xmm1
	leaq	0(,%rdx,8), %rax
	addsd	%xmm0, %xmm1
	movsd	8(%r8,%rax), %xmm0
	mulsd	8(%rdi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	16(%r8,%rax), %xmm0
	mulsd	16(%rdi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	24(%r8,%rax), %xmm0
	mulsd	24(%rdi,%rax), %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%r8,%rax), %xmm0
	mulsd	32(%rdi,%rax), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%r9)
	ret
	.p2align 4,,10
	.p2align 3
.L129:
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	testl	%eax, %eax
	js	.L176
	testl	%r8d, %r8d
	js	.L177
	movq	(%rdi), %rdi
	movq	(%r10), %rcx
	cmpl	$1, %r8d
	jne	.L158
	cmpl	$1, %eax
	jne	.L158
	movl	%esi, %r11d
	cmpl	$1, %esi
	je	.L157
	movl	%esi, %edx
	leaq	8(%rdi), %r10
	leaq	8(%rcx), %r8
	xorl	%eax, %eax
	shrl	%edx
	pxor	%xmm0, %xmm0
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L151:
	movupd	(%r8,%rax), %xmm1
	movupd	(%r10,%rax), %xmm7
	addq	$16, %rax
	mulpd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rdx
	jne	.L151
	andl	$-2, %esi
	movl	%esi, %edx
	leal	1(%rsi), %esi
	movslq	%esi, %rax
	cmpl	%r11d, %edx
	je	.L149
.L150:
	movslq	%esi, %rsi
	movsd	(%rcx,%rax,8), %xmm1
	mulsd	(%rdi,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
.L149:
	movsd	%xmm0, (%r9)
	ret
	.p2align 4,,10
	.p2align 3
.L174:
	movq	(%rdi), %r8
	movq	(%r10), %rcx
	cmpl	$1, %edx
	je	.L156
	movupd	(%r8), %xmm1
	movupd	(%rcx), %xmm7
	movl	%edx, %eax
	shrl	%eax
	mulpd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpl	$2, %eax
	jne	.L134
	movupd	16(%r8), %xmm1
	movupd	16(%rcx), %xmm2
	mulpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.L132
	.p2align 4,,10
	.p2align 3
.L176:
	movl	$1, %edx
	subl	%esi, %edx
	imull	%eax, %edx
	addl	$1, %edx
	testl	%r8d, %r8d
	jns	.L178
.L142:
	movl	$1, %ecx
	movq	(%rdi), %rdi
	subl	%esi, %ecx
	imull	%r8d, %ecx
	leal	1(%rcx), %r11d
	movq	(%r10), %rcx
.L145:
	movslq	%edx, %rdx
	movslq	%r8d, %r8
	movslq	%r11d, %r11
	salq	$3, %rax
	leaq	(%rdi,%rdx,8), %rdi
	salq	$3, %r8
	leaq	(%rcx,%r11,8), %rcx
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L148:
	movsd	(%rdi), %xmm1
	mulsd	(%rcx), %xmm1
	addl	$1, %edx
	addq	%rax, %rdi
	addq	%r8, %rcx
	addsd	%xmm1, %xmm0
	cmpl	%edx, %esi
	jne	.L148
	jmp	.L149
	.p2align 4,,10
	.p2align 3
.L134:
	cmpl	$2, %edx
	je	.L132
	movl	$2, %eax
.L133:
	movsd	(%r8,%rax,8), %xmm1
	mulsd	(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.L132
.L157:
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	jmp	.L150
.L156:
	xorl	%eax, %eax
	jmp	.L133
.L178:
	movq	(%rdi), %rdi
	movq	(%r10), %rcx
	movl	$1, %r11d
	jmp	.L145
.L158:
	movl	$1, %r11d
	movl	$1, %edx
	jmp	.L145
.L177:
	movl	$1, %edx
	jmp	.L142
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
