	.file	"parallelisation.cc"
	.text
	.section	.rodata._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.p2align 4
	.type	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0, @function
_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0:
.LFB4295:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4295
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
	subq	$552, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	72(%rdi), %ecx
	movl	76(%rdi), %r12d
	movq	%rdi, -472(%rbp)
	movl	84(%rdi), %ebx
	movl	80(%rdi), %r14d
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	%ecx, -424(%rbp)
	testl	%r12d, %r12d
	je	.L1
	call	omp_get_num_threads@PLT
	movl	%eax, %r13d
	call	omp_get_thread_num@PLT
	xorl	%edx, %edx
	movl	%eax, %esi
	movl	%r12d, %eax
	divl	%r13d
	cmpl	%edx, %esi
	jb	.L3
.L61:
	movl	%eax, %ecx
	imull	%esi, %ecx
	addl	%ecx, %edx
	leal	(%rax,%rdx), %ecx
	cmpl	%ecx, %edx
	jnb	.L1
	movl	%ebx, %edi
	movl	%esi, %ecx
	imull	%esi, %edi
	cmpl	%esi, %r14d
	cmovle	%r14d, %ecx
	addl	%ecx, %edi
	xorl	%ecx, %ecx
	addl	%edi, %ebx
	cmpl	%esi, %r14d
	movl	%edi, -492(%rbp)
	setg	%cl
	subl	$1, %eax
	addl	%ecx, %ebx
	leaq	1(%rdx,%rax), %rax
	movl	%ebx, -496(%rbp)
	subl	%edi, %ebx
	salq	$3, %rax
	movl	%ebx, -420(%rbp)
	movslq	%ebx, %rbx
	leaq	0(,%rbx,8), %rsi
	movq	%rbx, -480(%rbp)
	salq	$5, %rbx
	movq	%rax, -576(%rbp)
	leal	1(%rdi), %eax
	movq	%rsi, -504(%rbp)
	salq	$3, %rax
	leaq	0(,%rdx,8), %rsi
	movq	%rbx, -560(%rbp)
	andq	$-4096, %rbx
	movq	%rsi, -488(%rbp)
	movq	%rax, -544(%rbp)
	movq	%rbx, -512(%rbp)
.L23:
	movq	-480(%rbp), %rax
	movq	%rsp, -568(%rbp)
	shrq	$60, %rax
	jne	.L106
	movq	-480(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L6
	movq	-504(%rbp), %r15
	movq	%r15, %rdi
	call	_Znwm@PLT
	leaq	(%rax,%r15), %rcx
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	movq	%rax, %r13
	movq	%rcx, -552(%rbp)
	movq	%rdi, -464(%rbp)
	cmpq	$1, %rbx
	je	.L7
	cmpq	%rcx, %rdi
	je	.L65
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%r15, -440(%rbp)
	movq	%r15, -416(%rbp)
.L8:
	movq	-504(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	%rax, %r12
	leaq	(%rax,%rbx), %rax
	leaq	8(%r12), %rdi
	movq	%rax, -448(%rbp)
	movq	$0x000000000, (%r12)
	cmpq	%rax, %rdi
	je	.L107
	movq	-504(%rbp), %rbx
	xorl	%esi, %esi
	leaq	-8(%rbx), %rdx
	call	memset@PLT
	movq	-448(%rbp), %rax
	movq	%rbx, -432(%rbp)
	movq	%rbx, -408(%rbp)
	movq	%rax, -584(%rbp)
	movq	-552(%rbp), %rax
	movq	%rax, -464(%rbp)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L6:
	movq	-504(%rbp), %rax
	xorl	%r12d, %r12d
	movq	$0, -408(%rbp)
	xorl	%r13d, %r13d
	movq	$0, -416(%rbp)
	movq	%rax, -584(%rbp)
	movq	%rax, -552(%rbp)
	movq	$0, -432(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -464(%rbp)
	movq	$0, -448(%rbp)
.L62:
	movl	-496(%rbp), %ecx
	cmpl	%ecx, -492(%rbp)
	jnb	.L60
	movq	-472(%rbp), %rax
	movl	-492(%rbp), %ebx
	movl	-424(%rbp), %edx
	movq	64(%rax), %rax
	leal	1(%rdx,%rbx), %esi
	movq	(%rax), %rcx
	movl	-496(%rbp), %eax
	subl	%ebx, %eax
	leal	-1(%rax), %r8d
	movq	-544(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L59:
	vmovsd	(%rdi,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	vmovsd	%xmm0, 0(%r13,%rax,8)
	vmovsd	(%rcx,%rdx,8), %xmm0
	movq	%rax, %rdx
	vmovsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%rdx, %r8
	jne	.L59
.L60:
	movq	%rsp, %rax
	subq	-512(%rbp), %rax
	cmpq	%rax, %rsp
	je	.L11
.L108:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L108
.L11:
	movq	-560(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L12
	orq	$0, -8(%rsp,%rax)
.L12:
	movq	%rsp, %rax
	subq	-512(%rbp), %rax
	movq	%rsp, -520(%rbp)
	cmpq	%rax, %rsp
	je	.L14
.L109:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L109
.L14:
	movq	-560(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L15
	orq	$0, -8(%rsp,%rax)
.L15:
	movl	-420(%rbp), %eax
	movq	%rsp, -536(%rbp)
	testl	%eax, %eax
	je	.L58
	movl	-420(%rbp), %eax
	movq	-520(%rbp), %r14
	movq	%rsp, %rbx
	xorl	%r15d, %r15d
	movq	%rax, -456(%rbp)
	.p2align 4,,10
	.p2align 3
.L57:
	movq	%r14, %rdi
	movl	$4000, %esi
	call	mpfr_init2@PLT
	vmovsd	0(%r13,%r15,8), %xmm0
	movq	%r14, %rdi
	xorl	%esi, %esi
	addq	$32, %r14
	call	mpfr_set_d@PLT
	movq	%rbx, %rdi
	movl	$4000, %esi
	call	mpfr_init2@PLT
	vmovsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	addq	$1, %r15
	addq	$32, %rbx
	call	mpfr_set_d@PLT
	cmpq	-456(%rbp), %r15
	jne	.L57
.L58:
	leaq	-96(%rbp), %r15
	movl	$4000, %esi
	movl	$10, %ebx
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	leaq	-400(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	%r13, -456(%rbp)
	movq	-536(%rbp), %r14
	movq	%r12, -528(%rbp)
	movq	-520(%rbp), %r13
	movl	-420(%rbp), %r12d
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%r15, %rcx
	movq	%r14, %rdx
	movq	%r13, %rsi
	movl	%r12d, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	subl	$1, %ebx
	jne	.L17
	leaq	-384(%rbp), %rsi
	xorl	%edi, %edi
	movq	-456(%rbp), %r13
	movq	-528(%rbp), %r12
	call	clock_gettime@PLT
	movq	-472(%rbp), %r14
	movl	$4000, %esi
	movq	-488(%rbp), %rax
	leaq	0(,%rax,4), %rbx
	movq	24(%r14), %rax
	movq	(%rax), %rdi
	addq	%rbx, %rdi
	call	mpfr_init2@PLT
	movq	24(%r14), %rax
	movl	-88(%rbp), %ecx
	movq	%r15, %rsi
	movabsq	$9223372036854775800, %r15
	xorl	%edx, %edx
	addq	(%rax), %rbx
	movq	%rbx, %rdi
	movl	$10, %ebx
	call	mpfr_set4@PLT
	movq	-376(%rbp), %rax
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%edi, %edi
	subq	-392(%rbp), %rax
	leaq	-368(%rbp), %rsi
	vcvtsi2sdq	%rax, %xmm2, %xmm0
	vaddsd	32(%r14), %xmm0, %xmm0
	vmovsd	%xmm0, 32(%r14)
	call	clock_gettime@PLT
.L18:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -432(%rbp)
	movq	$0, -144(%rbp)
	vmovdqa	%xmm0, -160(%rbp)
	je	.L70
	cmpq	%r15, -408(%rbp)
	ja	.L103
	movq	-408(%rbp), %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L46:
	movq	-408(%rbp), %rdx
	movq	%rdi, -160(%rbp)
	leaq	(%rdi,%rdx), %r14
	movq	%r14, -144(%rbp)
	cmpq	%r12, -448(%rbp)
	je	.L48
	movq	%r12, %rsi
	call	memcpy@PLT
.L48:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	%r14, -152(%rbp)
	movq	$0, -112(%rbp)
	vmovdqa	%xmm0, -128(%rbp)
	je	.L71
	cmpq	%r15, -416(%rbp)
	ja	.L104
	movq	-416(%rbp), %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L49:
	movq	-416(%rbp), %rdx
	movq	%rdi, -128(%rbp)
	leaq	(%rdi,%rdx), %r14
	movq	%r14, -112(%rbp)
	cmpq	%r13, -464(%rbp)
	je	.L51
	movq	%r13, %rsi
	call	memcpy@PLT
.L51:
	movq	%r14, -120(%rbp)
	movl	-420(%rbp), %edx
	leaq	-128(%rbp), %r14
	leaq	-160(%rbp), %rsi
	movq	%r14, %rdi
	movl	$1, %r8d
	movl	$1, %ecx
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
	movq	-128(%rbp), %rdi
	vmovsd	%xmm0, -456(%rbp)
	testq	%rdi, %rdi
	je	.L52
	movq	-112(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L52:
	movq	-160(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L53
	movq	-144(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L18
.L55:
	movq	-472(%rbp), %rbx
	movq	-488(%rbp), %rcx
	leaq	-352(%rbp), %rsi
	xorl	%edi, %edi
	vmovsd	-456(%rbp), %xmm3
	movq	(%rbx), %rax
	movq	(%rax), %rax
	vmovsd	%xmm3, (%rax,%rcx)
	call	clock_gettime@PLT
	movq	-344(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	xorl	%edi, %edi
	subq	-360(%rbp), %rax
	leaq	-336(%rbp), %rsi
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vaddsd	40(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rbx)
	movl	$10, %ebx
	call	clock_gettime@PLT
	movq	%r14, -520(%rbp)
	movq	-408(%rbp), %r15
	movq	-416(%rbp), %r14
.L19:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -432(%rbp)
	movq	$0, -208(%rbp)
	vmovdqa	%xmm0, -224(%rbp)
	je	.L68
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r15
	ja	.L103
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L36:
	leaq	(%rdi,%r15), %rcx
	movq	%rdi, -224(%rbp)
	movq	%rcx, -208(%rbp)
	cmpq	%r12, -448(%rbp)
	je	.L38
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rcx, -456(%rbp)
	call	memcpy@PLT
	movq	-456(%rbp), %rcx
.L38:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	%rcx, -216(%rbp)
	movq	$0, -176(%rbp)
	vmovdqa	%xmm0, -192(%rbp)
	je	.L69
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L104
	movq	%r14, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L39:
	leaq	(%rdi,%r14), %rcx
	movq	%rdi, -192(%rbp)
	movq	%rcx, -176(%rbp)
	cmpq	%r13, -464(%rbp)
	je	.L41
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rcx, -456(%rbp)
	call	memcpy@PLT
	movq	-456(%rbp), %rcx
.L41:
	movl	-420(%rbp), %edx
	leaq	-192(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	movq	%rcx, -184(%rbp)
	call	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	movq	-192(%rbp), %rdi
	vmovsd	%xmm0, -456(%rbp)
	testq	%rdi, %rdi
	je	.L42
	movq	-176(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L42:
	movq	-224(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L43
	movq	-208(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L19
.L100:
	leaq	-320(%rbp), %rsi
	xorl	%edi, %edi
	movq	-456(%rbp), %r15
	movq	-520(%rbp), %r14
	call	clock_gettime@PLT
	movq	-472(%rbp), %rax
	movq	-488(%rbp), %rcx
	xorl	%edi, %edi
	leaq	-304(%rbp), %rsi
	movl	$10, %ebx
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%r15, (%rax,%rcx)
	call	clock_gettime@PLT
	movq	%r14, -456(%rbp)
	movq	-408(%rbp), %r15
	movq	-416(%rbp), %r14
.L20:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -432(%rbp)
	movq	$0, -272(%rbp)
	vmovdqa	%xmm0, -288(%rbp)
	je	.L66
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r15
	ja	.L103
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L24:
	leaq	(%rdi,%r15), %rcx
	movq	%rdi, -288(%rbp)
	movq	%rcx, -272(%rbp)
	cmpq	%r12, -448(%rbp)
	je	.L27
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rcx, -408(%rbp)
	call	memcpy@PLT
	movq	-408(%rbp), %rcx
.L27:
	vpxor	%xmm0, %xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	%rcx, -280(%rbp)
	movq	$0, -240(%rbp)
	vmovdqa	%xmm0, -256(%rbp)
	je	.L67
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L104
	movq	%r14, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L28:
	leaq	(%rdi,%r14), %rcx
	movq	%rdi, -256(%rbp)
	movq	%rcx, -240(%rbp)
	cmpq	%r13, -464(%rbp)
	je	.L31
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rcx, -408(%rbp)
	call	memcpy@PLT
	movq	-408(%rbp), %rcx
.L31:
	movl	-420(%rbp), %edx
	leaq	-256(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	movq	%rcx, -248(%rbp)
	call	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	movq	-256(%rbp), %rdi
	vmovsd	%xmm0, -408(%rbp)
	testq	%rdi, %rdi
	je	.L32
	movq	-240(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L32:
	movq	-288(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L33
	movq	-272(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L20
.L101:
	movq	-456(%rbp), %r14
	xorl	%edi, %edi
	movq	-408(%rbp), %r15
	movq	%r14, %rsi
	call	clock_gettime@PLT
	movq	-472(%rbp), %rcx
	movq	-488(%rbp), %rbx
	vxorpd	%xmm5, %xmm5, %xmm5
	movq	16(%rcx), %rax
	movq	(%rax), %rax
	movq	%r15, (%rax,%rbx)
	movq	-312(%rbp), %rax
	subq	-328(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm0
	movq	-120(%rbp), %rax
	subq	-296(%rbp), %rax
	vcvtsi2sdq	%rax, %xmm5, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0
	vaddpd	48(%rcx), %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rcx)
	testq	%r12, %r12
	je	.L21
	movq	-584(%rbp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L21:
	testq	%r13, %r13
	je	.L22
	movq	-552(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L22:
	addq	$8, -488(%rbp)
	movq	-568(%rbp), %rsp
	movq	-488(%rbp), %rax
	cmpq	%rax, -576(%rbp)
	jne	.L23
	.p2align 4,,10
	.p2align 3
.L1:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L110
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
.L3:
	.cfi_restore_state
	addl	$1, %eax
	xorl	%edx, %edx
	jmp	.L61
	.p2align 4,,10
	.p2align 3
.L7:
	movq	-504(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	$8, -408(%rbp)
	movq	$8, -432(%rbp)
	movq	%rax, %r12
	leaq	(%rax,%rbx), %rax
	movq	%rax, -584(%rbp)
	leaq	8(%r12), %rax
	movq	$0x000000000, (%r12)
	movq	%rax, -448(%rbp)
	movq	$8, -416(%rbp)
	movq	$8, -440(%rbp)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L70:
	xorl	%edi, %edi
	jmp	.L46
	.p2align 4,,10
	.p2align 3
.L71:
	xorl	%edi, %edi
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L53:
	subl	$1, %ebx
	jne	.L18
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L68:
	xorl	%edi, %edi
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L69:
	xorl	%edi, %edi
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L43:
	subl	$1, %ebx
	jne	.L19
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L66:
	xorl	%edi, %edi
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L67:
	xorl	%edi, %edi
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L33:
	subl	$1, %ebx
	jne	.L20
	jmp	.L101
	.p2align 4,,10
	.p2align 3
.L103:
	cmpq	$0, -432(%rbp)
	jns	.L26
.L30:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L104:
	cmpq	$0, -440(%rbp)
	js	.L30
.L26:
	call	_ZSt17__throw_bad_allocv@PLT
.L107:
	movq	%rax, -584(%rbp)
	movq	-552(%rbp), %rax
	movq	$8, -408(%rbp)
	movq	%rax, -464(%rbp)
	movq	$8, -432(%rbp)
	jmp	.L62
.L65:
	movq	$8, -416(%rbp)
	movq	$8, -440(%rbp)
	jmp	.L8
.L106:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L110:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE4295:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"aG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
.LLSDA4295:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4295-.LLSDACSB4295
.LLSDACSB4295:
.LLSDACSE4295:
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0, .-_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.p2align 4
	.weak	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.type	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, @function
_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi:
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
	movslq	%edx, %rbx
	subq	$896, %rsp
	movl	%edi, -700(%rbp)
	movl	%esi, -704(%rbp)
	movl	%edx, -668(%rbp)
	movq	%rcx, -888(%rbp)
	movq	%r8, -896(%rbp)
	movl	%r9d, -764(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L330
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	0(,%rbx,8), %r12
	movq	$0, -640(%rbp)
	vmovdqa	%xmm0, -656(%rbp)
	testq	%rbx, %rbx
	je	.L113
	movq	%r12, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	vmovq	%rax, %xmm6
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r13, -640(%rbp)
	vmovdqa	%xmm0, -656(%rbp)
	cmpq	$1, %rbx
	je	.L206
	cmpq	%r13, %rdi
	je	.L114
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L114:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	movq	%r13, -648(%rbp)
	movq	$0, -608(%rbp)
	vmovdqa	%xmm0, -624(%rbp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	vmovq	%rax, %xmm7
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%r13, -608(%rbp)
	vmovdqa	%xmm0, -624(%rbp)
	cmpq	$1, %rbx
	je	.L331
	cmpq	%rdi, %r13
	je	.L115
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L115:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	movq	%r13, -616(%rbp)
	movq	$0, -576(%rbp)
	vmovdqa	%xmm0, -592(%rbp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	vmovq	%rax, %xmm5
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r13, -576(%rbp)
	vmovdqa	%xmm0, -592(%rbp)
	cmpq	$1, %rbx
	je	.L332
	cmpq	%rdi, %r13
	je	.L116
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L116:
	salq	$5, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r13, -584(%rbp)
	vmovdqa	%xmm0, -560(%rbp)
	movq	%rbx, %rdi
	movq	%rbx, %r12
	movq	$0, -544(%rbp)
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	vmovq	%rax, %xmm4
	leaq	(%rax,%rbx), %rbx
	movq	%rax, %rdi
	movq	%r12, %rdx
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	xorl	%esi, %esi
	movq	%rbx, -544(%rbp)
	vmovdqa	%xmm0, -560(%rbp)
	call	memset@PLT
.L204:
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rbx, -552(%rbp)
	movq	%rax, %rdi
	movq	%rax, -680(%rbp)
	movq	%rax, %r12
.LEHB4:
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -688(%rbp)
	movq	%rax, %r13
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -696(%rbp)
	movq	%rax, %r14
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -912(%rbp)
	movq	%rax, %r15
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, -920(%rbp)
	movq	%rax, %rbx
	call	mpfr_init2@PLT
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
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	call	mpfr_set_d@PLT
	movslq	-700(%rbp), %rbx
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L333
	leaq	0(,%rbx,8), %r12
	testq	%rbx, %rbx
	je	.L118
	movq	%r12, %rdi
	call	_Znwm@PLT
.LEHE4:
	leaq	(%rax,%r12), %rsi
	movq	%rax, -872(%rbp)
	movq	%rsi, -928(%rbp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %rbx
	je	.L119
	leaq	8(%rax), %rdi
	cmpq	%rdi, %rsi
	je	.L119
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L119:
	movq	%r12, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	(%rax,%r12), %rcx
	movq	%rax, -784(%rbp)
	movq	%rcx, -904(%rbp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %rbx
	je	.L120
	movq	-784(%rbp), %rax
	leaq	8(%rax), %rdi
	cmpq	%rdi, -904(%rbp)
	je	.L120
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	.p2align 4,,10
	.p2align 3
.L120:
	leaq	-656(%rbp), %rax
	leaq	-592(%rbp), %rsi
	vmovq	%rax, %xmm1
	vmovq	%rsi, %xmm0
	leaq	-624(%rbp), %rax
	leaq	-560(%rbp), %rdx
	vpinsrq	$1, %rax, %xmm1, %xmm1
	movl	-704(%rbp), %eax
	vpinsrq	$1, %rdx, %xmm0, %xmm0
	vinserti128	$0x1, %xmm0, %ymm1, %ymm4
	vmovdqa	%ymm4, -816(%rbp)
	testl	%eax, %eax
	je	.L209
	movl	-668(%rbp), %ebx
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovd	-700(%rbp), %xmm7
	movl	$0, -672(%rbp)
	vmovapd	%ymm5, -752(%rbp)
	leal	-1(%rbx), %eax
	vpinsrd	$1, %ebx, %xmm7, %xmm6
	vmovq	%xmm6, -776(%rbp)
	addq	$1, %rax
	salq	$5, %rax
	movq	%rax, -664(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, -720(%rbp)
	vzeroupper
.L163:
	movl	-764(%rbp), %edx
	movl	-672(%rbp), %esi
	vpxor	%xmm2, %xmm2, %xmm2
	movq	$0, -512(%rbp)
	movq	-720(%rbp), %rdi
	vmovdqa	%xmm2, -528(%rbp)
.LEHB6:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-668(%rbp), %r14d
	leaq	-464(%rbp), %r15
	movl	%r14d, %edi
	call	omp_set_num_threads@PLT
	movl	-700(%rbp), %eax
	xorl	%ecx, %ecx
	movq	%r15, %rsi
	vmovq	-776(%rbp), %xmm3
	leaq	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0(%rip), %rdi
	vmovdqa	-816(%rbp), %ymm7
	vmovapd	-752(%rbp), %ymm6
	cltd
	idivl	%r14d
	vmovdqa	%ymm7, -464(%rbp)
	vmovapd	%ymm6, -432(%rbp)
	vmovd	%edx, %xmm0
	xorl	%edx, %edx
	vpinsrd	$1, %eax, %xmm0, %xmm0
	movq	-720(%rbp), %rax
	vpunpcklqdq	%xmm0, %xmm3, %xmm0
	movq	%rax, -400(%rbp)
	vmovdqu	%xmm0, -392(%rbp)
	vzeroupper
	leaq	-192(%rbp), %r12
	call	GOMP_parallel@PLT
	movl	$4000, %esi
	movq	%r12, %rdi
	vmovapd	-432(%rbp), %ymm4
	vmovsd	-432(%rbp), %xmm5
	vmovsd	-424(%rbp), %xmm2
	vmovsd	-416(%rbp), %xmm1
	vmovsd	-408(%rbp), %xmm3
	vmovapd	%ymm4, -752(%rbp)
	vmovsd	%xmm5, -824(%rbp)
	vmovsd	%xmm2, -832(%rbp)
	vmovsd	%xmm1, -840(%rbp)
	vmovsd	%xmm3, -848(%rbp)
	vzeroupper
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	xorl	%ebx, %ebx
	testl	%r14d, %r14d
	jle	.L124
	.p2align 4,,10
	.p2align 3
.L122:
	movq	-560(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r12, %rdi
	addq	%rbx, %rdx
	call	mpfr_add@PLT
	addq	$32, %rbx
	cmpq	-664(%rbp), %rbx
	jne	.L122
.L124:
	movl	$1600, %edi
	call	_Znwm@PLT
.LEHE6:
	leaq	16(%rax), %rdi
	leaq	8(%rax), %rcx
	movq	%rax, %r13
	movq	$0x000000000, (%rax)
	andq	$-8, %rdi
	movq	$0, 8(%rax)
	movq	$0, 1592(%rax)
	subq	%rdi, %rcx
	xorl	%eax, %eax
	addl	$1592, %ecx
	shrl	$3, %ecx
	rep stosq
	movl	$1600, %edi
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	leaq	16(%rax), %rdi
	leaq	8(%rax), %rcx
	movq	%rax, -712(%rbp)
	andq	$-8, %rdi
	movq	$0x000000000, (%rax)
	subq	%rdi, %rcx
	movq	$0, 8(%rax)
	addl	$1592, %ecx
	movq	$0, 1592(%rax)
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movl	$1600, %edi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	leaq	16(%rax), %rdi
	leaq	8(%rax), %rcx
	movq	%rax, -760(%rbp)
	vpxor	%xmm7, %xmm7, %xmm7
	andq	$-8, %rdi
	movq	$0, 8(%rax)
	subq	%rdi, %rcx
	movq	$0x000000000, (%rax)
	addl	$1592, %ecx
	movq	$0, 1592(%rax)
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movl	$1600, %edi
	movq	$0, -448(%rbp)
	vmovdqa	%xmm7, -464(%rbp)
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	leaq	1600(%rax), %rbx
	movq	%r13, %rsi
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, -448(%rbp)
	movq	%rax, -464(%rbp)
	call	memcpy@PLT
	movq	-648(%rbp), %rax
	movq	-656(%rbp), %rsi
	movq	%rbx, -456(%rbp)
	vpxor	%xmm7, %xmm7, %xmm7
	movq	$0, -480(%rbp)
	vmovdqa	%xmm7, -496(%rbp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L211
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L334
	movq	%rbx, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	-648(%rbp), %rax
	movq	-656(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L137:
	vmovq	%rcx, %xmm3
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%rbx, -480(%rbp)
	vmovdqa	%xmm0, -496(%rbp)
	cmpq	%rsi, %rax
	je	.L140
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L140:
	addq	%r14, %rcx
	movl	-668(%rbp), %esi
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	leaq	-496(%rbp), %r14
	movq	%rcx, -488(%rbp)
	movl	$200, %ecx
	movq	%r14, %rdi
.LEHB11:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE11:
	movq	-496(%rbp), %rdi
	vmovsd	%xmm0, -856(%rbp)
	testq	%rdi, %rdi
	je	.L141
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L141:
	movq	-464(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L142
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L142:
	vpxor	%xmm6, %xmm6, %xmm6
	movl	$1600, %edi
	movq	$0, -448(%rbp)
	vmovdqa	%xmm6, -464(%rbp)
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	-712(%rbp), %rsi
	leaq	1600(%rax), %rbx
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, -448(%rbp)
	movq	%rax, -464(%rbp)
	call	memcpy@PLT
	movq	-616(%rbp), %rax
	movq	-624(%rbp), %rsi
	movq	%rbx, -456(%rbp)
	vpxor	%xmm6, %xmm6, %xmm6
	movq	$0, -480(%rbp)
	vmovdqa	%xmm6, -496(%rbp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L213
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L335
	movq	%rbx, %rdi
.LEHB13:
	call	_Znwm@PLT
.LEHE13:
	movq	%rax, %rcx
	movq	-616(%rbp), %rax
	movq	-624(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L146:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, -480(%rbp)
	vmovdqa	%xmm0, -496(%rbp)
	cmpq	%rsi, %rax
	je	.L149
	movq	%rcx, %rdi
	movq	%rdx, -864(%rbp)
	call	memmove@PLT
	movq	-864(%rbp), %rdx
	movq	%rax, %rcx
.L149:
	addq	%rdx, %rcx
	movl	-668(%rbp), %esi
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%rcx, -488(%rbp)
	movq	%r14, %rdi
	movl	$200, %ecx
.LEHB14:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE14:
	movq	-496(%rbp), %rdi
	vmovsd	%xmm0, -864(%rbp)
	testq	%rdi, %rdi
	je	.L150
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L150:
	movq	-464(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L151
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L151:
	vpxor	%xmm4, %xmm4, %xmm4
	movl	$1600, %edi
	movq	$0, -448(%rbp)
	vmovdqa	%xmm4, -464(%rbp)
.LEHB15:
	call	_Znwm@PLT
.LEHE15:
	movq	-760(%rbp), %rsi
	leaq	1600(%rax), %rbx
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, -448(%rbp)
	movq	%rax, -464(%rbp)
	call	memcpy@PLT
	movq	-584(%rbp), %rax
	movq	-592(%rbp), %rsi
	movq	%rbx, -456(%rbp)
	vpxor	%xmm4, %xmm4, %xmm4
	movq	$0, -480(%rbp)
	vmovdqa	%xmm4, -496(%rbp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L215
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L336
	movq	%rbx, %rdi
.LEHB16:
	call	_Znwm@PLT
.LEHE16:
	movq	%rax, %rcx
	movq	-584(%rbp), %rax
	movq	-592(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L155:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, -480(%rbp)
	vmovdqa	%xmm0, -496(%rbp)
	cmpq	%rsi, %rax
	je	.L158
	movq	%rcx, %rdi
	movq	%rdx, -880(%rbp)
	call	memmove@PLT
	movq	-880(%rbp), %rdx
	movq	%rax, %rcx
.L158:
	addq	%rdx, %rcx
	movl	-668(%rbp), %esi
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movq	%rcx, -488(%rbp)
	movq	%r14, %rdi
	movl	$200, %ecx
.LEHB17:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE17:
	movq	-496(%rbp), %rdi
	vmovsd	%xmm0, -880(%rbp)
	testq	%rdi, %rdi
	je	.L159
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L159:
	movq	-464(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L160
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L160:
	leaq	-160(%rbp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
.LEHB18:
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	vmovsd	-856(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movq	-680(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	-680(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	vmovsd	-864(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movq	-688(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	-688(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	vmovsd	-880(%rbp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movq	-696(%rbp), %rsi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	-696(%rbp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
.LEHE18:
	movq	-760(%rbp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	-712(%rbp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	%r13, %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	-528(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L161
	movq	-512(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, -672(%rbp)
	movl	-672(%rbp), %eax
	cmpl	%eax, -704(%rbp)
	jne	.L163
.L121:
	movslq	-704(%rbp), %r12
	vxorps	%xmm1, %xmm1, %xmm1
	movq	-680(%rbp), %rsi
	xorl	%ecx, %ecx
	vmovsd	-840(%rbp), %xmm3
	leal	(%r12,%r12,4), %eax
	movq	%r12, %rdx
	movq	%rsi, %rdi
	addl	%eax, %eax
	vcvtsi2sdl	%eax, %xmm1, %xmm1
	movq	-888(%rbp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm1, %xmm1, %xmm2
	vmovhpd	-848(%rbp), %xmm3, %xmm1
	vmovsd	-824(%rbp), %xmm3
	vmovhpd	-832(%rbp), %xmm3, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vbroadcastsd	%xmm2, %ymm1
	vdivpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rax)
	vzeroupper
.LEHB19:
	call	mpfr_div_si@PLT
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
	movq	-896(%rbp), %rbx
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	-344(%rbp), %ecx
	xorl	%edx, %edx
	movq	-680(%rbp), %rsi
	leaq	32(%rax), %rdi
	movq	%rax, -664(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-312(%rbp), %ecx
	xorl	%edx, %edx
	movq	-688(%rbp), %rsi
	leaq	64(%rax), %rdi
	movq	%rax, -664(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-280(%rbp), %ecx
	xorl	%edx, %edx
	movq	-696(%rbp), %rsi
	leaq	96(%rax), %rdi
	movq	%rax, -664(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	-248(%rbp), %ecx
	xorl	%edx, %edx
	movq	-912(%rbp), %rsi
	leaq	128(%rax), %rdi
	movq	%rax, -664(%rbp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	-216(%rbp), %ecx
	xorl	%edx, %edx
	movq	-920(%rbp), %rsi
	addq	$160, %rdi
	call	mpfr_set4@PLT
.LEHE19:
	movq	-784(%rbp), %rax
	testq	%rax, %rax
	je	.L164
	movq	-904(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L164:
	movq	-872(%rbp), %rax
	testq	%rax, %rax
	je	.L165
	movq	-928(%rbp), %rsi
	movq	%rax, %rdi
	subq	%rax, %rsi
	call	_ZdlPvm@PLT
.L165:
	movq	-560(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L166
	movq	-544(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L166:
	movq	-592(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L167
	movq	-576(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L167:
	movq	-624(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L168
	movq	-608(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L168:
	movq	-656(%rbp), %rdi
	testq	%rdi, %rdi
	je	.L111
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L111:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L337
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
.L215:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L155
	.p2align 4,,10
	.p2align 3
.L113:
	movq	$0, -640(%rbp)
	xorl	%ebx, %ebx
	movq	$0, -608(%rbp)
	movq	$0, -576(%rbp)
	movq	$0, -560(%rbp)
	movq	$0, -544(%rbp)
	vmovdqa	%xmm0, -624(%rbp)
	vmovdqa	%xmm0, -592(%rbp)
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L211:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L118:
	movq	$0, -904(%rbp)
	movq	$0, -784(%rbp)
	movq	$0, -928(%rbp)
	movq	$0, -872(%rbp)
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L213:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L161:
	addl	$1, -672(%rbp)
	movl	-672(%rbp), %eax
	cmpl	-704(%rbp), %eax
	jne	.L163
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L206:
	movq	%rdi, %r13
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L331:
	movq	%rdi, %r13
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L332:
	movq	%rdi, %r13
	jmp	.L116
.L209:
	movq	$0x000000000, -848(%rbp)
	movq	$0x000000000, -840(%rbp)
	movq	$0x000000000, -832(%rbp)
	movq	$0x000000000, -824(%rbp)
	jmp	.L121
.L334:
	testq	%rbx, %rbx
	jns	.L139
.LEHB20:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE20:
.L335:
	testq	%rbx, %rbx
	jns	.L148
.LEHB21:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE21:
.L336:
	testq	%rbx, %rbx
	jns	.L157
.LEHB22:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE22:
.L139:
.LEHB23:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE23:
.L148:
.LEHB24:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE24:
.L157:
.LEHB25:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE25:
.L337:
	call	__stack_chk_fail@PLT
.L330:
	leaq	.LC0(%rip), %rdi
.LEHB26:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE26:
.L333:
	leaq	.LC0(%rip), %rdi
.LEHB27:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE27:
.L231:
	endbr64
	movq	%rax, %rbx
	jmp	.L187
.L221:
	endbr64
	movq	%rax, %rbx
	jmp	.L185
.L179:
	movq	-496(%rbp), %rdi
	movq	-480(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L181
	vzeroupper
	call	_ZdlPvm@PLT
.L181:
	movq	-464(%rbp), %rdi
	movq	-448(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L174
	vzeroupper
	call	_ZdlPvm@PLT
.L174:
	movq	-760(%rbp), %rdi
	movl	$1600, %esi
	vzeroupper
	call	_ZdlPvm@PLT
.L183:
	movq	-712(%rbp), %rdi
	movl	$1600, %esi
	vzeroupper
	call	_ZdlPvm@PLT
.L184:
	movl	$1600, %esi
	movq	%r13, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L185:
	movq	-528(%rbp), %rdi
	movq	-512(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L187
	vzeroupper
	call	_ZdlPvm@PLT
.L187:
	movq	-904(%rbp), %rsi
	subq	-784(%rbp), %rsi
	cmpq	$0, -784(%rbp)
	je	.L188
	movq	-784(%rbp), %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L188:
	movq	-928(%rbp), %rsi
	subq	-872(%rbp), %rsi
	cmpq	$0, -872(%rbp)
	je	.L189
.L200:
	movq	-872(%rbp), %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L189:
	movq	%rbx, %r12
.L190:
	movq	-560(%rbp), %rdi
	movq	-544(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L192
	vzeroupper
	call	_ZdlPvm@PLT
.L192:
	movq	-592(%rbp), %rdi
	movq	-576(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L194
	vzeroupper
	call	_ZdlPvm@PLT
.L194:
	movq	-624(%rbp), %rdi
	movq	-608(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L196
	vzeroupper
	call	_ZdlPvm@PLT
.L196:
	movq	-656(%rbp), %rdi
	movq	-640(%rbp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L319
	vzeroupper
	call	_ZdlPvm@PLT
.L197:
	movq	%r12, %rdi
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L218:
	endbr64
	movq	%rax, %r12
	jmp	.L192
.L227:
	endbr64
.L325:
	movq	%rax, %rbx
	jmp	.L181
.L319:
	vzeroupper
	jmp	.L197
.L229:
	endbr64
	jmp	.L325
.L217:
	endbr64
	movq	%rax, %r12
	jmp	.L194
.L230:
	endbr64
.L329:
	movq	%rax, %rbx
	jmp	.L179
.L216:
	endbr64
	movq	%rax, %r12
	jmp	.L196
.L222:
	endbr64
	movq	%rax, %rbx
	jmp	.L184
.L220:
	endbr64
	movq	%rax, %rbx
.L199:
	movq	%r12, %rsi
	jmp	.L200
.L225:
	endbr64
	jmp	.L325
.L223:
	endbr64
	movq	%rax, %rbx
	jmp	.L183
.L224:
	endbr64
	movq	%rax, %rbx
	jmp	.L174
.L219:
	endbr64
	movq	%rax, %r12
	jmp	.L190
.L228:
	endbr64
	jmp	.L329
.L226:
	endbr64
	jmp	.L329
	.cfi_endproc
.LFE3789:
	.section	.gcc_except_table._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"aG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
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
	.uleb128 .L216-.LFB3789
	.uleb128 0
	.uleb128 .LEHB2-.LFB3789
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L217-.LFB3789
	.uleb128 0
	.uleb128 .LEHB3-.LFB3789
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L218-.LFB3789
	.uleb128 0
	.uleb128 .LEHB4-.LFB3789
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L219-.LFB3789
	.uleb128 0
	.uleb128 .LEHB5-.LFB3789
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L220-.LFB3789
	.uleb128 0
	.uleb128 .LEHB6-.LFB3789
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L221-.LFB3789
	.uleb128 0
	.uleb128 .LEHB7-.LFB3789
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L222-.LFB3789
	.uleb128 0
	.uleb128 .LEHB8-.LFB3789
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L223-.LFB3789
	.uleb128 0
	.uleb128 .LEHB9-.LFB3789
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB10-.LFB3789
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L225-.LFB3789
	.uleb128 0
	.uleb128 .LEHB11-.LFB3789
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L226-.LFB3789
	.uleb128 0
	.uleb128 .LEHB12-.LFB3789
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB13-.LFB3789
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L227-.LFB3789
	.uleb128 0
	.uleb128 .LEHB14-.LFB3789
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L228-.LFB3789
	.uleb128 0
	.uleb128 .LEHB15-.LFB3789
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB16-.LFB3789
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L229-.LFB3789
	.uleb128 0
	.uleb128 .LEHB17-.LFB3789
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L230-.LFB3789
	.uleb128 0
	.uleb128 .LEHB18-.LFB3789
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB19-.LFB3789
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L231-.LFB3789
	.uleb128 0
	.uleb128 .LEHB20-.LFB3789
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L225-.LFB3789
	.uleb128 0
	.uleb128 .LEHB21-.LFB3789
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L227-.LFB3789
	.uleb128 0
	.uleb128 .LEHB22-.LFB3789
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L229-.LFB3789
	.uleb128 0
	.uleb128 .LEHB23-.LFB3789
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L225-.LFB3789
	.uleb128 0
	.uleb128 .LEHB24-.LFB3789
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L227-.LFB3789
	.uleb128 0
	.uleb128 .LEHB25-.LFB3789
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L229-.LFB3789
	.uleb128 0
	.uleb128 .LEHB26-.LFB3789
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB3789
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L219-.LFB3789
	.uleb128 0
	.uleb128 .LEHB28-.LFB3789
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE3789:
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .-_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_parallelisation.cc, @function
_GLOBAL__sub_I_parallelisation.cc:
.LFB4294:
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
.LFE4294:
	.size	_GLOBAL__sub_I_parallelisation.cc, .-_GLOBAL__sub_I_parallelisation.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_parallelisation.cc
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
