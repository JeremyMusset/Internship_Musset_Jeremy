	.file	"compare_dot_prod.cc"
	.text
	.section	.text._ZNK4blas5Error4whatEv,"axG",@progbits,_ZNK4blas5Error4whatEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK4blas5Error4whatEv
	.type	_ZNK4blas5Error4whatEv, @function
_ZNK4blas5Error4whatEv:
.LFB3089:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rax
	ret
	.cfi_endproc
.LFE3089:
	.size	_ZNK4blas5Error4whatEv, .-_ZNK4blas5Error4whatEv
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1:
.LFB4736:
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
	movl	24(%rdi), %r13d
	movq	%rdi, %rbx
	andq	$-64, %rsp
	testl	%r13d, %r13d
	je	.L25
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%r13d, %eax
	divl	%r12d
	cmpl	%edx, %ecx
	jb	.L6
.L14:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jnb	.L7
	movq	(%rbx), %rcx
	movq	(%rcx), %r11
	movq	8(%rbx), %rcx
	movq	(%rcx), %r10
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L17
	movl	%edx, %esi
	movl	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	salq	$3, %rsi
	shrl	$3, %edi
	leaq	(%r11,%rsi), %r9
	salq	$6, %rdi
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L9:
	vmovupd	(%r9,%rcx), %zmm3
	vfmadd231pd	(%rsi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%rdi, %rcx
	jne	.L9
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %esi
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %esi
	leal	(%rdx,%rsi), %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %eax
	je	.L22
.L8:
	subl	%esi, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L12
	movl	%edx, %edx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %ymm6
	vmulpd	(%r10,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L22
.L12:
	movl	%ecx, %eax
	vmovsd	(%r11,%rax,8), %xmm7
	vfmadd231sd	(%r10,%rax,8), %xmm7, %xmm0
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jbe	.L22
	addl	$2, %ecx
	vmovsd	(%r10,%rax,8), %xmm7
	vfmadd231sd	(%r11,%rax,8), %xmm7, %xmm0
	cmpl	%ecx, %r8d
	jbe	.L22
	vmovsd	(%r11,%rcx,8), %xmm7
	vfmadd231sd	(%r10,%rcx,8), %xmm7, %xmm0
	vzeroupper
.L7:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L5:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L26
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
.L22:
	.cfi_restore_state
	vzeroupper
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L6:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L17:
	movl	%edx, %ecx
	xorl	%esi, %esi
	jmp	.L8
.L25:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L7
.L26:
	movq	%rax, %rdx
	jmp	.L5
	.cfi_endproc
.LFE4736:
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4735:
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
	movl	24(%rdi), %r13d
	movq	%rdi, %rbx
	andq	$-64, %rsp
	testl	%r13d, %r13d
	je	.L49
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%r13d, %eax
	divl	%r12d
	cmpl	%edx, %ecx
	jb	.L30
.L38:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jnb	.L31
	movq	(%rbx), %rcx
	movq	(%rcx), %r11
	movq	8(%rbx), %rcx
	movq	(%rcx), %r10
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L41
	movl	%edx, %esi
	movl	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	salq	$3, %rsi
	shrl	$3, %edi
	leaq	(%r11,%rsi), %r9
	salq	$6, %rdi
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L33:
	vmovupd	(%r9,%rcx), %zmm3
	vfmadd231pd	(%rsi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%rdi, %rcx
	jne	.L33
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %esi
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %esi
	leal	(%rdx,%rsi), %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %eax
	je	.L46
.L32:
	subl	%esi, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L36
	movl	%edx, %edx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %ymm6
	vmulpd	(%r10,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L46
.L36:
	movl	%ecx, %eax
	vmovsd	(%r11,%rax,8), %xmm7
	vfmadd231sd	(%r10,%rax,8), %xmm7, %xmm0
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jbe	.L46
	addl	$2, %ecx
	vmovsd	(%r10,%rax,8), %xmm7
	vfmadd231sd	(%r11,%rax,8), %xmm7, %xmm0
	cmpl	%ecx, %r8d
	jbe	.L46
	vmovsd	(%r11,%rcx,8), %xmm7
	vfmadd231sd	(%r10,%rcx,8), %xmm7, %xmm0
	vzeroupper
.L31:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L29:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L50
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
.L46:
	.cfi_restore_state
	vzeroupper
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L30:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L41:
	movl	%edx, %ecx
	xorl	%esi, %esi
	jmp	.L32
.L49:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L31
.L50:
	movq	%rax, %rdx
	jmp	.L29
	.cfi_endproc
.LFE4735:
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.text._ZN4blas5ErrorD2Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorD2Ev
	.type	_ZN4blas5ErrorD2Ev, @function
_ZN4blas5ErrorD2Ev:
.LFB4730:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	leaq	24(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L52
	movq	24(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L52:
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSt9exceptionD2Ev@PLT
	.cfi_endproc
.LFE4730:
	.size	_ZN4blas5ErrorD2Ev, .-_ZN4blas5ErrorD2Ev
	.weak	_ZN4blas5ErrorD1Ev
	.set	_ZN4blas5ErrorD1Ev,_ZN4blas5ErrorD2Ev
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.type	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4737:
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
	movl	24(%rdi), %r13d
	movq	%rdi, %rbx
	andq	$-64, %rsp
	testl	%r13d, %r13d
	je	.L76
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%r13d, %eax
	divl	%r12d
	cmpl	%edx, %ecx
	jb	.L57
.L65:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jnb	.L58
	movq	(%rbx), %rcx
	movq	(%rcx), %r11
	movq	8(%rbx), %rcx
	movq	(%rcx), %r10
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L68
	movl	%edx, %esi
	movl	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	salq	$3, %rsi
	shrl	$3, %edi
	leaq	(%r11,%rsi), %r9
	salq	$6, %rdi
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L60:
	vmovupd	(%r9,%rcx), %zmm3
	vfmadd231pd	(%rsi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%rdi, %rcx
	jne	.L60
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %esi
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %esi
	leal	(%rdx,%rsi), %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %eax
	je	.L73
.L59:
	subl	%esi, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L63
	movl	%edx, %edx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %ymm6
	vmulpd	(%r10,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L73
.L63:
	movl	%ecx, %eax
	vmovsd	(%r11,%rax,8), %xmm7
	vfmadd231sd	(%r10,%rax,8), %xmm7, %xmm0
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jbe	.L73
	addl	$2, %ecx
	vmovsd	(%r10,%rax,8), %xmm7
	vfmadd231sd	(%r11,%rax,8), %xmm7, %xmm0
	cmpl	%ecx, %r8d
	jbe	.L73
	vmovsd	(%r11,%rcx,8), %xmm7
	vfmadd231sd	(%r10,%rcx,8), %xmm7, %xmm0
	vzeroupper
.L58:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L56:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L77
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
.L73:
	.cfi_restore_state
	vzeroupper
	jmp	.L58
	.p2align 4,,10
	.p2align 3
.L57:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L68:
	movl	%edx, %ecx
	xorl	%esi, %esi
	jmp	.L59
.L76:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L58
.L77:
	movq	%rax, %rdx
	jmp	.L56
	.cfi_endproc
.LFE4737:
	.size	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.p2align 4
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0, @function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0:
.LFB4738:
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
	movl	24(%rdi), %r13d
	movq	%rdi, %rbx
	andq	$-64, %rsp
	testl	%r13d, %r13d
	je	.L100
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%r13d, %eax
	divl	%r12d
	cmpl	%edx, %ecx
	jb	.L81
.L89:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jnb	.L82
	movq	(%rbx), %rcx
	movq	(%rcx), %r11
	movq	8(%rbx), %rcx
	movq	(%rcx), %r10
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L92
	movl	%edx, %esi
	movl	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	salq	$3, %rsi
	shrl	$3, %edi
	leaq	(%r11,%rsi), %r9
	salq	$6, %rdi
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L84:
	vmovupd	(%r9,%rcx), %zmm3
	vfmadd231pd	(%rsi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%rdi, %rcx
	jne	.L84
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %esi
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %esi
	leal	(%rdx,%rsi), %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %eax
	je	.L97
.L83:
	subl	%esi, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L87
	movl	%edx, %edx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %ymm6
	vmulpd	(%r10,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L97
.L87:
	movl	%ecx, %eax
	vmovsd	(%r11,%rax,8), %xmm7
	vfmadd231sd	(%r10,%rax,8), %xmm7, %xmm0
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jbe	.L97
	addl	$2, %ecx
	vmovsd	(%r10,%rax,8), %xmm7
	vfmadd231sd	(%r11,%rax,8), %xmm7, %xmm0
	cmpl	%ecx, %r8d
	jbe	.L97
	vmovsd	(%r11,%rcx,8), %xmm7
	vfmadd231sd	(%r10,%rcx,8), %xmm7, %xmm0
	vzeroupper
.L82:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L80:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L101
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
.L97:
	.cfi_restore_state
	vzeroupper
	jmp	.L82
	.p2align 4,,10
	.p2align 3
.L81:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L92:
	movl	%edx, %ecx
	xorl	%esi, %esi
	jmp	.L83
.L100:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L82
.L101:
	movq	%rax, %rdx
	jmp	.L80
	.cfi_endproc
.LFE4738:
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0, .-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.type	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4739:
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
	movl	24(%rdi), %r13d
	movq	%rdi, %rbx
	andq	$-64, %rsp
	testl	%r13d, %r13d
	je	.L124
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %ecx
	movl	%r13d, %eax
	divl	%r12d
	cmpl	%edx, %ecx
	jb	.L105
.L113:
	imull	%eax, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	addl	%ecx, %edx
	leal	(%rax,%rdx), %r8d
	cmpl	%r8d, %edx
	jnb	.L106
	movq	(%rbx), %rcx
	movq	(%rcx), %r11
	movq	8(%rbx), %rcx
	movq	(%rcx), %r10
	leal	-1(%rax), %ecx
	cmpl	$6, %ecx
	jbe	.L116
	movl	%edx, %esi
	movl	%eax, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	salq	$3, %rsi
	shrl	$3, %edi
	leaq	(%r11,%rsi), %r9
	salq	$6, %rdi
	addq	%r10, %rsi
	.p2align 4,,10
	.p2align 3
.L108:
	vmovupd	(%r9,%rcx), %zmm3
	vfmadd231pd	(%rsi,%rcx), %zmm3, %zmm0
	addq	$64, %rcx
	cmpq	%rdi, %rcx
	jne	.L108
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	%eax, %esi
	vaddpd	%ymm0, %ymm1, %ymm0
	andl	$-8, %esi
	leal	(%rdx,%rsi), %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpl	%esi, %eax
	je	.L121
.L107:
	subl	%esi, %eax
	leal	-1(%rax), %edi
	cmpl	$2, %edi
	jbe	.L111
	movl	%edx, %edx
	addq	%rsi, %rdx
	vmovupd	(%r11,%rdx,8), %ymm6
	vmulpd	(%r10,%rdx,8), %ymm6, %ymm1
	movl	%eax, %edx
	andl	$-4, %edx
	addl	%edx, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %eax
	je	.L121
.L111:
	movl	%ecx, %eax
	vmovsd	(%r11,%rax,8), %xmm7
	vfmadd231sd	(%r10,%rax,8), %xmm7, %xmm0
	leal	1(%rcx), %eax
	cmpl	%eax, %r8d
	jbe	.L121
	addl	$2, %ecx
	vmovsd	(%r10,%rax,8), %xmm7
	vfmadd231sd	(%r11,%rax,8), %xmm7, %xmm0
	cmpl	%ecx, %r8d
	jbe	.L121
	vmovsd	(%r11,%rcx,8), %xmm7
	vfmadd231sd	(%r10,%rcx,8), %xmm7, %xmm0
	vzeroupper
.L106:
	movq	16(%rbx), %rdx
	leaq	16(%rbx), %rcx
.L104:
	vmovq	%rdx, %xmm5
	movq	%rdx, %rax
	vaddsd	%xmm5, %xmm0, %xmm4
	vmovq	%xmm4, %rsi
	lock cmpxchgq	%rsi, (%rcx)
	jne	.L125
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
.L121:
	.cfi_restore_state
	vzeroupper
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L105:
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L116:
	movl	%edx, %ecx
	xorl	%esi, %esi
	jmp	.L107
.L124:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L106
.L125:
	movq	%rax, %rdx
	jmp	.L104
	.cfi_endproc
.LFE4739:
	.size	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.text._ZN4blas5ErrorD0Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorD0Ev
	.type	_ZN4blas5ErrorD0Ev, @function
_ZN4blas5ErrorD0Ev:
.LFB4732:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	leaq	24(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L127
	movq	24(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L127:
	movq	%rbp, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	movq	%rbp, %rdi
	movl	$40, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4732:
	.size	_ZN4blas5ErrorD0Ev, .-_ZN4blas5ErrorD0Ev
	.section	.rodata._ZN4blas5ErrorC2EPKcS2_.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"basic_string::_M_construct null not valid"
	.section	.rodata._ZN4blas5ErrorC2EPKcS2_.str1.1,"aMS",@progbits,1
.LC2:
	.string	"basic_string::append"
.LC3:
	.string	", in function "
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorC2EPKcS2_
	.type	_ZN4blas5ErrorC2EPKcS2_, @function
_ZN4blas5ErrorC2EPKcS2_:
.LFB3087:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3087
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
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	leaq	64(%rsp), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, (%rdi)
	testq	%rsi, %rsi
	je	.L130
	movq	%rsi, %rdi
	movq	%rsi, %r12
	leaq	48(%rsp), %r14
	movq	%rdx, %r13
	call	strlen@PLT
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
	cmpq	$15, %rax
	ja	.L157
	cmpq	$1, %rax
	jne	.L134
	movzbl	(%r12), %edx
	movb	%dl, 64(%rsp)
	movq	%rbx, %rdx
.L135:
	movq	%rax, 56(%rsp)
	movb	$0, (%rdx,%rax)
	movabsq	$4611686018427387903, %rax
	subq	56(%rsp), %rax
	cmpq	$13, %rax
	jbe	.L158
	movl	$14, %edx
	leaq	.LC3(%rip), %rsi
	movq	%r14, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE0:
	leaq	32(%rsp), %r12
	leaq	16(%rax), %rdx
	movq	%r12, 16(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	.L159
	movq	%rcx, 16(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)
.L138:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%r13, %rdi
	movq	%rcx, 24(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	call	strlen@PLT
	movq	%rax, %rdx
	movabsq	$4611686018427387903, %rax
	subq	24(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L160
	leaq	16(%rsp), %rdi
	movq	%r13, %rsi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE1:
	leaq	24(%rbp), %rdx
	movq	%rdx, 8(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L161
	movq	%rcx, 8(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 24(%rbp)
.L141:
	movq	8(%rax), %rcx
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movq	%rcx, 16(%rbp)
	movb	$0, 16(%rax)
	cmpq	%r12, %rdi
	je	.L142
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L142:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L129
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L129:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L162
	addq	$104, %rsp
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
.L134:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L163
	movq	%rbx, %rdx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L157:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	movq	%rax, 48(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
.L133:
	movq	%r15, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	8(%rsp), %rax
	movq	48(%rsp), %rdx
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L159:
	vmovdqu	16(%rax), %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L161:
	vmovdqu	16(%rax), %xmm1
	vmovdqu	%xmm1, 24(%rbp)
	jmp	.L141
.L158:
	leaq	.LC2(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L160:
	leaq	.LC2(%rip), %rdi
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE4:
.L162:
	call	__stack_chk_fail@PLT
.L130:
	leaq	.LC1(%rip), %rdi
.LEHB5:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE5:
.L163:
	movq	%rbx, %rdi
	jmp	.L133
.L153:
	endbr64
	movq	%rax, %r13
	jmp	.L144
.L152:
	endbr64
	movq	%rax, %r12
	jmp	.L146
.L151:
	endbr64
	movq	%rax, %r12
	jmp	.L148
.L144:
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L145
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L145:
	movq	%r13, %r12
.L146:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L148
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L148:
	movq	%rbp, %rdi
	vzeroupper
	call	_ZNSt9exceptionD2Ev@PLT
	movq	%r12, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE3087:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4blas5ErrorC2EPKcS2_,"aG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
.LLSDA3087:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3087-.LLSDACSB3087
.LLSDACSB3087:
	.uleb128 .LEHB0-.LFB3087
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L152-.LFB3087
	.uleb128 0
	.uleb128 .LEHB1-.LFB3087
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L153-.LFB3087
	.uleb128 0
	.uleb128 .LEHB2-.LFB3087
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L151-.LFB3087
	.uleb128 0
	.uleb128 .LEHB3-.LFB3087
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L152-.LFB3087
	.uleb128 0
	.uleb128 .LEHB4-.LFB3087
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L153-.LFB3087
	.uleb128 0
	.uleb128 .LEHB5-.LFB3087
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L151-.LFB3087
	.uleb128 0
	.uleb128 .LEHB6-.LFB3087
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE3087:
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.size	_ZN4blas5ErrorC2EPKcS2_, .-_ZN4blas5ErrorC2EPKcS2_
	.weak	_ZN4blas5ErrorC1EPKcS2_
	.set	_ZN4blas5ErrorC1EPKcS2_,_ZN4blas5ErrorC2EPKcS2_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"dot"
.LC5:
	.string	"n < 0"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4
	.type	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0, @function
_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0:
.LFB4745:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4745
	testq	%rdi, %rdi
	js	.L165
	je	.L183
	leaq	-1(%rdi), %rax
	movq	%rdi, %rcx
	cmpq	$6, %rax
	jbe	.L175
	shrq	$3, %rdi
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	salq	$6, %rdi
.L170:
	vmovupd	(%rsi,%rax), %zmm3
	vfmadd231pd	(%rdx,%rax), %zmm3, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L170
	vextractf64x4	$0x1, %zmm0, %ymm1
	movq	%rcx, %rdi
	vaddpd	%ymm0, %ymm1, %ymm0
	andq	$-8, %rdi
	movq	%rdi, %rax
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	cmpq	%rcx, %rdi
	je	.L180
.L169:
	movq	%rcx, %r8
	subq	%rdi, %r8
	leaq	-1(%r8), %r9
	cmpq	$2, %r9
	jbe	.L173
	vmovupd	(%rsi,%rdi,8), %ymm4
	vmulpd	(%rdx,%rdi,8), %ymm4, %ymm1
	movq	%r8, %rdi
	andq	$-4, %rdi
	addq	%rdi, %rax
	vextractf128	$0x1, %ymm1, %xmm2
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r8
	je	.L180
.L173:
	leaq	1(%rax), %r8
	vmovsd	(%rsi,%rax,8), %xmm5
	leaq	0(,%rax,8), %rdi
	vfmadd231sd	(%rdx,%rax,8), %xmm5, %xmm0
	cmpq	%r8, %rcx
	jle	.L180
	addq	$2, %rax
	vmovsd	8(%rdx,%rdi), %xmm6
	vfmadd231sd	8(%rsi,%rdi), %xmm6, %xmm0
	cmpq	%rax, %rcx
	jle	.L180
	vmovsd	16(%rdx,%rdi), %xmm7
	vfmadd231sd	16(%rsi,%rdi), %xmm7, %xmm0
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	vzeroupper
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	vxorpd	%xmm0, %xmm0, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L175:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.L169
	.section	.gcc_except_table,"a",@progbits
.LLSDA4745:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4745-.LLSDACSB4745
.LLSDACSB4745:
.LLSDACSE4745:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4745
	.type	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold, @function
_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold:
.LFSB4745:
.L165:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$40, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	andq	$-64, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	call	__cxa_allocate_exception@PLT
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %r12
.LEHB7:
	call	_ZN4blas5ErrorC1EPKcS2_
.LEHE7:
	leaq	_ZN4blas5ErrorD1Ev(%rip), %rdx
	leaq	_ZTIN4blas5ErrorE(%rip), %rsi
	movq	%r12, %rdi
.LEHB8:
	call	__cxa_throw@PLT
.L176:
	endbr64
	movq	%rax, %r13
	movq	%r12, %rdi
	vzeroupper
	call	__cxa_free_exception@PLT
	movq	%r13, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE4745:
	.section	.gcc_except_table
.LLSDAC4745:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4745-.LLSDACSBC4745
.LLSDACSBC4745:
	.uleb128 .LEHB7-.LCOLDB6
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L176-.LCOLDB6
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB6
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC4745:
	.section	.text.unlikely
	.text
	.size	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0, .-_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	.section	.text.unlikely
	.size	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold, .-_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.weak	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4285:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4285
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
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, %ebx
	subq	$1344, %rsp
	movq	%rdx, -1288(%rbp)
	movq	%rcx, -1296(%rbp)
	movl	%r8d, -1132(%rbp)
	movl	%r9d, -1016(%rbp)
	movl	%edi, -972(%rbp)
	movl	%esi, -1088(%rbp)
	movl	$4000, %esi
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -1096(%rbp)
.LEHB9:
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -1104(%rbp)
	call	mpfr_init2@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	%rax, -1152(%rbp)
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, -1160(%rbp)
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, -1168(%rbp)
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -1176(%rbp)
	call	mpfr_init2@PLT
	movq	-1096(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	movq	-1104(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	movslq	%ebx, %rax
	movq	%rax, -1024(%rbp)
	shrq	$60, %rax
	jne	.L480
	movq	-1024(%rbp), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	leaq	0(,%r15,8), %rdi
	movq	%rdi, -1072(%rbp)
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.L186
	call	_Znwm@PLT
.LEHE9:
	movq	%rbx, %rdx
	vmovq	%rax, %xmm7
	leaq	(%rax,%rbx), %rbx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%rbx, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	cmpq	$1, %r15
	je	.L313
	cmpq	%rdi, %rbx
	je	.L187
	subq	$8, %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L187:
	movq	-1072(%rbp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, -632(%rbp)
	movq	$0, -592(%rbp)
	vmovdqa	%xmm0, -608(%rbp)
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	-1072(%rbp), %rbx
	vmovq	%rax, %xmm7
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	vmovdqa	%xmm0, -608(%rbp)
	addq	%rax, %rbx
	cmpq	$1, -1024(%rbp)
	movq	%rbx, -592(%rbp)
	je	.L481
	cmpq	%rdi, %rbx
	je	.L188
	movq	-1072(%rbp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
.L188:
	movl	-1088(%rbp), %edi
	movq	%rbx, -600(%rbp)
	testl	%edi, %edi
	je	.L315
	movq	-1024(%rbp), %rax
	movl	$0, -1084(%rbp)
	movq	$0x000000000, -1264(%rbp)
	movq	$0x000000000, -1256(%rbp)
	salq	$5, %rax
	movq	%rax, -1184(%rbp)
	movl	-972(%rbp), %eax
	movq	$0x000000000, -1232(%rbp)
	movq	$0x000000000, -1224(%rbp)
	leal	-1(%rax), %edx
	leaq	1(%rdx), %rbx
	movl	%edx, -976(%rbp)
	movq	%rdx, -1200(%rbp)
	leaq	0(,%rbx,8), %rdx
	movq	%rbx, -1208(%rbp)
	movl	%eax, %ebx
	shrl	$3, %eax
	subl	$1, %eax
	andl	$-8, %ebx
	movq	%rdx, -984(%rbp)
	leaq	-640(%rbp), %rdx
	addq	$1, %rax
	vmovq	%rdx, %xmm2
	movl	%ebx, -1012(%rbp)
	movq	$0x000000000, -1064(%rbp)
	salq	$6, %rax
	movq	%rax, -1112(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -1192(%rbp)
	leaq	-608(%rbp), %rax
	movq	$0x000000000, -1040(%rbp)
	vpinsrq	$1, %rax, %xmm2, %xmm7
	movq	$0x000000000, -1032(%rbp)
	movq	$0x000000000, -992(%rbp)
	movq	$0x000000000, -1248(%rbp)
	movq	$0x000000000, -1240(%rbp)
	movq	$0x000000000, -1216(%rbp)
	vmovdqa	%xmm7, -1056(%rbp)
.L286:
	movl	-1132(%rbp), %edx
	movl	-1084(%rbp), %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -560(%rbp)
	movq	-1192(%rbp), %rdi
	vmovdqa	%xmm0, -576(%rbp)
.LEHB11:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-972(%rbp), %esi
	testl	%esi, %esi
	je	.L193
	movl	-972(%rbp), %eax
	movq	-576(%rbp), %rdx
	movq	-640(%rbp), %r8
	movq	-608(%rbp), %rdi
	movq	-1200(%rbp), %r9
	leal	1(%rax), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L192:
	vmovsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	vmovsd	%xmm0, (%r8,%rax,8)
	vmovsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %r9
	jne	.L192
.L193:
	movq	-1184(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, %r12
	call	_Znam@PLT
	movl	-972(%rbp), %ecx
	movq	%rax, %r15
	movq	%r12, %r14
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.L197
	.p2align 4,,10
	.p2align 3
.L196:
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	movq	-640(%rbp), %rax
	xorl	%esi, %esi
	movq	%r14, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	movq	-608(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	addq	$32, %r14
	addq	$8, %rbx
	addq	$32, %r13
	cmpq	%rbx, -984(%rbp)
	jne	.L196
.L197:
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -1008(%rbp)
	call	mpfr_init2@PLT
	movq	-1008(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	leaq	-960(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	-972(%rbp), %ebx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	-1008(%rbp), %rcx
	movl	%ebx, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	-944(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-936(%rbp), %rax
	movq	%rax, -1272(%rbp)
	movq	-952(%rbp), %rax
	movq	%rax, -1280(%rbp)
	testl	%ebx, %ebx
	je	.L201
	movq	-1208(%rbp), %rbx
	salq	$5, %rbx
	addq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L200:
	movq	%r12, %rdi
	call	mpfr_clear@PLT
	movq	%r15, %rdi
	call	mpfr_clear@PLT
	addq	$32, %r12
	addq	$32, %r15
	cmpq	%rbx, %r12
	jne	.L200
.L201:
	leaq	-928(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	clock_gettime@PLT
	movq	-1112(%rbp), %r14
	movl	-972(%rbp), %r15d
	leaq	-896(%rbp), %r13
	leaq	-880(%rbp), %r12
.L199:
	xorl	%edi, %edi
	movq	%r13, %rsi
	call	clock_gettime@PLT
	testl	%r15d, %r15d
	je	.L316
	cmpl	$6, -976(%rbp)
	movq	-640(%rbp), %rdx
	movq	-608(%rbp), %rcx
	jbe	.L317
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L204:
	vmovupd	(%rcx,%rax), %zmm2
	vfmadd231pd	(%rdx,%rax), %zmm2, %zmm0
	addq	$64, %rax
	cmpq	%r14, %rax
	jne	.L204
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	-1012(%rbp), %eax
	vaddpd	%ymm0, %ymm1, %ymm1
	vextractf128	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm0
	vmovlpd	%xmm0, -968(%rbp)
	cmpl	%eax, %r15d
	je	.L459
.L203:
	movl	%r15d, %esi
	subl	%eax, %esi
	leal	-1(%rsi), %edi
	cmpl	$2, %edi
	jbe	.L207
	movl	%eax, %edi
	vmovupd	(%rcx,%rdi,8), %ymm5
	vmulpd	(%rdx,%rdi,8), %ymm5, %ymm0
	movl	%esi, %edi
	andl	$-4, %edi
	addl	%edi, %eax
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vaddsd	-968(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -968(%rbp)
	cmpl	%esi, %edi
	je	.L459
.L207:
	vmovsd	-968(%rbp), %xmm7
	movl	%eax, %esi
	vmovsd	(%rdx,%rsi,8), %xmm5
	vfmadd231sd	(%rcx,%rsi,8), %xmm5, %xmm7
	leal	1(%rax), %esi
	vmovsd	%xmm7, -968(%rbp)
	cmpl	%esi, %r15d
	jbe	.L459
	vmovsd	(%rcx,%rsi,8), %xmm4
	vfmadd231sd	(%rdx,%rsi,8), %xmm4, %xmm7
	addl	$2, %eax
	vmovsd	%xmm7, -968(%rbp)
	cmpl	%eax, %r15d
	jbe	.L459
	vmovsd	(%rcx,%rax,8), %xmm6
	vfmadd231sd	(%rdx,%rax,8), %xmm6, %xmm7
	vmovsd	%xmm7, -968(%rbp)
	vzeroupper
.L202:
	xorl	%edi, %edi
	movq	%r12, %rsi
	call	clock_gettime@PLT
	movq	-880(%rbp), %rax
	subq	-896(%rbp), %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	imulq	$1000000000, %rax, %rax
	addq	-872(%rbp), %rax
	subq	-888(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	vmovsd	-992(%rbp), %xmm3
	vcomisd	%xmm0, %xmm3
	ja	.L343
	testl	%ebx, %ebx
	je	.L343
.L209:
	addl	$1, %ebx
	cmpl	$5, %ebx
	jne	.L199
	leaq	-912(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L318
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L482
	movq	%rdx, %rdi
	call	_Znwm@PLT
.LEHE11:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r12
	subq	%rsi, %r12
.L211:
	vmovq	%rcx, %xmm7
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%rbx, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L214
	movq	%rcx, %rdi
	movq	%r12, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L214:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r12, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %rbx
	je	.L319
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L483
	movq	%rbx, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r12
	subq	%rsi, %r12
.L215:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L218
	movq	%rcx, %rdi
	movq	%r12, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L218:
	addq	%r12, %rcx
	leaq	-544(%rbp), %rax
	leaq	-512(%rbp), %r15
	movl	-972(%rbp), %edx
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movq	%r15, %rsi
	movq	%rax, %rdi
	movl	$1, %ecx
	movq	%rax, -1000(%rbp)
.LEHB13:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE13:
	movq	-544(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L219
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L219:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L220
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L220:
	leaq	-864(%rbp), %rsi
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	call	clock_gettime@PLT
	leaq	-832(%rbp), %r13
.L233:
	movq	%r13, %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L320
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	ja	.L484
	movq	%rdx, %rdi
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L221:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r12
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r12, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L224
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L224:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r14, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %r12
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %r12
	je	.L321
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L485
	movq	%r12, %rdi
.LEHB15:
	call	_Znwm@PLT
.LEHE15:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L225:
	vmovq	%rcx, %xmm4
	addq	%rcx, %r12
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	movq	%r12, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L228
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L228:
	addq	%r14, %rcx
	movl	-972(%rbp), %edx
	movq	-1000(%rbp), %rdi
	movq	%r15, %rsi
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB16:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE16:
	movq	-544(%rbp), %rdi
	vmovsd	%xmm0, -1080(%rbp)
	testq	%rdi, %rdi
	je	.L229
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L229:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L230
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L230:
	leaq	-816(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-816(%rbp), %rax
	subq	-832(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	$1000000000, %rax, %rax
	addq	-808(%rbp), %rax
	subq	-824(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	testl	%ebx, %ebx
	je	.L344
	vmovsd	-1032(%rbp), %xmm5
	vcomisd	%xmm0, %xmm5
	ja	.L344
.L231:
	addl	$1, %ebx
	cmpl	$5, %ebx
	jne	.L233
	leaq	-848(%rbp), %rsi
	xorl	%edi, %edi
	movl	$5, %r14d
	call	clock_gettime@PLT
	movl	-1016(%rbp), %edi
	leaq	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1(%rip), %r12
	call	omp_set_num_threads@PLT
	leaq	-800(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	-972(%rbp), %r13d
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	vmovdqa	-1056(%rbp), %xmm6
	movq	%r15, %rsi
	leaq	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %rdi
	movq	$0x000000000, -496(%rbp)
	movl	%r13d, -488(%rbp)
	vmovdqa	%xmm6, -512(%rbp)
	call	GOMP_parallel@PLT
.L234:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r12, %rdi
	vmovdqa	-1056(%rbp), %xmm6
	movl	%r13d, -488(%rbp)
	movq	$0x000000000, -496(%rbp)
	vmovdqa	%xmm6, -512(%rbp)
	call	GOMP_parallel@PLT
	vmovsd	-496(%rbp), %xmm0
	subl	$1, %r14d
	jne	.L234
	leaq	-784(%rbp), %rsi
	xorl	%edi, %edi
	vmovsd	%xmm0, -1336(%rbp)
	call	clock_gettime@PLT
	movq	-784(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	movq	%rax, -1304(%rbp)
	movq	-800(%rbp), %rax
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, -1312(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -1320(%rbp)
	movq	-792(%rbp), %rax
	movq	%rax, -1328(%rbp)
	movq	-600(%rbp), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L322
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %r12
	cmpq	%rax, %rdx
	ja	.L486
	movq	%rdx, %rdi
.LEHB17:
	call	_Znwm@PLT
.LEHE17:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L235:
	vmovq	%rcx, %xmm6
	addq	%rcx, %r12
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L238
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L238:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r13, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %r12
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %r12
	je	.L323
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L487
	movq	%r12, %rdi
.LEHB18:
	call	_Znwm@PLT
.LEHE18:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L239:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L242
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L242:
	addq	%r13, %rcx
	movl	-972(%rbp), %edx
	movq	%r15, %rsi
	movl	-1016(%rbp), %r9d
	movq	-1000(%rbp), %rdi
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB19:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE19:
	movq	-544(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L243
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L243:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L244
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L244:
	leaq	-768(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
.L257:
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %r12
	subq	%rsi, %r12
	je	.L324
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L488
	movq	%r12, %rdi
.LEHB20:
	call	_Znwm@PLT
.LEHE20:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L245:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L248
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L248:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r13, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %r12
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %r12
	je	.L325
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L489
	movq	%r12, %rdi
.LEHB21:
	call	_Znwm@PLT
.LEHE21:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L249:
	vmovq	%rcx, %xmm6
	addq	%rcx, %r12
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L252
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L252:
	addq	%r13, %rcx
	movl	-972(%rbp), %edx
	movq	%r15, %rsi
	movl	-1016(%rbp), %r9d
	movq	-1000(%rbp), %rdi
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB22:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE22:
	movq	-544(%rbp), %rdi
	vmovsd	%xmm0, -1144(%rbp)
	testq	%rdi, %rdi
	je	.L253
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L253:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L254
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L257
.L256:
	leaq	-752(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-752(%rbp), %rax
	subq	-768(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	$1000000000, %rax, %rax
	addq	-744(%rbp), %rax
	subq	-760(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vaddsd	-1248(%rbp), %xmm0, %xmm5
	movq	-1072(%rbp), %rdi
	vmovsd	%xmm5, -1248(%rbp)
	call	malloc@PLT
	movq	-1072(%rbp), %rdi
	movq	%rax, %rbx
	call	malloc@PLT
	movl	-972(%rbp), %edx
	movq	%rax, %r12
	testl	%edx, %edx
	je	.L264
	movq	-608(%rbp), %rdx
	movq	-640(%rbp), %rcx
	movl	-976(%rbp), %r10d
	leaq	8(%rdx), %rdi
	leaq	8(%rcx), %rsi
	subq	%rdi, %rax
	movq	%rbx, %rdi
	cmpq	$48, %rax
	seta	%al
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%dil
	andl	%edi, %eax
	cmpl	$2, %r10d
	seta	%dil
	andl	%edi, %eax
	movq	%r12, %rdi
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%sil
	testb	%sil, %al
	je	.L326
	leaq	63(%rbx), %rax
	subq	%rdx, %rax
	cmpq	$126, %rax
	jbe	.L326
	cmpl	$6, %r10d
	jbe	.L327
	movq	-1112(%rbp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L262:
	vmovupd	(%rcx,%rax), %zmm4
	vmovupd	%zmm4, (%rbx,%rax)
	vmovupd	(%rdx,%rax), %zmm3
	vmovupd	%zmm3, (%r12,%rax)
	addq	$64, %rax
	cmpq	%rsi, %rax
	jne	.L262
	movl	-972(%rbp), %edi
	movl	-1012(%rbp), %esi
	cmpl	%esi, %edi
	je	.L462
	subl	%esi, %edi
	leal	-1(%rdi), %eax
	cmpl	$2, %eax
	movl	%esi, %eax
	jbe	.L266
.L261:
	movl	%eax, %esi
	vmovupd	(%rcx,%rsi,8), %ymm3
	vmovupd	%ymm3, (%rbx,%rsi,8)
	vmovupd	(%rdx,%rsi,8), %ymm4
	vmovupd	%ymm4, (%r12,%rsi,8)
	movl	%edi, %esi
	andl	$-4, %esi
	addl	%esi, %eax
	cmpl	%esi, %edi
	je	.L462
.L266:
	movl	%eax, %esi
	movl	-972(%rbp), %edi
	vmovsd	(%rcx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%rbx,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	leal	1(%rax), %esi
	cmpl	%esi, %edi
	jbe	.L462
	vmovsd	(%rcx,%rsi,8), %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, (%rbx,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	cmpl	%edi, %eax
	jnb	.L462
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	vzeroupper
.L264:
	movl	-972(%rbp), %edi
	movq	%r12, %rcx
	movq	%rbx, %rsi
	xorl	%r13d, %r13d
	movl	$1, %edx
	movl	$1, %r8d
	call	cblas_ddot@PLT
	leaq	-736(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	leaq	-704(%rbp), %rax
	leaq	-688(%rbp), %rdx
	movl	%r14d, -1120(%rbp)
	movq	%r15, -1344(%rbp)
	movl	%r13d, %r14d
	movq	%rax, %r15
	movq	%rdx, %r13
.L259:
	xorl	%edi, %edi
	movq	%r15, %rsi
	call	clock_gettime@PLT
	movq	%r12, %rcx
	movl	$1, %edx
	movq	%rbx, %rsi
	movl	-972(%rbp), %edi
	movl	$1, %r8d
	call	cblas_ddot@PLT
	xorl	%edi, %edi
	movq	%r13, %rsi
	vmovsd	%xmm0, -1128(%rbp)
	call	clock_gettime@PLT
	movq	-688(%rbp), %rax
	subq	-704(%rbp), %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	imulq	$1000000000, %rax, %rax
	addq	-680(%rbp), %rax
	subq	-696(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm3, %xmm0
	vmovsd	-1040(%rbp), %xmm3
	vcomisd	%xmm0, %xmm3
	ja	.L345
	testl	%r14d, %r14d
	je	.L345
.L269:
	addl	$1, %r14d
	cmpl	$5, %r14d
	jne	.L259
	leaq	-720(%rbp), %rsi
	xorl	%edi, %edi
	movl	-1120(%rbp), %r14d
	movq	-1344(%rbp), %r15
	call	clock_gettime@PLT
	movq	-1072(%rbp), %rdi
	vmovsd	-1256(%rbp), %xmm5
	vaddsd	-1040(%rbp), %xmm5, %xmm4
	vmovsd	%xmm4, -1256(%rbp)
	call	malloc@PLT
	movq	-1072(%rbp), %rdi
	movq	%rax, %rbx
	call	malloc@PLT
	movq	%rax, %r12
	movl	-972(%rbp), %eax
	testl	%eax, %eax
	je	.L277
	movq	-608(%rbp), %rdx
	movq	-640(%rbp), %rcx
	movq	%r12, %rax
	movl	-976(%rbp), %r11d
	leaq	8(%rdx), %rdi
	leaq	8(%rcx), %rsi
	subq	%rdi, %rax
	movq	%rbx, %rdi
	cmpq	$48, %rax
	seta	%al
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%dil
	andl	%edi, %eax
	cmpl	$2, %r11d
	seta	%dil
	andl	%edi, %eax
	movq	%r12, %rdi
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%sil
	testb	%sil, %al
	je	.L329
	leaq	63(%rbx), %rax
	subq	%rdx, %rax
	cmpq	$126, %rax
	jbe	.L329
	cmpl	$6, %r11d
	jbe	.L330
	movq	-1112(%rbp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L275:
	vmovupd	(%rcx,%rax), %zmm4
	vmovupd	%zmm4, (%rbx,%rax)
	vmovupd	(%rdx,%rax), %zmm5
	vmovupd	%zmm5, (%r12,%rax)
	addq	$64, %rax
	cmpq	%rsi, %rax
	jne	.L275
	movl	-972(%rbp), %edi
	movl	-1012(%rbp), %esi
	cmpl	%esi, %edi
	je	.L465
	subl	%esi, %edi
	leal	-1(%rdi), %eax
	cmpl	$2, %eax
	movl	%esi, %eax
	jbe	.L279
.L274:
	movl	%eax, %esi
	vmovupd	(%rcx,%rsi,8), %ymm5
	vmovupd	%ymm5, (%rbx,%rsi,8)
	vmovupd	(%rdx,%rsi,8), %ymm3
	vmovupd	%ymm3, (%r12,%rsi,8)
	movl	%edi, %esi
	andl	$-4, %esi
	addl	%esi, %eax
	cmpl	%edi, %esi
	je	.L465
.L279:
	movl	%eax, %esi
	movl	-972(%rbp), %edi
	vmovsd	(%rcx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%rbx,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	leal	1(%rax), %esi
	cmpl	%esi, %edi
	jbe	.L465
	vmovsd	(%rcx,%rsi,8), %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, (%rbx,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	cmpl	%edi, %eax
	jnb	.L465
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	vzeroupper
.L277:
	movq	-1024(%rbp), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
.LEHB23:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	leaq	-672(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
.L284:
	movq	-1000(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-1024(%rbp), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	vmovsd	%xmm0, -1120(%rbp)
	xorl	%edi, %edi
	movq	%r15, %rsi
	call	clock_gettime@PLT
	movq	-512(%rbp), %rax
	subq	-544(%rbp), %rax
	vxorpd	%xmm5, %xmm5, %xmm5
	imulq	$1000000000, %rax, %rax
	addq	-504(%rbp), %rax
	subq	-536(%rbp), %rax
	vmovsd	-1064(%rbp), %xmm6
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	vcomisd	%xmm0, %xmm6
	ja	.L346
	testl	%r14d, %r14d
	je	.L346
.L282:
	addl	$1, %r14d
	cmpl	$5, %r14d
	jne	.L284
	leaq	-656(%rbp), %rsi
	xorl	%edi, %edi
	leaq	-256(%rbp), %r14
	call	clock_gettime@PLT
	movl	$4000, %esi
	movq	%r14, %rdi
	vmovsd	-1264(%rbp), %xmm4
	vaddsd	-1064(%rbp), %xmm4, %xmm3
	vmovsd	%xmm3, -1264(%rbp)
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %r13
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -1000(%rbp)
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	vmovsd	-968(%rbp), %xmm0
	movq	-1008(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	-1096(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1080(%rbp), %xmm0
	movq	-1008(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_set4@PLT
	movq	-1104(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1128(%rbp), %xmm0
	movq	-1008(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	mpfr_sub_d@PLT
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_set4@PLT
	movq	-1168(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1120(%rbp), %xmm0
	movq	-1008(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_set4@PLT
	movq	-1176(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	-1008(%rbp), %rsi
	movq	-1000(%rbp), %rdi
	xorl	%edx, %edx
	vmovsd	-1336(%rbp), %xmm0
	call	mpfr_sub_d@PLT
	movq	-1000(%rbp), %rsi
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	-1000(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	-1152(%rbp), %rsi
	movq	-1000(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1144(%rbp), %xmm0
	movq	-1008(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	mpfr_sub_d@PLT
	movq	-1008(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_set4@PLT
	movq	-1160(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	%r14, %rdi
	call	mpfr_clear@PLT
	movq	%r13, %rdi
	call	mpfr_clear@PLT
	movq	%r15, %rdi
	call	mpfr_clear@PLT
	movq	%rbx, %rdi
	call	mpfr_clear@PLT
	movq	-1000(%rbp), %rdi
	call	mpfr_clear@PLT
	movq	%r12, %rdi
	call	mpfr_clear@PLT
.LEHE23:
	movq	-576(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L285
	movq	-560(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L285:
	vxorpd	%xmm6, %xmm6, %xmm6
	movq	-1272(%rbp), %rax
	subq	-1280(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vaddsd	-1216(%rbp), %xmm0, %xmm3
	movq	-1304(%rbp), %rax
	subq	-1312(%rbp), %rax
	movq	-1320(%rbp), %rdx
	imulq	$1000000000, %rax, %rax
	subq	-1328(%rbp), %rdx
	addl	$1, -1084(%rbp)
	vmovsd	%xmm3, -1216(%rbp)
	vmovsd	-1224(%rbp), %xmm3
	vaddsd	-992(%rbp), %xmm3, %xmm5
	vmovsd	-1232(%rbp), %xmm3
	addq	%rdx, %rax
	vmovsd	%xmm5, -1224(%rbp)
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vaddsd	-1032(%rbp), %xmm3, %xmm5
	movl	-1084(%rbp), %eax
	vaddsd	-1240(%rbp), %xmm0, %xmm6
	vmovsd	%xmm5, -1232(%rbp)
	vmovsd	%xmm6, -1240(%rbp)
	cmpl	%eax, -1088(%rbp)
	jne	.L286
.L189:
	movslq	-1088(%rbp), %r12
	movq	-1288(%rbp), %rdx
	xorl	%ecx, %ecx
	vmovsd	-1232(%rbp), %xmm5
	movq	-1096(%rbp), %rsi
	vmovd	%r12d, %xmm6
	leal	(%r12,%r12,4), %eax
	movq	(%rdx), %rdx
	vpinsrd	$1, %eax, %xmm6, %xmm0
	vmovhpd	-1240(%rbp), %xmm5, %xmm1
	vpinsrd	$1, %r12d, %xmm6, %xmm2
	movq	%rsi, %rdi
	vmovsd	-1216(%rbp), %xmm5
	vpunpcklqdq	%xmm0, %xmm2, %xmm2
	vmovsd	-1264(%rbp), %xmm6
	vcvtdq2pd	%xmm2, %ymm2
	vmovhpd	-1224(%rbp), %xmm5, %xmm0
	vmovsd	-1248(%rbp), %xmm5
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vdivpd	%ymm2, %ymm0, %ymm0
	vdivsd	%xmm2, %xmm6, %xmm2
	vmovupd	%ymm0, (%rdx)
	vmovhpd	-1256(%rbp), %xmm5, %xmm0
	vmovd	%eax, %xmm5
	vpinsrd	$1, %r12d, %xmm5, %xmm1
	vcvtdq2pd	%xmm1, %xmm1
	vdivpd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm2, 48(%rdx)
	vmovupd	%xmm0, 32(%rdx)
	movq	%r12, %rdx
	vzeroupper
.LEHB24:
	call	mpfr_div_si@PLT
	movq	-1104(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1152(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1160(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1168(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1176(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1296(%rbp), %rbx
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	-472(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1096(%rbp), %rsi
	leaq	32(%rax), %rdi
	movq	%rax, -968(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-440(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1104(%rbp), %rsi
	leaq	64(%rax), %rdi
	movq	%rax, -968(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-408(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1152(%rbp), %rsi
	leaq	96(%rax), %rdi
	movq	%rax, -968(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-376(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1160(%rbp), %rsi
	leaq	128(%rax), %rdi
	movq	%rax, -968(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-344(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1168(%rbp), %rsi
	leaq	160(%rax), %rdi
	movq	%rax, -968(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	-312(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1176(%rbp), %rsi
	addq	$192, %rdi
	call	mpfr_set4@PLT
.LEHE24:
	movq	-608(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L287
	movq	-592(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L287:
	movq	-640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L184
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L184:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L490
	addq	$1344, %rsp
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
.L459:
	.cfi_restore_state
	vzeroupper
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L343:
	vmovsd	%xmm0, -992(%rbp)
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L320:
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L344:
	vmovsd	%xmm0, -1032(%rbp)
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L321:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L225
	.p2align 4,,10
	.p2align 3
.L324:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L245
	.p2align 4,,10
	.p2align 3
.L325:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L254:
	subl	$1, %ebx
	jne	.L257
	jmp	.L256
	.p2align 4,,10
	.p2align 3
.L316:
	movq	$0x000000000, -968(%rbp)
	jmp	.L202
.L318:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L211
.L317:
	movq	$0x000000000, -968(%rbp)
	xorl	%eax, %eax
	jmp	.L203
.L319:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L215
.L186:
	movq	$0, -624(%rbp)
	xorl	%ebx, %ebx
	movq	$0, -608(%rbp)
	movq	$0, -592(%rbp)
	jmp	.L188
	.p2align 4,,10
	.p2align 3
.L345:
	vmovsd	%xmm0, -1040(%rbp)
	jmp	.L269
	.p2align 4,,10
	.p2align 3
.L346:
	vmovsd	%xmm0, -1064(%rbp)
	jmp	.L282
.L322:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L235
.L323:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L239
.L313:
	movq	%rdi, %rbx
	jmp	.L187
.L462:
	vzeroupper
	jmp	.L264
.L465:
	vzeroupper
	jmp	.L277
.L484:
	testq	%rdx, %rdx
	jns	.L223
.LEHB25:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE25:
.L485:
	testq	%r12, %r12
	jns	.L227
.LEHB26:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE26:
.L481:
	movq	%rdi, %rbx
	jmp	.L188
.L488:
	testq	%r12, %r12
	jns	.L247
.LEHB27:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE27:
.L489:
	testq	%r12, %r12
	jns	.L251
.LEHB28:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE28:
.L315:
	movq	$0x000000000, -1264(%rbp)
	movq	$0x000000000, -1256(%rbp)
	movq	$0x000000000, -1232(%rbp)
	movq	$0x000000000, -1224(%rbp)
	movq	$0x000000000, -1248(%rbp)
	movq	$0x000000000, -1240(%rbp)
	movq	$0x000000000, -1216(%rbp)
	jmp	.L189
.L223:
.LEHB29:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE29:
.L227:
.LEHB30:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE30:
.L326:
	movq	-1200(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L260:
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	%rax, %rsi
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rdi
	jne	.L260
	jmp	.L264
.L329:
	movq	-1200(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L273:
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	%rax, %rsi
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rdi
	jne	.L273
	jmp	.L277
.L482:
	testq	%rdx, %rdx
	jns	.L213
.LEHB31:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE31:
.L483:
	testq	%rbx, %rbx
	jns	.L217
.LEHB32:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE32:
.L251:
.LEHB33:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE33:
.L247:
.LEHB34:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE34:
.L217:
.LEHB35:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE35:
.L213:
.LEHB36:
	call	_ZSt17__throw_bad_allocv@PLT
.L486:
	testq	%rdx, %rdx
	jns	.L237
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE36:
.L487:
	testq	%r12, %r12
	jns	.L241
.LEHB37:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE37:
.L327:
	movl	-972(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L261
.L330:
	movl	-972(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L274
.L237:
.LEHB38:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE38:
.L241:
.LEHB39:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE39:
.L490:
	call	__stack_chk_fail@PLT
.L480:
	leaq	.LC7(%rip), %rdi
.LEHB40:
	call	_ZSt20__throw_length_errorPKc@PLT
.L335:
	endbr64
.L479:
	movq	%rax, %rbx
	jmp	.L302
.L332:
	endbr64
	movq	%rax, %rbx
	jmp	.L309
.L334:
	endbr64
.L474:
	movq	%rax, %rbx
	jmp	.L304
.L302:
	movq	-544(%rbp), %rdi
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L304
	vzeroupper
	call	_ZdlPvm@PLT
.L304:
	movq	-512(%rbp), %rdi
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L293
	vzeroupper
	call	_ZdlPvm@PLT
.L293:
	movq	-576(%rbp), %rdi
	movq	-560(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L307
	vzeroupper
	call	_ZdlPvm@PLT
.L307:
	movq	-608(%rbp), %rdi
	movq	-592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L309
	vzeroupper
	call	_ZdlPvm@PLT
.L309:
	movq	-640(%rbp), %rdi
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L466
	vzeroupper
	call	_ZdlPvm@PLT
.L310:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE40:
.L466:
	vzeroupper
	jmp	.L310
.L342:
	endbr64
	movq	%rax, %rbx
	jmp	.L307
.L338:
	endbr64
	jmp	.L474
.L339:
	endbr64
	jmp	.L479
.L336:
	endbr64
	jmp	.L474
.L337:
	endbr64
	jmp	.L479
.L340:
	endbr64
	jmp	.L474
.L341:
	endbr64
	jmp	.L479
.L333:
	endbr64
	movq	%rax, %rbx
	jmp	.L293
	.cfi_endproc
.LFE4285:
	.section	.gcc_except_table
.LLSDA4285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4285-.LLSDACSB4285
.LLSDACSB4285:
	.uleb128 .LEHB9-.LFB4285
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB4285
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L332-.LFB4285
	.uleb128 0
	.uleb128 .LEHB11-.LFB4285
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB12-.LFB4285
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L334-.LFB4285
	.uleb128 0
	.uleb128 .LEHB13-.LFB4285
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L335-.LFB4285
	.uleb128 0
	.uleb128 .LEHB14-.LFB4285
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB15-.LFB4285
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L336-.LFB4285
	.uleb128 0
	.uleb128 .LEHB16-.LFB4285
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L337-.LFB4285
	.uleb128 0
	.uleb128 .LEHB17-.LFB4285
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB18-.LFB4285
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L338-.LFB4285
	.uleb128 0
	.uleb128 .LEHB19-.LFB4285
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L339-.LFB4285
	.uleb128 0
	.uleb128 .LEHB20-.LFB4285
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB21-.LFB4285
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L340-.LFB4285
	.uleb128 0
	.uleb128 .LEHB22-.LFB4285
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L341-.LFB4285
	.uleb128 0
	.uleb128 .LEHB23-.LFB4285
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB24-.LFB4285
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L342-.LFB4285
	.uleb128 0
	.uleb128 .LEHB25-.LFB4285
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB26-.LFB4285
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L336-.LFB4285
	.uleb128 0
	.uleb128 .LEHB27-.LFB4285
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB28-.LFB4285
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L340-.LFB4285
	.uleb128 0
	.uleb128 .LEHB29-.LFB4285
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB30-.LFB4285
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L336-.LFB4285
	.uleb128 0
	.uleb128 .LEHB31-.LFB4285
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB32-.LFB4285
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L334-.LFB4285
	.uleb128 0
	.uleb128 .LEHB33-.LFB4285
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L340-.LFB4285
	.uleb128 0
	.uleb128 .LEHB34-.LFB4285
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB35-.LFB4285
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L334-.LFB4285
	.uleb128 0
	.uleb128 .LEHB36-.LFB4285
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB37-.LFB4285
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L338-.LFB4285
	.uleb128 0
	.uleb128 .LEHB38-.LFB4285
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L333-.LFB4285
	.uleb128 0
	.uleb128 .LEHB39-.LFB4285
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L338-.LFB4285
	.uleb128 0
	.uleb128 .LEHB40-.LFB4285
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE4285:
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.weak	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4296:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4296
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
	movslq	%edi, %rbx
	movl	%r9d, %edi
	subq	$584, %rsp
	.cfi_def_cfa_offset 640
	movl	%esi, 112(%rsp)
	movq	%rdx, 144(%rsp)
	movq	%rcx, 152(%rsp)
	movl	%r8d, 116(%rsp)
	movl	%r9d, 24(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 568(%rsp)
	xorl	%eax, %eax
	call	omp_set_num_threads@PLT
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L586
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %r13
	movq	$0, 224(%rsp)
	leaq	0(,%rbx,8), %rbp
	vmovdqa	%xmm0, 208(%rsp)
	testq	%rbx, %rbx
	je	.L493
	movq	%rbp, %rdi
.LEHB41:
	call	_Znwm@PLT
.LEHE41:
	vmovq	%rax, %xmm6
	leaq	(%rax,%rbp), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, 224(%rsp)
	vmovdqa	%xmm0, 208(%rsp)
	cmpq	$1, %rbx
	je	.L535
	cmpq	%r12, %rdi
	je	.L494
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L494:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%r12, 216(%rsp)
	movq	$0, 256(%rsp)
	vmovdqa	%xmm0, 240(%rsp)
.LEHB42:
	call	_Znwm@PLT
.LEHE42:
	vmovq	%rax, %xmm7
	leaq	(%rax,%rbp), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%r12, 256(%rsp)
	vmovdqa	%xmm0, 240(%rsp)
	cmpq	$1, %rbx
	je	.L587
	cmpq	%rdi, %r12
	je	.L495
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L495:
	leaq	368(%rsp), %rax
	movl	$4000, %esi
	movq	%r12, 248(%rsp)
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	movq	%rax, %r14
.LEHB43:
	call	mpfr_init2@PLT
	leaq	400(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, 48(%rsp)
	movq	%rax, %r15
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
.LEHE43:
	movl	112(%rsp), %eax
	testl	%eax, %eax
	je	.L537
	leal	-1(%r13), %eax
	salq	$5, %rbx
	leaq	208(%rsp), %rdx
	movl	$0, 28(%rsp)
	movq	%rax, 136(%rsp)
	vmovq	%rdx, %xmm5
	leaq	8(,%rax,8), %rax
	movq	%rax, 16(%rsp)
	leaq	272(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	240(%rsp), %rax
	movq	%rbx, 120(%rsp)
	vpinsrq	$1, %rax, %xmm5, %xmm4
	movq	$0x000000000, 56(%rsp)
	movq	$0x000000000, 64(%rsp)
	vmovdqa	%xmm4, (%rsp)
.L520:
	movl	116(%rsp), %edx
	movl	28(%rsp), %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 288(%rsp)
	movq	128(%rsp), %rdi
	vmovdqa	%xmm0, 272(%rsp)
.LEHB44:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	testl	%r13d, %r13d
	je	.L500
	movq	272(%rsp), %rdx
	leal	1(%r13), %esi
	xorl	%eax, %eax
	movq	208(%rsp), %r8
	movq	240(%rsp), %rdi
	movq	136(%rsp), %r9
	.p2align 4,,10
	.p2align 3
.L499:
	vmovsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	vmovsd	%xmm0, (%r8,%rax,8)
	vmovsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %r9
	jne	.L499
.L500:
	movq	120(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, %r14
	call	_Znam@PLT
	movq	%rax, %r15
	movq	%r14, %r12
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	je	.L504
	.p2align 4,,10
	.p2align 3
.L503:
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	movq	208(%rsp), %rax
	xorl	%esi, %esi
	movq	%r12, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%rbp, %rdi
	call	mpfr_init2@PLT
	movq	240(%rsp), %rax
	xorl	%esi, %esi
	movq	%rbp, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	addq	$32, %r12
	addq	$8, %rbx
	addq	$32, %rbp
	cmpq	%rbx, 16(%rsp)
	jne	.L503
.L504:
	leaq	432(%rsp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	movq	%r12, %rcx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	%r13d, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	160(%rsp), %rsi
	xorl	%edi, %edi
	movl	$5, %ebx
	call	clock_gettime@PLT
	leaq	336(%rsp), %r14
.L505:
	vmovdqa	(%rsp), %xmm1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	leaq	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %rdi
	movl	%r13d, 360(%rsp)
	movq	$0x000000000, 352(%rsp)
	vmovdqa	%xmm1, 336(%rsp)
	call	GOMP_parallel@PLT
	vmovsd	352(%rsp), %xmm0
	subl	$1, %ebx
	jne	.L505
	leaq	176(%rsp), %rsi
	xorl	%edi, %edi
	movl	$5, %ebp
	vmovsd	%xmm0, 104(%rsp)
	call	clock_gettime@PLT
	xorl	%edi, %edi
	movq	176(%rsp), %rax
	leaq	192(%rsp), %rsi
	movabsq	$9223372036854775800, %r15
	movq	%rax, 72(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, 80(%rsp)
	movq	184(%rsp), %rax
	movq	%rax, 88(%rsp)
	movq	168(%rsp), %rax
	movq	%rax, 96(%rsp)
	call	clock_gettime@PLT
.L518:
	movq	248(%rsp), %rax
	movq	240(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 352(%rsp)
	vmovdqa	%xmm0, 336(%rsp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L538
	cmpq	%r15, %rbx
	ja	.L588
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE44:
	movq	%rax, %rcx
	movq	248(%rsp), %rax
	movq	240(%rsp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L506:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, 352(%rsp)
	vmovdqa	%xmm0, 336(%rsp)
	cmpq	%rsi, %rax
	je	.L509
	movq	%rcx, %rdi
	movq	%rdx, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %rdx
	movq	%rax, %rcx
.L509:
	movq	216(%rsp), %rax
	addq	%rdx, %rcx
	movq	208(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, 344(%rsp)
	movq	$0, 320(%rsp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, 304(%rsp)
	subq	%rsi, %rbx
	je	.L539
	cmpq	%r15, %rbx
	ja	.L589
	movq	%rbx, %rdi
.LEHB45:
	call	_Znwm@PLT
.LEHE45:
	movq	%rax, %rcx
	movq	216(%rsp), %rax
	movq	208(%rsp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L510:
	vmovq	%rcx, %xmm3
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%rbx, 320(%rsp)
	vmovdqa	%xmm0, 304(%rsp)
	cmpq	%rsi, %rax
	je	.L513
	movq	%rcx, %rdi
	movq	%rdx, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %rdx
	movq	%rax, %rcx
.L513:
	addq	%rdx, %rcx
	movl	24(%rsp), %r9d
	movl	%r13d, %edx
	movq	%r14, %rsi
	movq	%rcx, 312(%rsp)
	leaq	304(%rsp), %rdi
	movl	$1, %ecx
	movl	$1, %r8d
.LEHB46:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE46:
	movq	304(%rsp), %rdi
	vmovq	%xmm0, %rbx
	testq	%rdi, %rdi
	je	.L514
	movq	320(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L514:
	movq	336(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L515
	movq	352(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebp
	jne	.L518
.L517:
	movq	%r14, %rsi
	xorl	%edi, %edi
	leaq	464(%rsp), %r14
	call	clock_gettime@PLT
	movq	336(%rsp), %rax
	movl	$4000, %esi
	movq	%r14, %rdi
	subq	192(%rsp), %rax
	vxorpd	%xmm7, %xmm7, %xmm7
	imulq	$1000000000, %rax, %rax
	addq	344(%rsp), %rax
	subq	200(%rsp), %rax
	vcvtsi2sdq	%rax, %xmm7, %xmm0
	vaddsd	56(%rsp), %xmm0, %xmm6
	vmovsd	%xmm6, 56(%rsp)
.LEHB47:
	call	mpfr_init2@PLT
	leaq	496(%rsp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	leaq	528(%rsp), %rbp
	movl	$4000, %esi
	movq	%rbp, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	call	mpfr_set_d@PLT
	vmovsd	104(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_set4@PLT
	movq	40(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	xorl	%edx, %edx
	vmovq	%rbx, %xmm0
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_set4@PLT
	movq	48(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
.LEHE47:
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L519
	movq	288(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L519:
	movq	72(%rsp), %rax
	subq	80(%rsp), %rax
	vxorpd	%xmm5, %xmm5, %xmm5
	imulq	$1000000000, %rax, %rax
	movq	88(%rsp), %rdx
	subq	96(%rsp), %rdx
	addl	$1, 28(%rsp)
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	vaddsd	64(%rsp), %xmm0, %xmm7
	movl	28(%rsp), %eax
	vmovsd	%xmm7, 64(%rsp)
	cmpl	112(%rsp), %eax
	jne	.L520
	vmovsd	%xmm7, %xmm7, %xmm1
.L496:
	movslq	112(%rsp), %r12
	vxorpd	%xmm4, %xmm4, %xmm4
	vmovhpd	56(%rsp), %xmm1, %xmm1
	xorl	%ecx, %ecx
	movq	40(%rsp), %rsi
	leal	(%r12,%r12,4), %eax
	movq	%r12, %rdx
	vcvtsi2sdl	%eax, %xmm4, %xmm0
	movq	144(%rsp), %rax
	movq	%rsi, %rdi
	movq	(%rax), %rax
	vmovddup	%xmm0, %xmm0
	vdivpd	%xmm0, %xmm1, %xmm0
	vmovupd	%xmm0, (%rax)
.LEHB48:
	call	mpfr_div_si@PLT
	movq	48(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	152(%rsp), %rbx
	movl	376(%rsp), %ecx
	xorl	%edx, %edx
	movq	40(%rsp), %rsi
	movq	(%rbx), %rdi
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	408(%rsp), %ecx
	xorl	%edx, %edx
	movq	48(%rsp), %rsi
	addq	$32, %rdi
	call	mpfr_set4@PLT
.LEHE48:
	movq	240(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L521
	movq	256(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L521:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L491
	movq	224(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L491:
	movq	568(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L590
	addq	$584, %rsp
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
.L538:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L506
	.p2align 4,,10
	.p2align 3
.L539:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L510
	.p2align 4,,10
	.p2align 3
.L515:
	subl	$1, %ebp
	jne	.L518
	jmp	.L517
	.p2align 4,,10
	.p2align 3
.L493:
	movq	$0, 224(%rsp)
	xorl	%r12d, %r12d
	movq	$0, 240(%rsp)
	movq	$0, 256(%rsp)
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L588:
	testq	%rbx, %rbx
	jns	.L508
.LEHB49:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE49:
	.p2align 4,,10
	.p2align 3
.L589:
	testq	%rbx, %rbx
	jns	.L512
.LEHB50:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE50:
.L508:
.LEHB51:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE51:
.L535:
	movq	%rdi, %r12
	jmp	.L494
.L512:
.LEHB52:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE52:
.L587:
	movq	%rdi, %r12
	jmp	.L495
.L537:
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	%xmm5, 56(%rsp)
	vmovsd	%xmm5, %xmm5, %xmm1
	vmovsd	%xmm5, 64(%rsp)
	jmp	.L496
.L590:
	call	__stack_chk_fail@PLT
.L586:
	leaq	.LC7(%rip), %rdi
.LEHB53:
	call	_ZSt20__throw_length_errorPKc@PLT
.L540:
	endbr64
	movq	%rax, %rbp
	jmp	.L531
.L543:
	endbr64
	movq	%rax, %rbp
	jmp	.L525
.L542:
	endbr64
	movq	%rax, %rbp
	jmp	.L527
.L544:
	endbr64
	movq	%rax, %rbp
	jmp	.L523
.L541:
	endbr64
	movq	%rax, %rbp
	jmp	.L529
.L523:
	movq	304(%rsp), %rdi
	movq	320(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L525
	vzeroupper
	call	_ZdlPvm@PLT
.L525:
	movq	336(%rsp), %rdi
	movq	352(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L527
	vzeroupper
	call	_ZdlPvm@PLT
.L527:
	movq	272(%rsp), %rdi
	movq	288(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L529
	vzeroupper
	call	_ZdlPvm@PLT
.L529:
	movq	240(%rsp), %rdi
	movq	256(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L531
	vzeroupper
	call	_ZdlPvm@PLT
.L531:
	movq	208(%rsp), %rdi
	movq	224(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L583
	vzeroupper
	call	_ZdlPvm@PLT
.L532:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE53:
.L583:
	vzeroupper
	jmp	.L532
	.cfi_endproc
.LFE4296:
	.section	.gcc_except_table
.LLSDA4296:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4296-.LLSDACSB4296
.LLSDACSB4296:
	.uleb128 .LEHB41-.LFB4296
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB4296
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L540-.LFB4296
	.uleb128 0
	.uleb128 .LEHB43-.LFB4296
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L541-.LFB4296
	.uleb128 0
	.uleb128 .LEHB44-.LFB4296
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L542-.LFB4296
	.uleb128 0
	.uleb128 .LEHB45-.LFB4296
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L543-.LFB4296
	.uleb128 0
	.uleb128 .LEHB46-.LFB4296
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L544-.LFB4296
	.uleb128 0
	.uleb128 .LEHB47-.LFB4296
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L542-.LFB4296
	.uleb128 0
	.uleb128 .LEHB48-.LFB4296
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L541-.LFB4296
	.uleb128 0
	.uleb128 .LEHB49-.LFB4296
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L542-.LFB4296
	.uleb128 0
	.uleb128 .LEHB50-.LFB4296
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L543-.LFB4296
	.uleb128 0
	.uleb128 .LEHB51-.LFB4296
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L542-.LFB4296
	.uleb128 0
	.uleb128 .LEHB52-.LFB4296
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L543-.LFB4296
	.uleb128 0
	.uleb128 .LEHB53-.LFB4296
	.uleb128 .LEHE53-.LEHB53
	.uleb128 0
	.uleb128 0
.LLSDACSE4296:
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.p2align 4
	.weak	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, @function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii:
.LFB4297:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4297
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
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movl	%edi, %r14d
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$896, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	(%r10), %rax
	movq	%rdx, -856(%rbp)
	movq	%rcx, -864(%rbp)
	movl	24(%r10), %ebx
	movq	%rax, -888(%rbp)
	movq	8(%r10), %rax
	movq	%r8, -872(%rbp)
	movq	%rax, -896(%rbp)
	movl	16(%r10), %eax
	movq	%r9, -880(%rbp)
	movl	%eax, -768(%rbp)
	movl	32(%r10), %eax
	movl	%edi, -644(%rbp)
	movl	%esi, -732(%rbp)
	movl	$4000, %esi
	movl	%eax, -900(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -688(%rbp)
.LEHB54:
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	%rax, -696(%rbp)
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, -720(%rbp)
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -728(%rbp)
	call	mpfr_init2@PLT
	movq	-688(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	movq	%r13, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, -704(%rbp)
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -712(%rbp)
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	movslq	%r14d, %rax
	movq	%rax, -744(%rbp)
	shrq	$60, %rax
	jne	.L755
	movq	-744(%rbp), %r14
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	leaq	0(,%r14,8), %r15
	movq	%r15, -808(%rbp)
	testq	%r14, %r14
	je	.L593
	movq	%r15, %rdi
	call	_Znwm@PLT
.LEHE54:
	movq	%r15, %rdx
	vmovq	%rax, %xmm6
	leaq	(%rax,%r15), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r12, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	cmpq	$1, %r14
	je	.L666
	cmpq	%r12, %rdi
	je	.L594
	subq	$8, %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L594:
	movq	-808(%rbp), %r14
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, -632(%rbp)
	movq	$0, -592(%rbp)
	vmovdqa	%xmm0, -608(%rbp)
	movq	%r14, %rdi
.LEHB55:
	call	_Znwm@PLT
.LEHE55:
	vmovq	%rax, %xmm7
	leaq	(%rax,%r14), %r13
	movq	%rax, %r12
	cmpq	$1, -744(%rbp)
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%r13, -592(%rbp)
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vmovdqa	%xmm0, -608(%rbp)
	je	.L756
	cmpq	%rdi, %r13
	je	.L595
	movq	-808(%rbp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
.L595:
	movl	-732(%rbp), %edx
	movq	%r13, -600(%rbp)
	testl	%edx, %edx
	je	.L757
.L662:
	movq	-744(%rbp), %rax
	imull	-732(%rbp), %ebx
	movl	$0, -648(%rbp)
	salq	$5, %rax
	movq	%rax, -824(%rbp)
	movl	-644(%rbp), %eax
	movl	%ebx, -904(%rbp)
	leal	-1(%rax), %edx
	movl	%edx, -736(%rbp)
	movq	%rdx, -816(%rbp)
	leaq	8(,%rdx,8), %rdx
	movq	%rdx, -656(%rbp)
	movl	%eax, %edx
	shrl	$3, %eax
	subl	$1, %eax
	andl	$-8, %edx
	addq	$1, %rax
	movl	%edx, -764(%rbp)
	leaq	-640(%rbp), %rdx
	salq	$6, %rax
	vmovq	%rdx, %xmm7
	movq	%rax, -776(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -832(%rbp)
	leaq	-608(%rbp), %rax
	vpinsrq	$1, %rax, %xmm7, %xmm6
	vmovdqa	%xmm6, -848(%rbp)
.L645:
	movl	-768(%rbp), %edx
	movl	-648(%rbp), %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -560(%rbp)
	movq	-832(%rbp), %rdi
	vmovdqa	%xmm0, -576(%rbp)
.LEHB56:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-644(%rbp), %edi
	testl	%edi, %edi
	je	.L599
	movl	-644(%rbp), %eax
	movq	-576(%rbp), %rdx
	movq	-640(%rbp), %r8
	movq	-608(%rbp), %rdi
	movq	-816(%rbp), %r9
	leal	1(%rax), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L598:
	vmovsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	vmovsd	%xmm0, (%r8,%rax,8)
	vmovsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%r9, %rcx
	jne	.L598
.L599:
	movq	-824(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, %r13
	call	_Znam@PLT
	movl	-644(%rbp), %esi
	movq	%rax, %r14
	movq	%r13, %r15
	movq	%rax, %r12
	xorl	%ebx, %ebx
	testl	%esi, %esi
	je	.L603
	.p2align 4,,10
	.p2align 3
.L602:
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	movq	-640(%rbp), %rax
	xorl	%esi, %esi
	movq	%r15, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	movq	-608(%rbp), %rax
	xorl	%esi, %esi
	movq	%r12, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	addq	$32, %r15
	addq	$8, %rbx
	addq	$32, %r12
	cmpq	%rbx, -656(%rbp)
	jne	.L602
.L603:
	leaq	-288(%rbp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	movl	-644(%rbp), %ebx
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movl	%ebx, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	movq	-608(%rbp), %rsi
	testl	%ebx, %ebx
	je	.L668
	cmpl	$6, -736(%rbp)
	movq	-640(%rbp), %rdx
	jbe	.L669
	movq	-776(%rbp), %rcx
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L606:
	vmovupd	(%rsi,%rax), %zmm7
	vfmadd231pd	(%rdx,%rax), %zmm7, %zmm0
	addq	$64, %rax
	cmpq	%rcx, %rax
	jne	.L606
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	-764(%rbp), %eax
	vaddpd	%ymm0, %ymm1, %ymm1
	vextractf128	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm0
	vmovlpd	%xmm0, -664(%rbp)
	cmpl	%eax, -644(%rbp)
	je	.L742
.L605:
	movl	-644(%rbp), %ecx
	subl	%eax, %ecx
	leal	-1(%rcx), %edi
	cmpl	$2, %edi
	jbe	.L609
	movl	%eax, %edi
	vmovupd	(%rsi,%rdi,8), %ymm3
	vmulpd	(%rdx,%rdi,8), %ymm3, %ymm0
	movl	%ecx, %edi
	andl	$-4, %edi
	addl	%edi, %eax
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vaddsd	-664(%rbp), %xmm0, %xmm2
	vmovsd	%xmm2, -664(%rbp)
	cmpl	%ecx, %edi
	je	.L742
.L609:
	movl	%eax, %ecx
	movl	-644(%rbp), %ebx
	vmovsd	-664(%rbp), %xmm4
	vmovsd	(%rdx,%rcx,8), %xmm5
	vfmadd231sd	(%rsi,%rcx,8), %xmm5, %xmm4
	leal	1(%rax), %ecx
	vmovsd	%xmm4, -664(%rbp)
	cmpl	%ecx, %ebx
	jbe	.L742
	vmovsd	(%rsi,%rcx,8), %xmm2
	vfmadd231sd	(%rdx,%rcx,8), %xmm2, %xmm4
	addl	$2, %eax
	vmovsd	%xmm4, -664(%rbp)
	cmpl	%ebx, %eax
	jnb	.L742
	vmovsd	(%rsi,%rax,8), %xmm6
	vfmadd231sd	(%rdx,%rax,8), %xmm6, %xmm4
	vmovsd	%xmm4, -664(%rbp)
	vzeroupper
.L604:
	movq	-600(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L670
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L758
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE56:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r12
	subq	%rsi, %r12
.L611:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L614
	movq	%rcx, %rdi
	movq	%r12, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L614:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r12, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %rbx
	je	.L671
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L759
	movq	%rbx, %rdi
.LEHB57:
	call	_Znwm@PLT
.LEHE57:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r12
	subq	%rsi, %r12
.L615:
	vmovq	%rcx, %xmm3
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%rbx, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L618
	movq	%rcx, %rdi
	movq	%r12, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L618:
	addq	%r12, %rcx
	leaq	-544(%rbp), %r13
	leaq	-512(%rbp), %r12
	movl	-644(%rbp), %edx
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movq	%r12, %rsi
	movq	%r13, %rdi
	movl	$1, %ecx
.LEHB58:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE58:
	movq	-544(%rbp), %rdi
	vmovsd	%xmm0, -752(%rbp)
	testq	%rdi, %rdi
	je	.L619
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L619:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L620
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L620:
	movl	-644(%rbp), %eax
	xorl	%edx, %edx
	movq	%r12, %rsi
	xorl	%ecx, %ecx
	vmovdqa	-848(%rbp), %xmm6
	leaq	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0(%rip), %rdi
	movq	$0x000000000, -496(%rbp)
	movl	%eax, -488(%rbp)
	vmovdqa	%xmm6, -512(%rbp)
	call	GOMP_parallel@PLT
	movq	-600(%rbp), %rax
	vmovsd	-496(%rbp), %xmm3
	vpxor	%xmm0, %xmm0, %xmm0
	movq	-608(%rbp), %rsi
	movq	$0, -496(%rbp)
	vmovsd	%xmm3, -760(%rbp)
	movq	%rax, %rdx
	vmovdqa	%xmm0, -512(%rbp)
	subq	%rsi, %rdx
	je	.L672
	movabsq	$9223372036854775800, %rax
	movq	%rdx, %rbx
	cmpq	%rax, %rdx
	ja	.L760
	movq	%rdx, %rdi
.LEHB59:
	call	_Znwm@PLT
.LEHE59:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L621:
	vmovq	%rcx, %xmm4
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	movq	%rbx, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L624
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L624:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r14, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %rbx
	je	.L673
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L761
	movq	%rbx, %rdi
.LEHB60:
	call	_Znwm@PLT
.LEHE60:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L625:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L628
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L628:
	addq	%r14, %rcx
	movl	-900(%rbp), %r9d
	movq	%r12, %rsi
	movq	%r13, %rdi
	movl	-644(%rbp), %edx
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB61:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE61:
	movq	-544(%rbp), %rdi
	vmovsd	%xmm0, -784(%rbp)
	testq	%rdi, %rdi
	je	.L629
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L629:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L630
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L630:
	movq	-808(%rbp), %rbx
	movq	%rbx, %rdi
	call	malloc@PLT
	movq	%rbx, %rdi
	movq	%rax, %r13
	call	malloc@PLT
	movl	-644(%rbp), %ecx
	movq	%rax, %r12
	testl	%ecx, %ecx
	je	.L637
	movq	-608(%rbp), %rdx
	movq	-640(%rbp), %rcx
	movl	-736(%rbp), %ebx
	leaq	8(%rdx), %rdi
	leaq	8(%rcx), %rsi
	subq	%rdi, %rax
	movq	%r13, %rdi
	cmpq	$48, %rax
	seta	%al
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%dil
	andl	%edi, %eax
	cmpl	$2, %ebx
	seta	%dil
	andl	%edi, %eax
	movq	%r12, %rdi
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%sil
	testb	%sil, %al
	je	.L674
	leaq	63(%r13), %rax
	subq	%rdx, %rax
	cmpq	$126, %rax
	jbe	.L674
	cmpl	$6, %ebx
	jbe	.L675
	movq	-776(%rbp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L635:
	vmovupd	(%rcx,%rax), %zmm6
	vmovupd	%zmm6, 0(%r13,%rax)
	vmovupd	(%rdx,%rax), %zmm5
	vmovupd	%zmm5, (%r12,%rax)
	addq	$64, %rax
	cmpq	%rsi, %rax
	jne	.L635
	movl	-644(%rbp), %edi
	movl	-764(%rbp), %ebx
	cmpl	%ebx, %edi
	je	.L745
	subl	%ebx, %edi
	leal	-1(%rdi), %eax
	cmpl	$2, %eax
	movl	%ebx, %eax
	jbe	.L639
.L634:
	movl	%eax, %esi
	vmovupd	(%rcx,%rsi,8), %ymm2
	vmovupd	%ymm2, 0(%r13,%rsi,8)
	vmovupd	(%rdx,%rsi,8), %ymm2
	vmovupd	%ymm2, (%r12,%rsi,8)
	movl	%edi, %esi
	andl	$-4, %esi
	addl	%esi, %eax
	cmpl	%esi, %edi
	je	.L745
.L639:
	movl	%eax, %esi
	movl	-644(%rbp), %ebx
	vmovsd	(%rcx,%rsi,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	leal	1(%rax), %esi
	cmpl	%esi, %ebx
	jbe	.L745
	vmovsd	(%rcx,%rsi,8), %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, 0(%r13,%rsi,8)
	vmovsd	(%rdx,%rsi,8), %xmm0
	vmovsd	%xmm0, (%r12,%rsi,8)
	cmpl	%ebx, %eax
	jnb	.L745
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	vzeroupper
.L637:
	movl	-644(%rbp), %edi
	movl	$1, %edx
	movq	%r13, %rsi
	movq	%r12, %rcx
	movl	$1, %r8d
	call	cblas_ddot@PLT
	movq	-744(%rbp), %rdi
	movq	%r12, %rdx
	movq	%r13, %rsi
	vmovsd	%xmm0, -792(%rbp)
.LEHB62:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	leaq	-256(%rbp), %rbx
	movl	$4000, %esi
	vmovsd	%xmm0, -800(%rbp)
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -672(%rbp)
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -680(%rbp)
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %r13
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	vmovsd	-664(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_set4@PLT
	movq	-688(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-752(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	-696(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-792(%rbp), %xmm0
	movq	-672(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	call	mpfr_sub_d@PLT
	movq	-672(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	-672(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	-720(%rbp), %rsi
	movq	-672(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-800(%rbp), %xmm0
	movq	-680(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r15, %rsi
	call	mpfr_sub_d@PLT
	movq	-680(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	-680(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	-728(%rbp), %rsi
	movq	-680(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-760(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r13, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_set4@PLT
	movq	-704(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-784(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_set4@PLT
	movq	-712(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	%rbx, %rdi
	call	mpfr_clear@PLT
	movq	-672(%rbp), %rdi
	call	mpfr_clear@PLT
	movq	-680(%rbp), %rdi
	call	mpfr_clear@PLT
	movq	%r14, %rdi
	call	mpfr_clear@PLT
	movq	%r13, %rdi
	call	mpfr_clear@PLT
	movq	%r12, %rdi
	call	mpfr_clear@PLT
	movslq	-732(%rbp), %r12
	movq	-688(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-696(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-704(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-712(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-720(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-728(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movl	-904(%rbp), %ebx
	movl	-648(%rbp), %r14d
	xorl	%esi, %esi
	movq	-688(%rbp), %rdi
	addl	%r14d, %ebx
	call	mpfr_get_d@PLT
	movq	-856(%rbp), %rax
	movslq	%ebx, %rbx
	movq	-696(%rbp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	-864(%rbp), %rax
	movq	-704(%rbp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	-872(%rbp), %rax
	movq	-712(%rbp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	-880(%rbp), %rax
	movq	-720(%rbp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	-888(%rbp), %rax
	movq	-728(%rbp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	-896(%rbp), %rax
	movq	-576(%rbp), %rdi
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	testq	%rdi, %rdi
	je	.L642
	movq	-560(%rbp), %rsi
	addl	$1, %r14d
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movl	%r14d, -648(%rbp)
	cmpl	%r14d, %r12d
	ja	.L645
	movq	-608(%rbp), %r12
	testq	%r12, %r12
	je	.L646
.L763:
	movq	-592(%rbp), %rsi
	subq	%r12, %rsi
.L661:
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L646:
	movq	-640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L591
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L591:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L762
	addq	$896, %rsp
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
.L742:
	.cfi_restore_state
	vzeroupper
	jmp	.L604
	.p2align 4,,10
	.p2align 3
.L670:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L611
	.p2align 4,,10
	.p2align 3
.L671:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L615
	.p2align 4,,10
	.p2align 3
.L672:
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L621
	.p2align 4,,10
	.p2align 3
.L673:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L625
	.p2align 4,,10
	.p2align 3
.L745:
	vzeroupper
	jmp	.L637
	.p2align 4,,10
	.p2align 3
.L642:
	addl	$1, -648(%rbp)
	movl	-648(%rbp), %eax
	cmpl	-732(%rbp), %eax
	jb	.L645
	movq	-608(%rbp), %r12
	testq	%r12, %r12
	jne	.L763
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L593:
	vmovdqa	%xmm0, -608(%rbp)
	movl	-732(%rbp), %eax
	movq	$0, -624(%rbp)
	movq	$0, -592(%rbp)
	testl	%eax, %eax
	jne	.L662
	jmp	.L646
	.p2align 4,,10
	.p2align 3
.L674:
	movq	-816(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L633:
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	%rax, %rsi
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rdi
	jne	.L633
	jmp	.L637
	.p2align 4,,10
	.p2align 3
.L668:
	movq	$0x000000000, -664(%rbp)
	jmp	.L604
.L669:
	movq	$0x000000000, -664(%rbp)
	xorl	%eax, %eax
	jmp	.L605
.L666:
	movq	%rdi, %r12
	jmp	.L594
.L675:
	movl	-644(%rbp), %edi
	xorl	%eax, %eax
	jmp	.L634
.L756:
	movq	%rdi, %r13
	jmp	.L595
.L758:
	testq	%rbx, %rbx
	jns	.L613
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE62:
.L759:
	testq	%rbx, %rbx
	jns	.L617
.LEHB63:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE63:
.L760:
	testq	%rdx, %rdx
	jns	.L623
.LEHB64:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE64:
.L761:
	testq	%rbx, %rbx
	jns	.L627
.LEHB65:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE65:
.L613:
.LEHB66:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE66:
.L617:
.LEHB67:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE67:
.L623:
.LEHB68:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE68:
.L627:
.LEHB69:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE69:
.L757:
	movq	-808(%rbp), %rsi
	jmp	.L661
.L762:
	call	__stack_chk_fail@PLT
.L755:
	leaq	.LC7(%rip), %rdi
.LEHB70:
	call	_ZSt20__throw_length_errorPKc@PLT
.L681:
	endbr64
.L751:
	movq	%rax, %rbx
	jmp	.L655
.L682:
	endbr64
.L754:
	movq	%rax, %rbx
.L653:
	movq	-544(%rbp), %rdi
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L655
	vzeroupper
	call	_ZdlPvm@PLT
.L655:
	movq	-512(%rbp), %rdi
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L652
	vzeroupper
	call	_ZdlPvm@PLT
.L652:
	movq	-576(%rbp), %rdi
	movq	-560(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L657
	vzeroupper
	call	_ZdlPvm@PLT
.L657:
	movq	-608(%rbp), %rdi
	movq	-592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L659
	vzeroupper
	call	_ZdlPvm@PLT
.L659:
	movq	-640(%rbp), %rdi
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L746
	vzeroupper
	call	_ZdlPvm@PLT
.L660:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE70:
.L746:
	vzeroupper
	jmp	.L660
.L679:
	endbr64
	jmp	.L751
.L680:
	endbr64
	jmp	.L754
.L678:
	endbr64
	movq	%rax, %rbx
	jmp	.L652
.L677:
	endbr64
	movq	%rax, %rbx
	jmp	.L659
	.cfi_endproc
.LFE4297:
	.section	.gcc_except_table
.LLSDA4297:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4297-.LLSDACSB4297
.LLSDACSB4297:
	.uleb128 .LEHB54-.LFB4297
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB4297
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L677-.LFB4297
	.uleb128 0
	.uleb128 .LEHB56-.LFB4297
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB57-.LFB4297
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L679-.LFB4297
	.uleb128 0
	.uleb128 .LEHB58-.LFB4297
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L680-.LFB4297
	.uleb128 0
	.uleb128 .LEHB59-.LFB4297
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB60-.LFB4297
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L681-.LFB4297
	.uleb128 0
	.uleb128 .LEHB61-.LFB4297
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L682-.LFB4297
	.uleb128 0
	.uleb128 .LEHB62-.LFB4297
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB63-.LFB4297
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L679-.LFB4297
	.uleb128 0
	.uleb128 .LEHB64-.LFB4297
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB65-.LFB4297
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L681-.LFB4297
	.uleb128 0
	.uleb128 .LEHB66-.LFB4297
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB67-.LFB4297
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L679-.LFB4297
	.uleb128 0
	.uleb128 .LEHB68-.LFB4297
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L678-.LFB4297
	.uleb128 0
	.uleb128 .LEHB69-.LFB4297
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L681-.LFB4297
	.uleb128 0
	.uleb128 .LEHB70-.LFB4297
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE4297:
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, .-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align 4
	.weak	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4298:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4298
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
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%edi, %ebx
	subq	$1216, %rsp
	movq	%rdx, -1232(%rbp)
	movq	%rcx, -1240(%rbp)
	movl	%r8d, -1012(%rbp)
	movl	%r9d, -864(%rbp)
	movl	%edi, -860(%rbp)
	movl	%esi, -968(%rbp)
	movl	$4000, %esi
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -944(%rbp)
.LEHB71:
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -936(%rbp)
	call	mpfr_init2@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, -984(%rbp)
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	%rax, -992(%rbp)
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, -1000(%rbp)
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -1008(%rbp)
	call	mpfr_init2@PLT
	movq	-944(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	movq	-936(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	movslq	%ebx, %rax
	movq	%rax, -888(%rbp)
	shrq	$60, %rax
	jne	.L965
	movq	-888(%rbp), %r15
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	leaq	0(,%r15,8), %rdi
	movq	%rdi, -896(%rbp)
	movq	%rdi, %rbx
	testq	%r15, %r15
	je	.L766
	call	_Znwm@PLT
.LEHE71:
	movq	%rbx, %rdx
	vmovq	%rax, %xmm2
	leaq	(%rax,%rbx), %rbx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, -624(%rbp)
	vmovdqa	%xmm0, -640(%rbp)
	cmpq	$1, %r15
	je	.L859
	cmpq	%rbx, %rdi
	je	.L767
	subq	$8, %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L767:
	movq	-896(%rbp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, -632(%rbp)
	movq	$0, -592(%rbp)
	vmovdqa	%xmm0, -608(%rbp)
.LEHB72:
	call	_Znwm@PLT
.LEHE72:
	movq	-896(%rbp), %rbx
	vmovq	%rax, %xmm2
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	vmovdqa	%xmm0, -608(%rbp)
	addq	%rax, %rbx
	cmpq	$1, -888(%rbp)
	movq	%rbx, -592(%rbp)
	je	.L966
	cmpq	%rdi, %rbx
	je	.L768
	movq	-896(%rbp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
.L768:
	movl	-968(%rbp), %edi
	movq	%rbx, -600(%rbp)
	testl	%edi, %edi
	je	.L861
	movq	-888(%rbp), %rax
	leaq	-640(%rbp), %rdx
	movl	$0, -924(%rbp)
	vmovq	%rdx, %xmm3
	movq	$0x000000000, -1048(%rbp)
	movq	$0x000000000, -1040(%rbp)
	salq	$5, %rax
	movq	%rax, -1024(%rbp)
	movl	-860(%rbp), %eax
	movq	$0x000000000, -1056(%rbp)
	movq	$0x000000000, -1088(%rbp)
	leal	-1(%rax), %ebx
	movl	%ebx, -928(%rbp)
	movq	%rbx, -1096(%rbp)
	addq	$1, %rbx
	movq	%rbx, -1104(%rbp)
	salq	$3, %rbx
	movq	%rbx, -872(%rbp)
	movl	%eax, %ebx
	shrl	$3, %eax
	subl	$1, %eax
	andl	$-8, %ebx
	movq	$0x000000000, -1080(%rbp)
	addq	$1, %rax
	movl	%ebx, -964(%rbp)
	movq	$0x000000000, -1072(%rbp)
	salq	$6, %rax
	movq	%rax, -976(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -1032(%rbp)
	leaq	-608(%rbp), %rax
	movq	$0x000000000, -1064(%rbp)
	vpinsrq	$1, %rax, %xmm3, %xmm2
	vmovdqa	%xmm2, -912(%rbp)
.L840:
	movl	-1012(%rbp), %edx
	movl	-924(%rbp), %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -560(%rbp)
	movq	-1032(%rbp), %rdi
	vmovdqa	%xmm0, -576(%rbp)
.LEHB73:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-860(%rbp), %esi
	testl	%esi, %esi
	je	.L773
	movl	-860(%rbp), %eax
	movq	-576(%rbp), %rdx
	movq	-640(%rbp), %r8
	movq	-608(%rbp), %rdi
	movq	-1096(%rbp), %r9
	leal	1(%rax), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L772:
	vmovsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	vmovsd	%xmm0, (%r8,%rax,8)
	vmovsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	vmovsd	%xmm0, (%rdi,%rax,8)
	addq	$1, %rax
	cmpq	%r9, %rcx
	jne	.L772
.L773:
	movq	-1024(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, %r12
	call	_Znam@PLT
	movl	-860(%rbp), %ecx
	movq	%rax, %r15
	movq	%r12, %r14
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testl	%ecx, %ecx
	je	.L777
	.p2align 4,,10
	.p2align 3
.L776:
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	movq	-640(%rbp), %rax
	xorl	%esi, %esi
	movq	%r14, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	movq	-608(%rbp), %rax
	xorl	%esi, %esi
	movq	%r13, %rdi
	vmovsd	(%rax,%rbx), %xmm0
	call	mpfr_set_d@PLT
	addq	$32, %r14
	addq	$8, %rbx
	addq	$32, %r13
	cmpq	%rbx, -872(%rbp)
	jne	.L776
.L777:
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -880(%rbp)
	call	mpfr_init2@PLT
	movq	-880(%rbp), %rdi
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	mpfr_set_d@PLT
	leaq	-832(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	-860(%rbp), %ebx
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	-880(%rbp), %rcx
	movl	%ebx, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	-816(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-808(%rbp), %rax
	movq	%rax, -1112(%rbp)
	movq	-824(%rbp), %rax
	movq	%rax, -1120(%rbp)
	testl	%ebx, %ebx
	je	.L781
	movq	-1104(%rbp), %rbx
	salq	$5, %rbx
	addq	%r12, %rbx
	.p2align 4,,10
	.p2align 3
.L780:
	movq	%r12, %rdi
	call	mpfr_clear@PLT
	movq	%r15, %rdi
	call	mpfr_clear@PLT
	addq	$32, %r12
	addq	$32, %r15
	cmpq	%rbx, %r12
	jne	.L780
.L781:
	leaq	-800(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-640(%rbp), %rcx
	movq	-608(%rbp), %rdx
	movl	$5, %r8d
	movq	-976(%rbp), %rsi
	movl	-964(%rbp), %r11d
	movl	-928(%rbp), %ebx
	movl	-860(%rbp), %r10d
.L779:
	testl	%r10d, %r10d
	je	.L967
	cmpl	$6, %ebx
	jbe	.L862
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L783:
	vmovupd	(%rdx,%rax), %zmm3
	vfmadd231pd	(%rcx,%rax), %zmm3, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rsi
	jne	.L783
	vextractf64x4	$0x1, %zmm0, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vextractf128	$0x1, %ymm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vunpckhpd	%xmm0, %xmm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm0
	vmovlpd	%xmm0, -856(%rbp)
	cmpl	%r11d, %r10d
	je	.L789
	movl	%r11d, %eax
.L782:
	movl	%r10d, %edi
	subl	%eax, %edi
	leal	-1(%rdi), %r9d
	cmpl	$2, %r9d
	jbe	.L785
	movl	%eax, %r9d
	vmovupd	(%rdx,%r9,8), %ymm7
	vmulpd	(%rcx,%r9,8), %ymm7, %ymm0
	movl	%edi, %r9d
	andl	$-4, %r9d
	addl	%r9d, %eax
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vaddsd	-856(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -856(%rbp)
	cmpl	%edi, %r9d
	je	.L789
.L785:
	vmovsd	-856(%rbp), %xmm2
	movl	%eax, %edi
	vmovsd	(%rdx,%rdi,8), %xmm4
	vfmadd231sd	(%rcx,%rdi,8), %xmm4, %xmm2
	leal	1(%rax), %edi
	vmovsd	%xmm2, -856(%rbp)
	cmpl	%r10d, %edi
	jnb	.L789
	vmovsd	(%rdx,%rdi,8), %xmm7
	vfmadd231sd	(%rcx,%rdi,8), %xmm7, %xmm2
	addl	$2, %eax
	vmovsd	%xmm2, -856(%rbp)
	cmpl	%eax, %r10d
	jbe	.L789
	vmovsd	(%rdx,%rax,8), %xmm6
	vfmadd231sd	(%rcx,%rax,8), %xmm6, %xmm2
	vmovsd	%xmm2, -856(%rbp)
.L789:
	subl	$1, %r8d
	jne	.L779
	leaq	-784(%rbp), %rsi
	xorl	%edi, %edi
	vzeroupper
	call	clock_gettime@PLT
	xorl	%edi, %edi
	movq	-784(%rbp), %rax
	leaq	-768(%rbp), %rsi
	movl	$5, %ebx
	movq	$0x000000000, -840(%rbp)
	movq	%rax, -1128(%rbp)
	movq	-800(%rbp), %rax
	movq	%rax, -1136(%rbp)
	movq	-776(%rbp), %rax
	movq	%rax, -1144(%rbp)
	movq	-792(%rbp), %rax
	movq	%rax, -1152(%rbp)
	call	clock_gettime@PLT
.L802:
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0x000000000, -840(%rbp)
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %r12
	subq	%rsi, %r12
	je	.L863
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L968
	movq	%r12, %rdi
	call	_Znwm@PLT
.LEHE73:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L790:
	vmovq	%rcx, %xmm4
	addq	%rcx, %r12
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	movq	%r12, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L793
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L793:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%r13, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %r12
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %r12
	je	.L864
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L969
	movq	%r12, %rdi
.LEHB74:
	call	_Znwm@PLT
.LEHE74:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L794:
	vmovq	%rcx, %xmm5
	addq	%rcx, %r12
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r12, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L797
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L797:
	addq	%r13, %rcx
	leaq	-512(%rbp), %r12
	leaq	-544(%rbp), %r15
	movl	-860(%rbp), %edx
	movq	%rcx, -536(%rbp)
	leaq	-840(%rbp), %r9
	movq	%r12, %rsi
	movq	%r15, %rdi
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB75:
	call	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd@PLT
.LEHE75:
	movq	-544(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L798
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L798:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L799
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L802
.L801:
	leaq	-752(%rbp), %rsi
	xorl	%edi, %edi
	movl	$5, %ebx
	call	clock_gettime@PLT
	movq	-752(%rbp), %rax
	movl	-864(%rbp), %edi
	leaq	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %r13
	movq	%rax, -1160(%rbp)
	movq	-768(%rbp), %rax
	movq	%rax, -1168(%rbp)
	movq	-744(%rbp), %rax
	movq	%rax, -1176(%rbp)
	movq	-760(%rbp), %rax
	movq	%rax, -1184(%rbp)
	call	omp_set_num_threads@PLT
	leaq	-736(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	-860(%rbp), %r14d
.L803:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r13, %rdi
	vmovdqa	-912(%rbp), %xmm4
	movl	%r14d, -488(%rbp)
	movq	$0x000000000, -496(%rbp)
	vmovdqa	%xmm4, -512(%rbp)
	call	GOMP_parallel@PLT
	vmovsd	-496(%rbp), %xmm0
	subl	$1, %ebx
	jne	.L803
	leaq	-720(%rbp), %rsi
	xorl	%edi, %edi
	movl	$5, %r14d
	vmovsd	%xmm0, -1224(%rbp)
	call	clock_gettime@PLT
	movq	-720(%rbp), %rax
	leaq	-704(%rbp), %rsi
	xorl	%edi, %edi
	movq	%rax, -1192(%rbp)
	movq	-736(%rbp), %rax
	movq	%rax, -1200(%rbp)
	movq	-712(%rbp), %rax
	movq	%rax, -1208(%rbp)
	movq	-728(%rbp), %rax
	movq	%rax, -1216(%rbp)
	call	clock_gettime@PLT
.L816:
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	movq	%rax, %r13
	subq	%rsi, %r13
	je	.L865
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r13
	ja	.L970
	movq	%r13, %rdi
.LEHB76:
	call	_Znwm@PLT
.LEHE76:
	movq	%rax, %rcx
	movq	-600(%rbp), %rax
	movq	-608(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L804:
	vmovq	%rcx, %xmm6
	addq	%rcx, %r13
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r13, -496(%rbp)
	vmovdqa	%xmm0, -512(%rbp)
	cmpq	%rsi, %rax
	je	.L807
	movq	%rcx, %rdi
	movq	%rdx, -920(%rbp)
	call	memmove@PLT
	movq	-920(%rbp), %rdx
	movq	%rax, %rcx
.L807:
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	addq	%rdx, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -504(%rbp)
	movq	$0, -528(%rbp)
	movq	%rax, %r13
	vmovdqa	%xmm0, -544(%rbp)
	subq	%rsi, %r13
	je	.L866
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r13
	ja	.L971
	movq	%r13, %rdi
.LEHB77:
	call	_Znwm@PLT
.LEHE77:
	movq	%rax, %rcx
	movq	-632(%rbp), %rax
	movq	-640(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L808:
	vmovq	%rcx, %xmm7
	addq	%rcx, %r13
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%r13, -528(%rbp)
	vmovdqa	%xmm0, -544(%rbp)
	cmpq	%rsi, %rax
	je	.L811
	movq	%rcx, %rdi
	movq	%rdx, -920(%rbp)
	call	memmove@PLT
	movq	-920(%rbp), %rdx
	movq	%rax, %rcx
.L811:
	addq	%rdx, %rcx
	movl	-864(%rbp), %r9d
	movq	%r12, %rsi
	movq	%r15, %rdi
	movl	-860(%rbp), %edx
	movq	%rcx, -536(%rbp)
	movl	$1, %r8d
	movl	$1, %ecx
.LEHB78:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE78:
	movq	-544(%rbp), %rdi
	vmovsd	%xmm0, -960(%rbp)
	testq	%rdi, %rdi
	je	.L812
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L812:
	movq	-512(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L813
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %r14d
	jne	.L816
.L815:
	leaq	-688(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-688(%rbp), %rax
	subq	-704(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	$1000000000, %rax, %rax
	addq	-680(%rbp), %rax
	subq	-696(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vaddsd	-1056(%rbp), %xmm0, %xmm7
	movq	-896(%rbp), %rdi
	vmovsd	%xmm7, -1056(%rbp)
	call	malloc@PLT
	movq	-896(%rbp), %rdi
	movq	%rax, %r14
	call	malloc@PLT
	movl	-860(%rbp), %edx
	movq	%rax, %r13
	testl	%edx, %edx
	je	.L823
	movq	-608(%rbp), %rdx
	movq	-640(%rbp), %rcx
	movl	-928(%rbp), %r11d
	leaq	8(%rdx), %rdi
	leaq	8(%rcx), %rsi
	subq	%rdi, %rax
	movq	%r14, %rdi
	cmpq	$48, %rax
	seta	%al
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%dil
	andl	%edi, %eax
	cmpl	$2, %r11d
	seta	%dil
	andl	%edi, %eax
	movq	%r13, %rdi
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%sil
	testb	%sil, %al
	je	.L867
	leaq	63(%r14), %rax
	subq	%rdx, %rax
	cmpq	$126, %rax
	jbe	.L867
	cmpl	$6, %r11d
	jbe	.L868
	movq	-976(%rbp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L821:
	vmovupd	(%rcx,%rax), %zmm4
	vmovupd	%zmm4, (%r14,%rax)
	vmovupd	(%rdx,%rax), %zmm5
	vmovupd	%zmm5, 0(%r13,%rax)
	addq	$64, %rax
	cmpq	%rax, %rsi
	jne	.L821
	movl	-860(%rbp), %esi
	movl	-964(%rbp), %ebx
	cmpl	%ebx, %esi
	je	.L952
	subl	%ebx, %esi
	leal	-1(%rsi), %eax
	cmpl	$2, %eax
	jbe	.L825
.L820:
	movl	%ebx, %eax
	vmovupd	(%rcx,%rax,8), %ymm7
	vmovupd	%ymm7, (%r14,%rax,8)
	vmovupd	(%rdx,%rax,8), %ymm7
	vmovupd	%ymm7, 0(%r13,%rax,8)
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%esi, %eax
	je	.L952
.L825:
	movl	%ebx, %eax
	movl	-860(%rbp), %edi
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	1(%rbx), %eax
	cmpl	%edi, %eax
	jnb	.L952
	vmovsd	(%rcx,%rax,8), %xmm0
	addl	$2, %ebx
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	cmpl	%ebx, %edi
	jbe	.L952
	vmovsd	(%rcx,%rbx,8), %xmm0
	vmovsd	%xmm0, (%r14,%rbx,8)
	vmovsd	(%rdx,%rbx,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rbx,8)
	vzeroupper
.L823:
	movl	$5, %ebx
	leaq	-672(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	%r12, -920(%rbp)
	movl	%ebx, %r12d
	movl	-860(%rbp), %ebx
.L818:
	movl	$1, %r8d
	movq	%r13, %rcx
	movl	$1, %edx
	movl	%ebx, %edi
	movq	%r14, %rsi
	call	cblas_ddot@PLT
	subl	$1, %r12d
	jne	.L818
	leaq	-656(%rbp), %rsi
	xorl	%edi, %edi
	movl	%r12d, %ebx
	movq	-920(%rbp), %r12
	vmovsd	%xmm0, -1248(%rbp)
	call	clock_gettime@PLT
	movq	-656(%rbp), %rax
	subq	-672(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	$1000000000, %rax, %rax
	addq	-648(%rbp), %rax
	subq	-664(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vaddsd	-1040(%rbp), %xmm0, %xmm7
	movq	-896(%rbp), %rdi
	vmovsd	%xmm7, -1040(%rbp)
	call	malloc@PLT
	movq	-896(%rbp), %rdi
	movq	%rax, %r14
	call	malloc@PLT
	movq	%rax, %r13
	movl	-860(%rbp), %eax
	testl	%eax, %eax
	je	.L834
	movq	-608(%rbp), %rdx
	movq	-640(%rbp), %rcx
	movq	%r13, %rax
	movl	-928(%rbp), %r11d
	leaq	8(%rdx), %rdi
	leaq	8(%rcx), %rsi
	subq	%rdi, %rax
	movq	%r14, %rdi
	cmpq	$48, %rax
	seta	%al
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%dil
	andl	%edi, %eax
	cmpl	$2, %r11d
	seta	%dil
	andl	%edi, %eax
	movq	%r13, %rdi
	subq	%rsi, %rdi
	cmpq	$48, %rdi
	seta	%sil
	testb	%sil, %al
	je	.L870
	leaq	63(%r14), %rax
	subq	%rdx, %rax
	cmpq	$126, %rax
	jbe	.L870
	cmpl	$6, %r11d
	jbe	.L871
	movq	-976(%rbp), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L832:
	vmovupd	(%rcx,%rax), %zmm4
	vmovupd	%zmm4, (%r14,%rax)
	vmovupd	(%rdx,%rax), %zmm6
	vmovupd	%zmm6, 0(%r13,%rax)
	addq	$64, %rax
	cmpq	%rax, %rsi
	jne	.L832
	movl	-860(%rbp), %esi
	movl	-964(%rbp), %ebx
	cmpl	%ebx, %esi
	je	.L955
	subl	%ebx, %esi
	leal	-1(%rsi), %eax
	cmpl	$2, %eax
	jbe	.L836
.L831:
	movl	%ebx, %eax
	vmovupd	(%rcx,%rax,8), %ymm4
	vmovupd	%ymm4, (%r14,%rax,8)
	vmovupd	(%rdx,%rax,8), %ymm7
	vmovupd	%ymm7, 0(%r13,%rax,8)
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %ebx
	cmpl	%esi, %eax
	je	.L955
.L836:
	movl	%ebx, %eax
	movl	-860(%rbp), %edi
	vmovsd	(%rcx,%rax,8), %xmm0
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	1(%rbx), %eax
	cmpl	%edi, %eax
	jnb	.L955
	vmovsd	(%rcx,%rax,8), %xmm0
	addl	$2, %ebx
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	cmpl	%ebx, %edi
	jbe	.L955
	vmovsd	(%rcx,%rbx,8), %xmm0
	vmovsd	%xmm0, (%r14,%rbx,8)
	vmovsd	(%rdx,%rbx,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rbx,8)
	vzeroupper
.L834:
	movq	%r15, %rsi
	xorl	%edi, %edi
	movl	$5, %ebx
	call	clock_gettime@PLT
.L829:
	movq	-888(%rbp), %rdi
	movq	%r13, %rdx
	movq	%r14, %rsi
.LEHB79:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	vmovsd	%xmm0, -952(%rbp)
	subl	$1, %ebx
	jne	.L829
	movq	%r12, %rsi
	xorl	%edi, %edi
	leaq	-256(%rbp), %r15
	call	clock_gettime@PLT
	movq	-512(%rbp), %rax
	movl	$4000, %esi
	movq	%r15, %rdi
	subq	-544(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	$1000000000, %rax, %rax
	addq	-504(%rbp), %rax
	subq	-536(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vaddsd	-1048(%rbp), %xmm0, %xmm7
	vmovsd	%xmm7, -1048(%rbp)
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %r13
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -920(%rbp)
	call	mpfr_init2@PLT
	vmovsd	-856(%rbp), %xmm0
	movq	-880(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r12, %rdi
	call	mpfr_sub_d@PLT
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_set4@PLT
	movq	-944(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-840(%rbp), %xmm0
	movq	-880(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_set4@PLT
	movq	-936(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1248(%rbp), %xmm0
	movq	-880(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_set4@PLT
	movq	-1000(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-952(%rbp), %xmm0
	movq	-880(%rbp), %rsi
	xorl	%edx, %edx
	movq	%r13, %rdi
	call	mpfr_sub_d@PLT
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_set4@PLT
	movq	-1008(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-1224(%rbp), %xmm0
	movq	-880(%rbp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	-984(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	-880(%rbp), %rsi
	movq	-920(%rbp), %rdi
	xorl	%edx, %edx
	vmovsd	-960(%rbp), %xmm0
	call	mpfr_sub_d@PLT
	movq	-920(%rbp), %rsi
	movq	-880(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	-920(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	-992(%rbp), %rsi
	movq	-920(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	%r15, %rdi
	call	mpfr_clear@PLT
	movq	%r14, %rdi
	call	mpfr_clear@PLT
	movq	%r13, %rdi
	call	mpfr_clear@PLT
	movq	%r12, %rdi
	call	mpfr_clear@PLT
	movq	%rbx, %rdi
	call	mpfr_clear@PLT
	movq	-920(%rbp), %rdi
	call	mpfr_clear@PLT
.LEHE79:
	movq	-576(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L839
	movq	-560(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L839:
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	-1112(%rbp), %rax
	subq	-1120(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	-1128(%rbp), %rax
	subq	-1136(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	movq	-1144(%rbp), %rdx
	subq	-1152(%rbp), %rdx
	vaddsd	-1064(%rbp), %xmm0, %xmm4
	addl	$1, -924(%rbp)
	addq	%rdx, %rax
	movq	-1176(%rbp), %rdx
	subq	-1184(%rbp), %rdx
	vmovsd	%xmm4, -1064(%rbp)
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	-1160(%rbp), %rax
	subq	-1168(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	vaddsd	-1072(%rbp), %xmm0, %xmm6
	vmovsd	%xmm6, -1072(%rbp)
	addq	%rdx, %rax
	movq	-1208(%rbp), %rdx
	subq	-1216(%rbp), %rdx
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	-1192(%rbp), %rax
	subq	-1200(%rbp), %rax
	imulq	$1000000000, %rax, %rax
	vaddsd	-1080(%rbp), %xmm0, %xmm7
	vmovsd	%xmm7, -1080(%rbp)
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	vaddsd	-1088(%rbp), %xmm0, %xmm4
	movl	-924(%rbp), %eax
	vmovsd	%xmm4, -1088(%rbp)
	cmpl	-968(%rbp), %eax
	jne	.L840
.L769:
	movslq	-968(%rbp), %r12
	vxorpd	%xmm7, %xmm7, %xmm7
	xorl	%ecx, %ecx
	vmovsd	-1080(%rbp), %xmm2
	vmovsd	-1048(%rbp), %xmm6
	movq	-944(%rbp), %rsi
	leal	(%r12,%r12,4), %eax
	vmovhpd	-1088(%rbp), %xmm2, %xmm2
	movq	%r12, %rdx
	vmovd	%eax, %xmm3
	movq	%rsi, %rdi
	vpinsrd	$1, %eax, %xmm3, %xmm0
	vmovd	%r12d, %xmm3
	vpinsrd	$1, %eax, %xmm3, %xmm3
	vpunpcklqdq	%xmm0, %xmm3, %xmm3
	vcvtsi2sdl	%eax, %xmm7, %xmm0
	vmovsd	-1064(%rbp), %xmm7
	movq	-1232(%rbp), %rax
	vcvtdq2pd	%xmm3, %ymm3
	vmovhpd	-1072(%rbp), %xmm7, %xmm1
	movq	(%rax), %rax
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1
	vmovsd	-1056(%rbp), %xmm2
	vdivpd	%ymm3, %ymm1, %ymm1
	vmovddup	%xmm0, %xmm0
	vunpckhpd	%xmm3, %xmm3, %xmm3
	vdivsd	%xmm3, %xmm6, %xmm3
	vmovupd	%ymm1, (%rax)
	vmovhpd	-1040(%rbp), %xmm2, %xmm1
	vdivpd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm3, 48(%rax)
	vmovupd	%xmm0, 32(%rax)
	vzeroupper
.LEHB80:
	call	mpfr_div_si@PLT
	movq	-936(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-984(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-992(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1000(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1008(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-1240(%rbp), %rbx
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	-472(%rbp), %ecx
	xorl	%edx, %edx
	movq	-944(%rbp), %rsi
	leaq	32(%rax), %rdi
	movq	%rax, -856(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-440(%rbp), %ecx
	xorl	%edx, %edx
	movq	-936(%rbp), %rsi
	leaq	64(%rax), %rdi
	movq	%rax, -856(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-408(%rbp), %ecx
	xorl	%edx, %edx
	movq	-984(%rbp), %rsi
	leaq	96(%rax), %rdi
	movq	%rax, -856(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-376(%rbp), %ecx
	xorl	%edx, %edx
	movq	-992(%rbp), %rsi
	leaq	128(%rax), %rdi
	movq	%rax, -856(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-344(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1000(%rbp), %rsi
	leaq	160(%rax), %rdi
	movq	%rax, -856(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	-312(%rbp), %ecx
	xorl	%edx, %edx
	movq	-1008(%rbp), %rsi
	addq	$192, %rdi
	call	mpfr_set4@PLT
.LEHE80:
	movq	-608(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L841
	movq	-592(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L841:
	movq	-640(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L764
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L764:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L972
	addq	$1216, %rsp
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
.L863:
	.cfi_restore_state
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L790
	.p2align 4,,10
	.p2align 3
.L864:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L794
	.p2align 4,,10
	.p2align 3
.L799:
	subl	$1, %ebx
	jne	.L802
	jmp	.L801
	.p2align 4,,10
	.p2align 3
.L865:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L804
	.p2align 4,,10
	.p2align 3
.L866:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L808
	.p2align 4,,10
	.p2align 3
.L813:
	subl	$1, %r14d
	jne	.L816
	jmp	.L815
	.p2align 4,,10
	.p2align 3
.L967:
	movq	$0x000000000, -856(%rbp)
	jmp	.L789
.L862:
	movq	$0x000000000, -856(%rbp)
	xorl	%eax, %eax
	jmp	.L782
.L766:
	movq	$0, -624(%rbp)
	xorl	%ebx, %ebx
	movq	$0, -608(%rbp)
	movq	$0, -592(%rbp)
	jmp	.L768
.L955:
	vzeroupper
	jmp	.L834
.L952:
	vzeroupper
	jmp	.L823
.L968:
	testq	%r12, %r12
	jns	.L792
.LEHB81:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE81:
.L969:
	testq	%r12, %r12
	jns	.L796
.LEHB82:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE82:
.L859:
	movq	%rdi, %rbx
	jmp	.L767
.L792:
.LEHB83:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE83:
.L796:
.LEHB84:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE84:
.L966:
	movq	%rdi, %rbx
	jmp	.L768
.L970:
	testq	%r13, %r13
	jns	.L806
.LEHB85:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE85:
.L971:
	testq	%r13, %r13
	jns	.L810
.LEHB86:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE86:
.L861:
	movq	$0x000000000, -1048(%rbp)
	movq	$0x000000000, -1040(%rbp)
	movq	$0x000000000, -1056(%rbp)
	movq	$0x000000000, -1088(%rbp)
	movq	$0x000000000, -1080(%rbp)
	movq	$0x000000000, -1072(%rbp)
	movq	$0x000000000, -1064(%rbp)
	jmp	.L769
.L870:
	movq	-1096(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L830:
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	%rax, %rsi
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpq	%rdi, %rsi
	jne	.L830
	jmp	.L834
.L867:
	movq	-1096(%rbp), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L819:
	vmovsd	(%rcx,%rax,8), %xmm0
	movq	%rax, %rsi
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpq	%rdi, %rsi
	jne	.L819
	jmp	.L823
.L806:
.LEHB87:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE87:
.L810:
.LEHB88:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE88:
.L871:
	movl	-860(%rbp), %esi
	jmp	.L831
.L868:
	movl	-860(%rbp), %esi
	jmp	.L820
.L965:
	leaq	.LC7(%rip), %rdi
.LEHB89:
	call	_ZSt20__throw_length_errorPKc@PLT
.L972:
	call	__stack_chk_fail@PLT
.L879:
	endbr64
	movq	%rax, %rbx
	jmp	.L853
.L874:
	endbr64
	movq	%rax, %rbx
	jmp	.L847
.L875:
	endbr64
.L961:
	movq	%rax, %rbx
	jmp	.L850
.L848:
	movq	-544(%rbp), %rdi
	movq	-528(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L850
	vzeroupper
	call	_ZdlPvm@PLT
.L850:
	movq	-512(%rbp), %rdi
	movq	-496(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L847
	vzeroupper
	call	_ZdlPvm@PLT
.L847:
	movq	-576(%rbp), %rdi
	movq	-560(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L853
	vzeroupper
	call	_ZdlPvm@PLT
.L853:
	movq	-608(%rbp), %rdi
	movq	-592(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L855
	vzeroupper
	call	_ZdlPvm@PLT
.L855:
	movq	-640(%rbp), %rdi
	movq	-624(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L956
	vzeroupper
	call	_ZdlPvm@PLT
.L856:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE89:
.L956:
	vzeroupper
	jmp	.L856
.L877:
	endbr64
	jmp	.L961
.L878:
	endbr64
.L964:
	movq	%rax, %rbx
	jmp	.L848
.L873:
	endbr64
	movq	%rax, %rbx
	jmp	.L855
.L876:
	endbr64
	jmp	.L964
	.cfi_endproc
.LFE4298:
	.section	.gcc_except_table
.LLSDA4298:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4298-.LLSDACSB4298
.LLSDACSB4298:
	.uleb128 .LEHB71-.LFB4298
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB4298
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L873-.LFB4298
	.uleb128 0
	.uleb128 .LEHB73-.LFB4298
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB74-.LFB4298
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L875-.LFB4298
	.uleb128 0
	.uleb128 .LEHB75-.LFB4298
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L876-.LFB4298
	.uleb128 0
	.uleb128 .LEHB76-.LFB4298
	.uleb128 .LEHE76-.LEHB76
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB77-.LFB4298
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L877-.LFB4298
	.uleb128 0
	.uleb128 .LEHB78-.LFB4298
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L878-.LFB4298
	.uleb128 0
	.uleb128 .LEHB79-.LFB4298
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB80-.LFB4298
	.uleb128 .LEHE80-.LEHB80
	.uleb128 .L879-.LFB4298
	.uleb128 0
	.uleb128 .LEHB81-.LFB4298
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB82-.LFB4298
	.uleb128 .LEHE82-.LEHB82
	.uleb128 .L875-.LFB4298
	.uleb128 0
	.uleb128 .LEHB83-.LFB4298
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB84-.LFB4298
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L875-.LFB4298
	.uleb128 0
	.uleb128 .LEHB85-.LFB4298
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB86-.LFB4298
	.uleb128 .LEHE86-.LEHB86
	.uleb128 .L877-.LFB4298
	.uleb128 0
	.uleb128 .LEHB87-.LFB4298
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L874-.LFB4298
	.uleb128 0
	.uleb128 .LEHB88-.LFB4298
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L877-.LFB4298
	.uleb128 0
	.uleb128 .LEHB89-.LFB4298
	.uleb128 .LEHE89-.LEHB89
	.uleb128 0
	.uleb128 0
.LLSDACSE4298:
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_compare_dot_prod.cc, @function
_GLOBAL__sub_I_compare_dot_prod.cc:
.LFB4734:
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
.LFE4734:
	.size	_GLOBAL__sub_I_compare_dot_prod.cc, .-_GLOBAL__sub_I_compare_dot_prod.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_compare_dot_prod.cc
	.weak	_ZTSN4blas5ErrorE
	.section	.rodata._ZTSN4blas5ErrorE,"aG",@progbits,_ZTSN4blas5ErrorE,comdat
	.align 8
	.type	_ZTSN4blas5ErrorE, @object
	.size	_ZTSN4blas5ErrorE, 14
_ZTSN4blas5ErrorE:
	.string	"N4blas5ErrorE"
	.weak	_ZTIN4blas5ErrorE
	.section	.data.rel.ro._ZTIN4blas5ErrorE,"awG",@progbits,_ZTIN4blas5ErrorE,comdat
	.align 8
	.type	_ZTIN4blas5ErrorE, @object
	.size	_ZTIN4blas5ErrorE, 24
_ZTIN4blas5ErrorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN4blas5ErrorE
	.quad	_ZTISt9exception
	.weak	_ZTVN4blas5ErrorE
	.section	.data.rel.ro.local._ZTVN4blas5ErrorE,"awG",@progbits,_ZTVN4blas5ErrorE,comdat
	.align 8
	.type	_ZTVN4blas5ErrorE, @object
	.size	_ZTVN4blas5ErrorE, 40
_ZTVN4blas5ErrorE:
	.quad	0
	.quad	_ZTIN4blas5ErrorE
	.quad	_ZN4blas5ErrorD1Ev
	.quad	_ZN4blas5ErrorD0Ev
	.quad	_ZNK4blas5Error4whatEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
