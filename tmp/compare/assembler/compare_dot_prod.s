	.file	"compare_dot_prod.cc"
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB538:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE538:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB958:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt9exception(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE958:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB983:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE983:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB1058:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L8
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	jmp	.L9
.L8:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	nop
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1058:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.rodata
.LC0:
	.string	", in function "
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.align 2
	.weak	_ZN4blas5ErrorC2EPKcS2_
	.type	_ZN4blas5ErrorC2EPKcS2_, @function
_ZN4blas5ErrorC2EPKcS2_:
.LFB3006:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3006
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionC2Ev
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-97(%rbp), %rdx
	movq	-128(%rbp), %rcx
	leaq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
.LEHE0:
	leaq	-96(%rbp), %rax
	leaq	-64(%rbp), %rcx
	leaq	.LC0(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE1:
	movq	-120(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	-136(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
.LEHB2:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE2:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L14
	jmp	.L18
.L17:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L12
.L16:
	endbr64
	movq	%rax, %rbx
.L12:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L13
.L15:
	endbr64
	movq	%rax, %rbx
.L13:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L18:
	call	__stack_chk_fail@PLT
.L14:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3006:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN4blas5ErrorC2EPKcS2_,"aG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
.LLSDA3006:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3006-.LLSDACSB3006
.LLSDACSB3006:
	.uleb128 .LEHB0-.LFB3006
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L15-.LFB3006
	.uleb128 0
	.uleb128 .LEHB1-.LFB3006
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB3006
	.uleb128 0
	.uleb128 .LEHB2-.LFB3006
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L17-.LFB3006
	.uleb128 0
	.uleb128 .LEHB3-.LFB3006
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE3006:
	.section	.text._ZN4blas5ErrorC2EPKcS2_,"axG",@progbits,_ZN4blas5ErrorC5EPKcS2_,comdat
	.size	_ZN4blas5ErrorC2EPKcS2_, .-_ZN4blas5ErrorC2EPKcS2_
	.weak	_ZN4blas5ErrorC1EPKcS2_
	.set	_ZN4blas5ErrorC1EPKcS2_,_ZN4blas5ErrorC2EPKcS2_
	.section	.text._ZNK4blas5Error4whatEv,"axG",@progbits,_ZNK4blas5Error4whatEv,comdat
	.align 2
	.weak	_ZNK4blas5Error4whatEv
	.type	_ZNK4blas5Error4whatEv, @function
_ZNK4blas5Error4whatEv:
.LFB3008:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3008:
	.size	_ZNK4blas5Error4whatEv, .-_ZNK4blas5Error4whatEv
	.section	.text._ZN4blas8internal8throw_ifEbPKcS2_,"axG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
	.weak	_ZN4blas8internal8throw_ifEbPKcS2_
	.type	_ZN4blas8internal8throw_ifEbPKcS2_, @function
_ZN4blas8internal8throw_ifEbPKcS2_:
.LFB3027:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3027
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%al, -20(%rbp)
	cmpb	$0, -20(%rbp)
	je	.L25
	movl	$40, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB4:
	call	_ZN4blas5ErrorC1EPKcS2_
.LEHE4:
	leaq	_ZN4blas5ErrorD1Ev(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTIN4blas5ErrorE(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB5:
	call	__cxa_throw@PLT
.L24:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE5:
.L25:
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3027:
	.section	.gcc_except_table._ZN4blas8internal8throw_ifEbPKcS2_,"aG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
.LLSDA3027:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3027-.LLSDACSB3027
.LLSDACSB3027:
	.uleb128 .LEHB4-.LFB3027
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L24-.LFB3027
	.uleb128 0
	.uleb128 .LEHB5-.LFB3027
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE3027:
	.section	.text._ZN4blas8internal8throw_ifEbPKcS2_,"axG",@progbits,_ZN4blas8internal8throw_ifEbPKcS2_,comdat
	.size	_ZN4blas8internal8throw_ifEbPKcS2_, .-_ZN4blas8internal8throw_ifEbPKcS2_
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4201:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4201
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1304, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1252(%rbp)
	vmovsd	%xmm0, -1264(%rbp)
	movl	%esi, -1256(%rbp)
	vmovsd	%xmm1, -1272(%rbp)
	movq	%rdx, -1280(%rbp)
	movq	%rcx, -1288(%rbp)
	movl	%r8d, -1292(%rbp)
	movl	%r9d, -1296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB6:
	call	mpfr_init2@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-416(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-384(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-352(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-320(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-288(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
.LEHE6:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1184(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1176(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1168(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1152(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1144(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1136(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1128(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1120(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1016(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1008(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1112(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1104(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1096(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1088(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1000(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -992(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1080(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1072(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-1252(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE7:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-1252(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE8:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -1240(%rbp)
	jmp	.L27
.L70:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1Ev
	movl	-1292(%rbp), %edx
	movl	-1240(%rbp), %ecx
	leaq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB9:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	$0, -1236(%rbp)
	jmp	.L28
.L29:
	movl	-1236(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -1304(%rbp)
	movl	-1236(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	-1252(%rbp), %edx
	movl	-1236(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -1304(%rbp)
	movl	-1236(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-1236(%rbp)
.L28:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1236(%rbp)
	jb	.L29
	movl	-1252(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L30
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L101
.L30:
	call	__cxa_throw_bad_array_new_length@PLT
.L101:
	movq	%rax, -984(%rbp)
	movl	-1252(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L32
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L102
.L32:
	call	__cxa_throw_bad_array_new_length@PLT
.L102:
	movq	%rax, -976(%rbp)
	movl	$0, -1232(%rbp)
	jmp	.L34
.L35:
	movl	-1232(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-984(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-1232(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-1232(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-984(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-1232(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-976(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-1232(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-1232(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-976(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	incl	-1232(%rbp)
.L34:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1232(%rbp)
	jb	.L35
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-928(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	leaq	-256(%rbp), %rax
	movq	-976(%rbp), %rdx
	movq	-984(%rbp), %rsi
	movl	-1252(%rbp), %edi
	movq	%rax, %rcx
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	-912(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-904(%rbp), %rax
	movq	-920(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1184(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1184(%rbp)
	movl	$0, -1228(%rbp)
	jmp	.L36
.L37:
	movl	-1228(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-984(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	movl	-1228(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-976(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	incl	-1228(%rbp)
.L36:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1228(%rbp)
	jb	.L37
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1064(%rbp)
	movl	$0, -1224(%rbp)
	jmp	.L38
.L39:
	movl	-1224(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -1304(%rbp)
	movl	-1224(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-1304(%rbp), %xmm0, %xmm0
	vmovsd	-1064(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1064(%rbp)
	incl	-1224(%rbp)
.L38:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1224(%rbp)
	jb	.L39
	leaq	-896(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1220(%rbp)
	jmp	.L40
.L46:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1064(%rbp)
	leaq	-864(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1216(%rbp)
	jmp	.L41
.L42:
	movl	-1216(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -1304(%rbp)
	movl	-1216(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-1304(%rbp), %xmm0, %xmm0
	vmovsd	-1064(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1064(%rbp)
	incl	-1216(%rbp)
.L41:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1216(%rbp)
	jb	.L42
	leaq	-848(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-848(%rbp), %rax
	movq	-864(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-840(%rbp), %rax
	movq	-856(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	cmpl	$0, -1220(%rbp)
	jne	.L43
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1128(%rbp)
.L43:
	vmovsd	-1128(%rbp), %xmm0
	vcomisd	-936(%rbp), %xmm0
	jbe	.L44
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1128(%rbp)
.L44:
	incl	-1220(%rbp)
.L40:
	cmpl	$4, -1220(%rbp)
	jbe	.L46
	leaq	-880(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-1096(%rbp), %xmm0
	vaddsd	-1128(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -1096(%rbp)
	movq	-880(%rbp), %rax
	movq	-896(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-872(%rbp), %rax
	movq	-888(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1176(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1176(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1056(%rbp)
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE9:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE10:
	movl	-1252(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB11:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE11:
	vmovq	%xmm0, %rax
	movq	%rax, -1056(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-832(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1212(%rbp)
	jmp	.L47
.L51:
	leaq	-800(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE12:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE13:
	movl	-1252(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB14:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE14:
	vmovq	%xmm0, %rax
	movq	%rax, -1056(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-784(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-784(%rbp), %rax
	movq	-800(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-776(%rbp), %rax
	movq	-792(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	cmpl	$0, -1212(%rbp)
	jne	.L48
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1120(%rbp)
.L48:
	vmovsd	-1120(%rbp), %xmm0
	vcomisd	-936(%rbp), %xmm0
	jbe	.L49
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1120(%rbp)
.L49:
	incl	-1212(%rbp)
.L47:
	cmpl	$4, -1212(%rbp)
	jbe	.L51
	leaq	-816(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-1088(%rbp), %xmm0
	vaddsd	-1120(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -1088(%rbp)
	movq	-816(%rbp), %rax
	movq	-832(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-808(%rbp), %rax
	movq	-824(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1168(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1168(%rbp)
	movl	-1296(%rbp), %eax
	movl	%eax, %edi
	call	omp_set_num_threads@PLT
	leaq	-768(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1048(%rbp)
	vmovsd	-1048(%rbp), %xmm0
	vmovsd	%xmm0, -464(%rbp)
	movl	-1252(%rbp), %eax
	movl	%eax, -456(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-480(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-464(%rbp), %xmm0
	vmovsd	%xmm0, -1048(%rbp)
	movl	$0, -1208(%rbp)
	jmp	.L52
.L53:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1048(%rbp)
	vmovsd	-1048(%rbp), %xmm0
	vmovsd	%xmm0, -464(%rbp)
	movl	-1252(%rbp), %eax
	movl	%eax, -456(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-480(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-464(%rbp), %xmm0
	vmovsd	%xmm0, -1048(%rbp)
	incl	-1208(%rbp)
.L52:
	cmpl	$4, -1208(%rbp)
	jbe	.L53
	leaq	-752(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-752(%rbp), %rax
	movq	-768(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-744(%rbp), %rax
	movq	-760(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1160(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1160(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1040(%rbp)
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE15:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE16:
	movl	-1296(%rbp), %ecx
	movl	-1252(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	%ecx, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB17:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE17:
	vmovq	%xmm0, %rax
	movq	%rax, -1040(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-736(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1204(%rbp)
	jmp	.L54
.L55:
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE18:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE19:
	movl	-1296(%rbp), %ecx
	movl	-1252(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	%ecx, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB20:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE20:
	vmovq	%xmm0, %rax
	movq	%rax, -1040(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-1204(%rbp)
.L54:
	cmpl	$4, -1204(%rbp)
	jbe	.L55
	leaq	-720(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-720(%rbp), %rax
	movq	-736(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-712(%rbp), %rax
	movq	-728(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1152(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1152(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1032(%rbp)
	movl	-1252(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -968(%rbp)
	movl	-1252(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -960(%rbp)
	movl	$0, -1200(%rbp)
	jmp	.L56
.L57:
	movl	-1200(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-1200(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-968(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	movl	-1200(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-1200(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-960(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	incl	-1200(%rbp)
.L56:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1200(%rbp)
	jb	.L57
	movq	-960(%rbp), %rdx
	movq	-968(%rbp), %rsi
	movl	-1252(%rbp), %eax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	cblas_ddot@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -1032(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1196(%rbp)
	jmp	.L58
.L62:
	leaq	-672(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-960(%rbp), %rdx
	movq	-968(%rbp), %rsi
	movl	-1252(%rbp), %eax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	cblas_ddot@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -1032(%rbp)
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-656(%rbp), %rax
	movq	-672(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-648(%rbp), %rax
	movq	-664(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	cmpl	$0, -1196(%rbp)
	jne	.L59
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1112(%rbp)
.L59:
	vmovsd	-1112(%rbp), %xmm0
	vcomisd	-936(%rbp), %xmm0
	jbe	.L60
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1112(%rbp)
.L60:
	incl	-1196(%rbp)
.L58:
	cmpl	$4, -1196(%rbp)
	jbe	.L62
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-1080(%rbp), %xmm0
	vaddsd	-1112(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -1080(%rbp)
	movq	-688(%rbp), %rax
	movq	-704(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-680(%rbp), %rax
	movq	-696(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1144(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1144(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -1024(%rbp)
	movl	-1252(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -952(%rbp)
	movl	-1252(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -944(%rbp)
	movl	$0, -1192(%rbp)
	jmp	.L63
.L64:
	movl	-1192(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-1192(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-952(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	movl	-1192(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-1192(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-944(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	incl	-1192(%rbp)
.L63:
	movl	-1252(%rbp), %eax
	cmpl	%eax, -1192(%rbp)
	jb	.L64
	movl	-1252(%rbp), %eax
	cltq
	movq	-944(%rbp), %rdx
	movq	-952(%rbp), %rsi
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB21:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	vmovq	%xmm0, %rax
	movq	%rax, -1024(%rbp)
	leaq	-640(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -1188(%rbp)
	jmp	.L65
.L69:
	leaq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	-1252(%rbp), %eax
	cltq
	movq	-944(%rbp), %rdx
	movq	-952(%rbp), %rsi
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	vmovq	%xmm0, %rax
	movq	%rax, -1024(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-480(%rbp), %rax
	movq	-512(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-472(%rbp), %rax
	movq	-504(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	cmpl	$0, -1188(%rbp)
	jne	.L66
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1104(%rbp)
.L66:
	vmovsd	-1104(%rbp), %xmm0
	vcomisd	-936(%rbp), %xmm0
	jbe	.L67
	vmovsd	-936(%rbp), %xmm0
	vmovsd	%xmm0, -1104(%rbp)
.L67:
	incl	-1188(%rbp)
.L65:
	cmpl	$4, -1188(%rbp)
	jbe	.L69
	leaq	-624(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-1072(%rbp), %xmm0
	vaddsd	-1104(%rbp), %xmm0, %xmm0
	vmovsd	%xmm0, -1072(%rbp)
	movq	-624(%rbp), %rax
	movq	-640(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-616(%rbp), %rax
	movq	-632(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-1136(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1136(%rbp)
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-1064(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-128(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-1056(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-224(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-224(%rbp), %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-1032(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-192(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-192(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-1024(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-160(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-160(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-1048(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-96(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-1040(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-64(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
.LEHE21:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-1240(%rbp)
.L27:
	movl	-1256(%rbp), %eax
	cmpl	%eax, -1240(%rbp)
	jb	.L70
	vcvtsi2sdl	-1256(%rbp), %xmm0, %xmm0
	vmovsd	-1184(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1184(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1176(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1176(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1168(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1168(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1160(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1160(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1152(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1152(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1144(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1144(%rbp)
	movl	-1256(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-1136(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1136(%rbp)
	vcvtsi2sdl	-1256(%rbp), %xmm0, %xmm0
	vmovsd	-1096(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1096(%rbp)
	vcvtsi2sdl	-1256(%rbp), %xmm0, %xmm0
	vmovsd	-1088(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1088(%rbp)
	vcvtsi2sdl	-1256(%rbp), %xmm0, %xmm0
	vmovsd	-1080(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1080(%rbp)
	vcvtsi2sdl	-1256(%rbp), %xmm0, %xmm0
	vmovsd	-1072(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -1072(%rbp)
	vmovsd	-1184(%rbp), %xmm6
	vmovsd	%xmm6, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	vmovsd	-1096(%rbp), %xmm7
	vmovsd	%xmm7, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm7
	vmovsd	%xmm7, (%rax)
	vmovsd	-1088(%rbp), %xmm2
	vmovsd	%xmm2, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	-1160(%rbp), %xmm3
	vmovsd	%xmm3, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-1152(%rbp), %xmm4
	vmovsd	%xmm4, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	vmovsd	-1080(%rbp), %xmm5
	vmovsd	%xmm5, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	vmovsd	-1072(%rbp), %xmm6
	vmovsd	%xmm6, -1304(%rbp)
	movq	-1280(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1304(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB22:
	call	mpfr_div_si@PLT
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1256(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movq	-1288(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-440(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-448(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-408(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-416(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-376(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-384(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-344(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-352(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-312(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-320(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-280(%rbp), %ebx
	movq	-1288(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-288(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
.LEHE22:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L84
	jmp	.L103
.L85:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.L86:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L73
.L89:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L75
.L88:
	endbr64
	movq	%rax, %rbx
.L75:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L76
.L91:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L78
.L90:
	endbr64
	movq	%rax, %rbx
.L78:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L76
.L93:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L80
.L92:
	endbr64
	movq	%rax, %rbx
.L80:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L76
.L95:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L82
.L94:
	endbr64
	movq	%rax, %rbx
.L82:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L76
.L87:
	endbr64
	movq	%rax, %rbx
.L76:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L83
.L96:
	endbr64
	movq	%rax, %rbx
.L83:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L73:
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE23:
.L103:
	call	__stack_chk_fail@PLT
.L84:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4201:
	.section	.gcc_except_table._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
.LLSDA4201:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4201-.LLSDACSB4201
.LLSDACSB4201:
	.uleb128 .LEHB6-.LFB4201
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4201
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L85-.LFB4201
	.uleb128 0
	.uleb128 .LEHB8-.LFB4201
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L86-.LFB4201
	.uleb128 0
	.uleb128 .LEHB9-.LFB4201
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L87-.LFB4201
	.uleb128 0
	.uleb128 .LEHB10-.LFB4201
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L88-.LFB4201
	.uleb128 0
	.uleb128 .LEHB11-.LFB4201
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L89-.LFB4201
	.uleb128 0
	.uleb128 .LEHB12-.LFB4201
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L87-.LFB4201
	.uleb128 0
	.uleb128 .LEHB13-.LFB4201
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L90-.LFB4201
	.uleb128 0
	.uleb128 .LEHB14-.LFB4201
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L91-.LFB4201
	.uleb128 0
	.uleb128 .LEHB15-.LFB4201
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L87-.LFB4201
	.uleb128 0
	.uleb128 .LEHB16-.LFB4201
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L92-.LFB4201
	.uleb128 0
	.uleb128 .LEHB17-.LFB4201
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L93-.LFB4201
	.uleb128 0
	.uleb128 .LEHB18-.LFB4201
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L87-.LFB4201
	.uleb128 0
	.uleb128 .LEHB19-.LFB4201
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L94-.LFB4201
	.uleb128 0
	.uleb128 .LEHB20-.LFB4201
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L95-.LFB4201
	.uleb128 0
	.uleb128 .LEHB21-.LFB4201
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L87-.LFB4201
	.uleb128 0
	.uleb128 .LEHB22-.LFB4201
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L96-.LFB4201
	.uleb128 0
	.uleb128 .LEHB23-.LFB4201
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE4201:
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4212:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4212
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$568, %rsp
	.cfi_offset 3, -24
	movl	%edi, -516(%rbp)
	vmovsd	%xmm0, -528(%rbp)
	movl	%esi, -520(%rbp)
	vmovsd	%xmm1, -536(%rbp)
	movq	%rdx, -544(%rbp)
	movq	%rcx, -552(%rbp)
	movl	%r8d, -556(%rbp)
	movl	%r9d, -560(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-560(%rbp), %eax
	movl	%eax, %edi
	call	omp_set_num_threads@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -480(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -472(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-516(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-256(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE24:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-516(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-256(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE25:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB26:
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-192(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
.LEHE26:
	movl	$0, -500(%rbp)
	jmp	.L105
.L118:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1Ev
	movl	-556(%rbp), %edx
	movl	-500(%rbp), %ecx
	leaq	-320(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB27:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	$0, -496(%rbp)
	jmp	.L106
.L107:
	movl	-496(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -568(%rbp)
	movl	-496(%rbp), %edx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-568(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	-516(%rbp), %edx
	movl	-496(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -568(%rbp)
	movl	-496(%rbp), %edx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-568(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-496(%rbp)
.L106:
	movl	-516(%rbp), %eax
	cmpl	%eax, -496(%rbp)
	jb	.L107
	movl	-516(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L108
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L133
.L108:
	call	__cxa_throw_bad_array_new_length@PLT
.L133:
	movq	%rax, -448(%rbp)
	movl	-516(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L110
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L134
.L110:
	call	__cxa_throw_bad_array_new_length@PLT
.L134:
	movq	%rax, -440(%rbp)
	movl	$0, -492(%rbp)
	jmp	.L112
.L113:
	movl	-492(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-448(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-492(%rbp), %edx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-492(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-448(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-492(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-440(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-492(%rbp), %edx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-492(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-440(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	incl	-492(%rbp)
.L112:
	movl	-516(%rbp), %eax
	cmpl	%eax, -492(%rbp)
	jb	.L113
	leaq	-160(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-160(%rbp), %rax
	movq	-440(%rbp), %rdx
	movq	-448(%rbp), %rsi
	movl	-516(%rbp), %edi
	movq	%rax, %rcx
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	-432(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -488(%rbp)
	jmp	.L114
.L115:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -464(%rbp)
	vmovsd	-464(%rbp), %xmm0
	vmovsd	%xmm0, -240(%rbp)
	movl	-516(%rbp), %eax
	movl	%eax, -232(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, -256(%rbp)
	leaq	-352(%rbp), %rax
	movq	%rax, -248(%rbp)
	leaq	-256(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-240(%rbp), %xmm0
	vmovsd	%xmm0, -464(%rbp)
	incl	-488(%rbp)
.L114:
	cmpl	$4, -488(%rbp)
	jbe	.L115
	leaq	-416(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-416(%rbp), %rax
	movq	-432(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-408(%rbp), %rax
	movq	-424(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-480(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -480(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -456(%rbp)
	leaq	-400(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -484(%rbp)
	jmp	.L116
.L117:
	leaq	-352(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE27:
	leaq	-384(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE28:
	movl	-560(%rbp), %ecx
	movl	-516(%rbp), %edx
	leaq	-256(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	%ecx, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB29:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE29:
	vmovq	%xmm0, %rax
	movq	%rax, -456(%rbp)
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-484(%rbp)
.L116:
	cmpl	$4, -484(%rbp)
	jbe	.L117
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-256(%rbp), %rax
	movq	-400(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-248(%rbp), %rax
	movq	-392(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-472(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -472(%rbp)
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB30:
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movq	-464(%rbp), %rax
	leaq	-160(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-160(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-96(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-456(%rbp), %rax
	leaq	-160(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-160(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-128(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
.LEHE30:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-500(%rbp)
.L105:
	movl	-520(%rbp), %eax
	cmpl	%eax, -500(%rbp)
	jb	.L118
	movl	-520(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-480(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -480(%rbp)
	movl	-520(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-472(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -472(%rbp)
	vmovsd	-480(%rbp), %xmm4
	vmovsd	%xmm4, -568(%rbp)
	movq	-544(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-568(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	vmovsd	-472(%rbp), %xmm5
	vmovsd	%xmm5, -568(%rbp)
	movq	-544(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-568(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	movl	-520(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB31:
	call	mpfr_div_si@PLT
	movl	-520(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-216(%rbp), %ebx
	movq	-552(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-224(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-184(%rbp), %ebx
	movq	-552(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-192(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
.LEHE31:
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L126
	jmp	.L135
.L127:
	endbr64
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.L128:
	endbr64
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L121
.L132:
	endbr64
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L123
.L131:
	endbr64
	movq	%rax, %rbx
.L123:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L124
.L130:
	endbr64
	movq	%rax, %rbx
.L124:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L125
.L129:
	endbr64
	movq	%rax, %rbx
.L125:
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L121:
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE32:
.L135:
	call	__stack_chk_fail@PLT
.L126:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4212:
	.section	.gcc_except_table._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
.LLSDA4212:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4212-.LLSDACSB4212
.LLSDACSB4212:
	.uleb128 .LEHB24-.LFB4212
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L127-.LFB4212
	.uleb128 0
	.uleb128 .LEHB25-.LFB4212
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L128-.LFB4212
	.uleb128 0
	.uleb128 .LEHB26-.LFB4212
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L129-.LFB4212
	.uleb128 0
	.uleb128 .LEHB27-.LFB4212
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L130-.LFB4212
	.uleb128 0
	.uleb128 .LEHB28-.LFB4212
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L131-.LFB4212
	.uleb128 0
	.uleb128 .LEHB29-.LFB4212
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L132-.LFB4212
	.uleb128 0
	.uleb128 .LEHB30-.LFB4212
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L130-.LFB4212
	.uleb128 0
	.uleb128 .LEHB31-.LFB4212
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L129-.LFB4212
	.uleb128 0
	.uleb128 .LEHB32-.LFB4212
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE4212:
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.weak	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, @function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii:
.LFB4213:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4213
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$792, %rsp
	.cfi_offset 3, -24
	movl	%edi, -724(%rbp)
	vmovsd	%xmm0, -736(%rbp)
	movl	%esi, -728(%rbp)
	vmovsd	%xmm1, -744(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%rcx, -760(%rbp)
	movq	%r8, -768(%rbp)
	movq	%r9, -776(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -784(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -792(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB33:
	call	mpfr_init2@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-416(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-320(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-288(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-352(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
.LEHE33:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-724(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE34:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-724(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE35:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -712(%rbp)
	jmp	.L137
.L150:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1Ev
	movl	32(%rbp), %edx
	movl	-712(%rbp), %ecx
	leaq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB36:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	$0, -708(%rbp)
	jmp	.L138
.L139:
	movl	-708(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -800(%rbp)
	movl	-708(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-800(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	-724(%rbp), %edx
	movl	-708(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -800(%rbp)
	movl	-708(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-800(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-708(%rbp)
.L138:
	movl	-724(%rbp), %eax
	cmpl	%eax, -708(%rbp)
	jb	.L139
	movl	-724(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L140
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L167
.L140:
	call	__cxa_throw_bad_array_new_length@PLT
.L167:
	movq	%rax, -680(%rbp)
	movl	-724(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L142
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L168
.L142:
	call	__cxa_throw_bad_array_new_length@PLT
.L168:
	movq	%rax, -672(%rbp)
	movl	$0, -704(%rbp)
	jmp	.L144
.L145:
	movl	-704(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-680(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-704(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-704(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-680(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-704(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-672(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-704(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-704(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-672(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	incl	-704(%rbp)
.L144:
	movl	-724(%rbp), %eax
	cmpl	%eax, -704(%rbp)
	jb	.L145
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-256(%rbp), %rax
	movq	-672(%rbp), %rdx
	movq	-680(%rbp), %rsi
	movl	-724(%rbp), %edi
	movq	%rax, %rcx
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -688(%rbp)
	movl	$0, -700(%rbp)
	jmp	.L146
.L147:
	movl	-700(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -800(%rbp)
	movl	-700(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-800(%rbp), %xmm0, %xmm0
	vmovsd	-688(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -688(%rbp)
	incl	-700(%rbp)
.L146:
	movl	-724(%rbp), %eax
	cmpl	%eax, -700(%rbp)
	jb	.L147
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -664(%rbp)
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE36:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB37:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE37:
	movl	-724(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB38:
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
.LEHE38:
	vmovq	%xmm0, %rax
	movq	%rax, -664(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -656(%rbp)
	vmovsd	-656(%rbp), %xmm0
	vmovsd	%xmm0, -464(%rbp)
	movl	-724(%rbp), %eax
	movl	%eax, -456(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-480(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-464(%rbp), %xmm0
	vmovsd	%xmm0, -656(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -648(%rbp)
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB39:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE39:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB40:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE40:
	movl	48(%rbp), %ecx
	movl	-724(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	%ecx, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB41:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE41:
	vmovq	%xmm0, %rax
	movq	%rax, -648(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -640(%rbp)
	movl	-724(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -632(%rbp)
	movl	-724(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -624(%rbp)
	movl	$0, -696(%rbp)
	jmp	.L148
.L149:
	movl	-696(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-696(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-632(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	movl	-696(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-696(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-624(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	incl	-696(%rbp)
.L148:
	movl	-724(%rbp), %eax
	cmpl	%eax, -696(%rbp)
	jb	.L149
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rsi
	movl	-724(%rbp), %eax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	cblas_ddot@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -640(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -616(%rbp)
	movl	-724(%rbp), %eax
	cltq
	movq	-624(%rbp), %rdx
	movq	-632(%rbp), %rsi
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB42:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	vmovq	%xmm0, %rax
	movq	%rax, -616(%rbp)
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-688(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-128(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-664(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-224(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-224(%rbp), %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-640(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-192(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-192(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-616(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-160(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-160(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-656(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-96(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-648(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-64(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-728(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	40(%rbp), %eax
	imull	-728(%rbp), %eax
	movl	%eax, %edx
	movl	-712(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -692(%rbp)
	leaq	-448(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-752(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-416(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-760(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-384(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-768(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-352(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-776(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-320(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-784(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-288(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	mpfr_get_d@PLT
.LEHE42:
	vmovq	%xmm0, %rbx
	movl	-692(%rbp), %eax
	cltq
	movq	-792(%rbp), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	%rbx, (%rax)
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-712(%rbp)
.L137:
	movl	-728(%rbp), %eax
	cmpl	%eax, -712(%rbp)
	jb	.L150
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L159
	jmp	.L169
.L160:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB43:
	call	_Unwind_Resume@PLT
.L161:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L153
.L164:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L155
.L163:
	endbr64
	movq	%rax, %rbx
.L155:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L156
.L166:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L158
.L165:
	endbr64
	movq	%rax, %rbx
.L158:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L156
.L162:
	endbr64
	movq	%rax, %rbx
.L156:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L153:
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE43:
.L169:
	call	__stack_chk_fail@PLT
.L159:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4213:
	.section	.gcc_except_table._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"aG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
.LLSDA4213:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4213-.LLSDACSB4213
.LLSDACSB4213:
	.uleb128 .LEHB33-.LFB4213
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB4213
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L160-.LFB4213
	.uleb128 0
	.uleb128 .LEHB35-.LFB4213
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L161-.LFB4213
	.uleb128 0
	.uleb128 .LEHB36-.LFB4213
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L162-.LFB4213
	.uleb128 0
	.uleb128 .LEHB37-.LFB4213
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L163-.LFB4213
	.uleb128 0
	.uleb128 .LEHB38-.LFB4213
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L164-.LFB4213
	.uleb128 0
	.uleb128 .LEHB39-.LFB4213
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L162-.LFB4213
	.uleb128 0
	.uleb128 .LEHB40-.LFB4213
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L165-.LFB4213
	.uleb128 0
	.uleb128 .LEHB41-.LFB4213
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L166-.LFB4213
	.uleb128 0
	.uleb128 .LEHB42-.LFB4213
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L162-.LFB4213
	.uleb128 0
	.uleb128 .LEHB43-.LFB4213
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE4213:
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii, .-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.weak	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.type	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, @function
_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii:
.LFB4214:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4214
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$1064, %rsp
	.cfi_offset 3, -24
	movl	%edi, -1012(%rbp)
	vmovsd	%xmm0, -1024(%rbp)
	movl	%esi, -1016(%rbp)
	vmovsd	%xmm1, -1032(%rbp)
	movq	%rdx, -1040(%rbp)
	movq	%rcx, -1048(%rbp)
	movl	%r8d, -1052(%rbp)
	movl	%r9d, -1056(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-448(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB44:
	call	mpfr_init2@PLT
	leaq	-416(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-384(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-352(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-448(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-416(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-384(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-352(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-320(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-288(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
.LEHE44:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -944(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -928(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -920(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -912(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -904(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -896(%rbp)
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-1012(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB45:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE45:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-1012(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-480(%rbp), %rdx
	leaq	-576(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE46:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -1004(%rbp)
	jmp	.L171
.L200:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1Ev
	movl	-1052(%rbp), %edx
	movl	-1004(%rbp), %ecx
	leaq	-544(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB47:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	$0, -1000(%rbp)
	jmp	.L172
.L173:
	movl	-1000(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -1064(%rbp)
	movl	-1000(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	movl	-1012(%rbp), %edx
	movl	-1000(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm3
	vmovsd	%xmm3, -1064(%rbp)
	movl	-1000(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	incl	-1000(%rbp)
.L172:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -1000(%rbp)
	jb	.L173
	movl	-1012(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L174
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L219
.L174:
	call	__cxa_throw_bad_array_new_length@PLT
.L219:
	movq	%rax, -848(%rbp)
	movl	-1012(%rbp), %eax
	cltq
	movabsq	$288230376151711743, %rdx
	cmpq	%rdx, %rax
	ja	.L176
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znam@PLT
	jmp	.L220
.L176:
	call	__cxa_throw_bad_array_new_length@PLT
.L220:
	movq	%rax, -840(%rbp)
	movl	$0, -996(%rbp)
	jmp	.L178
.L179:
	movl	-996(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-996(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-996(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-848(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-996(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-840(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-996(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-996(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-840(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	incl	-996(%rbp)
.L178:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -996(%rbp)
	jb	.L179
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-800(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	leaq	-256(%rbp), %rax
	movq	-840(%rbp), %rdx
	movq	-848(%rbp), %rsi
	movl	-1012(%rbp), %edi
	movq	%rax, %rcx
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	leaq	-784(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-776(%rbp), %rax
	movq	-792(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-944(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -944(%rbp)
	movl	$0, -992(%rbp)
	jmp	.L180
.L181:
	movl	-992(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-848(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	movl	-992(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-840(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	incl	-992(%rbp)
.L180:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -992(%rbp)
	jb	.L181
	leaq	-768(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -988(%rbp)
	jmp	.L182
.L185:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -888(%rbp)
	movl	$0, -984(%rbp)
	jmp	.L183
.L184:
	movl	-984(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm4
	vmovsd	%xmm4, -1064(%rbp)
	movl	-984(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-1064(%rbp), %xmm0, %xmm0
	vmovsd	-888(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -888(%rbp)
	incl	-984(%rbp)
.L183:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -984(%rbp)
	jb	.L184
	incl	-988(%rbp)
.L182:
	cmpl	$4, -988(%rbp)
	jbe	.L185
	leaq	-752(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-752(%rbp), %rax
	movq	-768(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-744(%rbp), %rax
	movq	-760(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-936(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -952(%rbp)
	leaq	-736(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -980(%rbp)
	jmp	.L186
.L187:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -952(%rbp)
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE47:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE48:
	leaq	-952(%rbp), %rcx
	movl	-1012(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movq	%rcx, %r9
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB49:
	call	_Z22common_dot_prod_threadIdEvSt6vectorIT_SaIS1_EES3_iiiRd@PLT
.LEHE49:
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-980(%rbp)
.L186:
	cmpl	$4, -980(%rbp)
	jbe	.L187
	leaq	-720(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-720(%rbp), %rax
	movq	-736(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-712(%rbp), %rax
	movq	-728(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-928(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -928(%rbp)
	movl	-1056(%rbp), %eax
	movl	%eax, %edi
	call	omp_set_num_threads@PLT
	leaq	-704(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -976(%rbp)
	jmp	.L188
.L189:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -880(%rbp)
	vmovsd	-880(%rbp), %xmm0
	vmovsd	%xmm0, -464(%rbp)
	movl	-1012(%rbp), %eax
	movl	%eax, -456(%rbp)
	leaq	-608(%rbp), %rax
	movq	%rax, -480(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -472(%rbp)
	leaq	-480(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-464(%rbp), %xmm0
	vmovsd	%xmm0, -880(%rbp)
	incl	-976(%rbp)
.L188:
	cmpl	$4, -976(%rbp)
	jbe	.L189
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-688(%rbp), %rax
	movq	-704(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-680(%rbp), %rax
	movq	-696(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-920(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -920(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -872(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -972(%rbp)
	jmp	.L190
.L191:
	leaq	-576(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB50:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE50:
	leaq	-608(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB51:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE51:
	movl	-1056(%rbp), %ecx
	movl	-1012(%rbp), %edx
	leaq	-480(%rbp), %rsi
	leaq	-512(%rbp), %rax
	movl	%ecx, %r9d
	movl	$1, %r8d
	movl	$1, %ecx
	movq	%rax, %rdi
.LEHB52:
	call	_Z19par_common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iiii@PLT
.LEHE52:
	vmovq	%xmm0, %rax
	movq	%rax, -872(%rbp)
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-972(%rbp)
.L190:
	cmpl	$4, -972(%rbp)
	jbe	.L191
	leaq	-656(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-656(%rbp), %rax
	movq	-672(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-648(%rbp), %rax
	movq	-664(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-912(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -912(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -864(%rbp)
	movl	-1012(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -832(%rbp)
	movl	-1012(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -824(%rbp)
	movl	$0, -968(%rbp)
	jmp	.L192
.L193:
	movl	-968(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-968(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-832(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	movl	-968(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-968(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-824(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	incl	-968(%rbp)
.L192:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -968(%rbp)
	jb	.L193
	leaq	-640(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -964(%rbp)
	jmp	.L194
.L195:
	movq	-824(%rbp), %rdx
	movq	-832(%rbp), %rsi
	movl	-1012(%rbp), %eax
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	%eax, %edi
	call	cblas_ddot@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -864(%rbp)
	incl	-964(%rbp)
.L194:
	cmpl	$4, -964(%rbp)
	jbe	.L195
	leaq	-624(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-624(%rbp), %rax
	movq	-640(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-616(%rbp), %rax
	movq	-632(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-904(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -904(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -856(%rbp)
	movl	-1012(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -816(%rbp)
	movl	-1012(%rbp), %eax
	cltq
	salq	$3, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -808(%rbp)
	movl	$0, -960(%rbp)
	jmp	.L196
.L197:
	movl	-960(%rbp), %edx
	leaq	-608(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-960(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-816(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	movl	-960(%rbp), %edx
	leaq	-576(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movl	-960(%rbp), %edx
	leaq	0(,%rdx,8), %rcx
	movq	-808(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, (%rdx)
	incl	-960(%rbp)
.L196:
	movl	-1012(%rbp), %eax
	cmpl	%eax, -960(%rbp)
	jb	.L197
	leaq	-512(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -956(%rbp)
	jmp	.L198
.L199:
	movl	-1012(%rbp), %eax
	cltq
	movq	-808(%rbp), %rdx
	movq	-816(%rbp), %rsi
	movl	$1, %r8d
	movq	%rdx, %rcx
	movl	$1, %edx
	movq	%rax, %rdi
.LEHB53:
	call	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	vmovq	%xmm0, %rax
	movq	%rax, -856(%rbp)
	incl	-956(%rbp)
.L198:
	cmpl	$4, -956(%rbp)
	jbe	.L199
	leaq	-480(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-480(%rbp), %rax
	movq	-512(%rbp), %rdx
	subq	%rdx, %rax
	imulq	$1000000000, %rax, %rdx
	movq	-472(%rbp), %rax
	movq	-504(%rbp), %rcx
	subq	%rcx, %rax
	addq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	vmovsd	-896(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -896(%rbp)
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-888(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-128(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-128(%rbp), %rsi
	leaq	-128(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-128(%rbp), %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-952(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-224(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-224(%rbp), %rsi
	leaq	-224(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-224(%rbp), %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-864(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-192(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-192(%rbp), %rsi
	leaq	-192(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-192(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-856(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-160(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-160(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-880(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-96(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-96(%rbp), %rsi
	leaq	-96(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-96(%rbp), %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	movq	-872(%rbp), %rax
	leaq	-256(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-256(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	leaq	-64(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	mpfr_clear@PLT
.LEHE53:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-1004(%rbp)
.L171:
	movl	-1016(%rbp), %eax
	cmpl	%eax, -1004(%rbp)
	jb	.L200
	vcvtsi2sdl	-1016(%rbp), %xmm0, %xmm0
	vmovsd	-944(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -944(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-936(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -936(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-928(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -928(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-920(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -920(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-912(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -912(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-904(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -904(%rbp)
	movl	-1016(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-896(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -896(%rbp)
	vmovsd	-944(%rbp), %xmm5
	vmovsd	%xmm5, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	vmovsd	-936(%rbp), %xmm6
	vmovsd	%xmm6, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	vmovsd	-928(%rbp), %xmm7
	vmovsd	%xmm7, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm7
	vmovsd	%xmm7, (%rax)
	vmovsd	-920(%rbp), %xmm2
	vmovsd	%xmm2, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	-912(%rbp), %xmm3
	vmovsd	%xmm3, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-904(%rbp), %xmm4
	vmovsd	%xmm4, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	vmovsd	-896(%rbp), %xmm5
	vmovsd	%xmm5, -1064(%rbp)
	movq	-1040(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-1064(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-448(%rbp), %rsi
	leaq	-448(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB54:
	call	mpfr_div_si@PLT
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-416(%rbp), %rsi
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-384(%rbp), %rsi
	leaq	-384(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-352(%rbp), %rsi
	leaq	-352(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-1016(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movq	-1048(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdx
	movl	$0, %esi
	movq	.LC1(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-440(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-448(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-408(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-416(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-376(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-384(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-344(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-352(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-312(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-320(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-280(%rbp), %ebx
	movq	-1048(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-288(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
.LEHE54:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L210
	jmp	.L221
.L211:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB55:
	call	_Unwind_Resume@PLT
.L212:
	endbr64
	movq	%rax, %rbx
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L203
.L215:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L205
.L214:
	endbr64
	movq	%rax, %rbx
.L205:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L206
.L217:
	endbr64
	movq	%rax, %rbx
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L208
.L216:
	endbr64
	movq	%rax, %rbx
.L208:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L206
.L213:
	endbr64
	movq	%rax, %rbx
.L206:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L209
.L218:
	endbr64
	movq	%rax, %rbx
.L209:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L203:
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE55:
.L221:
	call	__stack_chk_fail@PLT
.L210:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4214:
	.section	.gcc_except_table._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"aG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
.LLSDA4214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4214-.LLSDACSB4214
.LLSDACSB4214:
	.uleb128 .LEHB44-.LFB4214
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB4214
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L211-.LFB4214
	.uleb128 0
	.uleb128 .LEHB46-.LFB4214
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L212-.LFB4214
	.uleb128 0
	.uleb128 .LEHB47-.LFB4214
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L213-.LFB4214
	.uleb128 0
	.uleb128 .LEHB48-.LFB4214
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L214-.LFB4214
	.uleb128 0
	.uleb128 .LEHB49-.LFB4214
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L215-.LFB4214
	.uleb128 0
	.uleb128 .LEHB50-.LFB4214
	.uleb128 .LEHE50-.LEHB50
	.uleb128 .L213-.LFB4214
	.uleb128 0
	.uleb128 .LEHB51-.LFB4214
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L216-.LFB4214
	.uleb128 0
	.uleb128 .LEHB52-.LFB4214
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L217-.LFB4214
	.uleb128 0
	.uleb128 .LEHB53-.LFB4214
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L213-.LFB4214
	.uleb128 0
	.uleb128 .LEHB54-.LFB4214
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L218-.LFB4214
	.uleb128 0
	.uleb128 .LEHB55-.LFB4214
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
.LLSDACSE4214:
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.size	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii, .-_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB3885:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3885:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB3884:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
	jmp	.L225
.L226:
	incq	-16(%rbp)
.L225:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	xorl	$1, %eax
	testb	%al, %al
	jne	.L226
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L228
	call	__stack_chk_fail@PLT
.L228:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3884:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB3992:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3992:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB4151:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4151
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE56:
	cmpq	$0, -64(%rbp)
	je	.L231
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB57:
	call	_ZNSt11char_traitsIcE6lengthEPKc
	movq	-64(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L232
.L231:
	movl	$1, %eax
.L232:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-64(%rbp), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
.LEHE57:
	jmp	.L236
.L235:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB58:
	call	_Unwind_Resume@PLT
.LEHE58:
.L236:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L234
	call	__stack_chk_fail@PLT
.L234:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4151:
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"aG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
.LLSDA4151:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4151-.LLSDACSB4151
.LLSDACSB4151:
	.uleb128 .LEHB56-.LFB4151
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB4151
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L235-.LFB4151
	.uleb128 0
	.uleb128 .LEHB58-.LFB4151
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
.LLSDACSE4151:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:
.LFB4153:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc@PLT
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4153:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB4206:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4206:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEEC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEEC2Ev:
.LFB4208:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4208:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2Ev, .-_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2Ev
	.type	_ZNSt6vectorIdSaIdEEC2Ev, @function
_ZNSt6vectorIdSaIdEEC2Ev:
.LFB4210:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4210:
	.size	_ZNSt6vectorIdSaIdEEC2Ev, .-_ZNSt6vectorIdSaIdEEC2Ev
	.weak	_ZNSt6vectorIdSaIdEEC1Ev
	.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB4336:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4336:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB4343:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4343:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC2:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB4342:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4342
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	testb	%al, %al
	je	.L247
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L247
	movl	$1, %eax
	jmp	.L248
.L247:
	movl	$0, %eax
.L248:
	testb	%al, %al
	je	.L249
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
.LEHB59:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L249:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L250
	leaq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$0, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE59:
.L250:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB60:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE60:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB61:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE61:
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L253
	jmp	.L256
.L254:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB62:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE62:
.L255:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB63:
	call	_Unwind_Resume@PLT
.LEHE63:
.L256:
	call	__stack_chk_fail@PLT
.L253:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4342:
	.section	.gcc_except_table._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"aG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 4
.LLSDA4342:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4342-.LLSDATTD4342
.LLSDATTD4342:
	.byte	0x1
	.uleb128 .LLSDACSE4342-.LLSDACSB4342
.LLSDACSB4342:
	.uleb128 .LEHB59-.LFB4342
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB60-.LFB4342
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L254-.LFB4342
	.uleb128 0x1
	.uleb128 .LEHB61-.LFB4342
	.uleb128 .LEHE61-.LEHB61
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB62-.LFB4342
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L255-.LFB4342
	.uleb128 0
	.uleb128 .LEHB63-.LFB4342
	.uleb128 .LEHE63-.LEHB63
	.uleb128 0
	.uleb128 0
.LLSDACSE4342:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4342:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB4356:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4356:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB4359:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4359:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_:
.LFB4362:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4362
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB64:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE64:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB65:
	call	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
.LEHE65:
	jmp	.L262
.L261:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB66:
	call	_Unwind_Resume@PLT
.LEHE66:
.L262:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4362:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
.LLSDA4362:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4362-.LLSDACSB4362
.LLSDACSB4362:
	.uleb128 .LEHB64-.LFB4362
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB4362
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L261-.LFB4362
	.uleb128 0
	.uleb128 .LEHB66-.LFB4362
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
.LLSDACSE4362:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB4365:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4365
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4365:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEED2Ev,"aG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
.LLSDA4365:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4365-.LLSDACSB4365
.LLSDACSB4365:
.LLSDACSE4365:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
.LFB4368:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC2Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4368:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB4371:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4371
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4371:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
.LLSDA4371:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4371-.LLSDACSB4371
.LLSDACSB4371:
.LLSDACSE4371:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB4373:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4373:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS1_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS1_, @function
_ZNSt6vectorIdSaIdEEC2ERKS1_:
.LFB4375:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4375
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB67:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
.LEHE67:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB68:
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE68:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB69:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
.LEHE69:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L271
	jmp	.L274
.L272:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB70:
	call	_Unwind_Resume@PLT
.L273:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE70:
.L274:
	call	__stack_chk_fail@PLT
.L271:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4375:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2ERKS1_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
.LLSDA4375:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4375-.LLSDACSB4375
.LLSDACSB4375:
	.uleb128 .LEHB67-.LFB4375
	.uleb128 .LEHE67-.LEHB67
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB68-.LFB4375
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L272-.LFB4375
	.uleb128 0
	.uleb128 .LEHB69-.LFB4375
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L273-.LFB4375
	.uleb128 0
	.uleb128 .LEHB70-.LFB4375
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
.LLSDACSE4375:
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2ERKS1_, .-_ZNSt6vectorIdSaIdEEC2ERKS1_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS1_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS1_,_ZNSt6vectorIdSaIdEEC2ERKS1_
	.section	.rodata
.LC3:
	.string	"dot"
.LC4:
	.string	"n < 0"
.LC5:
	.string	"incx == 0"
.LC6:
	.string	"incy == 0"
	.section	.text._ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l,"axG",@progbits,_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l,comdat
	.weak	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	.type	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l, @function
_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l:
.LFB4377:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	-56(%rbp), %rax
	shrq	$63, %rax
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC4(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	cmpq	$0, -72(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC5(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	cmpq	$0, -88(%rbp)
	sete	%al
	movzbl	%al, %eax
	leaq	.LC3(%rip), %rdx
	leaq	.LC6(%rip), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN4blas8internal8throw_ifEbPKcS2_
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	cmpq	$1, -72(%rbp)
	jne	.L276
	cmpq	$1, -88(%rbp)
	jne	.L276
	movq	$0, -32(%rbp)
	jmp	.L277
.L278:
	movq	-32(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	call	_ZN4blas4conjIdEET_S1_
	vmovq	%xmm0, %rax
	movq	-32(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rdx), %xmm0
	vmovq	%rax, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	vmovsd	-40(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	incq	-32(%rbp)
.L277:
	movq	-32(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L278
	jmp	.L279
.L276:
	cmpq	$0, -72(%rbp)
	jg	.L280
	movl	$1, %eax
	subq	-56(%rbp), %rax
	imulq	-72(%rbp), %rax
	jmp	.L281
.L280:
	movl	$0, %eax
.L281:
	movq	%rax, -24(%rbp)
	cmpq	$0, -88(%rbp)
	jg	.L282
	movl	$1, %eax
	subq	-56(%rbp), %rax
	imulq	-88(%rbp), %rax
	jmp	.L283
.L282:
	movl	$0, %eax
.L283:
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L284
.L285:
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-64(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	vmovq	%rax, %xmm0
	call	_ZN4blas4conjIdEET_S1_
	vmovq	%xmm0, %rax
	movq	-16(%rbp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	-80(%rbp), %rdx
	addq	%rcx, %rdx
	vmovsd	(%rdx), %xmm0
	vmovq	%rax, %xmm3
	vmulsd	%xmm0, %xmm3, %xmm0
	vmovsd	-40(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -40(%rbp)
	movq	-72(%rbp), %rax
	addq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	addq	%rax, -16(%rbp)
	incq	-8(%rbp)
.L284:
	movq	-8(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jl	.L285
.L279:
	vmovsd	-40(%rbp), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4377:
	.size	_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l, .-_ZN4blas3dotIddEENS_18scalar_type_traitsIJT_T0_EE4typeElPKS2_lPKS3_l
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm:
.LFB4378:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4378:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB4441:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4441:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB4442:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4442:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB4443:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4443:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB4449:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4449:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB4452:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4452:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.rodata
	.align 8
.LC7:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB4454:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	testb	%bl, %bl
	je	.L298
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L298:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L300
	call	__stack_chk_fail@PLT
.L300:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4454:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_:
.LFB4456:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4456
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
.LEHE71:
	jmp	.L304
.L303:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB72:
	call	_Unwind_Resume@PLT
.LEHE72:
.L304:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4456:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
.LLSDA4456:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4456-.LLSDACSB4456
.LLSDACSB4456:
	.uleb128 .LEHB71-.LFB4456
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L303-.LFB4456
	.uleb128 0
	.uleb128 .LEHB72-.LFB4456
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE4456:
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_,_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.type	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, @function
_ZNSt6vectorIdSaIdEE21_M_default_initializeEm:
.LFB4458:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4458:
	.size	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, .-_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB4459:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4459:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB4460:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPdEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4460:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB4462:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4462:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB4464:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L312
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L312:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4464:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, @function
_ZNKSt6vectorIdSaIdEE4sizeEv:
.LFB4465:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4465:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_:
.LFB4466:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L317
	call	__stack_chk_fail@PLT
.L317:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4466:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB4467:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4467:
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE5beginEv
	.type	_ZNKSt6vectorIdSaIdEE5beginEv, @function
_ZNKSt6vectorIdSaIdEE5beginEv:
.LFB4468:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L322
	call	__stack_chk_fail@PLT
.L322:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4468:
	.size	_ZNKSt6vectorIdSaIdEE5beginEv, .-_ZNKSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNKSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE3endEv
	.type	_ZNKSt6vectorIdSaIdEE3endEv, @function
_ZNKSt6vectorIdSaIdEE3endEv:
.LFB4469:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L325
	call	__stack_chk_fail@PLT
.L325:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4469:
	.size	_ZNKSt6vectorIdSaIdEE3endEv, .-_ZNKSt6vectorIdSaIdEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
.LFB4470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4470:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.section	.text._ZN4blas4conjIdEET_S1_,"axG",@progbits,_ZN4blas4conjIdEET_S1_,comdat
	.weak	_ZN4blas4conjIdEET_S1_
	.type	_ZN4blas4conjIdEET_S1_, @function
_ZN4blas4conjIdEET_S1_:
.LFB4471:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	vmovsd	%xmm0, -8(%rbp)
	vmovsd	-8(%rbp), %xmm0
	vmovq	%xmm0, %rax
	vmovq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4471:
	.size	_ZN4blas4conjIdEET_S1_, .-_ZN4blas4conjIdEET_S1_
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB4529:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L332
	call	__stack_chk_fail@PLT
.L332:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4529:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB4531:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4531:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB4534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4534:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm:
.LFB4536:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4536:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
.LFB4537:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4537:
	.size	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB4538:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4538:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB4540:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4540:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_:
.LFB4541:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4541:
	.size	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_:
.LFB4543:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4543:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB4545:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4545:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB4593:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4593:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4594:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L348
	movq	-16(%rbp), %rax
	jmp	.L349
.L348:
	movq	-8(%rbp), %rax
.L349:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4594:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB4596:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4596:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB4598:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L352
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L354
.L352:
	movl	$0, %eax
.L354:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4598:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPdmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
.LFB4599:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movb	$1, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4599:
	.size	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB4600:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4600:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB4601:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4601:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
.LFB4602:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4602:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB4624:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4624:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB4625:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4625:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZSt11__addressofIdEPT_RS0_,"axG",@progbits,_ZSt11__addressofIdEPT_RS0_,comdat
	.weak	_ZSt11__addressofIdEPT_RS0_
	.type	_ZSt11__addressofIdEPT_RS0_, @function
_ZSt11__addressofIdEPT_RS0_:
.LFB4627:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4627:
	.size	_ZSt11__addressofIdEPT_RS0_, .-_ZSt11__addressofIdEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
.LFB4626:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L369
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIdEPT_RS0_
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt10_ConstructIdJEEvPT_DpOT0_
	addq	$8, -24(%rbp)
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rcx
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	movq	%rax, -24(%rbp)
.L369:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4626:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB4628:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4628:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB4641:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4641:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB4642:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L376
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L377
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L377:
	call	_ZSt17__throw_bad_allocv@PLT
.L376:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4642:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZSt10_ConstructIdJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIdJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIdJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIdJEEvPT_DpOT0_, @function
_ZSt10_ConstructIdJEEvPT_DpOT0_:
.LFB4643:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4643:
	.size	_ZSt10_ConstructIdJEEvPT_DpOT0_, .-_ZSt10_ConstructIdJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
.LFB4644:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt17__size_to_integerm
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4644:
	.size	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_:
.LFB4645:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4645:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
.LFB4646:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4646:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.section	.text._ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB4651:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4651:
	.size	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB4652:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L389
	movq	-8(%rbp), %rax
	jmp	.L390
.L389:
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8__fill_aIPddEvT_S1_RKT0_
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
.L390:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4652:
	.size	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB4653:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4653:
	.size	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB4654:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4654:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB4655:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4655:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB4656:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4656:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZSt8__fill_aIPddEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPddEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPddEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPddEvT_S1_RKT0_, @function
_ZSt8__fill_aIPddEvT_S1_RKT0_:
.LFB4657:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4657:
	.size	_ZSt8__fill_aIPddEvT_S1_RKT0_, .-_ZSt8__fill_aIPddEvT_S1_RKT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
.LFB4658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4658:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB4659:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4659:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB4660:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	vmovsd	(%rax), %xmm0
	vmovsd	%xmm0, -8(%rbp)
	jmp	.L405
.L406:
	movq	-24(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	addq	$8, -24(%rbp)
.L405:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L406
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4660:
	.size	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB4661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L408
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L408:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4661:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
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
	.section	.text._ZN4blas5ErrorD2Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.weak	_ZN4blas5ErrorD2Ev
	.type	_ZN4blas5ErrorD2Ev, @function
_ZN4blas5ErrorD2Ev:
.LFB4663:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVN4blas5ErrorE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9exceptionD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4663:
	.size	_ZN4blas5ErrorD2Ev, .-_ZN4blas5ErrorD2Ev
	.weak	_ZN4blas5ErrorD1Ev
	.set	_ZN4blas5ErrorD1Ev,_ZN4blas5ErrorD2Ev
	.section	.text._ZN4blas5ErrorD0Ev,"axG",@progbits,_ZN4blas5ErrorD5Ev,comdat
	.align 2
	.weak	_ZN4blas5ErrorD0Ev
	.type	_ZN4blas5ErrorD0Ev, @function
_ZN4blas5ErrorD0Ev:
.LFB4665:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4blas5ErrorD1Ev
	movq	-8(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4665:
	.size	_ZN4blas5ErrorD0Ev, .-_ZN4blas5ErrorD0Ev
	.weak	_ZTIN4blas5ErrorE
	.section	.data.rel.ro._ZTIN4blas5ErrorE,"awG",@progbits,_ZTIN4blas5ErrorE,comdat
	.align 8
	.type	_ZTIN4blas5ErrorE, @object
	.size	_ZTIN4blas5ErrorE, 24
_ZTIN4blas5ErrorE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN4blas5ErrorE
	.quad	_ZTISt9exception
	.weak	_ZTSN4blas5ErrorE
	.section	.rodata._ZTSN4blas5ErrorE,"aG",@progbits,_ZTSN4blas5ErrorE,comdat
	.align 8
	.type	_ZTSN4blas5ErrorE, @object
	.size	_ZTSN4blas5ErrorE, 14
_ZTSN4blas5ErrorE:
	.string	"N4blas5ErrorE"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4666:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L414
	cmpl	$65535, -8(%rbp)
	jne	.L414
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L414:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4666:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_compare_dot_prod.cc, @function
_GLOBAL__sub_I_compare_dot_prod.cc:
.LFB4667:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4667:
	.size	_GLOBAL__sub_I_compare_dot_prod.cc, .-_GLOBAL__sub_I_compare_dot_prod.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_compare_dot_prod.cc
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4668:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L417
.L420:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L418:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L418
	jmp	.L423
.L417:
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%edx, %eax
	cmpl	%eax, %esi
	jb	.L419
.L422:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jnb	.L420
	movl	%eax, -32(%rbp)
.L421:
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jb	.L421
	jmp	.L420
.L419:
	movl	$0, %eax
	incl	%ecx
	jmp	.L422
.L423:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4668:
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.text._Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1,"axG",@progbits,_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.type	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1, @function
_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1:
.LFB4669:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L425
.L428:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L426:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L426
	jmp	.L431
.L425:
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%edx, %eax
	cmpl	%eax, %esi
	jb	.L427
.L430:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jnb	.L428
	movl	%eax, -32(%rbp)
.L429:
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jb	.L429
	jmp	.L428
.L427:
	movl	$0, %eax
	incl	%ecx
	jmp	.L430
.L431:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4669:
	.size	_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1, .-_Z16compare_dot_prodIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.1
	.section	.text._Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.type	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4670:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L433
.L436:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L434:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L434
	jmp	.L439
.L433:
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%edx, %eax
	cmpl	%eax, %esi
	jb	.L435
.L438:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jnb	.L436
	movl	%eax, -32(%rbp)
.L437:
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jb	.L437
	jmp	.L436
.L435:
	movl	$0, %eax
	incl	%ecx
	jmp	.L438
.L439:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4670:
	.size	_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z19compare_dot_prod_thIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.text._Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0,"axG",@progbits,_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii,comdat
	.type	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0, @function
_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0:
.LFB4671:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L441
.L444:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L442:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L442
	jmp	.L447
.L441:
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%edx, %eax
	cmpl	%eax, %esi
	jb	.L443
.L446:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jnb	.L444
	movl	%eax, -32(%rbp)
.L445:
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jb	.L445
	jmp	.L444
.L443:
	movl	$0, %eax
	incl	%ecx
	jmp	.L446
.L447:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4671:
	.size	_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0, .-_Z21compare_dot_prod_condIdEvididRSt6vectorIT_SaIS1_EES4_S4_S4_S4_S4_iii._omp_fn.0
	.section	.text._Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0,"axG",@progbits,_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii,comdat
	.type	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, @function
_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0:
.LFB4672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -40(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	movq	-40(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ebx
	testl	%ebx, %ebx
	jne	.L449
.L452:
	movq	-40(%rbp), %rax
	leaq	16(%rax), %rcx
	movq	(%rcx), %rdx
.L450:
	vmovq	%rdx, %xmm0
	vaddsd	-24(%rbp), %xmm0, %xmm0
	vmovq	%xmm0, %rsi
	movq	%rdx, %rax
	lock cmpxchgq	%rsi, (%rcx)
	movq	%rdx, %rsi
	movq	%rax, %rdx
	cmpq	%rsi, %rax
	jne	.L450
	jmp	.L455
.L449:
	call	omp_get_num_threads@PLT
	movl	%eax, %r12d
	call	omp_get_thread_num@PLT
	movl	%eax, %esi
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%eax, %ecx
	movl	%ebx, %eax
	movl	$0, %edx
	divl	%r12d
	movl	%edx, %eax
	cmpl	%eax, %esi
	jb	.L451
.L454:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %ebx
	cmpl	%ebx, %eax
	jnb	.L452
	movl	%eax, -32(%rbp)
.L453:
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm2
	vmovsd	%xmm2, -48(%rbp)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0
	vmovsd	-24(%rbp), %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -24(%rbp)
	incl	-32(%rbp)
	cmpl	%ebx, -32(%rbp)
	jb	.L453
	jmp	.L452
.L451:
	movl	$0, %eax
	incl	%ecx
	jmp	.L454
.L455:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4672:
	.size	_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0, .-_Z23compare_dot_prod_threadIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii._omp_fn.0
	.section	.rodata
	.align 8
.LC1:
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
