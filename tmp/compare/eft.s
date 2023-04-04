	.text
	.file	"eft.cc"
	.section	.text._Z6TwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z6TwoSumIdEvT_S0_RS0_S1_,comdat
	.weak	_Z6TwoSumIdEvT_S0_RS0_S1_       # -- Begin function _Z6TwoSumIdEvT_S0_RS0_S1_
	.p2align	4, 0x90
	.type	_Z6TwoSumIdEvT_S0_RS0_S1_,@function
_Z6TwoSumIdEvT_S0_RS0_S1_:              # 
	.cfi_startproc
# %bb.0:
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi)
	movq	$0, (%rsi)
	retq
.Lfunc_end0:
	.size	_Z6TwoSumIdEvT_S0_RS0_S1_, .Lfunc_end0-_Z6TwoSumIdEvT_S0_RS0_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.weak	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj # -- Begin function _Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.p2align	4, 0x90
	.type	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,@function
_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj:    # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	subq	(%rbx), %rdi
	je	.LBB1_1
# %bb.2:
	movabsq	$9223372036854775801, %rax      # imm = 0x7FFFFFFFFFFFFFF9
	cmpq	%rax, %rdi
	jae	.LBB1_28
# %bb.3:
	callq	_Znwm
	movq	%rax, %rdi
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	subq	%rsi, %rdx
	je	.LBB1_5
# %bb.4:
	movq	%rdi, %rbx
	callq	memmove@PLT
	movq	%rbx, %rdi
.LBB1_5:
	movl	%r14d, %eax
	cmpl	$1, %ebp
	jne	.LBB1_6
	jmp	.LBB1_17
.LBB1_1:
	xorl	%edi, %edi
	movl	%r14d, %eax
	cmpl	$1, %ebp
	je	.LBB1_17
.LBB1_6:
	cmpl	$2, %r14d
	jb	.LBB1_17
# %bb.7:
	cmpl	$3, %ebp
	movl	$2, %r11d
	cmovael	%ebp, %r11d
	addl	$-2, %r11d
	leaq	-1(%rax), %rsi
	movq	%rsi, %r10
	shrq	$2, %r10
	movq	%rsi, %rdx
	andq	$-4, %rdx
	leaq	8(%rdi), %r8
	leaq	1(%rdx), %r9
	xorl	%ebx, %ebx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_8 Depth=1
	leal	1(%rbx), %ecx
	cmpl	%r11d, %ebx
	movl	%ecx, %ebx
	je	.LBB1_17
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
                                        #     Child Loop BB1_14 Depth 2
	cmpq	$4, %rsi
	jae	.LBB1_9
# %bb.12:                               #   in Loop: Header=BB1_8 Depth=1
	cmpq	%rsi, %rdx
	jae	.LBB1_16
	jmp	.LBB1_13
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_8 Depth=1
	vmovsd	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movq	%r10, %rbp
	movq	%r8, %rcx
	.p2align	4, 0x90
.LBB1_10:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rcx), %xmm2
	vaddpd	16(%rcx), %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovupd	%ymm0, -8(%rcx)
	addq	$32, %rcx
	decq	%rbp
	jne	.LBB1_10
# %bb.11:                               #   in Loop: Header=BB1_8 Depth=1
	vmovsd	%xmm1, (%rdi,%rdx,8)
	cmpq	%rsi, %rdx
	jae	.LBB1_16
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=1
	vmovsd	(%rdi,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	movq	%r9, %rcx
	.p2align	4, 0x90
.LBB1_14:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddsd	(%rdi,%rcx,8), %xmm1, %xmm1
	movq	$0, -8(%rdi,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB1_14
# %bb.15:                               #   in Loop: Header=BB1_8 Depth=1
	vmovsd	%xmm1, -8(%rdi,%rax,8)
	jmp	.LBB1_16
.LBB1_17:
	testl	%r14d, %r14d
	je	.LBB1_18
# %bb.22:
	movl	$4294967292, %ecx               # imm = 0xFFFFFFFC
	andq	%rax, %rcx
	je	.LBB1_23
# %bb.24:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	vaddpd	(%rdi,%rdx,8), %ymm0, %ymm0
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB1_25
# %bb.26:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rax, %rcx
	jne	.LBB1_27
	jmp	.LBB1_19
.LBB1_18:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB1_19
.LBB1_23:
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_27:                               # =>This Inner Loop Header: Depth=1
	vaddsd	(%rdi,%rcx,8), %xmm0, %xmm0
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB1_27
.LBB1_19:
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.20:
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB1_21:
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.LBB1_28:
	.cfi_def_cfa_offset 48
	callq	_ZSt28__throw_bad_array_new_lengthv
.Lfunc_end1:
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .Lfunc_end1-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LCPI2_0:
	.quad	0x41a0000002000000              #  134217729
	.section	.text._Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.weak	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.p2align	4, 0x90
	.type	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,@function
_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	testl	%esi, %esi
	js	.LBB2_39
# %bb.1:
	je	.LBB2_8
# %bb.2:
	movq	%rcx, %r14
	movq	%rdx, %r15
	movl	%esi, %ebp
	movq	%rdi, %r12
	movslq	%esi, %rbx
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	_Znwm
	movq	$0, (%rax)
	cmpl	$1, %ebp
	je	.LBB2_4
# %bb.3:
	leaq	8(%rax), %rdi
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	movq	%rax, %rbx
	callq	_intel_fast_memset@PLT
	movq	%rbx, %rax
.LBB2_4:
	movq	(%r12), %rsi
	movl	%ebp, %ebx
	leaq	(%rsi,%rbx,8), %rdx
	addq	$-8, %rdx
	cmpq	%rax, %rdx
	jb	.LBB2_9
# %bb.5:
	leaq	(%rax,%rbx,8), %rcx
	addq	$-8, %rcx
	cmpq	%rsi, %rcx
	jb	.LBB2_9
# %bb.6:
	xorl	%ecx, %ecx
	vmovsd	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	vmulsd	(%rsi,%rcx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rax,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_7
	jmp	.LBB2_16
.LBB2_8:
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_9:
	.cfi_def_cfa_offset 64
	movl	$4294967292, %ecx               # imm = 0xFFFFFFFC
	andq	%rbx, %rcx
	je	.LBB2_10
# %bb.11:
	xorl	%edi, %edi
	vbroadcastsd	.LCPI2_0(%rip), %ymm0   # ymm0 = [1.34217729E+8,1.34217729E+8,1.34217729E+8,1.34217729E+8]
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	vmulpd	(%rsi,%rdi,8), %ymm0, %ymm1
	vmovupd	%ymm1, (%rax,%rdi,8)
	addq	$4, %rdi
	cmpq	%rcx, %rdi
	jb	.LBB2_12
# %bb.13:
	cmpq	%rbx, %rcx
	jne	.LBB2_14
	jmp	.LBB2_16
.LBB2_10:
	xorl	%ecx, %ecx
.LBB2_14:
	vmovsd	.LCPI2_0(%rip), %xmm0           # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	vmulsd	(%rsi,%rcx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rax,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_15
.LBB2_16:
	leaq	-1(%rbx), %rcx
	movq	(%r15), %rdi
	cmpq	%rdi, %rdx
	jb	.LBB2_20
# %bb.17:
	leaq	(%rdi,%rcx,8), %rdx
	cmpq	%rsi, %rdx
	jb	.LBB2_20
# %bb.18:
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB2_19
	jmp	.LBB2_28
.LBB2_20:
	cmpl	$13, %ebp
	jb	.LBB2_22
# %bb.21:
	leaq	(,%rbx,8), %rdx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, %rbp
	vzeroupper
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%r12), %rsi
	movq	(%r15), %rdi
	jmp	.LBB2_28
.LBB2_22:
	movl	$4294967292, %edx               # imm = 0xFFFFFFFC
	andq	%rbx, %rdx
	je	.LBB2_23
# %bb.24:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_25:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rsi,%rbp,8), %ymm0
	vmovupd	%ymm0, (%rdi,%rbp,8)
	addq	$4, %rbp
	cmpq	%rdx, %rbp
	jb	.LBB2_25
# %bb.26:
	cmpq	%rbx, %rdx
	jne	.LBB2_27
	jmp	.LBB2_28
.LBB2_23:
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_27:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	.LBB2_27
.LBB2_28:
	movq	(%r14), %rdx
	leaq	(%rsi,%rcx,8), %rbp
	cmpq	%rdx, %rbp
	setae	%r9b
	leaq	(%rdx,%rcx,8), %rbp
	cmpq	%rsi, %rbp
	setae	%r10b
	leaq	(%rdi,%rcx,8), %rcx
	cmpq	%rdx, %rcx
	setb	%cl
	cmpq	%rdi, %rbp
	setb	%r8b
	testb	%r10b, %r9b
	jne	.LBB2_30
# %bb.29:
	orb	%r8b, %cl
	je	.LBB2_30
# %bb.32:
	movl	$4294967292, %ecx               # imm = 0xFFFFFFFC
	andq	%rbx, %rcx
	je	.LBB2_33
# %bb.34:
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_35:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rsi,%rbp,8), %ymm0
	vsubpd	(%rdi,%rbp,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%rdx,%rbp,8)
	addq	$4, %rbp
	cmpq	%rcx, %rbp
	jb	.LBB2_35
# %bb.36:
	cmpq	%rbx, %rcx
	jne	.LBB2_37
	jmp	.LBB2_38
.LBB2_30:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_31:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vsubsd	(%rdi,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_31
	jmp	.LBB2_38
.LBB2_33:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_37:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vsubsd	(%rdi,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rbx
	jne	.LBB2_37
.LBB2_38:
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	vzeroupper
	jmp	_ZdlPv                          # TAILCALL
.LBB2_39:
	.cfi_def_cfa_offset 64
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.Lfunc_end2:
	.size	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .Lfunc_end2-_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10FastTwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10FastTwoSumIdEvT_S0_RS0_S1_,comdat
	.weak	_Z10FastTwoSumIdEvT_S0_RS0_S1_  # -- Begin function _Z10FastTwoSumIdEvT_S0_RS0_S1_
	.p2align	4, 0x90
	.type	_Z10FastTwoSumIdEvT_S0_RS0_S1_,@function
_Z10FastTwoSumIdEvT_S0_RS0_S1_:         # 
	.cfi_startproc
# %bb.0:
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi)
	movq	$0, (%rsi)
	retq
.Lfunc_end3:
	.size	_Z10FastTwoSumIdEvT_S0_RS0_S1_, .Lfunc_end3-_Z10FastTwoSumIdEvT_S0_RS0_S1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
.LCPI4_0:
	.quad	0x41a0000002000000              #  134217729
	.section	.text._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"axG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.weak	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.p2align	4, 0x90
	.type	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,@function
_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_: # 
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	js	.LBB4_133
# %bb.1:
	movq	%rdi, %r13
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movslq	%edx, %rax
	movl	%edx, %r12d
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	je	.LBB4_21
# %bb.2:
	movl	%edx, %ebp
	leaq	(,%rax,8), %rbx
	movq	%rbx, %rdi
	callq	_Znwm
	movq	%rax, %r15
	movq	$0, (%rax)
	cmpl	$1, %ebp
	je	.LBB4_4
# %bb.3:
	leaq	8(%r15), %rdi
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB4_4:
.Ltmp0:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1:
# %bb.5:
	movq	%r13, %rbp
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_7
# %bb.6:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	addq	$8, %rdi
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB4_7:
.Ltmp3:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp4:
# %bb.8:
	movq	%rax, %r14
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_10
# %bb.9:
	movq	%r14, %rdi
	addq	$8, %rdi
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB4_10:
.Ltmp6:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp7:
# %bb.11:
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_13
# %bb.12:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	addq	$8, %rdi
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB4_13:
.Ltmp9:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp10:
# %bb.14:
	movq	%rax, %rcx
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_16
# %bb.15:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	addq	$8, %rdi
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
.LBB4_16:
	movq	(%rbp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	(%rdx), %rdx
	leaq	(%rcx,%r12,8), %rsi
	addq	$-8, %rsi
	cmpq	%rdx, %rsi
	setae	%dil
	leaq	(%rdx,%r12,8), %rsi
	addq	$-8, %rsi
	cmpq	%rcx, %rsi
	setae	%r8b
	leaq	(%rax,%r12,8), %rbp
	addq	$-8, %rbp
	cmpq	%rdx, %rbp
	setb	%bl
	cmpq	%rax, %rsi
	setb	%sil
	testb	%r8b, %dil
	jne	.LBB4_18
# %bb.17:
	orb	%sil, %bl
	je	.LBB4_18
# %bb.93:
	movl	$4294967292, %esi               # imm = 0xFFFFFFFC
	andq	%r12, %rsi
	je	.LBB4_94
# %bb.95:
	xorl	%edi, %edi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	%r13, %rbp
	.p2align	4, 0x90
.LBB4_96:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%rdi,8), %ymm0
	vmulpd	(%rax,%rdi,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%rdx,%rdi,8)
	addq	$4, %rdi
	cmpq	%rsi, %rdi
	jb	.LBB4_96
# %bb.97:
	cmpq	%r12, %rsi
	jne	.LBB4_98
	jmp	.LBB4_22
.LBB4_21:
	movq	%r13, %rbp
	movq	(%r13), %rax
	movq	$0, 32(%rsp)                    # 8-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB4_22
.LBB4_18:
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_19:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmulsd	(%rax,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r12
	jne	.LBB4_19
# %bb.20:
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	%r13, %rbp
	jmp	.LBB4_22
.LBB4_94:
	xorl	%esi, %esi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	%r13, %rbp
	.p2align	4, 0x90
.LBB4_98:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmulsd	(%rax,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r12
	jne	.LBB4_98
.LBB4_22:
	movabsq	$9223372036854775800, %rcx      # imm = 0x7FFFFFFFFFFFFFF8
	movq	8(%rbp), %rdi
	subq	%rax, %rdi
	je	.LBB4_23
# %bb.30:
	cmpq	%rcx, %rdi
	ja	.LBB4_44
# %bb.31:
.Ltmp12:
	vzeroupper
	callq	_Znwm
.Ltmp13:
# %bb.32:
	movq	%rax, %r13
	movq	(%rbp), %rsi
	movq	8(%rbp), %rdx
	subq	%rsi, %rdx
	je	.LBB4_34
# %bb.33:
	movq	%r13, %rdi
	callq	memmove@PLT
.LBB4_34:
	movabsq	$9223372036854775800, %rbp      # imm = 0x7FFFFFFFFFFFFFF8
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	jne	.LBB4_25
	jmp	.LBB4_39
.LBB4_23:
	xorl	%r13d, %r13d
	movq	%rcx, %rbp
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	je	.LBB4_39
.LBB4_25:
	movq	48(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %rbx
.Ltmp14:
	movq	%rbx, %rdi
	vzeroupper
	callq	_Znwm
.Ltmp15:
# %bb.26:
	movq	%rax, %rbp
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_28
# %bb.27:
	movq	%rbp, %rdi
	addq	$8, %rdi
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
.LBB4_28:
	cmpl	$12, 12(%rsp)                   # 4-byte Folded Reload
	jbe	.LBB4_99
# %bb.29:
	leaq	(,%r12,8), %rdx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_intel_fast_memcpy@PLT
	movl	%r12d, %eax
	andl	$-4, %eax
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB4_105
.LBB4_99:
	movl	%r12d, %eax
	andl	$-4, %eax
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	movq	16(%rsp), %rbx                  # 8-byte Reload
	je	.LBB4_100
# %bb.101:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_102:                              # =>This Inner Loop Header: Depth=1
	vmovdqu	(%r13,%rcx,8), %ymm1
	vmovdqu	%ymm1, (%r15,%rcx,8)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB4_102
# %bb.103:
	movq	%rax, %rcx
	cmpq	%r12, %rax
	jne	.LBB4_104
	jmp	.LBB4_105
.LBB4_100:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_104:                              # =>This Inner Loop Header: Depth=1
	vmovq	(%r13,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vmovq	%xmm1, (%r15,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %r12
	jne	.LBB4_104
.LBB4_105:
	vmovq	%xmm0, %rcx
	testq	%rcx, %rcx
	je	.LBB4_106
# %bb.109:
	xorl	%ecx, %ecx
	vbroadcastsd	.LCPI4_0(%rip), %ymm1   # ymm1 = [1.34217729E+8,1.34217729E+8,1.34217729E+8,1.34217729E+8]
	.p2align	4, 0x90
.LBB4_110:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r13,%rcx,8), %ymm2
	vmulpd	%ymm1, %ymm2, %ymm3
	vmovupd	%ymm3, (%rbp,%rcx,8)
	vsubpd	(%r15,%rcx,8), %ymm2, %ymm2
	vmovupd	%ymm2, (%rbx,%rcx,8)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB4_110
# %bb.111:
	vmovq	%r12, %xmm1
	vpbroadcastq	%xmm1, %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm0
	vmovd	%xmm0, %ecx
	testb	$1, %cl
	je	.LBB4_107
	jmp	.LBB4_112
.LBB4_106:
	xorl	%eax, %eax
.LBB4_107:
	vmovsd	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB4_108:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%r13,%rax,8), %xmm1            # xmm1 = mem[0],zero
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, (%rbp,%rax,8)
	vsubsd	(%r15,%rax,8), %xmm1, %xmm1
	vmovsd	%xmm1, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r12
	jne	.LBB4_108
.LBB4_112:
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZdlPv
	movabsq	$9223372036854775800, %rbp      # imm = 0x7FFFFFFFFFFFFFF8
.LBB4_39:
	testq	%r13, %r13
	je	.LBB4_41
# %bb.40:
	movq	%r13, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB4_41:
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rdi
	subq	(%rax), %rdi
	je	.LBB4_42
# %bb.43:
	cmpq	%rbp, %rdi
	ja	.LBB4_44
# %bb.46:
.Ltmp17:
	vzeroupper
	callq	_Znwm
.Ltmp18:
# %bb.47:
	movq	%rax, %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	subq	%rsi, %rdx
	je	.LBB4_49
# %bb.48:
	movq	%rbp, %rdi
	callq	memmove@PLT
.LBB4_49:
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	jne	.LBB4_50
.LBB4_55:
	testq	%rbp, %rbp
	je	.LBB4_57
.LBB4_56:
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB4_57:
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	je	.LBB4_65
# %bb.58:
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	leaq	(%r15,%r12,8), %rdx
	addq	$-8, %rdx
	cmpq	%rcx, %rdx
	setae	%r13b
	leaq	(%rcx,%r12,8), %rbp
	addq	$-8, %rbp
	cmpq	%r15, %rbp
	setae	%r11b
	leaq	(%rbx,%r12,8), %rdx
	addq	$-8, %rdx
	cmpq	%rcx, %rdx
	setb	%dl
	cmpq	%rbx, %rbp
	setb	%r8b
	leaq	(%r14,%r12,8), %rsi
	addq	$-8, %rsi
	cmpq	%rcx, %rsi
	setb	%bl
	cmpq	%r14, %rbp
	setb	%r9b
	leaq	(%rdi,%r12,8), %rsi
	addq	$-8, %rsi
	cmpq	%rcx, %rsi
	setb	%sil
	cmpq	%rdi, %rbp
	setb	%r10b
	leaq	(%rax,%r12,8), %rdi
	addq	$-8, %rdi
	cmpq	%rcx, %rdi
	setb	%dil
	cmpq	%rax, %rbp
	setb	%bpl
	testb	%r11b, %r13b
	jne	.LBB4_63
# %bb.59:
	orb	%r8b, %dl
	je	.LBB4_63
# %bb.60:
	orb	%r9b, %bl
	je	.LBB4_63
# %bb.61:
	orb	%r10b, %sil
	je	.LBB4_63
# %bb.62:
	orb	%bpl, %dil
	je	.LBB4_63
# %bb.127:
	movl	$4294967292, %edx               # imm = 0xFFFFFFFC
	andq	%r12, %rdx
	je	.LBB4_128
# %bb.129:
	xorl	%esi, %esi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_130:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%rbx,%rsi,8), %ymm0
	vmovupd	(%rdi,%rsi,8), %ymm1
	vaddpd	(%r15,%rsi,8), %ymm0, %ymm0
	vaddpd	(%r14,%rsi,8), %ymm1, %ymm1
	vfmsub213pd	(%rax,%rsi,8), %ymm0, %ymm1 # ymm1 = (ymm0 * ymm1) - mem
	vmovupd	%ymm1, (%rcx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rdx, %rsi
	jb	.LBB4_130
# %bb.131:
	cmpq	%r12, %rdx
	jne	.LBB4_132
	jmp	.LBB4_65
.LBB4_42:
	xorl	%ebp, %ebp
	cmpl	$0, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_55
.LBB4_50:
	movq	48(%rsp), %rdi                  # 8-byte Reload
	shlq	$3, %rdi
.Ltmp22:
	movq	%rdi, %r13
	vzeroupper
	callq	_Znwm
.Ltmp23:
# %bb.51:
	movq	%rax, %rbx
	movq	$0, (%rax)
	cmpl	$1, 12(%rsp)                    # 4-byte Folded Reload
	je	.LBB4_53
# %bb.52:
	movq	%rbx, %rdi
	addq	$8, %rdi
	movq	%r13, %rdx
	addq	$-8, %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB4_53:
	cmpl	$12, 12(%rsp)                   # 4-byte Folded Reload
	jbe	.LBB4_113
# %bb.54:
	leaq	(,%r12,8), %rdx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	_intel_fast_memcpy@PLT
	movl	%r12d, %eax
	andl	$-4, %eax
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	jmp	.LBB4_119
.LBB4_63:
	xorl	%edx, %edx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_64:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	(%rsi,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r14,%rdx,8), %xmm1, %xmm1
	vfmsub213sd	(%rax,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) - mem
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r12
	jne	.LBB4_64
	jmp	.LBB4_65
.LBB4_113:
	movl	%r12d, %eax
	andl	$-4, %eax
	vmovq	%rax, %xmm0
	vpbroadcastq	%xmm0, %ymm0
	je	.LBB4_114
# %bb.115:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_116:                              # =>This Inner Loop Header: Depth=1
	vmovdqu	(%rbp,%rcx,8), %ymm1
	vmovdqu	%ymm1, (%r14,%rcx,8)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB4_116
# %bb.117:
	movq	%rax, %rcx
	cmpq	%r12, %rax
	jne	.LBB4_118
	jmp	.LBB4_119
.LBB4_128:
	xorl	%edx, %edx
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_132:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	(%rdi,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	vaddsd	(%r15,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r14,%rdx,8), %xmm1, %xmm1
	vfmsub213sd	(%rax,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm0 * xmm1) - mem
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r12
	jne	.LBB4_132
.LBB4_65:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB4_67
# %bb.66:
	vzeroupper
	callq	_ZdlPv
.LBB4_67:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB4_69
# %bb.68:
	vzeroupper
	callq	_ZdlPv
.LBB4_69:
	testq	%r14, %r14
	je	.LBB4_71
# %bb.70:
	movq	%r14, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB4_71:
	testq	%rbx, %rbx
	je	.LBB4_73
# %bb.72:
	movq	%rbx, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB4_73:
	testq	%r15, %r15
	je	.LBB4_74
# %bb.134:
	movq	%r15, %rdi
	addq	$72, %rsp
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
	jmp	_ZdlPv                          # TAILCALL
.LBB4_74:
	.cfi_def_cfa_offset 128
	addq	$72, %rsp
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
.LBB4_114:
	.cfi_def_cfa_offset 128
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_118:                              # =>This Inner Loop Header: Depth=1
	vmovq	(%rbp,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vmovq	%xmm1, (%r14,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %r12
	jne	.LBB4_118
.LBB4_119:
	vmovq	%xmm0, %rcx
	testq	%rcx, %rcx
	je	.LBB4_120
# %bb.123:
	xorl	%ecx, %ecx
	vbroadcastsd	.LCPI4_0(%rip), %ymm1   # ymm1 = [1.34217729E+8,1.34217729E+8,1.34217729E+8,1.34217729E+8]
	movq	24(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB4_124:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%rbp,%rcx,8), %ymm2
	vmulpd	%ymm1, %ymm2, %ymm3
	vmovupd	%ymm3, (%rbx,%rcx,8)
	vsubpd	(%r14,%rcx,8), %ymm2, %ymm2
	vmovupd	%ymm2, (%rdx,%rcx,8)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	.LBB4_124
# %bb.125:
	vmovq	%r12, %xmm1
	vpbroadcastq	%xmm1, %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm0
	vmovd	%xmm0, %ecx
	testb	$1, %cl
	je	.LBB4_121
	jmp	.LBB4_126
.LBB4_120:
	xorl	%eax, %eax
	movq	24(%rsp), %rdx                  # 8-byte Reload
.LBB4_121:
	vmovsd	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB4_122:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%rax,8), %xmm1            # xmm1 = mem[0],zero
	vmulsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, (%rbx,%rax,8)
	vsubsd	(%r14,%rax,8), %xmm1, %xmm1
	vmovsd	%xmm1, (%rdx,%rax,8)
	incq	%rax
	cmpq	%rax, %r12
	jne	.LBB4_122
.LBB4_126:
	movq	%rbx, %rdi
	vzeroupper
	callq	_ZdlPv
	testq	%rbp, %rbp
	jne	.LBB4_56
	jmp	.LBB4_57
.LBB4_44:
.Ltmp19:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp20:
# %bb.45:
.LBB4_133:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB4_78:
.Ltmp24:
	movq	%rax, %r12
	testq	%rbp, %rbp
	je	.LBB4_81
# %bb.79:
	movq	%rbp, %rdi
	jmp	.LBB4_80
.LBB4_76:
.Ltmp16:
	movq	%rax, %r12
	testq	%r13, %r13
	je	.LBB4_81
# %bb.77:
	movq	%r13, %rdi
.LBB4_80:
	callq	_ZdlPv
.LBB4_81:
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB4_82
.LBB4_38:
.Ltmp11:
	movq	%rax, %r12
	movq	16(%rsp), %rbx                  # 8-byte Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB4_85
.LBB4_37:
.Ltmp8:
	movq	%rax, %r12
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB4_87
.LBB4_36:
.Ltmp5:
	movq	%rax, %r12
	movq	16(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB4_89
.LBB4_35:
.Ltmp2:
	movq	%rax, %r12
	jmp	.LBB4_91
.LBB4_75:
.Ltmp21:
	movq	%rax, %r12
.LBB4_82:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB4_83
# %bb.84:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB4_85
.LBB4_86:
	testq	%r14, %r14
	jne	.LBB4_87
.LBB4_88:
	testq	%rbx, %rbx
	jne	.LBB4_89
.LBB4_90:
	testq	%r15, %r15
	jne	.LBB4_91
.LBB4_92:
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.LBB4_83:
	callq	_ZdlPv
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB4_86
.LBB4_85:
	callq	_ZdlPv
	testq	%r14, %r14
	je	.LBB4_88
.LBB4_87:
	movq	%r14, %rdi
	callq	_ZdlPv
	testq	%rbx, %rbx
	je	.LBB4_90
.LBB4_89:
	movq	%rbx, %rdi
	callq	_ZdlPv
	testq	%r15, %r15
	je	.LBB4_92
.LBB4_91:
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_, .Lfunc_end4-_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.cfi_endproc
	.section	.gcc_except_table._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"aG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.p2align	2, 0x0
GCC_except_table4:
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
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp17-.Ltmp15                #   Call between .Ltmp15 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp22-.Ltmp18                #   Call between .Ltmp18 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp19-.Ltmp23                #   Call between .Ltmp23 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Lfunc_end4-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z3FMAIdET_S0_S0_S0_,"axG",@progbits,_Z3FMAIdET_S0_S0_S0_,comdat
	.weak	_Z3FMAIdET_S0_S0_S0_            # -- Begin function _Z3FMAIdET_S0_S0_S0_
	.p2align	4, 0x90
	.type	_Z3FMAIdET_S0_S0_S0_,@function
_Z3FMAIdET_S0_S0_S0_:                   # 
	.cfi_startproc
# %bb.0:
	vfmadd213sd	%xmm2, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm0) + xmm2
	retq
.Lfunc_end5:
	.size	_Z3FMAIdET_S0_S0_S0_, .Lfunc_end5-_Z3FMAIdET_S0_S0_S0_
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10TwoMultFMAIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10TwoMultFMAIdEvT_S0_RS0_S1_,comdat
	.weak	_Z10TwoMultFMAIdEvT_S0_RS0_S1_  # -- Begin function _Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.p2align	4, 0x90
	.type	_Z10TwoMultFMAIdEvT_S0_RS0_S1_,@function
_Z10TwoMultFMAIdEvT_S0_RS0_S1_:         # 
	.cfi_startproc
# %bb.0:
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi)
	movq	$0, (%rsi)
	retq
.Lfunc_end6:
	.size	_Z10TwoMultFMAIdEvT_S0_RS0_S1_, .Lfunc_end6-_Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_eft.cc
	.type	_GLOBAL__sub_I_eft.cc,@function
_GLOBAL__sub_I_eft.cc:                  # 
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
.Lfunc_end7:
	.size	_GLOBAL__sub_I_eft.cc, .Lfunc_end7-_GLOBAL__sub_I_eft.cc
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

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_eft.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
