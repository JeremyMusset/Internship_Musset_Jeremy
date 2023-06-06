	.text
	.file	"correct_rounding.cc"
	.globl	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_ # -- Begin function _Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.p2align	4, 0x90
	.type	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_,@function
_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_: # 
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %r13d
	leaq	16(%rsp), %r12
	movl	$5000, %esi                     # imm = 0x1388
	movq	%r12, %rdi
	callq	mpfr_init2
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	mpfr_set_d
	testl	%r13d, %r13d
	jle	.LBB0_7
# %bb.1:
	movl	%r13d, %ebp
	cmpl	$8, %r13d
	jb	.LBB0_4
# %bb.2:
	movq	%rbp, %rax
	shlq	$5, %rax
	andq	$-256, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	16(%rsp), %r12
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%r13), %rsi
	leaq	(%r14,%r13), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$32, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$32, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$64, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$64, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$96, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$96, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$128, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$128, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$160, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$160, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$192, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$192, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	leaq	(%r15,%r13), %rsi
	addq	$224, %rsi
	leaq	(%r14,%r13), %rdx
	addq	$224, %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	addq	$256, %r13                      # imm = 0x100
	cmpq	%r13, 8(%rsp)                   # 8-byte Folded Reload
	jne	.LBB0_3
.LBB0_4:
	movl	%ebp, %eax
	andl	$-8, %eax
	cmpq	%rbp, %rax
	jae	.LBB0_7
# %bb.5:
	subq	%rax, %rbp
	shlq	$5, %rax
	addq	%rax, %r14
	addq	%rax, %r15
	leaq	16(%rsp), %r12
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_mul
	movq	%rbx, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	mpfr_add
	addq	$32, %r14
	addq	$32, %r15
	decq	%rbp
	jne	.LBB0_6
.LBB0_7:
	addq	$56, %rsp
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
.Lfunc_end0:
	.size	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_, .Lfunc_end0-_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_
	.cfi_endproc
                                        # -- End function
	.globl	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc # -- Begin function _Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
	.p2align	4, 0x90
	.type	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc,@function
_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc: # 
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
	subq	$100088, %rsp                   # imm = 0x186F8
	.cfi_def_cfa_offset 100144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r14
	leaq	48(%rsp), %r15
	movl	$5000, %esi                     # imm = 0x1388
	movq	%r15, %rdi
	callq	mpfr_init2
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, %r13
	leaq	80(%rsp), %rbx
	movq	%rbx, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%rax, %rdx
	callq	fgets
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	mpfr_get_d
	vcvttsd2si	%xmm0, %r15d
	movslq	%r15d, %rbp
	movq	%rbp, %rbx
	shlq	$5, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r14)
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%r12)
	testl	%ebp, %ebp
	jle	.LBB1_13
# %bb.1:
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	shrq	$2, %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movl	%r15d, 12(%rsp)                 # 4-byte Spill
	cmpl	$4, %r15d
	jb	.LBB1_4
# %bb.2:
	xorl	%r15d, %r15d
	leaq	80(%rsp), %rbx
	movq	(%rsp), %r12                    # 8-byte Reload
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	addq	%r15, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%rbx, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%r14), %rdi
	addq	%r15, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$32, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%rbx, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$32, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$64, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%rbx, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$64, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$96, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%rbx, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%r14), %rax
	leaq	(%rax,%r15), %rdi
	addq	$96, %rdi
	movq	%rbx, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	subq	$-128, %r15
	decq	%r12
	jne	.LBB1_3
.LBB1_4:
	movq	24(%rsp), %r12                  # 8-byte Reload
	movq	%r12, %rax
	andq	$-4, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	cmpq	%r12, %rax
	jae	.LBB1_7
# %bb.5:
	movq	%r12, %rbx
	subq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	(%rsp), %rbp                    # 8-byte Reload
	shlq	$7, %rbp
	leaq	80(%rsp), %r15
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rdi
	addq	%rbp, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%r15, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%r14), %rdi
	addq	%rbp, %rdi
	movq	%r15, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	addq	$32, %rbp
	decq	%rbx
	jne	.LBB1_6
.LBB1_7:
	cmpl	$4, %r12d
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	(%rsp), %r15                    # 8-byte Reload
	jb	.LBB1_10
# %bb.8:
	xorl	%ebp, %ebp
	leaq	80(%rsp), %r14
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	addq	%rbp, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%r14, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%rbx), %rdi
	addq	%rbp, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$32, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%r14, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$32, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$64, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%r14, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$64, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$96, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	callq	mpfr_init2
	movq	%r14, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%rbx), %rax
	leaq	(%rax,%rbp), %rdi
	addq	$96, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	subq	$-128, %rbp
	decq	%r15
	jne	.LBB1_9
.LBB1_10:
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmpq	%r12, %rcx
	movl	12(%rsp), %r15d                 # 4-byte Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	jae	.LBB1_13
# %bb.11:
	subq	%rcx, %r12
	andq	$-128, %rax
	leaq	80(%rsp), %r14
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	addq	%rax, %rdi
	movl	$5000, %esi                     # imm = 0x1388
	movq	%rax, %rbp
	callq	mpfr_init2
	movq	%r14, %rdi
	movl	$100000, %esi                   # imm = 0x186A0
	movq	%r13, %rdx
	callq	fgets
	movq	(%rbx), %rdi
	addq	%rbp, %rdi
	movq	%r14, %rsi
	movl	$2, %edx
	xorl	%ecx, %ecx
	callq	mpfr_set_str
	movq	%rbp, %rax
	addq	$32, %rax
	decq	%r12
	jne	.LBB1_12
.LBB1_13:
	movq	%r13, %rdi
	callq	fclose
	movl	%r15d, %eax
	addq	$100088, %rsp                   # imm = 0x186F8
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
.Lfunc_end1:
	.size	_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc, .Lfunc_end1-_Z15import_vec_mpfrPPA1_13__mpfr_structS2_Pc
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r+"
	.size	.L.str, 3

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
