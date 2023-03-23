	.file	"sequential.cc"
	.text
	.section	.rodata._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.p2align 4
	.weak	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.type	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, @function
_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi:
.LFB3789:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3789
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
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
	movslq	%edi, %rbx
	subq	$768, %rsp
	movq	%rdx, -744(%rbp)
	movq	%rcx, -752(%rbp)
	movl	%r8d, -656(%rbp)
	movl	%esi, -584(%rbp)
	movl	$4000, %esi
	movl	%ebx, -580(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	movq	%rax, -648(%rbp)
.LEHB0:
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r12
	movq	%rax, -680(%rbp)
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, -688(%rbp)
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r15
	movq	%rax, -760(%rbp)
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r14
	movq	%rax, -768(%rbp)
	call	mpfr_init2@PLT
	movq	-648(%rbp), %rdi
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
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L197
	leaq	0(,%rbx,8), %r12
	testq	%rbx, %rbx
	je	.L3
	movq	%r12, %rdi
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %r14
	leaq	(%rax,%r12), %rax
	leaq	8(%r14), %rdi
	movq	%rax, -776(%rbp)
	movq	%rax, %r15
	movq	$0x000000000, (%r14)
	movq	%rdi, -616(%rbp)
	cmpq	$1, %rbx
	je	.L4
	cmpq	%rax, %rdi
	je	.L4
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%r15, -616(%rbp)
.L4:
	movq	%r12, %rdi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %r15
	leaq	(%rax,%r12), %rax
	movq	%rax, -696(%rbp)
	leaq	8(%r15), %rax
	movq	$0x000000000, (%r15)
	movq	%rax, -592(%rbp)
	cmpq	$1, %rbx
	je	.L5
	movq	-696(%rbp), %r13
	movq	%rax, %rdi
	cmpq	%rax, %r13
	je	.L5
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%r13, -592(%rbp)
.L5:
	movl	-584(%rbp), %eax
	testl	%eax, %eax
	je	.L91
	movq	-592(%rbp), %rax
	salq	$5, %rbx
	movl	$0, -652(%rbp)
	movq	%rbx, -736(%rbp)
	andq	$-4096, %rbx
	subq	%r15, %rax
	movq	$0x000000000, -728(%rbp)
	movq	%rax, -568(%rbp)
	movq	-616(%rbp), %rax
	movq	$0x000000000, -720(%rbp)
	subq	%r14, %rax
	movq	%rbx, -664(%rbp)
	movq	%rax, -576(%rbp)
	leaq	-448(%rbp), %rax
	movq	$0x000000000, -712(%rbp)
	movq	$0x000000000, -704(%rbp)
	movq	%rax, -672(%rbp)
.L52:
	movl	-656(%rbp), %edx
	movl	-652(%rbp), %esi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rsp, -784(%rbp)
	movq	-672(%rbp), %rdi
	movq	$0, -432(%rbp)
	vmovdqa	%xmm0, -448(%rbp)
.LEHB2:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-580(%rbp), %eax
	testl	%eax, %eax
	je	.L7
	movl	%eax, %edi
	movq	-448(%rbp), %rdx
	leal	1(%rax), %esi
	xorl	%eax, %eax
	movq	%rdi, -624(%rbp)
	.p2align 4,,10
	.p2align 3
.L8:
	vmovsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	vmovsd	%xmm0, (%r14,%rax,8)
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmovsd	%xmm0, (%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L8
	movq	%rsp, %rax
	subq	-664(%rbp), %rax
	cmpq	%rax, %rsp
	je	.L73
.L198:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L198
.L73:
	movq	-736(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	jne	.L199
.L74:
	movq	%rsp, %rax
	movq	%rax, -632(%rbp)
	movq	%rax, -600(%rbp)
	subq	-664(%rbp), %rax
.L75:
	cmpq	%rax, %rsp
	je	.L76
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L75
	.p2align 4,,10
	.p2align 3
.L3:
	movq	$0, -696(%rbp)
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movq	$0, -776(%rbp)
	movq	$0, -616(%rbp)
	movq	$0, -592(%rbp)
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L199:
	orq	$0, -8(%rsp,%rax)
	jmp	.L74
.L76:
	movq	-736(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	jne	.L200
.L77:
	movq	%rsp, %rax
	xorl	%ebx, %ebx
	movq	%rax, -640(%rbp)
	movq	%rax, -608(%rbp)
	.p2align 4,,10
	.p2align 3
.L10:
	movq	-632(%rbp), %rax
	movq	%rbx, %r12
	movl	$4000, %esi
	salq	$5, %r12
	leaq	(%rax,%r12), %r13
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	vmovsd	(%r14,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	addq	-640(%rbp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	vmovsd	(%r15,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	addq	$1, %rbx
	cmpq	-624(%rbp), %rbx
	jne	.L10
.L84:
	leaq	-192(%rbp), %r13
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	leaq	-560(%rbp), %rsi
	xorl	%edi, %edi
	movl	$10, %ebx
	call	clock_gettime@PLT
	.p2align 4,,10
	.p2align 3
.L11:
	movq	-608(%rbp), %rdx
	movq	-600(%rbp), %rsi
	movq	%r13, %rcx
	movl	-580(%rbp), %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	subl	$1, %ebx
	jne	.L11
	leaq	-544(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-536(%rbp), %rax
	leaq	-528(%rbp), %rsi
	xorl	%edi, %edi
	movq	%rax, -640(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -792(%rbp)
	call	clock_gettime@PLT
	movl	$10, -600(%rbp)
.L24:
	movq	-568(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -368(%rbp)
	vmovdqa	%xmm0, -384(%rbp)
	testq	%rax, %rax
	je	.L92
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L201
	movq	%rax, %rdi
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rdi
.L12:
	movq	-568(%rbp), %rdx
	movq	%rdi, -384(%rbp)
	leaq	(%rdi,%rdx), %r12
	movq	%r12, -368(%rbp)
	cmpq	%r15, -592(%rbp)
	je	.L15
	movq	%r15, %rsi
	call	memcpy@PLT
.L15:
	movq	-576(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, -376(%rbp)
	movq	$0, -400(%rbp)
	vmovdqa	%xmm0, -416(%rbp)
	testq	%rax, %rax
	je	.L93
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L202
	movq	%rax, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %rdi
.L16:
	movq	-576(%rbp), %rdx
	movq	%rdi, -416(%rbp)
	leaq	(%rdi,%rdx), %r12
	movq	%r12, -400(%rbp)
	cmpq	-616(%rbp), %r14
	je	.L19
	movq	%r14, %rsi
	call	memcpy@PLT
.L19:
	movq	%r12, -408(%rbp)
	leaq	-416(%rbp), %rbx
	leaq	-384(%rbp), %r12
	movl	-580(%rbp), %edx
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%r12, %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE4:
	movq	-416(%rbp), %rdi
	vmovsd	%xmm0, -608(%rbp)
	testq	%rdi, %rdi
	je	.L20
	movq	-400(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L20:
	movq	-384(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L21
	movq	-368(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, -600(%rbp)
	jne	.L24
.L23:
	leaq	-512(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	-504(%rbp), %rax
	leaq	-496(%rbp), %rsi
	xorl	%edi, %edi
	movq	%rax, -800(%rbp)
	movq	-520(%rbp), %rax
	movq	%rax, -808(%rbp)
	call	clock_gettime@PLT
	movl	$10, -600(%rbp)
.L37:
	movq	-568(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -368(%rbp)
	vmovdqa	%xmm0, -384(%rbp)
	testq	%rax, %rax
	je	.L94
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L203
	movq	%rax, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	%rax, %rdi
.L25:
	movq	-568(%rbp), %rdx
	movq	%rdi, -384(%rbp)
	leaq	(%rdi,%rdx), %rcx
	movq	%rcx, -368(%rbp)
	cmpq	%r15, -592(%rbp)
	je	.L28
	movq	%r15, %rsi
	movq	%rcx, -624(%rbp)
	call	memcpy@PLT
	movq	-624(%rbp), %rcx
.L28:
	movq	-576(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -376(%rbp)
	movq	$0, -400(%rbp)
	vmovdqa	%xmm0, -416(%rbp)
	testq	%rax, %rax
	je	.L95
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L204
	movq	%rax, %rdi
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %rdi
.L29:
	movq	-576(%rbp), %rdx
	movq	%rdi, -416(%rbp)
	leaq	(%rdi,%rdx), %rcx
	movq	%rcx, -400(%rbp)
	cmpq	-616(%rbp), %r14
	je	.L32
	movq	%r14, %rsi
	movq	%rcx, -624(%rbp)
	call	memcpy@PLT
	movq	-624(%rbp), %rcx
.L32:
	movl	-580(%rbp), %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	%rcx, -408(%rbp)
.LEHB7:
	call	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i@PLT
.LEHE7:
	movq	-416(%rbp), %rdi
	vmovsd	%xmm0, -624(%rbp)
	testq	%rdi, %rdi
	je	.L33
	movq	-400(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L33:
	movq	-384(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L34
	movq	-368(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, -600(%rbp)
	jne	.L37
.L36:
	leaq	-464(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	leaq	-480(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	$10, -600(%rbp)
.L50:
	movq	-568(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, -368(%rbp)
	vmovdqa	%xmm0, -384(%rbp)
	testq	%rax, %rax
	je	.L96
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L205
	movq	%rax, %rdi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %rdi
.L38:
	movq	-568(%rbp), %rdx
	movq	%rdi, -384(%rbp)
	leaq	(%rdi,%rdx), %rcx
	movq	%rcx, -368(%rbp)
	cmpq	%r15, -592(%rbp)
	je	.L41
	movq	%r15, %rsi
	movq	%rcx, -632(%rbp)
	call	memcpy@PLT
	movq	-632(%rbp), %rcx
.L41:
	movq	-576(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, -376(%rbp)
	movq	$0, -400(%rbp)
	vmovdqa	%xmm0, -416(%rbp)
	testq	%rax, %rax
	je	.L97
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L206
	movq	%rax, %rdi
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	movq	%rax, %rdi
.L42:
	movq	-576(%rbp), %rdx
	movq	%rdi, -416(%rbp)
	leaq	(%rdi,%rdx), %rcx
	movq	%rcx, -400(%rbp)
	cmpq	-616(%rbp), %r14
	je	.L45
	movq	%r14, %rsi
	movq	%rcx, -632(%rbp)
	call	memcpy@PLT
	movq	-632(%rbp), %rcx
.L45:
	movl	-580(%rbp), %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	movq	%rcx, -408(%rbp)
.LEHB10:
	call	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i@PLT
.LEHE10:
	movq	-416(%rbp), %rdi
	vmovsd	%xmm0, -632(%rbp)
	testq	%rdi, %rdi
	je	.L46
	movq	-400(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L46:
	movq	-384(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L47
	movq	-368(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, -600(%rbp)
	jne	.L50
.L49:
	movq	%r12, %rsi
	xorl	%edi, %edi
	leaq	-160(%rbp), %r12
	call	clock_gettime@PLT
	vxorpd	%xmm5, %xmm5, %xmm5
	movl	$4000, %esi
	movq	%r12, %rdi
	movq	-456(%rbp), %rax
	subq	-488(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	-376(%rbp), %rax
	subq	-472(%rbp), %rax
	vaddsd	-720(%rbp), %xmm0, %xmm2
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	vaddsd	-728(%rbp), %xmm0, %xmm4
	vmovsd	%xmm2, -720(%rbp)
	vmovsd	%xmm4, -728(%rbp)
.LEHB11:
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -600(%rbp)
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	vmovsd	-608(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r12, %rdi
	call	mpfr_set4@PLT
	movq	-648(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-624(%rbp), %xmm0
	movq	-600(%rbp), %rdi
	xorl	%edx, %edx
	movq	%r13, %rsi
	call	mpfr_sub_d@PLT
	movq	-600(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	-600(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	-680(%rbp), %rsi
	movq	-600(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	vmovsd	-632(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	-688(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
.LEHE11:
	movq	-448(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L51
	movq	-432(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L51:
	movq	-640(%rbp), %rax
	vxorpd	%xmm6, %xmm6, %xmm6
	subq	-792(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	movq	-800(%rbp), %rax
	subq	-808(%rbp), %rax
	vaddsd	-704(%rbp), %xmm0, %xmm2
	vcvtsi2sdq	%rax, %xmm6, %xmm0
	vaddsd	-712(%rbp), %xmm0, %xmm4
	vmovsd	%xmm2, -704(%rbp)
	vmovsd	%xmm4, -712(%rbp)
	movq	-784(%rbp), %rsp
	addl	$1, -652(%rbp)
	movl	-652(%rbp), %eax
	cmpl	-584(%rbp), %eax
	jne	.L52
	.p2align 4,,10
	.p2align 3
.L6:
	movslq	-584(%rbp), %r12
	vxorpd	%xmm7, %xmm7, %xmm7
	xorl	%ecx, %ecx
	vmovsd	-720(%rbp), %xmm3
	vmovsd	-704(%rbp), %xmm4
	movq	-648(%rbp), %rsi
	leal	(%r12,%r12,4), %eax
	vmovhpd	-728(%rbp), %xmm3, %xmm2
	movq	%r12, %rdx
	addl	%eax, %eax
	vmovhpd	-712(%rbp), %xmm4, %xmm0
	movq	%rsi, %rdi
	vcvtsi2sdl	%eax, %xmm7, %xmm1
	vinsertf128	$0x1, %xmm2, %ymm0, %ymm0
	movq	-744(%rbp), %rax
	movq	(%rax), %rax
	vbroadcastsd	%xmm1, %ymm1
	vmovupd	%xmm7, 32(%rax)
	vdivpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rax)
	vzeroupper
.LEHB12:
	call	mpfr_div_si@PLT
	movq	-680(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-688(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	movq	-752(%rbp), %rbx
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	-344(%rbp), %ecx
	xorl	%edx, %edx
	movq	-648(%rbp), %rsi
	leaq	32(%rax), %rdi
	movq	%rax, -568(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-312(%rbp), %ecx
	xorl	%edx, %edx
	movq	-680(%rbp), %rsi
	leaq	64(%rax), %rdi
	movq	%rax, -568(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-280(%rbp), %ecx
	xorl	%edx, %edx
	movq	-688(%rbp), %rsi
	leaq	96(%rax), %rdi
	movq	%rax, -568(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-248(%rbp), %ecx
	xorl	%edx, %edx
	movq	-760(%rbp), %rsi
	leaq	128(%rax), %rdi
	movq	%rax, -568(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	-216(%rbp), %ecx
	xorl	%edx, %edx
	movq	-768(%rbp), %rsi
	addq	$160, %rdi
	call	mpfr_set4@PLT
.LEHE12:
	testq	%r15, %r15
	je	.L53
	movq	-696(%rbp), %rsi
	movq	%r15, %rdi
	subq	%r15, %rsi
	call	_ZdlPvm@PLT
.L53:
	testq	%r14, %r14
	je	.L1
	movq	-776(%rbp), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
.L1:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L207
	leaq	-48(%rbp), %rsp
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
.L92:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L12
	.p2align 4,,10
	.p2align 3
.L93:
	xorl	%edi, %edi
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L21:
	subl	$1, -600(%rbp)
	jne	.L24
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L94:
	xorl	%edi, %edi
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L95:
	xorl	%edi, %edi
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L34:
	subl	$1, -600(%rbp)
	jne	.L37
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L96:
	xorl	%edi, %edi
	jmp	.L38
	.p2align 4,,10
	.p2align 3
.L97:
	xorl	%edi, %edi
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L47:
	subl	$1, -600(%rbp)
	jne	.L50
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L201:
	testq	%rax, %rax
	jns	.L14
.LEHB13:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE13:
	.p2align 4,,10
	.p2align 3
.L202:
	testq	%rax, %rax
	jns	.L18
.LEHB14:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE14:
	.p2align 4,,10
	.p2align 3
.L14:
.LEHB15:
	call	_ZSt17__throw_bad_allocv@PLT
	.p2align 4,,10
	.p2align 3
.L203:
	testq	%rax, %rax
	jns	.L27
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE15:
	.p2align 4,,10
	.p2align 3
.L18:
.LEHB16:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE16:
	.p2align 4,,10
	.p2align 3
.L204:
	testq	%rax, %rax
	jns	.L31
.LEHB17:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE17:
	.p2align 4,,10
	.p2align 3
.L91:
	movq	$0x000000000, -728(%rbp)
	movq	$0x000000000, -720(%rbp)
	movq	$0x000000000, -712(%rbp)
	movq	$0x000000000, -704(%rbp)
	jmp	.L6
.L7:
	movq	%rsp, %rax
	subq	-664(%rbp), %rax
	cmpq	%rax, %rsp
	je	.L79
.L208:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L208
.L79:
	movq	-736(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L80
	orq	$0, -8(%rsp,%rax)
.L80:
	movq	%rsp, %rax
	subq	-664(%rbp), %rax
	movq	%rsp, -600(%rbp)
	cmpq	%rax, %rsp
	je	.L82
.L209:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L209
.L82:
	movq	-736(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L83
	orq	$0, -8(%rsp,%rax)
.L83:
	movq	%rsp, -608(%rbp)
	jmp	.L84
.L27:
.LEHB18:
	call	_ZSt17__throw_bad_allocv@PLT
.L205:
	testq	%rax, %rax
	jns	.L40
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE18:
.L31:
.LEHB19:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE19:
.L206:
	testq	%rax, %rax
	jns	.L44
.LEHB20:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE20:
.L200:
	orq	$0, -8(%rsp,%rax)
	jmp	.L77
.L40:
.LEHB21:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE21:
.L44:
.LEHB22:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE22:
.L197:
	leaq	.LC1(%rip), %rdi
.LEHB23:
	call	_ZSt20__throw_length_errorPKc@PLT
.L207:
	call	__stack_chk_fail@PLT
.L106:
	endbr64
	movq	%rax, %rbx
	jmp	.L69
.L98:
	endbr64
	movq	%rax, %rbx
	jmp	.L86
.L103:
	endbr64
.L195:
	movq	%rax, %rbx
	jmp	.L64
.L105:
	endbr64
	jmp	.L195
.L101:
	endbr64
	jmp	.L195
.L100:
	endbr64
.L191:
	movq	%rax, %rbx
	jmp	.L66
.L102:
	endbr64
	jmp	.L191
.L86:
	movq	%r12, %rsi
	vzeroupper
.L87:
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
.L71:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE23:
.L64:
	movq	-416(%rbp), %rdi
	movq	-400(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L66
	vzeroupper
	call	_ZdlPvm@PLT
.L66:
	movq	-384(%rbp), %rdi
	movq	-368(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L59
	vzeroupper
	call	_ZdlPvm@PLT
.L59:
	movq	-448(%rbp), %rdi
	movq	-432(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L68
	vzeroupper
	call	_ZdlPvm@PLT
.L68:
	movq	-784(%rbp), %rsp
.L69:
	movq	-696(%rbp), %rsi
	subq	%r15, %rsi
	testq	%r15, %r15
	je	.L185
	movq	%r15, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L70:
	movq	-776(%rbp), %rsi
	subq	%r14, %rsi
	testq	%r14, %r14
	jne	.L87
	jmp	.L71
.L99:
	endbr64
	movq	%rax, %rbx
	jmp	.L59
.L104:
	endbr64
	jmp	.L191
.L185:
	vzeroupper
	jmp	.L70
	.cfi_endproc
.LFE3789:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"aG",@progbits,_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
.LLSDA3789:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3789-.LLSDACSB3789
.LLSDACSB3789:
	.uleb128 .LEHB0-.LFB3789
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3789
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L98-.LFB3789
	.uleb128 0
	.uleb128 .LEHB2-.LFB3789
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB3-.LFB3789
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L100-.LFB3789
	.uleb128 0
	.uleb128 .LEHB4-.LFB3789
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L101-.LFB3789
	.uleb128 0
	.uleb128 .LEHB5-.LFB3789
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB6-.LFB3789
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L102-.LFB3789
	.uleb128 0
	.uleb128 .LEHB7-.LFB3789
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L103-.LFB3789
	.uleb128 0
	.uleb128 .LEHB8-.LFB3789
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB9-.LFB3789
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L104-.LFB3789
	.uleb128 0
	.uleb128 .LEHB10-.LFB3789
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L105-.LFB3789
	.uleb128 0
	.uleb128 .LEHB11-.LFB3789
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB12-.LFB3789
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L106-.LFB3789
	.uleb128 0
	.uleb128 .LEHB13-.LFB3789
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB14-.LFB3789
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L100-.LFB3789
	.uleb128 0
	.uleb128 .LEHB15-.LFB3789
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB16-.LFB3789
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L100-.LFB3789
	.uleb128 0
	.uleb128 .LEHB17-.LFB3789
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L102-.LFB3789
	.uleb128 0
	.uleb128 .LEHB18-.LFB3789
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB19-.LFB3789
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L102-.LFB3789
	.uleb128 0
	.uleb128 .LEHB20-.LFB3789
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L104-.LFB3789
	.uleb128 0
	.uleb128 .LEHB21-.LFB3789
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L99-.LFB3789
	.uleb128 0
	.uleb128 .LEHB22-.LFB3789
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L104-.LFB3789
	.uleb128 0
	.uleb128 .LEHB23-.LFB3789
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE3789:
	.section	.text._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .-_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_sequential.cc, @function
_GLOBAL__sub_I_sequential.cc:
.LFB4232:
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
.LFE4232:
	.size	_GLOBAL__sub_I_sequential.cc, .-_GLOBAL__sub_I_sequential.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_sequential.cc
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
