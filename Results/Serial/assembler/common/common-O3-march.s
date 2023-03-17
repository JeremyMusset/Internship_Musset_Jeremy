	.file	"compare_par.cpp"
	.text
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS1_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS1_, @function
_ZNSt6vectorIdSaIdEEC2ERKS1_:
.LFB4012:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdi, %rbx
	movq	8(%rsi), %rbp
	subq	(%rsi), %rbp
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	je	.L7
	movabsq	$9223372036854775800, %rax
	cmpq	%rax, %rbp
	ja	.L10
	movq	%rbp, %rdi
	call	_Znwm@PLT
	movq	%rax, %rcx
.L2:
	addq	%rcx, %rbp
	movq	%rbp, 16(%rbx)
	vpbroadcastq	%rcx, %xmm0
	vmovdqu	%xmm0, (%rbx)
	movq	8(%r12), %rax
	movq	(%r12), %rsi
	movq	%rax, %rbp
	subq	%rsi, %rbp
	cmpq	%rax, %rsi
	je	.L6
	movq	%rcx, %rdi
	movq	%rbp, %rdx
	call	memmove@PLT
	movq	%rax, %rcx
.L6:
	addq	%rbp, %rcx
	movq	%rcx, 8(%rbx)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	xorl	%ecx, %ecx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L10:
	testq	%rbp, %rbp
	jns	.L4
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.p2align 4,,10
	.p2align 3
.L4:
	call	_ZSt17__throw_bad_allocv@PLT
	.cfi_endproc
.LFE4012:
	.size	_ZNSt6vectorIdSaIdEEC2ERKS1_, .-_ZNSt6vectorIdSaIdEEC2ERKS1_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS1_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS1_,_ZNSt6vectorIdSaIdEEC2ERKS1_
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.section	.text.startup,"ax",@progbits
.LHOTB5:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3676:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3676
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$8000000, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, 120(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	vpbroadcastq	%rax, %xmm0
	leaq	8000000(%rax), %r12
	leaq	8(%rax), %rdi
	movq	%r12, 16(%rsp)
	movq	$0x000000000, (%rax)
	movq	%rax, %rbx
	vmovdqa	%xmm0, (%rsp)
	cmpq	%r12, %rdi
	je	.L12
	movl	$7999992, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L12:
	movl	$8000000, %edi
	movq	%r12, 8(%rsp)
	movq	$0, 48(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	vpbroadcastq	%rax, %xmm0
	leaq	8000000(%rax), %r13
	leaq	8(%rax), %rdi
	movq	%r13, 48(%rsp)
	movq	$0x000000000, (%rax)
	movq	%rax, %r12
	vmovdqa	%xmm0, 32(%rsp)
	cmpq	%r13, %rdi
	je	.L13
	movl	$7999992, %edx
	xorl	%esi, %esi
	call	memset@PLT
.L13:
	movq	%r13, 40(%rsp)
	vbroadcastsd	.LC3(%rip), %ymm1
	vbroadcastsd	.LC4(%rip), %ymm0
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L14:
	vmovupd	%ymm1, (%rbx,%rax)
	vmovupd	%ymm0, (%r12,%rax)
	addq	$32, %rax
	cmpq	$8000000, %rax
	jne	.L14
	leaq	96(%rsp), %r13
	leaq	32(%rsp), %rsi
	movq	%r13, %rdi
	vzeroupper
.LEHB2:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE2:
	leaq	64(%rsp), %r12
	movq	%rsp, %rsi
	movq	%r12, %rdi
.LEHB3:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE3:
	movl	$8, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movl	$1000000, %edx
	movq	%r13, %rsi
	movq	%r12, %rdi
.LEHB4:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE4:
	movq	64(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L15
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L15:
	movq	96(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L16
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L16:
	movq	32(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L17
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L17:
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L18
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L18:
	movq	120(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L60
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	xorl	%eax, %eax
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L60:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
.L31:
	endbr64
	movq	%rax, %r12
	jmp	.L19
.L28:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L25
.L30:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L21
.L29:
	endbr64
	movq	%rax, %r12
	vzeroupper
	jmp	.L23
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3676-.LLSDACSB3676
.LLSDACSB3676:
	.uleb128 .LEHB0-.LFB3676
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3676
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L28-.LFB3676
	.uleb128 0
	.uleb128 .LEHB2-.LFB3676
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L29-.LFB3676
	.uleb128 0
	.uleb128 .LEHB3-.LFB3676
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L30-.LFB3676
	.uleb128 0
	.uleb128 .LEHB4-.LFB3676
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L31-.LFB3676
	.uleb128 0
.LLSDACSE3676:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3676
	.type	main.cold, @function
main.cold:
.LFSB3676:
.L19:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -40
	.cfi_offset 6, -16
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	movq	64(%rsp), %rdi
	movq	80(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L58
	vzeroupper
	call	_ZdlPvm@PLT
.L21:
	movq	96(%rsp), %rdi
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L23
	call	_ZdlPvm@PLT
.L23:
	movq	32(%rsp), %rdi
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L25
	call	_ZdlPvm@PLT
.L25:
	movq	(%rsp), %rdi
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	testq	%rdi, %rdi
	je	.L26
	call	_ZdlPvm@PLT
.L26:
	movq	%r12, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L58:
	vzeroupper
	jmp	.L21
	.cfi_endproc
.LFE3676:
	.section	.gcc_except_table
.LLSDAC3676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3676-.LLSDACSBC3676
.LLSDACSBC3676:
	.uleb128 .LEHB5-.LCOLDB5
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSEC3676:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE5:
	.section	.text.startup
.LHOTE5:
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB4430:
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
.LFE4430:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC3:
	.long	-1717986918
	.long	1070176665
	.align 8
.LC4:
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
