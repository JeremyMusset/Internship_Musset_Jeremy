	.text
	.file	"common.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
.LCPI0_0:
	.quad	0xc0c3878000000000              #  -9999
	.section	.text._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"axG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.weak	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.p2align	4, 0x90
	.type	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,@function
_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii: # 
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
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
	movq	(%rdi), %r10
	movq	(%rsi), %rcx
	movl	%r8d, %r9d
	movq	%r9, %rbx
	andq	$4, %rbx
	jne	.LBB0_31
# %bb.11:
	xorl	%ebx, %ebx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_34
.LBB0_1:
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	jmp	.LBB0_30
.LBB0_12:
	movl	$1, %eax
	movl	$1, %ebp
	subl	%edx, %ebp
	movl	%ebp, %ebx
	imull	%r8d, %ebx
	incl	%ebx
	testl	%r8d, %r8d
	cmovnsl	%eax, %ebx
	imull	%ecx, %ebp
	incl	%ebp
	testl	%ecx, %ecx
	cmovnsl	%eax, %ebp
	movq	(%rdi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	(%rsi), %r10
	movslq	%ebx, %r11
	movslq	%r8d, %r15
	movslq	%ebp, %r8
	movslq	%ecx, %r14
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	$8, %edx
	jb	.LBB0_15
# %bb.13:
	movl	%edx, %edi
	shrl	$3, %edi
	leaq	(,%r15,8), %rax
	leaq	(,%r14,8), %rbx
	leaq	(%r10,%r11,8), %rcx
	movq	%r15, %r12
	shlq	$6, %r12
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	leaq	(%rsi,%r8,8), %rsi
	movq	%r14, %r13
	shlq	$6, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi), %xmm0, %xmm1    # xmm1 = (xmm1 * mem) + xmm0
	leaq	(%rcx,%r15,8), %rbp
	vmovsd	(%rcx,%r15,8), %xmm0            # xmm0 = mem[0],zero
	leaq	(%rsi,%r14,8), %r9
	vfmadd132sd	(%rsi,%r14,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	(%rax,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rbp
	vfmadd132sd	(%rbx,%r9), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rbx, %r9
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rbx,%r9), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%rax, %rbp
	addq	%rbx, %r9
	vmovsd	(%rax,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rbp
	vfmadd132sd	(%rbx,%r9), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rbx, %r9
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	addq	%rax, %rbp
	vfmadd132sd	(%rbx,%r9), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%rbx, %r9
	vmovsd	(%rax,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rax, %rbp
	vfmadd132sd	(%rbx,%r9), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rbx, %r9
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rbx,%r9), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%r12, %rcx
	addq	%r13, %rsi
	decl	%edi
	jne	.LBB0_14
.LBB0_15:
	movl	%edx, %eax
	andl	$7, %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB0_30
# %bb.16:
	andl	$-8, %edx
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_22:
	movslq	%edx, %rax
	imulq	%rax, %r15
	imulq	%rax, %r14
	movq	%r14, %rdx
	movq	%r15, %rdi
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_29
.LBB0_5:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_6
.LBB0_31:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%rbp,8), %ymm1
	vfmadd231pd	(%r10,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rbx, %rbp
	jb	.LBB0_32
# %bb.33:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r9, %rbx
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%r10,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rbx
	cmpq	%rbx, %r9
	jne	.LBB0_34
.LBB0_6:
	cmpl	$5, %edx
	jl	.LBB0_30
# %bb.7:
	cmpl	%edx, %r8d
	jge	.LBB0_30
# %bb.8:
	movl	$3435973837, %ebp               # imm = 0xCCCCCCCD
	imulq	%rax, %rbp
	shrq	$34, %rbp
	leaq	(,%rbp,4), %rbx
	addq	%rbp, %rbx
	movl	$4, %ecx
	subq	%rbx, %rcx
	shlq	$3, %rcx
	movq	(%rdi), %rdi
	addq	%rcx, %rdi
	addq	(%rsi), %rcx
	leal	(%rbp,%rbp,4), %esi
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
	leal	(%rsi,%rax), %ebp
	cmpl	%edx, %ebp
	jl	.LBB0_9
	jmp	.LBB0_30
.LBB0_21:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_28
.LBB0_20:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_27
.LBB0_19:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_26
.LBB0_18:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_25
.LBB0_17:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	jmp	.LBB0_24
.LBB0_23:
	leaq	(%r15,%r15,2), %rax
	leaq	(%r11,%rax,2), %rax
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	addq	%rdi, %rax
	vmovsd	(%r10,%rax,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,2), %rax
	leaq	(%r8,%rax,2), %rax
	imulq	%r14, %rdx
	addq	%rdx, %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	vfmadd231sd	(%rcx,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_24:
	leaq	(%r15,%r15,4), %rax
	addq	%r11, %rax
	addq	%rdi, %rax
	vmovsd	(%r10,%rax,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,4), %rax
	addq	%r8, %rax
	addq	%rdx, %rax
	vfmadd231sd	(%rcx,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_25:
	leaq	(%r11,%r15,4), %rax
	addq	%rdi, %rax
	vmovsd	(%r10,%rax,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r8,%r14,4), %rax
	addq	%rdx, %rax
	vfmadd231sd	(%rcx,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_26:
	leaq	(%r15,%r15,2), %rax
	addq	%r11, %rax
	addq	%rdi, %rax
	vmovsd	(%r10,%rax,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,2), %rax
	addq	%r8, %rax
	addq	%rdx, %rax
	vfmadd231sd	(%rcx,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_27:
	leaq	(%r11,%r15,2), %rax
	addq	%rdi, %rax
	vmovsd	(%r10,%rax,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r8,%r14,2), %rax
	addq	%rdx, %rax
	vfmadd231sd	(%rcx,%rax,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_28:
	addq	%r11, %r15
	addq	%rdi, %r15
	vmovsd	(%r10,%r15,8), %xmm1            # xmm1 = mem[0],zero
	addq	%r8, %r14
	addq	%rdx, %r14
	vfmadd231sd	(%rcx,%r14,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_29:
	addq	%r11, %rdi
	vmovsd	(%r10,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	addq	%r8, %rdx
	vfmadd231sd	(%rcx,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB0_30:
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
.Lfunc_end0:
	.size	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii, .Lfunc_end0-_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	.cfi_endproc
	.section	.rodata._Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,"aG",@progbits,_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii,comdat
	.p2align	3, 0x0
.LJTI0_0:
	.quad	.LBB0_22
	.quad	.LBB0_21
	.quad	.LBB0_20
	.quad	.LBB0_19
	.quad	.LBB0_18
	.quad	.LBB0_17
	.quad	.LBB0_23
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
	movl	%r8d, %ebx
	movl	%ecx, %ebp
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	%ecx, 28(%rsp)
	movl	%r8d, 24(%rsp)
	movl	%r9d, %edi
	callq	omp_set_num_threads
	movq	$0, 8(%rsp)
	testl	%r12d, %r12d
	jle	.LBB1_1
# %bb.2:
	cmpl	$1, %ebp
	jne	.LBB1_8
# %bb.3:
	cmpl	$1, %ebx
	jne	.LBB1_8
# %bb.4:
	movl	%r12d, %r8d
	movl	$3435973837, %eax               # imm = 0xCCCCCCCD
	imulq	%r8, %rax
	shrq	$34, %rax
	leal	(%rax,%rax,4), %eax
	movl	%r12d, %ebx
	subl	%eax, %ebx
	je	.LBB1_6
# %bb.5:
	movl	%ebx, %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	16(%rsp), %rax
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined., %edx
	movl	$4, %esi
	movq	%r8, %rbp
	movq	%rax, %r8
	movq	%r15, %r9
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	movq	%rbp, %r8
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB1_6:
	cmpl	$4, %r12d
	jbe	.LBB1_13
# %bb.7:
	incl	%ebx
	leaq	8(%rsp), %r9
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$5, %esi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB1_13
.LBB1_1:
	vmovsd	.LCPI1_0(%rip), %xmm0           # xmm0 = mem[0],zero
	jmp	.LBB1_14
.LBB1_8:
	movl	$1, 20(%rsp)
	movl	$1, 16(%rsp)
	testl	%ebp, %ebp
	js	.LBB1_9
# %bb.10:
	testl	%ebx, %ebx
	js	.LBB1_11
.LBB1_12:
	movl	%r12d, %ecx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rbp
	leaq	36(%rsp), %rbx
	leaq	24(%rsp), %r10
	leaq	28(%rsp), %r11
	leaq	16(%rsp), %r8
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..3, %edx
	movl	$8, %esi
	movq	%r15, %r9
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
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
.LBB1_14:
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
.LBB1_9:
	.cfi_def_cfa_offset 80
	movl	$1, %eax
	subl	%r12d, %eax
	imull	%ebp, %eax
	incl	%eax
	movl	%eax, 20(%rsp)
	testl	%ebx, %ebx
	jns	.LBB1_12
.LBB1_11:
	movl	$1, %eax
	subl	%r12d, %eax
	imull	%ebx, %eax
	incl	%eax
	movl	%eax, 16(%rsp)
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
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$56, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	jle	.LBB2_13
# %bb.1:
	movq	%rcx, %rbx
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r9, 40(%rsp)                   # 8-byte Spill
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
	cmovlel	%eax, %ebp
	movslq	20(%rsp), %rsi
	cmpl	%ebp, %esi
	jg	.LBB2_8
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	incl	%ebp
	movslq	%ebp, %rdx
	leaq	(%rcx,%rdx,8), %rdi
	addq	$-8, %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r9b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	addq	$-8, %rdi
	cmpq	%rbp, %rdi
	setb	%bl
	leaq	(%rax,%rsi,8), %r11
	cmpq	%r11, %rbp
	setb	%dil
	testb	%r15b, %r9b
	jne	.LBB2_18
# %bb.3:
	orb	%dil, %bl
	je	.LBB2_18
# %bb.4:
	movq	%rdx, %r9
	subq	%rsi, %r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB2_5
# %bb.14:
	leaq	-1(%rdi), %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbx,8), %ymm1
	vfmadd231pd	(%r11,%rbx,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbx
	cmpq	%rbp, %rbx
	jbe	.LBB2_15
# %bb.16:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB2_6
	jmp	.LBB2_17
.LBB2_18:
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
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
	movq	%r8, %rbx
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
	movq	%rax, 48(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	56(%rsp), %r8
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
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB2_13
.LBB2_11:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB2_12
.LBB2_13:
	addq	$56, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
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
	subl	%edx, %ecx
	jl	.LBB4_10
# %bb.1:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	addl	$5, %ecx
	movl	$3435973837, %ebx               # imm = 0xCCCCCCCD
	imulq	%rcx, %rbx
	shrq	$34, %rbx
	decl	%ebx
	movl	$0, 4(%rsp)
	movl	%ebx, (%rsp)
	movl	$1, 28(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	(%rdi), %esi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	36(%rsp), %rax
	leaq	32(%rsp), %rcx
	leaq	12(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%esi, 28(%rsp)                  # 4-byte Spill
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
	cmpl	%ebx, %eax
	cmovbel	%eax, %ebx
	movl	4(%rsp), %edx
	leal	1(%rbx), %eax
	cmpl	%eax, %edx
	jae	.LBB4_4
# %bb.2:
	movq	80(%rsp), %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	(%rcx), %rcx
	notl	%ebx
	addl	%edx, %ebx
	leal	(%rdx,%rdx,4), %edx
	addl	48(%rsp), %edx                  # 4-byte Folded Reload
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
	incl	%ebx
	jne	.LBB4_3
.LBB4_4:
	movl	$.L__unnamed_2, %edi
	movl	20(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, %esi
	callq	__kmpc_for_static_fini@PLT
	leaq	8(%rsp), %rax
	movq	%rax, 56(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	64(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.2, %r9d
	movl	%ebx, %esi
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
	movq	32(%rsp), %rax                  # 8-byte Reload
	jne	.LBB4_9
# %bb.6:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rax), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%ebx, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB4_9
.LBB4_7:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rdx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rdx, (%rcx)
	vmovq	%rax, %xmm1
	jne	.LBB4_8
.LBB4_9:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB4_10:
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
	jle	.LBB6_14
# %bb.1:
	movq	%rcx, %rbx
	movq	%r8, %r14
	movq	%r9, %r13
	decl	%ebp
	movl	$0, 24(%rsp)
	movl	%ebp, 20(%rsp)
	movl	$1, 44(%rsp)
	movl	$0, 40(%rsp)
	movq	$0, 8(%rsp)
	movl	(%rdi), %r15d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	52(%rsp), %rax
	leaq	48(%rsp), %rcx
	leaq	32(%rsp), %r8
	leaq	28(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r15d, %esi
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
	movl	20(%rsp), %eax
	cmpl	%ebp, %eax
	cmovlel	%eax, %ebp
	subl	24(%rsp), %ebp
	jl	.LBB6_9
# %bb.2:
	movl	%r15d, 32(%rsp)                 # 4-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax
	movq	144(%rsp), %rdx
	movq	136(%rsp), %rsi
	movq	128(%rsp), %rcx
	movq	(%r14), %r15
	movq	(%rcx), %r12
	movl	(%rsi), %ecx
	movl	(%rdx), %edi
	movl	(%rax), %eax
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movl	(%r13), %ebx
	leal	1(%rbp), %edx
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	$4, %edx
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	jb	.LBB6_5
# %bb.3:
	shrl	$2, %edx
	leal	(%rdi,%rdi,2), %esi
	movl	%esi, 36(%rsp)                  # 4-byte Spill
	leal	(%rdi,%rdi), %r13d
	leal	(%rax,%rax), %r8d
	leal	(%rax,%rax,2), %r10d
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %r14
	vmovsd	(%r12,%r14,8), %xmm1            # xmm1 = mem[0],zero
	movslq	%ebx, %r9
	vfmadd132sd	(%r15,%r9,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	leal	(%r9,%rdi), %ebx
	leal	(%r14,%rax), %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r12,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movslq	%ebx, %rbx
	vfmadd132sd	(%r15,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	leal	(%r8,%r14), %r11d
	movslq	%r11d, %rsi
	vmovsd	(%r12,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	leal	(%r9,%r13), %esi
	movslq	%esi, %rsi
	vfmadd132sd	(%r15,%rsi,8), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addl	%r10d, %r14d
	movslq	%r14d, %rsi
	vmovsd	(%r12,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	addl	36(%rsp), %r9d                  # 4-byte Folded Reload
	movslq	%r9d, %rsi
	vfmadd132sd	(%r15,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addl	%edi, %ebx
	addl	%eax, %ecx
	addl	%edi, %ebx
	vmovsd	%xmm0, 8(%rsp)
	addl	%eax, %ecx
	addl	%edi, %ebx
	addl	%eax, %ecx
	decl	%edx
	jne	.LBB6_4
.LBB6_5:
	movl	28(%rsp), %esi                  # 4-byte Reload
	movl	%esi, %edx
	andl	$-4, %edx
	cmpl	%esi, %edx
	jae	.LBB6_8
# %bb.6:
	subl	%edx, %ebp
	incl	%ebp
	.p2align	4, 0x90
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	movslq	%ecx, %rcx
	vmovsd	(%r12,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	movslq	%ebx, %rbx
	vfmadd231sd	(%r15,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	addl	%edi, %ebx
	addl	%eax, %ecx
	decl	%ebp
	jne	.LBB6_7
.LBB6_8:
	movq	136(%rsp), %rax
	movl	%ecx, (%rax)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, (%rax)
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movl	32(%rsp), %r15d                 # 4-byte Reload
.LBB6_9:
	movl	$.L__unnamed_2, %edi
	movl	%r15d, %esi
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
	movl	%r15d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB6_12
# %bb.10:
	cmpl	$1, %eax
	jne	.LBB6_14
# %bb.11:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r15d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB6_14
.LBB6_12:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB6_13:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB6_13
.LBB6_14:
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
	.section	.text._Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,"axG",@progbits,_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,comdat
	.weak	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd # -- Begin function _Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.p2align	4, 0x90
	.type	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,@function
_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd: # 
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
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
	movq	(%rdi), %r11
	movq	(%rsi), %rcx
	movl	%r8d, %r10d
	movq	%r10, %rbx
	andq	$4, %rbx
	jne	.LBB8_31
# %bb.12:
	xorl	%ebx, %ebx
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_34
.LBB8_13:
	movl	$1, %eax
	movl	$1, %ebp
	subl	%edx, %ebp
	movl	%ebp, %ebx
	imull	%r8d, %ebx
	incl	%ebx
	testl	%r8d, %r8d
	cmovnsl	%eax, %ebx
	imull	%ecx, %ebp
	incl	%ebp
	testl	%ecx, %ecx
	cmovnsl	%eax, %ebp
	movq	(%rdi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	(%rsi), %r11
	movslq	%ebx, %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movslq	%r8d, %r15
	movslq	%ebp, %r8
	movslq	%ecx, %r14
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpl	$8, %edx
	jb	.LBB8_16
# %bb.14:
	movl	%edx, %edi
	shrl	$3, %edi
	leaq	(,%r15,8), %rbx
	leaq	(,%r14,8), %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	leaq	(%r11,%rcx,8), %rcx
	movq	%r15, %r12
	shlq	$6, %r12
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%r8,8), %rsi
	movq	%r14, %r13
	shlq	$6, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_15:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx), %xmm1                   # xmm1 = mem[0],zero
	vfmadd132sd	(%rsi), %xmm0, %xmm1    # xmm1 = (xmm1 * mem) + xmm0
	leaq	(%rcx,%r15,8), %rbp
	vmovsd	(%rcx,%r15,8), %xmm0            # xmm0 = mem[0],zero
	leaq	(%rsi,%r14,8), %r10
	vfmadd132sd	(%rsi,%r14,8), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	(%rbx,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rbx, %rbp
	vfmadd132sd	(%rax,%r10), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rax, %r10
	vmovsd	(%rbx,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rax,%r10), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%rbx, %rbp
	addq	%rax, %r10
	vmovsd	(%rbx,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rbx, %rbp
	vfmadd132sd	(%rax,%r10), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rax, %r10
	vmovsd	(%rbx,%rbp), %xmm0              # xmm0 = mem[0],zero
	addq	%rbx, %rbp
	vfmadd132sd	(%rax,%r10), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%rax, %r10
	vmovsd	(%rbx,%rbp), %xmm1              # xmm1 = mem[0],zero
	addq	%rbx, %rbp
	vfmadd132sd	(%rax,%r10), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	addq	%rax, %r10
	vmovsd	(%rbx,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rax,%r10), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	addq	%r12, %rcx
	addq	%r13, %rsi
	decl	%edi
	jne	.LBB8_15
.LBB8_16:
	movl	%edx, %eax
	andl	$7, %eax
	decl	%eax
	cmpl	$6, %eax
	ja	.LBB8_9
# %bb.17:
	andl	$-8, %edx
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_23:
	movslq	%edx, %rax
	imulq	%rax, %r15
	imulq	%rax, %r14
	movq	%r14, %rdx
	movq	%r15, %rdi
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_30
.LBB8_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB8_5
.LBB8_31:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB8_32:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%rcx,%rbp,8), %ymm1
	vfmadd231pd	(%r11,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rbx, %rbp
	jb	.LBB8_32
# %bb.33:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%r10, %rbx
	je	.LBB8_5
	.p2align	4, 0x90
.LBB8_34:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rbx,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%r11,%rbx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rbx
	cmpq	%rbx, %r10
	jne	.LBB8_34
.LBB8_5:
	cmpl	$5, %edx
	jl	.LBB8_9
# %bb.6:
	cmpl	%edx, %r8d
	jge	.LBB8_9
# %bb.7:
	movl	$3435973837, %ebp               # imm = 0xCCCCCCCD
	imulq	%rax, %rbp
	shrq	$34, %rbp
	leaq	(,%rbp,4), %rbx
	addq	%rbp, %rbx
	movl	$4, %ecx
	subq	%rbx, %rcx
	shlq	$3, %rcx
	movq	(%rdi), %rdi
	addq	%rcx, %rdi
	addq	(%rsi), %rcx
	leal	(%rbp,%rbp,4), %esi
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
	leal	(%rsi,%rax), %ebp
	cmpl	%edx, %ebp
	jl	.LBB8_8
	jmp	.LBB8_9
.LBB8_22:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_29
.LBB8_21:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_28
.LBB8_20:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_27
.LBB8_19:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_26
.LBB8_18:
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	imulq	%r14, %rdx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	jmp	.LBB8_25
.LBB8_24:
	leaq	(%r15,%r15,2), %rcx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rcx,2), %rcx
	movslq	%edx, %rdx
	movq	%r15, %rdi
	imulq	%rdx, %rdi
	addq	%rdi, %rcx
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,2), %rcx
	leaq	(%r8,%rcx,2), %rcx
	imulq	%r14, %rdx
	addq	%rdx, %rcx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	vfmadd231sd	(%rsi,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_25:
	leaq	(%r15,%r15,4), %rcx
	addq	%rax, %rcx
	addq	%rdi, %rcx
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,4), %rcx
	addq	%r8, %rcx
	addq	%rdx, %rcx
	vfmadd231sd	(%rsi,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_26:
	leaq	(%rax,%r15,4), %rcx
	addq	%rdi, %rcx
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r8,%r14,4), %rcx
	addq	%rdx, %rcx
	vfmadd231sd	(%rsi,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_27:
	leaq	(%r15,%r15,2), %rcx
	addq	%rax, %rcx
	addq	%rdi, %rcx
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r14,%r14,2), %rcx
	addq	%r8, %rcx
	addq	%rdx, %rcx
	vfmadd231sd	(%rsi,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_28:
	leaq	(%rax,%r15,2), %rcx
	addq	%rdi, %rcx
	vmovsd	(%r11,%rcx,8), %xmm1            # xmm1 = mem[0],zero
	leaq	(%r8,%r14,2), %rcx
	addq	%rdx, %rcx
	vfmadd231sd	(%rsi,%rcx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_29:
	addq	%rax, %r15
	addq	%rdi, %r15
	vmovsd	(%r11,%r15,8), %xmm1            # xmm1 = mem[0],zero
	addq	%r8, %r14
	addq	%rdx, %r14
	vfmadd231sd	(%rsi,%r14,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_30:
	addq	%rax, %rdi
	vmovsd	(%r11,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	addq	%r8, %rdx
	vfmadd231sd	(%rsi,%rdx,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
.LBB8_9:
	vmovsd	%xmm0, (%r9)
.LBB8_10:
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
.Lfunc_end8:
	.size	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd, .Lfunc_end8-_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
	.cfi_endproc
	.section	.rodata._Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,"aG",@progbits,_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd,comdat
	.p2align	3, 0x0
.LJTI8_0:
	.quad	.LBB8_23
	.quad	.LBB8_22
	.quad	.LBB8_21
	.quad	.LBB8_20
	.quad	.LBB8_19
	.quad	.LBB8_18
	.quad	.LBB8_24
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
