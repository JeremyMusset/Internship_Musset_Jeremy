	.file	"compare_time_vec5.cpp"
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
.LFB6001:
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
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	leaq	0(,%rsi,8), %r13
	testq	%rsi, %rsi
	je	.L3
	movq	%r13, %rdi
	call	_Znwm@PLT
	vpbroadcastq	%rax, %xmm0
	leaq	(%rax,%r13), %r12
	decq	%rbp
	movq	%r12, 16(%rbx)
	movq	$0x000000000, (%rax)
	vmovdqu	%xmm0, (%rbx)
	leaq	8(%rax), %rdi
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
	movq	$0, 16(%rdi)
	xorl	%r12d, %r12d
	jmp	.L4
.L5:
	movq	%rdi, %r12
	jmp	.L4
.L10:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE6001:
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
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %rax
	shrq	$58, %rax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	jne	.L18
	movq	%rsi, %r12
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	%rdi, %rbx
	salq	$5, %r12
	testq	%rsi, %rsi
	je	.L13
	movq	%r12, %rdi
	call	_Znwm@PLT
	leaq	(%rax,%r12), %rbp
	movq	%rbp, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%r12, %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
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
.LC7:
	.string	"\nTime_in2_standard = \n {"
.LC10:
	.string	"%.10f"
.LC11:
	.string	"%.10f, "
.LC12:
	.string	"};"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"\nTime_in2_par_standard = = \n {"
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
	andq	$-32, %rsp
	pushq	-8(%r10)
	movl	$7, %esi
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	leaq	-880(%rbp), %r15
	pushq	%r14
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	leaq	-912(%rbp), %r14
	movq	%r14, %rdi
	pushq	%r13
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	leaq	-272(%rbp), %r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$960, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE0:
	movq	%r13, %rdx
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
	movq	%r13, %rdx
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
	movq	%r13, %rdx
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
	movq	%r13, %rdx
	movl	$2, %esi
.LEHB7:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE7:
	xorl	%ebx, %ebx
	movl	$224, %r12d
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-880(%rbp), %rdi
	movl	$4000, %esi
	addq	%rbx, %rdi
.LEHB8:
	call	mpfr_init2@PLT
	addq	$32, %rbx
	cmpq	%rbx, %r12
	jne	.L23
	movq	-816(%rbp), %rax
	xorl	%r12d, %r12d
	movq	%rax, -968(%rbp)
	movq	-752(%rbp), %rax
	xorl	%ebx, %ebx
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
	incl	%r12d
	addq	$32, %rbx
	cmpl	$2, %r12d
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
	leaq	-432(%rbp), %rdi
	movl	$20, %esi
.LEHB15:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE15:
	leaq	-400(%rbp), %rdi
	movl	$20, %esi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE16:
	leaq	-368(%rbp), %rdi
	movl	$20, %esi
.LEHB17:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE17:
	leaq	-336(%rbp), %rdi
	movl	$20, %esi
.LEHB18:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE18:
	leaq	-304(%rbp), %rdi
	movl	$20, %esi
.LEHB19:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE19:
	movl	$20, %esi
	movq	%r13, %rdi
.LEHB20:
	call	_ZNSt6vectorIdSaIdEEC2EmRKS0_.constprop.0
.LEHE20:
	vmovapd	.LC2(%rip), %ymm0
	movq	-656(%rbp), %r12
	vmovapd	%ymm0, -240(%rbp)
	vmovapd	.LC3(%rip), %ymm0
	movq	-640(%rbp), %r13
	vmovapd	%ymm0, -208(%rbp)
	vmovapd	.LC4(%rip), %ymm0
	subq	%r12, %r13
	vmovapd	%ymm0, -176(%rbp)
	vmovapd	.LC5(%rip), %ymm0
	vmovapd	%ymm0, -144(%rbp)
	vmovapd	.LC6(%rip), %ymm0
	vmovapd	%ymm0, -112(%rbp)
	cmpq	$159, %r13
	ja	.L27
	movl	$160, %edi
	vzeroupper
.LEHB21:
	call	_Znwm@PLT
	leaq	-240(%rbp), %rsi
	movl	$40, %ecx
	movq	%rax, %rdi
	rep movsl
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.L28
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L28:
	leaq	160(%rbx), %rax
	vmovq	%rbx, %xmm2
	movq	%rax, -640(%rbp)
	vpinsrq	$1, %rax, %xmm2, %xmm0
	vmovdqa	%xmm0, -656(%rbp)
.L29:
	movq	-592(%rbp), %rcx
	movq	-656(%rbp), %rax
	movq	%rcx, -928(%rbp)
	movq	-528(%rbp), %rcx
	movq	-648(%rbp), %rdx
	movq	%rcx, -936(%rbp)
	movq	-496(%rbp), %rcx
	movq	%rax, -920(%rbp)
	movq	%rcx, -944(%rbp)
	movq	-464(%rbp), %rcx
	movq	%rdx, -960(%rbp)
	movq	%rcx, -952(%rbp)
	movq	-624(%rbp), %r12
	movq	-560(%rbp), %r13
	xorl	%ebx, %ebx
	cmpq	%rdx, %rax
	je	.L35
	.p2align 4,,10
	.p2align 3
.L33:
	movq	-920(%rbp), %rax
	movq	.LC8(%rip), %rsi
	vcvttsd2sil	(%rax,%rbx), %edi
	movq	.LC9(%rip), %r10
	vmovq	%rsi, %xmm1
	movl	$8, %r9d
	movl	$3, %r8d
	movq	%r15, %rcx
	movq	%r14, %rdx
	movl	$5, %esi
	vmovq	%r10, %xmm0
	call	_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii@PLT
	movq	-912(%rbp), %rax
	movq	-928(%rbp), %rcx
	vmovsd	8(%rax), %xmm0
	movq	-936(%rbp), %rdx
	vmovsd	%xmm0, (%r12,%rbx)
	vmovsd	16(%rax), %xmm0
	vmovsd	%xmm0, (%rcx,%rbx)
	vmovsd	24(%rax), %xmm0
	movq	-944(%rbp), %rcx
	vmovsd	%xmm0, 0(%r13,%rbx)
	vmovsd	32(%rax), %xmm0
	vmovsd	%xmm0, (%rdx,%rbx)
	vmovsd	40(%rax), %xmm0
	movq	-952(%rbp), %rdx
	vmovsd	%xmm0, (%rcx,%rbx)
	vmovsd	48(%rax), %xmm0
	movq	-920(%rbp), %rax
	vmovsd	%xmm0, (%rdx,%rbx)
	addq	$8, %rbx
	addq	%rbx, %rax
	cmpq	%rax, -960(%rbp)
	jne	.L33
.L35:
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%ebx, %ebx
	leaq	.LC11(%rip), %r14
	leaq	.LC10(%rip), %r15
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L36:
	vmovsd	(%r12,%rbx,8), %xmm0
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	incq	%rbx
	cmpq	$20, %rbx
	je	.L274
.L34:
	cmpq	$19, %rbx
	jne	.L36
	vmovsd	152(%r12), %xmm0
	movq	%r15, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	incq	%rbx
	cmpq	$20, %rbx
	jne	.L34
.L274:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%ebx, %ebx
	leaq	.LC11(%rip), %r14
	leaq	.LC10(%rip), %r15
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L38:
	vmovsd	0(%r13,%rbx,8), %xmm0
	movq	%r14, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	incq	%rbx
	cmpq	$20, %rbx
	je	.L275
.L40:
	cmpq	$19, %rbx
	jne	.L38
	vmovsd	152(%r13), %xmm0
	movq	%r15, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	incq	%rbx
	cmpq	$20, %rbx
	jne	.L40
.L275:
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
.LEHE21:
	movq	-272(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L41
	movq	-256(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L41:
	movq	-304(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L42
	movq	-288(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L42:
	movq	-336(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L43
	movq	-320(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L43:
	movq	-368(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L44
	movq	-352(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L44:
	movq	-400(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L45
	movq	-384(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L45:
	movq	-432(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L46
	movq	-416(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L46:
	movq	-952(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L47
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L47:
	movq	-944(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L48
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L48:
	movq	-936(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L49
	movq	-512(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L49:
	testq	%r13, %r13
	je	.L50
	movq	-544(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L50:
	movq	-928(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L51
	movq	-576(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L51:
	testq	%r12, %r12
	je	.L52
	movq	-608(%rbp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L52:
	movq	-920(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L53
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L53:
	movq	-984(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L54
	movq	-672(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L54:
	movq	-720(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L55
	movq	-704(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L55:
	movq	-976(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L56
	movq	-736(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L56:
	movq	-784(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L57
	movq	-768(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L57:
	movq	-968(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L58
	movq	-800(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L58:
	movq	-848(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L59
	movq	-832(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L59:
	movq	-880(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L60
	movq	-864(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L60:
	movq	-912(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L61
	movq	-896(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L61:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L276
	addq	$960, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	xorl	%eax, %eax
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L27:
	.cfi_restore_state
	movq	-648(%rbp), %rbx
	leaq	-240(%rbp), %rsi
	movq	%rbx, %rdx
	subq	%r12, %rdx
	cmpq	$159, %rdx
	ja	.L277
	leaq	(%rsi,%rdx), %r13
	movl	$160, %ecx
	cmpq	%rsi, %r13
	jne	.L278
	vzeroupper
.L31:
	movq	%rcx, %rdx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	movq	%rcx, -920(%rbp)
	call	memcpy@PLT
	movq	-920(%rbp), %rcx
.L32:
	addq	%rcx, %rbx
	movq	%rbx, -648(%rbp)
	jmp	.L29
.L277:
	movq	%r12, %rdi
	movl	$40, %ecx
	addq	$160, %r12
	rep movsl
	cmpq	%r12, %rbx
	je	.L270
	movq	%r12, -648(%rbp)
	vzeroupper
	jmp	.L29
.L270:
	vzeroupper
	jmp	.L29
.L278:
	movq	%r12, %rdi
	vzeroupper
	call	memcpy@PLT
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	subq	%r13, %rcx
	cmpq	%rax, %r13
	je	.L32
	jmp	.L31
.L276:
	call	__stack_chk_fail@PLT
.L128:
	endbr64
	movq	%rax, %r12
	jmp	.L62
.L127:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L64
.L125:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L68
.L126:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L66
.L124:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L70
.L123:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L72
.L122:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L74
.L121:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L76
.L112:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L94
.L111:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L96
.L110:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L98
.L109:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L100
.L114:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L90
.L113:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L92
.L116:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L86
.L115:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L88
.L120:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L78
.L119:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L80
.L118:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L82
.L117:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L84
.L108:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L102
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
	.uleb128 .L108-.LFB4972
	.uleb128 0
	.uleb128 .LEHB2-.LFB4972
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L109-.LFB4972
	.uleb128 0
	.uleb128 .LEHB3-.LFB4972
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L110-.LFB4972
	.uleb128 0
	.uleb128 .LEHB4-.LFB4972
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L111-.LFB4972
	.uleb128 0
	.uleb128 .LEHB5-.LFB4972
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L112-.LFB4972
	.uleb128 0
	.uleb128 .LEHB6-.LFB4972
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L113-.LFB4972
	.uleb128 0
	.uleb128 .LEHB7-.LFB4972
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L114-.LFB4972
	.uleb128 0
	.uleb128 .LEHB8-.LFB4972
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L115-.LFB4972
	.uleb128 0
	.uleb128 .LEHB9-.LFB4972
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L116-.LFB4972
	.uleb128 0
	.uleb128 .LEHB10-.LFB4972
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L117-.LFB4972
	.uleb128 0
	.uleb128 .LEHB11-.LFB4972
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L118-.LFB4972
	.uleb128 0
	.uleb128 .LEHB12-.LFB4972
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L119-.LFB4972
	.uleb128 0
	.uleb128 .LEHB13-.LFB4972
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L120-.LFB4972
	.uleb128 0
	.uleb128 .LEHB14-.LFB4972
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L121-.LFB4972
	.uleb128 0
	.uleb128 .LEHB15-.LFB4972
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L122-.LFB4972
	.uleb128 0
	.uleb128 .LEHB16-.LFB4972
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L123-.LFB4972
	.uleb128 0
	.uleb128 .LEHB17-.LFB4972
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L124-.LFB4972
	.uleb128 0
	.uleb128 .LEHB18-.LFB4972
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L125-.LFB4972
	.uleb128 0
	.uleb128 .LEHB19-.LFB4972
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L126-.LFB4972
	.uleb128 0
	.uleb128 .LEHB20-.LFB4972
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L127-.LFB4972
	.uleb128 0
	.uleb128 .LEHB21-.LFB4972
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L128-.LFB4972
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
.L62:
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
	je	.L272
	vzeroupper
	call	_ZdlPvm@PLT
.L64:
	movq	-304(%rbp), %rdi
	movq	-288(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L66
	call	_ZdlPvm@PLT
.L66:
	movq	-336(%rbp), %rdi
	movq	-320(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L68
	call	_ZdlPvm@PLT
.L68:
	movq	-368(%rbp), %rdi
	movq	-352(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L70
	call	_ZdlPvm@PLT
.L70:
	movq	-400(%rbp), %rdi
	movq	-384(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L72
	call	_ZdlPvm@PLT
.L72:
	movq	-432(%rbp), %rdi
	movq	-416(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L74
	call	_ZdlPvm@PLT
.L74:
	movq	-464(%rbp), %rdi
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L76
	call	_ZdlPvm@PLT
.L76:
	movq	-496(%rbp), %rdi
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L78
	call	_ZdlPvm@PLT
.L78:
	movq	-528(%rbp), %rdi
	movq	-512(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L80
	call	_ZdlPvm@PLT
.L80:
	movq	-560(%rbp), %rdi
	movq	-544(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L82
	call	_ZdlPvm@PLT
.L82:
	movq	-592(%rbp), %rdi
	movq	-576(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L84
	call	_ZdlPvm@PLT
.L84:
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L86
	call	_ZdlPvm@PLT
.L86:
	movq	-656(%rbp), %rdi
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L88
	call	_ZdlPvm@PLT
.L88:
	movq	-688(%rbp), %rdi
	movq	-672(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L90
	call	_ZdlPvm@PLT
.L90:
	movq	-720(%rbp), %rdi
	movq	-704(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L92
	call	_ZdlPvm@PLT
.L92:
	movq	-752(%rbp), %rdi
	movq	-736(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L94
	call	_ZdlPvm@PLT
.L94:
	movq	-784(%rbp), %rdi
	movq	-768(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L96
	call	_ZdlPvm@PLT
.L96:
	movq	-816(%rbp), %rdi
	movq	-800(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L98
	call	_ZdlPvm@PLT
.L98:
	movq	-848(%rbp), %rdi
	movq	-832(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L100
	call	_ZdlPvm@PLT
.L100:
	movq	-880(%rbp), %rdi
	movq	-864(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L102
	call	_ZdlPvm@PLT
.L102:
	movq	-912(%rbp), %rdi
	movq	-896(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L103
	call	_ZdlPvm@PLT
.L103:
	movq	%r12, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L272:
	vzeroupper
	jmp	.L64
	.cfi_endproc
.LFE4972:
	.section	.gcc_except_table
.LLSDAC4972:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4972-.LLSDACSBC4972
.LLSDACSBC4972:
	.uleb128 .LEHB22-.LCOLDB14
	.uleb128 .LEHE22-.LEHB22
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
.LFB5999:
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
	movq	%rax, _ZN13matplotlibcpp6detailL9s_backendE(%rip)
	movq	$0, 8+_ZN13matplotlibcpp6detailL9s_backendE(%rip)
	movb	$0, 16+_ZN13matplotlibcpp6detailL9s_backendE(%rip)
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	movq	%r12, %rdx
	leaq	-16(%rax), %rsi
	popq	%r12
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE5999:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZN13matplotlibcpp6detailL9s_backendE
	.comm	_ZN13matplotlibcpp6detailL9s_backendE,32,32
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC2:
	.long	0
	.long	1085507584
	.long	0
	.long	1086556160
	.long	0
	.long	1087196160
	.long	0
	.long	1087604736
	.align 32
.LC3:
	.long	0
	.long	1087924736
	.long	0
	.long	1088244736
	.long	0
	.long	1088653312
	.long	0
	.long	1088973312
	.align 32
.LC4:
	.long	0
	.long	1089621888
	.long	0
	.long	1090021888
	.long	0
	.long	1091070464
	.long	0
	.long	1091719040
	.align 32
.LC5:
	.long	0
	.long	1092119040
	.long	0
	.long	1092519040
	.long	0
	.long	1092817616
	.long	0
	.long	1093067616
	.align 32
.LC6:
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
.LC8:
	.long	0
	.long	1080623104
	.align 8
.LC9:
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
