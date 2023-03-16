	.file	"parallelisation.cc"
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
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB964:
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
.LFE964:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZnamPv,"axG",@progbits,_ZnamPv,comdat
	.weak	_ZnamPv
	.type	_ZnamPv, @function
_ZnamPv:
.LFB965:
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
.LFE965:
	.size	_ZnamPv, .-_ZnamPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.weak	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.type	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, @function
_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi:
.LFB3722:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3722
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$904, %rsp
	.cfi_offset 3, -24
	movl	%edi, -852(%rbp)
	vmovsd	%xmm0, -864(%rbp)
	movl	%esi, -856(%rbp)
	movl	%edx, -868(%rbp)
	vmovsd	%xmm1, -880(%rbp)
	movq	%rcx, -888(%rbp)
	movq	%r8, -896(%rbp)
	movl	%r9d, -872(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-868(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-768(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE0:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-868(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-736(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE1:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-868(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-704(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE2:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structEC1Ev
	movl	-868(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-672(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE3:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	leaq	-320(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB4:
	call	mpfr_init2@PLT
	leaq	-288(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-256(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-224(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-192(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-320(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-288(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-256(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-224(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-192(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
.LEHE4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -824(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -816(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -808(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -800(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-852(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-640(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE5:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-852(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-608(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE6:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	$0, -844(%rbp)
	jmp	.L8
.L11:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1Ev
	movl	-872(%rbp), %edx
	movl	-844(%rbp), %ecx
	leaq	-576(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB7:
	call	_Z10import_vecIdEvRSt6vectorIT_SaIS1_EEji@PLT
	movl	-868(%rbp), %eax
	movl	%eax, %edi
	call	omp_set_num_threads@PLT
	movl	-852(%rbp), %eax
	cltd
	idivl	-868(%rbp)
	movl	%edx, -836(%rbp)
	movl	-852(%rbp), %eax
	cltd
	idivl	-868(%rbp)
	movl	%eax, -832(%rbp)
	movl	-832(%rbp), %eax
	movl	%eax, -332(%rbp)
	movl	-836(%rbp), %eax
	movl	%eax, -336(%rbp)
	movl	-868(%rbp), %eax
	movl	%eax, -340(%rbp)
	movl	-852(%rbp), %eax
	movl	%eax, -344(%rbp)
	leaq	-768(%rbp), %rax
	movq	%rax, -416(%rbp)
	leaq	-736(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	-704(%rbp), %rax
	movq	%rax, -400(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, -392(%rbp)
	vmovsd	-824(%rbp), %xmm0
	vmovsd	%xmm0, -384(%rbp)
	vmovsd	-816(%rbp), %xmm0
	vmovsd	%xmm0, -376(%rbp)
	vmovsd	-808(%rbp), %xmm0
	vmovsd	%xmm0, -368(%rbp)
	vmovsd	-800(%rbp), %xmm0
	vmovsd	%xmm0, -360(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -352(%rbp)
	leaq	-416(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	leaq	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0(%rip), %rax
	movq	%rax, %rdi
	call	GOMP_parallel@PLT
	vmovsd	-384(%rbp), %xmm0
	vmovsd	%xmm0, -824(%rbp)
	vmovsd	-376(%rbp), %xmm0
	vmovsd	%xmm0, -816(%rbp)
	vmovsd	-368(%rbp), %xmm0
	vmovsd	%xmm0, -808(%rbp)
	vmovsd	-360(%rbp), %xmm0
	vmovsd	%xmm0, -800(%rbp)
	leaq	-160(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-160(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	$0, -840(%rbp)
	jmp	.L9
.L10:
	movl	-840(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-672(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdx
	leaq	-160(%rbp), %rsi
	leaq	-160(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
.LEHE7:
	incl	-840(%rbp)
.L9:
	movl	-840(%rbp), %eax
	cmpl	-868(%rbp), %eax
	jl	.L10
	movl	$200, -828(%rbp)
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-828(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-544(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE8:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-828(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-512(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE9:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-828(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-416(%rbp), %rdx
	leaq	-480(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE10:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-544(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE11:
	leaq	-768(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE12:
	movl	-828(%rbp), %ecx
	leaq	-416(%rbp), %rdx
	movl	-868(%rbp), %esi
	leaq	-448(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
.LEHB13:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE13:
	vmovq	%xmm0, %rax
	movq	%rax, -792(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-512(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE14:
	leaq	-736(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE15:
	movl	-828(%rbp), %ecx
	leaq	-416(%rbp), %rdx
	movl	-868(%rbp), %esi
	leaq	-448(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
.LEHB16:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE16:
	vmovq	%xmm0, %rax
	movq	%rax, -784(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-480(%rbp), %rdx
	leaq	-416(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE17:
	leaq	-704(%rbp), %rdx
	leaq	-448(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
.LEHE18:
	movl	-828(%rbp), %ecx
	leaq	-416(%rbp), %rdx
	movl	-868(%rbp), %esi
	leaq	-448(%rbp), %rax
	movl	$0, %r8d
	movq	%rax, %rdi
.LEHB19:
	call	_Z7FastSumIdET_St6vectorIS0_SaIS0_EEiS3_ii@PLT
.LEHE19:
	vmovq	%xmm0, %rax
	movq	%rax, -776(%rbp)
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-128(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB20:
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-64(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movq	-792(%rbp), %rax
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
	leaq	-128(%rbp), %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	movq	-784(%rbp), %rax
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
	leaq	-96(%rbp), %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
	movq	-776(%rbp), %rax
	leaq	-160(%rbp), %rsi
	leaq	-64(%rbp), %rcx
	movl	$0, %edx
	vmovq	%rax, %xmm0
	movq	%rcx, %rdi
	call	mpfr_sub_d@PLT
	leaq	-160(%rbp), %rdx
	leaq	-64(%rbp), %rsi
	leaq	-64(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div@PLT
	leaq	-64(%rbp), %rdx
	leaq	-256(%rbp), %rsi
	leaq	-256(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_add@PLT
	leaq	-256(%rbp), %rsi
	leaq	-256(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	mpfr_set4@PLT
.LEHE20:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-844(%rbp)
.L8:
	movl	-856(%rbp), %eax
	cmpl	%eax, -844(%rbp)
	jb	.L11
	movl	-856(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-824(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -824(%rbp)
	movl	-856(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-816(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -816(%rbp)
	movl	-856(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-808(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -808(%rbp)
	movl	-856(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	vcvtsi2sdl	%eax, %xmm0, %xmm0
	vmovsd	-800(%rbp), %xmm1
	vdivsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, -800(%rbp)
	vmovsd	-824(%rbp), %xmm2
	vmovsd	%xmm2, -904(%rbp)
	movq	-888(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-904(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	vmovsd	-816(%rbp), %xmm3
	vmovsd	%xmm3, -904(%rbp)
	movq	-888(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-904(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	vmovsd	-808(%rbp), %xmm4
	vmovsd	%xmm4, -904(%rbp)
	movq	-888(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-904(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	vmovsd	-800(%rbp), %xmm5
	vmovsd	%xmm5, -904(%rbp)
	movq	-888(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-904(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	movq	-888(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movq	-888(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, (%rax)
	movl	-856(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-320(%rbp), %rsi
	leaq	-320(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
.LEHB21:
	call	mpfr_div_si@PLT
	movl	-856(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-288(%rbp), %rsi
	leaq	-288(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movl	-856(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-256(%rbp), %rsi
	leaq	-256(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	mpfr_div_si@PLT
	movq	-896(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-312(%rbp), %ebx
	movq	-896(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-320(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-280(%rbp), %ebx
	movq	-896(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-288(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-248(%rbp), %ebx
	movq	-896(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-256(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-216(%rbp), %ebx
	movq	-896(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-224(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movl	-184(%rbp), %ebx
	movq	-896(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-192(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
.LEHE21:
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-768(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L37
	jmp	.L57
.L38:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.L39:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L14
.L40:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L16
.L41:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L18
.L43:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L20
.L44:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L22
.L46:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L24
.L47:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L26
.L48:
	endbr64
	movq	%rax, %rbx
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L28
.L51:
	endbr64
	movq	%rax, %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L30
.L50:
	endbr64
	movq	%rax, %rbx
.L30:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L31
.L53:
	endbr64
	movq	%rax, %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L33
.L52:
	endbr64
	movq	%rax, %rbx
.L33:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L31
.L55:
	endbr64
	movq	%rax, %rbx
	leaq	-448(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L35
.L54:
	endbr64
	movq	%rax, %rbx
.L35:
	leaq	-416(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L31
.L49:
	endbr64
	movq	%rax, %rbx
.L31:
	leaq	-480(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L28:
	leaq	-512(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L26:
	leaq	-544(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L24
.L45:
	endbr64
	movq	%rax, %rbx
.L24:
	leaq	-576(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L36
.L56:
	endbr64
	movq	%rax, %rbx
.L36:
	leaq	-608(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L22:
	leaq	-640(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L20
.L42:
	endbr64
	movq	%rax, %rbx
.L20:
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
.L18:
	leaq	-704(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L16:
	leaq	-736(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L14:
	leaq	-768(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE22:
.L57:
	call	__stack_chk_fail@PLT
.L37:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3722:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"aG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
.LLSDA3722:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3722-.LLSDACSB3722
.LLSDACSB3722:
	.uleb128 .LEHB0-.LFB3722
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L38-.LFB3722
	.uleb128 0
	.uleb128 .LEHB1-.LFB3722
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L39-.LFB3722
	.uleb128 0
	.uleb128 .LEHB2-.LFB3722
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L40-.LFB3722
	.uleb128 0
	.uleb128 .LEHB3-.LFB3722
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L41-.LFB3722
	.uleb128 0
	.uleb128 .LEHB4-.LFB3722
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L42-.LFB3722
	.uleb128 0
	.uleb128 .LEHB5-.LFB3722
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L43-.LFB3722
	.uleb128 0
	.uleb128 .LEHB6-.LFB3722
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L44-.LFB3722
	.uleb128 0
	.uleb128 .LEHB7-.LFB3722
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L45-.LFB3722
	.uleb128 0
	.uleb128 .LEHB8-.LFB3722
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L46-.LFB3722
	.uleb128 0
	.uleb128 .LEHB9-.LFB3722
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L47-.LFB3722
	.uleb128 0
	.uleb128 .LEHB10-.LFB3722
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L48-.LFB3722
	.uleb128 0
	.uleb128 .LEHB11-.LFB3722
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L49-.LFB3722
	.uleb128 0
	.uleb128 .LEHB12-.LFB3722
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L50-.LFB3722
	.uleb128 0
	.uleb128 .LEHB13-.LFB3722
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L51-.LFB3722
	.uleb128 0
	.uleb128 .LEHB14-.LFB3722
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L49-.LFB3722
	.uleb128 0
	.uleb128 .LEHB15-.LFB3722
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L52-.LFB3722
	.uleb128 0
	.uleb128 .LEHB16-.LFB3722
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L53-.LFB3722
	.uleb128 0
	.uleb128 .LEHB17-.LFB3722
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L49-.LFB3722
	.uleb128 0
	.uleb128 .LEHB18-.LFB3722
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L54-.LFB3722
	.uleb128 0
	.uleb128 .LEHB19-.LFB3722
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L55-.LFB3722
	.uleb128 0
	.uleb128 .LEHB20-.LFB3722
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L49-.LFB3722
	.uleb128 0
	.uleb128 .LEHB21-.LFB3722
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L56-.LFB3722
	.uleb128 0
	.uleb128 .LEHB22-.LFB3722
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE3722:
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi, .-_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB3727:
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
.LFE3727:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEEC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEEC2Ev:
.LFB3729:
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
.LFE3729:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2Ev, .-_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEEC1Ev,_ZNSt12_Vector_baseIdSaIdEEC2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2Ev
	.type	_ZNSt6vectorIdSaIdEEC2Ev, @function
_ZNSt6vectorIdSaIdEEC2Ev:
.LFB3731:
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
.LFE3731:
	.size	_ZNSt6vectorIdSaIdEEC2Ev, .-_ZNSt6vectorIdSaIdEEC2Ev
	.weak	_ZNSt6vectorIdSaIdEEC1Ev
	.set	_ZNSt6vectorIdSaIdEEC1Ev,_ZNSt6vectorIdSaIdEEC2Ev
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB3861:
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
.LFE3861:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB3864:
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
.LFE3864:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_:
.LFB3867:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3867
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
.LEHB23:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE23:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
.LEHE24:
	jmp	.L66
.L65:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB25:
	call	_Unwind_Resume@PLT
.LEHE25:
.L66:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3867:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
.LLSDA3867:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3867-.LLSDACSB3867
.LLSDACSB3867:
	.uleb128 .LEHB23-.LFB3867
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB24-.LFB3867
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L65-.LFB3867
	.uleb128 0
	.uleb128 .LEHB25-.LFB3867
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE3867:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB3870:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3870
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
.LFE3870:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEED2Ev,"aG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
.LLSDA3870:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3870-.LLSDACSB3870
.LLSDACSB3870:
.LLSDACSE3870:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSaIA1_13__mpfr_structEC2Ev,"axG",@progbits,_ZNSaIA1_13__mpfr_structEC5Ev,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structEC2Ev
	.type	_ZNSaIA1_13__mpfr_structEC2Ev, @function
_ZNSaIA1_13__mpfr_structEC2Ev:
.LFB3873:
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
	call	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3873:
	.size	_ZNSaIA1_13__mpfr_structEC2Ev, .-_ZNSaIA1_13__mpfr_structEC2Ev
	.weak	_ZNSaIA1_13__mpfr_structEC1Ev
	.set	_ZNSaIA1_13__mpfr_structEC1Ev,_ZNSaIA1_13__mpfr_structEC2Ev
	.section	.text._ZNSaIA1_13__mpfr_structED2Ev,"axG",@progbits,_ZNSaIA1_13__mpfr_structED5Ev,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structED2Ev
	.type	_ZNSaIA1_13__mpfr_structED2Ev, @function
_ZNSaIA1_13__mpfr_structED2Ev:
.LFB3876:
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
	call	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3876:
	.size	_ZNSaIA1_13__mpfr_structED2Ev, .-_ZNSaIA1_13__mpfr_structED2Ev
	.weak	_ZNSaIA1_13__mpfr_structED1Ev
	.set	_ZNSaIA1_13__mpfr_structED1Ev,_ZNSaIA1_13__mpfr_structED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_:
.LFB3879:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3879
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
.LEHB26:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
.LEHE26:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
.LEHE27:
	jmp	.L73
.L72:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB28:
	call	_Unwind_Resume@PLT
.LEHE28:
.L73:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3879:
	.section	.gcc_except_table._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"aG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
.LLSDA3879:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3879-.LLSDACSB3879
.LLSDACSB3879:
	.uleb128 .LEHB26-.LFB3879
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB3879
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L72-.LFB3879
	.uleb128 0
	.uleb128 .LEHB28-.LFB3879
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE3879:
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
	.set	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev:
.LFB3882:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3882
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
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3882:
	.section	.gcc_except_table._ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev,"aG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED5Ev,comdat
.LLSDA3882:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3882-.LLSDACSB3882
.LLSDACSB3882:
.LLSDACSE3882:
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	.set	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev:
.LFB3885:
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
.LFE3885:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB3888:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3888
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
.LFE3888:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
.LLSDA3888:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3888-.LLSDACSB3888
.LLSDACSB3888:
.LLSDACSE3888:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB3890:
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
.LFE3890:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm:
.LFB3891:
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
.LFE3891:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ERKS1_
	.type	_ZNSt6vectorIdSaIdEEC2ERKS1_, @function
_ZNSt6vectorIdSaIdEEC2ERKS1_:
.LFB3893:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3893
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
.LEHB29:
	call	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
.LEHE29:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rcx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB30:
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE30:
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
.LEHB31:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
.LEHE31:
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L84
	jmp	.L87
.L85:
	endbr64
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB32:
	call	_Unwind_Resume@PLT
.L86:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE32:
.L87:
	call	__stack_chk_fail@PLT
.L84:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3893:
	.section	.gcc_except_table._ZNSt6vectorIdSaIdEEC2ERKS1_,"aG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
.LLSDA3893:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3893-.LLSDACSB3893
.LLSDACSB3893:
	.uleb128 .LEHB29-.LFB3893
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB3893
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L85-.LFB3893
	.uleb128 0
	.uleb128 .LEHB31-.LFB3893
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L86-.LFB3893
	.uleb128 0
	.uleb128 .LEHB32-.LFB3893
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE3893:
	.section	.text._ZNSt6vectorIdSaIdEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ERKS1_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2ERKS1_, .-_ZNSt6vectorIdSaIdEEC2ERKS1_
	.weak	_ZNSt6vectorIdSaIdEEC1ERKS1_
	.set	_ZNSt6vectorIdSaIdEEC1ERKS1_,_ZNSt6vectorIdSaIdEEC2ERKS1_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB3959:
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
.LFE3959:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB3962:
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
.LFE3962:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.rodata
	.align 8
.LC1:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB3964:
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
	je	.L91
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L91:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3964:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_:
.LFB3966:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3966
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
.LEHB33:
	call	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
.LEHE33:
	jmp	.L97
.L96:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB34:
	call	_Unwind_Resume@PLT
.LEHE34:
.L97:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3966:
	.section	.gcc_except_table._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"aG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
.LLSDA3966:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3966-.LLSDACSB3966
.LLSDACSB3966:
	.uleb128 .LEHB33-.LFB3966
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L96-.LFB3966
	.uleb128 0
	.uleb128 .LEHB34-.LFB3966
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE3966:
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_,_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.type	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, @function
_ZNSt6vectorIdSaIdEE21_M_default_initializeEm:
.LFB3968:
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
.LFE3968:
	.size	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, .-_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB3969:
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
.LFE3969:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB3970:
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
.LFE3970:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev:
.LFB3972:
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
.LFE3972:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1Ev,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev:
.LFB3975:
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
.LFE3975:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED1Ev,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB3977:
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
	call	_ZNSaIA1_13__mpfr_structEC1ERKS1_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	testb	%bl, %bl
	je	.L105
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L105:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3977:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev:
.LFB3980:
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
	call	_ZNSaIA1_13__mpfr_structED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3980:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_:
.LFB3982:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3982
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
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC1ERKS2_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
.LEHE35:
	jmp	.L112
.L111:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Unwind_Resume@PLT
.LEHE36:
.L112:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3982:
	.section	.gcc_except_table._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"aG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
.LLSDA3982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3982-.LLSDACSB3982
.LLSDACSB3982:
	.uleb128 .LEHB35-.LFB3982
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L111-.LFB3982
	.uleb128 0
	.uleb128 .LEHB36-.LFB3982
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
.LLSDACSE3982:
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev:
.LFB3985:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3985
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
	sarq	$5, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3985:
	.section	.gcc_except_table._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev,"aG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED5Ev,comdat
.LLSDA3985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3985-.LLSDACSB3985
.LLSDACSB3985:
.LLSDACSE3985:
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm:
.LFB3987:
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
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3987:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB3988:
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
.LFE3988:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E:
.LFB3989:
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
	call	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3989:
	.size	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB3991:
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
.LFE3991:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB3993:
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
	je	.L121
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L121:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3993:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, @function
_ZNKSt6vectorIdSaIdEE4sizeEv:
.LFB3994:
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
.LFE3994:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_:
.LFB3995:
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
	je	.L126
	call	__stack_chk_fail@PLT
.L126:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3995:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaIdEdE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB3996:
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
.LFE3996:
	.size	_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE5beginEv
	.type	_ZNKSt6vectorIdSaIdEE5beginEv, @function
_ZNKSt6vectorIdSaIdEE5beginEv:
.LFB3997:
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
	je	.L131
	call	__stack_chk_fail@PLT
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3997:
	.size	_ZNKSt6vectorIdSaIdEE5beginEv, .-_ZNKSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNKSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE3endEv
	.type	_ZNKSt6vectorIdSaIdEE3endEv, @function
_ZNKSt6vectorIdSaIdEE3endEv:
.LFB3998:
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
	je	.L134
	call	__stack_chk_fail@PLT
.L134:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3998:
	.size	_ZNKSt6vectorIdSaIdEE3endEv, .-_ZNKSt6vectorIdSaIdEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E:
.LFB3999:
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
.LFE3999:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPddET0_T_SA_S9_RSaIT1_E
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB4055:
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
	je	.L139
	call	__stack_chk_fail@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4055:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB4057:
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
.LFE4057:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB4060:
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
.LFE4060:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm:
.LFB4062:
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
.LFE4062:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
.LFB4063:
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
.LFE4063:
	.size	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB4064:
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
.LFE4064:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_:
.LFB4066:
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
	movabsq	$288230376151711743, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L148
	call	__stack_chk_fail@PLT
.L148:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4066:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaIA1_13__mpfr_structEC2ERKS1_,"axG",@progbits,_ZNSaIA1_13__mpfr_structEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.type	_ZNSaIA1_13__mpfr_structEC2ERKS1_, @function
_ZNSaIA1_13__mpfr_structEC2ERKS1_:
.LFB4068:
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
	call	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4068:
	.size	_ZNSaIA1_13__mpfr_structEC2ERKS1_, .-_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.weak	_ZNSaIA1_13__mpfr_structEC1ERKS1_
	.set	_ZNSaIA1_13__mpfr_structEC1ERKS1_,_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_:
.LFB4071:
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
	call	_ZNSaIA1_13__mpfr_structEC2ERKS1_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4071:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm:
.LFB4073:
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
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	salq	$5, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4073:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m:
.LFB4074:
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
	je	.L154
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
.L154:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4074:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E:
.LFB4075:
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
	call	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4075:
	.size	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_
	.type	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_, @function
_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_:
.LFB4076:
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
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4076:
	.size	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_, .-_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB4078:
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
.LFE4078:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_:
.LFB4079:
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
.LFE4079:
	.size	_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaIdEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_:
.LFB4081:
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
.LFE4081:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB4083:
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
.LFE4083:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB4133:
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
.LFE4133:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB4134:
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
	jnb	.L167
	movq	-16(%rbp), %rax
	jmp	.L168
.L167:
	movq	-8(%rbp), %rax
.L168:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4134:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB4136:
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
.LFE4136:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB4138:
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
	je	.L171
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L173
.L171:
	movl	$0, %eax
.L173:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4138:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPdmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
.LFB4139:
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
.LFE4139:
	.size	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB4140:
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
.LFE4140:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_:
.LFB4141:
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
	call	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4141:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_:
.LFB4143:
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
.LFE4143:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev:
.LFB4146:
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
.LFE4146:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm:
.LFB4148:
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
	je	.L182
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	jmp	.L184
.L182:
	movl	$0, %eax
.L184:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4148:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m:
.LFB4149:
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
	call	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4149:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
	.section	.text._ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_:
.LFB4150:
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
	movb	$0, -1(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4150:
	.size	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_:
.LFB4151:
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
.LFE4151:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB4152:
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
.LFE4152:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_:
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
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4153:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdEET0_T_SC_SB_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB4180:
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
.LFE4180:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB4181:
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
.LFE4181:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZSt11__addressofIdEPT_RS0_,"axG",@progbits,_ZSt11__addressofIdEPT_RS0_,comdat
	.weak	_ZSt11__addressofIdEPT_RS0_
	.type	_ZSt11__addressofIdEPT_RS0_, @function
_ZSt11__addressofIdEPT_RS0_:
.LFB4183:
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
.LFE4183:
	.size	_ZSt11__addressofIdEPT_RS0_, .-_ZSt11__addressofIdEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
.LFB4182:
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
	je	.L200
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
.L200:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4182:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv:
.LFB4184:
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
	call	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4184:
	.size	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m:
.LFB4185:
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
	call	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4185:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m:
.LFB4186:
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
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4186:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_:
.LFB4187:
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
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L209
.L210:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	movq	%rax, %rdi
	call	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	decq	-32(%rbp)
	addq	$32, -8(%rbp)
.L209:
	cmpq	$0, -32(%rbp)
	jne	.L210
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4187:
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_:
.LFB4188:
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
.LFE4188:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET0_T_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB4201:
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
.LFE4201:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB4202:
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
	je	.L217
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L218
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L218:
	call	_ZSt17__throw_bad_allocv@PLT
.L217:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4202:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZSt10_ConstructIdJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIdJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIdJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIdJEEvPT_DpOT0_, @function
_ZSt10_ConstructIdJEEvPT_DpOT0_:
.LFB4203:
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
.LFE4203:
	.size	_ZSt10_ConstructIdJEEvPT_DpOT0_, .-_ZSt10_ConstructIdJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
.LFB4204:
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
.LFE4204:
	.size	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv:
.LFB4205:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$288230376151711743, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4205:
	.size	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv:
.LFB4206:
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
	call	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L226
	movabsq	$576460752303423487, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L227
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L227:
	call	_ZSt17__throw_bad_allocv@PLT
.L226:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4206:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv
	.section	.text._ZSt11__addressofIA1_13__mpfr_structEPT_RS2_,"axG",@progbits,_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_,comdat
	.weak	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	.type	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_, @function
_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_:
.LFB4207:
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
.LFE4207:
	.size	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_, .-_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	.section	.text._ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_, @function
_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_:
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
	movq	%rax, %rsi
	movl	$32, %edi
	call	_ZnamPv
	movl	$0, %edx
	jmp	.L232
.L233:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	addq	$32, %rax
	decq	%rdx
.L232:
	testq	%rdx, %rdx
	jns	.L233
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4208:
	.size	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_, .-_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_:
.LFB4209:
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
.LFE4209:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEET_S8_
	.section	.text._ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,"axG",@progbits,_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_,comdat
	.weak	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.type	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, @function
_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_:
.LFB4210:
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
.LFE4210:
	.size	_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_, .-_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEEPdET1_T0_SA_S9_
	.section	.text._ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB4215:
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
.LFE4215:
	.size	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB4216:
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
	jne	.L241
	movq	-8(%rbp), %rax
	jmp	.L242
.L241:
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
.L242:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4216:
	.size	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB4217:
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
.LFE4217:
	.size	_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKdSt6vectorIdSaIdEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB4218:
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
.LFE4218:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB4219:
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
.LFE4219:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB4220:
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
.LFE4220:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZSt8__fill_aIPddEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPddEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPddEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPddEvT_S1_RKT0_, @function
_ZSt8__fill_aIPddEvT_S1_RKT0_:
.LFB4221:
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
.LFE4221:
	.size	_ZSt8__fill_aIPddEvT_S1_RKT0_, .-_ZSt8__fill_aIPddEvT_S1_RKT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv:
.LFB4222:
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
.LFE4222:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB4223:
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
.LFE4223:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB4224:
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
	jmp	.L257
.L258:
	movq	-24(%rbp), %rax
	vmovsd	-8(%rbp), %xmm0
	vmovsd	%xmm0, (%rax)
	addq	$8, -24(%rbp)
.L257:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L258
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4224:
	.size	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB4225:
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
	je	.L260
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L260:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4225:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4226:
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
	jne	.L264
	cmpl	$65535, -8(%rbp)
	jne	.L264
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
.L264:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4226:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_parallelisation.cc, @function
_GLOBAL__sub_I_parallelisation.cc:
.LFB4227:
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
.LFE4227:
	.size	_GLOBAL__sub_I_parallelisation.cc, .-_GLOBAL__sub_I_parallelisation.cc
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_parallelisation.cc
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.type	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0, @function
_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0:
.LFB4228:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4228
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rdi, -472(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	movq	-472(%rbp), %rax
	movl	84(%rax), %eax
	movl	%eax, -424(%rbp)
	movq	-472(%rbp), %rax
	movl	80(%rax), %eax
	movl	%eax, -420(%rbp)
	movq	-472(%rbp), %rax
	movl	76(%rax), %eax
	movl	%eax, -416(%rbp)
	movq	-472(%rbp), %rax
	movl	72(%rax), %eax
	movl	%eax, -412(%rbp)
	movl	-416(%rbp), %ebx
	testl	%ebx, %ebx
	je	.L266
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
	jb	.L268
.L295:
	imull	%ecx, %esi
	movl	%esi, %edx
	addl	%edx, %eax
	leal	(%rax,%rcx), %r12d
	cmpl	%r12d, %eax
	jnb	.L266
	movl	%eax, -452(%rbp)
.L286:
	movq	%rsp, %rax
	movq	%rax, %r13
	call	omp_get_thread_num@PLT
	movl	%eax, -408(%rbp)
	movl	-408(%rbp), %eax
	imull	-424(%rbp), %eax
	movl	%eax, %edx
	movl	-408(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jl	.L270
	jmp	.L297
.L294:
	addl	%edx, %eax
	movl	%eax, -404(%rbp)
	movl	-404(%rbp), %edx
	movl	-424(%rbp), %eax
	addl	%eax, %edx
	movl	-408(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jl	.L272
	jmp	.L298
.L293:
	addl	%edx, %eax
	movl	%eax, -400(%rbp)
	movl	-400(%rbp), %eax
	subl	-404(%rbp), %eax
	movl	%eax, -396(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-396(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-128(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-396(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-128(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movl	-404(%rbp), %eax
	movl	%eax, -448(%rbp)
	nop
.L292:
	movl	-400(%rbp), %eax
	cmpl	%eax, -448(%rbp)
	jb	.L274
	movl	-396(%rbp), %eax
	movslq	%eax, %rdx
	decq	%rdx
	movq	%rdx, -368(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, -496(%rbp)
	movq	$0, -488(%rbp)
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	decq	%rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L275:
	cmpq	%rdx, %rsp
	je	.L276
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L275
.L276:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L277
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L277:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -360(%rbp)
	movl	-396(%rbp), %eax
	movslq	%eax, %rdx
	decq	%rdx
	movq	%rdx, -352(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -512(%rbp)
	movq	$0, -504(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, -528(%rbp)
	movq	$0, -520(%rbp)
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movl	$16, %eax
	decq	%rax
	addq	%rdx, %rax
	movl	$16, %ebx
	movl	$0, %edx
	divq	%rbx
	imulq	$16, %rax, %rax
	movq	%rax, %rcx
	andq	$-4096, %rcx
	movq	%rsp, %rdx
	subq	%rcx, %rdx
.L278:
	cmpq	%rdx, %rsp
	je	.L279
	subq	$4096, %rsp
	orq	$0, 4088(%rsp)
	jmp	.L278
.L279:
	movq	%rax, %rdx
	andl	$4095, %edx
	subq	%rdx, %rsp
	movq	%rax, %rdx
	andl	$4095, %edx
	testq	%rdx, %rdx
	je	.L280
	andl	$4095, %eax
	subq	$8, %rax
	addq	%rsp, %rax
	orq	$0, (%rax)
.L280:
	movq	%rsp, %rax
	addq	$7, %rax
	shrq	$3, %rax
	salq	$3, %rax
	movq	%rax, -344(%rbp)
	movl	$0, -444(%rbp)
	nop
.L291:
	movl	-396(%rbp), %eax
	cmpl	%eax, -444(%rbp)
	jb	.L281
	leaq	-96(%rbp), %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	leaq	-96(%rbp), %rdx
	movl	$0, %esi
	movq	.LC0(%rip), %rax
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	leaq	-336(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -440(%rbp)
	nop
.L290:
	cmpl	$9, -440(%rbp)
	jbe	.L282
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	-452(%rbp), %eax
	movq	-472(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-88(%rbp), %ebx
	movl	-452(%rbp), %eax
	movq	-472(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movq	%rax, %rdi
	leaq	-96(%rbp), %rax
	movl	%ebx, %ecx
	movl	$0, %edx
	movq	%rax, %rsi
	call	mpfr_set4@PLT
	movq	-312(%rbp), %rax
	movq	-328(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	32(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	%xmm0, 32(%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -392(%rbp)
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -436(%rbp)
	nop
.L289:
	cmpl	$9, -436(%rbp)
	jbe	.L283
	vmovsd	-392(%rbp), %xmm2
	vmovsd	%xmm2, -480(%rbp)
	movl	-452(%rbp), %eax
	movq	-472(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-480(%rbp), %xmm2
	vmovsd	%xmm2, (%rax)
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movq	-280(%rbp), %rax
	movq	-296(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	40(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	%xmm0, 40(%rax)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -384(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -376(%rbp)
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -432(%rbp)
	nop
.L288:
	cmpl	$9, -432(%rbp)
	jbe	.L284
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-384(%rbp), %xmm3
	vmovsd	%xmm3, -480(%rbp)
	movl	-452(%rbp), %eax
	movq	-472(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-480(%rbp), %xmm3
	vmovsd	%xmm3, (%rax)
	leaq	-240(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	movl	$0, -428(%rbp)
	nop
.L287:
	cmpl	$9, -428(%rbp)
	jbe	.L285
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	clock_gettime@PLT
	vmovsd	-376(%rbp), %xmm4
	vmovsd	%xmm4, -480(%rbp)
	movl	-452(%rbp), %eax
	movq	-472(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-480(%rbp), %xmm4
	vmovsd	%xmm4, (%rax)
	movq	-248(%rbp), %rax
	movq	-264(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	48(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	%xmm0, 48(%rax)
	movq	-120(%rbp), %rax
	movq	-232(%rbp), %rdx
	subq	%rdx, %rax
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	56(%rax), %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	-472(%rbp), %rax
	vmovsd	%xmm0, 56(%rax)
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%r13, %rsp
	incl	-452(%rbp)
	cmpl	%r12d, -452(%rbp)
	jb	.L286
	jmp	.L266
.L285:
	leaq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	leaq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	movl	-396(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z25Rare_blas_dot_prod_onlineIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -376(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-428(%rbp)
	jmp	.L287
.L284:
	leaq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	leaq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	movl	-396(%rbp), %edx
	leaq	-160(%rbp), %rcx
	leaq	-128(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z25Rare_blas_dot_prod_hybridIdET_St6vectorIS0_SaIS0_EES3_i@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -384(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-432(%rbp)
	jmp	.L288
.L283:
	leaq	-192(%rbp), %rdx
	leaq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	leaq	-224(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEC1ERKS1_
	movl	-396(%rbp), %eax
	leaq	-160(%rbp), %rsi
	leaq	-128(%rbp), %rdi
	movl	$1, %r8d
	movl	$1, %ecx
	movl	%eax, %edx
	call	_Z15common_dot_prodIdET_St6vectorIS0_SaIS0_EES3_iii@PLT
	vmovq	%xmm0, %rax
	movq	%rax, -392(%rbp)
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	incl	-436(%rbp)
	jmp	.L289
.L282:
	leaq	-96(%rbp), %rax
	movq	-344(%rbp), %rdx
	movq	-360(%rbp), %rsi
	movl	-396(%rbp), %edi
	movq	%rax, %rcx
	call	_Z13dot_prod_mpfriPA1_13__mpfr_structS1_PS_@PLT
	incl	-440(%rbp)
	jmp	.L290
.L281:
	movl	-444(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-360(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-444(%rbp), %edx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-444(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-360(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	movl	-444(%rbp), %eax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-344(%rbp), %rax
	addq	%rdx, %rax
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-444(%rbp), %edx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movl	-444(%rbp), %edx
	movq	%rdx, %rcx
	salq	$5, %rcx
	movq	-344(%rbp), %rdx
	addq	%rcx, %rdx
	movl	$0, %esi
	vmovq	%rax, %xmm0
	movq	%rdx, %rdi
	call	mpfr_set_d@PLT
	incl	-444(%rbp)
	jmp	.L291
.L274:
	movl	-448(%rbp), %eax
	incl	%eax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm5
	vmovsd	%xmm5, -480(%rbp)
	movl	-404(%rbp), %edx
	movl	-448(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-480(%rbp), %xmm5
	vmovsd	%xmm5, (%rax)
	movl	-412(%rbp), %edx
	movl	-448(%rbp), %eax
	addl	%edx, %eax
	incl	%eax
	movl	%eax, %edx
	movq	-472(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	(%rax), %xmm6
	vmovsd	%xmm6, -480(%rbp)
	movl	-404(%rbp), %edx
	movl	-448(%rbp), %eax
	subl	%edx, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	vmovsd	-480(%rbp), %xmm6
	vmovsd	%xmm6, (%rax)
	incl	-448(%rbp)
	jmp	.L292
.L298:
	movl	$0, %eax
	jmp	.L293
.L272:
	movl	$1, %eax
	jmp	.L293
.L297:
	movl	-420(%rbp), %eax
	jmp	.L294
.L270:
	movl	-408(%rbp), %eax
	jmp	.L294
.L268:
	movl	$0, %eax
	incl	%ecx
	jmp	.L295
.L266:
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	je	.L296
	call	__stack_chk_fail@PLT
.L296:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4228:
	.section	.gcc_except_table._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"aG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
.LLSDA4228:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4228-.LLSDACSB4228
.LLSDACSB4228:
.LLSDACSE4228:
	.section	.text._Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0,"axG",@progbits,_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi,comdat
	.size	_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0, .-_Z12par_dot_prodIdEvidiidRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEi._omp_fn.0
	.section	.rodata
	.align 8
.LC0:
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
