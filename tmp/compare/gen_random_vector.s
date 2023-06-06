	.text
	.file	"gen_random_vector.cc"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z14vec_gen_randomiii
.LCPI0_0:
	.long	0x4f800000                      #  4.2949673E+9
.LCPI0_1:
	.long	0x40000000                      #  2
.LCPI0_2:
	.long	0x5f000000                      #  9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_3:
	.quad	0x3ff0000000000000              #  1
.LCPI0_4:
	.quad	2147483646                      # 0x7ffffffe
.LCPI0_5:
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI0_6:
	.quad	2567483615                      # 0x9908b0df
.LCPI0_9:
	.quad	0x4010000000000000              #  4
.LCPI0_10:
	.quad	0xc000000000000000              #  -2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI0_7:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI0_8:
	.quad	0x4330000000000000              #  4503599627370496
	.quad	0x4530000000000000              #  1.9342813113834067E+25
	.text
	.globl	_Z14vec_gen_randomiii
	.p2align	4, 0x90
	.type	_Z14vec_gen_randomiii,@function
_Z14vec_gen_randomiii:                  # 
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
	subq	$55240, %rsp                    # imm = 0xD7C8
	.cfi_def_cfa_offset 55296
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edi, 28(%rsp)                  # 4-byte Spill
	testl	%edi, %edi
	je	.LBB0_13
# %bb.1:
	movl	%edx, %r14d
	movl	%esi, %r12d
	leal	(%r12,%r12), %ebp
	incl	%ebp
	flds	.LCPI0_0(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	fstpt	128(%rsp)                       # 10-byte Folded Spill
	flds	.LCPI0_1(%rip)
	fstpt	(%rsp)
	callq	logl@PLT
	fldt	128(%rsp)                       # 10-byte Folded Reload
	fdivp	%st, %st(1)
	flds	.LCPI0_2(%rip)
	xorl	%ecx, %ecx
	fxch	%st(1)
	fucomi	%st(1), %st
	fldz
	fcmovnb	%st(2), %st
	fstp	%st(2)
	fsubp	%st, %st(1)
	fisttpll	120(%rsp)
	setae	%al
	testl	%ebp, %ebp
	js	.LBB0_14
# %bb.2:
	movslq	%ebp, %rdx
	leaq	(,%rdx,8), %rsi
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movb	%al, %cl
	shlq	$63, %rcx
	xorq	120(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	leaq	52(%rcx), %r13
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	leaq	-8(,%rdx,8), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	vcvtsi2sd	%r12d, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	%ebp, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	decl	%r14d
	movl	%r14d, 24(%rsp)                 # 4-byte Spill
	movslq	%r14d, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	232(%rsp), %rbx
	movabsq	$945986875574848801, %r15       # imm = 0xD20D20D20D20D21
	vbroadcastsd	.LCPI0_4(%rip), %ymm0   # ymm0 = [2147483646,2147483646,2147483646,2147483646]
	vmovups	%ymm0, 128(%rsp)                # 32-byte Spill
	vbroadcastsd	.LCPI0_5(%rip), %ymm0   # ymm0 = [18446744071562067968,18446744071562067968,18446744071562067968,18446744071562067968]
	vmovups	%ymm0, 192(%rsp)                # 32-byte Spill
	vbroadcastsd	.LCPI0_6(%rip), %ymm0   # ymm0 = [2567483615,2567483615,2567483615,2567483615]
	vmovupd	%ymm0, 160(%rsp)                # 32-byte Spill
	movq	$-2147483648, %r14              # imm = 0x80000000
	movl	$0, 20(%rsp)                    # 4-byte Folded Spill
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%rbp, %rdi
	callq	_ZdlPv
	movl	20(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	je	.LBB0_13
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_41 Depth 4
	movq	80(%rsp), %rdi                  # 8-byte Reload
	vzeroupper
	callq	_Znwm
	movq	%rax, %rbp
	leaq	8(%rax), %rdi
	movq	$0, (%rax)
	testl	%r12d, %r12d
	je	.LBB0_4
# %bb.15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	(,%rax,8), %rax
	addq	%rbp, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	xorl	%esi, %esi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp)
	movl	$1, %r12d
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_41 Depth 4
	leaq	248(%rsp), %rbx
	movq	%rbx, 232(%rsp)
	movl	$1953264993, 3(%rbx)            # imm = 0x746C7561
	movl	$1634100580, (%rbx)             # imm = 0x61666564
	movq	$7, 240(%rsp)
	movb	$0, 255(%rsp)
.Ltmp0:
	leaq	5232(%rsp), %rdi
	leaq	232(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp1:
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	movq	232(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	callq	_ZdlPv
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=2
.Ltmp3:
	leaq	5232(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp4:
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%rbp, %r9
	movl	%eax, %esi
	movq	%rsi, 232(%rsp)
	movl	$8, %r8d
	xorl	%eax, %eax
	movq	%rsi, %rbp
	.p2align	4, 0x90
.LBB0_21:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rax, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rdx, %rdx
	shrq	%rdx
	imulq	$624, %rdx, %rdi                # imm = 0x270
	movl	$3, %ebx
	movq	%r8, %rdx
	shrq	$4, %rdx
	mulxq	%r15, %rdx, %rdx
	subq	%rdi, %rbx
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movq	%rbp, %rcx
	shrq	$30, %rcx
	xorq	%rbp, %rcx
	imulq	$1812433253, %rcx, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	addq	%rbx, %rcx
	addq	$-2, %rcx
	movl	%ecx, %ebp
	movq	%rbp, 240(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	addq	%rbx, %rcx
	decq	%rcx
	movl	%ecx, %ebp
	movq	%rbp, 248(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	addq	%rbx, %rcx
	movl	%ecx, %ebp
	movq	%rbp, 256(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	addq	%rbx, %rcx
	incq	%rcx
	movl	%ecx, %ebp
	movq	%rbp, 264(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	subq	%rdi, %rcx
	addq	$5, %rcx
	movl	%ecx, %ebp
	movq	%rbp, 272(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	addq	%rbx, %rcx
	addq	$3, %rcx
	movl	%ecx, %ebp
	movq	%rbp, 280(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rcx, %rbp
	imulq	$1812433253, %rbp, %rcx         # imm = 0x6C078965
	addq	%rax, %rcx
	subq	%rdi, %rcx
	addq	$7, %rcx
	movl	%ecx, %edi
	movq	%rdi, 288(%rsp,%rax,8)
	shrq	$30, %rdi
	xorq	%rcx, %rdi
	imull	$1812433253, %edi, %ebp         # imm = 0x6C078965
	addl	%eax, %ebp
	subl	%edx, %ebp
	addl	$8, %ebp
	movq	%rbp, 296(%rsp,%rax,8)
	addq	$8, %rax
	addq	$8, %r8
	cmpq	$616, %rax                      # imm = 0x268
	jne	.LBB0_21
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	shrq	$30, %rbp
	imulq	$1812433253, %rdi, %rcx         # imm = 0x6C078965
	movl	%eax, %edx
	shrl	$4, %edx
	imulq	$440509467, %rdx, %rdx          # imm = 0x1A41A41B
	shrq	$34, %rdx
	imulq	$-624, %rdx, %rdx               # imm = 0xFD90
	addq	%rcx, %rdx
	addq	%rax, %rdx
	xorq	%rbp, %rdx
	imulq	$1812433253, %rdx, %rax         # imm = 0x6C078965
	addq	$617, %rax                      # imm = 0x269
	movl	%eax, %ecx
	movq	%rcx, 5168(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$618, %rax                      # imm = 0x26A
	movl	%eax, %ecx
	movq	%rcx, 5176(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$619, %rax                      # imm = 0x26B
	movl	%eax, %ecx
	movq	%rcx, 5184(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$620, %rax                      # imm = 0x26C
	movl	%eax, %ecx
	movq	%rcx, 5192(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$621, %rax                      # imm = 0x26D
	movl	%eax, %ecx
	movq	%rcx, 5200(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$622, %rax                      # imm = 0x26E
	movl	%eax, %ecx
	movq	%rcx, 5208(%rsp)
	shrq	$30, %rcx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax         # imm = 0x6C078965
	addl	$623, %eax                      # imm = 0x26F
	movq	%rax, 5216(%rsp)
	movq	%r13, %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	orq	%rcx, %rax
	shrq	$32, %rax
	je	.LBB0_23
# %bb.35:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%r13, %rax
	xorl	%edx, %edx
	divq	%rcx
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	movl	%r13d, %eax
	xorl	%edx, %edx
	divl	%ecx
                                        # kill: def $eax killed $eax def $rax
.LBB0_36:                               #   in Loop: Header=BB0_16 Depth=2
	testq	%rax, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	decq	%rax
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$624, %edi                      # imm = 0x270
	xorl	%edx, %edx
	vmovsd	.LCPI0_3(%rip), %xmm1           # xmm1 = mem[0],zero
	vmovdqu	128(%rsp), %ymm5                # 32-byte Reload
	vmovdqu	192(%rsp), %ymm6                # 32-byte Reload
	vpxor	%xmm7, %xmm7, %xmm7
	vmovdqu	160(%rsp), %ymm8                # 32-byte Reload
	vmovdqu	.LCPI0_7(%rip), %xmm9           # xmm9 = [1127219200,1160773632,0,0]
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	.LCPI0_8(%rip), %xmm10          # xmm10 = [4.503599627370496E+15,1.9342813113834067E+25]
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB0_37
	.p2align	4, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_37 Depth=3
	movq	232(%rsp,%rdi,8), %rbp
	incq	%rdi
.LBB0_44:                               #   in Loop: Header=BB0_37 Depth=3
	movq	%rbp, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ebx
	xorq	%rbp, %rbx
	movl	%ebx, %ecx
	andl	$20601005, %ecx                 # imm = 0x13A58AD
	shlq	$7, %rcx
	xorq	%rbx, %rcx
	movl	%ecx, %ebx
	andl	$122764, %ebx                   # imm = 0x1DF8C
	shlq	$15, %rbx
	xorq	%rcx, %rbx
	movq	%rbx, %rcx
	shrq	$18, %rcx
	xorq	%rbx, %rcx
	vmovq	%rcx, %xmm2
	vpunpckldq	%xmm9, %xmm2, %xmm2     # xmm2 = xmm2[0],xmm9[0],xmm2[1],xmm9[1]
	vsubpd	%xmm10, %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0]
	vaddsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm1, 112(%rsp)
	vfmadd231sd	%xmm2, %xmm1, %xmm0     # xmm0 = (xmm1 * xmm2) + xmm0
	fldl	112(%rsp)
	fmuls	.LCPI0_0(%rip)
	fstpl	104(%rsp)
	vmovsd	104(%rsp), %xmm1                # xmm1 = mem[0],zero
	cmpq	%rax, %rdx
	leaq	1(%rdx), %rdx
	je	.LBB0_45
.LBB0_37:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
                                        #         Child Loop BB0_41 Depth 4
	cmpq	$624, %rdi                      # imm = 0x270
	jb	.LBB0_43
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=3
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_39:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovdqu	240(%rsp,%rcx), %ymm2
	vpand	%ymm5, %ymm2, %ymm3
	vmovq	%rsi, %xmm4
	vpbroadcastq	%xmm4, %ymm4
	vpblendd	$192, %ymm4, %ymm2, %ymm4       # ymm4 = ymm2[0,1,2,3,4,5],ymm4[6,7]
	vpermq	$147, %ymm4, %ymm4              # ymm4 = ymm4[3,0,1,2]
	vpand	%ymm6, %ymm4, %ymm4
	vpor	%ymm4, %ymm3, %ymm3
	vpsrlq	$1, %ymm3, %ymm3
	vpxor	3408(%rsp,%rcx), %ymm3, %ymm3
	vpsllq	$63, %ymm2, %ymm2
	vpcmpgtq	%ymm2, %ymm7, %ymm2
	vpand	%ymm2, %ymm8, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vmovdqu	%ymm2, 232(%rsp,%rcx)
	movq	264(%rsp,%rcx), %rsi
	addq	$32, %rcx
	cmpq	$1792, %rcx                     # imm = 0x700
	jne	.LBB0_39
# %bb.40:                               #   in Loop: Header=BB0_37 Depth=3
	movq	2032(%rsp), %rbp
	movq	2040(%rsp), %rdi
	movl	%ebp, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	andq	$-2147483648, %rsi              # imm = 0x80000000
	orq	%rcx, %rsi
	shrq	%rsi
	xorq	5200(%rsp), %rsi
	movl	%ebp, %ecx
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rsi, %rcx
	movq	%rcx, 2024(%rsp)
	movl	%edi, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	andq	$-2147483648, %rbp              # imm = 0x80000000
	orq	%rcx, %rbp
	shrq	%rbp
	xorq	5208(%rsp), %rbp
	movl	%edi, %ecx
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rbp, %rcx
	movq	%rcx, 2032(%rsp)
	movq	2048(%rsp), %rcx
	movl	%ecx, %esi
	andl	$2147483646, %esi               # imm = 0x7FFFFFFE
	andq	$-2147483648, %rdi              # imm = 0x80000000
	orq	%rsi, %rdi
	shrq	%rdi
	xorq	5216(%rsp), %rdi
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rdi, %rcx
	movq	%rcx, 2040(%rsp)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_41:                               #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vmovdqu	2056(%rsp,%rcx), %ymm2
	vpand	%ymm5, %ymm2, %ymm3
	vpbroadcastq	2048(%rsp,%rcx), %ymm4
	vpblendd	$192, %ymm4, %ymm2, %ymm4       # ymm4 = ymm2[0,1,2,3,4,5],ymm4[6,7]
	vpermq	$147, %ymm4, %ymm4              # ymm4 = ymm4[3,0,1,2]
	vpand	%ymm6, %ymm4, %ymm4
	vpor	%ymm4, %ymm3, %ymm3
	vpsrlq	$1, %ymm3, %ymm3
	vpxor	232(%rsp,%rcx), %ymm3, %ymm3
	vpsllq	$63, %ymm2, %ymm2
	vpcmpgtq	%ymm2, %ymm7, %ymm2
	vpand	%ymm2, %ymm8, %ymm2
	vpxor	%ymm2, %ymm3, %ymm2
	vmovdqu	%ymm2, 2048(%rsp,%rcx)
	addq	$32, %rcx
	cmpq	$3168, %rcx                     # imm = 0xC60
	jne	.LBB0_41
# %bb.42:                               #   in Loop: Header=BB0_37 Depth=3
	movq	232(%rsp), %rsi
	movl	%esi, %ecx
	andl	$2147483646, %ecx               # imm = 0x7FFFFFFE
	movq	5216(%rsp), %rdi
	andq	%r14, %rdi
	orq	%rcx, %rdi
	shrq	%rdi
	xorq	3400(%rsp), %rdi
	movl	%esi, %ecx
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rdi, %rcx
	movq	%rcx, 5216(%rsp)
	movl	$1, %edi
	movq	%rsi, %rbp
	jmp	.LBB0_44
	.p2align	4, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_16 Depth=2
	movq	%r9, %rbp
	vdivsd	%xmm1, %xmm0, %xmm0
	vucomisd	.LCPI0_3(%rip), %xmm0
	jae	.LBB0_26
.LBB0_27:                               #   in Loop: Header=BB0_16 Depth=2
	vmovsd	.LCPI0_10(%rip), %xmm1          # xmm1 = mem[0],zero
	vfmadd132sd	.LCPI0_9(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vmovsd	%xmm0, (%rbp,%r12,8)
.Ltmp9:
	leaq	5232(%rsp), %rdi
	vzeroupper
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp10:
# %bb.28:                               #   in Loop: Header=BB0_16 Depth=2
	incq	%r12
	cmpq	88(%rsp), %r12                  # 8-byte Folded Reload
	jne	.LBB0_16
	jmp	.LBB0_29
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovsd	.LCPI0_3(%rip), %xmm0           # xmm0 = mem[0],zero
	vzeroupper
	callq	nextafter
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_3 Depth=1
	movq	56(%rsp), %r12                  # 8-byte Reload
	leaq	232(%rsp), %rbx
	cmpl	$4, 24(%rsp)                    # 4-byte Folded Reload
	jae	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i(,%rax,8), %rsi
	leaq	5232(%rsp), %rdi
	movl	20(%rsp), %edx                  # 4-byte Reload
	xorl	%eax, %eax
	callq	sprintf
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp12:
	movq	%rbx, %rdi
	leaq	5232(%rsp), %rsi
	movl	$4, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp13:
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	40(%rsp), %rdx                  # 8-byte Reload
	subq	%rbp, %rdx
.Ltmp15:
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	_ZNSo5writeEPKcl
.Ltmp16:
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
.Ltmp17:
	leaq	240(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp18:
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	232(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$232, %rdi
	movl	264(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp19:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp20:
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp)
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	cmpl	$4, 24(%rsp)                    # 4-byte Folded Reload
	jb	.LBB0_6
	jmp	.LBB0_7
.LBB0_13:
	addq	$55240, %rsp                    # imm = 0xD7C8
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
.LBB0_14:
	.cfi_def_cfa_offset 55296
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB0_32:
.Ltmp14:
	movq	%rax, %r14
	jmp	.LBB0_34
.LBB0_33:
.Ltmp21:
	movq	%rax, %r14
	leaq	232(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	jmp	.LBB0_34
.LBB0_46:
.Ltmp11:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_31:
.Ltmp5:
	movq	%rax, %r14
.Ltmp6:
	leaq	5232(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp7:
	jmp	.LBB0_34
.LBB0_30:
.Ltmp8:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_24:
.Ltmp2:
	movq	%rax, %r14
	movq	232(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_34
# %bb.25:
	callq	_ZdlPv
.LBB0_34:
	movq	%rbp, %rdi
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	_Z14vec_gen_randomiii, .Lfunc_end0-_Z14vec_gen_randomiii
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
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
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp20-.Ltmp15                #   Call between .Ltmp15 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp6-.Ltmp20                 #   Call between .Ltmp20 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Lfunc_end0-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
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
.Lfunc_end1:
	.size	__clang_call_terminate, .Lfunc_end1-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
.LCPI2_0:
	.quad	2147483646                      # 0x7ffffffe
.LCPI2_1:
	.quad	-2147483648                     # 0xffffffff80000000
.LCPI2_2:
	.quad	2567483615                      # 0x9908b0df
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.p2align	4, 0x90
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,@function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv: # 
	.cfi_startproc
# %bb.0:
	movq	4992(%rdi), %rcx
	cmpq	$624, %rcx                      # imm = 0x270
	jb	.LBB2_6
# %bb.1:
	movq	$-16, %rax
	vpbroadcastq	.LCPI2_0(%rip), %ymm0   # ymm0 = [2147483646,2147483646,2147483646,2147483646]
	vpbroadcastq	.LCPI2_1(%rip), %ymm1   # ymm1 = [18446744071562067968,18446744071562067968,18446744071562067968,18446744071562067968]
	vpxor	%xmm3, %xmm3, %xmm3
	vpbroadcastq	.LCPI2_2(%rip), %ymm2   # ymm2 = [2567483615,2567483615,2567483615,2567483615]
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	vmovdqu	136(%rdi,%rax,8), %ymm5
	vmovdqu	168(%rdi,%rax,8), %ymm4
	vmovdqu	200(%rdi,%rax,8), %ymm6
	vmovdqu	232(%rdi,%rax,8), %ymm7
	vpand	%ymm0, %ymm4, %ymm8
	vpand	%ymm0, %ymm5, %ymm9
	vpand	%ymm0, %ymm7, %ymm10
	vpand	160(%rdi,%rax,8), %ymm1, %ymm11
	vpor	%ymm11, %ymm8, %ymm8
	vpand	128(%rdi,%rax,8), %ymm1, %ymm11
	vpand	224(%rdi,%rax,8), %ymm1, %ymm12
	vpor	%ymm11, %ymm9, %ymm9
	vpor	%ymm12, %ymm10, %ymm10
	vpand	192(%rdi,%rax,8), %ymm1, %ymm11
	vpand	%ymm0, %ymm6, %ymm12
	vpor	%ymm11, %ymm12, %ymm11
	vpsrlq	$1, %ymm8, %ymm8
	vpsrlq	$1, %ymm9, %ymm9
	vpsrlq	$1, %ymm10, %ymm10
	vpsrlq	$1, %ymm11, %ymm11
	vpxor	3368(%rdi,%rax,8), %ymm11, %ymm11
	vpxor	3400(%rdi,%rax,8), %ymm10, %ymm10
	vpxor	3304(%rdi,%rax,8), %ymm9, %ymm9
	vpxor	3336(%rdi,%rax,8), %ymm8, %ymm8
	vpsllq	$63, %ymm6, %ymm6
	vpcmpgtq	%ymm6, %ymm3, %ymm6
	vpand	%ymm2, %ymm6, %ymm6
	vpxor	%ymm6, %ymm11, %ymm6
	vpsllq	$63, %ymm7, %ymm7
	vpcmpgtq	%ymm7, %ymm3, %ymm7
	vpand	%ymm2, %ymm7, %ymm7
	vpxor	%ymm7, %ymm10, %ymm7
	vpsllq	$63, %ymm5, %ymm5
	vpcmpgtq	%ymm5, %ymm3, %ymm5
	vpand	%ymm2, %ymm5, %ymm5
	vpxor	%ymm5, %ymm9, %ymm5
	vpsllq	$63, %ymm4, %ymm4
	vpcmpgtq	%ymm4, %ymm3, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpxor	%ymm4, %ymm8, %ymm4
	vmovdqu	%ymm6, 192(%rdi,%rax,8)
	vmovdqu	%ymm7, 224(%rdi,%rax,8)
	vmovdqu	%ymm5, 128(%rdi,%rax,8)
	vmovdqu	%ymm4, 160(%rdi,%rax,8)
	addq	$16, %rax
	cmpq	$208, %rax
	jb	.LBB2_2
# %bb.3:
	movq	1800(%rdi), %rcx
	movl	%ecx, %eax
	andl	$2147483646, %eax               # imm = 0x7FFFFFFE
	movq	$-2147483648, %rdx              # imm = 0x80000000
	andq	1792(%rdi), %rdx
	orq	%rax, %rdx
	shrq	%rdx
	xorq	4968(%rdi), %rdx
	movq	1808(%rdi), %rax
	movl	%ecx, %esi
	andl	$1, %esi
	negl	%esi
	andl	$-1727483681, %esi              # imm = 0x9908B0DF
	xorq	%rdx, %rsi
	movq	%rsi, 1792(%rdi)
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	andq	$-2147483648, %rcx              # imm = 0x80000000
	orq	%rdx, %rcx
	shrq	%rcx
	xorq	4976(%rdi), %rcx
	movl	%eax, %edx
	andl	$1, %edx
	negl	%edx
	andl	$-1727483681, %edx              # imm = 0x9908B0DF
	xorq	%rcx, %rdx
	movq	%rdx, 1800(%rdi)
	movq	1816(%rdi), %rcx
	movl	%ecx, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	andq	$-2147483648, %rax              # imm = 0x80000000
	orq	%rdx, %rax
	shrq	%rax
	xorq	4984(%rdi), %rax
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rax, %rcx
	movq	%rcx, 1808(%rdi)
	xorl	%eax, %eax
	vpxor	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	vmovdqu	1824(%rdi,%rax), %ymm4
	vpand	%ymm0, %ymm4, %ymm5
	vpbroadcastq	1816(%rdi,%rax), %ymm6
	vpblendd	$192, %ymm6, %ymm4, %ymm6       # ymm6 = ymm4[0,1,2,3,4,5],ymm6[6,7]
	vpermq	$147, %ymm6, %ymm6              # ymm6 = ymm6[3,0,1,2]
	vpand	%ymm1, %ymm6, %ymm6
	vpor	%ymm6, %ymm5, %ymm5
	vpsrlq	$1, %ymm5, %ymm5
	vpxor	(%rdi,%rax), %ymm5, %ymm5
	vpsllq	$63, %ymm4, %ymm4
	vpcmpgtq	%ymm4, %ymm3, %ymm4
	vpand	%ymm2, %ymm4, %ymm4
	vpxor	%ymm4, %ymm5, %ymm4
	vmovdqu	%ymm4, 1816(%rdi,%rax)
	addq	$32, %rax
	cmpq	$3168, %rax                     # imm = 0xC60
	jne	.LBB2_4
# %bb.5:
	movq	$-2147483648, %rcx              # imm = 0x80000000
	andq	4984(%rdi), %rcx
	movq	(%rdi), %rax
	movl	%eax, %edx
	andl	$2147483646, %edx               # imm = 0x7FFFFFFE
	orq	%rcx, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	movl	%eax, %ecx
	andl	$1, %ecx
	negl	%ecx
	andl	$-1727483681, %ecx              # imm = 0x9908B0DF
	xorq	%rdx, %rcx
	movq	%rcx, 4984(%rdi)
	movl	$1, %ecx
	jmp	.LBB2_7
.LBB2_6:
	movq	(%rdi,%rcx,8), %rax
	incq	%rcx
.LBB2_7:
	movq	%rcx, 4992(%rdi)
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rax, %rcx
	movl	%ecx, %eax
	andl	$20601005, %eax                 # imm = 0x13A58AD
	shlq	$7, %rax
	xorq	%rcx, %rax
	movl	%eax, %ecx
	andl	$122764, %ecx                   # imm = 0x1DF8C
	shlq	$15, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$18, %rax
	xorq	%rcx, %rax
	vzeroupper
	retq
.Lfunc_end2:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .Lfunc_end2-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.text._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"axG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.weak	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji # -- Begin function _Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.p2align	4, 0x90
	.type	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,@function
_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji: # 
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
	subq	$50536, %rsp                    # imm = 0xC568
	.cfi_def_cfa_offset 50592
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	decl	%edx
	cmpl	$3, %edx
	ja	.LBB3_2
# %bb.1:
	movl	%esi, %eax
	movslq	%edx, %rcx
	movq	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i(,%rcx,8), %rsi
	leaq	528(%rsp), %rdi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	sprintf
.LBB3_2:
	leaq	8(%rsp), %rdi
	leaq	528(%rsp), %rsi
	movl	$4, %edx
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
	movq	8(%rsp), %rax
	movq	-24(%rax), %rax
	testb	$5, 40(%rsp,%rax)
	je	.LBB3_13
# %bb.3:
.Ltmp22:
	movl	$_ZSt4cerr, %edi
	movl	$.L.str.7, %esi
	movl	$30, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp23:
# %bb.4:
	movq	_ZSt4cerr(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cerr+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_5
# %bb.7:
	cmpb	$0, 56(%rbx)
	je	.LBB3_9
# %bb.8:
	movzbl	67(%rbx), %eax
	jmp	.LBB3_11
.LBB3_9:
.Ltmp24:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp25:
# %bb.10:
	movq	(%rbx), %rax
.Ltmp26:
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp27:
.LBB3_11:
.Ltmp28:
	movsbl	%al, %esi
	movl	$_ZSt4cerr, %edi
	callq	_ZNSo3putEc
.Ltmp29:
# %bb.12:
.Ltmp30:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
.Ltmp31:
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rax)
	addq	$8, %rax
	movq	%rax, 8(%r12)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
.Ltmp35:
	movl	$8, %edx
	leaq	8(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZNSi4readEPcl
.Ltmp36:
# %bb.14:                               #   in Loop: Header=BB3_13 Depth=1
	movq	(%rax), %rcx
	movq	-24(%rcx), %rcx
	testb	$5, 32(%rax,%rcx)
	jne	.LBB3_31
# %bb.15:                               #   in Loop: Header=BB3_13 Depth=1
	movq	8(%r12), %rax
	cmpq	16(%r12), %rax
	jne	.LBB3_16
# %bb.17:                               #   in Loop: Header=BB3_13 Depth=1
	movq	(%r12), %r13
	movq	%rax, %rbx
	subq	%r13, %rbx
	movabsq	$9223372036854775800, %rcx      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rcx, %rbx
	je	.LBB3_18
# %bb.20:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rbx, %r14
	sarq	$3, %r14
	cmpq	%r13, %rax
	movq	%r14, %rax
	movl	$1, %ecx
	cmoveq	%rcx, %rax
	leaq	(%rax,%r14), %r15
	movabsq	$1152921504606846975, %rcx      # imm = 0xFFFFFFFFFFFFFFF
	cmpq	%rcx, %r15
	cmovaq	%rcx, %r15
	addq	%r14, %rax
	cmovbq	%rcx, %r15
	testq	%r15, %r15
	je	.LBB3_21
# %bb.22:                               #   in Loop: Header=BB3_13 Depth=1
	leaq	(,%r15,8), %rdi
.Ltmp41:
	callq	_Znwm
.Ltmp42:
# %bb.23:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, %rbp
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%r14,8)
	testq	%rbx, %rbx
	jle	.LBB3_26
.LBB3_25:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memmove@PLT
.LBB3_26:                               #   in Loop: Header=BB3_13 Depth=1
	leaq	(,%r14,8), %rbx
	addq	%rbp, %rbx
	addq	$8, %rbx
	testq	%r13, %r13
	je	.LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%r13, %rdi
	callq	_ZdlPv
.LBB3_28:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rbp, (%r12)
	movq	%rbx, 8(%r12)
	leaq	(,%r15,8), %rax
	addq	%rbp, %rax
	movq	%rax, 16(%r12)
	jmp	.LBB3_13
.LBB3_21:                               #   in Loop: Header=BB3_13 Depth=1
	xorl	%ebp, %ebp
	vmovsd	(%rsp), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rbp,%r14,8)
	testq	%rbx, %rbx
	jg	.LBB3_25
	jmp	.LBB3_26
.LBB3_31:
	leaq	24(%rsp), %rdi
.Ltmp37:
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp38:
# %bb.32:
	testq	%rax, %rax
	jne	.LBB3_34
# %bb.33:
	movq	8(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$8, %rdi
	movl	40(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp39:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp40:
.LBB3_34:
	leaq	8(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	addq	$50536, %rsp                    # imm = 0xC568
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
.LBB3_18:
	.cfi_def_cfa_offset 50592
.Ltmp44:
	movl	$.L.str.8, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp45:
# %bb.19:
.LBB3_5:
.Ltmp32:
	callq	_ZSt16__throw_bad_castv
.Ltmp33:
# %bb.6:
.LBB3_35:
.Ltmp34:
	jmp	.LBB3_36
.LBB3_30:
.Ltmp46:
	jmp	.LBB3_36
.LBB3_29:
.Ltmp43:
.LBB3_36:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji, .Lfunc_end3-_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji
	.cfi_endproc
	.section	.gcc_except_table._Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,"aG",@progbits,_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp22-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp22                #   Call between .Ltmp22 and .Ltmp31
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp42-.Ltmp35                #   Call between .Ltmp35 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp37-.Ltmp42                #   Call between .Ltmp42 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp45-.Ltmp37                #   Call between .Ltmp37 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Lfunc_end3-.Ltmp33            #   Call between .Ltmp33 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z7vec_genIdEviiT_S0_i
.LCPI4_0:
	.zero	16
	.section	.text._Z7vec_genIdEviiT_S0_i,"axG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.weak	_Z7vec_genIdEviiT_S0_i
	.p2align	4, 0x90
	.type	_Z7vec_genIdEviiT_S0_i,@function
_Z7vec_genIdEviiT_S0_i:                 # 
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
	subq	$50712, %rsp                    # imm = 0xC618
	.cfi_def_cfa_offset 50768
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	vmovsd	%xmm0, 112(%rsp)                # 8-byte Spill
	vmovsd	%xmm1, 120(%rsp)
	movl	%edi, 108(%rsp)                 # 4-byte Spill
	testl	%edi, %edi
	je	.LBB4_49
# %bb.1:
	movl	%esi, %r12d
	testl	%esi, %esi
	js	.LBB4_63
# %bb.2:
	movslq	%r12d, %rcx
	leaq	(,%rcx,8), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	incl	%eax
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	-8(,%rcx,8), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	movq	%r12, (%rsp)                    # 8-byte Spill
	js	.LBB4_7
# %bb.3:
	cltq
	leaq	(,%rax,8), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	-8(,%rax,8), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%r12d, %xmm2, %xmm0
	vmovsd	%xmm0, 176(%rsp)                # 8-byte Spill
	movl	%r12d, %r15d
	movq	%r15, %rax
	shrq	$2, %rax
	movl	%r15d, %r14d
	andl	$-4, %r14d
	decl	%edx
	movl	%edx, 104(%rsp)                 # 4-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movl	%r15d, %ebx
	andl	$3, %ebx
	leal	(%r12,%rax,4), %ebp
	incl	%ebp
	shlq	$5, %rax
	orq	$8, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$0, 12(%rsp)                    # 4-byte Folded Spill
	movq	%rbx, 152(%rsp)                 # 8-byte Spill
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB4_4
	.p2align	4, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_4 Depth=1
	movl	12(%rsp), %eax                  # 4-byte Reload
	incl	%eax
	movl	%eax, 12(%rsp)                  # 4-byte Spill
	cmpl	108(%rsp), %eax                 # 4-byte Folded Reload
	vxorpd	%xmm0, %xmm0, %xmm0
	je	.LBB4_49
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_33 Depth 2
                                        #     Child Loop BB4_36 Depth 2
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	testl	%r12d, %r12d
	je	.LBB4_20
# %bb.5:                                #   in Loop: Header=BB4_4 Depth=1
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r12d
	jne	.LBB4_21
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB4_22
	.p2align	4, 0x90
.LBB4_20:                               #   in Loop: Header=BB4_4 Depth=1
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB4_26
	.p2align	4, 0x90
.LBB4_21:                               #   in Loop: Header=BB4_4 Depth=1
	xorl	%esi, %esi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB4_22:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rbp, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp47:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp48:
# %bb.23:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB4_26
	.p2align	4, 0x90
.LBB4_25:                               #   in Loop: Header=BB4_4 Depth=1
	xorl	%esi, %esi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB4_26:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rbp, 24(%rsp)
.Ltmp50:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	(%rsp), %rbx                    # 8-byte Reload
	movl	%ebx, %edx
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	120(%rsp), %rcx
	callq	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.Ltmp51:
# %bb.27:                               #   in Loop: Header=BB4_4 Depth=1
.Ltmp53:
	movq	184(%rsp), %rdi                 # 8-byte Reload
	callq	_Znwm
.Ltmp54:
# %bb.28:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rax, %r12
	leaq	8(%rax), %r13
	movq	$0, (%rax)
	testl	%ebx, %ebx
	je	.LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_4 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax,8), %rbp
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	160(%rsp), %rdx                 # 8-byte Reload
	callq	_intel_fast_memset@PLT
	movq	%rbp, %r13
	movq	(%rsp), %rbx                    # 8-byte Reload
.LBB4_30:                               #   in Loop: Header=BB4_4 Depth=1
	vmovsd	176(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12)
	testl	%ebx, %ebx
	je	.LBB4_37
# %bb.31:                               #   in Loop: Header=BB4_4 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpl	$4, (%rsp)                      # 4-byte Folded Reload
	jb	.LBB4_34
# %bb.32:                               #   in Loop: Header=BB4_4 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_33:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r12,%rdx,8)
	leal	(%r15,%rdx), %esi
	incl	%esi
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	8(%rax,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r12,%rdx,8)
	leal	2(%r15,%rdx), %esi
	vmovsd	8(%rcx,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	16(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r12,%rdx,8)
	leal	3(%r15,%rdx), %esi
	vmovsd	16(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	24(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%r12,%rdx,8)
	leal	(%r15,%rdx), %esi
	addl	$4, %esi
	vmovsd	24(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	addq	$4, %rdx
	cmpq	%rdx, %r14
	jne	.LBB4_33
.LBB4_34:                               #   in Loop: Header=BB4_4 Depth=1
	cmpq	%r15, %r14
	movq	152(%rsp), %rbp                 # 8-byte Reload
	movq	144(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB4_37
# %bb.35:                               #   in Loop: Header=BB4_4 Depth=1
	leaq	(%rcx,%r14,8), %rcx
	leaq	(%rax,%r14,8), %rax
	movq	128(%rsp), %rdx                 # 8-byte Reload
	addq	%r12, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_36:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	leal	(%rbx,%rsi), %edi
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rdi,8)
	incq	%rsi
	cmpq	%rsi, %rbp
	jne	.LBB4_36
.LBB4_37:                               #   in Loop: Header=BB4_4 Depth=1
	cmpl	$4, 104(%rsp)                   # 4-byte Folded Reload
	jae	.LBB4_39
# %bb.38:                               #   in Loop: Header=BB4_4 Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i(,%rax,8), %rsi
	leaq	704(%rsp), %rdi
	movl	12(%rsp), %edx                  # 4-byte Reload
	xorl	%eax, %eax
	callq	sprintf
.LBB4_39:                               #   in Loop: Header=BB4_4 Depth=1
.Ltmp56:
	leaq	192(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	704(%rsp), %rsi
	movl	$4, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp57:
# %bb.40:                               #   in Loop: Header=BB4_4 Depth=1
	subq	%r12, %r13
.Ltmp59:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_ZNSo5writeEPKcl
.Ltmp60:
# %bb.41:                               #   in Loop: Header=BB4_4 Depth=1
.Ltmp61:
	leaq	200(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp62:
# %bb.42:                               #   in Loop: Header=BB4_4 Depth=1
	testq	%rax, %rax
	jne	.LBB4_44
# %bb.43:                               #   in Loop: Header=BB4_4 Depth=1
	movq	192(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$192, %rdi
	movl	224(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp63:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp64:
.LBB4_44:                               #   in Loop: Header=BB4_4 Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	movq	(%rsp), %r12                    # 8-byte Reload
	je	.LBB4_46
# %bb.45:                               #   in Loop: Header=BB4_4 Depth=1
	callq	_ZdlPv
.LBB4_46:                               #   in Loop: Header=BB4_4 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB4_48
.LBB4_49:
	addq	$50712, %rsp                    # imm = 0xC618
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
.LBB4_63:
	.cfi_def_cfa_offset 50768
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB4_7:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	testl	%r12d, %r12d
	jne	.LBB4_8
# %bb.15:
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebx, %ebx
.LBB4_16:
	movq	%rbx, 24(%rsp)
.Ltmp69:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	120(%rsp), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.Ltmp70:
# %bb.17:
.Ltmp72:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp73:
# %bb.50:
.LBB4_8:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB4_10
# %bb.9:
	movq	%rdi, %rbx
	jmp	.LBB4_11
.LBB4_10:
	xorl	%esi, %esi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB4_11:
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp66:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp67:
# %bb.12:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	leaq	8(%rax), %rdi
	movq	%rbx, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, (%rsp)                      # 4-byte Folded Reload
	jne	.LBB4_14
# %bb.13:
	movq	%rdi, %rbx
	jmp	.LBB4_16
.LBB4_14:
	xorl	%esi, %esi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
	jmp	.LBB4_16
.LBB4_18:
.Ltmp68:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_62
	jmp	.LBB4_61
.LBB4_54:
.Ltmp74:
	movq	%rax, %rbx
	jmp	.LBB4_58
.LBB4_19:
.Ltmp71:
	movq	%rax, %rbx
	jmp	.LBB4_58
.LBB4_51:
.Ltmp49:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_62
	jmp	.LBB4_61
.LBB4_52:
.Ltmp52:
	movq	%rax, %rbx
	jmp	.LBB4_58
.LBB4_53:
.Ltmp55:
	movq	%rax, %rbx
	jmp	.LBB4_58
.LBB4_55:
.Ltmp58:
	movq	%rax, %rbx
	jmp	.LBB4_57
.LBB4_56:
.Ltmp65:
	movq	%rax, %rbx
	leaq	192(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB4_57:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB4_58:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB4_59
# %bb.60:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB4_61
.LBB4_62:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB4_59:
	callq	_ZdlPv
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB4_62
.LBB4_61:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z7vec_genIdEviiT_S0_i, .Lfunc_end4-_Z7vec_genIdEviiT_S0_i
	.cfi_endproc
	.section	.gcc_except_table._Z7vec_genIdEviiT_S0_i,"aG",@progbits,_Z7vec_genIdEviiT_S0_i,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp47-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin2          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp50-.Ltmp48                #   Call between .Ltmp48 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin2          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin2          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin2          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp64-.Ltmp59                #   Call between .Ltmp59 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin2          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp69-.Ltmp64                #   Call between .Ltmp64 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.uleb128 .Ltmp71-.Lfunc_begin2          #     jumps to .Ltmp71
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp73-.Ltmp72                #   Call between .Ltmp72 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin2          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin2          # >> Call Site 12 <<
	.uleb128 .Ltmp66-.Ltmp73                #   Call between .Ltmp73 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin2          # >> Call Site 13 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin2          #     jumps to .Ltmp68
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin2          # >> Call Site 14 <<
	.uleb128 .Lfunc_end4-.Ltmp67            #   Call between .Ltmp67 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.LCPI5_0:
	.quad	0x3fa06a2764633554              #  0.03205988979753252
.LCPI5_1:
	.quad	0x3ff0000000000000              #  1
.LCPI5_3:
	.quad	0x3810000000000000              #  1.1754943508222875E-38
.LCPI5_4:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
.LCPI5_5:
	.quad	0x3f847ae147ae147b              #  0.01
.LCPI5_6:
	.quad	0x4059000000000000              #  100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI5_2:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
	.section	.text._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.weak	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.p2align	4, 0x90
	.type	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,@function
_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_: # 
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
	subq	$10184, %rsp                    # imm = 0x27C8
	.cfi_def_cfa_offset 10240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	testl	%edx, %edx
	js	.LBB5_95
# %bb.1:
	movq	%rcx, %r13
	movl	%edx, %ebp
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movslq	%edx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	je	.LBB5_2
# %bb.3:
	leaq	(,%rax,8), %r14
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_Znwm
	movq	%rax, 64(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 80(%rsp)
	movq	$0, (%rax)
	addq	$8, %rax
	cmpl	$1, %ebp
	jne	.LBB5_5
# %bb.4:
	movq	%rax, %rbx
	jmp	.LBB5_6
.LBB5_2:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovupd	%xmm1, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB5_7
.LBB5_5:
	addq	$-8, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	_intel_fast_memset@PLT
.LBB5_6:
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB5_7:
	movq	%rbx, 72(%rsp)
.Ltmp75:
	leaq	64(%rsp), %rdi
	movl	%ebp, %esi
	movq	%r13, %rdx
	callq	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.Ltmp76:
# %bb.8:
	leaq	200(%rsp), %rbx
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	log@PLT
	vmulsd	.LCPI5_0(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI5_1(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rax
	cmpl	$1, %eax
	setne	%cl
	cmpl	$2, %ebp
	setae	%dl
	andb	%cl, %dl
	movb	%dl, 15(%rsp)                   # 1-byte Spill
	cmpl	$3, %eax
	movl	$2, %ecx
	cmovael	%eax, %ecx
	movl	%ebp, 28(%rsp)                  # 4-byte Spill
	movl	%ebp, %r14d
	movq	32(%rsp), %rax                  # 8-byte Reload
	leaq	-1(%rax), %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	andq	$-4, %rax
	addl	$-2, %ecx
	leaq	-1(%r14), %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	andq	$-4, %rsi
	movl	%r14d, %edi
	andl	$-4, %edi
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	%rsi, %r15
	incq	%rsi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB5_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_17 Depth 2
                                        #     Child Loop BB5_24 Depth 2
                                        #     Child Loop BB5_76 Depth 2
                                        #     Child Loop BB5_78 Depth 2
                                        #     Child Loop BB5_80 Depth 2
                                        #       Child Loop BB5_82 Depth 3
                                        #       Child Loop BB5_86 Depth 3
                                        #     Child Loop BB5_92 Depth 2
                                        #     Child Loop BB5_94 Depth 2
                                        #     Child Loop BB5_52 Depth 2
	vucomisd	%xmm1, %xmm0
	jb	.LBB5_12
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=1
	vmovsd	(%r13), %xmm0                   # xmm0 = mem[0],zero
	vandpd	.LCPI5_2(%rip), %xmm0, %xmm0
	vucomisd	.LCPI5_3(%rip), %xmm0
	jb	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=1
	vucomisd	.LCPI5_4(%rip), %xmm0
	jbe	.LBB5_66
.LBB5_12:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rbx, 184(%rsp)
	movl	$1953264993, 3(%rbx)            # imm = 0x746C7561
	movl	$1634100580, (%rbx)             # imm = 0x61666564
	movq	$7, 192(%rsp)
	movb	$0, 207(%rsp)
.Ltmp78:
	leaq	5184(%rsp), %rdi
	leaq	184(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp79:
# %bb.13:                               #   in Loop: Header=BB5_9 Depth=1
	movq	184(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_9 Depth=1
	callq	_ZdlPv
.LBB5_15:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp81:
	movl	28(%rsp), %r12d                 # 4-byte Reload
	leaq	5184(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp82:
# %bb.16:                               #   in Loop: Header=BB5_9 Depth=1
	movl	%eax, %ebp
	movq	%rbp, 184(%rsp)
	movl	$8, %ecx
	xorl	%eax, %eax
	movabsq	$945986875574848801, %r8        # imm = 0xD20D20D20D20D21
	.p2align	4, 0x90
.LBB5_17:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	shrq	%rdx
	imulq	$624, %rdx, %rsi                # imm = 0x270
	movl	$3, %edi
	movq	%rcx, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	subq	%rsi, %rdi
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movq	%rbp, %rbx
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	addq	$-2, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 192(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	decq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 200(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 208(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	incq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 216(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	subq	%rsi, %rbp
	addq	$5, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 224(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rbp, %rdi
	addq	$3, %rdi
	movl	%edi, %ebp
	movq	%rbp, 232(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rdi, %rbp
	imulq	$1812433253, %rbp, %rdi         # imm = 0x6C078965
	addq	%rax, %rdi
	subq	%rsi, %rdi
	addq	$7, %rdi
	movl	%edi, %esi
	movq	%rsi, 240(%rsp,%rax,8)
	shrq	$30, %rsi
	xorq	%rdi, %rsi
	imull	$1812433253, %esi, %ebp         # imm = 0x6C078965
	addl	%eax, %ebp
	subl	%edx, %ebp
	addl	$8, %ebp
	movq	%rbp, 248(%rsp,%rax,8)
	addq	$8, %rax
	addq	$8, %rcx
	cmpq	$616, %rax                      # imm = 0x268
	jne	.LBB5_17
# %bb.18:                               #   in Loop: Header=BB5_9 Depth=1
	shrq	$30, %rbp
	imulq	$1812433253, %rsi, %rcx         # imm = 0x6C078965
	movl	%eax, %edx
	shrl	$4, %edx
	imulq	$440509467, %rdx, %rdx          # imm = 0x1A41A41B
	shrq	$34, %rdx
	imulq	$-624, %rdx, %rdx               # imm = 0xFD90
	addq	%rcx, %rdx
	addq	%rax, %rdx
	xorq	%rbp, %rdx
	imulq	$1812433253, %rdx, %rax         # imm = 0x6C078965
	addq	$617, %rax                      # imm = 0x269
	movl	%eax, %ecx
	movq	%rcx, 5120(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$618, %rax                      # imm = 0x26A
	movl	%eax, %ecx
	movq	%rcx, 5128(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$619, %rax                      # imm = 0x26B
	movl	%eax, %ecx
	movq	%rcx, 5136(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$620, %rax                      # imm = 0x26C
	movl	%eax, %ecx
	movq	%rcx, 5144(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$621, %rax                      # imm = 0x26D
	movl	%eax, %ecx
	movq	%rcx, 5152(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$622, %rax                      # imm = 0x26E
	movl	%eax, %ecx
	movq	%rcx, 5160(%rsp)
	shrq	$30, %rcx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax         # imm = 0x6C078965
	addl	$623, %eax                      # imm = 0x26F
	movq	%rax, 5168(%rsp)
	movq	$624, 5176(%rsp)                # imm = 0x270
	movabsq	$4299262262296, %rax            # imm = 0x3E8FFFFFC18
	movq	%rax, 152(%rsp)
.Ltmp84:
	leaq	152(%rsp), %rdi
	leaq	184(%rsp), %rsi
	movq	%rdi, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp85:
# %bb.19:                               #   in Loop: Header=BB5_9 Depth=1
	vcvtsi2sd	%eax, %xmm0, %xmm1
	vmulsd	.LCPI5_5(%rip), %xmm1, %xmm0
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %r13
	testl	%r12d, %r12d
	je	.LBB5_25
# %bb.20:                               #   in Loop: Header=BB5_9 Depth=1
	movq	64(%rsp), %rax
	vmovsd	.LCPI5_6(%rip), %xmm2           # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	112(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi,8), %rdx
	cmpq	%r13, %rdx
	setae	%r8b
	leaq	(,%rdi,8), %rsi
	addq	%r13, %rsi
	cmpq	%rax, %rsi
	setae	%r9b
	cmpq	%rcx, %rdx
	setb	%dl
	leaq	(%rcx,%rdi,8), %rdi
	cmpq	%rax, %rdi
	setb	%r10b
	cmpq	%rcx, %rsi
	setb	%bl
	cmpq	%r13, %rdi
	setb	%sil
	testb	%r9b, %r8b
	jne	.LBB5_23
# %bb.21:                               #   in Loop: Header=BB5_9 Depth=1
	orb	%r10b, %dl
	je	.LBB5_23
# %bb.22:                               #   in Loop: Header=BB5_9 Depth=1
	orb	%sil, %bl
	je	.LBB5_23
# %bb.73:                               #   in Loop: Header=BB5_9 Depth=1
	movq	96(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB5_74
# %bb.75:                               #   in Loop: Header=BB5_9 Depth=1
	vbroadcastsd	%xmm0, %ymm2
	vbroadcastsd	%xmm1, %ymm3
	xorl	%edx, %edx
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB5_76:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	(%rax,%rdx,8), %ymm2, %ymm4
	vmovupd	%ymm4, (%r13,%rdx,8)
	vmovupd	%ymm3, (%rcx,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
	jl	.LBB5_76
# %bb.77:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rdi, %rdx
	cmpq	%rsi, %rdi
	jne	.LBB5_78
	jmp	.LBB5_25
	.p2align	4, 0x90
.LBB5_23:                               #   in Loop: Header=BB5_9 Depth=1
	xorl	%edx, %edx
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB5_24:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r13,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB5_24
	jmp	.LBB5_25
.LBB5_74:                               #   in Loop: Header=BB5_9 Depth=1
	xorl	%edx, %edx
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	32(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB5_78:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r13,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB5_78
.LBB5_25:                               #   in Loop: Header=BB5_9 Depth=1
	movq	8(%rbx), %rdi
	subq	%r13, %rdi
	je	.LBB5_26
# %bb.29:                               #   in Loop: Header=BB5_9 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB5_30
# %bb.32:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp87:
	vzeroupper
	callq	_Znwm
.Ltmp88:
# %bb.33:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rax, %rbp
	movq	8(%rbx), %r13
	movq	(%rbx), %rsi
	cmpq	%rsi, %r13
	je	.LBB5_35
.LBB5_37:                               #   in Loop: Header=BB5_9 Depth=1
	subq	%rsi, %r13
	movq	%rbp, %rdi
	movq	%r13, %rdx
	vzeroupper
	callq	memmove@PLT
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB5_38
# %bb.40:                               #   in Loop: Header=BB5_9 Depth=1
.Ltmp93:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp94:
# %bb.41:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB5_42
	.p2align	4, 0x90
.LBB5_26:                               #   in Loop: Header=BB5_9 Depth=1
	xorl	%ebp, %ebp
	movq	(%rbx), %rsi
	cmpq	%rsi, %r13
	jne	.LBB5_37
.LBB5_35:                               #   in Loop: Header=BB5_9 Depth=1
	xorl	%r12d, %r12d
.LBB5_42:                               #   in Loop: Header=BB5_9 Depth=1
	cmpb	$0, 15(%rsp)                    # 1-byte Folded Reload
	movq	128(%rsp), %r13                 # 8-byte Reload
	movl	60(%rsp), %edi                  # 4-byte Reload
	movq	88(%rsp), %rsi                  # 8-byte Reload
	je	.LBB5_43
# %bb.79:                               #   in Loop: Header=BB5_9 Depth=1
	leaq	8(%r12), %rax
	xorl	%ecx, %ecx
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.LBB5_80
	.p2align	4, 0x90
.LBB5_88:                               #   in Loop: Header=BB5_80 Depth=2
	leal	1(%rcx), %edx
	cmpl	%edi, %ecx
	movl	%edx, %ecx
	je	.LBB5_43
.LBB5_80:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_82 Depth 3
                                        #       Child Loop BB5_86 Depth 3
	cmpq	$4, %rsi
	jb	.LBB5_84
# %bb.81:                               #   in Loop: Header=BB5_80 Depth=2
	vmovsd	(%r12), %xmm0                   # xmm0 = mem[0],zero
	movq	144(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB5_82:                               #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovupd	(%rsi), %xmm1
	vaddpd	16(%rsi), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovupd	%ymm3, -8(%rsi)
	addq	$32, %rsi
	decq	%rdx
	jne	.LBB5_82
# %bb.83:                               #   in Loop: Header=BB5_80 Depth=2
	vmovsd	%xmm0, (%r12,%r15,8)
	movq	88(%rsp), %rsi                  # 8-byte Reload
.LBB5_84:                               #   in Loop: Header=BB5_80 Depth=2
	cmpq	%rsi, %r15
	jae	.LBB5_88
# %bb.85:                               #   in Loop: Header=BB5_80 Depth=2
	vmovsd	(%r12,%r15,8), %xmm0            # xmm0 = mem[0],zero
	movq	136(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB5_86:                               #   Parent Loop BB5_9 Depth=1
                                        #     Parent Loop BB5_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vaddsd	(%r12,%rdx,8), %xmm0, %xmm0
	movq	$0, -8(%r12,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r14
	jne	.LBB5_86
# %bb.87:                               #   in Loop: Header=BB5_80 Depth=2
	vmovsd	%xmm0, -8(%r12,%r14,8)
	jmp	.LBB5_88
	.p2align	4, 0x90
.LBB5_43:                               #   in Loop: Header=BB5_9 Depth=1
	cmpl	$0, 28(%rsp)                    # 4-byte Folded Reload
	je	.LBB5_44
# %bb.89:                               #   in Loop: Header=BB5_9 Depth=1
	movq	104(%rsp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB5_90
# %bb.91:                               #   in Loop: Header=BB5_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_92:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddpd	(%r12,%rax,8), %ymm0, %ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB5_92
# %bb.93:                               #   in Loop: Header=BB5_9 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	%rcx, %rax
	cmpq	%r14, %rcx
	jne	.LBB5_94
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_44:                               #   in Loop: Header=BB5_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB5_45
	.p2align	4, 0x90
.LBB5_90:                               #   in Loop: Header=BB5_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB5_94:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB5_94
.LBB5_45:                               #   in Loop: Header=BB5_9 Depth=1
	testq	%r12, %r12
	je	.LBB5_47
# %bb.46:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%r12, %rdi
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB5_47:                               #   in Loop: Header=BB5_9 Depth=1
	vmovsd	%xmm0, (%r13)
	testq	%rbp, %rbp
	je	.LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_9 Depth=1
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB5_49:                               #   in Loop: Header=BB5_9 Depth=1
	movq	(%rbx), %rcx
	movq	8(%rbx), %rsi
	subq	%rcx, %rsi
	je	.LBB5_50
# %bb.51:                               #   in Loop: Header=BB5_9 Depth=1
	sarq	$3, %rsi
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%edi, %edi
	leaq	200(%rsp), %rbx
	vmovupd	.LCPI5_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB5_52:                               #   Parent Loop BB5_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vandpd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	incq	%rdi
	movl	%edi, %eax
	cmpq	%rax, %rsi
	ja	.LBB5_52
	jmp	.LBB5_53
	.p2align	4, 0x90
.LBB5_50:                               #   in Loop: Header=BB5_9 Depth=1
	vxorpd	%xmm2, %xmm2, %xmm2
	leaq	200(%rsp), %rbx
.LBB5_53:                               #   in Loop: Header=BB5_9 Depth=1
	vmovsd	%xmm2, 48(%rsp)                 # 8-byte Spill
	vmovsd	(%r13), %xmm0                   # xmm0 = mem[0],zero
	vmovupd	%xmm0, 160(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.Ltmp102:
	leaq	5184(%rsp), %rdi
	vzeroupper
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp103:
# %bb.54:                               #   in Loop: Header=BB5_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	160(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomisd	%xmm0, %xmm3
	vmovsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vmovsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB5_9
# %bb.55:                               #   in Loop: Header=BB5_9 Depth=1
	vandpd	.LCPI5_2(%rip), %xmm3, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm0
	jmp	.LBB5_9
.LBB5_66:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_68
# %bb.67:
	callq	_ZdlPv
.LBB5_68:
	addq	$10184, %rsp                    # imm = 0x27C8
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
.LBB5_30:
	.cfi_def_cfa_offset 10240
.Ltmp90:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp91:
# %bb.31:
.LBB5_38:
.Ltmp96:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp97:
# %bb.39:
.LBB5_95:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB5_69:
.Ltmp77:
	movq	%rax, %rbx
	jmp	.LBB5_70
.LBB5_58:
.Ltmp95:
	jmp	.LBB5_60
.LBB5_56:
.Ltmp89:
	jmp	.LBB5_64
.LBB5_62:
.Ltmp104:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB5_27:
.Ltmp80:
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movq	184(%rsp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB5_70
# %bb.28:
	callq	_ZdlPv
	jmp	.LBB5_70
.LBB5_36:
.Ltmp83:
	jmp	.LBB5_64
.LBB5_63:
.Ltmp86:
	jmp	.LBB5_64
.LBB5_59:
.Ltmp98:
.LBB5_60:
	movq	%rax, %rbx
	testq	%rbp, %rbp
	je	.LBB5_65
# %bb.61:
	movq	%rbp, %rdi
	callq	_ZdlPv
	jmp	.LBB5_65
.LBB5_57:
.Ltmp92:
.LBB5_64:
	movq	%rax, %rbx
.LBB5_65:
.Ltmp99:
	leaq	5184(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp100:
.LBB5_70:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB5_72
# %bb.71:
	callq	_ZdlPv
.LBB5_72:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB5_96:
.Ltmp101:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end5:
	.size	_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .Lfunc_end5-_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.cfi_endproc
	.section	.gcc_except_table._Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"aG",@progbits,_Z10generate_vIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp75-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp75
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp76-.Ltmp75                #   Call between .Ltmp75 and .Ltmp76
	.uleb128 .Ltmp77-.Lfunc_begin3          #     jumps to .Ltmp77
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Ltmp78-.Ltmp76                #   Call between .Ltmp76 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin3          # >> Call Site 4 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin3          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin3          # >> Call Site 5 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin3          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin3          # >> Call Site 6 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin3          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin3          # >> Call Site 7 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin3          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin3          # >> Call Site 8 <<
	.uleb128 .Ltmp93-.Ltmp88                #   Call between .Ltmp88 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin3          # >> Call Site 9 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp95-.Lfunc_begin3          #     jumps to .Ltmp95
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin3          # >> Call Site 10 <<
	.uleb128 .Ltmp102-.Ltmp94               #   Call between .Ltmp94 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp104-.Lfunc_begin3         #     jumps to .Ltmp104
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp90-.Lfunc_begin3          # >> Call Site 12 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin3          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin3          # >> Call Site 13 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.uleb128 .Ltmp98-.Lfunc_begin3          #     jumps to .Ltmp98
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin3          # >> Call Site 14 <<
	.uleb128 .Ltmp99-.Ltmp97                #   Call between .Ltmp97 and .Ltmp99
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp99-.Lfunc_begin3          # >> Call Site 15 <<
	.uleb128 .Ltmp100-.Ltmp99               #   Call between .Ltmp99 and .Ltmp100
	.uleb128 .Ltmp101-.Lfunc_begin3         #     jumps to .Ltmp101
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp100-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Lfunc_end5-.Ltmp100           #   Call between .Ltmp100 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
.LCPI6_0:
	.zero	16
	.section	.text._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"axG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.weak	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.p2align	4, 0x90
	.type	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,@function
_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi: # 
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
	subq	$50728, %rsp                    # imm = 0xC628
	.cfi_def_cfa_offset 50784
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r8d killed $r8d def $r8
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	vmovsd	%xmm0, 120(%rsp)                # 8-byte Spill
                                        # kill: def $esi killed $esi def $rsi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	vmovsd	%xmm1, 136(%rsp)
	movl	%edi, 44(%rsp)                  # 4-byte Spill
	testl	%edi, %edi
	je	.LBB6_49
# %bb.1:
	movq	8(%rsp), %rsi                   # 8-byte Reload
	testl	%esi, %esi
	js	.LBB6_63
# %bb.2:
	movq	80(%rsp), %rax                  # 8-byte Reload
	imull	44(%rsp), %eax                  # 4-byte Folded Reload
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movslq	%esi, %rcx
	leaq	(,%rcx,8), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	leal	1(%rcx,%rcx), %eax
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	leaq	-8(,%rcx,8), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	js	.LBB6_7
# %bb.3:
	cltq
	leaq	(,%rax,8), %rcx
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	leaq	-8(,%rax,8), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%esi, %xmm2, %xmm0
	vmovsd	%xmm0, 192(%rsp)                # 8-byte Spill
	movl	%esi, %r13d
	movq	%r13, %rax
	shrq	$2, %rax
	movl	%r13d, %r15d
	andl	$-4, %r15d
	decl	%edx
	movl	%edx, 108(%rsp)                 # 4-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movl	%r13d, %r14d
	andl	$3, %r14d
	leal	(%rsi,%rax,4), %ebp
	incl	%ebp
	shlq	$5, %rax
	orq	$8, %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ebx, %ebx
	movq	%r14, 168(%rsp)                 # 8-byte Spill
	movq	%rbp, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB6_4
	.p2align	4, 0x90
.LBB6_48:                               #   in Loop: Header=BB6_4 Depth=1
	incl	%ebx
	cmpl	44(%rsp), %ebx                  # 4-byte Folded Reload
	vxorpd	%xmm0, %xmm0, %xmm0
	je	.LBB6_49
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_33 Depth 2
                                        #     Child Loop BB6_36 Depth 2
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	movq	8(%rsp), %r14                   # 8-byte Reload
	testl	%r14d, %r14d
	je	.LBB6_20
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r14d
	jne	.LBB6_21
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB6_22
	.p2align	4, 0x90
.LBB6_20:                               #   in Loop: Header=BB6_4 Depth=1
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_21:                               #   in Loop: Header=BB6_4 Depth=1
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB6_22:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbp, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp105:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp106:
# %bb.23:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB6_25
# %bb.24:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_25:                               #   in Loop: Header=BB6_4 Depth=1
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB6_26:                               #   in Loop: Header=BB6_4 Depth=1
	movq	80(%rsp), %rax                  # 8-byte Reload
	addl	%ebx, %eax
	movq	%rbp, 24(%rsp)
	movslq	%eax, %r8
	shlq	$3, %r8
	movq	112(%rsp), %rax                 # 8-byte Reload
	addq	(%rax), %r8
.Ltmp108:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movl	%ebp, %edx
	vmovsd	120(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	136(%rsp), %rcx
	callq	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
.Ltmp109:
# %bb.27:                               #   in Loop: Header=BB6_4 Depth=1
.Ltmp111:
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rdi                 # 8-byte Reload
	callq	_Znwm
.Ltmp112:
# %bb.28:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rax, %r12
	leaq	8(%rax), %r14
	movq	$0, (%rax)
	testl	%ebp, %ebp
	je	.LBB6_30
# %bb.29:                               #   in Loop: Header=BB6_4 Depth=1
	movq	184(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax,8), %rbp
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	176(%rsp), %rdx                 # 8-byte Reload
	callq	_intel_fast_memset@PLT
	movq	%rbp, %r14
	movq	8(%rsp), %rbp                   # 8-byte Reload
.LBB6_30:                               #   in Loop: Header=BB6_4 Depth=1
	vmovsd	192(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12)
	testl	%ebp, %ebp
	je	.LBB6_37
# %bb.31:                               #   in Loop: Header=BB6_4 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	jb	.LBB6_34
# %bb.32:                               #   in Loop: Header=BB6_4 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB6_33:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r12,%rdx,8)
	leal	(%rdx,%r13), %esi
	incl	%esi
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	8(%rax,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r12,%rdx,8)
	leal	2(%r13,%rdx), %esi
	vmovsd	8(%rcx,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	16(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r12,%rdx,8)
	leal	3(%r13,%rdx), %esi
	vmovsd	16(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	24(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%r12,%rdx,8)
	leal	(%rdx,%r13), %esi
	addl	$4, %esi
	vmovsd	24(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	addq	$4, %rdx
	cmpq	%rdx, %r15
	jne	.LBB6_33
.LBB6_34:                               #   in Loop: Header=BB6_4 Depth=1
	cmpq	%r13, %r15
	movq	168(%rsp), %rbp                 # 8-byte Reload
	movq	160(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB6_37
# %bb.35:                               #   in Loop: Header=BB6_4 Depth=1
	leaq	(%rcx,%r15,8), %rcx
	leaq	(%rax,%r15,8), %rax
	movq	144(%rsp), %rdx                 # 8-byte Reload
	addq	%r12, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB6_36:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	leal	(%rbx,%rsi), %edi
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rdi,8)
	incq	%rsi
	cmpq	%rsi, %rbp
	jne	.LBB6_36
.LBB6_37:                               #   in Loop: Header=BB6_4 Depth=1
	cmpl	$4, 108(%rsp)                   # 4-byte Folded Reload
	jae	.LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_4 Depth=1
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i(,%rax,8), %rsi
	leaq	720(%rsp), %rdi
	movq	128(%rsp), %rdx                 # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	sprintf
.LBB6_39:                               #   in Loop: Header=BB6_4 Depth=1
.Ltmp114:
	leaq	208(%rsp), %rbx
	movq	%rbx, %rdi
	leaq	720(%rsp), %rsi
	movl	$4, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp115:
# %bb.40:                               #   in Loop: Header=BB6_4 Depth=1
	subq	%r12, %r14
.Ltmp117:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	_ZNSo5writeEPKcl
.Ltmp118:
# %bb.41:                               #   in Loop: Header=BB6_4 Depth=1
.Ltmp119:
	leaq	216(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp120:
# %bb.42:                               #   in Loop: Header=BB6_4 Depth=1
	testq	%rax, %rax
	jne	.LBB6_44
# %bb.43:                               #   in Loop: Header=BB6_4 Depth=1
	movq	208(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$208, %rdi
	movl	240(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp121:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp122:
.LBB6_44:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	movq	128(%rsp), %rbx                 # 8-byte Reload
	je	.LBB6_46
# %bb.45:                               #   in Loop: Header=BB6_4 Depth=1
	callq	_ZdlPv
.LBB6_46:                               #   in Loop: Header=BB6_4 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_48
# %bb.47:                               #   in Loop: Header=BB6_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB6_48
.LBB6_49:
	addq	$50728, %rsp                    # imm = 0xC628
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
.LBB6_63:
	.cfi_def_cfa_offset 50784
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB6_7:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	testl	%esi, %esi
	jne	.LBB6_8
# %bb.15:
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebx, %ebx
.LBB6_16:
	movq	%rbx, 24(%rsp)
	movslq	80(%rsp), %r8                   # 4-byte Folded Reload
	shlq	$3, %r8
	movq	112(%rsp), %rax                 # 8-byte Reload
	addq	(%rax), %r8
.Ltmp127:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	136(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	vmovsd	120(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
.Ltmp128:
# %bb.17:
.Ltmp130:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp131:
# %bb.50:
.LBB6_8:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB6_10
# %bb.9:
	movq	%rdi, %rbx
	jmp	.LBB6_11
.LBB6_10:
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB6_11:
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp124:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp125:
# %bb.12:
	movq	%rax, 16(%rsp)
	movq	88(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	leaq	8(%rax), %rdi
	movq	%rbx, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB6_14
# %bb.13:
	movq	%rdi, %rbx
	jmp	.LBB6_16
.LBB6_14:
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
	jmp	.LBB6_16
.LBB6_18:
.Ltmp126:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_62
	jmp	.LBB6_61
.LBB6_54:
.Ltmp132:
	movq	%rax, %rbx
	jmp	.LBB6_58
.LBB6_19:
.Ltmp129:
	movq	%rax, %rbx
	jmp	.LBB6_58
.LBB6_51:
.Ltmp107:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_62
	jmp	.LBB6_61
.LBB6_52:
.Ltmp110:
	movq	%rax, %rbx
	jmp	.LBB6_58
.LBB6_53:
.Ltmp113:
	movq	%rax, %rbx
	jmp	.LBB6_58
.LBB6_55:
.Ltmp116:
	movq	%rax, %rbx
	jmp	.LBB6_57
.LBB6_56:
.Ltmp123:
	movq	%rax, %rbx
	leaq	208(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB6_57:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB6_58:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB6_59
# %bb.60:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB6_61
.LBB6_62:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB6_59:
	callq	_ZdlPv
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB6_62
.LBB6_61:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi, .Lfunc_end6-_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi
	.cfi_endproc
	.section	.gcc_except_table._Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,"aG",@progbits,_Z12vec_gen_condIdEviiT_S0_iRSt6vectorIS0_SaIS0_EEi,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp105-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp105
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin4         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp108-.Ltmp106              #   Call between .Ltmp106 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin4         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin4         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Ltmp114-.Ltmp112              #   Call between .Ltmp112 and .Ltmp114
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin4         # >> Call Site 7 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin4         #     jumps to .Ltmp116
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin4         # >> Call Site 8 <<
	.uleb128 .Ltmp122-.Ltmp117              #   Call between .Ltmp117 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin4         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin4         # >> Call Site 9 <<
	.uleb128 .Ltmp127-.Ltmp122              #   Call between .Ltmp122 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin4         # >> Call Site 10 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin4         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin4         # >> Call Site 11 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin4         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin4         # >> Call Site 12 <<
	.uleb128 .Ltmp124-.Ltmp131              #   Call between .Ltmp131 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin4         # >> Call Site 13 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin4         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin4         # >> Call Site 14 <<
	.uleb128 .Lfunc_end6-.Ltmp125           #   Call between .Ltmp125 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
.LCPI7_0:
	.quad	0x3fa06a2764633554              #  0.03205988979753252
.LCPI7_1:
	.quad	0x3ff0000000000000              #  1
.LCPI7_3:
	.quad	0x3810000000000000              #  1.1754943508222875E-38
.LCPI7_4:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
.LCPI7_5:
	.quad	0x3f847ae147ae147b              #  0.01
.LCPI7_6:
	.quad	0x4059000000000000              #  100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI7_2:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
	.section	.text._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"axG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.weak	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.p2align	4, 0x90
	.type	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,@function
_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_: # 
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
	subq	$10168, %rsp                    # imm = 0x27B8
	.cfi_def_cfa_offset 10224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	testl	%edx, %edx
	js	.LBB7_95
# %bb.1:
	movq	%r8, %r15
	movq	%rcx, %r14
	movslq	%edx, %rax
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	je	.LBB7_2
# %bb.3:
	movl	%edx, %ebx
	leaq	(,%rax,8), %r14
	movq	%rax, %rbp
	movq	%r14, %rdi
	callq	_Znwm
	movq	%rax, 64(%rsp)
	leaq	(%rax,%rbp,8), %r12
	movq	%r12, 80(%rsp)
	movq	$0, (%rax)
	addq	$8, %rax
	cmpl	$1, %ebx
	jne	.LBB7_5
# %bb.4:
	movq	%rax, %r12
	jmp	.LBB7_6
.LBB7_2:
	vxorpd	%xmm1, %xmm1, %xmm1
	vmovupd	%xmm1, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	xorl	%r12d, %r12d
	jmp	.LBB7_7
.LBB7_5:
	addq	$-8, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	_intel_fast_memset@PLT
.LBB7_6:
	movq	24(%rsp), %r14                  # 8-byte Reload
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB7_7:
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movq	%r12, 72(%rsp)
.Ltmp133:
	leaq	64(%rsp), %rdi
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.Ltmp134:
# %bb.8:
	leaq	184(%rsp), %rbp
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	log@PLT
	vmulsd	.LCPI7_0(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI7_1(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rax
	cmpl	$1, %eax
	setne	%cl
	cmpl	$2, %ebx
	setae	%dl
	andb	%cl, %dl
	movb	%dl, 3(%rsp)                    # 1-byte Spill
	cmpl	$3, %eax
	movl	$2, %ecx
	cmovael	%eax, %ecx
	movl	%ebx, %r15d
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	-1(%rax), %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	andq	$-4, %rax
	addl	$-2, %ecx
	leaq	-1(%r15), %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	andq	$-4, %rsi
	movl	%r15d, %edi
	andl	$-4, %edi
	movq	%rdi, 120(%rsp)                 # 8-byte Spill
	movq	%rsi, %r12
	incq	%rsi
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	5168(%rsp), %rbx
	vmovsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB7_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_17 Depth 2
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_76 Depth 2
                                        #     Child Loop BB7_78 Depth 2
                                        #     Child Loop BB7_80 Depth 2
                                        #       Child Loop BB7_82 Depth 3
                                        #       Child Loop BB7_86 Depth 3
                                        #     Child Loop BB7_92 Depth 2
                                        #     Child Loop BB7_94 Depth 2
                                        #     Child Loop BB7_52 Depth 2
	vucomisd	%xmm2, %xmm0
	jb	.LBB7_12
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	vmovsd	(%r14), %xmm1                   # xmm1 = mem[0],zero
	vandpd	.LCPI7_2(%rip), %xmm1, %xmm1
	vucomisd	.LCPI7_3(%rip), %xmm1
	jb	.LBB7_12
# %bb.11:                               #   in Loop: Header=BB7_9 Depth=1
	vucomisd	.LCPI7_4(%rip), %xmm1
	jbe	.LBB7_66
.LBB7_12:                               #   in Loop: Header=BB7_9 Depth=1
	movq	%rbp, 168(%rsp)
	movl	$1953264993, 3(%rbp)            # imm = 0x746C7561
	movl	$1634100580, (%rbp)             # imm = 0x61666564
	movq	$7, 176(%rsp)
	movb	$0, 191(%rsp)
.Ltmp136:
	movq	%rbx, %rdi
	leaq	168(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp137:
# %bb.13:                               #   in Loop: Header=BB7_9 Depth=1
	movq	168(%rsp), %rdi
	cmpq	%rbp, %rdi
	movabsq	$945986875574848801, %r14       # imm = 0xD20D20D20D20D21
	je	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_9 Depth=1
	callq	_ZdlPv
.LBB7_15:                               #   in Loop: Header=BB7_9 Depth=1
.Ltmp139:
	movq	%rbx, %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp140:
# %bb.16:                               #   in Loop: Header=BB7_9 Depth=1
	movl	%eax, %ebp
	movq	%rbp, 168(%rsp)
	movl	$8, %ecx
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_17:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdx
	shrq	$4, %rdx
	mulxq	%r14, %rdx, %rdx
	shrq	%rdx
	imulq	$624, %rdx, %rsi                # imm = 0x270
	movl	$3, %edi
	movq	%rcx, %rdx
	shrq	$4, %rdx
	mulxq	%r14, %rdx, %rdx
	subq	%rsi, %rdi
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movq	%rbp, %rbx
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	addq	$-2, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 176(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	decq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 184(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 192(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	incq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 200(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	subq	%rsi, %rbp
	addq	$5, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 208(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rbp, %rdi
	addq	$3, %rdi
	movl	%edi, %ebp
	movq	%rbp, 216(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rdi, %rbp
	imulq	$1812433253, %rbp, %rdi         # imm = 0x6C078965
	addq	%rax, %rdi
	subq	%rsi, %rdi
	addq	$7, %rdi
	movl	%edi, %esi
	movq	%rsi, 224(%rsp,%rax,8)
	shrq	$30, %rsi
	xorq	%rdi, %rsi
	imull	$1812433253, %esi, %ebp         # imm = 0x6C078965
	addl	%eax, %ebp
	subl	%edx, %ebp
	addl	$8, %ebp
	movq	%rbp, 232(%rsp,%rax,8)
	addq	$8, %rax
	addq	$8, %rcx
	cmpq	$616, %rax                      # imm = 0x268
	jne	.LBB7_17
# %bb.18:                               #   in Loop: Header=BB7_9 Depth=1
	shrq	$30, %rbp
	imulq	$1812433253, %rsi, %rcx         # imm = 0x6C078965
	movl	%eax, %edx
	shrl	$4, %edx
	imulq	$440509467, %rdx, %rdx          # imm = 0x1A41A41B
	shrq	$34, %rdx
	imulq	$-624, %rdx, %rdx               # imm = 0xFD90
	addq	%rcx, %rdx
	addq	%rax, %rdx
	xorq	%rbp, %rdx
	imulq	$1812433253, %rdx, %rax         # imm = 0x6C078965
	addq	$617, %rax                      # imm = 0x269
	movl	%eax, %ecx
	movq	%rcx, 5104(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$618, %rax                      # imm = 0x26A
	movl	%eax, %ecx
	movq	%rcx, 5112(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$619, %rax                      # imm = 0x26B
	movl	%eax, %ecx
	movq	%rcx, 5120(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$620, %rax                      # imm = 0x26C
	movl	%eax, %ecx
	movq	%rcx, 5128(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$621, %rax                      # imm = 0x26D
	movl	%eax, %ecx
	movq	%rcx, 5136(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$622, %rax                      # imm = 0x26E
	movl	%eax, %ecx
	movq	%rcx, 5144(%rsp)
	shrq	$30, %rcx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax         # imm = 0x6C078965
	addl	$623, %eax                      # imm = 0x26F
	movq	%rax, 5152(%rsp)
	movq	$624, 5160(%rsp)                # imm = 0x270
	movabsq	$4299262262296, %rax            # imm = 0x3E8FFFFFC18
	movq	%rax, 160(%rsp)
.Ltmp142:
	leaq	160(%rsp), %rdi
	leaq	168(%rsp), %rsi
	movq	%rdi, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp143:
# %bb.19:                               #   in Loop: Header=BB7_9 Depth=1
	vcvtsi2sd	%eax, %xmm0, %xmm1
	vmulsd	.LCPI7_5(%rip), %xmm1, %xmm0
	movq	88(%rsp), %rbp                  # 8-byte Reload
	movq	(%rbp), %r14
	movl	4(%rsp), %ebx                   # 4-byte Reload
	testl	%ebx, %ebx
	je	.LBB7_25
# %bb.20:                               #   in Loop: Header=BB7_9 Depth=1
	movq	64(%rsp), %rax
	vmovsd	.LCPI7_6(%rip), %xmm2           # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	128(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rax,%rdi,8), %rdx
	cmpq	%r14, %rdx
	setae	%r8b
	leaq	(%r14,%rdi,8), %rsi
	cmpq	%rax, %rsi
	setae	%r9b
	cmpq	%rcx, %rdx
	setb	%dl
	leaq	(%rcx,%rdi,8), %rdi
	cmpq	%rax, %rdi
	setb	%r10b
	cmpq	%rcx, %rsi
	setb	%bl
	cmpq	%r14, %rdi
	setb	%sil
	testb	%r9b, %r8b
	jne	.LBB7_23
# %bb.21:                               #   in Loop: Header=BB7_9 Depth=1
	orb	%r10b, %dl
	je	.LBB7_23
# %bb.22:                               #   in Loop: Header=BB7_9 Depth=1
	orb	%sil, %bl
	je	.LBB7_23
# %bb.73:                               #   in Loop: Header=BB7_9 Depth=1
	movq	112(%rsp), %rdi                 # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB7_74
# %bb.75:                               #   in Loop: Header=BB7_9 Depth=1
	vbroadcastsd	%xmm0, %ymm2
	vbroadcastsd	%xmm1, %ymm3
	xorl	%edx, %edx
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB7_76:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	(%rax,%rdx,8), %ymm2, %ymm4
	vmovupd	%ymm4, (%r14,%rdx,8)
	vmovupd	%ymm3, (%rcx,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
	jl	.LBB7_76
# %bb.77:                               #   in Loop: Header=BB7_9 Depth=1
	movq	%rdi, %rdx
	cmpq	%rsi, %rdi
	jne	.LBB7_78
	jmp	.LBB7_25
	.p2align	4, 0x90
.LBB7_23:                               #   in Loop: Header=BB7_9 Depth=1
	xorl	%edx, %edx
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB7_24:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r14,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB7_24
	jmp	.LBB7_25
.LBB7_74:                               #   in Loop: Header=BB7_9 Depth=1
	xorl	%edx, %edx
	movl	4(%rsp), %ebx                   # 4-byte Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	.p2align	4, 0x90
.LBB7_78:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r14,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB7_78
.LBB7_25:                               #   in Loop: Header=BB7_9 Depth=1
	movq	8(%rbp), %rdi
	subq	%r14, %rdi
	je	.LBB7_26
# %bb.29:                               #   in Loop: Header=BB7_9 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB7_30
# %bb.32:                               #   in Loop: Header=BB7_9 Depth=1
.Ltmp145:
	vzeroupper
	callq	_Znwm
	movq	%rax, 48(%rsp)                  # 8-byte Spill
.Ltmp146:
# %bb.33:                               #   in Loop: Header=BB7_9 Depth=1
	movq	8(%rbp), %r14
	movq	(%rbp), %rsi
	cmpq	%rsi, %r14
	je	.LBB7_35
.LBB7_37:                               #   in Loop: Header=BB7_9 Depth=1
	subq	%rsi, %r14
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, %rdi
	movq	%r14, %rdx
	vzeroupper
	callq	memmove@PLT
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r14
	ja	.LBB7_38
# %bb.40:                               #   in Loop: Header=BB7_9 Depth=1
.Ltmp151:
	movq	%r14, %rdi
	callq	_Znwm
.Ltmp152:
# %bb.41:                               #   in Loop: Header=BB7_9 Depth=1
	movq	%rax, %r13
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r14, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB7_42
	.p2align	4, 0x90
.LBB7_26:                               #   in Loop: Header=BB7_9 Depth=1
	movq	$0, 48(%rsp)                    # 8-byte Folded Spill
	movq	(%rbp), %rsi
	cmpq	%rsi, %r14
	jne	.LBB7_37
.LBB7_35:                               #   in Loop: Header=BB7_9 Depth=1
	xorl	%r13d, %r13d
.LBB7_42:                               #   in Loop: Header=BB7_9 Depth=1
	cmpb	$0, 3(%rsp)                     # 1-byte Folded Reload
	movq	24(%rsp), %r14                  # 8-byte Reload
	leaq	184(%rsp), %rbp
	movl	44(%rsp), %edi                  # 4-byte Reload
	movq	96(%rsp), %rsi                  # 8-byte Reload
	je	.LBB7_43
# %bb.79:                               #   in Loop: Header=BB7_9 Depth=1
	leaq	8(%r13), %rax
	xorl	%ecx, %ecx
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.LBB7_80
	.p2align	4, 0x90
.LBB7_88:                               #   in Loop: Header=BB7_80 Depth=2
	leal	1(%rcx), %edx
	cmpl	%edi, %ecx
	movl	%edx, %ecx
	je	.LBB7_43
.LBB7_80:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_82 Depth 3
                                        #       Child Loop BB7_86 Depth 3
	cmpq	$4, %rsi
	jb	.LBB7_84
# %bb.81:                               #   in Loop: Header=BB7_80 Depth=2
	vmovsd	(%r13), %xmm0                   # xmm0 = mem[0],zero
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB7_82:                               #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovupd	(%rsi), %xmm1
	vaddpd	16(%rsi), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovupd	%ymm3, -8(%rsi)
	addq	$32, %rsi
	decq	%rdx
	jne	.LBB7_82
# %bb.83:                               #   in Loop: Header=BB7_80 Depth=2
	vmovsd	%xmm0, (%r13,%r12,8)
	movq	96(%rsp), %rsi                  # 8-byte Reload
.LBB7_84:                               #   in Loop: Header=BB7_80 Depth=2
	cmpq	%rsi, %r12
	jae	.LBB7_88
# %bb.85:                               #   in Loop: Header=BB7_80 Depth=2
	vmovsd	(%r13,%r12,8), %xmm0            # xmm0 = mem[0],zero
	movq	144(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB7_86:                               #   Parent Loop BB7_9 Depth=1
                                        #     Parent Loop BB7_80 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vaddsd	(%r13,%rdx,8), %xmm0, %xmm0
	movq	$0, -8(%r13,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r15
	jne	.LBB7_86
# %bb.87:                               #   in Loop: Header=BB7_80 Depth=2
	vmovsd	%xmm0, -8(%r13,%r15,8)
	jmp	.LBB7_88
	.p2align	4, 0x90
.LBB7_43:                               #   in Loop: Header=BB7_9 Depth=1
	testl	%ebx, %ebx
	je	.LBB7_44
# %bb.89:                               #   in Loop: Header=BB7_9 Depth=1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	testq	%rcx, %rcx
	leaq	5168(%rsp), %rbx
	je	.LBB7_90
# %bb.91:                               #   in Loop: Header=BB7_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_92:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddpd	(%r13,%rax,8), %ymm0, %ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB7_92
# %bb.93:                               #   in Loop: Header=BB7_9 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	%rcx, %rax
	cmpq	%r15, %rcx
	jne	.LBB7_94
	jmp	.LBB7_45
	.p2align	4, 0x90
.LBB7_44:                               #   in Loop: Header=BB7_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	leaq	5168(%rsp), %rbx
	jmp	.LBB7_45
	.p2align	4, 0x90
.LBB7_90:                               #   in Loop: Header=BB7_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB7_94:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddsd	(%r13,%rax,8), %xmm0, %xmm0
	incq	%rax
	cmpq	%rax, %r15
	jne	.LBB7_94
.LBB7_45:                               #   in Loop: Header=BB7_9 Depth=1
	testq	%r13, %r13
	je	.LBB7_47
# %bb.46:                               #   in Loop: Header=BB7_9 Depth=1
	movq	%r13, %rdi
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB7_47:                               #   in Loop: Header=BB7_9 Depth=1
	vmovsd	%xmm0, (%r14)
	movq	48(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB7_49
# %bb.48:                               #   in Loop: Header=BB7_9 Depth=1
	vzeroupper
	callq	_ZdlPv
.LBB7_49:                               #   in Loop: Header=BB7_9 Depth=1
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movq	8(%rax), %rsi
	subq	%rcx, %rsi
	je	.LBB7_50
# %bb.51:                               #   in Loop: Header=BB7_9 Depth=1
	sarq	$3, %rsi
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%edi, %edi
	vmovupd	.LCPI7_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB7_52:                               #   Parent Loop BB7_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vandpd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	incq	%rdi
	movl	%edi, %eax
	cmpq	%rax, %rsi
	ja	.LBB7_52
	jmp	.LBB7_53
	.p2align	4, 0x90
.LBB7_50:                               #   in Loop: Header=BB7_9 Depth=1
	vxorpd	%xmm2, %xmm2, %xmm2
.LBB7_53:                               #   in Loop: Header=BB7_9 Depth=1
	vmovsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	vmovsd	(%r14), %xmm0                   # xmm0 = mem[0],zero
	vmovupd	%xmm0, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.Ltmp160:
	movq	%rbx, %rdi
	vzeroupper
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp161:
# %bb.54:                               #   in Loop: Header=BB7_9 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	48(%rsp), %xmm1                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomisd	%xmm0, %xmm1
	vmovsd	8(%rsp), %xmm2                  # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB7_9
# %bb.55:                               #   in Loop: Header=BB7_9 Depth=1
	vandpd	.LCPI7_2(%rip), %xmm1, %xmm0
	vmovsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vdivsd	%xmm0, %xmm1, %xmm0
	jmp	.LBB7_9
.LBB7_66:
	movq	104(%rsp), %rax                 # 8-byte Reload
	vmovsd	%xmm0, (%rax)
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_68
# %bb.67:
	callq	_ZdlPv
.LBB7_68:
	addq	$10168, %rsp                    # imm = 0x27B8
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
.LBB7_30:
	.cfi_def_cfa_offset 10224
.Ltmp148:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp149:
# %bb.31:
.LBB7_38:
.Ltmp154:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp155:
# %bb.39:
.LBB7_95:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB7_69:
.Ltmp135:
	movq	%rax, %rbx
	jmp	.LBB7_70
.LBB7_58:
.Ltmp153:
	jmp	.LBB7_60
.LBB7_56:
.Ltmp147:
	jmp	.LBB7_64
.LBB7_62:
.Ltmp162:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB7_27:
.Ltmp138:
	movq	%rax, %rbx
	movq	168(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB7_70
# %bb.28:
	callq	_ZdlPv
	jmp	.LBB7_70
.LBB7_36:
.Ltmp141:
	jmp	.LBB7_64
.LBB7_63:
.Ltmp144:
	jmp	.LBB7_64
.LBB7_59:
.Ltmp156:
.LBB7_60:
	movq	%rax, %rbx
	testq	%rbp, %rbp
	je	.LBB7_65
# %bb.61:
	movq	%rbp, %rdi
	callq	_ZdlPv
	jmp	.LBB7_65
.LBB7_57:
.Ltmp150:
.LBB7_64:
	movq	%rax, %rbx
.LBB7_65:
.Ltmp157:
	leaq	5168(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp158:
.LBB7_70:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB7_72
# %bb.71:
	callq	_ZdlPv
.LBB7_72:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB7_96:
.Ltmp159:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end7:
	.size	_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_, .Lfunc_end7-_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_
	.cfi_endproc
	.section	.gcc_except_table._Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,"aG",@progbits,_Z15generate_v_condIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_S5_,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp133-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp133
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin5         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp136-.Ltmp134              #   Call between .Ltmp134 and .Ltmp136
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin5         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin5         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin5         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin5         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp151-.Ltmp146              #   Call between .Ltmp146 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin5         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp160-.Ltmp152              #   Call between .Ltmp152 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin5         #     jumps to .Ltmp162
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp148-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin5         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin5         # >> Call Site 14 <<
	.uleb128 .Ltmp157-.Ltmp155              #   Call between .Ltmp155 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin5         # >> Call Site 15 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin5         #     jumps to .Ltmp159
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp158-.Lfunc_begin5         # >> Call Site 16 <<
	.uleb128 .Lfunc_end7-.Ltmp158           #   Call between .Ltmp158 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z13vec_gen_printIdEviiT_S0_i
.LCPI8_0:
	.zero	16
	.section	.text._Z13vec_gen_printIdEviiT_S0_i,"axG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.weak	_Z13vec_gen_printIdEviiT_S0_i
	.p2align	4, 0x90
	.type	_Z13vec_gen_printIdEviiT_S0_i,@function
_Z13vec_gen_printIdEviiT_S0_i:          # 
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
	subq	$50712, %rsp                    # imm = 0xC618
	.cfi_def_cfa_offset 50768
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	vmovsd	%xmm0, 112(%rsp)                # 8-byte Spill
	vmovsd	%xmm1, 120(%rsp)
	movl	%edi, 100(%rsp)                 # 4-byte Spill
	testl	%edi, %edi
	je	.LBB8_49
# %bb.1:
	movl	%esi, %r12d
	testl	%esi, %esi
	js	.LBB8_63
# %bb.2:
	movslq	%r12d, %rcx
	leaq	(,%rcx,8), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	leal	(%rcx,%rcx), %eax
	incl	%eax
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	leaq	-8(,%rcx,8), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	testl	%eax, %eax
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	js	.LBB8_7
# %bb.3:
	cltq
	leaq	(,%rax,8), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	-8(,%rax,8), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%r12d, %xmm2, %xmm0
	vmovsd	%xmm0, 176(%rsp)                # 8-byte Spill
	movl	%r12d, %r15d
	movq	%r15, %rax
	shrq	$2, %rax
	movl	%r15d, %ecx
	andl	$-4, %ecx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	decl	%edx
	movl	%edx, 96(%rsp)                  # 4-byte Spill
	movslq	%edx, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movl	%r15d, %r14d
	andl	$3, %r14d
	leal	(%r12,%rax,4), %ebp
	incl	%ebp
	shlq	$5, %rax
	orq	$8, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	movq	%rbp, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB8_4
	.p2align	4, 0x90
.LBB8_48:                               #   in Loop: Header=BB8_4 Depth=1
	incl	%ebx
	cmpl	100(%rsp), %ebx                 # 4-byte Folded Reload
	je	.LBB8_49
.LBB8_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_33 Depth 2
                                        #     Child Loop BB8_36 Depth 2
	movl	$.L.str.9, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	testl	%r12d, %r12d
	je	.LBB8_20
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=1
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	movq	%rbp, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, %r12d
	jne	.LBB8_21
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB8_22
	.p2align	4, 0x90
.LBB8_20:                               #   in Loop: Header=BB8_4 Depth=1
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebp, %ebp
	jmp	.LBB8_26
	.p2align	4, 0x90
.LBB8_21:                               #   in Loop: Header=BB8_4 Depth=1
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB8_22:                               #   in Loop: Header=BB8_4 Depth=1
	movq	%rbp, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp163:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp164:
# %bb.23:                               #   in Loop: Header=BB8_4 Depth=1
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbp
	leaq	8(%rax), %rdi
	movq	%rbp, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB8_25
# %bb.24:                               #   in Loop: Header=BB8_4 Depth=1
	movq	%rdi, %rbp
	jmp	.LBB8_26
	.p2align	4, 0x90
.LBB8_25:                               #   in Loop: Header=BB8_4 Depth=1
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB8_26:                               #   in Loop: Header=BB8_4 Depth=1
	movq	%rbp, 24(%rsp)
.Ltmp166:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movl	%ebp, %edx
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	leaq	120(%rsp), %rcx
	callq	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.Ltmp167:
# %bb.27:                               #   in Loop: Header=BB8_4 Depth=1
.Ltmp169:
	movl	%ebx, 44(%rsp)                  # 4-byte Spill
	movq	184(%rsp), %rdi                 # 8-byte Reload
	callq	_Znwm
.Ltmp170:
# %bb.28:                               #   in Loop: Header=BB8_4 Depth=1
	movq	%rax, %r12
	leaq	8(%rax), %r13
	movq	$0, (%rax)
	testl	%ebp, %ebp
	je	.LBB8_30
# %bb.29:                               #   in Loop: Header=BB8_4 Depth=1
	movq	168(%rsp), %rax                 # 8-byte Reload
	leaq	(%r12,%rax,8), %rbp
	movq	%r13, %rdi
	xorl	%esi, %esi
	movq	160(%rsp), %rdx                 # 8-byte Reload
	callq	_intel_fast_memset@PLT
	movq	%rbp, %r13
	movq	8(%rsp), %rbp                   # 8-byte Reload
.LBB8_30:                               #   in Loop: Header=BB8_4 Depth=1
	vmovsd	176(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12)
	testl	%ebp, %ebp
	je	.LBB8_37
# %bb.31:                               #   in Loop: Header=BB8_4 Depth=1
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpl	$4, 8(%rsp)                     # 4-byte Folded Reload
	movq	104(%rsp), %rdi                 # 8-byte Reload
	jb	.LBB8_34
# %bb.32:                               #   in Loop: Header=BB8_4 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_33:                               #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%r12,%rdx,8)
	leal	(%r15,%rdx), %esi
	incl	%esi
	vmovsd	(%rcx,%rdx,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	8(%rax,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%r12,%rdx,8)
	leal	2(%r15,%rdx), %esi
	vmovsd	8(%rcx,%rdx,8), %xmm0           # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	16(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%r12,%rdx,8)
	leal	3(%r15,%rdx), %esi
	vmovsd	16(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	vmovsd	24(%rax,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%r12,%rdx,8)
	leal	(%r15,%rdx), %esi
	addl	$4, %esi
	vmovsd	24(%rcx,%rdx,8), %xmm0          # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rsi,8)
	addq	$4, %rdx
	cmpq	%rdx, %rdi
	jne	.LBB8_33
.LBB8_34:                               #   in Loop: Header=BB8_4 Depth=1
	cmpq	%r15, %rdi
	movq	152(%rsp), %rbp                 # 8-byte Reload
	movq	144(%rsp), %rbx                 # 8-byte Reload
	jae	.LBB8_37
# %bb.35:                               #   in Loop: Header=BB8_4 Depth=1
	movq	104(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rcx,%rdx,8), %rcx
	leaq	(%rax,%rdx,8), %rax
	movq	128(%rsp), %rdx                 # 8-byte Reload
	addq	%r12, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB8_36:                               #   Parent Loop BB8_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdx,%rsi,8)
	leal	(%rbx,%rsi), %edi
	vmovsd	(%rcx,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12,%rdi,8)
	incq	%rsi
	cmpq	%rsi, %rbp
	jne	.LBB8_36
.LBB8_37:                               #   in Loop: Header=BB8_4 Depth=1
	cmpl	$4, 96(%rsp)                    # 4-byte Folded Reload
	jae	.LBB8_39
# %bb.38:                               #   in Loop: Header=BB8_4 Depth=1
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i(,%rax,8), %rsi
	leaq	704(%rsp), %rdi
	movl	44(%rsp), %edx                  # 4-byte Reload
	xorl	%eax, %eax
	callq	sprintf
.LBB8_39:                               #   in Loop: Header=BB8_4 Depth=1
.Ltmp172:
	leaq	192(%rsp), %r14
	movq	%r14, %rdi
	leaq	704(%rsp), %rsi
	movl	$4, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode
.Ltmp173:
# %bb.40:                               #   in Loop: Header=BB8_4 Depth=1
	subq	%r12, %r13
.Ltmp175:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_ZNSo5writeEPKcl
.Ltmp176:
# %bb.41:                               #   in Loop: Header=BB8_4 Depth=1
.Ltmp177:
	leaq	200(%rsp), %rdi
	callq	_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv
.Ltmp178:
# %bb.42:                               #   in Loop: Header=BB8_4 Depth=1
	testq	%rax, %rax
	jne	.LBB8_44
# %bb.43:                               #   in Loop: Header=BB8_4 Depth=1
	movq	192(%rsp), %rax
	movq	-24(%rax), %rax
	leaq	(%rsp,%rax), %rdi
	addq	$192, %rdi
	movl	224(%rsp,%rax), %esi
	orl	$4, %esi
.Ltmp179:
	callq	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp180:
.LBB8_44:                               #   in Loop: Header=BB8_4 Depth=1
	movl	$.L.str.10, %edi
	movl	44(%rsp), %ebx                  # 4-byte Reload
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movq	%r14, %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	movq	8(%rsp), %r12                   # 8-byte Reload
	je	.LBB8_46
# %bb.45:                               #   in Loop: Header=BB8_4 Depth=1
	callq	_ZdlPv
.LBB8_46:                               #   in Loop: Header=BB8_4 Depth=1
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_48
# %bb.47:                               #   in Loop: Header=BB8_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB8_48
.LBB8_49:
	addq	$50712, %rsp                    # imm = 0xC618
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
.LBB8_63:
	.cfi_def_cfa_offset 50768
	movl	$.L.str.9, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB8_7:
	movl	$.L.str.9, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	printf
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	testl	%r12d, %r12d
	jne	.LBB8_8
# %bb.15:
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	xorl	%ebx, %ebx
.LBB8_16:
	movq	%rbx, 24(%rsp)
.Ltmp185:
	leaq	48(%rsp), %rdi
	leaq	16(%rsp), %rsi
	leaq	120(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	vmovsd	112(%rsp), %xmm0                # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.Ltmp186:
# %bb.17:
.Ltmp188:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp189:
# %bb.50:
.LBB8_8:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
	movq	%rax, 48(%rsp)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	$0, (%rax)
	leaq	8(%rax), %rdi
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB8_10
# %bb.9:
	movq	%rdi, %rbx
	jmp	.LBB8_11
.LBB8_10:
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
.LBB8_11:
	movq	%rbx, 56(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
.Ltmp182:
	movq	88(%rsp), %rdi                  # 8-byte Reload
	callq	_Znwm
.Ltmp183:
# %bb.12:
	movq	%rax, 16(%rsp)
	movq	80(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx,8), %rbx
	leaq	8(%rax), %rdi
	movq	%rbx, 32(%rsp)
	movq	$0, (%rax)
	cmpl	$1, 8(%rsp)                     # 4-byte Folded Reload
	jne	.LBB8_14
# %bb.13:
	movq	%rdi, %rbx
	jmp	.LBB8_16
.LBB8_14:
	xorl	%esi, %esi
	movq	72(%rsp), %rdx                  # 8-byte Reload
	callq	_intel_fast_memset@PLT
	jmp	.LBB8_16
.LBB8_18:
.Ltmp184:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_62
	jmp	.LBB8_61
.LBB8_54:
.Ltmp190:
	movq	%rax, %rbx
	jmp	.LBB8_58
.LBB8_19:
.Ltmp187:
	movq	%rax, %rbx
	jmp	.LBB8_58
.LBB8_51:
.Ltmp165:
	movq	%rax, %rbx
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_62
	jmp	.LBB8_61
.LBB8_52:
.Ltmp168:
	movq	%rax, %rbx
	jmp	.LBB8_58
.LBB8_53:
.Ltmp171:
	movq	%rax, %rbx
	jmp	.LBB8_58
.LBB8_55:
.Ltmp174:
	movq	%rax, %rbx
	jmp	.LBB8_57
.LBB8_56:
.Ltmp181:
	movq	%rax, %rbx
	leaq	192(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB8_57:
	movq	%r12, %rdi
	callq	_ZdlPv
.LBB8_58:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_59
# %bb.60:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB8_61
.LBB8_62:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB8_59:
	callq	_ZdlPv
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_62
.LBB8_61:
	callq	_ZdlPv
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_Z13vec_gen_printIdEviiT_S0_i, .Lfunc_end8-_Z13vec_gen_printIdEviiT_S0_i
	.cfi_endproc
	.section	.gcc_except_table._Z13vec_gen_printIdEviiT_S0_i,"aG",@progbits,_Z13vec_gen_printIdEviiT_S0_i,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp163-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin6         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp166-.Ltmp164              #   Call between .Ltmp164 and .Ltmp166
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin6         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin6         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp172-.Ltmp170              #   Call between .Ltmp170 and .Ltmp172
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin6         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp180-.Ltmp175              #   Call between .Ltmp175 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin6         #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp185-.Ltmp180              #   Call between .Ltmp180 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin6         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin6         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp182-.Ltmp189              #   Call between .Ltmp189 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin6         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Lfunc_end8-.Ltmp183           #   Call between .Ltmp183 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
.LCPI9_0:
	.quad	0x3fa06a2764633554              #  0.03205988979753252
.LCPI9_1:
	.quad	0x3ff0000000000000              #  1
.LCPI9_3:
	.quad	0x3810000000000000              #  1.1754943508222875E-38
.LCPI9_4:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
.LCPI9_5:
	.quad	0x3f847ae147ae147b              #  0.01
.LCPI9_6:
	.quad	0x4059000000000000              #  100
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI9_2:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
	.section	.text._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"axG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.weak	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.p2align	4, 0x90
	.type	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,@function
_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_: # 
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception7
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
	subq	$10168, %rsp                    # imm = 0x27B8
	.cfi_def_cfa_offset 10224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r13
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movl	%edx, %ebp
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rdi, %rbx
	movl	$.Lstr, %edi
	callq	puts@PLT
	testl	%ebp, %ebp
	js	.LBB9_94
# %bb.1:
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_2
# %bb.3:
	leaq	(,%rax,8), %r14
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	_Znwm
	movq	%rax, 48(%rsp)
	leaq	(%rax,%rbx,8), %rbx
	movq	%rbx, 64(%rsp)
	movq	$0, (%rax)
	addq	$8, %rax
	cmpl	$1, %ebp
	jne	.LBB9_5
# %bb.4:
	movq	%rax, %rbx
	jmp	.LBB9_6
.LBB9_2:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 48(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 64(%rsp)
	xorl	%ebx, %ebx
	jmp	.LBB9_6
.LBB9_5:
	addq	$-8, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	_intel_fast_memset@PLT
.LBB9_6:
	movq	%rbx, 56(%rsp)
.Ltmp191:
	leaq	48(%rsp), %rdi
	movl	%ebp, %esi
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r13, %rdx
	callq	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.Ltmp192:
# %bb.7:
	leaq	184(%rsp), %rbx
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	log@PLT
	vmulsd	.LCPI9_0(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI9_1(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rax
	cmpl	$1, %eax
	setne	%cl
	cmpl	$2, %ebp
	setae	%dl
	andb	%cl, %dl
	movb	%dl, 3(%rsp)                    # 1-byte Spill
	cmpl	$3, %eax
	movl	$2, %ecx
	cmovael	%eax, %ecx
	movl	%ebp, 4(%rsp)                   # 4-byte Spill
	movl	%ebp, %r14d
	movq	8(%rsp), %rax                   # 8-byte Reload
	leaq	-1(%rax), %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	andq	$-4, %rax
	addl	$-2, %ecx
	leaq	-1(%r14), %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	andq	$-4, %rsi
	movl	%r14d, %edi
	andl	$-4, %edi
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	%rsi, %r15
	incq	%rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	.p2align	4, 0x90
.LBB9_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_16 Depth 2
                                        #     Child Loop BB9_23 Depth 2
                                        #     Child Loop BB9_75 Depth 2
                                        #     Child Loop BB9_77 Depth 2
                                        #     Child Loop BB9_79 Depth 2
                                        #       Child Loop BB9_81 Depth 3
                                        #       Child Loop BB9_85 Depth 3
                                        #     Child Loop BB9_91 Depth 2
                                        #     Child Loop BB9_93 Depth 2
                                        #     Child Loop BB9_51 Depth 2
	vucomisd	%xmm1, %xmm0
	jb	.LBB9_11
# %bb.9:                                #   in Loop: Header=BB9_8 Depth=1
	vmovsd	(%r13), %xmm0                   # xmm0 = mem[0],zero
	vandpd	.LCPI9_2(%rip), %xmm0, %xmm0
	vucomisd	.LCPI9_3(%rip), %xmm0
	jb	.LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_8 Depth=1
	vucomisd	.LCPI9_4(%rip), %xmm0
	jbe	.LBB9_65
.LBB9_11:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%rbx, 168(%rsp)
	movl	$1953264993, 3(%rbx)            # imm = 0x746C7561
	movl	$1634100580, (%rbx)             # imm = 0x61666564
	movq	$7, 176(%rsp)
	movb	$0, 191(%rsp)
.Ltmp194:
	leaq	5168(%rsp), %rdi
	leaq	168(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp195:
# %bb.12:                               #   in Loop: Header=BB9_8 Depth=1
	movq	168(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_8 Depth=1
	callq	_ZdlPv
.LBB9_14:                               #   in Loop: Header=BB9_8 Depth=1
.Ltmp197:
	movl	4(%rsp), %r12d                  # 4-byte Reload
	leaq	5168(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp198:
# %bb.15:                               #   in Loop: Header=BB9_8 Depth=1
	movl	%eax, %ebp
	movq	%rbp, 168(%rsp)
	movl	$8, %ecx
	xorl	%eax, %eax
	movabsq	$945986875574848801, %r8        # imm = 0xD20D20D20D20D21
	.p2align	4, 0x90
.LBB9_16:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	shrq	%rdx
	imulq	$624, %rdx, %rsi                # imm = 0x270
	movl	$3, %edi
	movq	%rcx, %rdx
	shrq	$4, %rdx
	mulxq	%r8, %rdx, %rdx
	subq	%rsi, %rdi
	shrq	%rdx
	imull	$624, %edx, %edx                # imm = 0x270
	movq	%rbp, %rbx
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	addq	$-2, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 176(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	decq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 184(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 192(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rdi, %rbp
	incq	%rbp
	movl	%ebp, %ebx
	movq	%rbx, 200(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	subq	%rsi, %rbp
	addq	$5, %rbp
	movl	%ebp, %ebx
	movq	%rbx, 208(%rsp,%rax,8)
	shrq	$30, %rbx
	xorq	%rbp, %rbx
	imulq	$1812433253, %rbx, %rbp         # imm = 0x6C078965
	addq	%rax, %rbp
	addq	%rbp, %rdi
	addq	$3, %rdi
	movl	%edi, %ebp
	movq	%rbp, 216(%rsp,%rax,8)
	shrq	$30, %rbp
	xorq	%rdi, %rbp
	imulq	$1812433253, %rbp, %rdi         # imm = 0x6C078965
	addq	%rax, %rdi
	subq	%rsi, %rdi
	addq	$7, %rdi
	movl	%edi, %esi
	movq	%rsi, 224(%rsp,%rax,8)
	shrq	$30, %rsi
	xorq	%rdi, %rsi
	imull	$1812433253, %esi, %ebp         # imm = 0x6C078965
	addl	%eax, %ebp
	subl	%edx, %ebp
	addl	$8, %ebp
	movq	%rbp, 232(%rsp,%rax,8)
	addq	$8, %rax
	addq	$8, %rcx
	cmpq	$616, %rax                      # imm = 0x268
	jne	.LBB9_16
# %bb.17:                               #   in Loop: Header=BB9_8 Depth=1
	shrq	$30, %rbp
	imulq	$1812433253, %rsi, %rcx         # imm = 0x6C078965
	movl	%eax, %edx
	shrl	$4, %edx
	imulq	$440509467, %rdx, %rdx          # imm = 0x1A41A41B
	shrq	$34, %rdx
	imulq	$-624, %rdx, %rdx               # imm = 0xFD90
	addq	%rcx, %rdx
	addq	%rax, %rdx
	xorq	%rbp, %rdx
	imulq	$1812433253, %rdx, %rax         # imm = 0x6C078965
	addq	$617, %rax                      # imm = 0x269
	movl	%eax, %ecx
	movq	%rcx, 5104(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$618, %rax                      # imm = 0x26A
	movl	%eax, %ecx
	movq	%rcx, 5112(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$619, %rax                      # imm = 0x26B
	movl	%eax, %ecx
	movq	%rcx, 5120(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$620, %rax                      # imm = 0x26C
	movl	%eax, %ecx
	movq	%rcx, 5128(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$621, %rax                      # imm = 0x26D
	movl	%eax, %ecx
	movq	%rcx, 5136(%rsp)
	shrq	$30, %rcx
	xorq	%rax, %rcx
	imulq	$1812433253, %rcx, %rax         # imm = 0x6C078965
	addq	$622, %rax                      # imm = 0x26E
	movl	%eax, %ecx
	movq	%rcx, 5144(%rsp)
	shrq	$30, %rcx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax         # imm = 0x6C078965
	addl	$623, %eax                      # imm = 0x26F
	movq	%rax, 5152(%rsp)
	movq	$624, 5160(%rsp)                # imm = 0x270
	movabsq	$4299262262296, %rax            # imm = 0x3E8FFFFFC18
	movq	%rax, 136(%rsp)
.Ltmp200:
	leaq	136(%rsp), %rdi
	leaq	168(%rsp), %rsi
	movq	%rdi, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
.Ltmp201:
# %bb.18:                               #   in Loop: Header=BB9_8 Depth=1
	vcvtsi2sd	%eax, %xmm0, %xmm1
	vmulsd	.LCPI9_5(%rip), %xmm1, %xmm0
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	(%rbx), %r13
	testl	%r12d, %r12d
	je	.LBB9_24
# %bb.19:                               #   in Loop: Header=BB9_8 Depth=1
	movq	48(%rsp), %rax
	vmovsd	.LCPI9_6(%rip), %xmm2           # xmm2 = mem[0],zero
	vdivsd	%xmm1, %xmm2, %xmm1
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rcx
	movq	96(%rsp), %rdi                  # 8-byte Reload
	leaq	(%rax,%rdi,8), %rdx
	cmpq	%r13, %rdx
	setae	%r8b
	leaq	(,%rdi,8), %rsi
	addq	%r13, %rsi
	cmpq	%rax, %rsi
	setae	%r9b
	cmpq	%rcx, %rdx
	setb	%dl
	leaq	(%rcx,%rdi,8), %rdi
	cmpq	%rax, %rdi
	setb	%r10b
	cmpq	%rcx, %rsi
	setb	%bl
	cmpq	%r13, %rdi
	setb	%sil
	testb	%r9b, %r8b
	jne	.LBB9_22
# %bb.20:                               #   in Loop: Header=BB9_8 Depth=1
	orb	%r10b, %dl
	je	.LBB9_22
# %bb.21:                               #   in Loop: Header=BB9_8 Depth=1
	orb	%sil, %bl
	je	.LBB9_22
# %bb.72:                               #   in Loop: Header=BB9_8 Depth=1
	movq	80(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB9_73
# %bb.74:                               #   in Loop: Header=BB9_8 Depth=1
	vbroadcastsd	%xmm0, %ymm2
	vbroadcastsd	%xmm1, %ymm3
	xorl	%edx, %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_75:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulpd	(%rax,%rdx,8), %ymm2, %ymm4
	vmovupd	%ymm4, (%r13,%rdx,8)
	vmovupd	%ymm3, (%rcx,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdi, %rdx
	jl	.LBB9_75
# %bb.76:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%rdi, %rdx
	cmpq	%rsi, %rdi
	jne	.LBB9_77
	jmp	.LBB9_24
	.p2align	4, 0x90
.LBB9_22:                               #   in Loop: Header=BB9_8 Depth=1
	xorl	%edx, %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_23:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r13,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB9_23
	jmp	.LBB9_24
.LBB9_73:                               #   in Loop: Header=BB9_8 Depth=1
	xorl	%edx, %edx
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	8(%rsp), %rsi                   # 8-byte Reload
	.p2align	4, 0x90
.LBB9_77:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm2
	vmovsd	%xmm2, (%r13,%rdx,8)
	vmovsd	%xmm1, (%rcx,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	.LBB9_77
.LBB9_24:                               #   in Loop: Header=BB9_8 Depth=1
	movq	8(%rbx), %rdi
	subq	%r13, %rdi
	je	.LBB9_25
# %bb.28:                               #   in Loop: Header=BB9_8 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %rdi
	ja	.LBB9_29
# %bb.31:                               #   in Loop: Header=BB9_8 Depth=1
.Ltmp203:
	vzeroupper
	callq	_Znwm
.Ltmp204:
# %bb.32:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%rax, %rbp
	movq	8(%rbx), %r13
	movq	(%rbx), %rsi
	cmpq	%rsi, %r13
	je	.LBB9_34
.LBB9_36:                               #   in Loop: Header=BB9_8 Depth=1
	subq	%rsi, %r13
	movq	%rbp, %rdi
	movq	%r13, %rdx
	vzeroupper
	callq	memmove@PLT
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB9_37
# %bb.39:                               #   in Loop: Header=BB9_8 Depth=1
.Ltmp209:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp210:
# %bb.40:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%rax, %r12
	movq	%rax, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB9_41
	.p2align	4, 0x90
.LBB9_25:                               #   in Loop: Header=BB9_8 Depth=1
	xorl	%ebp, %ebp
	movq	(%rbx), %rsi
	cmpq	%rsi, %r13
	jne	.LBB9_36
.LBB9_34:                               #   in Loop: Header=BB9_8 Depth=1
	xorl	%r12d, %r12d
.LBB9_41:                               #   in Loop: Header=BB9_8 Depth=1
	cmpb	$0, 3(%rsp)                     # 1-byte Folded Reload
	movq	112(%rsp), %r13                 # 8-byte Reload
	movl	44(%rsp), %edi                  # 4-byte Reload
	movq	72(%rsp), %rsi                  # 8-byte Reload
	je	.LBB9_42
# %bb.78:                               #   in Loop: Header=BB9_8 Depth=1
	leaq	8(%r12), %rax
	xorl	%ecx, %ecx
	vxorpd	%xmm3, %xmm3, %xmm3
	jmp	.LBB9_79
	.p2align	4, 0x90
.LBB9_87:                               #   in Loop: Header=BB9_79 Depth=2
	leal	1(%rcx), %edx
	cmpl	%edi, %ecx
	movl	%edx, %ecx
	je	.LBB9_42
.LBB9_79:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_81 Depth 3
                                        #       Child Loop BB9_85 Depth 3
	cmpq	$4, %rsi
	jb	.LBB9_83
# %bb.80:                               #   in Loop: Header=BB9_79 Depth=2
	vmovsd	(%r12), %xmm0                   # xmm0 = mem[0],zero
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movq	%rax, %rsi
	.p2align	4, 0x90
.LBB9_81:                               #   Parent Loop BB9_8 Depth=1
                                        #     Parent Loop BB9_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vmovupd	(%rsi), %xmm1
	vaddpd	16(%rsi), %xmm1, %xmm1
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vaddsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovupd	%ymm3, -8(%rsi)
	addq	$32, %rsi
	decq	%rdx
	jne	.LBB9_81
# %bb.82:                               #   in Loop: Header=BB9_79 Depth=2
	vmovsd	%xmm0, (%r12,%r15,8)
	movq	72(%rsp), %rsi                  # 8-byte Reload
.LBB9_83:                               #   in Loop: Header=BB9_79 Depth=2
	cmpq	%rsi, %r15
	jae	.LBB9_87
# %bb.84:                               #   in Loop: Header=BB9_79 Depth=2
	vmovsd	(%r12,%r15,8), %xmm0            # xmm0 = mem[0],zero
	movq	120(%rsp), %rdx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB9_85:                               #   Parent Loop BB9_8 Depth=1
                                        #     Parent Loop BB9_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vaddsd	(%r12,%rdx,8), %xmm0, %xmm0
	movq	$0, -8(%r12,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r14
	jne	.LBB9_85
# %bb.86:                               #   in Loop: Header=BB9_79 Depth=2
	vmovsd	%xmm0, -8(%r12,%r14,8)
	jmp	.LBB9_87
	.p2align	4, 0x90
.LBB9_42:                               #   in Loop: Header=BB9_8 Depth=1
	cmpl	$0, 4(%rsp)                     # 4-byte Folded Reload
	je	.LBB9_43
# %bb.88:                               #   in Loop: Header=BB9_8 Depth=1
	movq	88(%rsp), %rcx                  # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB9_89
# %bb.90:                               #   in Loop: Header=BB9_8 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_91:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddpd	(%r12,%rax,8), %ymm0, %ymm0
	addq	$4, %rax
	cmpq	%rcx, %rax
	jb	.LBB9_91
# %bb.92:                               #   in Loop: Header=BB9_8 Depth=1
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	%rcx, %rax
	cmpq	%r14, %rcx
	jne	.LBB9_93
	jmp	.LBB9_44
	.p2align	4, 0x90
.LBB9_43:                               #   in Loop: Header=BB9_8 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB9_44
	.p2align	4, 0x90
.LBB9_89:                               #   in Loop: Header=BB9_8 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_93:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddsd	(%r12,%rax,8), %xmm0, %xmm0
	incq	%rax
	cmpq	%rax, %r14
	jne	.LBB9_93
.LBB9_44:                               #   in Loop: Header=BB9_8 Depth=1
	testq	%r12, %r12
	je	.LBB9_46
# %bb.45:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%r12, %rdi
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB9_46:                               #   in Loop: Header=BB9_8 Depth=1
	vmovsd	%xmm0, (%r13)
	testq	%rbp, %rbp
	je	.LBB9_48
# %bb.47:                               #   in Loop: Header=BB9_8 Depth=1
	movq	%rbp, %rdi
	vzeroupper
	callq	_ZdlPv
.LBB9_48:                               #   in Loop: Header=BB9_8 Depth=1
	movq	(%rbx), %rcx
	movq	8(%rbx), %rsi
	subq	%rcx, %rsi
	je	.LBB9_49
# %bb.50:                               #   in Loop: Header=BB9_8 Depth=1
	sarq	$3, %rsi
	vxorpd	%xmm2, %xmm2, %xmm2
	xorl	%edi, %edi
	leaq	184(%rsp), %rbx
	vmovupd	.LCPI9_2(%rip), %xmm1           # xmm1 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB9_51:                               #   Parent Loop BB9_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdi,8), %xmm0            # xmm0 = mem[0],zero
	vandpd	%xmm1, %xmm0, %xmm0
	vaddsd	%xmm2, %xmm0, %xmm2
	incq	%rdi
	movl	%edi, %eax
	cmpq	%rax, %rsi
	ja	.LBB9_51
	jmp	.LBB9_52
	.p2align	4, 0x90
.LBB9_49:                               #   in Loop: Header=BB9_8 Depth=1
	vxorpd	%xmm2, %xmm2, %xmm2
	leaq	184(%rsp), %rbx
.LBB9_52:                               #   in Loop: Header=BB9_8 Depth=1
	vmovsd	%xmm2, 32(%rsp)                 # 8-byte Spill
	vmovsd	(%r13), %xmm0                   # xmm0 = mem[0],zero
	vmovupd	%xmm0, 144(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
.Ltmp218:
	leaq	5168(%rsp), %rdi
	vzeroupper
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp219:
# %bb.53:                               #   in Loop: Header=BB9_8 Depth=1
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	144(%rsp), %xmm3                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomisd	%xmm0, %xmm3
	vmovsd	16(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vmovsd	32(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	je	.LBB9_8
# %bb.54:                               #   in Loop: Header=BB9_8 Depth=1
	vandpd	.LCPI9_2(%rip), %xmm3, %xmm0
	vdivsd	%xmm0, %xmm2, %xmm0
	jmp	.LBB9_8
.LBB9_65:
	movl	$.Lstr.22, %edi
	callq	puts@PLT
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_67
# %bb.66:
	callq	_ZdlPv
.LBB9_67:
	addq	$10168, %rsp                    # imm = 0x27B8
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
.LBB9_29:
	.cfi_def_cfa_offset 10224
.Ltmp206:
	vzeroupper
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp207:
# %bb.30:
.LBB9_37:
.Ltmp212:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp213:
# %bb.38:
.LBB9_94:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.LBB9_68:
.Ltmp193:
	movq	%rax, %rbx
	jmp	.LBB9_69
.LBB9_57:
.Ltmp211:
	jmp	.LBB9_59
.LBB9_55:
.Ltmp205:
	jmp	.LBB9_63
.LBB9_61:
.Ltmp220:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB9_26:
.Ltmp196:
	movq	%rbx, %rcx
	movq	%rax, %rbx
	movq	168(%rsp), %rdi
	cmpq	%rcx, %rdi
	je	.LBB9_69
# %bb.27:
	callq	_ZdlPv
	jmp	.LBB9_69
.LBB9_35:
.Ltmp199:
	jmp	.LBB9_63
.LBB9_62:
.Ltmp202:
	jmp	.LBB9_63
.LBB9_58:
.Ltmp214:
.LBB9_59:
	movq	%rax, %rbx
	testq	%rbp, %rbp
	je	.LBB9_64
# %bb.60:
	movq	%rbp, %rdi
	callq	_ZdlPv
	jmp	.LBB9_64
.LBB9_56:
.Ltmp208:
.LBB9_63:
	movq	%rax, %rbx
.LBB9_64:
.Ltmp215:
	leaq	5168(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp216:
.LBB9_69:
	movq	48(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_71
# %bb.70:
	callq	_ZdlPv
.LBB9_71:
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB9_95:
.Ltmp217:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end9:
	.size	_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_, .Lfunc_end9-_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_
	.cfi_endproc
	.section	.gcc_except_table._Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,"aG",@progbits,_Z16generate_v_printIdEvRSt6vectorIT_SaIS1_EES4_iS1_RS1_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp191-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin7         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp194-.Ltmp192              #   Call between .Ltmp192 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin7         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin7         #     jumps to .Ltmp199
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin7         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin7         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp204-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp209-.Ltmp204              #   Call between .Ltmp204 and .Ltmp209
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Ltmp210-.Ltmp209              #   Call between .Ltmp209 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin7         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin7         # >> Call Site 10 <<
	.uleb128 .Ltmp218-.Ltmp210              #   Call between .Ltmp210 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin7         # >> Call Site 11 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin7         #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp206-.Lfunc_begin7         # >> Call Site 12 <<
	.uleb128 .Ltmp207-.Ltmp206              #   Call between .Ltmp206 and .Ltmp207
	.uleb128 .Ltmp208-.Lfunc_begin7         #     jumps to .Ltmp208
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin7         # >> Call Site 13 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin7         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin7         # >> Call Site 14 <<
	.uleb128 .Ltmp215-.Ltmp213              #   Call between .Ltmp213 and .Ltmp215
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin7         # >> Call Site 15 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin7         #     jumps to .Ltmp217
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp216-.Lfunc_begin7         # >> Call Site 16 <<
	.uleb128 .Lfunc_end9-.Ltmp216           #   Call between .Ltmp216 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LCPI10_0:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
.LCPI10_3:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI10_1:
	.quad	0x3810000000000000              #  1.1754943508222875E-38
.LCPI10_2:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.section	.text._Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.p2align	4, 0x90
	.type	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,@function
_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_: # 
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movq	$0, 32(%rsp)
	movq	%rsp, %rdi
	leaq	32(%rsp), %rdx
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	movq	%rbx, %rcx
	callq	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	(%rsp), %xmm0                   # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rsp)                   # AlignMOV convert to UnAlignMOV 
	movq	$0, 16(%rsp)
	testq	%rdi, %rdi
	je	.LBB10_3
# %bb.1:
	callq	_ZdlPv
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_3
# %bb.2:
	callq	_ZdlPv
.LBB10_3:
	movq	%rsp, %r15
	leaq	32(%rsp), %r12
	.p2align	4, 0x90
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vucomisd	32(%rsp), %xmm0
	ja	.LBB10_7
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	vmovsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	vandpd	.LCPI10_0(%rip), %xmm0, %xmm0
	vucomisd	.LCPI10_1(%rip), %xmm0
	jb	.LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_4 Depth=1
	vucomisd	.LCPI10_2(%rip), %xmm0
	jbe	.LBB10_10
.LBB10_7:                               #   in Loop: Header=BB10_4 Depth=1
	movq	%r15, %rdi
	movl	%r14d, %esi
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	(%rsp), %xmm0                   # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rsp)                   # AlignMOV convert to UnAlignMOV 
	movq	$0, 16(%rsp)
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.8:                                #   in Loop: Header=BB10_4 Depth=1
	callq	_ZdlPv
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.9:                                #   in Loop: Header=BB10_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB10_4
.LBB10_10:
	addq	$48, %rsp
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
.Lfunc_end10:
	.size	_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .Lfunc_end10-_Z12gen_fpnumberIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
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
	je	.LBB11_1
# %bb.2:
	movabsq	$9223372036854775801, %rax      # imm = 0x7FFFFFFFFFFFFFF9
	cmpq	%rax, %rdi
	jae	.LBB11_28
# %bb.3:
	callq	_Znwm
	movq	%rax, %rdi
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	subq	%rsi, %rdx
	je	.LBB11_5
# %bb.4:
	movq	%rdi, %rbx
	callq	memmove@PLT
	movq	%rbx, %rdi
.LBB11_5:
	movl	%r14d, %eax
	cmpl	$1, %ebp
	jne	.LBB11_6
	jmp	.LBB11_17
.LBB11_1:
	xorl	%edi, %edi
	movl	%r14d, %eax
	cmpl	$1, %ebp
	je	.LBB11_17
.LBB11_6:
	cmpl	$2, %r14d
	jb	.LBB11_17
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
	jmp	.LBB11_8
	.p2align	4, 0x90
.LBB11_16:                              #   in Loop: Header=BB11_8 Depth=1
	leal	1(%rbx), %ecx
	cmpl	%r11d, %ebx
	movl	%ecx, %ebx
	je	.LBB11_17
.LBB11_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_10 Depth 2
                                        #     Child Loop BB11_14 Depth 2
	cmpq	$4, %rsi
	jae	.LBB11_9
# %bb.12:                               #   in Loop: Header=BB11_8 Depth=1
	cmpq	%rsi, %rdx
	jae	.LBB11_16
	jmp	.LBB11_13
	.p2align	4, 0x90
.LBB11_9:                               #   in Loop: Header=BB11_8 Depth=1
	vmovsd	(%rdi), %xmm1                   # xmm1 = mem[0],zero
	movq	%r10, %rbp
	movq	%r8, %rcx
	.p2align	4, 0x90
.LBB11_10:                              #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovupd	(%rcx), %xmm2
	vaddpd	16(%rcx), %xmm2, %xmm2
	vpermilpd	$1, %xmm2, %xmm3        # xmm3 = xmm2[1,0]
	vaddsd	%xmm3, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm1
	vmovupd	%ymm0, -8(%rcx)
	addq	$32, %rcx
	decq	%rbp
	jne	.LBB11_10
# %bb.11:                               #   in Loop: Header=BB11_8 Depth=1
	vmovsd	%xmm1, (%rdi,%rdx,8)
	cmpq	%rsi, %rdx
	jae	.LBB11_16
.LBB11_13:                              #   in Loop: Header=BB11_8 Depth=1
	vmovsd	(%rdi,%rdx,8), %xmm1            # xmm1 = mem[0],zero
	movq	%r9, %rcx
	.p2align	4, 0x90
.LBB11_14:                              #   Parent Loop BB11_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddsd	(%rdi,%rcx,8), %xmm1, %xmm1
	movq	$0, -8(%rdi,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB11_14
# %bb.15:                               #   in Loop: Header=BB11_8 Depth=1
	vmovsd	%xmm1, -8(%rdi,%rax,8)
	jmp	.LBB11_16
.LBB11_17:
	testl	%r14d, %r14d
	je	.LBB11_18
# %bb.22:
	movl	$4294967292, %ecx               # imm = 0xFFFFFFFC
	andq	%rax, %rcx
	je	.LBB11_23
# %bb.24:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB11_25:                              # =>This Inner Loop Header: Depth=1
	vaddpd	(%rdi,%rdx,8), %ymm0, %ymm0
	addq	$4, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB11_25
# %bb.26:
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpq	%rax, %rcx
	jne	.LBB11_27
	jmp	.LBB11_19
.LBB11_18:
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB11_19
.LBB11_23:
	xorl	%ecx, %ecx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB11_27:                              # =>This Inner Loop Header: Depth=1
	vaddsd	(%rdi,%rcx,8), %xmm0, %xmm0
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB11_27
.LBB11_19:
	testq	%rdi, %rdi
	je	.LBB11_21
# %bb.20:
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB11_21:
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
.LBB11_28:
	.cfi_def_cfa_offset 48
	callq	_ZSt28__throw_bad_array_new_lengthv
.Lfunc_end11:
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .Lfunc_end11-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE # -- Begin function _ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,@function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE: # 
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
	movq	%rdx, %rbp
	movq	%rsi, %rbx
	movslq	4(%rdx), %r15
	movslq	(%rdx), %rax
	subq	%rax, %r15
	movl	$4294967294, %eax               # imm = 0xFFFFFFFE
	cmpq	%rax, %r15
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	ja	.LBB12_6
# %bb.1:
	leal	1(%r15), %r12d
	movq	%rbx, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rcx
	imulq	%r12, %rcx
	cmpl	%ecx, %r15d
	jb	.LBB12_5
# %bb.2:
	notl	%r15d
	movl	%r15d, %eax
	xorl	%edx, %edx
	divl	%r12d
	cmpl	%ecx, %edx
	jbe	.LBB12_5
# %bb.3:
	movl	%edx, %ebp
	.p2align	4, 0x90
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rcx
	imulq	%r12, %rcx
	cmpl	%ecx, %ebp
	ja	.LBB12_4
.LBB12_5:
	shrq	$32, %rcx
	jmp	.LBB12_11
.LBB12_6:
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	cmpq	%rax, %r15
	jne	.LBB12_7
# %bb.10:
	movq	%rbx, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rcx
	jmp	.LBB12_11
.LBB12_7:
	movq	%rdi, %r12
	movabsq	$-4294967296, %r14              # imm = 0xFFFFFFFF00000000
	leaq	16(%rsp), %r13
	.p2align	4, 0x90
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, 16(%rsp)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	movl	%eax, %ebp
	shlq	$32, %rbp
	movq	%rbx, %rdi
	callq	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rcx
	addq	%rbp, %rcx
	setb	%al
	cmpq	%r15, %rcx
	ja	.LBB12_8
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	testb	%al, %al
	jne	.LBB12_8
.LBB12_11:
	movq	8(%rsp), %rax                   # 8-byte Reload
	addl	(%rax), %ecx
	movl	%ecx, %eax
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
.Lfunc_end12:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .Lfunc_end12-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LCPI13_0:
	.long	0x7fffffff                      #  NaN
.LCPI13_1:
	.long	0x00800000                      #  1.17549435E-38
.LCPI13_2:
	.long	0x7f7fffff                      #  3.40282347E+38
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI13_3:
	.zero	16
	.section	.text._Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.p2align	4, 0x90
	.type	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,@function
_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_: # 
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
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movl	$0, 8(%rsp)
	leaq	16(%rsp), %rdi
	leaq	8(%rsp), %rdx
	vmovss	%xmm0, 12(%rsp)                 # 4-byte Spill
	movq	%rbx, %rcx
	callq	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	16(%rsp), %xmm0                 # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	testq	%rdi, %rdi
	je	.LBB13_3
# %bb.1:
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_3
# %bb.2:
	callq	_ZdlPv
.LBB13_3:
	leaq	16(%rsp), %r15
	leaq	8(%rsp), %r12
	vbroadcastss	.LCPI13_0(%rip), %xmm0  # xmm0 = [NaN,NaN,NaN,NaN]
	vmovups	%xmm0, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vucomiss	8(%rsp), %xmm0
	ja	.LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	vmovss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vandps	48(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vucomiss	.LCPI13_1(%rip), %xmm0
	jb	.LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=1
	vucomiss	.LCPI13_2(%rip), %xmm0
	jbe	.LBB13_10
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=1
	movq	%r15, %rdi
	movl	%r14d, %esi
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	16(%rsp), %xmm0                 # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	testq	%rdi, %rdi
	je	.LBB13_4
# %bb.8:                                #   in Loop: Header=BB13_4 Depth=1
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB13_4
# %bb.9:                                #   in Loop: Header=BB13_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB13_4
.LBB13_10:
	addq	$64, %rsp
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
.Lfunc_end13:
	.size	_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .Lfunc_end13-_Z12gen_fpnumberIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
.LCPI14_0:
	.quad	0x3ff71547652b82fe              #  1.4426950408889634
.LCPI14_1:
	.quad	0x3f96c16c16c16c17              #  0.022222222222222223
.LCPI14_2:
	.quad	0x3ff0000000000000              #  1
.LCPI14_3:
	.quad	0x3fe0000000000000              #  0.5
.LCPI14_5:
	.quad	0x3fdfffffffffffff              #  0.49999999999999994
.LCPI14_9:
	.quad	0xbfe0000000000000              #  -0.5
.LCPI14_10:
	.quad	0x4000000000000000              #  2
.LCPI14_11:
	.quad	0xbff0000000000000              #  -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI14_4:
	.quad	0x8000000000000000              #  -0
	.quad	0x8000000000000000              #  -0
.LCPI14_14:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI14_6:
	.long	0x5f000000                      #  9.22337203E+18
.LCPI14_7:
	.long	0xbf800000                      #  -1
.LCPI14_8:
	.long	0x30000000                      #  4.65661287E-10
.LCPI14_12:
	.long	0x3f800000                      #  1
.LCPI14_13:
	.long	0x7fffffff                      #  NaN
.LCPI14_15:
	.long	0x00000000                      #  0
	.section	.text._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.p2align	4, 0x90
	.type	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,@function
_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_: # 
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception8
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
	movq	%rcx, %r13
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	log@PLT
	movl	%ebp, %r15d
	vcvtsi2sd	%r15, %xmm1, %xmm1
	vmulsd	.LCPI14_3(%rip), %xmm1, %xmm1
	vandpd	.LCPI14_4(%rip), %xmm1, %xmm2
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovddup	.LCPI14_5(%rip), %xmm0          # xmm0 = [4.9999999999999994E-1,4.9999999999999994E-1]
                                        # xmm0 = mem[0,0]
	vmovupd	%xmm0, 96(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vorpd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm4
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	testl	%ebp, %ebp
	vmovups	%xmm4, 112(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	je	.LBB14_2
# %bb.1:
	leaq	(,%r15,4), %rbp
	movq	%rbp, %rdi
	callq	_Znwm
	movq	%rax, %r14
	movq	%rax, (%rbx)
	leaq	(%rax,%r15,4), %r12
	movq	%r12, 16(%rbx)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovups	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB14_3
.LBB14_2:
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
.LBB14_3:
	movq	%r12, 8(%rbx)
	vcvttss2si	%xmm4, %rax
	movq	%rax, %rcx
	vsubss	.LCPI14_6(%rip), %xmm4, %xmm0
	vcvttss2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	shrq	$61, %rax
	jne	.LBB14_61
# %bb.4:
	testq	%rbp, %rbp
	movq	%r15, 160(%rsp)                 # 8-byte Spill
	je	.LBB14_7
# %bb.5:
	shlq	$2, %rbp
.Ltmp221:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp222:
# %bb.6:
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovups	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB14_8
.LBB14_7:
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB14_8:
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI14_0(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	movabsq	$2305843009213693951, %r15      # imm = 0x1FFFFFFFFFFFFFFF
	vxorpd	%xmm2, %xmm2, %xmm2
	vucomiss	%xmm2, %xmm4
	vmovss	%xmm0, 48(%rsp)                 # 4-byte Spill
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	vmovsd	%xmm1, 40(%rsp)                 # 8-byte Spill
	jbe	.LBB14_13
# %bb.9:
	vmulss	.LCPI14_8(%rip), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	xorl	%ebx, %ebx
	movq	(%rsp), %rbp                    # 8-byte Reload
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_10:                              #   in Loop: Header=BB14_11 Depth=1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvttpd2dq	%xmm0, %xmm0
	vcvtdq2ps	%xmm0, %xmm0
	movl	%ebx, %eax
	vmovss	%xmm0, (%rbp,%rax,4)
	incl	%ebx
	vcvtsi2ss	%rbx, %xmm3, %xmm0
	vmovups	112(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomiss	%xmm2, %xmm0
	jae	.LBB14_14
.LBB14_11:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2ss	%eax, %xmm3, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vucomiss	.LCPI14_15(%rip), %xmm0
	vmovsd	.LCPI14_3(%rip), %xmm1          # xmm1 = mem[0],zero
	ja	.LBB14_10
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=1
	vmovsd	.LCPI14_9(%rip), %xmm1          # xmm1 = mem[0],zero
	jmp	.LBB14_10
.LBB14_13:
	vmulsd	.LCPI14_3(%rip), %xmm1, %xmm0
	vandpd	.LCPI14_4(%rip), %xmm0, %xmm1
	vorpd	96(%rsp), %xmm1, %xmm1          # 16-byte Folded Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI14_2(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rsi                    # 8-byte Reload
	vmovss	%xmm0, (%rsi)
	vaddss	.LCPI14_7(%rip), %xmm4, %xmm0
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubss	.LCPI14_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movl	$0, (%rsi,%rdx,4)
	jmp	.LBB14_16
.LBB14_14:
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI14_3(%rip), %xmm0, %xmm0
	vandpd	.LCPI14_4(%rip), %xmm0, %xmm1
	vorpd	96(%rsp), %xmm1, %xmm1          # 16-byte Folded Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI14_2(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rbp)
	vaddss	.LCPI14_7(%rip), %xmm2, %xmm0
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubss	.LCPI14_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movl	$0, (%rbp,%rdx,4)
	xorl	%ebx, %ebx
	movq	%rbp, %r12
	.p2align	4, 0x90
.LBB14_15:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2ss	%eax, %xmm3, %xmm0
	vmulss	.LCPI14_8(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI14_11(%rip), %xmm1         # xmm1 = mem[0],zero
	vfmadd132sd	.LCPI14_10(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movl	%ebx, %ebp
	vcvttss2si	(%r12,%rbp,4), %edi
	vmovsd	.LCPI14_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovups	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmulsd	16(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r14,%rbp,4)
	incl	%ebx
	vcvtsi2ss	%rbx, %xmm3, %xmm0
	vucomiss	%xmm4, %xmm0
	jb	.LBB14_15
.LBB14_16:
	vcvtsi2ssq	160(%rsp), %xmm3, %xmm0 # 8-byte Folded Reload
	vsubss	%xmm4, %xmm0, %xmm6
	vcvttss2si	%xmm6, %rax
	movq	%rax, %rcx
	vsubss	.LCPI14_6(%rip), %xmm6, %xmm0
	vcvttss2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	cmpq	%r15, %rbp
	vmovss	48(%rsp), %xmm5                 # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	ja	.LBB14_63
# %bb.17:
	testq	%rbp, %rbp
	movq	%r13, 152(%rsp)                 # 8-byte Spill
	je	.LBB14_20
# %bb.18:
	vmovups	%xmm6, 16(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	shlq	$2, %rbp
.Ltmp223:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp224:
# %bb.19:
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovups	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovss	48(%rsp), %xmm5                 # 4-byte Reload
                                        # xmm5 = mem[0],zero,zero,zero
	vmovups	16(%rsp), %xmm6                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB14_21
.LBB14_20:
	xorl	%ebx, %ebx
.LBB14_21:
	vmovsd	40(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI14_1(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI14_2(%rip), %xmm0, %xmm1
	vaddss	.LCPI14_7(%rip), %xmm6, %xmm0
	vmovss	%xmm5, (%rbx)
	vucomiss	.LCPI14_12(%rip), %xmm6
	jbe	.LBB14_24
# %bb.22:
	vdivss	%xmm0, %xmm5, %xmm2
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB14_23:                              # =>This Inner Loop Header: Depth=1
	vsubss	%xmm2, %xmm5, %xmm5
	movl	%ecx, %eax
	vmovss	%xmm5, (%rbx,%rax,4)
	incl	%ecx
	vcvtsi2ss	%rcx, %xmm7, %xmm3
	vucomiss	%xmm3, %xmm6
	ja	.LBB14_23
.LBB14_24:
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmovss	%xmm1, 8(%rsp)                  # 4-byte Spill
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubss	.LCPI14_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	movl	$0, (%rbx,%rdx,4)
	vcvttss2si	%xmm4, %rax
	cmpl	12(%rsp), %eax                  # 4-byte Folded Reload
	jae	.LBB14_35
# %bb.25:
	movq	56(%rsp), %r13                  # 8-byte Reload
	subq	%r14, %r13
	movq	%r13, %rbx
	sarq	$2, %rbx
	vcvttss2si	8(%rsp), %r15           # 4-byte Folded Reload
	movl	%eax, %r12d
	jmp	.LBB14_27
	.p2align	4, 0x90
.LBB14_26:                              #   in Loop: Header=BB14_27 Depth=1
	incq	%r12
	cmpl	%r12d, 160(%rsp)                # 4-byte Folded Reload
	je	.LBB14_35
.LBB14_27:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	movl	%eax, %ebp
	movl	%r12d, %eax
	vcvtsi2ss	%rax, %xmm7, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	vsubss	112(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubss	.LCPI14_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	96(%rsp), %rax                  # 8-byte Reload
	vcvttss2si	(%rax,%rdx,4), %edi
	vmovsd	.LCPI14_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vcvtsi2ss	%ebp, %xmm7, %xmm0
	vmulss	.LCPI14_8(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vmovsd	.LCPI14_11(%rip), %xmm0         # xmm0 = mem[0],zero
	vfmadd132sd	.LCPI14_10(%rip), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, 40(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	cmpq	%r14, 56(%rsp)                  # 8-byte Folded Reload
	je	.LBB14_31
# %bb.28:                               #   in Loop: Header=BB14_27 Depth=1
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r13
	ja	.LBB14_57
# %bb.29:                               #   in Loop: Header=BB14_27 Depth=1
.Ltmp225:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp226:
# %bb.30:                               #   in Loop: Header=BB14_27 Depth=1
	movq	%rax, 128(%rsp)
	leaq	(%rax,%rbx,4), %rbp
	movq	%rbp, 144(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB14_32
	.p2align	4, 0x90
.LBB14_31:                              #   in Loop: Header=BB14_27 Depth=1
	movq	%r13, 144(%rsp)
	movq	%r13, %rbp
.LBB14_32:                              #   in Loop: Header=BB14_27 Depth=1
	movq	%rbp, 136(%rsp)
	vcvttss2si	16(%rsp), %rsi          # 4-byte Folded Reload
.Ltmp231:
	leaq	128(%rsp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r15d, %edx
	callq	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.Ltmp232:
# %bb.33:                               #   in Loop: Header=BB14_27 Depth=1
	vmovsd	40(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	48(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	vfmsub213sd	%xmm0, %xmm1, %xmm2     # xmm2 = (xmm1 * xmm2) - xmm0
	vcvtsd2ss	%xmm2, %xmm2, %xmm0
	vmovss	%xmm0, (%r14,%r12,4)
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB14_26
# %bb.34:                               #   in Loop: Header=BB14_27 Depth=1
	callq	_ZdlPv
	jmp	.LBB14_26
.LBB14_35:
	movq	56(%rsp), %r12                  # 8-byte Reload
	cmpq	%r12, %r14
	je	.LBB14_46
# %bb.36:
	leaq	4(%r14), %rax
	cmpq	%r12, %rax
	movq	152(%rsp), %r15                 # 8-byte Reload
	je	.LBB14_43
# %bb.37:
	movl	$4, %ebp
	jmp	.LBB14_39
	.p2align	4, 0x90
.LBB14_41:                              #   in Loop: Header=BB14_39 Depth=1
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%r14,%rdx,4), %rax
	cmpq	%rax, %rbx
	je	.LBB14_38
.LBB14_42:                              #   in Loop: Header=BB14_39 Depth=1
	vmovss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm1, (%rbx)
	vmovss	%xmm0, (%rax)
.LBB14_38:                              #   in Loop: Header=BB14_39 Depth=1
	leaq	(%r14,%rbp), %rax
	addq	$4, %rax
	addq	$4, %rbp
	cmpq	%r12, %rax
	je	.LBB14_43
.LBB14_39:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r14,%rbp), %rbx
	callq	rand
	movslq	%eax, %rcx
	movq	%rbp, %rsi
	sarq	$2, %rsi
	incq	%rsi
	movq	%rcx, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB14_41
# %bb.40:                               #   in Loop: Header=BB14_39 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	leaq	(%r14,%rdx,4), %rax
	cmpq	%rax, %rbx
	jne	.LBB14_42
	jmp	.LBB14_38
.LBB14_43:
	subq	%r14, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r12
	ja	.LBB14_59
# %bb.44:
.Ltmp234:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp235:
# %bb.45:
	movq	%r12, %rbp
	sarq	$2, %rbp
	movq	%rax, 64(%rsp)
	movq	%rax, 72(%rsp)
	leaq	(%rax,%rbp,4), %rbx
	movq	%rbx, 80(%rsp)
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB14_47
.LBB14_46:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 64(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 80(%rsp)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	152(%rsp), %r15                 # 8-byte Reload
.LBB14_47:
	movq	%rbx, 72(%rsp)
	vcvttss2si	8(%rsp), %rdx           # 4-byte Folded Reload
.Ltmp239:
	leaq	64(%rsp), %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.Ltmp240:
# %bb.48:
	vmovss	%xmm0, (%r15)
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	movq	168(%rsp), %rbx                 # 8-byte Reload
	je	.LBB14_50
# %bb.49:
	callq	_ZdlPv
.LBB14_50:
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movl	$0, (%rdx)
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	testq	%rbp, %rbp
	je	.LBB14_54
# %bb.51:
	vxorps	%xmm1, %xmm1, %xmm1
	movl	$1, %eax
	vbroadcastss	.LCPI14_13(%rip), %xmm2 # xmm2 = [NaN,NaN,NaN,NaN]
	.p2align	4, 0x90
.LBB14_52:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	vmovss	(%r14,%rcx,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	vandps	%xmm2, %xmm3, %xmm3
	vaddss	%xmm1, %xmm3, %xmm1
	movl	%eax, %ecx
	incl	%eax
	cmpq	%rcx, %rbp
	ja	.LBB14_52
# %bb.53:
	vmovss	%xmm1, (%rdx)
.LBB14_54:
	vmovss	(%r15), %xmm2                   # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm0
	je	.LBB14_56
# %bb.55:
	vbroadcastss	.LCPI14_13(%rip), %xmm0 # xmm0 = [NaN,NaN,NaN,NaN]
	vandps	%xmm0, %xmm2, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
.LBB14_56:
	vmovss	%xmm0, (%rdx)
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv
	movq	%rbx, %rax
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
.LBB14_57:
	.cfi_def_cfa_offset 240
.Ltmp228:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp229:
# %bb.58:
.LBB14_59:
.Ltmp236:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp237:
# %bb.60:
.LBB14_61:
.Ltmp245:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp246:
# %bb.62:
.LBB14_63:
.Ltmp242:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp243:
# %bb.64:
.LBB14_65:
.Ltmp241:
	movq	%rax, %rbp
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB14_71
	jmp	.LBB14_75
.LBB14_67:
.Ltmp244:
	movq	%rax, %rbp
	jmp	.LBB14_76
.LBB14_68:
.Ltmp247:
	movq	%rax, %rbp
	jmp	.LBB14_77
.LBB14_69:
.Ltmp227:
	jmp	.LBB14_74
.LBB14_70:
.Ltmp233:
	movq	%rax, %rbp
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB14_75
.LBB14_71:
	callq	_ZdlPv
	jmp	.LBB14_75
.LBB14_72:
.Ltmp238:
	jmp	.LBB14_74
.LBB14_73:
.Ltmp230:
.LBB14_74:
	movq	%rax, %rbp
.LBB14_75:
	movq	96(%rsp), %rdi                  # 8-byte Reload
	callq	_ZdlPv
.LBB14_76:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv
.LBB14_77:
	testq	%r14, %r14
	je	.LBB14_79
# %bb.78:
	movq	%r14, %rdi
	callq	_ZdlPv
.LBB14_79:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end14:
	.size	_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .Lfunc_end14-_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.cfi_endproc
	.section	.gcc_except_table._Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp221-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp221
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.uleb128 .Ltmp247-.Lfunc_begin8         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp244-.Lfunc_begin8         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin8         #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp231-.Ltmp226              #   Call between .Ltmp226 and .Ltmp231
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin8         #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin8         # >> Call Site 9 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp238-.Lfunc_begin8         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin8         # >> Call Site 10 <<
	.uleb128 .Ltmp239-.Ltmp235              #   Call between .Ltmp235 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin8         # >> Call Site 11 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp241-.Lfunc_begin8         #     jumps to .Ltmp241
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin8         # >> Call Site 12 <<
	.uleb128 .Ltmp229-.Ltmp228              #   Call between .Ltmp228 and .Ltmp229
	.uleb128 .Ltmp230-.Lfunc_begin8         #     jumps to .Ltmp230
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin8         # >> Call Site 13 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin8         #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin8         # >> Call Site 14 <<
	.uleb128 .Ltmp246-.Ltmp245              #   Call between .Ltmp245 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin8         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin8         # >> Call Site 15 <<
	.uleb128 .Ltmp243-.Ltmp242              #   Call between .Ltmp242 and .Ltmp243
	.uleb128 .Ltmp244-.Lfunc_begin8         #     jumps to .Ltmp244
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp243-.Lfunc_begin8         # >> Call Site 16 <<
	.uleb128 .Lfunc_end14-.Ltmp243          #   Call between .Ltmp243 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,comdat
	.weak	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj # -- Begin function _Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.p2align	4, 0x90
	.type	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj,@function
_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj:    # 
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
	je	.LBB15_1
# %bb.2:
	movabsq	$9223372036854775805, %rax      # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdi
	jae	.LBB15_28
# %bb.3:
	callq	_Znwm
	movq	%rax, %rdi
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	subq	%rsi, %rdx
	je	.LBB15_5
# %bb.4:
	movq	%rdi, %rbx
	callq	memmove@PLT
	movq	%rbx, %rdi
.LBB15_5:
	movl	%r14d, %eax
	cmpl	$1, %ebp
	jne	.LBB15_6
	jmp	.LBB15_17
.LBB15_1:
	xorl	%edi, %edi
	movl	%r14d, %eax
	cmpl	$1, %ebp
	je	.LBB15_17
.LBB15_6:
	cmpl	$2, %r14d
	jb	.LBB15_17
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
	leaq	4(%rdi), %r8
	leaq	1(%rdx), %r9
	xorl	%ebx, %ebx
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	.LBB15_8
	.p2align	4, 0x90
.LBB15_16:                              #   in Loop: Header=BB15_8 Depth=1
	leal	1(%rbx), %ecx
	cmpl	%r11d, %ebx
	movl	%ecx, %ebx
	je	.LBB15_17
.LBB15_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_10 Depth 2
                                        #     Child Loop BB15_14 Depth 2
	cmpq	$4, %rsi
	jae	.LBB15_9
# %bb.12:                               #   in Loop: Header=BB15_8 Depth=1
	cmpq	%rsi, %rdx
	jae	.LBB15_16
	jmp	.LBB15_13
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_8 Depth=1
	vmovss	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	movq	%r10, %rbp
	movq	%r8, %rcx
	.p2align	4, 0x90
.LBB15_10:                              #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovddup	8(%rcx), %xmm2                  # xmm2 = mem[0,0]
	vaddps	(%rcx), %xmm2, %xmm2
	vmovshdup	%xmm2, %xmm3            # xmm3 = xmm2[1,1,3,3]
	vaddss	%xmm3, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmovups	%xmm0, -4(%rcx)
	addq	$16, %rcx
	decq	%rbp
	jne	.LBB15_10
# %bb.11:                               #   in Loop: Header=BB15_8 Depth=1
	vmovss	%xmm1, (%rdi,%rdx,4)
	cmpq	%rsi, %rdx
	jae	.LBB15_16
.LBB15_13:                              #   in Loop: Header=BB15_8 Depth=1
	vmovss	(%rdi,%rdx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movq	%r9, %rcx
	.p2align	4, 0x90
.LBB15_14:                              #   Parent Loop BB15_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vaddss	(%rdi,%rcx,4), %xmm1, %xmm1
	movl	$0, -4(%rdi,%rcx,4)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB15_14
# %bb.15:                               #   in Loop: Header=BB15_8 Depth=1
	vmovss	%xmm1, -4(%rdi,%rax,4)
	jmp	.LBB15_16
.LBB15_17:
	testl	%r14d, %r14d
	je	.LBB15_18
# %bb.22:
	movl	$4294967288, %ecx               # imm = 0xFFFFFFF8
	andq	%rax, %rcx
	je	.LBB15_23
# %bb.24:
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB15_25:                              # =>This Inner Loop Header: Depth=1
	vaddps	(%rdi,%rdx,4), %ymm0, %ymm0
	addq	$8, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB15_25
# %bb.26:
	vextractf128	$1, %ymm0, %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vaddps	%xmm1, %xmm0, %xmm0
	vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	vaddss	%xmm1, %xmm0, %xmm0
	cmpq	%rax, %rcx
	jne	.LBB15_27
	jmp	.LBB15_19
.LBB15_18:
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	.LBB15_19
.LBB15_23:
	xorl	%ecx, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB15_27:                              # =>This Inner Loop Header: Depth=1
	vaddss	(%rdi,%rcx,4), %xmm0, %xmm0
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB15_27
.LBB15_19:
	testq	%rdi, %rdi
	je	.LBB15_21
# %bb.20:
	vmovss	%xmm0, 12(%rsp)                 # 4-byte Spill
	vzeroupper
	callq	_ZdlPv
	vmovss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB15_21:
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
.LBB15_28:
	.cfi_def_cfa_offset 48
	callq	_ZSt28__throw_bad_array_new_lengthv
.Lfunc_end15:
	.size	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj, .Lfunc_end15-_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
.LCPI16_0:
	.quad	0x3ff71547652b82fe              #  1.4426950408889634
.LCPI16_1:
	.quad	0x3fa06a2764633554              #  0.03205988979753252
.LCPI16_2:
	.quad	0x3ff0000000000000              #  1
.LCPI16_3:
	.quad	0x3fe0000000000000              #  0.5
.LCPI16_5:
	.quad	0x3fdfffffffffffff              #  0.49999999999999994
.LCPI16_6:
	.quad	0x43e0000000000000              #  9.2233720368547758E+18
.LCPI16_7:
	.quad	0x3fe71547652b82fe              #  0.72134752044448169
.LCPI16_8:
	.quad	0xbff0000000000000              #  -1
.LCPI16_10:
	.quad	0x3e10000000200000              #  9.3132257504915938E-10
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI16_4:
	.quad	0x8000000000000000              #  -0
	.quad	0x8000000000000000              #  -0
.LCPI16_11:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
.LCPI16_12:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI16_9:
	.long	0x30000000                      #  4.65661287E-10
	.section	.text._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.p2align	4, 0x90
	.type	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,@function
_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_: # 
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception9
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
	movq	%rcx, %r13
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	log@PLT
	movl	%ebp, %r14d
	vcvtsi2sd	%r14, %xmm1, %xmm1
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vmulsd	.LCPI16_3(%rip), %xmm1, %xmm1
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vandpd	.LCPI16_4(%rip), %xmm1, %xmm0
	vmovddup	.LCPI16_5(%rip), %xmm2          # xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
                                        # xmm2 = mem[0,0]
	vmovupd	%xmm2, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vorpd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm4
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movl	%ebp, 28(%rsp)                  # 4-byte Spill
	testl	%ebp, %ebp
	vmovupd	%xmm4, 112(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	je	.LBB16_2
# %bb.1:
	leaq	(,%r14,8), %rbp
	movq	%rbp, %rdi
	callq	_Znwm
	movq	%rax, %r12
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,8), %r15
	movq	%r15, 16(%rbx)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB16_3
.LBB16_2:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
.LBB16_3:
	movq	%r15, 8(%rbx)
	vcvttsd2si	%xmm4, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm4, %xmm0
	vcvttsd2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	shrq	$60, %rax
	jne	.LBB16_61
# %bb.4:
	testq	%rbp, %rbp
	movq	%r14, 176(%rsp)                 # 8-byte Spill
	je	.LBB16_7
# %bb.5:
	shlq	$3, %rbp
.Ltmp248:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp249:
# %bb.6:
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB16_8
.LBB16_7:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
.LBB16_8:
	movq	%rbx, 160(%rsp)                 # 8-byte Spill
	vmovsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vmulsd	.LCPI16_0(%rip), %xmm1, %xmm2
	movabsq	$1152921504606846975, %r14      # imm = 0xFFFFFFFFFFFFFFF
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm4
	vmovupd	48(%rsp), %xmm3                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	vmovsd	%xmm2, 40(%rsp)                 # 8-byte Spill
	jbe	.LBB16_13
# %bb.9:
	xorl	%ebx, %ebx
	movq	16(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB16_10:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vmovupd	48(%rsp), %xmm3                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	112(%rsp), %xmm2                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vcvtsi2ss	%eax, %xmm5, %xmm0
	vmulss	.LCPI16_9(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	40(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vandpd	.LCPI16_4(%rip), %xmm0, %xmm1
	vorpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	movl	%ebx, %eax
	vmovsd	%xmm0, (%rbp,%rax,8)
	incl	%ebx
	vcvtsi2sd	%rbx, %xmm5, %xmm0
	vucomisd	%xmm0, %xmm2
	ja	.LBB16_10
# %bb.11:
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI16_7(%rip), %xmm0, %xmm0
	vandpd	.LCPI16_4(%rip), %xmm0, %xmm1
	vorpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI16_2(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbp)
	vaddsd	.LCPI16_8(%rip), %xmm2, %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	$0, (%rbp,%rdx,8)
	xorl	%ebx, %ebx
	movq	%rbp, %r15
	.p2align	4, 0x90
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2sd	%eax, %xmm5, %xmm0
	vmulsd	.LCPI16_10(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movl	%ebx, %ebp
	vcvttsd2si	(%r15,%rbp,8), %edi
	vmovsd	.LCPI16_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovupd	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vfmsub132sd	48(%rsp), %xmm0, %xmm0  # 8-byte Folded Reload
                                        # xmm0 = (xmm0 * mem) - xmm0
	vmovsd	%xmm0, (%r12,%rbp,8)
	incl	%ebx
	vcvtsi2sd	%rbx, %xmm5, %xmm0
	vucomisd	%xmm0, %xmm4
	ja	.LBB16_12
	jmp	.LBB16_14
.LBB16_13:
	vmulsd	.LCPI16_7(%rip), %xmm1, %xmm0
	vandpd	.LCPI16_4(%rip), %xmm0, %xmm1
	vorpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI16_2(%rip), %xmm0, %xmm0
	movq	16(%rsp), %rsi                  # 8-byte Reload
	vmovsd	%xmm0, (%rsi)
	vaddsd	.LCPI16_8(%rip), %xmm4, %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	$0, (%rsi,%rdx,8)
.LBB16_14:
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vsubsd	%xmm4, %xmm0, %xmm6
	vcvttsd2si	%xmm6, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm6, %xmm0
	vcvttsd2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	cmpq	%r14, %rbp
	ja	.LBB16_63
# %bb.15:
	testq	%rbp, %rbp
	movq	%r13, 152(%rsp)                 # 8-byte Spill
	je	.LBB16_18
# %bb.16:
	vmovupd	%xmm6, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
.Ltmp250:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp251:
# %bb.17:
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	112(%rsp), %xmm4                # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	48(%rsp), %xmm6                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB16_19
.LBB16_18:
	xorl	%ebx, %ebx
.LBB16_19:
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI16_1(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm1
	vaddsd	.LCPI16_8(%rip), %xmm6, %xmm0
	vmovsd	40(%rsp), %xmm5                 # 8-byte Reload
                                        # xmm5 = mem[0],zero
	vmovsd	%xmm5, (%rbx)
	vucomisd	.LCPI16_2(%rip), %xmm6
	jbe	.LBB16_22
# %bb.20:
	vdivsd	%xmm0, %xmm5, %xmm2
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB16_21:                              # =>This Inner Loop Header: Depth=1
	vsubsd	%xmm2, %xmm5, %xmm5
	movl	%ecx, %eax
	vmovsd	%xmm5, (%rbx,%rax,8)
	incl	%ecx
	vcvtsi2sd	%rcx, %xmm7, %xmm3
	vucomisd	%xmm3, %xmm6
	ja	.LBB16_21
.LBB16_22:
	vaddsd	.LCPI16_2(%rip), %xmm1, %xmm1
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	$0, (%rbx,%rdx,8)
	vcvttsd2si	%xmm4, %rax
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	jae	.LBB16_33
# %bb.23:
	movq	72(%rsp), %r13                  # 8-byte Reload
	subq	%r12, %r13
	movq	%r13, %rbx
	sarq	$3, %rbx
	vcvttsd2si	32(%rsp), %r15          # 8-byte Folded Reload
	movl	%eax, %r14d
	jmp	.LBB16_25
	.p2align	4, 0x90
.LBB16_24:                              #   in Loop: Header=BB16_25 Depth=1
	incq	%r14
	cmpl	%r14d, 176(%rsp)                # 4-byte Folded Reload
	je	.LBB16_33
.LBB16_25:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	movl	%eax, %ebp
	movl	%r14d, %eax
	vcvtsi2sd	%rax, %xmm7, %xmm0
	vsubsd	112(%rsp), %xmm0, %xmm0         # 16-byte Folded Reload
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	.LCPI16_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	vcvttsd2si	(%rax,%rdx,8), %edi
	vmovsd	.LCPI16_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%ebp, %xmm7, %xmm0
	vmulsd	.LCPI16_10(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	cmpq	%r12, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB16_29
# %bb.26:                               #   in Loop: Header=BB16_25 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB16_57
# %bb.27:                               #   in Loop: Header=BB16_25 Depth=1
.Ltmp252:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp253:
# %bb.28:                               #   in Loop: Header=BB16_25 Depth=1
	movq	%rax, 128(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 144(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_30
	.p2align	4, 0x90
.LBB16_29:                              #   in Loop: Header=BB16_25 Depth=1
	movq	%r13, 144(%rsp)
	movq	%r13, %rbp
.LBB16_30:                              #   in Loop: Header=BB16_25 Depth=1
	movq	%rbp, 136(%rsp)
.Ltmp258:
	leaq	128(%rsp), %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.Ltmp259:
# %bb.31:                               #   in Loop: Header=BB16_25 Depth=1
	vmovsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vfmsub132sd	40(%rsp), %xmm1, %xmm1  # 8-byte Folded Reload
                                        # xmm1 = (xmm1 * mem) - xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r14,8)
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_24
# %bb.32:                               #   in Loop: Header=BB16_25 Depth=1
	callq	_ZdlPv
	jmp	.LBB16_24
.LBB16_33:
	movq	72(%rsp), %r15                  # 8-byte Reload
	cmpq	%r15, %r12
	je	.LBB16_44
# %bb.34:
	leaq	8(%r12), %rax
	cmpq	%r15, %rax
	movq	152(%rsp), %r14                 # 8-byte Reload
	je	.LBB16_41
# %bb.35:
	movl	$8, %ebp
	jmp	.LBB16_37
	.p2align	4, 0x90
.LBB16_39:                              #   in Loop: Header=BB16_37 Depth=1
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%r12,%rdx,8), %rax
	cmpq	%rax, %rbx
	je	.LBB16_36
.LBB16_40:                              #   in Loop: Header=BB16_37 Depth=1
	vmovsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%rbx)
	vmovsd	%xmm0, (%rax)
.LBB16_36:                              #   in Loop: Header=BB16_37 Depth=1
	leaq	(%r12,%rbp), %rax
	addq	$8, %rax
	addq	$8, %rbp
	cmpq	%r15, %rax
	je	.LBB16_41
.LBB16_37:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rbp), %rbx
	callq	rand
	movslq	%eax, %rcx
	movq	%rbp, %rsi
	sarq	$3, %rsi
	incq	%rsi
	movq	%rcx, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB16_39
# %bb.38:                               #   in Loop: Header=BB16_37 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	leaq	(%r12,%rdx,8), %rax
	cmpq	%rax, %rbx
	jne	.LBB16_40
	jmp	.LBB16_36
.LBB16_41:
	subq	%r12, %r15
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r15
	ja	.LBB16_59
# %bb.42:
.Ltmp261:
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp262:
# %bb.43:
	movq	%r15, %rbp
	sarq	$3, %rbp
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbp,8), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB16_45
.LBB16_44:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	152(%rsp), %r14                 # 8-byte Reload
.LBB16_45:
	movq	%rbx, 88(%rsp)
	vcvttsd2si	32(%rsp), %rdx          # 8-byte Folded Reload
.Ltmp266:
	leaq	80(%rsp), %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.Ltmp267:
# %bb.46:
	vmovsd	%xmm0, (%r14)
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB16_48
# %bb.47:
	callq	_ZdlPv
.LBB16_48:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	$0, (%rdx)
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	testq	%rbp, %rbp
	je	.LBB16_52
# %bb.49:
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$1, %eax
	vmovupd	.LCPI16_11(%rip), %xmm2         # xmm2 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB16_50:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	vmovsd	(%r12,%rcx,8), %xmm3            # xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm1
	movl	%eax, %ecx
	incl	%eax
	cmpq	%rcx, %rbp
	ja	.LBB16_50
# %bb.51:
	vmovsd	%xmm1, (%rdx)
.LBB16_52:
	vmovsd	(%r14), %xmm2                   # xmm2 = mem[0],zero
	vucomisd	%xmm2, %xmm0
	je	.LBB16_54
# %bb.53:
	vandpd	.LCPI16_11(%rip), %xmm2, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
.LBB16_54:
	vmovsd	%xmm0, (%rdx)
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB16_56
# %bb.55:
	callq	_ZdlPv
.LBB16_56:
	movq	%rbx, %rax
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
.LBB16_57:
	.cfi_def_cfa_offset 240
.Ltmp255:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp256:
# %bb.58:
.LBB16_59:
.Ltmp263:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp264:
# %bb.60:
.LBB16_61:
.Ltmp272:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp273:
# %bb.62:
.LBB16_63:
.Ltmp269:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp270:
# %bb.64:
.LBB16_65:
.Ltmp268:
	movq	%rax, %rbp
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB16_71
	jmp	.LBB16_75
.LBB16_67:
.Ltmp271:
	movq	%rax, %rbp
	jmp	.LBB16_76
.LBB16_68:
.Ltmp274:
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.LBB16_78
	jmp	.LBB16_80
.LBB16_69:
.Ltmp254:
	jmp	.LBB16_74
.LBB16_70:
.Ltmp260:
	movq	%rax, %rbp
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB16_75
.LBB16_71:
	callq	_ZdlPv
	jmp	.LBB16_75
.LBB16_72:
.Ltmp265:
	jmp	.LBB16_74
.LBB16_73:
.Ltmp257:
.LBB16_74:
	movq	%rax, %rbp
.LBB16_75:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
.LBB16_76:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB16_79
# %bb.77:
	testq	%r12, %r12
	jne	.LBB16_80
.LBB16_78:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB16_79:
	callq	_ZdlPv
	testq	%r12, %r12
	je	.LBB16_78
.LBB16_80:
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end16:
	.size	_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .Lfunc_end16-_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.cfi_endproc
	.section	.gcc_except_table._Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z6GenSumIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp248-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp274-.Lfunc_begin9         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp250-.Ltmp249              #   Call between .Ltmp249 and .Ltmp250
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp271-.Lfunc_begin9         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp252-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp253-.Ltmp252              #   Call between .Ltmp252 and .Ltmp253
	.uleb128 .Ltmp254-.Lfunc_begin9         #     jumps to .Ltmp254
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp258-.Ltmp253              #   Call between .Ltmp253 and .Ltmp258
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin9         #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin9         # >> Call Site 9 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp265-.Lfunc_begin9         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin9         # >> Call Site 10 <<
	.uleb128 .Ltmp266-.Ltmp262              #   Call between .Ltmp262 and .Ltmp266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin9         # >> Call Site 11 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp268-.Lfunc_begin9         #     jumps to .Ltmp268
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin9         # >> Call Site 12 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin9         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin9         # >> Call Site 13 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin9         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin9         # >> Call Site 14 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin9         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin9         # >> Call Site 15 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.uleb128 .Ltmp271-.Lfunc_begin9         #     jumps to .Ltmp271
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin9         # >> Call Site 16 <<
	.uleb128 .Lfunc_end16-.Ltmp270          #   Call between .Ltmp270 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LCPI17_0:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
.LCPI17_3:
	.zero	16
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI17_1:
	.quad	0x3810000000000000              #  1.1754943508222875E-38
.LCPI17_2:
	.quad	0x47efffffe0000000              #  3.4028234663852886E+38
	.section	.text._Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.p2align	4, 0x90
	.type	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_,@function
_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_: # 
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	vmovsd	%xmm0, 32(%rsp)                 # 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.31, %edi
	callq	puts@PLT
	movq	$0, 40(%rsp)
	movq	%rsp, %rdi
	leaq	40(%rsp), %rdx
	movl	%r14d, %esi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rbx, %rcx
	callq	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	(%rsp), %xmm0                   # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rsp)                   # AlignMOV convert to UnAlignMOV 
	movq	$0, 16(%rsp)
	testq	%rdi, %rdi
	je	.LBB17_3
# %bb.1:
	callq	_ZdlPv
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB17_3
# %bb.2:
	callq	_ZdlPv
.LBB17_3:
	movq	%rsp, %r15
	leaq	40(%rsp), %r12
	.p2align	4, 0x90
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vucomisd	40(%rsp), %xmm0
	ja	.LBB17_7
# %bb.5:                                #   in Loop: Header=BB17_4 Depth=1
	vmovsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	vandpd	.LCPI17_0(%rip), %xmm0, %xmm0
	vucomisd	.LCPI17_1(%rip), %xmm0
	jb	.LBB17_7
# %bb.6:                                #   in Loop: Header=BB17_4 Depth=1
	vucomisd	.LCPI17_2(%rip), %xmm0
	jbe	.LBB17_10
.LBB17_7:                               #   in Loop: Header=BB17_4 Depth=1
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, %rdi
	movl	%r14d, %esi
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	(%rsp), %xmm0                   # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	16(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rsp)                   # AlignMOV convert to UnAlignMOV 
	movq	$0, 16(%rsp)
	testq	%rdi, %rdi
	je	.LBB17_4
# %bb.8:                                #   in Loop: Header=BB17_4 Depth=1
	callq	_ZdlPv
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB17_4
# %bb.9:                                #   in Loop: Header=BB17_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB17_4
.LBB17_10:
	movl	$.Lstr.32, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	addq	$48, %rsp
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
.Lfunc_end17:
	.size	_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .Lfunc_end17-_Z18gen_fpnumber_printIdEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
.LCPI18_0:
	.long	0x7fffffff                      #  NaN
.LCPI18_1:
	.long	0x00800000                      #  1.17549435E-38
.LCPI18_2:
	.long	0x7f7fffff                      #  3.40282347E+38
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI18_3:
	.zero	16
	.section	.text._Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,"axG",@progbits,_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,comdat
	.weak	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.p2align	4, 0x90
	.type	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_,@function
_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_: # 
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
	subq	$64, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	vmovss	%xmm0, 8(%rsp)                  # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbp
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.31, %edi
	callq	puts@PLT
	movl	$0, 12(%rsp)
	leaq	16(%rsp), %rdi
	leaq	12(%rsp), %rdx
	movl	%r14d, %esi
	vmovss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%rbx, %rcx
	callq	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	16(%rsp), %xmm0                 # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	testq	%rdi, %rdi
	je	.LBB18_3
# %bb.1:
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB18_3
# %bb.2:
	callq	_ZdlPv
.LBB18_3:
	leaq	16(%rsp), %r15
	leaq	12(%rsp), %r12
	vbroadcastss	.LCPI18_0(%rip), %xmm0  # xmm0 = [NaN,NaN,NaN,NaN]
	vmovups	%xmm0, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	vmovss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vucomiss	12(%rsp), %xmm0
	ja	.LBB18_7
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	vmovss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vandps	48(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vucomiss	.LCPI18_1(%rip), %xmm0
	jb	.LBB18_7
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	vucomiss	.LCPI18_2(%rip), %xmm0
	jbe	.LBB18_10
.LBB18_7:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, %rdi
	movl	%r14d, %esi
	vmovss	8(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	movq	(%rbp), %rdi
	vmovups	16(%rsp), %xmm0                 # AlignMOV convert to UnAlignMOV 
	vmovups	%xmm0, (%rbp)
	movq	32(%rsp), %rax
	movq	%rax, 16(%rbp)
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 16(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 32(%rsp)
	testq	%rdi, %rdi
	je	.LBB18_4
# %bb.8:                                #   in Loop: Header=BB18_4 Depth=1
	callq	_ZdlPv
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB18_4
# %bb.9:                                #   in Loop: Header=BB18_4 Depth=1
	callq	_ZdlPv
	jmp	.LBB18_4
.LBB18_10:
	movl	$.Lstr.32, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	movl	$.Lstr.34, %edi
	callq	puts@PLT
	addq	$64, %rsp
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
.Lfunc_end18:
	.size	_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_, .Lfunc_end18-_Z18gen_fpnumber_printIfEvRSt6vectorIT_SaIS1_EEiS1_RS1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
.LCPI19_0:
	.quad	0x3ff71547652b82fe              #  1.4426950408889634
.LCPI19_1:
	.quad	0x3f96c16c16c16c17              #  0.022222222222222223
.LCPI19_2:
	.quad	0x3ff0000000000000              #  1
.LCPI19_3:
	.quad	0x3fe0000000000000              #  0.5
.LCPI19_5:
	.quad	0x3fdfffffffffffff              #  0.49999999999999994
.LCPI19_9:
	.quad	0xbfe0000000000000              #  -0.5
.LCPI19_10:
	.quad	0x4000000000000000              #  2
.LCPI19_11:
	.quad	0xbff0000000000000              #  -1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI19_4:
	.quad	0x8000000000000000              #  -0
	.quad	0x8000000000000000              #  -0
.LCPI19_14:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI19_6:
	.long	0x5f000000                      #  9.22337203E+18
.LCPI19_7:
	.long	0xbf800000                      #  -1
.LCPI19_8:
	.long	0x30000000                      #  4.65661287E-10
.LCPI19_12:
	.long	0x3f800000                      #  1
.LCPI19_13:
	.long	0x7fffffff                      #  NaN
.LCPI19_15:
	.long	0x00000000                      #  0
	.section	.text._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.p2align	4, 0x90
	.type	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,@function
_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_: # 
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception10
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
	movq	%rcx, %r13
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	vmovss	%xmm0, 48(%rsp)                 # 4-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.45, %edi
	callq	puts@PLT
	vmovss	48(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	callq	log@PLT
	movl	%ebp, %r14d
	vcvtsi2sd	%r14, %xmm1, %xmm1
	vmulsd	.LCPI19_3(%rip), %xmm1, %xmm1
	vandpd	.LCPI19_4(%rip), %xmm1, %xmm2
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	vmovddup	.LCPI19_5(%rip), %xmm0          # xmm0 = [4.9999999999999994E-1,4.9999999999999994E-1]
                                        # xmm0 = mem[0,0]
	vmovupd	%xmm0, 112(%rsp)                # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vorpd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movl	%ebp, 12(%rsp)                  # 4-byte Spill
	testl	%ebp, %ebp
	vmovups	%xmm2, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	je	.LBB19_2
# %bb.1:
	leaq	(,%r14,4), %rbp
	movq	%rbp, %rdi
	callq	_Znwm
	movq	%rax, %r15
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,4), %r12
	movq	%r12, 16(%rbx)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovups	48(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB19_3
.LBB19_2:
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
.LBB19_3:
	movq	%r12, 8(%rbx)
	vcvttss2si	%xmm2, %rax
	movq	%rax, %rcx
	vsubss	.LCPI19_6(%rip), %xmm2, %xmm0
	vcvttss2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	shrq	$61, %rax
	jne	.LBB19_61
# %bb.4:
	testq	%rbp, %rbp
	movq	%r14, 160(%rsp)                 # 8-byte Spill
	je	.LBB19_7
# %bb.5:
	shlq	$2, %rbp
.Ltmp275:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp276:
# %bb.6:
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovups	48(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB19_8
.LBB19_7:
	movq	$0, (%rsp)                      # 8-byte Folded Spill
.LBB19_8:
	movq	%rbx, 168(%rsp)                 # 8-byte Spill
	vmovsd	16(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI19_0(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	movabsq	$2305843009213693951, %r14      # imm = 0x1FFFFFFFFFFFFFFF
	vxorps	%xmm3, %xmm3, %xmm3
	vucomiss	%xmm3, %xmm2
	vmovss	%xmm0, 40(%rsp)                 # 4-byte Spill
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	jbe	.LBB19_13
# %bb.9:
	vmulss	.LCPI19_8(%rip), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	xorl	%ebx, %ebx
	movq	(%rsp), %rbp                    # 8-byte Reload
	jmp	.LBB19_11
	.p2align	4, 0x90
.LBB19_10:                              #   in Loop: Header=BB19_11 Depth=1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvttpd2dq	%xmm0, %xmm0
	vcvtdq2ps	%xmm0, %xmm0
	movl	%ebx, %eax
	vmovss	%xmm0, (%rbp,%rax,4)
	incl	%ebx
	vcvtsi2ss	%rbx, %xmm4, %xmm0
	vmovups	48(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vucomiss	%xmm2, %xmm0
	jae	.LBB19_14
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2ss	%eax, %xmm4, %xmm0
	vmulss	16(%rsp), %xmm0, %xmm0          # 4-byte Folded Reload
	vucomiss	.LCPI19_15(%rip), %xmm0
	vmovsd	.LCPI19_3(%rip), %xmm1          # xmm1 = mem[0],zero
	ja	.LBB19_10
# %bb.12:                               #   in Loop: Header=BB19_11 Depth=1
	vmovsd	.LCPI19_9(%rip), %xmm1          # xmm1 = mem[0],zero
	jmp	.LBB19_10
.LBB19_13:
	vmulsd	.LCPI19_3(%rip), %xmm1, %xmm0
	vandpd	.LCPI19_4(%rip), %xmm0, %xmm1
	vorpd	112(%rsp), %xmm1, %xmm1         # 16-byte Folded Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI19_2(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	movq	(%rsp), %rsi                    # 8-byte Reload
	vmovss	%xmm0, (%rsi)
	vaddss	.LCPI19_7(%rip), %xmm2, %xmm0
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubss	.LCPI19_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movl	$0, (%rsi,%rdx,4)
	jmp	.LBB19_16
.LBB19_14:
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI19_3(%rip), %xmm0, %xmm0
	vandpd	.LCPI19_4(%rip), %xmm0, %xmm1
	vorpd	112(%rsp), %xmm1, %xmm1         # 16-byte Folded Reload
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI19_2(%rip), %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rbp)
	vaddss	.LCPI19_7(%rip), %xmm2, %xmm0
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubss	.LCPI19_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movl	$0, (%rbp,%rdx,4)
	xorl	%ebx, %ebx
	movq	%rbp, %r12
	.p2align	4, 0x90
.LBB19_15:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2ss	%eax, %xmm4, %xmm0
	vmulss	.LCPI19_8(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	.LCPI19_11(%rip), %xmm1         # xmm1 = mem[0],zero
	vfmadd132sd	.LCPI19_10(%rip), %xmm1, %xmm0 # xmm0 = (xmm0 * mem) + xmm1
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movl	%ebx, %ebp
	vcvttss2si	(%r12,%rbp,4), %edi
	vmovsd	.LCPI19_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovups	48(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmulsd	16(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r15,%rbp,4)
	incl	%ebx
	vcvtsi2ss	%rbx, %xmm4, %xmm0
	vucomiss	%xmm2, %xmm0
	jb	.LBB19_15
.LBB19_16:
	vcvtsi2ssq	160(%rsp), %xmm4, %xmm0 # 8-byte Folded Reload
	vsubss	%xmm2, %xmm0, %xmm5
	vcvttss2si	%xmm5, %rax
	movq	%rax, %rcx
	vsubss	.LCPI19_6(%rip), %xmm5, %xmm0
	vcvttss2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	cmpq	%r14, %rbp
	vmovss	40(%rsp), %xmm4                 # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	ja	.LBB19_63
# %bb.17:
	testq	%rbp, %rbp
	movq	%r13, 152(%rsp)                 # 8-byte Spill
	je	.LBB19_20
# %bb.18:
	vmovups	%xmm5, 16(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	shlq	$2, %rbp
.Ltmp277:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp278:
# %bb.19:
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovss	40(%rsp), %xmm4                 # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	vmovups	16(%rsp), %xmm5                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB19_21
.LBB19_20:
	xorl	%ebx, %ebx
.LBB19_21:
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI19_1(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI19_2(%rip), %xmm0, %xmm1
	vaddss	.LCPI19_7(%rip), %xmm5, %xmm0
	vmovss	%xmm4, (%rbx)
	vucomiss	.LCPI19_12(%rip), %xmm5
	jbe	.LBB19_24
# %bb.22:
	vdivss	%xmm0, %xmm4, %xmm2
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB19_23:                              # =>This Inner Loop Header: Depth=1
	vsubss	%xmm2, %xmm4, %xmm4
	movl	%ecx, %eax
	vmovss	%xmm4, (%rbx,%rax,4)
	incl	%ecx
	vcvtsi2ss	%rcx, %xmm6, %xmm3
	vucomiss	%xmm3, %xmm5
	ja	.LBB19_23
.LBB19_24:
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vmovss	%xmm1, 8(%rsp)                  # 4-byte Spill
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubss	.LCPI19_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	movl	$0, (%rbx,%rdx,4)
	movl	$.Lstr.46, %edi
	callq	puts@PLT
	vcvttss2si	48(%rsp), %rax          # 16-byte Folded Reload
	cmpl	12(%rsp), %eax                  # 4-byte Folded Reload
	jae	.LBB19_35
# %bb.25:
	movq	72(%rsp), %r13                  # 8-byte Reload
	subq	%r15, %r13
	movq	%r13, %rbx
	sarq	$2, %rbx
	vcvttss2si	8(%rsp), %r14           # 4-byte Folded Reload
	movl	%eax, %r12d
	jmp	.LBB19_27
	.p2align	4, 0x90
.LBB19_26:                              #   in Loop: Header=BB19_27 Depth=1
	incq	%r12
	cmpl	%r12d, 160(%rsp)                # 4-byte Folded Reload
	je	.LBB19_35
.LBB19_27:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	movl	%eax, %ebp
	movl	%r12d, %eax
	vcvtsi2ss	%rax, %xmm6, %xmm0
	vmovss	%xmm0, 16(%rsp)                 # 4-byte Spill
	vsubss	48(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vcvttss2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubss	.LCPI19_6(%rip), %xmm0, %xmm0
	vcvttss2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	112(%rsp), %rax                 # 8-byte Reload
	vcvttss2si	(%rax,%rdx,4), %edi
	vmovsd	.LCPI19_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vcvtsi2ss	%ebp, %xmm6, %xmm0
	vmulss	.LCPI19_8(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm1
	vmovsd	.LCPI19_11(%rip), %xmm0         # xmm0 = mem[0],zero
	vfmadd132sd	.LCPI19_10(%rip), %xmm0, %xmm1 # xmm1 = (xmm1 * mem) + xmm0
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	cmpq	%r15, 72(%rsp)                  # 8-byte Folded Reload
	je	.LBB19_31
# %bb.28:                               #   in Loop: Header=BB19_27 Depth=1
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r13
	ja	.LBB19_57
# %bb.29:                               #   in Loop: Header=BB19_27 Depth=1
.Ltmp279:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp280:
# %bb.30:                               #   in Loop: Header=BB19_27 Depth=1
	movq	%rax, 128(%rsp)
	leaq	(%rax,%rbx,4), %rbp
	movq	%rbp, 144(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB19_32
	.p2align	4, 0x90
.LBB19_31:                              #   in Loop: Header=BB19_27 Depth=1
	movq	%r13, 144(%rsp)
	movq	%r13, %rbp
.LBB19_32:                              #   in Loop: Header=BB19_27 Depth=1
	movq	%rbp, 136(%rsp)
	vcvttss2si	16(%rsp), %rsi          # 4-byte Folded Reload
.Ltmp285:
	leaq	128(%rsp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	%r14d, %edx
	callq	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.Ltmp286:
# %bb.33:                               #   in Loop: Header=BB19_27 Depth=1
	vmovsd	32(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovsd	40(%rsp), %xmm2                 # 8-byte Reload
                                        # xmm2 = mem[0],zero
	vfmsub213sd	%xmm0, %xmm1, %xmm2     # xmm2 = (xmm1 * xmm2) - xmm0
	vcvtsd2ss	%xmm2, %xmm2, %xmm0
	vmovss	%xmm0, (%r15,%r12,4)
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_26
# %bb.34:                               #   in Loop: Header=BB19_27 Depth=1
	callq	_ZdlPv
	jmp	.LBB19_26
.LBB19_35:
	movl	$.Lstr.47, %edi
	callq	puts@PLT
	movq	72(%rsp), %r12                  # 8-byte Reload
	cmpq	%r12, %r15
	je	.LBB19_46
# %bb.36:
	leaq	4(%r15), %rax
	cmpq	%r12, %rax
	movq	152(%rsp), %r14                 # 8-byte Reload
	je	.LBB19_43
# %bb.37:
	movl	$4, %ebp
	jmp	.LBB19_39
	.p2align	4, 0x90
.LBB19_41:                              #   in Loop: Header=BB19_39 Depth=1
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%r15,%rdx,4), %rax
	cmpq	%rax, %rbx
	je	.LBB19_38
.LBB19_42:                              #   in Loop: Header=BB19_39 Depth=1
	vmovss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	vmovss	(%rax), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	vmovss	%xmm1, (%rbx)
	vmovss	%xmm0, (%rax)
.LBB19_38:                              #   in Loop: Header=BB19_39 Depth=1
	leaq	(%r15,%rbp), %rax
	addq	$4, %rax
	addq	$4, %rbp
	cmpq	%r12, %rax
	je	.LBB19_43
.LBB19_39:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r15,%rbp), %rbx
	callq	rand
	movslq	%eax, %rcx
	movq	%rbp, %rsi
	sarq	$2, %rsi
	incq	%rsi
	movq	%rcx, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB19_41
# %bb.40:                               #   in Loop: Header=BB19_39 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	leaq	(%r15,%rdx,4), %rax
	cmpq	%rax, %rbx
	jne	.LBB19_42
	jmp	.LBB19_38
.LBB19_43:
	subq	%r15, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	cmpq	%rax, %r12
	ja	.LBB19_59
# %bb.44:
.Ltmp288:
	movq	%r12, %rdi
	callq	_Znwm
.Ltmp289:
# %bb.45:
	movq	%r12, %rbp
	sarq	$2, %rbp
	movq	%rax, 80(%rsp)
	movq	%rax, 88(%rsp)
	leaq	(%rax,%rbp,4), %rbx
	movq	%rbx, 96(%rsp)
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB19_47
.LBB19_46:
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%xmm0, 80(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 96(%rsp)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	152(%rsp), %r14                 # 8-byte Reload
.LBB19_47:
	movq	%rbx, 88(%rsp)
	vcvttss2si	8(%rsp), %rdx           # 4-byte Folded Reload
.Ltmp293:
	leaq	80(%rsp), %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z4SumKIfET_St6vectorIS0_SaIS0_EEjj
.Ltmp294:
# %bb.48:
	vmovss	%xmm0, (%r14)
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	movq	168(%rsp), %rbx                 # 8-byte Reload
	je	.LBB19_50
# %bb.49:
	callq	_ZdlPv
.LBB19_50:
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movl	$0, (%rdx)
	vxorps	%xmm0, %xmm0, %xmm0
	vxorps	%xmm1, %xmm1, %xmm1
	testq	%rbp, %rbp
	je	.LBB19_54
# %bb.51:
	vxorps	%xmm1, %xmm1, %xmm1
	movl	$1, %eax
	vbroadcastss	.LCPI19_13(%rip), %xmm2 # xmm2 = [NaN,NaN,NaN,NaN]
	.p2align	4, 0x90
.LBB19_52:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	vmovss	(%r15,%rcx,4), %xmm3            # xmm3 = mem[0],zero,zero,zero
	vandps	%xmm2, %xmm3, %xmm3
	vaddss	%xmm1, %xmm3, %xmm1
	movl	%eax, %ecx
	incl	%eax
	cmpq	%rcx, %rbp
	ja	.LBB19_52
# %bb.53:
	vmovss	%xmm1, (%rdx)
.LBB19_54:
	vmovss	(%r14), %xmm2                   # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm0
	je	.LBB19_56
# %bb.55:
	vbroadcastss	.LCPI19_13(%rip), %xmm0 # xmm0 = [NaN,NaN,NaN,NaN]
	vandps	%xmm0, %xmm2, %xmm0
	vdivss	%xmm0, %xmm1, %xmm0
.LBB19_56:
	vmovss	%xmm0, (%rdx)
	movl	$.Lstr.48, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movq	112(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv
	movq	%rbx, %rax
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
.LBB19_57:
	.cfi_def_cfa_offset 240
.Ltmp282:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp283:
# %bb.58:
.LBB19_59:
.Ltmp290:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp291:
# %bb.60:
.LBB19_61:
.Ltmp299:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp300:
# %bb.62:
.LBB19_63:
.Ltmp296:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp297:
# %bb.64:
.LBB19_65:
.Ltmp295:
	movq	%rax, %rbp
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB19_71
	jmp	.LBB19_75
.LBB19_67:
.Ltmp298:
	movq	%rax, %rbp
	jmp	.LBB19_76
.LBB19_68:
.Ltmp301:
	movq	%rax, %rbp
	jmp	.LBB19_77
.LBB19_69:
.Ltmp281:
	jmp	.LBB19_74
.LBB19_70:
.Ltmp287:
	movq	%rax, %rbp
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_75
.LBB19_71:
	callq	_ZdlPv
	jmp	.LBB19_75
.LBB19_72:
.Ltmp292:
	jmp	.LBB19_74
.LBB19_73:
.Ltmp284:
.LBB19_74:
	movq	%rax, %rbp
.LBB19_75:
	movq	112(%rsp), %rdi                 # 8-byte Reload
	callq	_ZdlPv
.LBB19_76:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv
.LBB19_77:
	testq	%r15, %r15
	je	.LBB19_79
# %bb.78:
	movq	%r15, %rdi
	callq	_ZdlPv
.LBB19_79:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end19:
	.size	_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .Lfunc_end19-_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.cfi_endproc
	.section	.gcc_except_table._Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIfESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp275-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp301-.Lfunc_begin10        #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp298-.Lfunc_begin10        #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp281-.Lfunc_begin10        #     jumps to .Ltmp281
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp285-.Ltmp280              #   Call between .Ltmp280 and .Ltmp285
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.uleb128 .Ltmp287-.Lfunc_begin10        #     jumps to .Ltmp287
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin10        # >> Call Site 9 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp292-.Lfunc_begin10        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin10        # >> Call Site 10 <<
	.uleb128 .Ltmp293-.Ltmp289              #   Call between .Ltmp289 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin10        # >> Call Site 11 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin10        #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin10        # >> Call Site 12 <<
	.uleb128 .Ltmp283-.Ltmp282              #   Call between .Ltmp282 and .Ltmp283
	.uleb128 .Ltmp284-.Lfunc_begin10        #     jumps to .Ltmp284
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin10        # >> Call Site 13 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin10        #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin10        # >> Call Site 14 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin10        #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin10        # >> Call Site 15 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin10        #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin10        # >> Call Site 16 <<
	.uleb128 .Lfunc_end19-.Ltmp297          #   Call between .Ltmp297 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
.LCPI20_0:
	.quad	0x3ff71547652b82fe              #  1.4426950408889634
.LCPI20_1:
	.quad	0x3fa06a2764633554              #  0.03205988979753252
.LCPI20_2:
	.quad	0x3ff0000000000000              #  1
.LCPI20_3:
	.quad	0x3fe0000000000000              #  0.5
.LCPI20_5:
	.quad	0x3fdfffffffffffff              #  0.49999999999999994
.LCPI20_6:
	.quad	0x43e0000000000000              #  9.2233720368547758E+18
.LCPI20_7:
	.quad	0x3fe71547652b82fe              #  0.72134752044448169
.LCPI20_8:
	.quad	0xbff0000000000000              #  -1
.LCPI20_10:
	.quad	0x3e10000000200000              #  9.3132257504915938E-10
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI20_4:
	.quad	0x8000000000000000              #  -0
	.quad	0x8000000000000000              #  -0
.LCPI20_11:
	.quad	0x7fffffffffffffff              #  NaN
	.quad	0x7fffffffffffffff              #  NaN
.LCPI20_12:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI20_9:
	.long	0x30000000                      #  4.65661287E-10
	.section	.text._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"axG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.weak	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.p2align	4, 0x90
	.type	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,@function
_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_: # 
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception11
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
	movq	%rcx, %r13
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	vmovsd	%xmm0, 64(%rsp)                 # 8-byte Spill
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.45, %edi
	callq	puts@PLT
	vmovsd	64(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	log@PLT
	movl	%ebp, %r14d
	vcvtsi2sd	%r14, %xmm1, %xmm1
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vmulsd	.LCPI20_3(%rip), %xmm1, %xmm1
	vmovsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	vandpd	.LCPI20_4(%rip), %xmm1, %xmm0
	vmovddup	.LCPI20_5(%rip), %xmm2          # xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
                                        # xmm2 = mem[0,0]
	vmovupd	%xmm2, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	vorpd	%xmm2, %xmm0, %xmm0
	vaddsd	%xmm0, %xmm1, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm2
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, (%rbx)
	movq	$0, 16(%rbx)
	movl	%ebp, 28(%rsp)                  # 4-byte Spill
	testl	%ebp, %ebp
	vmovupd	%xmm2, 64(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	je	.LBB20_2
# %bb.1:
	leaq	(,%r14,8), %rbp
	movq	%rbp, %rdi
	callq	_Znwm
	movq	%rax, %r12
	movq	%rax, (%rbx)
	leaq	(%rax,%r14,8), %r15
	movq	%r15, 16(%rbx)
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	64(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB20_3
.LBB20_2:
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
.LBB20_3:
	movq	%r15, 8(%rbx)
	vcvttsd2si	%xmm2, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm2, %xmm0
	vcvttsd2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	movq	%rbp, %rax
	shrq	$60, %rax
	jne	.LBB20_61
# %bb.4:
	testq	%rbp, %rbp
	movq	%r14, 176(%rsp)                 # 8-byte Spill
	je	.LBB20_7
# %bb.5:
	shlq	$3, %rbp
.Ltmp302:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp303:
# %bb.6:
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	64(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB20_8
.LBB20_7:
	movq	$0, 16(%rsp)                    # 8-byte Folded Spill
.LBB20_8:
	movq	%rbx, 160(%rsp)                 # 8-byte Spill
	vmovsd	8(%rsp), %xmm1                  # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vmulsd	.LCPI20_0(%rip), %xmm1, %xmm3
	movabsq	$1152921504606846975, %r14      # imm = 0xFFFFFFFFFFFFFFF
	vxorpd	%xmm0, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm2
	vmovupd	48(%rsp), %xmm4                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	vmovsd	%xmm3, 40(%rsp)                 # 8-byte Spill
	jbe	.LBB20_13
# %bb.9:
	xorl	%ebx, %ebx
	movq	16(%rsp), %rbp                  # 8-byte Reload
	.p2align	4, 0x90
.LBB20_10:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vmovupd	48(%rsp), %xmm3                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vmovupd	64(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vcvtsi2ss	%eax, %xmm5, %xmm0
	vmulss	.LCPI20_9(%rip), %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	40(%rsp), %xmm0, %xmm0          # 8-byte Folded Reload
	vandpd	.LCPI20_4(%rip), %xmm0, %xmm1
	vorpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	movl	%ebx, %eax
	vmovsd	%xmm0, (%rbp,%rax,8)
	incl	%ebx
	vcvtsi2sd	%rbx, %xmm5, %xmm0
	vucomisd	%xmm0, %xmm2
	ja	.LBB20_10
# %bb.11:
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI20_7(%rip), %xmm0, %xmm0
	vandpd	.LCPI20_4(%rip), %xmm0, %xmm1
	vorpd	%xmm3, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI20_2(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbp)
	vaddsd	.LCPI20_8(%rip), %xmm2, %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	$0, (%rbp,%rdx,8)
	xorl	%ebx, %ebx
	movq	%rbp, %r15
	.p2align	4, 0x90
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	vcvtsi2sd	%eax, %xmm5, %xmm0
	vmulsd	.LCPI20_10(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	movl	%ebx, %ebp
	vcvttsd2si	(%r15,%rbp,8), %edi
	vmovsd	.LCPI20_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovupd	64(%rsp), %xmm2                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	vfmsub132sd	48(%rsp), %xmm0, %xmm0  # 8-byte Folded Reload
                                        # xmm0 = (xmm0 * mem) - xmm0
	vmovsd	%xmm0, (%r12,%rbp,8)
	incl	%ebx
	vcvtsi2sd	%rbx, %xmm5, %xmm0
	vucomisd	%xmm0, %xmm2
	ja	.LBB20_12
	jmp	.LBB20_14
.LBB20_13:
	vmulsd	.LCPI20_7(%rip), %xmm1, %xmm0
	vandpd	.LCPI20_4(%rip), %xmm0, %xmm1
	vorpd	%xmm4, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vroundsd	$11, %xmm0, %xmm0, %xmm0
	vaddsd	.LCPI20_2(%rip), %xmm0, %xmm0
	movq	16(%rsp), %rsi                  # 8-byte Reload
	vmovsd	%xmm0, (%rsi)
	vaddsd	.LCPI20_8(%rip), %xmm2, %xmm0
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	$0, (%rsi,%rdx,8)
.LBB20_14:
	vmovsd	32(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vsubsd	%xmm2, %xmm0, %xmm5
	vcvttsd2si	%xmm5, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm5, %xmm0
	vcvttsd2si	%xmm0, %rbp
	sarq	$63, %rcx
	andq	%rcx, %rbp
	orq	%rax, %rbp
	cmpq	%r14, %rbp
	ja	.LBB20_63
# %bb.15:
	testq	%rbp, %rbp
	movq	%r13, 152(%rsp)                 # 8-byte Spill
	je	.LBB20_18
# %bb.16:
	vmovupd	%xmm5, 48(%rsp)                 # 16-byte Spill
                                        # AlignMOV convert to UnAlignMOV 
	shlq	$3, %rbp
.Ltmp304:
	movq	%rbp, %rdi
	callq	_Znwm
.Ltmp305:
# %bb.17:
	movq	%rax, %rbx
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	_intel_fast_memset@PLT
	vmovupd	48(%rsp), %xmm5                 # 16-byte Reload
                                        # AlignMOV convert to UnAlignMOV 
	jmp	.LBB20_19
.LBB20_18:
	xorl	%ebx, %ebx
.LBB20_19:
	vmovsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI20_1(%rip), %xmm0, %xmm0
	vroundsd	$10, %xmm0, %xmm0, %xmm1
	vaddsd	.LCPI20_8(%rip), %xmm5, %xmm0
	vmovsd	40(%rsp), %xmm4                 # 8-byte Reload
                                        # xmm4 = mem[0],zero
	vmovsd	%xmm4, (%rbx)
	vucomisd	.LCPI20_2(%rip), %xmm5
	jbe	.LBB20_22
# %bb.20:
	vdivsd	%xmm0, %xmm4, %xmm2
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB20_21:                              # =>This Inner Loop Header: Depth=1
	vsubsd	%xmm2, %xmm4, %xmm4
	movl	%ecx, %eax
	vmovsd	%xmm4, (%rbx,%rax,8)
	incl	%ecx
	vcvtsi2sd	%rcx, %xmm6, %xmm3
	vucomisd	%xmm3, %xmm5
	ja	.LBB20_21
.LBB20_22:
	vaddsd	.LCPI20_2(%rip), %xmm1, %xmm1
	vmovsd	%xmm1, 32(%rsp)                 # 8-byte Spill
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	sarq	$63, %rcx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	$0, (%rbx,%rdx,8)
	movl	$.Lstr.46, %edi
	callq	puts@PLT
	vcvttsd2si	64(%rsp), %rax          # 16-byte Folded Reload
	cmpl	28(%rsp), %eax                  # 4-byte Folded Reload
	jae	.LBB20_33
# %bb.23:
	movq	88(%rsp), %r13                  # 8-byte Reload
	subq	%r12, %r13
	movq	%r13, %rbx
	sarq	$3, %rbx
	vcvttsd2si	32(%rsp), %r15          # 8-byte Folded Reload
	movl	%eax, %r14d
	jmp	.LBB20_25
	.p2align	4, 0x90
.LBB20_24:                              #   in Loop: Header=BB20_25 Depth=1
	incq	%r14
	cmpl	%r14d, 176(%rsp)                # 4-byte Folded Reload
	je	.LBB20_33
.LBB20_25:                              # =>This Inner Loop Header: Depth=1
	callq	rand
	movl	%eax, %ebp
	movl	%r14d, %eax
	vcvtsi2sd	%rax, %xmm6, %xmm0
	vsubsd	64(%rsp), %xmm0, %xmm0          # 16-byte Folded Reload
	vcvttsd2si	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	vsubsd	.LCPI20_6(%rip), %xmm0, %xmm0
	vcvttsd2si	%xmm0, %rdx
	andq	%rcx, %rdx
	orq	%rax, %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	vcvttsd2si	(%rax,%rdx,8), %edi
	vmovsd	.LCPI20_2(%rip), %xmm0          # xmm0 = mem[0],zero
	callq	ldexp@PLT
	vmovsd	%xmm0, 48(%rsp)                 # 8-byte Spill
	vcvtsi2sd	%ebp, %xmm6, %xmm0
	vmulsd	.LCPI20_10(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 128(%rsp)                # AlignMOV convert to UnAlignMOV 
	movq	$0, 144(%rsp)
	cmpq	%r12, 88(%rsp)                  # 8-byte Folded Reload
	je	.LBB20_29
# %bb.26:                               #   in Loop: Header=BB20_25 Depth=1
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r13
	ja	.LBB20_57
# %bb.27:                               #   in Loop: Header=BB20_25 Depth=1
.Ltmp306:
	movq	%r13, %rdi
	callq	_Znwm
.Ltmp307:
# %bb.28:                               #   in Loop: Header=BB20_25 Depth=1
	movq	%rax, 128(%rsp)
	leaq	(%rax,%rbx,8), %rbp
	movq	%rbp, 144(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB20_30
	.p2align	4, 0x90
.LBB20_29:                              #   in Loop: Header=BB20_25 Depth=1
	movq	%r13, 144(%rsp)
	movq	%r13, %rbp
.LBB20_30:                              #   in Loop: Header=BB20_25 Depth=1
	movq	%rbp, 136(%rsp)
.Ltmp312:
	leaq	128(%rsp), %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
	callq	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.Ltmp313:
# %bb.31:                               #   in Loop: Header=BB20_25 Depth=1
	vmovsd	48(%rsp), %xmm1                 # 8-byte Reload
                                        # xmm1 = mem[0],zero
	vfmsub132sd	40(%rsp), %xmm1, %xmm1  # 8-byte Folded Reload
                                        # xmm1 = (xmm1 * mem) - xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%r14,8)
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB20_24
# %bb.32:                               #   in Loop: Header=BB20_25 Depth=1
	callq	_ZdlPv
	jmp	.LBB20_24
.LBB20_33:
	movl	$.Lstr.47, %edi
	callq	puts@PLT
	movq	88(%rsp), %r15                  # 8-byte Reload
	cmpq	%r15, %r12
	je	.LBB20_44
# %bb.34:
	leaq	8(%r12), %rax
	cmpq	%r15, %rax
	movq	152(%rsp), %r14                 # 8-byte Reload
	je	.LBB20_41
# %bb.35:
	movl	$8, %ebp
	jmp	.LBB20_37
	.p2align	4, 0x90
.LBB20_39:                              #   in Loop: Header=BB20_37 Depth=1
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%r12,%rdx,8), %rax
	cmpq	%rax, %rbx
	je	.LBB20_36
.LBB20_40:                              #   in Loop: Header=BB20_37 Depth=1
	vmovsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	(%rax), %xmm1                   # xmm1 = mem[0],zero
	vmovsd	%xmm1, (%rbx)
	vmovsd	%xmm0, (%rax)
.LBB20_36:                              #   in Loop: Header=BB20_37 Depth=1
	leaq	(%r12,%rbp), %rax
	addq	$8, %rax
	addq	$8, %rbp
	cmpq	%r15, %rax
	je	.LBB20_41
.LBB20_37:                              # =>This Inner Loop Header: Depth=1
	leaq	(%r12,%rbp), %rbx
	callq	rand
	movslq	%eax, %rcx
	movq	%rbp, %rsi
	sarq	$3, %rsi
	incq	%rsi
	movq	%rcx, %rdx
	orq	%rsi, %rdx
	shrq	$32, %rdx
	je	.LBB20_39
# %bb.38:                               #   in Loop: Header=BB20_37 Depth=1
	movq	%rcx, %rax
	cqto
	idivq	%rsi
	leaq	(%r12,%rdx,8), %rax
	cmpq	%rax, %rbx
	jne	.LBB20_40
	jmp	.LBB20_36
.LBB20_41:
	subq	%r12, %r15
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	movabsq	$9223372036854775800, %rax      # imm = 0x7FFFFFFFFFFFFFF8
	cmpq	%rax, %r15
	ja	.LBB20_59
# %bb.42:
.Ltmp315:
	movq	%r15, %rdi
	callq	_Znwm
.Ltmp316:
# %bb.43:
	movq	%r15, %rbp
	sarq	$3, %rbp
	movq	%rax, 96(%rsp)
	movq	%rax, 104(%rsp)
	leaq	(%rax,%rbp,8), %rbx
	movq	%rbx, 112(%rsp)
	movq	%rax, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	_intel_fast_memcpy@PLT
	jmp	.LBB20_45
.LBB20_44:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovupd	%xmm0, 96(%rsp)                 # AlignMOV convert to UnAlignMOV 
	movq	$0, 112(%rsp)
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	movq	152(%rsp), %r14                 # 8-byte Reload
.LBB20_45:
	movq	%rbx, 104(%rsp)
	vcvttsd2si	32(%rsp), %rdx          # 8-byte Folded Reload
.Ltmp320:
	leaq	96(%rsp), %rdi
	movl	28(%rsp), %esi                  # 4-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	callq	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
.Ltmp321:
# %bb.46:
	vmovsd	%xmm0, (%r14)
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	movq	160(%rsp), %rbx                 # 8-byte Reload
	je	.LBB20_48
# %bb.47:
	callq	_ZdlPv
.LBB20_48:
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	$0, (%rdx)
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	testq	%rbp, %rbp
	je	.LBB20_52
# %bb.49:
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$1, %eax
	vmovupd	.LCPI20_11(%rip), %xmm2         # xmm2 = [NaN,NaN]
                                        # AlignMOV convert to UnAlignMOV 
	.p2align	4, 0x90
.LBB20_50:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rax), %ecx
	vmovsd	(%r12,%rcx,8), %xmm3            # xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm1
	movl	%eax, %ecx
	incl	%eax
	cmpq	%rcx, %rbp
	ja	.LBB20_50
# %bb.51:
	vmovsd	%xmm1, (%rdx)
.LBB20_52:
	vmovsd	(%r14), %xmm2                   # xmm2 = mem[0],zero
	vucomisd	%xmm2, %xmm0
	je	.LBB20_54
# %bb.53:
	vandpd	.LCPI20_11(%rip), %xmm2, %xmm0
	vdivsd	%xmm0, %xmm1, %xmm0
.LBB20_54:
	vmovsd	%xmm0, (%rdx)
	movl	$.Lstr.48, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movl	$.Lstr.50, %edi
	callq	puts@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	je	.LBB20_56
# %bb.55:
	callq	_ZdlPv
.LBB20_56:
	movq	%rbx, %rax
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
.LBB20_57:
	.cfi_def_cfa_offset 240
.Ltmp309:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp310:
# %bb.58:
.LBB20_59:
.Ltmp317:
	callq	_ZSt28__throw_bad_array_new_lengthv
.Ltmp318:
# %bb.60:
.LBB20_61:
.Ltmp326:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp327:
# %bb.62:
.LBB20_63:
.Ltmp323:
	movl	$.L.str.4, %edi
	callq	_ZSt20__throw_length_errorPKc
.Ltmp324:
# %bb.64:
.LBB20_65:
.Ltmp322:
	movq	%rax, %rbp
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.LBB20_71
	jmp	.LBB20_75
.LBB20_67:
.Ltmp325:
	movq	%rax, %rbp
	jmp	.LBB20_76
.LBB20_68:
.Ltmp328:
	movq	%rax, %rbp
	testq	%r12, %r12
	je	.LBB20_78
	jmp	.LBB20_80
.LBB20_69:
.Ltmp308:
	jmp	.LBB20_74
.LBB20_70:
.Ltmp314:
	movq	%rax, %rbp
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB20_75
.LBB20_71:
	callq	_ZdlPv
	jmp	.LBB20_75
.LBB20_72:
.Ltmp319:
	jmp	.LBB20_74
.LBB20_73:
.Ltmp311:
.LBB20_74:
	movq	%rax, %rbp
.LBB20_75:
	movq	8(%rsp), %rdi                   # 8-byte Reload
	callq	_ZdlPv
.LBB20_76:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	testq	%rdi, %rdi
	jne	.LBB20_79
# %bb.77:
	testq	%r12, %r12
	jne	.LBB20_80
.LBB20_78:
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.LBB20_79:
	callq	_ZdlPv
	testq	%r12, %r12
	je	.LBB20_78
.LBB20_80:
	movq	%r12, %rdi
	callq	_ZdlPv
	movq	%rbp, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end20:
	.size	_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_, .Lfunc_end20-_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_
	.cfi_endproc
	.section	.gcc_except_table._Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,"aG",@progbits,_Z12GenSum_printIdESt6vectorIT_SaIS1_EEjS1_RS1_S4_,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp302-.Lfunc_begin11        #   Call between .Lfunc_begin11 and .Ltmp302
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin11        # >> Call Site 2 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp328-.Lfunc_begin11        #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin11        # >> Call Site 3 <<
	.uleb128 .Ltmp304-.Ltmp303              #   Call between .Ltmp303 and .Ltmp304
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp304-.Lfunc_begin11        # >> Call Site 4 <<
	.uleb128 .Ltmp305-.Ltmp304              #   Call between .Ltmp304 and .Ltmp305
	.uleb128 .Ltmp325-.Lfunc_begin11        #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin11        # >> Call Site 5 <<
	.uleb128 .Ltmp306-.Ltmp305              #   Call between .Ltmp305 and .Ltmp306
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin11        # >> Call Site 6 <<
	.uleb128 .Ltmp307-.Ltmp306              #   Call between .Ltmp306 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin11        #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin11        # >> Call Site 7 <<
	.uleb128 .Ltmp312-.Ltmp307              #   Call between .Ltmp307 and .Ltmp312
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin11        # >> Call Site 8 <<
	.uleb128 .Ltmp313-.Ltmp312              #   Call between .Ltmp312 and .Ltmp313
	.uleb128 .Ltmp314-.Lfunc_begin11        #     jumps to .Ltmp314
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp315-.Lfunc_begin11        # >> Call Site 9 <<
	.uleb128 .Ltmp316-.Ltmp315              #   Call between .Ltmp315 and .Ltmp316
	.uleb128 .Ltmp319-.Lfunc_begin11        #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp316-.Lfunc_begin11        # >> Call Site 10 <<
	.uleb128 .Ltmp320-.Ltmp316              #   Call between .Ltmp316 and .Ltmp320
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp320-.Lfunc_begin11        # >> Call Site 11 <<
	.uleb128 .Ltmp321-.Ltmp320              #   Call between .Ltmp320 and .Ltmp321
	.uleb128 .Ltmp322-.Lfunc_begin11        #     jumps to .Ltmp322
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin11        # >> Call Site 12 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin11        #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp317-.Lfunc_begin11        # >> Call Site 13 <<
	.uleb128 .Ltmp318-.Ltmp317              #   Call between .Ltmp317 and .Ltmp318
	.uleb128 .Ltmp319-.Lfunc_begin11        #     jumps to .Ltmp319
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin11        # >> Call Site 14 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin11        #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin11        # >> Call Site 15 <<
	.uleb128 .Ltmp324-.Ltmp323              #   Call between .Ltmp323 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin11        #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp324-.Lfunc_begin11        # >> Call Site 16 <<
	.uleb128 .Lfunc_end20-.Ltmp324          #   Call between .Ltmp324 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_gen_random_vector.cc
	.type	_GLOBAL__sub_I_gen_random_vector.cc,@function
_GLOBAL__sub_I_gen_random_vector.cc:    # 
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
.Lfunc_end21:
	.size	_GLOBAL__sub_I_gen_random_vector.cc, .Lfunc_end21-_GLOBAL__sub_I_gen_random_vector.cc
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"../data/vector%d.bin"
	.size	.L.str, 21

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"../src/data/vector%d.bin"
	.size	.L.str.1, 25

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"../data_big/vector%d.bin"
	.size	.L.str.2, 25

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"../src/data_big/vector%d.bin"
	.size	.L.str.3, 29

	.type	.L.str.4,@object                # 
.L.str.4:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"default"
	.size	.L.str.5, 8

	.type	.L.str.7,@object                # 
.L.str.7:
	.asciz	"Could not open binary_file.bin"
	.size	.L.str.7, 31

	.type	.L.str.8,@object                # 
.L.str.8:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.8, 26

	.type	.L.str.9,@object                # 
.L.str.9:
	.asciz	"~~~~~~~~~~~~~~~~~~~~~~~~~ GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.size	.L.str.9, 90

	.type	.L.str.10,@object               # 
.L.str.10:
	.asciz	"\n~~~~~~~~~~~~~~~~~~~~~~~~~ END OF GENERATION OF DATA N\302\260%d ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
	.size	.L.str.10, 98

	.type	.L.str.15,@object               # 
.L.str.15:
	.asciz	"In while"
	.size	.L.str.15, 9

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_gen_random_vector.cc
	.type	.Lstr,@object                   # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"\n -> START GENERATE_V"
	.size	.Lstr, 22

	.type	.Lstr.22,@object                # 
.Lstr.22:
	.asciz	"  END GENERATE_V "
	.size	.Lstr.22, 18

	.type	.Lstr.31,@object                # 
.Lstr.31:
	.asciz	"   ----------> START GEN FP"
	.size	.Lstr.31, 28

	.type	.Lstr.32,@object                # 
.Lstr.32:
	.asciz	"   ----------- End GEN FP"
	.size	.Lstr.32, 26

	.type	.Lstr.34,@object                # 
.Lstr.34:
	.asciz	"   -"
	.size	.Lstr.34, 5

	.type	.Lstr.45,@object                # 
.Lstr.45:
	.asciz	"             ----------> START GENSUM \n "
	.size	.Lstr.45, 41

	.type	.Lstr.46,@object                # 
.Lstr.46:
	.asciz	"                            Before                "
	.size	.Lstr.46, 51

	.type	.Lstr.47,@object                # 
.Lstr.47:
	.asciz	"                           After                "
	.size	.Lstr.47, 49

	.type	.Lstr.48,@object                # 
.Lstr.48:
	.asciz	"             ----------- END GENSUM "
	.size	.Lstr.48, 37

	.type	.Lstr.50,@object                # 
.Lstr.50:
	.asciz	"             -"
	.size	.Lstr.50, 15

	.type	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i,@object # 
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.size	.Lswitch.table._Z13vec_gen_printIdEviiT_S0_i, 32

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2023.0.0 (2023.0.0.20221201)"
	.section	".note.GNU-stack","",@progbits
