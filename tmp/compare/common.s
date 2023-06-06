	.text
	.file	"common.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
.LCPI0_0:
	.quad	0xc0c3878000000000              #  -9999
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI0_1:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
.LCPI0_2:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.section	.text._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"axG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.weak	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.p2align	4, 0x90
	.type	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,@function
_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii: # 
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testl	%edx, %edx
	jle	.LBB0_1
# %bb.2:
	cmpl	$1, %ecx
	jne	.LBB0_12
# %bb.3:
	cmpl	$1, %r8d
	jne	.LBB0_12
# %bb.4:
	movl	%edx, %eax
	movl	$3435973837, %ecx               # imm = 0xCCCCCCCD
	imulq	%rax, %rcx
	shrq	$34, %rcx
	leal	(%rcx,%rcx,4), %ecx
	movl	%edx, %r8d
	subl	%ecx, %r8d
	je	.LBB0_5
# %bb.10:
	movq	(%rdi), %r9
	movq	(%rsi), %r11
	movl	%r8d, %r10d
	movq	%r10, %rcx
	andq	$4, %rcx
	jne	.LBB0_20
# %bb.11:
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_23
.LBB0_1:
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_12:
	.cfi_def_cfa_offset 16
	movl	$1, %r9d
	movl	$1, %ebx
	subl	%edx, %ebx
	movl	%ebx, %eax
	imull	%r8d, %eax
	incl	%eax
	testl	%r8d, %r8d
	cmovnsl	%r9d, %eax
	imull	%ecx, %ebx
	incl	%ebx
	testl	%ecx, %ecx
	cmovnsl	%r9d, %ebx
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movslq	%eax, %r9
	movslq	%r8d, %r11
	movslq	%ebx, %r8
	movslq	%ecx, %rcx
	movl	%edx, %r10d
	andl	$-8, %r10d
	je	.LBB0_13
# %bb.16:
	leal	-1(%r10), %eax
	vpbroadcastq	%r11, %ymm0
	vpbroadcastq	%r9, %ymm1
	vpbroadcastq	%rcx, %ymm2
	vpbroadcastq	%r8, %ymm4
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%ebx, %ebx
	vmovdqu	.LCPI0_1(%rip), %ymm5           # ymm5 = [4,5,6,7]
                                        # AlignMOV convert to UnAlignMOV 
	vmovdqu	.LCPI0_2(%rip), %ymm6           # ymm6 = [0,1,2,3]
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm7, %xmm7, %xmm7
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	vpbroadcastq	%rbx, %ymm8
	vpaddq	%ymm6, %ymm8, %ymm9
	vpmullq	%ymm9, %ymm0, %ymm10
	vpaddq	%ymm5, %ymm8, %ymm8
	vpmullq	%ymm8, %ymm0, %ymm11
	kxnorw	%k0, %k0, %k1
	vpaddq	%ymm1, %ymm11, %ymm11
	vxorpd	%xmm12, %xmm12, %xmm12
	kxnorw	%k0, %k0, %k2
	vpmullq	%ymm9, %ymm2, %ymm9
	vpaddq	%ymm1, %ymm10, %ymm10
	vxorpd	%xmm13, %xmm13, %xmm13
	vpmullq	%ymm8, %ymm2, %ymm8
	vpaddq	%ymm4, %ymm8, %ymm8
	vpaddq	%ymm4, %ymm9, %ymm9
	kxnorw	%k0, %k0, %k3
	vgatherqpd	(%rsi,%ymm10,8), %ymm12 {%k1}
	vxorpd	%xmm10, %xmm10, %xmm10
	vgatherqpd	(%rsi,%ymm11,8), %ymm13 {%k2}
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(%rdi,%ymm9,8), %ymm10 {%k3}
	vxorpd	%xmm9, %xmm9, %xmm9
	vgatherqpd	(%rdi,%ymm8,8), %ymm9 {%k1}
	vfmadd231pd	%ymm10, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm10) + ymm3
	vfmadd231pd	%ymm9, %ymm13, %ymm7    # ymm7 = (ymm13 * ymm9) + ymm7
	addq	$8, %rbx
	cmpl	%eax, %ebx
	jle	.LBB0_17
# %bb.18:
	vaddpd	%ymm7, %ymm3, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %r10d
	jne	.LBB0_14
	jmp	.LBB0_19
.LBB0_5:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_6
.LBB0_13:
	xorl	%r10d, %r10d
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB0_14:
	subl	%r10d, %edx
	movslq	%r10d, %rbx
	movq	%rbx, %rax
	imulq	%rcx, %rax
	addq	%r8, %rax
	leaq	(%rdi,%rax,8), %rax
	shlq	$3, %rcx
	imulq	%r11, %rbx
	addq	%r9, %rbx
	leaq	(%rsi,%rbx,8), %rsi
	shlq	$3, %r11
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	vfmadd231sd	(%rax), %xmm1, %xmm0    # xmm0 = (xmm1 * mem) + xmm0
	addq	%rcx, %rax
	addq	%r11, %rsi
	decl	%edx
	jne	.LBB0_15
	jmp	.LBB0_19
.LBB0_20:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r11,%rbx,8), %ymm1
	vfmadd231pd	(%r9,%rbx,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbx
	cmpq	%rcx, %rbx
	jb	.LBB0_21
# %bb.22:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r10, %rcx
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%r9,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rcx
	cmpq	%rcx, %r10
	jne	.LBB0_23
.LBB0_6:
	cmpl	$5, %edx
	jl	.LBB0_19
# %bb.7:
	cmpl	%edx, %r8d
	jge	.LBB0_19
# %bb.8:
	movl	$3435973837, %ebx               # imm = 0xCCCCCCCD
	imulq	%rax, %rbx
	shrq	$34, %rbx
	leaq	(%rbx,%rbx,4), %r8
	movl	$4, %ecx
	subq	%r8, %rcx
	shlq	$3, %rcx
	movq	(%rdi), %rdi
	addq	%rcx, %rdi
	addq	(%rsi), %rcx
	leal	(%rbx,%rbx,4), %esi
	negl	%esi
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	vmovupd	-32(%rcx,%rax,8), %ymm1
	vmulpd	-32(%rdi,%rax,8), %ymm1, %ymm1
	vmovsd	(%rcx,%rax,8), %xmm2            # xmm2 = mem[0],zero
	vextractf128	$1, %ymm1, %xmm3
	vaddpd	%xmm3, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm3        # xmm3 = xmm1[1,0]
	vaddsd	%xmm3, %xmm1, %xmm1
	vfmadd231sd	(%rdi,%rax,8), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	addq	$5, %rax
	leal	(%rsi,%rax), %ebx
	cmpl	%edx, %ebx
	jl	.LBB0_9
.LBB0_19:
	popq	%rbx
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end0:
	.size	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, .Lfunc_end0-_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.LCPI1_0:
	.quad	0xc0c3878000000000              #  -9999
	.section	.text._Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,"axG",@progbits,_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,comdat
	.weak	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.p2align	4, 0x90
	.type	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii,@function
_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii: # 
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
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	%ecx, 20(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%r9d, %edi
	callq	omp_set_num_threads
	movq	$0, (%rsp)
	testl	%r13d, %r13d
	jle	.LBB1_1
# %bb.2:
	cmpl	$1, %ebp
	jne	.LBB1_8
# %bb.3:
	cmpl	$1, %ebx
	jne	.LBB1_8
# %bb.4:
	movl	%r13d, %r15d
	movl	$3435973837, %eax               # imm = 0xCCCCCCCD
	imulq	%r15, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %eax
	movl	%r13d, %ebx
	subl	%eax, %ebx
	je	.LBB1_6
# %bb.5:
	movl	%ebx, %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	8(%rsp), %r8
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined., %edx
	movl	$4, %esi
	movq	%r12, %r9
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_6:
	cmpl	$4, %r13d
	jbe	.LBB1_13
# %bb.7:
	incl	%ebx
	movq	%rsp, %r9
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$5, %esi
	movq	%rbx, %rcx
	movq	%r15, %r8
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB1_13
.LBB1_1:
	vmovsd	.LCPI1_0(%rip), %xmm0           # xmm0 = mem[0],zero
	jmp	.LBB1_14
.LBB1_8:
	movl	$1, 12(%rsp)
	movl	$1, 8(%rsp)
	testl	%ebp, %ebp
	js	.LBB1_9
# %bb.10:
	testl	%ebx, %ebx
	js	.LBB1_11
.LBB1_12:
	movl	%r13d, %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	24(%rsp), %rbp
	leaq	28(%rsp), %rbx
	leaq	16(%rsp), %r10
	leaq	20(%rsp), %r11
	leaq	8(%rsp), %r8
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..3, %edx
	movl	$8, %esi
	movq	%r12, %r9
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r10
	.cfi_adjust_cfa_offset 8
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
.LBB1_13:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
.LBB1_14:
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
.LBB1_9:
	.cfi_def_cfa_offset 80
	movl	$1, %eax
	subl	%r13d, %eax
	imull	%ebp, %eax
	incl	%eax
	movl	%eax, 12(%rsp)
	testl	%ebx, %ebx
	jns	.LBB1_12
.LBB1_11:
	movl	$1, %eax
	subl	%r13d, %eax
	imull	%ebx, %eax
	incl	%eax
	movl	%eax, 8(%rsp)
	jmp	.LBB1_12
.Lfunc_end1:
	.size	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii, .Lfunc_end1-_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined.
	.type	.omp_outlined.,@function
.omp_outlined.:                         # 
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	jle	.LBB2_13
# %bb.1:
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %r13
	decl	%ebp
	movl	$0, 20(%rsp)
	movl	%ebp, 16(%rsp)
	movl	$1, 28(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	36(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	28(%rsp), %r8
	leaq	24(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	movslq	20(%rsp), %rsi
	cmpl	%ebp, %esi
	jg	.LBB2_8
# %bb.2:
	movq	(%r12), %rax
	movq	(%r15), %rcx
	incl	%ebp
	movslq	%ebp, %rdx
	leaq	(%rcx,%rdx,8), %rdi
	addq	$-8, %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r8b
	leaq	(%rcx,%rsi,8), %r9
	cmpq	%r9, %rbp
	setae	%r11b
	leaq	(%rax,%rdx,8), %rdi
	addq	$-8, %rdi
	cmpq	%rbp, %rdi
	setb	%bl
	leaq	(%rax,%rsi,8), %r10
	cmpq	%r10, %rbp
	setb	%dil
	testb	%r11b, %r8b
	jne	.LBB2_18
# %bb.3:
	orb	%dil, %bl
	je	.LBB2_18
# %bb.4:
	movq	%rdx, %r8
	subq	%rsi, %r8
	movq	%r8, %rdi
	andq	$-4, %rdi
	je	.LBB2_5
# %bb.14:
	leaq	-1(%rdi), %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r9,%rbx,8), %ymm1
	vfmadd231pd	(%r10,%rbx,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jbe	.LBB2_15
# %bb.16:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r8
	jne	.LBB2_6
	jmp	.LBB2_17
.LBB2_18:
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB2_19:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB2_19
	jmp	.LBB2_8
.LBB2_5:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB2_6:
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB2_7
.LBB2_17:
	vmovsd	%xmm0, 8(%rsp)
.LBB2_8:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	vzeroupper
	callq	__kmpc_for_static_fini@PLT
	leaq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	40(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB2_11
# %bb.9:
	cmpl	$1, %eax
	jne	.LBB2_13
# %bb.10:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%r13), %xmm0, %xmm0
	vmovsd	%xmm0, (%r13)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB2_13
.LBB2_11:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%r13), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%r13)
	vmovq	%rax, %xmm1
	jne	.LBB2_12
.LBB2_13:
	addq	$40, %rsp
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
.Lfunc_end2:
	.size	.omp_outlined., .Lfunc_end2-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func
	.type	.omp.reduction.reduction_func,@function
.omp.reduction.reduction_func:          # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end3:
	.size	.omp.reduction.reduction_func, .Lfunc_end3-.omp.reduction.reduction_func
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..1
	.type	.omp_outlined..1,@function
.omp_outlined..1:                       # 
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	subl	%r12d, %ecx
	jl	.LBB4_9
# %bb.1:
	movq	%r9, %r15
	movq	%r8, %rbx
	addl	$5, %ecx
	movl	$3435973837, %ebp               # imm = 0xCCCCCCCD
	imulq	%rcx, %rbp
	shrq	$34, %rbp
	decl	%ebp
	movl	$0, 4(%rsp)
	movl	%ebp, (%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	12(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbl	%eax, %ebp
	movl	4(%rsp), %edx
	leal	1(%rbp), %eax
	cmpl	%eax, %edx
	jae	.LBB4_4
# %bb.2:
	movq	80(%rsp), %rcx
	movq	(%r15), %rax
	movq	(%rcx), %rcx
	notl	%ebp
	addl	%edx, %ebp
	leal	(%rdx,%rdx,4), %edx
	addl	%r12d, %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rax,%rsi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	movslq	%edx, %rdx
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rax,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	leal	1(%rdx), %esi
	movslq	%esi, %rsi
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	(%rax,%rsi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	leal	2(%rdx), %esi
	movslq	%esi, %rsi
	vmovsd	(%rcx,%rsi,8), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	(%rax,%rsi,8), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	leal	3(%rdx), %esi
	movslq	%esi, %rsi
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	(%rax,%rsi,8), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	vmovsd	%xmm0, 8(%rsp)
	addl	$5, %edx
	incl	%ebp
	jne	.LBB4_3
.LBB4_4:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	callq	__kmpc_for_static_fini@PLT
	leaq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	32(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.2, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB4_7
# %bb.5:
	cmpl	$1, %eax
	jne	.LBB4_9
# %bb.6:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB4_9
.LBB4_7:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB4_8
.LBB4_9:
	addq	$32, %rsp
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
.Lfunc_end4:
	.size	.omp_outlined..1, .Lfunc_end4-.omp_outlined..1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.2
	.type	.omp.reduction.reduction_func.2,@function
.omp.reduction.reduction_func.2:        # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end5:
	.size	.omp.reduction.reduction_func.2, .Lfunc_end5-.omp.reduction.reduction_func.2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..3
	.type	.omp_outlined..3,@function
.omp_outlined..3:                       # 
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	jle	.LBB6_12
# %bb.1:
	movq	%r9, %r15
	movq	%r8, %r12
	movq	%rcx, %rbx
	decl	%ebp
	movl	$0, 28(%rsp)
	movl	%ebp, 24(%rsp)
	movl	$1, 44(%rsp)
	movl	$0, 40(%rsp)
	movq	$0, 8(%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	52(%rsp), %rax
	leaq	48(%rsp), %rcx
	leaq	36(%rsp), %r8
	leaq	32(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	24(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebp
	subl	28(%rsp), %ebp
	jl	.LBB6_7
# %bb.2:
	movl	%r14d, 20(%rsp)                 # 4-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rcx
	movq	144(%rsp), %rsi
	movq	136(%rsp), %rdx
	movq	128(%rsp), %rax
	movq	(%r12), %r10
	movq	(%rax), %r11
	movl	(%rdx), %eax
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movl	(%r15), %ebx
	movl	(%rsi), %esi
	movl	(%rcx), %edi
	leal	1(%rbp), %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	$4, %ecx
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	jb	.LBB6_5
# %bb.3:
	shrl	$2, %ecx
	leal	(%rsi,%rsi,2), %edx
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	leal	(%rsi,%rsi), %r12d
	leal	(%rdi,%rdi), %r8d
	leal	(%rdi,%rdi,2), %r14d
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movslq	%eax, %r9
	vmovsd	(%r11,%r9,8), %xmm1             # xmm1 = mem[0],zero
	movslq	%ebx, %r15
	vfmadd132sd	(%r10,%r15,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	leal	(%r9,%rdi), %eax
	cltq
	vmovsd	(%r11,%rax,8), %xmm0            # xmm0 = mem[0],zero
	leal	(%r15,%rsi), %ebx
	movslq	%ebx, %rbx
	vfmadd132sd	(%r10,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	leal	(%r8,%r9), %r13d
	movslq	%r13d, %rdx
	vmovsd	(%r11,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	leal	(%r12,%r15), %edx
	movslq	%edx, %rdx
	vfmadd132sd	(%r10,%rdx,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addl	%r14d, %r9d
	movslq	%r9d, %rdx
	vmovsd	(%r11,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	addl	36(%rsp), %r15d                 # 4-byte Folded Reload
	movslq	%r15d, %rdx
	vfmadd132sd	(%r10,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addl	%esi, %ebx
	addl	%edi, %eax
	addl	%esi, %ebx
	addl	%edi, %eax
	vmovsd	%xmm0, 8(%rsp)
	addl	%esi, %ebx
	addl	%edi, %eax
	decl	%ecx
	jne	.LBB6_4
.LBB6_5:
	movl	32(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %ecx
	andl	$-4, %ecx
	cmpl	%edx, %ecx
	jae	.LBB6_6
# %bb.13:
	subl	%ecx, %ebp
	incl	%ebp
	movl	20(%rsp), %r14d                 # 4-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	cltq
	vmovsd	(%r11,%rax,8), %xmm1            # xmm1 = mem[0],zero
	movslq	%ebx, %rbx
	vfmadd231sd	(%r10,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	addl	%esi, %ebx
	addl	%edi, %eax
	decl	%ebp
	jne	.LBB6_14
	jmp	.LBB6_15
.LBB6_6:
	movl	20(%rsp), %r14d                 # 4-byte Reload
	movq	48(%rsp), %rcx                  # 8-byte Reload
.LBB6_15:
	movq	136(%rsp), %rdx
	movl	%eax, (%rdx)
	movl	%ebx, (%rcx)
	movq	56(%rsp), %rbx                  # 8-byte Reload
.LBB6_7:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	callq	__kmpc_for_static_fini@PLT
	leaq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	72(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.4, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB6_10
# %bb.8:
	cmpl	$1, %eax
	jne	.LBB6_12
# %bb.9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB6_12
.LBB6_10:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB6_11
.LBB6_12:
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
	retq
.Lfunc_end6:
	.size	.omp_outlined..3, .Lfunc_end6-.omp_outlined..3
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.4
	.type	.omp.reduction.reduction_func.4,@function
.omp.reduction.reduction_func.4:        # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end7:
	.size	.omp.reduction.reduction_func.4, .Lfunc_end7-.omp.reduction.reduction_func.4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.LCPI8_0:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
	.quad	6                               # 0x6
	.quad	7                               # 0x7
.LCPI8_1:
	.quad	0                               # 0x0
	.quad	1                               # 0x1
	.quad	2                               # 0x2
	.quad	3                               # 0x3
	.section	.text._Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,"axG",@progbits,_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,comdat
	.weak	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.p2align	4, 0x90
	.type	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,@function
_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd: # 
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	$0, (%r9)
	testl	%edx, %edx
	jle	.LBB8_10
# %bb.1:
	cmpl	$1, %ecx
	jne	.LBB8_13
# %bb.2:
	cmpl	$1, %r8d
	jne	.LBB8_13
# %bb.3:
	movl	%edx, %eax
	movl	$3435973837, %ecx               # imm = 0xCCCCCCCD
	imulq	%rax, %rcx
	shrq	$34, %rcx
	leal	(%rcx,%rcx,4), %ecx
	movl	%edx, %r8d
	subl	%ecx, %r8d
	je	.LBB8_4
# %bb.11:
	movq	(%rdi), %r10
	movq	(%rsi), %r14
	movl	%r8d, %r11d
	movq	%r11, %rbx
	andq	$4, %rbx
	jne	.LBB8_20
# %bb.12:
	xorl	%ebx, %ebx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_23
.LBB8_13:
	movl	$1, %r10d
	movl	$1, %ebx
	subl	%edx, %ebx
	movl	%ebx, %eax
	imull	%r8d, %eax
	incl	%eax
	testl	%r8d, %r8d
	cmovnsl	%r10d, %eax
	imull	%ecx, %ebx
	incl	%ebx
	testl	%ecx, %ecx
	cmovnsl	%r10d, %ebx
	movq	(%rdi), %rdi
	movq	(%rsi), %rsi
	movslq	%eax, %r10
	movslq	%r8d, %r14
	movslq	%ebx, %r8
	movslq	%ecx, %rcx
	movl	%edx, %r11d
	andl	$-8, %r11d
	je	.LBB8_14
# %bb.17:
	leal	-1(%r11), %ebx
	vpbroadcastq	%r14, %ymm0
	vpbroadcastq	%r10, %ymm1
	vpbroadcastq	%rcx, %ymm2
	vpbroadcastq	%r8, %ymm4
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%eax, %eax
	vmovdqu	.LCPI8_0(%rip), %ymm5           # ymm5 = [4,5,6,7]
                                        # AlignMOV convert to UnAlignMOV 
	vmovdqu	.LCPI8_1(%rip), %ymm6           # ymm6 = [0,1,2,3]
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm7, %xmm7, %xmm7
	.p2align	4, 0x90
.LBB8_18:                               # =>This Inner Loop Header: Depth=1
	vpbroadcastq	%rax, %ymm8
	vpaddq	%ymm6, %ymm8, %ymm9
	vpmullq	%ymm9, %ymm0, %ymm10
	vpaddq	%ymm5, %ymm8, %ymm8
	vpmullq	%ymm8, %ymm0, %ymm11
	kxnorw	%k0, %k0, %k1
	vpaddq	%ymm1, %ymm11, %ymm11
	vxorpd	%xmm12, %xmm12, %xmm12
	kxnorw	%k0, %k0, %k2
	vpmullq	%ymm9, %ymm2, %ymm9
	vpaddq	%ymm1, %ymm10, %ymm10
	vxorpd	%xmm13, %xmm13, %xmm13
	vpmullq	%ymm8, %ymm2, %ymm8
	vpaddq	%ymm4, %ymm8, %ymm8
	vpaddq	%ymm4, %ymm9, %ymm9
	kxnorw	%k0, %k0, %k3
	vgatherqpd	(%rsi,%ymm10,8), %ymm12 {%k1}
	vxorpd	%xmm10, %xmm10, %xmm10
	vgatherqpd	(%rsi,%ymm11,8), %ymm13 {%k2}
	kxnorw	%k0, %k0, %k1
	vgatherqpd	(%rdi,%ymm9,8), %ymm10 {%k3}
	vxorpd	%xmm9, %xmm9, %xmm9
	vgatherqpd	(%rdi,%ymm8,8), %ymm9 {%k1}
	vfmadd231pd	%ymm10, %ymm12, %ymm3   # ymm3 = (ymm12 * ymm10) + ymm3
	vfmadd231pd	%ymm9, %ymm13, %ymm7    # ymm7 = (ymm13 * ymm9) + ymm7
	addq	$8, %rax
	cmpl	%ebx, %eax
	jle	.LBB8_18
# %bb.19:
	vaddpd	%ymm7, %ymm3, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%edx, %r11d
	jne	.LBB8_15
	jmp	.LBB8_9
.LBB8_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_5
.LBB8_14:
	xorl	%r11d, %r11d
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB8_15:
	subl	%r11d, %edx
	movslq	%r11d, %rbx
	movq	%rbx, %rax
	imulq	%rcx, %rax
	addq	%r8, %rax
	leaq	(%rdi,%rax,8), %rax
	shlq	$3, %rcx
	imulq	%r14, %rbx
	addq	%r10, %rbx
	leaq	(%rsi,%rbx,8), %rsi
	shlq	$3, %r14
	.p2align	4, 0x90
.LBB8_16:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi), %xmm1                   # xmm1 = mem[0],zero
	vfmadd231sd	(%rax), %xmm1, %xmm0    # xmm0 = (xmm1 * mem) + xmm0
	addq	%rcx, %rax
	addq	%r14, %rsi
	decl	%edx
	jne	.LBB8_16
	jmp	.LBB8_9
.LBB8_20:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB8_21:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r14,%rcx,8), %ymm1
	vfmadd231pd	(%r10,%rcx,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB8_21
# %bb.22:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r11, %rbx
	je	.LBB8_5
	.p2align	4, 0x90
.LBB8_23:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%r14,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%r10,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rbx
	cmpq	%rbx, %r11
	jne	.LBB8_23
.LBB8_5:
	cmpl	$5, %edx
	jl	.LBB8_9
# %bb.6:
	cmpl	%edx, %r8d
	jge	.LBB8_9
# %bb.7:
	movl	$3435973837, %ebx               # imm = 0xCCCCCCCD
	imulq	%rax, %rbx
	shrq	$34, %rbx
	leaq	(%rbx,%rbx,4), %r8
	movl	$4, %ecx
	subq	%r8, %rcx
	shlq	$3, %rcx
	movq	(%rdi), %rdi
	addq	%rcx, %rdi
	addq	(%rsi), %rcx
	leal	(%rbx,%rbx,4), %esi
	negl	%esi
	.p2align	4, 0x90
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	vmovupd	-32(%rcx,%rax,8), %ymm1
	vmulpd	-32(%rdi,%rax,8), %ymm1, %ymm1
	vmovsd	(%rcx,%rax,8), %xmm2            # xmm2 = mem[0],zero
	vextractf128	$1, %ymm1, %xmm3
	vaddpd	%xmm3, %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm3        # xmm3 = xmm1[1,0]
	vaddsd	%xmm3, %xmm1, %xmm1
	vfmadd231sd	(%rdi,%rax,8), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	addq	$5, %rax
	leal	(%rsi,%rax), %ebx
	cmpl	%edx, %ebx
	jl	.LBB8_8
.LBB8_9:
	vmovsd	%xmm0, (%r9)
.LBB8_10:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	vzeroupper
	retq
.Lfunc_end8:
	.size	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, .Lfunc_end8-_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_common.cc
	.type	_GLOBAL__sub_I_common.cc,@function
_GLOBAL__sub_I_common.cc:               # 
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
.Lfunc_end9:
	.size	_GLOBAL__sub_I_common.cc, .Lfunc_end9-_GLOBAL__sub_I_common.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L__unnamed_4,@object           # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_4:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_4, 23

	.type	.L__unnamed_2,@object           # 
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_4
	.size	.L__unnamed_2, 24

	.type	.gomp_critical_user_.reduction.var,@object # 
	.comm	.gomp_critical_user_.reduction.var,32,16
	.type	.L__unnamed_3,@object           # 
	.p2align	3, 0x0
.L__unnamed_3:
	.long	0                               # 0x0
	.long	18                              # 0x12
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_4
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_1,@object           # 
	.p2align	3, 0x0
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_4
	.size	.L__unnamed_1, 24

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_common.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
