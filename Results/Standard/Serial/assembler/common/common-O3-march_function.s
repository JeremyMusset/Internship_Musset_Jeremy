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
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	andq	$-32, %rsp
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %edi
	movl	24(%rbx), %eax
	cltd
	idivl	%r12d
	cmpl	%edx, %edi
	jl	.L2
.L11:
	imull	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	leal	(%rdx,%rdi), %ecx
	leal	(%rax,%rcx), %esi
	cmpl	%esi, %ecx
	jge	.L3
	movq	(%rbx), %rsi
	movq	(%rsi), %r11
	movq	8(%rbx), %rsi
	movq	(%rsi), %r10
	leal	-1(%rax), %esi
	cmpl	$2, %esi
	jbe	.L13
	movslq	%edx, %rsi
	movslq	%edi, %r8
	addq	%rsi, %r8
	movl	%eax, %r9d
	salq	$3, %r8
	shrl	$2, %r9d
	leaq	(%r11,%r8), %r12
	salq	$5, %r9
	addq	%r10, %r8
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L5:
	vmovupd	(%r12,%rsi), %ymm4
	vmulpd	(%r8,%rsi), %ymm4, %ymm1
	addq	$32, %rsi
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r9, %rsi
	jne	.L5
	movl	%eax, %esi
	andl	$-4, %esi
	addl	%esi, %ecx
	cmpl	%eax, %esi
	je	.L24
	vzeroupper
.L4:
	subl	%esi, %eax
	cmpl	$1, %eax
	je	.L8
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	addq	%rdi, %rdx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %xmm6
	vmulpd	(%r10,%rdx,8), %xmm6, %xmm1
	movl	%eax, %edx
	andl	$-2, %edx
	addl	%edx, %ecx
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	cmpl	%edx, %eax
	je	.L3
.L8:
	movslq	%ecx, %rcx
	vmovsd	(%r11,%rcx,8), %xmm5
	vfmadd231sd	(%r10,%rcx,8), %xmm5, %xmm0
.L3:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L10:
	vmovq	%rdx, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	movq	%rdx, %rax
	vmovq	%xmm6, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L25
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	incl	%eax
	xorl	%edx, %edx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L13:
	xorl	%esi, %esi
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L24:
	vzeroupper
	jmp	.L3
.L25:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	andq	$-32, %rsp
	movslq	28(%rdi), %r12
	call	omp_get_num_threads@PLT
	movl	%eax, %r13d
	call	omp_get_thread_num@PLT
	movl	%eax, %r9d
	movl	24(%rbx), %eax
	leal	-1(%r12), %r14d
	leal	4(%rax), %edx
	subl	%r14d, %edx
	movslq	%edx, %rax
	imulq	$1717986919, %rax, %rax
	sarl	$31, %edx
	sarq	$33, %rax
	subl	%edx, %eax
	cltd
	idivl	%r13d
	cmpl	%edx, %r9d
	jl	.L27
.L36:
	imull	%eax, %r9d
	vxorpd	%xmm0, %xmm0, %xmm0
	leal	(%rdx,%r9), %ecx
	addl	%ecx, %eax
	cmpl	%eax, %ecx
	jge	.L28
	leal	(%rcx,%rcx,4), %r8d
	leal	(%rax,%rax,4), %eax
	subl	%r8d, %eax
	leal	-1(%rax), %r10d
	leal	(%r14,%r8), %ecx
	movl	$3435973837, %r8d
	movq	(%rbx), %rsi
	movq	%r10, %rax
	imulq	%r8, %r10
	movq	(%rsi), %rdi
	movq	8(%rbx), %rsi
	shrq	$34, %r10
	movq	(%rsi), %rsi
	incl	%r10d
	cmpl	$14, %eax
	jbe	.L38
	movslq	%edx, %r8
	movslq	%r9d, %rax
	addq	%r8, %rax
	leaq	(%rax,%rax,4), %rax
	movslq	%r12d, %r8
	addq	%r8, %rax
	movl	%r10d, %r8d
	shrl	$2, %r8d
	leaq	-8(,%rax,8), %rax
	decl	%r8d
	leaq	(%rsi,%rax), %r13
	leaq	(%r8,%r8,4), %r11
	salq	$5, %r11
	leaq	160(%r13), %r8
	addq	%rdi, %rax
	addq	%r8, %r11
	jmp	.L30
	.p2align 4,,10
	.p2align 3
.L49:
	addq	$160, %r8
.L30:
	vmovupd	0(%r13), %ymm7
	vmovupd	64(%r13), %ymm4
	vmulpd	(%rax), %ymm7, %ymm3
	vmovupd	32(%r13), %ymm7
	vmulpd	64(%rax), %ymm4, %ymm1
	vmulpd	32(%rax), %ymm7, %ymm2
	vmovupd	96(%r13), %ymm5
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm6
	vmulpd	96(%rax), %ymm5, %ymm4
	vaddsd	%xmm0, %xmm6, %xmm6
	vextractf64x2	$0x1, %ymm3, %xmm0
	vmovupd	128(%r13), %ymm7
	vaddsd	%xmm6, %xmm0, %xmm3
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vmulpd	128(%rax), %ymm7, %ymm5
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm3
	movq	%r8, %r13
	vaddsd	%xmm0, %xmm2, %xmm0
	addq	$160, %rax
	vaddsd	%xmm0, %xmm3, %xmm3
	vextractf64x2	$0x1, %ymm2, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm2
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vaddsd	%xmm0, %xmm1, %xmm0
	vaddsd	%xmm0, %xmm2, %xmm2
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm1
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm1
	vaddsd	%xmm0, %xmm4, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm1
	vextractf64x2	$0x1, %ymm4, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm1
	vaddsd	%xmm0, %xmm5, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm2
	vextractf64x2	$0x1, %ymm5, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r11, %r8
	jne	.L49
	movl	%r10d, %eax
	andl	$-4, %eax
	leal	(%rax,%rax,4), %r8d
	addl	%r8d, %ecx
	cmpl	%r10d, %eax
	je	.L50
	vzeroupper
.L29:
	subl	%eax, %r10d
	cmpl	$1, %r10d
	je	.L33
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	addq	%r9, %rdx
	addq	%rax, %rdx
	leaq	(%rdx,%rdx,4), %rax
	addq	%r12, %rax
	leaq	-8(,%rax,8), %rax
	leaq	(%rdi,%rax), %rdx
	vmovupd	(%rdx), %xmm6
	addq	%rsi, %rax
	vmulpd	(%rax), %xmm6, %xmm5
	vmovupd	16(%rdx), %xmm4
	vmovupd	32(%rdx), %xmm7
	vmulpd	16(%rax), %xmm4, %xmm4
	vmulpd	32(%rax), %xmm7, %xmm3
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm5
	vmovupd	48(%rdx), %xmm6
	vaddsd	%xmm5, %xmm0, %xmm0
	vmulpd	48(%rax), %xmm6, %xmm2
	vmovupd	64(%rax), %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm4
	vmulpd	64(%rdx), %xmm1, %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	movl	%r10d, %eax
	andl	$-2, %eax
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	leal	(%rax,%rax,4), %edx
	vaddsd	%xmm3, %xmm0, %xmm0
	addl	%edx, %ecx
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%eax, %r10d
	je	.L28
.L33:
	movslq	%ecx, %rcx
	vmovsd	(%rdi,%rcx,8), %xmm4
	vmovsd	8(%rdi,%rcx,8), %xmm5
	vfmadd231sd	(%rsi,%rcx,8), %xmm4, %xmm0
	vmovsd	16(%rdi,%rcx,8), %xmm7
	vmovsd	24(%rdi,%rcx,8), %xmm4
	vfmadd231sd	8(%rsi,%rcx,8), %xmm5, %xmm0
	vmovsd	32(%rdi,%rcx,8), %xmm5
	vfmadd231sd	16(%rsi,%rcx,8), %xmm7, %xmm0
	vfmadd231sd	24(%rsi,%rcx,8), %xmm4, %xmm0
	vfmadd231sd	32(%rsi,%rcx,8), %xmm5, %xmm0
.L28:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L35:
	vmovq	%rdx, %xmm7
	vaddsd	%xmm7, %xmm0, %xmm6
	movq	%rdx, %rax
	vmovq	%xmm6, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L51
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L27:
	.cfi_restore_state
	incl	%eax
	xorl	%edx, %edx
	jmp	.L36
.L38:
	xorl	%eax, %eax
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L50:
	vzeroupper
	jmp	.L28
.L51:
	movq	%rax, %rdx
	jmp	.L35
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
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, %rbx
	andq	$-32, %rsp
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %ecx
	movl	24(%rbx), %eax
	cltd
	idivl	%r12d
	cmpl	%edx, %ecx
	jl	.L53
.L65:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %edi
	cmpl	%edi, %edx
	jge	.L54
	movq	(%rbx), %r8
	vmovq	28(%rbx), %xmm4
	vmovq	36(%rbx), %xmm1
	movq	(%r8), %r9
	movq	8(%rbx), %r8
	vmovd	%xmm4, %r10d
	vpextrd	$1, %xmm4, %r11d
	movl	32(%rbx), %r12d
	vpaddd	%xmm4, %xmm1, %xmm4
	movl	28(%rbx), %r14d
	movq	(%r8), %r8
	vpextrd	$1, %xmm1, %esi
	vmovd	%xmm1, %ecx
	cmpl	$1, %r10d
	jne	.L69
	cmpl	$1, %r11d
	jne	.L69
	leal	-1(%rax), %r13d
	cmpl	$2, %r13d
	jbe	.L67
	movslq	%ecx, %rdx
	movl	%eax, %edi
	leaq	(%r9,%rdx,8), %r11
	shrl	$2, %edi
	movslq	%esi, %rdx
	leaq	(%r8,%rdx,8), %r10
	salq	$5, %rdi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L60:
	vmovupd	(%r11,%rdx), %ymm6
	vmulpd	(%r10,%rdx), %ymm6, %ymm2
	addq	$32, %rdx
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vextractf64x2	$0x1, %ymm2, %xmm1
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdx, %rdi
	jne	.L60
	movl	%eax, %r10d
	andl	$-4, %r10d
	leal	(%rcx,%r10), %edi
	leal	(%rsi,%r10), %edx
	cmpl	%r10d, %eax
	je	.L79
	vzeroupper
.L59:
	subl	%r10d, %eax
	cmpl	$1, %eax
	je	.L62
	movslq	%esi, %rsi
	addq	%r10, %rsi
	vmovupd	(%r8,%rsi,8), %xmm1
	movslq	%ecx, %rcx
	addq	%r10, %rcx
	vmulpd	(%r9,%rcx,8), %xmm1, %xmm1
	movl	%eax, %ecx
	andl	$-2, %ecx
	addl	%ecx, %edi
	addl	%ecx, %edx
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	cmpl	%ecx, %eax
	je	.L58
.L62:
	movslq	%edi, %rdi
	vmovsd	(%r9,%rdi,8), %xmm7
	movslq	%edx, %rdx
	vfmadd231sd	(%r8,%rdx,8), %xmm7, %xmm0
.L58:
	imull	%r13d, %r14d
	imull	%r13d, %r12d
	vmovd	%r14d, %xmm5
	vpinsrd	$1, %r12d, %xmm5, %xmm1
	vpaddd	%xmm4, %xmm1, %xmm1
	vmovq	%xmm1, 36(%rbx)
.L54:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L64:
	vmovq	%rdx, %xmm5
	vaddsd	%xmm5, %xmm0, %xmm5
	movq	%rdx, %rax
	vmovq	%xmm5, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L80
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	.cfi_restore_state
	incl	%eax
	xorl	%edx, %edx
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L69:
	movslq	%ecx, %rcx
	movslq	%r10d, %r10
	movslq	%r11d, %r11
	movslq	%esi, %rsi
	leaq	(%r9,%rcx,8), %r9
	salq	$3, %r10
	salq	$3, %r11
	leaq	(%r8,%rsi,8), %rcx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L57:
	vmovsd	(%r9), %xmm7
	incl	%edx
	vfmadd231sd	(%rcx), %xmm7, %xmm0
	addq	%r10, %r9
	addq	%r11, %rcx
	cmpl	%edx, %edi
	jne	.L57
	leal	-1(%rax), %r13d
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L79:
	vzeroupper
	jmp	.L58
.L67:
	movl	%esi, %edx
	vmovd	%xmm1, %edi
	xorl	%r10d, %r10d
	jmp	.L59
.L80:
	movq	%rax, %rdx
	jmp	.L64
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
	movl	%edx, %eax
	movq	%rsi, %r9
	movslq	%ecx, %rdx
	testl	%eax, %eax
	jle	.L110
	cmpl	$1, %edx
	jne	.L83
	cmpl	$1, %r8d
	jne	.L83
	movslq	%eax, %rsi
	imulq	$1717986919, %rsi, %rsi
	cltd
	vxorpd	%xmm0, %xmm0, %xmm0
	sarq	$33, %rsi
	subl	%edx, %esi
	leal	(%rsi,%rsi,4), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	jne	.L137
.L84:
	cmpl	$4, %eax
	jle	.L135
	decl	%eax
	subl	%esi, %eax
	movq	(%rdi), %rcx
	movl	%eax, %r10d
	movl	$3435973837, %edi
	imulq	%rdi, %r10
	movq	(%r9), %rdx
	shrq	$34, %r10
	leal	1(%r10), %r9d
	cmpl	$14, %eax
	jbe	.L113
	movl	%r9d, %edi
	movslq	%esi, %rax
	shrl	$2, %edi
	salq	$3, %rax
	decl	%edi
	leaq	(%rcx,%rax), %r11
	leaq	(%rdi,%rdi,4), %r8
	salq	$5, %r8
	leaq	160(%r11), %rdi
	addq	%rdx, %rax
	addq	%rdi, %r8
	jmp	.L90
	.p2align 4,,10
	.p2align 3
.L138:
	addq	$160, %rdi
.L90:
	vmovupd	(%r11), %ymm7
	vmovupd	96(%r11), %ymm6
	vmulpd	(%rax), %ymm7, %ymm5
	vmulpd	96(%rax), %ymm6, %ymm2
	vmovupd	32(%r11), %ymm7
	addq	$160, %rax
	vmulpd	-128(%rax), %ymm7, %ymm4
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm6
	vextractf64x2	$0x1, %ymm5, %xmm5
	vaddsd	%xmm6, %xmm0, %xmm0
	vmovupd	64(%r11), %ymm7
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm5
	vmulpd	-96(%rax), %ymm7, %ymm3
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm5
	vmovupd	128(%r11), %ymm7
	vaddsd	%xmm4, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm4, %xmm4
	vmulpd	-32(%rax), %ymm7, %ymm1
	vaddsd	%xmm5, %xmm0, %xmm0
	movq	%rdi, %r11
	vaddsd	%xmm4, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm4
	vaddsd	%xmm4, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm4
	vaddsd	%xmm3, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm3, %xmm3
	vaddsd	%xmm4, %xmm0, %xmm0
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm3
	vaddsd	%xmm2, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm2, %xmm2
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vaddsd	%xmm1, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r8, %rdi
	jne	.L138
	movl	%r9d, %edi
	andl	$-4, %edi
	leal	(%rdi,%rdi,4), %eax
	addl	%esi, %eax
	cmpl	%edi, %r9d
	je	.L135
.L89:
	subl	%edi, %r9d
	cmpl	%edi, %r10d
	je	.L93
	leaq	(%rdi,%rdi,4), %rdi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rdi
	vmovupd	(%rdi), %xmm7
	addq	%rdx, %rsi
	vmulpd	(%rsi), %xmm7, %xmm5
	vmovupd	16(%rdi), %xmm6
	vmovupd	32(%rdi), %xmm7
	vmulpd	16(%rsi), %xmm6, %xmm4
	vmulpd	32(%rsi), %xmm7, %xmm3
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm5
	vmovupd	48(%rdi), %xmm6
	vaddsd	%xmm5, %xmm0, %xmm0
	vmulpd	48(%rsi), %xmm6, %xmm2
	vmovupd	64(%rsi), %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm4
	vmulpd	64(%rdi), %xmm1, %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	movl	%r9d, %esi
	andl	$-2, %esi
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	leal	(%rsi,%rsi,4), %edi
	vaddsd	%xmm3, %xmm0, %xmm0
	addl	%edi, %eax
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %r9d
	je	.L135
.L93:
	cltq
	vmovsd	(%rcx,%rax,8), %xmm7
	vmovsd	8(%rcx,%rax,8), %xmm6
	vfmadd231sd	(%rdx,%rax,8), %xmm7, %xmm0
	vmovsd	16(%rcx,%rax,8), %xmm7
	vfmadd231sd	8(%rdx,%rax,8), %xmm6, %xmm0
	vmovsd	24(%rcx,%rax,8), %xmm6
	vfmadd231sd	16(%rdx,%rax,8), %xmm7, %xmm0
	vmovsd	32(%rcx,%rax,8), %xmm7
	vfmadd231sd	24(%rdx,%rax,8), %xmm6, %xmm0
	vfmadd231sd	32(%rdx,%rax,8), %xmm7, %xmm0
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L83:
	testl	%edx, %edx
	js	.L139
	testl	%r8d, %r8d
	js	.L140
	movq	(%rdi), %rdi
	movq	(%r9), %rsi
	cmpl	$1, %r8d
	jne	.L115
	cmpl	$1, %edx
	jne	.L115
	leal	-1(%rax), %edx
	cmpl	$2, %edx
	jbe	.L114
	movl	%eax, %ecx
	shrl	$2, %ecx
	leaq	8(%rdi), %r9
	leaq	8(%rsi), %r8
	salq	$5, %rcx
	xorl	%edx, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L104:
	vmovupd	(%r8,%rdx), %ymm7
	vmulpd	(%r9,%rdx), %ymm7, %ymm1
	addq	$32, %rdx
	vaddsd	%xmm0, %xmm1, %xmm3
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rcx, %rdx
	jne	.L104
	movl	%eax, %r8d
	andl	$-4, %r8d
	leal	1(%r8), %edx
	movl	%edx, %ecx
	cmpl	%eax, %r8d
	je	.L135
	vzeroupper
.L103:
	subl	%r8d, %eax
	cmpl	$1, %eax
	je	.L108
	vmovupd	8(%rsi,%r8,8), %xmm7
	vmulpd	8(%rdi,%r8,8), %xmm7, %xmm1
	movl	%eax, %r8d
	andl	$-2, %r8d
	addl	%r8d, %edx
	addl	%r8d, %ecx
	vaddsd	%xmm0, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	cmpl	%eax, %r8d
	je	.L81
.L108:
	movslq	%ecx, %rcx
	vmovsd	(%rsi,%rcx,8), %xmm6
	movslq	%edx, %rdx
	vfmadd231sd	(%rdi,%rdx,8), %xmm6, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	vzeroupper
.L81:
	ret
	.p2align 4,,10
	.p2align 3
.L110:
	vmovsd	.LC1(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L137:
	movq	(%rdi), %r8
	movq	(%r9), %rcx
	cmpl	$4, %esi
	jne	.L85
	vmovupd	(%rcx), %ymm1
	vmulpd	(%r8), %ymm1, %ymm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vunpckhpd	%xmm1, %xmm1, %xmm3
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L139:
	movl	$1, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	incl	%ecx
	testl	%r8d, %r8d
	jns	.L141
.L96:
	movl	$1, %esi
	subl	%eax, %esi
	imull	%r8d, %esi
	movq	(%rdi), %rdi
	leal	1(%rsi), %r10d
	movq	(%r9), %rsi
.L99:
	movslq	%ecx, %rcx
	movslq	%r8d, %r8
	movslq	%r10d, %r10
	leaq	(%rdi,%rcx,8), %rdi
	salq	$3, %rdx
	salq	$3, %r8
	leaq	(%rsi,%r10,8), %rsi
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L102:
	vmovsd	(%rdi), %xmm6
	incl	%ecx
	vfmadd231sd	(%rsi), %xmm6, %xmm0
	addq	%rdx, %rdi
	addq	%r8, %rsi
	cmpl	%ecx, %eax
	jne	.L102
	ret
.L85:
	cmpl	$1, %esi
	je	.L112
	vmovupd	(%r8), %xmm4
	movl	$2, %edx
	vmulpd	(%rcx), %xmm4, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	$2, %esi
	je	.L84
.L87:
	vmovsd	(%r8,%rdx,8), %xmm6
	vfmadd231sd	(%rcx,%rdx,8), %xmm6, %xmm0
	jmp	.L84
.L114:
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L103
.L113:
	movl	%esi, %eax
	xorl	%edi, %edi
	jmp	.L89
.L112:
	xorl	%edx, %edx
	jmp	.L87
.L115:
	movl	$1, %r10d
	movl	$1, %ecx
	jmp	.L99
.L141:
	movq	(%rdi), %rdi
	movq	(%r9), %rsi
	movl	$1, %r10d
	jmp	.L99
.L140:
	movl	$1, %ecx
	jmp	.L96
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
	vpinsrq	$1, %rsi, %xmm3, %xmm2
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	%r9d, %edi
	movl	%ecx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%edx, %ebx
	movl	%r8d, %r12d
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	vmovdqa	%xmm2, (%rsp)
	call	omp_set_num_threads@PLT
	testl	%ebx, %ebx
	jle	.L149
	cmpl	$1, %ebp
	jne	.L144
	cmpl	$1, %r12d
	jne	.L144
	movslq	%ebx, %rbp
	imulq	$1717986919, %rbp, %rbp
	movl	%ebx, %eax
	sarl	$31, %eax
	sarq	$33, %rbp
	subl	%eax, %ebp
	leal	0(%rbp,%rbp,4), %eax
	movl	%ebx, %ebp
	vxorpd	%xmm0, %xmm0, %xmm0
	subl	%eax, %ebp
	jne	.L161
.L145:
	cmpl	$4, %ebx
	jg	.L162
	.p2align 4,,10
	.p2align 3
.L142:
	movq	72(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L163
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
.L144:
	.cfi_restore_state
	movl	$1, %eax
	testl	%ebp, %ebp
	jns	.L146
	subl	%ebx, %eax
	imull	%ebp, %eax
	incl	%eax
.L146:
	vmovd	%r12d, %xmm4
	vmovd	%ebx, %xmm5
	vpinsrd	$1, %eax, %xmm4, %xmm1
	vpinsrd	$1, %ebp, %xmm5, %xmm0
	vpunpcklqdq	%xmm1, %xmm0, %xmm0
	movl	$1, %eax
	testl	%r12d, %r12d
	jns	.L147
	subl	%ebx, %eax
	imull	%r12d, %eax
	incl	%eax
.L147:
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
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L149:
	vmovsd	.LC1(%rip), %xmm0
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L162:
	vmovd	%ebx, %xmm6
	incl	%ebp
	vmovsd	%xmm0, 32(%rsp)
	vpinsrd	$1, %ebp, %xmm6, %xmm0
	vmovdqa	(%rsp), %xmm6
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.1(%rip), %rdi
	vmovq	%xmm0, 40(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	32(%rsp), %xmm0
	jmp	.L142
	.p2align 4,,10
	.p2align 3
.L161:
	vmovdqa	(%rsp), %xmm6
	leaq	16(%rsp), %rsi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii._omp_fn.0(%rip), %rdi
	movq	$0x000000000, 32(%rsp)
	movl	%ebp, 40(%rsp)
	vmovdqa	%xmm6, 16(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	32(%rsp), %xmm0
	jmp	.L145
.L163:
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
	movl	%edx, %eax
	testl	%edx, %edx
	jle	.L222
	movslq	%ecx, %rdx
	movq	%rsi, %r10
	cmpl	$1, %edx
	jne	.L166
	cmpl	$1, %r8d
	jne	.L166
	movslq	%eax, %rsi
	imulq	$1717986919, %rsi, %rsi
	cltd
	vxorpd	%xmm0, %xmm0, %xmm0
	sarq	$33, %rsi
	subl	%edx, %esi
	leal	(%rsi,%rsi,4), %edx
	movl	%eax, %esi
	subl	%edx, %esi
	jne	.L226
.L167:
	cmpl	$4, %eax
	jle	.L172
.L231:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	decl	%eax
	subl	%esi, %eax
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movl	%eax, %r11d
	movq	(%rdi), %rcx
	movl	$3435973837, %edi
	imulq	%rdi, %r11
	movq	(%r10), %rdx
	shrq	$34, %r11
	leal	1(%r11), %r10d
	cmpl	$14, %eax
	jbe	.L197
	movl	%r10d, %edi
	movslq	%esi, %rax
	shrl	$2, %edi
	salq	$3, %rax
	decl	%edi
	leaq	(%rcx,%rax), %rbx
	leaq	(%rdi,%rdi,4), %r8
	salq	$5, %r8
	leaq	160(%rbx), %rdi
	addq	%rdx, %rax
	addq	%rdi, %r8
	jmp	.L174
	.p2align 4,,10
	.p2align 3
.L227:
	addq	$160, %rdi
.L174:
	vmovupd	(%rbx), %ymm7
	vmovupd	32(%rbx), %ymm4
	vmulpd	(%rax), %ymm7, %ymm3
	vmulpd	32(%rax), %ymm4, %ymm2
	vmovupd	64(%rbx), %ymm5
	vmovupd	96(%rbx), %ymm7
	vmulpd	64(%rax), %ymm5, %ymm1
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm6
	vextractf64x2	$0x1, %ymm3, %xmm3
	vaddsd	%xmm6, %xmm0, %xmm0
	vmulpd	96(%rax), %ymm7, %ymm5
	vmovupd	128(%rbx), %ymm4
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	vmulpd	128(%rax), %ymm4, %ymm4
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm3
	movq	%rdi, %rbx
	vaddsd	%xmm2, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm2, %xmm2
	addq	$160, %rax
	vaddsd	%xmm3, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vaddsd	%xmm1, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm1
	vaddsd	%xmm5, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm5, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vextractf64x2	$0x1, %ymm4, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r8, %rdi
	jne	.L227
	movl	%r10d, %edi
	andl	$-4, %edi
	leal	(%rdi,%rdi,4), %eax
	addl	%esi, %eax
	cmpl	%edi, %r10d
	je	.L218
.L173:
	subl	%edi, %r10d
	cmpl	%edi, %r11d
	je	.L176
	leaq	(%rdi,%rdi,4), %rdi
	movslq	%esi, %rsi
	addq	%rdi, %rsi
	salq	$3, %rsi
	leaq	(%rcx,%rsi), %rdi
	vmovupd	(%rdi), %xmm6
	addq	%rdx, %rsi
	vmulpd	(%rsi), %xmm6, %xmm5
	vmovupd	16(%rdi), %xmm6
	vmovupd	32(%rdi), %xmm7
	vmulpd	16(%rsi), %xmm6, %xmm4
	vmulpd	32(%rsi), %xmm7, %xmm3
	vaddsd	%xmm5, %xmm0, %xmm0
	vunpckhpd	%xmm5, %xmm5, %xmm5
	vmovupd	48(%rdi), %xmm6
	vaddsd	%xmm5, %xmm0, %xmm0
	vmulpd	48(%rsi), %xmm6, %xmm2
	vmovupd	64(%rsi), %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	vunpckhpd	%xmm4, %xmm4, %xmm4
	vmulpd	64(%rdi), %xmm1, %xmm1
	vaddsd	%xmm4, %xmm0, %xmm0
	movl	%r10d, %esi
	andl	$-2, %esi
	vaddsd	%xmm3, %xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	leal	(%rsi,%rsi,4), %edi
	vaddsd	%xmm3, %xmm0, %xmm0
	addl	%edi, %eax
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %r10d
	je	.L218
.L176:
	cltq
	vmovsd	(%rcx,%rax,8), %xmm7
	vmovsd	8(%rcx,%rax,8), %xmm5
	vfmadd231sd	(%rdx,%rax,8), %xmm7, %xmm0
	vmovsd	16(%rcx,%rax,8), %xmm4
	vmovsd	24(%rcx,%rax,8), %xmm6
	vmovsd	32(%rcx,%rax,8), %xmm7
	vfmadd231sd	8(%rdx,%rax,8), %xmm5, %xmm0
	vfmadd231sd	16(%rdx,%rax,8), %xmm4, %xmm0
	vfmadd231sd	24(%rdx,%rax,8), %xmm6, %xmm0
	vfmadd231sd	32(%rdx,%rax,8), %xmm7, %xmm0
	vzeroupper
	movq	-8(%rbp), %rbx
	vmovsd	%xmm0, (%r9)
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L166:
	.cfi_restore 3
	.cfi_restore 6
	testl	%edx, %edx
	js	.L228
	testl	%r8d, %r8d
	js	.L229
	movq	(%rdi), %rdi
	movq	(%r10), %rsi
	cmpl	$1, %r8d
	jne	.L199
	cmpl	$1, %edx
	jne	.L199
	leal	-1(%rax), %edx
	cmpl	$2, %edx
	jbe	.L198
	movl	%eax, %ecx
	shrl	$2, %ecx
	leaq	8(%rdi), %r10
	leaq	8(%rsi), %r8
	salq	$5, %rcx
	xorl	%edx, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L189:
	vmovupd	(%r8,%rdx), %ymm7
	vmulpd	(%r10,%rdx), %ymm7, %ymm1
	addq	$32, %rdx
	vaddsd	%xmm0, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm2
	vextractf64x2	$0x1, %ymm1, %xmm1
	vaddsd	%xmm0, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rcx, %rdx
	jne	.L189
	movl	%eax, %r8d
	andl	$-4, %r8d
	leal	1(%r8), %edx
	movl	%edx, %ecx
	cmpl	%eax, %r8d
	je	.L230
	vzeroupper
.L188:
	subl	%r8d, %eax
	cmpl	$1, %eax
	je	.L193
	vmovupd	8(%rsi,%r8,8), %xmm4
	vmulpd	8(%rdi,%r8,8), %xmm4, %xmm1
	movl	%eax, %r8d
	andl	$-2, %r8d
	addl	%r8d, %edx
	addl	%r8d, %ecx
	vaddsd	%xmm0, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	cmpl	%eax, %r8d
	je	.L223
.L193:
	movslq	%ecx, %rcx
	vmovsd	(%rsi,%rcx,8), %xmm5
	movslq	%edx, %rdx
	vfmadd231sd	(%rdi,%rdx,8), %xmm5, %xmm0
.L223:
	vmovsd	%xmm0, (%r9)
.L222:
	ret
	.p2align 4,,10
	.p2align 3
.L226:
	movq	(%rdi), %r8
	movq	(%r10), %rcx
	cmpl	$4, %esi
	jne	.L168
	vmovupd	(%rcx), %ymm1
	vmulpd	(%r8), %ymm1, %ymm1
	vaddsd	%xmm0, %xmm1, %xmm2
	vunpckhpd	%xmm1, %xmm1, %xmm3
	vextractf64x2	$0x1, %ymm1, %xmm0
	vaddsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm1
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	cmpl	$4, %eax
	jg	.L231
.L172:
	vmovsd	%xmm0, (%r9)
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L230:
	vzeroupper
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L218:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	vzeroupper
	movq	-8(%rbp), %rbx
	vmovsd	%xmm0, (%r9)
	leave
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	.cfi_restore 3
	.cfi_restore 6
	movl	$1, %ecx
	subl	%eax, %ecx
	imull	%edx, %ecx
	leal	1(%rcx), %r11d
	testl	%r8d, %r8d
	jns	.L232
.L180:
	movl	$1, %ecx
	subl	%eax, %ecx
	imull	%r8d, %ecx
	movq	(%rdi), %rdi
	movq	(%r10), %rsi
	incl	%ecx
.L183:
	movslq	%ecx, %rcx
	movslq	%r11d, %r11
	movslq	%r8d, %r8
	leaq	(%rsi,%rcx,8), %rsi
	salq	$3, %rdx
	leaq	(%rdi,%r11,8), %rdi
	salq	$3, %r8
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L186:
	vmovsd	(%rdi), %xmm5
	incl	%ecx
	vfmadd231sd	(%rsi), %xmm5, %xmm0
	addq	%rdx, %rdi
	addq	%r8, %rsi
	cmpl	%ecx, %eax
	jne	.L186
	jmp	.L223
.L168:
	cmpl	$1, %esi
	je	.L196
	vmovupd	(%r8), %xmm5
	movl	$2, %edx
	vmulpd	(%rcx), %xmm5, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vunpckhpd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	$2, %esi
	je	.L167
.L170:
	vmovsd	(%r8,%rdx,8), %xmm4
	vfmadd231sd	(%rcx,%rdx,8), %xmm4, %xmm0
	jmp	.L167
.L198:
	xorl	%r8d, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L188
.L197:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movl	%esi, %eax
	xorl	%edi, %edi
	jmp	.L173
.L196:
	.cfi_def_cfa 7, 8
	.cfi_restore 3
	.cfi_restore 6
	xorl	%edx, %edx
	jmp	.L170
.L199:
	movl	$1, %ecx
	movl	$1, %r11d
	jmp	.L183
.L232:
	movq	(%rdi), %rdi
	movq	(%r10), %rsi
	movl	$1, %ecx
	jmp	.L183
.L229:
	movl	$1, %r11d
	jmp	.L180
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
	leaq	__dso_handle(%rip), %rdx
	popq	%rbp
	.cfi_def_cfa_offset 8
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
