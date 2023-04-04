	.text
	.file	"compare_time_vec5.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0x4059000000000000              #  100
.LCPI0_1:
	.quad	0x4069000000000000              #  200
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # 
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$10330090, %esi                 # imm = 0x9D9FEA
	movl	$3, %edi
	callq	__intel_new_feature_proc_init@PLT
	movl	$56, %edi
	callq	_Znwm
	movq	%rax, 136(%rsp)
	leaq	56(%rax), %rcx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rax)
	movq	%rcx, 152(%rsp)
	vmovups	%ymm0, 24(%rax)
	movq	%rcx, 144(%rsp)
.Ltmp0:
	movl	$224, %edi
	vzeroupper
	callq	_Znwm
.Ltmp1:
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, 160(%rsp)
	addq	$224, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 192(%rbx)
	vmovups	%ymm0, 160(%rbx)
	vmovups	%ymm0, 128(%rbx)
	vmovups	%ymm0, 96(%rbx)
	vmovups	%ymm0, 64(%rbx)
	vmovups	%ymm0, 32(%rbx)
	movq	%rax, 176(%rsp)
	vmovups	%ymm0, (%rbx)
	movq	%rax, 168(%rsp)
.Ltmp3:
	movl	$16, %edi
	vzeroupper
	callq	_Znwm
.Ltmp4:
# %bb.2:
	movq	%rax, %r14
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
.Ltmp6:
	movl	$64, %edi
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	callq	_Znwm
.Ltmp7:
# %bb.3:
	movq	%rax, %rbx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, (%rax)
.Ltmp9:
	movl	$16, %edi
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	vzeroupper
	callq	_Znwm
.Ltmp10:
# %bb.4:
	movq	%rax, %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rax)
.Ltmp12:
	movl	$64, %edi
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	callq	_Znwm
.Ltmp13:
# %bb.5:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp15:
	movl	$16, %edi
	vzeroupper
	callq	_Znwm
.Ltmp16:
# %bb.6:
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	vmovups	%xmm0, (%rax)
.Ltmp18:
	movl	$64, %edi
	callq	_Znwm
.Ltmp19:
# %bb.7:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp21:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp22:
# %bb.8:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp24:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp25:
# %bb.9:
	movq	%rax, %r15
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, (%rax)
.Ltmp27:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp28:
# %bb.10:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp30:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp31:
# %bb.11:
	movq	%rax, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, (%rax)
.Ltmp33:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp34:
# %bb.12:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp36:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp37:
# %bb.13:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp39:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp40:
# %bb.14:
	movq	%rax, %r13
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, (%rax)
.Ltmp42:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp43:
# %bb.15:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp45:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp46:
# %bb.16:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp48:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp49:
# %bb.17:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp51:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp52:
# %bb.18:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp54:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp55:
# %bb.19:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
.Ltmp57:
	movl	$160, %edi
	vzeroupper
	callq	_Znwm
.Ltmp58:
# %bb.20:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	vmovups	%ymm0, 32(%rax)
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	vmovups	%ymm0, (%rax)
	vmovups	.Lconstinit+128(%rip), %ymm0
	movq	8(%rsp), %rax                   # 8-byte Reload
	vmovups	%ymm0, 128(%rax)
	vmovups	.Lconstinit+96(%rip), %ymm0
	vmovups	%ymm0, 96(%rax)
	vmovups	.Lconstinit+64(%rip), %ymm0
	vmovups	%ymm0, 64(%rax)
	vmovups	.Lconstinit+32(%rip), %ymm0
	vmovups	%ymm0, 32(%rax)
	vmovups	.Lconstinit(%rip), %ymm0
	vmovups	%ymm0, (%rax)
	xorl	%ebp, %ebp
	leaq	136(%rsp), %r14
	leaq	160(%rsp), %rbx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax                   # 8-byte Reload
	vcvttsd2si	(%rax,%rbp), %edi
.Ltmp60:
	vmovsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$5, %esi
	vmovsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movl	$3, %r8d
	movl	$8, %r9d
	vzeroupper
	callq	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
.Ltmp61:
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	136(%rsp), %rax
	vmovsd	8(%rax), %xmm0                  # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r15,%rbp)
	vmovsd	16(%rax), %xmm0                 # xmm0 = mem[0],zero
	movq	32(%rsp), %rcx                  # 8-byte Reload
	vmovsd	%xmm0, (%rcx,%rbp)
	vmovsd	24(%rax), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rbp)
	vmovsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	movq	24(%rsp), %rcx                  # 8-byte Reload
	vmovsd	%xmm0, (%rcx,%rbp)
	vmovsd	40(%rax), %xmm0                 # xmm0 = mem[0],zero
	movq	16(%rsp), %rcx                  # 8-byte Reload
	vmovsd	%xmm0, (%rcx,%rbp)
	vmovsd	48(%rax), %xmm0                 # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r13,%rbp)
	addq	$8, %rbp
	cmpq	$160, %rbp
	jne	.LBB0_21
# %bb.23:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	8(%r15), %xmm0                  # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	16(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	24(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	32(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	40(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	48(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	56(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	64(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	72(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	80(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	88(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	96(%r15), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	104(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	112(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	120(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	128(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	136(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	144(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	152(%r15), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lstr.7, %edi
	callq	puts@PLT
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	vmovsd	(%r12), %xmm0                   # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	8(%r12), %xmm0                  # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	16(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	24(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	32(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	40(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	48(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	56(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	64(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	72(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	80(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	88(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	96(%r12), %xmm0                 # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	104(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	112(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	120(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	128(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	136(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	144(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.3, %edi
	movb	$1, %al
	callq	printf
	vmovsd	152(%r12), %xmm0                # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	movl	$.Lstr.7, %edi
	callq	puts@PLT
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	64(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	72(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	%r13, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	32(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	%r15, %rdi
	callq	_ZdlPv
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	104(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	112(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	120(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	128(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_25
# %bb.24:
	callq	_ZdlPv
.LBB0_25:
	movq	136(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_27
# %bb.26:
	callq	_ZdlPv
.LBB0_27:
	xorl	%eax, %eax
	addq	$184, %rsp
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
.LBB0_47:
	.cfi_def_cfa_offset 240
.Ltmp59:
	movq	%rax, %rbp
	jmp	.LBB0_49
.LBB0_46:
.Ltmp56:
	movq	%rax, %rbp
	jmp	.LBB0_50
.LBB0_45:
.Ltmp53:
	movq	%rax, %rbp
	jmp	.LBB0_51
.LBB0_44:
.Ltmp50:
	movq	%rax, %rbp
	jmp	.LBB0_52
.LBB0_43:
.Ltmp47:
	movq	%rax, %rbp
	jmp	.LBB0_53
.LBB0_42:
.Ltmp44:
	movq	%rax, %rbp
	jmp	.LBB0_54
.LBB0_41:
.Ltmp41:
	movq	%rax, %rbp
	jmp	.LBB0_55
.LBB0_40:
.Ltmp38:
	movq	%rax, %rbp
	jmp	.LBB0_56
.LBB0_39:
.Ltmp35:
	movq	%rax, %rbp
	jmp	.LBB0_57
.LBB0_38:
.Ltmp32:
	movq	%rax, %rbp
	jmp	.LBB0_58
.LBB0_37:
.Ltmp29:
	movq	%rax, %rbp
	jmp	.LBB0_59
.LBB0_36:
.Ltmp26:
	movq	%rax, %rbp
	jmp	.LBB0_60
.LBB0_35:
.Ltmp23:
	movq	%rax, %rbp
	jmp	.LBB0_61
.LBB0_34:
.Ltmp20:
	movq	%rax, %rbp
	jmp	.LBB0_62
.LBB0_33:
.Ltmp17:
	movq	%rax, %rbp
	jmp	.LBB0_63
.LBB0_32:
.Ltmp14:
	movq	%rax, %rbp
	jmp	.LBB0_64
.LBB0_31:
.Ltmp11:
	movq	%rax, %rbp
	jmp	.LBB0_65
.LBB0_30:
.Ltmp8:
	movq	%rax, %rbp
	jmp	.LBB0_66
.LBB0_29:
.Ltmp5:
	movq	%rax, %rbp
	jmp	.LBB0_67
.LBB0_28:
.Ltmp2:
	movq	%rax, %rbp
	movq	136(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_71
	jmp	.LBB0_70
.LBB0_48:
.Ltmp62:
	movq	%rax, %rbp
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_49:
	movq	48(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_50:
	movq	56(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_51:
	movq	64(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_52:
	movq	72(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_53:
	movq	80(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_54:
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB0_55:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_56:
	movq	24(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_57:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB0_58:
	movq	32(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_59:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB0_60:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
.LBB0_61:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_62:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB0_63:
	movq	104(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
.LBB0_64:
	movq	112(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
.LBB0_65:
	movq	120(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
.LBB0_66:
	movq	128(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	160(%rsp), %rbx
.LBB0_67:
	testq	%rbx, %rbx
	jne	.LBB0_68
# %bb.69:
	movq	136(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB0_70
.LBB0_71:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB0_68:
	movq	%rbx, %rdi
	callq	_ZdlPv
	movq	136(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB0_71
.LBB0_70:
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin0          #     jumps to .Ltmp50
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp51-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin0          #     jumps to .Ltmp53
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Lfunc_end0-.Ltmp61            #   Call between .Ltmp61 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_compare_time_vec5.cpp
	.type	_GLOBAL__sub_I_compare_time_vec5.cpp,@function
_GLOBAL__sub_I_compare_time_vec5.cpp:   # 
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	callq	__cxa_atexit
	movq	$_ZN13matplotlibcpp6detailL9s_backendB5cxx11E+16, _ZN13matplotlibcpp6detailL9s_backendB5cxx11E(%rip)
	movq	$0, _ZN13matplotlibcpp6detailL9s_backendB5cxx11E+8(%rip)
	movb	$0, _ZN13matplotlibcpp6detailL9s_backendB5cxx11E+16(%rip)
	movl	$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, %edi
	movl	$_ZN13matplotlibcpp6detailL9s_backendB5cxx11E, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end1:
	.size	_GLOBAL__sub_I_compare_time_vec5.cpp, .Lfunc_end1-_GLOBAL__sub_I_compare_time_vec5.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZN13matplotlibcpp6detailL9s_backendB5cxx11E,@object # 
	.local	_ZN13matplotlibcpp6detailL9s_backendB5cxx11E
	.comm	_ZN13matplotlibcpp6detailL9s_backendB5cxx11E,32,8
	.type	.Lconstinit,@object             # 
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lconstinit:
	.quad	0x40b3880000000000              #  5000
	.quad	0x40c3880000000000              #  1.0E+4
	.quad	0x40cd4c0000000000              #  15000
	.quad	0x40d3880000000000              #  2.0E+4
	.quad	0x40d86a0000000000              #  25000
	.quad	0x40dd4c0000000000              #  3.0E+4
	.quad	0x40e3880000000000              #  4.0E+4
	.quad	0x40e86a0000000000              #  5.0E+4
	.quad	0x40f24f8000000000              #  75000
	.quad	0x40f86a0000000000              #  1.0E+5
	.quad	0x41086a0000000000              #  2.0E+5
	.quad	0x41124f8000000000              #  3.0E+5
	.quad	0x41186a0000000000              #  4.0E+5
	.quad	0x411e848000000000              #  5.0E+5
	.quad	0x412312d000000000              #  625000
	.quad	0x4126e36000000000              #  7.5E+5
	.quad	0x412ab3f000000000              #  875000
	.quad	0x412e848000000000              #  1.0E+6
	.quad	0x4136e36000000000              #  1.5E+6
	.quad	0x413e848000000000              #  2.0E+6
	.size	.Lconstinit, 160

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nTime_in2_standard = \n {"
	.size	.L.str, 25

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"%.10f"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"%.10f, "
	.size	.L.str.3, 8

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"\nTime_in2_par_standard = = \n {"
	.size	.L.str.5, 31

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_compare_time_vec5.cpp
	.type	.Lstr.7,@object                 # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr.7:
	.asciz	"};"
	.size	.Lstr.7, 3

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
