	.text
	.file	"Rare_Blas.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z3ulpIdET_S0_
.LCPI0_0:
	.quad	0x7ff0000000000000              #  +Inf
	.section	.text._Z3ulpIdET_S0_,"axG",@progbits,_Z3ulpIdET_S0_,comdat
	.weak	_Z3ulpIdET_S0_
	.p2align	4, 0x90
	.type	_Z3ulpIdET_S0_,@function
_Z3ulpIdET_S0_:                         # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	vmovsd	%xmm0, (%rsp)                   # 8-byte Spill
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	nextafter
	vsubsd	(%rsp), %xmm0, %xmm0            # 8-byte Folded Reload
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z3ulpIdET_S0_, .Lfunc_end0-_Z3ulpIdET_S0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z8half_ulpIdEbT_,"axG",@progbits,_Z8half_ulpIdEbT_,comdat
	.weak	_Z8half_ulpIdEbT_               # -- Begin function _Z8half_ulpIdEbT_
	.p2align	4, 0x90
	.type	_Z8half_ulpIdEbT_,@function
_Z8half_ulpIdEbT_:                      # 
	.cfi_startproc
# %bb.0:
	movb	$1, %al
	retq
.Lfunc_end1:
	.size	_Z8half_ulpIdEbT_, .Lfunc_end1-_Z8half_ulpIdEbT_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z4signIdEiT_,"axG",@progbits,_Z4signIdEiT_,comdat
	.weak	_Z4signIdEiT_                   # -- Begin function _Z4signIdEiT_
	.p2align	4, 0x90
	.type	_Z4signIdEiT_,@function
_Z4signIdEiT_:                          # 
	.cfi_startproc
# %bb.0:
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	vucomisd	%xmm1, %xmm0
	seta	%al
	sbbl	$0, %eax
	retq
.Lfunc_end2:
	.size	_Z4signIdEiT_, .Lfunc_end2-_Z4signIdEiT_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z4magnIdET_S0_
.LCPI3_0:
	.quad	0x7ff0000000000000              #  +Inf
.LCPI3_1:
	.quad	0xfff0000000000000              #  -Inf
	.section	.text._Z4magnIdET_S0_,"axG",@progbits,_Z4magnIdET_S0_,comdat
	.weak	_Z4magnIdET_S0_
	.p2align	4, 0x90
	.type	_Z4magnIdET_S0_,@function
_Z4magnIdET_S0_:                        # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	vmovsd	.LCPI3_0(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	nextafter
	vmovq	%xmm0, %rax
	testb	$1, %al
	jne	.LBB3_1
# %bb.2:
	vmovsd	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	nextafter                       # TAILCALL
.LBB3_1:
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_Z4magnIdET_S0_, .Lfunc_end3-_Z4magnIdET_S0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z14Split_VeltkampIdEvT_RS0_S1_,"axG",@progbits,_Z14Split_VeltkampIdEvT_RS0_S1_,comdat
	.weak	_Z14Split_VeltkampIdEvT_RS0_S1_ # -- Begin function _Z14Split_VeltkampIdEvT_RS0_S1_
	.p2align	4, 0x90
	.type	_Z14Split_VeltkampIdEvT_RS0_S1_,@function
_Z14Split_VeltkampIdEvT_RS0_S1_:        # 
	.cfi_startproc
# %bb.0:
	vmovsd	%xmm0, (%rdi)
	movq	$0, (%rsi)
	retq
.Lfunc_end4:
	.size	_Z14Split_VeltkampIdEvT_RS0_S1_, .Lfunc_end4-_Z14Split_VeltkampIdEvT_RS0_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,"axG",@progbits,_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,comdat
	.weak	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i # -- Begin function _Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.p2align	4, 0x90
	.type	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i,@function
_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, (%rdi)
	movq	$0, 16(%rdi)
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
	movq	%rax, %rbx
	movq	%rax, (%r12)
	leaq	16384(%rax), %rbp
	movq	%rbp, 16(%r12)
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	%rbp, 8(%r12)
	testl	%r14d, %r14d
	je	.LBB5_7
# %bb.1:
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movl	%r14d, %r13d
	cmpl	$4, %r14d
	jb	.LBB5_4
# %bb.2:
	leaq	(,%r13,8), %rbp
	andq	$-32, %rbp
	xorl	%r14d, %r14d
	leaq	4(%rsp), %r12
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	vmovsd	(%rax,%r14), %xmm0              # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%rbx,%rax,8)
	movq	(%r15), %rax
	vmovsd	8(%rax,%r14), %xmm0             # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%rbx,%rax,8)
	movq	(%r15), %rax
	vmovsd	16(%rax,%r14), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%rbx,%rax,8)
	movq	(%r15), %rax
	vmovsd	24(%rax,%r14), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%rbx,%rax,8)
	addq	$32, %r14
	cmpq	%r14, %rbp
	jne	.LBB5_3
.LBB5_4:
	movl	%r13d, %ebp
	andl	$-4, %ebp
	cmpq	%r13, %rbp
	movq	16(%rsp), %r12                  # 8-byte Reload
	jae	.LBB5_7
# %bb.5:
	leaq	4(%rsp), %r14
	.p2align	4, 0x90
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rax
	vmovsd	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%rbx,%rax,8)
	incq	%rbp
	cmpq	%rbp, %r13
	jne	.LBB5_6
.LBB5_7:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i, .Lfunc_end5-_Z9HybridSumIdESt6vectorIT_SaIS1_EES3_i
	.cfi_endproc
                                        # -- End function
	.section	.text._Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.weak	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_ # -- Begin function _Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.p2align	4, 0x90
	.type	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,@function
_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testl	%esi, %esi
	je	.LBB6_3
# %bb.1:
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	leaq	4(%rsp), %rdi
	callq	frexp
	movslq	4(%rsp), %rbp
	movq	(%rbx), %rax
	vmovsd	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	movq	(%r15), %rax
	vmovsd	(%rax,%r13,8), %xmm1            # xmm1 = mem[0],zero
	leaq	8(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_Z10FastTwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	(%rbx), %rax
	vmovsd	%xmm0, (%rax,%rbp,8)
	movq	(%r14), %rax
	vmovsd	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	16(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax,%rbp,8)
	incq	%r13
	cmpq	%r13, %r12
	jne	.LBB6_2
.LBB6_3:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .Lfunc_end6-_Z11OnlineExactIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
.LCPI7_0:
	.zero	16
	.section	.text._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.weak	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.p2align	4, 0x90
	.type	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,@function
_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i: # 
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, 32(%rsp)                  # 4-byte Spill
	testl	%edx, %edx
	js	.LBB7_90
# %bb.1:
	movq	%rdi, %r14
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	je	.LBB7_4
# %bb.2:
	movl	32(%rsp), %ebp                  # 4-byte Reload
	movslq	%ebp, %r15
	leaq	(,%r15,8), %r12
	movq	%r12, %rdi
	callq	_Znwm
	movq	%rax, 80(%rsp)
	leaq	(%rax,%r15,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	$0, (%rax)
	addq	$8, %rax
	cmpl	$1, %ebp
	jne	.LBB7_5
# %bb.3:
	movq	%rax, %rbx
	jmp	.LBB7_6
.LBB7_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB7_10
.LBB7_5:
	leaq	-8(%r12), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB7_6:
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
.Ltmp0:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp1:
# %bb.7:
	movq	%rax, 48(%rsp)
	leaq	(%rax,%r15,8), %rbx
	leaq	8(%rax), %rdi
	movq	%rbx, 64(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 32(%rsp)                    # 4-byte Folded Reload
	jne	.LBB7_9
# %bb.8:
	movq	%rdi, %rbx
	jmp	.LBB7_10
.LBB7_9:
	addq	$-8, %r12
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	_intel_fast_memset@PLT
.LBB7_10:
	movq	%rbx, 56(%rsp)
.Ltmp3:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp4:
# %bb.11:
	movq	%rax, %rbx
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp6:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp7:
# %bb.12:
	movq	%rax, %r13
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp9:
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp10:
# %bb.13:
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp12:
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp13:
# %bb.14:
	movq	%rax, %rbx
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	8(%r14), %rdi
	movq	(%r14), %rax
	movq	%rdi, %rbp
	subq	%rax, %rbp
	sarq	$3, %rbp
	movabsq	$9223372036854775800, %rcx      # imm = 0x7FFFFFFFFFFFFFF8
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 144(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 160(%rsp)
	subq	%rax, %rdi
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%r13, 168(%rsp)                 # 8-byte Spill
	je	.LBB7_19
# %bb.15:
	cmpq	%rcx, %rdi
	ja	.LBB7_82
# %bb.16:
.Ltmp15:
	movq	%r13, %r15
	movq	24(%rsp), %r12                  # 8-byte Reload
	callq	_Znwm
.Ltmp16:
# %bb.17:
	movq	%rax, %r13
	movq	(%r14), %rsi
	movq	8(%r14), %rbx
	movq	%rax, 144(%rsp)
	movq	%rax, 152(%rsp)
	leaq	(%rax,%rbp,8), %rax
	movq	%rax, 160(%rsp)
	subq	%rsi, %rbx
	je	.LBB7_20
# %bb.18:
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	memmove@PLT
	jmp	.LBB7_20
.LBB7_19:
	vmovupd	%xmm0, 144(%rsp)                # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
	movq	%rbp, 160(%rsp)
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB7_20:
	addq	%r13, %rbx
	movq	%rbx, 152(%rsp)
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	8(%rbx), %rdi
	movq	(%rbx), %rax
	movq	%rdi, %rbp
	subq	%rax, %rbp
	sarq	$3, %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 112(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 128(%rsp)
	subq	%rax, %rdi
	je	.LBB7_25
# %bb.21:
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	movq	168(%rsp), %r13                 # 8-byte Reload
	ja	.LBB7_84
# %bb.22:
.Ltmp19:
	callq	_Znwm
.Ltmp20:
# %bb.23:
	movq	%rax, %r14
	movq	(%rbx), %rsi
	movq	8(%rbx), %rbx
	movq	%rax, 112(%rsp)
	movq	%rax, 120(%rsp)
	leaq	(%rax,%rbp,8), %rax
	movq	%rax, 128(%rsp)
	subq	%rsi, %rbx
	je	.LBB7_26
# %bb.24:
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memmove@PLT
	jmp	.LBB7_26
.LBB7_25:
	vmovupd	%xmm0, 112(%rsp)                # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
	movq	%rbp, 128(%rsp)
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movq	168(%rsp), %r13                 # 8-byte Reload
.LBB7_26:
	addq	%r14, %rbx
	movq	%rbx, 120(%rsp)
.Ltmp24:
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rsi
	leaq	80(%rsp), %rcx
	leaq	48(%rsp), %r8
	movl	32(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, %edx
	callq	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
.Ltmp25:
# %bb.27:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	movq	16(%rsp), %r12                  # 8-byte Reload
	je	.LBB7_29
# %bb.28:
	callq	_ZdlPv
.LBB7_29:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_31
# %bb.30:
	callq	_ZdlPv
.LBB7_31:
	movq	88(%rsp), %rdi
	subq	80(%rsp), %rdi
	je	.LBB7_36
# %bb.32:
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB7_86
# %bb.33:
.Ltmp27:
	callq	_Znwm
.Ltmp28:
# %bb.34:
	movq	%rax, %rbp
	movq	80(%rsp), %rsi
	movq	88(%rsp), %rdx
	subq	%rsi, %rdx
	je	.LBB7_37
# %bb.35:
	movq	%rbp, %rdi
	callq	memmove@PLT
	jmp	.LBB7_37
.LBB7_36:
	xorl	%ebp, %ebp
.LBB7_37:
.Ltmp32:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp33:
# %bb.38:
	movq	%rax, %r15
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movl	%ebx, %eax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	testl	%ebx, %ebx
	je	.LBB7_45
# %bb.39:
	movq	%r13, %r14
	cmpl	$4, 32(%rsp)                    # 4-byte Folded Reload
	jb	.LBB7_42
# %bb.40:
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %r12
	andq	$-32, %r12
	xorl	%r13d, %r13d
	leaq	4(%rsp), %rbx
	.p2align	4, 0x90
.LBB7_41:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%r13), %xmm0              # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r15,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r15,%rax,8)
	vmovsd	8(%rbp,%r13), %xmm0             # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r15,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r15,%rax,8)
	vmovsd	16(%rbp,%r13), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r15,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r15,%rax,8)
	vmovsd	24(%rbp,%r13), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r15,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%r15,%rax,8)
	addq	$32, %r13
	cmpq	%r13, %r12
	jne	.LBB7_41
.LBB7_42:
	movq	40(%rsp), %r12                  # 8-byte Reload
	movl	%r12d, %ebx
	andl	$-4, %ebx
	cmpq	%r12, %rbx
	movq	%r14, %r13
	jae	.LBB7_45
# %bb.43:
	leaq	4(%rsp), %r14
	.p2align	4, 0x90
.LBB7_44:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r15,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%r15,%rax,8)
	incq	%rbx
	cmpq	%rbx, %r12
	jne	.LBB7_44
.LBB7_45:
	movq	%r13, %rdi
	callq	_ZdlPv
	testq	%rbp, %rbp
	je	.LBB7_47
# %bb.46:
	movq	%rbp, %rdi
	callq	_ZdlPv
.LBB7_47:
	movq	56(%rsp), %rdi
	subq	48(%rsp), %rdi
	movq	16(%rsp), %r12                  # 8-byte Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB7_52
# %bb.48:
	cmpq	%rax, %rdi
	ja	.LBB7_88
# %bb.49:
.Ltmp35:
	callq	_Znwm
.Ltmp36:
# %bb.50:
	movq	%rax, %rbp
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
	subq	%rsi, %rdx
	movl	32(%rsp), %ebx                  # 4-byte Reload
	je	.LBB7_53
# %bb.51:
	movq	%rbp, %rdi
	callq	memmove@PLT
	jmp	.LBB7_53
.LBB7_52:
	xorl	%ebp, %ebp
	movl	32(%rsp), %ebx                  # 4-byte Reload
.LBB7_53:
.Ltmp40:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp41:
# %bb.54:
	movq	%rax, %r12
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	testl	%ebx, %ebx
	je	.LBB7_61
# %bb.55:
	cmpl	$4, %ebx
	jb	.LBB7_58
# %bb.56:
	movq	40(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %r13
	andq	$-32, %r13
	xorl	%r14d, %r14d
	leaq	4(%rsp), %rbx
	.p2align	4, 0x90
.LBB7_57:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%r14), %xmm0              # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r12,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r12,%rax,8)
	vmovsd	8(%rbp,%r14), %xmm0             # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r12,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r12,%rax,8)
	vmovsd	16(%rbp,%r14), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r12,%rax,8), %xmm0, %xmm0
	movl	%ecx, 4(%rsp)
	vmovsd	%xmm0, 8192(%r12,%rax,8)
	vmovsd	24(%rbp,%r14), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r12,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%r12,%rax,8)
	addq	$32, %r14
	cmpq	%r14, %r13
	jne	.LBB7_57
.LBB7_58:
	movq	40(%rsp), %r13                  # 8-byte Reload
	movl	%r13d, %ebx
	andl	$-4, %ebx
	cmpq	%r13, %rbx
	jae	.LBB7_61
# %bb.59:
	leaq	4(%rsp), %r14
	.p2align	4, 0x90
.LBB7_60:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, %rdi
	callq	frexp
	movslq	4(%rsp), %rax
	leal	1024(%rax), %ecx
	movl	%ecx, 4(%rsp)
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8192(%r12,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8192(%r12,%rax,8)
	incq	%rbx
	cmpq	%rbx, %r13
	jne	.LBB7_60
.LBB7_61:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	testq	%rbp, %rbp
	je	.LBB7_63
# %bb.62:
	movq	%rbp, %rdi
	callq	_ZdlPv
.LBB7_63:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 272(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 288(%rsp)
.Ltmp43:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp44:
# %bb.64:
	movq	%rax, 272(%rsp)
	movq	%rax, %rbx
	addq	$16384, %rbx                    # imm = 0x4000
	movq	%rbx, 288(%rsp)
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 280(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 240(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 256(%rsp)
.Ltmp45:
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp46:
# %bb.65:
	movq	%rax, 240(%rsp)
	movq	%rax, %rbx
	addq	$1600, %rbx                     # imm = 0x640
	movq	%rbx, 256(%rsp)
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 248(%rsp)
.Ltmp48:
	leaq	272(%rsp), %rdi
	leaq	240(%rsp), %rdx
	movl	$2048, %esi                     # imm = 0x800
	movl	$200, %ecx
	xorl	%r8d, %r8d
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp49:
# %bb.66:
	movq	240(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_68
# %bb.67:
	callq	_ZdlPv
.LBB7_68:
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_70
# %bb.69:
	callq	_ZdlPv
.LBB7_70:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 208(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 224(%rsp)
.Ltmp51:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp52:
# %bb.71:
	movq	%rax, 208(%rsp)
	movq	%rax, %rbx
	addq	$16384, %rbx                    # imm = 0x4000
	movq	%rbx, 224(%rsp)
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 216(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 176(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 192(%rsp)
.Ltmp54:
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp55:
# %bb.72:
	movq	%rax, 176(%rsp)
	movq	%rax, %rbx
	addq	$1600, %rbx                     # imm = 0x640
	movq	%rbx, 192(%rsp)
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 184(%rsp)
.Ltmp57:
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rdx
	movl	$2048, %esi                     # imm = 0x800
	movl	$200, %ecx
	xorl	%r8d, %r8d
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
.Ltmp58:
# %bb.73:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB7_75
# %bb.74:
	callq	_ZdlPv
.LBB7_75:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_77
# %bb.76:
	callq	_ZdlPv
.LBB7_77:
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	104(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_79
# %bb.78:
	callq	_ZdlPv
.LBB7_79:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_81
# %bb.80:
	callq	_ZdlPv
.LBB7_81:
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8(%rsp), %xmm0, %xmm0           # 8-byte Folded Reload
	addq	$296, %rsp                      # imm = 0x128
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_82:
	.cfi_def_cfa_offset 352
.Ltmp17:
	movq	%r13, %r15
	movq	24(%rsp), %r12                  # 8-byte Reload
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp18:
# %bb.83:
.LBB7_84:
.Ltmp21:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp22:
# %bb.85:
.LBB7_86:
.Ltmp29:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp30:
# %bb.87:
.LBB7_88:
.Ltmp37:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp38:
# %bb.89:
.LBB7_90:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB7_91:
.Ltmp2:
	movq	%rax, %r14
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_128
	jmp	.LBB7_130
.LBB7_92:
.Ltmp59:
	movq	%rax, %r14
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_95
# %bb.93:
	callq	_ZdlPv
	jmp	.LBB7_95
.LBB7_94:
.Ltmp56:
	movq	%rax, %r14
.LBB7_95:
	movq	208(%rsp), %rdi
	jmp	.LBB7_101
.LBB7_96:
.Ltmp50:
	movq	%rax, %r14
	movq	240(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_100
# %bb.97:
	callq	_ZdlPv
	jmp	.LBB7_100
.LBB7_99:
.Ltmp47:
	movq	%rax, %r14
.LBB7_100:
	movq	272(%rsp), %rdi
.LBB7_101:
	testq	%rdi, %rdi
	je	.LBB7_120
# %bb.102:
	callq	_ZdlPv
	jmp	.LBB7_120
.LBB7_103:
.Ltmp42:
	movq	%rax, %r14
	testq	%rbp, %rbp
	jne	.LBB7_105
# %bb.104:
	movq	%r15, %r13
	jmp	.LBB7_121
.LBB7_105:
	movq	%rbp, %rdi
	callq	_ZdlPv
	movq	%r15, %r13
	jmp	.LBB7_121
.LBB7_106:
.Ltmp34:
	movq	%rax, %r14
	testq	%rbp, %rbp
	je	.LBB7_121
# %bb.107:
	movq	%rbp, %rdi
	callq	_ZdlPv
	jmp	.LBB7_121
.LBB7_108:
.Ltmp26:
	movq	%rax, %r14
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_117
# %bb.109:
	callq	_ZdlPv
	jmp	.LBB7_117
.LBB7_110:
.Ltmp14:
	movq	%rax, %r14
	jmp	.LBB7_123
.LBB7_111:
.Ltmp11:
	movq	%rax, %r14
	jmp	.LBB7_124
.LBB7_112:
.Ltmp8:
	movq	%rax, %r14
	jmp	.LBB7_125
.LBB7_113:
.Ltmp5:
	movq	%rax, %r14
	jmp	.LBB7_126
.LBB7_114:
.Ltmp39:
	movq	%rax, %r14
	movq	%r15, %r13
	jmp	.LBB7_122
.LBB7_115:
.Ltmp31:
	movq	%rax, %r14
	jmp	.LBB7_122
.LBB7_116:
.Ltmp23:
	movq	%rax, %r14
.LBB7_117:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	movq	16(%rsp), %r12                  # 8-byte Reload
	je	.LBB7_122
# %bb.118:
	callq	_ZdlPv
	jmp	.LBB7_122
.LBB7_119:
.Ltmp53:
	movq	%rax, %r14
.LBB7_120:
	movq	%r15, %r13
	movq	%r12, 24(%rsp)                  # 8-byte Spill
.LBB7_121:
	movq	16(%rsp), %r12                  # 8-byte Reload
.LBB7_122:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB7_123:
	movq	104(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
.LBB7_124:
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB7_125:
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB7_126:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB7_129
# %bb.127:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB7_130
.LBB7_128:
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB7_129:
	callq	_ZdlPv
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_128
.LBB7_130:
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i, .Lfunc_end7-_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	.cfi_endproc
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp19-.Ltmp16                #   Call between .Ltmp16 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp24-.Ltmp20                #   Call between .Ltmp20 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp32-.Ltmp28                #   Call between .Ltmp28 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp40-.Ltmp36                #   Call between .Ltmp36 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp43-.Ltmp41                #   Call between .Ltmp41 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp54-.Ltmp52                #   Call between .Ltmp52 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp57-.Ltmp55                #   Call between .Ltmp55 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Lfunc_end7-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.LCPI8_0:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI8_1:
	.quad	0x7ff0000000000000              #  +Inf
.LCPI8_2:
	.quad	0x0000000000000000              #  0
	.section	.text._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"axG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.weak	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.p2align	4, 0x90
	.type	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,@function
_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii: # 
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rdx, %r13
	movl	%esi, %ebx
	movq	%rdi, %rbp
	movl	%esi, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	testl	%esi, %esi
	movl	%esi, 60(%rsp)                  # 4-byte Spill
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	je	.LBB8_1
# %bb.10:
	movl	%r8d, 32(%rsp)                  # 4-byte Spill
	movq	(%rbp), %rax
	cmpl	$4, %ebx
	jae	.LBB8_52
# %bb.11:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_54
.LBB8_1:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_2
.LBB8_52:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	(,%rcx,8), %r15
	andq	$-32, %r15
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%r14d, %r14d
	leaq	8(%rsp), %r12
	leaq	16(%rsp), %rbx
	.p2align	4, 0x90
.LBB8_53:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%r14), %xmm1              # xmm1 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	(%rbp), %rax
	vmovsd	16(%rsp), %xmm1                 # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%rax,%r14)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	vmovsd	8(%rax,%r14), %xmm1             # xmm1 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	(%rbp), %rax
	vmovsd	16(%rsp), %xmm1                 # xmm1 = mem[0],zero
	vmovsd	%xmm1, 8(%rax,%r14)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	vmovsd	16(%rax,%r14), %xmm1            # xmm1 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	(%rbp), %rax
	vmovsd	16(%rsp), %xmm1                 # xmm1 = mem[0],zero
	vmovsd	%xmm1, 16(%rax,%r14)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	vmovsd	24(%rax,%r14), %xmm1            # xmm1 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm1                  # xmm1 = mem[0],zero
	movq	(%rbp), %rax
	vmovsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rax,%r14)
	vmovapd	%xmm1, %xmm0
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	addq	$32, %r14
	cmpq	%r14, %r15
	jne	.LBB8_53
.LBB8_54:
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %ebp
	andl	$-4, %ebp
	cmpq	%rcx, %rbp
	jae	.LBB8_55
# %bb.56:
	leaq	8(%rsp), %r12
	leaq	16(%rsp), %rbx
	movq	64(%rsp), %r14                  # 8-byte Reload
	movq	80(%rsp), %r15                  # 8-byte Reload
	.p2align	4, 0x90
.LBB8_57:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rbp,8), %xmm1            # xmm1 = mem[0],zero
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm1                  # xmm1 = mem[0],zero
	movq	(%r14), %rax
	vmovsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rbp,8)
	vmovapd	%xmm1, %xmm0
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	incq	%rbp
	cmpq	%rbp, %r15
	jne	.LBB8_57
# %bb.58:
	movl	60(%rsp), %ebx                  # 4-byte Reload
	movq	%r14, %rbp
	movl	32(%rsp), %r8d                  # 4-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB8_2
.LBB8_55:
	movl	60(%rsp), %ebx                  # 4-byte Reload
	movq	64(%rsp), %rbp                  # 8-byte Reload
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movl	32(%rsp), %r8d                  # 4-byte Reload
.LBB8_2:
	leal	-1(%rcx), %eax
	movslq	%r8d, %rcx
	cltq
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	leaq	8(%rsp), %r15
	leaq	16(%rsp), %r14
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	%r13, 176(%rsp)                 # 8-byte Spill
	.p2align	4, 0x90
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_13 Depth 2
                                        #     Child Loop BB8_18 Depth 2
                                        #     Child Loop BB8_23 Depth 2
	cmpl	$10000, %eax                    # imm = 0x2710
	je	.LBB8_45
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	testl	%ebx, %ebx
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	je	.LBB8_5
# %bb.12:                               #   in Loop: Header=BB8_3 Depth=1
	movq	(%rbp), %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovupd	%xmm1, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%r13d, %r13d
	vxorps	%xmm3, %xmm3, %xmm3
	movl	%ebx, %r12d
	movq	80(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB8_13
	.p2align	4, 0x90
.LBB8_15:                               #   in Loop: Header=BB8_13 Depth=2
	vmovups	32(%rsp), %xmm0                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovups	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	160(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
.LBB8_16:                               #   in Loop: Header=BB8_13 Depth=2
	movq	(%rbp), %rax
	vmovsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%r13,8)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	xorl	%ecx, %ecx
	vxorpd	%xmm2, %xmm2, %xmm2
	vucomisd	(%rax,%r13,8), %xmm2
	sete	%cl
	subl	%ecx, %r12d
	incq	%r13
	cmpq	%r13, %rbx
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB8_6
.LBB8_13:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%xmm3, 160(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	(%rax,%r13,8), %xmm1            # xmm1 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	movq	(%rbp), %rax
	vmovsd	(%rax,%r13,8), %xmm1            # xmm1 = mem[0],zero
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm1, %xmm0
	jae	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=2
	vmovups	160(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm3                  # xmm3 = mem[0],zero
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=1
	xorl	%r12d, %r12d
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovupd	%xmm1, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	testq	%rax, %rax
	je	.LBB8_7
# %bb.17:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%eax, %ebp
	movq	176(%rsp), %r13                 # 8-byte Reload
	movq	(%r13), %rax
	xorl	%ebx, %ebx
	jmp	.LBB8_18
	.p2align	4, 0x90
.LBB8_20:                               #   in Loop: Header=BB8_18 Depth=2
	vmovups	32(%rsp), %xmm0                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r15, %rdi
	movq	%r14, %rsi
	vmovupd	%xmm3, 160(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovupd	160(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovupd	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.LBB8_21:                               #   in Loop: Header=BB8_18 Depth=2
	movq	(%r13), %rax
	vmovsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rbx,8)
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	xorl	%ecx, %ecx
	vxorpd	%xmm2, %xmm2, %xmm2
	vucomisd	(%rax,%rbx,8), %xmm2
	setne	%cl
	addl	%ecx, %r12d
	incq	%rbx
	cmpq	%rbx, %rbp
	je	.LBB8_8
.LBB8_18:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vucomisd	%xmm1, %xmm2
	jae	.LBB8_20
# %bb.19:                               #   in Loop: Header=BB8_18 Depth=2
	vmovapd	%xmm3, %xmm0
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm3                  # xmm3 = mem[0],zero
	jmp	.LBB8_21
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	movq	176(%rsp), %r13                 # 8-byte Reload
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	vmovupd	%xmm3, 160(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	.LCPI8_0(%rip), %xmm1           # xmm1 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	vandpd	%xmm1, %xmm3, %xmm0
	vandpd	32(%rsp), %xmm1, %xmm1          # 16-byte Folded Reload
	vmaxsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, 200(%rsp)                # 8-byte Spill
	vmovsd	.LCPI8_1(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	nextafter
	vmovupd	160(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	32(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	%xmm0, 192(%rsp)                # 8-byte Spill
	vmovsd	24(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	vaddsd	%xmm2, %xmm3, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm2, %xmm0
	vmovapd	%xmm2, %xmm0
	je	.LBB8_9
# %bb.22:                               #   in Loop: Header=BB8_3 Depth=1
	movq	64(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB8_23:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	vmovapd	%xmm3, %xmm0
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm1                  # xmm1 = mem[0],zero
	vmovsd	16(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovups	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovupd	32(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	8(%rsp), %xmm2                  # xmm2 = mem[0],zero
	vmovsd	16(%rsp), %xmm3                 # xmm3 = mem[0],zero
	movq	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	vaddsd	%xmm2, %xmm3, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm2, %xmm0
	vmovapd	%xmm2, %xmm0
	jne	.LBB8_23
	jmp	.LBB8_24
	.p2align	4, 0x90
.LBB8_9:                                #   in Loop: Header=BB8_3 Depth=1
	movq	64(%rsp), %rbp                  # 8-byte Reload
.LBB8_24:                               #   in Loop: Header=BB8_3 Depth=1
	movq	(%r13), %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	vmovsd	%xmm3, 8(%rax,%rcx,8)
	vmovsd	%xmm1, 16(%rax,%rcx,8)
	addq	$2, %rcx
	cmpq	184(%rsp), %rcx                 # 8-byte Folded Reload
	jge	.LBB8_45
# %bb.25:                               #   in Loop: Header=BB8_3 Depth=1
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%r12d, %xmm5, %xmm0
	movq	208(%rsp), %rax                 # 8-byte Reload
	incl	%eax
	vmovsd	192(%rsp), %xmm2                # 8-byte Reload
                                        # xmm2 = mem[0],zero
	vsubsd	200(%rsp), %xmm2, %xmm4         # 8-byte Folded Reload
	vfmadd213sd	24(%rsp), %xmm0, %xmm4  # 8-byte Folded Reload
                                        # xmm4 = (xmm0 * xmm4) + mem
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vucomisd	%xmm0, %xmm4
	movl	60(%rsp), %ebx                  # 4-byte Reload
	vxorpd	%xmm2, %xmm2, %xmm2
	jne	.LBB8_3
# %bb.26:
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	8(%rsp), %rdi
	leaq	16(%rsp), %rsi
	vmovapd	%xmm3, %xmm0
	vmovsd	%xmm4, 32(%rsp)                 # 8-byte Spill
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	8(%rsp), %xmm0, %xmm0
	movq	$0, 8(%rsp)
	vaddsd	16(%rsp), %xmm0, %xmm0
	movq	$0, 16(%rsp)
	vucomisd	24(%rsp), %xmm0                 # 8-byte Folded Reload
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB8_45
# %bb.27:
	movq	8(%rbp), %rdi
	movq	(%rbp), %rax
	movq	%rdi, %rbp
	subq	%rax, %rbp
	sarq	$3, %rbp
	movabsq	$9223372036854775800, %r15      # imm = 0x7FFFFFFFFFFFFFF8
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%rax, %rdi
	je	.LBB8_28
# %bb.29:
	cmpq	%r15, %rdi
	ja	.LBB8_59
# %bb.30:
	callq	_Znwm
	movq	%rax, %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %r12
	movq	%r14, 128(%rsp)
	movq	%r14, 136(%rsp)
	leaq	(%r14,%rbp,8), %rax
	movq	%rax, 144(%rsp)
	subq	%rsi, %r12
	je	.LBB8_32
# %bb.31:
	movq	%r14, %rdi
	movq	%r12, %rdx
	callq	memmove@PLT
	jmp	.LBB8_32
.LBB8_28:
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
	movq	%rbp, 144(%rsp)
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
.LBB8_32:
	addq	%r14, %r12
	movq	%r12, 136(%rsp)
	movq	8(%r13), %rdi
	movq	(%r13), %rax
	movq	%rdi, %rbp
	subq	%rax, %rbp
	sarq	$3, %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%rax, %rdi
	je	.LBB8_33
# %bb.34:
	cmpq	%r15, %rdi
	ja	.LBB8_35
# %bb.37:
.Ltmp60:
	callq	_Znwm
.Ltmp61:
# %bb.38:
	movq	%rax, %r14
	movq	(%r13), %rsi
	movq	8(%r13), %r15
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbp,8), %rax
	movq	%rax, 112(%rsp)
	subq	%rsi, %r15
	movq	72(%rsp), %rbp                  # 8-byte Reload
	je	.LBB8_40
# %bb.39:
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	memmove@PLT
	jmp	.LBB8_40
.LBB8_33:
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
	movq	%rbp, 112(%rsp)
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movq	72(%rsp), %rbp                  # 8-byte Reload
.LBB8_40:
	addq	%r14, %r15
	movq	%r15, 104(%rsp)
.Ltmp65:
	leaq	128(%rsp), %rdi
	leaq	96(%rsp), %rdx
	movl	%ebx, %esi
	movl	%ebp, %ecx
	movq	88(%rsp), %r8                   # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
.Ltmp66:
# %bb.41:
	vmovapd	%xmm0, %xmm1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_43
# %bb.42:
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	callq	_ZdlPv
	vmovsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB8_43:
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm0
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_45
# %bb.44:
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	callq	_ZdlPv
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB8_45:
	addq	$216, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_59:
	.cfi_def_cfa_offset 272
	callq	_ZSt28__throw_bad_array_new_lengthv
.LBB8_35:
.Ltmp62:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp63:
# %bb.36:
.LBB8_47:
.Ltmp67:
	movq	%rax, %rbx
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_48
# %bb.49:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_50
.LBB8_51:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB8_48:
	callq	_ZdlPv
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_51
	jmp	.LBB8_50
.LBB8_46:
.Ltmp64:
	movq	%rax, %rbx
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_51
.LBB8_50:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii, .Lfunc_end8-_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	.cfi_endproc
	.section	.gcc_except_table._Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,"aG",@progbits,_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp65-.Ltmp61                #   Call between .Ltmp61 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin1          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp62-.Ltmp66                #   Call between .Ltmp66 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end8-.Ltmp63            #   Call between .Ltmp63 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"axG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.weak	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i # -- Begin function _Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.p2align	4, 0x90
	.type	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,@function
_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i: # 
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, (%rsp)                    # 4-byte Spill
	testl	%edx, %edx
	js	.LBB9_94
# %bb.1:
	movq	%rdi, %r13
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	je	.LBB9_4
# %bb.2:
	movl	(%rsp), %ebx                    # 4-byte Reload
	movslq	%ebx, %r14
	leaq	(,%r14,8), %r15
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, 48(%rsp)
	leaq	(%rax,%r14,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	$0, (%rax)
	addq	$8, %rax
	cmpl	$1, %ebx
	jne	.LBB9_5
# %bb.3:
	movq	%rax, %rbp
	jmp	.LBB9_6
.LBB9_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB9_10
.LBB9_5:
	leaq	-8(%r15), %rdx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB9_6:
	movq	%rbp, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp68:
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp69:
# %bb.7:
	movq	%rax, 16(%rsp)
	leaq	(%rax,%r14,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB9_9
# %bb.8:
	movq	%rdi, %rbp
	jmp	.LBB9_10
.LBB9_9:
	addq	$-8, %r15
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_intel_fast_memset@PLT
.LBB9_10:
	movq	%rbp, 24(%rsp)
.Ltmp71:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
	movq	%rax, 8(%rsp)                   # 8-byte Spill
.Ltmp72:
# %bb.11:
	movl	$16384, %edx                    # imm = 0x4000
	movq	8(%rsp), %rdi                   # 8-byte Reload
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp74:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp75:
# %bb.12:
	movq	%rax, %r15
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp77:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp78:
# %bb.13:
	movq	%rax, %r12
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp80:
	movl	$16384, %edi                    # imm = 0x4000
	callq	_Znwm
.Ltmp81:
# %bb.14:
	movq	%rax, %r14
	movl	$16384, %edx                    # imm = 0x4000
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	8(%r13), %rdi
	movq	%r13, %rbp
	movq	(%r13), %rax
	movq	%rdi, %r13
	subq	%rax, %r13
	sarq	$3, %r13
	movabsq	$9223372036854775800, %rcx      # imm = 0x7FFFFFFFFFFFFFF8
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%rax, %rdi
	je	.LBB9_15
# %bb.16:
	cmpq	%rcx, %rdi
	ja	.LBB9_49
# %bb.17:
.Ltmp83:
	callq	_Znwm
.Ltmp84:
# %bb.18:
	movq	%rax, %rbx
	movq	(%rbp), %rsi
	movq	8(%rbp), %rbp
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%r13,8), %rcx
	movq	%rcx, 144(%rsp)
	subq	%rsi, %rbp
	je	.LBB9_20
# %bb.19:
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB9_20
.LBB9_15:
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	shlq	$3, %r13
	movq	%r13, 144(%rsp)
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB9_20:
	addq	%rbx, %rbp
	movq	%rbp, 136(%rsp)
	movq	192(%rsp), %rbp                 # 8-byte Reload
	movq	8(%rbp), %rdi
	movq	(%rbp), %rax
	movq	%rdi, %r13
	subq	%rax, %r13
	sarq	$3, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%rax, %rdi
	je	.LBB9_21
# %bb.22:
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB9_23
# %bb.25:
.Ltmp85:
	callq	_Znwm
.Ltmp86:
# %bb.26:
	movq	%rax, %rbx
	movq	(%rbp), %rsi
	movq	8(%rbp), %rbp
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%r13,8), %rcx
	movq	%rcx, 112(%rsp)
	subq	%rsi, %rbp
	je	.LBB9_28
# %bb.27:
	movq	%rbx, %rdi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB9_28
.LBB9_21:
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	shlq	$3, %r13
	movq	%r13, 112(%rsp)
	xorl	%ebp, %ebp
	xorl	%ebx, %ebx
.LBB9_28:
	addq	%rbx, %rbp
	movq	%rbp, 104(%rsp)
.Ltmp90:
	leaq	128(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rcx
	leaq	16(%rsp), %r8
	movl	(%rsp), %edx                    # 4-byte Reload
	callq	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
.Ltmp91:
# %bb.29:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	movabsq	$9223372036854775800, %rbx      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB9_31
# %bb.30:
	callq	_ZdlPv
.LBB9_31:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_33
# %bb.32:
	callq	_ZdlPv
.LBB9_33:
	movq	56(%rsp), %rdi
	subq	48(%rsp), %rdi
	je	.LBB9_34
# %bb.35:
	cmpq	%rbx, %rdi
	ja	.LBB9_49
# %bb.36:
.Ltmp93:
	callq	_Znwm
.Ltmp94:
# %bb.37:
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
	subq	%rsi, %rdx
	je	.LBB9_38
# %bb.39:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	memmove@PLT
	jmp	.LBB9_40
.LBB9_34:
	xorl	%ebx, %ebx
	jmp	.LBB9_40
.LBB9_38:
	movq	%rax, %rbx
.LBB9_40:
	movl	(%rsp), %eax                    # 4-byte Reload
	movl	%eax, %ecx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	testl	%eax, %eax
	je	.LBB9_44
# %bb.41:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB9_42:                               # =>This Inner Loop Header: Depth=1
	leaq	4(%rsp), %rdi
	callq	frexp
	movslq	4(%rsp), %r13
	vmovsd	(%r12,%r13,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	(%rbx,%rbp,8), %xmm1            # xmm1 = mem[0],zero
.Ltmp95:
	leaq	80(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	_Z10FastTwoSumIdEvT_S0_RS0_S1_
.Ltmp96:
# %bb.43:                               #   in Loop: Header=BB9_42 Depth=1
	vmovsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%r13,8)
	vmovsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	88(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%r13,8)
	incq	%rbp
	cmpq	%rbp, 192(%rsp)                 # 8-byte Folded Reload
	jne	.LBB9_42
.LBB9_44:
	testq	%rbx, %rbx
	je	.LBB9_46
# %bb.45:
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB9_46:
	movq	24(%rsp), %rdi
	subq	16(%rsp), %rdi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB9_47
# %bb.48:
	cmpq	%rax, %rdi
	ja	.LBB9_49
# %bb.51:
.Ltmp98:
	callq	_Znwm
.Ltmp99:
# %bb.52:
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdx
	subq	%rsi, %rdx
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	je	.LBB9_53
# %bb.54:
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	%rax, %rdi
	callq	memmove@PLT
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	movq	%rbx, %r13
	jne	.LBB9_56
	jmp	.LBB9_59
.LBB9_47:
	movq	8(%rsp), %rbx                   # 8-byte Reload
	movq	$0, 160(%rsp)                   # 8-byte Folded Spill
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	movq	%rbx, %r13
	jne	.LBB9_56
	jmp	.LBB9_59
.LBB9_53:
	movq	8(%rsp), %rbx                   # 8-byte Reload
	cmpl	$0, (%rsp)                      # 4-byte Folded Reload
	movq	%rbx, %r13
	je	.LBB9_59
.LBB9_56:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB9_57:                               # =>This Inner Loop Header: Depth=1
	leaq	4(%rsp), %rdi
	callq	frexp
	movslq	4(%rsp), %rbx
	vmovsd	(%r13,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	movq	160(%rsp), %rax                 # 8-byte Reload
	vmovsd	(%rax,%rbp,8), %xmm1            # xmm1 = mem[0],zero
.Ltmp103:
	leaq	80(%rsp), %rdi
	leaq	88(%rsp), %rsi
	callq	_Z10FastTwoSumIdEvT_S0_RS0_S1_
.Ltmp104:
# %bb.58:                               #   in Loop: Header=BB9_57 Depth=1
	vmovsd	80(%rsp), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r13,%rbx,8)
	vmovsd	(%r15,%rbx,8), %xmm0            # xmm0 = mem[0],zero
	vaddsd	88(%rsp), %xmm0, %xmm0
	vmovsd	%xmm0, (%r15,%rbx,8)
	incq	%rbp
	cmpq	%rbp, 192(%rsp)                 # 8-byte Folded Reload
	jne	.LBB9_57
.LBB9_59:
	movq	%r13, %rbx
	movq	160(%rsp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB9_61
# %bb.60:
	callq	_ZdlPv
.LBB9_61:
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	$-4, %rax
	.p2align	4, 0x90
.LBB9_62:                               # =>This Inner Loop Header: Depth=1
	vmovupd	32(%r15,%rax,8), %ymm0
	vmovupd	64(%r15,%rax,8), %ymm1
	vaddpd	32(%rbx,%rax,8), %ymm2, %ymm2
	vaddpd	64(%rbx,%rax,8), %ymm0, %ymm0
	vmovupd	96(%r15,%rax,8), %ymm3
	vaddpd	%ymm2, %ymm0, %ymm0
	vaddpd	96(%rbx,%rax,8), %ymm1, %ymm1
	vaddpd	128(%rbx,%rax,8), %ymm3, %ymm2
	vaddpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	160(%rbx,%rax,8), %ymm1
	vmovupd	192(%rbx,%rax,8), %ymm2
	vaddpd	128(%r15,%rax,8), %ymm0, %ymm0
	vmovupd	224(%rbx,%rax,8), %ymm3
	vaddpd	160(%r15,%rax,8), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	192(%r15,%rax,8), %ymm2, %ymm1
	vaddpd	224(%r15,%rax,8), %ymm3, %ymm2
	vaddpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	256(%rbx,%rax,8), %ymm0, %ymm0
	vaddpd	256(%r15,%rax,8), %ymm0, %ymm2
	addq	$32, %rax
	cmpq	$2044, %rax                     # imm = 0x7FC
	jb	.LBB9_62
# %bb.63:
	vmovupd	%ymm2, 192(%rsp)                # 32-byte Spill
	vxorpd	%xmm2, %xmm2, %xmm2
	movq	$-4, %rax
	.p2align	4, 0x90
.LBB9_64:                               # =>This Inner Loop Header: Depth=1
	vmovupd	32(%r14,%rax,8), %ymm0
	vmovupd	64(%r14,%rax,8), %ymm1
	vaddpd	32(%r12,%rax,8), %ymm2, %ymm2
	vaddpd	64(%r12,%rax,8), %ymm0, %ymm0
	vmovupd	96(%r14,%rax,8), %ymm3
	vaddpd	%ymm2, %ymm0, %ymm0
	vaddpd	96(%r12,%rax,8), %ymm1, %ymm1
	vaddpd	128(%r12,%rax,8), %ymm3, %ymm2
	vaddpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vmovupd	160(%r12,%rax,8), %ymm1
	vmovupd	192(%r12,%rax,8), %ymm2
	vaddpd	128(%r14,%rax,8), %ymm0, %ymm0
	vmovupd	224(%r12,%rax,8), %ymm3
	vaddpd	160(%r14,%rax,8), %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	192(%r14,%rax,8), %ymm2, %ymm1
	vaddpd	224(%r14,%rax,8), %ymm3, %ymm2
	vaddpd	%ymm1, %ymm2, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	256(%r12,%rax,8), %ymm0, %ymm0
	vaddpd	256(%r14,%rax,8), %ymm0, %ymm2
	addq	$32, %rax
	cmpq	$2044, %rax                     # imm = 0x7FC
	jb	.LBB9_64
# %bb.65:
	vmovupd	%ymm2, 160(%rsp)                # 32-byte Spill
	movq	%r14, %rdi
	vzeroupper
	callq	_ZdlPv
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_67
# %bb.66:
	callq	_ZdlPv
.LBB9_67:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_69
# %bb.68:
	callq	_ZdlPv
.LBB9_69:
	vmovupd	192(%rsp), %ymm1                # 32-byte Reload
	vextractf128	$1, %ymm1, %xmm0
	vaddpd	%xmm0, %xmm1, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovupd	160(%rsp), %ymm2                # 32-byte Reload
	vextractf128	$1, %ymm2, %xmm1
	vaddpd	%xmm1, %xmm2, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$232, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB9_49:
	.cfi_def_cfa_offset 288
.Ltmp100:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp101:
# %bb.50:
.LBB9_23:
.Ltmp87:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp88:
# %bb.24:
.LBB9_94:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB9_70:
.Ltmp70:
	movq	%rax, %r13
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_93
	jmp	.LBB9_92
.LBB9_76:
.Ltmp92:
	movq	%rax, %r13
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_78
# %bb.77:
	callq	_ZdlPv
	jmp	.LBB9_78
.LBB9_74:
.Ltmp82:
	movq	%rax, %r13
	jmp	.LBB9_86
.LBB9_73:
.Ltmp79:
	movq	%rax, %r13
	jmp	.LBB9_87
.LBB9_72:
.Ltmp76:
	movq	%rax, %r13
	jmp	.LBB9_88
.LBB9_71:
.Ltmp73:
	movq	%rax, %r13
	jmp	.LBB9_89
.LBB9_82:
.Ltmp105:
	movq	%rax, %r13
	cmpq	$0, 160(%rsp)                   # 8-byte Folded Reload
	je	.LBB9_85
# %bb.83:
	movq	160(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	jmp	.LBB9_85
.LBB9_80:
.Ltmp97:
	movq	%rax, %r13
	testq	%rbx, %rbx
	je	.LBB9_85
# %bb.81:
	movq	%rbx, %rdi
	callq	_ZdlPv
	jmp	.LBB9_85
.LBB9_75:
.Ltmp89:
	movq	%rax, %r13
.LBB9_78:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_85
# %bb.79:
	callq	_ZdlPv
	jmp	.LBB9_85
.LBB9_84:
.Ltmp102:
	movq	%rax, %r13
.LBB9_85:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB9_86:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB9_87:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB9_88:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
.LBB9_89:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB9_90
# %bb.91:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB9_92
.LBB9_93:
	movq	%r13, %rdi
	callq	_Unwind_Resume@PLT
.LBB9_90:
	callq	_ZdlPv
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_93
.LBB9_92:
	callq	_ZdlPv
	movq	%r13, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i, .Lfunc_end9-_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	.cfi_endproc
	.section	.gcc_except_table._Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,"aG",@progbits,_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp68-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin2          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp71-.Ltmp69                #   Call between .Ltmp69 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin2          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp74-.Ltmp72                #   Call between .Ltmp72 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin2          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp77-.Ltmp75                #   Call between .Ltmp75 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin2          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin2          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp83-.Ltmp81                #   Call between .Ltmp81 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin2          # >> Call Site 15 <<
	.uleb128 .Ltmp90-.Ltmp86                #   Call between .Ltmp86 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin2          # >> Call Site 16 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin2          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin2          # >> Call Site 17 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 18 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin2          # >> Call Site 19 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin2          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin2          # >> Call Site 20 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin2          # >> Call Site 21 <<
	.uleb128 .Ltmp103-.Ltmp99               #   Call between .Ltmp99 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin2         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin2         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin2          # >> Call Site 24 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin2          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin2          # >> Call Site 25 <<
	.uleb128 .Lfunc_end9-.Ltmp88            #   Call between .Ltmp88 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
.LCPI10_0:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
.LCPI10_3:
	.quad	0x8000000000000000              #  -0
	.quad	0x8000000000000000              #  -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI10_1:
	.quad	0x7ff0000000000000              #  +Inf
.LCPI10_2:
	.quad	0x3fe0000000000000              #  0.5
.LCPI10_4:
	.quad	0xfff0000000000000              #  -Inf
.LCPI10_5:
	.quad	0x0000000000000000              #  0
	.section	.text._Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,"axG",@progbits,_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,comdat
	.weak	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.p2align	4, 0x90
	.type	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_,@function
_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r13
	movq	$0, (%rdx)
	movzbl	%sil, %ebp
	movl	$.L.str.1, %edi
	movl	%ebp, %esi
	xorl	%eax, %eax
	callq	printf
	testb	%bpl, %bpl
	je	.LBB10_37
# %bb.1:
	subq	%r14, %r13
	shrq	$3, %r13
	leaq	8(%rsp), %r14
	movq	%rsp, %r12
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%eax, %eax
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_34:                              #   in Loop: Header=BB10_2 Depth=1
	vmovsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	vaddsd	%xmm3, %xmm0, %xmm3
.LBB10_35:                              #   in Loop: Header=BB10_2 Depth=1
	vmovsd	%xmm3, (%r15)
.LBB10_36:                              #   in Loop: Header=BB10_2 Depth=1
	cmpl	$999, 112(%rsp)                 # 4-byte Folded Reload
                                        # imm = 0x3E7
	movl	76(%rsp), %eax                  # 4-byte Reload
	jae	.LBB10_37
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
	vmovsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	movl	%eax, %ecx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	leal	1(%rcx), %esi
	movl	$.L.str.2, %edi
	movl	%esi, 76(%rsp)                  # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	testl	%r13d, %r13d
	je	.LBB10_3
# %bb.20:                               #   in Loop: Header=BB10_2 Depth=1
	movl	%r13d, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	(%rbx), %rax
	vxorps	%xmm2, %xmm2, %xmm2
	movl	$1, %r13d
	movq	%rbx, %rbp
	movq	%r12, %rbx
	movq	%r14, %r12
	xorl	%r14d, %r14d
	vxorps	%xmm1, %xmm1, %xmm1
	.p2align	4, 0x90
.LBB10_21:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	%xmm1, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	movl	%r13d, %r15d
	vmovsd	(%rax,%r14,8), %xmm1            # xmm1 = mem[0],zero
	vmovaps	%xmm2, %xmm0
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovupd	32(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	8(%rsp), %xmm2                  # xmm2 = mem[0],zero
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	movl	%r13d, %ecx
	movq	(%rbp), %rax
	vmovsd	%xmm0, (%rax,%rcx,8)
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	vandpd	.LCPI10_0(%rip), %xmm2, %xmm0
	vmaxsd	%xmm1, %xmm0, %xmm1
	xorl	%r13d, %r13d
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	(%rax,%rcx,8), %xmm0
	setne	%r13b
	addl	%r15d, %r13d
	incq	%r14
	cmpq	%r14, 16(%rsp)                  # 8-byte Folded Reload
	jne	.LBB10_21
# %bb.22:                               #   in Loop: Header=BB10_2 Depth=1
	movq	104(%rsp), %r15                 # 8-byte Reload
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movq	%r12, %r14
	movq	%rbx, %r12
	movq	%rbp, %rbx
	vmovupd	%xmm2, 80(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_3:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r13d
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	vmovupd	%xmm1, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	leal	-1(%r13), %eax
	vcvtsi2sd	%eax, %xmm7, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vmovapd	%xmm1, %xmm0
	vmovsd	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	vsubsd	32(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vmovsd	.LCPI10_2(%rip), %xmm1          # xmm1 = mem[0],zero
	vmulsd	48(%rsp), %xmm1, %xmm1          # 8-byte Folded Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovups	80(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r15)
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	movl	%r13d, %eax
	movq	(%rbx), %rcx
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vmovsd	%xmm0, (%rcx,%rax,8)
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovq	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	vmovsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	vsubsd	%xmm3, %xmm0, %xmm0
	vmulsd	.LCPI10_2(%rip), %xmm0, %xmm0
	vmovupd	32(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomisd	%xmm0, %xmm2
	jae	.LBB10_36
# %bb.5:                                #   in Loop: Header=BB10_2 Depth=1
	vmovapd	%xmm2, %xmm1
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovups	%xmm0, 80(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovups	%xmm0, 16(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	vmovups	32(%rsp), %xmm0                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vxorps	.LCPI10_3(%rip), %xmm0, %xmm1
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovupd	80(%rsp), %xmm0                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	8(%rsp), %xmm4                  # xmm4 = mem[0],zero
	vmovsd	(%rsp), %xmm5                   # xmm5 = mem[0],zero
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	vmovsd	(%r15), %xmm3                   # xmm3 = mem[0],zero
	vaddsd	%xmm0, %xmm3, %xmm1
	vucomisd	%xmm3, %xmm1
	jne	.LBB10_17
# %bb.6:                                #   in Loop: Header=BB10_2 Depth=1
	vaddsd	%xmm4, %xmm3, %xmm1
	vucomisd	%xmm3, %xmm1
	jne	.LBB10_17
# %bb.7:                                #   in Loop: Header=BB10_2 Depth=1
	vunpcklpd	16(%rsp), %xmm0, %xmm6  # 16-byte Folded Reload
                                        # xmm6 = xmm0[0],mem[0]
	vxorpd	%xmm2, %xmm2, %xmm2
	vcmpltpd	%xmm6, %xmm2, %xmm1
	vcmpltpd	%xmm2, %xmm6, %xmm2
	vpsubd	%xmm1, %xmm2, %xmm2
	vpshufd	$232, %xmm2, %xmm1              # xmm1 = xmm2[0,2,2,3]
	vpshufd	$238, %xmm2, %xmm2              # xmm2 = xmm2[2,3,2,3]
	vpcmpeqd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %eax
	vmovapd	%xmm3, %xmm1
	testb	$1, %al
	je	.LBB10_11
# %bb.8:                                #   in Loop: Header=BB10_2 Depth=1
	vmovupd	%xmm5, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm4, 32(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	vmovsd	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	vmovq	%xmm0, %rax
	testb	$1, %al
	jne	.LBB10_10
# %bb.9:                                #   in Loop: Header=BB10_2 Depth=1
	vmovsd	.LCPI10_4(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
.LBB10_10:                              #   in Loop: Header=BB10_2 Depth=1
	vmovsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	vmovupd	32(%rsp), %xmm4                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	48(%rsp), %xmm5                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm3, %xmm0, %xmm1
.LBB10_11:                              #   in Loop: Header=BB10_2 Depth=1
	vucomisd	%xmm3, %xmm1
	jne	.LBB10_17
# %bb.12:                               #   in Loop: Header=BB10_2 Depth=1
	vunpcklpd	%xmm5, %xmm4, %xmm0     # xmm0 = xmm4[0],xmm5[0]
	vpxor	%xmm2, %xmm2, %xmm2
	vcmpltpd	%xmm0, %xmm2, %xmm1
	vcmpltpd	%xmm2, %xmm0, %xmm0
	vpsubd	%xmm1, %xmm0, %xmm0
	vpshufd	$232, %xmm0, %xmm1              # xmm1 = xmm0[0,2,2,3]
	vpshufd	$238, %xmm0, %xmm0              # xmm0 = xmm0[2,3,2,3]
	vpcmpeqd	%xmm0, %xmm1, %xmm0
	vmovd	%xmm0, %eax
	vmovapd	%xmm3, %xmm0
	testb	$1, %al
	je	.LBB10_16
# %bb.13:                               #   in Loop: Header=BB10_2 Depth=1
	vmovsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	vmovapd	%xmm4, %xmm0
	vmovq	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	vmovq	%xmm0, %rax
	testb	$1, %al
	jne	.LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_2 Depth=1
	vmovq	.LCPI10_4(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
.LBB10_15:                              #   in Loop: Header=BB10_2 Depth=1
	vmovsd	16(%rsp), %xmm3                 # 8-byte Reload
                                        # xmm3 = mem[0],zero
	vaddsd	%xmm3, %xmm0, %xmm0
.LBB10_16:                              #   in Loop: Header=BB10_2 Depth=1
	vucomisd	%xmm3, %xmm0
	je	.LBB10_36
	.p2align	4, 0x90
.LBB10_17:                              #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rbx), %rbp
	movq	%rbp, %rdi
	subq	(%rbx), %rdi
	je	.LBB10_38
# %bb.18:                               #   in Loop: Header=BB10_2 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB10_19
# %bb.23:                               #   in Loop: Header=BB10_2 Depth=1
	callq	_Znwm
	movq	%rax, %rbp
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	subq	%rsi, %rdx
	je	.LBB10_25
# %bb.24:                               #   in Loop: Header=BB10_2 Depth=1
	movq	%rbp, %rdi
	callq	memmove@PLT
.LBB10_25:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$.L.str.1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rbp, %rdi
	callq	_ZdlPv
	movq	(%rbx), %rbp
	movq	8(%rbx), %rdi
	cmpq	%rbp, %rdi
	je	.LBB10_39
.LBB10_27:                              #   in Loop: Header=BB10_2 Depth=1
	subq	%rbp, %rdi
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB10_19
# %bb.28:                               #   in Loop: Header=BB10_2 Depth=1
	callq	_Znwm
	movq	%rax, %rbp
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	subq	%rsi, %rdx
	je	.LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_2 Depth=1
	movq	%rbp, %rdi
	callq	memmove@PLT
.LBB10_30:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$.L.str.1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rbp, %rdi
	callq	_ZdlPv
	jmp	.LBB10_31
.LBB10_38:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$.L.str.1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%rbp, %rdi
	cmpq	%rbp, %rdi
	jne	.LBB10_27
.LBB10_39:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$.L.str.1, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
.LBB10_31:                              #   in Loop: Header=BB10_2 Depth=1
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	_Z6TwoSumIdEvT_S0_RS0_S1_
	vmovsd	8(%rsp), %xmm3                  # xmm3 = mem[0],zero
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	movq	$0, 8(%rsp)
	movq	$0, (%rsp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	setbe	%al
	sbbb	$0, %al
	je	.LBB10_35
# %bb.32:                               #   in Loop: Header=BB10_2 Depth=1
	vmovsd	%xmm3, 16(%rsp)                 # 8-byte Spill
	vmovsd	.LCPI10_1(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	vmovq	%xmm0, %rax
	testb	$1, %al
	jne	.LBB10_34
# %bb.33:                               #   in Loop: Header=BB10_2 Depth=1
	vmovsd	.LCPI10_4(%rip), %xmm1          # xmm1 = mem[0],zero
	callq	nextafter
	jmp	.LBB10_34
.LBB10_37:
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB10_19:
	.cfi_def_cfa_offset 176
	callq	_ZSt28__throw_bad_array_new_lengthv
.Lfunc_end10:
	.size	_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_, .Lfunc_end10-_Z8IFastSumIdEvSt6vectorIT_SaIS1_EEbRS1_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_Rare_Blas.cc
	.type	_GLOBAL__sub_I_Rare_Blas.cc,@function
_GLOBAL__sub_I_Rare_Blas.cc:            # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end11:
	.size	_GLOBAL__sub_I_Rare_Blas.cc, .Lfunc_end11-_GLOBAL__sub_I_Rare_Blas.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str, 49

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"rentre dedans %b\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"\nc = %d\n"
	.size	.L.str.2, 9

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"res = %.40f"
	.size	.L.str.3, 12

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_Rare_Blas.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
