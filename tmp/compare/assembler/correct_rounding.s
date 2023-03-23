	.file	"correct_rounding.cc"
	.text
	.p2align 4
	.globl	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.type	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_, @function
_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_:
.LFB978:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movl	%edi, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbx
	movl	$5000, %esi
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %r13
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	testl	%r14d, %r14d
	jle	.L1
	leal	-1(%r14), %eax
	salq	$5, %rax
	leaq	32(%rbx,%rax), %r14
	.p2align 4,,10
	.p2align 3
.L3:
	movq	%rbp, %rdx
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdi
	call	mpfr_mul@PLT
	addq	$32, %rbx
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	addq	$32, %rbp
	call	mpfr_add@PLT
	cmpq	%r14, %rbx
	jne	.L3
.L1:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L9
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE978:
	.size	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_, .-_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"r+"
	.text
	.p2align 4
	.globl	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
	.type	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc, @function
_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc:
.LFB979:
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
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	-98304(%rsp), %r11
	.cfi_def_cfa 11, 98360
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	.cfi_def_cfa_register 7
	subq	$1768, %rsp
	.cfi_def_cfa_offset 100128
	leaq	16(%rsp), %r13
	movq	%rdx, %rbp
	movq	%rdi, %rbx
	movq	%rsi, %r14
	movq	%fs:40, %rax
	movq	%rax, 100056(%rsp)
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$5000, %esi
	call	mpfr_init2@PLT
	movq	%rbp, %rdi
	leaq	.LC1(%rip), %rsi
	leaq	48(%rsp), %rbp
	call	fopen@PLT
	movl	$100000, %esi
	movq	%rbp, %rdi
	movq	%rax, %rdx
	movq	%rax, %r12
	call	fgets@PLT
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	call	mpfr_set_str@PLT
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	mpfr_get_d@PLT
	vcvttsd2sil	%xmm0, %r15d
	movslq	%r15d, %r13
	movl	%r15d, 12(%rsp)
	salq	$5, %r13
	movq	%r13, %rdi
	call	malloc@PLT
	movq	%r13, %rdi
	movq	%rax, (%rbx)
	call	malloc@PLT
	movq	%rax, (%r14)
	testl	%r15d, %r15d
	jle	.L11
	xorl	%r15d, %r15d
	.p2align 4,,10
	.p2align 3
.L12:
	movq	(%rbx), %rdi
	movl	$5000, %esi
	addq	%r15, %rdi
	call	mpfr_init2@PLT
	movq	%r12, %rdx
	movl	$100000, %esi
	movq	%rbp, %rdi
	call	fgets@PLT
	movq	(%rbx), %rdi
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	%rbp, %rsi
	addq	%r15, %rdi
	addq	$32, %r15
	call	mpfr_set_str@PLT
	cmpq	%r13, %r15
	jne	.L12
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L13:
	movq	(%r14), %rdi
	movl	$5000, %esi
	addq	%rbx, %rdi
	call	mpfr_init2@PLT
	movq	%r12, %rdx
	movl	$100000, %esi
	movq	%rbp, %rdi
	call	fgets@PLT
	movq	(%r14), %rdi
	xorl	%ecx, %ecx
	movl	$2, %edx
	movq	%rbp, %rsi
	addq	%rbx, %rdi
	addq	$32, %rbx
	call	mpfr_set_str@PLT
	cmpq	%r13, %rbx
	jne	.L13
.L11:
	movq	%r12, %rdi
	call	fclose@PLT
	movq	100056(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L18
	movl	12(%rsp), %eax
	addq	$100072, %rsp
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
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE979:
	.size	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc, .-_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
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
