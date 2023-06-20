	.file	"compare_par.cpp"
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
.LFB4331:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rbp
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
.LFE4331:
	.size	_ZN4blas5ErrorD2Ev, .-_ZN4blas5ErrorD2Ev
	.weak	_ZN4blas5ErrorD1Ev
	.set	_ZN4blas5ErrorD1Ev,_ZN4blas5ErrorD2Ev
	.section	.text._ZN4blas5ErrorD0Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN4blas5ErrorD0Ev
	.type	_ZN4blas5ErrorD0Ev, @function
_ZN4blas5ErrorD0Ev:
.LFB4333:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rax
	movq	%rax, (%rdi)
	movq	%rdi, %rbp
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
.LFE4333:
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
	movq	%rdx, %r13
	call	strlen@PLT
	movq	%rax, 8(%rsp)
	leaq	48(%rsp), %r14
	movq	%rax, %r15
	cmpq	$15, %rax
	ja	.L37
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
	jbe	.L38
	movl	$14, %edx
	leaq	.LC2(%rip), %rsi
	movq	%r14, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE0:
	leaq	32(%rsp), %r12
	movq	%r12, 16(%rsp)
	leaq	16(%rax), %rdx
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	.L39
	movq	%rcx, 16(%rsp)
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rsp)
.L18:
	movq	8(%rax), %rcx
	movb	$0, 16(%rax)
	movq	%rcx, 24(%rsp)
	movq	%rdx, (%rax)
	movq	$0, 8(%rax)
	movq	%r13, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	movabsq	$4611686018427387903, %rax
	subq	24(%rsp), %rax
	cmpq	%rax, %rdx
	ja	.L40
	leaq	16(%rsp), %rdi
	movq	%r13, %rsi
.LEHB1:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm@PLT
.LEHE1:
	leaq	24(%rbp), %rdx
	movq	%rdx, 8(%rbp)
	leaq	16(%rax), %rdx
	movq	(%rax), %rcx
	cmpq	%rdx, %rcx
	je	.L41
	movq	%rcx, 8(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, 24(%rbp)
.L21:
	movq	%rdx, (%rax)
	movq	8(%rax), %rcx
	movq	$0, 8(%rax)
	movq	16(%rsp), %rdi
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
	jne	.L42
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
	jne	.L43
	movq	%rbx, %rdx
	jmp	.L15
	.p2align 4,,10
	.p2align 3
.L37:
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
.L39:
	vmovdqu	16(%rax), %xmm0
	vmovdqa	%xmm0, 32(%rsp)
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L41:
	vmovdqu	16(%rax), %xmm1
	vmovdqu	%xmm1, 24(%rbp)
	jmp	.L21
.L38:
	leaq	.LC1(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L40:
	leaq	.LC1(%rip), %rdi
.LEHB4:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE4:
.L42:
	call	__stack_chk_fail@PLT
.L10:
	leaq	.LC0(%rip), %rdi
.LEHB5:
	call	_ZSt19__throw_logic_errorPKc@PLT
.LEHE5:
.L43:
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
	vzeroupper
	call	_ZdlPvm@PLT
.L25:
	movq	%r13, %r12
.L26:
	movq	48(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.L28
	movq	64(%rsp), %rax
	leaq	1(%rax), %rsi
	vzeroupper
	call	_ZdlPvm@PLT
.L28:
	movq	%rbp, %rdi
	vzeroupper
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
	.section	.text._ZN4blas8internal8throw_ifEbPKcS2_,"axG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
	.p2align 4
	.weak	_ZN4blas8internal8throw_ifEbPKcS2_
	.type	_ZN4blas8internal8throw_ifEbPKcS2_, @function
_ZN4blas8internal8throw_ifEbPKcS2_:
.LFB3108:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3108
	endbr64
	testb	%dil, %dil
	jne	.L52
	ret
.L52:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	$40, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdx, 8(%rsp)
	movq	%rsi, (%rsp)
	call	__cxa_allocate_exception@PLT
	movq	8(%rsp), %rdx
	movq	(%rsp), %rsi
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
.L47:
	endbr64
	movq	%rax, %r12
.L46:
	movq	%rbp, %rdi
	vzeroupper
	call	__cxa_free_exception@PLT
	movq	%r12, %rdi
	call	_Unwind_Resume@PLT
.LEHE8:
	.cfi_endproc
.LFE3108:
	.section	.gcc_except_table._ZN4blas8internal8throw_ifEbPKcS2_,"aG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
.LLSDA3108:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3108-.LLSDACSB3108
.LLSDACSB3108:
	.uleb128 .LEHB7-.LFB3108
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L47-.LFB3108
	.uleb128 0
	.uleb128 .LEHB8-.LFB3108
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE3108:
	.section	.text._ZN4blas8internal8throw_ifEbPKcS2_,"axG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
	.size	_ZN4blas8internal8throw_ifEbPKcS2_, .-_ZN4blas8internal8throw_ifEbPKcS2_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"dot"
.LC6:
	.string	"n < 0"
.LC7:
	.string	"incx == 0"
.LC8:
	.string	"incy == 0"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3676:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$8000000, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	call	malloc@PLT
	movl	$8000000, %edi
	movq	%rax, %rbx
	call	malloc@PLT
	vbroadcastsd	.LC9(%rip), %ymm1
	vbroadcastsd	.LC10(%rip), %ymm0
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L54:
	vmovupd	%ymm1, (%rbx,%rdx)
	vmovupd	%ymm0, (%rax,%rdx)
	addq	$32, %rdx
	cmpq	$8000000, %rdx
	jne	.L54
	leaq	.LC5(%rip), %r12
	movq	%r12, %rdx
	leaq	.LC6(%rip), %rsi
	xorl	%edi, %edi
	vzeroupper
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	movq	%r12, %rdx
	leaq	.LC7(%rip), %rsi
	xorl	%edi, %edi
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	movq	%r12, %rdx
	leaq	.LC8(%rip), %rsi
	xorl	%edi, %edi
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	popq	%rbx
	popq	%r12
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3676:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB4335:
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
	leaq	__dso_handle(%rip), %rdx
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE4335:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC9:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC10:
	.long	858993459
	.long	1070805811
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
