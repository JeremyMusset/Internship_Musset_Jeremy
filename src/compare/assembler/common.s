	.file	"common.cc"
	.text
	.section	.text._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"axG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.p2align 4
	.weak	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.type	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, @function
_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii:
.LFB3694:
	.cfi_startproc
	endbr64
	movq	%rdi, %r9
	movslq	%ecx, %rax
	movl	%edx, %edi
	testl	%edx, %edx
	jle	.L25
	cmpl	$1, %eax
	jne	.L3
	cmpl	$1, %r8d
	jne	.L3
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
	jne	.L46
.L4:
	cmpl	$4, %edi
	jle	.L1
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
	jbe	.L8
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
	jmp	.L9
	.p2align 4,,10
	.p2align 3
.L47:
	addq	$80, %rdi
.L9:
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
	jne	.L47
	movl	%r10d, %eax
	andl	$-2, %eax
	leal	(%rax,%rax,4), %ecx
	addl	%ecx, %edx
	cmpl	%r10d, %eax
	je	.L1
.L8:
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
.L3:
	testl	%eax, %eax
	js	.L48
	testl	%r8d, %r8d
	js	.L49
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	cmpl	$1, %r8d
	jne	.L29
	cmpl	$1, %eax
	jne	.L29
	movl	%edi, %r10d
	cmpl	$1, %edi
	je	.L28
	movl	%edi, %edx
	leaq	8(%r9), %r8
	leaq	8(%rcx), %rsi
	xorl	%eax, %eax
	shrl	%edx
	pxor	%xmm0, %xmm0
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L21:
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
	jne	.L21
	andl	$-2, %edi
	movl	%edi, %edx
	leal	1(%rdi), %edi
	movslq	%edi, %rax
	cmpl	%r10d, %edx
	je	.L50
.L20:
	movslq	%edi, %rdi
	movsd	(%rcx,%rax,8), %xmm1
	mulsd	(%r9,%rdi,8), %xmm1
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1:
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	movsd	.LC1(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L46:
	movq	(%r9), %r8
	movq	(%rsi), %rcx
	cmpl	$1, %edx
	je	.L27
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
	jne	.L6
	movupd	16(%rcx), %xmm2
	movupd	16(%r8), %xmm1
	mulpd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm0, %xmm2
	movapd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	jmp	.L4
	.p2align 4,,10
	.p2align 3
.L50:
	ret
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$1, %edx
	subl	%edi, %edx
	imull	%eax, %edx
	leal	1(%rdx), %r10d
	testl	%r8d, %r8d
	jns	.L51
.L13:
	movl	$1, %edx
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	subl	%edi, %edx
	imull	%r8d, %edx
	addl	$1, %edx
.L16:
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
.L19:
	movsd	(%rsi), %xmm1
	mulsd	(%rcx), %xmm1
	addl	$1, %edx
	addq	%rax, %rsi
	addq	%r8, %rcx
	addsd	%xmm1, %xmm0
	cmpl	%edx, %edi
	jne	.L19
	ret
	.p2align 4,,10
	.p2align 3
.L6:
	cmpl	$2, %edx
	je	.L4
	movl	$2, %eax
.L5:
	movsd	(%r8,%rax,8), %xmm1
	mulsd	(%rcx,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	jmp	.L4
.L28:
	movl	$1, %eax
	pxor	%xmm0, %xmm0
	jmp	.L20
.L27:
	xorl	%eax, %eax
	jmp	.L5
.L51:
	movq	(%r9), %r9
	movq	(%rsi), %rcx
	movl	$1, %edx
	jmp	.L16
.L29:
	movl	$1, %edx
	movl	$1, %r10d
	jmp	.L16
.L49:
	movl	$1, %r10d
	jmp	.L13
	.cfi_endproc
.LFE3694:
	.size	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, .-_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_common.cc, @function
_GLOBAL__sub_I_common.cc:
.LFB4030:
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
.LFE4030:
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
