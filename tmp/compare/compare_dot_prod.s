	.text
	.file	"compare_dot_prod.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.LCPI0_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.zero	16
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.p2align	4, 0x90
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,@function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii: # 
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
	subq	$1688, %rsp                     # imm = 0x698
	.cfi_def_cfa_offset 1744
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%r8d, 392(%rsp)                 # 4-byte Spill
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	movq	%rdx, 776(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 376(%rsp)                 # 8-byte Spill
	movl	%edi, %r14d
	leaq	1168(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
	leaq	1376(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	1344(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	1312(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	leaq	1280(%rsp), %r12
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
	leaq	1248(%rsp), %r13
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	1168(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%r14d, %r14d
	js	.LBB0_333
# %bb.1:
	movslq	%r14d, %rax
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	je	.LBB0_4
# %bb.2:
	leaq	(,%rax,8), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	callq	_Znwm
	movq	%rax, %r15
	movq	%rax, 256(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 272(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r14d
	jne	.LBB0_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB0_6
.LBB0_4:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 256(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 272(%rsp)
	vmovdqu	%xmm0, 352(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 368(%rsp)
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	xorl	%edi, %edi
	jmp	.LBB0_9
.LBB0_5:
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB0_6:
	movq	%rbp, 264(%rsp)
.Ltmp0:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1:
# %bb.7:
	movq	%rax, %r14
	movq	%rax, 352(%rsp)
	movq	96(%rsp), %rax                  # 8-byte Reload
	leaq	(%r14,%rax,8), %rbp
	leaq	8(%r14), %rdi
	movq	%rbp, 368(%rsp)
	movq	$0, (%r14)
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_9
# %bb.8:
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rbp, %rdi
.LBB0_9:
	movq	%rdi, 360(%rsp)
	cmpl	$0, 376(%rsp)                   # 4-byte Folded Reload
	je	.LBB0_303
# %bb.10:
	movq	%rax, %r15
	shlq	$5, %r15
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r12d
	leaq	(,%rax,8), %rdx
	movq	%rdx, 616(%rsp)                 # 8-byte Spill
	movl	%r12d, %edx
	andl	$-4, %edx
	leaq	-1(%r12), %rsi
	movq	%rsi, 792(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rsi
	movq	%rsi, 600(%rsp)                 # 8-byte Spill
	andq	$-4, %rax
	movq	%rax, 608(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%rax, 808(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%ecx, %eax
	incl	%eax
	movq	%rax, 800(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 784(%rsp)                 # 8-byte Spill
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 720(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 704(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 688(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%esi, %esi
	movq	%r15, 816(%rsp)                 # 8-byte Spill
	movq	%r12, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_12 Depth=1
	vcvtsi2sdq	656(%rsp), %xmm4, %xmm8 # 8-byte Folded Reload
	vcvtsi2sdq	640(%rsp), %xmm4, %xmm0 # 8-byte Folded Reload
	vcvtsi2sdq	624(%rsp), %xmm4, %xmm2 # 8-byte Folded Reload
	vcvtsi2sdq	384(%rsp), %xmm4, %xmm3 # 8-byte Folded Reload
	vcvtsi2sdq	848(%rsp), %xmm4, %xmm12 # 8-byte Folded Reload
	vcvtsi2sdq	88(%rsp), %xmm4, %xmm13 # 8-byte Folded Reload
	vcvtsi2sdq	160(%rsp), %xmm4, %xmm14 # 8-byte Folded Reload
	vcvtsi2sdq	840(%rsp), %xmm4, %xmm15 # 8-byte Folded Reload
	vcvtsi2sdq	832(%rsp), %xmm4, %xmm9 # 8-byte Folded Reload
	vcvtsi2sdq	824(%rsp), %xmm4, %xmm1 # 8-byte Folded Reload
	vcvtsi2sd	%r13, %xmm4, %xmm10
	vcvtsi2sd	%r15, %xmm4, %xmm11
	vcvtsi2sd	%r12, %xmm4, %xmm4
	vcvtsi2sd	%rbx, %xmm5, %xmm5
	vcvtsi2sd	%rbp, %xmm6, %xmm6
	vcvtsi2sd	%r14, %xmm7, %xmm7
	vminsd	%xmm0, %xmm8, %xmm8
	vminsd	%xmm3, %xmm2, %xmm0
	vminsd	%xmm0, %xmm8, %xmm0
	vminsd	%xmm0, %xmm12, %xmm0
	vmovupd	688(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	%xmm0, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm0[0]
	vmovupd	1072(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddpd	%xmm3, %xmm0, %xmm3
	vmovupd	1104(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm2, %xmm13, %xmm2
	vminsd	%xmm14, %xmm15, %xmm0
	vminsd	%xmm1, %xmm9, %xmm1
	vminsd	%xmm1, %xmm0, %xmm0
	vminsd	%xmm0, %xmm10, %xmm0
	vmovupd	1088(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm1
	vminsd	%xmm4, %xmm11, %xmm0
	vminsd	%xmm0, %xmm5, %xmm0
	vminsd	%xmm0, %xmm6, %xmm0
	vminsd	%xmm0, %xmm7, %xmm0
	vmovupd	1120(%rsp), %xmm5               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm5, %xmm0, %xmm5
	movl	396(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	cmpl	376(%rsp), %esi                 # 4-byte Folded Reload
	movq	816(%rsp), %r15                 # 8-byte Reload
	movq	216(%rsp), %r12                 # 8-byte Reload
	je	.LBB0_304
.LBB0_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #     Child Loop BB0_45 Depth 2
                                        #     Child Loop BB0_49 Depth 2
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_57 Depth 2
                                        #     Child Loop BB0_61 Depth 2
                                        #     Child Loop BB0_65 Depth 2
                                        #     Child Loop BB0_69 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #     Child Loop BB0_77 Depth 2
                                        #     Child Loop BB0_95 Depth 2
                                        #     Child Loop BB0_210 Depth 2
                                        #     Child Loop BB0_212 Depth 2
                                        #     Child Loop BB0_214 Depth 2
                                        #     Child Loop BB0_221 Depth 2
                                        #     Child Loop BB0_224 Depth 2
                                        #     Child Loop BB0_228 Depth 2
                                        #     Child Loop BB0_232 Depth 2
                                        #     Child Loop BB0_236 Depth 2
                                        #     Child Loop BB0_240 Depth 2
                                        #     Child Loop BB0_244 Depth 2
                                        #     Child Loop BB0_248 Depth 2
                                        #     Child Loop BB0_252 Depth 2
                                        #     Child Loop BB0_256 Depth 2
                                        #     Child Loop BB0_260 Depth 2
                                        #     Child Loop BB0_264 Depth 2
	vmovupd	%xmm3, 1072(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm1, 1088(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm2, 1104(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm5, 1120(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 736(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 752(%rsp)
.Ltmp3:
	leaq	736(%rsp), %rdi
	movl	%esi, 396(%rsp)                 # 4-byte Spill
	movl	392(%rsp), %edx                 # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp4:
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=1
	movq	736(%rsp), %rax
	movq	256(%rsp), %rcx
	movq	352(%rsp), %rdx
	cmpl	$4, 16(%rsp)                    # 4-byte Folded Reload
	movq	120(%rsp), %rbp                 # 8-byte Reload
	jb	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rsi,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	incl	%edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	vmovsd	16(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rcx,%rsi,8)
	leal	2(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rdx,%rsi,8)
	vmovsd	24(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rcx,%rsi,8)
	leal	3(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rdx,%rsi,8)
	vmovsd	32(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	addl	$4, %edi
	vmovq	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovq	%xmm0, 24(%rdx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rbp
	jne	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=1
	cmpq	%r12, %rbp
	movq	808(%rsp), %r8                  # 8-byte Reload
	movq	800(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdx,%rdi,8), %rdx
	movq	784(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_19:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rsi,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rdi,8)
	leal	(%rbx,%rdi), %ebp
	vmovq	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vmovq	%xmm0, (%rdx,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB0_19
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp6:
	movq	%r15, %rdi
	callq	_Znam
.Ltmp7:
# %bb.21:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp9:
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_Znam
.Ltmp10:
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, %r15
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_29
# %bb.23:                               #   in Loop: Header=BB0_12 Depth=1
	movq	256(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	352(%rsp), %r13
	movq	%r15, %rbp
	movq	%r14, %rbx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_24:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp11:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp12:
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	movq	88(%rsp), %rax                  # 8-byte Reload
	vmovq	(%rax,%r12,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp13:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp14:
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=2
.Ltmp15:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp16:
# %bb.27:                               #   in Loop: Header=BB0_24 Depth=2
	vmovq	(%r13,%r12,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp17:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp18:
# %bb.28:                               #   in Loop: Header=BB0_24 Depth=2
	incq	%r12
	addq	$32, %rbx
	addq	$32, %rbp
	cmpq	%r12, 216(%rsp)                 # 8-byte Folded Reload
	jne	.LBB0_24
.LBB0_29:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp20:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	960(%rsp), %rdi
	callq	mpfr_init2
.Ltmp21:
# %bb.30:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp22:
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	960(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp23:
# %bb.31:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1232(%rsp), %rsi
	callq	clock_gettime
.Ltmp24:
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	leaq	960(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp25:
# %bb.32:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1216(%rsp), %rsi
	callq	clock_gettime
	movq	1224(%rsp), %rax
	subq	1240(%rsp), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	216(%rsp), %r12                 # 8-byte Reload
	je	.LBB0_37
# %bb.33:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rbx
	movabsq	$9223372036854775800, %r13      # imm = 0x7FFFFFFFFFFFFFF8
	.p2align	4, 0x90
.LBB0_34:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp27:
	movq	%r14, %rdi
	callq	mpfr_clear
.Ltmp28:
# %bb.35:                               #   in Loop: Header=BB0_34 Depth=2
.Ltmp29:
	movq	%r15, %rdi
	callq	mpfr_clear
.Ltmp30:
# %bb.36:                               #   in Loop: Header=BB0_34 Depth=2
	addq	$32, %r14
	addq	$32, %r15
	decq	%rbx
	jne	.LBB0_34
	jmp	.LBB0_38
	.p2align	4, 0x90
.LBB0_37:                               #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %r13      # imm = 0x7FFFFFFFFFFFFFF8
.LBB0_38:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1568(%rsp), %rsi
	callq	clock_gettime
	movq	256(%rsp), %r15
	movq	352(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	320(%rsp), %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_46
# %bb.39:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB0_43
# %bb.40:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_41:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB0_41
# %bb.42:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r12, %rdx
	jne	.LBB0_44
	jmp	.LBB0_46
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_44:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_45:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_45
.LBB0_46:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	304(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	304(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 672(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	320(%rsp), %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_54
# %bb.47:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB0_51
# %bb.48:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_49:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB0_49
# %bb.50:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r12, %rdx
	jne	.LBB0_52
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_52:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_53:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_53
.LBB0_54:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	304(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	304(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 160(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	320(%rsp), %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_62
# %bb.55:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB0_59
# %bb.56:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_57:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB0_57
# %bb.58:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r12, %rdx
	jne	.LBB0_60
	jmp	.LBB0_62
	.p2align	4, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_60:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_61:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_61
.LBB0_62:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	304(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	304(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 656(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	320(%rsp), %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_70
# %bb.63:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB0_67
# %bb.64:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_65:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB0_65
# %bb.66:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r12, %rdx
	jne	.LBB0_68
	jmp	.LBB0_70
	.p2align	4, 0x90
.LBB0_67:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_68:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_69:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_69
.LBB0_70:                               #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	304(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	304(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 640(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	320(%rsp), %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_75
# %bb.71:                               #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_76
# %bb.72:                               #   in Loop: Header=BB0_12 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	104(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_73:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rdx,%rax,8), %ymm1
	vfmadd231pd	(%r15,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB0_73
# %bb.74:                               #   in Loop: Header=BB0_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rcx, %rax
	cmpq	%r12, %rcx
	jne	.LBB0_77
	jmp	.LBB0_78
	.p2align	4, 0x90
.LBB0_75:                               #   in Loop: Header=BB0_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.LBB0_78
	.p2align	4, 0x90
.LBB0_76:                               #   in Loop: Header=BB0_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	movq	104(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_77:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r15,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %r12
	jne	.LBB0_77
.LBB0_78:                               #   in Loop: Header=BB0_12 Depth=1
	vmovsd	%xmm1, 856(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	304(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	vmovdqu	304(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 624(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1552(%rsp), %rsi
	callq	clock_gettime
	movq	264(%rsp), %r14
	movq	%r14, %r12
	subq	%r15, %r12
	sarq	$3, %r12
	movq	%r14, 344(%rsp)                 # 8-byte Spill
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 576(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 592(%rsp)
	subq	%r15, %r14
	je	.LBB0_82
# %bb.79:                               #   in Loop: Header=BB0_12 Depth=1
	cmpq	%r13, %r14
	ja	.LBB0_325
# %bb.80:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp32:
	movq	%r14, %rdi
	callq	_Znwm
.Ltmp33:
# %bb.81:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 576(%rsp)
	movq	%rax, 584(%rsp)
	leaq	(%rax,%r12,8), %rbx
	movq	%rbx, 592(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memmove@PLT
	jmp	.LBB0_83
	.p2align	4, 0x90
.LBB0_82:                               #   in Loop: Header=BB0_12 Depth=1
	leaq	(,%r12,8), %rbx
	movq	%rbx, 592(%rsp)
.LBB0_83:                               #   in Loop: Header=BB0_12 Depth=1
	movq	360(%rsp), %rcx
	movq	%rcx, %rbp
	movq	104(%rsp), %rax                 # 8-byte Reload
	subq	%rax, %rbp
	sarq	$3, %rbp
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rbx, 584(%rsp)
	movq	%rcx, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 544(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 560(%rsp)
	subq	%rax, %rbx
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	je	.LBB0_87
# %bb.84:                               #   in Loop: Header=BB0_12 Depth=1
	cmpq	%r13, %rbx
	ja	.LBB0_327
# %bb.85:                               #   in Loop: Header=BB0_12 Depth=1
.Ltmp38:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp39:
	movq	%rbx, %rdx
# %bb.86:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 544(%rsp)
	movq	%rax, 552(%rsp)
	leaq	(%rax,%rbp,8), %rbx
	movq	%rbx, 560(%rsp)
	movq	%rax, %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_87:                               #   in Loop: Header=BB0_12 Depth=1
	leaq	(,%rbp,8), %rbx
	movq	%rbx, 560(%rsp)
.LBB0_88:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 552(%rsp)
.Ltmp44:
	leaq	576(%rsp), %rdi
	leaq	544(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
.Ltmp45:
# %bb.89:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, 208(%rsp)                 # 8-byte Spill
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movq	%r15, 184(%rsp)                 # 8-byte Spill
	vmovdqu	672(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %r13         # imm = 0x3B9ACA00
	vmovdqu	160(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %r15         # imm = 0x3B9ACA00
	vmovdqu	656(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rdx         # imm = 0x3B9ACA00
	vmovdqu	640(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rcx         # imm = 0x3B9ACA00
	vmovdqu	624(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	movq	544(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_91
# %bb.90:                               #   in Loop: Header=BB0_12 Depth=1
	movq	%rcx, %rbp
	movq	%rax, %rbx
	movq	%rdx, %r12
	callq	_ZdlPv
	movq	%r12, %rdx
	movq	%rbx, %rax
	movq	%rbp, %rcx
.LBB0_91:                               #   in Loop: Header=BB0_12 Depth=1
	vmovdqu	672(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r12
	addq	%r13, %r12
	vmovdqu	160(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %rbx
	addq	%r15, %rbx
	vmovdqu	656(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r15
	addq	%rdx, %r15
	vmovdqu	640(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %rbp
	vmovdqu	624(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r13
	addq	%rcx, %rbp
	addq	%rax, %r13
	movq	576(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_93:                               #   in Loop: Header=BB0_12 Depth=1
	vcvtsi2sdq	384(%rsp), %xmm2, %xmm0 # 8-byte Folded Reload
	vcvtsi2sd	%r12, %xmm2, %xmm1
	vcvtsi2sd	%rbx, %xmm2, %xmm2
	vmovupd	720(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm3, %xmm3
	vmovupd	%xmm3, 720(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm2, %xmm0
	vcvtsi2sd	%r15, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sd	%rbp, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sd	%r13, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vmovupd	704(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 704(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1536(%rsp), %rsi
	callq	clock_gettime
	movq	208(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %r15
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movl	$5, %r12d
	movq	184(%rsp), %r13                 # 8-byte Reload
	movq	104(%rsp), %rbp                 # 8-byte Reload
	jmp	.LBB0_95
	.p2align	4, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_95 Depth=2
	vmovupd	688(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 688(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r12d
	je	.LBB0_112
.LBB0_95:                               #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	leaq	1152(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 512(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 528(%rsp)
	cmpq	%r13, 344(%rsp)                 # 8-byte Folded Reload
	je	.LBB0_99
# %bb.96:                               #   in Loop: Header=BB0_95 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r14
	ja	.LBB0_317
# %bb.97:                               #   in Loop: Header=BB0_95 Depth=2
.Ltmp47:
	movq	%r14, %rdi
	callq	_Znwm
.Ltmp48:
# %bb.98:                               #   in Loop: Header=BB0_95 Depth=2
	movq	%rax, 512(%rsp)
	movq	%rax, 520(%rsp)
	movq	208(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 528(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	memmove@PLT
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_99:                               #   in Loop: Header=BB0_95 Depth=2
	movq	%r15, 528(%rsp)
	movq	%r15, %rbx
.LBB0_100:                              #   in Loop: Header=BB0_95 Depth=2
	movq	%rbx, 520(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 480(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 496(%rsp)
	cmpq	%rbp, 88(%rsp)                  # 8-byte Folded Reload
	je	.LBB0_104
# %bb.101:                              #   in Loop: Header=BB0_95 Depth=2
	movq	128(%rsp), %rbx                 # 8-byte Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbx
	ja	.LBB0_319
# %bb.102:                              #   in Loop: Header=BB0_95 Depth=2
.Ltmp53:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp54:
# %bb.103:                              #   in Loop: Header=BB0_95 Depth=2
	movq	%rax, 480(%rsp)
	movq	%rax, 488(%rsp)
	movq	%rbx, %rdx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 496(%rsp)
	movq	%rax, %rdi
	movq	%rbp, %rsi
	callq	memmove@PLT
	jmp	.LBB0_105
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_95 Depth=2
	movq	160(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 496(%rsp)
.LBB0_105:                              #   in Loop: Header=BB0_95 Depth=2
	movq	%rbx, 488(%rsp)
.Ltmp59:
	leaq	512(%rsp), %rdi
	leaq	480(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, 672(%rsp)                # 8-byte Spill
.Ltmp60:
# %bb.106:                              #   in Loop: Header=BB0_95 Depth=2
	movq	480(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_108
# %bb.107:                              #   in Loop: Header=BB0_95 Depth=2
	callq	_ZdlPv
.LBB0_108:                              #   in Loop: Header=BB0_95 Depth=2
	movq	512(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_110
# %bb.109:                              #   in Loop: Header=BB0_95 Depth=2
	callq	_ZdlPv
.LBB0_110:                              #   in Loop: Header=BB0_95 Depth=2
	xorl	%edi, %edi
	leaq	1136(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	1136(%rsp), %xmm0               # AlignMOV convert to UnAlignMOV 
	vpsubq	1152(%rsp), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %rcx
	addq	%rax, %rcx
	vcvtsi2sd	%rcx, %xmm4, %xmm0
	cmpl	$5, %r12d
	jne	.LBB0_94
# %bb.111:                              #   in Loop: Header=BB0_95 Depth=2
	vmovupd	%xmm0, 688(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r12d
	jne	.LBB0_95
.LBB0_112:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1520(%rsp), %rsi
	callq	clock_gettime
	movl	28(%rsp), %edi                  # 4-byte Reload
	callq	omp_set_num_threads
	movq	$0, 136(%rsp)
	leaq	352(%rsp), %rbp
	movq	%rbp, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined., %edx
	movl	$4, %esi
	movq	216(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rcx
	leaq	136(%rsp), %r12
	movq	%r12, %r8
	leaq	256(%rsp), %r13
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	1504(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	movq	%rbp, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	192(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 192(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 144(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	200(%rsp), %rcx
	subq	152(%rsp), %rcx
	movq	%rcx, 656(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	movq	%rbp, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	192(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 192(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 144(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	200(%rsp), %rcx
	subq	152(%rsp), %rcx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	movq	%rbp, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	192(%rsp), %rsi
	movq	%rsi, %rbp
	callq	clock_gettime
	imulq	$1000000000, 192(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 144(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	200(%rsp), %rcx
	subq	152(%rsp), %rcx
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	leaq	352(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	imulq	$1000000000, 192(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 144(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	200(%rsp), %rcx
	subq	152(%rsp), %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	leaq	352(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..1, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	%r13, %r9
	movq	184(%rsp), %r12                 # 8-byte Reload
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	imulq	$1000000000, 192(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 144(%rsp), %rbx   # imm = 0xC4653600
	addq	%rax, %rbx
	addq	200(%rsp), %rbx
	subq	152(%rsp), %rbx
	xorl	%edi, %edi
	leaq	1488(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 448(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 464(%rsp)
	cmpq	%r12, 344(%rsp)                 # 8-byte Folded Reload
	je	.LBB0_116
# %bb.113:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r14
	ja	.LBB0_329
# %bb.114:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp62:
	movq	%r14, %rdi
	callq	_Znwm
.Ltmp63:
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	160(%rsp), %rbp                 # 8-byte Reload
# %bb.115:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 448(%rsp)
	movq	%rax, 456(%rsp)
	movq	208(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r15
	movq	%r15, 464(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	memmove@PLT
	jmp	.LBB0_117
	.p2align	4, 0x90
.LBB0_116:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%r15, 464(%rsp)
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	160(%rsp), %rbp                 # 8-byte Reload
.LBB0_117:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%r15, 456(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 416(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 432(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movq	%rbx, 848(%rsp)                 # 8-byte Spill
	je	.LBB0_121
# %bb.118:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbp                 # 8-byte Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	leaq	64(%rsp), %r14
	leaq	32(%rsp), %r15
	ja	.LBB0_331
# %bb.119:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp68:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp69:
# %bb.120:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 416(%rsp)
	movq	%rax, 424(%rsp)
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 432(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_122
	.p2align	4, 0x90
.LBB0_121:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbp, 432(%rsp)
	movq	%rbp, %rbx
	leaq	64(%rsp), %r14
	leaq	32(%rsp), %r15
.LBB0_122:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 424(%rsp)
.Ltmp74:
	leaq	448(%rsp), %rdi
	leaq	416(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp75:
# %bb.123:                              #   in Loop: Header=BB0_12 Depth=1
	movq	416(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_125:                              #   in Loop: Header=BB0_12 Depth=1
	movq	448(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_127:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	944(%rsp), %rsi
	callq	clock_gettime
	movq	264(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r12, %rbp
	je	.LBB0_131
# %bb.128:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_321
# %bb.129:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp77:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp78:
# %bb.130:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_132
	.p2align	4, 0x90
.LBB0_131:                              #   in Loop: Header=BB0_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB0_132:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB0_136
# %bb.133:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB0_323
# %bb.134:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp79:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp80:
# %bb.135:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB0_137
	.p2align	4, 0x90
.LBB0_136:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 48(%rsp)
.LBB0_137:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp81:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp82:
# %bb.138:                              #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_140:                              #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_142
# %bb.141:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_142:                              #   in Loop: Header=BB0_12 Depth=1
	movq	264(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r12, %rbp
	je	.LBB0_146
# %bb.143:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_321
# %bb.144:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp83:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp84:
# %bb.145:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_147
	.p2align	4, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB0_147:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB0_151
# %bb.148:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB0_323
# %bb.149:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp85:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp86:
# %bb.150:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB0_152
	.p2align	4, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 48(%rsp)
.LBB0_152:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp87:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp88:
# %bb.153:                              #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_155
# %bb.154:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_155:                              #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_157
# %bb.156:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_157:                              #   in Loop: Header=BB0_12 Depth=1
	movq	264(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r12, %rbp
	je	.LBB0_161
# %bb.158:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_321
# %bb.159:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp89:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp90:
# %bb.160:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_162
	.p2align	4, 0x90
.LBB0_161:                              #   in Loop: Header=BB0_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB0_162:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB0_166
# %bb.163:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB0_323
# %bb.164:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp91:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp92:
# %bb.165:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB0_167
	.p2align	4, 0x90
.LBB0_166:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 48(%rsp)
.LBB0_167:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp93:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp94:
# %bb.168:                              #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_170:                              #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_172
# %bb.171:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_172:                              #   in Loop: Header=BB0_12 Depth=1
	movq	264(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r12, %rbp
	je	.LBB0_176
# %bb.173:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_321
# %bb.174:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp95:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp96:
# %bb.175:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_177
	.p2align	4, 0x90
.LBB0_176:                              #   in Loop: Header=BB0_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB0_177:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB0_181
# %bb.178:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB0_323
# %bb.179:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp97:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp98:
# %bb.180:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB0_182
	.p2align	4, 0x90
.LBB0_181:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 48(%rsp)
.LBB0_182:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp99:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp100:
# %bb.183:                              #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_185
# %bb.184:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_185:                              #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_187
# %bb.186:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_187:                              #   in Loop: Header=BB0_12 Depth=1
	movq	264(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r12, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r12, %rbp
	je	.LBB0_191
# %bb.188:                              #   in Loop: Header=BB0_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_321
# %bb.189:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp101:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp102:
# %bb.190:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB0_192
	.p2align	4, 0x90
.LBB0_191:                              #   in Loop: Header=BB0_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB0_192:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 88(%rsp)                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	160(%rsp), %rbp                 # 8-byte Reload
	je	.LBB0_196
# %bb.193:                              #   in Loop: Header=BB0_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB0_323
# %bb.194:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp107:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp108:
# %bb.195:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memmove@PLT
	jmp	.LBB0_197
	.p2align	4, 0x90
.LBB0_196:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbp, 48(%rsp)
.LBB0_197:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbp, 40(%rsp)
.Ltmp113:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 128(%rsp)                # 8-byte Spill
.Ltmp114:
# %bb.198:                              #   in Loop: Header=BB0_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_200
# %bb.199:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_200:                              #   in Loop: Header=BB0_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	movq	216(%rsp), %r15                 # 8-byte Reload
	je	.LBB0_202
# %bb.201:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
.LBB0_202:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	928(%rsp), %rsi
	callq	clock_gettime
	movq	928(%rsp), %rcx
	movq	936(%rsp), %rax
	subq	944(%rsp), %rcx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	subq	952(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	616(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbp
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_215
# %bb.203:                              #   in Loop: Header=BB0_12 Depth=1
	movq	792(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r12,%rdx,8), %rax
	cmpq	%rbx, %rax
	setae	%r9b
	leaq	(%rbx,%rdx,8), %rcx
	cmpq	%r12, %rcx
	setae	%r10b
	cmpq	%rbp, %rax
	setb	%al
	leaq	(,%rdx,8), %rsi
	addq	%rbp, %rsi
	cmpq	%r12, %rsi
	setb	%dil
	cmpq	%r13, %rcx
	setb	%cl
	leaq	(,%rdx,8), %rdx
	addq	%r13, %rdx
	cmpq	%rbx, %rdx
	setb	%r8b
	cmpq	%rbp, %rdx
	setb	%dl
	cmpq	%r13, %rsi
	setb	%sil
	testb	%r10b, %r9b
	jne	.LBB0_209
# %bb.204:                              #   in Loop: Header=BB0_12 Depth=1
	orb	%dil, %al
	je	.LBB0_209
# %bb.205:                              #   in Loop: Header=BB0_12 Depth=1
	orb	%r8b, %cl
	je	.LBB0_209
# %bb.206:                              #   in Loop: Header=BB0_12 Depth=1
	orb	%sil, %dl
	je	.LBB0_209
# %bb.207:                              #   in Loop: Header=BB0_12 Depth=1
	cmpl	$13, 16(%rsp)                   # 4-byte Folded Reload
	jb	.LBB0_211
# %bb.208:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	600(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_215
	.p2align	4, 0x90
.LBB0_209:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_210:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%r13,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB0_210
	jmp	.LBB0_215
.LBB0_211:                              #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_214
	.p2align	4, 0x90
.LBB0_212:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r12,%rax,8), %ymm0
	vmovups	%ymm0, (%rbx,%rax,8)
	vmovupd	(%r13,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB0_212
# %bb.213:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	je	.LBB0_215
	.p2align	4, 0x90
.LBB0_214:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%r13,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB0_214
	.p2align	4, 0x90
.LBB0_215:                              #   in Loop: Header=BB0_12 Depth=1
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	vzeroupper
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	1472(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	240(%rsp), %r12
	movq	%r12, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	224(%rsp), %r13
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 224(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 240(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	232(%rsp), %rcx
	subq	248(%rsp), %rcx
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 224(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 240(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	232(%rsp), %rcx
	subq	248(%rsp), %rcx
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 224(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 240(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	232(%rsp), %rcx
	subq	248(%rsp), %rcx
	movq	%rcx, 832(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 224(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 240(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	232(%rsp), %rcx
	subq	248(%rsp), %rcx
	movq	%rcx, 824(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 344(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 224(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 240(%rsp), %r13   # imm = 0xC4653600
	addq	%rax, %r13
	addq	232(%rsp), %r13
	subq	248(%rsp), %r13
	xorl	%edi, %edi
	leaq	1456(%rsp), %rsi
	callq	clock_gettime
	movq	616(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbp
	testl	%r14d, %r14d
	je	.LBB0_218
# %bb.216:                              #   in Loop: Header=BB0_12 Depth=1
	cmpl	$13, %r14d
	jb	.LBB0_219
# %bb.217:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%r12, %rdi
	movq	184(%rsp), %rsi                 # 8-byte Reload
	movq	600(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_225
	.p2align	4, 0x90
.LBB0_218:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1200(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	400(%rsp), %r15
	movq	%r15, %rsi
	callq	clock_gettime
	movq	608(%rsp), %rbx                 # 8-byte Reload
	leaq	960(%rsp), %r14
	jmp	.LBB0_233
	.p2align	4, 0x90
.LBB0_219:                              #   in Loop: Header=BB0_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_223
# %bb.220:                              #   in Loop: Header=BB0_12 Depth=1
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_221:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%rdx,%rax,8), %ymm0
	vmovups	%ymm0, (%r12,%rax,8)
	vmovupd	(%rsi,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB0_221
# %bb.222:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB0_224
	jmp	.LBB0_225
.LBB0_223:                              #   in Loop: Header=BB0_12 Depth=1
	movq	184(%rsp), %rdx                 # 8-byte Reload
	movq	104(%rsp), %rsi                 # 8-byte Reload
	.p2align	4, 0x90
.LBB0_224:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rax,8)
	vmovsd	(%rsi,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB0_224
.LBB0_225:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	1200(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	400(%rsp), %r15
	movq	%r15, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	608(%rsp), %rbx                 # 8-byte Reload
	leaq	960(%rsp), %r14
	je	.LBB0_233
# %bb.226:                              #   in Loop: Header=BB0_12 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_230
# %bb.227:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_228:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbx, %rax
	jl	.LBB0_228
# %bb.229:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rcx
	cmpq	96(%rsp), %rbx                  # 8-byte Folded Reload
	jne	.LBB0_231
	jmp	.LBB0_233
.LBB0_230:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_231:                              #   in Loop: Header=BB0_12 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_232:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_232
.LBB0_233:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	400(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1056(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_241
# %bb.234:                              #   in Loop: Header=BB0_12 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_238
# %bb.235:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_236:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbx, %rax
	jl	.LBB0_236
# %bb.237:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rcx
	cmpq	96(%rsp), %rbx                  # 8-byte Folded Reload
	jne	.LBB0_239
	jmp	.LBB0_241
	.p2align	4, 0x90
.LBB0_238:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_239:                              #   in Loop: Header=BB0_12 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_240:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_240
.LBB0_241:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	400(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1040(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_249
# %bb.242:                              #   in Loop: Header=BB0_12 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_246
# %bb.243:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_244:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbx, %rax
	jl	.LBB0_244
# %bb.245:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rcx
	cmpq	96(%rsp), %rbx                  # 8-byte Folded Reload
	jne	.LBB0_247
	jmp	.LBB0_249
	.p2align	4, 0x90
.LBB0_246:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_247:                              #   in Loop: Header=BB0_12 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_248:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_248
.LBB0_249:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	400(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1024(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_257
# %bb.250:                              #   in Loop: Header=BB0_12 Depth=1
	testq	%rbx, %rbx
	je	.LBB0_254
# %bb.251:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_252:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbx, %rax
	jl	.LBB0_252
# %bb.253:                              #   in Loop: Header=BB0_12 Depth=1
	movq	%rbx, %rcx
	cmpq	96(%rsp), %rbx                  # 8-byte Folded Reload
	jne	.LBB0_255
	jmp	.LBB0_257
	.p2align	4, 0x90
.LBB0_254:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%ecx, %ecx
.LBB0_255:                              #   in Loop: Header=BB0_12 Depth=1
	movq	96(%rsp), %rax                  # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB0_256:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB0_256
.LBB0_257:                              #   in Loop: Header=BB0_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	400(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1008(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r15, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_262
# %bb.258:                              #   in Loop: Header=BB0_12 Depth=1
	testq	%rbx, %rbx
	movq	96(%rsp), %rcx                  # 8-byte Reload
	leaq	1408(%rsp), %r15
	je	.LBB0_263
# %bb.259:                              #   in Loop: Header=BB0_12 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_260:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbp,%rax,8), %ymm1
	vfmadd231pd	(%r12,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rbx, %rax
	jl	.LBB0_260
# %bb.261:                              #   in Loop: Header=BB0_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rbx, %rax
	cmpq	%rcx, %rbx
	jne	.LBB0_264
	jmp	.LBB0_265
	.p2align	4, 0x90
.LBB0_262:                              #   in Loop: Header=BB0_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	leaq	1408(%rsp), %r15
	jmp	.LBB0_265
	.p2align	4, 0x90
.LBB0_263:                              #   in Loop: Header=BB0_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_264:                              #   Parent Loop BB0_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbp,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r12,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB0_264
.LBB0_265:                              #   in Loop: Header=BB0_12 Depth=1
	vmovsd	%xmm1, 112(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	400(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 992(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1440(%rsp), %rsi
	callq	clock_gettime
.Ltmp116:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
.Ltmp117:
	leaq	1648(%rsp), %rbx
	leaq	1616(%rsp), %rbp
	leaq	1584(%rsp), %r12
# %bb.266:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp118:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp119:
# %bb.267:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp120:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp121:
# %bb.268:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp122:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
.Ltmp123:
# %bb.269:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp124:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	896(%rsp), %rdi
	callq	mpfr_init2
.Ltmp125:
# %bb.270:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp126:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	864(%rsp), %rdi
	callq	mpfr_init2
.Ltmp127:
# %bb.271:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp128:
	movq	%r12, %rdi
	movq	%r14, %rsi
	vmovq	856(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp129:
# %bb.272:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp130:
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp131:
# %bb.273:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp132:
	movq	%r12, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp133:
# %bb.274:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp134:
	leaq	1168(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp135:
# %bb.275:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp136:
	movq	%r15, %rdi
	movq	%r14, %rsi
	vmovq	672(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp137:
# %bb.276:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp138:
	movq	%r15, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp139:
# %bb.277:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp140:
	movq	%r15, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp141:
# %bb.278:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp142:
	leaq	1376(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp143:
# %bb.279:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp144:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	vmovq	344(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp145:
# %bb.280:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp146:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp147:
# %bb.281:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp148:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp149:
# %bb.282:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp150:
	leaq	1280(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp151:
# %bb.283:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp152:
	movq	%rbp, %rdi
	movq	%r14, %rsi
	vmovq	112(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp153:
# %bb.284:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp154:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp155:
# %bb.285:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp156:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp157:
# %bb.286:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp158:
	leaq	1248(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp159:
# %bb.287:                              #   in Loop: Header=BB0_12 Depth=1
	vmovq	136(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp160:
	leaq	896(%rsp), %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp161:
# %bb.288:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp162:
	leaq	896(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp163:
# %bb.289:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp164:
	leaq	896(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp165:
# %bb.290:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp166:
	leaq	1344(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	896(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp167:
# %bb.291:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp168:
	leaq	864(%rsp), %rdi
	movq	%r14, %rsi
	vmovq	128(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp169:
# %bb.292:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp170:
	leaq	864(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp171:
# %bb.293:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp172:
	leaq	864(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp173:
# %bb.294:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp174:
	leaq	1312(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	864(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp175:
# %bb.295:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp176:
	movq	%r15, %rdi
	callq	mpfr_clear
.Ltmp177:
# %bb.296:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp178:
	movq	%rbx, %rdi
	callq	mpfr_clear
.Ltmp179:
# %bb.297:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp180:
	movq	%rbp, %rdi
	callq	mpfr_clear
.Ltmp181:
# %bb.298:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp182:
	movq	%r12, %rdi
	callq	mpfr_clear
.Ltmp183:
# %bb.299:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp184:
	leaq	896(%rsp), %rdi
	callq	mpfr_clear
.Ltmp185:
# %bb.300:                              #   in Loop: Header=BB0_12 Depth=1
.Ltmp186:
	leaq	864(%rsp), %rdi
	callq	mpfr_clear
.Ltmp187:
# %bb.301:                              #   in Loop: Header=BB0_12 Depth=1
	imulq	$1000000000, 208(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 88(%rsp)                  # 8-byte Folded Spill
	vmovdqu	1056(%rsp), %xmm0               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vmovdqu	1040(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm1, %rcx
	imulq	$1000000000, %rcx, %rcx         # imm = 0x3B9ACA00
	vmovdqu	1024(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm2, %rdx
	imulq	$1000000000, %rdx, %rdx         # imm = 0x3B9ACA00
	vmovdqu	1008(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm3, %rsi
	imulq	$1000000000, %rsi, %rsi         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %r15
	addq	%rax, %r15
	vpextrq	$1, %xmm1, %r12
	vpextrq	$1, %xmm2, %rbx
	addq	%rcx, %r12
	addq	%rdx, %rbx
	vpextrq	$1, %xmm3, %rbp
	addq	%rsi, %rbp
	vmovdqu	992(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	vpextrq	$1, %xmm0, %r14
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	addq	%rax, %r14
	movq	736(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.302:                              #   in Loop: Header=BB0_12 Depth=1
	callq	_ZdlPv
	jmp	.LBB0_11
.LBB0_303:
	vpxor	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm5, %xmm5, %xmm5
	jmp	.LBB0_305
.LBB0_304:
	vunpcklpd	%xmm1, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm1[0]
	vmovupd	720(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	704(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm3, %ymm1, %ymm1
	movq	184(%rsp), %r15                 # 8-byte Reload
	movq	104(%rsp), %r14                 # 8-byte Reload
.LBB0_305:
	movq	376(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rcx,4), %eax
	vmovd	%eax, %xmm2
	vpinsrd	$1, %ecx, %xmm2, %xmm2
	vcvtdq2pd	%xmm2, %xmm2
	vpermpd	$85, %ymm2, %ymm3               # ymm3 = ymm2[1,1,1,1]
	vbroadcastsd	.LCPI0_0(%rip), %ymm4   # ymm4 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vdivpd	%ymm3, %ymm4, %ymm3
	movq	776(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vdivpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	vmulpd	%ymm3, %ymm1, %ymm1
	vmovupd	%ymm1, (%rax)
	vmovupd	%xmm0, 32(%rax)
	vdivsd	%xmm2, %xmm5, %xmm0
	vmovsd	%xmm0, 48(%rax)
	movslq	%ecx, %rbx
.Ltmp189:
	leaq	1168(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp190:
# %bb.306:
.Ltmp191:
	leaq	1376(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp192:
# %bb.307:
.Ltmp193:
	leaq	1344(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp194:
# %bb.308:
.Ltmp195:
	leaq	1312(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp196:
# %bb.309:
.Ltmp197:
	leaq	1280(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp198:
# %bb.310:
.Ltmp199:
	leaq	1248(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp200:
# %bb.311:
	movq	768(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
.Ltmp201:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp202:
# %bb.312:
	testq	%r14, %r14
	je	.LBB0_314
# %bb.313:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB0_314:
	testq	%r15, %r15
	je	.LBB0_316
# %bb.315:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB0_316:
	addq	$1688, %rsp                     # imm = 0x698
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
.LBB0_317:
	.cfi_def_cfa_offset 1744
.Ltmp50:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp51:
# %bb.318:
.LBB0_319:
.Ltmp56:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp57:
# %bb.320:
.LBB0_321:
.Ltmp104:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp105:
# %bb.322:
.LBB0_323:
.Ltmp110:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp111:
# %bb.324:
.LBB0_325:
.Ltmp35:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp36:
# %bb.326:
.LBB0_327:
.Ltmp41:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp42:
# %bb.328:
.LBB0_329:
.Ltmp65:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp66:
# %bb.330:
.LBB0_331:
.Ltmp71:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp72:
# %bb.332:
.LBB0_333:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB0_334:
.Ltmp2:
	movq	%rax, %rbx
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_384
	jmp	.LBB0_386
.LBB0_335:
.Ltmp203:
	movq	%rax, %rbx
	jmp	.LBB0_382
.LBB0_336:
.Ltmp70:
	jmp	.LBB0_359
.LBB0_337:
.Ltmp64:
	jmp	.LBB0_378
.LBB0_338:
.Ltmp40:
	jmp	.LBB0_364
.LBB0_339:
.Ltmp34:
	jmp	.LBB0_378
.LBB0_340:
.Ltmp76:
	movq	%rax, %rbx
	movq	416(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_360
# %bb.341:
	callq	_ZdlPv
	jmp	.LBB0_360
.LBB0_342:
.Ltmp46:
	movq	%rax, %rbx
	movq	544(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_365
# %bb.343:
	callq	_ZdlPv
	jmp	.LBB0_365
.LBB0_344:
.Ltmp5:
	jmp	.LBB0_378
.LBB0_345:
.Ltmp8:
	jmp	.LBB0_378
.LBB0_346:
.Ltmp109:
	jmp	.LBB0_369
.LBB0_347:
.Ltmp103:
	jmp	.LBB0_378
.LBB0_348:
.Ltmp26:
	jmp	.LBB0_378
.LBB0_349:
.Ltmp115:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_370
# %bb.350:
	callq	_ZdlPv
	jmp	.LBB0_370
.LBB0_351:
.Ltmp55:
	jmp	.LBB0_374
.LBB0_352:
.Ltmp49:
	jmp	.LBB0_378
.LBB0_353:
.Ltmp61:
	movq	%rax, %rbx
	movq	480(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_375
# %bb.354:
	callq	_ZdlPv
	jmp	.LBB0_375
.LBB0_355:
.Ltmp188:
	jmp	.LBB0_378
.LBB0_356:
.Ltmp31:
	jmp	.LBB0_378
.LBB0_357:
.Ltmp19:
	jmp	.LBB0_378
.LBB0_358:
.Ltmp73:
.LBB0_359:
	movq	%rax, %rbx
.LBB0_360:
	movq	448(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_366
	jmp	.LBB0_379
.LBB0_362:
.Ltmp67:
	jmp	.LBB0_378
.LBB0_363:
.Ltmp43:
.LBB0_364:
	movq	%rax, %rbx
.LBB0_365:
	movq	576(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_379
	jmp	.LBB0_366
.LBB0_367:
.Ltmp37:
	jmp	.LBB0_378
.LBB0_368:
.Ltmp112:
.LBB0_369:
	movq	%rax, %rbx
.LBB0_370:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_366
	jmp	.LBB0_379
.LBB0_372:
.Ltmp106:
	jmp	.LBB0_378
.LBB0_373:
.Ltmp58:
.LBB0_374:
	movq	%rax, %rbx
.LBB0_375:
	movq	512(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_379
.LBB0_366:
	callq	_ZdlPv
	jmp	.LBB0_379
.LBB0_377:
.Ltmp52:
.LBB0_378:
	movq	%rax, %rbx
.LBB0_379:
	movq	736(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_381
# %bb.380:
	callq	_ZdlPv
.LBB0_381:
	movq	352(%rsp), %r14
.LBB0_382:
	testq	%r14, %r14
	jne	.LBB0_385
# %bb.383:
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_386
.LBB0_384:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_385:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	256(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_384
.LBB0_386:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .Lfunc_end0-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.cfi_endproc
	.section	.gcc_except_table._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
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
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp18-.Ltmp11                #   Call between .Ltmp11 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp25-.Ltmp20                #   Call between .Ltmp20 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp30-.Ltmp27                #   Call between .Ltmp27 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin0          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp38-.Ltmp33                #   Call between .Ltmp33 and .Ltmp38
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp44-.Ltmp39                #   Call between .Ltmp39 and .Ltmp44
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin0          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp53-.Ltmp48                #   Call between .Ltmp48 and .Ltmp53
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp59-.Ltmp54                #   Call between .Ltmp54 and .Ltmp59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp68-.Ltmp63                #   Call between .Ltmp63 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp74-.Ltmp69                #   Call between .Ltmp69 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 38 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 40 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin0          # >> Call Site 41 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin0          # >> Call Site 42 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 43 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp107-.Ltmp102              #   Call between .Ltmp102 and .Ltmp107
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp113-.Ltmp108              #   Call between .Ltmp108 and .Ltmp113
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp187-.Ltmp116              #   Call between .Ltmp116 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin0         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp202-.Ltmp189              #   Call between .Ltmp189 and .Ltmp202
	.uleb128 .Ltmp203-.Lfunc_begin0         #     jumps to .Ltmp203
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 53 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 54 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 57 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 58 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin0          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 59 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 60 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 61 <<
	.uleb128 .Lfunc_end0-.Ltmp72            #   Call between .Ltmp72 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
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
	je	.LBB1_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB1_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB1_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB1_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB1_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_17:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB1_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB1_14
	jmp	.LBB1_19
.LBB1_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB1_5
	jmp	.LBB1_6
.LBB1_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB1_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB1_15:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB1_15
.LBB1_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB1_6:
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
	je	.LBB1_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB1_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB1_11
.LBB1_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB1_10
.LBB1_11:
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
.Lfunc_end1:
	.size	.omp_outlined., .Lfunc_end1-.omp_outlined.
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
.Lfunc_end2:
	.size	.omp.reduction.reduction_func, .Lfunc_end2-.omp.reduction.reduction_func
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
	je	.LBB3_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB3_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB3_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB3_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB3_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB3_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB3_14
	jmp	.LBB3_19
.LBB3_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB3_5
	jmp	.LBB3_6
.LBB3_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB3_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB3_15:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB3_15
.LBB3_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB3_6:
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
	movl	$.omp.reduction.reduction_func.2, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB3_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB3_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB3_11
.LBB3_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB3_10
.LBB3_11:
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
.Lfunc_end3:
	.size	.omp_outlined..1, .Lfunc_end3-.omp_outlined..1
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
.Lfunc_end4:
	.size	.omp.reduction.reduction_func.2, .Lfunc_end4-.omp.reduction.reduction_func.2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.LCPI5_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_1:
	.zero	16
	.section	.text._Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.p2align	4, 0x90
	.type	_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,@function
_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii: # 
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
	subq	$1672, %rsp                     # imm = 0x688
	.cfi_def_cfa_offset 1728
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movl	%r8d, 360(%rsp)                 # 4-byte Spill
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	movq	%rdx, 664(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 344(%rsp)                 # 8-byte Spill
	movl	%edi, %r14d
	leaq	912(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
	leaq	1104(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	1072(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	1040(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	leaq	1008(%rsp), %r12
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
	leaq	976(%rsp), %r13
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	912(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
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
	testl	%r14d, %r14d
	js	.LBB5_312
# %bb.1:
	movslq	%r14d, %rax
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	je	.LBB5_4
# %bb.2:
	leaq	(,%rax,8), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rbp
	callq	_Znwm
	movq	%rax, %r15
	movq	%rax, 208(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 224(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r14d
	jne	.LBB5_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB5_6
.LBB5_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 208(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 224(%rsp)
	vmovupd	%xmm0, 288(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 304(%rsp)
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	xorl	%edi, %edi
	jmp	.LBB5_9
.LBB5_5:
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB5_6:
	movq	%rbp, 216(%rsp)
.Ltmp204:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp205:
# %bb.7:
	movq	%rax, %r13
	movq	%rax, 288(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %rbp
	addq	%r13, %rbp
	leaq	8(%r13), %rdi
	movq	%rbp, 304(%rsp)
	movq	$0, (%r13)
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_9
# %bb.8:
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rbp, %rdi
.LBB5_9:
	movq	%rdi, 296(%rsp)
	cmpl	$0, 344(%rsp)                   # 4-byte Folded Reload
	je	.LBB5_276
# %bb.10:
	movq	%rax, %r14
	shlq	$5, %r14
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r12d
	leaq	(,%rax,8), %rdx
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	movl	%r12d, %edx
	andl	$-4, %edx
	movl	%r12d, %esi
	andl	$-8, %esi
	movq	%rsi, 720(%rsp)                 # 8-byte Spill
	leaq	-1(%r12), %rsi
	movq	%rsi, 688(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rsi
	andq	$-4, %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%rax, 704(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%ecx, %eax
	incl	%eax
	movq	%rax, 696(%rsp)                 # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movq	%rsi, 560(%rsp)                 # 8-byte Spill
	andq	$-64, %rsi
	movq	%rsi, 800(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 624(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 608(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 592(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 576(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%esi, %esi
	movq	%r14, 712(%rsp)                 # 8-byte Spill
	movq	%r12, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_11:                               #   in Loop: Header=BB5_12 Depth=1
	vcvtsi2sdq	792(%rsp), %xmm4, %xmm8 # 8-byte Folded Reload
	vcvtsi2sdq	784(%rsp), %xmm4, %xmm0 # 8-byte Folded Reload
	vcvtsi2sdq	776(%rsp), %xmm4, %xmm2 # 8-byte Folded Reload
	vcvtsi2sdq	768(%rsp), %xmm4, %xmm3 # 8-byte Folded Reload
	vcvtsi2sdq	760(%rsp), %xmm4, %xmm12 # 8-byte Folded Reload
	vcvtsi2sdq	96(%rsp), %xmm4, %xmm13 # 8-byte Folded Reload
	vcvtsi2sdq	280(%rsp), %xmm4, %xmm14 # 8-byte Folded Reload
	vcvtsi2sdq	752(%rsp), %xmm4, %xmm15 # 8-byte Folded Reload
	vcvtsi2sdq	744(%rsp), %xmm4, %xmm9 # 8-byte Folded Reload
	vcvtsi2sdq	736(%rsp), %xmm4, %xmm1 # 8-byte Folded Reload
	vcvtsi2sdq	728(%rsp), %xmm4, %xmm10 # 8-byte Folded Reload
	vcvtsi2sd	%r8, %xmm4, %xmm11
	vcvtsi2sd	%rbp, %xmm4, %xmm4
	vcvtsi2sd	%rbx, %xmm5, %xmm5
	vcvtsi2sd	%r12, %xmm6, %xmm6
	vcvtsi2sd	%r14, %xmm7, %xmm7
	vminsd	%xmm0, %xmm8, %xmm8
	vminsd	%xmm3, %xmm2, %xmm0
	vminsd	%xmm0, %xmm8, %xmm0
	vminsd	%xmm0, %xmm12, %xmm0
	vmovupd	576(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	%xmm0, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm0[0]
	vmovupd	1216(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddpd	%xmm3, %xmm0, %xmm3
	vmovupd	1248(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm2, %xmm13, %xmm2
	vminsd	%xmm14, %xmm15, %xmm0
	vminsd	%xmm1, %xmm9, %xmm1
	vminsd	%xmm1, %xmm0, %xmm0
	vminsd	%xmm0, %xmm10, %xmm0
	vmovupd	1232(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm1
	vminsd	%xmm4, %xmm11, %xmm0
	vminsd	%xmm0, %xmm5, %xmm0
	vminsd	%xmm0, %xmm6, %xmm0
	vminsd	%xmm0, %xmm7, %xmm0
	vmovupd	1264(%rsp), %xmm5               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm5, %xmm0, %xmm5
	movl	364(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	cmpl	344(%rsp), %esi                 # 4-byte Folded Reload
	movq	712(%rsp), %r14                 # 8-byte Reload
	movq	144(%rsp), %r12                 # 8-byte Reload
	je	.LBB5_277
.LBB5_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_16 Depth 2
                                        #     Child Loop BB5_19 Depth 2
                                        #     Child Loop BB5_24 Depth 2
                                        #     Child Loop BB5_34 Depth 2
                                        #     Child Loop BB5_39 Depth 2
                                        #       Child Loop BB5_42 Depth 3
                                        #       Child Loop BB5_45 Depth 3
                                        #     Child Loop BB5_66 Depth 2
                                        #     Child Loop BB5_181 Depth 2
                                        #     Child Loop BB5_184 Depth 2
                                        #     Child Loop BB5_187 Depth 2
                                        #     Child Loop BB5_194 Depth 2
                                        #     Child Loop BB5_197 Depth 2
                                        #     Child Loop BB5_201 Depth 2
                                        #     Child Loop BB5_205 Depth 2
                                        #     Child Loop BB5_209 Depth 2
                                        #     Child Loop BB5_213 Depth 2
                                        #     Child Loop BB5_217 Depth 2
                                        #     Child Loop BB5_221 Depth 2
                                        #     Child Loop BB5_225 Depth 2
                                        #     Child Loop BB5_229 Depth 2
                                        #     Child Loop BB5_233 Depth 2
                                        #     Child Loop BB5_237 Depth 2
	vmovupd	%xmm3, 1216(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm1, 1232(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm2, 1248(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm5, 1264(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 640(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 656(%rsp)
.Ltmp207:
	leaq	640(%rsp), %rdi
	movl	%esi, 364(%rsp)                 # 4-byte Spill
	movl	360(%rsp), %edx                 # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp208:
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_20
# %bb.14:                               #   in Loop: Header=BB5_12 Depth=1
	movq	640(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	288(%rsp), %rdx
	cmpl	$4, 16(%rsp)                    # 4-byte Folded Reload
	movq	200(%rsp), %rbp                 # 8-byte Reload
	jb	.LBB5_17
# %bb.15:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_16:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rsi,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	incl	%edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	vmovsd	16(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rcx,%rsi,8)
	leal	2(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rdx,%rsi,8)
	vmovsd	24(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rcx,%rsi,8)
	leal	3(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rdx,%rsi,8)
	vmovsd	32(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	addl	$4, %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rdx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rbp
	jne	.LBB5_16
.LBB5_17:                               #   in Loop: Header=BB5_12 Depth=1
	cmpq	%r12, %rbp
	movq	704(%rsp), %r8                  # 8-byte Reload
	movq	696(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB5_20
# %bb.18:                               #   in Loop: Header=BB5_12 Depth=1
	movq	200(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdx,%rdi,8), %rdx
	movq	680(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB5_19:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rsi,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rdi,8)
	leal	(%rbx,%rdi), %ebp
	vmovsd	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB5_19
.LBB5_20:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp210:
	movq	%r14, %rdi
	callq	_Znam
.Ltmp211:
# %bb.21:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp213:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_Znam
.Ltmp214:
# %bb.22:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, %r12
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_29
# %bb.23:                               #   in Loop: Header=BB5_12 Depth=1
	movq	208(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	288(%rsp), %r14
	movq	%r12, %rbp
	movq	%r15, %rbx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB5_24:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp215:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp216:
# %bb.25:                               #   in Loop: Header=BB5_24 Depth=2
	movq	96(%rsp), %rax                  # 8-byte Reload
	vmovsd	(%rax,%r13,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp217:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp218:
# %bb.26:                               #   in Loop: Header=BB5_24 Depth=2
.Ltmp219:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp220:
# %bb.27:                               #   in Loop: Header=BB5_24 Depth=2
	vmovsd	(%r14,%r13,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp221:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp222:
# %bb.28:                               #   in Loop: Header=BB5_24 Depth=2
	incq	%r13
	addq	$32, %rbx
	addq	$32, %rbp
	cmpq	%r13, 144(%rsp)                 # 8-byte Folded Reload
	jne	.LBB5_24
.LBB5_29:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp224:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	1344(%rsp), %rdi
	callq	mpfr_init2
.Ltmp225:
# %bb.30:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp226:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	1344(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp227:
# %bb.31:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1408(%rsp), %rsi
	callq	clock_gettime
.Ltmp228:
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	leaq	1344(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp229:
# %bb.32:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1392(%rsp), %rsi
	callq	clock_gettime
	movq	1400(%rsp), %r14
	subq	1416(%rsp), %r14
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	144(%rsp), %rbx                 # 8-byte Reload
	je	.LBB5_37
# %bb.33:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, %rbp
	.p2align	4, 0x90
.LBB5_34:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp231:
	movq	%r15, %rdi
	callq	mpfr_clear
.Ltmp232:
# %bb.35:                               #   in Loop: Header=BB5_34 Depth=2
.Ltmp233:
	movq	%r12, %rdi
	callq	mpfr_clear
.Ltmp234:
# %bb.36:                               #   in Loop: Header=BB5_34 Depth=2
	addq	$32, %r15
	addq	$32, %r12
	decq	%rbp
	jne	.LBB5_34
.LBB5_37:                               #   in Loop: Header=BB5_12 Depth=1
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sd	%r14, %xmm12, %xmm0
	vmovupd	624(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovupd	%xmm1, 624(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	leaq	1584(%rsp), %rsi
	callq	clock_gettime
	movq	208(%rsp), %r15
	movq	288(%rsp), %r13
	movq	720(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB5_39
	.p2align	4, 0x90
.LBB5_38:                               #   in Loop: Header=BB5_39 Depth=2
	vmovupd	592(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 592(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	incl	%ebp
	cmpl	$5, %ebp
	je	.LBB5_49
.LBB5_39:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_42 Depth 3
                                        #       Child Loop BB5_45 Depth 3
	xorl	%edi, %edi
	leaq	1328(%rsp), %rsi
	callq	clock_gettime
	movq	16(%rsp), %rax                  # 8-byte Reload
	testl	%eax, %eax
	je	.LBB5_46
# %bb.40:                               #   in Loop: Header=BB5_39 Depth=2
	vxorpd	%xmm2, %xmm2, %xmm2
	cmpl	$8, %eax
	movq	800(%rsp), %rcx                 # 8-byte Reload
	jb	.LBB5_43
# %bb.41:                               #   in Loop: Header=BB5_39 Depth=2
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_42:                               #   Parent Loop BB5_12 Depth=1
                                        #     Parent Loop BB5_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	(%r15,%rax), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%r15,%rax), %xmm1             # xmm1 = mem[0],zero
	vfmadd132sd	(%r13,%rax), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	vfmadd231sd	8(%r13,%rax), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	16(%r15,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	16(%r13,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	24(%r15,%rax), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	24(%r13,%rax), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	32(%r15,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	32(%r13,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	40(%r15,%rax), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	40(%r13,%rax), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	48(%r15,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	48(%r13,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	56(%r15,%rax), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	56(%r13,%rax), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	addq	$64, %rax
	cmpq	%rax, %rcx
	jne	.LBB5_42
.LBB5_43:                               #   in Loop: Header=BB5_39 Depth=2
	vmovapd	%xmm2, %xmm1
	cmpq	%rbx, %r14
	jae	.LBB5_47
# %bb.44:                               #   in Loop: Header=BB5_39 Depth=2
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB5_45:                               #   Parent Loop BB5_12 Depth=1
                                        #     Parent Loop BB5_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r13,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rbx
	jne	.LBB5_45
	jmp	.LBB5_47
	.p2align	4, 0x90
.LBB5_46:                               #   in Loop: Header=BB5_39 Depth=2
	vxorpd	%xmm1, %xmm1, %xmm1
.LBB5_47:                               #   in Loop: Header=BB5_39 Depth=2
	vmovsd	%xmm1, 352(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	1312(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	1312(%rsp), %xmm0               # AlignMOV convert to UnAlignMOV 
	vpsubq	1328(%rsp), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %rcx
	addq	%rax, %rcx
	vxorps	%xmm12, %xmm12, %xmm12
	vcvtsi2sd	%rcx, %xmm12, %xmm0
	testl	%ebp, %ebp
	jne	.LBB5_38
# %bb.48:                               #   in Loop: Header=BB5_39 Depth=2
	vmovupd	%xmm0, 592(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	incl	%ebp
	cmpl	$5, %ebp
	jne	.LBB5_39
.LBB5_49:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1568(%rsp), %rsi
	callq	clock_gettime
	movq	216(%rsp), %r14
	movq	%r14, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	%r14, %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 528(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 544(%rsp)
	subq	%r15, %rbp
	movq	%rbx, 232(%rsp)                 # 8-byte Spill
	je	.LBB5_53
# %bb.50:                               #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_304
# %bb.51:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp236:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp237:
# %bb.52:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 528(%rsp)
	movq	%rax, 536(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 544(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_54
	.p2align	4, 0x90
.LBB5_53:                               #   in Loop: Header=BB5_12 Depth=1
	leaq	(,%rbx,8), %rbx
	movq	%rbx, 544(%rsp)
.LBB5_54:                               #   in Loop: Header=BB5_12 Depth=1
	movq	296(%rsp), %rax
	movq	%rax, %r12
	subq	%r13, %r12
	sarq	$3, %r12
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rbx, 536(%rsp)
	movq	%rax, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 496(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 512(%rsp)
	subq	%r13, %rbx
	movq	%rbx, 136(%rsp)                 # 8-byte Spill
	je	.LBB5_58
# %bb.55:                               #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbx
	ja	.LBB5_306
# %bb.56:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp242:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp243:
	movq	%rbx, %rdx
# %bb.57:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 496(%rsp)
	movq	%rax, 504(%rsp)
	leaq	(%rax,%r12,8), %rbx
	movq	%rbx, 512(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_59
	.p2align	4, 0x90
.LBB5_58:                               #   in Loop: Header=BB5_12 Depth=1
	leaq	(,%r12,8), %rbx
	movq	%rbx, 512(%rsp)
.LBB5_59:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 504(%rsp)
.Ltmp248:
	leaq	528(%rsp), %rdi
	leaq	496(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
.Ltmp249:
# %bb.60:                               #   in Loop: Header=BB5_12 Depth=1
	movq	496(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_62:                               #   in Loop: Header=BB5_12 Depth=1
	movq	528(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_64
# %bb.63:                               #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_64:                               #   in Loop: Header=BB5_12 Depth=1
	vmovupd	608(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	592(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vmovupd	%xmm0, 608(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1552(%rsp), %rsi
	callq	clock_gettime
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movl	$5, %r12d
	jmp	.LBB5_66
	.p2align	4, 0x90
.LBB5_65:                               #   in Loop: Header=BB5_66 Depth=2
	vmovupd	576(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 576(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r12d
	je	.LBB5_83
.LBB5_66:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	leaq	1296(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 464(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 480(%rsp)
	cmpq	%r15, %r14
	je	.LBB5_70
# %bb.67:                               #   in Loop: Header=BB5_66 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_296
# %bb.68:                               #   in Loop: Header=BB5_66 Depth=2
.Ltmp251:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp252:
# %bb.69:                               #   in Loop: Header=BB5_66 Depth=2
	movq	%rax, 464(%rsp)
	movq	%rax, 472(%rsp)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 480(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_71
	.p2align	4, 0x90
.LBB5_70:                               #   in Loop: Header=BB5_66 Depth=2
	movq	280(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 480(%rsp)
.LBB5_71:                               #   in Loop: Header=BB5_66 Depth=2
	movq	%rbx, 472(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 432(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 448(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_75
# %bb.72:                               #   in Loop: Header=BB5_66 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_298
# %bb.73:                               #   in Loop: Header=BB5_66 Depth=2
.Ltmp257:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp258:
# %bb.74:                               #   in Loop: Header=BB5_66 Depth=2
	movq	%rax, 432(%rsp)
	movq	%rax, 440(%rsp)
	movq	%rbx, %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 448(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_76
	.p2align	4, 0x90
.LBB5_75:                               #   in Loop: Header=BB5_66 Depth=2
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 448(%rsp)
.LBB5_76:                               #   in Loop: Header=BB5_66 Depth=2
	movq	%rbx, 440(%rsp)
.Ltmp263:
	leaq	464(%rsp), %rdi
	leaq	432(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, 808(%rsp)                # 8-byte Spill
.Ltmp264:
# %bb.77:                               #   in Loop: Header=BB5_66 Depth=2
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_79
# %bb.78:                               #   in Loop: Header=BB5_66 Depth=2
	callq	_ZdlPv
.LBB5_79:                               #   in Loop: Header=BB5_66 Depth=2
	movq	464(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_81
# %bb.80:                               #   in Loop: Header=BB5_66 Depth=2
	callq	_ZdlPv
.LBB5_81:                               #   in Loop: Header=BB5_66 Depth=2
	xorl	%edi, %edi
	leaq	1280(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	1280(%rsp), %xmm0               # AlignMOV convert to UnAlignMOV 
	vpsubq	1296(%rsp), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %rcx
	addq	%rax, %rcx
	vcvtsi2sd	%rcx, %xmm2, %xmm0
	cmpl	$5, %r12d
	jne	.LBB5_65
# %bb.82:                               #   in Loop: Header=BB5_66 Depth=2
	vmovupd	%xmm0, 576(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r12d
	jne	.LBB5_66
.LBB5_83:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1536(%rsp), %rsi
	callq	clock_gettime
	movl	28(%rsp), %edi                  # 4-byte Reload
	callq	omp_set_num_threads
	movq	$0, 104(%rsp)
	leaq	288(%rsp), %r12
	movq	%r12, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..9, %edx
	movl	$4, %esi
	movq	144(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	1520(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 104(%rsp)
	xorl	%edi, %edi
	leaq	184(%rsp), %rsi
	callq	clock_gettime
	leaq	288(%rsp), %r12
	movq	%r12, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..11, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	168(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 168(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 184(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	176(%rsp), %rcx
	subq	192(%rsp), %rcx
	movq	%rcx, 792(%rsp)                 # 8-byte Spill
	movq	$0, 104(%rsp)
	xorl	%edi, %edi
	leaq	184(%rsp), %rsi
	callq	clock_gettime
	movq	%r12, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..11, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	168(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 168(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 184(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	176(%rsp), %rcx
	subq	192(%rsp), %rcx
	movq	%rcx, 784(%rsp)                 # 8-byte Spill
	movq	$0, 104(%rsp)
	xorl	%edi, %edi
	leaq	184(%rsp), %rsi
	callq	clock_gettime
	movq	%r12, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..11, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	leaq	208(%rsp), %r9
	movq	%r9, %r12
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	168(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 168(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 184(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	176(%rsp), %rcx
	subq	192(%rsp), %rcx
	movq	%rcx, 776(%rsp)                 # 8-byte Spill
	movq	$0, 104(%rsp)
	xorl	%edi, %edi
	leaq	184(%rsp), %rsi
	callq	clock_gettime
	leaq	288(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..11, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	168(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 168(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 184(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	176(%rsp), %rcx
	subq	192(%rsp), %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	movq	$0, 104(%rsp)
	xorl	%edi, %edi
	leaq	184(%rsp), %rsi
	callq	clock_gettime
	leaq	288(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..11, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	104(%rsp), %r8
	movq	%r12, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	168(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 168(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 184(%rsp), %rbx   # imm = 0xC4653600
	addq	%rax, %rbx
	addq	176(%rsp), %rbx
	subq	192(%rsp), %rbx
	xorl	%edi, %edi
	leaq	1504(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 400(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 416(%rsp)
	cmpq	%r15, %r14
	je	.LBB5_87
# %bb.84:                               #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	leaq	64(%rsp), %r12
	ja	.LBB5_308
# %bb.85:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp266:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp267:
# %bb.86:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 400(%rsp)
	movq	%rax, 408(%rsp)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r14
	movq	%r14, 416(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	movq	%r14, %rax
	movq	144(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB5_88
	.p2align	4, 0x90
.LBB5_87:                               #   in Loop: Header=BB5_12 Depth=1
	movq	280(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 416(%rsp)
	movq	144(%rsp), %r14                 # 8-byte Reload
	leaq	64(%rsp), %r12
.LBB5_88:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 408(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 368(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 384(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	movq	%rbx, 760(%rsp)                 # 8-byte Spill
	je	.LBB5_92
# %bb.89:                               #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbp                 # 8-byte Reload
	cmpq	%rax, %rbp
	ja	.LBB5_310
# %bb.90:                               #   in Loop: Header=BB5_12 Depth=1
.Ltmp272:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp273:
# %bb.91:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 368(%rsp)
	movq	%rax, 376(%rsp)
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 384(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_93
	.p2align	4, 0x90
.LBB5_92:                               #   in Loop: Header=BB5_12 Depth=1
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 384(%rsp)
.LBB5_93:                               #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 376(%rsp)
.Ltmp278:
	leaq	400(%rsp), %rdi
	leaq	368(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp279:
# %bb.94:                               #   in Loop: Header=BB5_12 Depth=1
	movq	368(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_96
# %bb.95:                               #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_96:                               #   in Loop: Header=BB5_12 Depth=1
	movq	400(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_98
# %bb.97:                               #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_98:                               #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	960(%rsp), %rsi
	callq	clock_gettime
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r15, %rbp
	je	.LBB5_102
# %bb.99:                               #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_300
# %bb.100:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp281:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp282:
# %bb.101:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_103
	.p2align	4, 0x90
.LBB5_102:                              #   in Loop: Header=BB5_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB5_103:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_107
# %bb.104:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_302
# %bb.105:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp283:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp284:
# %bb.106:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_108
	.p2align	4, 0x90
.LBB5_107:                              #   in Loop: Header=BB5_12 Depth=1
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 48(%rsp)
.LBB5_108:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp285:
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp286:
# %bb.109:                              #   in Loop: Header=BB5_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_111
# %bb.110:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_111:                              #   in Loop: Header=BB5_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_113
# %bb.112:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_113:                              #   in Loop: Header=BB5_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r15, %rbp
	je	.LBB5_117
# %bb.114:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_300
# %bb.115:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp287:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp288:
# %bb.116:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_118
	.p2align	4, 0x90
.LBB5_117:                              #   in Loop: Header=BB5_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB5_118:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_122
# %bb.119:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_302
# %bb.120:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp289:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp290:
# %bb.121:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_123
	.p2align	4, 0x90
.LBB5_122:                              #   in Loop: Header=BB5_12 Depth=1
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 48(%rsp)
.LBB5_123:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp291:
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp292:
# %bb.124:                              #   in Loop: Header=BB5_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_126
# %bb.125:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_126:                              #   in Loop: Header=BB5_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_128
# %bb.127:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_128:                              #   in Loop: Header=BB5_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r15, %rbp
	je	.LBB5_132
# %bb.129:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_300
# %bb.130:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp293:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp294:
# %bb.131:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_133
	.p2align	4, 0x90
.LBB5_132:                              #   in Loop: Header=BB5_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB5_133:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_137
# %bb.134:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_302
# %bb.135:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp295:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp296:
# %bb.136:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_138
	.p2align	4, 0x90
.LBB5_137:                              #   in Loop: Header=BB5_12 Depth=1
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 48(%rsp)
.LBB5_138:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp297:
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp298:
# %bb.139:                              #   in Loop: Header=BB5_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_141
# %bb.140:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_141:                              #   in Loop: Header=BB5_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_143
# %bb.142:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_143:                              #   in Loop: Header=BB5_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r15, %rbp
	je	.LBB5_147
# %bb.144:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_300
# %bb.145:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp299:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp300:
# %bb.146:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_148
	.p2align	4, 0x90
.LBB5_147:                              #   in Loop: Header=BB5_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB5_148:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	je	.LBB5_152
# %bb.149:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_302
# %bb.150:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp301:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp302:
# %bb.151:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	%rbx, %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memmove@PLT
	jmp	.LBB5_153
	.p2align	4, 0x90
.LBB5_152:                              #   in Loop: Header=BB5_12 Depth=1
	movq	120(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 48(%rsp)
.LBB5_153:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp303:
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp304:
# %bb.154:                              #   in Loop: Header=BB5_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_156
# %bb.155:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_156:                              #   in Loop: Header=BB5_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_158
# %bb.157:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_158:                              #   in Loop: Header=BB5_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	subq	%r15, %rbp
	je	.LBB5_162
# %bb.159:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB5_300
# %bb.160:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp305:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp306:
# %bb.161:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB5_163
	.p2align	4, 0x90
.LBB5_162:                              #   in Loop: Header=BB5_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 80(%rsp)
.LBB5_163:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, 72(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	cmpq	%r13, 96(%rsp)                  # 8-byte Folded Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	je	.LBB5_167
# %bb.164:                              #   in Loop: Header=BB5_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	136(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB5_302
# %bb.165:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp311:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp312:
# %bb.166:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	128(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 48(%rsp)
	movq	%rax, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memmove@PLT
	movq	%rbp, %rax
	jmp	.LBB5_168
	.p2align	4, 0x90
.LBB5_167:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 48(%rsp)
.LBB5_168:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rax, 40(%rsp)
.Ltmp317:
	movq	%r12, %rdi
	leaq	32(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	28(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 232(%rsp)                # 8-byte Spill
.Ltmp318:
# %bb.169:                              #   in Loop: Header=BB5_12 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_171
# %bb.170:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_171:                              #   in Loop: Header=BB5_12 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_173
# %bb.172:                              #   in Loop: Header=BB5_12 Depth=1
	callq	_ZdlPv
.LBB5_173:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	944(%rsp), %rsi
	callq	clock_gettime
	movq	944(%rsp), %rcx
	movq	952(%rsp), %rax
	subq	960(%rsp), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	subq	968(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	568(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbp
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_188
# %bb.174:                              #   in Loop: Header=BB5_12 Depth=1
	movq	688(%rsp), %rdx                 # 8-byte Reload
	leaq	(%r15,%rdx,8), %rax
	cmpq	%rbx, %rax
	setae	%r9b
	leaq	(%rbx,%rdx,8), %rcx
	cmpq	%r15, %rcx
	setae	%r10b
	cmpq	%rbp, %rax
	setb	%al
	leaq	(,%rdx,8), %rsi
	addq	%rbp, %rsi
	cmpq	%r15, %rsi
	setb	%dil
	cmpq	%r13, %rcx
	setb	%cl
	leaq	(,%rdx,8), %rdx
	addq	%r13, %rdx
	cmpq	%rbx, %rdx
	setb	%r8b
	cmpq	%rbp, %rdx
	setb	%dl
	cmpq	%r13, %rsi
	setb	%sil
	testb	%r10b, %r9b
	jne	.LBB5_180
# %bb.175:                              #   in Loop: Header=BB5_12 Depth=1
	orb	%dil, %al
	je	.LBB5_180
# %bb.176:                              #   in Loop: Header=BB5_12 Depth=1
	orb	%r8b, %cl
	je	.LBB5_180
# %bb.177:                              #   in Loop: Header=BB5_12 Depth=1
	orb	%sil, %dl
	je	.LBB5_180
# %bb.178:                              #   in Loop: Header=BB5_12 Depth=1
	cmpl	$13, 16(%rsp)                   # 4-byte Folded Reload
	jb	.LBB5_182
# %bb.179:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	560(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB5_188
	.p2align	4, 0x90
.LBB5_180:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_181:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%r13,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB5_181
	jmp	.LBB5_188
.LBB5_182:                              #   in Loop: Header=BB5_12 Depth=1
	cmpq	$0, 200(%rsp)                   # 8-byte Folded Reload
	je	.LBB5_186
# %bb.183:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	movq	200(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB5_184:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r15,%rax,8), %ymm0
	vmovups	%ymm0, (%rbx,%rax,8)
	vmovupd	(%r13,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB5_184
# %bb.185:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r14, %rcx
	jne	.LBB5_187
	jmp	.LBB5_188
.LBB5_186:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_187:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%r13,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB5_187
	.p2align	4, 0x90
.LBB5_188:                              #   in Loop: Header=BB5_12 Depth=1
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	vzeroupper
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	1488(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	152(%rsp), %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	240(%rsp), %r12
	movq	%r12, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 152(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	160(%rsp), %rcx
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	152(%rsp), %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 152(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	160(%rsp), %rcx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	152(%rsp), %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 152(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	160(%rsp), %rcx
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	152(%rsp), %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 152(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	160(%rsp), %rcx
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	152(%rsp), %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 136(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 152(%rsp), %rbp   # imm = 0xC4653600
	addq	%rax, %rbp
	addq	248(%rsp), %rbp
	subq	160(%rsp), %rbp
	xorl	%edi, %edi
	leaq	1472(%rsp), %rsi
	callq	clock_gettime
	movq	568(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	testl	%r14d, %r14d
	movq	%rbp, 728(%rsp)                 # 8-byte Spill
	je	.LBB5_191
# %bb.189:                              #   in Loop: Header=BB5_12 Depth=1
	cmpl	$13, %r14d
	jb	.LBB5_192
# %bb.190:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	560(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	272(%rsp), %rbp                 # 8-byte Reload
	leaq	320(%rsp), %r14
	jmp	.LBB5_198
	.p2align	4, 0x90
.LBB5_191:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1376(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	320(%rsp), %r14
	movq	%r14, %rsi
	callq	clock_gettime
	movq	272(%rsp), %rbp                 # 8-byte Reload
	jmp	.LBB5_206
	.p2align	4, 0x90
.LBB5_192:                              #   in Loop: Header=BB5_12 Depth=1
	cmpq	$0, 200(%rsp)                   # 8-byte Folded Reload
	movq	144(%rsp), %rcx                 # 8-byte Reload
	je	.LBB5_196
# %bb.193:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	movq	200(%rsp), %rdx                 # 8-byte Reload
	movq	272(%rsp), %rbp                 # 8-byte Reload
	leaq	320(%rsp), %r14
	.p2align	4, 0x90
.LBB5_194:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r15,%rax,8), %ymm0
	vmovups	%ymm0, (%r12,%rax,8)
	vmovupd	(%r13,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB5_194
# %bb.195:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rdx, %rax
	cmpq	%rcx, %rdx
	jne	.LBB5_197
	jmp	.LBB5_198
.LBB5_196:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	movq	272(%rsp), %rbp                 # 8-byte Reload
	leaq	320(%rsp), %r14
	.p2align	4, 0x90
.LBB5_197:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rax,8)
	vmovsd	(%r13,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB5_197
.LBB5_198:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	1376(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_206
# %bb.199:                              #   in Loop: Header=BB5_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_203
# %bb.200:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_201:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB5_201
# %bb.202:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbp, %rcx
	cmpq	112(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB5_204
	jmp	.LBB5_206
.LBB5_203:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%ecx, %ecx
.LBB5_204:                              #   in Loop: Header=BB5_12 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB5_205:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB5_205
.LBB5_206:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	256(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	256(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1200(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_214
# %bb.207:                              #   in Loop: Header=BB5_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_211
# %bb.208:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_209:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB5_209
# %bb.210:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbp, %rcx
	cmpq	112(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB5_212
	jmp	.LBB5_214
	.p2align	4, 0x90
.LBB5_211:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%ecx, %ecx
.LBB5_212:                              #   in Loop: Header=BB5_12 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB5_213:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB5_213
.LBB5_214:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	256(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	256(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1184(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_222
# %bb.215:                              #   in Loop: Header=BB5_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_219
# %bb.216:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_217:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB5_217
# %bb.218:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbp, %rcx
	cmpq	112(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB5_220
	jmp	.LBB5_222
	.p2align	4, 0x90
.LBB5_219:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%ecx, %ecx
.LBB5_220:                              #   in Loop: Header=BB5_12 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB5_221:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB5_221
.LBB5_222:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	256(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	256(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1168(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_230
# %bb.223:                              #   in Loop: Header=BB5_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB5_227
# %bb.224:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_225:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB5_225
# %bb.226:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%rbp, %rcx
	cmpq	112(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB5_228
	jmp	.LBB5_230
	.p2align	4, 0x90
.LBB5_227:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%ecx, %ecx
.LBB5_228:                              #   in Loop: Header=BB5_12 Depth=1
	movq	112(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB5_229:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB5_229
.LBB5_230:                              #   in Loop: Header=BB5_12 Depth=1
	xorl	%edi, %edi
	leaq	256(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	256(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1152(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_235
# %bb.231:                              #   in Loop: Header=BB5_12 Depth=1
	testq	%rbp, %rbp
	movq	112(%rsp), %rcx                 # 8-byte Reload
	leaq	1424(%rsp), %r14
	je	.LBB5_236
# %bb.232:                              #   in Loop: Header=BB5_12 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_233:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbx,%rax,8), %ymm1
	vfmadd231pd	(%r12,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB5_233
# %bb.234:                              #   in Loop: Header=BB5_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rbp, %rax
	cmpq	%rcx, %rbp
	jne	.LBB5_237
	jmp	.LBB5_238
	.p2align	4, 0x90
.LBB5_235:                              #   in Loop: Header=BB5_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	leaq	1424(%rsp), %r14
	jmp	.LBB5_238
	.p2align	4, 0x90
.LBB5_236:                              #   in Loop: Header=BB5_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_237:                              #   Parent Loop BB5_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r12,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB5_237
.LBB5_238:                              #   in Loop: Header=BB5_12 Depth=1
	vmovsd	%xmm1, 128(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	256(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	vmovdqu	256(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	320(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1136(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1456(%rsp), %rsi
	callq	clock_gettime
.Ltmp320:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp321:
	leaq	1344(%rsp), %rbx
	leaq	1632(%rsp), %rbp
	leaq	1600(%rsp), %r12
# %bb.239:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp322:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp323:
# %bb.240:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp324:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
.Ltmp325:
# %bb.241:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp326:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	880(%rsp), %rdi
	callq	mpfr_init2
.Ltmp327:
# %bb.242:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp328:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	848(%rsp), %rdi
	callq	mpfr_init2
.Ltmp329:
# %bb.243:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp330:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	816(%rsp), %rdi
	callq	mpfr_init2
.Ltmp331:
# %bb.244:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp332:
	leaq	880(%rsp), %rdi
	movq	%rbx, %rsi
	vmovq	352(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp333:
# %bb.245:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp334:
	leaq	880(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp335:
# %bb.246:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp336:
	leaq	880(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp337:
# %bb.247:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp338:
	leaq	912(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	880(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp339:
# %bb.248:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp340:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	vmovq	808(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp341:
# %bb.249:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp342:
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp343:
# %bb.250:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp344:
	movq	%r14, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp345:
# %bb.251:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp346:
	leaq	1104(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp347:
# %bb.252:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp348:
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	vmovq	136(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp349:
# %bb.253:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp350:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp351:
# %bb.254:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp352:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp353:
# %bb.255:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp354:
	leaq	1008(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp355:
# %bb.256:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp356:
	movq	%r12, %rdi
	movq	%rbx, %rsi
	vmovq	128(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp357:
# %bb.257:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp358:
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp359:
# %bb.258:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp360:
	movq	%r12, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp361:
# %bb.259:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp362:
	leaq	976(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp363:
# %bb.260:                              #   in Loop: Header=BB5_12 Depth=1
	vmovq	104(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp364:
	leaq	848(%rsp), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp365:
# %bb.261:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp366:
	leaq	848(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp367:
# %bb.262:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp368:
	leaq	848(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp369:
# %bb.263:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp370:
	leaq	1072(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	848(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp371:
# %bb.264:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp372:
	leaq	816(%rsp), %rdi
	movq	%rbx, %rsi
	vmovq	232(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp373:
# %bb.265:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp374:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp375:
# %bb.266:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp376:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp377:
# %bb.267:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp378:
	leaq	1040(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	816(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp379:
# %bb.268:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp380:
	movq	%r14, %rdi
	callq	mpfr_clear
.Ltmp381:
# %bb.269:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp382:
	movq	%rbp, %rdi
	callq	mpfr_clear
.Ltmp383:
# %bb.270:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp384:
	movq	%r12, %rdi
	callq	mpfr_clear
.Ltmp385:
# %bb.271:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp386:
	leaq	880(%rsp), %rdi
	callq	mpfr_clear
.Ltmp387:
# %bb.272:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp388:
	leaq	848(%rsp), %rdi
	callq	mpfr_clear
.Ltmp389:
# %bb.273:                              #   in Loop: Header=BB5_12 Depth=1
.Ltmp390:
	leaq	816(%rsp), %rdi
	callq	mpfr_clear
.Ltmp391:
# %bb.274:                              #   in Loop: Header=BB5_12 Depth=1
	imulq	$1000000000, 120(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 96(%rsp)                  # 8-byte Folded Spill
	vmovdqu	1200(%rsp), %xmm0               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vmovdqu	1184(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm1, %rcx
	imulq	$1000000000, %rcx, %rcx         # imm = 0x3B9ACA00
	vmovdqu	1168(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm2, %rdx
	imulq	$1000000000, %rdx, %rdx         # imm = 0x3B9ACA00
	vmovdqu	1152(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm3, %rsi
	imulq	$1000000000, %rsi, %rsi         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %r8
	addq	%rax, %r8
	vpextrq	$1, %xmm1, %rbp
	vpextrq	$1, %xmm2, %rbx
	addq	%rcx, %rbp
	addq	%rdx, %rbx
	vpextrq	$1, %xmm3, %r12
	addq	%rsi, %r12
	vmovdqu	1136(%rsp), %xmm0               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	vpextrq	$1, %xmm0, %r14
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	addq	%rax, %r14
	movq	640(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_11
# %bb.275:                              #   in Loop: Header=BB5_12 Depth=1
	movq	%r8, 352(%rsp)                  # 8-byte Spill
	callq	_ZdlPv
	movq	352(%rsp), %r8                  # 8-byte Reload
	jmp	.LBB5_11
.LBB5_276:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm5, %xmm5, %xmm5
	jmp	.LBB5_278
.LBB5_277:
	vunpcklpd	%xmm1, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm1[0]
	vmovupd	624(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	608(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm3, %ymm1, %ymm1
.LBB5_278:
	movq	344(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rcx,4), %eax
	vmovd	%eax, %xmm2
	vpinsrd	$1, %ecx, %xmm2, %xmm2
	vcvtdq2pd	%xmm2, %xmm2
	vpermpd	$85, %ymm2, %ymm3               # ymm3 = ymm2[1,1,1,1]
	vbroadcastsd	.LCPI5_0(%rip), %ymm4   # ymm4 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vdivpd	%ymm3, %ymm4, %ymm3
	movq	664(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vdivpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	vmulpd	%ymm3, %ymm1, %ymm1
	vmovupd	%ymm1, (%rax)
	vmovupd	%xmm0, 32(%rax)
	vdivsd	%xmm2, %xmm5, %xmm0
	vmovsd	%xmm0, 48(%rax)
	movslq	%ecx, %rbx
.Ltmp393:
	leaq	912(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp394:
	movq	672(%rsp), %rbp                 # 8-byte Reload
# %bb.279:
.Ltmp395:
	leaq	1104(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp396:
# %bb.280:
.Ltmp397:
	leaq	1072(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp398:
# %bb.281:
.Ltmp399:
	leaq	1040(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp400:
# %bb.282:
.Ltmp401:
	leaq	1008(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp402:
# %bb.283:
.Ltmp403:
	leaq	976(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp404:
# %bb.284:
	movq	(%rbp), %rdi
.Ltmp405:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp406:
# %bb.285:
	movq	(%rbp), %rdi
	addq	$32, %rdi
	movl	920(%rsp), %ecx
.Ltmp407:
	leaq	912(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp408:
# %bb.286:
	movq	(%rbp), %rdi
	addq	$64, %rdi
	movl	1112(%rsp), %ecx
.Ltmp409:
	leaq	1104(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp410:
# %bb.287:
	movq	(%rbp), %rdi
	addq	$96, %rdi
	movl	1080(%rsp), %ecx
.Ltmp411:
	leaq	1072(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp412:
# %bb.288:
	movq	(%rbp), %rdi
	subq	$-128, %rdi
	movl	1048(%rsp), %ecx
.Ltmp413:
	leaq	1040(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp414:
# %bb.289:
	movl	$160, %edi
	addq	(%rbp), %rdi
	movl	1016(%rsp), %ecx
.Ltmp415:
	leaq	1008(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp416:
# %bb.290:
	movl	$192, %edi
	addq	(%rbp), %rdi
	movl	984(%rsp), %ecx
.Ltmp417:
	leaq	976(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp418:
# %bb.291:
	testq	%r13, %r13
	je	.LBB5_293
# %bb.292:
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB5_293:
	testq	%r15, %r15
	je	.LBB5_295
# %bb.294:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB5_295:
	addq	$1672, %rsp                     # imm = 0x688
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
.LBB5_296:
	.cfi_def_cfa_offset 1728
.Ltmp254:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp255:
# %bb.297:
.LBB5_298:
.Ltmp260:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp261:
# %bb.299:
.LBB5_300:
.Ltmp308:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp309:
# %bb.301:
.LBB5_302:
.Ltmp314:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp315:
# %bb.303:
.LBB5_304:
.Ltmp239:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp240:
# %bb.305:
.LBB5_306:
.Ltmp245:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp246:
# %bb.307:
.LBB5_308:
.Ltmp269:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp270:
# %bb.309:
.LBB5_310:
.Ltmp275:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp276:
# %bb.311:
.LBB5_312:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB5_313:
.Ltmp206:
	movq	%rax, %rbx
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_363
	jmp	.LBB5_365
.LBB5_314:
.Ltmp274:
	jmp	.LBB5_338
.LBB5_315:
.Ltmp268:
	jmp	.LBB5_357
.LBB5_316:
.Ltmp244:
	jmp	.LBB5_343
.LBB5_317:
.Ltmp238:
	jmp	.LBB5_357
.LBB5_318:
.Ltmp419:
	movq	%rax, %rbx
	jmp	.LBB5_361
.LBB5_319:
.Ltmp280:
	movq	%rax, %rbx
	movq	368(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_339
# %bb.320:
	callq	_ZdlPv
	jmp	.LBB5_339
.LBB5_321:
.Ltmp250:
	movq	%rax, %rbx
	movq	496(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_344
# %bb.322:
	callq	_ZdlPv
	jmp	.LBB5_344
.LBB5_323:
.Ltmp209:
	jmp	.LBB5_357
.LBB5_324:
.Ltmp212:
	jmp	.LBB5_357
.LBB5_325:
.Ltmp313:
	jmp	.LBB5_348
.LBB5_326:
.Ltmp307:
	jmp	.LBB5_357
.LBB5_327:
.Ltmp230:
	jmp	.LBB5_357
.LBB5_328:
.Ltmp319:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_349
# %bb.329:
	callq	_ZdlPv
	jmp	.LBB5_349
.LBB5_330:
.Ltmp259:
	jmp	.LBB5_353
.LBB5_331:
.Ltmp253:
	jmp	.LBB5_357
.LBB5_332:
.Ltmp265:
	movq	%rax, %rbx
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_354
# %bb.333:
	callq	_ZdlPv
	jmp	.LBB5_354
.LBB5_334:
.Ltmp392:
	jmp	.LBB5_357
.LBB5_335:
.Ltmp235:
	jmp	.LBB5_357
.LBB5_336:
.Ltmp223:
	jmp	.LBB5_357
.LBB5_337:
.Ltmp277:
.LBB5_338:
	movq	%rax, %rbx
.LBB5_339:
	movq	400(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB5_345
	jmp	.LBB5_358
.LBB5_341:
.Ltmp271:
	jmp	.LBB5_357
.LBB5_342:
.Ltmp247:
.LBB5_343:
	movq	%rax, %rbx
.LBB5_344:
	movq	528(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_358
	jmp	.LBB5_345
.LBB5_346:
.Ltmp241:
	jmp	.LBB5_357
.LBB5_347:
.Ltmp316:
.LBB5_348:
	movq	%rax, %rbx
.LBB5_349:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB5_345
	jmp	.LBB5_358
.LBB5_351:
.Ltmp310:
	jmp	.LBB5_357
.LBB5_352:
.Ltmp262:
.LBB5_353:
	movq	%rax, %rbx
.LBB5_354:
	movq	464(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_358
.LBB5_345:
	callq	_ZdlPv
	jmp	.LBB5_358
.LBB5_356:
.Ltmp256:
.LBB5_357:
	movq	%rax, %rbx
.LBB5_358:
	movq	640(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_360
# %bb.359:
	callq	_ZdlPv
.LBB5_360:
	movq	288(%rsp), %r13
.LBB5_361:
	testq	%r13, %r13
	jne	.LBB5_364
# %bb.362:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB5_365
.LBB5_363:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_364:
	movq	%r13, %rdi
	callq	_ZdlPv
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_363
.LBB5_365:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end5:
	.size	_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .Lfunc_end5-_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.cfi_endproc
	.section	.gcc_except_table._Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp204-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp204
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp205-.Ltmp204              #   Call between .Ltmp204 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin1         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp207-.Ltmp205              #   Call between .Ltmp205 and .Ltmp207
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin1         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin1         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp230-.Lfunc_begin1         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp222-.Ltmp215              #   Call between .Ltmp215 and .Ltmp222
	.uleb128 .Ltmp223-.Lfunc_begin1         #     jumps to .Ltmp223
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp229-.Ltmp224              #   Call between .Ltmp224 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin1         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp234-.Ltmp231              #   Call between .Ltmp231 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin1         #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin1         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp242-.Ltmp237              #   Call between .Ltmp237 and .Ltmp242
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin1         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp248-.Ltmp243              #   Call between .Ltmp243 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin1         #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin1         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp257-.Ltmp252              #   Call between .Ltmp252 and .Ltmp257
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp258-.Ltmp257              #   Call between .Ltmp257 and .Ltmp258
	.uleb128 .Ltmp259-.Lfunc_begin1         #     jumps to .Ltmp259
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp263-.Ltmp258              #   Call between .Ltmp258 and .Ltmp263
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin1         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin1         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp272-.Ltmp267              #   Call between .Ltmp267 and .Ltmp272
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin1         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp278-.Ltmp273              #   Call between .Ltmp273 and .Ltmp278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin1         #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin1         # >> Call Site 25 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin1         # >> Call Site 26 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin1         # >> Call Site 27 <<
	.uleb128 .Ltmp284-.Ltmp283              #   Call between .Ltmp283 and .Ltmp284
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin1         # >> Call Site 28 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin1         # >> Call Site 29 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin1         # >> Call Site 30 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin1         # >> Call Site 31 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin1         # >> Call Site 32 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin1         # >> Call Site 33 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin1         # >> Call Site 34 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp295-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp296-.Ltmp295              #   Call between .Ltmp295 and .Ltmp296
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp298-.Ltmp297              #   Call between .Ltmp297 and .Ltmp298
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp300-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp301-.Ltmp300              #   Call between .Ltmp300 and .Ltmp301
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp301-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp302-.Ltmp301              #   Call between .Ltmp301 and .Ltmp302
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin1         #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp311-.Ltmp306              #   Call between .Ltmp306 and .Ltmp311
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp311-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp312-.Ltmp311              #   Call between .Ltmp311 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin1         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp317-.Ltmp312              #   Call between .Ltmp312 and .Ltmp317
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin1         #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp320-.Ltmp318              #   Call between .Ltmp318 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp391-.Ltmp320              #   Call between .Ltmp320 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin1         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp418-.Ltmp393              #   Call between .Ltmp393 and .Ltmp418
	.uleb128 .Ltmp419-.Lfunc_begin1         #     jumps to .Ltmp419
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp255-.Ltmp254              #   Call between .Ltmp254 and .Ltmp255
	.uleb128 .Ltmp256-.Lfunc_begin1         #     jumps to .Ltmp256
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin1         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin1         #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp315-.Ltmp314              #   Call between .Ltmp314 and .Ltmp315
	.uleb128 .Ltmp316-.Lfunc_begin1         #     jumps to .Ltmp316
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin1         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin1         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin1         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Lfunc_end5-.Ltmp276           #   Call between .Ltmp276 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..9
	.type	.omp_outlined..9,@function
.omp_outlined..9:                       # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	je	.LBB6_11
# %bb.1:
	movq	%rcx, %rbx
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	decl	%ebp
	movl	$0, 12(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, (%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
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
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	12(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB6_6
# %bb.2:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rax,%rdx,8), %rdi
	movq	%rsp, %r8
	cmpq	%r8, %rdi
	setae	%r9b
	leaq	(%rax,%rsi,8), %rdi
	cmpq	%rdi, %r8
	setae	%r10b
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%r8, %rdi
	setb	%dil
	leaq	(%rcx,%rsi,8), %rbp
	cmpq	%rbp, %r8
	setb	%r8b
	testb	%r10b, %r9b
	jne	.LBB6_4
# %bb.3:
	orb	%r8b, %dil
	je	.LBB6_4
# %bb.12:
	movq	%rdx, %r8
	subq	%rsi, %r8
	incq	%r8
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpq	$8, %r8
	jb	.LBB6_15
# %bb.13:
	movq	%r8, %rdi
	shrq	$3, %rdi
	leaq	56(,%rsi,8), %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	vmovsd	-56(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vmovsd	-48(%rax,%rbp), %xmm2           # xmm2 = mem[0],zero
	vfmadd132sd	-56(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vfmadd231sd	-48(%rcx,%rbp), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vmovsd	-40(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-40(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-32(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-32(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-24(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-24(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-16(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-16(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-8(%rax,%rbp), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	-8(%rcx,%rbp), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rcx,%rbp), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	addq	$64, %rbp
	decq	%rdi
	jne	.LBB6_14
.LBB6_15:
	movq	%r8, %rdi
	andq	$-8, %rdi
	cmpq	%r8, %rdi
	jae	.LBB6_18
# %bb.16:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB6_17:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB6_17
.LBB6_18:
	vmovsd	%xmm0, (%rsp)
	jmp	.LBB6_6
.LBB6_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB6_5
.LBB6_6:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	callq	__kmpc_for_static_fini@PLT
	movq	%rsp, %rax
	movq	%rax, 40(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	48(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.10, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB6_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB6_11
# %bb.8:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB6_11
.LBB6_9:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB6_10:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB6_10
.LBB6_11:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	.omp_outlined..9, .Lfunc_end6-.omp_outlined..9
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.10
	.type	.omp.reduction.reduction_func.10,@function
.omp.reduction.reduction_func.10:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end7:
	.size	.omp.reduction.reduction_func.10, .Lfunc_end7-.omp.reduction.reduction_func.10
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..11
	.type	.omp_outlined..11,@function
.omp_outlined..11:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	je	.LBB8_11
# %bb.1:
	movq	%rcx, %rbx
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	decl	%ebp
	movl	$0, 12(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, (%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
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
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	12(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB8_6
# %bb.2:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rax,%rdx,8), %rdi
	movq	%rsp, %r8
	cmpq	%r8, %rdi
	setae	%r9b
	leaq	(%rax,%rsi,8), %rdi
	cmpq	%rdi, %r8
	setae	%r10b
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%r8, %rdi
	setb	%dil
	leaq	(%rcx,%rsi,8), %rbp
	cmpq	%rbp, %r8
	setb	%r8b
	testb	%r10b, %r9b
	jne	.LBB8_4
# %bb.3:
	orb	%r8b, %dil
	je	.LBB8_4
# %bb.12:
	movq	%rdx, %r8
	subq	%rsi, %r8
	incq	%r8
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpq	$8, %r8
	jb	.LBB8_15
# %bb.13:
	movq	%r8, %rdi
	shrq	$3, %rdi
	leaq	56(,%rsi,8), %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_14:                               # =>This Inner Loop Header: Depth=1
	vmovsd	-56(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vmovsd	-48(%rax,%rbp), %xmm2           # xmm2 = mem[0],zero
	vfmadd132sd	-56(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vfmadd231sd	-48(%rcx,%rbp), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vmovsd	-40(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-40(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-32(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-32(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-24(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-24(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-16(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-16(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-8(%rax,%rbp), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	-8(%rcx,%rbp), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rcx,%rbp), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	addq	$64, %rbp
	decq	%rdi
	jne	.LBB8_14
.LBB8_15:
	movq	%r8, %rdi
	andq	$-8, %rdi
	cmpq	%r8, %rdi
	jae	.LBB8_18
# %bb.16:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB8_17:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB8_17
.LBB8_18:
	vmovsd	%xmm0, (%rsp)
	jmp	.LBB8_6
.LBB8_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB8_5
.LBB8_6:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	callq	__kmpc_for_static_fini@PLT
	movq	%rsp, %rax
	movq	%rax, 40(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	48(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.12, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB8_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB8_11
# %bb.8:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB8_11
.LBB8_9:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB8_10
.LBB8_11:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	.omp_outlined..11, .Lfunc_end8-.omp_outlined..11
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.12
	.type	.omp.reduction.reduction_func.12,@function
.omp.reduction.reduction_func.12:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end9:
	.size	.omp.reduction.reduction_func.12, .Lfunc_end9-.omp.reduction.reduction_func.12
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.LCPI10_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI10_1:
	.zero	16
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.p2align	4, 0x90
	.type	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,@function
_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii: # 
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
	subq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 672
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, 152(%rsp)                 # 4-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r12
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	movl	%edi, %ebx
	movl	%r9d, 84(%rsp)                  # 4-byte Spill
	movl	%r9d, %edi
	callq	omp_set_num_threads
	testl	%ebx, %ebx
	js	.LBB10_168
# %bb.1:
	movslq	%ebx, %rbp
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	je	.LBB10_4
# %bb.2:
	leaq	(,%rbp,8), %r13
	movq	%r13, %rdi
	callq	_Znwm
	movq	%rax, 160(%rsp)
	movq	%rbp, %r12
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 176(%rsp)
	movq	$0, (%rax)
	movq	%rax, %rcx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	leaq	8(%rax), %rdi
	cmpl	$1, %ebx
	jne	.LBB10_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB10_6
.LBB10_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 160(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 176(%rsp)
	vmovupd	%xmm0, 224(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 240(%rsp)
	movq	$0, 8(%rsp)                     # 8-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB10_11
.LBB10_5:
	leaq	-8(%r13), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB10_6:
	movq	%rbp, 168(%rsp)
.Ltmp420:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp421:
# %bb.7:
	movq	%rax, 224(%rsp)
	leaq	(%rax,%r12,8), %rbx
	leaq	8(%rax), %rdi
	movq	%rbx, 240(%rsp)
	movq	%rax, %r14
	movq	$0, (%rax)
	cmpl	$1, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB10_9
# %bb.8:
	movq	%r12, %rbp
	movq	%rdi, %r13
	jmp	.LBB10_10
.LBB10_9:
	addq	$-8, %r13
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	_intel_fast_memset@PLT
	movq	%rbx, %r13
	movq	%r12, %rbp
.LBB10_10:
	movq	136(%rsp), %r15                 # 8-byte Reload
	movq	128(%rsp), %r12                 # 8-byte Reload
.LBB10_11:
	movq	%r13, 232(%rsp)
.Ltmp423:
	leaq	384(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp424:
# %bb.12:
.Ltmp425:
	leaq	352(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp426:
# %bb.13:
.Ltmp427:
	leaq	384(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp428:
# %bb.14:
.Ltmp429:
	leaq	352(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp430:
# %bb.15:
	cmpl	$0, 144(%rsp)                   # 4-byte Folded Reload
	je	.LBB10_16
# %bb.28:
	shlq	$5, %rbp
	movq	%rbp, 304(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%r13, %rax
	movl	%ecx, %r13d
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	subq	%r14, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	sarq	$3, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movl	%r13d, %edx
	andl	$-4, %edx
	movl	%r13d, %eax
	andl	$3, %eax
	movq	%rax, 288(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%ecx, %eax
	incl	%eax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rdx,8), %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 256(%rsp)                 # 8-byte Spill
	movq	%rdx, 296(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	(%rax,%rdx,8), %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%esi, %esi
	movq	%rbx, 264(%rsp)                 # 8-byte Spill
	jmp	.LBB10_29
	.p2align	4, 0x90
.LBB10_146:                             #   in Loop: Header=BB10_29 Depth=1
	vcvtsi2sd	%r15, %xmm1, %xmm0
	vcvtsi2sd	%rbp, %xmm1, %xmm1
	vmovupd	560(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm2, %xmm0
	vmovupd	544(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm2, %xmm1
	movl	156(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	cmpl	144(%rsp), %esi                 # 4-byte Folded Reload
	je	.LBB10_17
.LBB10_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_33 Depth 2
                                        #     Child Loop BB10_36 Depth 2
                                        #     Child Loop BB10_41 Depth 2
	vmovupd	%xmm1, 544(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm0, 560(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 192(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 208(%rsp)
.Ltmp431:
	leaq	192(%rsp), %rdi
	movl	%esi, 156(%rsp)                 # 4-byte Spill
	movl	152(%rsp), %edx                 # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp432:
# %bb.30:                               #   in Loop: Header=BB10_29 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB10_37
# %bb.31:                               #   in Loop: Header=BB10_29 Depth=1
	movq	192(%rsp), %rax
	cmpl	$4, 72(%rsp)                    # 4-byte Folded Reload
	movq	296(%rsp), %rsi                 # 8-byte Reload
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jb	.LBB10_34
# %bb.32:                               #   in Loop: Header=BB10_29 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB10_33:                              #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rcx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rcx,8)
	leal	(%rcx,%r13), %edx
	incl	%edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r14,%rcx,8)
	vmovsd	16(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rdi,%rcx,8)
	leal	2(%r13,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r14,%rcx,8)
	vmovsd	24(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rdi,%rcx,8)
	leal	3(%r13,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r14,%rcx,8)
	vmovsd	32(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rdi,%rcx,8)
	leal	(%rcx,%r13), %edx
	addl	$4, %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r14,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB10_33
.LBB10_34:                              #   in Loop: Header=BB10_29 Depth=1
	cmpq	%r13, %rsi
	movq	288(%rsp), %r8                  # 8-byte Reload
	movq	280(%rsp), %rbp                 # 8-byte Reload
	movq	272(%rsp), %rbx                 # 8-byte Reload
	movq	264(%rsp), %rdi                 # 8-byte Reload
	jae	.LBB10_37
# %bb.35:                               #   in Loop: Header=BB10_29 Depth=1
	movq	256(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB10_36:                              #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	(%rdx,%rbp), %esi
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r8
	jne	.LBB10_36
.LBB10_37:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp434:
	movq	304(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	_Znam
.Ltmp435:
# %bb.38:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp437:
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	_Znam
	movq	%rax, 120(%rsp)                 # 8-byte Spill
.Ltmp438:
# %bb.39:                               #   in Loop: Header=BB10_29 Depth=1
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB10_46
# %bb.40:                               #   in Loop: Header=BB10_29 Depth=1
	movq	120(%rsp), %rbp                 # 8-byte Reload
	movq	%rbx, %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB10_41:                              #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp439:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
.Ltmp440:
# %bb.42:                               #   in Loop: Header=BB10_41 Depth=2
	movq	8(%rsp), %rax                   # 8-byte Reload
	vmovsd	(%rax,%r12,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp441:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp442:
# %bb.43:                               #   in Loop: Header=BB10_41 Depth=2
.Ltmp443:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp444:
# %bb.44:                               #   in Loop: Header=BB10_41 Depth=2
	vmovsd	(%r14,%r12,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp445:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp446:
# %bb.45:                               #   in Loop: Header=BB10_41 Depth=2
	incq	%r12
	addq	$32, %r15
	addq	$32, %rbp
	cmpq	%r12, %r13
	jne	.LBB10_41
.LBB10_46:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp448:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	320(%rsp), %rdi
	callq	mpfr_init2
.Ltmp449:
# %bb.47:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp450:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	320(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp451:
# %bb.48:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp452:
	movq	72(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%rbx, %rsi
	movq	120(%rsp), %rdx                 # 8-byte Reload
	leaq	320(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp453:
# %bb.49:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%r14, %r12
	xorl	%edi, %edi
	leaq	464(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 96(%rsp)
	leaq	224(%rsp), %r14
	movq	%r14, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..13, %edx
	movl	$4, %esi
	movq	%r13, %rcx
	leaq	96(%rsp), %rbp
	movq	%rbp, %r8
	leaq	160(%rsp), %rbx
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 96(%rsp)
	movq	%r14, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..13, %edx
	movl	$4, %esi
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 96(%rsp)
	movq	%r14, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..13, %edx
	movl	$4, %esi
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 96(%rsp)
	movq	%r14, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..13, %edx
	movl	$4, %esi
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 96(%rsp)
	movq	%r14, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..13, %edx
	movl	$4, %esi
	movq	%r13, %rcx
	movq	%rbp, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	448(%rsp), %rsi
	callq	clock_gettime
	movq	448(%rsp), %rax
	movq	456(%rsp), %r15
	subq	464(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	subq	472(%rsp), %r15
	xorl	%edi, %edi
	leaq	432(%rsp), %rsi
	callq	clock_gettime
	movq	168(%rsp), %rbx
	movq	%rbx, %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	subq	%rax, %rbp
	sarq	$3, %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	subq	%rax, %rbx
	je	.LBB10_50
# %bb.55:                               #   in Loop: Header=BB10_29 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbx
	ja	.LBB10_56
# %bb.58:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp455:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp456:
# %bb.59:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbx, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_60
	.p2align	4, 0x90
.LBB10_50:                              #   in Loop: Header=BB10_29 Depth=1
	shlq	$3, %rbp
	movq	%rbp, 64(%rsp)
.LBB10_60:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbp, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	cmpq	%r12, 112(%rsp)                 # 8-byte Folded Reload
	je	.LBB10_61
# %bb.62:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%r12, %r14
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	88(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB10_63
# %bb.65:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp457:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp458:
# %bb.66:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_67
	.p2align	4, 0x90
.LBB10_61:                              #   in Loop: Header=BB10_29 Depth=1
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 32(%rsp)
.LBB10_67:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 24(%rsp)
.Ltmp459:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	84(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp460:
# %bb.68:                               #   in Loop: Header=BB10_29 Depth=1
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_70
# %bb.69:                               #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_70:                              #   in Loop: Header=BB10_29 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_72
# %bb.71:                               #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_72:                              #   in Loop: Header=BB10_29 Depth=1
	movq	168(%rsp), %rbp
	movq	%rbp, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	subq	%rax, %rbp
	je	.LBB10_76
# %bb.73:                               #   in Loop: Header=BB10_29 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB10_56
# %bb.74:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp461:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp462:
# %bb.75:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_77
	.p2align	4, 0x90
.LBB10_76:                              #   in Loop: Header=BB10_29 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 64(%rsp)
.LBB10_77:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	cmpq	%r12, 112(%rsp)                 # 8-byte Folded Reload
	je	.LBB10_81
# %bb.78:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%r12, %r14
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	88(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB10_63
# %bb.79:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp463:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp464:
# %bb.80:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_82
	.p2align	4, 0x90
.LBB10_81:                              #   in Loop: Header=BB10_29 Depth=1
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 32(%rsp)
.LBB10_82:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 24(%rsp)
.Ltmp465:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	84(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp466:
# %bb.83:                               #   in Loop: Header=BB10_29 Depth=1
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_85
# %bb.84:                               #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_85:                              #   in Loop: Header=BB10_29 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_87
# %bb.86:                               #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_87:                              #   in Loop: Header=BB10_29 Depth=1
	movq	168(%rsp), %rbp
	movq	%rbp, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	subq	%rax, %rbp
	je	.LBB10_91
# %bb.88:                               #   in Loop: Header=BB10_29 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB10_56
# %bb.89:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp467:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp468:
# %bb.90:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_92
	.p2align	4, 0x90
.LBB10_91:                              #   in Loop: Header=BB10_29 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 64(%rsp)
.LBB10_92:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	cmpq	%r12, 112(%rsp)                 # 8-byte Folded Reload
	je	.LBB10_96
# %bb.93:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%r12, %r14
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	88(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB10_63
# %bb.94:                               #   in Loop: Header=BB10_29 Depth=1
.Ltmp469:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp470:
# %bb.95:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_97
	.p2align	4, 0x90
.LBB10_96:                              #   in Loop: Header=BB10_29 Depth=1
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 32(%rsp)
.LBB10_97:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 24(%rsp)
.Ltmp471:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	84(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp472:
# %bb.98:                               #   in Loop: Header=BB10_29 Depth=1
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_100
# %bb.99:                               #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_100:                             #   in Loop: Header=BB10_29 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_102
# %bb.101:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_102:                             #   in Loop: Header=BB10_29 Depth=1
	movq	168(%rsp), %rbp
	movq	%rbp, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	subq	%rax, %rbp
	je	.LBB10_106
# %bb.103:                              #   in Loop: Header=BB10_29 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB10_56
# %bb.104:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp473:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp474:
# %bb.105:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_107
	.p2align	4, 0x90
.LBB10_106:                             #   in Loop: Header=BB10_29 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 64(%rsp)
.LBB10_107:                             #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	cmpq	%r12, 112(%rsp)                 # 8-byte Folded Reload
	je	.LBB10_111
# %bb.108:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%r12, %r14
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	88(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB10_63
# %bb.109:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp475:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp476:
# %bb.110:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_112
	.p2align	4, 0x90
.LBB10_111:                             #   in Loop: Header=BB10_29 Depth=1
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 32(%rsp)
.LBB10_112:                             #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 24(%rsp)
.Ltmp477:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	84(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp478:
# %bb.113:                              #   in Loop: Header=BB10_29 Depth=1
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_115
# %bb.114:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_115:                             #   in Loop: Header=BB10_29 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_117
# %bb.116:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_117:                             #   in Loop: Header=BB10_29 Depth=1
	movq	168(%rsp), %rbp
	movq	%rbp, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	subq	%rax, %rbp
	je	.LBB10_121
# %bb.118:                              #   in Loop: Header=BB10_29 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB10_56
# %bb.119:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp479:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp480:
# %bb.120:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_122
	.p2align	4, 0x90
.LBB10_121:                             #   in Loop: Header=BB10_29 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 64(%rsp)
.LBB10_122:                             #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	cmpq	%r12, 112(%rsp)                 # 8-byte Folded Reload
	je	.LBB10_126
# %bb.123:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%r12, %r14
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	88(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB10_63
# %bb.124:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp485:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp486:
# %bb.125:                              #   in Loop: Header=BB10_29 Depth=1
	movq	%rax, 16(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB10_127
	.p2align	4, 0x90
.LBB10_126:                             #   in Loop: Header=BB10_29 Depth=1
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 32(%rsp)
.LBB10_127:                             #   in Loop: Header=BB10_29 Depth=1
	movq	%rbx, 24(%rsp)
.Ltmp491:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	72(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	84(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 312(%rsp)                # 8-byte Spill
.Ltmp492:
# %bb.128:                              #   in Loop: Header=BB10_29 Depth=1
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	movq	%r12, %r14
	je	.LBB10_130
# %bb.129:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_130:                             #   in Loop: Header=BB10_29 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_132
# %bb.131:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
.LBB10_132:                             #   in Loop: Header=BB10_29 Depth=1
	xorl	%edi, %edi
	leaq	416(%rsp), %rsi
	callq	clock_gettime
	movq	416(%rsp), %r12
	movq	424(%rsp), %rbp
	subq	432(%rsp), %r12
	subq	440(%rsp), %rbp
.Ltmp494:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	512(%rsp), %rdi
	callq	mpfr_init2
.Ltmp495:
# %bb.133:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp496:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	480(%rsp), %rdi
	callq	mpfr_init2
.Ltmp497:
# %bb.134:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp499:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	576(%rsp), %rdi
	callq	mpfr_init2
.Ltmp500:
# %bb.135:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp501:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	576(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp502:
# %bb.136:                              #   in Loop: Header=BB10_29 Depth=1
	vmovsd	96(%rsp), %xmm0                 # xmm0 = mem[0],zero
.Ltmp503:
	leaq	480(%rsp), %rdi
	leaq	320(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp504:
# %bb.137:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp505:
	leaq	480(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	320(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp506:
# %bb.138:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp507:
	leaq	480(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp508:
# %bb.139:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp509:
	leaq	384(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	480(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp510:
# %bb.140:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp511:
	leaq	512(%rsp), %rdi
	leaq	320(%rsp), %rsi
	vmovsd	312(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp512:
# %bb.141:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp513:
	leaq	512(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	320(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp514:
# %bb.142:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp515:
	leaq	512(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp516:
# %bb.143:                              #   in Loop: Header=BB10_29 Depth=1
.Ltmp517:
	leaq	352(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	512(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp518:
# %bb.144:                              #   in Loop: Header=BB10_29 Depth=1
	imulq	$1000000000, 120(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, %r15
	imulq	$1000000000, %r12, %rax         # imm = 0x3B9ACA00
	addq	%rax, %rbp
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_146
# %bb.145:                              #   in Loop: Header=BB10_29 Depth=1
	callq	_ZdlPv
	jmp	.LBB10_146
.LBB10_17:
	vunpcklpd	%xmm1, %xmm0, %xmm0     # xmm0 = xmm0[0],xmm1[0]
	movq	136(%rsp), %r15                 # 8-byte Reload
	movq	128(%rsp), %r12                 # 8-byte Reload
	jmp	.LBB10_18
.LBB10_16:
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB10_18:
	movq	144(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rcx,4), %eax
	vcvtsi2sd	%eax, %xmm3, %xmm1
	movq	(%r12), %rax
	vmovsd	.LCPI10_0(%rip), %xmm2          # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	vmovddup	%xmm1, %xmm1                    # xmm1 = xmm1[0,0]
	vmulpd	%xmm1, %xmm0, %xmm0
	vmovupd	%xmm0, (%rax)
	movslq	%ecx, %rbp
.Ltmp520:
	leaq	384(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp521:
# %bb.19:
.Ltmp522:
	leaq	352(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp523:
# %bb.20:
	movq	(%r15), %rdi
	movl	392(%rsp), %ecx
.Ltmp524:
	leaq	384(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp525:
# %bb.21:
	movq	(%r15), %rdi
	addq	$32, %rdi
	movl	360(%rsp), %ecx
.Ltmp526:
	leaq	352(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp527:
# %bb.22:
	testq	%r14, %r14
	je	.LBB10_24
# %bb.23:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB10_24:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB10_26
# %bb.25:
	callq	_ZdlPv
.LBB10_26:
	addq	$616, %rsp                      # imm = 0x268
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
.LBB10_56:
	.cfi_def_cfa_offset 672
.Ltmp482:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp483:
# %bb.57:
.LBB10_63:
.Ltmp488:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp489:
# %bb.64:
.LBB10_168:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB10_27:
.Ltmp422:
	movq	%rax, %rbp
	movq	8(%rsp), %rdi                   # 8-byte Reload
	jmp	.LBB10_166
.LBB10_162:
.Ltmp528:
	movq	%rax, %rbp
	testq	%r14, %r14
	je	.LBB10_165
	jmp	.LBB10_164
.LBB10_51:
.Ltmp433:
	jmp	.LBB10_159
.LBB10_52:
.Ltmp436:
	jmp	.LBB10_159
.LBB10_157:
.Ltmp498:
	jmp	.LBB10_159
.LBB10_150:
.Ltmp487:
	movq	%rax, %rbp
	jmp	.LBB10_154
.LBB10_147:
.Ltmp481:
	jmp	.LBB10_148
.LBB10_53:
.Ltmp454:
	jmp	.LBB10_159
.LBB10_152:
.Ltmp493:
	movq	%rax, %rbp
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_154
# %bb.153:
	callq	_ZdlPv
.LBB10_154:
	movq	%r12, %r14
	jmp	.LBB10_155
.LBB10_158:
.Ltmp519:
	jmp	.LBB10_159
.LBB10_54:
.Ltmp447:
.LBB10_159:
	movq	%rax, %rbp
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_163
	jmp	.LBB10_161
.LBB10_151:
.Ltmp490:
	movq	%rax, %rbp
.LBB10_155:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB10_156
# %bb.160:
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB10_161
.LBB10_163:
	testq	%r14, %r14
	jne	.LBB10_164
.LBB10_165:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB10_166
.LBB10_167:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB10_156:
	callq	_ZdlPv
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_163
	jmp	.LBB10_161
.LBB10_149:
.Ltmp484:
.LBB10_148:
	movq	%rax, %rbp
	movq	%r12, %r14
	movq	192(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_163
.LBB10_161:
	callq	_ZdlPv
	testq	%r14, %r14
	je	.LBB10_165
.LBB10_164:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	8(%rsp), %rdi                   # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB10_167
.LBB10_166:
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .Lfunc_end10-_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.cfi_endproc
	.section	.gcc_except_table._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp420-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp420
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp422-.Lfunc_begin2         #     jumps to .Ltmp422
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp423-.Ltmp421              #   Call between .Ltmp421 and .Ltmp423
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp430-.Ltmp423              #   Call between .Ltmp423 and .Ltmp430
	.uleb128 .Ltmp528-.Lfunc_begin2         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp433-.Lfunc_begin2         #     jumps to .Ltmp433
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp435-.Ltmp434              #   Call between .Ltmp434 and .Ltmp435
	.uleb128 .Ltmp436-.Lfunc_begin2         #     jumps to .Ltmp436
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.uleb128 .Ltmp454-.Lfunc_begin2         #     jumps to .Ltmp454
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp439-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp446-.Ltmp439              #   Call between .Ltmp439 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin2         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp453-.Ltmp448              #   Call between .Ltmp448 and .Ltmp453
	.uleb128 .Ltmp454-.Lfunc_begin2         #     jumps to .Ltmp454
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp455-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp456-.Ltmp455              #   Call between .Ltmp455 and .Ltmp456
	.uleb128 .Ltmp481-.Lfunc_begin2         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp456-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp457-.Ltmp456              #   Call between .Ltmp456 and .Ltmp457
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp458-.Ltmp457              #   Call between .Ltmp457 and .Ltmp458
	.uleb128 .Ltmp487-.Lfunc_begin2         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.uleb128 .Ltmp493-.Lfunc_begin2         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.uleb128 .Ltmp481-.Lfunc_begin2         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp464-.Ltmp463              #   Call between .Ltmp463 and .Ltmp464
	.uleb128 .Ltmp487-.Lfunc_begin2         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp464-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp465-.Ltmp464              #   Call between .Ltmp464 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp493-.Lfunc_begin2         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp481-.Lfunc_begin2         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp469-.Ltmp468              #   Call between .Ltmp468 and .Ltmp469
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp470-.Ltmp469              #   Call between .Ltmp469 and .Ltmp470
	.uleb128 .Ltmp487-.Lfunc_begin2         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp471-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp472-.Ltmp471              #   Call between .Ltmp471 and .Ltmp472
	.uleb128 .Ltmp493-.Lfunc_begin2         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp481-.Lfunc_begin2         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp474-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp475-.Ltmp474              #   Call between .Ltmp474 and .Ltmp475
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp487-.Lfunc_begin2         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp478-.Ltmp477              #   Call between .Ltmp477 and .Ltmp478
	.uleb128 .Ltmp493-.Lfunc_begin2         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp479-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp480-.Ltmp479              #   Call between .Ltmp479 and .Ltmp480
	.uleb128 .Ltmp481-.Lfunc_begin2         #     jumps to .Ltmp481
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp480-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp485-.Ltmp480              #   Call between .Ltmp480 and .Ltmp485
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp486-.Ltmp485              #   Call between .Ltmp485 and .Ltmp486
	.uleb128 .Ltmp487-.Lfunc_begin2         #     jumps to .Ltmp487
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp486-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp491-.Ltmp486              #   Call between .Ltmp486 and .Ltmp491
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp491-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp492-.Ltmp491              #   Call between .Ltmp491 and .Ltmp492
	.uleb128 .Ltmp493-.Lfunc_begin2         #     jumps to .Ltmp493
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp494-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp497-.Ltmp494              #   Call between .Ltmp494 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin2         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp518-.Ltmp499              #   Call between .Ltmp499 and .Ltmp518
	.uleb128 .Ltmp519-.Lfunc_begin2         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp527-.Ltmp520              #   Call between .Ltmp520 and .Ltmp527
	.uleb128 .Ltmp528-.Lfunc_begin2         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp482-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp483-.Ltmp482              #   Call between .Ltmp482 and .Ltmp483
	.uleb128 .Ltmp484-.Lfunc_begin2         #     jumps to .Ltmp484
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp488-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp489-.Ltmp488              #   Call between .Ltmp488 and .Ltmp489
	.uleb128 .Ltmp490-.Lfunc_begin2         #     jumps to .Ltmp490
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp489-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Lfunc_end10-.Ltmp489          #   Call between .Ltmp489 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..13
	.type	.omp_outlined..13,@function
.omp_outlined..13:                      # 
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
	je	.LBB11_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB11_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB11_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB11_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB11_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB11_17:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB11_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB11_14
	jmp	.LBB11_19
.LBB11_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB11_5
	jmp	.LBB11_6
.LBB11_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB11_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB11_15:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB11_15
.LBB11_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB11_6:
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
	movl	$.omp.reduction.reduction_func.14, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB11_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB11_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB11_11
.LBB11_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB11_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB11_10
.LBB11_11:
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
.Lfunc_end11:
	.size	.omp_outlined..13, .Lfunc_end11-.omp_outlined..13
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.14
	.type	.omp.reduction.reduction_func.14,@function
.omp.reduction.reduction_func.14:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end12:
	.size	.omp.reduction.reduction_func.14, .Lfunc_end12-.omp.reduction.reduction_func.14
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
.LCPI13_0:
	.zero	16
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.weak	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.p2align	4, 0x90
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,@function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii: # 
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
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
	subq	$888, %rsp                      # imm = 0x378
	.cfi_def_cfa_offset 944
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 440(%rsp)                  # 8-byte Spill
	movq	%r8, 448(%rsp)                  # 8-byte Spill
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	movq	%rdx, 464(%rsp)                 # 8-byte Spill
	movl	%esi, 44(%rsp)                  # 4-byte Spill
	movl	%edi, %r12d
	leaq	816(%rsp), %r14
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
	leaq	784(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	688(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	656(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	leaq	752(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	720(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%r12d, %r12d
	js	.LBB13_152
# %bb.1:
	movslq	%r12d, %rbx
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	je	.LBB13_4
# %bb.2:
	leaq	(,%rbx,8), %r15
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, %r14
	movq	%rax, 272(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 288(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r12d
	jne	.LBB13_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB13_6
.LBB13_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 272(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 288(%rsp)
	vmovupd	%xmm0, 336(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 352(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_10
	jmp	.LBB13_139
.LBB13_5:
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB13_6:
	movq	%rbp, 280(%rsp)
.Ltmp529:
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp530:
# %bb.7:
	movq	%rax, %r12
	movq	%rax, 336(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 352(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_9
# %bb.8:
	movq	%rdi, %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	jne	.LBB13_10
	jmp	.LBB13_139
.LBB13_9:
	addq	$-8, %r15
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_intel_fast_memset@PLT
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 44(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_139
.LBB13_10:
	movq	64(%rsp), %rax                  # 8-byte Reload
	movq	%rax, %rcx
	shlq	$5, %rcx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%edx, %r15d
	leaq	(,%rax,8), %rcx
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	movl	968(%rsp), %esi
	movl	44(%rsp), %ecx                  # 4-byte Reload
	imull	%ecx, %esi
	movq	%rsi, 408(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rsi                  # 8-byte Reload
	subq	%r12, %rsi
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	sarq	$3, %rsi
	movq	%rsi, 248(%rsp)                 # 8-byte Spill
	movl	%r15d, %esi
	andl	$-4, %esi
	movq	%rax, %rdi
	andq	$-4, %rdi
	movl	%r15d, %ebp
	andl	$3, %ebp
	movl	%edx, %eax
	andl	$-4, %eax
	addl	%edx, %eax
	incl	%eax
	movslq	%ecx, %rcx
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	leaq	(,%r15,8), %rcx
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	leaq	(%r12,%rsi,8), %rcx
	leaq	1(%rsi), %rdx
	movq	%rdx, 368(%rsp)                 # 8-byte Spill
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	leaq	(%r14,%rsi,8), %rdx
	xorl	%esi, %esi
	movq	%rdi, 240(%rsp)                 # 8-byte Spill
	movq	%rbp, 400(%rsp)                 # 8-byte Spill
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movq	%rdx, 376(%rsp)                 # 8-byte Spill
	jmp	.LBB13_12
	.p2align	4, 0x90
.LBB13_11:                              #   in Loop: Header=BB13_12 Depth=1
	movq	256(%rsp), %rsi                 # 8-byte Reload
	incl	%esi
	cmpl	44(%rsp), %esi                  # 4-byte Folded Reload
	je	.LBB13_139
.LBB13_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_16 Depth 2
                                        #     Child Loop BB13_19 Depth 2
                                        #     Child Loop BB13_24 Depth 2
                                        #     Child Loop BB13_35 Depth 2
                                        #     Child Loop BB13_39 Depth 2
                                        #     Child Loop BB13_76 Depth 2
                                        #     Child Loop BB13_79 Depth 2
                                        #     Child Loop BB13_82 Depth 2
                                        #     Child Loop BB13_87 Depth 2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 304(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 320(%rsp)
.Ltmp532:
	leaq	304(%rsp), %rdi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi
	movl	960(%rsp), %edx
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp533:
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	432(%rsp), %r8                  # 8-byte Reload
	je	.LBB13_20
# %bb.14:                               #   in Loop: Header=BB13_12 Depth=1
	movq	304(%rsp), %rax
	cmpl	$4, 16(%rsp)                    # 4-byte Folded Reload
	movq	48(%rsp), %rsi                  # 8-byte Reload
	jb	.LBB13_17
# %bb.15:                               #   in Loop: Header=BB13_12 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB13_16:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rcx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r14,%rcx,8)
	leal	(%r15,%rcx), %edx
	incl	%edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rcx,8)
	vmovsd	16(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r14,%rcx,8)
	leal	2(%r15,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r12,%rcx,8)
	vmovsd	24(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r14,%rcx,8)
	leal	3(%r15,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r12,%rcx,8)
	vmovsd	32(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r14,%rcx,8)
	leal	(%r15,%rcx), %edx
	addl	$4, %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r12,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB13_16
.LBB13_17:                              #   in Loop: Header=BB13_12 Depth=1
	cmpq	%r15, %rsi
	movq	400(%rsp), %r9                  # 8-byte Reload
	movq	392(%rsp), %rbp                 # 8-byte Reload
	movq	384(%rsp), %rbx                 # 8-byte Reload
	movq	376(%rsp), %rdi                 # 8-byte Reload
	jae	.LBB13_20
# %bb.18:                               #   in Loop: Header=BB13_12 Depth=1
	movq	368(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_19:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	(%rdx,%rbp), %esi
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r9
	jne	.LBB13_19
.LBB13_20:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp535:
	movq	%r8, %rbx
	movq	%r8, %rdi
	callq	_Znam
	movq	%rax, 24(%rsp)                  # 8-byte Spill
.Ltmp536:
# %bb.21:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp538:
	movq	%rbx, %rdi
	callq	_Znam
	movq	%rax, 32(%rsp)                  # 8-byte Spill
.Ltmp539:
# %bb.22:                               #   in Loop: Header=BB13_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_29
# %bb.23:                               #   in Loop: Header=BB13_12 Depth=1
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	24(%rsp), %r13                  # 8-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_24:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp540:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
.Ltmp541:
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=2
	vmovsd	(%r14,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp542:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp543:
# %bb.26:                               #   in Loop: Header=BB13_24 Depth=2
.Ltmp544:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp545:
# %bb.27:                               #   in Loop: Header=BB13_24 Depth=2
	vmovsd	(%r12,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp546:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp547:
# %bb.28:                               #   in Loop: Header=BB13_24 Depth=2
	incq	%rbx
	addq	$32, %r13
	addq	$32, %rbp
	cmpq	%rbx, %r15
	jne	.LBB13_24
.LBB13_29:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp549:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	80(%rsp), %rdi
	callq	mpfr_init2
.Ltmp550:
# %bb.30:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp551:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp552:
# %bb.31:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp553:
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsp), %rdx                  # 8-byte Reload
	leaq	80(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp554:
# %bb.32:                               #   in Loop: Header=BB13_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB13_37
# %bb.33:                               #   in Loop: Header=BB13_12 Depth=1
	cmpq	$0, 48(%rsp)                    # 8-byte Folded Reload
	je	.LBB13_38
# %bb.34:                               #   in Loop: Header=BB13_12 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB13_35:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%r12,%rax,8), %ymm1
	vfmadd231pd	(%r14,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB13_35
# %bb.36:                               #   in Loop: Header=BB13_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB13_39
	jmp	.LBB13_40
	.p2align	4, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.LBB13_40
	.p2align	4, 0x90
.LBB13_38:                              #   in Loop: Header=BB13_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB13_39:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r14,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB13_39
.LBB13_40:                              #   in Loop: Header=BB13_12 Depth=1
	vmovsd	%xmm1, 488(%rsp)                # 8-byte Spill
	movq	280(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r14, %rbx
	sarq	$3, %rbx
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 208(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 224(%rsp)
	subq	%r14, %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	je	.LBB13_44
# %bb.41:                               #   in Loop: Header=BB13_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB13_144
# %bb.42:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp555:
	movq	%rbp, %rdi
	vzeroupper
	callq	_Znwm
.Ltmp556:
	movq	%rbp, %rdx
# %bb.43:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 208(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 224(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB13_45
	.p2align	4, 0x90
.LBB13_44:                              #   in Loop: Header=BB13_12 Depth=1
	leaq	(,%rbx,8), %rbp
	movq	%rbp, 224(%rsp)
.LBB13_45:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%rbp, 216(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 176(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 192(%rsp)
	cmpq	%r12, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB13_49
# %bb.46:                               #   in Loop: Header=BB13_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	56(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB13_146
# %bb.47:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp561:
	movq	%rdi, %r13
	vzeroupper
	callq	_Znwm
.Ltmp562:
# %bb.48:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 176(%rsp)
	movq	248(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 192(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB13_50
	.p2align	4, 0x90
.LBB13_49:                              #   in Loop: Header=BB13_12 Depth=1
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 192(%rsp)
.LBB13_50:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%rbp, 184(%rsp)
.Ltmp567:
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	vzeroupper
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, 480(%rsp)                # 8-byte Spill
.Ltmp568:
# %bb.51:                               #   in Loop: Header=BB13_12 Depth=1
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	movq	24(%rsp), %rbp                  # 8-byte Reload
	je	.LBB13_53
# %bb.52:                               #   in Loop: Header=BB13_12 Depth=1
	callq	_ZdlPv
.LBB13_53:                              #   in Loop: Header=BB13_12 Depth=1
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_55
# %bb.54:                               #   in Loop: Header=BB13_12 Depth=1
	callq	_ZdlPv
.LBB13_55:                              #   in Loop: Header=BB13_12 Depth=1
	movq	$0, 264(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..15, %edx
	movl	$4, %esi
	movq	%r15, %rcx
	leaq	264(%rsp), %r8
	leaq	272(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 144(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 160(%rsp)
	cmpq	%r14, 32(%rsp)                  # 8-byte Folded Reload
	je	.LBB13_59
# %bb.56:                               #   in Loop: Header=BB13_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB13_148
# %bb.57:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp570:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp571:
# %bb.58:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 144(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 160(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB13_60
	.p2align	4, 0x90
.LBB13_59:                              #   in Loop: Header=BB13_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 160(%rsp)
.LBB13_60:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%rbx, 152(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 112(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 128(%rsp)
	cmpq	%r12, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB13_64
# %bb.61:                               #   in Loop: Header=BB13_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	movq	56(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rax, %rdi
	ja	.LBB13_150
# %bb.62:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp576:
	movq	%rdi, %rbp
	callq	_Znwm
.Ltmp577:
# %bb.63:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rax, 112(%rsp)
	movq	248(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 128(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB13_65
	.p2align	4, 0x90
.LBB13_64:                              #   in Loop: Header=BB13_12 Depth=1
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 128(%rsp)
.LBB13_65:                              #   in Loop: Header=BB13_12 Depth=1
	movq	%rbx, 120(%rsp)
.Ltmp582:
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	976(%rsp), %r9d
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 472(%rsp)                # 8-byte Spill
.Ltmp583:
# %bb.66:                               #   in Loop: Header=BB13_12 Depth=1
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_68
# %bb.67:                               #   in Loop: Header=BB13_12 Depth=1
	callq	_ZdlPv
.LBB13_68:                              #   in Loop: Header=BB13_12 Depth=1
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_70
# %bb.69:                               #   in Loop: Header=BB13_12 Depth=1
	callq	_ZdlPv
.LBB13_70:                              #   in Loop: Header=BB13_12 Depth=1
	movq	424(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	testl	%eax, %eax
	je	.LBB13_73
# %bb.71:                               #   in Loop: Header=BB13_12 Depth=1
	cmpl	$13, %eax
	jb	.LBB13_74
# %bb.72:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	360(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB13_80
	.p2align	4, 0x90
.LBB13_73:                              #   in Loop: Header=BB13_12 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB13_89
	.p2align	4, 0x90
.LBB13_74:                              #   in Loop: Header=BB13_12 Depth=1
	cmpq	$0, 48(%rsp)                    # 8-byte Folded Reload
	je	.LBB13_78
# %bb.75:                               #   in Loop: Header=BB13_12 Depth=1
	xorl	%eax, %eax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB13_76:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r14,%rax,8), %ymm0
	vmovups	%ymm0, (%rbp,%rax,8)
	vmovupd	(%r12,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB13_76
# %bb.77:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB13_79
	jmp	.LBB13_80
.LBB13_78:                              #   in Loop: Header=BB13_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB13_79:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB13_79
.LBB13_80:                              #   in Loop: Header=BB13_12 Depth=1
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%rbp, %rsi
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %r8d
	vzeroupper
	callq	cblas_ddot
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	cmpq	$0, 240(%rsp)                   # 8-byte Folded Reload
	je	.LBB13_85
# %bb.81:                               #   in Loop: Header=BB13_12 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	240(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB13_82:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbx,%rax,8), %ymm1
	vfmadd231pd	(%rbp,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jl	.LBB13_82
# %bb.83:                               #   in Loop: Header=BB13_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rsp)                 # 8-byte Spill
	cmpq	64(%rsp), %rcx                  # 8-byte Folded Reload
	je	.LBB13_89
# %bb.84:                               #   in Loop: Header=BB13_12 Depth=1
	movq	%rcx, %rax
	jmp	.LBB13_86
	.p2align	4, 0x90
.LBB13_85:                              #   in Loop: Header=BB13_12 Depth=1
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
	xorl	%eax, %eax
.LBB13_86:                              #   in Loop: Header=BB13_12 Depth=1
	movq	64(%rsp), %rcx                  # 8-byte Reload
	vmovsd	24(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB13_87:                              #   Parent Loop BB13_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%rbp,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB13_87
# %bb.88:                               #   in Loop: Header=BB13_12 Depth=1
	vmovsd	%xmm1, 24(%rsp)                 # 8-byte Spill
.LBB13_89:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp585:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	848(%rsp), %rbp
	movq	%rbp, %rdi
	vzeroupper
	callq	mpfr_init2
.Ltmp586:
	movq	416(%rsp), %rbx                 # 8-byte Reload
# %bb.90:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp587:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	624(%rsp), %rdi
	callq	mpfr_init2
.Ltmp588:
# %bb.91:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp589:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	592(%rsp), %rdi
	callq	mpfr_init2
.Ltmp590:
# %bb.92:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp591:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	560(%rsp), %rdi
	callq	mpfr_init2
.Ltmp592:
# %bb.93:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp593:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	528(%rsp), %rdi
	callq	mpfr_init2
.Ltmp594:
# %bb.94:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp595:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	496(%rsp), %rdi
	callq	mpfr_init2
.Ltmp596:
# %bb.95:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp597:
	leaq	560(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	488(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp598:
# %bb.96:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp599:
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp600:
# %bb.97:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp601:
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp602:
# %bb.98:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp603:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	560(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp604:
# %bb.99:                               #   in Loop: Header=BB13_12 Depth=1
.Ltmp605:
	movq	%rbp, %rdi
	leaq	80(%rsp), %rsi
	vmovsd	480(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp606:
# %bb.100:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp607:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp608:
# %bb.101:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp609:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp610:
# %bb.102:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp611:
	leaq	784(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp612:
# %bb.103:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp613:
	leaq	624(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp614:
# %bb.104:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp615:
	leaq	624(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp616:
# %bb.105:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp617:
	leaq	624(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp618:
# %bb.106:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp619:
	leaq	688(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	624(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp620:
# %bb.107:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp621:
	leaq	592(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	24(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp622:
# %bb.108:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp623:
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp624:
# %bb.109:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp625:
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp626:
# %bb.110:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp627:
	leaq	656(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	592(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp628:
# %bb.111:                              #   in Loop: Header=BB13_12 Depth=1
	vmovsd	264(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp629:
	leaq	528(%rsp), %rdi
	leaq	80(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp630:
# %bb.112:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp631:
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp632:
# %bb.113:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp633:
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp634:
# %bb.114:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp635:
	leaq	752(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	528(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp636:
# %bb.115:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp637:
	leaq	496(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	472(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp638:
# %bb.116:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp639:
	leaq	496(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp640:
# %bb.117:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp641:
	leaq	496(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp642:
# %bb.118:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp643:
	leaq	720(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	496(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp644:
# %bb.119:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp645:
	movq	%rbp, %rdi
	callq	mpfr_clear
.Ltmp646:
# %bb.120:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp647:
	leaq	624(%rsp), %rdi
	callq	mpfr_clear
.Ltmp648:
# %bb.121:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp649:
	leaq	592(%rsp), %rdi
	callq	mpfr_clear
.Ltmp650:
# %bb.122:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp651:
	leaq	560(%rsp), %rdi
	callq	mpfr_clear
.Ltmp652:
# %bb.123:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp653:
	leaq	528(%rsp), %rdi
	callq	mpfr_clear
.Ltmp654:
# %bb.124:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp655:
	leaq	496(%rsp), %rdi
	callq	mpfr_clear
.Ltmp656:
# %bb.125:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp657:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp658:
# %bb.126:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp659:
	leaq	784(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp660:
# %bb.127:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp661:
	leaq	752(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp662:
# %bb.128:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp663:
	leaq	720(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp664:
# %bb.129:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp665:
	leaq	688(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp666:
# %bb.130:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp667:
	leaq	656(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp668:
# %bb.131:                              #   in Loop: Header=BB13_12 Depth=1
.Ltmp670:
	leaq	816(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp671:
# %bb.132:                              #   in Loop: Header=BB13_12 Depth=1
	movq	408(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rbx
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp672:
	leaq	784(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp673:
# %bb.133:                              #   in Loop: Header=BB13_12 Depth=1
	movq	456(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp674:
	leaq	752(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp675:
# %bb.134:                              #   in Loop: Header=BB13_12 Depth=1
	movq	448(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp676:
	leaq	720(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp677:
# %bb.135:                              #   in Loop: Header=BB13_12 Depth=1
	movq	440(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp678:
	leaq	688(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp679:
# %bb.136:                              #   in Loop: Header=BB13_12 Depth=1
	movq	944(%rsp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp680:
	leaq	656(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp681:
# %bb.137:                              #   in Loop: Header=BB13_12 Depth=1
	movq	952(%rsp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_11
# %bb.138:                              #   in Loop: Header=BB13_12 Depth=1
	callq	_ZdlPv
	jmp	.LBB13_11
.LBB13_139:
	testq	%r12, %r12
	je	.LBB13_141
# %bb.140:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB13_141:
	testq	%r14, %r14
	je	.LBB13_143
# %bb.142:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB13_143:
	addq	$888, %rsp                      # imm = 0x378
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
.LBB13_144:
	.cfi_def_cfa_offset 944
.Ltmp558:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp559:
# %bb.145:
.LBB13_146:
.Ltmp564:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp565:
# %bb.147:
.LBB13_148:
.Ltmp573:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp574:
# %bb.149:
.LBB13_150:
.Ltmp579:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp580:
# %bb.151:
.LBB13_152:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB13_153:
.Ltmp531:
	movq	%rax, %rbp
	jmp	.LBB13_184
.LBB13_154:
.Ltmp578:
	jmp	.LBB13_168
.LBB13_155:
.Ltmp572:
	jmp	.LBB13_177
.LBB13_156:
.Ltmp563:
	jmp	.LBB13_173
.LBB13_157:
.Ltmp584:
	movq	%rax, %rbp
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_169
# %bb.158:
	callq	_ZdlPv
	jmp	.LBB13_169
.LBB13_159:
.Ltmp569:
	movq	%rax, %rbp
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_174
# %bb.160:
	callq	_ZdlPv
	jmp	.LBB13_174
.LBB13_161:
.Ltmp534:
	jmp	.LBB13_177
.LBB13_162:
.Ltmp537:
	jmp	.LBB13_177
.LBB13_163:
.Ltmp557:
	jmp	.LBB13_177
.LBB13_164:
.Ltmp682:
	jmp	.LBB13_177
.LBB13_165:
.Ltmp669:
	jmp	.LBB13_177
.LBB13_166:
.Ltmp548:
	jmp	.LBB13_177
.LBB13_167:
.Ltmp581:
.LBB13_168:
	movq	%rax, %rbp
.LBB13_169:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB13_175
	jmp	.LBB13_178
.LBB13_171:
.Ltmp575:
	jmp	.LBB13_177
.LBB13_172:
.Ltmp566:
.LBB13_173:
	movq	%rax, %rbp
.LBB13_174:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_178
.LBB13_175:
	callq	_ZdlPv
	jmp	.LBB13_178
.LBB13_176:
.Ltmp560:
.LBB13_177:
	movq	%rax, %rbp
.LBB13_178:
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB13_182
# %bb.179:
	testq	%r12, %r12
	jne	.LBB13_183
.LBB13_180:
	testq	%r14, %r14
	jne	.LBB13_184
.LBB13_181:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB13_182:
	callq	_ZdlPv
	testq	%r12, %r12
	je	.LBB13_180
.LBB13_183:
	movq	%r12, %rdi
	callq	_ZdlPv
	testq	%r14, %r14
	je	.LBB13_181
.LBB13_184:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, .Lfunc_end13-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.cfi_endproc
	.section	.gcc_except_table._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"aG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp529-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp529
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp530-.Ltmp529              #   Call between .Ltmp529 and .Ltmp530
	.uleb128 .Ltmp531-.Lfunc_begin3         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp530-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp532-.Ltmp530              #   Call between .Ltmp530 and .Ltmp532
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp533-.Ltmp532              #   Call between .Ltmp532 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin3         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin3         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp557-.Lfunc_begin3         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp547-.Ltmp540              #   Call between .Ltmp540 and .Ltmp547
	.uleb128 .Ltmp548-.Lfunc_begin3         #     jumps to .Ltmp548
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp549-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp556-.Ltmp549              #   Call between .Ltmp549 and .Ltmp556
	.uleb128 .Ltmp557-.Lfunc_begin3         #     jumps to .Ltmp557
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp561-.Ltmp556              #   Call between .Ltmp556 and .Ltmp561
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp561-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp562-.Ltmp561              #   Call between .Ltmp561 and .Ltmp562
	.uleb128 .Ltmp563-.Lfunc_begin3         #     jumps to .Ltmp563
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp567-.Ltmp562              #   Call between .Ltmp562 and .Ltmp567
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp567-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp568-.Ltmp567              #   Call between .Ltmp567 and .Ltmp568
	.uleb128 .Ltmp569-.Lfunc_begin3         #     jumps to .Ltmp569
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp570-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp571-.Ltmp570              #   Call between .Ltmp570 and .Ltmp571
	.uleb128 .Ltmp572-.Lfunc_begin3         #     jumps to .Ltmp572
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp576-.Ltmp571              #   Call between .Ltmp571 and .Ltmp576
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp576-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp577-.Ltmp576              #   Call between .Ltmp576 and .Ltmp577
	.uleb128 .Ltmp578-.Lfunc_begin3         #     jumps to .Ltmp578
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp582-.Ltmp577              #   Call between .Ltmp577 and .Ltmp582
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp582-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp583-.Ltmp582              #   Call between .Ltmp582 and .Ltmp583
	.uleb128 .Ltmp584-.Lfunc_begin3         #     jumps to .Ltmp584
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp585-.Ltmp583              #   Call between .Ltmp583 and .Ltmp585
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp585-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp668-.Ltmp585              #   Call between .Ltmp585 and .Ltmp668
	.uleb128 .Ltmp669-.Lfunc_begin3         #     jumps to .Ltmp669
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp670-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp681-.Ltmp670              #   Call between .Ltmp670 and .Ltmp681
	.uleb128 .Ltmp682-.Lfunc_begin3         #     jumps to .Ltmp682
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp558-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp559-.Ltmp558              #   Call between .Ltmp558 and .Ltmp559
	.uleb128 .Ltmp560-.Lfunc_begin3         #     jumps to .Ltmp560
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp564-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp565-.Ltmp564              #   Call between .Ltmp564 and .Ltmp565
	.uleb128 .Ltmp566-.Lfunc_begin3         #     jumps to .Ltmp566
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp573-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp574-.Ltmp573              #   Call between .Ltmp573 and .Ltmp574
	.uleb128 .Ltmp575-.Lfunc_begin3         #     jumps to .Ltmp575
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp579-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp580-.Ltmp579              #   Call between .Ltmp579 and .Ltmp580
	.uleb128 .Ltmp581-.Lfunc_begin3         #     jumps to .Ltmp581
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Lfunc_end13-.Ltmp580          #   Call between .Ltmp580 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..15
	.type	.omp_outlined..15,@function
.omp_outlined..15:                      # 
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
	je	.LBB14_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB14_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB14_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB14_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB14_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB14_17:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB14_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB14_14
	jmp	.LBB14_19
.LBB14_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB14_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB14_5
	jmp	.LBB14_6
.LBB14_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB14_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB14_15:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB14_15
.LBB14_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB14_6:
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
	movl	$.omp.reduction.reduction_func.16, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB14_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB14_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB14_11
.LBB14_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB14_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB14_10
.LBB14_11:
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
.Lfunc_end14:
	.size	.omp_outlined..15, .Lfunc_end14-.omp_outlined..15
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.16
	.type	.omp.reduction.reduction_func.16,@function
.omp.reduction.reduction_func.16:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end15:
	.size	.omp.reduction.reduction_func.16, .Lfunc_end15-.omp.reduction.reduction_func.16
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
.LCPI16_0:
	.zero	16
	.section	.text._Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.weak	_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.p2align	4, 0x90
	.type	_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,@function
_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii: # 
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
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
	subq	$888, %rsp                      # imm = 0x378
	.cfi_def_cfa_offset 944
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 456(%rsp)                  # 8-byte Spill
	movq	%r8, 464(%rsp)                  # 8-byte Spill
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	movq	%rdx, 480(%rsp)                 # 8-byte Spill
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movl	%edi, %r12d
	leaq	816(%rsp), %r14
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
	leaq	784(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	688(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	656(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	leaq	752(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	720(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%r12d, %r12d
	js	.LBB16_151
# %bb.1:
	movslq	%r12d, %rbx
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	je	.LBB16_4
# %bb.2:
	leaq	(,%rbx,8), %r15
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, %r14
	movq	%rax, 272(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 288(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r12d
	jne	.LBB16_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB16_6
.LBB16_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 272(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 288(%rsp)
	vmovupd	%xmm0, 336(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 352(%rsp)
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	xorl	%ebp, %ebp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	jne	.LBB16_10
	jmp	.LBB16_138
.LBB16_5:
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB16_6:
	movq	%rbp, 280(%rsp)
.Ltmp683:
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp684:
# %bb.7:
	movq	%rax, %r12
	movq	%rax, 336(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 352(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB16_9
# %bb.8:
	movq	%rdi, %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	jne	.LBB16_10
	jmp	.LBB16_138
.LBB16_9:
	addq	$-8, %r15
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_intel_fast_memset@PLT
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, 344(%rsp)
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB16_138
.LBB16_10:
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, %rax
	shlq	$5, %rax
	movq	%rax, 448(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%edx, %r15d
	movl	968(%rsp), %eax
	movl	28(%rsp), %ecx                  # 4-byte Reload
	imull	%ecx, %eax
	movq	%rax, 424(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rdi                  # 8-byte Reload
	subq	%r12, %rdi
	movq	%rdi, %rax
	sarq	$3, %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	movl	%r15d, %ebp
	andl	$-4, %ebp
	movl	%r15d, %eax
	andl	$-8, %eax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	leaq	(,%r15,8), %rbx
	movq	%rsi, %rax
	andq	$-4, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movl	%r15d, %eax
	andl	$3, %eax
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	movl	%edx, %eax
	andl	$-4, %eax
	addl	%edx, %eax
	incl	%eax
	movq	%rax, 408(%rsp)                 # 8-byte Spill
	movq	%rbx, 360(%rsp)                 # 8-byte Spill
	andq	$-64, %rbx
	movq	%rbx, 376(%rsp)                 # 8-byte Spill
	leaq	(,%rsi,8), %rax
	movq	%rax, 440(%rsp)                 # 8-byte Spill
	movslq	%ecx, %rax
	movq	%rax, 432(%rsp)                 # 8-byte Spill
	leaq	(%r12,%rbp,8), %rax
	leaq	1(%rbp), %rcx
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	leaq	(%r14,%rbp,8), %rcx
	xorl	%esi, %esi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 400(%rsp)                 # 8-byte Spill
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	jmp	.LBB16_12
	.p2align	4, 0x90
.LBB16_11:                              #   in Loop: Header=BB16_12 Depth=1
	movq	256(%rsp), %rsi                 # 8-byte Reload
	incl	%esi
	cmpl	28(%rsp), %esi                  # 4-byte Folded Reload
	je	.LBB16_138
.LBB16_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_16 Depth 2
                                        #     Child Loop BB16_19 Depth 2
                                        #     Child Loop BB16_24 Depth 2
                                        #     Child Loop BB16_35 Depth 2
                                        #     Child Loop BB16_37 Depth 2
                                        #     Child Loop BB16_75 Depth 2
                                        #     Child Loop BB16_78 Depth 2
                                        #     Child Loop BB16_81 Depth 2
                                        #     Child Loop BB16_86 Depth 2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 304(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 320(%rsp)
.Ltmp686:
	leaq	304(%rsp), %rdi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi killed $rsi
	movl	960(%rsp), %edx
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp687:
# %bb.13:                               #   in Loop: Header=BB16_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	movq	448(%rsp), %r8                  # 8-byte Reload
	je	.LBB16_20
# %bb.14:                               #   in Loop: Header=BB16_12 Depth=1
	movq	304(%rsp), %rax
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	movq	56(%rsp), %rsi                  # 8-byte Reload
	jb	.LBB16_17
# %bb.15:                               #   in Loop: Header=BB16_12 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB16_16:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rcx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r14,%rcx,8)
	leal	(%r15,%rcx), %edx
	incl	%edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rcx,8)
	vmovsd	16(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r14,%rcx,8)
	leal	2(%r15,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r12,%rcx,8)
	vmovsd	24(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r14,%rcx,8)
	leal	3(%r15,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r12,%rcx,8)
	vmovsd	32(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r14,%rcx,8)
	leal	(%r15,%rcx), %edx
	addl	$4, %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r12,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	.LBB16_16
.LBB16_17:                              #   in Loop: Header=BB16_12 Depth=1
	cmpq	%r15, %rsi
	movq	416(%rsp), %r9                  # 8-byte Reload
	movq	408(%rsp), %rbp                 # 8-byte Reload
	movq	400(%rsp), %rbx                 # 8-byte Reload
	movq	392(%rsp), %rdi                 # 8-byte Reload
	jae	.LBB16_20
# %bb.18:                               #   in Loop: Header=BB16_12 Depth=1
	movq	368(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB16_19:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rdx,8)
	leal	(%rdx,%rbp), %esi
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r9
	jne	.LBB16_19
.LBB16_20:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp689:
	movq	%r8, %rbx
	movq	%r8, %rdi
	callq	_Znam
	movq	%rax, 16(%rsp)                  # 8-byte Spill
.Ltmp690:
# %bb.21:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp692:
	movq	%rbx, %rdi
	callq	_Znam
	movq	%rax, 40(%rsp)                  # 8-byte Spill
.Ltmp693:
# %bb.22:                               #   in Loop: Header=BB16_12 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB16_29
# %bb.23:                               #   in Loop: Header=BB16_12 Depth=1
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	16(%rsp), %r13                  # 8-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB16_24:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp694:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
.Ltmp695:
# %bb.25:                               #   in Loop: Header=BB16_24 Depth=2
	vmovsd	(%r14,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp696:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp697:
# %bb.26:                               #   in Loop: Header=BB16_24 Depth=2
.Ltmp698:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp699:
# %bb.27:                               #   in Loop: Header=BB16_24 Depth=2
	vmovsd	(%r12,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp700:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp701:
# %bb.28:                               #   in Loop: Header=BB16_24 Depth=2
	incq	%rbx
	addq	$32, %r13
	addq	$32, %rbp
	cmpq	%rbx, %r15
	jne	.LBB16_24
.LBB16_29:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp703:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	80(%rsp), %rdi
	callq	mpfr_init2
.Ltmp704:
# %bb.30:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp705:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	80(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp706:
# %bb.31:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp707:
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsp), %rdx                  # 8-byte Reload
	leaq	80(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp708:
# %bb.32:                               #   in Loop: Header=BB16_12 Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	testl	%eax, %eax
	je	.LBB16_38
# %bb.33:                               #   in Loop: Header=BB16_12 Depth=1
	vxorpd	%xmm2, %xmm2, %xmm2
	cmpl	$8, %eax
	movq	376(%rsp), %rcx                 # 8-byte Reload
	jb	.LBB16_36
# %bb.34:                               #   in Loop: Header=BB16_12 Depth=1
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB16_35:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rax), %xmm0              # xmm0 = mem[0],zero
	vmovsd	8(%r14,%rax), %xmm1             # xmm1 = mem[0],zero
	vfmadd132sd	(%r12,%rax), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	vfmadd231sd	8(%r12,%rax), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	16(%r14,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	16(%r12,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	24(%r14,%rax), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	24(%r12,%rax), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	32(%r14,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	32(%r12,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	40(%r14,%rax), %xmm0            # xmm0 = mem[0],zero
	vfmadd132sd	40(%r12,%rax), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	48(%r14,%rax), %xmm1            # xmm1 = mem[0],zero
	vfmadd132sd	48(%r12,%rax), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	56(%r14,%rax), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	56(%r12,%rax), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	addq	$64, %rax
	cmpq	%rax, %rcx
	jne	.LBB16_35
.LBB16_36:                              #   in Loop: Header=BB16_12 Depth=1
	vmovapd	%xmm2, %xmm1
	movq	384(%rsp), %rax                 # 8-byte Reload
	cmpq	%r15, %rax
	jae	.LBB16_39
	.p2align	4, 0x90
.LBB16_37:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r12,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB16_37
	jmp	.LBB16_39
	.p2align	4, 0x90
.LBB16_38:                              #   in Loop: Header=BB16_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
.LBB16_39:                              #   in Loop: Header=BB16_12 Depth=1
	vmovsd	%xmm1, 40(%rsp)                 # 8-byte Spill
	movq	280(%rsp), %rcx
	movq	%rcx, %rbx
	subq	%r14, %rbx
	sarq	$3, %rbx
	movq	%rcx, %r13
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 208(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 224(%rsp)
	subq	%r14, %r13
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB16_43
# %bb.40:                               #   in Loop: Header=BB16_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB16_143
# %bb.41:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp709:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp710:
# %bb.42:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rax, 208(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 224(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_44
	.p2align	4, 0x90
.LBB16_43:                              #   in Loop: Header=BB16_12 Depth=1
	leaq	(,%rbx,8), %rbp
	movq	%rbp, 224(%rsp)
.LBB16_44:                              #   in Loop: Header=BB16_12 Depth=1
	movq	%rbp, 216(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 176(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 192(%rsp)
	cmpq	%r12, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB16_48
# %bb.45:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movq	%r13, %rbx
	movq	32(%rsp), %r13                  # 8-byte Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB16_145
# %bb.46:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp715:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp716:
# %bb.47:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rax, 176(%rsp)
	movq	240(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 192(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %r13
	movq	64(%rsp), %rbx                  # 8-byte Reload
	jmp	.LBB16_49
	.p2align	4, 0x90
.LBB16_48:                              #   in Loop: Header=BB16_12 Depth=1
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 192(%rsp)
.LBB16_49:                              #   in Loop: Header=BB16_12 Depth=1
	movq	%rbp, 184(%rsp)
.Ltmp721:
	leaq	208(%rsp), %rdi
	leaq	176(%rsp), %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
.Ltmp722:
# %bb.50:                               #   in Loop: Header=BB16_12 Depth=1
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	movq	16(%rsp), %rbp                  # 8-byte Reload
	je	.LBB16_52
# %bb.51:                               #   in Loop: Header=BB16_12 Depth=1
	callq	_ZdlPv
.LBB16_52:                              #   in Loop: Header=BB16_12 Depth=1
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_54
# %bb.53:                               #   in Loop: Header=BB16_12 Depth=1
	callq	_ZdlPv
.LBB16_54:                              #   in Loop: Header=BB16_12 Depth=1
	movq	$0, 264(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..17, %edx
	movl	$4, %esi
	movq	%r15, %rcx
	leaq	264(%rsp), %r8
	leaq	272(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 144(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 160(%rsp)
	cmpq	%r14, %rbp
	je	.LBB16_58
# %bb.55:                               #   in Loop: Header=BB16_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB16_147
# %bb.56:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp724:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp725:
# %bb.57:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rax, 144(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 160(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_59
	.p2align	4, 0x90
.LBB16_58:                              #   in Loop: Header=BB16_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 160(%rsp)
.LBB16_59:                              #   in Loop: Header=BB16_12 Depth=1
	movq	%rbx, 152(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 112(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 128(%rsp)
	cmpq	%r12, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB16_63
# %bb.60:                               #   in Loop: Header=BB16_12 Depth=1
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbx
	ja	.LBB16_149
# %bb.61:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp730:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp731:
	movq	%rbx, %rdx
# %bb.62:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rax, 112(%rsp)
	movq	240(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 128(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_64
	.p2align	4, 0x90
.LBB16_63:                              #   in Loop: Header=BB16_12 Depth=1
	movq	32(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 128(%rsp)
.LBB16_64:                              #   in Loop: Header=BB16_12 Depth=1
	movq	%rbx, 120(%rsp)
.Ltmp736:
	leaq	144(%rsp), %rdi
	leaq	112(%rsp), %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	976(%rsp), %r9d
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 488(%rsp)                # 8-byte Spill
.Ltmp737:
# %bb.65:                               #   in Loop: Header=BB16_12 Depth=1
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_67
# %bb.66:                               #   in Loop: Header=BB16_12 Depth=1
	callq	_ZdlPv
.LBB16_67:                              #   in Loop: Header=BB16_12 Depth=1
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_69
# %bb.68:                               #   in Loop: Header=BB16_12 Depth=1
	callq	_ZdlPv
.LBB16_69:                              #   in Loop: Header=BB16_12 Depth=1
	movq	440(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	testl	%eax, %eax
	je	.LBB16_72
# %bb.70:                               #   in Loop: Header=BB16_12 Depth=1
	cmpl	$13, %eax
	jb	.LBB16_73
# %bb.71:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rbp, %rdi
	movq	%r14, %rsi
	movq	360(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_79
	.p2align	4, 0x90
.LBB16_72:                              #   in Loop: Header=BB16_12 Depth=1
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 248(%rsp)                # 8-byte Spill
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	jmp	.LBB16_88
	.p2align	4, 0x90
.LBB16_73:                              #   in Loop: Header=BB16_12 Depth=1
	cmpq	$0, 56(%rsp)                    # 8-byte Folded Reload
	je	.LBB16_77
# %bb.74:                               #   in Loop: Header=BB16_12 Depth=1
	xorl	%eax, %eax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB16_75:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r14,%rax,8), %ymm0
	vmovups	%ymm0, (%rbp,%rax,8)
	vmovupd	(%r12,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB16_75
# %bb.76:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB16_78
	jmp	.LBB16_79
.LBB16_77:                              #   in Loop: Header=BB16_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB16_78:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	vmovsd	(%r12,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB16_78
.LBB16_79:                              #   in Loop: Header=BB16_12 Depth=1
	movq	8(%rsp), %rdi                   # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%rbp, %rsi
	movl	$1, %edx
	movq	%rbx, %rcx
	movl	$1, %r8d
	vzeroupper
	callq	cblas_ddot
	vmovsd	%xmm0, 248(%rsp)                # 8-byte Spill
	cmpq	$0, 232(%rsp)                   # 8-byte Folded Reload
	je	.LBB16_84
# %bb.80:                               #   in Loop: Header=BB16_12 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	232(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB16_81:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbx,%rax,8), %ymm1
	vfmadd231pd	(%rbp,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jl	.LBB16_81
# %bb.82:                               #   in Loop: Header=BB16_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	cmpq	48(%rsp), %rcx                  # 8-byte Folded Reload
	je	.LBB16_88
# %bb.83:                               #   in Loop: Header=BB16_12 Depth=1
	movq	%rcx, %rax
	jmp	.LBB16_85
	.p2align	4, 0x90
.LBB16_84:                              #   in Loop: Header=BB16_12 Depth=1
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%eax, %eax
.LBB16_85:                              #   in Loop: Header=BB16_12 Depth=1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	vmovsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB16_86:                              #   Parent Loop BB16_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%rbp,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB16_86
# %bb.87:                               #   in Loop: Header=BB16_12 Depth=1
	vmovsd	%xmm1, 16(%rsp)                 # 8-byte Spill
.LBB16_88:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp739:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	848(%rsp), %rbp
	movq	%rbp, %rdi
	vzeroupper
	callq	mpfr_init2
.Ltmp740:
	movq	432(%rsp), %rbx                 # 8-byte Reload
# %bb.89:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp741:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	624(%rsp), %rdi
	callq	mpfr_init2
.Ltmp742:
# %bb.90:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp743:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	592(%rsp), %rdi
	callq	mpfr_init2
.Ltmp744:
# %bb.91:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp745:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	560(%rsp), %rdi
	callq	mpfr_init2
.Ltmp746:
# %bb.92:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp747:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	528(%rsp), %rdi
	callq	mpfr_init2
.Ltmp748:
# %bb.93:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp749:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	496(%rsp), %rdi
	callq	mpfr_init2
.Ltmp750:
# %bb.94:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp751:
	leaq	560(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp752:
# %bb.95:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp753:
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp754:
# %bb.96:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp755:
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp756:
# %bb.97:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp757:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	560(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp758:
# %bb.98:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp759:
	movq	%rbp, %rdi
	leaq	80(%rsp), %rsi
	vmovsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp760:
# %bb.99:                               #   in Loop: Header=BB16_12 Depth=1
.Ltmp761:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp762:
# %bb.100:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp763:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp764:
# %bb.101:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp765:
	leaq	784(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp766:
# %bb.102:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp767:
	leaq	624(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	248(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp768:
# %bb.103:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp769:
	leaq	624(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp770:
# %bb.104:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp771:
	leaq	624(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp772:
# %bb.105:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp773:
	leaq	688(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	624(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp774:
# %bb.106:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp775:
	leaq	592(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp776:
# %bb.107:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp777:
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp778:
# %bb.108:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp779:
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp780:
# %bb.109:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp781:
	leaq	656(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	592(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp782:
# %bb.110:                              #   in Loop: Header=BB16_12 Depth=1
	vmovsd	264(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp783:
	leaq	528(%rsp), %rdi
	leaq	80(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp784:
# %bb.111:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp785:
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp786:
# %bb.112:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp787:
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp788:
# %bb.113:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp789:
	leaq	752(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	528(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp790:
# %bb.114:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp791:
	leaq	496(%rsp), %rdi
	leaq	80(%rsp), %rsi
	vmovsd	488(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp792:
# %bb.115:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp793:
	leaq	496(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	80(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp794:
# %bb.116:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp795:
	leaq	496(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp796:
# %bb.117:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp797:
	leaq	720(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	496(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp798:
# %bb.118:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp799:
	movq	%rbp, %rdi
	callq	mpfr_clear
.Ltmp800:
# %bb.119:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp801:
	leaq	624(%rsp), %rdi
	callq	mpfr_clear
.Ltmp802:
# %bb.120:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp803:
	leaq	592(%rsp), %rdi
	callq	mpfr_clear
.Ltmp804:
# %bb.121:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp805:
	leaq	560(%rsp), %rdi
	callq	mpfr_clear
.Ltmp806:
# %bb.122:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp807:
	leaq	528(%rsp), %rdi
	callq	mpfr_clear
.Ltmp808:
# %bb.123:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp809:
	leaq	496(%rsp), %rdi
	callq	mpfr_clear
.Ltmp810:
# %bb.124:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp811:
	leaq	816(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp812:
# %bb.125:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp813:
	leaq	784(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp814:
# %bb.126:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp815:
	leaq	752(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp816:
# %bb.127:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp817:
	leaq	720(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp818:
# %bb.128:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp819:
	leaq	688(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp820:
# %bb.129:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp821:
	leaq	656(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp822:
# %bb.130:                              #   in Loop: Header=BB16_12 Depth=1
.Ltmp824:
	leaq	816(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp825:
# %bb.131:                              #   in Loop: Header=BB16_12 Depth=1
	movq	424(%rsp), %rax                 # 8-byte Reload
	movq	256(%rsp), %rcx                 # 8-byte Reload
	addl	%ecx, %eax
	movslq	%eax, %rbx
	movq	480(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp826:
	leaq	784(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp827:
# %bb.132:                              #   in Loop: Header=BB16_12 Depth=1
	movq	472(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp828:
	leaq	752(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp829:
# %bb.133:                              #   in Loop: Header=BB16_12 Depth=1
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp830:
	leaq	720(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp831:
# %bb.134:                              #   in Loop: Header=BB16_12 Depth=1
	movq	456(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp832:
	leaq	688(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp833:
# %bb.135:                              #   in Loop: Header=BB16_12 Depth=1
	movq	944(%rsp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
.Ltmp834:
	leaq	656(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
.Ltmp835:
# %bb.136:                              #   in Loop: Header=BB16_12 Depth=1
	movq	952(%rsp), %rax
	movq	(%rax), %rax
	vmovsd	%xmm0, (%rax,%rbx,8)
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_11
# %bb.137:                              #   in Loop: Header=BB16_12 Depth=1
	callq	_ZdlPv
	jmp	.LBB16_11
.LBB16_138:
	testq	%r12, %r12
	je	.LBB16_140
# %bb.139:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB16_140:
	testq	%r14, %r14
	je	.LBB16_142
# %bb.141:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB16_142:
	addq	$888, %rsp                      # imm = 0x378
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
.LBB16_143:
	.cfi_def_cfa_offset 944
.Ltmp712:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp713:
# %bb.144:
.LBB16_145:
.Ltmp718:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp719:
# %bb.146:
.LBB16_147:
.Ltmp727:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp728:
# %bb.148:
.LBB16_149:
.Ltmp733:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp734:
# %bb.150:
.LBB16_151:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB16_152:
.Ltmp685:
	movq	%rax, %rbp
	jmp	.LBB16_183
.LBB16_153:
.Ltmp732:
	jmp	.LBB16_167
.LBB16_154:
.Ltmp726:
	jmp	.LBB16_176
.LBB16_155:
.Ltmp717:
	jmp	.LBB16_172
.LBB16_156:
.Ltmp738:
	movq	%rax, %rbp
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_168
# %bb.157:
	callq	_ZdlPv
	jmp	.LBB16_168
.LBB16_158:
.Ltmp723:
	movq	%rax, %rbp
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_173
# %bb.159:
	callq	_ZdlPv
	jmp	.LBB16_173
.LBB16_160:
.Ltmp688:
	jmp	.LBB16_176
.LBB16_161:
.Ltmp691:
	jmp	.LBB16_176
.LBB16_162:
.Ltmp711:
	jmp	.LBB16_176
.LBB16_163:
.Ltmp836:
	jmp	.LBB16_176
.LBB16_164:
.Ltmp823:
	jmp	.LBB16_176
.LBB16_165:
.Ltmp702:
	jmp	.LBB16_176
.LBB16_166:
.Ltmp735:
.LBB16_167:
	movq	%rax, %rbp
.LBB16_168:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB16_174
	jmp	.LBB16_177
.LBB16_170:
.Ltmp729:
	jmp	.LBB16_176
.LBB16_171:
.Ltmp720:
.LBB16_172:
	movq	%rax, %rbp
.LBB16_173:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_177
.LBB16_174:
	callq	_ZdlPv
	jmp	.LBB16_177
.LBB16_175:
.Ltmp714:
.LBB16_176:
	movq	%rax, %rbp
.LBB16_177:
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB16_181
# %bb.178:
	testq	%r12, %r12
	jne	.LBB16_182
.LBB16_179:
	testq	%r14, %r14
	jne	.LBB16_183
.LBB16_180:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB16_181:
	callq	_ZdlPv
	testq	%r12, %r12
	je	.LBB16_179
.LBB16_182:
	movq	%r12, %rdi
	callq	_ZdlPv
	testq	%r14, %r14
	je	.LBB16_180
.LBB16_183:
	movq	%r14, %rdi
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end16:
	.size	_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, .Lfunc_end16-_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.cfi_endproc
	.section	.gcc_except_table._Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"aG",@progbits,_Z25compare_dot_prod_cond_fmaIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp683-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp683
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp683-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp684-.Ltmp683              #   Call between .Ltmp683 and .Ltmp684
	.uleb128 .Ltmp685-.Lfunc_begin4         #     jumps to .Ltmp685
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp684-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp686-.Ltmp684              #   Call between .Ltmp684 and .Ltmp686
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp686-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp687-.Ltmp686              #   Call between .Ltmp686 and .Ltmp687
	.uleb128 .Ltmp688-.Lfunc_begin4         #     jumps to .Ltmp688
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp690-.Ltmp689              #   Call between .Ltmp689 and .Ltmp690
	.uleb128 .Ltmp691-.Lfunc_begin4         #     jumps to .Ltmp691
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp692-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp693-.Ltmp692              #   Call between .Ltmp692 and .Ltmp693
	.uleb128 .Ltmp711-.Lfunc_begin4         #     jumps to .Ltmp711
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp694-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp701-.Ltmp694              #   Call between .Ltmp694 and .Ltmp701
	.uleb128 .Ltmp702-.Lfunc_begin4         #     jumps to .Ltmp702
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp703-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp710-.Ltmp703              #   Call between .Ltmp703 and .Ltmp710
	.uleb128 .Ltmp711-.Lfunc_begin4         #     jumps to .Ltmp711
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp710-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp715-.Ltmp710              #   Call between .Ltmp710 and .Ltmp715
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp715-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp716-.Ltmp715              #   Call between .Ltmp715 and .Ltmp716
	.uleb128 .Ltmp717-.Lfunc_begin4         #     jumps to .Ltmp717
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp716-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp721-.Ltmp716              #   Call between .Ltmp716 and .Ltmp721
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp721-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp722-.Ltmp721              #   Call between .Ltmp721 and .Ltmp722
	.uleb128 .Ltmp723-.Lfunc_begin4         #     jumps to .Ltmp723
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp724-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp725-.Ltmp724              #   Call between .Ltmp724 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin4         #     jumps to .Ltmp726
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp725-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Ltmp730-.Ltmp725              #   Call between .Ltmp725 and .Ltmp730
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp730-.Lfunc_begin4         # >> Call Site 15 <<
	.uleb128 .Ltmp731-.Ltmp730              #   Call between .Ltmp730 and .Ltmp731
	.uleb128 .Ltmp732-.Lfunc_begin4         #     jumps to .Ltmp732
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp731-.Lfunc_begin4         # >> Call Site 16 <<
	.uleb128 .Ltmp736-.Ltmp731              #   Call between .Ltmp731 and .Ltmp736
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp736-.Lfunc_begin4         # >> Call Site 17 <<
	.uleb128 .Ltmp737-.Ltmp736              #   Call between .Ltmp736 and .Ltmp737
	.uleb128 .Ltmp738-.Lfunc_begin4         #     jumps to .Ltmp738
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp737-.Lfunc_begin4         # >> Call Site 18 <<
	.uleb128 .Ltmp739-.Ltmp737              #   Call between .Ltmp737 and .Ltmp739
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp739-.Lfunc_begin4         # >> Call Site 19 <<
	.uleb128 .Ltmp822-.Ltmp739              #   Call between .Ltmp739 and .Ltmp822
	.uleb128 .Ltmp823-.Lfunc_begin4         #     jumps to .Ltmp823
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp824-.Lfunc_begin4         # >> Call Site 20 <<
	.uleb128 .Ltmp835-.Ltmp824              #   Call between .Ltmp824 and .Ltmp835
	.uleb128 .Ltmp836-.Lfunc_begin4         #     jumps to .Ltmp836
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp712-.Lfunc_begin4         # >> Call Site 21 <<
	.uleb128 .Ltmp713-.Ltmp712              #   Call between .Ltmp712 and .Ltmp713
	.uleb128 .Ltmp714-.Lfunc_begin4         #     jumps to .Ltmp714
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp718-.Lfunc_begin4         # >> Call Site 22 <<
	.uleb128 .Ltmp719-.Ltmp718              #   Call between .Ltmp718 and .Ltmp719
	.uleb128 .Ltmp720-.Lfunc_begin4         #     jumps to .Ltmp720
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin4         # >> Call Site 23 <<
	.uleb128 .Ltmp728-.Ltmp727              #   Call between .Ltmp727 and .Ltmp728
	.uleb128 .Ltmp729-.Lfunc_begin4         #     jumps to .Ltmp729
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp733-.Lfunc_begin4         # >> Call Site 24 <<
	.uleb128 .Ltmp734-.Ltmp733              #   Call between .Ltmp733 and .Ltmp734
	.uleb128 .Ltmp735-.Lfunc_begin4         #     jumps to .Ltmp735
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp734-.Lfunc_begin4         # >> Call Site 25 <<
	.uleb128 .Lfunc_end16-.Ltmp734          #   Call between .Ltmp734 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..17
	.type	.omp_outlined..17,@function
.omp_outlined..17:                      # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbp
	testl	%ebp, %ebp
	je	.LBB17_11
# %bb.1:
	movq	%rcx, %rbx
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	decl	%ebp
	movl	$0, 12(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, (%rsp)
	movl	(%rdi), %r14d
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
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
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	12(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB17_6
# %bb.2:
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rax,%rdx,8), %rdi
	movq	%rsp, %r8
	cmpq	%r8, %rdi
	setae	%r9b
	leaq	(%rax,%rsi,8), %rdi
	cmpq	%rdi, %r8
	setae	%r10b
	leaq	(%rcx,%rdx,8), %rdi
	cmpq	%r8, %rdi
	setb	%dil
	leaq	(%rcx,%rsi,8), %rbp
	cmpq	%rbp, %r8
	setb	%r8b
	testb	%r10b, %r9b
	jne	.LBB17_4
# %bb.3:
	orb	%r8b, %dil
	je	.LBB17_4
# %bb.12:
	movq	%rdx, %r8
	subq	%rsi, %r8
	incq	%r8
	vxorpd	%xmm0, %xmm0, %xmm0
	cmpq	$8, %r8
	jb	.LBB17_15
# %bb.13:
	movq	%r8, %rdi
	shrq	$3, %rdi
	leaq	56(,%rsi,8), %rbp
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB17_14:                              # =>This Inner Loop Header: Depth=1
	vmovsd	-56(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vmovsd	-48(%rax,%rbp), %xmm2           # xmm2 = mem[0],zero
	vfmadd132sd	-56(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vfmadd231sd	-48(%rcx,%rbp), %xmm2, %xmm1 # xmm1 = (xmm2 * mem) + xmm1
	vmovsd	-40(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-40(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-32(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-32(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-24(%rax,%rbp), %xmm0           # xmm0 = mem[0],zero
	vfmadd132sd	-24(%rcx,%rbp), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	-16(%rax,%rbp), %xmm1           # xmm1 = mem[0],zero
	vfmadd132sd	-16(%rcx,%rbp), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	-8(%rax,%rbp), %xmm2            # xmm2 = mem[0],zero
	vfmadd132sd	-8(%rcx,%rbp), %xmm1, %xmm2 # xmm2 = (xmm2 * mem) + xmm1
	vmovsd	(%rax,%rbp), %xmm0              # xmm0 = mem[0],zero
	vfmadd132sd	(%rcx,%rbp), %xmm2, %xmm0 # xmm0 = (xmm0 * mem) + xmm2
	addq	$64, %rbp
	decq	%rdi
	jne	.LBB17_14
.LBB17_15:
	movq	%r8, %rdi
	andq	$-8, %rdi
	cmpq	%r8, %rdi
	jae	.LBB17_18
# %bb.16:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB17_17:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB17_17
.LBB17_18:
	vmovsd	%xmm0, (%rsp)
	jmp	.LBB17_6
.LBB17_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rax,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rcx,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, (%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB17_5
.LBB17_6:
	movl	$.L__unnamed_2, %edi
	movl	%r14d, %esi
	callq	__kmpc_for_static_fini@PLT
	movq	%rsp, %rax
	movq	%rax, 40(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rax
	leaq	48(%rsp), %r8
	movl	$.L__unnamed_3, %edi
	movl	$8, %ecx
	movl	$.omp.reduction.reduction_func.18, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB17_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB17_11
# %bb.8:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB17_11
.LBB17_9:
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB17_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB17_10
.LBB17_11:
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	.omp_outlined..17, .Lfunc_end17-.omp_outlined..17
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.18
	.type	.omp.reduction.reduction_func.18,@function
.omp.reduction.reduction_func.18:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end18:
	.size	.omp.reduction.reduction_func.18, .Lfunc_end18-.omp.reduction.reduction_func.18
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.LCPI19_0:
	.quad	0x3ff0000000000000              #  1
	.quad	0x3ff0000000000000              #  1
.LCPI19_1:
	.zero	16
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.p2align	4, 0x90
	.type	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,@function
_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii: # 
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
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
	subq	$1240, %rsp                     # imm = 0x4D8
	.cfi_def_cfa_offset 1296
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 164(%rsp)                 # 4-byte Spill
	movl	%r8d, 264(%rsp)                 # 4-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 488(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 256(%rsp)                 # 8-byte Spill
	movl	%edi, %r14d
	leaq	800(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
	leaq	1120(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	1088(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	1056(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	leaq	1024(%rsp), %r12
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
	leaq	992(%rsp), %r13
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	800(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
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
	testl	%r14d, %r14d
	js	.LBB19_344
# %bb.1:
	movslq	%r14d, %rdx
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	je	.LBB19_4
# %bb.2:
	leaq	(,%rdx,8), %rbx
	movq	%rdx, %rbp
	movq	%rbx, %rdi
	callq	_Znwm
	movq	%rax, %r15
	movq	%rax, 224(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 240(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r14d
	jne	.LBB19_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB19_6
.LBB19_4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 224(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 240(%rsp)
	vmovupd	%xmm0, 464(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 480(%rsp)
	xorl	%r15d, %r15d
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	xorl	%ebp, %ebp
	movq	%rbp, 472(%rsp)
	cmpl	$0, 256(%rsp)                   # 4-byte Folded Reload
	je	.LBB19_317
.LBB19_9:
	movq	%rdx, %r14
	shlq	$5, %r14
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %eax
	leaq	(,%rdx,8), %rsi
	movq	%rsi, 312(%rsp)                 # 8-byte Spill
	movl	%eax, %esi
	andl	$-4, %esi
	leaq	(,%rax,8), %rdi
	movq	%rdi, 304(%rsp)                 # 8-byte Spill
	andq	$-4, %rdx
	movq	%rdx, 504(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax def $rax
	andl	$3, %eax
	movq	%rax, 520(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%ecx, %eax
	incl	%eax
	movq	%rax, 512(%rsp)                 # 8-byte Spill
	movq	%rsi, 208(%rsp)                 # 8-byte Spill
	leaq	1(%rsi), %rax
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 416(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 384(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 368(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 352(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 336(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 400(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%esi, %esi
	movq	%rbp, 176(%rsp)                 # 8-byte Spill
	movq	%r14, 528(%rsp)                 # 8-byte Spill
	jmp	.LBB19_11
	.p2align	4, 0x90
.LBB19_10:                              #   in Loop: Header=BB19_11 Depth=1
	vcvtsi2sdq	600(%rsp), %xmm1, %xmm0 # 8-byte Folded Reload
	vcvtsi2sdq	328(%rsp), %xmm1, %xmm1 # 8-byte Folded Reload
	vmovupd	416(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm2, %xmm2
	vmovupd	%xmm2, 416(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vcvtsi2sdq	320(%rsp), %xmm3, %xmm0 # 8-byte Folded Reload
	vmovupd	384(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm2, %xmm2
	vmovupd	%xmm2, 384(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	1152(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm2, %xmm2
	vcvtsi2sdq	152(%rsp), %xmm3, %xmm0 # 8-byte Folded Reload
	vmovupd	368(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovupd	%xmm1, 368(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vcvtsi2sd	%r13, %xmm3, %xmm0
	vmovupd	352(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm1, %xmm1
	vmovupd	%xmm1, 352(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vcvtsi2sd	%r12, %xmm3, %xmm0
	vcvtsi2sd	%rbx, %xmm3, %xmm1
	vmovupd	336(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm3, %xmm3
	vmovupd	%xmm3, 336(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	400(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovupd	%xmm0, 400(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	movl	268(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	cmpl	256(%rsp), %esi                 # 4-byte Folded Reload
	movq	528(%rsp), %r14                 # 8-byte Reload
	je	.LBB19_315
.LBB19_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_15 Depth 2
                                        #     Child Loop BB19_18 Depth 2
                                        #     Child Loop BB19_23 Depth 2
                                        #     Child Loop BB19_33 Depth 2
                                        #     Child Loop BB19_38 Depth 2
                                        #     Child Loop BB19_43 Depth 2
                                        #     Child Loop BB19_46 Depth 2
                                        #     Child Loop BB19_50 Depth 2
                                        #     Child Loop BB19_53 Depth 2
                                        #     Child Loop BB19_57 Depth 2
                                        #     Child Loop BB19_60 Depth 2
                                        #     Child Loop BB19_64 Depth 2
                                        #     Child Loop BB19_67 Depth 2
                                        #     Child Loop BB19_70 Depth 2
                                        #     Child Loop BB19_226 Depth 2
                                        #     Child Loop BB19_229 Depth 2
                                        #     Child Loop BB19_237 Depth 2
                                        #     Child Loop BB19_240 Depth 2
                                        #     Child Loop BB19_243 Depth 2
                                        #     Child Loop BB19_247 Depth 2
                                        #     Child Loop BB19_250 Depth 2
                                        #     Child Loop BB19_254 Depth 2
                                        #     Child Loop BB19_257 Depth 2
                                        #     Child Loop BB19_261 Depth 2
                                        #     Child Loop BB19_264 Depth 2
                                        #     Child Loop BB19_268 Depth 2
                                        #     Child Loop BB19_271 Depth 2
                                        #     Child Loop BB19_275 Depth 2
	vmovupd	%xmm2, 1152(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 432(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 448(%rsp)
.Ltmp840:
	leaq	432(%rsp), %rdi
	movl	%esi, 268(%rsp)                 # 4-byte Spill
	movl	264(%rsp), %edx                 # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp841:
# %bb.12:                               #   in Loop: Header=BB19_11 Depth=1
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	je	.LBB19_19
# %bb.13:                               #   in Loop: Header=BB19_11 Depth=1
	movq	432(%rsp), %rax
	cmpl	$4, 24(%rsp)                    # 4-byte Folded Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	184(%rsp), %rdi                 # 8-byte Reload
	movq	208(%rsp), %rbp                 # 8-byte Reload
	jb	.LBB19_16
# %bb.14:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB19_15:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rcx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r15,%rcx,8)
	leal	(%rdi,%rcx), %edx
	incl	%edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rsi,%rcx,8)
	vmovsd	16(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r15,%rcx,8)
	leal	2(%rdi,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rsi,%rcx,8)
	vmovsd	24(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r15,%rcx,8)
	leal	3(%rdi,%rcx), %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rsi,%rcx,8)
	vmovsd	32(%rax,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r15,%rcx,8)
	leal	(%rdi,%rcx), %edx
	addl	$4, %edx
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rsi,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rbp
	jne	.LBB19_15
.LBB19_16:                              #   in Loop: Header=BB19_11 Depth=1
	cmpq	%rdi, %rbp
	movq	520(%rsp), %r8                  # 8-byte Reload
	movq	512(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB19_19
# %bb.17:                               #   in Loop: Header=BB19_11 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	208(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rcx,%rsi,8), %rcx
	movq	496(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx,8), %rdx
	leaq	(%r15,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB19_18:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rsi,%rdi,8)
	leal	(%rbx,%rdi), %ebp
	vmovsd	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB19_18
.LBB19_19:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp843:
	movq	%r14, %rdi
	callq	_Znam
.Ltmp844:
# %bb.20:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp846:
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	_Znam
.Ltmp847:
# %bb.21:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, %rbx
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	je	.LBB19_28
# %bb.22:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, %rbp
	movq	%r12, %r13
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB19_23:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp848:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
.Ltmp849:
# %bb.24:                               #   in Loop: Header=BB19_23 Depth=2
	vmovsd	(%r15,%r14,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp850:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp851:
# %bb.25:                               #   in Loop: Header=BB19_23 Depth=2
.Ltmp852:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp853:
# %bb.26:                               #   in Loop: Header=BB19_23 Depth=2
	movq	16(%rsp), %rax                  # 8-byte Reload
	vmovsd	(%rax,%r14,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp854:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp855:
# %bb.27:                               #   in Loop: Header=BB19_23 Depth=2
	incq	%r14
	addq	$32, %r13
	addq	$32, %rbp
	cmpq	%r14, 184(%rsp)                 # 8-byte Folded Reload
	jne	.LBB19_23
.LBB19_28:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp857:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	272(%rsp), %rdi
	callq	mpfr_init2
.Ltmp858:
# %bb.29:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp859:
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	272(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp860:
# %bb.30:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	1224(%rsp), %rsi
	callq	clock_gettime
.Ltmp861:
	movq	24(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	leaq	272(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp862:
# %bb.31:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	1208(%rsp), %rsi
	callq	clock_gettime
	movq	1216(%rsp), %rax
	subq	1232(%rsp), %rax
	movq	%rax, 600(%rsp)                 # 8-byte Spill
	cmpl	$0, 24(%rsp)                    # 4-byte Folded Reload
	je	.LBB19_40
# %bb.32:                               #   in Loop: Header=BB19_11 Depth=1
	movq	184(%rsp), %rbp                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_33:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp864:
	movq	%r12, %rdi
	callq	mpfr_clear
.Ltmp865:
# %bb.34:                               #   in Loop: Header=BB19_33 Depth=2
.Ltmp866:
	movq	%rbx, %rdi
	callq	mpfr_clear
.Ltmp867:
# %bb.35:                               #   in Loop: Header=BB19_33 Depth=2
	addq	$32, %r12
	addq	$32, %rbx
	decq	%rbp
	jne	.LBB19_33
# %bb.36:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	624(%rsp), %rsi
	callq	clock_gettime
	movq	208(%rsp), %rsi                 # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB19_41
# %bb.37:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	movq	184(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_38:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_38
# %bb.39:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_42
	jmp	.LBB19_44
	.p2align	4, 0x90
.LBB19_40:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	624(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm1, %xmm1, %xmm1
	jmp	.LBB19_71
	.p2align	4, 0x90
.LBB19_41:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
	movq	184(%rsp), %rdx                 # 8-byte Reload
.LBB19_42:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_43:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_43
.LBB19_44:                              #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_48
# %bb.45:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_46:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_46
# %bb.47:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_49
	jmp	.LBB19_51
	.p2align	4, 0x90
.LBB19_48:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_49:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_50:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_50
.LBB19_51:                              #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_55
# %bb.52:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_53:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_53
# %bb.54:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_56
	jmp	.LBB19_58
	.p2align	4, 0x90
.LBB19_55:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_56:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_57:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_57
.LBB19_58:                              #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_62
# %bb.59:                               #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_60:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_60
# %bb.61:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_63
	jmp	.LBB19_65
	.p2align	4, 0x90
.LBB19_62:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_63:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_64:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_64
.LBB19_65:                              #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_69
# %bb.66:                               #   in Loop: Header=BB19_11 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_67:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rcx,%rax,8), %ymm1
	vfmadd231pd	(%r15,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_67
# %bb.68:                               #   in Loop: Header=BB19_11 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	jne	.LBB19_70
	jmp	.LBB19_71
	.p2align	4, 0x90
.LBB19_69:                              #   in Loop: Header=BB19_11 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_70:                              #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r15,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB19_70
.LBB19_71:                              #   in Loop: Header=BB19_11 Depth=1
	vmovsd	%xmm1, 592(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	976(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	movq	976(%rsp), %r12
	subq	624(%rsp), %r12
	movq	984(%rsp), %r14
	subq	632(%rsp), %r14
	movq	$0, 168(%rsp)
	xorl	%edi, %edi
	leaq	960(%rsp), %rsi
	callq	clock_gettime
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	$0, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%r15, %rbp
	je	.LBB19_75
# %bb.72:                               #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_336
# %bb.73:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp869:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp870:
# %bb.74:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_76
	.p2align	4, 0x90
.LBB19_75:                              #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 112(%rsp)
.LBB19_76:                              #   in Loop: Header=BB19_11 Depth=1
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %r13
	movq	%r13, %rdx
	sarq	$3, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rbx, 104(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	cmpq	%rax, %rcx
	je	.LBB19_80
# %bb.77:                               #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_338
# %bb.78:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp871:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp872:
# %bb.79:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_81
	.p2align	4, 0x90
.LBB19_80:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 80(%rsp)
	movq	%r13, %rbx
.LBB19_81:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 72(%rsp)
.Ltmp873:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	168(%rsp), %r9
	callq	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.Ltmp874:
# %bb.82:                               #   in Loop: Header=BB19_11 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_84
# %bb.83:                               #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_84:                              #   in Loop: Header=BB19_11 Depth=1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_86
# %bb.85:                               #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_86:                              #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	$0, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%r15, %rbp
	je	.LBB19_90
# %bb.87:                               #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_336
# %bb.88:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp875:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp876:
# %bb.89:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_91
	.p2align	4, 0x90
.LBB19_90:                              #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 112(%rsp)
.LBB19_91:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 104(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_95
# %bb.92:                               #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_338
# %bb.93:                               #   in Loop: Header=BB19_11 Depth=1
.Ltmp877:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp878:
# %bb.94:                               #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_96
	.p2align	4, 0x90
.LBB19_95:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 80(%rsp)
	movq	%r13, %rbx
.LBB19_96:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 72(%rsp)
.Ltmp879:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	168(%rsp), %r9
	callq	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.Ltmp880:
# %bb.97:                               #   in Loop: Header=BB19_11 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_99
# %bb.98:                               #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_99:                              #   in Loop: Header=BB19_11 Depth=1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_101
# %bb.100:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_101:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	$0, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%r15, %rbp
	je	.LBB19_105
# %bb.102:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_336
# %bb.103:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp881:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp882:
# %bb.104:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_106
	.p2align	4, 0x90
.LBB19_105:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 112(%rsp)
.LBB19_106:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 104(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_110
# %bb.107:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_338
# %bb.108:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp883:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp884:
# %bb.109:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_111
	.p2align	4, 0x90
.LBB19_110:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 80(%rsp)
	movq	%r13, %rbx
.LBB19_111:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 72(%rsp)
.Ltmp885:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	168(%rsp), %r9
	callq	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.Ltmp886:
# %bb.112:                              #   in Loop: Header=BB19_11 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_114
# %bb.113:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_114:                             #   in Loop: Header=BB19_11 Depth=1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_116
# %bb.115:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_116:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	$0, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%r15, %rbp
	je	.LBB19_120
# %bb.117:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_336
# %bb.118:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp887:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp888:
# %bb.119:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_121
	.p2align	4, 0x90
.LBB19_120:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 112(%rsp)
.LBB19_121:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 104(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_125
# %bb.122:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_338
# %bb.123:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp889:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp890:
# %bb.124:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_126
	.p2align	4, 0x90
.LBB19_125:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 80(%rsp)
	movq	%r13, %rbx
.LBB19_126:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 72(%rsp)
.Ltmp891:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	168(%rsp), %r9
	callq	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.Ltmp892:
# %bb.127:                              #   in Loop: Header=BB19_11 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_129
# %bb.128:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_129:                             #   in Loop: Header=BB19_11 Depth=1
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_131
# %bb.130:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_131:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	movq	$0, 168(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	subq	%r15, %rbp
	je	.LBB19_135
# %bb.132:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_336
# %bb.133:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp893:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp894:
# %bb.134:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_136
	.p2align	4, 0x90
.LBB19_135:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 112(%rsp)
.LBB19_136:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 104(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	movq	184(%rsp), %rbp                 # 8-byte Reload
	je	.LBB19_140
# %bb.137:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_338
# %bb.138:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp899:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp900:
# %bb.139:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_141
	.p2align	4, 0x90
.LBB19_140:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 80(%rsp)
	movq	%r13, %rbx
.LBB19_141:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 72(%rsp)
.Ltmp905:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	leaq	168(%rsp), %r9
	callq	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd
.Ltmp906:
# %bb.142:                              #   in Loop: Header=BB19_11 Depth=1
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_144
# %bb.143:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_144:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r12, 584(%rsp)                 # 8-byte Spill
	movq	%r14, 328(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_146
# %bb.145:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_146:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	944(%rsp), %rsi
	callq	clock_gettime
	movq	944(%rsp), %rcx
	movq	952(%rsp), %rax
	subq	960(%rsp), %rcx
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	subq	968(%rsp), %rax
	movq	%rax, 320(%rsp)                 # 8-byte Spill
	movl	164(%rsp), %edi                 # 4-byte Reload
	callq	omp_set_num_threads
	xorl	%edi, %edi
	leaq	928(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 200(%rsp)
	leaq	464(%rsp), %rbx
	movq	%rbx, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..19, %edx
	movl	$4, %esi
	movq	%rbp, %rcx
	leaq	200(%rsp), %r12
	movq	%r12, %r8
	leaq	224(%rsp), %r14
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 200(%rsp)
	movq	%rbx, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..19, %edx
	movl	$4, %esi
	movq	%rbp, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 200(%rsp)
	movq	%rbx, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..19, %edx
	movl	$4, %esi
	movq	%rbp, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 200(%rsp)
	movq	%rbx, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..19, %edx
	movl	$4, %esi
	movq	%rbp, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	movq	$0, 200(%rsp)
	movq	%rbx, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..19, %edx
	movl	$4, %esi
	movq	%rbp, %rcx
	movq	%r12, %r8
	movq	%r14, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	912(%rsp), %rsi
	callq	clock_gettime
	movq	912(%rsp), %rax
	movq	920(%rsp), %r12
	subq	928(%rsp), %rax
	movq	%rax, 568(%rsp)                 # 8-byte Spill
	subq	936(%rsp), %r12
	xorl	%edi, %edi
	leaq	896(%rsp), %rsi
	callq	clock_gettime
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%r15, %rbp
	je	.LBB19_150
# %bb.147:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	leaq	128(%rsp), %r14
	ja	.LBB19_340
# %bb.148:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp908:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp909:
# %bb.149:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_151
	.p2align	4, 0x90
.LBB19_150:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 144(%rsp)
	leaq	128(%rsp), %r14
.LBB19_151:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 136(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_155
# %bb.152:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_342
# %bb.153:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp910:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp911:
# %bb.154:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_156
	.p2align	4, 0x90
.LBB19_155:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 48(%rsp)
	movq	%r13, %rbx
.LBB19_156:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp912:
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	164(%rsp), %r9d                 # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp913:
# %bb.157:                              #   in Loop: Header=BB19_11 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_159
# %bb.158:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_159:                             #   in Loop: Header=BB19_11 Depth=1
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_161
# %bb.160:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_161:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%r15, %rbp
	je	.LBB19_165
# %bb.162:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_340
# %bb.163:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp914:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp915:
# %bb.164:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_166
	.p2align	4, 0x90
.LBB19_165:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 144(%rsp)
.LBB19_166:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 136(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_170
# %bb.167:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_342
# %bb.168:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp916:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp917:
# %bb.169:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_171
	.p2align	4, 0x90
.LBB19_170:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 48(%rsp)
	movq	%r13, %rbx
.LBB19_171:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp918:
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	164(%rsp), %r9d                 # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp919:
# %bb.172:                              #   in Loop: Header=BB19_11 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_174
# %bb.173:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_174:                             #   in Loop: Header=BB19_11 Depth=1
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_176
# %bb.175:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_176:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%r15, %rbp
	je	.LBB19_180
# %bb.177:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_340
# %bb.178:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp920:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp921:
# %bb.179:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_181
	.p2align	4, 0x90
.LBB19_180:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 144(%rsp)
.LBB19_181:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 136(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_185
# %bb.182:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_342
# %bb.183:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp922:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp923:
# %bb.184:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_186
	.p2align	4, 0x90
.LBB19_185:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 48(%rsp)
	movq	%r13, %rbx
.LBB19_186:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp924:
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	164(%rsp), %r9d                 # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp925:
# %bb.187:                              #   in Loop: Header=BB19_11 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_189
# %bb.188:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_189:                             #   in Loop: Header=BB19_11 Depth=1
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_191
# %bb.190:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_191:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%r15, %rbp
	je	.LBB19_195
# %bb.192:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_340
# %bb.193:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp926:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp927:
# %bb.194:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_196
	.p2align	4, 0x90
.LBB19_195:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 144(%rsp)
.LBB19_196:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 136(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_200
# %bb.197:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_342
# %bb.198:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp928:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp929:
# %bb.199:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	jmp	.LBB19_201
	.p2align	4, 0x90
.LBB19_200:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 48(%rsp)
	movq	%r13, %rbx
.LBB19_201:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 40(%rsp)
.Ltmp930:
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	164(%rsp), %r9d                 # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp931:
# %bb.202:                              #   in Loop: Header=BB19_11 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_204
# %bb.203:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_204:                             #   in Loop: Header=BB19_11 Depth=1
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_206
# %bb.205:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_206:                             #   in Loop: Header=BB19_11 Depth=1
	movq	232(%rsp), %rbp
	movq	%rbp, %rbx
	subq	%r15, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	subq	%r15, %rbp
	je	.LBB19_210
# %bb.207:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB19_340
# %bb.208:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp932:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp933:
# %bb.209:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 128(%rsp)
	movq	%rax, 136(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB19_211
	.p2align	4, 0x90
.LBB19_210:                             #   in Loop: Header=BB19_11 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 144(%rsp)
.LBB19_211:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, 136(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 48(%rsp)
	movq	176(%rsp), %rax                 # 8-byte Reload
	cmpq	16(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB19_215
# %bb.212:                              #   in Loop: Header=BB19_11 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB19_342
# %bb.213:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp938:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp939:
# %bb.214:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	152(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove@PLT
	movq	%rbx, %r13
	jmp	.LBB19_216
	.p2align	4, 0x90
.LBB19_215:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 48(%rsp)
.LBB19_216:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r13, 40(%rsp)
.Ltmp944:
	movq	%r14, %rdi
	leaq	32(%rsp), %rsi
	movq	24(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	164(%rsp), %r9d                 # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 552(%rsp)                # 8-byte Spill
.Ltmp945:
# %bb.217:                              #   in Loop: Header=BB19_11 Depth=1
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_219
# %bb.218:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_219:                             #   in Loop: Header=BB19_11 Depth=1
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_221
# %bb.220:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
.LBB19_221:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	880(%rsp), %rsi
	callq	clock_gettime
	movq	880(%rsp), %rax
	movq	888(%rsp), %r13
	subq	896(%rsp), %rax
	movq	%rax, 544(%rsp)                 # 8-byte Spill
	subq	904(%rsp), %r13
	movq	312(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbp
	movq	24(%rsp), %r14                  # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB19_231
# %bb.222:                              #   in Loop: Header=BB19_11 Depth=1
	cmpl	$13, %r14d
	jb	.LBB19_224
# %bb.223:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	304(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB19_230
	.p2align	4, 0x90
.LBB19_224:                             #   in Loop: Header=BB19_11 Depth=1
	movq	208(%rsp), %rdx                 # 8-byte Reload
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB19_228
# %bb.225:                              #   in Loop: Header=BB19_11 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB19_226:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r15,%rax,8), %ymm0
	vmovups	%ymm0, (%rbx,%rax,8)
	vmovupd	(%rcx,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB19_226
# %bb.227:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	cmpq	184(%rsp), %rdx                 # 8-byte Folded Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	je	.LBB19_231
.LBB19_228:                             #   in Loop: Header=BB19_11 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_229:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB19_229
.LBB19_230:                             #   in Loop: Header=BB19_11 Depth=1
	movq	24(%rsp), %r14                  # 8-byte Reload
.LBB19_231:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%r12, 152(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	leaq	864(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	movl	%r14d, %edi
	movq	%rbx, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 560(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	848(%rsp), %rsi
	callq	clock_gettime
	movq	848(%rsp), %rax
	movq	856(%rsp), %r12
	subq	864(%rsp), %rax
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	subq	872(%rsp), %r12
	movq	312(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbp
	movq	%rbx, %rdi
	callq	malloc
	testl	%r14d, %r14d
	je	.LBB19_234
# %bb.232:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rax, %rbx
	cmpl	$13, %r14d
	jb	.LBB19_235
# %bb.233:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	304(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	leaq	1168(%rsp), %r14
	jmp	.LBB19_241
	.p2align	4, 0x90
.LBB19_234:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	608(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 216(%rsp)                   # 8-byte Folded Spill
	leaq	1168(%rsp), %r14
	jmp	.LBB19_277
	.p2align	4, 0x90
.LBB19_235:                             #   in Loop: Header=BB19_11 Depth=1
	movq	208(%rsp), %rsi                 # 8-byte Reload
	xorl	%eax, %eax
	testq	%rsi, %rsi
	je	.LBB19_239
# %bb.236:                              #   in Loop: Header=BB19_11 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leaq	1168(%rsp), %r14
	.p2align	4, 0x90
.LBB19_237:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%r15,%rax,8), %ymm0
	vmovups	%ymm0, (%rbp,%rax,8)
	vmovupd	(%rcx,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rsi, %rax
	jb	.LBB19_237
# %bb.238:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rax
	movq	184(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rsi
	jne	.LBB19_240
	jmp	.LBB19_241
.LBB19_239:                             #   in Loop: Header=BB19_11 Depth=1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	184(%rsp), %rdx                 # 8-byte Reload
	leaq	1168(%rsp), %r14
	.p2align	4, 0x90
.LBB19_240:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB19_240
.LBB19_241:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	608(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	movq	504(%rsp), %rsi                 # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB19_245
# %bb.242:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	movq	248(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB19_243:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jl	.LBB19_243
# %bb.244:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_246
	jmp	.LBB19_248
	.p2align	4, 0x90
.LBB19_245:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
	movq	248(%rsp), %rdx                 # 8-byte Reload
.LBB19_246:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_247:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_247
.LBB19_248:                             #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_252
# %bb.249:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_250:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jl	.LBB19_250
# %bb.251:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_253
	jmp	.LBB19_255
	.p2align	4, 0x90
.LBB19_252:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_253:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_254:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_254
.LBB19_255:                             #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_259
# %bb.256:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_257:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jl	.LBB19_257
# %bb.258:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_260
	jmp	.LBB19_262
	.p2align	4, 0x90
.LBB19_259:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_260:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_261:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_261
.LBB19_262:                             #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_266
# %bb.263:                              #   in Loop: Header=BB19_11 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_264:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rsi, %rax
	jl	.LBB19_264
# %bb.265:                              #   in Loop: Header=BB19_11 Depth=1
	movq	%rsi, %rcx
	cmpq	%rdx, %rsi
	jne	.LBB19_267
	jmp	.LBB19_269
	.p2align	4, 0x90
.LBB19_266:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%ecx, %ecx
.LBB19_267:                             #   in Loop: Header=BB19_11 Depth=1
	movq	%rdx, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB19_268:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB19_268
.LBB19_269:                             #   in Loop: Header=BB19_11 Depth=1
	testq	%rsi, %rsi
	je	.LBB19_273
# %bb.270:                              #   in Loop: Header=BB19_11 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB19_271:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbx,%rax,8), %ymm1
	vfmadd231pd	(%rbp,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rsi, %rax
	jl	.LBB19_271
# %bb.272:                              #   in Loop: Header=BB19_11 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 216(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	cmpq	%rdx, %rsi
	jne	.LBB19_274
	jmp	.LBB19_277
	.p2align	4, 0x90
.LBB19_273:                             #   in Loop: Header=BB19_11 Depth=1
	movq	$0, 216(%rsp)                   # 8-byte Folded Spill
	xorl	%eax, %eax
.LBB19_274:                             #   in Loop: Header=BB19_11 Depth=1
	vmovsd	216(%rsp), %xmm1                # 8-byte Reload
                                        # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB19_275:                             #   Parent Loop BB19_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%rbp,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rdx
	jne	.LBB19_275
# %bb.276:                              #   in Loop: Header=BB19_11 Depth=1
	vmovsd	%xmm1, 216(%rsp)                # 8-byte Spill
.LBB19_277:                             #   in Loop: Header=BB19_11 Depth=1
	xorl	%edi, %edi
	leaq	832(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	movq	832(%rsp), %rbp
	movq	840(%rsp), %rbx
	subq	608(%rsp), %rbp
	subq	616(%rsp), %rbx
.Ltmp947:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp948:
# %bb.278:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp949:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	768(%rsp), %rdi
	callq	mpfr_init2
.Ltmp950:
# %bb.279:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp951:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	736(%rsp), %rdi
	callq	mpfr_init2
.Ltmp952:
# %bb.280:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp953:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	704(%rsp), %rdi
	callq	mpfr_init2
.Ltmp954:
# %bb.281:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp955:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	672(%rsp), %rdi
	callq	mpfr_init2
.Ltmp956:
# %bb.282:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp957:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	640(%rsp), %rdi
	callq	mpfr_init2
.Ltmp958:
# %bb.283:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp959:
	leaq	704(%rsp), %rdi
	leaq	272(%rsp), %rsi
	vmovsd	592(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp960:
# %bb.284:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp961:
	leaq	704(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp962:
# %bb.285:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp963:
	leaq	704(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp964:
# %bb.286:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp965:
	leaq	800(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	704(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp966:
# %bb.287:                              #   in Loop: Header=BB19_11 Depth=1
	vmovsd	168(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp967:
	movq	%r14, %rdi
	leaq	272(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp968:
# %bb.288:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp969:
	movq	%r14, %rdi
	movq	%r14, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp970:
# %bb.289:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp971:
	movq	%r14, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp972:
# %bb.290:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp973:
	leaq	1120(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp974:
# %bb.291:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp975:
	leaq	768(%rsp), %rdi
	leaq	272(%rsp), %rsi
	vmovsd	560(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp976:
# %bb.292:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp977:
	leaq	768(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp978:
# %bb.293:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp979:
	leaq	768(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp980:
# %bb.294:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp981:
	leaq	1024(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	768(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp982:
# %bb.295:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp983:
	leaq	736(%rsp), %rdi
	leaq	272(%rsp), %rsi
	vmovsd	216(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp984:
# %bb.296:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp985:
	leaq	736(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp986:
# %bb.297:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp987:
	leaq	736(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp988:
# %bb.298:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp989:
	leaq	992(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	736(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp990:
# %bb.299:                              #   in Loop: Header=BB19_11 Depth=1
	vmovsd	200(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp991:
	leaq	672(%rsp), %rdi
	leaq	272(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp992:
# %bb.300:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp993:
	leaq	672(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp994:
# %bb.301:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp995:
	leaq	672(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp996:
# %bb.302:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp997:
	leaq	1088(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	672(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp998:
# %bb.303:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp999:
	leaq	640(%rsp), %rdi
	leaq	272(%rsp), %rsi
	vmovsd	552(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1000:
# %bb.304:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1001:
	leaq	640(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	272(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1002:
# %bb.305:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1003:
	leaq	640(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1004:
# %bb.306:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1005:
	leaq	1056(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	640(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1006:
# %bb.307:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1007:
	movq	%r14, %rdi
	callq	mpfr_clear
.Ltmp1008:
# %bb.308:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1009:
	leaq	768(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1010:
# %bb.309:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1011:
	leaq	736(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1012:
# %bb.310:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1013:
	leaq	704(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1014:
# %bb.311:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1015:
	leaq	672(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1016:
# %bb.312:                              #   in Loop: Header=BB19_11 Depth=1
.Ltmp1017:
	leaq	640(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1018:
# %bb.313:                              #   in Loop: Header=BB19_11 Depth=1
	imulq	$1000000000, 584(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 328(%rsp)                 # 8-byte Folded Spill
	imulq	$1000000000, 576(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 320(%rsp)                 # 8-byte Folded Spill
	imulq	$1000000000, 568(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 152(%rsp)                 # 8-byte Folded Spill
	imulq	$1000000000, 544(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, %r13
	imulq	$1000000000, 536(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, %r12
	imulq	$1000000000, %rbp, %rax         # imm = 0x3B9ACA00
	addq	%rax, %rbx
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_10
# %bb.314:                              #   in Loop: Header=BB19_11 Depth=1
	callq	_ZdlPv
	jmp	.LBB19_10
.LBB19_315:
	vmovupd	352(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	336(%rsp), %xmm0, %xmm0 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0]
	vunpcklpd	368(%rsp), %xmm2, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm2[0],mem[0]
	vmovupd	416(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	384(%rsp), %xmm2, %xmm2 # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	vinsertf128	$1, %xmm1, %ymm2, %ymm1
	vmovupd	400(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB19_318
.LBB19_5:
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB19_6:
	movq	%rbp, 232(%rsp)
.Ltmp837:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp838:
# %bb.7:
	movq	%rax, 464(%rsp)
	movq	248(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rax,%rdx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 480(%rsp)
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, 24(%rsp)                    # 4-byte Folded Reload
	jne	.LBB19_316
# %bb.8:
	movq	%rdi, %rbp
	movq	%rbp, 472(%rsp)
	cmpl	$0, 256(%rsp)                   # 4-byte Folded Reload
	jne	.LBB19_9
	jmp	.LBB19_317
.LBB19_316:
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
	movq	248(%rsp), %rdx                 # 8-byte Reload
	movq	%rbp, 472(%rsp)
	cmpl	$0, 256(%rsp)                   # 4-byte Folded Reload
	jne	.LBB19_9
.LBB19_317:
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm4, %xmm4, %xmm4
.LBB19_318:
	movq	256(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rcx,4), %eax
	vmovd	%ecx, %xmm2
	vpinsrd	$1, %eax, %xmm2, %xmm2
	movq	488(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vcvtdq2pd	%xmm2, %xmm2
	vpermpd	$84, %ymm2, %ymm3               # ymm3 = ymm2[0,1,1,1]
	vdivpd	%ymm3, %ymm1, %ymm1
	vpermilpd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0]
	vmovupd	%ymm1, (%rax)
	vpermilpd	$3, %xmm2, %xmm1        # xmm1 = xmm2[1,1]
	vmovupd	.LCPI19_0(%rip), %xmm2          # xmm2 = [1.0E+0,1.0E+0]
                                        # AlignMOV convert to UnAlignMOV 
	vdivpd	%xmm1, %xmm2, %xmm1
	vmulpd	%xmm1, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rax)
	vdivsd	%xmm3, %xmm4, %xmm0
	vmovsd	%xmm0, 48(%rax)
	movslq	%ecx, %rbx
.Ltmp1020:
	leaq	800(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp1021:
# %bb.319:
.Ltmp1022:
	leaq	1120(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1023:
# %bb.320:
.Ltmp1024:
	leaq	1088(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1025:
# %bb.321:
.Ltmp1026:
	leaq	1056(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1027:
# %bb.322:
.Ltmp1028:
	leaq	1024(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1029:
# %bb.323:
.Ltmp1030:
	leaq	992(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1031:
# %bb.324:
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
.Ltmp1032:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp1033:
# %bb.325:
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	addq	$32, %rdi
	movl	808(%rsp), %ecx
.Ltmp1034:
	leaq	800(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1035:
# %bb.326:
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	addq	$64, %rdi
	movl	1128(%rsp), %ecx
.Ltmp1036:
	leaq	1120(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1037:
# %bb.327:
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	addq	$96, %rdi
	movl	1096(%rsp), %ecx
.Ltmp1038:
	leaq	1088(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1039:
# %bb.328:
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	subq	$-128, %rdi
	movl	1064(%rsp), %ecx
.Ltmp1040:
	leaq	1056(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1041:
# %bb.329:
	movl	$160, %edi
	movq	192(%rsp), %rax                 # 8-byte Reload
	addq	(%rax), %rdi
	movl	1032(%rsp), %ecx
.Ltmp1042:
	leaq	1024(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1043:
# %bb.330:
	movl	$192, %edi
	movq	192(%rsp), %rax                 # 8-byte Reload
	addq	(%rax), %rdi
	movl	1000(%rsp), %ecx
.Ltmp1044:
	leaq	992(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1045:
# %bb.331:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB19_333
# %bb.332:
	callq	_ZdlPv
.LBB19_333:
	testq	%r15, %r15
	je	.LBB19_335
# %bb.334:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB19_335:
	addq	$1240, %rsp                     # imm = 0x4D8
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
.LBB19_336:
	.cfi_def_cfa_offset 1296
.Ltmp896:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp897:
# %bb.337:
.LBB19_338:
.Ltmp902:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp903:
# %bb.339:
.LBB19_340:
.Ltmp935:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp936:
# %bb.341:
.LBB19_342:
.Ltmp941:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp942:
# %bb.343:
.LBB19_344:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB19_345:
.Ltmp839:
	movq	%rax, %rbx
	jmp	.LBB19_378
.LBB19_346:
.Ltmp1046:
	movq	%rax, %rbx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB19_374
	jmp	.LBB19_377
.LBB19_347:
.Ltmp845:
	jmp	.LBB19_371
.LBB19_348:
.Ltmp842:
	jmp	.LBB19_371
.LBB19_349:
.Ltmp940:
	jmp	.LBB19_362
.LBB19_350:
.Ltmp934:
	jmp	.LBB19_371
.LBB19_351:
.Ltmp901:
	jmp	.LBB19_367
.LBB19_352:
.Ltmp895:
	jmp	.LBB19_371
.LBB19_353:
.Ltmp863:
	jmp	.LBB19_371
.LBB19_354:
.Ltmp946:
	movq	%rax, %rbx
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_363
# %bb.355:
	callq	_ZdlPv
	jmp	.LBB19_363
.LBB19_356:
.Ltmp907:
	movq	%rax, %rbx
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_368
# %bb.357:
	callq	_ZdlPv
	jmp	.LBB19_368
.LBB19_358:
.Ltmp1019:
	jmp	.LBB19_371
.LBB19_359:
.Ltmp868:
	jmp	.LBB19_371
.LBB19_360:
.Ltmp856:
	jmp	.LBB19_371
.LBB19_361:
.Ltmp943:
.LBB19_362:
	movq	%rax, %rbx
.LBB19_363:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB19_369
	jmp	.LBB19_372
.LBB19_365:
.Ltmp937:
	jmp	.LBB19_371
.LBB19_366:
.Ltmp904:
.LBB19_367:
	movq	%rax, %rbx
.LBB19_368:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_372
.LBB19_369:
	callq	_ZdlPv
.LBB19_372:
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB19_376
.LBB19_373:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB19_377
.LBB19_374:
	testq	%r15, %r15
	jne	.LBB19_378
.LBB19_375:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB19_370:
.Ltmp898:
.LBB19_371:
	movq	%rax, %rbx
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_373
.LBB19_376:
	callq	_ZdlPv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB19_374
.LBB19_377:
	callq	_ZdlPv
	testq	%r15, %r15
	je	.LBB19_375
.LBB19_378:
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end19:
	.size	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .Lfunc_end19-_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.cfi_endproc
	.section	.gcc_except_table._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp840-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp840
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp840-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp841-.Ltmp840              #   Call between .Ltmp840 and .Ltmp841
	.uleb128 .Ltmp842-.Lfunc_begin5         #     jumps to .Ltmp842
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp843-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp844-.Ltmp843              #   Call between .Ltmp843 and .Ltmp844
	.uleb128 .Ltmp845-.Lfunc_begin5         #     jumps to .Ltmp845
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp846-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp847-.Ltmp846              #   Call between .Ltmp846 and .Ltmp847
	.uleb128 .Ltmp863-.Lfunc_begin5         #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp848-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp855-.Ltmp848              #   Call between .Ltmp848 and .Ltmp855
	.uleb128 .Ltmp856-.Lfunc_begin5         #     jumps to .Ltmp856
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp857-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp862-.Ltmp857              #   Call between .Ltmp857 and .Ltmp862
	.uleb128 .Ltmp863-.Lfunc_begin5         #     jumps to .Ltmp863
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp864-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp867-.Ltmp864              #   Call between .Ltmp864 and .Ltmp867
	.uleb128 .Ltmp868-.Lfunc_begin5         #     jumps to .Ltmp868
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp869-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp870-.Ltmp869              #   Call between .Ltmp869 and .Ltmp870
	.uleb128 .Ltmp895-.Lfunc_begin5         #     jumps to .Ltmp895
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp870-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp871-.Ltmp870              #   Call between .Ltmp870 and .Ltmp871
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp871-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp872-.Ltmp871              #   Call between .Ltmp871 and .Ltmp872
	.uleb128 .Ltmp901-.Lfunc_begin5         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp872-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp873-.Ltmp872              #   Call between .Ltmp872 and .Ltmp873
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp873-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp874-.Ltmp873              #   Call between .Ltmp873 and .Ltmp874
	.uleb128 .Ltmp907-.Lfunc_begin5         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp875-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp876-.Ltmp875              #   Call between .Ltmp875 and .Ltmp876
	.uleb128 .Ltmp895-.Lfunc_begin5         #     jumps to .Ltmp895
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp876-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp877-.Ltmp876              #   Call between .Ltmp876 and .Ltmp877
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp877-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp878-.Ltmp877              #   Call between .Ltmp877 and .Ltmp878
	.uleb128 .Ltmp901-.Lfunc_begin5         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp878-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Ltmp879-.Ltmp878              #   Call between .Ltmp878 and .Ltmp879
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp879-.Lfunc_begin5         # >> Call Site 17 <<
	.uleb128 .Ltmp880-.Ltmp879              #   Call between .Ltmp879 and .Ltmp880
	.uleb128 .Ltmp907-.Lfunc_begin5         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp881-.Lfunc_begin5         # >> Call Site 18 <<
	.uleb128 .Ltmp882-.Ltmp881              #   Call between .Ltmp881 and .Ltmp882
	.uleb128 .Ltmp895-.Lfunc_begin5         #     jumps to .Ltmp895
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp882-.Lfunc_begin5         # >> Call Site 19 <<
	.uleb128 .Ltmp883-.Ltmp882              #   Call between .Ltmp882 and .Ltmp883
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp883-.Lfunc_begin5         # >> Call Site 20 <<
	.uleb128 .Ltmp884-.Ltmp883              #   Call between .Ltmp883 and .Ltmp884
	.uleb128 .Ltmp901-.Lfunc_begin5         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp884-.Lfunc_begin5         # >> Call Site 21 <<
	.uleb128 .Ltmp885-.Ltmp884              #   Call between .Ltmp884 and .Ltmp885
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp885-.Lfunc_begin5         # >> Call Site 22 <<
	.uleb128 .Ltmp886-.Ltmp885              #   Call between .Ltmp885 and .Ltmp886
	.uleb128 .Ltmp907-.Lfunc_begin5         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp887-.Lfunc_begin5         # >> Call Site 23 <<
	.uleb128 .Ltmp888-.Ltmp887              #   Call between .Ltmp887 and .Ltmp888
	.uleb128 .Ltmp895-.Lfunc_begin5         #     jumps to .Ltmp895
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp888-.Lfunc_begin5         # >> Call Site 24 <<
	.uleb128 .Ltmp889-.Ltmp888              #   Call between .Ltmp888 and .Ltmp889
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp889-.Lfunc_begin5         # >> Call Site 25 <<
	.uleb128 .Ltmp890-.Ltmp889              #   Call between .Ltmp889 and .Ltmp890
	.uleb128 .Ltmp901-.Lfunc_begin5         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp890-.Lfunc_begin5         # >> Call Site 26 <<
	.uleb128 .Ltmp891-.Ltmp890              #   Call between .Ltmp890 and .Ltmp891
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp891-.Lfunc_begin5         # >> Call Site 27 <<
	.uleb128 .Ltmp892-.Ltmp891              #   Call between .Ltmp891 and .Ltmp892
	.uleb128 .Ltmp907-.Lfunc_begin5         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp893-.Lfunc_begin5         # >> Call Site 28 <<
	.uleb128 .Ltmp894-.Ltmp893              #   Call between .Ltmp893 and .Ltmp894
	.uleb128 .Ltmp895-.Lfunc_begin5         #     jumps to .Ltmp895
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp894-.Lfunc_begin5         # >> Call Site 29 <<
	.uleb128 .Ltmp899-.Ltmp894              #   Call between .Ltmp894 and .Ltmp899
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp899-.Lfunc_begin5         # >> Call Site 30 <<
	.uleb128 .Ltmp900-.Ltmp899              #   Call between .Ltmp899 and .Ltmp900
	.uleb128 .Ltmp901-.Lfunc_begin5         #     jumps to .Ltmp901
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp900-.Lfunc_begin5         # >> Call Site 31 <<
	.uleb128 .Ltmp905-.Ltmp900              #   Call between .Ltmp900 and .Ltmp905
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp905-.Lfunc_begin5         # >> Call Site 32 <<
	.uleb128 .Ltmp906-.Ltmp905              #   Call between .Ltmp905 and .Ltmp906
	.uleb128 .Ltmp907-.Lfunc_begin5         #     jumps to .Ltmp907
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp908-.Lfunc_begin5         # >> Call Site 33 <<
	.uleb128 .Ltmp909-.Ltmp908              #   Call between .Ltmp908 and .Ltmp909
	.uleb128 .Ltmp934-.Lfunc_begin5         #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp909-.Lfunc_begin5         # >> Call Site 34 <<
	.uleb128 .Ltmp910-.Ltmp909              #   Call between .Ltmp909 and .Ltmp910
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp910-.Lfunc_begin5         # >> Call Site 35 <<
	.uleb128 .Ltmp911-.Ltmp910              #   Call between .Ltmp910 and .Ltmp911
	.uleb128 .Ltmp940-.Lfunc_begin5         #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp911-.Lfunc_begin5         # >> Call Site 36 <<
	.uleb128 .Ltmp912-.Ltmp911              #   Call between .Ltmp911 and .Ltmp912
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp912-.Lfunc_begin5         # >> Call Site 37 <<
	.uleb128 .Ltmp913-.Ltmp912              #   Call between .Ltmp912 and .Ltmp913
	.uleb128 .Ltmp946-.Lfunc_begin5         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp914-.Lfunc_begin5         # >> Call Site 38 <<
	.uleb128 .Ltmp915-.Ltmp914              #   Call between .Ltmp914 and .Ltmp915
	.uleb128 .Ltmp934-.Lfunc_begin5         #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp915-.Lfunc_begin5         # >> Call Site 39 <<
	.uleb128 .Ltmp916-.Ltmp915              #   Call between .Ltmp915 and .Ltmp916
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp916-.Lfunc_begin5         # >> Call Site 40 <<
	.uleb128 .Ltmp917-.Ltmp916              #   Call between .Ltmp916 and .Ltmp917
	.uleb128 .Ltmp940-.Lfunc_begin5         #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp917-.Lfunc_begin5         # >> Call Site 41 <<
	.uleb128 .Ltmp918-.Ltmp917              #   Call between .Ltmp917 and .Ltmp918
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp918-.Lfunc_begin5         # >> Call Site 42 <<
	.uleb128 .Ltmp919-.Ltmp918              #   Call between .Ltmp918 and .Ltmp919
	.uleb128 .Ltmp946-.Lfunc_begin5         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp920-.Lfunc_begin5         # >> Call Site 43 <<
	.uleb128 .Ltmp921-.Ltmp920              #   Call between .Ltmp920 and .Ltmp921
	.uleb128 .Ltmp934-.Lfunc_begin5         #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp921-.Lfunc_begin5         # >> Call Site 44 <<
	.uleb128 .Ltmp922-.Ltmp921              #   Call between .Ltmp921 and .Ltmp922
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp922-.Lfunc_begin5         # >> Call Site 45 <<
	.uleb128 .Ltmp923-.Ltmp922              #   Call between .Ltmp922 and .Ltmp923
	.uleb128 .Ltmp940-.Lfunc_begin5         #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp923-.Lfunc_begin5         # >> Call Site 46 <<
	.uleb128 .Ltmp924-.Ltmp923              #   Call between .Ltmp923 and .Ltmp924
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp924-.Lfunc_begin5         # >> Call Site 47 <<
	.uleb128 .Ltmp925-.Ltmp924              #   Call between .Ltmp924 and .Ltmp925
	.uleb128 .Ltmp946-.Lfunc_begin5         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp926-.Lfunc_begin5         # >> Call Site 48 <<
	.uleb128 .Ltmp927-.Ltmp926              #   Call between .Ltmp926 and .Ltmp927
	.uleb128 .Ltmp934-.Lfunc_begin5         #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp927-.Lfunc_begin5         # >> Call Site 49 <<
	.uleb128 .Ltmp928-.Ltmp927              #   Call between .Ltmp927 and .Ltmp928
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp928-.Lfunc_begin5         # >> Call Site 50 <<
	.uleb128 .Ltmp929-.Ltmp928              #   Call between .Ltmp928 and .Ltmp929
	.uleb128 .Ltmp940-.Lfunc_begin5         #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp929-.Lfunc_begin5         # >> Call Site 51 <<
	.uleb128 .Ltmp930-.Ltmp929              #   Call between .Ltmp929 and .Ltmp930
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp930-.Lfunc_begin5         # >> Call Site 52 <<
	.uleb128 .Ltmp931-.Ltmp930              #   Call between .Ltmp930 and .Ltmp931
	.uleb128 .Ltmp946-.Lfunc_begin5         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp932-.Lfunc_begin5         # >> Call Site 53 <<
	.uleb128 .Ltmp933-.Ltmp932              #   Call between .Ltmp932 and .Ltmp933
	.uleb128 .Ltmp934-.Lfunc_begin5         #     jumps to .Ltmp934
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp933-.Lfunc_begin5         # >> Call Site 54 <<
	.uleb128 .Ltmp938-.Ltmp933              #   Call between .Ltmp933 and .Ltmp938
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp938-.Lfunc_begin5         # >> Call Site 55 <<
	.uleb128 .Ltmp939-.Ltmp938              #   Call between .Ltmp938 and .Ltmp939
	.uleb128 .Ltmp940-.Lfunc_begin5         #     jumps to .Ltmp940
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp939-.Lfunc_begin5         # >> Call Site 56 <<
	.uleb128 .Ltmp944-.Ltmp939              #   Call between .Ltmp939 and .Ltmp944
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp944-.Lfunc_begin5         # >> Call Site 57 <<
	.uleb128 .Ltmp945-.Ltmp944              #   Call between .Ltmp944 and .Ltmp945
	.uleb128 .Ltmp946-.Lfunc_begin5         #     jumps to .Ltmp946
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp945-.Lfunc_begin5         # >> Call Site 58 <<
	.uleb128 .Ltmp947-.Ltmp945              #   Call between .Ltmp945 and .Ltmp947
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp947-.Lfunc_begin5         # >> Call Site 59 <<
	.uleb128 .Ltmp1018-.Ltmp947             #   Call between .Ltmp947 and .Ltmp1018
	.uleb128 .Ltmp1019-.Lfunc_begin5        #     jumps to .Ltmp1019
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1018-.Lfunc_begin5        # >> Call Site 60 <<
	.uleb128 .Ltmp837-.Ltmp1018             #   Call between .Ltmp1018 and .Ltmp837
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp837-.Lfunc_begin5         # >> Call Site 61 <<
	.uleb128 .Ltmp838-.Ltmp837              #   Call between .Ltmp837 and .Ltmp838
	.uleb128 .Ltmp839-.Lfunc_begin5         #     jumps to .Ltmp839
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp838-.Lfunc_begin5         # >> Call Site 62 <<
	.uleb128 .Ltmp1020-.Ltmp838             #   Call between .Ltmp838 and .Ltmp1020
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1020-.Lfunc_begin5        # >> Call Site 63 <<
	.uleb128 .Ltmp1045-.Ltmp1020            #   Call between .Ltmp1020 and .Ltmp1045
	.uleb128 .Ltmp1046-.Lfunc_begin5        #     jumps to .Ltmp1046
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp896-.Lfunc_begin5         # >> Call Site 64 <<
	.uleb128 .Ltmp897-.Ltmp896              #   Call between .Ltmp896 and .Ltmp897
	.uleb128 .Ltmp898-.Lfunc_begin5         #     jumps to .Ltmp898
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp902-.Lfunc_begin5         # >> Call Site 65 <<
	.uleb128 .Ltmp903-.Ltmp902              #   Call between .Ltmp902 and .Ltmp903
	.uleb128 .Ltmp904-.Lfunc_begin5         #     jumps to .Ltmp904
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp935-.Lfunc_begin5         # >> Call Site 66 <<
	.uleb128 .Ltmp936-.Ltmp935              #   Call between .Ltmp935 and .Ltmp936
	.uleb128 .Ltmp937-.Lfunc_begin5         #     jumps to .Ltmp937
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp941-.Lfunc_begin5         # >> Call Site 67 <<
	.uleb128 .Ltmp942-.Ltmp941              #   Call between .Ltmp941 and .Ltmp942
	.uleb128 .Ltmp943-.Lfunc_begin5         #     jumps to .Ltmp943
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp942-.Lfunc_begin5         # >> Call Site 68 <<
	.uleb128 .Lfunc_end19-.Ltmp942          #   Call between .Ltmp942 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..19
	.type	.omp_outlined..19,@function
.omp_outlined..19:                      # 
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
	je	.LBB20_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB20_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB20_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB20_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB20_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB20_17:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB20_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB20_14
	jmp	.LBB20_19
.LBB20_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB20_5
	jmp	.LBB20_6
.LBB20_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB20_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB20_15:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB20_15
.LBB20_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB20_6:
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
	movl	$.omp.reduction.reduction_func.20, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB20_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB20_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB20_11
.LBB20_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB20_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB20_10
.LBB20_11:
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
.Lfunc_end20:
	.size	.omp_outlined..19, .Lfunc_end20-.omp_outlined..19
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.20
	.type	.omp.reduction.reduction_func.20,@function
.omp.reduction.reduction_func.20:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end21:
	.size	.omp.reduction.reduction_func.20, .Lfunc_end21-.omp.reduction.reduction_func.20
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.LCPI22_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI22_1:
	.zero	16
	.section	.text._Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.p2align	4, 0x90
	.type	_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,@function
_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii: # 
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception6
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
	subq	$1688, %rsp                     # imm = 0x698
	.cfi_def_cfa_offset 1744
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 44(%rsp)                  # 4-byte Spill
	movl	%r8d, 392(%rsp)                 # 4-byte Spill
	movq	%rcx, 808(%rsp)                 # 8-byte Spill
	movq	%rdx, 800(%rsp)                 # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 376(%rsp)                 # 8-byte Spill
	movl	%edi, %r14d
	leaq	992(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
	leaq	1184(%rsp), %rbp
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
	leaq	1152(%rsp), %rbx
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
	leaq	1120(%rsp), %r15
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
	leaq	1088(%rsp), %r12
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
	leaq	1056(%rsp), %r13
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r13, %rdi
	callq	mpfr_init2
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	992(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%r14d, %r14d
	js	.LBB22_341
# %bb.1:
	movslq	%r14d, %rcx
	movq	%r14, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	je	.LBB22_4
# %bb.2:
	leaq	(,%rcx,8), %rbx
	movq	%rbx, %rdi
	movq	%rcx, %rbp
	callq	_Znwm
	movq	%rax, 208(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 224(%rsp)
	movq	$0, (%rax)
	movq	%rax, %r15
	leaq	8(%rax), %rdi
	cmpl	$1, %r14d
	jne	.LBB22_5
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB22_6
.LBB22_4:
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 208(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 224(%rsp)
	vmovdqu	%xmm0, 320(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 336(%rsp)
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	jmp	.LBB22_9
.LBB22_5:
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB22_6:
	movq	%rbp, 216(%rsp)
.Ltmp1047:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1048:
# %bb.7:
	movq	%r15, %r14
	movq	%rax, 320(%rsp)
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 336(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 16(%rsp)                    # 4-byte Folded Reload
	movq	%rax, %r15
	je	.LBB22_9
# %bb.8:
	addq	$-8, %rbx
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rbp, %rdi
.LBB22_9:
	movq	%rdi, 328(%rsp)
	cmpl	$0, 376(%rsp)                   # 4-byte Folded Reload
	je	.LBB22_305
# %bb.10:
	movq	%rcx, %r14
	shlq	$5, %r14
	movq	%rcx, %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, %r12d
	leaq	(,%rax,8), %rdx
	movq	%rdx, 648(%rsp)                 # 8-byte Spill
	movl	%r12d, %edx
	andl	$-4, %edx
	leaq	-1(%r12), %rsi
	movq	%rsi, 824(%rsp)                 # 8-byte Spill
	leaq	(,%r12,8), %rsi
	movq	%rsi, 640(%rsp)                 # 8-byte Spill
	andq	$-4, %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	movl	%r12d, %eax
	andl	$3, %eax
	movq	%rax, 840(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	andl	$-4, %eax
	addl	%ecx, %eax
	incl	%eax
	movq	%rax, 832(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	leaq	1(%rdx), %rax
	movq	%rax, 816(%rsp)                 # 8-byte Spill
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 752(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm1, %xmm1, %xmm1
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 736(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 720(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%esi, %esi
	movq	%r14, 848(%rsp)                 # 8-byte Spill
	movq	%r12, 184(%rsp)                 # 8-byte Spill
	jmp	.LBB22_12
	.p2align	4, 0x90
.LBB22_11:                              #   in Loop: Header=BB22_12 Depth=1
	vcvtsi2sdq	688(%rsp), %xmm4, %xmm8 # 8-byte Folded Reload
	vcvtsi2sdq	672(%rsp), %xmm4, %xmm0 # 8-byte Folded Reload
	vcvtsi2sdq	656(%rsp), %xmm4, %xmm2 # 8-byte Folded Reload
	vcvtsi2sdq	384(%rsp), %xmm4, %xmm3 # 8-byte Folded Reload
	vcvtsi2sdq	312(%rsp), %xmm4, %xmm12 # 8-byte Folded Reload
	vcvtsi2sdq	112(%rsp), %xmm4, %xmm13 # 8-byte Folded Reload
	vcvtsi2sdq	880(%rsp), %xmm4, %xmm14 # 8-byte Folded Reload
	vcvtsi2sdq	872(%rsp), %xmm4, %xmm15 # 8-byte Folded Reload
	vcvtsi2sdq	864(%rsp), %xmm4, %xmm9 # 8-byte Folded Reload
	vcvtsi2sdq	856(%rsp), %xmm4, %xmm1 # 8-byte Folded Reload
	vcvtsi2sd	%r12, %xmm4, %xmm10
	vcvtsi2sd	%r15, %xmm4, %xmm11
	vcvtsi2sd	%r13, %xmm4, %xmm4
	vcvtsi2sd	%rbx, %xmm5, %xmm5
	vcvtsi2sd	%rbp, %xmm6, %xmm6
	vcvtsi2sd	%r14, %xmm7, %xmm7
	vminsd	%xmm0, %xmm8, %xmm8
	vminsd	%xmm3, %xmm2, %xmm0
	vminsd	%xmm0, %xmm8, %xmm0
	vminsd	%xmm0, %xmm12, %xmm0
	vmovupd	720(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	%xmm0, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm0[0]
	vmovupd	1296(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddpd	%xmm3, %xmm0, %xmm3
	vmovupd	1328(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm2, %xmm13, %xmm2
	vminsd	%xmm14, %xmm15, %xmm0
	vminsd	%xmm1, %xmm9, %xmm1
	vminsd	%xmm1, %xmm0, %xmm0
	vminsd	%xmm0, %xmm10, %xmm0
	vmovupd	1312(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm1
	vminsd	%xmm4, %xmm11, %xmm0
	vminsd	%xmm0, %xmm5, %xmm0
	vminsd	%xmm0, %xmm6, %xmm0
	vminsd	%xmm0, %xmm7, %xmm0
	vmovupd	1344(%rsp), %xmm5               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm5, %xmm0, %xmm5
	movl	396(%rsp), %esi                 # 4-byte Reload
	incl	%esi
	cmpl	376(%rsp), %esi                 # 4-byte Folded Reload
	movq	848(%rsp), %r14                 # 8-byte Reload
	movq	184(%rsp), %r12                 # 8-byte Reload
	je	.LBB22_306
.LBB22_12:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_16 Depth 2
                                        #     Child Loop BB22_19 Depth 2
                                        #     Child Loop BB22_24 Depth 2
                                        #     Child Loop BB22_34 Depth 2
                                        #     Child Loop BB22_41 Depth 2
                                        #     Child Loop BB22_45 Depth 2
                                        #     Child Loop BB22_49 Depth 2
                                        #     Child Loop BB22_53 Depth 2
                                        #     Child Loop BB22_57 Depth 2
                                        #     Child Loop BB22_61 Depth 2
                                        #     Child Loop BB22_65 Depth 2
                                        #     Child Loop BB22_69 Depth 2
                                        #     Child Loop BB22_73 Depth 2
                                        #     Child Loop BB22_77 Depth 2
                                        #     Child Loop BB22_95 Depth 2
                                        #     Child Loop BB22_210 Depth 2
                                        #     Child Loop BB22_213 Depth 2
                                        #     Child Loop BB22_216 Depth 2
                                        #     Child Loop BB22_223 Depth 2
                                        #     Child Loop BB22_226 Depth 2
                                        #     Child Loop BB22_230 Depth 2
                                        #     Child Loop BB22_234 Depth 2
                                        #     Child Loop BB22_238 Depth 2
                                        #     Child Loop BB22_242 Depth 2
                                        #     Child Loop BB22_246 Depth 2
                                        #     Child Loop BB22_250 Depth 2
                                        #     Child Loop BB22_254 Depth 2
                                        #     Child Loop BB22_258 Depth 2
                                        #     Child Loop BB22_262 Depth 2
                                        #     Child Loop BB22_266 Depth 2
	vmovupd	%xmm3, 1296(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm1, 1312(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm2, 1328(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	%xmm5, 1344(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 768(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 784(%rsp)
.Ltmp1050:
	leaq	768(%rsp), %rdi
	movl	%esi, 396(%rsp)                 # 4-byte Spill
	movl	392(%rsp), %edx                 # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp1051:
# %bb.13:                               #   in Loop: Header=BB22_12 Depth=1
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_20
# %bb.14:                               #   in Loop: Header=BB22_12 Depth=1
	movq	768(%rsp), %rax
	movq	208(%rsp), %rcx
	movq	320(%rsp), %rdx
	cmpl	$4, 16(%rsp)                    # 4-byte Folded Reload
	movq	120(%rsp), %rbp                 # 8-byte Reload
	jb	.LBB22_17
# %bb.15:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB22_16:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	8(%rax,%rsi,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	incl	%edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	vmovsd	16(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rcx,%rsi,8)
	leal	2(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rdx,%rsi,8)
	vmovsd	24(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rcx,%rsi,8)
	leal	3(%r12,%rsi), %edi
	vmovsd	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rdx,%rsi,8)
	vmovsd	32(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rcx,%rsi,8)
	leal	(%r12,%rsi), %edi
	addl	$4, %edi
	vmovq	(%rax,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovq	%xmm0, 24(%rdx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %rbp
	jne	.LBB22_16
.LBB22_17:                              #   in Loop: Header=BB22_12 Depth=1
	cmpq	%r12, %rbp
	movq	840(%rsp), %r8                  # 8-byte Reload
	movq	832(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB22_20
# %bb.18:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdx,%rdi,8), %rdx
	movq	816(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB22_19:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rsi,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rcx,%rdi,8)
	leal	(%rbx,%rdi), %ebp
	vmovq	(%rax,%rbp,8), %xmm0            # xmm0 = mem[0],zero
	vmovq	%xmm0, (%rdx,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	.LBB22_19
.LBB22_20:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1053:
	movq	%r14, %rdi
	callq	_Znam
.Ltmp1054:
# %bb.21:                               #   in Loop: Header=BB22_12 Depth=1
.Ltmp1056:
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	_Znam
.Ltmp1057:
# %bb.22:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, %r12
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_29
# %bb.23:                               #   in Loop: Header=BB22_12 Depth=1
	movq	208(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	320(%rsp), %r13
	movq	%r12, %rbp
	movq	%r15, %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB22_24:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp1058:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp1059:
# %bb.25:                               #   in Loop: Header=BB22_24 Depth=2
	movq	24(%rsp), %rax                  # 8-byte Reload
	vmovq	(%rax,%r14,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp1060:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp1061:
# %bb.26:                               #   in Loop: Header=BB22_24 Depth=2
.Ltmp1062:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp1063:
# %bb.27:                               #   in Loop: Header=BB22_24 Depth=2
	vmovq	(%r13,%r14,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp1064:
	movq	%rbp, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp1065:
# %bb.28:                               #   in Loop: Header=BB22_24 Depth=2
	incq	%r14
	addq	$32, %rbx
	addq	$32, %rbp
	cmpq	%r14, 184(%rsp)                 # 8-byte Folded Reload
	jne	.LBB22_24
.LBB22_29:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1067:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	400(%rsp), %rdi
	callq	mpfr_init2
.Ltmp1068:
# %bb.30:                               #   in Loop: Header=BB22_12 Depth=1
.Ltmp1069:
	vpxor	%xmm0, %xmm0, %xmm0
	leaq	400(%rsp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp1070:
# %bb.31:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1424(%rsp), %rsi
	callq	clock_gettime
.Ltmp1071:
	movq	16(%rsp), %rdi                  # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	leaq	400(%rsp), %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp1072:
# %bb.32:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1408(%rsp), %rsi
	callq	clock_gettime
	movq	1416(%rsp), %rax
	subq	1432(%rsp), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	184(%rsp), %r14                 # 8-byte Reload
	je	.LBB22_37
# %bb.33:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, %rbx
	movabsq	$9223372036854775800, %r13      # imm = 0x7FFFFFFFFFFFFFF8
	leaq	432(%rsp), %rbp
	.p2align	4, 0x90
.LBB22_34:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp1074:
	movq	%r15, %rdi
	callq	mpfr_clear
.Ltmp1075:
# %bb.35:                               #   in Loop: Header=BB22_34 Depth=2
.Ltmp1076:
	movq	%r12, %rdi
	callq	mpfr_clear
.Ltmp1077:
# %bb.36:                               #   in Loop: Header=BB22_34 Depth=2
	addq	$32, %r15
	addq	$32, %r12
	decq	%rbx
	jne	.LBB22_34
	jmp	.LBB22_38
	.p2align	4, 0x90
.LBB22_37:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %r13      # imm = 0x7FFFFFFFFFFFFFF8
	leaq	432(%rsp), %rbp
.LBB22_38:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1600(%rsp), %rsi
	callq	clock_gettime
	movq	208(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	320(%rsp), %r15
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_46
# %bb.39:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB22_43
# %bb.40:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_41:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB22_41
# %bb.42:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r14, %rdx
	jne	.LBB22_44
	jmp	.LBB22_46
	.p2align	4, 0x90
.LBB22_43:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_44:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_45:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_45
.LBB22_46:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	432(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 704(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_54
# %bb.47:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB22_51
# %bb.48:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_49:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB22_49
# %bb.50:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r14, %rdx
	jne	.LBB22_52
	jmp	.LBB22_54
	.p2align	4, 0x90
.LBB22_51:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_52:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_53:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_53
.LBB22_54:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	432(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 192(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_62
# %bb.55:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB22_59
# %bb.56:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_57:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB22_57
# %bb.58:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r14, %rdx
	jne	.LBB22_60
	jmp	.LBB22_62
	.p2align	4, 0x90
.LBB22_59:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_60:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_61:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_61
.LBB22_62:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	432(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 688(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_70
# %bb.63:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rdx                 # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB22_67
# %bb.64:                               #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_65:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rdx, %rax
	jb	.LBB22_65
# %bb.66:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rdx, %rcx
	cmpq	%r14, %rdx
	jne	.LBB22_68
	jmp	.LBB22_70
	.p2align	4, 0x90
.LBB22_67:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_68:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, %rax
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_69:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_69
.LBB22_70:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	432(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 672(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_75
# %bb.71:                               #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB22_76
# %bb.72:                               #   in Loop: Header=BB22_12 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	32(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_73:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%r15,%rax,8), %ymm1
	vfmadd231pd	(%rbp,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB22_73
# %bb.74:                               #   in Loop: Header=BB22_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rcx, %rax
	cmpq	%r14, %rcx
	jne	.LBB22_77
	jmp	.LBB22_78
	.p2align	4, 0x90
.LBB22_75:                              #   in Loop: Header=BB22_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	32(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB22_78
	.p2align	4, 0x90
.LBB22_76:                              #   in Loop: Header=BB22_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	movq	32(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_77:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%r15,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%rbp,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB22_77
.LBB22_78:                              #   in Loop: Header=BB22_12 Depth=1
	vmovsd	%xmm1, 888(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	288(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	vmovdqu	288(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	432(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 656(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1584(%rsp), %rsi
	callq	clock_gettime
	movq	216(%rsp), %r12
	movq	%r12, %r14
	subq	%rbp, %r14
	sarq	$3, %r14
	movq	%r12, 312(%rsp)                 # 8-byte Spill
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 608(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 624(%rsp)
	subq	%rbp, %r12
	je	.LBB22_82
# %bb.79:                               #   in Loop: Header=BB22_12 Depth=1
	cmpq	%r13, %r12
	ja	.LBB22_333
# %bb.80:                               #   in Loop: Header=BB22_12 Depth=1
.Ltmp1079:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp1080:
# %bb.81:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 608(%rsp)
	movq	%rax, 616(%rsp)
	leaq	(%rax,%r14,8), %rbx
	movq	%rbx, 624(%rsp)
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
	jmp	.LBB22_83
	.p2align	4, 0x90
.LBB22_82:                              #   in Loop: Header=BB22_12 Depth=1
	leaq	(,%r14,8), %rbx
	movq	%rbx, 624(%rsp)
.LBB22_83:                              #   in Loop: Header=BB22_12 Depth=1
	movq	328(%rsp), %rax
	movq	%rax, %rbp
	subq	%r15, %rbp
	sarq	$3, %rbp
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rbx, 616(%rsp)
	movq	%rax, %rbx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 576(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 592(%rsp)
	subq	%r15, %rbx
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	je	.LBB22_87
# %bb.84:                               #   in Loop: Header=BB22_12 Depth=1
	cmpq	%r13, %rbx
	ja	.LBB22_335
# %bb.85:                               #   in Loop: Header=BB22_12 Depth=1
.Ltmp1085:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1086:
	movq	%rbx, %rdx
# %bb.86:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 576(%rsp)
	movq	%rax, 584(%rsp)
	leaq	(%rax,%rbp,8), %rbx
	movq	%rbx, 592(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	memmove@PLT
	jmp	.LBB22_88
	.p2align	4, 0x90
.LBB22_87:                              #   in Loop: Header=BB22_12 Depth=1
	leaq	(,%rbp,8), %rbx
	movq	%rbx, 592(%rsp)
.LBB22_88:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 584(%rsp)
.Ltmp1091:
	leaq	608(%rsp), %rdi
	leaq	576(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
.Ltmp1092:
# %bb.89:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%r14, 232(%rsp)                 # 8-byte Spill
	movq	%rbp, 176(%rsp)                 # 8-byte Spill
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	vmovdqu	704(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %r15         # imm = 0x3B9ACA00
	vmovdqu	192(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %r14         # imm = 0x3B9ACA00
	vmovdqu	688(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rdx         # imm = 0x3B9ACA00
	vmovdqu	672(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rcx         # imm = 0x3B9ACA00
	vmovdqu	656(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	movq	576(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_91
# %bb.90:                               #   in Loop: Header=BB22_12 Depth=1
	movq	%rcx, %rbp
	movq	%rax, %rbx
	movq	%rdx, %r13
	callq	_ZdlPv
	movq	%r13, %rdx
	movq	%rbx, %rax
	movq	%rbp, %rcx
.LBB22_91:                              #   in Loop: Header=BB22_12 Depth=1
	vmovdqu	704(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r13
	addq	%r15, %r13
	vmovdqu	192(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %rbx
	addq	%r14, %rbx
	vmovdqu	688(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r15
	addq	%rdx, %r15
	vmovdqu	672(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %rbp
	vmovdqu	656(%rsp), %xmm0                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vpextrq	$1, %xmm0, %r14
	addq	%rcx, %rbp
	addq	%rax, %r14
	movq	608(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_93
# %bb.92:                               #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_93:                              #   in Loop: Header=BB22_12 Depth=1
	vcvtsi2sdq	384(%rsp), %xmm2, %xmm0 # 8-byte Folded Reload
	vcvtsi2sd	%r13, %xmm2, %xmm1
	vcvtsi2sd	%rbx, %xmm2, %xmm2
	vmovupd	752(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm0, %xmm3, %xmm3
	vmovupd	%xmm3, 752(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm2, %xmm0
	vcvtsi2sd	%r15, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sd	%rbp, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sd	%r14, %xmm4, %xmm1
	vminsd	%xmm0, %xmm1, %xmm0
	vmovupd	736(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 736(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1568(%rsp), %rsi
	callq	clock_gettime
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %r13
	movq	176(%rsp), %rax                 # 8-byte Reload
	leaq	(,%rax,8), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movl	$5, %r15d
	movabsq	$9223372036854775800, %r14      # imm = 0x7FFFFFFFFFFFFFF8
	movq	32(%rsp), %rbp                  # 8-byte Reload
	jmp	.LBB22_95
	.p2align	4, 0x90
.LBB22_94:                              #   in Loop: Header=BB22_95 Depth=2
	vmovupd	720(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vminsd	%xmm1, %xmm0, %xmm1
	vmovupd	%xmm1, 720(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r15d
	je	.LBB22_112
.LBB22_95:                              #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%edi, %edi
	leaq	1376(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 544(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 560(%rsp)
	cmpq	%rbp, 312(%rsp)                 # 8-byte Folded Reload
	je	.LBB22_99
# %bb.96:                               #   in Loop: Header=BB22_95 Depth=2
	cmpq	%r14, %r12
	ja	.LBB22_325
# %bb.97:                               #   in Loop: Header=BB22_95 Depth=2
.Ltmp1094:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp1095:
# %bb.98:                               #   in Loop: Header=BB22_95 Depth=2
	movq	%rax, 544(%rsp)
	movq	%rax, 552(%rsp)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 560(%rsp)
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	memmove@PLT
	jmp	.LBB22_100
	.p2align	4, 0x90
.LBB22_99:                              #   in Loop: Header=BB22_95 Depth=2
	movq	%r13, 560(%rsp)
	movq	%r13, %rbx
.LBB22_100:                             #   in Loop: Header=BB22_95 Depth=2
	movq	%rbx, 552(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 512(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 528(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	je	.LBB22_104
# %bb.101:                              #   in Loop: Header=BB22_95 Depth=2
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%r14, %rbx
	ja	.LBB22_327
# %bb.102:                              #   in Loop: Header=BB22_95 Depth=2
.Ltmp1100:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1101:
# %bb.103:                              #   in Loop: Header=BB22_95 Depth=2
	movq	%rax, 512(%rsp)
	movq	%rax, 520(%rsp)
	movq	%rbx, %rdx
	movq	176(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 528(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_105
	.p2align	4, 0x90
.LBB22_104:                             #   in Loop: Header=BB22_95 Depth=2
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 528(%rsp)
.LBB22_105:                             #   in Loop: Header=BB22_95 Depth=2
	movq	%rbx, 520(%rsp)
.Ltmp1106:
	leaq	544(%rsp), %rdi
	leaq	512(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, 704(%rsp)                # 8-byte Spill
.Ltmp1107:
# %bb.106:                              #   in Loop: Header=BB22_95 Depth=2
	movq	512(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_108
# %bb.107:                              #   in Loop: Header=BB22_95 Depth=2
	callq	_ZdlPv
.LBB22_108:                             #   in Loop: Header=BB22_95 Depth=2
	movq	544(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_110
# %bb.109:                              #   in Loop: Header=BB22_95 Depth=2
	callq	_ZdlPv
.LBB22_110:                             #   in Loop: Header=BB22_95 Depth=2
	xorl	%edi, %edi
	leaq	1360(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	1360(%rsp), %xmm0               # AlignMOV convert to UnAlignMOV 
	vpsubq	1376(%rsp), %xmm0, %xmm0
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %rcx
	addq	%rax, %rcx
	vcvtsi2sd	%rcx, %xmm4, %xmm0
	cmpl	$5, %r15d
	jne	.LBB22_94
# %bb.111:                              #   in Loop: Header=BB22_95 Depth=2
	vmovupd	%xmm0, 720(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	decl	%r15d
	jne	.LBB22_95
.LBB22_112:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1552(%rsp), %rsi
	callq	clock_gettime
	movl	44(%rsp), %edi                  # 4-byte Reload
	callq	omp_set_num_threads
	movq	$0, 136(%rsp)
	leaq	320(%rsp), %r15
	movq	%r15, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..21, %edx
	movl	$4, %esi
	movq	184(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rcx
	leaq	136(%rsp), %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	1536(%rsp), %rsi
	callq	clock_gettime
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	160(%rsp), %rsi
	callq	clock_gettime
	leaq	320(%rsp), %r15
	movq	%r15, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..23, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	leaq	136(%rsp), %rbp
	movq	%rbp, %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 144(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 160(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	152(%rsp), %rcx
	subq	168(%rsp), %rcx
	movq	%rcx, 688(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	160(%rsp), %rsi
	callq	clock_gettime
	movq	%r15, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..23, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%rbp, %r8
	leaq	208(%rsp), %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 144(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 160(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	152(%rsp), %rcx
	subq	168(%rsp), %rcx
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	160(%rsp), %rsi
	callq	clock_gettime
	movq	%r15, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..23, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%rbp, %r8
	movq	%rbp, %r15
	leaq	208(%rsp), %r9
	movq	%r9, %rbp
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 144(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 160(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	152(%rsp), %rcx
	subq	168(%rsp), %rcx
	movq	%rcx, 656(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	160(%rsp), %rsi
	callq	clock_gettime
	leaq	320(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..23, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 144(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 160(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	152(%rsp), %rcx
	subq	168(%rsp), %rcx
	movq	%rcx, 384(%rsp)                 # 8-byte Spill
	movq	$0, 136(%rsp)
	xorl	%edi, %edi
	leaq	160(%rsp), %rsi
	callq	clock_gettime
	leaq	320(%rsp), %rax
	movq	%rax, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined..23, %edx
	movl	$4, %esi
	movq	%rbx, %rcx
	movq	%r15, %r8
	movq	%rbp, %r9
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	xorl	%edi, %edi
	leaq	144(%rsp), %rsi
	callq	clock_gettime
	imulq	$1000000000, 144(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 160(%rsp), %rbp   # imm = 0xC4653600
	addq	%rax, %rbp
	addq	152(%rsp), %rbp
	subq	168(%rsp), %rbp
	xorl	%edi, %edi
	leaq	1520(%rsp), %rsi
	callq	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 480(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 496(%rsp)
	movq	32(%rsp), %rax                  # 8-byte Reload
	cmpq	%rax, 312(%rsp)                 # 8-byte Folded Reload
	je	.LBB22_116
# %bb.113:                              #   in Loop: Header=BB22_12 Depth=1
	cmpq	%r14, %r12
	ja	.LBB22_337
# %bb.114:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1109:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp1110:
	movq	24(%rsp), %rbx                  # 8-byte Reload
# %bb.115:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 480(%rsp)
	movq	%rax, 488(%rsp)
	movq	232(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r13
	movq	%r13, 496(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove@PLT
	jmp	.LBB22_117
	.p2align	4, 0x90
.LBB22_116:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%r13, 496(%rsp)
	movq	24(%rsp), %rbx                  # 8-byte Reload
.LBB22_117:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%r13, 488(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 448(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 464(%rsp)
	cmpq	%rbx, 112(%rsp)                 # 8-byte Folded Reload
	leaq	80(%rsp), %r12
	je	.LBB22_121
# %bb.118:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%r14, %rbx
	movq	184(%rsp), %r15                 # 8-byte Reload
	movq	176(%rsp), %r13                 # 8-byte Reload
	ja	.LBB22_339
# %bb.119:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1115:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1116:
	leaq	48(%rsp), %r14
	movq	%rbx, %rdx
# %bb.120:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 448(%rsp)
	movq	%rax, 456(%rsp)
	leaq	(%rax,%r13,8), %rbx
	movq	%rbx, 464(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_122
	.p2align	4, 0x90
.LBB22_121:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 464(%rsp)
	movq	184(%rsp), %r15                 # 8-byte Reload
	leaq	48(%rsp), %r14
	movq	176(%rsp), %r13                 # 8-byte Reload
.LBB22_122:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 456(%rsp)
.Ltmp1121:
	leaq	480(%rsp), %rdi
	leaq	448(%rsp), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp1122:
# %bb.123:                              #   in Loop: Header=BB22_12 Depth=1
	movq	448(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_125
# %bb.124:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_125:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, 312(%rsp)                 # 8-byte Spill
	movq	480(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_127
# %bb.126:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_127:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1040(%rsp), %rsi
	callq	clock_gettime
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	subq	%rax, %rbp
	je	.LBB22_131
# %bb.128:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB22_329
# %bb.129:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1124:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp1125:
# %bb.130:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB22_132
	.p2align	4, 0x90
.LBB22_131:                             #   in Loop: Header=BB22_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)
.LBB22_132:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB22_136
# %bb.133:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB22_331
# %bb.134:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1126:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1127:
# %bb.135:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbx, %rdx
	leaq	(%rax,%r13,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_137
	.p2align	4, 0x90
.LBB22_136:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 64(%rsp)
.LBB22_137:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 56(%rsp)
.Ltmp1128:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp1129:
# %bb.138:                              #   in Loop: Header=BB22_12 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_140
# %bb.139:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_140:                             #   in Loop: Header=BB22_12 Depth=1
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_142
# %bb.141:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_142:                             #   in Loop: Header=BB22_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	subq	%rax, %rbp
	je	.LBB22_146
# %bb.143:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB22_329
# %bb.144:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1130:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp1131:
# %bb.145:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB22_147
	.p2align	4, 0x90
.LBB22_146:                             #   in Loop: Header=BB22_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)
.LBB22_147:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB22_151
# %bb.148:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB22_331
# %bb.149:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1132:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1133:
# %bb.150:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbx, %rdx
	leaq	(%rax,%r13,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_152
	.p2align	4, 0x90
.LBB22_151:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 64(%rsp)
.LBB22_152:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 56(%rsp)
.Ltmp1134:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp1135:
# %bb.153:                              #   in Loop: Header=BB22_12 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_155
# %bb.154:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_155:                             #   in Loop: Header=BB22_12 Depth=1
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_157
# %bb.156:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_157:                             #   in Loop: Header=BB22_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	subq	%rax, %rbp
	je	.LBB22_161
# %bb.158:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB22_329
# %bb.159:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1136:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp1137:
# %bb.160:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB22_162
	.p2align	4, 0x90
.LBB22_161:                             #   in Loop: Header=BB22_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)
.LBB22_162:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB22_166
# %bb.163:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB22_331
# %bb.164:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1138:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1139:
# %bb.165:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbx, %rdx
	leaq	(%rax,%r13,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_167
	.p2align	4, 0x90
.LBB22_166:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 64(%rsp)
.LBB22_167:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 56(%rsp)
.Ltmp1140:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp1141:
# %bb.168:                              #   in Loop: Header=BB22_12 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_170
# %bb.169:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_170:                             #   in Loop: Header=BB22_12 Depth=1
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_172
# %bb.171:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_172:                             #   in Loop: Header=BB22_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	subq	%rax, %rbp
	je	.LBB22_176
# %bb.173:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB22_329
# %bb.174:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1142:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp1143:
# %bb.175:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB22_177
	.p2align	4, 0x90
.LBB22_176:                             #   in Loop: Header=BB22_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)
.LBB22_177:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB22_181
# %bb.178:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB22_331
# %bb.179:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1144:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1145:
# %bb.180:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 48(%rsp)
	movq	%rax, 56(%rsp)
	movq	%rbx, %rdx
	leaq	(%rax,%r13,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	memmove@PLT
	jmp	.LBB22_182
	.p2align	4, 0x90
.LBB22_181:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 64(%rsp)
.LBB22_182:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 56(%rsp)
.Ltmp1146:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
.Ltmp1147:
# %bb.183:                              #   in Loop: Header=BB22_12 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_185
# %bb.184:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_185:                             #   in Loop: Header=BB22_12 Depth=1
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_187
# %bb.186:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_187:                             #   in Loop: Header=BB22_12 Depth=1
	movq	216(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	subq	%rax, %rbp
	je	.LBB22_191
# %bb.188:                              #   in Loop: Header=BB22_12 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB22_329
# %bb.189:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1148:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp1149:
# %bb.190:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	memmove@PLT
	jmp	.LBB22_192
	.p2align	4, 0x90
.LBB22_191:                             #   in Loop: Header=BB22_12 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)
.LBB22_192:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbx, 88(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	112(%rsp), %rax                 # 8-byte Reload
	cmpq	24(%rsp), %rax                  # 8-byte Folded Reload
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	je	.LBB22_196
# %bb.193:                              #   in Loop: Header=BB22_12 Depth=1
	movq	128(%rsp), %rbx                 # 8-byte Reload
	cmpq	%rax, %rbx
	ja	.LBB22_331
# %bb.194:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1154:
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp1155:
# %bb.195:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rax, 48(%rsp)
	movq	%rax, 56(%rsp)
	leaq	(%rax,%r13,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	%rax, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove@PLT
	jmp	.LBB22_197
	.p2align	4, 0x90
.LBB22_196:                             #   in Loop: Header=BB22_12 Depth=1
	movq	192(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, 64(%rsp)
.LBB22_197:                             #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, 56(%rsp)
.Ltmp1160:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	44(%rsp), %r9d                  # 4-byte Reload
	callq	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii
	vmovsd	%xmm0, 232(%rsp)                # 8-byte Spill
.Ltmp1161:
# %bb.198:                              #   in Loop: Header=BB22_12 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_200
# %bb.199:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_200:                             #   in Loop: Header=BB22_12 Depth=1
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	movq	32(%rsp), %rbx                  # 8-byte Reload
	je	.LBB22_202
# %bb.201:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
.LBB22_202:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1024(%rsp), %rsi
	callq	clock_gettime
	movq	1024(%rsp), %rcx
	movq	1032(%rsp), %rax
	subq	1040(%rsp), %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	subq	1048(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	648(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, %rbp
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	movq	24(%rsp), %rdi                  # 8-byte Reload
	je	.LBB22_217
# %bb.203:                              #   in Loop: Header=BB22_12 Depth=1
	movq	824(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rbx,%rdx,8), %rax
	cmpq	%r12, %rax
	setae	%r9b
	leaq	(%r12,%rdx,8), %rcx
	cmpq	%rbx, %rcx
	setae	%r10b
	cmpq	%rbp, %rax
	setb	%al
	leaq	(,%rdx,8), %rsi
	addq	%rbp, %rsi
	cmpq	%rbx, %rsi
	setb	%r11b
	cmpq	%rdi, %rcx
	setb	%cl
	leaq	(%rdi,%rdx,8), %rdx
	cmpq	%r12, %rdx
	setb	%r8b
	cmpq	%rbp, %rdx
	setb	%dl
	cmpq	%rdi, %rsi
	setb	%sil
	testb	%r10b, %r9b
	jne	.LBB22_209
# %bb.204:                              #   in Loop: Header=BB22_12 Depth=1
	orb	%r11b, %al
	je	.LBB22_209
# %bb.205:                              #   in Loop: Header=BB22_12 Depth=1
	orb	%r8b, %cl
	je	.LBB22_209
# %bb.206:                              #   in Loop: Header=BB22_12 Depth=1
	orb	%sil, %dl
	je	.LBB22_209
# %bb.207:                              #   in Loop: Header=BB22_12 Depth=1
	cmpl	$13, 16(%rsp)                   # 4-byte Folded Reload
	jb	.LBB22_211
# %bb.208:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	640(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbp, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB22_217
	.p2align	4, 0x90
.LBB22_209:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_210:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rax,8)
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB22_210
	jmp	.LBB22_217
.LBB22_211:                             #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB22_215
# %bb.212:                              #   in Loop: Header=BB22_12 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_213:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%rbx,%rax,8), %ymm0
	vmovups	%ymm0, (%r12,%rax,8)
	vmovupd	(%rdx,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbp,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB22_213
# %bb.214:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB22_216
	jmp	.LBB22_217
.LBB22_215:                             #   in Loop: Header=BB22_12 Depth=1
	movq	24(%rsp), %rdx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_216:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rax,8)
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB22_216
	.p2align	4, 0x90
.LBB22_217:                             #   in Loop: Header=BB22_12 Depth=1
	movq	16(%rsp), %r14                  # 8-byte Reload
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	vzeroupper
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	1504(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	256(%rsp), %rbx
	movq	%rbx, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	leaq	240(%rsp), %r13
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 256(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	264(%rsp), %rcx
	movq	%rcx, 880(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 256(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	264(%rsp), %rcx
	movq	%rcx, 872(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 256(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	264(%rsp), %rcx
	movq	%rcx, 864(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 256(%rsp), %rcx   # imm = 0xC4653600
	addq	%rax, %rcx
	addq	248(%rsp), %rcx
	subq	264(%rsp), %rcx
	movq	%rcx, 856(%rsp)                 # 8-byte Spill
	xorl	%edi, %edi
	movq	%rbx, %rsi
	callq	clock_gettime
	movl	%r14d, %edi
	movq	%r12, %rsi
	movl	$1, %edx
	movq	%rbp, %rcx
	movl	$1, %r8d
	callq	cblas_ddot
	vmovsd	%xmm0, 128(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	clock_gettime
	imulq	$1000000000, 240(%rsp), %rax    # imm = 0x3B9ACA00
	imulq	$-1000000000, 256(%rsp), %r12   # imm = 0xC4653600
	addq	%rax, %r12
	addq	248(%rsp), %r12
	subq	264(%rsp), %r12
	xorl	%edi, %edi
	leaq	1488(%rsp), %rsi
	callq	clock_gettime
	movq	648(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r13
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	testl	%r14d, %r14d
	je	.LBB22_220
# %bb.218:                              #   in Loop: Header=BB22_12 Depth=1
	cmpl	$13, %r14d
	jb	.LBB22_221
# %bb.219:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%r13, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	640(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	304(%rsp), %rbp                 # 8-byte Reload
	leaq	352(%rsp), %r14
	jmp	.LBB22_227
	.p2align	4, 0x90
.LBB22_220:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1392(%rsp), %rsi
	callq	clock_gettime
	xorl	%edi, %edi
	leaq	352(%rsp), %r14
	movq	%r14, %rsi
	callq	clock_gettime
	movq	304(%rsp), %rbp                 # 8-byte Reload
	jmp	.LBB22_235
	.p2align	4, 0x90
.LBB22_221:                             #   in Loop: Header=BB22_12 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	je	.LBB22_225
# %bb.222:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	movq	304(%rsp), %rbp                 # 8-byte Reload
	leaq	352(%rsp), %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_223:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovups	(%rdx,%rax,8), %ymm0
	vmovups	%ymm0, (%r13,%rax,8)
	vmovupd	(%rsi,%rax,8), %ymm0
	vmovupd	%ymm0, (%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB22_223
# %bb.224:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB22_226
	jmp	.LBB22_227
.LBB22_225:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	movq	304(%rsp), %rbp                 # 8-byte Reload
	leaq	352(%rsp), %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB22_226:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r13,%rax,8)
	vmovsd	(%rsi,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB22_226
.LBB22_227:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	1392(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_235
# %bb.228:                              #   in Loop: Header=BB22_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB22_232
# %bb.229:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_230:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB22_230
# %bb.231:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, %rcx
	cmpq	104(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB22_233
	jmp	.LBB22_235
.LBB22_232:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_233:                             #   in Loop: Header=BB22_12 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_234:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_234
.LBB22_235:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	272(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	272(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	352(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1280(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_243
# %bb.236:                              #   in Loop: Header=BB22_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB22_240
# %bb.237:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_238:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB22_238
# %bb.239:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, %rcx
	cmpq	104(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB22_241
	jmp	.LBB22_243
	.p2align	4, 0x90
.LBB22_240:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_241:                             #   in Loop: Header=BB22_12 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_242:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_242
.LBB22_243:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	272(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	272(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	352(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1264(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_251
# %bb.244:                              #   in Loop: Header=BB22_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB22_248
# %bb.245:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_246:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB22_246
# %bb.247:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, %rcx
	cmpq	104(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB22_249
	jmp	.LBB22_251
	.p2align	4, 0x90
.LBB22_248:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_249:                             #   in Loop: Header=BB22_12 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_250:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_250
.LBB22_251:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	272(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	272(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	352(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1248(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_259
# %bb.252:                              #   in Loop: Header=BB22_12 Depth=1
	testq	%rbp, %rbp
	je	.LBB22_256
# %bb.253:                              #   in Loop: Header=BB22_12 Depth=1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_254:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB22_254
# %bb.255:                              #   in Loop: Header=BB22_12 Depth=1
	movq	%rbp, %rcx
	cmpq	104(%rsp), %rbp                 # 8-byte Folded Reload
	jne	.LBB22_257
	jmp	.LBB22_259
	.p2align	4, 0x90
.LBB22_256:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%ecx, %ecx
.LBB22_257:                             #   in Loop: Header=BB22_12 Depth=1
	movq	104(%rsp), %rax                 # 8-byte Reload
	subq	%rcx, %rax
	.p2align	4, 0x90
.LBB22_258:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%rax
	jne	.LBB22_258
.LBB22_259:                             #   in Loop: Header=BB22_12 Depth=1
	xorl	%edi, %edi
	leaq	272(%rsp), %rsi
	callq	clock_gettime
	vmovdqu	272(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	352(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1232(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	clock_gettime
	cmpl	$0, 16(%rsp)                    # 4-byte Folded Reload
	je	.LBB22_264
# %bb.260:                              #   in Loop: Header=BB22_12 Depth=1
	testq	%rbp, %rbp
	movq	104(%rsp), %rcx                 # 8-byte Reload
	leaq	1440(%rsp), %r14
	je	.LBB22_265
# %bb.261:                              #   in Loop: Header=BB22_12 Depth=1
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_262:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rbx,%rax,8), %ymm1
	vfmadd231pd	(%r13,%rax,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rax
	cmpq	%rbp, %rax
	jl	.LBB22_262
# %bb.263:                              #   in Loop: Header=BB22_12 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	movq	%rbp, %rax
	cmpq	%rcx, %rbp
	jne	.LBB22_266
	jmp	.LBB22_267
	.p2align	4, 0x90
.LBB22_264:                             #   in Loop: Header=BB22_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	leaq	1440(%rsp), %r14
	jmp	.LBB22_267
	.p2align	4, 0x90
.LBB22_265:                             #   in Loop: Header=BB22_12 Depth=1
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB22_266:                             #   Parent Loop BB22_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vfmadd231sd	(%r13,%rax,8), %xmm0, %xmm1 # xmm1 = (xmm0 * mem) + xmm1
	incq	%rax
	cmpq	%rax, %rcx
	jne	.LBB22_266
.LBB22_267:                             #   in Loop: Header=BB22_12 Depth=1
	vmovsd	%xmm1, 176(%rsp)                # 8-byte Spill
	xorl	%edi, %edi
	leaq	272(%rsp), %rsi
	vzeroupper
	callq	clock_gettime
	vmovdqu	272(%rsp), %xmm0                # AlignMOV convert to UnAlignMOV 
	vpsubq	352(%rsp), %xmm0, %xmm0
	vmovdqu	%xmm0, 1216(%rsp)               # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	xorl	%edi, %edi
	leaq	1472(%rsp), %rsi
	callq	clock_gettime
.Ltmp1163:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp1164:
	leaq	1648(%rsp), %rbx
	leaq	1616(%rsp), %rbp
# %bb.268:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1165:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp1166:
# %bb.269:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1167:
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp1168:
# %bb.270:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1169:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	960(%rsp), %rdi
	callq	mpfr_init2
.Ltmp1170:
# %bb.271:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1171:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	928(%rsp), %rdi
	callq	mpfr_init2
.Ltmp1172:
# %bb.272:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1173:
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	896(%rsp), %rdi
	callq	mpfr_init2
.Ltmp1174:
# %bb.273:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1175:
	leaq	960(%rsp), %rdi
	leaq	400(%rsp), %rsi
	vmovq	888(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1176:
# %bb.274:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1177:
	leaq	960(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1178:
# %bb.275:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1179:
	leaq	960(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1180:
# %bb.276:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1181:
	leaq	992(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	960(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1182:
# %bb.277:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1183:
	movq	%r14, %rdi
	leaq	400(%rsp), %rsi
	vmovq	704(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1184:
# %bb.278:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1185:
	movq	%r14, %rdi
	movq	%r14, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1186:
# %bb.279:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1187:
	movq	%r14, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1188:
# %bb.280:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1189:
	leaq	1184(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1190:
# %bb.281:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1191:
	movq	%rbx, %rdi
	leaq	400(%rsp), %rsi
	vmovq	128(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1192:
# %bb.282:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1193:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1194:
# %bb.283:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1195:
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1196:
# %bb.284:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1197:
	leaq	1088(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1198:
# %bb.285:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1199:
	movq	%rbp, %rdi
	leaq	400(%rsp), %rsi
	vmovq	176(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1200:
# %bb.286:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1201:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1202:
# %bb.287:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1203:
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1204:
# %bb.288:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1205:
	leaq	1056(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1206:
# %bb.289:                              #   in Loop: Header=BB22_12 Depth=1
	vmovq	136(%rsp), %xmm0                # xmm0 = mem[0],zero
.Ltmp1207:
	leaq	928(%rsp), %rdi
	leaq	400(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1208:
# %bb.290:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1209:
	leaq	928(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1210:
# %bb.291:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1211:
	leaq	928(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1212:
# %bb.292:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1213:
	leaq	1152(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	928(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1214:
# %bb.293:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1215:
	leaq	896(%rsp), %rdi
	leaq	400(%rsp), %rsi
	vmovq	232(%rsp), %xmm0                # 8-byte Folded Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp1216:
# %bb.294:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1217:
	leaq	896(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	400(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp1218:
# %bb.295:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1219:
	leaq	896(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp1220:
# %bb.296:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1221:
	leaq	1120(%rsp), %rdi
	movq	%rdi, %rsi
	leaq	896(%rsp), %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp1222:
# %bb.297:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1223:
	movq	%r14, %rdi
	callq	mpfr_clear
.Ltmp1224:
# %bb.298:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1225:
	movq	%rbx, %rdi
	callq	mpfr_clear
.Ltmp1226:
# %bb.299:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1227:
	movq	%rbp, %rdi
	callq	mpfr_clear
.Ltmp1228:
# %bb.300:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1229:
	leaq	960(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1230:
# %bb.301:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1231:
	leaq	928(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1232:
# %bb.302:                              #   in Loop: Header=BB22_12 Depth=1
.Ltmp1233:
	leaq	896(%rsp), %rdi
	callq	mpfr_clear
.Ltmp1234:
# %bb.303:                              #   in Loop: Header=BB22_12 Depth=1
	imulq	$1000000000, 192(%rsp), %rax    # 8-byte Folded Reload
                                        # imm = 0x3B9ACA00
	addq	%rax, 112(%rsp)                 # 8-byte Folded Spill
	vmovdqu	1280(%rsp), %xmm0               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	vmovdqu	1264(%rsp), %xmm1               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm1, %rcx
	imulq	$1000000000, %rcx, %rcx         # imm = 0x3B9ACA00
	vmovdqu	1248(%rsp), %xmm2               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm2, %rdx
	imulq	$1000000000, %rdx, %rdx         # imm = 0x3B9ACA00
	vmovdqu	1232(%rsp), %xmm3               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm3, %rsi
	imulq	$1000000000, %rsi, %rsi         # imm = 0x3B9ACA00
	vpextrq	$1, %xmm0, %r15
	addq	%rax, %r15
	vpextrq	$1, %xmm1, %r13
	vpextrq	$1, %xmm2, %rbx
	addq	%rcx, %r13
	addq	%rdx, %rbx
	vpextrq	$1, %xmm3, %rbp
	addq	%rsi, %rbp
	vmovdqu	1216(%rsp), %xmm0               # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovq	%xmm0, %rax
	vpextrq	$1, %xmm0, %r14
	imulq	$1000000000, %rax, %rax         # imm = 0x3B9ACA00
	addq	%rax, %r14
	movq	768(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_11
# %bb.304:                              #   in Loop: Header=BB22_12 Depth=1
	callq	_ZdlPv
	jmp	.LBB22_11
.LBB22_305:
	vpxor	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm5, %xmm5, %xmm5
	jmp	.LBB22_307
.LBB22_306:
	vunpcklpd	%xmm1, %xmm2, %xmm0     # xmm0 = xmm2[0],xmm1[0]
	vmovupd	752(%rsp), %xmm1                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vunpcklpd	736(%rsp), %xmm1, %xmm1 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm3, %ymm1, %ymm1
	movq	32(%rsp), %r14                  # 8-byte Reload
	movq	24(%rsp), %r15                  # 8-byte Reload
.LBB22_307:
	movq	376(%rsp), %rcx                 # 8-byte Reload
	leal	(%rcx,%rcx,4), %eax
	vmovd	%eax, %xmm2
	vpinsrd	$1, %ecx, %xmm2, %xmm2
	vcvtdq2pd	%xmm2, %xmm2
	vpermpd	$85, %ymm2, %ymm3               # ymm3 = ymm2[1,1,1,1]
	vbroadcastsd	.LCPI22_0(%rip), %ymm4  # ymm4 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vdivpd	%ymm3, %ymm4, %ymm3
	movq	800(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	vdivpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm2, %xmm2        # xmm2 = xmm2[1,0]
	vmulpd	%ymm3, %ymm1, %ymm1
	vmovupd	%ymm1, (%rax)
	vmovupd	%xmm0, 32(%rax)
	vdivsd	%xmm2, %xmm5, %xmm0
	vmovsd	%xmm0, 48(%rax)
	movslq	%ecx, %rbx
.Ltmp1236:
	leaq	992(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp1237:
	movq	808(%rsp), %rbp                 # 8-byte Reload
# %bb.308:
.Ltmp1238:
	leaq	1184(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1239:
# %bb.309:
.Ltmp1240:
	leaq	1152(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1241:
# %bb.310:
.Ltmp1242:
	leaq	1120(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1243:
# %bb.311:
.Ltmp1244:
	leaq	1088(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1245:
# %bb.312:
.Ltmp1246:
	leaq	1056(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp1247:
# %bb.313:
	movq	(%rbp), %rdi
.Ltmp1248:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp1249:
# %bb.314:
	movq	(%rbp), %rdi
	addq	$32, %rdi
	movl	1000(%rsp), %ecx
.Ltmp1250:
	leaq	992(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1251:
# %bb.315:
	movq	(%rbp), %rdi
	addq	$64, %rdi
	movl	1192(%rsp), %ecx
.Ltmp1252:
	leaq	1184(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1253:
# %bb.316:
	movq	(%rbp), %rdi
	addq	$96, %rdi
	movl	1160(%rsp), %ecx
.Ltmp1254:
	leaq	1152(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1255:
# %bb.317:
	movq	(%rbp), %rdi
	subq	$-128, %rdi
	movl	1128(%rsp), %ecx
.Ltmp1256:
	leaq	1120(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1257:
# %bb.318:
	movl	$160, %edi
	addq	(%rbp), %rdi
	movl	1096(%rsp), %ecx
.Ltmp1258:
	leaq	1088(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1259:
# %bb.319:
	movl	$192, %edi
	addq	(%rbp), %rdi
	movl	1064(%rsp), %ecx
.Ltmp1260:
	leaq	1056(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp1261:
# %bb.320:
	testq	%r15, %r15
	je	.LBB22_322
# %bb.321:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB22_322:
	testq	%r14, %r14
	je	.LBB22_324
# %bb.323:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB22_324:
	addq	$1688, %rsp                     # imm = 0x698
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
.LBB22_325:
	.cfi_def_cfa_offset 1744
.Ltmp1097:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1098:
# %bb.326:
.LBB22_327:
.Ltmp1103:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1104:
# %bb.328:
.LBB22_329:
.Ltmp1151:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1152:
# %bb.330:
.LBB22_331:
.Ltmp1157:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1158:
# %bb.332:
.LBB22_333:
.Ltmp1082:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1083:
# %bb.334:
.LBB22_335:
.Ltmp1088:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1089:
# %bb.336:
.LBB22_337:
.Ltmp1112:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1113:
# %bb.338:
.LBB22_339:
.Ltmp1118:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp1119:
# %bb.340:
.LBB22_341:
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB22_342:
.Ltmp1049:
	movq	%rax, %rbx
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_392
	jmp	.LBB22_394
.LBB22_343:
.Ltmp1117:
	jmp	.LBB22_367
.LBB22_344:
.Ltmp1111:
	jmp	.LBB22_386
.LBB22_345:
.Ltmp1087:
	jmp	.LBB22_372
.LBB22_346:
.Ltmp1081:
	jmp	.LBB22_386
.LBB22_347:
.Ltmp1262:
	movq	%rax, %rbx
	jmp	.LBB22_390
.LBB22_348:
.Ltmp1123:
	movq	%rax, %rbx
	movq	448(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_368
# %bb.349:
	callq	_ZdlPv
	jmp	.LBB22_368
.LBB22_350:
.Ltmp1093:
	movq	%rax, %rbx
	movq	576(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_373
# %bb.351:
	callq	_ZdlPv
	jmp	.LBB22_373
.LBB22_352:
.Ltmp1052:
	jmp	.LBB22_386
.LBB22_353:
.Ltmp1055:
	jmp	.LBB22_386
.LBB22_354:
.Ltmp1156:
	jmp	.LBB22_377
.LBB22_355:
.Ltmp1150:
	jmp	.LBB22_386
.LBB22_356:
.Ltmp1073:
	jmp	.LBB22_386
.LBB22_357:
.Ltmp1162:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_378
# %bb.358:
	callq	_ZdlPv
	jmp	.LBB22_378
.LBB22_359:
.Ltmp1102:
	jmp	.LBB22_382
.LBB22_360:
.Ltmp1096:
	jmp	.LBB22_386
.LBB22_361:
.Ltmp1108:
	movq	%rax, %rbx
	movq	512(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_383
# %bb.362:
	callq	_ZdlPv
	jmp	.LBB22_383
.LBB22_363:
.Ltmp1235:
	jmp	.LBB22_386
.LBB22_364:
.Ltmp1078:
	jmp	.LBB22_386
.LBB22_365:
.Ltmp1066:
	jmp	.LBB22_386
.LBB22_366:
.Ltmp1120:
.LBB22_367:
	movq	%rax, %rbx
.LBB22_368:
	movq	480(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB22_374
	jmp	.LBB22_387
.LBB22_370:
.Ltmp1114:
	jmp	.LBB22_386
.LBB22_371:
.Ltmp1090:
.LBB22_372:
	movq	%rax, %rbx
.LBB22_373:
	movq	608(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_387
	jmp	.LBB22_374
.LBB22_375:
.Ltmp1084:
	jmp	.LBB22_386
.LBB22_376:
.Ltmp1159:
.LBB22_377:
	movq	%rax, %rbx
.LBB22_378:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB22_374
	jmp	.LBB22_387
.LBB22_380:
.Ltmp1153:
	jmp	.LBB22_386
.LBB22_381:
.Ltmp1105:
.LBB22_382:
	movq	%rax, %rbx
.LBB22_383:
	movq	544(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_387
.LBB22_374:
	callq	_ZdlPv
	jmp	.LBB22_387
.LBB22_385:
.Ltmp1099:
.LBB22_386:
	movq	%rax, %rbx
.LBB22_387:
	movq	768(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_389
# %bb.388:
	callq	_ZdlPv
.LBB22_389:
	movq	320(%rsp), %r15
.LBB22_390:
	testq	%r15, %r15
	jne	.LBB22_393
# %bb.391:
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB22_394
.LBB22_392:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB22_393:
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	208(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB22_392
.LBB22_394:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end22:
	.size	_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .Lfunc_end22-_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.cfi_endproc
	.section	.gcc_except_table._Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z20compare_dot_prod_vecIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp1047-.Lfunc_begin6        #   Call between .Lfunc_begin6 and .Ltmp1047
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1047-.Lfunc_begin6        # >> Call Site 2 <<
	.uleb128 .Ltmp1048-.Ltmp1047            #   Call between .Ltmp1047 and .Ltmp1048
	.uleb128 .Ltmp1049-.Lfunc_begin6        #     jumps to .Ltmp1049
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1048-.Lfunc_begin6        # >> Call Site 3 <<
	.uleb128 .Ltmp1050-.Ltmp1048            #   Call between .Ltmp1048 and .Ltmp1050
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1050-.Lfunc_begin6        # >> Call Site 4 <<
	.uleb128 .Ltmp1051-.Ltmp1050            #   Call between .Ltmp1050 and .Ltmp1051
	.uleb128 .Ltmp1052-.Lfunc_begin6        #     jumps to .Ltmp1052
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1053-.Lfunc_begin6        # >> Call Site 5 <<
	.uleb128 .Ltmp1054-.Ltmp1053            #   Call between .Ltmp1053 and .Ltmp1054
	.uleb128 .Ltmp1055-.Lfunc_begin6        #     jumps to .Ltmp1055
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1056-.Lfunc_begin6        # >> Call Site 6 <<
	.uleb128 .Ltmp1057-.Ltmp1056            #   Call between .Ltmp1056 and .Ltmp1057
	.uleb128 .Ltmp1073-.Lfunc_begin6        #     jumps to .Ltmp1073
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1058-.Lfunc_begin6        # >> Call Site 7 <<
	.uleb128 .Ltmp1065-.Ltmp1058            #   Call between .Ltmp1058 and .Ltmp1065
	.uleb128 .Ltmp1066-.Lfunc_begin6        #     jumps to .Ltmp1066
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1067-.Lfunc_begin6        # >> Call Site 8 <<
	.uleb128 .Ltmp1072-.Ltmp1067            #   Call between .Ltmp1067 and .Ltmp1072
	.uleb128 .Ltmp1073-.Lfunc_begin6        #     jumps to .Ltmp1073
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1074-.Lfunc_begin6        # >> Call Site 9 <<
	.uleb128 .Ltmp1077-.Ltmp1074            #   Call between .Ltmp1074 and .Ltmp1077
	.uleb128 .Ltmp1078-.Lfunc_begin6        #     jumps to .Ltmp1078
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1079-.Lfunc_begin6        # >> Call Site 10 <<
	.uleb128 .Ltmp1080-.Ltmp1079            #   Call between .Ltmp1079 and .Ltmp1080
	.uleb128 .Ltmp1081-.Lfunc_begin6        #     jumps to .Ltmp1081
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1080-.Lfunc_begin6        # >> Call Site 11 <<
	.uleb128 .Ltmp1085-.Ltmp1080            #   Call between .Ltmp1080 and .Ltmp1085
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1085-.Lfunc_begin6        # >> Call Site 12 <<
	.uleb128 .Ltmp1086-.Ltmp1085            #   Call between .Ltmp1085 and .Ltmp1086
	.uleb128 .Ltmp1087-.Lfunc_begin6        #     jumps to .Ltmp1087
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1086-.Lfunc_begin6        # >> Call Site 13 <<
	.uleb128 .Ltmp1091-.Ltmp1086            #   Call between .Ltmp1086 and .Ltmp1091
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1091-.Lfunc_begin6        # >> Call Site 14 <<
	.uleb128 .Ltmp1092-.Ltmp1091            #   Call between .Ltmp1091 and .Ltmp1092
	.uleb128 .Ltmp1093-.Lfunc_begin6        #     jumps to .Ltmp1093
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1094-.Lfunc_begin6        # >> Call Site 15 <<
	.uleb128 .Ltmp1095-.Ltmp1094            #   Call between .Ltmp1094 and .Ltmp1095
	.uleb128 .Ltmp1096-.Lfunc_begin6        #     jumps to .Ltmp1096
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1095-.Lfunc_begin6        # >> Call Site 16 <<
	.uleb128 .Ltmp1100-.Ltmp1095            #   Call between .Ltmp1095 and .Ltmp1100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1100-.Lfunc_begin6        # >> Call Site 17 <<
	.uleb128 .Ltmp1101-.Ltmp1100            #   Call between .Ltmp1100 and .Ltmp1101
	.uleb128 .Ltmp1102-.Lfunc_begin6        #     jumps to .Ltmp1102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1101-.Lfunc_begin6        # >> Call Site 18 <<
	.uleb128 .Ltmp1106-.Ltmp1101            #   Call between .Ltmp1101 and .Ltmp1106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1106-.Lfunc_begin6        # >> Call Site 19 <<
	.uleb128 .Ltmp1107-.Ltmp1106            #   Call between .Ltmp1106 and .Ltmp1107
	.uleb128 .Ltmp1108-.Lfunc_begin6        #     jumps to .Ltmp1108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1109-.Lfunc_begin6        # >> Call Site 20 <<
	.uleb128 .Ltmp1110-.Ltmp1109            #   Call between .Ltmp1109 and .Ltmp1110
	.uleb128 .Ltmp1111-.Lfunc_begin6        #     jumps to .Ltmp1111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1110-.Lfunc_begin6        # >> Call Site 21 <<
	.uleb128 .Ltmp1115-.Ltmp1110            #   Call between .Ltmp1110 and .Ltmp1115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1115-.Lfunc_begin6        # >> Call Site 22 <<
	.uleb128 .Ltmp1116-.Ltmp1115            #   Call between .Ltmp1115 and .Ltmp1116
	.uleb128 .Ltmp1117-.Lfunc_begin6        #     jumps to .Ltmp1117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1116-.Lfunc_begin6        # >> Call Site 23 <<
	.uleb128 .Ltmp1121-.Ltmp1116            #   Call between .Ltmp1116 and .Ltmp1121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1121-.Lfunc_begin6        # >> Call Site 24 <<
	.uleb128 .Ltmp1122-.Ltmp1121            #   Call between .Ltmp1121 and .Ltmp1122
	.uleb128 .Ltmp1123-.Lfunc_begin6        #     jumps to .Ltmp1123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1124-.Lfunc_begin6        # >> Call Site 25 <<
	.uleb128 .Ltmp1125-.Ltmp1124            #   Call between .Ltmp1124 and .Ltmp1125
	.uleb128 .Ltmp1150-.Lfunc_begin6        #     jumps to .Ltmp1150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1125-.Lfunc_begin6        # >> Call Site 26 <<
	.uleb128 .Ltmp1126-.Ltmp1125            #   Call between .Ltmp1125 and .Ltmp1126
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1126-.Lfunc_begin6        # >> Call Site 27 <<
	.uleb128 .Ltmp1127-.Ltmp1126            #   Call between .Ltmp1126 and .Ltmp1127
	.uleb128 .Ltmp1156-.Lfunc_begin6        #     jumps to .Ltmp1156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1127-.Lfunc_begin6        # >> Call Site 28 <<
	.uleb128 .Ltmp1128-.Ltmp1127            #   Call between .Ltmp1127 and .Ltmp1128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1128-.Lfunc_begin6        # >> Call Site 29 <<
	.uleb128 .Ltmp1129-.Ltmp1128            #   Call between .Ltmp1128 and .Ltmp1129
	.uleb128 .Ltmp1162-.Lfunc_begin6        #     jumps to .Ltmp1162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1130-.Lfunc_begin6        # >> Call Site 30 <<
	.uleb128 .Ltmp1131-.Ltmp1130            #   Call between .Ltmp1130 and .Ltmp1131
	.uleb128 .Ltmp1150-.Lfunc_begin6        #     jumps to .Ltmp1150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1131-.Lfunc_begin6        # >> Call Site 31 <<
	.uleb128 .Ltmp1132-.Ltmp1131            #   Call between .Ltmp1131 and .Ltmp1132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1132-.Lfunc_begin6        # >> Call Site 32 <<
	.uleb128 .Ltmp1133-.Ltmp1132            #   Call between .Ltmp1132 and .Ltmp1133
	.uleb128 .Ltmp1156-.Lfunc_begin6        #     jumps to .Ltmp1156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1133-.Lfunc_begin6        # >> Call Site 33 <<
	.uleb128 .Ltmp1134-.Ltmp1133            #   Call between .Ltmp1133 and .Ltmp1134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1134-.Lfunc_begin6        # >> Call Site 34 <<
	.uleb128 .Ltmp1135-.Ltmp1134            #   Call between .Ltmp1134 and .Ltmp1135
	.uleb128 .Ltmp1162-.Lfunc_begin6        #     jumps to .Ltmp1162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1136-.Lfunc_begin6        # >> Call Site 35 <<
	.uleb128 .Ltmp1137-.Ltmp1136            #   Call between .Ltmp1136 and .Ltmp1137
	.uleb128 .Ltmp1150-.Lfunc_begin6        #     jumps to .Ltmp1150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1137-.Lfunc_begin6        # >> Call Site 36 <<
	.uleb128 .Ltmp1138-.Ltmp1137            #   Call between .Ltmp1137 and .Ltmp1138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1138-.Lfunc_begin6        # >> Call Site 37 <<
	.uleb128 .Ltmp1139-.Ltmp1138            #   Call between .Ltmp1138 and .Ltmp1139
	.uleb128 .Ltmp1156-.Lfunc_begin6        #     jumps to .Ltmp1156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1139-.Lfunc_begin6        # >> Call Site 38 <<
	.uleb128 .Ltmp1140-.Ltmp1139            #   Call between .Ltmp1139 and .Ltmp1140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1140-.Lfunc_begin6        # >> Call Site 39 <<
	.uleb128 .Ltmp1141-.Ltmp1140            #   Call between .Ltmp1140 and .Ltmp1141
	.uleb128 .Ltmp1162-.Lfunc_begin6        #     jumps to .Ltmp1162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1142-.Lfunc_begin6        # >> Call Site 40 <<
	.uleb128 .Ltmp1143-.Ltmp1142            #   Call between .Ltmp1142 and .Ltmp1143
	.uleb128 .Ltmp1150-.Lfunc_begin6        #     jumps to .Ltmp1150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1143-.Lfunc_begin6        # >> Call Site 41 <<
	.uleb128 .Ltmp1144-.Ltmp1143            #   Call between .Ltmp1143 and .Ltmp1144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1144-.Lfunc_begin6        # >> Call Site 42 <<
	.uleb128 .Ltmp1145-.Ltmp1144            #   Call between .Ltmp1144 and .Ltmp1145
	.uleb128 .Ltmp1156-.Lfunc_begin6        #     jumps to .Ltmp1156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1145-.Lfunc_begin6        # >> Call Site 43 <<
	.uleb128 .Ltmp1146-.Ltmp1145            #   Call between .Ltmp1145 and .Ltmp1146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1146-.Lfunc_begin6        # >> Call Site 44 <<
	.uleb128 .Ltmp1147-.Ltmp1146            #   Call between .Ltmp1146 and .Ltmp1147
	.uleb128 .Ltmp1162-.Lfunc_begin6        #     jumps to .Ltmp1162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1148-.Lfunc_begin6        # >> Call Site 45 <<
	.uleb128 .Ltmp1149-.Ltmp1148            #   Call between .Ltmp1148 and .Ltmp1149
	.uleb128 .Ltmp1150-.Lfunc_begin6        #     jumps to .Ltmp1150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1149-.Lfunc_begin6        # >> Call Site 46 <<
	.uleb128 .Ltmp1154-.Ltmp1149            #   Call between .Ltmp1149 and .Ltmp1154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1154-.Lfunc_begin6        # >> Call Site 47 <<
	.uleb128 .Ltmp1155-.Ltmp1154            #   Call between .Ltmp1154 and .Ltmp1155
	.uleb128 .Ltmp1156-.Lfunc_begin6        #     jumps to .Ltmp1156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1155-.Lfunc_begin6        # >> Call Site 48 <<
	.uleb128 .Ltmp1160-.Ltmp1155            #   Call between .Ltmp1155 and .Ltmp1160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1160-.Lfunc_begin6        # >> Call Site 49 <<
	.uleb128 .Ltmp1161-.Ltmp1160            #   Call between .Ltmp1160 and .Ltmp1161
	.uleb128 .Ltmp1162-.Lfunc_begin6        #     jumps to .Ltmp1162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1161-.Lfunc_begin6        # >> Call Site 50 <<
	.uleb128 .Ltmp1163-.Ltmp1161            #   Call between .Ltmp1161 and .Ltmp1163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1163-.Lfunc_begin6        # >> Call Site 51 <<
	.uleb128 .Ltmp1234-.Ltmp1163            #   Call between .Ltmp1163 and .Ltmp1234
	.uleb128 .Ltmp1235-.Lfunc_begin6        #     jumps to .Ltmp1235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1236-.Lfunc_begin6        # >> Call Site 52 <<
	.uleb128 .Ltmp1261-.Ltmp1236            #   Call between .Ltmp1236 and .Ltmp1261
	.uleb128 .Ltmp1262-.Lfunc_begin6        #     jumps to .Ltmp1262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1097-.Lfunc_begin6        # >> Call Site 53 <<
	.uleb128 .Ltmp1098-.Ltmp1097            #   Call between .Ltmp1097 and .Ltmp1098
	.uleb128 .Ltmp1099-.Lfunc_begin6        #     jumps to .Ltmp1099
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1103-.Lfunc_begin6        # >> Call Site 54 <<
	.uleb128 .Ltmp1104-.Ltmp1103            #   Call between .Ltmp1103 and .Ltmp1104
	.uleb128 .Ltmp1105-.Lfunc_begin6        #     jumps to .Ltmp1105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1151-.Lfunc_begin6        # >> Call Site 55 <<
	.uleb128 .Ltmp1152-.Ltmp1151            #   Call between .Ltmp1151 and .Ltmp1152
	.uleb128 .Ltmp1153-.Lfunc_begin6        #     jumps to .Ltmp1153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1157-.Lfunc_begin6        # >> Call Site 56 <<
	.uleb128 .Ltmp1158-.Ltmp1157            #   Call between .Ltmp1157 and .Ltmp1158
	.uleb128 .Ltmp1159-.Lfunc_begin6        #     jumps to .Ltmp1159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1082-.Lfunc_begin6        # >> Call Site 57 <<
	.uleb128 .Ltmp1083-.Ltmp1082            #   Call between .Ltmp1082 and .Ltmp1083
	.uleb128 .Ltmp1084-.Lfunc_begin6        #     jumps to .Ltmp1084
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1088-.Lfunc_begin6        # >> Call Site 58 <<
	.uleb128 .Ltmp1089-.Ltmp1088            #   Call between .Ltmp1088 and .Ltmp1089
	.uleb128 .Ltmp1090-.Lfunc_begin6        #     jumps to .Ltmp1090
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1112-.Lfunc_begin6        # >> Call Site 59 <<
	.uleb128 .Ltmp1113-.Ltmp1112            #   Call between .Ltmp1112 and .Ltmp1113
	.uleb128 .Ltmp1114-.Lfunc_begin6        #     jumps to .Ltmp1114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1118-.Lfunc_begin6        # >> Call Site 60 <<
	.uleb128 .Ltmp1119-.Ltmp1118            #   Call between .Ltmp1118 and .Ltmp1119
	.uleb128 .Ltmp1120-.Lfunc_begin6        #     jumps to .Ltmp1120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1119-.Lfunc_begin6        # >> Call Site 61 <<
	.uleb128 .Lfunc_end22-.Ltmp1119         #   Call between .Ltmp1119 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..21
	.type	.omp_outlined..21,@function
.omp_outlined..21:                      # 
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
	je	.LBB23_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB23_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB23_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB23_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB23_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB23_17:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB23_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB23_14
	jmp	.LBB23_19
.LBB23_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB23_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB23_5
	jmp	.LBB23_6
.LBB23_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB23_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB23_15:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB23_15
.LBB23_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB23_6:
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
	movl	$.omp.reduction.reduction_func.22, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB23_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB23_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB23_11
.LBB23_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB23_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB23_10
.LBB23_11:
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
.Lfunc_end23:
	.size	.omp_outlined..21, .Lfunc_end23-.omp_outlined..21
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.22
	.type	.omp.reduction.reduction_func.22,@function
.omp.reduction.reduction_func.22:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end24:
	.size	.omp.reduction.reduction_func.22, .Lfunc_end24-.omp.reduction.reduction_func.22
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_outlined..23
	.type	.omp_outlined..23,@function
.omp_outlined..23:                      # 
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
	je	.LBB25_11
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
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	16(%rsp), %eax
	cmpl	%ebp, %eax
	cmovbel	%eax, %ebp
	movl	20(%rsp), %esi
	cmpl	%ebp, %esi
	ja	.LBB25_6
# %bb.2:
	movq	%rbx, %r8
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rcx
	movl	%ebp, %edx
	leaq	(%rcx,%rdx,8), %rdi
	leaq	8(%rsp), %rbp
	cmpq	%rbp, %rdi
	setae	%r11b
	leaq	(%rcx,%rsi,8), %r10
	cmpq	%r10, %rbp
	setae	%r15b
	leaq	(%rax,%rdx,8), %rdi
	cmpq	%rbp, %rdi
	setb	%dil
	leaq	(%rax,%rsi,8), %rbx
	cmpq	%rbx, %rbp
	setb	%r9b
	testb	%r15b, %r11b
	jne	.LBB25_4
# %bb.3:
	orb	%r9b, %dil
	je	.LBB25_4
# %bb.12:
	movq	%rdx, %r9
	subq	%rsi, %r9
	incq	%r9
	movq	%r9, %rdi
	andq	$-4, %rdi
	je	.LBB25_13
# %bb.16:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB25_17:                              # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rbp,8), %ymm1
	vfmadd231pd	(%rbx,%rbp,8), %ymm1, %ymm0 # ymm0 = (ymm1 * mem) + ymm0
	addq	$4, %rbp
	cmpq	%rdi, %rbp
	jl	.LBB25_17
# %bb.18:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rdi, %r9
	movq	%r8, %rbx
	jne	.LBB25_14
	jmp	.LBB25_19
.LBB25_4:
	incq	%rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
	.p2align	4, 0x90
.LBB25_5:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rsi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	vmovsd	%xmm0, 8(%rsp)
	incq	%rsi
	cmpq	%rsi, %rdx
	jne	.LBB25_5
	jmp	.LBB25_6
.LBB25_13:
	xorl	%edi, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r8, %rbx
.LBB25_14:
	incq	%rdx
	addq	%rsi, %rdi
	.p2align	4, 0x90
.LBB25_15:                              # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdi,8), %xmm1            # xmm1 = mem[0],zero
	vfmadd231sd	(%rax,%rdi,8), %xmm1, %xmm0 # xmm0 = (xmm1 * mem) + xmm0
	incq	%rdi
	cmpq	%rdi, %rdx
	jne	.LBB25_15
.LBB25_19:
	vmovsd	%xmm0, 8(%rsp)
.LBB25_6:
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
	movl	$.omp.reduction.reduction_func.24, %r9d
	movl	%r14d, %esi
	movl	$1, %edx
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_reduce_nowait@PLT
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	cmpl	$2, %eax
	je	.LBB25_9
# %bb.7:
	cmpl	$1, %eax
	jne	.LBB25_11
# %bb.8:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vaddsd	(%rbx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx)
	movq	.gomp_critical_user_.reduction.var@GOTPCREL(%rip), %rdx
	movl	$.L__unnamed_3, %edi
	movl	%r14d, %esi
	callq	__kmpc_end_reduce_nowait@PLT
	jmp	.LBB25_11
.LBB25_9:
	vmovsd	8(%rsp), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	(%rbx), %xmm1                   # xmm1 = mem[0],zero
	.p2align	4, 0x90
.LBB25_10:                              # =>This Inner Loop Header: Depth=1
	vaddsd	%xmm0, %xmm1, %xmm2
	vmovq	%xmm2, %rcx
	vmovq	%xmm1, %rax
	lock		cmpxchgq	%rcx, (%rbx)
	vmovq	%rax, %xmm1
	jne	.LBB25_10
.LBB25_11:
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
.Lfunc_end25:
	.size	.omp_outlined..23, .Lfunc_end25-.omp_outlined..23
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp.reduction.reduction_func.24
	.type	.omp.reduction.reduction_func.24,@function
.omp.reduction.reduction_func.24:       # 
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	(%rdi), %rcx
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vaddsd	(%rcx), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx)
	retq
.Lfunc_end26:
	.size	.omp.reduction.reduction_func.24, .Lfunc_end26-.omp.reduction.reduction_func.24
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_compare_dot_prod.cc
	.type	_GLOBAL__sub_I_compare_dot_prod.cc,@function
_GLOBAL__sub_I_compare_dot_prod.cc:     # 
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
.Lfunc_end27:
	.size	_GLOBAL__sub_I_compare_dot_prod.cc, .Lfunc_end27-_GLOBAL__sub_I_compare_dot_prod.cc
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

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str, 49

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_compare_dot_prod.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
