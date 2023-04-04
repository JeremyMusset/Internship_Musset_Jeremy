	.text
	.file	"parallelisation.cc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
.LCPI0_0:
	.quad	0x3ff0000000000000              #  1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_1:
	.zero	16
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.weak	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.p2align	4, 0x90
	.type	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,@function
_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi: # 
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
	subq	$824, %rsp                      # imm = 0x338
	.cfi_def_cfa_offset 880
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, 96(%rsp)                  # 4-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movl	%edi, 108(%rsp)
	testl	%edx, %edx
	js	.LBB0_176
# %bb.1:
	movq	%r8, %r14
	movl	%edi, %r15d
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movslq	%edx, %rbp
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	movq	%rbp, 200(%rsp)                 # 8-byte Spill
	je	.LBB0_12
# %bb.2:
	movl	%edx, %ebx
	leaq	(,%rbp,8), %r15
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, %r12
	movq	%rax, 400(%rsp)
	leaq	(%rax,%rbp,8), %rbp
	movq	%rbp, 416(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %ebx
	jne	.LBB0_4
# %bb.3:
	movq	%rdi, %rbp
	jmp	.LBB0_5
.LBB0_12:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 400(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 416(%rsp)
	vmovupd	%xmm0, 368(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 384(%rsp)
	vmovupd	%xmm0, 336(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 352(%rsp)
	vmovupd	%xmm0, 464(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 480(%rsp)
	xorl	%r12d, %r12d
	xorl	%r13d, %r13d
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
	movq	$0, 56(%rsp)                    # 8-byte Folded Spill
	xorl	%ebp, %ebp
	jmp	.LBB0_16
.LBB0_4:
	leaq	-8(%r15), %rdx
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB0_5:
	movq	%rbp, 408(%rsp)
.Ltmp0:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp1:
	movq	200(%rsp), %rbx                 # 8-byte Reload
# %bb.6:
	movq	%rax, %r13
	movq	%rax, 368(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 384(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB0_8
# %bb.7:
	movq	%rdi, %rbp
	jmp	.LBB0_9
.LBB0_8:
	leaq	-8(%r15), %rdx
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB0_9:
	movq	%rbp, 376(%rsp)
.Ltmp3:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp4:
# %bb.10:
	movq	%rax, 336(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 352(%rsp)
	movq	%rax, %rcx
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB0_13
# %bb.11:
	movq	%rdi, %rbp
	jmp	.LBB0_14
.LBB0_13:
	addq	$-8, %r15
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_intel_fast_memset@PLT
.LBB0_14:
	movl	12(%rsp), %r15d                 # 4-byte Reload
	movq	%rbp, 344(%rsp)
	shlq	$5, %rbx
.Ltmp6:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp7:
# %bb.15:
	movq	%rax, 464(%rsp)
	movq	%rax, %rbp
	addq	%rbx, %rbp
	movq	%rbp, 480(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
.LBB0_16:
	movq	%rbp, 472(%rsp)
.Ltmp9:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp10:
# %bb.17:
.Ltmp11:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp12:
# %bb.18:
.Ltmp13:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp14:
# %bb.19:
.Ltmp15:
	.cfi_escape 0x2e, 0x00
	leaq	656(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp16:
# %bb.20:
.Ltmp17:
	.cfi_escape 0x2e, 0x00
	leaq	624(%rsp), %rdi
	movl	$4000, %esi                     # imm = 0xFA0
	callq	mpfr_init2
.Ltmp18:
# %bb.21:
.Ltmp19:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp20:
# %bb.22:
.Ltmp21:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp22:
# %bb.23:
.Ltmp23:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp24:
# %bb.24:
.Ltmp25:
	.cfi_escape 0x2e, 0x00
	leaq	656(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp26:
# %bb.25:
.Ltmp27:
	.cfi_escape 0x2e, 0x00
	leaq	624(%rsp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp28:
# %bb.26:
	movq	$0, 232(%rsp)
	movq	$0, 224(%rsp)
	movq	$0, 216(%rsp)
	movq	$0, 208(%rsp)
	testl	%r15d, %r15d
	js	.LBB0_27
# %bb.29:
	je	.LBB0_30
# %bb.31:
	movslq	%r15d, %rbx
	shlq	$3, %rbx
.Ltmp30:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp31:
# %bb.32:
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	$0, (%rax)
	cmpl	$1, %r15d
	je	.LBB0_34
# %bb.33:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	addq	$8, %rdi
	leaq	-8(%rbx), %rdx
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.LBB0_34:
.Ltmp32:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_Znwm
.Ltmp33:
# %bb.35:
	movq	$0, (%rax)
	cmpl	$1, %r15d
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	je	.LBB0_37
# %bb.36:
	movq	%rax, %rdi
	addq	$8, %rdi
	addq	$-8, %rbx
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	_intel_fast_memset@PLT
.LBB0_37:
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	je	.LBB0_38
.LBB0_68:
	movq	%r14, 488(%rsp)                 # 8-byte Spill
	movl	8(%rsp), %eax                   # 4-byte Reload
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	leaq	432(%rsp), %rbp
	leaq	784(%rsp), %r14
	xorl	%r15d, %r15d
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB0_69
	.p2align	4, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_69 Depth=1
	incl	%r15d
	cmpl	72(%rsp), %r15d                 # 4-byte Folded Reload
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
	leaq	432(%rsp), %rbp
	je	.LBB0_39
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_74 Depth 2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 432(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 448(%rsp)
.Ltmp35:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	movl	%r15d, %esi
	movl	96(%rsp), %edx                  # 4-byte Reload
	callq	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
.Ltmp36:
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	movl	8(%rsp), %ebx                   # 4-byte Reload
	movl	%ebx, %edi
	callq	omp_set_num_threads
	movl	12(%rsp), %eax                  # 4-byte Reload
	cltd
	idivl	%ebx
	movl	%edx, 104(%rsp)
	movl	%eax, 100(%rsp)
	.cfi_escape 0x2e, 0x50
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined., %edx
	movl	$13, %esi
	movq	496(%rsp), %rcx                 # 8-byte Reload
	leaq	100(%rsp), %r8
	leaq	104(%rsp), %r9
	xorl	%eax, %eax
	leaq	208(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	224(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	352(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	392(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	256(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	440(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	280(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	520(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	leaq	172(%rsp), %rbx
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$80, %rsp
	.cfi_adjust_cfa_offset -80
.Ltmp38:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp39:
# %bb.71:                               #   in Loop: Header=BB0_69 Depth=1
.Ltmp40:
	.cfi_escape 0x2e, 0x00
	vxorpd	%xmm0, %xmm0, %xmm0
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp41:
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=1
	cmpl	$0, 8(%rsp)                     # 4-byte Folded Reload
	je	.LBB0_76
# %bb.73:                               #   in Loop: Header=BB0_69 Depth=1
	movq	200(%rsp), %rbp                 # 8-byte Reload
	movq	56(%rsp), %rbx                  # 8-byte Reload
	.p2align	4, 0x90
.LBB0_74:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp43:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp44:
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	addq	$32, %rbx
	decq	%rbp
	jne	.LBB0_74
.LBB0_76:                               #   in Loop: Header=BB0_69 Depth=1
.Ltmp46:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp47:
# %bb.77:                               #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp49:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp50:
# %bb.78:                               #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
.Ltmp52:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp53:
# %bb.79:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, %r13
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	408(%rsp), %r12
	movq	%r12, %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 176(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 192(%rsp)
	subq	%rax, %r12
	je	.LBB0_80
# %bb.84:                               #   in Loop: Header=BB0_69 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r12
	ja	.LBB0_85
# %bb.87:                               #   in Loop: Header=BB0_69 Depth=1
.Ltmp55:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp56:
# %bb.88:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 176(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 192(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB0_89
	.p2align	4, 0x90
.LBB0_80:                               #   in Loop: Header=BB0_69 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 192(%rsp)
.LBB0_89:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rbx, 184(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 304(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 320(%rsp)
.Ltmp57:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp58:
	movl	8(%rsp), %r12d                  # 4-byte Reload
# %bb.90:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 304(%rsp)
	movq	%rax, %rbx
	addq	$1600, %rbx                     # imm = 0x640
	movq	%rbx, 320(%rsp)
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 312(%rsp)
.Ltmp60:
	.cfi_escape 0x2e, 0x00
	leaq	176(%rsp), %rdi
	movl	%r12d, %esi
	leaq	304(%rsp), %rdx
	movl	$200, %ecx
	xorl	%r8d, %r8d
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	vmovsd	%xmm0, 520(%rsp)                # 8-byte Spill
.Ltmp61:
# %bb.91:                               #   in Loop: Header=BB0_69 Depth=1
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_93
# %bb.92:                               #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_93:                               #   in Loop: Header=BB0_69 Depth=1
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_95
# %bb.94:                               #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_95:                               #   in Loop: Header=BB0_69 Depth=1
	movq	376(%rsp), %rbp
	movq	%rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 144(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 160(%rsp)
	subq	%rax, %rbp
	je	.LBB0_96
# %bb.97:                               #   in Loop: Header=BB0_69 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_85
# %bb.98:                               #   in Loop: Header=BB0_69 Depth=1
.Ltmp63:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp64:
# %bb.99:                               #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 144(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 160(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	movl	8(%rsp), %r12d                  # 4-byte Reload
	jmp	.LBB0_100
	.p2align	4, 0x90
.LBB0_96:                               #   in Loop: Header=BB0_69 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 160(%rsp)
.LBB0_100:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rbx, 152(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 272(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 288(%rsp)
.Ltmp65:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp66:
# %bb.101:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 272(%rsp)
	movq	%rax, %rbx
	addq	$1600, %rbx                     # imm = 0x640
	movq	%rbx, 288(%rsp)
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 280(%rsp)
.Ltmp68:
	.cfi_escape 0x2e, 0x00
	leaq	144(%rsp), %rdi
	movl	%r12d, %esi
	leaq	272(%rsp), %rdx
	movl	$200, %ecx
	xorl	%r8d, %r8d
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	vmovsd	%xmm0, 512(%rsp)                # 8-byte Spill
.Ltmp69:
# %bb.102:                              #   in Loop: Header=BB0_69 Depth=1
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_104
# %bb.103:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_104:                              #   in Loop: Header=BB0_69 Depth=1
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_106
# %bb.105:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_106:                              #   in Loop: Header=BB0_69 Depth=1
	movq	344(%rsp), %rbp
	movq	%rbp, %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	subq	%rax, %rbx
	sarq	$3, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 112(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 128(%rsp)
	subq	%rax, %rbp
	je	.LBB0_107
# %bb.108:                              #   in Loop: Header=BB0_69 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rbp
	ja	.LBB0_85
# %bb.109:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp71:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp72:
# %bb.110:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 112(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 128(%rsp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	callq	_intel_fast_memcpy@PLT
	movl	8(%rsp), %r12d                  # 4-byte Reload
	jmp	.LBB0_111
	.p2align	4, 0x90
.LBB0_107:                              #   in Loop: Header=BB0_69 Depth=1
	shlq	$3, %rbx
	movq	%rbx, 128(%rsp)
.LBB0_111:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rbx, 120(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 240(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 256(%rsp)
.Ltmp77:
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edi                     # imm = 0x640
	callq	_Znwm
.Ltmp78:
# %bb.112:                              #   in Loop: Header=BB0_69 Depth=1
	movq	%rax, 240(%rsp)
	movq	%rax, %rbx
	addq	$1600, %rbx                     # imm = 0x640
	movq	%rbx, 256(%rsp)
	.cfi_escape 0x2e, 0x00
	movl	$1600, %edx                     # imm = 0x640
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	_intel_fast_memcpy@PLT
	movq	%rbx, 248(%rsp)
.Ltmp80:
	.cfi_escape 0x2e, 0x00
	leaq	112(%rsp), %rdi
	movl	%r12d, %esi
	leaq	240(%rsp), %rdx
	movl	$200, %ecx
	xorl	%r8d, %r8d
	callq	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii
	vmovsd	%xmm0, 504(%rsp)                # 8-byte Spill
.Ltmp81:
# %bb.113:                              #   in Loop: Header=BB0_69 Depth=1
	movq	240(%rsp), %rdi
	testq	%rdi, %rdi
	leaq	752(%rsp), %rbx
	leaq	720(%rsp), %rbp
	leaq	688(%rsp), %r12
	je	.LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_115:                              #   in Loop: Header=BB0_69 Depth=1
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_117
# %bb.116:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_117:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp83:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp84:
# %bb.118:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp85:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbp, %rdi
	callq	mpfr_init2
.Ltmp86:
# %bb.119:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp87:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r12, %rdi
	callq	mpfr_init2
.Ltmp88:
# %bb.120:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp89:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%r14, %rsi
	vmovsd	520(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp90:
# %bb.121:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp91:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp92:
# %bb.122:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp93:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp94:
# %bb.123:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp95:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp96:
# %bb.124:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp97:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	movq	%r14, %rsi
	vmovsd	512(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp98:
# %bb.125:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp99:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp100:
# %bb.126:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp101:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp102:
# %bb.127:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp103:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp104:
# %bb.128:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp105:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movq	%r14, %rsi
	vmovsd	504(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	xorl	%edx, %edx
	callq	mpfr_sub_d
.Ltmp106:
# %bb.129:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp107:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div
.Ltmp108:
# %bb.130:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp109:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
.Ltmp110:
# %bb.131:                              #   in Loop: Header=BB0_69 Depth=1
.Ltmp111:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	mpfr_set4
.Ltmp112:
# %bb.132:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZdlPv
	.cfi_escape 0x2e, 0x00
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	.cfi_escape 0x2e, 0x00
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_69 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB0_134
.LBB0_39:
	vmovsd	232(%rsp), %xmm0                # xmm0 = mem[0],zero
	vmovhpd	224(%rsp), %xmm0, %xmm0         # xmm0 = xmm0[0],mem[0]
	vmovsd	216(%rsp), %xmm1                # xmm1 = mem[0],zero
	vmovhpd	208(%rsp), %xmm1, %xmm1         # xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm1, %ymm0, %ymm0
	movq	488(%rsp), %r14                 # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	jmp	.LBB0_40
.LBB0_30:
	movq	$0, 24(%rsp)                    # 8-byte Folded Spill
	movq	$0, 64(%rsp)                    # 8-byte Folded Spill
	movq	48(%rsp), %rdx                  # 8-byte Reload
	cmpl	$0, 72(%rsp)                    # 4-byte Folded Reload
	jne	.LBB0_68
.LBB0_38:
	vxorpd	%xmm0, %xmm0, %xmm0
.LBB0_40:
	movq	72(%rsp), %rcx                  # 8-byte Reload
	leal	(%rcx,%rcx), %eax
	leal	(%rax,%rax,4), %eax
	vcvtsi2sd	%eax, %xmm2, %xmm1
	movq	(%rdx), %rax
	vmovsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	vbroadcastsd	%xmm1, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 32(%rax)
	movslq	%ecx, %rbx
.Ltmp114:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	vzeroupper
	callq	mpfr_div_si
.Ltmp115:
# %bb.41:
.Ltmp116:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp117:
# %bb.42:
.Ltmp118:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rdi
	movq	%rdi, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_div_si
.Ltmp119:
# %bb.43:
	movq	(%r14), %rdi
.Ltmp120:
	.cfi_escape 0x2e, 0x00
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp121:
# %bb.44:
	movq	(%r14), %rdi
	addq	$32, %rdi
	movl	600(%rsp), %ecx
.Ltmp122:
	.cfi_escape 0x2e, 0x00
	leaq	592(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp123:
# %bb.45:
	movq	(%r14), %rdi
	addq	$64, %rdi
	movl	568(%rsp), %ecx
.Ltmp124:
	.cfi_escape 0x2e, 0x00
	leaq	560(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp125:
# %bb.46:
	movq	(%r14), %rdi
	addq	$96, %rdi
	movl	536(%rsp), %ecx
.Ltmp126:
	.cfi_escape 0x2e, 0x00
	leaq	528(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp127:
# %bb.47:
	movq	(%r14), %rdi
	subq	$-128, %rdi
	movl	664(%rsp), %ecx
.Ltmp128:
	.cfi_escape 0x2e, 0x00
	leaq	656(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp129:
# %bb.48:
	movl	$160, %edi
	addq	(%r14), %rdi
	movl	632(%rsp), %ecx
.Ltmp130:
	.cfi_escape 0x2e, 0x00
	leaq	624(%rsp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp131:
# %bb.49:
	movq	64(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_51
# %bb.50:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_51:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_53
# %bb.52:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_53:
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_55
# %bb.54:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_55:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_57
# %bb.56:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_57:
	testq	%r13, %r13
	je	.LBB0_59
# %bb.58:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB0_59:
	testq	%r12, %r12
	je	.LBB0_61
# %bb.60:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB0_61:
	addq	$824, %rsp                      # imm = 0x338
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
.LBB0_85:
	.cfi_def_cfa_offset 880
.Ltmp74:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp75:
# %bb.86:
.LBB0_176:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB0_27:
.Ltmp133:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp134:
# %bb.28:
.LBB0_67:
.Ltmp34:
	movq	%rax, %rbp
	movq	24(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_166
.LBB0_64:
.Ltmp8:
	movq	%rax, %rbp
	movq	16(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_170
.LBB0_63:
.Ltmp5:
	movq	%rax, %rbp
	jmp	.LBB0_172
.LBB0_62:
.Ltmp2:
	movq	%rax, %rbp
	jmp	.LBB0_174
.LBB0_66:
.Ltmp135:
	movq	%rax, %rbp
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_169
	jmp	.LBB0_168
.LBB0_162:
.Ltmp132:
	movq	%rax, %rbp
	movq	64(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_165
	jmp	.LBB0_164
.LBB0_65:
.Ltmp29:
	movq	%rax, %rbp
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_169
	jmp	.LBB0_168
.LBB0_150:
.Ltmp79:
	movq	%rax, %rbp
	jmp	.LBB0_153
.LBB0_151:
.Ltmp82:
	movq	%rax, %rbp
	movq	240(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_153
# %bb.152:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_153:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_157
# %bb.154:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB0_157
.LBB0_145:
.Ltmp67:
	movq	%rax, %rbp
	jmp	.LBB0_148
.LBB0_146:
.Ltmp70:
	movq	%rax, %rbp
	movq	272(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_148
# %bb.147:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_148:
	movq	144(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_157
# %bb.149:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB0_157
.LBB0_140:
.Ltmp59:
	movq	%rax, %rbp
	jmp	.LBB0_143
.LBB0_141:
.Ltmp62:
	movq	%rax, %rbp
	movq	304(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_143
# %bb.142:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB0_143:
	movq	176(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_157
# %bb.144:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB0_157
.LBB0_135:
.Ltmp48:
	movq	%rax, %rbp
	jmp	.LBB0_160
.LBB0_136:
.Ltmp51:
	movq	%rax, %rbp
	jmp	.LBB0_159
.LBB0_137:
.Ltmp54:
	movq	%rax, %rbp
	jmp	.LBB0_158
.LBB0_81:
.Ltmp37:
	movq	%rax, %rbp
	jmp	.LBB0_160
.LBB0_138:
.Ltmp73:
	jmp	.LBB0_156
.LBB0_82:
.Ltmp42:
	movq	%rax, %rbp
	jmp	.LBB0_160
.LBB0_155:
.Ltmp113:
	jmp	.LBB0_156
.LBB0_83:
.Ltmp45:
	movq	%rax, %rbp
	jmp	.LBB0_160
.LBB0_139:
.Ltmp76:
.LBB0_156:
	movq	%rax, %rbp
.LBB0_157:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB0_158:
	.cfi_escape 0x2e, 0x00
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_159:
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	32(%rsp), %r13                  # 8-byte Reload
	.cfi_escape 0x2e, 0x00
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_160:
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_161
# %bb.163:
	movq	64(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB0_164
.LBB0_165:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB0_166
.LBB0_167:
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB0_168
.LBB0_169:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB0_170
.LBB0_171:
	testq	%r13, %r13
	jne	.LBB0_172
.LBB0_173:
	testq	%r12, %r12
	jne	.LBB0_174
.LBB0_175:
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_161:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	movq	64(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_165
.LBB0_164:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	movq	24(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_167
.LBB0_166:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	movq	56(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_169
.LBB0_168:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB0_171
.LBB0_170:
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	testq	%r13, %r13
	je	.LBB0_173
.LBB0_172:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_ZdlPv
	testq	%r12, %r12
	je	.LBB0_175
.LBB0_174:
	.cfi_escape 0x2e, 0x00
	movq	%r12, %rdi
	callq	_ZdlPv
	.cfi_escape 0x2e, 0x00
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .Lfunc_end0-_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.cfi_endproc
	.section	.gcc_except_table._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"aG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
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
	.uleb128 .Ltmp28-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp35-.Ltmp33                #   Call between .Ltmp33 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp41-.Ltmp38                #   Call between .Ltmp38 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin0          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin0          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp52-.Ltmp50                #   Call between .Ltmp50 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp55-.Ltmp53                #   Call between .Ltmp53 and .Ltmp55
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp60-.Ltmp58                #   Call between .Ltmp58 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp68-.Ltmp66                #   Call between .Ltmp66 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp77-.Ltmp72                #   Call between .Ltmp72 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp112-.Ltmp83               #   Call between .Ltmp83 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin0         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp131-.Ltmp114              #   Call between .Ltmp114 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin0         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 39 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 40 <<
	.uleb128 .Ltmp133-.Ltmp75               #   Call between .Ltmp75 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Lfunc_end0-.Ltmp134           #   Call between .Ltmp134 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function .omp_outlined.
.LCPI1_0:
	.zero	16
	.text
	.p2align	4, 0x90
	.type	.omp_outlined.,@function
.omp_outlined.:                         # 
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
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
	subq	$536, %rsp                      # imm = 0x218
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%r9, -392(%rbp)                 # 8-byte Spill
	movq	%r8, -408(%rbp)                 # 8-byte Spill
	movq	%rcx, -400(%rbp)                # 8-byte Spill
	movq	%rdx, %rbx
	testl	%ebx, %ebx
	je	.LBB1_86
# %bb.1:
	decl	%ebx
	movl	$0, -124(%rbp)
	movl	%ebx, -92(%rbp)
	movl	$1, -156(%rbp)
	movl	$0, -152(%rbp)
	movl	(%rdi), %esi
	.cfi_escape 0x2e, 0x20
	subq	$8, %rsp
	leaq	-156(%rbp), %rax
	leaq	-152(%rbp), %rcx
	leaq	-124(%rbp), %r8
	leaq	-92(%rbp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%esi, -148(%rbp)                # 4-byte Spill
	movl	$34, %edx
	pushq	$1
	pushq	$1
	pushq	%rax
	callq	__kmpc_for_static_init_4u
	addq	$32, %rsp
	movl	-92(%rbp), %eax
	cmpl	%ebx, %eax
	cmovbel	%eax, %ebx
	movl	%ebx, -92(%rbp)
	movl	-124(%rbp), %ecx
	movq	%rcx, %rax
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movq	%rbx, -144(%rbp)                # 8-byte Spill
	cmpl	%ebx, %ecx
	jbe	.LBB1_2
.LBB1_85:
	.cfi_escape 0x2e, 0x00
	movl	$.L__unnamed_2, %edi
	movl	-148(%rbp), %esi                # 4-byte Reload
	callq	__kmpc_for_static_fini@PLT
.LBB1_86:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_2:
	.cfi_def_cfa %rbp, 16
	movq	80(%rbp), %rax
	movq	72(%rbp), %rcx
	movq	48(%rbp), %rdx
	movq	32(%rbp), %rsi
	movq	-144(%rbp), %rdi                # 8-byte Reload
	incl	%edi
	movq	%rdi, -144(%rbp)                # 8-byte Spill
	vmovsd	(%rsi), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, -192(%rbp)               # 8-byte Spill
	vmovsd	(%rdx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, -184(%rbp)               # 8-byte Spill
	vmovsd	(%rcx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, -176(%rbp)               # 8-byte Spill
	vmovsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, -168(%rbp)               # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_84:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-104(%rbp), %rcx                # 8-byte Reload
	incq	%rcx
	movq	%rcx, %rax
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	cmpq	-144(%rbp), %rcx                # 8-byte Folded Reload
	jae	.LBB1_85
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_20 Depth 2
                                        #     Child Loop BB1_112 Depth 2
                                        #     Child Loop BB1_24 Depth 2
                                        #     Child Loop BB1_44 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_78 Depth 2
	.cfi_escape 0x2e, 0x00
	callq	omp_get_thread_num
	movl	%eax, %edx
	movq	-400(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %r13d
	movl	%r13d, %r12d
	imull	%edx, %r12d
	movq	-408(%rbp), %rax                # 8-byte Reload
	movl	(%rax), %r14d
	xorl	%ebx, %ebx
	cmpl	%r14d, %edx
	setl	%bl
	cmovll	%edx, %r14d
	leal	(%r14,%r12), %esi
	leal	(%rbx,%r13), %eax
	leal	(%rax,%rsi), %ecx
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	testl	%eax, %eax
	js	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movl	%ecx, -80(%rbp)                 # 4-byte Spill
	movq	%rsi, -112(%rbp)                # 8-byte Spill
	movl	%edx, -72(%rbp)                 # 4-byte Spill
	movslq	-88(%rbp), %rax                 # 4-byte Folded Reload
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	leaq	(,%rax,8), %r15
.Ltmp136:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, -56(%rbp)                 # 8-byte Spill
.Ltmp137:
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, -88(%rbp)                   # 4-byte Folded Reload
	movq	%r12, -136(%rbp)                # 8-byte Spill
	jne	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rdi, -120(%rbp)                # 8-byte Spill
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	movq	$0, -120(%rbp)                  # 8-byte Folded Spill
	movq	$0, -56(%rbp)                   # 8-byte Folded Spill
	movq	$0, -48(%rbp)                   # 8-byte Folded Spill
	movq	$0, -64(%rbp)                   # 8-byte Folded Spill
	cmpl	%ecx, %esi
	jb	.LBB1_18
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r12
	leaq	-8(%r15), %rdx
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	callq	_intel_fast_memset@PLT
	movq	%r12, -120(%rbp)                # 8-byte Spill
	movq	-136(%rbp), %r12                # 8-byte Reload
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp138:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
	movq	%rax, -48(%rbp)                 # 8-byte Spill
.Ltmp139:
# %bb.13:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	8(%rax), %rdi
	movq	$0, (%rax)
	cmpl	$1, -88(%rbp)                   # 4-byte Folded Reload
	jne	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rdi, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r12
	addq	$-8, %r15
	.cfi_escape 0x2e, 0x00
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	_intel_fast_memset@PLT
	movq	%r12, -64(%rbp)                 # 8-byte Spill
	movq	-136(%rbp), %r12                # 8-byte Reload
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-72(%rbp), %edx                 # 4-byte Reload
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movl	-80(%rbp), %ecx                 # 4-byte Reload
	cmpl	%ecx, %esi
	jae	.LBB1_22
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-392(%rbp), %rax                # 8-byte Reload
	movq	(%rax), %r11
	movq	16(%rbp), %rcx
	movl	(%rcx), %r10d
	movl	%esi, %r8d
	incl	%edx
	imull	%edx, %r13d
	addl	%r14d, %r13d
	addl	%ebx, %r13d
	subq	%r8, %r13
	cmpq	$4, %r13
	movq	-56(%rbp), %r9                  # 8-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	jb	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r13, %rsi
	shrq	$2, %rsi
	leaq	(%r11,%r8,8), %rdi
	addq	$32, %rdi
	negq	%rsi
	leal	(%r10,%r14), %ebx
	addl	%r12d, %ebx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	-24(%rdi,%rcx,8), %xmm0         # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r9,%rcx,8)
	leal	(%rbx,%rcx), %edx
	incl	%edx
	vmovsd	(%r11,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rcx,8)
	vmovsd	-16(%rdi,%rcx,8), %xmm0         # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r9,%rcx,8)
	leal	2(%rbx,%rcx), %edx
	vmovsd	(%r11,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rax,%rcx,8)
	vmovsd	-8(%rdi,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r9,%rcx,8)
	leal	3(%rbx,%rcx), %edx
	vmovsd	(%r11,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rax,%rcx,8)
	vmovsd	(%rdi,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r9,%rcx,8)
	leal	(%rbx,%rcx), %edx
	addl	$4, %edx
	vmovsd	(%r11,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rax,%rcx,8)
	addq	$4, %rcx
	incq	%rsi
	jne	.LBB1_20
.LBB1_21:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r13, %rdi
	andq	$-4, %rdi
	cmpq	%r13, %rdi
	jae	.LBB1_22
# %bb.111:                              #   in Loop: Header=BB1_3 Depth=1
	movq	%r13, %r9
	subq	%rdi, %r9
	addl	%r14d, %r10d
	addl	%r12d, %r10d
	andl	$-4, %r13d
	addl	%r13d, %r10d
	incl	%r10d
	movq	-48(%rbp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi,8), %rdx
	addq	%rdi, %r8
	leaq	(%r11,%r8,8), %rbx
	addq	$8, %rbx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi,8), %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_112:                              #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rbx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi,%rsi,8)
	leal	(%r10,%rsi), %ecx
	vmovsd	(%r11,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %r9
	jne	.LBB1_112
.LBB1_22:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rsp, -136(%rbp)                # 8-byte Spill
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movl	%ecx, %eax
	.cfi_escape 0x2e, 0x00
	movq	%rsp, %r12
	movq	%rax, %r13
	shlq	$5, %rax
	subq	%rax, %r12
	movq	%r12, %rsp
	.cfi_escape 0x2e, 0x00
	movq	%rsp, %rdx
	subq	%rax, %rdx
	movq	%rdx, -72(%rbp)                 # 8-byte Spill
	movq	%rdx, %rsp
	testl	%ecx, %ecx
	je	.LBB1_29
# %bb.23:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-72(%rbp), %r15                 # 8-byte Reload
	movq	%r12, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Ltmp140:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r14, %rdi
	callq	mpfr_init2
.Ltmp141:
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	movq	-56(%rbp), %rax                 # 8-byte Reload
	vmovsd	(%rax,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp142:
	.cfi_escape 0x2e, 0x00
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp143:
# %bb.26:                               #   in Loop: Header=BB1_24 Depth=2
.Ltmp144:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%r15, %rdi
	callq	mpfr_init2
.Ltmp145:
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=2
	movq	-48(%rbp), %rax                 # 8-byte Reload
	vmovsd	(%rax,%rbx,8), %xmm0            # xmm0 = mem[0],zero
.Ltmp146:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp147:
# %bb.28:                               #   in Loop: Header=BB1_24 Depth=2
	incq	%rbx
	addq	$32, %r14
	addq	$32, %r15
	cmpq	%rbx, %r13
	jne	.LBB1_24
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp149:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	leaq	-448(%rbp), %rdi
	callq	mpfr_init2
.Ltmp150:
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp151:
	.cfi_escape 0x2e, 0x00
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	-448(%rbp), %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
.Ltmp152:
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-576(%rbp), %rsi
	callq	clock_gettime
.Ltmp153:
	.cfi_escape 0x2e, 0x00
	movq	-88(%rbp), %r14                 # 8-byte Reload
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	-72(%rbp), %r15                 # 8-byte Reload
	movq	%r15, %rdx
	leaq	-448(%rbp), %rbx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp154:
# %bb.32:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp155:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp156:
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp157:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp158:
# %bb.34:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp159:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp160:
# %bb.35:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp161:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp162:
# %bb.36:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp163:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp164:
# %bb.37:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp165:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp166:
# %bb.38:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp167:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp168:
# %bb.39:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp169:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp170:
# %bb.40:                               #   in Loop: Header=BB1_3 Depth=1
.Ltmp171:
	.cfi_escape 0x2e, 0x00
	movl	%r14d, %edi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
.Ltmp172:
# %bb.41:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-560(%rbp), %rsi
	callq	clock_gettime
	movq	-104(%rbp), %rbx                # 8-byte Reload
	shlq	$5, %rbx
	movq	24(%rbp), %rax
	addq	(%rax), %rbx
.Ltmp174:
	.cfi_escape 0x2e, 0x00
	movl	$4000, %esi                     # imm = 0xFA0
	movq	%rbx, %rdi
	callq	mpfr_init2
.Ltmp175:
# %bb.42:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-440(%rbp), %ecx
.Ltmp176:
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	leaq	-448(%rbp), %rsi
	xorl	%edx, %edx
	callq	mpfr_set4
.Ltmp177:
# %bb.43:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-552(%rbp), %rax
	subq	-568(%rbp), %rax
	vcvtsi2sd	%rax, %xmm1, %xmm0
	vmovsd	-192(%rbp), %xmm1               # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm1
	movq	32(%rbp), %rax
	vmovsd	%xmm1, -192(%rbp)               # 8-byte Spill
	vmovsd	%xmm1, (%rax)
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-544(%rbp), %rsi
	callq	clock_gettime
	movq	-120(%rbp), %r13                # 8-byte Reload
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	subq	%rbx, %r13
	movq	%r13, %rax
	sarq	$3, %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, %r15
	subq	-48(%rbp), %r15                 # 8-byte Folded Reload
	movq	%r15, %rcx
	sarq	$3, %rcx
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	movl	$10, %r12d
	jmp	.LBB1_44
	.p2align	4, 0x90
.LBB1_59:                               #   in Loop: Header=BB1_44 Depth=2
	decl	%r12d
	movq	-64(%rbp), %rax                 # 8-byte Reload
	je	.LBB1_60
.LBB1_44:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -384(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -368(%rbp)
	cmpq	%rbx, -120(%rbp)                # 8-byte Folded Reload
	je	.LBB1_45
# %bb.46:                               #   in Loop: Header=BB1_44 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB1_93
# %bb.47:                               #   in Loop: Header=BB1_44 Depth=2
.Ltmp179:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp180:
# %bb.48:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%rax, -384(%rbp)
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %r14
	movq	%r14, -368(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	movq	-64(%rbp), %rax                 # 8-byte Reload
	jmp	.LBB1_49
	.p2align	4, 0x90
.LBB1_45:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%r13, -368(%rbp)
	movq	%r13, %r14
.LBB1_49:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%r14, -376(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -352(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -336(%rbp)
	cmpq	-48(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB1_50
# %bb.51:                               #   in Loop: Header=BB1_44 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r15
	ja	.LBB1_93
# %bb.52:                               #   in Loop: Header=BB1_44 Depth=2
.Ltmp181:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp182:
# %bb.53:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%rax, -352(%rbp)
	movq	-112(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -336(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%r15, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB1_54
	.p2align	4, 0x90
.LBB1_50:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%r15, -336(%rbp)
	movq	%r15, %rbx
.LBB1_54:                               #   in Loop: Header=BB1_44 Depth=2
	movq	%rbx, -344(%rbp)
.Ltmp183:
	.cfi_escape 0x2e, 0x00
	leaq	-384(%rbp), %rdi
	leaq	-352(%rbp), %rsi
	movq	-88(%rbp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii
	vmovsd	%xmm0, -80(%rbp)                # 8-byte Spill
.Ltmp184:
	movq	-56(%rbp), %rbx                 # 8-byte Reload
# %bb.55:                               #   in Loop: Header=BB1_44 Depth=2
	movq	-352(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_44 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB1_57:                               #   in Loop: Header=BB1_44 Depth=2
	movq	-384(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_44 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB1_59
	.p2align	4, 0x90
.LBB1_60:                               #   in Loop: Header=BB1_3 Depth=1
	movq	40(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx                # 8-byte Reload
	vmovsd	-80(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rcx,8)
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-528(%rbp), %rsi
	callq	clock_gettime
	movq	-520(%rbp), %rax
	subq	-536(%rbp), %rax
	vcvtsi2sd	%rax, %xmm2, %xmm0
	vmovsd	-184(%rbp), %xmm1               # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm1
	movq	48(%rbp), %rax
	vmovsd	%xmm1, -184(%rbp)               # 8-byte Spill
	vmovsd	%xmm1, (%rax)
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-512(%rbp), %rsi
	callq	clock_gettime
	movl	$10, %r14d
	jmp	.LBB1_61
	.p2align	4, 0x90
.LBB1_76:                               #   in Loop: Header=BB1_61 Depth=2
	decl	%r14d
	je	.LBB1_77
.LBB1_61:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -320(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -304(%rbp)
	cmpq	%rbx, -120(%rbp)                # 8-byte Folded Reload
	je	.LBB1_62
# %bb.63:                               #   in Loop: Header=BB1_61 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB1_93
# %bb.64:                               #   in Loop: Header=BB1_61 Depth=2
.Ltmp186:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp187:
# %bb.65:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%rax, -320(%rbp)
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -304(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB1_66
	.p2align	4, 0x90
.LBB1_62:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%r13, -304(%rbp)
	movq	%r13, %rbx
.LBB1_66:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%rbx, -312(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -288(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -272(%rbp)
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	-48(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB1_67
# %bb.68:                               #   in Loop: Header=BB1_61 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r15
	ja	.LBB1_93
# %bb.69:                               #   in Loop: Header=BB1_61 Depth=2
.Ltmp188:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp189:
# %bb.70:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%rax, -288(%rbp)
	movq	-112(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -272(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%r15, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB1_71
	.p2align	4, 0x90
.LBB1_67:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%r15, -272(%rbp)
	movq	%r15, %rbx
.LBB1_71:                               #   in Loop: Header=BB1_61 Depth=2
	movq	%rbx, -280(%rbp)
.Ltmp190:
	.cfi_escape 0x2e, 0x00
	leaq	-320(%rbp), %rdi
	leaq	-288(%rbp), %rsi
	movq	-88(%rbp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i
	vmovsd	%xmm0, -80(%rbp)                # 8-byte Spill
.Ltmp191:
# %bb.72:                               #   in Loop: Header=BB1_61 Depth=2
	movq	-288(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	je	.LBB1_74
# %bb.73:                               #   in Loop: Header=BB1_61 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB1_74:                               #   in Loop: Header=BB1_61 Depth=2
	movq	-320(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_76
# %bb.75:                               #   in Loop: Header=BB1_61 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB1_76
	.p2align	4, 0x90
.LBB1_77:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-496(%rbp), %rsi
	callq	clock_gettime
	movq	56(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx                # 8-byte Reload
	vmovsd	-80(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rcx,8)
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-480(%rbp), %rsi
	callq	clock_gettime
	movl	$10, %r14d
	jmp	.LBB1_78
	.p2align	4, 0x90
.LBB1_102:                              #   in Loop: Header=BB1_78 Depth=2
	decl	%r14d
	je	.LBB1_80
.LBB1_78:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -256(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -240(%rbp)
	cmpq	%rbx, -120(%rbp)                # 8-byte Folded Reload
	je	.LBB1_79
# %bb.87:                               #   in Loop: Header=BB1_78 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB1_93
# %bb.88:                               #   in Loop: Header=BB1_78 Depth=2
.Ltmp193:
	.cfi_escape 0x2e, 0x00
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp194:
# %bb.89:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%rax, -256(%rbp)
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -240(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB1_90
	.p2align	4, 0x90
.LBB1_79:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%r13, -240(%rbp)
	movq	%r13, %rbx
.LBB1_90:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%rbx, -248(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, -224(%rbp)               # AlignMOV convert to UnAlignMOV 
	movq	$0, -208(%rbp)
	movq	-64(%rbp), %rax                 # 8-byte Reload
	cmpq	-48(%rbp), %rax                 # 8-byte Folded Reload
	je	.LBB1_91
# %bb.92:                               #   in Loop: Header=BB1_78 Depth=2
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r15
	ja	.LBB1_93
# %bb.95:                               #   in Loop: Header=BB1_78 Depth=2
.Ltmp195:
	.cfi_escape 0x2e, 0x00
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp196:
# %bb.96:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%rax, -224(%rbp)
	movq	-112(%rbp), %rcx                # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, -208(%rbp)
	.cfi_escape 0x2e, 0x00
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi                 # 8-byte Reload
	movq	%r15, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB1_97
	.p2align	4, 0x90
.LBB1_91:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%r15, -208(%rbp)
	movq	%r15, %rbx
.LBB1_97:                               #   in Loop: Header=BB1_78 Depth=2
	movq	%rbx, -216(%rbp)
.Ltmp199:
	.cfi_escape 0x2e, 0x00
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rsi
	movq	-88(%rbp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i
	vmovsd	%xmm0, -80(%rbp)                # 8-byte Spill
.Ltmp200:
# %bb.98:                               #   in Loop: Header=BB1_78 Depth=2
	movq	-224(%rbp), %rdi
	testq	%rdi, %rdi
	movq	-56(%rbp), %rbx                 # 8-byte Reload
	je	.LBB1_100
# %bb.99:                               #   in Loop: Header=BB1_78 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB1_100:                              #   in Loop: Header=BB1_78 Depth=2
	movq	-256(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_102
# %bb.101:                              #   in Loop: Header=BB1_78 Depth=2
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
	jmp	.LBB1_102
	.p2align	4, 0x90
.LBB1_80:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	xorl	%edi, %edi
	leaq	-464(%rbp), %rsi
	callq	clock_gettime
	movq	64(%rbp), %rax
	movq	(%rax), %rax
	movq	-104(%rbp), %rcx                # 8-byte Reload
	vmovsd	-80(%rbp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax,%rcx,8)
	movq	-488(%rbp), %rax
	subq	-504(%rbp), %rax
	vcvtsi2sd	%rax, %xmm2, %xmm0
	vmovsd	-176(%rbp), %xmm1               # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm1
	movq	72(%rbp), %rax
	vmovsd	%xmm1, -176(%rbp)               # 8-byte Spill
	vmovsd	%xmm1, (%rax)
	movq	-456(%rbp), %rax
	subq	-472(%rbp), %rax
	vcvtsi2sd	%rax, %xmm2, %xmm0
	vmovsd	-168(%rbp), %xmm1               # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vaddsd	%xmm0, %xmm1, %xmm1
	movq	80(%rbp), %rax
	vmovsd	%xmm1, -168(%rbp)               # 8-byte Spill
	vmovsd	%xmm1, (%rax)
	movq	-136(%rbp), %rsp                # 8-byte Reload
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB1_82
# %bb.81:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	callq	_ZdlPv
.LBB1_82:                               #   in Loop: Header=BB1_3 Depth=1
	testq	%rbx, %rbx
	je	.LBB1_84
# %bb.83:                               #   in Loop: Header=BB1_3 Depth=1
	.cfi_escape 0x2e, 0x00
	movq	%rbx, %rdi
	callq	_ZdlPv
	jmp	.LBB1_84
.LBB1_93:
.Ltmp197:
	.cfi_escape 0x2e, 0x00
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp198:
# %bb.94:
.LBB1_4:
.Ltmp202:
	.cfi_escape 0x2e, 0x00
	movl	$.L.str, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp203:
# %bb.5:
.LBB1_108:
.Ltmp178:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_106:
.Ltmp173:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_103:
.Ltmp201:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_104:
.Ltmp192:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_105:
.Ltmp185:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_107:
.Ltmp148:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.LBB1_109:
.Ltmp204:
	movq	%rax, %rdi
	.cfi_escape 0x2e, 0x00
	callq	__clang_call_terminate
.Lfunc_end1:
	.size	.omp_outlined., .Lfunc_end1-.omp_outlined.
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp136-.Lfunc_begin1         # >> Call Site 1 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp178-.Lfunc_begin1         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp178-.Lfunc_begin1         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp139-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp147-.Ltmp140              #   Call between .Ltmp140 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp152-.Ltmp149              #   Call between .Ltmp149 and .Ltmp152
	.uleb128 .Ltmp178-.Lfunc_begin1         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp172-.Ltmp153              #   Call between .Ltmp153 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp177-.Ltmp174              #   Call between .Ltmp174 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin1         #     jumps to .Ltmp178
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp179-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp187-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin1         #     jumps to .Ltmp192
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 19 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp194-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp199-.Ltmp196              #   Call between .Ltmp196 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp197-.Lfunc_begin1         # >> Call Site 24 <<
	.uleb128 .Ltmp203-.Ltmp197              #   Call between .Ltmp197 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	1                               #   On action: 1
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # 
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end2:
	.size	__clang_call_terminate, .Lfunc_end2-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_parallelisation.cc
	.type	_GLOBAL__sub_I_parallelisation.cc,@function
_GLOBAL__sub_I_parallelisation.cc:      # 
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
.Lfunc_end3:
	.size	_GLOBAL__sub_I_parallelisation.cc, .Lfunc_end3-_GLOBAL__sub_I_parallelisation.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L__unnamed_3,@object           # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_3:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_3, 23

	.type	.L__unnamed_2,@object           # 
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_1,@object           # 
	.p2align	3, 0x0
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_1, 24

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str, 49

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_parallelisation.cc
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
