	.file	"Rare_Blas.cc"
	.text
	.section	.text._ZSt3absd,"axG",@progbits,_ZSt3absd,comdat
	.weak	_ZSt3absd
	.type	_ZSt3absd, @function
_ZSt3absd:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovq	.LC0(%rip), %xmm1
	vandpd	%xmm1, %xmm0, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	_ZSt3absd, .-_ZSt3absd
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB306:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE306:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE373:
	.size	_ZnwmPv, .-_ZnwmPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt14numeric_limitsIdE8infinityEv,"axG",@progbits,_ZNSt14numeric_limitsIdE8infinityEv,comdat
	.weak	_ZNSt14numeric_limitsIdE8infinityEv
	.type	_ZNSt14numeric_limitsIdE8infinityEv, @function
_ZNSt14numeric_limitsIdE8infinityEv:
.LFB2496:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	.LC1(%rip), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2496:
	.size	_ZNSt14numeric_limitsIdE8infinityEv, .-_ZNSt14numeric_limitsIdE8infinityEv
	.section	.text._Z3ulpIdET_S0_,"axG",@progbits,_Z3ulpIdET_S0_,comdat
	.weak	_Z3ulpIdET_S0_
	.type	_Z3ulpIdET_S0_, @function
_Z3ulpIdET_S0_:
.LFB3638:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	vmovsd	%xmm0, -8(%rbp)
	call	_ZNSt14numeric_limitsIdE8infinityEv
	vmovq	%xmm0, %rdx
	movq	-8(%rbp), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	nextafter@PLT
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vsubsd	-8(%rbp), %xmm2, %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3638:
	.size	_Z3ulpIdET_S0_, .-_Z3ulpIdET_S0_
	.section	.text._Z8half_ulpIdEbT_,"axG",@progbits,_Z8half_ulpIdEbT_,comdat
	.weak	_Z8half_ulpIdEbT_
	.type	_Z8half_ulpIdEbT_, @function
_Z8half_ulpIdEbT_:
.LFB3639:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	%xmm0, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3639:
	.size	_Z8half_ulpIdEbT_, .-_Z8half_ulpIdEbT_
	.section	.text._Z4signIdEiT_,"axG",@progbits,_Z4signIdEiT_,comdat
	.weak	_Z4signIdEiT_
	.type	_Z4signIdEiT_, @function
_Z4signIdEiT_:
.LFB3640:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcomisd	%xmm1, %xmm0
	seta	%al
	movzbl	%al, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcomisd	-8(%rbp), %xmm0
	seta	%al
	movzbl	%al, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3640:
	.size	_Z4signIdEiT_, .-_Z4signIdEiT_
	.section	.text._Z4magnIdET_S0_,"axG",@progbits,_Z4magnIdET_S0_,comdat
	.weak	_Z4magnIdET_S0_
	.type	_Z4magnIdET_S0_, @function
_Z4magnIdET_S0_:
.LFB3641:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	vmovsd	%xmm0, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	call	_ZNSt14numeric_limitsIdE8infinityEv
	vmovq	%xmm0, %rdx
	movq	-40(%rbp), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	nextafter@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	jne	.L16
	call	_ZNSt14numeric_limitsIdE8infinityEv
	vmovq	%xmm0, %rax
	vmovq	.LC3(%rip), %xmm0
	vmovq	%rax, %xmm2
	vxorpd	%xmm0, %xmm2, %xmm0
	movq	-24(%rbp), %rax
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	nextafter@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -24(%rbp)
.L16:
	vmovsd	-24(%rbp), %xmm0
	vmovq	%xmm0, %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3641:
	.size	_Z4magnIdET_S0_, .-_Z4magnIdET_S0_
	.section	.text._Z14Split_VeltkampIdEvT_RS0_S1_,"axG",@progbits,_Z14Split_VeltkampIdEvT_RS0_S1_,comdat
	.weak	_Z14Split_VeltkampIdEvT_RS0_S1_
	.type	_Z14Split_VeltkampIdEvT_RS0_S1_, @function
_Z14Split_VeltkampIdEvT_RS0_S1_:
.LFB3642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	vmovsd	%xmm0, -40(%rbp)
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	vmovsd	-32(%rbp), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm2
	vmovq	%xmm2, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rdx
	movq	.LC5(%rip), %rax
	vmovq	%rdx, %xmm1
	vmovq	%rax, %xmm0
	call	pow@PLT
	vmovq	%xmm0, %rax
	vmovsd	.LC6(%rip), %xmm0
	vmovq	%rax, %xmm3
	vaddsd	%xmm0, %xmm3, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	-24(%rbp), %xmm0
	vmulsd	-40(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)
	vmovsd	-40(%rbp), %xmm0
	vsubsd	-16(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-16(%rbp), %xmm0
	vaddsd	-8(%rbp), %xmm0, %xmm0
	movq	-48(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	movq	-48(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vmovsd	-40(%rbp), %xmm0
	vsubsd	%xmm1, %xmm0, %xmm0
	movq	-56(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3642:
	.size	_Z14Split_VeltkampIdEvT_RS0_S1_, .-_Z14Split_VeltkampIdEvT_RS0_S1_
	.section	.text._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"axG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
	.weak	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.type	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i, @function
_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i:
.LFB3643:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3643
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-40(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, %rdx
	movl	$2048, %esi
	movq	%rcx, %rdi
.LEHB0:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE0:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -52(%rbp)
	jmp	.L21
.L22:
	movl	-52(%rbp), %eax
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	leaq	-40(%rbp), %rcx
	leaq	-48(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovq	%rax, %xmm0
.LEHB1:
	call	_Z14Split_VeltkampIdEvT_RS0_S1_
.LEHE1:
	movq	-48(%rbp), %rax
	leaq	-56(%rbp), %rdx
	movq	%rdx, %rdi
	vmovq	%rax, %xmm0
	call	frexp@PLT
	movl	-56(%rbp), %eax
	addl	$1024, %eax
	movl	%eax, -56(%rbp)
	movl	-56(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm1
	vmovsd	-48(%rbp), %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax)
	vmovsd	.LC4(%rip), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	movl	-56(%rbp), %eax
	vcvtsi2sdl	%eax, %xmm2, %xmm2
	vmovsd	%xmm2, -96(%rbp)
	vmovsd	-32(%rbp), %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm3
	vmovq	%xmm3, %rax
	vmovq	%rax, %xmm0
	call	ceil@PLT
	vmovq	%xmm0, %rax
	vmovsd	-96(%rbp), %xmm2
	vmovq	%rax, %xmm4
	vsubsd	%xmm4, %xmm2, %xmm0
	vcvttsd2usi	%xmm0, %rax
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm1
	vmovsd	-40(%rbp), %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax)
	incl	-52(%rbp)
.L21:
	movl	-84(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jb	.L22
	jmp	.L29
.L27:
	endbr64
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.L28:
	endbr64
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L29:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L26
	call	__stack_chk_fail@PLT
.L26:
	movq	-72(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3643:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"aG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
.LLSDA3643:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3643-.LLSDACSB3643
.LLSDACSB3643:
	.uleb128 .LEHB0-.LFB3643
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L27-.LFB3643
	.uleb128 0
	.uleb128 .LEHB1-.LFB3643
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L28-.LFB3643
	.uleb128 0
	.uleb128 .LEHB2-.LFB3643
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3643:
	.section	.text._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"axG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
	.size	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i, .-_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.section	.text._Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.weak	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.type	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, @function
_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_:
.LFB3653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -36(%rbp)
	jmp	.L31
.L32:
	leaq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rdi
	vmovq	%rax, %xmm0
	call	frexp@PLT
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -88(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	leaq	-32(%rbp), %rcx
	leaq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	-88(%rbp), %xmm1
	vmovq	%rax, %xmm0
	call	_Z10FastTwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-24(%rbp), %xmm3
	vmovsd	%xmm3, -88(%rbp)
	movl	-40(%rbp), %eax
	cltq
	movq	-72(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-88(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	movl	-40(%rbp), %eax
	cltq
	movq	-80(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm1
	vmovsd	-32(%rbp), %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax)
	incl	-36(%rbp)
.L31:
	movl	-60(%rbp), %eax
	cmpl	%eax, -36(%rbp)
	jb	.L32
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3653:
	.size	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .-_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.weak	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.type	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, @function
_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i:
.LFB3654:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3654
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movl	%edx, -324(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$200, -292(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-324(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE3:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-324(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE4:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE5:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE6:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-292(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE7:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-292(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE8:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-320(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE9:
	movq	-312(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE10:
	leaq	-240(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	movl	-324(%rbp), %edi
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
.LEHB11:
	call	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_@PLT
.LEHE11:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-272(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE12:
	leaq	-80(%rbp), %rax
	movl	-324(%rbp), %edx
	leaq	-48(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
.LEHE13:
	leaq	-80(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-240(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE14:
	leaq	-48(%rbp), %rax
	movl	-324(%rbp), %edx
	leaq	-80(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
.LEHE15:
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEaSEOS1_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-112(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE16:
	leaq	-176(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE17:
	movl	-292(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %r8d
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB18:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.LEHE18:
	vmovq	%xmm0, %rax
	movq	%rax, -288(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-144(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE19:
	leaq	-208(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE20:
	movl	-292(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movl	$0, %r8d
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB21:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.LEHE21:
	vmovq	%xmm0, %rax
	movq	%rax, -280(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	vmovsd	-280(%rbp), %xmm0
	vaddsd	-288(%rbp), %xmm0, %xmm1
	vmovsd	%xmm1, -336(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-336(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L56
	jmp	.L72
.L57:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.L58:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L38
.L59:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L40
.L60:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L42
.L61:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L44
.L62:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L46
.L65:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L48
.L64:
	endbr64
	movq	%rax, %rbx
.L48:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L49
.L66:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L49
.L67:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L49
.L69:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L53
.L68:
	endbr64
	movq	%rax, %rbx
.L53:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L49
.L71:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L55
.L70:
	endbr64
	movq	%rax, %rbx
.L55:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L49
.L63:
	endbr64
	movq	%rax, %rbx
.L49:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L46:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L44:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L42:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L40:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L38:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE22:
.L72:
	call	__stack_chk_fail@PLT
.L56:
	vmovq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3654:
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
.LLSDA3654:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3654-.LLSDACSB3654
.LLSDACSB3654:
	.uleb128 .LEHB3-.LFB3654
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L57-.LFB3654
	.uleb128 0
	.uleb128 .LEHB4-.LFB3654
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L58-.LFB3654
	.uleb128 0
	.uleb128 .LEHB5-.LFB3654
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L59-.LFB3654
	.uleb128 0
	.uleb128 .LEHB6-.LFB3654
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L60-.LFB3654
	.uleb128 0
	.uleb128 .LEHB7-.LFB3654
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L61-.LFB3654
	.uleb128 0
	.uleb128 .LEHB8-.LFB3654
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L62-.LFB3654
	.uleb128 0
	.uleb128 .LEHB9-.LFB3654
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L63-.LFB3654
	.uleb128 0
	.uleb128 .LEHB10-.LFB3654
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L64-.LFB3654
	.uleb128 0
	.uleb128 .LEHB11-.LFB3654
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L65-.LFB3654
	.uleb128 0
	.uleb128 .LEHB12-.LFB3654
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L63-.LFB3654
	.uleb128 0
	.uleb128 .LEHB13-.LFB3654
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L66-.LFB3654
	.uleb128 0
	.uleb128 .LEHB14-.LFB3654
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L63-.LFB3654
	.uleb128 0
	.uleb128 .LEHB15-.LFB3654
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L67-.LFB3654
	.uleb128 0
	.uleb128 .LEHB16-.LFB3654
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L63-.LFB3654
	.uleb128 0
	.uleb128 .LEHB17-.LFB3654
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L68-.LFB3654
	.uleb128 0
	.uleb128 .LEHB18-.LFB3654
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L69-.LFB3654
	.uleb128 0
	.uleb128 .LEHB19-.LFB3654
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L63-.LFB3654
	.uleb128 0
	.uleb128 .LEHB20-.LFB3654
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L70-.LFB3654
	.uleb128 0
	.uleb128 .LEHB21-.LFB3654
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L71-.LFB3654
	.uleb128 0
	.uleb128 .LEHB22-.LFB3654
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE3654:
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.size	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, .-_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.section	.text._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.weak	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.type	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i, @function
_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i:
.LFB3658:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3658
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$328, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -312(%rbp)
	movq	%rsi, -320(%rbp)
	movl	%edx, -324(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-324(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB23:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE23:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-324(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-48(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE24:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-208(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE25:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-176(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB26:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE26:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-144(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB27:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE27:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$2048, %esi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE28:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-320(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB29:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE29:
	movq	-312(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE30:
	leaq	-240(%rbp), %rcx
	leaq	-272(%rbp), %rdx
	movl	-324(%rbp), %edi
	leaq	-48(%rbp), %rsi
	leaq	-80(%rbp), %rax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%edi, %edx
	movq	%rax, %rdi
.LEHB31:
	call	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_@PLT
.LEHE31:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-272(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE32:
	leaq	-112(%rbp), %rcx
	leaq	-144(%rbp), %rdx
	movl	-324(%rbp), %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB33:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE33:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-240(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE34:
	leaq	-176(%rbp), %rcx
	leaq	-208(%rbp), %rdx
	movl	-324(%rbp), %esi
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE35:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -288(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -280(%rbp)
	movl	$0, -296(%rbp)
	jmp	.L74
.L75:
	movl	-296(%rbp), %edx
	leaq	-208(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -336(%rbp)
	movl	-296(%rbp), %edx
	leaq	-176(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vaddsd	-336(%rbp), %xmm0, %xmm0
	vmovsd	-288(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -288(%rbp)
	incl	-296(%rbp)
.L74:
	cmpl	$2047, -296(%rbp)
	jbe	.L75
	movl	$0, -292(%rbp)
	jmp	.L76
.L77:
	movl	-292(%rbp), %edx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -336(%rbp)
	movl	-292(%rbp), %edx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vaddsd	-336(%rbp), %xmm0, %xmm0
	vmovsd	-280(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -280(%rbp)
	incl	-292(%rbp)
.L76:
	cmpl	$2047, -292(%rbp)
	jbe	.L77
	vmovsd	-288(%rbp), %xmm0
	vaddsd	-280(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -336(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-336(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L95
	jmp	.L107
.L96:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.L97:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L81
.L98:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L83
.L99:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L85
.L100:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L87
.L101:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L89
.L104:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L91
.L103:
	endbr64
	movq	%rax, %rbx
.L91:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L92
.L105:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L92
.L106:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L92
.L102:
	endbr64
	movq	%rax, %rbx
.L92:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L89:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L87:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L85:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L83:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L81:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE36:
.L107:
	call	__stack_chk_fail@PLT
.L95:
	vmovq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3658:
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
.LLSDA3658:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3658-.LLSDACSB3658
.LLSDACSB3658:
	.uleb128 .LEHB23-.LFB3658
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L96-.LFB3658
	.uleb128 0
	.uleb128 .LEHB24-.LFB3658
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L97-.LFB3658
	.uleb128 0
	.uleb128 .LEHB25-.LFB3658
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L98-.LFB3658
	.uleb128 0
	.uleb128 .LEHB26-.LFB3658
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L99-.LFB3658
	.uleb128 0
	.uleb128 .LEHB27-.LFB3658
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L100-.LFB3658
	.uleb128 0
	.uleb128 .LEHB28-.LFB3658
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L101-.LFB3658
	.uleb128 0
	.uleb128 .LEHB29-.LFB3658
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L102-.LFB3658
	.uleb128 0
	.uleb128 .LEHB30-.LFB3658
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L103-.LFB3658
	.uleb128 0
	.uleb128 .LEHB31-.LFB3658
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L104-.LFB3658
	.uleb128 0
	.uleb128 .LEHB32-.LFB3658
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L102-.LFB3658
	.uleb128 0
	.uleb128 .LEHB33-.LFB3658
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L105-.LFB3658
	.uleb128 0
	.uleb128 .LEHB34-.LFB3658
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L102-.LFB3658
	.uleb128 0
	.uleb128 .LEHB35-.LFB3658
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L106-.LFB3658
	.uleb128 0
	.uleb128 .LEHB36-.LFB3658
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE3658:
	.section	.text._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.size	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i, .-_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.section	.text._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"axG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.weak	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.type	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii, @function
_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii:
.LFB3659:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3659
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$232, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -200(%rbp)
	movl	%esi, -204(%rbp)
	movq	%rdx, -216(%rbp)
	movl	%ecx, -208(%rbp)
	movl	%r8d, -220(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -144(%rbp)
	movl	$0, -176(%rbp)
	movl	$0, -172(%rbp)
	jmp	.L109
.L110:
	movl	-172(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
.LEHB37:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-152(%rbp), %xmm2
	vmovsd	%xmm2, -232(%rbp)
	movl	-172(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	incl	-172(%rbp)
.L109:
	movl	-204(%rbp), %eax
	cmpl	%eax, -172(%rbp)
	jb	.L110
	jmp	.L111
.L130:
	movl	-204(%rbp), %eax
	movl	%eax, -180(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -128(%rbp)
	incl	-176(%rbp)
	movl	$0, -168(%rbp)
	jmp	.L112
.L116:
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcomisd	%xmm1, %xmm0
	seta	%al
	testb	%al, %al
	je	.L113
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	-152(%rbp), %xmm3
	vmovsd	%xmm3, -232(%rbp)
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	jmp	.L114
.L113:
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vmovsd	-152(%rbp), %xmm4
	vmovsd	%xmm4, -232(%rbp)
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
.L114:
	movl	-168(%rbp), %eax
	movq	-200(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	setnp	%al
	movl	$0, %edx
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L115
	decl	-180(%rbp)
.L115:
	incl	-168(%rbp)
.L112:
	movl	-204(%rbp), %eax
	cmpl	%eax, -168(%rbp)
	jb	.L116
	movl	$0, -164(%rbp)
	jmp	.L117
.L121:
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcomisd	%xmm1, %xmm0
	seta	%al
	testb	%al, %al
	je	.L118
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-136(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -136(%rbp)
	vmovsd	-152(%rbp), %xmm5
	vmovsd	%xmm5, -232(%rbp)
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	jmp	.L119
.L118:
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vmovsd	-152(%rbp), %xmm6
	vmovsd	%xmm6, -232(%rbp)
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
.L119:
	movl	-164(%rbp), %eax
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %edx
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L120
	incl	-180(%rbp)
.L120:
	incl	-164(%rbp)
.L117:
	movl	-220(%rbp), %eax
	cmpl	%eax, -164(%rbp)
	jb	.L121
	vcvtsi2sdl	-180(%rbp), %xmm7, %xmm7
	vmovsd	%xmm7, -232(%rbp)
	movq	-128(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_ZSt3absd
	vmovq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	movq	-136(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_ZSt3absd
	vmovq	%xmm0, %rax
	movq	%rax, -80(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIdERKT_S2_S2_
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	call	_Z3ulpIdET_S0_
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vmulsd	-232(%rbp), %xmm2, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-136(%rbp), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	vmovsd	-128(%rbp), %xmm0
	vmovsd	%xmm0, -112(%rbp)
	jmp	.L122
.L123:
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	vmovsd	-112(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	vmovsd	-152(%rbp), %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	vmovsd	-120(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -144(%rbp)
	vmovsd	-152(%rbp), %xmm0
	vmovsd	%xmm0, -120(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
.L122:
	vmovsd	-120(%rbp), %xmm0
	vaddsd	-112(%rbp), %xmm0, %xmm0
	vaddsd	-144(%rbp), %xmm0, %xmm0
	vucomisd	-144(%rbp), %xmm0
	jp	.L123
	vucomisd	-144(%rbp), %xmm0
	jne	.L123
	incl	-220(%rbp)
	vmovsd	-120(%rbp), %xmm3
	vmovsd	%xmm3, -232(%rbp)
	movl	-220(%rbp), %eax
	cltq
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-220(%rbp)
	vmovsd	-112(%rbp), %xmm4
	vmovsd	%xmm4, -232(%rbp)
	movl	-220(%rbp), %eax
	cltq
	movq	-216(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-232(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	movl	-208(%rbp), %eax
	decl	%eax
	cmpl	%eax, -220(%rbp)
	jl	.L125
	vmovsd	-144(%rbp), %xmm5
	vmovsd	%xmm5, -232(%rbp)
	jmp	.L131
.L125:
	vmovsd	-144(%rbp), %xmm0
	vaddsd	-104(%rbp), %xmm0, %xmm0
	vucomisd	-144(%rbp), %xmm0
	jp	.L111
	vucomisd	-144(%rbp), %xmm0
	je	.L138
	jmp	.L111
.L138:
	leaq	-152(%rbp), %rcx
	leaq	-160(%rbp), %rdx
	vmovsd	-112(%rbp), %xmm0
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-160(%rbp), %xmm0
	vmovsd	%xmm0, -96(%rbp)
	vmovsd	-152(%rbp), %xmm0
	vmovsd	%xmm0, -88(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -152(%rbp)
	vmovsd	-88(%rbp), %xmm0
	vaddsd	-104(%rbp), %xmm0, %xmm0
	vaddsd	-96(%rbp), %xmm0, %xmm0
	vaddsd	-144(%rbp), %xmm0, %xmm0
	vucomisd	-144(%rbp), %xmm0
	jp	.L128
	vucomisd	-144(%rbp), %xmm0
	jne	.L128
	vmovsd	-144(%rbp), %xmm6
	vmovsd	%xmm6, -232(%rbp)
	jmp	.L131
.L128:
	movq	-216(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE37:
	movq	-200(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE38:
	movl	-220(%rbp), %edi
	movl	-208(%rbp), %ecx
	leaq	-48(%rbp), %rdx
	movl	-204(%rbp), %esi
	leaq	-80(%rbp), %rax
	movl	%edi, %r8d
	movq	%rax, %rdi
.LEHB39:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii.localalias
.LEHE39:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm2
	vaddsd	-144(%rbp), %xmm2, %xmm7
	vmovsd	%xmm7, -232(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L131
.L111:
	cmpl	$9999, -176(%rbp)
	jle	.L130
	jmp	.L108
.L131:
	movq	-232(%rbp), %rax
	jmp	.L108
.L136:
	endbr64
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L133
.L135:
	endbr64
	movq	%rax, %rbx
.L133:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB40:
	call	_Unwind_Resume@PLT
.LEHE40:
.L108:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	vmovq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3659:
	.section	.gcc_except_table._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"aG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
.LLSDA3659:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3659-.LLSDACSB3659
.LLSDACSB3659:
	.uleb128 .LEHB37-.LFB3659
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB38-.LFB3659
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L135-.LFB3659
	.uleb128 0
	.uleb128 .LEHB39-.LFB3659
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L136-.LFB3659
	.uleb128 0
	.uleb128 .LEHB40-.LFB3659
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
.LLSDACSE3659:
	.section	.text._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"axG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.size	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii, .-_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.set	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii.localalias,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.section	.rodata
.LC7:
	.string	"rentre dedans %b\n"
.LC8:
	.string	"\nc = %d\n"
.LC9:
	.string	"res = %.40f"
	.section	.text._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"axG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
	.weak	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.type	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_, @function
_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_:
.LFB3660:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3660
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -168(%rbp)
	movl	%esi, %eax
	movq	%rdx, -184(%rbp)
	movb	%al, -172(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_
	movl	%eax, -152(%rbp)
	movq	-184(%rbp), %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movzbl	-172(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
.LEHB41:
	call	printf@PLT
	movl	$0, -144(%rbp)
	jmp	.L141
.L155:
	incl	-144(%rbp)
	movl	-144(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -148(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -96(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -136(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, -140(%rbp)
	jmp	.L142
.L144:
	movl	-140(%rbp), %eax
	movq	-168(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-112(%rbp), %xmm0
	vmovsd	%xmm0, -96(%rbp)
	vmovsd	-104(%rbp), %xmm3
	vmovsd	%xmm3, -192(%rbp)
	movl	-148(%rbp), %eax
	cltq
	movq	-168(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-192(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	movq	-96(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_ZSt3absd
	vmovq	%xmm0, %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rdx
	leaq	-136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxIdERKT_S2_S2_
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -136(%rbp)
	movl	-148(%rbp), %eax
	cltq
	movq	-168(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	setp	%al
	movl	$1, %edx
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm0
	cmovne	%edx, %eax
	testb	%al, %al
	je	.L143
	incl	-148(%rbp)
.L143:
	incl	-140(%rbp)
.L142:
	movl	-152(%rbp), %eax
	cmpl	%eax, -140(%rbp)
	jb	.L144
	movl	-148(%rbp), %eax
	decl	%eax
	vcvtsi2sdl	%eax, %xmm4, %xmm4
	vmovsd	%xmm4, -192(%rbp)
	movq	-136(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z3ulpIdET_S0_
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm5
	vmulsd	-192(%rbp), %xmm5, %xmm0
	vmovsd	.LC5(%rip), %xmm1
	vdivsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, -88(%rbp)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	vmovsd	-96(%rbp), %xmm0
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-112(%rbp), %xmm0
	movq	-184(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	vmovsd	-104(%rbp), %xmm0
	vmovsd	%xmm0, -96(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	movl	-148(%rbp), %eax
	movl	%eax, -152(%rbp)
	vmovsd	-96(%rbp), %xmm6
	vmovsd	%xmm6, -192(%rbp)
	movl	-148(%rbp), %eax
	cltq
	movq	-168(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-192(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	call	_Z3ulpIdET_S0_
	vmovq	%xmm0, %rax
	vmovsd	.LC5(%rip), %xmm0
	vmovq	%rax, %xmm7
	vdivsd	%xmm0, %xmm7, %xmm0
	vcomisd	-88(%rbp), %xmm0
	seta	%al
	testb	%al, %al
	je	.L141
	movzbl	-172(%rbp), %eax
	testl	%eax, %eax
	je	.L166
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	vmovsd	-88(%rbp), %xmm0
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-112(%rbp), %xmm0
	vmovsd	%xmm0, -80(%rbp)
	vmovsd	-104(%rbp), %xmm0
	vmovsd	%xmm0, -72(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-88(%rbp), %xmm0
	vmovq	.LC3(%rip), %xmm1
	vxorpd	%xmm1, %xmm0, %xmm0
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-112(%rbp), %xmm0
	vmovsd	%xmm0, -64(%rbp)
	vmovsd	-104(%rbp), %xmm0
	vmovsd	%xmm0, -56(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	movq	-184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vaddsd	-80(%rbp), %xmm0, %xmm0
	movq	-184(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L147
	vucomisd	%xmm1, %xmm0
	jne	.L147
	movq	-184(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vaddsd	-64(%rbp), %xmm0, %xmm0
	movq	-184(%rbp), %rax
	vmovsd	(%rax), %xmm1
	vucomisd	%xmm1, %xmm0
	jp	.L147
	vucomisd	%xmm1, %xmm0
	jne	.L147
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	vmovsd	-72(%rbp), %xmm1
	vmovsd	-80(%rbp), %xmm0
	vmovsd	%xmm1, %xmm1, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6round3IdET_S0_S0_S0_
	vmovq	%xmm0, %rax
	movq	-184(%rbp), %rdx
	vmovsd	(%rdx), %xmm0
	vmovq	%rax, %xmm5
	vucomisd	%xmm0, %xmm5
	jp	.L147
	vmovq	%rax, %xmm7
	vucomisd	%xmm0, %xmm7
	jne	.L147
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	vmovsd	-56(%rbp), %xmm1
	vmovsd	-64(%rbp), %xmm0
	vmovsd	%xmm1, %xmm1, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6round3IdET_S0_S0_S0_
	vmovq	%xmm0, %rax
	movq	-184(%rbp), %rdx
	vmovsd	(%rdx), %xmm0
	vmovq	%rax, %xmm2
	vucomisd	%xmm0, %xmm2
	jp	.L147
	vmovq	%rax, %xmm3
	vucomisd	%xmm0, %xmm3
	je	.L151
.L147:
	movl	$1, %eax
	jmp	.L153
.L151:
	movl	$0, %eax
.L153:
	testb	%al, %al
	je	.L141
	movq	-168(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE41:
	leaq	-128(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB42:
	call	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias
.LEHE42:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-168(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB43:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE43:
	leaq	-120(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB44:
	call	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias
.LEHE44:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	vmovsd	-128(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	leaq	-104(%rbp), %rcx
	leaq	-112(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
.LEHB45:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_@PLT
	vmovsd	-112(%rbp), %xmm0
	movq	-184(%rbp), %rax
	vmovsd	%xmm0, (%rax)
	vmovsd	-104(%rbp), %xmm0
	vmovsd	%xmm0, -128(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -104(%rbp)
	vmovsd	-120(%rbp), %xmm1
	vmovsd	-128(%rbp), %xmm0
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm1, %xmm1, %xmm2
	vmovsd	%xmm0, %xmm0, %xmm1
	vmovq	%rax, %xmm0
	call	_Z6round3IdET_S0_S0_S0_
	vmovq	%xmm0, %rax
	movq	-184(%rbp), %rdx
	movq	%rax, (%rdx)
.L141:
	movzbl	-172(%rbp), %eax
	cmpl	$1, %eax
	jne	.L167
	cmpl	$999, -144(%rbp)
	jle	.L155
	jmp	.L167
.L166:
	nop
	jmp	.L156
.L167:
	nop
.L156:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L159
	jmp	.L165
.L160:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L161:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE45:
.L165:
	call	__stack_chk_fail@PLT
.L159:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3660:
	.section	.gcc_except_table._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"aG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
.LLSDA3660:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3660-.LLSDACSB3660
.LLSDACSB3660:
	.uleb128 .LEHB41-.LFB3660
	.uleb128 .LEHE41-.LEHB41
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB42-.LFB3660
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L160-.LFB3660
	.uleb128 0
	.uleb128 .LEHB43-.LFB3660
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB44-.LFB3660
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L161-.LFB3660
	.uleb128 0
	.uleb128 .LEHB45-.LFB3660
	.uleb128 .LEHE45-.LEHB45
	.uleb128 0
	.uleb128 0
.LLSDACSE3660:
	.section	.text._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"axG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
	.size	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_, .-_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.set	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_.localalias,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB3647:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3647:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_,"axG",@progbits,_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_,comdat
	.weak	_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_
	.type	_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_, @function
_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_:
.LFB3661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3661:
	.size	_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_, .-_ZSt4sizeISt6vectorIdSaIdEEEDTcldtfp_4sizeEERKT_
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB3790:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3790:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB3793:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3793:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_:
.LFB3796:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3796
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE46:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB47:
	call	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
.LEHE47:
	jmp	.L176
.L175:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB48:
	call	_Unwind_Resume@PLT
.LEHE48:
.L176:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3796:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
.LLSDA3796:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3796-.LLSDACSB3796
.LLSDACSB3796:
	.uleb128 .LEHB46-.LFB3796
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB3796
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L175-.LFB3796
	.uleb128 0
	.uleb128 .LEHB48-.LFB3796
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
.LLSDACSE3796:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB3799:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3799
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3799:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEED2Ev,"aG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
.LLSDA3799:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3799-.LLSDACSB3799
.LLSDACSB3799:
.LLSDACSE3799:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB3801:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3801:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB3806:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3806
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3806:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
.LLSDA3806:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3806-.LLSDACSB3806
.LLSDACSB3806:
.LLSDACSE3806:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS1_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS1_, @function
_ZNSt6vectorIdSaIdEEC2ERKS1_:
.LFB3809:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3809
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB49:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
.LEHE49:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB50:
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE50:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB51:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
.LEHE51:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L184
	jmp	.L187
.L185:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB52:
	call	_Unwind_Resume@PLT
.L186:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE52:
.L187:
	call	__stack_chk_fail@PLT
.L184:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3809:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2ERKS1_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
.LLSDA3809:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3809-.LLSDACSB3809
.LLSDACSB3809:
	.uleb128 .LEHB49-.LFB3809
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB50-.LFB3809
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L185-.LFB3809
	.uleb128 0
	.uleb128 .LEHB51-.LFB3809
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L186-.LFB3809
	.uleb128 0
	.uleb128 .LEHB52-.LFB3809
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
.LLSDACSE3809:
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2ERKS1_, .-_ZNSt6vectorIdSaIdEEC2ERKS1_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS1_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS1_,_ZNSt6vectorIdSaIdEEC2ERKS1_
	.section	.text._ZNSt6vectorIdSaIdEEaSEOS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEaSEOS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEaSEOS1_
	.type	_ZNSt6vectorIdSaIdEEaSEOS1_, @function
_ZNSt6vectorIdSaIdEEaSEOS1_:
.LFB3811:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3811:
	.size	_ZNSt6vectorIdSaIdEEaSEOS1_, .-_ZNSt6vectorIdSaIdEEaSEOS1_
	.section	.text._ZSt3maxIdERKT_S2_S2_,"axG",@progbits,_ZSt3maxIdERKT_S2_S2_,comdat
	.weak	_ZSt3maxIdERKT_S2_S2_
	.type	_ZSt3maxIdERKT_S2_S2_, @function
_ZSt3maxIdERKT_S2_S2_:
.LFB3812:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovsd	(%rax), %xmm1
	movq	-16(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vcomisd	%xmm1, %xmm0
	jbe	.L195
	movq	-16(%rbp), %rax
	jmp	.L193
.L195:
	movq	-8(%rbp), %rax
.L193:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3812:
	.size	_ZSt3maxIdERKT_S2_S2_, .-_ZSt3maxIdERKT_S2_S2_
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, @function
_ZNKSt6vectorIdSaIdEE4sizeEv:
.LFB3813:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3813:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._Z6round3IdET_S0_S0_S0_,"axG",@progbits,_Z6round3IdET_S0_S0_S0_,comdat
	.weak	_Z6round3IdET_S0_S0_S0_
	.type	_Z6round3IdET_S0_S0_S0_, @function
_Z6round3IdET_S0_S0_S0_:
.LFB3814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	vmovsd	%xmm0, -24(%rbp)
	vmovsd	%xmm1, -32(%rbp)
	vmovsd	%xmm2, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z4signIdEiT_
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z8half_ulpIdEbT_
	movzbl	%al, %eax
	cmpl	$1, %eax
	jne	.L199
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z4signIdEiT_
	cmpl	%eax, -4(%rbp)
	jne	.L199
	movl	$1, %eax
	jmp	.L200
.L199:
	movl	$0, %eax
.L200:
	testb	%al, %al
	je	.L201
	movq	-32(%rbp), %rax
	vmovq	%rax, %xmm0
	call	_Z4magnIdET_S0_
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm3
	vaddsd	-24(%rbp), %xmm3, %xmm0
	jmp	.L202
.L201:
	vmovsd	-24(%rbp), %xmm0
.L202:
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3814:
	.size	_Z6round3IdET_S0_S0_S0_, .-_Z6round3IdET_S0_S0_S0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB3879:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3879:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB3882:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3882:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.rodata
	.align 8
.LC10:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB3884:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	testb	%bl, %bl
	je	.L206
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L206:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L208
	call	__stack_chk_fail@PLT
.L208:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3884:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_:
.LFB3886:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3886
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB53:
	call	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
.LEHE53:
	jmp	.L212
.L211:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB54:
	call	_Unwind_Resume@PLT
.LEHE54:
.L212:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3886:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
.LLSDA3886:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3886-.LLSDACSB3886
.LLSDACSB3886:
	.uleb128 .LEHB53-.LFB3886
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L211-.LFB3886
	.uleb128 0
	.uleb128 .LEHB54-.LFB3886
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
.LLSDACSE3886:
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_,_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.type	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, @function
_ZNSt6vectorIdSaIdEE21_M_default_initializeEm:
.LFB3888:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3888:
	.size	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, .-_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB3889:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3889:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB3890:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPdEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3890:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB3893:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3893:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB3898:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L220
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L220:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3898:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_:
.LFB3899:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L223
	call	__stack_chk_fail@PLT
.L223:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3899:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB3900:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3900:
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE5beginEv
	.type	_ZNKSt6vectorIdSaIdEE5beginEv, @function
_ZNKSt6vectorIdSaIdEE5beginEv:
.LFB3901:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L228
	call	__stack_chk_fail@PLT
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3901:
	.size	_ZNKSt6vectorIdSaIdEE5beginEv, .-_ZNKSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNKSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE3endEv
	.type	_ZNKSt6vectorIdSaIdEE3endEv, @function
_ZNKSt6vectorIdSaIdEE3endEv:
.LFB3902:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L231
	call	__stack_chk_fail@PLT
.L231:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3902:
	.size	_ZNKSt6vectorIdSaIdEE3endEv, .-_ZNKSt6vectorIdSaIdEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
.LFB3903:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3903:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.section	.text._ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB3904:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3904:
	.size	_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRSt6vectorIdSaIdEEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.type	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, @function
_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE:
.LFB3905:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	leaq	-49(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	leaq	-49(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS0_
	leaq	-49(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L237
	call	__stack_chk_fail@PLT
.L237:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3905:
	.size	_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE, .-_ZNSt6vectorIdSaIdEE14_M_move_assignEOS1_St17integral_constantIbLb1EE
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB3961:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L240
	call	__stack_chk_fail@PLT
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3961:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB3963:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3963:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm:
.LFB3965:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3965:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
.LFB3966:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3966:
	.size	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB3967:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3967:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB3970:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3970:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB3972:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3972:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_:
.LFB3973:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3973:
	.size	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_:
.LFB3975:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3975:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB3977:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3977:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv:
.LFB3979:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3979:
	.size	_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE13get_allocatorEv
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS0_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS0_, @function
_ZNSt6vectorIdSaIdEEC2ERKS0_:
.LFB3981:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3981:
	.size	_ZNSt6vectorIdSaIdEEC2ERKS0_, .-_ZNSt6vectorIdSaIdEEC2ERKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS0_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS0_,_ZNSt6vectorIdSaIdEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_:
.LFB3983:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	leaq	-32(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L257
	call	__stack_chk_fail@PLT
.L257:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3983:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_swap_dataERS2_
	.section	.text._ZSt15__alloc_on_moveISaIdEEvRT_S2_,"axG",@progbits,_ZSt15__alloc_on_moveISaIdEEvRT_S2_,comdat
	.weak	_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	.type	_ZSt15__alloc_on_moveISaIdEEvRT_S2_, @function
_ZSt15__alloc_on_moveISaIdEEvRT_S2_:
.LFB3984:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3984:
	.size	_ZSt15__alloc_on_moveISaIdEEvRT_S2_, .-_ZSt15__alloc_on_moveISaIdEEvRT_S2_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB4033:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4033:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4034:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L262
	movq	-16(%rbp), %rax
	jmp	.L263
.L262:
	movq	-8(%rbp), %rax
.L263:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4034:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB4036:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4036:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB4038:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L266
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L268
.L266:
	movl	$0, %eax
.L268:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4038:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPdmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
.LFB4039:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4039:
	.size	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB4040:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4040:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB4041:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4041:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
.LFB4042:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4042:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_:
.LFB4044:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4044:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_:
.LFB4046:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4046:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_data12_M_copy_dataERKS2_
	.section	.text._ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_, @function
_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_:
.LFB4047:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4047:
	.size	_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIRSaIdEEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB4074:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4074:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB4075:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4075:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZSt11__addressofIdEPT_RS0_,"axG",@progbits,_ZSt11__addressofIdEPT_RS0_,comdat
	.weak	_ZSt11__addressofIdEPT_RS0_
	.type	_ZSt11__addressofIdEPT_RS0_, @function
_ZSt11__addressofIdEPT_RS0_:
.LFB4077:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4077:
	.size	_ZSt11__addressofIdEPT_RS0_, .-_ZSt11__addressofIdEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
.LFB4076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L287
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIdEPT_RS0_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10_ConstructIdJEEvPT_DpOT0_
	addq	$8, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	movq	%rax, -24(%rbp)
.L287:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4076:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB4078:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4078:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB4091:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4091:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB4092:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L294
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L295
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L295:
	call	_ZSt17__throw_bad_allocv@PLT
.L294:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4092:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZSt10_ConstructIdJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIdJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIdJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIdJEEvPT_DpOT0_, @function
_ZSt10_ConstructIdJEEvPT_DpOT0_:
.LFB4093:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4093:
	.size	_ZSt10_ConstructIdJEEvPT_DpOT0_, .-_ZSt10_ConstructIdJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
.LFB4094:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt17__size_to_integerm
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4094:
	.size	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_:
.LFB4095:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4095:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
.LFB4096:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4096:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.section	.text._ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB4101:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4101:
	.size	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB4102:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L307
	movq	-8(%rbp), %rax
	jmp	.L308
.L307:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__fill_aIPddEvT_S1_RKT0_
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4102:
	.size	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB4103:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4103:
	.size	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB4104:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4104:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB4105:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4105:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB4106:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4106:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZSt8__fill_aIPddEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPddEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPddEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPddEvT_S1_RKT0_, @function
_ZSt8__fill_aIPddEvT_S1_RKT0_:
.LFB4107:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4107:
	.size	_ZSt8__fill_aIPddEvT_S1_RKT0_, .-_ZSt8__fill_aIPddEvT_S1_RKT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
.LFB4108:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4108:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB4109:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4109:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB4110:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	jmp	.L323
.L324:
	movq	-24(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	addq	$8, -24(%rbp)
.L323:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L324
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4110:
	.size	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB4111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L326
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L326:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4111:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L330
	cmpl	$65535, -8(%rbp)
	jne	.L330
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L330:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4112:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_Rare_Blas.cc, @function
_GLOBAL__sub_I_Rare_Blas.cc:
.LFB4113:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4113:
	.size	_GLOBAL__sub_I_Rare_Blas.cc, .-_GLOBAL__sub_I_Rare_Blas.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_Rare_Blas.cc
	.section	.rodata
	.align 16
.LC0:
	.long	-1
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC1:
	.long	0
	.long	2146435072
	.align 16
.LC3:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC4:
	.long	0
	.long	1078624256
	.align 8
.LC5:
	.long	0
	.long	1073741824
	.align 8
.LC6:
	.long	0
	.long	1072693248
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
