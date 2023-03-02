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
	movsd	.LC0(%rip), %xmm1
	movsd	%xmm0, 8(%rsp)
	call	nextafter@PLT
	movsd	8(%rsp), %xmm2
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	subsd	%xmm2, %xmm0
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
	pxor	%xmm1, %xmm1
	xorl	%eax, %eax
	comisd	%xmm1, %xmm0
	seta	%al
	xorl	%edx, %edx
	comisd	%xmm0, %xmm1
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
	movsd	.LC0(%rip), %xmm1
	call	nextafter@PLT
	movq	%xmm0, %rax
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
	movsd	.LC2(%rip), %xmm1
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
	movsd	.LC3(%rip), %xmm2
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm1
	addsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm1, (%rdi)
	movsd	%xmm0, (%rsi)
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
	pxor	%xmm0, %xmm0
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
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edx, %ebx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	movq	$0, 16(%rdi)
	movups	%xmm0, (%rdi)
	movl	$16384, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %xmm0
	leaq	16384(%rax), %r13
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 16(%r12)
	movups	%xmm0, (%r12)
	cmpq	%r13, %rdi
	je	.L12
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L12:
	movq	%r13, 8(%r12)
	testl	%ebx, %ebx
	je	.L11
	leaq	0(,%rbx,8), %rax
	leaq	32(%rsp), %r15
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	leaq	24(%rsp), %r14
	leaq	20(%rsp), %r13
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L29:
	cvttsd2siq	%xmm0, %rax
.L15:
	leaq	(%rdx,%rax,8), %rax
	addq	$8, %rbx
	movsd	(%rax), %xmm0
	addsd	32(%rsp), %xmm0
	movsd	%xmm0, (%rax)
	cmpq	8(%rsp), %rbx
	je	.L11
.L16:
	movq	0(%rbp), %rax
	movq	%r15, %rsi
	movq	%r14, %rdi
	movsd	(%rax,%rbx), %xmm0
.LEHB1:
	call	_Z14Split_VeltkampIdEvT_RS0_S1_
.LEHE1:
	movsd	24(%rsp), %xmm1
	movq	%r13, %rdi
	movapd	%xmm1, %xmm0
	movsd	%xmm1, (%rsp)
	call	frexp@PLT
	movl	20(%rsp), %eax
	movq	(%r12), %rdx
	pxor	%xmm0, %xmm0
	movsd	(%rsp), %xmm1
	addl	$1024, %eax
	movslq	%eax, %rcx
	cvtsi2sdl	%eax, %xmm0
	subsd	.LC4(%rip), %xmm0
	movl	%eax, 20(%rsp)
	leaq	(%rdx,%rcx,8), %rcx
	comisd	.LC5(%rip), %xmm0
	addsd	(%rcx), %xmm1
	movsd	%xmm1, (%rcx)
	jb	.L29
	subsd	.LC5(%rip), %xmm0
	movabsq	$-9223372036854775808, %rsi
	cvttsd2siq	%xmm0, %rax
	xorq	%rsi, %rax
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L11:
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
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
.L30:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L20:
	endbr64
	movq	%rax, %rbp
.L17:
	movq	(%r12), %rdi
	movq	16(%r12), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L18
	call	_ZdlPvm@PLT
.L18:
	movq	%rbp, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
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
	.uleb128 .L20-.LFB3710
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
	je	.L31
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
.L33:
	movq	%r15, %rdi
	pxor	%xmm0, %xmm0
	call	frexp@PLT
	movslq	36(%rsp), %r13
	movq	0(%rbp), %rcx
	movq	(%r12), %rsi
	movq	24(%rsp), %rdi
	movsd	(%rcx,%rbx), %xmm1
	leaq	0(,%r13,8), %rax
	addq	$8, %rbx
	movsd	(%rsi,%r13,8), %xmm0
	movq	%r14, %rsi
	movq	%rax, (%rsp)
	call	_Z10FastTwoSumIdEvT_S0_RS0_S1_@PLT
	movq	8(%rsp), %rdx
	movsd	48(%rsp), %xmm0
	movq	(%r12), %rcx
	movq	(%rsp), %rax
	addq	(%rdx), %rax
	movsd	%xmm0, (%rcx,%r13,8)
	movsd	(%rax), %xmm0
	addsd	40(%rsp), %xmm0
	movsd	%xmm0, (%rax)
	cmpq	16(%rsp), %rbx
	jne	.L33
.L31:
	movq	56(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L40
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
.L40:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3720:
	.size	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .-_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.section	.rodata._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i.str1.8,"aMS",@progbits,1
	.align 8
.LC6:
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movslq	%edx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 248(%rsp)
	movq	%r13, %rax
	shrq	$60, %rax
	jne	.L187
	pxor	%xmm0, %xmm0
	movq	%rdi, %r12
	movq	%rsi, %rbx
	movq	%r13, %rbp
	movaps	%xmm0, (%rsp)
	leaq	0(,%r13,8), %r14
	movq	$0, 16(%rsp)
	testq	%r13, %r13
	je	.L43
	movq	%r14, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	movq	%rax, %xmm0
	leaq	(%rax,%r14), %r15
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r15, 16(%rsp)
	movaps	%xmm0, (%rsp)
	cmpq	$1, %r13
	je	.L107
	cmpq	%r15, %rdi
	je	.L44
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L44:
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	movq	%r15, 8(%rsp)
	movq	$0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	movq	%rax, %xmm0
	leaq	(%rax,%r14), %r15
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r15, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	cmpq	$1, %r13
	je	.L188
	cmpq	%rdi, %r15
	je	.L45
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L45:
	pxor	%xmm0, %xmm0
	movl	$16384, %edi
	movq	%r15, 40(%rsp)
	movq	$0, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	movq	%rax, %xmm0
	leaq	16384(%rax), %r13
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	cmpq	%r13, %rdi
	je	.L48
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L48:
	pxor	%xmm0, %xmm0
	movl	$16384, %edi
	movq	%r13, 72(%rsp)
	movq	$0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	movq	%rax, %xmm0
	leaq	16384(%rax), %r13
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	cmpq	%r13, %rdi
	je	.L51
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L51:
	pxor	%xmm0, %xmm0
	movl	$16384, %edi
	movq	%r13, 104(%rsp)
	movq	$0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	movq	%rax, %xmm0
	leaq	16384(%rax), %r13
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	cmpq	%r13, %rdi
	je	.L54
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L54:
	pxor	%xmm0, %xmm0
	movl	$16384, %edi
	movq	%r13, 136(%rsp)
	movq	$0, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %xmm0
	leaq	16384(%rax), %r13
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	cmpq	%r13, %rdi
	je	.L58
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L58:
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%r13, 168(%rsp)
	pxor	%xmm0, %xmm0
	movq	$0, 240(%rsp)
	movq	%rax, %r13
	movaps	%xmm0, 224(%rsp)
	subq	%rsi, %r13
	je	.L189
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r13
	ja	.L190
	movq	%r13, %rdi
.LEHB9:
	call	_Znwm@PLT
.LEHE9:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
.L57:
	movq	%rcx, %xmm0
	addq	%rcx, %r13
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	cmpq	%rsi, %rax
	je	.L61
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L61:
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	addq	%rbx, %rcx
	pxor	%xmm0, %xmm0
	movq	%rcx, 232(%rsp)
	movq	%rax, %rbx
	movaps	%xmm0, 192(%rsp)
	movq	$0, 208(%rsp)
	subq	%rsi, %rbx
	je	.L109
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L191
	movq	%rbx, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %r12
	subq	%rsi, %r12
.L62:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	cmpq	%rsi, %rax
	je	.L65
	movq	%rcx, %rdi
	movq	%r12, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L65:
	addq	%r12, %rcx
	leaq	224(%rsp), %r12
	leaq	192(%rsp), %rdi
	movl	%ebp, %edx
	movq	%rcx, 200(%rsp)
	leaq	32(%rsp), %r8
	movq	%rsp, %rcx
	movq	%r12, %rsi
.LEHB11:
	call	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_@PLT
.LEHE11:
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L66
	movq	208(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L66:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L67
	movq	240(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L67:
	movq	8(%rsp), %rax
	movq	(%rsp), %rsi
	pxor	%xmm0, %xmm0
	movq	$0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L110
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L192
	movq	%rbx, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	movq	(%rsp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L68:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	cmpq	%rsi, %rax
	je	.L71
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L71:
	addq	%r13, %rcx
	leaq	128(%rsp), %rdx
	movl	%ebp, %esi
	movq	%r12, %rdi
	movq	%rcx, 232(%rsp)
	leaq	160(%rsp), %rcx
.LEHB13:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE13:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L72
	movq	240(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L72:
	movq	40(%rsp), %rax
	pxor	%xmm0, %xmm0
	movq	32(%rsp), %rsi
	movq	$0, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L111
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L193
	movq	%rbx, %rdi
.LEHB14:
	call	_Znwm@PLT
.LEHE14:
	movq	%rax, %rcx
	movq	40(%rsp), %rax
	movq	32(%rsp), %rsi
	movq	%rax, %r13
	subq	%rsi, %r13
.L73:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 240(%rsp)
	movaps	%xmm0, 224(%rsp)
	cmpq	%rsi, %rax
	je	.L76
	movq	%rcx, %rdi
	movq	%r13, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L76:
	addq	%r13, %rcx
	leaq	64(%rsp), %rdx
	movl	%ebp, %esi
	movq	%r12, %rdi
	movq	%rcx, 232(%rsp)
	leaq	96(%rsp), %rcx
.LEHB15:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE15:
	movq	224(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L77
	movq	240(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L77:
	movq	64(%rsp), %rcx
	movq	96(%rsp), %rdx
	xorl	%eax, %eax
	pxor	%xmm2, %xmm2
	.p2align 4,,10
	.p2align 3
.L78:
	movupd	(%rdx,%rax), %xmm0
	movupd	(%rcx,%rax), %xmm4
	addq	$16, %rax
	addpd	%xmm4, %xmm0
	addsd	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	cmpq	$16384, %rax
	jne	.L78
	movq	128(%rsp), %rdx
	movq	160(%rsp), %rdi
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	.p2align 4,,10
	.p2align 3
.L79:
	movupd	(%rdx,%rax), %xmm0
	movupd	(%rdi,%rax), %xmm5
	addq	$16, %rax
	addpd	%xmm5, %xmm0
	addsd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	cmpq	$16384, %rax
	jne	.L79
	addsd	%xmm2, %xmm1
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	movq	%xmm1, %rbx
	call	_ZdlPvm@PLT
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L80
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L80:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L81
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L81:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L82
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L82:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L83
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L83:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L41
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L41:
	movq	248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L194
	addq	$264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %xmm0
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
.L43:
	.cfi_restore_state
	movq	$0, 16(%rsp)
	xorl	%r15d, %r15d
	movq	$0, 32(%rsp)
	movq	$0, 48(%rsp)
	jmp	.L45
.L189:
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	jmp	.L57
.L109:
	xorl	%r12d, %r12d
	xorl	%ecx, %ecx
	jmp	.L62
.L110:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L68
.L111:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	jmp	.L73
.L107:
	movq	%rdi, %r15
	jmp	.L44
.L188:
	movq	%rdi, %r15
	jmp	.L45
.L190:
	testq	%r13, %r13
	jns	.L60
.LEHB16:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE16:
.L191:
	testq	%rbx, %rbx
	jns	.L64
.LEHB17:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE17:
.L192:
	testq	%rbx, %rbx
	jns	.L70
.LEHB18:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L193:
	testq	%rbx, %rbx
	jns	.L75
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L60:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE18:
.L64:
.LEHB19:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE19:
.L70:
.LEHB20:
	call	_ZSt17__throw_bad_allocv@PLT
.L75:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE20:
.L194:
	call	__stack_chk_fail@PLT
.L187:
	leaq	.LC6(%rip), %rdi
.LEHB21:
	call	_ZSt20__throw_length_errorPKc@PLT
.L116:
	endbr64
	movq	%rax, %rbp
	jmp	.L95
.L114:
	endbr64
	movq	%rax, %rbp
	jmp	.L99
.L85:
	movq	192(%rsp), %rdi
	movq	208(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L92
	call	_ZdlPvm@PLT
.L92:
	movq	224(%rsp), %rdi
	movq	240(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L89
	call	_ZdlPvm@PLT
.L89:
	movq	160(%rsp), %rdi
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	jne	.L195
.L94:
	movq	%rbx, %rbp
.L95:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L97
	call	_ZdlPvm@PLT
.L97:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L99
	call	_ZdlPvm@PLT
.L99:
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L101
	call	_ZdlPvm@PLT
.L101:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L103
	call	_ZdlPvm@PLT
.L103:
	movq	(%rsp), %rdi
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L104
	call	_ZdlPvm@PLT
.L104:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE21:
.L121:
	endbr64
.L186:
	movq	%rax, %rbx
	jmp	.L92
.L113:
	endbr64
	movq	%rax, %rbp
	jmp	.L101
.L120:
	endbr64
	jmp	.L186
.L112:
	endbr64
	movq	%rax, %rbp
	jmp	.L103
.L115:
	endbr64
	movq	%rax, %rbp
	jmp	.L97
.L118:
	endbr64
	jmp	.L186
.L119:
	endbr64
	movq	%rax, %rbx
	jmp	.L85
.L117:
	endbr64
	movq	%rax, %rbx
	jmp	.L89
.L195:
	call	_ZdlPvm@PLT
	jmp	.L94
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
	.uleb128 .L112-.LFB3725
	.uleb128 0
	.uleb128 .LEHB5-.LFB3725
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L113-.LFB3725
	.uleb128 0
	.uleb128 .LEHB6-.LFB3725
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L114-.LFB3725
	.uleb128 0
	.uleb128 .LEHB7-.LFB3725
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L115-.LFB3725
	.uleb128 0
	.uleb128 .LEHB8-.LFB3725
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L116-.LFB3725
	.uleb128 0
	.uleb128 .LEHB9-.LFB3725
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB10-.LFB3725
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L118-.LFB3725
	.uleb128 0
	.uleb128 .LEHB11-.LFB3725
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L119-.LFB3725
	.uleb128 0
	.uleb128 .LEHB12-.LFB3725
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB13-.LFB3725
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L120-.LFB3725
	.uleb128 0
	.uleb128 .LEHB14-.LFB3725
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB15-.LFB3725
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L121-.LFB3725
	.uleb128 0
	.uleb128 .LEHB16-.LFB3725
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB17-.LFB3725
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L118-.LFB3725
	.uleb128 0
	.uleb128 .LEHB18-.LFB3725
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L117-.LFB3725
	.uleb128 0
	.uleb128 .LEHB19-.LFB3725
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L118-.LFB3725
	.uleb128 0
	.uleb128 .LEHB20-.LFB3725
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L117-.LFB3725
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
	pxor	%xmm6, %xmm6
	movl	%esi, %ebx
	movq	(%rdi), %rax
	xorl	%r14d, %r14d
	salq	$3, %rbx
	movsd	%xmm6, 16(%rsp)
	leaq	88(%rsp), %r13
	leaq	80(%rsp), %rbp
	movsd	%xmm6, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L198:
	movsd	(%rax,%r14), %xmm1
	movsd	24(%rsp), %xmm0
	movq	%r13, %rsi
	movq	%rbp, %rdi
.LEHB22:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	88(%rsp), %xmm0
	movq	(%r12), %rax
	movsd	80(%rsp), %xmm5
	movsd	%xmm0, (%rax,%r14)
	addq	$8, %r14
	movq	$0x000000000, 80(%rsp)
	movq	$0x000000000, 88(%rsp)
	movsd	%xmm5, 24(%rsp)
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
.L265:
	movl	60(%rsp), %r13d
	testl	%r13d, %r13d
	je	.L199
	movsd	16(%rsp), %xmm2
	xorl	%r14d, %r14d
	movq	(%r12), %rax
	movq	%r15, 48(%rsp)
	leaq	88(%rsp), %rbp
	movq	%r14, %r15
	leaq	80(%rsp), %rbx
	movq	64(%rsp), %r14
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm2, 32(%rsp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L276:
	movsd	32(%rsp), %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	movsd	80(%rsp), %xmm5
	movsd	88(%rsp), %xmm0
	leaq	(%rax,%r15), %rcx
	movsd	%xmm5, 32(%rsp)
	movsd	%xmm0, (%rcx)
.L202:
	movq	$0x000000000, 80(%rsp)
	movsd	16(%rsp), %xmm6
	movq	$0x000000000, 88(%rsp)
	ucomisd	(%rcx), %xmm6
	jp	.L203
	jne	.L203
	subl	$1, %r13d
.L203:
	addq	$8, %r15
	cmpq	%r15, %r14
	je	.L275
.L205:
	movsd	(%rax,%r15), %xmm1
	movsd	24(%rsp), %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movsd	(%rax,%r15), %xmm1
	comisd	16(%rsp), %xmm1
	ja	.L276
	movsd	8(%rsp), %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r12), %rax
	movsd	80(%rsp), %xmm6
	movsd	88(%rsp), %xmm0
	leaq	(%rax,%r15), %rcx
	movsd	%xmm6, 8(%rsp)
	movsd	%xmm0, (%rcx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L275:
	movl	56(%rsp), %edx
	movsd	32(%rsp), %xmm2
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
	movq	%rbp, %r14
	movq	%rbx, %rbp
	movq	%rax, %rbx
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L278:
	movapd	%xmm2, %xmm0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r15), %rdx
	movsd	88(%rsp), %xmm0
	movsd	80(%rsp), %xmm2
	leaq	(%rdx,%r12), %rcx
	movsd	%xmm0, (%rcx)
.L209:
	movq	$0x000000000, 80(%rsp)
	movsd	16(%rsp), %xmm3
	movq	$0x000000000, 88(%rsp)
	ucomisd	(%rcx), %xmm3
	jp	.L248
	je	.L210
.L248:
	addl	$1, %r13d
.L210:
	addq	$8, %r12
	cmpq	%rbx, %r12
	je	.L277
.L212:
	movsd	(%rdx,%r12), %xmm1
	comisd	16(%rsp), %xmm1
	ja	.L278
	movsd	8(%rsp), %xmm0
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movsd	%xmm2, 32(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	(%r15), %rdx
	movsd	80(%rsp), %xmm7
	movsd	88(%rsp), %xmm0
	movsd	32(%rsp), %xmm2
	leaq	(%rdx,%r12), %rcx
	movsd	%xmm7, 8(%rsp)
	movsd	%xmm0, (%rcx)
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L277:
	movq	48(%rsp), %r12
.L206:
	pxor	%xmm7, %xmm7
	movsd	8(%rsp), %xmm0
	movapd	%xmm2, %xmm1
	andpd	.LC7(%rip), %xmm0
	cvtsi2sdl	%r13d, %xmm7
	andpd	.LC7(%rip), %xmm1
	maxsd	%xmm1, %xmm0
	movsd	%xmm7, 48(%rsp)
.L213:
	movsd	%xmm2, 32(%rsp)
	call	_Z3ulpIdET_S0_
	mulsd	48(%rsp), %xmm0
	movsd	32(%rsp), %xmm2
	movsd	24(%rsp), %xmm6
	movsd	%xmm0, 48(%rsp)
	movsd	8(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm6, %xmm0
	ucomisd	%xmm6, %xmm0
	jp	.L215
	je	.L214
.L215:
	leaq	88(%rsp), %rbp
	leaq	80(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L264:
	movsd	8(%rsp), %xmm1
	movapd	%xmm2, %xmm0
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	88(%rsp), %xmm3
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	movsd	80(%rsp), %xmm1
	movsd	24(%rsp), %xmm0
	movq	$0x000000000, 80(%rsp)
	movq	$0x000000000, 88(%rsp)
	movsd	%xmm3, 8(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	88(%rsp), %xmm2
	movsd	8(%rsp), %xmm0
	movq	$0x000000000, 88(%rsp)
	movsd	80(%rsp), %xmm4
	movq	$0x000000000, 80(%rsp)
	addsd	%xmm2, %xmm0
	movsd	%xmm4, 24(%rsp)
	addsd	%xmm4, %xmm0
	ucomisd	%xmm4, %xmm0
	jp	.L264
	jne	.L264
.L214:
	movq	(%r15), %rax
	movq	40(%rsp), %rdx
	movsd	8(%rsp), %xmm5
	addl	$2, 56(%rsp)
	movsd	%xmm2, (%rax,%rdx)
	movl	56(%rsp), %esi
	movsd	%xmm5, 8(%rax,%rdx)
	cmpl	72(%rsp), %esi
	jge	.L196
	movsd	24(%rsp), %xmm7
	movsd	48(%rsp), %xmm0
	addq	$16, %rdx
	movq	%rdx, 40(%rsp)
	addsd	%xmm7, %xmm0
	ucomisd	%xmm7, %xmm0
	jp	.L265
	jne	.L265
	movapd	%xmm5, %xmm1
	movapd	%xmm2, %xmm0
	leaq	88(%rsp), %rsi
	leaq	80(%rsp), %rdi
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	88(%rsp), %xmm0
	addsd	48(%rsp), %xmm0
	movq	$0x000000000, 88(%rsp)
	movsd	80(%rsp), %xmm1
	movsd	24(%rsp), %xmm6
	movq	$0x000000000, 80(%rsp)
	addsd	%xmm1, %xmm0
	addsd	%xmm6, %xmm0
	ucomisd	%xmm6, %xmm0
	jp	.L250
	je	.L196
.L250:
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
	je	.L240
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L279
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
	pxor	%xmm0, %xmm0
	movq	%rcx, 136(%rsp)
	movq	%rax, %rbx
	movaps	%xmm0, 96(%rsp)
	movq	$0, 112(%rsp)
	subq	%rsi, %rbx
	je	.L241
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L280
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
	addsd	24(%rsp), %xmm0
	movq	96(%rsp), %rdi
	movsd	%xmm0, 24(%rsp)
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
	jne	.L281
	movsd	24(%rsp), %xmm0
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
	je	.L282
	movsd	16(%rsp), %xmm6
	xorl	%r13d, %r13d
	leaq	88(%rsp), %rbp
	leaq	80(%rsp), %rbx
	movapd	%xmm6, %xmm2
	movsd	%xmm6, 8(%rsp)
	jmp	.L236
.L240:
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L222
.L239:
	pxor	%xmm6, %xmm6
	movsd	%xmm6, 16(%rsp)
	movsd	%xmm6, 24(%rsp)
	jmp	.L197
.L282:
	pxor	%xmm7, %xmm7
	movsd	16(%rsp), %xmm0
	cvtsi2sdl	56(%rsp), %xmm7
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	movsd	%xmm7, 48(%rsp)
	jmp	.L213
.L241:
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	jmp	.L226
.L279:
	testq	%rbx, %rbx
	jns	.L224
.LEHB25:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE25:
.L280:
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
.L281:
	call	__stack_chk_fail@PLT
.L243:
	endbr64
	movq	%rax, %rbp
	jmp	.L234
.L244:
	endbr64
	movq	%rax, %rbp
.L232:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L234
	call	_ZdlPvm@PLT
.L234:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L235
	call	_ZdlPvm@PLT
.L235:
	movq	%rbp, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
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
	.uleb128 .L243-.LFB3726
	.uleb128 0
	.uleb128 .LEHB24-.LFB3726
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L244-.LFB3726
	.uleb128 0
	.uleb128 .LEHB25-.LFB3726
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB26-.LFB3726
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L243-.LFB3726
	.uleb128 0
	.uleb128 .LEHB27-.LFB3726
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB3726
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L243-.LFB3726
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
	jne	.L515
	pxor	%xmm0, %xmm0
	movq	%rdi, %r15
	movq	%rsi, %rbx
	movq	%rbp, %r14
	movaps	%xmm0, 48(%rsp)
	leaq	0(,%rbp,8), %r12
	movq	$0, 64(%rsp)
	testq	%rbp, %rbp
	je	.L285
	movq	%r12, %rdi
.LEHB30:
	call	_Znwm@PLT
.LEHE30:
	movq	%rax, %xmm0
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 64(%rsp)
	movaps	%xmm0, 48(%rsp)
	cmpq	$1, %rbp
	je	.L389
	cmpq	%rdi, %r13
	je	.L286
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L286:
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movq	%r13, 56(%rsp)
	movq	$0, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
.LEHB31:
	call	_Znwm@PLT
.LEHE31:
	movq	%rax, %xmm0
	leaq	(%rax,%r12), %r13
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	punpcklqdq	%xmm0, %xmm0
	movq	%r13, 96(%rsp)
	movaps	%xmm0, 80(%rsp)
	cmpq	$1, %rbp
	je	.L516
	cmpq	%rdi, %r13
	je	.L287
	leaq	-8(%r12), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L287:
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
	je	.L292
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L292:
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
	je	.L297
	movl	$16376, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L297:
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
	pxor	%xmm0, %xmm0
	movq	%rax, %r13
	andq	$-8, %rdi
	movq	$0, 8(%rax)
	subq	%rdi, %rcx
	movq	$0x000000000, (%rax)
	addl	$1592, %ecx
	movq	$0, 1592(%rax)
	xorl	%eax, %eax
	shrl	$3, %ecx
	rep stosq
	movaps	%xmm0, 144(%rsp)
	movq	$0, 160(%rsp)
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, 8(%rsp)
	je	.L517
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, 8(%rsp)
	ja	.L518
	movq	%rdx, %rdi
.LEHB36:
	call	_Znwm@PLT
.LEHE36:
	movq	%rax, %rcx
	movq	8(%rbx), %rax
	movq	(%rbx), %rsi
	movq	%rax, %rbx
	subq	%rsi, %rbx
.L303:
	movq	8(%rsp), %rdx
	movq	%rcx, %xmm0
	punpcklqdq	%xmm0, %xmm0
	addq	%rcx, %rdx
	movaps	%xmm0, 144(%rsp)
	movq	%rdx, 160(%rsp)
	cmpq	%rax, %rsi
	je	.L312
	movq	%rcx, %rdi
	movq	%rbx, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L312:
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	addq	%rbx, %rcx
	pxor	%xmm0, %xmm0
	movq	%rcx, 152(%rsp)
	movq	%rax, %rbx
	movaps	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	subq	%rsi, %rbx
	je	.L391
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbx
	ja	.L519
	movq	%rbx, %rdi
.LEHB37:
	call	_Znwm@PLT
.LEHE37:
	movq	%rax, %rcx
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	movq	%rax, %r15
	subq	%rsi, %r15
.L313:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%rsi, %rax
	je	.L316
	movq	%rcx, %rdi
	movq	%r15, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L316:
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
	je	.L317
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L317:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L318
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L318:
	movq	56(%rsp), %rax
	pxor	%xmm0, %xmm0
	movq	48(%rsp), %rsi
	movq	$0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, 8(%rsp)
	je	.L392
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L520
	movq	%rdx, %rdi
.LEHB39:
	call	_Znwm@PLT
.LEHE39:
	movq	%rax, %rcx
	movq	56(%rsp), %rax
	movq	48(%rsp), %rsi
	movq	%rax, %r8
	subq	%rsi, %r8
.L319:
	movq	8(%rsp), %rdx
	movq	%rcx, %xmm0
	punpcklqdq	%xmm0, %xmm0
	addq	%rcx, %rdx
	movaps	%xmm0, 144(%rsp)
	movq	%rdx, 160(%rsp)
	cmpq	%rax, %rsi
	je	.L326
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, 8(%rsp)
	call	memmove@PLT
	movq	8(%rsp), %r8
	movq	%rax, %rcx
.L326:
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
	pxor	%xmm0, %xmm0
	movl	$16384, %esi
	movq	%rax, 8(%rsp)
	movq	120(%rsp), %rax
	movaps	%xmm0, 112(%rsp)
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rax
	movq	$0, 128(%rsp)
	movq	%rax, 24(%rsp)
	call	_ZdlPvm@PLT
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L327
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L327:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L328
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L328:
	movq	88(%rsp), %rdx
	pxor	%xmm0, %xmm0
	movq	80(%rsp), %rsi
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	movq	%rdx, %rcx
	subq	%rsi, %rcx
	movq	%rcx, 32(%rsp)
	je	.L393
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rcx
	ja	.L521
	movq	%rcx, %rdi
.LEHB41:
	call	_Znwm@PLT
.LEHE41:
	movq	88(%rsp), %rdx
	movq	80(%rsp), %rsi
	movq	%rax, %rcx
	movq	%rdx, %r8
	subq	%rsi, %r8
.L329:
	movq	32(%rsp), %rax
	movq	%rcx, %xmm0
	punpcklqdq	%xmm0, %xmm0
	addq	%rcx, %rax
	movaps	%xmm0, 112(%rsp)
	movq	%rax, 128(%rsp)
	cmpq	%rdx, %rsi
	je	.L332
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %r8
	movq	%rax, %rcx
.L332:
	addq	%r8, %rcx
	movl	%r14d, %edx
	movq	%r15, %rsi
	movq	%rbx, %rdi
	movq	%rcx, 120(%rsp)
.LEHB42:
	call	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
.LEHE42:
	movq	152(%rsp), %rax
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	movl	$16384, %esi
	movq	144(%rsp), %r14
	movaps	%xmm0, 144(%rsp)
	movq	%rax, 32(%rsp)
	movq	160(%rsp), %rax
	movq	$0, 160(%rsp)
	movq	%rax, 16(%rsp)
	call	_ZdlPvm@PLT
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L333
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L333:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L334
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L334:
	pxor	%xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
.LEHB43:
	call	_Znwm@PLT
.LEHE43:
.L413:
.L414:
	leaq	1600(%rax), %r12
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%r13, %rsi
	movq	%r12, 160(%rsp)
	movq	%rax, 144(%rsp)
	call	memcpy@PLT
	pxor	%xmm0, %xmm0
	movq	%r12, 152(%rsp)
	movq	40(%rsp), %r12
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	subq	8(%rsp), %r12
	je	.L522
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L523
	movq	%r12, %rdi
.LEHB44:
	call	_Znwm@PLT
.LEHE44:
	movq	%rax, %rdi
.L341:
	movq	%rdi, %xmm0
	movq	8(%rsp), %rsi
	movq	40(%rsp), %rax
	leaq	(%rdi,%r12), %rcx
	punpcklqdq	%xmm0, %xmm0
	movq	%rcx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	%rax, %rsi
	je	.L344
	movq	%r12, %rdx
	movq	%rcx, 40(%rsp)
	call	memmove@PLT
	movq	40(%rsp), %rcx
.L344:
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
	movsd	%xmm0, 40(%rsp)
	testq	%rdi, %rdi
	je	.L345
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L345:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L346
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L346:
	pxor	%xmm0, %xmm0
	movl	$1600, %edi
	movq	$0, 160(%rsp)
	movaps	%xmm0, 144(%rsp)
.LEHB46:
	call	_Znwm@PLT
.LEHE46:
.L416:
.L415:
	leaq	1600(%rax), %r12
	movq	%rax, %rdi
	movl	$1600, %edx
	movq	%rbp, %rsi
	movq	%r12, 160(%rsp)
	movq	%rax, 144(%rsp)
	call	memcpy@PLT
	movq	%r12, 152(%rsp)
	movq	32(%rsp), %r12
	pxor	%xmm0, %xmm0
	movq	$0, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	subq	%r14, %r12
	je	.L524
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r12
	ja	.L525
	movq	%r12, %rdi
.LEHB47:
	call	_Znwm@PLT
.LEHE47:
	movq	%rax, %rdi
.L353:
	movq	%rdi, %xmm0
	leaq	(%rdi,%r12), %rcx
	punpcklqdq	%xmm0, %xmm0
	movq	%rcx, 128(%rsp)
	movaps	%xmm0, 112(%rsp)
	cmpq	32(%rsp), %r14
	je	.L356
	movq	%r12, %rdx
	movq	%r14, %rsi
	movq	%rcx, 32(%rsp)
	call	memmove@PLT
	movq	32(%rsp), %rcx
.L356:
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
	movsd	%xmm0, 32(%rsp)
	testq	%rdi, %rdi
	je	.L357
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L357:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L358
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L358:
	movsd	40(%rsp), %xmm1
	addsd	32(%rsp), %xmm1
	movl	$1600, %esi
	movq	%r13, %rdi
	movq	%xmm1, %rbx
	call	_ZdlPvm@PLT
	movl	$1600, %esi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	cmpq	$0, 8(%rsp)
	je	.L386
	movq	24(%rsp), %rsi
	movq	8(%rsp), %rdi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L386:
	testq	%r14, %r14
	je	.L359
	movq	16(%rsp), %rsi
	movq	%r14, %rdi
	subq	%r14, %rsi
	call	_ZdlPvm@PLT
.L359:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L360
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L360:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L283
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L283:
	movq	168(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L526
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %xmm0
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
.L522:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L341
	.p2align 4,,10
	.p2align 3
.L285:
	movq	$0, 64(%rsp)
	xorl	%r13d, %r13d
	movq	$0, 80(%rsp)
	movq	$0, 96(%rsp)
	jmp	.L287
	.p2align 4,,10
	.p2align 3
.L517:
	xorl	%ebx, %ebx
	jmp	.L303
	.p2align 4,,10
	.p2align 3
.L391:
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.L313
	.p2align 4,,10
	.p2align 3
.L392:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L319
	.p2align 4,,10
	.p2align 3
.L393:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L389:
	movq	%rdi, %r13
	jmp	.L286
	.p2align 4,,10
	.p2align 3
.L524:
	xorl	%edi, %edi
	jmp	.L353
	.p2align 4,,10
	.p2align 3
.L516:
	movq	%rdi, %r13
	jmp	.L287
.L525:
	testq	%r12, %r12
	jns	.L355
.LEHB49:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE49:
.L518:
	cmpq	$0, 8(%rsp)
	jns	.L306
.LEHB50:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE50:
.L519:
	testq	%rbx, %rbx
	jns	.L315
.LEHB51:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE51:
.L520:
	testq	%rdx, %rdx
	jns	.L321
.LEHB52:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE52:
.L521:
	testq	%rcx, %rcx
	jns	.L331
.LEHB53:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE53:
.L523:
	testq	%r12, %r12
	jns	.L343
.LEHB54:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE54:
.L306:
.LEHB55:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE55:
.L315:
.LEHB56:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE56:
.L321:
.LEHB57:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE57:
.L331:
.LEHB58:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE58:
.L343:
.LEHB59:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE59:
.L355:
.LEHB60:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE60:
.L515:
	leaq	.LC6(%rip), %rdi
.LEHB61:
	call	_ZSt20__throw_length_errorPKc@PLT
.L526:
	call	__stack_chk_fail@PLT
.L398:
	endbr64
	movq	%rax, %rbp
	jmp	.L383
.L406:
	endbr64
.L511:
	movq	%rax, %rbx
	jmp	.L376
.L290:
	movl	$16384, %esi
.L291:
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L381:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L383
	call	_ZdlPvm@PLT
.L383:
	movq	48(%rsp), %rdi
	movq	64(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L384
	call	_ZdlPvm@PLT
.L384:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE61:
.L374:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L376
	call	_ZdlPvm@PLT
.L376:
	movq	144(%rsp), %rdi
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L377
	call	_ZdlPvm@PLT
.L377:
	movq	%r14, %r12
.L308:
	movl	$1600, %esi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
.L378:
	movl	$1600, %esi
	movq	%rbp, %rdi
	movq	%rbx, %rbp
	call	_ZdlPvm@PLT
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	subq	%rax, %rsi
	testq	%rax, %rax
	je	.L379
.L296:
	movq	32(%rsp), %rdi
	call	_ZdlPvm@PLT
.L379:
	movq	16(%rsp), %rsi
	subq	%r12, %rsi
	testq	%r12, %r12
	jne	.L291
	jmp	.L381
.L422:
	endbr64
.L505:
	movq	%rax, %rbx
	jmp	.L325
.L417:
	endbr64
	jmp	.L505
.L418:
	endbr64
	jmp	.L505
.L421:
	endbr64
	jmp	.L505
.L325:
.L367:
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	jmp	.L308
.L409:
	endbr64
.L514:
	movq	%rax, %rbx
	jmp	.L374
.L408:
	endbr64
	jmp	.L511
.L402:
	endbr64
.L510:
	movq	%rax, %rbx
	jmp	.L366
.L403:
	endbr64
	movq	%rax, %rbx
.L362:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L366
	call	_ZdlPvm@PLT
.L366:
	movq	144(%rsp), %rdi
	movq	160(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L367
	call	_ZdlPvm@PLT
	jmp	.L367
.L419:
	endbr64
	jmp	.L505
.L400:
	endbr64
	movq	%rax, %rbx
	jmp	.L378
.L407:
	endbr64
	jmp	.L514
.L412:
	endbr64
.L507:
	movq	%rax, %rbx
	jmp	.L352
.L404:
	endbr64
	jmp	.L510
.L401:
	endbr64
	movq	%rax, %rbx
	jmp	.L308
.L405:
	endbr64
	movq	%rax, %rbx
	jmp	.L368
.L399:
	endbr64
	movq	%rax, %rbp
	jmp	.L381
.L420:
	endbr64
	jmp	.L507
.L368:
	movq	112(%rsp), %rdi
	movq	128(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L308
	call	_ZdlPvm@PLT
	jmp	.L308
.L410:
	endbr64
	movq	%rax, %rbp
	jmp	.L290
.L423:
	endbr64
	jmp	.L505
.L411:
	endbr64
	movq	%rax, %rbp
.L295:
	movl	$16384, %esi
	jmp	.L296
.L352:
	jmp	.L377
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
	.uleb128 .L398-.LFB3721
	.uleb128 0
	.uleb128 .LEHB32-.LFB3721
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L399-.LFB3721
	.uleb128 0
	.uleb128 .LEHB33-.LFB3721
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L410-.LFB3721
	.uleb128 0
	.uleb128 .LEHB34-.LFB3721
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L411-.LFB3721
	.uleb128 0
	.uleb128 .LEHB35-.LFB3721
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L400-.LFB3721
	.uleb128 0
	.uleb128 .LEHB36-.LFB3721
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L419-.LFB3721
	.uleb128 0
	.uleb128 .LEHB37-.LFB3721
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L402-.LFB3721
	.uleb128 0
	.uleb128 .LEHB38-.LFB3721
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L403-.LFB3721
	.uleb128 0
	.uleb128 .LEHB39-.LFB3721
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L423-.LFB3721
	.uleb128 0
	.uleb128 .LEHB40-.LFB3721
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L404-.LFB3721
	.uleb128 0
	.uleb128 .LEHB41-.LFB3721
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L401-.LFB3721
	.uleb128 0
	.uleb128 .LEHB42-.LFB3721
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L405-.LFB3721
	.uleb128 0
	.uleb128 .LEHB43-.LFB3721
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L420-.LFB3721
	.uleb128 0
	.uleb128 .LEHB44-.LFB3721
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L406-.LFB3721
	.uleb128 0
	.uleb128 .LEHB45-.LFB3721
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L407-.LFB3721
	.uleb128 0
	.uleb128 .LEHB46-.LFB3721
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L412-.LFB3721
	.uleb128 0
	.uleb128 .LEHB47-.LFB3721
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB48-.LFB3721
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L409-.LFB3721
	.uleb128 0
	.uleb128 .LEHB49-.LFB3721
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB50-.LFB3721
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L417-.LFB3721
	.uleb128 0
	.uleb128 .LEHB51-.LFB3721
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L402-.LFB3721
	.uleb128 0
	.uleb128 .LEHB52-.LFB3721
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L421-.LFB3721
	.uleb128 0
	.uleb128 .LEHB53-.LFB3721
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L401-.LFB3721
	.uleb128 0
	.uleb128 .LEHB54-.LFB3721
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L406-.LFB3721
	.uleb128 0
	.uleb128 .LEHB55-.LFB3721
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L418-.LFB3721
	.uleb128 0
	.uleb128 .LEHB56-.LFB3721
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L402-.LFB3721
	.uleb128 0
	.uleb128 .LEHB57-.LFB3721
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L422-.LFB3721
	.uleb128 0
	.uleb128 .LEHB58-.LFB3721
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L401-.LFB3721
	.uleb128 0
	.uleb128 .LEHB59-.LFB3721
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L406-.LFB3721
	.uleb128 0
	.uleb128 .LEHB60-.LFB3721
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L408-.LFB3721
	.uleb128 0
	.uleb128 .LEHB61-.LFB3721
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
.LLSDACSE3721:
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.size	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, .-_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.section	.rodata._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.str1.1,"aMS",@progbits,1
.LC8:
	.string	"rentre dedans %b\n"
.LC9:
	.string	"\nc = %d\n"
.LC10:
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
	movzbl	%sil, %edx
	leaq	.LC8(%rip), %rsi
.LEHB62:
	call	__printf_chk@PLT
	testb	%r12b, %r12b
	je	.L527
	movl	$0, 12(%rsp)
	leaq	72(%rsp), %r13
	leaq	64(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L528:
	addl	$1, 12(%rsp)
	movl	12(%rsp), %edx
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	16(%rsp), %rax
	movl	$1, %edi
	leaq	.LC10(%rip), %rsi
	movsd	(%rax), %xmm0
	movl	$1, %eax
	call	__printf_chk@PLT
	testl	%ebx, %ebx
	je	.L564
	movl	%ebx, %ebx
	pxor	%xmm3, %xmm3
	movq	0(%rbp), %rcx
	xorl	%r15d, %r15d
	leaq	0(,%rbx,8), %r14
	movapd	%xmm3, %xmm2
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L533:
	movsd	(%rcx,%r15), %xmm1
	movapd	%xmm2, %xmm0
	movq	%r13, %rsi
	movq	%r12, %rdi
	movsd	%xmm3, (%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	0(%rbp), %rcx
	movslq	%ebx, %rax
	pxor	%xmm5, %xmm5
	movsd	64(%rsp), %xmm2
	movsd	72(%rsp), %xmm0
	salq	$3, %rax
	leaq	(%rcx,%rax), %rdx
	movsd	(%rsp), %xmm3
	movsd	%xmm0, (%rdx)
	movapd	%xmm2, %xmm0
	andpd	.LC7(%rip), %xmm0
	movq	$0x000000000, 64(%rsp)
	movq	$0x000000000, 72(%rsp)
	maxsd	%xmm3, %xmm0
	ucomisd	(%rdx), %xmm5
	movapd	%xmm0, %xmm3
	jp	.L569
	je	.L531
.L569:
	addl	$1, %ebx
	addq	$8, %rax
.L531:
	addq	$8, %r15
	cmpq	%r15, %r14
	jne	.L533
	leal	-1(%rbx), %edx
	pxor	%xmm7, %xmm7
	cvtsi2sdl	%edx, %xmm7
	movsd	%xmm7, 24(%rsp)
.L529:
	movapd	%xmm3, %xmm0
	movq	%rax, 32(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Z3ulpIdET_S0_
	movq	16(%rsp), %r14
	movq	%r13, %rsi
	movq	%r12, %rdi
	mulsd	24(%rsp), %xmm0
	movsd	.LC11(%rip), %xmm3
	movsd	(%rsp), %xmm2
	movapd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm3
	movsd	(%r14), %xmm0
	movsd	%xmm3, 24(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	64(%rsp), %xmm0
	movsd	72(%rsp), %xmm2
	movq	$0x000000000, 64(%rsp)
	movq	0(%rbp), %rdx
	movq	32(%rsp), %rax
	movq	$0x000000000, 72(%rsp)
	movsd	%xmm0, (%r14)
	movsd	%xmm2, (%rdx,%rax)
	movsd	(%r14), %xmm0
	movsd	%xmm2, (%rsp)
	call	_Z3ulpIdET_S0_
	movsd	24(%rsp), %xmm3
	movsd	(%rsp), %xmm2
	mulsd	.LC11(%rip), %xmm0
	comisd	%xmm3, %xmm0
	ja	.L599
.L535:
	cmpl	$1000, 12(%rsp)
	jne	.L528
.L527:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L600
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
.L599:
	.cfi_restore_state
	movapd	%xmm3, %xmm1
	movapd	%xmm2, %xmm0
	movq	%r13, %rsi
	movq	%r12, %rdi
	movsd	%xmm3, 32(%rsp)
	movsd	%xmm2, 24(%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	72(%rsp), %r14
	movsd	32(%rsp), %xmm3
	movsd	24(%rsp), %xmm2
	movq	$0x000000000, 72(%rsp)
	movsd	64(%rsp), %xmm4
	movq	$0x000000000, 64(%rsp)
	movapd	%xmm3, %xmm1
	xorpd	.LC12(%rip), %xmm1
	movapd	%xmm2, %xmm0
	movsd	%xmm4, (%rsp)
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movq	16(%rsp), %rax
	movsd	(%rsp), %xmm0
	movsd	64(%rsp), %xmm2
	movsd	72(%rsp), %xmm3
	movq	$0x000000000, 64(%rsp)
	movq	$0x000000000, 72(%rsp)
	movsd	(%rax), %xmm1
	addsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L540
	jne	.L540
	movapd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	ucomisd	%xmm0, %xmm1
	jp	.L540
	je	.L601
.L540:
	movq	8(%rbp), %rax
	movq	0(%rbp), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
	je	.L602
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r14
	ja	.L603
	movq	%r14, %rdi
	call	_Znwm@PLT
.LEHE62:
	movq	0(%rbp), %rsi
	movq	%rax, %rcx
	movq	8(%rbp), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L539:
	addq	%rcx, %r14
	movq	%rcx, 80(%rsp)
	movq	%r14, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L549
	movq	%rcx, %rdi
	movq	%rdx, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %rdx
	movq	%rax, %rcx
.L549:
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
	je	.L550
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L550:
	movq	8(%rbp), %rax
	movq	0(%rbp), %rsi
	movq	%rax, %rdx
	subq	%rsi, %rdx
	je	.L566
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L604
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
.L551:
	addq	%rcx, %rdx
	movq	%rcx, 80(%rsp)
	movq	%rdx, 96(%rsp)
	cmpq	%rsi, %rax
	je	.L554
	movq	%r8, %rdx
	movq	%rcx, %rdi
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	(%rsp), %r8
	movq	%rax, %rcx
.L554:
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
	je	.L555
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L555:
	movq	16(%rsp), %r14
	movsd	48(%rsp), %xmm1
	movq	%r13, %rsi
	movq	%r12, %rdi
	movsd	(%r14), %xmm0
.LEHB66:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movsd	64(%rsp), %xmm1
	movsd	72(%rsp), %xmm4
	movq	$0x000000000, 64(%rsp)
	movq	$0x000000000, 72(%rsp)
	movsd	56(%rsp), %xmm0
	movsd	%xmm1, (%r14)
	movsd	%xmm1, 24(%rsp)
	movsd	%xmm4, (%rsp)
	movsd	%xmm4, 48(%rsp)
	call	_Z4signIdEiT_
	movsd	(%rsp), %xmm0
	movl	%eax, %r14d
	call	_Z8half_ulpIdEbT_
	movsd	24(%rsp), %xmm1
	testb	%al, %al
	jne	.L605
.L556:
	movq	16(%rsp), %rax
	movsd	%xmm1, (%rax)
	jmp	.L535
	.p2align 4,,10
	.p2align 3
.L602:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.L539
	.p2align 4,,10
	.p2align 3
.L566:
	xorl	%r8d, %r8d
	xorl	%ecx, %ecx
	jmp	.L551
	.p2align 4,,10
	.p2align 3
.L564:
	pxor	%xmm3, %xmm3
	movl	$8, %eax
	movl	$1, %ebx
	movq	$0x000000000, 24(%rsp)
	movapd	%xmm3, %xmm2
	jmp	.L529
	.p2align 4,,10
	.p2align 3
.L605:
	movsd	(%rsp), %xmm0
	call	_Z4signIdEiT_
	movsd	24(%rsp), %xmm1
	cmpl	%eax, %r14d
	jne	.L556
	movsd	(%rsp), %xmm0
	call	_Z4magnIdET_S0_
	movsd	24(%rsp), %xmm1
	addsd	%xmm0, %xmm1
	jmp	.L556
.L601:
	movq	%r14, %xmm0
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm1, 24(%rsp)
	call	_Z4signIdEiT_
	movsd	(%rsp), %xmm0
	movl	%eax, %r14d
	call	_Z8half_ulpIdEbT_
	movsd	24(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	testb	%al, %al
	movsd	40(%rsp), %xmm3
	jne	.L606
.L542:
	movq	16(%rsp), %rax
	movsd	(%rax), %xmm4
	ucomisd	%xmm1, %xmm4
	jp	.L540
	jne	.L540
	movapd	%xmm3, %xmm0
	movsd	%xmm4, 24(%rsp)
	movsd	%xmm2, (%rsp)
	call	_Z4signIdEiT_
	movsd	(%rsp), %xmm2
	movl	%eax, %r14d
	movapd	%xmm2, %xmm0
	call	_Z8half_ulpIdEbT_
	movsd	(%rsp), %xmm2
	movsd	24(%rsp), %xmm4
	testb	%al, %al
	jne	.L607
.L544:
	movq	16(%rsp), %rax
	ucomisd	(%rax), %xmm4
	jp	.L540
	je	.L535
	jmp	.L540
.L606:
	movsd	(%rsp), %xmm0
	call	_Z4signIdEiT_
	movsd	24(%rsp), %xmm1
	movsd	32(%rsp), %xmm2
	cmpl	%eax, %r14d
	movsd	40(%rsp), %xmm3
	jne	.L542
	movsd	(%rsp), %xmm0
	call	_Z4magnIdET_S0_
	movsd	24(%rsp), %xmm1
	movsd	40(%rsp), %xmm3
	movsd	32(%rsp), %xmm2
	addsd	%xmm0, %xmm1
	jmp	.L542
.L603:
	testq	%r14, %r14
	jns	.L548
.L553:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L604:
	testq	%rdx, %rdx
	js	.L553
.L548:
	call	_ZSt17__throw_bad_allocv@PLT
.L607:
	movapd	%xmm2, %xmm0
	call	_Z4signIdEiT_
	movsd	(%rsp), %xmm2
	movsd	24(%rsp), %xmm4
	cmpl	%eax, %r14d
	jne	.L544
	movapd	%xmm2, %xmm0
	movsd	%xmm4, (%rsp)
	call	_Z4magnIdET_S0_
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm4
	jmp	.L544
.L600:
	call	__stack_chk_fail@PLT
.L568:
	endbr64
.L598:
	movq	%rax, %rbp
	jmp	.L560
.L567:
	endbr64
	jmp	.L598
.L560:
	movq	80(%rsp), %rdi
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L561
	call	_ZdlPvm@PLT
.L561:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE66:
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
	.uleb128 .L567-.LFB3727
	.uleb128 0
	.uleb128 .LEHB64-.LFB3727
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB3727
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L568-.LFB3727
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
	.long	33554432
	.long	1101004800
	.align 8
.LC4:
	.long	0
	.long	1077608448
	.align 8
.LC5:
	.long	0
	.long	1138753536
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC7:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.section	.rodata.cst16
	.align 16
.LC12:
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
