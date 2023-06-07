	.file	"compare_time_vec4.cpp"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.text
	.align 2
	.p2align 4
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0:
.LFB6069:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %rax
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	shrq	$60, %rax
	jne	.L10
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	vmovdqu	%xmm0, (%rdi)
	leaq	0(,%rsi,8), %r13
	testq	%rsi, %rsi
	je	.L3
	movq	%r13, %rdi
	call	_Znwm@PLT
	subq	$1, %rbp
	vmovq	%rax, %xmm1
	leaq	(%rax,%r13), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm1, %xmm1, %xmm0
	movq	%r12, 16(%rbx)
	vmovdqu	%xmm0, (%rbx)
	je	.L5
	cmpq	%rdi, %r12
	je	.L4
	leaq	-8(%r13), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L4:
	movq	%r12, 8(%rbx)
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
.L3:
	.cfi_restore_state
	movq	$0, (%rdi)
	xorl	%r12d, %r12d
	movq	$0, 16(%rdi)
	jmp	.L4
.L5:
	movq	%rdi, %r12
	jmp	.L4
.L10:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6069:
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_:
.LFB5393:
	.cfi_startproc
	endbr64
	movq	%rsi, %rax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	shrq	$58, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jne	.L18
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rsi, %r12
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	vmovdqu	%xmm0, (%rdi)
	salq	$5, %r12
	testq	%rsi, %rsi
	je	.L13
	movq	%r12, %rdi
	call	_Znwm@PLT
	movq	%r12, %rdx
	xorl	%esi, %esi
	leaq	(%rax,%r12), %rbp
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	%rbp, 16(%rbx)
	call	memset@PLT
	movq	%rbp, 8(%rbx)
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
.L13:
	.cfi_restore_state
	xorl	%ebp, %ebp
	movq	$0, (%rdi)
	movq	$0, 16(%rdi)
	movq	%rbp, 8(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE5393:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
	.set	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"\nTime_6_standard = \n {"
.LC9:
	.string	"%.10f"
.LC10:
	.string	"%.10f, "
.LC11:
	.string	"};"
.LC12:
	.string	"\nTime_6_par_standard = \n {"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB14:
	.section	.text.startup,"ax",@progbits
.LHOTB14:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB4972:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4972
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	movl	$7, %esi
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	-912(%rbp), %r14
	leaq	-880(%rbp), %r15
	pushq	%r13
	movq	%r14, %rdi
	pushq	%r12
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	-272(%rbp), %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$960, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE0:
	movq	%r12, %rdx
	movl	$7, %esi
	movq	%r15, %rdi
.LEHB1:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE1:
	leaq	-848(%rbp), %rdi
	movl	$2, %esi
.LEHB2:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE2:
	leaq	-816(%rbp), %rdi
	movq	%r12, %rdx
	movl	$2, %esi
.LEHB3:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE3:
	leaq	-784(%rbp), %rdi
	movl	$2, %esi
.LEHB4:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE4:
	leaq	-752(%rbp), %rdi
	movq	%r12, %rdx
	movl	$2, %esi
.LEHB5:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE5:
	leaq	-720(%rbp), %rdi
	movl	$2, %esi
.LEHB6:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE6:
	leaq	-688(%rbp), %rdi
	movq	%r12, %rdx
	movl	$2, %esi
.LEHB7:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE7:
	xorl	%ebx, %ebx
	movl	$224, %r13d
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-880(%rbp), %rdi
	movl	$4000, %esi
	addq	%rbx, %rdi
.LEHB8:
	call	mpfr_init2@PLT
	addq	$32, %rbx
	cmpq	%rbx, %r13
	jne	.L23
	movq	-816(%rbp), %rax
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movq	%rax, -968(%rbp)
	movq	-752(%rbp), %rax
	movq	%rax, -976(%rbp)
	movq	-688(%rbp), %rax
	movq	%rax, -984(%rbp)
.L26:
	movq	-968(%rbp), %rax
	movl	$4000, %esi
	leaq	(%rax,%rbx), %rdi
	call	mpfr_init2@PLT
	movq	-976(%rbp), %rax
	movl	$4000, %esi
	leaq	(%rax,%rbx), %rdi
	call	mpfr_init2@PLT
	movq	-984(%rbp), %rax
	movl	$4000, %esi
	leaq	(%rax,%rbx), %rdi
	call	mpfr_init2@PLT
	addl	$1, %r13d
	addq	$32, %rbx
	cmpl	$2, %r13d
	jne	.L26
	leaq	-656(%rbp), %rdi
	movl	$20, %esi
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE8:
	leaq	-624(%rbp), %rdi
	movl	$20, %esi
.LEHB9:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE9:
	leaq	-592(%rbp), %rdi
	movl	$20, %esi
.LEHB10:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE10:
	leaq	-560(%rbp), %rdi
	movl	$20, %esi
.LEHB11:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE11:
	leaq	-528(%rbp), %rdi
	movl	$20, %esi
.LEHB12:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE12:
	leaq	-496(%rbp), %rdi
	movl	$20, %esi
.LEHB13:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE13:
	leaq	-464(%rbp), %rdi
	movl	$20, %esi
.LEHB14:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE14:
	movl	$320, %edi
.LEHB15:
	call	_Znwm@PLT
.LEHE15:
	leaq	24(%rax), %rdi
	leaq	16(%rax), %rcx
	fldz
	movl	$20, %esi
	andq	$-8, %rdi
	movq	%rax, -992(%rbp)
	subq	%rdi, %rcx
	fstpt	(%rax)
	addl	$304, %ecx
	movq	$0, 16(%rax)
	shrl	$3, %ecx
	movq	$0, 312(%rax)
	xorl	%eax, %eax
	rep stosq
	leaq	-432(%rbp), %rdi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE16:
	leaq	-400(%rbp), %rdi
	movl	$20, %esi
.LEHB17:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE17:
	leaq	-368(%rbp), %rdi
	movl	$20, %esi
.LEHB18:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE18:
	leaq	-336(%rbp), %rdi
	movl	$20, %esi
.LEHB19:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE19:
	leaq	-304(%rbp), %rdi
	movl	$20, %esi
.LEHB20:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE20:
	movl	$20, %esi
	movq	%r12, %rdi
.LEHB21:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE21:
	movq	-656(%rbp), %r12
	movq	-640(%rbp), %r13
	vmovapd	.LC3(%rip), %zmm0
	subq	%r12, %r13
	vmovapd	%zmm0, -240(%rbp)
	vmovapd	.LC4(%rip), %zmm0
	vmovapd	%zmm0, -176(%rbp)
	vmovapd	.LC5(%rip), %ymm0
	vmovapd	%ymm0, -112(%rbp)
	cmpq	$159, %r13
	ja	.L30
	movl	$160, %edi
	vzeroupper
.LEHB22:
	call	_Znwm@PLT
	leaq	-240(%rbp), %rsi
	movl	$40, %ecx
	movq	%rax, %rdi
	movq	%rax, %rbx
	rep movsl
	testq	%r12, %r12
	je	.L31
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L31:
	leaq	160(%rbx), %rax
	vmovq	%rbx, %xmm2
	movq	%rax, -640(%rbp)
	vpinsrq	$1, %rax, %xmm2, %xmm0
	vmovdqa	%xmm0, -656(%rbp)
.L32:
	movq	-592(%rbp), %rdx
	movq	-656(%rbp), %rax
	xorl	%ebx, %ebx
	movq	-648(%rbp), %rcx
	movq	-624(%rbp), %r12
	movq	%rdx, -936(%rbp)
	movq	-528(%rbp), %rdx
	movq	%rax, -920(%rbp)
	movq	-560(%rbp), %r13
	movq	%rdx, -944(%rbp)
	movq	-496(%rbp), %rdx
	movq	%rcx, -960(%rbp)
	movq	%rdx, -952(%rbp)
	movq	-464(%rbp), %rdx
	movq	%rdx, -928(%rbp)
	cmpq	%rcx, %rax
	je	.L38
	.p2align 4,,10
	.p2align 3
.L36:
	movq	-920(%rbp), %rax
	movq	.LC7(%rip), %rsi
	movq	%r15, %rcx
	movl	$8, %r9d
	movq	.LC8(%rip), %r10
	movl	$3, %r8d
	movq	%r14, %rdx
	vcvttsd2sil	(%rax,%rbx), %edi
	vmovq	%rsi, %xmm1
	movl	$5, %esi
	vmovq	%r10, %xmm0
	call	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii@PLT
	movq	-912(%rbp), %rax
	movq	-936(%rbp), %rdx
	movq	-944(%rbp), %rcx
	vmovsd	8(%rax), %xmm0
	vmovsd	%xmm0, (%r12,%rbx)
	vmovsd	16(%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rbx)
	vmovsd	24(%rax), %xmm0
	movq	-952(%rbp), %rdx
	vmovsd	%xmm0, 0(%r13,%rbx)
	vmovsd	32(%rax), %xmm0
	vmovsd	%xmm0, (%rcx,%rbx)
	vmovsd	40(%rax), %xmm0
	movq	-928(%rbp), %rcx
	vmovsd	%xmm0, (%rdx,%rbx)
	vmovsd	48(%rax), %xmm0
	movq	-920(%rbp), %rax
	vmovsd	%xmm0, (%rcx,%rbx)
	addq	$8, %rbx
	addq	%rbx, %rax
	cmpq	%rax, -960(%rbp)
	jne	.L36
.L38:
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%ebx, %ebx
	leaq	.LC10(%rip), %r14
	leaq	.LC9(%rip), %r15
	jmp	.L37
	.p2align 4,,10
	.p2align 3
.L39:
	vmovsd	(%r12,%rbx,8), %xmm0
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$20, %rbx
	je	.L277
.L37:
	cmpq	$19, %rbx
	jne	.L39
	movq	%r15, %rsi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	152(%r12), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$20, %rbx
	jne	.L37
.L277:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%ebx, %ebx
	leaq	.LC10(%rip), %r14
	leaq	.LC9(%rip), %r15
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L41:
	vmovsd	0(%r13,%rbx,8), %xmm0
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$20, %rbx
	je	.L278
.L43:
	cmpq	$19, %rbx
	jne	.L41
	movq	%r15, %rsi
	movl	$1, %edi
	movl	$1, %eax
	vmovsd	152(%r13), %xmm0
	call	__printf_chk@PLT
	addq	$1, %rbx
	cmpq	$20, %rbx
	jne	.L43
.L278:
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
.LEHE22:
	movq	-272(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L44
	movq	-256(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L44:
	movq	-304(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L45
	movq	-288(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L45:
	movq	-336(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L46
	movq	-320(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L46:
	movq	-368(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L47
	movq	-352(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L47:
	movq	-400(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L48
	movq	-384(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L48:
	movq	-432(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L49
	movq	-416(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L49:
	movq	-992(%rbp), %rdi
	movl	$320, %esi
	call	_ZdlPvm@PLT
	cmpq	$0, -928(%rbp)
	je	.L108
	movq	-928(%rbp), %rdi
	movq	-448(%rbp), %rsi
	subq	-928(%rbp), %rsi
	call	_ZdlPvm@PLT
.L108:
	movq	-952(%rbp), %rax
	testq	%rax, %rax
	je	.L50
	movq	-480(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L50:
	movq	-944(%rbp), %rax
	testq	%rax, %rax
	je	.L51
	movq	-512(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L51:
	testq	%r13, %r13
	je	.L52
	movq	-544(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L52:
	movq	-936(%rbp), %rax
	testq	%rax, %rax
	je	.L53
	movq	-576(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L53:
	testq	%r12, %r12
	je	.L54
	movq	-608(%rbp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L54:
	movq	-920(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L55
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L55:
	movq	-984(%rbp), %rax
	testq	%rax, %rax
	je	.L56
	movq	-672(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L56:
	movq	-720(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L57
	movq	-704(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L57:
	movq	-976(%rbp), %rax
	testq	%rax, %rax
	je	.L58
	movq	-736(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L58:
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L59
	movq	-768(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L59:
	movq	-968(%rbp), %rax
	testq	%rax, %rax
	je	.L60
	movq	-800(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L60:
	movq	-848(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L61
	movq	-832(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L61:
	movq	-880(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L62
	movq	-864(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L62:
	movq	-912(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L63
	movq	-896(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L63:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L279
	addq	$960, %rsp
	xorl	%eax, %eax
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
.L30:
	.cfi_restore_state
	movq	-648(%rbp), %rbx
	leaq	-240(%rbp), %rsi
	movq	%rbx, %rdx
	subq	%r12, %rdx
	cmpq	$159, %rdx
	ja	.L280
	leaq	(%rsi,%rdx), %r13
	movl	$160, %ecx
	cmpq	%rsi, %r13
	jne	.L281
	vzeroupper
.L34:
	movq	%rcx, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%rcx, -920(%rbp)
	call	memcpy@PLT
	movq	-920(%rbp), %rcx
.L35:
	addq	%rcx, %rbx
	movq	%rbx, -648(%rbp)
	jmp	.L32
.L280:
	movq	%r12, %rdi
	addq	$160, %r12
	movl	$40, %ecx
	rep movsl
	cmpq	%r12, %rbx
	je	.L273
	movq	%r12, -648(%rbp)
	vzeroupper
	jmp	.L32
.L273:
	vzeroupper
	jmp	.L32
.L281:
	movq	%r12, %rdi
	vzeroupper
	call	memcpy@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	subq	%r13, %rcx
	cmpq	%rax, %r13
	je	.L35
	jmp	.L34
.L279:
	call	__stack_chk_fail@PLT
.L126:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L79
.L125:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L81
.L124:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L83
.L123:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L85
.L122:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L87
.L121:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L89
.L120:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L91
.L119:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L93
.L118:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L95
.L117:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L97
.L116:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L99
.L115:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L101
.L114:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L103
.L113:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L105
.L134:
	endbr64
	movq	%rax, %rbx
	jmp	.L64
.L133:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L66
.L128:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L76
.L127:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L77
.L132:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L68
.L131:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L70
.L130:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L72
.L129:
	endbr64
	movq	%rax, %rbx
	vzeroupper
	jmp	.L74
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4972:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4972-.LLSDACSB4972
.LLSDACSB4972:
	.uleb128 .LEHB0-.LFB4972
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4972
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L113-.LFB4972
	.uleb128 0
	.uleb128 .LEHB2-.LFB4972
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L114-.LFB4972
	.uleb128 0
	.uleb128 .LEHB3-.LFB4972
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L115-.LFB4972
	.uleb128 0
	.uleb128 .LEHB4-.LFB4972
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L116-.LFB4972
	.uleb128 0
	.uleb128 .LEHB5-.LFB4972
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L117-.LFB4972
	.uleb128 0
	.uleb128 .LEHB6-.LFB4972
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L118-.LFB4972
	.uleb128 0
	.uleb128 .LEHB7-.LFB4972
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L119-.LFB4972
	.uleb128 0
	.uleb128 .LEHB8-.LFB4972
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L120-.LFB4972
	.uleb128 0
	.uleb128 .LEHB9-.LFB4972
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L121-.LFB4972
	.uleb128 0
	.uleb128 .LEHB10-.LFB4972
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L122-.LFB4972
	.uleb128 0
	.uleb128 .LEHB11-.LFB4972
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L123-.LFB4972
	.uleb128 0
	.uleb128 .LEHB12-.LFB4972
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L124-.LFB4972
	.uleb128 0
	.uleb128 .LEHB13-.LFB4972
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L125-.LFB4972
	.uleb128 0
	.uleb128 .LEHB14-.LFB4972
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L126-.LFB4972
	.uleb128 0
	.uleb128 .LEHB15-.LFB4972
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L127-.LFB4972
	.uleb128 0
	.uleb128 .LEHB16-.LFB4972
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L128-.LFB4972
	.uleb128 0
	.uleb128 .LEHB17-.LFB4972
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L129-.LFB4972
	.uleb128 0
	.uleb128 .LEHB18-.LFB4972
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L130-.LFB4972
	.uleb128 0
	.uleb128 .LEHB19-.LFB4972
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L131-.LFB4972
	.uleb128 0
	.uleb128 .LEHB20-.LFB4972
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L132-.LFB4972
	.uleb128 0
	.uleb128 .LEHB21-.LFB4972
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L133-.LFB4972
	.uleb128 0
	.uleb128 .LEHB22-.LFB4972
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L134-.LFB4972
	.uleb128 0
.LLSDACSE4972:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4972
	.type	main.cold, @function
main.cold:
.LFSB4972:
.L64:
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	.cfi_escape 0x10,0x6,0x2,0x76,0
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	-272(%rbp), %rdi
	movq	-256(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L275
	vzeroupper
	call	_ZdlPvm@PLT
.L66:
	movq	-304(%rbp), %rdi
	movq	-288(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L68
	call	_ZdlPvm@PLT
.L68:
	movq	-336(%rbp), %rdi
	movq	-320(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L70
	call	_ZdlPvm@PLT
.L70:
	movq	-368(%rbp), %rdi
	movq	-352(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L72
	call	_ZdlPvm@PLT
.L72:
	movq	-400(%rbp), %rdi
	movq	-384(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L74
	call	_ZdlPvm@PLT
.L74:
	movq	-432(%rbp), %rdi
	movq	-416(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	jne	.L282
.L75:
	movq	%rbx, %r12
.L76:
	movq	-992(%rbp), %rdi
	movl	$320, %esi
	call	_ZdlPvm@PLT
.L77:
	movq	-464(%rbp), %rdi
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L79
	call	_ZdlPvm@PLT
.L79:
	movq	-496(%rbp), %rdi
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L81
	call	_ZdlPvm@PLT
.L81:
	movq	-528(%rbp), %rdi
	movq	-512(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L83
	call	_ZdlPvm@PLT
.L83:
	movq	-560(%rbp), %rdi
	movq	-544(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L85
	call	_ZdlPvm@PLT
.L85:
	movq	-592(%rbp), %rdi
	movq	-576(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L87
	call	_ZdlPvm@PLT
.L87:
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L89
	call	_ZdlPvm@PLT
.L89:
	movq	-656(%rbp), %rdi
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L91
	call	_ZdlPvm@PLT
.L91:
	movq	-688(%rbp), %rdi
	movq	-672(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L93
	call	_ZdlPvm@PLT
.L93:
	movq	-720(%rbp), %rdi
	movq	-704(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L95
	call	_ZdlPvm@PLT
.L95:
	movq	-752(%rbp), %rdi
	movq	-736(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L97
	call	_ZdlPvm@PLT
.L97:
	movq	-784(%rbp), %rdi
	movq	-768(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L99
	call	_ZdlPvm@PLT
.L99:
	movq	-816(%rbp), %rdi
	movq	-800(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L101
	call	_ZdlPvm@PLT
.L101:
	movq	-848(%rbp), %rdi
	movq	-832(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L103
	call	_ZdlPvm@PLT
.L103:
	movq	-880(%rbp), %rdi
	movq	-864(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L105
	call	_ZdlPvm@PLT
.L105:
	movq	-912(%rbp), %rdi
	movq	-896(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L106
	call	_ZdlPvm@PLT
.L106:
	movq	%r12, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.LEHE23:
.L275:
	vzeroupper
	jmp	.L66
.L282:
	call	_ZdlPvm@PLT
	jmp	.L75
	.cfi_endproc
.LFE4972:
	.section	.gcc_except_table
.LLSDAC4972:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4972-.LLSDACSBC4972
.LLSDACSBC4972:
	.uleb128 .LEHB23-.LCOLDB14
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSEC4972:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE14:
	.section	.text.startup
.LHOTE14:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB6066:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	leaq	__dso_handle(%rip), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	__cxa_atexit@PLT
	leaq	16+_ZN13matplotlibcpp6detailL9s_backendE(%rip), %rax
	movb	$0, 16+_ZN13matplotlibcpp6detailL9s_backendE(%rip)
	movq	%r12, %rdx
	movq	%rax, _ZN13matplotlibcpp6detailL9s_backendE(%rip)
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	leaq	-16(%rax), %rsi
	movq	$0, 8+_ZN13matplotlibcpp6detailL9s_backendE(%rip)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE6066:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZN13matplotlibcpp6detailL9s_backendE
	.comm	_ZN13matplotlibcpp6detailL9s_backendE,32,32
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata
	.align 64
.LC3:
	.long	0
	.long	1085507584
	.long	0
	.long	1086556160
	.long	0
	.long	1087196160
	.long	0
	.long	1087604736
	.long	0
	.long	1087924736
	.long	0
	.long	1088244736
	.long	0
	.long	1088653312
	.long	0
	.long	1088973312
	.align 64
.LC4:
	.long	0
	.long	1089621888
	.long	0
	.long	1090021888
	.long	0
	.long	1091070464
	.long	0
	.long	1091719040
	.long	0
	.long	1092119040
	.long	0
	.long	1092519040
	.long	0
	.long	1092817616
	.long	0
	.long	1093067616
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC5:
	.long	0
	.long	1093317616
	.long	0
	.long	1093567616
	.long	0
	.long	1094116192
	.long	0
	.long	1094616192
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1080623104
	.align 8
.LC8:
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
