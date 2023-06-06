	.file	"eft.cc"
	.text
	.section	.text._Z6TwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z6TwoSumIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z6TwoSumIdEvT_S0_RS0_S1_
	.type	_Z6TwoSumIdEvT_S0_RS0_S1_, @function
_Z6TwoSumIdEvT_S0_RS0_S1_:
.LFB4552:
	.cfi_startproc
	endbr64
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi)
	movq	$0x000000000, (%rsi)
	ret
	.cfi_endproc
.LFE4552:
	.size	_Z6TwoSumIdEvT_S0_RS0_S1_, .-_Z6TwoSumIdEvT_S0_RS0_S1_
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.p2align 4
	.weak	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.type	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, @function
_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj:
.LFB4553:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4553
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	movl	%edx, %r12d
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$64, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%esi, -92(%rbp)
	movq	(%rdi), %rsi
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	movq	8(%rdi), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
	movq	%rdx, -104(%rbp)
	je	.L23
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rdx
	ja	.L45
	movq	%rdi, %rbx
	movq	%rdx, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	(%rbx), %rsi
	movq	%rax, -88(%rbp)
	movq	8(%rbx), %rax
	movq	%rax, %rdx
	subq	%rsi, %rdx
.L4:
	cmpq	%rax, %rsi
	je	.L7
	movq	-88(%rbp), %rdi
	call	memmove@PLT
.L7:
	subl	$1, %r12d
	movl	%r12d, -96(%rbp)
	je	.L8
	movl	-92(%rbp), %eax
	movq	-88(%rbp), %rdx
	movl	$1, %r15d
	leaq	-64(%rbp), %r13
	subl	$2, %eax
	leaq	8(%rdx,%rax,8), %r14
	.p2align 4,,10
	.p2align 3
.L9:
	cmpl	$1, -92(%rbp)
	movq	-88(%rbp), %rbx
	leaq	-72(%rbp), %r12
	jbe	.L11
	.p2align 4,,10
	.p2align 3
.L10:
	vmovsd	8(%rbx), %xmm0
	vmovsd	(%rbx), %xmm1
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	$0x000000000, -72(%rbp)
	movq	$0x000000000, -64(%rbp)
.LEHB1:
	call	_Z6TwoSumIdEvT_S0_RS0_S1_
.LEHE1:
	vmovsd	-64(%rbp), %xmm0
	addq	$8, %rbx
	vmovhpd	-72(%rbp), %xmm0, %xmm0
	vmovupd	%xmm0, -8(%rbx)
	cmpq	%r14, %rbx
	jne	.L10
.L11:
	addl	$1, %r15d
	cmpl	-96(%rbp), %r15d
	jbe	.L9
.L8:
	movl	-92(%rbp), %ecx
	testl	%ecx, %ecx
	je	.L25
	leal	-1(%rcx), %eax
	cmpl	$6, %eax
	jbe	.L26
	shrl	$3, %ecx
	movq	-88(%rbp), %rsi
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	%ecx, %edx
	salq	$6, %rdx
	movq	%rsi, %rax
	addq	%rsi, %rdx
	.p2align 4,,10
	.p2align 3
.L14:
	vaddpd	(%rax), %zmm0, %zmm0
	addq	$64, %rax
	cmpq	%rax, %rdx
	jne	.L14
	vextractf64x4	$0x1, %zmm0, %ymm1
	movl	-92(%rbp), %ecx
	vaddpd	%ymm0, %ymm1, %ymm0
	movl	%ecx, %eax
	andl	$-8, %eax
	andl	$7, %ecx
	vextractf128	$0x1, %ymm0, %xmm1
	vaddpd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm1, %xmm1, %xmm0
	vaddpd	%xmm1, %xmm0, %xmm0
	je	.L46
.L13:
	movl	-92(%rbp), %edx
	subl	%eax, %edx
	leal	-1(%rdx), %ecx
	cmpl	$2, %ecx
	jbe	.L17
	movq	-88(%rbp), %rdi
	movl	%eax, %ecx
	vmovupd	(%rdi,%rcx,8), %ymm1
	movl	%edx, %ecx
	andl	$-4, %ecx
	vextractf128	$0x1, %ymm1, %xmm2
	addl	%ecx, %eax
	vaddpd	%xmm1, %xmm2, %xmm2
	vunpckhpd	%xmm2, %xmm2, %xmm1
	vaddpd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	cmpl	%ecx, %edx
	je	.L40
.L17:
	movq	-88(%rbp), %rcx
	movl	%eax, %edx
	movl	-92(%rbp), %esi
	vaddsd	(%rcx,%rdx,8), %xmm0, %xmm0
	leal	1(%rax), %edx
	cmpl	%edx, %esi
	jbe	.L42
	addl	$2, %eax
	vaddsd	(%rcx,%rdx,8), %xmm0, %xmm0
	cmpl	%eax, %esi
	jbe	.L42
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vzeroupper
	movq	%rcx, %rdi
.L12:
	testq	%rdi, %rdi
	je	.L3
	movq	-104(%rbp), %rsi
	vmovsd	%xmm0, -88(%rbp)
	call	_ZdlPvm@PLT
	vmovsd	-88(%rbp), %xmm0
.L3:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L47
	addq	$64, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L23:
	.cfi_restore_state
	movq	$0, -88(%rbp)
	jmp	.L4
.L40:
	vzeroupper
	jmp	.L12
.L45:
	testq	%rdx, %rdx
	jns	.L6
.LEHB2:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L42:
	vzeroupper
	movq	%rcx, %rdi
	jmp	.L12
.L25:
	movq	-88(%rbp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L12
.L46:
	vzeroupper
	movq	-88(%rbp), %rdi
	jmp	.L12
.L26:
	xorl	%eax, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.L13
.L6:
	call	_ZSt17__throw_bad_allocv@PLT
.L47:
	call	__stack_chk_fail@PLT
.L27:
	endbr64
	movq	%rax, %r12
.L20:
	cmpq	$0, -88(%rbp)
	je	.L43
	movq	-104(%rbp), %rsi
	movq	-88(%rbp), %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L21:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L43:
	vzeroupper
	jmp	.L21
	.cfi_endproc
.LFE4553:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"aG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
.LLSDA4553:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4553-.LLSDACSB4553
.LLSDACSB4553:
	.uleb128 .LEHB0-.LFB4553
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB4553
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L27-.LFB4553
	.uleb128 0
	.uleb128 .LEHB2-.LFB4553
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE4553:
	.section	.text._Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,"axG",@progbits,_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj,comdat
	.size	_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj, .-_Z4SumKIdET_St6vectorIS0_SaIS0_EEjj
	.section	.rodata._Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,"axG",@progbits,_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_,comdat
	.p2align 4
	.weak	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.type	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, @function
_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_:
.LFB4554:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	.cfi_offset 15, -24
	movq	%rdx, %r15
	movslq	%esi, %rdx
	pushq	%r14
	movq	%rdx, %rax
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$64, %rsp
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	shrq	$60, %rax
	jne	.L103
	testq	%rdx, %rdx
	movq	%rdi, 48(%rsp)
	leaq	0(,%rdx,8), %r13
	movq	%rdx, 56(%rsp)
	je	.L101
	movq	%r13, %rdi
	movl	%esi, %ebx
	movq	%rcx, %r14
	call	_Znwm@PLT
	movq	56(%rsp), %rdx
	movq	48(%rsp), %r8
	movq	%rax, %r12
	leaq	(%rax,%r13), %rax
	cmpq	$1, %rdx
	movq	$0x000000000, (%r12)
	je	.L51
	leaq	8(%r12), %rdi
	cmpq	%rax, %rdi
	je	.L52
	leaq	-8(%r13), %rdx
	xorl	%esi, %esi
	movq	%r8, 56(%rsp)
	call	memset@PLT
	movq	56(%rsp), %r8
.L52:
	movq	(%r8), %rax
	leal	-1(%rbx), %r9d
	movq	%r12, %rcx
	movl	%ebx, %edi
	cmpl	$2, %r9d
	leaq	8(%rax), %r11
	seta	%dl
	subq	%r11, %rcx
	cmpq	$48, %rcx
	seta	%r8b
	andb	%dl, %r8b
	je	.L104
	movl	%ebx, %ecx
	cmpl	$6, %r9d
	jbe	.L79
	vbroadcastsd	.LC3(%rip), %zmm1
	shrl	$3, %ecx
	xorl	%edx, %edx
	salq	$6, %rcx
	.p2align 4,,10
	.p2align 3
.L59:
	vmulpd	(%rax,%rdx), %zmm1, %zmm0
	vmovupd	%zmm0, (%r12,%rdx)
	addq	$64, %rdx
	cmpq	%rdx, %rcx
	jne	.L59
	movl	%ebx, %edx
	andl	$-8, %edx
	testb	$7, %bl
	je	.L57
	movl	%ebx, %ecx
	subl	%edx, %ecx
	leal	-1(%rcx), %esi
	cmpl	$2, %esi
	jbe	.L54
.L58:
	vbroadcastsd	.LC3(%rip), %ymm0
	movl	%edx, %esi
	vmulpd	(%rax,%rsi,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%r12,%rsi,8)
	movl	%ecx, %esi
	andl	$-4, %esi
	addl	%esi, %edx
	cmpl	%esi, %ecx
	je	.L57
.L54:
	vmovsd	.LC3(%rip), %xmm0
	movl	%edx, %ecx
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%r12,%rcx,8)
	leal	1(%rdx), %ecx
	cmpl	%ecx, %ebx
	jbe	.L57
	vmulsd	(%rax,%rcx,8), %xmm0, %xmm1
	addl	$2, %edx
	vmovsd	%xmm1, (%r12,%rcx,8)
	cmpl	%edx, %ebx
	jbe	.L57
	vmulsd	(%rax,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rdx,8)
.L57:
	movq	(%r15), %rcx
	movq	%rcx, %rdx
	subq	%r11, %rdx
	cmpq	$48, %rdx
	jbe	.L61
	testb	%r8b, %r8b
	je	.L61
	movl	%edi, %esi
	cmpl	$6, %r9d
	jbe	.L80
	shrl	$3, %esi
	xorl	%edx, %edx
	salq	$6, %rsi
	.p2align 4,,10
	.p2align 3
.L63:
	vmovupd	(%rax,%rdx), %zmm2
	vmovupd	%zmm2, (%rcx,%rdx)
	addq	$64, %rdx
	cmpq	%rsi, %rdx
	jne	.L63
	movl	%edi, %edx
	andl	$-8, %edx
	testb	$7, %dil
	je	.L68
	movl	%edi, %esi
	subl	%edx, %esi
	leal	-1(%rsi), %r10d
	cmpl	$2, %r10d
	jbe	.L65
.L62:
	movl	%edx, %r10d
	vmovupd	(%rax,%r10,8), %ymm4
	vmovupd	%ymm4, (%rcx,%r10,8)
	movl	%esi, %r10d
	andl	$-4, %r10d
	addl	%r10d, %edx
	cmpl	%r10d, %esi
	je	.L68
.L65:
	movl	%edx, %esi
	vmovsd	(%rax,%rsi,8), %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	leal	1(%rdx), %esi
	cmpl	%edi, %esi
	jnb	.L68
	vmovsd	(%rax,%rsi,8), %xmm0
	addl	$2, %edx
	vmovsd	%xmm0, (%rcx,%rsi,8)
	cmpl	%edx, %edi
	jbe	.L68
	vmovsd	(%rax,%rdx,8), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
.L68:
	movq	(%r14), %rsi
	leaq	8(%rcx), %r10
	movq	%rsi, %rdx
	subq	%r10, %rdx
	cmpq	$48, %rdx
	seta	%dl
	testb	%r8b, %dl
	je	.L69
	movq	%rsi, %rdx
	subq	%r11, %rdx
	cmpq	$48, %rdx
	jbe	.L69
	cmpl	$6, %r9d
	jbe	.L81
	movl	%edi, %r8d
	xorl	%edx, %edx
	shrl	$3, %r8d
	salq	$6, %r8
	.p2align 4,,10
	.p2align 3
.L71:
	vmovupd	(%rax,%rdx), %zmm3
	vsubpd	(%rcx,%rdx), %zmm3, %zmm0
	vmovupd	%zmm0, (%rsi,%rdx)
	addq	$64, %rdx
	cmpq	%r8, %rdx
	jne	.L71
	movl	%edi, %edx
	andl	$-8, %edx
	testb	$7, %dil
	je	.L76
	movl	%edi, %r9d
	subl	%edx, %r9d
	leal	-1(%r9), %r8d
	cmpl	$2, %r8d
	jbe	.L73
.L70:
	movl	%edx, %r8d
	vmovupd	(%rax,%r8,8), %ymm5
	vsubpd	(%rcx,%r8,8), %ymm5, %ymm0
	vmovupd	%ymm0, (%rsi,%r8,8)
	movl	%r9d, %r8d
	andl	$-4, %r8d
	addl	%r8d, %edx
	cmpl	%r9d, %r8d
	je	.L76
.L73:
	movl	%edx, %r8d
	vmovsd	(%rax,%r8,8), %xmm0
	vsubsd	(%rcx,%r8,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%r8,8)
	leal	1(%rdx), %r8d
	cmpl	%edi, %r8d
	jnb	.L76
	vmovsd	(%rax,%r8,8), %xmm0
	vsubsd	(%rcx,%r8,8), %xmm0, %xmm0
	addl	$2, %edx
	vmovsd	%xmm0, (%rsi,%r8,8)
	cmpl	%edx, %edi
	jbe	.L76
	vmovsd	(%rax,%rdx,8), %xmm0
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
.L76:
	movq	%r13, %rsi
	movq	%r12, %rdi
	vzeroupper
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L51:
	.cfi_restore_state
	movq	(%r8), %rax
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$1, %edi
	leaq	8(%rax), %r11
.L78:
	vmovsd	.LC3(%rip), %xmm1
	leal	1(%r9), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L56:
	vmulsd	(%rax,%rdx,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%r12,%rdx,8)
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jne	.L56
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L69:
	leal	1(%r9), %edi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L75:
	vmovsd	(%rax,%rdx,8), %xmm0
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdi, %rdx
	jne	.L75
	jmp	.L76
	.p2align 4,,10
	.p2align 3
.L61:
	leal	1(%r9), %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L67:
	vmovsd	(%rax,%rdx,8), %xmm0
	vmovsd	%xmm0, (%rcx,%rdx,8)
	addq	$1, %rdx
	cmpq	%rdx, %rsi
	jne	.L67
	jmp	.L68
	.p2align 4,,10
	.p2align 3
.L101:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L81:
	.cfi_restore_state
	movl	%edi, %r9d
	xorl	%edx, %edx
	jmp	.L70
.L80:
	xorl	%edx, %edx
	jmp	.L62
.L79:
	xorl	%edx, %edx
	jmp	.L58
.L104:
	movl	%edx, %r8d
	jmp	.L78
.L103:
	leaq	.LC1(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
	.cfi_endproc
.LFE4554:
	.size	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_, .-_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
	.section	.text._Z10FastTwoSumIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10FastTwoSumIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z10FastTwoSumIdEvT_S0_RS0_S1_
	.type	_Z10FastTwoSumIdEvT_S0_RS0_S1_, @function
_Z10FastTwoSumIdEvT_S0_RS0_S1_:
.LFB4555:
	.cfi_startproc
	endbr64
	vaddsd	%xmm1, %xmm0, %xmm0
	vsubsd	%xmm1, %xmm1, %xmm1
	vmovsd	%xmm0, (%rdi)
	vmovsd	%xmm1, (%rsi)
	ret
	.cfi_endproc
.LFE4555:
	.size	_Z10FastTwoSumIdEvT_S0_RS0_S1_, .-_Z10FastTwoSumIdEvT_S0_RS0_S1_
	.section	.text._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"axG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.p2align 4
	.weak	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.type	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_, @function
_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_:
.LFB4556:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4556
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	movslq	%edx, %r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$192, %rsp
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	movq	%r13, %rax
	shrq	$60, %rax
	jne	.L259
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rdi, %r15
	movq	%rsi, %r14
	movq	%r13, %r12
	vmovdqa	%xmm0, 32(%rsp)
	leaq	0(,%r13,8), %rbx
	movq	$0, 48(%rsp)
	testq	%r13, %r13
	je	.L108
	movq	%rbx, %rdi
.LEHB3:
	call	_Znwm@PLT
.LEHE3:
	leaq	(%rax,%rbx), %rcx
	movq	%rax, 32(%rsp)
	leaq	8(%rax), %rdi
	movq	%rcx, 48(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r13
	je	.L173
	cmpq	%rdi, %rcx
	je	.L109
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rcx, 24(%rsp)
	call	memset@PLT
	movq	24(%rsp), %rcx
.L109:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%rcx, 40(%rsp)
	movq	$0, 80(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	leaq	(%rax,%rbx), %rcx
	movq	%rax, 64(%rsp)
	leaq	8(%rax), %rdi
	movq	%rcx, 80(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r13
	je	.L260
	cmpq	%rdi, %rcx
	je	.L110
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rcx, 24(%rsp)
	call	memset@PLT
	movq	24(%rsp), %rcx
.L110:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%rcx, 72(%rsp)
	movq	$0, 112(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
.LEHB5:
	call	_Znwm@PLT
.LEHE5:
	leaq	(%rax,%rbx), %rcx
	movq	%rax, 96(%rsp)
	leaq	8(%rax), %rdi
	movq	%rcx, 112(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r13
	je	.L261
	cmpq	%rdi, %rcx
	je	.L111
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rcx, 24(%rsp)
	call	memset@PLT
	movq	24(%rsp), %rcx
.L111:
	vpxor	%xmm0, %xmm0, %xmm0
	movq	%rbx, %rdi
	movq	%rcx, 104(%rsp)
	movq	$0, 144(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	leaq	(%rax,%rbx), %rcx
	movq	%rax, 128(%rsp)
	leaq	8(%rax), %rdi
	movq	%rcx, 144(%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r13
	je	.L262
	cmpq	%rdi, %rcx
	je	.L112
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	movq	%rcx, 24(%rsp)
	call	memset@PLT
	movq	24(%rsp), %rcx
.L112:
	movq	%rbx, %rdi
	movq	%rcx, 136(%rsp)
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	leaq	(%rax,%rbx), %rdx
	movq	%rax, 24(%rsp)
	movq	%rdx, (%rsp)
	movq	$0x000000000, (%rax)
	cmpq	$1, %r13
	je	.L263
	movq	24(%rsp), %rax
	leaq	8(%rax), %rdi
	cmpq	%rdi, (%rsp)
	je	.L114
	leaq	-8(%rbx), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L114:
	movq	16(%rsp), %rax
	movq	(%r14), %rcx
	movl	%r12d, %ebx
	movq	(%r15), %rsi
	movq	(%rax), %rdx
	leaq	8(%rcx), %r8
	leal	-1(%r12), %eax
	movq	%rdx, %rdi
	subq	%r8, %rdi
	cmpq	$48, %rdi
	seta	%r8b
	cmpl	$2, %eax
	seta	%dil
	testb	%dil, %r8b
	je	.L166
	leaq	8(%rsi), %r8
	movq	%rdx, %rdi
	subq	%r8, %rdi
	cmpq	$48, %rdi
	jbe	.L166
	cmpl	$6, %eax
	jbe	.L177
	movl	%r12d, %edi
	xorl	%eax, %eax
	shrl	$3, %edi
	salq	$6, %rdi
	.p2align 4,,10
	.p2align 3
.L121:
	vmovupd	(%rcx,%rax), %zmm4
	vmulpd	(%rsi,%rax), %zmm4, %zmm0
	vmovupd	%zmm0, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %rdi
	jne	.L121
	movl	%r12d, %eax
	andl	$-8, %eax
	testb	$7, %r12b
	je	.L248
	movl	%r12d, %r8d
	subl	%eax, %r8d
	leal	-1(%r8), %edi
	cmpl	$2, %edi
	jbe	.L116
.L120:
	movl	%eax, %edi
	vmovupd	(%rsi,%rdi,8), %ymm7
	vmulpd	(%rcx,%rdi,8), %ymm7, %ymm0
	vmovupd	%ymm0, (%rdx,%rdi,8)
	movl	%r8d, %edi
	andl	$-4, %edi
	addl	%edi, %eax
	cmpl	%r8d, %edi
	je	.L248
.L116:
	movl	%eax, %edi
	vmovsd	(%rcx,%rdi,8), %xmm0
	vmulsd	(%rsi,%rdi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rdi,8)
	leal	1(%rax), %edi
	cmpl	%edi, %r12d
	jbe	.L248
	vmovsd	(%rcx,%rdi,8), %xmm0
	vmulsd	(%rsi,%rdi,8), %xmm0, %xmm0
	addl	$2, %eax
	vmovsd	%xmm0, (%rdx,%rdi,8)
	cmpl	%eax, %r12d
	jbe	.L248
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	vzeroupper
.L171:
	movq	8(%r15), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	movq	%rax, %r13
	subq	%rsi, %r13
	je	.L178
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r13
	ja	.L264
	movq	%r13, %rdi
.LEHB8:
	call	_Znwm@PLT
.LEHE8:
	movq	%rax, %rcx
	movq	8(%r15), %rax
	movq	(%r15), %rsi
	movq	%rax, %r15
	subq	%rsi, %r15
.L123:
	vmovq	%rcx, %xmm2
	addq	%rcx, %r13
	vpunpcklqdq	%xmm2, %xmm2, %xmm0
	movq	%r13, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	cmpq	%rsi, %rax
	je	.L126
	movq	%rcx, %rdi
	movq	%r15, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L126:
	addq	%r15, %rcx
	leaq	160(%rsp), %r13
	leaq	32(%rsp), %rdx
	movl	%r12d, %esi
	movq	%rcx, 168(%rsp)
	movq	%r13, %rdi
	leaq	64(%rsp), %rcx
.LEHB9:
	call	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE9:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L127
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L127:
	movq	8(%r14), %rax
	movq	(%r14), %rsi
	vpxor	%xmm0, %xmm0, %xmm0
	movq	$0, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	movq	%rax, %r15
	subq	%rsi, %r15
	je	.L179
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %r15
	ja	.L265
	movq	%r15, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rcx
	movq	8(%r14), %rax
	movq	(%r14), %rsi
	movq	%rax, %r14
	subq	%rsi, %r14
.L128:
	vmovq	%rcx, %xmm3
	addq	%rcx, %r15
	vpunpcklqdq	%xmm3, %xmm3, %xmm0
	movq	%r15, 176(%rsp)
	vmovdqa	%xmm0, 160(%rsp)
	cmpq	%rsi, %rax
	je	.L131
	movq	%rcx, %rdi
	movq	%r14, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L131:
	addq	%r14, %rcx
	leaq	96(%rsp), %rdx
	movl	%r12d, %esi
	movq	%r13, %rdi
	movq	%rcx, 168(%rsp)
	leaq	128(%rsp), %rcx
.LEHB11:
	call	_Z5SplitIdEvSt6vectorIT_SaIS1_EEiRS3_S4_
.LEHE11:
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L132
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L132:
	testl	%ebx, %ebx
	je	.L140
	movq	16(%rsp), %rax
	movq	32(%rsp), %rdi
	leal	-1(%rbx), %r10d
	movq	96(%rsp), %rsi
	movq	128(%rsp), %r8
	movq	(%rax), %rcx
	movq	8(%rsp), %rax
	leaq	8(%rdi), %r11
	leaq	8(%rsi), %r12
	movq	64(%rsp), %r9
	movq	(%rax), %rdx
	movq	%rdx, %rax
	subq	%r11, %rax
	movq	%rdx, %r11
	cmpq	$48, %rax
	seta	%al
	subq	%r12, %r11
	leaq	8(%r8), %r12
	cmpq	$48, %r11
	seta	%r11b
	andl	%r11d, %eax
	movq	%rdx, %r11
	subq	%r12, %r11
	leaq	8(%r9), %r12
	cmpq	$48, %r11
	seta	%r11b
	andl	%r11d, %eax
	movq	%rdx, %r11
	subq	%r12, %r11
	leaq	8(%rcx), %r12
	cmpq	$48, %r11
	seta	%r11b
	andl	%r11d, %eax
	movq	%rdx, %r11
	subq	%r12, %r11
	cmpq	$48, %r11
	seta	%r11b
	testb	%r11b, %al
	je	.L136
	cmpl	$2, %r10d
	jbe	.L136
	cmpl	$6, %r10d
	jbe	.L180
	movl	%ebx, %r10d
	xorl	%eax, %eax
	shrl	$3, %r10d
	salq	$6, %r10
	.p2align 4,,10
	.p2align 3
.L138:
	vmovupd	(%rsi,%rax), %zmm5
	vmovupd	(%rdi,%rax), %zmm6
	vaddpd	(%r8,%rax), %zmm5, %zmm0
	vaddpd	(%r9,%rax), %zmm6, %zmm1
	vfmsub213pd	(%rcx,%rax), %zmm1, %zmm0
	vmovupd	%zmm0, (%rdx,%rax)
	addq	$64, %rax
	cmpq	%rax, %r10
	jne	.L138
	movl	%ebx, %eax
	andl	$-8, %eax
	testb	$7, %bl
	je	.L252
	movl	%ebx, %r11d
	subl	%eax, %r11d
	leal	-1(%r11), %r10d
	cmpl	$2, %r10d
	jbe	.L142
.L137:
	movl	%eax, %r10d
	vmovupd	(%rdi,%r10,8), %ymm3
	vmovupd	(%rsi,%r10,8), %ymm2
	vaddpd	(%r9,%r10,8), %ymm3, %ymm0
	vaddpd	(%r8,%r10,8), %ymm2, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm0
	vsubpd	(%rcx,%r10,8), %ymm0, %ymm0
	vmovupd	%ymm0, (%rdx,%r10,8)
	movl	%r11d, %r10d
	andl	$-4, %r10d
	addl	%r10d, %eax
	cmpl	%r10d, %r11d
	je	.L252
.L142:
	movl	%eax, %r10d
	vmovsd	(%r9,%r10,8), %xmm0
	vmovsd	(%r8,%r10,8), %xmm1
	vaddsd	(%rdi,%r10,8), %xmm0, %xmm0
	vaddsd	(%rsi,%r10,8), %xmm1, %xmm1
	vfmsub213sd	(%rcx,%r10,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
	leal	1(%rax), %r10d
	cmpl	%ebx, %r10d
	jnb	.L252
	vmovsd	(%r8,%r10,8), %xmm0
	vmovsd	(%r9,%r10,8), %xmm1
	addl	$2, %eax
	vaddsd	(%rsi,%r10,8), %xmm0, %xmm0
	vaddsd	(%rdi,%r10,8), %xmm1, %xmm1
	vfmsub213sd	(%rcx,%r10,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%r10,8)
	cmpl	%eax, %ebx
	jbe	.L252
	vmovsd	(%rsi,%rax,8), %xmm0
	vmovsd	(%rdi,%rax,8), %xmm1
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm1, %xmm1
	vfmsub213sd	(%rcx,%rax,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	vzeroupper
.L140:
	cmpq	$0, 24(%rsp)
	je	.L135
	movq	24(%rsp), %rdi
	movq	(%rsp), %rsi
	subq	24(%rsp), %rsi
	call	_ZdlPvm@PLT
.L135:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L146
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L146:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L147
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L147:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L148
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L148:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L106
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L106:
	movq	184(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L266
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L108:
	.cfi_restore_state
	movq	$0, 48(%rsp)
	movq	(%rdi), %rsi
	xorl	%ebx, %ebx
	movq	$0, 80(%rsp)
	movq	$0, 112(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, (%rsp)
	movq	$0, 24(%rsp)
	vmovdqa	%xmm0, 64(%rsp)
	vmovdqa	%xmm0, 96(%rsp)
	vmovdqa	%xmm0, 128(%rsp)
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L248:
	vzeroupper
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L178:
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L179:
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L252:
	vzeroupper
	jmp	.L140
	.p2align 4,,10
	.p2align 3
.L173:
	movq	%rdi, %rcx
	jmp	.L109
	.p2align 4,,10
	.p2align 3
.L260:
	movq	%rdi, %rcx
	jmp	.L110
	.p2align 4,,10
	.p2align 3
.L261:
	movq	%rdi, %rcx
	jmp	.L111
	.p2align 4,,10
	.p2align 3
.L262:
	movq	%rdi, %rcx
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L263:
	movq	16(%rsp), %rax
	movq	(%r15), %rsi
	movl	$1, %ebx
	movq	(%r14), %rcx
	movq	(%rax), %rdx
	xorl	%eax, %eax
.L166:
	leal	1(%rax), %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L118:
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	(%rsi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.L118
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L136:
	movl	%ebx, %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L144:
	vmovsd	(%rsi,%rax,8), %xmm0
	vmovsd	(%rdi,%rax,8), %xmm1
	vaddsd	(%r8,%rax,8), %xmm0, %xmm0
	vaddsd	(%r9,%rax,8), %xmm1, %xmm1
	vfmsub213sd	(%rcx,%rax,8), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rbx
	jne	.L144
	jmp	.L140
.L177:
	movl	%r12d, %r8d
	xorl	%eax, %eax
	jmp	.L120
.L180:
	movl	%ebx, %r11d
	xorl	%eax, %eax
	jmp	.L137
.L264:
	testq	%r13, %r13
	jns	.L125
.LEHB12:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L265:
	testq	%r15, %r15
	jns	.L130
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L125:
	call	_ZSt17__throw_bad_allocv@PLT
.L130:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE12:
.L259:
	leaq	.LC1(%rip), %rdi
.LEHB13:
	call	_ZSt20__throw_length_errorPKc@PLT
.L266:
	call	__stack_chk_fail@PLT
.L185:
	endbr64
	movq	%rax, %rbx
	jmp	.L152
.L186:
	endbr64
.L258:
	movq	%rax, %rbx
	jmp	.L153
.L184:
	endbr64
	movq	%rax, %r12
	jmp	.L156
.L153:
	movq	160(%rsp), %rdi
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L152
	vzeroupper
	call	_ZdlPvm@PLT
.L152:
	movq	(%rsp), %rsi
	subq	24(%rsp), %rsi
	cmpq	$0, 24(%rsp)
	je	.L155
	movq	24(%rsp), %rdi
	vzeroupper
	call	_ZdlPvm@PLT
.L155:
	movq	%rbx, %r12
.L156:
	movq	128(%rsp), %rdi
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L158
	vzeroupper
	call	_ZdlPvm@PLT
.L158:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L160
	vzeroupper
	call	_ZdlPvm@PLT
.L160:
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L162
	vzeroupper
	call	_ZdlPvm@PLT
.L162:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L253
	vzeroupper
	call	_ZdlPvm@PLT
.L163:
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE13:
.L183:
	endbr64
	movq	%rax, %r12
	jmp	.L158
.L181:
	endbr64
	movq	%rax, %r12
	jmp	.L162
.L187:
	endbr64
	jmp	.L258
.L182:
	endbr64
	movq	%rax, %r12
	jmp	.L160
.L253:
	vzeroupper
	jmp	.L163
	.cfi_endproc
.LFE4556:
	.section	.gcc_except_table._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"aG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
.LLSDA4556:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4556-.LLSDACSB4556
.LLSDACSB4556:
	.uleb128 .LEHB3-.LFB4556
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB4556
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L181-.LFB4556
	.uleb128 0
	.uleb128 .LEHB5-.LFB4556
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L182-.LFB4556
	.uleb128 0
	.uleb128 .LEHB6-.LFB4556
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L183-.LFB4556
	.uleb128 0
	.uleb128 .LEHB7-.LFB4556
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L184-.LFB4556
	.uleb128 0
	.uleb128 .LEHB8-.LFB4556
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L185-.LFB4556
	.uleb128 0
	.uleb128 .LEHB9-.LFB4556
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L186-.LFB4556
	.uleb128 0
	.uleb128 .LEHB10-.LFB4556
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L185-.LFB4556
	.uleb128 0
	.uleb128 .LEHB11-.LFB4556
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L187-.LFB4556
	.uleb128 0
	.uleb128 .LEHB12-.LFB4556
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L185-.LFB4556
	.uleb128 0
	.uleb128 .LEHB13-.LFB4556
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE4556:
	.section	.text._Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,"axG",@progbits,_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_,comdat
	.size	_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_, .-_Z7TwoProdIdEvSt6vectorIT_SaIS1_EES3_iRS3_S4_
	.section	.text._Z3FMAIdET_S0_S0_S0_,"axG",@progbits,_Z3FMAIdET_S0_S0_S0_,comdat
	.p2align 4
	.weak	_Z3FMAIdET_S0_S0_S0_
	.type	_Z3FMAIdET_S0_S0_S0_, @function
_Z3FMAIdET_S0_S0_S0_:
.LFB4557:
	.cfi_startproc
	endbr64
	vfmadd132sd	%xmm1, %xmm2, %xmm0
	ret
	.cfi_endproc
.LFE4557:
	.size	_Z3FMAIdET_S0_S0_S0_, .-_Z3FMAIdET_S0_S0_S0_
	.section	.text._Z10TwoMultFMAIdEvT_S0_RS0_S1_,"axG",@progbits,_Z10TwoMultFMAIdEvT_S0_RS0_S1_,comdat
	.p2align 4
	.weak	_Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.type	_Z10TwoMultFMAIdEvT_S0_RS0_S1_, @function
_Z10TwoMultFMAIdEvT_S0_RS0_S1_:
.LFB4558:
	.cfi_startproc
	endbr64
	vmulsd	%xmm1, %xmm0, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rsi, %rbx
	vmovsd	%xmm2, (%rdi)
	vxorpd	.LC5(%rip), %xmm2, %xmm2
	call	_Z3FMAIdET_S0_S0_S0_
	vmovsd	%xmm0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4558:
	.size	_Z10TwoMultFMAIdEvT_S0_RS0_S1_, .-_Z10TwoMultFMAIdEvT_S0_RS0_S1_
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_eft.cc, @function
_GLOBAL__sub_I_eft.cc:
.LFB4989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4989:
	.size	_GLOBAL__sub_I_eft.cc, .-_GLOBAL__sub_I_eft.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_eft.cc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	33554432
	.long	1101004800
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC5:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
