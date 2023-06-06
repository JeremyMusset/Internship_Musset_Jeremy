	.file	"Rare_Blas.cc"
	.text
	.section	.text._Z3ulpIdET_S0_,"axG",@progbits,_Z3ulpIdET_S0_,comdat
	.p2align 4
	.weak	_Z3ulpIdET_S0_
	.type	_Z3ulpIdET_S0_, @function
_Z3ulpIdET_S0_:
.LFB3705:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	vmovsd	.LC0(%rip), %xmm1
	vmovsd	%xmm0, 8(%rsp)
	call	nextafter@PLT
	vmovsd	8(%rsp), %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	vsubsd	%xmm2, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE3705:
	.size	_Z3ulpIdET_S0_, .-_Z3ulpIdET_S0_
	.section	.text._Z8half_ulpIdEbT_,"axG",@progbits,_Z8half_ulpIdEbT_,comdat
	.p2align 4
	.weak	_Z8half_ulpIdEbT_
	.type	_Z8half_ulpIdEbT_, @function
_Z8half_ulpIdEbT_:
.LFB3706:
	.cfi_startproc
	endbr64
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE3706:
	.size	_Z8half_ulpIdEbT_, .-_Z8half_ulpIdEbT_
	.section	.text._Z4signIdEiT_,"axG",@progbits,_Z4signIdEiT_,comdat
	.p2align 4
	.weak	_Z4signIdEiT_
	.type	_Z4signIdEiT_, @function
_Z4signIdEiT_:
.LFB3707:
	.cfi_startproc
	endbr64
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	vcomisd	%xmm1, %xmm0
	seta	%al
	xorl	%edx, %edx
	vcomisd	%xmm0, %xmm1
	seta	%dl
	subl	%edx, %eax
	ret
	.cfi_endproc
.LFE3707:
	.size	_Z4signIdEiT_, .-_Z4signIdEiT_
	.section	.text._Z4magnIdET_S0_,"axG",@progbits,_Z4magnIdET_S0_,comdat
	.p2align 4
	.weak	_Z4magnIdET_S0_
	.type	_Z4magnIdET_S0_, @function
_Z4magnIdET_S0_:
.LFB3708:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	vmovsd	.LC0(%rip), %xmm1
	call	nextafter@PLT
	vmovq	%xmm0, %rax
	testb	$1, %al
	je	.L9
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	vmovsd	.LC2(%rip), %xmm1
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	nextafter@PLT
	.cfi_endproc
.LFE3708:
	.size	_Z4magnIdET_S0_, .-_Z4magnIdET_S0_
	.section	.text._Z14Split_VeltkampIdEvT_RS0_S1_,"axG",@progbits,_Z14Split_VeltkampIdEvT_RS0_S1_,comdat
	.p2align 4
	.weak	_Z14Split_VeltkampIdEvT_RS0_S1_
	.type	_Z14Split_VeltkampIdEvT_RS0_S1_, @function
_Z14Split_VeltkampIdEvT_RS0_S1_:
.LFB3709:
	.cfi_startproc
	endbr64
	vmovsd	%xmm0, (%rdi)
	vsubsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi)
	ret
	.cfi_endproc
.LFE3709:
	.size	_Z14Split_VeltkampIdEvT_RS0_S1_, .-_Z14Split_VeltkampIdEvT_RS0_S1_
	.section	.text._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"axG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
	.p2align 4
	.weak	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.type	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i, @function
_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i:
.LFB3710:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3710
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	vpxor	%xmm0, %xmm0, %xmm0
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rdi)
	vmovdqu	%xmm0, (%rdi)
	movl	$16384, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	vmovq	%rax, %xmm2
	leaq	16384(%rax), %rbx
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, 16(%r12)
	vmovdqu	%xmm0, (%r12)
	cmpq	%rbx, %rdi
	je	.L12
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L12:
	movq	%rbx, 8(%r12)
	testl	%ebp, %ebp
	je	.L11
	salq	$3, %rbp
	leaq	32(%rsp), %r15
	leaq	24(%rsp), %r14
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L14:
	movq	0(%r13), %rax
	movq	%r15, %rsi
	movq	%r14, %rdi
	vmovsd	(%rax,%rbx), %xmm0
.LEHB1:
	call	_Z14Split_VeltkampIdEvT_RS0_S1_
.LEHE1:
	vmovsd	24(%rsp), %xmm1
	leaq	20(%rsp), %rdi
	addq	$8, %rbx
	vmovsd	%xmm1, %xmm1, %xmm0
	vmovsd	%xmm1, 8(%rsp)
	call	frexp@PLT
	movl	20(%rsp), %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	(%r12), %rdx
	vmovsd	8(%rsp), %xmm1
	addl	$1024, %eax
	vcvtsi2sdl	%eax, %xmm3, %xmm0
	movslq	%eax, %rcx
	movl	%eax, 20(%rsp)
	vsubsd	.LC3(%rip), %xmm0, %xmm0
	leaq	(%rdx,%rcx,8), %rcx
	vaddsd	(%rcx), %xmm1, %xmm1
	vcvttsd2usi	%xmm0, %rax
	vmovsd	%xmm1, (%rcx)
	leaq	(%rdx,%rax,8), %rax
	vmovsd	(%rax), %xmm0
	vaddsd	32(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	cmpq	%rbx, %rbp
	jne	.L14
.L11:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r12, %rax
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
.L28:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L18:
	endbr64
	movq	%rax, %rbp
.L15:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L26
	vzeroupper
	call	_ZdlPvm@PLT
.L16:
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L26:
	vzeroupper
	jmp	.L16
	.cfi_endproc
.LFE3710:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"aG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
.LLSDA3710:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3710-.LLSDACSB3710
.LLSDACSB3710:
	.uleb128 .LEHB0-.LFB3710
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3710
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L18-.LFB3710
	.uleb128 0
	.uleb128 .LEHB2-.LFB3710
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3710:
	.section	.text._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"axG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
	.size	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i, .-_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.section	.text._Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.p2align 4
	.weak	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.type	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, @function
_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_:
.LFB3720:
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	movq	%rcx, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L29
	movl	%esi, %esi
	movq	%rdi, %rbp
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	leaq	0(,%rsi,8), %rax
	leaq	36(%rsp), %r15
	movq	%rax, 16(%rsp)
	leaq	48(%rsp), %rax
	leaq	40(%rsp), %r14
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L31:
	movq	%r15, %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	call	frexp@PLT
	movslq	36(%rsp), %r13
	movq	0(%rbp), %rcx
	movq	(%r12), %rsi
	movq	24(%rsp), %rdi
	vmovsd	(%rcx,%rbx), %xmm1
	leaq	0(,%r13,8), %rax
	addq	$8, %rbx
	vmovsd	(%rsi,%r13,8), %xmm0
	movq	%r14, %rsi
	movq	%rax, (%rsp)
	call	_Z10FastTwoSumIdEvT_S0_RS0_S1_@PLT
	movq	8(%rsp), %rdx
	movq	(%r12), %rcx
	vmovsd	48(%rsp), %xmm0
	movq	(%rsp), %rax
	addq	(%rdx), %rax
	vmovsd	%xmm0, (%rcx,%r13,8)
	vmovsd	(%rax), %xmm0
	vaddsd	40(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	cmpq	16(%rsp), %rbx
	jne	.L31
.L29:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L39
	addq	$72, %rsp
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
.L39:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3720:
	.size	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .-_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.section	.rodata._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.p2align 4
	.weak	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.type	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i, @function
_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i:
.LFB3725:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3725
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movslq	%edx, %r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$320, %rsp
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, 312(%rsp)
	movq	%r14, %rax
	shrq	$60, %rax
	jne	.L187
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, %r13
	movq	%rsi, %rbx
	movq	%r14, %r12
	vmovdqa	%xmm0, 64(%rsp)
	leaq	0(,%r14,8), %r15
	movq	$0, 80(%rsp)
	testq	%r14, %r14
	je	.L42
	movq	%r15, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	vmovq	%rax, %xmm7
	leaq	(%rax,%r15), %rcx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%rcx, 80(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	cmpq	$1, %r14
	je	.L106
	cmpq	%rcx, %rdi
	je	.L43
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	movq	%rcx, 56(%rsp)
	call	memset@PLT
	movq	56(%rsp), %rcx
.L43:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	movq	%rcx, 72(%rsp)
	movq	$0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	vmovq	%rax, %xmm4
	leaq	(%rax,%r15), %rcx
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	movq	%rcx, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	cmpq	$1, %r14
	je	.L188
	cmpq	%rdi, %rcx
	je	.L44
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	movq	%rcx, 56(%rsp)
	call	memset@PLT
	movq	56(%rsp), %rcx
.L44:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$16384, %edi
	movq	%rcx, 104(%rsp)
	movq	$0, 144(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	vmovq	%rax, %xmm3
	leaq	16384(%rax), %r14
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r14, 144(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
	cmpq	%r14, %rdi
	je	.L47
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L47:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$16384, %edi
	movq	%r14, 136(%rsp)
	movq	$0, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	vmovq	%rax, %xmm4
	leaq	16384(%rax), %r14
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	movq	%r14, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	cmpq	%r14, %rdi
	je	.L50
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L50:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$16384, %edi
	movq	%r14, 168(%rsp)
	movq	$0, 208(%rsp)
	vmovdqa	%xmm0, 192(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	vmovq	%rax, %xmm5
	leaq	16384(%rax), %r14
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r14, 208(%rsp)
	vmovdqa	%xmm0, 192(%rsp)
	cmpq	%r14, %rdi
	je	.L53
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L53:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$16384, %edi
	movq	%r14, 200(%rsp)
	movq	$0, 240(%rsp)
	vmovdqa	%xmm0, 224(%rsp)
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	vmovq	%rax, %xmm6
	leaq	16384(%rax), %r14
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%r14, 240(%rsp)
	vmovdqa	%xmm0, 224(%rsp)
	cmpq	%r14, %rdi
	je	.L57
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L57:
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%r14, 232(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	movq	%rax, %r14
	subq	%rsi, %r14
	je	.L189
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L190
	movq	%r14, %rdi
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
.L56:
	vmovq	%rcx, %xmm7
	addq	%rcx, %r14
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%r14, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	cmpq	%rsi, %rax
	je	.L60
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L60:
	movq	8(%r13), %rax
	movq	0(%r13), %rsi
	addq	%rbx, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, 296(%rsp)
	movq	$0, 272(%rsp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, 256(%rsp)
	subq	%rsi, %rbx
	je	.L108
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L191
	movq	%rbx, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	8(%r13), %rax
	movq	0(%r13), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L61:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, 272(%rsp)
	vmovdqa	%xmm0, 256(%rsp)
	cmpq	%rsi, %rax
	je	.L64
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L64:
	addq	%r13, %rcx
	leaq	288(%rsp), %r13
	leaq	96(%rsp), %r8
	movl	%r12d, %edx
	movq	%rcx, 264(%rsp)
	leaq	256(%rsp), %rdi
	leaq	64(%rsp), %rcx
	movq	%r13, %rsi
.LEHB11:
	call	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_@PLT
.LEHE11:
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L65
	movq	272(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L65:
	movq	288(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L66
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L66:
	movq	72(%rsp), %rax
	movq	64(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L109
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L192
	movq	%rbx, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %rcx
	movq	72(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L67:
	vmovq	%rcx, %xmm6
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	movq	%rbx, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	cmpq	%rsi, %rax
	je	.L70
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L70:
	addq	%r14, %rcx
	leaq	192(%rsp), %rdx
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	%rcx, 296(%rsp)
	leaq	224(%rsp), %rcx
.LEHB13:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE13:
	movq	288(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L71
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L71:
	movq	104(%rsp), %rax
	movq	96(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L110
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L193
	movq	%rbx, %rdi
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %rcx
	movq	104(%rsp), %rax
	movq	96(%rsp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L72:
	vmovq	%rcx, %xmm5
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%rbx, 304(%rsp)
	vmovdqa	%xmm0, 288(%rsp)
	cmpq	%rsi, %rax
	je	.L75
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L75:
	addq	%r14, %rcx
	leaq	128(%rsp), %rdx
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	%rcx, 296(%rsp)
	leaq	160(%rsp), %rcx
.LEHB15:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE15:
	movq	288(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L76
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L76:
	movq	128(%rsp), %rcx
	movq	160(%rsp), %rdx
	xorl	%eax, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L77:
	vmovupd	(%rcx,%rax), %zmm3
	vaddpd	(%rdx,%rax), %zmm3, %zmm0
	addq	$64, %rax
	vaddpd	%zmm0, %zmm1, %zmm1
	cmpq	$16384, %rax
	jne	.L77
	vextractf64x4	$0x1, %zmm1, %ymm0
	movq	192(%rsp), %rdx
	movq	224(%rsp), %rdi
	xorl	%eax, %eax
	vaddpd	%ymm1, %ymm0, %ymm0
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm0, %xmm0, %xmm2
	.p2align 4,,10
	.p2align 3
.L78:
	vmovupd	(%rdx,%rax), %zmm7
	vaddpd	(%rdi,%rax), %zmm7, %zmm0
	addq	$64, %rax
	vaddpd	%zmm0, %zmm1, %zmm1
	cmpq	$16384, %rax
	jne	.L78
	vextractf64x4	$0x1, %zmm1, %ymm0
	movq	240(%rsp), %rsi
	vaddpd	%ymm1, %ymm0, %ymm0
	subq	%rdi, %rsi
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	vmovq	%xmm2, %rbx
	vzeroupper
	call	_ZdlPvm@PLT
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L79
	movq	208(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L79:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L80
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L80:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L81
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L81:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L82
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L82:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L40
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L40:
	movq	312(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L194
	leaq	-40(%rbp), %rsp
	vmovq	%rbx, %xmm0
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L42:
	.cfi_restore_state
	movq	$0, 80(%rsp)
	xorl	%ecx, %ecx
	movq	$0, 96(%rsp)
	movq	$0, 112(%rsp)
	jmp	.L44
.L189:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L56
.L108:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L61
.L109:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L67
.L110:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L72
.L106:
	movq	%rdi, %rcx
	jmp	.L43
.L188:
	movq	%rdi, %rcx
	jmp	.L44
.L190:
	testq	%r14, %r14
	jns	.L59
.LEHB16:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE16:
.L191:
	testq	%rbx, %rbx
	jns	.L63
.LEHB17:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE17:
.L192:
	testq	%rbx, %rbx
	jns	.L69
.LEHB18:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L193:
	testq	%rbx, %rbx
	jns	.L74
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L59:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE18:
.L63:
.LEHB19:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE19:
.L69:
.LEHB20:
	call	_ZSt17__throw_bad_allocv@PLT
.L74:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE20:
.L194:
	call	__stack_chk_fail@PLT
.L187:
	leaq	.LC4(%rip), %rdi
.LEHB21:
	call	_ZSt20__throw_length_errorPKc@PLT
.L115:
	endbr64
	movq	%rax, %r12
	jmp	.L94
.L113:
	endbr64
	movq	%rax, %r12
	jmp	.L98
.L84:
	movq	256(%rsp), %rdi
	movq	272(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L91
	vzeroupper
	call	_ZdlPvm@PLT
.L91:
	movq	288(%rsp), %rdi
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L88
	vzeroupper
	call	_ZdlPvm@PLT
.L88:
	movq	224(%rsp), %rdi
	movq	240(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	jne	.L195
.L93:
	movq	%rbx, %r12
.L94:
	movq	192(%rsp), %rdi
	movq	208(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L96
	vzeroupper
	call	_ZdlPvm@PLT
.L96:
	movq	160(%rsp), %rdi
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L98
	vzeroupper
	call	_ZdlPvm@PLT
.L98:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L100
	vzeroupper
	call	_ZdlPvm@PLT
.L100:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L102
	vzeroupper
	call	_ZdlPvm@PLT
.L102:
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L181
	vzeroupper
	call	_ZdlPvm@PLT
.L103:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE21:
.L181:
	vzeroupper
	jmp	.L103
.L120:
	endbr64
.L186:
	movq	%rax, %rbx
	jmp	.L91
.L112:
	endbr64
	movq	%rax, %r12
	jmp	.L100
.L119:
	endbr64
	jmp	.L186
.L111:
	endbr64
	movq	%rax, %r12
	jmp	.L102
.L114:
	endbr64
	movq	%rax, %r12
	jmp	.L96
.L117:
	endbr64
	jmp	.L186
.L118:
	endbr64
	movq	%rax, %rbx
	jmp	.L84
.L116:
	endbr64
	movq	%rax, %rbx
	jmp	.L88
.L195:
	vzeroupper
	call	_ZdlPvm@PLT
	jmp	.L93
	.cfi_endproc
.LFE3725:
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
.LLSDA3725:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3725-.LLSDACSB3725
.LLSDACSB3725:
	.uleb128 .LEHB3-.LFB3725
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3725
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L111-.LFB3725
	.uleb128 0
	.uleb128 .LEHB5-.LFB3725
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L112-.LFB3725
	.uleb128 0
	.uleb128 .LEHB6-.LFB3725
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L113-.LFB3725
	.uleb128 0
	.uleb128 .LEHB7-.LFB3725
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L114-.LFB3725
	.uleb128 0
	.uleb128 .LEHB8-.LFB3725
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L115-.LFB3725
	.uleb128 0
	.uleb128 .LEHB9-.LFB3725
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB10-.LFB3725
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB11-.LFB3725
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L118-.LFB3725
	.uleb128 0
	.uleb128 .LEHB12-.LFB3725
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB13-.LFB3725
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L119-.LFB3725
	.uleb128 0
	.uleb128 .LEHB14-.LFB3725
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB15-.LFB3725
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L120-.LFB3725
	.uleb128 0
	.uleb128 .LEHB16-.LFB3725
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB17-.LFB3725
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB18-.LFB3725
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB19-.LFB3725
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB20-.LFB3725
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB21-.LFB3725
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE3725:
	.section	.text._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.size	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i, .-_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.section	.text._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"axG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.p2align 4
	.weak	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.type	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii, @function
_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii:
.LFB3726:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3726
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movl	%esi, 60(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%r8d, 56(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L239
	vxorpd	%xmm6, %xmm6, %xmm6
	movl	%esi, %ebx
	movq	(%rdi), %rax
	xorl	%r14d, %r14d
	salq	$3, %rbx
	leaq	88(%rsp), %r13
	leaq	80(%rsp), %rbp
	vmovsd	%xmm6, 16(%rsp)
	vmovsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L198:
	vmovsd	(%rax,%r14), %xmm1
	vmovsd	24(%rsp), %xmm0
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB22:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	88(%rsp), %xmm0
	movq	(%r12), %rax
	vmovsd	80(%rsp), %xmm3
	vmovsd	%xmm0, (%rax,%r14)
	addq	$8, %r14
	movq	$0x000000000, 80(%rsp)
	movq	$0x000000000, 88(%rsp)
	vmovsd	%xmm3, 24(%rsp)
	cmpq	%r14, %rbx
	jne	.L198
.L197:
	movl	76(%rsp), %eax
	subl	$1, %eax
	movl	%eax, 72(%rsp)
	movslq	56(%rsp), %rax
	leaq	8(,%rax,8), %rax
	movq	%rax, 40(%rsp)
	movl	60(%rsp), %eax
	subl	$1, %eax
	leaq	8(,%rax,8), %rax
	movq	%rax, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L266:
	movl	60(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L199
	vmovsd	16(%rsp), %xmm2
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	movq	%r15, 48(%rsp)
	leaq	88(%rsp), %rbp
	movq	%r14, %r15
	leaq	80(%rsp), %rbx
	movq	64(%rsp), %r14
	vmovsd	%xmm2, 8(%rsp)
	vmovsd	%xmm2, 32(%rsp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L278:
	vmovsd	32(%rsp), %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	vmovsd	80(%rsp), %xmm7
	vmovsd	88(%rsp), %xmm0
	leaq	(%rax,%r15), %rcx
	vmovsd	%xmm7, 32(%rsp)
	vmovsd	%xmm0, (%rcx)
.L202:
	movq	$0x000000000, 80(%rsp)
	vmovsd	16(%rsp), %xmm7
	movq	$0x000000000, 88(%rsp)
	vucomisd	(%rcx), %xmm7
	jp	.L203
	jne	.L203
	subl	$1, %r13d
.L203:
	addq	$8, %r15
	cmpq	%r15, %r14
	je	.L277
.L205:
	vmovsd	(%rax,%r15), %xmm1
	vmovsd	24(%rsp), %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	vmovsd	(%rax,%r15), %xmm1
	vcomisd	16(%rsp), %xmm1
	ja	.L278
	vmovsd	8(%rsp), %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	vmovsd	80(%rsp), %xmm3
	vmovsd	88(%rsp), %xmm0
	leaq	(%rax,%r15), %rcx
	vmovsd	%xmm3, 8(%rsp)
	vmovsd	%xmm0, (%rcx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L277:
	movl	56(%rsp), %edx
	vmovsd	32(%rsp), %xmm2
	movq	48(%rsp), %r15
	testl	%edx, %edx
	je	.L206
.L236:
	movl	56(%rsp), %r14d
	movq	(%r15), %rdx
	movq	%r12, 48(%rsp)
	leaq	0(,%r14,8), %rax
	xorl	%r14d, %r14d
	movq	%r14, %r12
	movq	%rax, %r14
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L280:
	vmovsd	%xmm2, %xmm2, %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r15), %rdx
	vmovsd	88(%rsp), %xmm0
	vmovsd	80(%rsp), %xmm2
	leaq	(%rdx,%r12), %rcx
	vmovsd	%xmm0, (%rcx)
.L209:
	movq	$0x000000000, 80(%rsp)
	vmovsd	16(%rsp), %xmm6
	movq	$0x000000000, 88(%rsp)
	vucomisd	(%rcx), %xmm6
	jp	.L249
	je	.L210
.L249:
	addl	$1, %r13d
.L210:
	addq	$8, %r12
	cmpq	%r12, %r14
	je	.L279
.L212:
	vmovsd	(%rdx,%r12), %xmm1
	vcomisd	16(%rsp), %xmm1
	ja	.L280
	vmovsd	8(%rsp), %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	vmovsd	%xmm2, 32(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r15), %rdx
	vmovsd	80(%rsp), %xmm3
	vmovsd	88(%rsp), %xmm0
	vmovsd	32(%rsp), %xmm2
	leaq	(%rdx,%r12), %rcx
	vmovsd	%xmm3, 8(%rsp)
	vmovsd	%xmm0, (%rcx)
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L279:
	movq	48(%rsp), %r12
.L206:
	vxorpd	%xmm7, %xmm7, %xmm7
	vmovsd	8(%rsp), %xmm3
	vandpd	.LC5(%rip), %xmm2, %xmm1
	vcvtsi2sdl	%r13d, %xmm7, %xmm0
	vmovsd	%xmm0, 32(%rsp)
	vandpd	.LC5(%rip), %xmm3, %xmm0
	vmaxsd	%xmm1, %xmm0, %xmm0
.L213:
	vmovsd	%xmm2, 48(%rsp)
	call	_Z3ulpIdET_S0_
	vmovsd	48(%rsp), %xmm2
	vmulsd	32(%rsp), %xmm0, %xmm6
	vaddsd	8(%rsp), %xmm2, %xmm0
	vmovsd	24(%rsp), %xmm7
	vaddsd	%xmm7, %xmm0, %xmm0
	vmovsd	%xmm6, 32(%rsp)
	vucomisd	%xmm7, %xmm0
	jp	.L215
	je	.L214
.L215:
	leaq	88(%rsp), %rbp
	leaq	80(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L265:
	vmovsd	8(%rsp), %xmm1
	vmovsd	%xmm2, %xmm2, %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	88(%rsp), %xmm5
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	vmovsd	80(%rsp), %xmm1
	vmovsd	24(%rsp), %xmm0
	movq	$0x000000000, 80(%rsp)
	movq	$0x000000000, 88(%rsp)
	vmovsd	%xmm5, 8(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	80(%rsp), %xmm4
	vaddsd	8(%rsp), %xmm4, %xmm0
	movq	$0x000000000, 80(%rsp)
	vmovsd	88(%rsp), %xmm2
	movq	$0x000000000, 88(%rsp)
	vmovsd	%xmm4, 24(%rsp)
	vaddsd	%xmm2, %xmm0, %xmm0
	vucomisd	%xmm4, %xmm0
	jp	.L265
	jne	.L265
.L214:
	vmovsd	32(%rsp), %xmm7
	vmovsd	24(%rsp), %xmm5
	movq	(%r15), %rax
	movq	40(%rsp), %rdx
	vaddsd	%xmm5, %xmm7, %xmm3
	vmovsd	8(%rsp), %xmm6
	addl	$2, 56(%rsp)
	vmovsd	%xmm2, (%rax,%rdx)
	movl	56(%rsp), %esi
	vmovsd	%xmm6, 8(%rax,%rdx)
	vmovsd	%xmm3, 32(%rsp)
	cmpl	72(%rsp), %esi
	jge	.L196
	addq	$16, %rdx
	vucomisd	%xmm3, %xmm5
	movq	%rdx, 40(%rsp)
	jp	.L266
	jne	.L266
	vmovsd	%xmm6, %xmm6, %xmm1
	vmovsd	%xmm2, %xmm2, %xmm0
	leaq	88(%rsp), %rsi
	leaq	80(%rsp), %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	80(%rsp), %xmm0
	vaddsd	88(%rsp), %xmm0, %xmm0
	movq	$0x000000000, 80(%rsp)
	vmovsd	32(%rsp), %xmm6
	movq	$0x000000000, 88(%rsp)
	vaddsd	%xmm6, %xmm0, %xmm0
	vucomisd	%xmm6, %xmm0
	jp	.L251
	vmovsd	%xmm6, 24(%rsp)
	je	.L196
.L251:
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L241
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L281
	movq	%rbx, %rdi
	call	_Znwm@PLT
.LEHE22:
	movq	(%r15), %rsi
	movq	%rax, %rcx
	movq	8(%r15), %rax
	movq	%rax, %rbp
	subq	%rsi, %rbp
.L222:
	addq	%rcx, %rbx
	movq	%rcx, 128(%rsp)
	movq	%rbx, 144(%rsp)
	cmpq	%rsi, %rax
	je	.L225
	movq	%rcx, %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L225:
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	addq	%rbp, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, 136(%rsp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, 96(%rsp)
	movq	$0, 112(%rsp)
	subq	%rsi, %rbx
	je	.L242
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L282
	movq	%rbx, %rdi
.LEHB23:
	call	_Znwm@PLT
.LEHE23:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rbp
	subq	%rsi, %rbp
.L226:
	addq	%rcx, %rbx
	movq	%rcx, 96(%rsp)
	movq	%rbx, 112(%rsp)
	cmpq	%rsi, %rax
	je	.L229
	movq	%rcx, %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L229:
	addq	%rbp, %rcx
	movl	56(%rsp), %r8d
	movl	60(%rsp), %esi
	leaq	128(%rsp), %rdx
	movq	%rcx, 104(%rsp)
	movl	76(%rsp), %ecx
	leaq	96(%rsp), %rdi
.LEHB24:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii.localalias
.LEHE24:
	vaddsd	32(%rsp), %xmm0, %xmm7
	movq	96(%rsp), %rdi
	vmovsd	%xmm7, 24(%rsp)
	testq	%rdi, %rdi
	je	.L230
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L230:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L196
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L196:
	movq	152(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L283
	vmovsd	24(%rsp), %xmm0
	addq	$168, %rsp
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
.L199:
	.cfi_restore_state
	movl	56(%rsp), %eax
	testl	%eax, %eax
	je	.L284
	vmovsd	16(%rsp), %xmm7
	xorl	%r13d, %r13d
	leaq	88(%rsp), %rbp
	leaq	80(%rsp), %rbx
	vmovsd	%xmm7, %xmm7, %xmm2
	vmovsd	%xmm7, 8(%rsp)
	jmp	.L236
.L241:
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L222
.L239:
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	%xmm5, 16(%rsp)
	vmovsd	%xmm5, 24(%rsp)
	jmp	.L197
.L284:
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	56(%rsp), %xmm7, %xmm0
	vmovsd	%xmm0, 32(%rsp)
	vmovsd	16(%rsp), %xmm0
	vmovsd	%xmm0, %xmm0, %xmm2
	vmovsd	%xmm0, 8(%rsp)
	jmp	.L213
.L242:
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L226
.L281:
	testq	%rbx, %rbx
	jns	.L224
.LEHB25:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE25:
.L282:
	testq	%rbx, %rbx
	jns	.L228
.LEHB26:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE26:
.L224:
.LEHB27:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE27:
.L228:
.LEHB28:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE28:
.L283:
	call	__stack_chk_fail@PLT
.L244:
	endbr64
	movq	%rax, %rbp
	jmp	.L234
.L245:
	endbr64
	movq	%rax, %rbp
.L232:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L234
	vzeroupper
	call	_ZdlPvm@PLT
.L234:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L275
	vzeroupper
	call	_ZdlPvm@PLT
.L235:
	movq	%rbp, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
.L275:
	vzeroupper
	jmp	.L235
	.cfi_endproc
.LFE3726:
	.section	.gcc_except_table._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"aG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
.LLSDA3726:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3726-.LLSDACSB3726
.LLSDACSB3726:
	.uleb128 .LEHB22-.LFB3726
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB3726
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L244-.LFB3726
	.uleb128 0
	.uleb128 .LEHB24-.LFB3726
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L245-.LFB3726
	.uleb128 0
	.uleb128 .LEHB25-.LFB3726
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB3726
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L244-.LFB3726
	.uleb128 0
	.uleb128 .LEHB27-.LFB3726
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB3726
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L244-.LFB3726
	.uleb128 0
	.uleb128 .LEHB29-.LFB3726
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE3726:
	.section	.text._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"axG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.size	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii, .-_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.set	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii.localalias,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.p2align 4
	.weak	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.type	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, @function
_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i:
.LFB3721:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3721
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
	movslq	%edx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	movq	%rbp, %rax
	shrq	$60, %rax
	jne	.L518
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rbp, %r14
	vmovdqa	%xmm0, 48(%rsp)
	leaq	0(,%rbp,8), %r12
	movq	$0, 64(%rsp)
	testq	%rbp, %rbp
	je	.L287
	movq	%r12, %rdi
.LEHB30:
	call	_Znwm@PLT
.LEHE30:
	vmovq	%rax, %xmm3
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r13, 64(%rsp)
	vmovdqa	%xmm0, 48(%rsp)
	cmpq	$1, %rbp
	je	.L391
	cmpq	%rdi, %r13
	je	.L288
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L288:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	movq	%r13, 56(%rsp)
	movq	$0, 96(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
.LEHB31:
	call	_Znwm@PLT
.LEHE31:
	vmovq	%rax, %xmm5
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	vpunpcklqdq	%xmm5, %xmm5, %xmm0
	movq	%r13, 96(%rsp)
	vmovdqa	%xmm0, 80(%rsp)
	cmpq	$1, %rbp
	je	.L519
	cmpq	%rdi, %r13
	je	.L289
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L289:
	movl	$16384, %edi
	movq	%r13, 88(%rsp)
.LEHB32:
	call	_Znwm@PLT
.LEHE32:
	movq	%rax, %r12
	leaq	16384(%rax), %rax
	leaq	8(%r12), %rdi
	movq	%rax, 16(%rsp)
	movq	$0x000000000, (%r12)
	cmpq	%rax, %rdi
	je	.L294
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L294:
	movl	$16384, %edi
.LEHB33:
	call	_Znwm@PLT
.LEHE33:
	leaq	16384(%rax), %rdx
	leaq	8(%rax), %rdi
	movq	%rax, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	%rdx, %rdi
	je	.L299
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L299:
	movl	$1600, %edi
.LEHB34:
	call	_Znwm@PLT
.LEHE34:
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
.LEHB35:
	call	_Znwm@PLT
.LEHE35:
	leaq	16(%rax), %rdi
	leaq	8(%rax), %rcx
	movq	$0, 8(%rax)
	movq	%rax, %r13
	andq	$-8, %rdi
	movq	$0x000000000, (%rax)
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 1592(%rax)
	subq	%rdi, %rcx
	xorl	%eax, %eax
	addl	$1592, %ecx
	shrl	$3, %ecx
	rep stosq
	movq	$0, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, 8(%rsp)
	je	.L520
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, 8(%rsp)
	ja	.L521
	movq	%rdx, %rdi
.LEHB36:
	call	_Znwm@PLT
.LEHE36:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
.L305:
	movq	8(%rsp), %rdx
	vmovq	%rcx, %xmm1
	vpunpcklqdq	%xmm1, %xmm1, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	addq	%rcx, %rdx
	movq	%rdx, 160(%rsp)
	cmpq	%rax, %rsi
	je	.L314
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L314:
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	addq	%rbx, %rcx
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rcx, 152(%rsp)
	movq	%rax, %rbx
	vmovdqa	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	subq	%rsi, %rbx
	je	.L393
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L522
	movq	%rbx, %rdi
.LEHB37:
	call	_Znwm@PLT
.LEHE37:
	movq	%rax, %rcx
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	movq	%rax, %r15
	subq	%rsi, %r15
.L315:
	vmovq	%rcx, %xmm2
	addq	%rcx, %rbx
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%rbx, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%rsi, %rax
	je	.L318
	movq	%rcx, %rdi
	movq	%r15, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L318:
	addq	%r15, %rcx
	leaq	112(%rsp), %r15
	leaq	80(%rsp), %r8
	movl	%r14d, %edx
	leaq	144(%rsp), %rbx
	movq	%rcx, 120(%rsp)
	movq	%r15, %rdi
	leaq	48(%rsp), %rcx
	movq	%rbx, %rsi
.LEHB38:
	call	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_@PLT
.LEHE38:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L319
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L319:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L320
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L320:
	movq	56(%rsp), %rax
	movq	48(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, 8(%rsp)
	je	.L394
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L523
	movq	%rdx, %rdi
.LEHB39:
	call	_Znwm@PLT
.LEHE39:
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movq	48(%rsp), %rsi
	movq	%rax, %r8
	subq	%rsi, %r8
.L321:
	movq	8(%rsp), %rdx
	vmovq	%rcx, %xmm4
	vpunpcklqdq	%xmm4, %xmm4, %xmm0
	vmovdqa	%xmm0, 144(%rsp)
	addq	%rcx, %rdx
	movq	%rdx, 160(%rsp)
	cmpq	%rax, %rsi
	je	.L328
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %r8
	movq	%rax, %rcx
.L328:
	addq	%r8, %rcx
	movl	%r14d, %edx
	movq	%rbx, %rsi
	movq	%r15, %rdi
	movq	%rcx, 152(%rsp)
.LEHB40:
	call	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
.LEHE40:
	movq	112(%rsp), %rax
	movq	32(%rsp), %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$16384, %esi
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	vmovdqa	%xmm0, 112(%rsp)
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rax
	movq	$0, 128(%rsp)
	movq	%rax, 24(%rsp)
	call	_ZdlPvm@PLT
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L329
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L329:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L330
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L330:
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	movq	%rdx, %rcx
	subq	%rsi, %rcx
	movq	%rcx, 32(%rsp)
	je	.L395
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rcx
	ja	.L524
	movq	%rcx, %rdi
.LEHB41:
	call	_Znwm@PLT
.LEHE41:
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	%rax, %rcx
	movq	%rdx, %r8
	subq	%rsi, %r8
.L331:
	movq	32(%rsp), %rax
	vmovq	%rcx, %xmm6
	vpunpcklqdq	%xmm6, %xmm6, %xmm0
	addq	%rcx, %rax
	vmovdqa	%xmm0, 112(%rsp)
	movq	%rax, 128(%rsp)
	cmpq	%rdx, %rsi
	je	.L334
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %r8
	movq	%rax, %rcx
.L334:
	addq	%r8, %rcx
	movl	%r14d, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%rcx, 120(%rsp)
.LEHB42:
	call	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
.LEHE42:
	movq	152(%rsp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	movl	$16384, %esi
	movq	144(%rsp), %r14
	vmovdqa	%xmm0, 144(%rsp)
	movq	%rax, 32(%rsp)
	movq	160(%rsp), %rax
	movq	$0, 160(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZdlPvm@PLT
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L335
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L335:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L336
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L336:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
.LEHB43:
	call	_Znwm@PLT
.LEHE43:
.L415:
.L416:
	leaq	1600(%rax), %r12
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%r13, %rsi
	movq	%r12, 160(%rsp)
	movq	%rax, 144(%rsp)
	call	memcpy@PLT
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, 152(%rsp)
	movq	40(%rsp), %r12
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	subq	8(%rsp), %r12
	je	.L525
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L526
	movq	%r12, %rdi
.LEHB44:
	call	_Znwm@PLT
.LEHE44:
	movq	%rax, %rdi
.L343:
	vmovq	%rdi, %xmm7
	movq	8(%rsp), %rsi
	movq	40(%rsp), %rax
	leaq	(%rdi,%r12), %rcx
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%rcx, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	%rax, %rsi
	je	.L346
	movq	%r12, %rdx
	movq	%rcx, 40(%rsp)
	call	memmove@PLT
	movq	40(%rsp), %rcx
.L346:
	movq	%rcx, 120(%rsp)
	xorl	%r8d, %r8d
	movl	$200, %ecx
	movq	%rbx, %rdx
	movl	$2048, %esi
	movq	%r15, %rdi
.LEHB45:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.LEHE45:
	movq	112(%rsp), %rdi
	vmovsd	%xmm0, 40(%rsp)
	testq	%rdi, %rdi
	je	.L347
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L347:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L348
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L348:
	vpxor	%xmm0, %xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 160(%rsp)
	vmovdqa	%xmm0, 144(%rsp)
.LEHB46:
	call	_Znwm@PLT
.LEHE46:
.L418:
.L417:
	leaq	1600(%rax), %r12
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbp, %rsi
	movq	%r12, 160(%rsp)
	movq	%rax, 144(%rsp)
	call	memcpy@PLT
	movq	%r12, 152(%rsp)
	movq	32(%rsp), %r12
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	subq	%r14, %r12
	je	.L527
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L528
	movq	%r12, %rdi
.LEHB47:
	call	_Znwm@PLT
.LEHE47:
	movq	%rax, %rdi
.L355:
	vmovq	%rdi, %xmm7
	leaq	(%rdi,%r12), %rcx
	vpunpcklqdq	%xmm7, %xmm7, %xmm0
	movq	%rcx, 128(%rsp)
	vmovdqa	%xmm0, 112(%rsp)
	cmpq	32(%rsp), %r14
	je	.L358
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rcx, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %rcx
.L358:
	movq	%rcx, 120(%rsp)
	xorl	%r8d, %r8d
	movl	$200, %ecx
	movq	%rbx, %rdx
	movl	$2048, %esi
	movq	%r15, %rdi
.LEHB48:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.LEHE48:
	movq	112(%rsp), %rdi
	vmovsd	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L359
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L359:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L360
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L360:
	vmovsd	40(%rsp), %xmm5
	movl	$1600, %esi
	movq	%r13, %rdi
	vaddsd	32(%rsp), %xmm5, %xmm6
	vmovq	%xmm6, %rbx
	call	_ZdlPvm@PLT
	movl	$1600, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	$0, 8(%rsp)
	je	.L388
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L388:
	testq	%r14, %r14
	je	.L361
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
.L361:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L362
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L362:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L285
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L285:
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L529
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	vmovq	%rbx, %xmm0
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
.L525:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L343
	.p2align 4,,10
	.p2align 3
.L287:
	movq	$0, 64(%rsp)
	xorl	%r13d, %r13d
	movq	$0, 80(%rsp)
	movq	$0, 96(%rsp)
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L520:
	xorl	%ebx, %ebx
	jmp	.L305
	.p2align 4,,10
	.p2align 3
.L393:
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.L315
	.p2align 4,,10
	.p2align 3
.L394:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L321
	.p2align 4,,10
	.p2align 3
.L395:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L331
	.p2align 4,,10
	.p2align 3
.L391:
	movq	%rdi, %r13
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L527:
	xorl	%edi, %edi
	jmp	.L355
	.p2align 4,,10
	.p2align 3
.L519:
	movq	%rdi, %r13
	jmp	.L289
.L528:
	testq	%r12, %r12
	jns	.L357
.LEHB49:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE49:
.L521:
	cmpq	$0, 8(%rsp)
	jns	.L308
.LEHB50:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE50:
.L522:
	testq	%rbx, %rbx
	jns	.L317
.LEHB51:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE51:
.L523:
	testq	%rdx, %rdx
	jns	.L323
.LEHB52:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE52:
.L524:
	testq	%rcx, %rcx
	jns	.L333
.LEHB53:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE53:
.L526:
	testq	%r12, %r12
	jns	.L345
.LEHB54:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE54:
.L308:
.LEHB55:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE55:
.L317:
.LEHB56:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE56:
.L323:
.LEHB57:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE57:
.L333:
.LEHB58:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE58:
.L345:
.LEHB59:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE59:
.L357:
.LEHB60:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE60:
.L518:
	leaq	.LC4(%rip), %rdi
.LEHB61:
	call	_ZSt20__throw_length_errorPKc@PLT
.L529:
	call	__stack_chk_fail@PLT
.L400:
	endbr64
	movq	%rax, %rbp
	jmp	.L385
.L408:
	endbr64
.L514:
	movq	%rax, %rbx
	jmp	.L378
.L292:
	movl	$16384, %esi
	vzeroupper
.L293:
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L383:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L385
	vzeroupper
	call	_ZdlPvm@PLT
.L385:
	movq	48(%rsp), %rdi
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L505
	vzeroupper
	call	_ZdlPvm@PLT
.L386:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE61:
.L505:
	vzeroupper
	jmp	.L386
.L376:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L378
	vzeroupper
	call	_ZdlPvm@PLT
.L378:
	movq	144(%rsp), %rdi
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L379
	vzeroupper
	call	_ZdlPvm@PLT
.L379:
	movq	%r14, %r12
.L310:
	movl	$1600, %esi
	movq	%r13, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
.L380:
	movl	$1600, %esi
	movq	%rbp, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	movq	%rbx, %rbp
	subq	%rax, %rsi
	testq	%rax, %rax
	je	.L381
.L298:
	movq	32(%rsp), %rdi
	call	_ZdlPvm@PLT
.L381:
	movq	16(%rsp), %rsi
	subq	%r12, %rsi
	testq	%r12, %r12
	jne	.L293
	jmp	.L383
.L424:
	endbr64
.L508:
	movq	%rax, %rbx
	jmp	.L327
.L419:
	endbr64
	jmp	.L508
.L420:
	endbr64
	jmp	.L508
.L423:
	endbr64
	jmp	.L508
.L327:
.L369:
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.L310
.L411:
	endbr64
.L517:
	movq	%rax, %rbx
	jmp	.L376
.L410:
	endbr64
	jmp	.L514
.L404:
	endbr64
.L513:
	movq	%rax, %rbx
	jmp	.L368
.L405:
	endbr64
	movq	%rax, %rbx
.L364:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L368
	vzeroupper
	call	_ZdlPvm@PLT
.L368:
	movq	144(%rsp), %rdi
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L369
	vzeroupper
	call	_ZdlPvm@PLT
	jmp	.L369
.L421:
	endbr64
	jmp	.L508
.L402:
	endbr64
	movq	%rax, %rbx
	jmp	.L380
.L409:
	endbr64
	jmp	.L517
.L414:
	endbr64
.L510:
	movq	%rax, %rbx
	jmp	.L354
.L406:
	endbr64
	jmp	.L513
.L403:
	endbr64
	movq	%rax, %rbx
	jmp	.L310
.L407:
	endbr64
	movq	%rax, %rbx
	jmp	.L370
.L401:
	endbr64
	movq	%rax, %rbp
	jmp	.L383
.L422:
	endbr64
	jmp	.L510
.L370:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L310
	vzeroupper
	call	_ZdlPvm@PLT
	jmp	.L310
.L412:
	endbr64
	movq	%rax, %rbp
	jmp	.L292
.L425:
	endbr64
	jmp	.L508
.L413:
	endbr64
	movq	%rax, %rbp
.L297:
	movl	$16384, %esi
	vzeroupper
	jmp	.L298
.L354:
	jmp	.L379
	.cfi_endproc
.LFE3721:
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
.LLSDA3721:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3721-.LLSDACSB3721
.LLSDACSB3721:
	.uleb128 .LEHB30-.LFB3721
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB3721
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L400-.LFB3721
	.uleb128 0
	.uleb128 .LEHB32-.LFB3721
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L401-.LFB3721
	.uleb128 0
	.uleb128 .LEHB33-.LFB3721
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L412-.LFB3721
	.uleb128 0
	.uleb128 .LEHB34-.LFB3721
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L413-.LFB3721
	.uleb128 0
	.uleb128 .LEHB35-.LFB3721
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L402-.LFB3721
	.uleb128 0
	.uleb128 .LEHB36-.LFB3721
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L421-.LFB3721
	.uleb128 0
	.uleb128 .LEHB37-.LFB3721
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L404-.LFB3721
	.uleb128 0
	.uleb128 .LEHB38-.LFB3721
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L405-.LFB3721
	.uleb128 0
	.uleb128 .LEHB39-.LFB3721
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L425-.LFB3721
	.uleb128 0
	.uleb128 .LEHB40-.LFB3721
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L406-.LFB3721
	.uleb128 0
	.uleb128 .LEHB41-.LFB3721
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L403-.LFB3721
	.uleb128 0
	.uleb128 .LEHB42-.LFB3721
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L407-.LFB3721
	.uleb128 0
	.uleb128 .LEHB43-.LFB3721
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L422-.LFB3721
	.uleb128 0
	.uleb128 .LEHB44-.LFB3721
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB45-.LFB3721
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L409-.LFB3721
	.uleb128 0
	.uleb128 .LEHB46-.LFB3721
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L414-.LFB3721
	.uleb128 0
	.uleb128 .LEHB47-.LFB3721
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L410-.LFB3721
	.uleb128 0
	.uleb128 .LEHB48-.LFB3721
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L411-.LFB3721
	.uleb128 0
	.uleb128 .LEHB49-.LFB3721
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L410-.LFB3721
	.uleb128 0
	.uleb128 .LEHB50-.LFB3721
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L419-.LFB3721
	.uleb128 0
	.uleb128 .LEHB51-.LFB3721
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L404-.LFB3721
	.uleb128 0
	.uleb128 .LEHB52-.LFB3721
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L423-.LFB3721
	.uleb128 0
	.uleb128 .LEHB53-.LFB3721
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L403-.LFB3721
	.uleb128 0
	.uleb128 .LEHB54-.LFB3721
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB55-.LFB3721
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L420-.LFB3721
	.uleb128 0
	.uleb128 .LEHB56-.LFB3721
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L404-.LFB3721
	.uleb128 0
	.uleb128 .LEHB57-.LFB3721
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L424-.LFB3721
	.uleb128 0
	.uleb128 .LEHB58-.LFB3721
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L403-.LFB3721
	.uleb128 0
	.uleb128 .LEHB59-.LFB3721
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB60-.LFB3721
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L410-.LFB3721
	.uleb128 0
	.uleb128 .LEHB61-.LFB3721
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSE3721:
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.size	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, .-_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.section	.rodata._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.str1.1,"aMS",@progbits,1
.LC6:
	.string	"rentre dedans %b\n"
.LC7:
	.string	"\nc = %d\n"
.LC8:
	.string	"res = %.40f"
	.section	.text._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"axG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
	.p2align 4
	.weak	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.type	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_, @function
_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_:
.LFB3727:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3727
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
	movl	%esi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	8(%rdi), %rbx
	subq	(%rdi), %rbx
	movl	$1, %edi
	movq	%rdx, 16(%rsp)
	sarq	$3, %rbx
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	$0x000000000, (%rdx)
	xorl	%eax, %eax
	movzbl	%sil, %edx
	leaq	.LC6(%rip), %rsi
.LEHB62:
	call	__printf_chk@PLT
	testb	%r12b, %r12b
	je	.L530
	movl	$0, 12(%rsp)
	leaq	72(%rsp), %r13
	leaq	64(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L531:
	addl	$1, 12(%rsp)
	movl	12(%rsp), %edx
	leaq	.LC7(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	16(%rsp), %rax
	movl	$1, %edi
	leaq	.LC8(%rip), %rsi
	vmovsd	(%rax), %xmm0
	movl	$1, %eax
	call	__printf_chk@PLT
	testl	%ebx, %ebx
	je	.L567
	movl	%ebx, %ebx
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	0(%rbp), %rcx
	xorl	%r15d, %r15d
	leaq	0(,%rbx,8), %r14
	vmovsd	%xmm3, %xmm3, %xmm2
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L536:
	vmovsd	(%rcx,%r15), %xmm1
	vmovsd	%xmm2, %xmm2, %xmm0
	movq	%r13, %rsi
	movq	%r12, %rdi
	vmovsd	%xmm3, (%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	0(%rbp), %rcx
	movslq	%ebx, %rax
	vmovsd	72(%rsp), %xmm0
	salq	$3, %rax
	vmovsd	64(%rsp), %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	vmovsd	(%rsp), %xmm3
	leaq	(%rcx,%rax), %rdx
	vmovsd	%xmm0, (%rdx)
	vandpd	.LC5(%rip), %xmm2, %xmm0
	movq	$0x000000000, 64(%rsp)
	movq	$0x000000000, 72(%rsp)
	vucomisd	(%rdx), %xmm5
	vmaxsd	%xmm3, %xmm0, %xmm3
	jp	.L572
	je	.L534
.L572:
	addl	$1, %ebx
	addq	$8, %rax
.L534:
	addq	$8, %r15
	cmpq	%r15, %r14
	jne	.L536
	leal	-1(%rbx), %edx
	vxorpd	%xmm7, %xmm7, %xmm7
	vcvtsi2sdl	%edx, %xmm7, %xmm0
	vmovsd	%xmm0, 24(%rsp)
.L532:
	vmovsd	%xmm3, %xmm3, %xmm0
	movq	%rax, 32(%rsp)
	vmovsd	%xmm2, (%rsp)
	call	_Z3ulpIdET_S0_
	movq	16(%rsp), %r14
	movq	%r13, %rsi
	movq	%r12, %rdi
	vmulsd	24(%rsp), %xmm0, %xmm3
	vmovsd	(%rsp), %xmm2
	vmulsd	.LC9(%rip), %xmm3, %xmm3
	vmovsd	(%r14), %xmm0
	vmovsd	%xmm2, %xmm2, %xmm1
	vmovsd	%xmm3, 24(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	0(%rbp), %rdx
	movq	32(%rsp), %rax
	vmovsd	64(%rsp), %xmm0
	vmovsd	72(%rsp), %xmm2
	movq	$0x000000000, 64(%rsp)
	movq	$0x000000000, 72(%rsp)
	vmovsd	%xmm0, (%r14)
	vmovsd	%xmm2, (%rdx,%rax)
	vmovsd	(%r14), %xmm0
	vmovsd	%xmm2, (%rsp)
	call	_Z3ulpIdET_S0_
	vmulsd	.LC9(%rip), %xmm0, %xmm0
	vmovsd	24(%rsp), %xmm3
	vmovsd	(%rsp), %xmm2
	vcomisd	%xmm3, %xmm0
	ja	.L605
.L538:
	cmpl	$1000, 12(%rsp)
	jne	.L531
.L530:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L606
	addq	$120, %rsp
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
.L605:
	.cfi_restore_state
	vmovsd	%xmm3, %xmm3, %xmm1
	vmovsd	%xmm2, %xmm2, %xmm0
	movq	%r13, %rsi
	movq	%r12, %rdi
	vmovsd	%xmm3, 32(%rsp)
	vmovsd	%xmm2, 24(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	72(%rsp), %r14
	vmovsd	24(%rsp), %xmm2
	vmovsd	64(%rsp), %xmm7
	movq	$0x000000000, 72(%rsp)
	vmovsd	32(%rsp), %xmm3
	vxorpd	.LC10(%rip), %xmm3, %xmm1
	movq	$0x000000000, 64(%rsp)
	vmovsd	%xmm2, %xmm2, %xmm0
	vmovsd	%xmm7, (%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	16(%rsp), %rax
	vmovsd	64(%rsp), %xmm2
	movq	$0x000000000, 64(%rsp)
	vmovsd	72(%rsp), %xmm3
	movq	$0x000000000, 72(%rsp)
	vmovsd	(%rax), %xmm1
	vaddsd	(%rsp), %xmm1, %xmm0
	vucomisd	%xmm0, %xmm1
	jp	.L543
	jne	.L543
	vaddsd	%xmm2, %xmm1, %xmm0
	vucomisd	%xmm0, %xmm1
	jp	.L543
	je	.L607
.L543:
	movq	8(%rbp), %rax
	movq	0(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
	je	.L608
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L609
	movq	%r14, %rdi
	call	_Znwm@PLT
.LEHE62:
	movq	0(%rbp), %rsi
	movq	%rax, %rcx
	movq	8(%rbp), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L542:
	addq	%rcx, %r14
	movq	%rcx, 80(%rsp)
	movq	%r14, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L552
	movq	%rcx, %rdi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L552:
	leaq	80(%rsp), %r14
	addq	%rdx, %rcx
	leaq	48(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rcx, 88(%rsp)
.LEHB63:
	call	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias
.LEHE63:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L553
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L553:
	movq	8(%rbp), %rax
	movq	0(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L569
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L610
	movq	%rdx, %rdi
	movq	%rdx, (%rsp)
.LEHB64:
	call	_Znwm@PLT
.LEHE64:
	movq	0(%rbp), %rsi
	movq	(%rsp), %rdx
	movq	%rax, %rcx
	movq	8(%rbp), %rax
	movq	%rax, %r8
	subq	%rsi, %r8
.L554:
	addq	%rcx, %rdx
	movq	%rcx, 80(%rsp)
	movq	%rdx, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L557
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %r8
	movq	%rax, %rcx
.L557:
	addq	%r8, %rcx
	leaq	56(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	movq	%rcx, 88(%rsp)
.LEHB65:
	call	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias
.LEHE65:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L558
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L558:
	movq	16(%rsp), %r14
	vmovsd	48(%rsp), %xmm1
	movq	%r13, %rsi
	movq	%r12, %rdi
	vmovsd	(%r14), %xmm0
.LEHB66:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	64(%rsp), %xmm1
	vmovsd	72(%rsp), %xmm4
	movq	$0x000000000, 64(%rsp)
	vmovsd	56(%rsp), %xmm0
	movq	$0x000000000, 72(%rsp)
	vmovsd	%xmm1, (%r14)
	vmovsd	%xmm1, 24(%rsp)
	vmovsd	%xmm4, (%rsp)
	vmovsd	%xmm4, 48(%rsp)
	call	_Z4signIdEiT_
	vmovsd	(%rsp), %xmm0
	movl	%eax, %r14d
	call	_Z8half_ulpIdEbT_
	vmovsd	24(%rsp), %xmm1
	testb	%al, %al
	jne	.L611
.L559:
	movq	16(%rsp), %rax
	vmovsd	%xmm1, (%rax)
	jmp	.L538
	.p2align 4,,10
	.p2align 3
.L608:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L542
	.p2align 4,,10
	.p2align 3
.L569:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L554
	.p2align 4,,10
	.p2align 3
.L567:
	vxorpd	%xmm3, %xmm3, %xmm3
	movl	$8, %eax
	movl	$1, %ebx
	movq	$0x000000000, 24(%rsp)
	vmovsd	%xmm3, %xmm3, %xmm2
	jmp	.L532
	.p2align 4,,10
	.p2align 3
.L611:
	vmovsd	(%rsp), %xmm0
	call	_Z4signIdEiT_
	vmovsd	24(%rsp), %xmm1
	cmpl	%eax, %r14d
	jne	.L559
	vmovsd	(%rsp), %xmm0
	call	_Z4magnIdET_S0_
	vmovsd	24(%rsp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm1
	jmp	.L559
.L607:
	vmovq	%r14, %xmm0
	vmovsd	%xmm3, 40(%rsp)
	vmovsd	%xmm2, 32(%rsp)
	vmovsd	%xmm1, 24(%rsp)
	call	_Z4signIdEiT_
	vmovsd	(%rsp), %xmm0
	movl	%eax, %r14d
	call	_Z8half_ulpIdEbT_
	vmovsd	24(%rsp), %xmm1
	vmovsd	32(%rsp), %xmm2
	testb	%al, %al
	vmovsd	40(%rsp), %xmm3
	jne	.L612
.L545:
	movq	16(%rsp), %rax
	vmovsd	(%rax), %xmm4
	vucomisd	%xmm1, %xmm4
	jp	.L543
	jne	.L543
	vmovsd	%xmm3, %xmm3, %xmm0
	vmovsd	%xmm4, 24(%rsp)
	vmovsd	%xmm2, (%rsp)
	call	_Z4signIdEiT_
	vmovsd	(%rsp), %xmm2
	movl	%eax, %r14d
	vmovsd	%xmm2, %xmm2, %xmm0
	call	_Z8half_ulpIdEbT_
	vmovsd	(%rsp), %xmm2
	vmovsd	24(%rsp), %xmm4
	testb	%al, %al
	jne	.L613
.L547:
	movq	16(%rsp), %rax
	vucomisd	(%rax), %xmm4
	jp	.L543
	je	.L538
	jmp	.L543
.L612:
	vmovsd	(%rsp), %xmm0
	call	_Z4signIdEiT_
	vmovsd	24(%rsp), %xmm1
	vmovsd	32(%rsp), %xmm2
	cmpl	%eax, %r14d
	vmovsd	40(%rsp), %xmm3
	jne	.L545
	vmovsd	(%rsp), %xmm0
	call	_Z4magnIdET_S0_
	vmovsd	24(%rsp), %xmm1
	vmovsd	40(%rsp), %xmm3
	vmovsd	32(%rsp), %xmm2
	vaddsd	%xmm0, %xmm1, %xmm1
	jmp	.L545
.L609:
	testq	%r14, %r14
	jns	.L551
.L556:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L610:
	testq	%rdx, %rdx
	js	.L556
.L551:
	call	_ZSt17__throw_bad_allocv@PLT
.L613:
	vmovsd	%xmm2, %xmm2, %xmm0
	call	_Z4signIdEiT_
	vmovsd	(%rsp), %xmm2
	vmovsd	24(%rsp), %xmm4
	cmpl	%eax, %r14d
	jne	.L547
	vmovsd	%xmm2, %xmm2, %xmm0
	vmovsd	%xmm4, (%rsp)
	call	_Z4magnIdET_S0_
	vmovsd	(%rsp), %xmm4
	vaddsd	%xmm0, %xmm4, %xmm4
	jmp	.L547
.L606:
	call	__stack_chk_fail@PLT
.L571:
	endbr64
.L604:
	movq	%rax, %rbp
	jmp	.L563
.L570:
	endbr64
	jmp	.L604
.L563:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L599
	vzeroupper
	call	_ZdlPvm@PLT
.L564:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE66:
.L599:
	vzeroupper
	jmp	.L564
	.cfi_endproc
.LFE3727:
	.section	.gcc_except_table._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"aG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
.LLSDA3727:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3727-.LLSDACSB3727
.LLSDACSB3727:
	.uleb128 .LEHB62-.LFB3727
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB3727
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L570-.LFB3727
	.uleb128 0
	.uleb128 .LEHB64-.LFB3727
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB3727
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L571-.LFB3727
	.uleb128 0
	.uleb128 .LEHB66-.LFB3727
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSE3727:
	.section	.text._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"axG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
	.size	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_, .-_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.set	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_Rare_Blas.cc, @function
_GLOBAL__sub_I_Rare_Blas.cc:
.LFB4180:
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
.LFE4180:
	.size	_GLOBAL__sub_I_Rare_Blas.cc, .-_GLOBAL__sub_I_Rare_Blas.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Rare_Blas.cc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	2146435072
	.align 8
.LC2:
	.long	0
	.long	-1048576
	.align 8
.LC3:
	.long	0
	.long	1077608448
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC10:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
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
