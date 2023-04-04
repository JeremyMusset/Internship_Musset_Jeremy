	.text
	.file	"sequential.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
.LCPI0_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.zero	16
	.section	.text._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.weak	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.p2align	4, 0x90
	.type	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,@function
_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi: # 
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$904, %rsp                      # imm = 0x388
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%r8d, -172(%rbp)                # 4-byte Spill
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	%rdx, -456(%rbp)                # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, -136(%rbp)                # 8-byte Spill
	movl	%edi, %r14d
	leaq	-560(%rbp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
	leaq	-720(%rbp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	-688(%rbp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	leaq	-944(%rbp), %r12
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
	leaq	-912(%rbp), %r13
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	-560(%rbp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	movq	%r14, %rbx
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%ebx, %ebx
	js	.LBB0_136
# %bb.1:
	movq	%rbx, -88(%rbp)                 # 8-byte Spill
	je	.LBB0_7
# %bb.2:
	movslq	%ebx, %r13
	leaq	(,%r13,8), %r14
	movq	%r14, %rdi
	callq	_Znwm
	movq	$0, (%rax)
	leaq	8(%rax), %r12
	cmpl	$1, %ebx
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	je	.LBB0_4
# %bb.3:
	leaq	(%rax,%r13,8), %r15
	leaq	-8(%r14), %rdx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	%r15, %r12
	movq	-88(%rbp), %rbx                 # 8-byte Reload
.LBB0_4:
.Ltmp0:
	movq	%r14, %rdi
	callq	_Znwm
.Ltmp1:
# %bb.5:
	leaq	8(%rax), %rdi
	movq	$0, (%rax)
	cmpl	$1, %ebx
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jne	.LBB0_9
# %bb.6:
	movq	%rdi, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB0_10
.LBB0_7:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
	movq	$0, -64(%rbp)                   # 8-byte Folded Spill
	movq	$0, -72(%rbp)                   # 8-byte Folded Spill
	movq	-80(%rbp), %r15                 # 8-byte Reload
	cmpl	$0, -136(%rbp)                  # 4-byte Folded Reload
	jne	.LBB0_11
.LBB0_8:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_110
.LBB0_9:
	leaq	(%rax,%r13,8), %rbx
	addq	$-8, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	_intel_fast_memset@PLT
	movq	%rbx, -72(%rbp)                 # 8-byte Spill
.LBB0_10:
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	-80(%rbp), %r15                 # 8-byte Reload
	movq	%r12, %r13
	cmpl	$0, -136(%rbp)                  # 4-byte Folded Reload
	je	.LBB0_8
.LBB0_11:
	movq	-88(%rbp), %r15                 # 8-byte Reload
	movl	%r15d, %edx
	movq	%r13, -168(%rbp)                # 8-byte Spill
	subq	%rbx, %r13
	movq	%r13, %rax
	sarq	$3, %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %r12                 # 8-byte Reload
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	subq	%rcx, %r12
	movq	%r12, %rax
	sarq	$3, %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movl	%edx, %esi
	andl	$-4, %esi
	movq	%rdx, -144(%rbp)                # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx def $rdx
	andl	$3, %edx
	movq	%rdx, -496(%rbp)                # 8-byte Spill
	movl	%r15d, %eax
	andl	$-4, %eax
	addl	%r15d, %eax
	incl	%eax
	movq	%rax, -488(%rbp)                # 8-byte Spill
	leaq	(%rcx,%rsi,8), %rax
	movq	%rax, -480(%rbp)                # 8-byte Spill
	leaq	1(%rsi), %rax
	movq	%rax, -464(%rbp)                # 8-byte Spill
	movq	%rsi, -504(%rbp)                # 8-byte Spill
	leaq	(%rbx,%rsi,8), %rax
	movq	%rax, -472(%rbp)                # 8-byte Spill
	xorl	%esi, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -416(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -400(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbx, -48(%rbp)                 # 8-byte Spill
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	vcvtsi2sd	%r14, %xmm1, %xmm0
	vcvtsi2sd	%r15, %xmm1, %xmm1
	vmovupd	-752(%rbp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovupd	-736(%rbp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm2, %xmm1
	movq	-512(%rbp), %rsi                # 8-byte Reload
	incl	%esi
	cmpl	-136(%rbp), %esi                # 4-byte Folded Reload
	movq	-88(%rbp), %r15                 # 8-byte Reload
	je	.LBB0_109
.LBB0_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_43 Depth 2
                                        #     Child Loop BB0_60 Depth 2
                                        #     Child Loop BB0_77 Depth 2
	vmovupd	%xmm1, -736(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm0, -752(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -448(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -432(%rbp)
.Ltmp3:
	leaq	-448(%rbp), %rdi
	movq	%rsi, -512(%rbp)                # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi
	movl	-172(%rbp), %edx                # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp4:
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	testl	%r15d, %r15d
	je	.LBB0_28
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-448(%rbp), %rax
	cmpl	$4, %r15d
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	-144(%rbp), %rdi                # 8-byte Reload
	movq	-504(%rbp), %r8                 # 8-byte Reload
	jb	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rcx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rcx,8)
	leal	(%rdi,%rcx), %edx
	incl	%edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rsi,%rcx,8)
	vmovsd	16(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rbx,%rcx,8)
	leal	2(%rdi,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsi,%rcx,8)
	vmovsd	24(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rbx,%rcx,8)
	leal	3(%rdi,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsi,%rcx,8)
	vmovsd	32(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rbx,%rcx,8)
	leal	(%rdi,%rcx), %edx
	addl	$4, %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rsi,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %r8
	jne	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	cmpq	%rdi, %r8
	movq	-496(%rbp), %r8                 # 8-byte Reload
	movq	-488(%rbp), %r9                 # 8-byte Reload
	movq	-480(%rbp), %r10                # 8-byte Reload
	movq	-472(%rbp), %rbx                # 8-byte Reload
	jae	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-464(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_20:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rdx,8)
	leal	(%r9,%rdx), %esi
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r10,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r8
	jne	.LBB0_20
.LBB0_21:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, -376(%rbp)                # 8-byte Spill
	movq	%rsp, %r14
	movq	%rdi, %rax
	shlq	$5, %rax
	subq	%rax, %r14
	movq	%r14, %rsp
	movq	%rsp, %r15
	subq	%rax, %r15
	movq	%r15, %rsp
	movq	%r15, -56(%rbp)                 # 8-byte Spill
	movq	%r14, -96(%rbp)                 # 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_22:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp6:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp7:
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=2
	movq	-48(%rbp), %rax                 # 8-byte Reload
	vmovsd	(%rax,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp8:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp9:
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=2
.Ltmp10:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
.Ltmp11:
# %bb.25:                               #   in Loop: Header=BB0_22 Depth=2
	movq	-64(%rbp), %rax                 # 8-byte Reload
	vmovsd	(%rax,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp12:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp13:
# %bb.26:                               #   in Loop: Header=BB0_22 Depth=2
	incq	%rbx
	addq	$32, %r14
	addq	$32, %r15
	cmpq	%rbx, -144(%rbp)                # 8-byte Folded Reload
	jne	.LBB0_22
# %bb.27:                               #   in Loop: Header=BB0_13 Depth=1
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	-88(%rbp), %r15                 # 8-byte Reload
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rsp, -376(%rbp)                # 8-byte Spill
	movq	%rsp, %rcx
	movq	-144(%rbp), %rax                # 8-byte Reload
	shlq	$5, %rax
	subq	%rax, %rcx
	movq	%rcx, -96(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
.LBB0_29:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp15:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	-128(%rbp), %rdi
	callq	mpfr_init2
.Ltmp16:
# %bb.30:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp17:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp18:
# %bb.31:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edi, %edi
	leaq	-880(%rbp), %rsi
	callq	clock_gettime
.Ltmp20:
	movl	%r15d, %edi
	movq	-96(%rbp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp21:
# %bb.32:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp22:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp23:
# %bb.33:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp24:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp25:
# %bb.34:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp26:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp27:
# %bb.35:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp28:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp29:
# %bb.36:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp30:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp31:
# %bb.37:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp32:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp33:
# %bb.38:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp34:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp35:
# %bb.39:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp36:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp37:
# %bb.40:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp38:
	movl	%r15d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	leaq	-128(%rbp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp39:
# %bb.41:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edi, %edi
	leaq	-864(%rbp), %rsi
	callq	clock_gettime
	movq	-856(%rbp), %rax
	subq	-872(%rbp), %rax
	vcvtsi2sd	%rax, %xmm3, %xmm0
	vmovupd	-416(%rbp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovupd	%xmm1, -416(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	-848(%rbp), %rsi
	callq	clock_gettime
	movl	$10, %r14d
	jmp	.LBB0_43
	.p2align	4, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_43 Depth=2
	decl	%r14d
	je	.LBB0_58
.LBB0_43:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -368(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -352(%rbp)
	cmpq	%rbx, -168(%rbp)                # 8-byte Folded Reload
	je	.LBB0_47
# %bb.44:                               #   in Loop: Header=BB0_43 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB0_124
# %bb.45:                               #   in Loop: Header=BB0_43 Depth=2
.Ltmp41:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp42:
# %bb.46:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%rax, -368(%rbp)
	movq	%rbx, %rsi
	movq	-160(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -352(%rbp)
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_48
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%r13, -352(%rbp)
	movq	%r13, %rbx
.LBB0_48:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%rbx, -360(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -336(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -320(%rbp)
	movq	-72(%rbp), %rax                 # 8-byte Reload
	cmpq	-64(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB0_52
# %bb.49:                               #   in Loop: Header=BB0_43 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r12
	ja	.LBB0_126
# %bb.50:                               #   in Loop: Header=BB0_43 Depth=2
.Ltmp47:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp48:
# %bb.51:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%rax, -336(%rbp)
	movq	-152(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -320(%rbp)
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%r12, -320(%rbp)
	movq	%r12, %rbx
.LBB0_53:                               #   in Loop: Header=BB0_43 Depth=2
	movq	%rbx, -328(%rbp)
.Ltmp53:
	leaq	-368(%rbp), %rdi
	leaq	-336(%rbp), %rsi
	movl	%r15d, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, -56(%rbp)                # 8-byte Spill
.Ltmp54:
# %bb.54:                               #   in Loop: Header=BB0_43 Depth=2
	movq	-336(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_43 Depth=2
	callq	_ZdlPv
.LBB0_56:                               #   in Loop: Header=BB0_43 Depth=2
	movq	-368(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_42
# %bb.57:                               #   in Loop: Header=BB0_43 Depth=2
	callq	_ZdlPv
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edi, %edi
	leaq	-832(%rbp), %rsi
	callq	clock_gettime
	movq	-824(%rbp), %rax
	subq	-840(%rbp), %rax
	vcvtsi2sd	%rax, %xmm2, %xmm0
	vmovupd	-400(%rbp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovupd	%xmm1, -400(%rbp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	-816(%rbp), %rsi
	callq	clock_gettime
	movl	$10, %r14d
	jmp	.LBB0_60
	.p2align	4, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_60 Depth=2
	decl	%r14d
	je	.LBB0_75
.LBB0_60:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -304(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -288(%rbp)
	cmpq	%rbx, -168(%rbp)                # 8-byte Folded Reload
	je	.LBB0_64
# %bb.61:                               #   in Loop: Header=BB0_60 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB0_128
# %bb.62:                               #   in Loop: Header=BB0_60 Depth=2
.Ltmp56:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp57:
# %bb.63:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%rax, -304(%rbp)
	movq	%rbx, %rsi
	movq	-160(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -288(%rbp)
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_65
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%r13, -288(%rbp)
	movq	%r13, %rbx
.LBB0_65:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%rbx, -296(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -272(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -256(%rbp)
	movq	-72(%rbp), %rax                 # 8-byte Reload
	cmpq	-64(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB0_69
# %bb.66:                               #   in Loop: Header=BB0_60 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r12
	ja	.LBB0_130
# %bb.67:                               #   in Loop: Header=BB0_60 Depth=2
.Ltmp62:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp63:
# %bb.68:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%rax, -272(%rbp)
	movq	-152(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -256(%rbp)
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_69:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%r12, -256(%rbp)
	movq	%r12, %rbx
.LBB0_70:                               #   in Loop: Header=BB0_60 Depth=2
	movq	%rbx, -264(%rbp)
.Ltmp68:
	leaq	-304(%rbp), %rdi
	leaq	-272(%rbp), %rsi
	movl	%r15d, %edx
	callq	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	vmovsd	%xmm0, -96(%rbp)                # 8-byte Spill
.Ltmp69:
# %bb.71:                               #   in Loop: Header=BB0_60 Depth=2
	movq	-272(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_60 Depth=2
	callq	_ZdlPv
.LBB0_73:                               #   in Loop: Header=BB0_60 Depth=2
	movq	-304(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_59
# %bb.74:                               #   in Loop: Header=BB0_60 Depth=2
	callq	_ZdlPv
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edi, %edi
	leaq	-784(%rbp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	-800(%rbp), %rsi
	callq	clock_gettime
	movl	$10, %r14d
	jmp	.LBB0_77
	.p2align	4, 0x90
.LBB0_76:                               #   in Loop: Header=BB0_77 Depth=2
	decl	%r14d
	je	.LBB0_92
.LBB0_77:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -240(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -224(%rbp)
	cmpq	%rbx, -168(%rbp)                # 8-byte Folded Reload
	je	.LBB0_81
# %bb.78:                               #   in Loop: Header=BB0_77 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB0_132
# %bb.79:                               #   in Loop: Header=BB0_77 Depth=2
.Ltmp71:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp72:
# %bb.80:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rax, -240(%rbp)
	movq	%rbx, %rsi
	movq	-160(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -224(%rbp)
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_82
	.p2align	4, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%r13, -224(%rbp)
	movq	%r13, %rbx
.LBB0_82:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rbx, -232(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -208(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -192(%rbp)
	movq	-72(%rbp), %rax                 # 8-byte Reload
	cmpq	-64(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB0_86
# %bb.83:                               #   in Loop: Header=BB0_77 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r12
	ja	.LBB0_134
# %bb.84:                               #   in Loop: Header=BB0_77 Depth=2
.Ltmp77:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp78:
# %bb.85:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rax, -208(%rbp)
	movq	-152(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -192(%rbp)
	movq	%rax, %rdi
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_86:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%r12, -192(%rbp)
	movq	%r12, %rbx
.LBB0_87:                               #   in Loop: Header=BB0_77 Depth=2
	movq	%rbx, -200(%rbp)
.Ltmp83:
	leaq	-240(%rbp), %rdi
	leaq	-208(%rbp), %rsi
	movl	%r15d, %edx
	callq	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	vmovsd	%xmm0, -520(%rbp)               # 8-byte Spill
.Ltmp84:
# %bb.88:                               #   in Loop: Header=BB0_77 Depth=2
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_90
# %bb.89:                               #   in Loop: Header=BB0_77 Depth=2
	callq	_ZdlPv
.LBB0_90:                               #   in Loop: Header=BB0_77 Depth=2
	movq	-240(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_76
# %bb.91:                               #   in Loop: Header=BB0_77 Depth=2
	callq	_ZdlPv
	jmp	.LBB0_76
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%edi, %edi
	leaq	-768(%rbp), %rsi
	callq	clock_gettime
	movq	-776(%rbp), %r14
	subq	-808(%rbp), %r14
	movq	-760(%rbp), %r15
	subq	-792(%rbp), %r15
.Ltmp86:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	-656(%rbp), %rdi
	callq	mpfr_init2
.Ltmp87:
# %bb.93:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp88:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	-624(%rbp), %rdi
	callq	mpfr_init2
.Ltmp89:
# %bb.94:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp90:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	-592(%rbp), %rdi
	callq	mpfr_init2
.Ltmp91:
# %bb.95:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp92:
	leaq	-656(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	vmovsd	-56(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp93:
# %bb.96:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp94:
	leaq	-656(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp95:
# %bb.97:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp96:
	leaq	-656(%rbp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp97:
# %bb.98:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp98:
	leaq	-560(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-656(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp99:
# %bb.99:                               #   in Loop: Header=BB0_13 Depth=1
.Ltmp100:
	leaq	-624(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	vmovsd	-96(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp101:
# %bb.100:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp102:
	leaq	-624(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp103:
# %bb.101:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp104:
	leaq	-624(%rbp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp105:
# %bb.102:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp106:
	leaq	-720(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-624(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp107:
# %bb.103:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp108:
	leaq	-592(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	vmovsd	-520(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp109:
# %bb.104:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp110:
	leaq	-592(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-128(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp111:
# %bb.105:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp112:
	leaq	-592(%rbp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp113:
# %bb.106:                              #   in Loop: Header=BB0_13 Depth=1
.Ltmp114:
	leaq	-688(%rbp), %rdi
	movq	%rdi, %rsi
	leaq	-592(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp115:
# %bb.107:                              #   in Loop: Header=BB0_13 Depth=1
	movq	-376(%rbp), %rsp                # 8-byte Reload
	movq	-448(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_12
# %bb.108:                              #   in Loop: Header=BB0_13 Depth=1
	callq	_ZdlPv
	jmp	.LBB0_12
.LBB0_109:
	vunpcklpd	%xmm1, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm1[0]
	vmovupd	-416(%rbp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	-400(%rbp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm0, %ymm1, %ymm0
	movq	-80(%rbp), %r15                 # 8-byte Reload
.LBB0_110:
	movq	-136(%rbp), %rcx                # 8-byte Reload
	leal	(%rcx,%rcx), %eax
	leal	(%rax,%rax,4), %eax
	vcvtsi2sd	%eax, %xmm3, %xmm1
	movq	-456(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	vbroadcastsd	%xmm1, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rax)
	movslq	%ecx, %r14
.Ltmp117:
	leaq	-560(%rbp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp118:
# %bb.111:
.Ltmp119:
	leaq	-720(%rbp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp120:
# %bb.112:
.Ltmp121:
	leaq	-688(%rbp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp122:
# %bb.113:
	movq	(%r15), %rdi
.Ltmp123:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp124:
# %bb.114:
	movq	(%r15), %rdi
	addq	$32, %rdi
	movl	-552(%rbp), %ecx
.Ltmp125:
	leaq	-560(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp126:
# %bb.115:
	movq	(%r15), %rdi
	addq	$64, %rdi
	movl	-712(%rbp), %ecx
.Ltmp127:
	leaq	-720(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp128:
# %bb.116:
	movq	(%r15), %rdi
	addq	$96, %rdi
	movl	-680(%rbp), %ecx
.Ltmp129:
	leaq	-688(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp130:
# %bb.117:
	movq	(%r15), %rdi
	subq	$-128, %rdi
	movl	-936(%rbp), %ecx
.Ltmp131:
	leaq	-944(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp132:
# %bb.118:
	movl	$160, %edi
	addq	(%r15), %rdi
	movl	-904(%rbp), %ecx
.Ltmp133:
	leaq	-912(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp134:
# %bb.119:
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_121
# %bb.120:
	callq	_ZdlPv
.LBB0_121:
	testq	%rbx, %rbx
	je	.LBB0_123
# %bb.122:
	movq	%rbx, %rdi
	callq	_ZdlPv
.LBB0_123:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_124:
	.cfi_def_cfa %rbp, 16
.Ltmp44:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp45:
# %bb.125:
.LBB0_126:
.Ltmp50:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp51:
# %bb.127:
.LBB0_128:
.Ltmp59:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp60:
# %bb.129:
.LBB0_130:
.Ltmp65:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp66:
# %bb.131:
.LBB0_132:
.Ltmp74:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp75:
# %bb.133:
.LBB0_134:
.Ltmp80:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp81:
# %bb.135:
.LBB0_136:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB0_137:
.Ltmp2:
	movq	%rax, %r15
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	jmp	.LBB0_178
.LBB0_138:
.Ltmp135:
	movq	%rax, %r15
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_174
	jmp	.LBB0_177
.LBB0_139:
.Ltmp5:
	jmp	.LBB0_171
.LBB0_140:
.Ltmp19:
	jmp	.LBB0_171
.LBB0_141:
.Ltmp40:
	jmp	.LBB0_171
.LBB0_142:
.Ltmp116:
	jmp	.LBB0_171
.LBB0_143:
.Ltmp79:
	jmp	.LBB0_157
.LBB0_144:
.Ltmp73:
	jmp	.LBB0_171
.LBB0_145:
.Ltmp64:
	jmp	.LBB0_162
.LBB0_146:
.Ltmp58:
	jmp	.LBB0_171
.LBB0_147:
.Ltmp49:
	jmp	.LBB0_167
.LBB0_148:
.Ltmp43:
	jmp	.LBB0_171
.LBB0_149:
.Ltmp85:
	movq	%rax, %r15
	movq	-208(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_158
# %bb.150:
	callq	_ZdlPv
	jmp	.LBB0_158
.LBB0_151:
.Ltmp70:
	movq	%rax, %r15
	movq	-272(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_163
# %bb.152:
	callq	_ZdlPv
	jmp	.LBB0_163
.LBB0_153:
.Ltmp55:
	movq	%rax, %r15
	movq	-336(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	je	.LBB0_168
# %bb.154:
	callq	_ZdlPv
	jmp	.LBB0_168
.LBB0_155:
.Ltmp14:
	movq	%rax, %r15
	movq	-48(%rbp), %rbx                 # 8-byte Reload
	movq	-448(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_176
	jmp	.LBB0_173
.LBB0_156:
.Ltmp82:
.LBB0_157:
	movq	%rax, %r15
	movq	-48(%rbp), %rbx                 # 8-byte Reload
.LBB0_158:
	movq	-240(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_169
	jmp	.LBB0_172
.LBB0_160:
.Ltmp76:
	jmp	.LBB0_171
.LBB0_161:
.Ltmp67:
.LBB0_162:
	movq	%rax, %r15
	movq	-48(%rbp), %rbx                 # 8-byte Reload
.LBB0_163:
	movq	-304(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_169
	jmp	.LBB0_172
.LBB0_165:
.Ltmp61:
	jmp	.LBB0_171
.LBB0_166:
.Ltmp52:
.LBB0_167:
	movq	%rax, %r15
	movq	-48(%rbp), %rbx                 # 8-byte Reload
.LBB0_168:
	movq	-368(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_172
.LBB0_169:
	callq	_ZdlPv
.LBB0_172:
	movq	-448(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_176
.LBB0_173:
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB0_177
.LBB0_174:
	testq	%rbx, %rbx
	jne	.LBB0_178
.LBB0_175:
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_170:
.Ltmp46:
.LBB0_171:
	movq	%rax, %r15
	movq	-448(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_173
.LBB0_176:
	callq	_ZdlPv
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_174
.LBB0_177:
	callq	_ZdlPv
	testq	%rbx, %rbx
	je	.LBB0_175
.LBB0_178:
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	%r15, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .Lfunc_end0-_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.cfi_endproc
	.section	.gcc_except_table._Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"aG",@progbits,_Z12seq_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp6                 #   Call between .Ltmp6 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp15                #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp39-.Ltmp20                #   Call between .Ltmp20 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp47-.Ltmp42                #   Call between .Ltmp42 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp53-.Ltmp48                #   Call between .Ltmp48 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp62-.Ltmp57                #   Call between .Ltmp57 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp68-.Ltmp63                #   Call between .Ltmp63 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp77-.Ltmp72                #   Call between .Ltmp72 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp83-.Ltmp78                #   Call between .Ltmp78 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp115-.Ltmp86               #   Call between .Ltmp86 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin0         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp134-.Ltmp117              #   Call between .Ltmp117 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Lfunc_end0-.Ltmp81            #   Call between .Ltmp81 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_sequential.cc
	.type	_GLOBAL__sub_I_sequential.cc,@function
_GLOBAL__sub_I_sequential.cc:           # 
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
.Lfunc_end1:
	.size	_GLOBAL__sub_I_sequential.cc, .Lfunc_end1-_GLOBAL__sub_I_sequential.cc
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
	.quad	_GLOBAL__sub_I_sequential.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
