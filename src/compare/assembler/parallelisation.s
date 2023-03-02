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
	movq	%rdi, -480(%rbp)
	movl	84(%rdi), %ebx
	movl	80(%rdi), %r14d
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movl	%ecx, -432(%rbp)
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
	movl	%edi, -500(%rbp)
	setg	%cl
	subl	$1, %eax
	addl	%ecx, %ebx
	leaq	1(%rdx,%rax), %rax
	movl	%ebx, -504(%rbp)
	subl	%edi, %ebx
	salq	$3, %rax
	movl	%ebx, -428(%rbp)
	movslq	%ebx, %rbx
	leaq	0(,%rbx,8), %rsi
	movq	%rbx, -488(%rbp)
	salq	$5, %rbx
	movq	%rax, -584(%rbp)
	leal	1(%rdi), %eax
	movq	%rsi, -512(%rbp)
	salq	$3, %rax
	leaq	0(,%rdx,8), %rsi
	movq	%rbx, -568(%rbp)
	andq	$-4096, %rbx
	movq	%rsi, -496(%rbp)
	movq	%rax, -552(%rbp)
	movq	%rbx, -520(%rbp)
.L23:
	movq	-488(%rbp), %rax
	movq	%rsp, -576(%rbp)
	shrq	$60, %rax
	jne	.L105
	movq	-488(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L6
	movq	-512(%rbp), %r15
	movq	%r15, %rdi
	call	_Znwm@PLT
	leaq	(%rax,%r15), %rcx
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	movq	%rax, %r13
	movq	%rcx, -560(%rbp)
	movq	%rdi, -472(%rbp)
	cmpq	$1, %rbx
	je	.L7
	cmpq	%rcx, %rdi
	je	.L65
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%r15, -448(%rbp)
	movq	%r15, -424(%rbp)
.L8:
	movq	-512(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	%rax, %r12
	leaq	(%rax,%rbx), %rax
	leaq	8(%r12), %rdi
	movq	%rax, -456(%rbp)
	movq	$0x000000000, (%r12)
	cmpq	%rax, %rdi
	je	.L106
	movq	-512(%rbp), %rbx
	xorl	%esi, %esi
	leaq	-8(%rbx), %rdx
	call	memset@PLT
	movq	-456(%rbp), %rax
	movq	%rbx, -440(%rbp)
	movq	%rbx, -416(%rbp)
	movq	%rax, -592(%rbp)
	movq	-560(%rbp), %rax
	movq	%rax, -472(%rbp)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L6:
	movq	-512(%rbp), %rax
	xorl	%r12d, %r12d
	movq	$0, -416(%rbp)
	xorl	%r13d, %r13d
	movq	$0, -424(%rbp)
	movq	%rax, -592(%rbp)
	movq	%rax, -560(%rbp)
	movq	$0, -440(%rbp)
	movq	$0, -448(%rbp)
	movq	$0, -472(%rbp)
	movq	$0, -456(%rbp)
.L62:
	movl	-504(%rbp), %ecx
	cmpl	%ecx, -500(%rbp)
	jnb	.L60
	movq	-480(%rbp), %rax
	movl	-500(%rbp), %ebx
	movl	-432(%rbp), %edx
	movq	64(%rax), %rax
	leal	1(%rdx,%rbx), %esi
	movq	(%rax), %rcx
	movl	-504(%rbp), %eax
	subl	%ebx, %eax
	leal	-1(%rax), %r8d
	movq	-552(%rbp), %rax
	leaq	(%rcx,%rax), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L59:
	movsd	(%rdi,%rax,8), %xmm0
	leal	(%rsi,%rax), %edx
	movsd	%xmm0, 0(%r13,%rax,8)
	movsd	(%rcx,%rdx,8), %xmm0
	movq	%rax, %rdx
	movsd	%xmm0, (%r12,%rax,8)
	addq	$1, %rax
	cmpq	%r8, %rdx
	jne	.L59
.L60:
	movq	%rsp, %rax
	subq	-520(%rbp), %rax
	cmpq	%rax, %rsp
	je	.L11
.L107:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L107
.L11:
	movq	-568(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L12
	orq	$0, -8(%rsp,%rax)
.L12:
	movq	%rsp, %rax
	subq	-520(%rbp), %rax
	movq	%rsp, -528(%rbp)
	cmpq	%rax, %rsp
	je	.L14
.L108:
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	cmpq	%rax, %rsp
	jne	.L108
.L14:
	movq	-568(%rbp), %rax
	andl	$4095, %eax
	subq	%rax, %rsp
	testq	%rax, %rax
	je	.L15
	orq	$0, -8(%rsp,%rax)
.L15:
	movl	-428(%rbp), %eax
	movq	%rsp, -544(%rbp)
	testl	%eax, %eax
	je	.L58
	movl	-428(%rbp), %eax
	movq	-528(%rbp), %r14
	movq	%rsp, %rbx
	xorl	%r15d, %r15d
	movq	%rax, -464(%rbp)
	.p2align 4,,10
	.p2align 3
.L57:
	movq	%r14, %rdi
	movl	$4000, %esi
	call	mpfr_init2@PLT
	movsd	0(%r13,%r15,8), %xmm0
	movq	%r14, %rdi
	xorl	%esi, %esi
	addq	$32, %r14
	call	mpfr_set_d@PLT
	movq	%rbx, %rdi
	movl	$4000, %esi
	call	mpfr_init2@PLT
	movsd	(%r12,%r15,8), %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	addq	$1, %r15
	addq	$32, %rbx
	call	mpfr_set_d@PLT
	cmpq	%r15, -464(%rbp)
	jne	.L57
.L58:
	leaq	-96(%rbp), %r15
	movl	$4000, %esi
	movl	$10, %ebx
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	leaq	-400(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	%r13, -464(%rbp)
	movq	-544(%rbp), %r14
	movq	%r12, -536(%rbp)
	movq	-528(%rbp), %r13
	movl	-428(%rbp), %r12d
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
	movq	-464(%rbp), %r13
	movq	-536(%rbp), %r12
	call	clock_gettime@PLT
	movq	-480(%rbp), %r14
	movl	$4000, %esi
	movq	-496(%rbp), %rax
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
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	subq	-392(%rbp), %rax
	leaq	-368(%rbp), %rsi
	cvtsi2sdq	%rax, %xmm0
	addsd	32(%r14), %xmm0
	movsd	%xmm0, 32(%r14)
	call	clock_gettime@PLT
.L18:
	pxor	%xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	$0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	je	.L70
	cmpq	%r15, -416(%rbp)
	ja	.L102
	movq	-416(%rbp), %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L46:
	movq	-416(%rbp), %rdx
	movq	%rdi, -160(%rbp)
	leaq	(%rdi,%rdx), %r14
	movq	%r14, -144(%rbp)
	cmpq	%r12, -456(%rbp)
	je	.L48
	movq	%r12, %rsi
	call	memcpy@PLT
.L48:
	pxor	%xmm0, %xmm0
	cmpq	$0, -448(%rbp)
	movq	%r14, -152(%rbp)
	movq	$0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	je	.L71
	cmpq	%r15, -424(%rbp)
	ja	.L103
	movq	-424(%rbp), %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L49:
	movq	-424(%rbp), %rdx
	movq	%rdi, -128(%rbp)
	leaq	(%rdi,%rdx), %r14
	movq	%r14, -112(%rbp)
	cmpq	%r13, -472(%rbp)
	je	.L51
	movq	%r13, %rsi
	call	memcpy@PLT
.L51:
	movq	%r14, -120(%rbp)
	movl	-428(%rbp), %edx
	leaq	-128(%rbp), %r14
	leaq	-160(%rbp), %rsi
	movq	%r14, %rdi
	movl	$1, %r8d
	movl	$1, %ecx
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
	movq	-128(%rbp), %rdi
	movsd	%xmm0, -464(%rbp)
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
	movq	-480(%rbp), %rbx
	movq	-496(%rbp), %rcx
	leaq	-352(%rbp), %rsi
	xorl	%edi, %edi
	movsd	-464(%rbp), %xmm2
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movsd	%xmm2, (%rax,%rcx)
	call	clock_gettime@PLT
	movq	-344(%rbp), %rax
	pxor	%xmm0, %xmm0
	xorl	%edi, %edi
	subq	-360(%rbp), %rax
	leaq	-336(%rbp), %rsi
	cvtsi2sdq	%rax, %xmm0
	addsd	40(%rbx), %xmm0
	movsd	%xmm0, 40(%rbx)
	movl	$10, %ebx
	call	clock_gettime@PLT
	movq	%r14, -528(%rbp)
	movq	-416(%rbp), %r15
	movq	-424(%rbp), %r14
.L19:
	pxor	%xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	$0, -208(%rbp)
	movaps	%xmm0, -224(%rbp)
	je	.L68
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r15
	ja	.L102
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L36:
	leaq	(%rdi,%r15), %rcx
	movq	%rdi, -224(%rbp)
	movq	%rcx, -208(%rbp)
	cmpq	%r12, -456(%rbp)
	je	.L38
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rcx, -464(%rbp)
	call	memcpy@PLT
	movq	-464(%rbp), %rcx
.L38:
	pxor	%xmm0, %xmm0
	cmpq	$0, -448(%rbp)
	movq	%rcx, -216(%rbp)
	movq	$0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	je	.L69
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L103
	movq	%r14, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L39:
	leaq	(%rdi,%r14), %rcx
	movq	%rdi, -192(%rbp)
	movq	%rcx, -176(%rbp)
	cmpq	%r13, -472(%rbp)
	je	.L41
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rcx, -464(%rbp)
	call	memcpy@PLT
	movq	-464(%rbp), %rcx
.L41:
	movl	-428(%rbp), %edx
	leaq	-192(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	movq	%rcx, -184(%rbp)
	call	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	movq	-192(%rbp), %rdi
	movsd	%xmm0, -464(%rbp)
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
.L99:
	leaq	-320(%rbp), %rsi
	xorl	%edi, %edi
	movq	-464(%rbp), %r15
	movq	-528(%rbp), %r14
	call	clock_gettime@PLT
	movq	-480(%rbp), %rax
	movq	-496(%rbp), %rcx
	xorl	%edi, %edi
	leaq	-304(%rbp), %rsi
	movl	$10, %ebx
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%r15, (%rax,%rcx)
	call	clock_gettime@PLT
	movq	%r14, -464(%rbp)
	movq	-416(%rbp), %r15
	movq	-424(%rbp), %r14
.L20:
	pxor	%xmm0, %xmm0
	cmpq	$0, -440(%rbp)
	movq	$0, -272(%rbp)
	movaps	%xmm0, -288(%rbp)
	je	.L66
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r15
	ja	.L102
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L24:
	leaq	(%rdi,%r15), %rcx
	movq	%rdi, -288(%rbp)
	movq	%rcx, -272(%rbp)
	cmpq	%r12, -456(%rbp)
	je	.L27
	movq	%r15, %rdx
	movq	%r12, %rsi
	movq	%rcx, -416(%rbp)
	call	memcpy@PLT
	movq	-416(%rbp), %rcx
.L27:
	pxor	%xmm0, %xmm0
	cmpq	$0, -448(%rbp)
	movq	%rcx, -280(%rbp)
	movq	$0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	je	.L67
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L103
	movq	%r14, %rdi
	call	_Znwm@PLT
	movq	%rax, %rdi
.L28:
	leaq	(%rdi,%r14), %rcx
	movq	%rdi, -256(%rbp)
	movq	%rcx, -240(%rbp)
	cmpq	%r13, -472(%rbp)
	je	.L31
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rcx, -416(%rbp)
	call	memcpy@PLT
	movq	-416(%rbp), %rcx
.L31:
	movl	-428(%rbp), %edx
	leaq	-256(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	movq	%rcx, -248(%rbp)
	call	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	movq	-256(%rbp), %rdi
	movsd	%xmm0, -416(%rbp)
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
.L100:
	movq	-464(%rbp), %r14
	xorl	%edi, %edi
	movq	-416(%rbp), %r15
	movq	%r14, %rsi
	call	clock_gettime@PLT
	movq	-480(%rbp), %rcx
	movq	-496(%rbp), %rbx
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	movq	16(%rcx), %rax
	movupd	48(%rcx), %xmm3
	movq	(%rax), %rax
	movaps	%xmm3, -416(%rbp)
	movq	%r15, (%rax,%rbx)
	movq	-312(%rbp), %rax
	subq	-328(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	-120(%rbp), %rax
	subq	-296(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	unpcklpd	%xmm1, %xmm0
	addpd	%xmm3, %xmm0
	movups	%xmm0, 48(%rcx)
	testq	%r12, %r12
	je	.L21
	movq	-592(%rbp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L21:
	testq	%r13, %r13
	je	.L22
	movq	-560(%rbp), %rsi
	movq	%r13, %rdi
	subq	%r13, %rsi
	call	_ZdlPvm@PLT
.L22:
	addq	$8, -496(%rbp)
	movq	-576(%rbp), %rsp
	movq	-496(%rbp), %rax
	cmpq	%rax, -584(%rbp)
	jne	.L23
	.p2align 4,,10
	.p2align 3
.L1:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L109
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
	movq	-512(%rbp), %rbx
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	$8, -416(%rbp)
	movq	$8, -440(%rbp)
	movq	%rax, %r12
	leaq	(%rax,%rbx), %rax
	movq	%rax, -592(%rbp)
	leaq	8(%r12), %rax
	movq	$0x000000000, (%r12)
	movq	%rax, -456(%rbp)
	movq	$8, -424(%rbp)
	movq	$8, -448(%rbp)
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
	jmp	.L99
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
	jmp	.L100
	.p2align 4,,10
	.p2align 3
.L102:
	cmpq	$0, -440(%rbp)
	jns	.L26
.L30:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L103:
	cmpq	$0, -448(%rbp)
	js	.L30
.L26:
	call	_ZSt17__throw_bad_allocv@PLT
.L106:
	movq	%rax, -592(%rbp)
	movq	-560(%rbp), %rax
	movq	$8, -416(%rbp)
	movq	%rax, -472(%rbp)
	movq	$8, -440(%rbp)
	jmp	.L62
.L65:
	movq	$8, -424(%rbp)
	movq	$8, -448(%rbp)
	jmp	.L8
.L105:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L109:
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
	movslq	%edx, %rbx
	subq	$872, %rsp
	.cfi_def_cfa_offset 928
	movl	%edi, 52(%rsp)
	movl	%esi, 56(%rsp)
	movq	%rcx, 208(%rsp)
	movq	%r8, 216(%rsp)
	movl	%r9d, 60(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 856(%rsp)
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L327
	pxor	%xmm0, %xmm0
	movq	%rbx, %r13
	movq	$0, 288(%rsp)
	leaq	0(,%rbx,8), %rbp
	movaps	%xmm0, 272(%rsp)
	testq	%rbx, %rbx
	je	.L112
	movq	%rbp, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 288(%rsp)
	movaps	%xmm0, 272(%rsp)
	cmpq	$1, %rbx
	je	.L205
	cmpq	%r12, %rdi
	je	.L113
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L113:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%r12, 280(%rsp)
	movq	$0, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 320(%rsp)
	movaps	%xmm0, 304(%rsp)
	cmpq	$1, %rbx
	je	.L328
	cmpq	%rdi, %r12
	je	.L114
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L114:
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	movq	%r12, 312(%rsp)
	movq	$0, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %xmm0
	leaq	(%rax,%rbp), %r12
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r12, 352(%rsp)
	movaps	%xmm0, 336(%rsp)
	cmpq	$1, %rbx
	je	.L329
	cmpq	%rdi, %r12
	je	.L115
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L115:
	salq	$5, %rbx
	pxor	%xmm0, %xmm0
	movq	%r12, 344(%rsp)
	movq	%rbx, %rdi
	movaps	%xmm0, 368(%rsp)
	movq	%rbx, %r12
	movq	$0, 384(%rsp)
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %xmm0
	leaq	(%rax,%rbx), %rbx
	movq	%rax, %rdi
	movq	%r12, %rdx
	punpcklqdq	%xmm0, %xmm0
	xorl	%esi, %esi
	movq	%rbx, 384(%rsp)
	movaps	%xmm0, 368(%rsp)
	call	memset@PLT
.L203:
	movq	%rbx, 376(%rsp)
	leaq	560(%rsp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
	movq	%rbx, 128(%rsp)
.LEHB4:
	call	mpfr_init2@PLT
	leaq	592(%rsp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	movq	%r15, 136(%rsp)
	call	mpfr_init2@PLT
	leaq	624(%rsp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	movq	%r14, 144(%rsp)
	call	mpfr_init2@PLT
	leaq	656(%rsp), %rbp
	movl	$4000, %esi
	movq	%rbp, %rdi
	movq	%rbp, 240(%rsp)
	call	mpfr_init2@PLT
	leaq	688(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, 248(%rsp)
	movq	%rax, %r12
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	movslq	52(%rsp), %rbx
	movq	%rbx, %rax
	shrq	$60, %rax
	jne	.L330
	leaq	0(,%rbx,8), %rbp
	testq	%rbx, %rbx
	je	.L117
	movq	%rbp, %rdi
	call	_Znwm@PLT
.LEHE4:
	leaq	(%rax,%rbp), %rcx
	movq	%rax, 256(%rsp)
	movq	%rcx, 264(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %rbx
	je	.L118
	leaq	8(%rax), %rdi
	cmpq	%rdi, %rcx
	je	.L118
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L118:
	movq	%rbp, %rdi
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	(%rax,%rbp), %rcx
	movq	%rax, 224(%rsp)
	movq	%rcx, 232(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %rbx
	je	.L119
	leaq	8(%rax), %rdi
	cmpq	%rdi, 232(%rsp)
	je	.L119
	leaq	-8(%rbp), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	.p2align 4,,10
	.p2align 3
.L119:
	leaq	272(%rsp), %rdx
	leaq	304(%rsp), %rax
	movq	%rdx, %xmm2
	movq	%rax, %xmm5
	leaq	336(%rsp), %rdx
	leaq	368(%rsp), %rax
	movq	%rdx, %xmm3
	punpcklqdq	%xmm5, %xmm2
	movq	%rax, %xmm6
	movl	56(%rsp), %eax
	movaps	%xmm2, 96(%rsp)
	punpcklqdq	%xmm6, %xmm3
	movaps	%xmm3, 80(%rsp)
	testl	%eax, %eax
	je	.L208
	leal	-1(%r13), %eax
	pxor	%xmm7, %xmm7
	movd	52(%rsp), %xmm4
	movl	$0, 48(%rsp)
	addq	$1, %rax
	movaps	%xmm7, 16(%rsp)
	salq	$5, %rax
	movaps	%xmm7, 32(%rsp)
	movd	%r13d, %xmm7
	movq	%rax, 8(%rsp)
	leaq	400(%rsp), %rax
	punpckldq	%xmm7, %xmm4
	movq	%rax, 112(%rsp)
	movq	%xmm4, 120(%rsp)
.L162:
	movq	112(%rsp), %rbx
	movl	60(%rsp), %edx
	pxor	%xmm5, %xmm5
	movq	$0, 416(%rsp)
	movl	48(%rsp), %esi
	movaps	%xmm5, 400(%rsp)
	movq	%rbx, %rdi
.LEHB6:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	%r13d, %edi
	leaq	464(%rsp), %r15
	leaq	720(%rsp), %r12
	call	omp_set_num_threads@PLT
	movl	52(%rsp), %eax
	movq	%r15, %rsi
	xorl	%ecx, %ecx
	movdqa	96(%rsp), %xmm7
	movq	120(%rsp), %xmm0
	leaq	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0(%rip), %rdi
	movq	%rbx, 528(%rsp)
	cltd
	movdqa	80(%rsp), %xmm5
	idivl	%r13d
	movaps	%xmm7, 464(%rsp)
	movapd	16(%rsp), %xmm7
	movaps	%xmm5, 480(%rsp)
	movaps	%xmm7, 512(%rsp)
	movd	%eax, %xmm6
	movd	%edx, %xmm1
	xorl	%edx, %edx
	punpckldq	%xmm6, %xmm1
	movapd	32(%rsp), %xmm6
	punpcklqdq	%xmm1, %xmm0
	movaps	%xmm6, 496(%rsp)
	movups	%xmm0, 536(%rsp)
	call	GOMP_parallel@PLT
	movl	$4000, %esi
	movq	%r12, %rdi
	movapd	496(%rsp), %xmm4
	movapd	512(%rsp), %xmm2
	movsd	496(%rsp), %xmm3
	movsd	504(%rsp), %xmm5
	movaps	%xmm4, 32(%rsp)
	movsd	512(%rsp), %xmm6
	movsd	520(%rsp), %xmm7
	movaps	%xmm2, 16(%rsp)
	movsd	%xmm3, 152(%rsp)
	movsd	%xmm5, 160(%rsp)
	movsd	%xmm6, 168(%rsp)
	movsd	%xmm7, 176(%rsp)
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	xorl	%ebx, %ebx
	testl	%r13d, %r13d
	jle	.L123
	.p2align 4,,10
	.p2align 3
.L121:
	movq	368(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%r12, %rsi
	movq	%r12, %rdi
	addq	%rbx, %rdx
	call	mpfr_add@PLT
	addq	$32, %rbx
	cmpq	8(%rsp), %rbx
	jne	.L121
.L123:
	movl	$1600, %edi
	call	_Znwm@PLT
.LEHE6:
	leaq	16(%rax), %rdi
	leaq	8(%rax), %rcx
	movq	%rax, %rbp
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
	movq	%rax, 64(%rsp)
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
	movq	%rax, 72(%rsp)
	pxor	%xmm4, %xmm4
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
	movaps	%xmm4, 464(%rsp)
	movq	$0, 480(%rsp)
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	leaq	1600(%rax), %rbx
	movq	%rbp, %rsi
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, 480(%rsp)
	movq	%rax, 464(%rsp)
	call	memcpy@PLT
	movq	280(%rsp), %rax
	pxor	%xmm4, %xmm4
	movq	272(%rsp), %rsi
	movq	%rbx, 472(%rsp)
	movq	%rax, %rbx
	movaps	%xmm4, 432(%rsp)
	movq	$0, 448(%rsp)
	subq	%rsi, %rbx
	je	.L210
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L331
	movq	%rbx, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	280(%rsp), %rax
	movq	272(%rsp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L136:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 448(%rsp)
	movaps	%xmm0, 432(%rsp)
	cmpq	%rsi, %rax
	je	.L139
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L139:
	addq	%r14, %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	%r13d, %esi
	leaq	432(%rsp), %r14
	movq	%rcx, 440(%rsp)
	movl	$200, %ecx
	movq	%r14, %rdi
.LEHB11:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE11:
	movq	432(%rsp), %rdi
	movsd	%xmm0, 184(%rsp)
	testq	%rdi, %rdi
	je	.L140
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L140:
	movq	464(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L141
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L141:
	pxor	%xmm2, %xmm2
	movl	$1600, %edi
	movq	$0, 480(%rsp)
	movaps	%xmm2, 464(%rsp)
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	64(%rsp), %rsi
	leaq	1600(%rax), %rbx
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, 480(%rsp)
	movq	%rax, 464(%rsp)
	call	memcpy@PLT
	movq	312(%rsp), %rax
	pxor	%xmm2, %xmm2
	movq	304(%rsp), %rsi
	movq	%rbx, 472(%rsp)
	movq	%rax, %rbx
	movaps	%xmm2, 432(%rsp)
	movq	$0, 448(%rsp)
	subq	%rsi, %rbx
	je	.L212
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L332
	movq	%rbx, %rdi
.LEHB13:
	call	_Znwm@PLT
.LEHE13:
	movq	%rax, %rcx
	movq	312(%rsp), %rax
	movq	304(%rsp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L145:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 448(%rsp)
	movaps	%xmm0, 432(%rsp)
	cmpq	%rsi, %rax
	je	.L148
	movq	%rcx, %rdi
	movq	%rdx, 192(%rsp)
	call	memmove@PLT
	movq	192(%rsp), %rdx
	movq	%rax, %rcx
.L148:
	addq	%rdx, %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	%r13d, %esi
	movq	%rcx, 440(%rsp)
	movq	%r14, %rdi
	movl	$200, %ecx
.LEHB14:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE14:
	movq	432(%rsp), %rdi
	movsd	%xmm0, 192(%rsp)
	testq	%rdi, %rdi
	je	.L149
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L149:
	movq	464(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L150
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L150:
	pxor	%xmm3, %xmm3
	movl	$1600, %edi
	movq	$0, 480(%rsp)
	movaps	%xmm3, 464(%rsp)
.LEHB15:
	call	_Znwm@PLT
.LEHE15:
	movq	72(%rsp), %rsi
	leaq	1600(%rax), %rbx
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbx, 480(%rsp)
	movq	%rax, 464(%rsp)
	call	memcpy@PLT
	movq	344(%rsp), %rax
	pxor	%xmm3, %xmm3
	movq	336(%rsp), %rsi
	movq	%rbx, 472(%rsp)
	movq	%rax, %rbx
	movaps	%xmm3, 432(%rsp)
	movq	$0, 448(%rsp)
	subq	%rsi, %rbx
	je	.L214
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L333
	movq	%rbx, %rdi
.LEHB16:
	call	_Znwm@PLT
.LEHE16:
	movq	%rax, %rcx
	movq	344(%rsp), %rax
	movq	336(%rsp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L154:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 448(%rsp)
	movaps	%xmm0, 432(%rsp)
	cmpq	%rsi, %rax
	je	.L157
	movq	%rcx, %rdi
	movq	%rdx, 200(%rsp)
	call	memmove@PLT
	movq	200(%rsp), %rdx
	movq	%rax, %rcx
.L157:
	addq	%rdx, %rcx
	xorl	%r8d, %r8d
	movq	%r15, %rdx
	movl	%r13d, %esi
	movq	%rcx, 440(%rsp)
	movq	%r14, %rdi
	movl	$200, %ecx
.LEHB17:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE17:
	movq	432(%rsp), %rdi
	movsd	%xmm0, 200(%rsp)
	testq	%rdi, %rdi
	je	.L158
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L158:
	movq	464(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L159
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L159:
	leaq	752(%rsp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
.LEHB18:
	call	mpfr_init2@PLT
	leaq	784(%rsp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	leaq	816(%rsp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	movsd	184(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movq	%rbx, %rdx
	movq	128(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_add@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movsd	192(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movq	136(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_add@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movsd	200(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movq	144(%rsp), %rbx
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_add@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
.LEHE18:
	movq	72(%rsp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	64(%rsp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	%rbp, %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
	movq	400(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L160
	movq	416(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	addl	$1, 48(%rsp)
	movl	48(%rsp), %eax
	cmpl	%eax, 56(%rsp)
	jne	.L162
.L120:
	movslq	56(%rsp), %r12
	pxor	%xmm1, %xmm1
	xorl	%ecx, %ecx
	movupd	152(%rsp), %xmm0
	movq	128(%rsp), %rbp
	leal	(%r12,%r12,4), %eax
	movq	%r12, %rdx
	addl	%eax, %eax
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	cvtsi2sdl	%eax, %xmm1
	movq	208(%rsp), %rax
	movq	(%rax), %rax
	unpcklpd	%xmm1, %xmm1
	divpd	%xmm1, %xmm0
	movups	%xmm0, (%rax)
	movupd	168(%rsp), %xmm0
	divpd	%xmm1, %xmm0
	movups	%xmm0, 16(%rax)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 32(%rax)
.LEHB19:
	call	mpfr_div_si@PLT
	movq	136(%rsp), %r14
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div_si@PLT
	movq	144(%rsp), %r15
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div_si@PLT
	movq	216(%rsp), %rbx
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	568(%rsp), %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	leaq	32(%rax), %rdi
	movq	%rax, 8(%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	600(%rsp), %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	leaq	64(%rax), %rdi
	movq	%rax, 8(%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	632(%rsp), %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	leaq	96(%rax), %rdi
	movq	%rax, 8(%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	664(%rsp), %ecx
	xorl	%edx, %edx
	movq	240(%rsp), %rsi
	leaq	128(%rax), %rdi
	movq	%rax, 8(%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	696(%rsp), %ecx
	xorl	%edx, %edx
	movq	248(%rsp), %rsi
	addq	$160, %rdi
	call	mpfr_set4@PLT
.LEHE19:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L163
	movq	232(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L163:
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L164
	movq	264(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L164:
	movq	368(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L165
	movq	384(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L165:
	movq	336(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L166
	movq	352(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L166:
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L167
	movq	320(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L167:
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L110
	movq	288(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L110:
	movq	856(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L334
	addq	$872, %rsp
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
.L214:
	.cfi_restore_state
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L154
	.p2align 4,,10
	.p2align 3
.L112:
	movq	$0, 288(%rsp)
	xorl	%ebx, %ebx
	movq	$0, 320(%rsp)
	movq	$0, 352(%rsp)
	movq	$0, 368(%rsp)
	movq	$0, 384(%rsp)
	movaps	%xmm0, 304(%rsp)
	movaps	%xmm0, 336(%rsp)
	jmp	.L203
	.p2align 4,,10
	.p2align 3
.L210:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L117:
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 264(%rsp)
	movq	$0, 256(%rsp)
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L212:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L160:
	addl	$1, 48(%rsp)
	movl	48(%rsp), %eax
	cmpl	56(%rsp), %eax
	jne	.L162
	jmp	.L120
	.p2align 4,,10
	.p2align 3
.L205:
	movq	%rdi, %r12
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L328:
	movq	%rdi, %r12
	jmp	.L114
	.p2align 4,,10
	.p2align 3
.L329:
	movq	%rdi, %r12
	jmp	.L115
.L208:
	movq	$0x000000000, 176(%rsp)
	movq	$0x000000000, 168(%rsp)
	movq	$0x000000000, 160(%rsp)
	movq	$0x000000000, 152(%rsp)
	jmp	.L120
.L331:
	testq	%rbx, %rbx
	jns	.L138
.LEHB20:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE20:
.L332:
	testq	%rbx, %rbx
	jns	.L147
.LEHB21:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE21:
.L333:
	testq	%rbx, %rbx
	jns	.L156
.LEHB22:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE22:
.L138:
.LEHB23:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE23:
.L147:
.LEHB24:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE24:
.L156:
.LEHB25:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE25:
.L334:
	call	__stack_chk_fail@PLT
.L327:
	leaq	.LC0(%rip), %rdi
.LEHB26:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE26:
.L330:
	leaq	.LC0(%rip), %rdi
.LEHB27:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE27:
.L230:
	endbr64
	movq	%rax, %rbx
	jmp	.L186
.L220:
	endbr64
	movq	%rax, %rbx
	jmp	.L184
.L178:
	movq	432(%rsp), %rdi
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L180
	call	_ZdlPvm@PLT
.L180:
	movq	464(%rsp), %rdi
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L173
	call	_ZdlPvm@PLT
.L173:
	movq	72(%rsp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
.L182:
	movq	64(%rsp), %rdi
	movl	$1600, %esi
	call	_ZdlPvm@PLT
.L183:
	movl	$1600, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L184:
	movq	400(%rsp), %rdi
	movq	416(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L186
	call	_ZdlPvm@PLT
.L186:
	movq	232(%rsp), %rsi
	movq	224(%rsp), %rax
	subq	%rax, %rsi
	testq	%rax, %rax
	je	.L187
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
.L187:
	movq	264(%rsp), %rsi
	movq	256(%rsp), %rax
	subq	%rax, %rsi
	testq	%rax, %rax
	je	.L188
.L199:
	movq	256(%rsp), %rdi
	call	_ZdlPvm@PLT
.L188:
	movq	%rbx, %rbp
.L189:
	movq	368(%rsp), %rdi
	movq	384(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L191
	call	_ZdlPvm@PLT
.L191:
	movq	336(%rsp), %rdi
	movq	352(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L193
	call	_ZdlPvm@PLT
.L193:
	movq	304(%rsp), %rdi
	movq	320(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L195
	call	_ZdlPvm@PLT
.L195:
	movq	272(%rsp), %rdi
	movq	288(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L196
	call	_ZdlPvm@PLT
.L196:
	movq	%rbp, %rdi
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L217:
	endbr64
	movq	%rax, %rbp
	jmp	.L191
.L226:
	endbr64
.L322:
	movq	%rax, %rbx
	jmp	.L180
.L228:
	endbr64
	jmp	.L322
.L216:
	endbr64
	movq	%rax, %rbp
	jmp	.L193
.L229:
	endbr64
.L326:
	movq	%rax, %rbx
	jmp	.L178
.L215:
	endbr64
	movq	%rax, %rbp
	jmp	.L195
.L221:
	endbr64
	movq	%rax, %rbx
	jmp	.L183
.L219:
	endbr64
	movq	%rax, %rbx
.L198:
	movq	%rbp, %rsi
	jmp	.L199
.L224:
	endbr64
	jmp	.L322
.L222:
	endbr64
	movq	%rax, %rbx
	jmp	.L182
.L223:
	endbr64
	movq	%rax, %rbx
	jmp	.L173
.L218:
	endbr64
	movq	%rax, %rbp
	jmp	.L189
.L227:
	endbr64
	jmp	.L326
.L225:
	endbr64
	jmp	.L326
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
	.uleb128 .L215-.LFB3789
	.uleb128 0
	.uleb128 .LEHB2-.LFB3789
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L216-.LFB3789
	.uleb128 0
	.uleb128 .LEHB3-.LFB3789
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L217-.LFB3789
	.uleb128 0
	.uleb128 .LEHB4-.LFB3789
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L218-.LFB3789
	.uleb128 0
	.uleb128 .LEHB5-.LFB3789
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L219-.LFB3789
	.uleb128 0
	.uleb128 .LEHB6-.LFB3789
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L220-.LFB3789
	.uleb128 0
	.uleb128 .LEHB7-.LFB3789
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L221-.LFB3789
	.uleb128 0
	.uleb128 .LEHB8-.LFB3789
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L222-.LFB3789
	.uleb128 0
	.uleb128 .LEHB9-.LFB3789
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L223-.LFB3789
	.uleb128 0
	.uleb128 .LEHB10-.LFB3789
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB11-.LFB3789
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L225-.LFB3789
	.uleb128 0
	.uleb128 .LEHB12-.LFB3789
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L223-.LFB3789
	.uleb128 0
	.uleb128 .LEHB13-.LFB3789
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L226-.LFB3789
	.uleb128 0
	.uleb128 .LEHB14-.LFB3789
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L227-.LFB3789
	.uleb128 0
	.uleb128 .LEHB15-.LFB3789
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L223-.LFB3789
	.uleb128 0
	.uleb128 .LEHB16-.LFB3789
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L228-.LFB3789
	.uleb128 0
	.uleb128 .LEHB17-.LFB3789
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L229-.LFB3789
	.uleb128 0
	.uleb128 .LEHB18-.LFB3789
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L223-.LFB3789
	.uleb128 0
	.uleb128 .LEHB19-.LFB3789
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L230-.LFB3789
	.uleb128 0
	.uleb128 .LEHB20-.LFB3789
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB21-.LFB3789
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L226-.LFB3789
	.uleb128 0
	.uleb128 .LEHB22-.LFB3789
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L228-.LFB3789
	.uleb128 0
	.uleb128 .LEHB23-.LFB3789
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L224-.LFB3789
	.uleb128 0
	.uleb128 .LEHB24-.LFB3789
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L226-.LFB3789
	.uleb128 0
	.uleb128 .LEHB25-.LFB3789
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L228-.LFB3789
	.uleb128 0
	.uleb128 .LEHB26-.LFB3789
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB3789
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L218-.LFB3789
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
