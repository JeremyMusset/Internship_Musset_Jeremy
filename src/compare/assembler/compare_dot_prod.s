	.file	"compare_dot_prod.cc"
	.text
	.section	.text._ZNK4blas5Error4whatEv,"axG",@progbits,_ZNK4blas5Error4whatEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNK4blas5Error4whatEv
	.type	_ZNK4blas5Error4whatEv, @function
_ZNK4blas5Error4whatEv:
.LFB3089:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %rax
	ret
	.cfi_endproc
.LFE3089:
	.size	_ZNK4blas5Error4whatEv, .-_ZNK4blas5Error4whatEv
	.section	.text._ZN4blas5ErrorD2Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorD2Ev
	.type	_ZN4blas5ErrorD2Ev, @function
_ZN4blas5ErrorD2Ev:
.LFB4537:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	leaq	24(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L4
	movq	24(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L4:
	movq	%rbp, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSt9exceptionD2Ev@PLT
	.cfi_endproc
.LFE4537:
	.size	_ZN4blas5ErrorD2Ev, .-_ZN4blas5ErrorD2Ev
	.weak	_ZN4blas5ErrorD1Ev
	.set	_ZN4blas5ErrorD1Ev,_ZN4blas5ErrorD2Ev
	.section	.text._ZN4blas5ErrorD0Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorD0Ev
	.type	_ZN4blas5ErrorD0Ev, @function
_ZN4blas5ErrorD0Ev:
.LFB4539:
	.cfi_startproc
	endbr64
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	movq	%rax, (%rdi)
	movq	8(%rdi), %rdi
	leaq	24(%rbp), %rax
	cmpq	%rax, %rdi
	je	.L7
	movq	24(%rbp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L7:
	movq	%rbp, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	movq	%rbp, %rdi
	movl	$40, %esi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4539:
	.size	_ZN4blas5ErrorD0Ev, .-_ZN4blas5ErrorD0Ev
	.section	.rodata._ZN4blas5ErrorC2EPKcS2_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string::_M_construct null not valid"
	.section	.rodata._ZN4blas5ErrorC2EPKcS2_.str1.1,"aMS",@progbits,1
.LC1:
	.string	"basic_string::append"
.LC2:
	.string	", in function "
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorC2EPKcS2_
	.type	_ZN4blas5ErrorC2EPKcS2_, @function
_ZN4blas5ErrorC2EPKcS2_:
.LFB3087:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3087
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	leaq	64(%rsp), %rbx
	movq	%rbx, 48(%rsp)
	movq	%rax, (%rdi)
	testq	%rsi, %rsi
	je	.L10
	movq	%rsi, %rdi
	movq	%rsi, %r12
	leaq	48(%rsp), %r14
	movq	%rdx, %r13
	call	strlen@PLT
	movq	%rax, 8(%rsp)
	movq	%rax, %r15
	cmpq	$15, %rax
	ja	.L36
	cmpq	$1, %rax
	jne	.L14
	movzbl	(%r12), %edx
	movb	%dl, 64(%rsp)
	movq	%rbx, %rdx
.L15:
	movq	%rax, 56(%rsp)
	movb	$0, (%rdx,%rax)
	movabsq	$4611686018427387903, %rax
	subq	56(%rsp), %rax
	cmpq	$13, %rax
	jbe	.L37
	movl	$14, %edx
	leaq	.LC2(%rip), %rsi
	movq	%r14, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE0:
	leaq	32(%rsp), %r12
	leaq	16(%rax), %rdx
	movq	%r12, 16(%rsp)
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	.L38
	movq	%rcx, 16(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)
.L18:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%r13, %rdi
	movq	%rcx, 24(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	call	strlen@PLT
	movq	%rax, %rdx
	movabsq	$4611686018427387903, %rax
	subq	24(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L39
	leaq	16(%rsp), %rdi
	movq	%r13, %rsi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE1:
	leaq	24(%rbp), %rdx
	movq	%rdx, 8(%rbp)
	movq	(%rax), %rcx
	leaq	16(%rax), %rdx
	cmpq	%rdx, %rcx
	je	.L40
	movq	%rcx, 8(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 24(%rbp)
.L21:
	movq	8(%rax), %rcx
	movq	%rdx, (%rax)
	movq	16(%rsp), %rdi
	movq	$0, 8(%rax)
	movq	%rcx, 16(%rbp)
	movb	$0, 16(%rax)
	cmpq	%r12, %rdi
	je	.L22
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L22:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L9
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L9:
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L41
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	testq	%rax, %rax
	jne	.L42
	movq	%rbx, %rdx
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L36:
	leaq	8(%rsp), %rsi
	xorl	%edx, %edx
	movq	%r14, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
.LEHE2:
	movq	%rax, 48(%rsp)
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	movq	%rax, 64(%rsp)
.L13:
	movq	%r15, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	8(%rsp), %rax
	movq	48(%rsp), %rdx
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L38:
	movdqu	16(%rax), %xmm0
	movaps	%xmm0, 32(%rsp)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L40:
	movdqu	16(%rax), %xmm1
	movups	%xmm1, 24(%rbp)
	jmp	.L21
.L37:
	leaq	.LC1(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L39:
	leaq	.LC1(%rip), %rdi
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE4:
.L41:
	call	__stack_chk_fail@PLT
.L10:
	leaq	.LC0(%rip), %rdi
.LEHB5:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE5:
.L42:
	movq	%rbx, %rdi
	jmp	.L13
.L33:
	endbr64
	movq	%rax, %r13
	jmp	.L24
.L32:
	endbr64
	movq	%rax, %r12
	jmp	.L26
.L31:
	endbr64
	movq	%rax, %r12
	jmp	.L28
.L24:
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.L25
	movq	32(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L25:
	movq	%r13, %r12
.L26:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L28
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	call	_ZdlPvm@PLT
.L28:
	movq	%rbp, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	movq	%r12, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
	.cfi_endproc
.LFE3087:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4blas5ErrorC2EPKcS2_,"aG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
.LLSDA3087:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3087-.LLSDACSB3087
.LLSDACSB3087:
	.uleb128 .LEHB0-.LFB3087
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L32-.LFB3087
	.uleb128 0
	.uleb128 .LEHB1-.LFB3087
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L33-.LFB3087
	.uleb128 0
	.uleb128 .LEHB2-.LFB3087
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L31-.LFB3087
	.uleb128 0
	.uleb128 .LEHB3-.LFB3087
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L32-.LFB3087
	.uleb128 0
	.uleb128 .LEHB4-.LFB3087
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L33-.LFB3087
	.uleb128 0
	.uleb128 .LEHB5-.LFB3087
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L31-.LFB3087
	.uleb128 0
	.uleb128 .LEHB6-.LFB3087
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE3087:
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.size	_ZN4blas5ErrorC2EPKcS2_, .-_ZN4blas5ErrorC2EPKcS2_
	.weak	_ZN4blas5ErrorC1EPKcS2_
	.set	_ZN4blas5ErrorC1EPKcS2_,_ZN4blas5ErrorC2EPKcS2_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"dot"
.LC5:
	.string	"n < 0"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4
	.type	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0, @function
_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0:
.LFB4547:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4547
	testq	%rdi, %rdi
	js	.L44
	je	.L57
	cmpq	$1, %rdi
	je	.L52
	movq	%rdi, %rcx
	xorl	%eax, %eax
	pxor	%xmm0, %xmm0
	shrq	%rcx
	salq	$4, %rcx
.L49:
	movupd	(%rsi,%rax), %xmm1
	movupd	(%rdx,%rax), %xmm3
	addq	$16, %rax
	mulpd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	cmpq	%rax, %rcx
	jne	.L49
	movq	%rdi, %rax
	andq	$-2, %rax
	andl	$1, %edi
	je	.L58
.L48:
	movsd	(%rdx,%rax,8), %xmm1
	mulsd	(%rsi,%rax,8), %xmm1
	addsd	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	pxor	%xmm0, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	pxor	%xmm0, %xmm0
	xorl	%eax, %eax
	jmp	.L48
	.section	.gcc_except_table,"a",@progbits
.LLSDA4547:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4547-.LLSDACSB4547
.LLSDACSB4547:
.LLSDACSE4547:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC4547
	.type	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold, @function
_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold:
.LFSB4547:
.L44:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$40, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rax
	.cfi_def_cfa_offset 32
	call	__cxa_allocate_exception@PLT
	leaq	.LC4(%rip), %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movq	%rax, %rbp
.LEHB7:
	call	_ZN4blas5ErrorC1EPKcS2_
.LEHE7:
	leaq	_ZN4blas5ErrorD1Ev(%rip), %rdx
	leaq	_ZTIN4blas5ErrorE(%rip), %rsi
	movq	%rbp, %rdi
.LEHB8:
	call	__cxa_throw@PLT
.L53:
	endbr64
	movq	%rax, %r12
	movq	%rbp, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE4547:
	.section	.gcc_except_table
.LLSDAC4547:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC4547-.LLSDACSBC4547
.LLSDACSBC4547:
	.uleb128 .LEHB7-.LCOLDB6
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L53-.LCOLDB6
	.uleb128 0
	.uleb128 .LEHB8-.LCOLDB6
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSEC4547:
	.section	.text.unlikely
	.text
	.size	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0, .-_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	.section	.text.unlikely
	.size	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold, .-_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0.cold
.LCOLDE6:
	.text
.LHOTE6:
	.section	.rodata._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi.str1.8,"aMS",@progbits,1
	.align 8
.LC7:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.p2align 4
	.weak	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi:
.LFB4094:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4094
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edi, %r15d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$840, %rsp
	.cfi_def_cfa_offset 896
	movq	%rdx, 280(%rsp)
	leaq	528(%rsp), %rbx
	leaq	560(%rsp), %r14
	movq	%rcx, 288(%rsp)
	movq	%rbx, %rdi
	leaq	592(%rsp), %rbp
	movl	%r8d, 200(%rsp)
	movl	%esi, 148(%rsp)
	movl	$4000, %esi
	movq	%fs:40, %rax
	movq	%rax, 824(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 240(%rsp)
.LEHB9:
	call	mpfr_init2@PLT
	movl	$4000, %esi
	movq	%r14, %rdi
	movq	%r14, 224(%rsp)
	call	mpfr_init2@PLT
	movl	$4000, %esi
	movq	%rbp, %rdi
	movq	%rbp, 256(%rsp)
	call	mpfr_init2@PLT
	leaq	624(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %r13
	movq	%rax, 264(%rsp)
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	movslq	%r15d, %rax
	movq	%rax, 32(%rsp)
	shrq	$60, %rax
	jne	.L174
	movq	32(%rsp), %rbx
	leaq	0(,%rbx,8), %r14
	movq	%r14, 96(%rsp)
	testq	%rbx, %rbx
	je	.L61
	movq	%r14, %rdi
	call	_Znwm@PLT
.LEHE9:
	leaq	(%rax,%r14), %rcx
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	movq	%rax, %r12
	movq	%rcx, 296(%rsp)
	movq	%rdi, 56(%rsp)
	cmpq	$1, %rbx
	je	.L62
	movq	%rcx, %rbx
	cmpq	%rcx, %rdi
	je	.L62
	leaq	-8(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%rbx, 56(%rsp)
.L62:
	movq	96(%rsp), %rbx
	movq	%rbx, %rdi
.LEHB10:
	call	_Znwm@PLT
.LEHE10:
	movq	%rax, %rbp
	leaq	(%rax,%rbx), %rax
	cmpq	$1, 32(%rsp)
	movq	%rax, 272(%rsp)
	leaq	8(%rbp), %rax
	movq	$0x000000000, 0(%rbp)
	movq	%rax, 48(%rsp)
	je	.L63
	movq	272(%rsp), %rbx
	movq	%rax, %rdi
	cmpq	%rax, %rbx
	je	.L63
	movq	96(%rsp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
	movq	%rbx, 48(%rsp)
.L63:
	movl	148(%rsp), %eax
	testl	%eax, %eax
	je	.L118
	movl	$0, 144(%rsp)
	movq	32(%rsp), %rax
	movq	$0x000000000, 136(%rsp)
	movq	$0x000000000, 128(%rsp)
	salq	$5, %rax
	movq	%rax, 208(%rsp)
	movq	48(%rsp), %rax
	movq	$0x000000000, 120(%rsp)
	movq	$0x000000000, 112(%rsp)
	subq	%rbp, %rax
	movq	%rax, 16(%rsp)
	movq	56(%rsp), %rax
	movq	$0x000000000, 104(%rsp)
	subq	%r12, %rax
	movq	%rax, 24(%rsp)
	movl	%r15d, %eax
	shrl	%eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, 216(%rsp)
	movl	%r15d, %eax
	andl	$-2, %eax
	movl	%eax, 204(%rsp)
	leal	-1(%r15), %eax
	movq	%rax, 8(%rsp)
	leaq	8(,%rax,8), %rax
	movq	%rax, 88(%rsp)
	leaq	432(%rsp), %rax
	movq	%rax, 232(%rsp)
.L100:
	movl	200(%rsp), %edx
	movl	144(%rsp), %esi
	pxor	%xmm2, %xmm2
	movq	$0, 448(%rsp)
	movq	232(%rsp), %rdi
	movaps	%xmm2, 432(%rsp)
.LEHB11:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	testl	%r15d, %r15d
	je	.L68
	movq	432(%rsp), %rdx
	movq	8(%rsp), %rdi
	leal	1(%r15), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L67:
	movsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	movsd	%xmm0, (%r12,%rax,8)
	movsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	movsd	%xmm0, 0(%rbp,%rax,8)
	addq	$1, %rax
	cmpq	%rdi, %rcx
	jne	.L67
.L68:
	movq	208(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	call	_Znam@PLT
	movq	%rax, 40(%rsp)
	movq	(%rsp), %r14
	movq	%rax, %r13
	xorl	%ebx, %ebx
	testl	%r15d, %r15d
	jne	.L71
	jmp	.L72
	.p2align 4,,10
	.p2align 3
.L119:
	movq	%rax, %rbx
.L71:
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	movsd	(%r12,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	movsd	0(%rbp,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	mpfr_set_d@PLT
	leaq	1(%rbx), %rax
	addq	$32, %r14
	addq	$32, %r13
	cmpq	8(%rsp), %rbx
	jne	.L119
.L72:
	leaq	656(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, 64(%rsp)
	call	mpfr_init2@PLT
	movq	64(%rsp), %rbx
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	call	mpfr_set_d@PLT
	leaq	304(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	movl	%r15d, %edi
	movq	(%rsp), %rsi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	320(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movq	328(%rsp), %rax
	leaq	336(%rsp), %rsi
	xorl	%edi, %edi
	movq	%rax, 152(%rsp)
	movq	312(%rsp), %rax
	movq	%rax, 160(%rsp)
	call	clock_gettime@PLT
	movl	204(%rsp), %esi
	movl	$5, %edx
	movq	216(%rsp), %rcx
.L73:
	testl	%r15d, %r15d
	je	.L175
	movq	$0x000000000, (%rsp)
	xorl	%eax, %eax
	cmpl	$1, %r15d
	je	.L74
	.p2align 4,,10
	.p2align 3
.L75:
	movupd	0(%rbp,%rax), %xmm0
	movupd	(%r12,%rax), %xmm5
	addq	$16, %rax
	movsd	(%rsp), %xmm1
	mulpd	%xmm5, %xmm0
	addsd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	cmpq	%rcx, %rax
	jne	.L75
	cmpl	%r15d, %esi
	je	.L79
	movl	%esi, %eax
.L74:
	movsd	0(%rbp,%rax,8), %xmm0
	mulsd	(%r12,%rax,8), %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
.L79:
	subl	$1, %edx
	jne	.L73
	leaq	352(%rsp), %rsi
	xorl	%edi, %edi
	movl	$5, %ebx
	call	clock_gettime@PLT
	movq	352(%rsp), %rax
	leaq	368(%rsp), %rsi
	xorl	%edi, %edi
	movq	%rax, 168(%rsp)
	movq	336(%rsp), %rax
	movq	%rax, 176(%rsp)
	movq	360(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	344(%rsp), %rax
	movq	%rax, 192(%rsp)
	call	clock_gettime@PLT
.L92:
	movq	16(%rsp), %rax
	pxor	%xmm7, %xmm7
	movq	$0, 512(%rsp)
	movaps	%xmm7, 496(%rsp)
	testq	%rax, %rax
	je	.L121
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L176
	movq	%rax, %rdi
	call	_Znwm@PLT
.LEHE11:
	movq	%rax, %rdi
.L80:
	movq	16(%rsp), %rdx
	movq	%rdi, 496(%rsp)
	leaq	(%rdi,%rdx), %r13
	movq	%r13, 512(%rsp)
	cmpq	%rbp, 48(%rsp)
	je	.L83
	movq	%rbp, %rsi
	call	memcpy@PLT
.L83:
	movq	24(%rsp), %rax
	pxor	%xmm3, %xmm3
	movq	%r13, 504(%rsp)
	movq	$0, 480(%rsp)
	movaps	%xmm3, 464(%rsp)
	testq	%rax, %rax
	je	.L122
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, %rax
	ja	.L177
	movq	%rax, %rdi
.LEHB12:
	call	_Znwm@PLT
.LEHE12:
	movq	%rax, %rdi
.L84:
	movq	24(%rsp), %rdx
	movq	%rdi, 464(%rsp)
	leaq	(%rdi,%rdx), %r13
	movq	%r13, 480(%rsp)
	cmpq	56(%rsp), %r12
	je	.L87
	movq	%r12, %rsi
	call	memcpy@PLT
.L87:
	leaq	496(%rsp), %rax
	movq	%r13, 472(%rsp)
	movl	$1, %ecx
	movl	%r15d, %edx
	leaq	464(%rsp), %r13
	movl	$1, %r8d
	movq	%rax, %rsi
	movq	%rax, 40(%rsp)
	movq	%r13, %rdi
.LEHB13:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE13:
	movq	464(%rsp), %rdi
	movsd	%xmm0, 80(%rsp)
	testq	%rdi, %rdi
	je	.L88
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L88:
	movq	496(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L89
	movq	512(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	subl	$1, %ebx
	jne	.L92
.L91:
	leaq	384(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	pxor	%xmm0, %xmm0
	movq	96(%rsp), %r14
	movq	384(%rsp), %rax
	subq	368(%rsp), %rax
	imulq	$1000000000, %rax, %rax
	addq	392(%rsp), %rax
	movq	%r14, %rdi
	subq	376(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	120(%rsp), %xmm0
	movsd	%xmm0, 120(%rsp)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	malloc@PLT
	movq	%rax, %r14
	testl	%r15d, %r15d
	je	.L95
	movq	88(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movq	88(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
.L95:
	leaq	400(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	movl	$5, %eax
	movq	%r12, 72(%rsp)
	movl	%r15d, %r12d
	movq	%r13, %r15
	movq	%rbp, %r13
	movq	%r14, %rbp
	movq	%rbx, %r14
	movl	%eax, %ebx
.L94:
	movl	$1, %r8d
	movq	%rbp, %rcx
	movq	%r14, %rsi
	movl	%r12d, %edi
	movl	$1, %edx
	call	cblas_ddot@PLT
	subl	$1, %ebx
	jne	.L94
	leaq	416(%rsp), %rsi
	xorl	%edi, %edi
	movq	%r13, %rbp
	movq	%r15, %r13
	movsd	%xmm0, 248(%rsp)
	movl	%r12d, %r15d
	movq	72(%rsp), %r12
	call	clock_gettime@PLT
	pxor	%xmm0, %xmm0
	movq	96(%rsp), %r14
	movq	416(%rsp), %rax
	subq	400(%rsp), %rax
	imulq	$1000000000, %rax, %rax
	addq	424(%rsp), %rax
	movq	%r14, %rdi
	subq	408(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	128(%rsp), %xmm0
	movsd	%xmm0, 128(%rsp)
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%rax, %rbx
	call	malloc@PLT
	movq	%rax, %r14
	testl	%r15d, %r15d
	je	.L98
	movq	88(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	memcpy@PLT
	movq	88(%rsp), %rdx
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	memcpy@PLT
.L98:
	movq	%r13, %rsi
	xorl	%edi, %edi
	movl	$5, %r13d
	call	clock_gettime@PLT
.L97:
	movq	32(%rsp), %rdi
	movq	%r14, %rdx
	movq	%rbx, %rsi
.LEHB14:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	movsd	%xmm0, 72(%rsp)
	subl	$1, %r13d
	jne	.L97
	movq	40(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime@PLT
	pxor	%xmm0, %xmm0
	movl	$4000, %esi
	movq	496(%rsp), %rax
	subq	464(%rsp), %rax
	imulq	$1000000000, %rax, %rax
	addq	504(%rsp), %rax
	subq	472(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	leaq	688(%rsp), %rax
	addsd	136(%rsp), %xmm0
	movq	%rax, %rdi
	movq	%rax, 40(%rsp)
	movsd	%xmm0, 136(%rsp)
	call	mpfr_init2@PLT
	leaq	720(%rsp), %r14
	movl	$4000, %esi
	movq	%r14, %rdi
	call	mpfr_init2@PLT
	leaq	752(%rsp), %r13
	movl	$4000, %esi
	movq	%r13, %rdi
	call	mpfr_init2@PLT
	leaq	784(%rsp), %rbx
	movl	$4000, %esi
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	movsd	(%rsp), %xmm0
	movq	64(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	movq	64(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	240(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movq	64(%rsp), %rbx
	movsd	80(%rsp), %xmm0
	xorl	%edx, %edx
	movq	40(%rsp), %rdi
	movq	%rbx, %rsi
	call	mpfr_sub_d@PLT
	movq	40(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_div@PLT
	movq	40(%rsp), %rsi
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rsi, %rdi
	call	mpfr_set4@PLT
	movq	224(%rsp), %rdi
	movq	40(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	call	mpfr_add@PLT
	movsd	248(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r14, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_set4@PLT
	movq	256(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r14, %rdx
	movq	%rdi, %rsi
	call	mpfr_add@PLT
	movsd	72(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r13, %rsi
	movq	%r13, %rdi
	call	mpfr_set4@PLT
	movq	264(%rsp), %rdi
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rdi, %rsi
	call	mpfr_add@PLT
.LEHE14:
	movq	432(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L99
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L99:
	movq	152(%rsp), %rax
	pxor	%xmm0, %xmm0
	subq	160(%rsp), %rax
	cvtsi2sdq	%rax, %xmm0
	movq	168(%rsp), %rax
	subq	176(%rsp), %rax
	addsd	104(%rsp), %xmm0
	movq	184(%rsp), %rdx
	imulq	$1000000000, %rax, %rax
	subq	192(%rsp), %rdx
	addl	$1, 144(%rsp)
	movsd	%xmm0, 104(%rsp)
	pxor	%xmm0, %xmm0
	addq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	112(%rsp), %xmm0
	movl	144(%rsp), %eax
	movsd	%xmm0, 112(%rsp)
	cmpl	148(%rsp), %eax
	jne	.L100
.L64:
	movslq	148(%rsp), %r13
	movq	240(%rsp), %rsi
	xorl	%ecx, %ecx
	leal	0(%r13,%r13,4), %eax
	movd	%r13d, %xmm1
	movq	%r13, %rdx
	movq	%rsi, %rdi
	movd	%eax, %xmm0
	movd	%eax, %xmm3
	movq	280(%rsp), %rax
	punpckldq	%xmm0, %xmm1
	punpckldq	%xmm0, %xmm3
	movupd	104(%rsp), %xmm0
	movdqa	%xmm1, %xmm2
	cvtdq2pd	%xmm1, %xmm1
	movq	(%rax), %rax
	divpd	%xmm1, %xmm0
	punpcklqdq	%xmm3, %xmm2
	unpckhpd	%xmm1, %xmm1
	pshufd	$238, %xmm2, %xmm2
	cvtdq2pd	%xmm2, %xmm2
	movups	%xmm0, (%rax)
	movupd	120(%rsp), %xmm0
	divpd	%xmm2, %xmm0
	movups	%xmm0, 16(%rax)
	movsd	136(%rsp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rax)
.LEHB15:
	call	mpfr_div_si@PLT
	movq	224(%rsp), %rax
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%rax, %rsi
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movq	256(%rsp), %r14
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r14, %rdi
	call	mpfr_div_si@PLT
	movq	264(%rsp), %r15
	xorl	%ecx, %ecx
	movq	%r13, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div_si@PLT
	movq	288(%rsp), %rbx
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	(%rbx), %rdi
	call	mpfr_set_d@PLT
	movq	(%rbx), %rax
	movl	536(%rsp), %ecx
	xorl	%edx, %edx
	movq	240(%rsp), %rsi
	leaq	32(%rax), %rdi
	movq	%rax, (%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	568(%rsp), %ecx
	xorl	%edx, %edx
	movq	224(%rsp), %rsi
	leaq	64(%rax), %rdi
	movq	%rax, (%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rax
	movl	600(%rsp), %ecx
	xorl	%edx, %edx
	movq	%r14, %rsi
	leaq	96(%rax), %rdi
	movq	%rax, (%rsp)
	call	mpfr_set4@PLT
	movq	(%rbx), %rdi
	movl	632(%rsp), %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	subq	$-128, %rdi
	call	mpfr_set4@PLT
.LEHE15:
	testq	%rbp, %rbp
	je	.L101
	movq	272(%rsp), %rsi
	movq	%rbp, %rdi
	subq	%rbp, %rsi
	call	_ZdlPvm@PLT
.L101:
	testq	%r12, %r12
	je	.L59
	movq	296(%rsp), %rsi
	movq	%r12, %rdi
	subq	%r12, %rsi
	call	_ZdlPvm@PLT
.L59:
	movq	824(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L178
	addq	$840, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L80
	.p2align 4,,10
	.p2align 3
.L122:
	xorl	%edi, %edi
	jmp	.L84
	.p2align 4,,10
	.p2align 3
.L89:
	subl	$1, %ebx
	jne	.L92
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L175:
	movq	$0x000000000, (%rsp)
	jmp	.L79
.L61:
	movq	$0, 56(%rsp)
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	movq	$0, 272(%rsp)
	movq	$0, 296(%rsp)
	movq	$0, 48(%rsp)
	jmp	.L63
.L176:
	testq	%rax, %rax
	jns	.L82
.LEHB16:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE16:
.L177:
	testq	%rax, %rax
	jns	.L86
.LEHB17:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE17:
.L82:
.LEHB18:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE18:
.L86:
.LEHB19:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE19:
.L118:
	movq	$0x000000000, 136(%rsp)
	movq	$0x000000000, 128(%rsp)
	movq	$0x000000000, 120(%rsp)
	movq	$0x000000000, 112(%rsp)
	movq	$0x000000000, 104(%rsp)
	jmp	.L64
.L178:
	call	__stack_chk_fail@PLT
.L174:
	leaq	.LC7(%rip), %rdi
.LEHB20:
	call	_ZSt20__throw_length_errorPKc@PLT
.L123:
	endbr64
	movq	%rax, %rbp
	jmp	.L113
.L127:
	endbr64
	movq	%rax, %rbx
	jmp	.L109
.L125:
	endbr64
	movq	%rax, %rbx
	jmp	.L105
.L124:
	endbr64
	movq	%rax, %rbx
	jmp	.L107
.L126:
	endbr64
	movq	%rax, %rbx
	jmp	.L103
.L113:
	movq	96(%rsp), %rsi
.L114:
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L111:
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE20:
.L103:
	movq	464(%rsp), %rdi
	movq	480(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L105
	call	_ZdlPvm@PLT
.L105:
	movq	496(%rsp), %rdi
	movq	512(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L107
	call	_ZdlPvm@PLT
.L107:
	movq	432(%rsp), %rdi
	movq	448(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L109
	call	_ZdlPvm@PLT
.L109:
	movq	272(%rsp), %rsi
	subq	%rbp, %rsi
	testq	%rbp, %rbp
	je	.L110
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L110:
	movq	296(%rsp), %rsi
	movq	%rbx, %rbp
	subq	%r12, %rsi
	testq	%r12, %r12
	jne	.L114
	jmp	.L111
	.cfi_endproc
.LFE4094:
	.section	.gcc_except_table
.LLSDA4094:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4094-.LLSDACSB4094
.LLSDACSB4094:
	.uleb128 .LEHB9-.LFB4094
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB4094
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L123-.LFB4094
	.uleb128 0
	.uleb128 .LEHB11-.LFB4094
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L124-.LFB4094
	.uleb128 0
	.uleb128 .LEHB12-.LFB4094
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L125-.LFB4094
	.uleb128 0
	.uleb128 .LEHB13-.LFB4094
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L126-.LFB4094
	.uleb128 0
	.uleb128 .LEHB14-.LFB4094
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L124-.LFB4094
	.uleb128 0
	.uleb128 .LEHB15-.LFB4094
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L127-.LFB4094
	.uleb128 0
	.uleb128 .LEHB16-.LFB4094
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L124-.LFB4094
	.uleb128 0
	.uleb128 .LEHB17-.LFB4094
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L125-.LFB4094
	.uleb128 0
	.uleb128 .LEHB18-.LFB4094
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L124-.LFB4094
	.uleb128 0
	.uleb128 .LEHB19-.LFB4094
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L125-.LFB4094
	.uleb128 0
	.uleb128 .LEHB20-.LFB4094
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE4094:
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii,comdat
	.p2align 4
	.weak	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii, @function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii:
.LFB4105:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4105
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%edi, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$664, %rsp
	.cfi_def_cfa_offset 720
	movq	%rdx, 176(%rsp)
	leaq	352(%rsp), %rbx
	leaq	384(%rsp), %r15
	movq	%rcx, 184(%rsp)
	leaq	416(%rsp), %r14
	movq	%r8, 192(%rsp)
	movq	%r9, 200(%rsp)
	movl	%edi, 28(%rsp)
	movq	%rbx, %rdi
	movl	%esi, 60(%rsp)
	movl	$4000, %esi
	movq	%fs:40, %rax
	movq	%rax, 648(%rsp)
	xorl	%eax, %eax
	movq	%rbx, 32(%rsp)
.LEHB21:
	call	mpfr_init2@PLT
	movl	$4000, %esi
	movq	%r15, %rdi
	movq	%r15, 40(%rsp)
	call	mpfr_init2@PLT
	movl	$4000, %esi
	movq	%r14, %rdi
	movq	%r14, 216(%rsp)
	call	mpfr_init2@PLT
	leaq	448(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, %rbp
	movq	%rax, 208(%rsp)
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbx, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r15, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r14, %rdi
	call	mpfr_set_d@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%rbp, %rdi
	call	mpfr_set_d@PLT
	movslq	%r13d, %rax
	movq	%rax, 112(%rsp)
	shrq	$60, %rax
	jne	.L282
	movq	112(%rsp), %rbx
	leaq	0(,%rbx,8), %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %r15
	testq	%rbx, %rbx
	je	.L181
	movq	%rax, %rdi
	call	_Znwm@PLT
.LEHE21:
	leaq	(%rax,%r15), %rdx
	leaq	8(%rax), %rdi
	movq	$0x000000000, (%rax)
	movq	%rax, %r14
	movq	%rdx, 248(%rsp)
	movq	%rdi, 136(%rsp)
	cmpq	$1, %rbx
	je	.L182
	movq	%rdx, %rbx
	cmpq	%rdi, %rdx
	je	.L182
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	call	memset@PLT
	movq	%rbx, 136(%rsp)
.L182:
	movq	120(%rsp), %rbx
	movq	%rbx, %rdi
.LEHB22:
	call	_Znwm@PLT
.LEHE22:
	movq	%rax, %r13
	leaq	(%rax,%rbx), %rax
	cmpq	$1, 112(%rsp)
	movq	%rax, 240(%rsp)
	leaq	8(%r13), %rax
	movq	$0x000000000, 0(%r13)
	movq	%rax, 128(%rsp)
	je	.L183
	movq	240(%rsp), %rbx
	movq	%rax, %rdi
	cmpq	%rax, %rbx
	je	.L183
	movq	120(%rsp), %rax
	xorl	%esi, %esi
	leaq	-8(%rax), %rdx
	call	memset@PLT
	movq	%rbx, 128(%rsp)
.L183:
	movl	60(%rsp), %edx
	testl	%edx, %edx
	je	.L223
	movq	128(%rsp), %rax
	subq	%r13, %rax
	movq	%rax, 144(%rsp)
	movq	%rax, 64(%rsp)
	movq	136(%rsp), %rax
	subq	%r14, %rax
	movq	%rax, 168(%rsp)
	movq	%rax, 72(%rsp)
.L224:
	movq	112(%rsp), %rax
	movl	28(%rsp), %edx
	movl	$0, 56(%rsp)
	salq	$5, %rax
	movq	%rax, 152(%rsp)
	movl	60(%rsp), %eax
	imull	728(%rsp), %eax
	movl	%eax, 224(%rsp)
	movl	%edx, %eax
	shrl	%eax
	subl	$1, %eax
	addq	$1, %rax
	salq	$4, %rax
	movq	%rax, 232(%rsp)
	movl	%edx, %eax
	andl	$-2, %eax
	movl	%eax, 228(%rsp)
	leal	-1(%rdx), %eax
	movq	%rax, 16(%rsp)
	leaq	8(,%rax,8), %rax
	movq	%rax, 48(%rsp)
	leaq	256(%rsp), %rax
	movq	%rax, 160(%rsp)
.L210:
	movl	720(%rsp), %edx
	movl	56(%rsp), %esi
	pxor	%xmm0, %xmm0
	movq	$0, 272(%rsp)
	movq	160(%rsp), %rdi
	movaps	%xmm0, 256(%rsp)
.LEHB23:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	28(%rsp), %edi
	testl	%edi, %edi
	je	.L187
	movl	28(%rsp), %eax
	movq	256(%rsp), %rdx
	movq	16(%rsp), %rdi
	leal	1(%rax), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L186:
	movsd	8(%rdx,%rax,8), %xmm0
	leal	(%rsi,%rax), %ecx
	movsd	%xmm0, (%r14,%rax,8)
	movsd	(%rdx,%rcx,8), %xmm0
	movq	%rax, %rcx
	movsd	%xmm0, 0(%r13,%rax,8)
	addq	$1, %rax
	cmpq	%rcx, %rdi
	jne	.L186
.L187:
	movq	152(%rsp), %rbx
	movq	%rbx, %rdi
	call	_Znam@PLT
	movq	%rbx, %rdi
	movq	%rax, 8(%rsp)
	call	_Znam@PLT
	movl	28(%rsp), %esi
	movq	8(%rsp), %r12
	movq	%rax, %r15
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jne	.L190
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L232:
	movq	%rax, %rbx
.L190:
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	movsd	(%r14,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	movl	$4000, %esi
	movq	%rbp, %rdi
	call	mpfr_init2@PLT
	movsd	0(%r13,%rbx,8), %xmm0
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	mpfr_set_d@PLT
	leaq	1(%rbx), %rax
	addq	$32, %r12
	addq	$32, %rbp
	cmpq	%rbx, 16(%rsp)
	jne	.L232
.L191:
	leaq	480(%rsp), %r12
	movl	$4000, %esi
	movq	%r12, %rdi
	call	mpfr_init2@PLT
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	movq	%r12, %rdi
	call	mpfr_set_d@PLT
	movl	28(%rsp), %ebx
	movq	8(%rsp), %rsi
	movq	%r12, %rcx
	movq	%r15, %rdx
	movl	%ebx, %edi
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	testl	%ebx, %ebx
	je	.L233
	cmpl	$1, %ebx
	movl	$0, %eax
	movq	$0x000000000, 8(%rsp)
	je	.L193
	movq	232(%rsp), %rdx
	.p2align 4,,10
	.p2align 3
.L194:
	movupd	0(%r13,%rax), %xmm0
	movupd	(%r14,%rax), %xmm3
	addq	$16, %rax
	movsd	8(%rsp), %xmm1
	mulpd	%xmm3, %xmm0
	addsd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	cmpq	%rdx, %rax
	jne	.L194
	movl	228(%rsp), %eax
	cmpl	%eax, 28(%rsp)
	je	.L192
.L193:
	movsd	0(%r13,%rax,8), %xmm0
	mulsd	(%r14,%rax,8), %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
.L192:
	cmpq	$0, 144(%rsp)
	pxor	%xmm0, %xmm0
	movq	$0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	je	.L235
	movabsq	$9223372036854775800, %rcx
	cmpq	%rcx, 64(%rsp)
	ja	.L283
	movq	64(%rsp), %rdi
	call	_Znwm@PLT
.LEHE23:
	movq	%rax, %rdi
.L196:
	movq	64(%rsp), %rdx
	movq	%rdi, 320(%rsp)
	leaq	(%rdi,%rdx), %rbx
	movq	%rbx, 336(%rsp)
	cmpq	128(%rsp), %r13
	je	.L199
	movq	%r13, %rsi
	call	memcpy@PLT
.L199:
	pxor	%xmm0, %xmm0
	cmpq	$0, 168(%rsp)
	movq	%rbx, 328(%rsp)
	movq	$0, 304(%rsp)
	movaps	%xmm0, 288(%rsp)
	je	.L236
	movabsq	$9223372036854775800, %rdx
	cmpq	%rdx, 72(%rsp)
	ja	.L284
	movq	72(%rsp), %rdi
.LEHB24:
	call	_Znwm@PLT
.LEHE24:
	movq	%rax, %rdi
.L200:
	movq	72(%rsp), %rdx
	movq	%rdi, 288(%rsp)
	leaq	(%rdi,%rdx), %rbx
	movq	%rbx, 304(%rsp)
	cmpq	136(%rsp), %r14
	je	.L203
	movq	%r14, %rsi
	call	memcpy@PLT
.L203:
	movl	28(%rsp), %edx
	leaq	320(%rsp), %rsi
	movl	$1, %ecx
	leaq	288(%rsp), %rdi
	movl	$1, %r8d
	movq	%rbx, 296(%rsp)
.LEHB25:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE25:
	movq	288(%rsp), %rdi
	movsd	%xmm0, 80(%rsp)
	testq	%rdi, %rdi
	je	.L204
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L204:
	movq	320(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L205
	movq	336(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L205:
	movq	120(%rsp), %rbx
	movq	%rbx, %rdi
	call	malloc@PLT
	movq	%rbx, %rdi
	movq	%rax, %rbp
	call	malloc@PLT
	movl	28(%rsp), %ecx
	testl	%ecx, %ecx
	je	.L206
	movq	48(%rsp), %r15
	movq	%r14, %rsi
	movq	%rbp, %rdi
	movq	%rax, 88(%rsp)
	movq	%r15, %rdx
	call	memcpy@PLT
	movq	88(%rsp), %rdi
	movq	%r15, %rdx
	movq	%r13, %rsi
	movq	%r15, 48(%rsp)
	movq	%rbx, %r15
	call	memcpy@PLT
	movl	28(%rsp), %edi
	movl	$1, %edx
	movq	%rbp, %rsi
	movl	$1, %r8d
	movq	%rax, %rcx
	movq	%rax, 88(%rsp)
	call	cblas_ddot@PLT
	movq	%rbx, %rdi
	movsd	%xmm0, 104(%rsp)
	call	malloc@PLT
	movq	%r15, %rdi
	movq	%rax, %rbx
	call	malloc@PLT
	movq	48(%rsp), %rdx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	movq	%rax, %r15
	call	memcpy@PLT
	movq	48(%rsp), %rdx
	movq	%r13, %rsi
	movq	%r15, %rdi
	call	memcpy@PLT
	movq	88(%rsp), %r9
.L221:
	movq	112(%rsp), %rdi
	movq	%r9, %rdx
	movq	%rbp, %rsi
.LEHB26:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l.constprop.0
	leaq	512(%rsp), %rbx
	movl	$4000, %esi
	movsd	%xmm0, 88(%rsp)
	movq	%rbx, %rdi
	call	mpfr_init2@PLT
	leaq	544(%rsp), %r15
	movl	$4000, %esi
	movq	%r15, %rdi
	call	mpfr_init2@PLT
	leaq	576(%rsp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	movq	%rax, 96(%rsp)
	call	mpfr_init2@PLT
	leaq	608(%rsp), %rbp
	movl	$4000, %esi
	movq	%rbp, %rdi
	call	mpfr_init2@PLT
	movsd	8(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	mpfr_set4@PLT
	movq	32(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbp, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movsd	80(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	40(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%rsi, %rdi
	call	mpfr_add@PLT
	movsd	104(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_set4@PLT
	movq	216(%rsp), %rbp
	xorl	%ecx, %ecx
	movq	%r15, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	mpfr_add@PLT
	movq	96(%rsp), %rbx
	movsd	88(%rsp), %xmm0
	xorl	%edx, %edx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	mpfr_sub_d@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_div@PLT
	movl	$1, %ecx
	xorl	%edx, %edx
	movq	%rbx, %rsi
	movq	%rbx, %rdi
	call	mpfr_set4@PLT
	movq	208(%rsp), %r15
	xorl	%ecx, %ecx
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_add@PLT
	movq	32(%rsp), %rax
	movslq	60(%rsp), %r12
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movq	40(%rsp), %rsi
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rsi, %rdi
	call	mpfr_div_si@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	mpfr_div_si@PLT
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movq	%r15, %rsi
	movq	%r15, %rdi
	call	mpfr_div_si@PLT
	movl	56(%rsp), %r12d
	movl	224(%rsp), %ebx
	xorl	%esi, %esi
	movq	32(%rsp), %rdi
	addl	%r12d, %ebx
	call	mpfr_get_d@PLT
	movq	176(%rsp), %rax
	movslq	%ebx, %rbx
	movq	40(%rsp), %rdi
	xorl	%esi, %esi
	movq	(%rax), %rax
	movsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	184(%rsp), %rax
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	(%rax), %rax
	movsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	192(%rsp), %rax
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	(%rax), %rax
	movsd	%xmm0, (%rax,%rbx,8)
	call	mpfr_get_d@PLT
	movq	200(%rsp), %rax
	movq	256(%rsp), %rdi
	movq	(%rax), %rax
	movsd	%xmm0, (%rax,%rbx,8)
	testq	%rdi, %rdi
	je	.L207
	movq	272(%rsp), %rsi
	addl	$1, %r12d
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	movl	%r12d, 56(%rsp)
	cmpl	60(%rsp), %r12d
	jb	.L210
.L209:
	movq	248(%rsp), %rbp
	subq	%r14, %rbp
	testq	%r13, %r13
	je	.L212
	movq	240(%rsp), %rax
	subq	%r13, %rax
	movq	%rax, 120(%rsp)
	movq	%rax, %rsi
.L222:
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L212:
	testq	%r14, %r14
	je	.L179
	movq	%rbp, %rsi
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
.L179:
	movq	648(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L285
	addq	$664, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L235:
	.cfi_restore_state
	xorl	%edi, %edi
	jmp	.L196
	.p2align 4,,10
	.p2align 3
.L236:
	xorl	%edi, %edi
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L207:
	addl	$1, 56(%rsp)
	movl	56(%rsp), %eax
	cmpl	60(%rsp), %eax
	jb	.L210
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L181:
	movl	60(%rsp), %eax
	testl	%eax, %eax
	je	.L179
	movq	$0, 72(%rsp)
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	movq	$0, 64(%rsp)
	movq	$0, 168(%rsp)
	movq	$0, 144(%rsp)
	movq	$0, 240(%rsp)
	movq	$0, 248(%rsp)
	movq	$0, 136(%rsp)
	movq	$0, 128(%rsp)
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L233:
	movq	$0x000000000, 8(%rsp)
	jmp	.L192
	.p2align 4,,10
	.p2align 3
.L206:
	movl	$1, %r8d
	movq	%rax, %rcx
	movl	$1, %edx
	xorl	%edi, %edi
	movq	%rbp, %rsi
	movq	%rax, 88(%rsp)
	call	cblas_ddot@PLT
	movq	88(%rsp), %r9
	movsd	%xmm0, 104(%rsp)
	jmp	.L221
.L283:
	cmpq	$0, 144(%rsp)
	jns	.L198
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE26:
.L284:
	cmpq	$0, 168(%rsp)
	jns	.L202
.LEHB27:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.LEHE27:
.L198:
.LEHB28:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE28:
.L202:
.LEHB29:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE29:
.L223:
	movq	120(%rsp), %rbp
	movq	%rbp, %rsi
	jmp	.L222
.L285:
	call	__stack_chk_fail@PLT
.L282:
	leaq	.LC7(%rip), %rdi
.LEHB30:
	call	_ZSt20__throw_length_errorPKc@PLT
.L240:
	endbr64
	movq	%rax, %rbx
	jmp	.L215
.L241:
	endbr64
	movq	%rax, %rbx
.L213:
	movq	288(%rsp), %rdi
	movq	304(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L215
	call	_ZdlPvm@PLT
.L215:
	movq	320(%rsp), %rdi
	movq	336(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L217
	call	_ZdlPvm@PLT
.L217:
	movq	256(%rsp), %rdi
	movq	272(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L218
	call	_ZdlPvm@PLT
.L218:
	movq	240(%rsp), %rsi
	subq	%r13, %rsi
	testq	%r13, %r13
	je	.L219
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L219:
	movq	248(%rsp), %rsi
	subq	%r14, %rsi
	testq	%r14, %r14
	je	.L220
.L227:
	movq	%r14, %rdi
	call	_ZdlPvm@PLT
.L220:
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE30:
.L239:
	endbr64
	movq	%rax, %rbx
	jmp	.L217
.L238:
	endbr64
	movq	%rax, %rbx
.L226:
	movq	120(%rsp), %rsi
	jmp	.L227
	.cfi_endproc
.LFE4105:
	.section	.gcc_except_table
.LLSDA4105:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4105-.LLSDACSB4105
.LLSDACSB4105:
	.uleb128 .LEHB21-.LFB4105
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB4105
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L238-.LFB4105
	.uleb128 0
	.uleb128 .LEHB23-.LFB4105
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L239-.LFB4105
	.uleb128 0
	.uleb128 .LEHB24-.LFB4105
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L240-.LFB4105
	.uleb128 0
	.uleb128 .LEHB25-.LFB4105
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L241-.LFB4105
	.uleb128 0
	.uleb128 .LEHB26-.LFB4105
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L239-.LFB4105
	.uleb128 0
	.uleb128 .LEHB27-.LFB4105
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L240-.LFB4105
	.uleb128 0
	.uleb128 .LEHB28-.LFB4105
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L239-.LFB4105
	.uleb128 0
	.uleb128 .LEHB29-.LFB4105
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L240-.LFB4105
	.uleb128 0
	.uleb128 .LEHB30-.LFB4105
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE4105:
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii,comdat
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii, .-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_ii
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.type	_GLOBAL__sub_I_compare_dot_prod.cc, @function
_GLOBAL__sub_I_compare_dot_prod.cc:
.LFB4541:
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
.LFE4541:
	.size	_GLOBAL__sub_I_compare_dot_prod.cc, .-_GLOBAL__sub_I_compare_dot_prod.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_compare_dot_prod.cc
	.weak	_ZTSN4blas5ErrorE
	.section	.rodata._ZTSN4blas5ErrorE,"aG",@progbits,_ZTSN4blas5ErrorE,comdat
	.align 8
	.type	_ZTSN4blas5ErrorE, @object
	.size	_ZTSN4blas5ErrorE, 14
_ZTSN4blas5ErrorE:
	.string	"N4blas5ErrorE"
	.weak	_ZTIN4blas5ErrorE
	.section	.data.rel.ro._ZTIN4blas5ErrorE,"awG",@progbits,_ZTIN4blas5ErrorE,comdat
	.align 8
	.type	_ZTIN4blas5ErrorE, @object
	.size	_ZTIN4blas5ErrorE, 24
_ZTIN4blas5ErrorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN4blas5ErrorE
	.quad	_ZTISt9exception
	.weak	_ZTVN4blas5ErrorE
	.section	.data.rel.ro.local._ZTVN4blas5ErrorE,"awG",@progbits,_ZTVN4blas5ErrorE,comdat
	.align 8
	.type	_ZTVN4blas5ErrorE, @object
	.size	_ZTVN4blas5ErrorE, 40
_ZTVN4blas5ErrorE:
	.quad	0
	.quad	_ZTIN4blas5ErrorE
	.quad	_ZN4blas5ErrorD1Ev
	.quad	_ZN4blas5ErrorD0Ev
	.quad	_ZNK4blas5Error4whatEv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
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
