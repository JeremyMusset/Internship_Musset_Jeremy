	.file	"correct_rounding.cc"
	.text
	.globl	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.type	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_, @function
_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_:
.LFB912:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movl	$5000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-48(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movq	-96(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	$0, -52(%rbp)
	jmp	.L2
.L3:
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	leaq	(%rcx,%rax), %rsi
	leaq	-48(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_mul@PLT
	leaq	-48(%rbp), %rax
	movq	-96(%rbp), %rsi
	movq	-96(%rbp), %rdi
	movl	$0, %ecx
	movq	%rax, %rdx
	call	mpfr_add@PLT
	incl	-52(%rbp)
.L2:
	movl	-52(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L3
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L4
	call	__stack_chk_fail@PLT
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE912:
	.size	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_, .-_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.section	.rodata
.LC1:
	.string	"r+"
	.text
	.globl	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
	.type	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc, @function
_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc:
.LFB913:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$1904, %rsp
	movq	%rdi, -10072(%rbp)
	movq	%rsi, -10080(%rbp)
	movq	%rdx, -10088(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-10048(%rbp), %rax
	movl	$5000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-10088(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -10056(%rbp)
	movq	-10056(%rbp), %rdx
	leaq	-10016(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-10016(%rbp), %rsi
	leaq	-10048(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	mpfr_set_str@PLT
	leaq	-10048(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vcvttsd2sil	%xmm0, %eax
	movl	%eax, -10060(%rbp)
	movl	-10060(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-10072(%rbp), %rax
	movq	%rdx, (%rax)
	movl	-10060(%rbp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, %rdx
	movq	-10080(%rbp), %rax
	movq	%rdx, (%rax)
	movl	$0, -10064(%rbp)
	jmp	.L6
.L7:
	movq	-10072(%rbp), %rax
	movq	(%rax), %rdx
	movl	-10064(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	$5000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-10056(%rbp), %rdx
	leaq	-10016(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	movq	-10072(%rbp), %rax
	movq	(%rax), %rdx
	movl	-10064(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-10016(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rsi
	call	mpfr_set_str@PLT
	incl	-10064(%rbp)
.L6:
	movl	-10064(%rbp), %eax
	cmpl	-10060(%rbp), %eax
	jl	.L7
	movl	$0, -10064(%rbp)
	jmp	.L8
.L9:
	movq	-10080(%rbp), %rax
	movq	(%rax), %rdx
	movl	-10064(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rdx, %rax
	movl	$5000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-10056(%rbp), %rdx
	leaq	-10016(%rbp), %rax
	movl	$10000, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	movq	-10080(%rbp), %rax
	movq	(%rax), %rdx
	movl	-10064(%rbp), %eax
	cltq
	salq	$5, %rax
	leaq	(%rdx,%rax), %rdi
	leaq	-10016(%rbp), %rax
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rsi
	call	mpfr_set_str@PLT
	incl	-10064(%rbp)
.L8:
	movl	-10064(%rbp), %eax
	cmpl	-10060(%rbp), %eax
	jl	.L9
	movq	-10056(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-10060(%rbp), %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE913:
	.size	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc, .-_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	0
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
