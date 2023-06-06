	.file	"compare_time_vec6.cpp"
	.text
	.section	.text._ZSt17__size_to_integerm,"axG",@progbits,_ZSt17__size_to_integerm,comdat
	.weak	_ZSt17__size_to_integerm
	.type	_ZSt17__size_to_integerm, @function
_ZSt17__size_to_integerm:
.LFB291:
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
.LFE291:
	.size	_ZSt17__size_to_integerm, .-_ZSt17__size_to_integerm
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB358:
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
.LFE358:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZnamPv,"axG",@progbits,_ZnamPv,comdat
	.weak	_ZnamPv
	.type	_ZnamPv, @function
_ZnamPv:
.LFB359:
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
.LFE359:
	.size	_ZnamPv, .-_ZnamPv
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.type	_Py_IS_TYPE, @function
_Py_IS_TYPE:
.LFB3393:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, -16(%rbp)
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3393:
	.size	_Py_IS_TYPE, .-_Py_IS_TYPE
	.type	_Py_DECREF, @function
_Py_DECREF:
.LFB3399:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	jne	.L11
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Py_Dealloc@PLT
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3399:
	.size	_Py_DECREF, .-_Py_DECREF
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
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
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L13
	movq	-16(%rbp), %rax
	jmp	.L14
.L13:
	movq	-8(%rbp), %rax
.L14:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4220:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.local	_ZL11PyArray_API
	.comm	_ZL11PyArray_API,8,8
	.section	.rodata
.LC0:
	.string	"numpy.core._multiarray_umath"
.LC1:
	.string	"_ARRAY_API"
.LC2:
	.string	"_ARRAY_API not found"
	.align 8
.LC3:
	.string	"_ARRAY_API is not PyCapsule object"
.LC4:
	.string	"_ARRAY_API is NULL pointer"
	.align 8
.LC5:
	.string	"module compiled against ABI version 0x%x but this version of numpy is 0x%x"
	.align 8
.LC6:
	.string	"module compiled against API version 0x%x but this version of numpy is 0x%x"
	.align 8
.LC7:
	.string	"FATAL: module compiled as unknown endian"
	.align 8
.LC8:
	.string	"FATAL: module compiled as little endian, but detected different endianness at runtime"
	.text
	.type	_import_array, @function
_import_array:
.LFB4681:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	PyImport_ImportModule@PLT
	movq	%rax, -16(%rbp)
	movq	$0, -8(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L16
	movl	$-1, %eax
	jmp	.L17
.L16:
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PyObject_GetAttrString@PLT
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_Py_DECREF
	cmpq	$0, -8(%rbp)
	jne	.L18
	movq	PyExc_AttributeError(%rip), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PyErr_SetString@PLT
	movl	$-1, %eax
	jmp	.L17
.L18:
	movq	-8(%rbp), %rax
	leaq	PyCapsule_Type(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_Py_IS_TYPE
	testl	%eax, %eax
	sete	%al
	testb	%al, %al
	je	.L19
	movq	PyExc_RuntimeError(%rip), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PyErr_SetString@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Py_DECREF
	movl	$-1, %eax
	jmp	.L17
.L19:
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	PyCapsule_GetPointer@PLT
	movq	%rax, _ZL11PyArray_API(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Py_DECREF
	movq	_ZL11PyArray_API(%rip), %rax
	testq	%rax, %rax
	jne	.L20
	movq	PyExc_RuntimeError(%rip), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	PyErr_SetString@PLT
	movl	$-1, %eax
	jmp	.L17
.L20:
	movq	_ZL11PyArray_API(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	cmpl	$16777225, %eax
	setne	%al
	testb	%al, %al
	je	.L21
	movq	_ZL11PyArray_API(%rip), %rax
	movq	(%rax), %rax
	call	*%rax
	movl	%eax, %edx
	movq	PyExc_RuntimeError(%rip), %rax
	movl	%edx, %ecx
	movl	$16777225, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	PyErr_Format@PLT
	movl	$-1, %eax
	jmp	.L17
.L21:
	movq	_ZL11PyArray_API(%rip), %rax
	addq	$1688, %rax
	movq	(%rax), %rax
	call	*%rax
	cmpl	$13, %eax
	setbe	%al
	testb	%al, %al
	je	.L22
	movq	_ZL11PyArray_API(%rip), %rax
	addq	$1688, %rax
	movq	(%rax), %rax
	call	*%rax
	movl	%eax, %edx
	movq	PyExc_RuntimeError(%rip), %rax
	movl	%edx, %ecx
	movl	$14, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	PyErr_Format@PLT
	movl	$-1, %eax
	jmp	.L17
.L22:
	movq	_ZL11PyArray_API(%rip), %rax
	addq	$1680, %rax
	movq	(%rax), %rax
	call	*%rax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L23
	movq	PyExc_RuntimeError(%rip), %rax
	leaq	.LC7(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	PyErr_Format@PLT
	movl	$-1, %eax
	jmp	.L17
.L23:
	cmpl	$1, -20(%rbp)
	je	.L24
	movq	PyExc_RuntimeError(%rip), %rax
	leaq	.LC8(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	PyErr_Format@PLT
	movl	$-1, %eax
	jmp	.L17
.L24:
	movl	$0, %eax
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4681:
	.size	_import_array, .-_import_array
	.local	_ZN13matplotlibcpp6detailL9s_backendE
	.comm	_ZN13matplotlibcpp6detailL9s_backendE,32,32
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB4834:
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
.LFE4834:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.rodata
.LC31:
	.string	"\nTime_fma_vec_standard = \n {"
.LC32:
	.string	"%.10f"
.LC33:
	.string	"%.10f, "
.LC34:
	.string	"};"
	.align 8
.LC35:
	.string	"\nTime_fma_vec_par_standard = \n {"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4849:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4849
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$936, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movl	$5, -924(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -896(%rbp)
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -888(%rbp)
	movl	$7, -920(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-920(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-880(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE0:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structEC1Ev
	movl	-920(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-848(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE1:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-816(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE2:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-784(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE3:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-752(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE4:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-720(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE5:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE6:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structEC1Ev
	leaq	-240(%rbp), %rdx
	leaq	-656(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB7:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
.LEHE7:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L27
.L28:
	movl	-940(%rbp), %edx
	leaq	-848(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movl	$4000, %esi
	movq	%rax, %rdi
.LEHB8:
	call	mpfr_init2@PLT
	addl	$1, -940(%rbp)
.L27:
	movl	-920(%rbp), %eax
	cmpl	%eax, -940(%rbp)
	jb	.L28
	jmp	.L29
.L30:
	movl	-936(%rbp), %edx
	leaq	-784(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-936(%rbp), %edx
	leaq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
	movl	-936(%rbp), %edx
	leaq	-656(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	movl	$4000, %esi
	movq	%rax, %rdi
	call	mpfr_init2@PLT
.LEHE8:
	addl	$1, -936(%rbp)
.L29:
	cmpl	$1, -936(%rbp)
	jbe	.L30
	movl	$20, -916(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-624(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE9:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-592(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE10:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-560(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE11:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE12:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-496(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE13:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-464(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE14:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-432(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE15:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-400(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE16:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE17:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE18:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE19:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-240(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE20:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	movl	-916(%rbp), %eax
	movslq	%eax, %rcx
	leaq	-904(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt6vectorIdSaIdEEC1EmRKS0_
.LEHE21:
	leaq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	.LC13(%rip), %xmm0
	movsd	%xmm0, -192(%rbp)
	movsd	.LC14(%rip), %xmm0
	movsd	%xmm0, -184(%rbp)
	movsd	.LC15(%rip), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	.LC16(%rip), %xmm0
	movsd	%xmm0, -168(%rbp)
	movsd	.LC17(%rip), %xmm0
	movsd	%xmm0, -160(%rbp)
	movsd	.LC18(%rip), %xmm0
	movsd	%xmm0, -152(%rbp)
	movsd	.LC19(%rip), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	.LC20(%rip), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	.LC21(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	.LC22(%rip), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	.LC23(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	.LC24(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	.LC25(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC26(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC27(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC28(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC29(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC30(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, %r12
	movl	$20, %r13d
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%r12, %rax
	movq	%r13, %rdx
	leaq	-624(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE
	movl	$0, -932(%rbp)
	movq	$0, -912(%rbp)
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE5beginEv
	movq	%rax, -912(%rbp)
	jmp	.L31
.L32:
	leaq	-912(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	movsd	(%rax), %xmm0
	cvttsd2sil	%xmm0, %eax
	leaq	-848(%rbp), %rcx
	leaq	-880(%rbp), %rdx
	movsd	-896(%rbp), %xmm0
	movl	-924(%rbp), %esi
	movq	-888(%rbp), %rdi
	movl	$8, %r9d
	movl	$3, %r8d
	movapd	%xmm0, %xmm1
	movq	%rdi, %xmm0
	movl	%eax, %edi
	call	_Z20compare_dot_prod_fmaIdEvididRSt6vectorIT_SaIS1_EERS0_IA1_13__mpfr_structSaIS6_EEii@PLT
	leaq	-880(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm2
	movsd	%xmm2, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm2
	movsd	%xmm2, (%rax)
	leaq	-880(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm3
	movsd	%xmm3, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm3
	movsd	%xmm3, (%rax)
	leaq	-880(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm4
	movsd	%xmm4, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm4
	movsd	%xmm4, (%rax)
	leaq	-880(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm5
	movsd	%xmm5, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-496(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm5
	movsd	%xmm5, (%rax)
	leaq	-880(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm6
	movsd	%xmm6, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-464(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm6
	movsd	%xmm6, (%rax)
	leaq	-880(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	(%rax), %xmm7
	movsd	%xmm7, -952(%rbp)
	movl	-932(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-432(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movsd	-952(%rbp), %xmm7
	movsd	%xmm7, (%rax)
	addl	$1, -932(%rbp)
	leaq	-912(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi
.L31:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE3endEv
	movq	%rax, -904(%rbp)
	leaq	-904(%rbp), %rdx
	leaq	-912(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	testb	%al, %al
	jne	.L32
	leaq	.LC31(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -928(%rbp)
	jmp	.L33
.L36:
	movl	-916(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -928(%rbp)
	jne	.L34
	movl	-928(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L35
.L34:
	movl	-928(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-592(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L35:
	addl	$1, -928(%rbp)
.L33:
	movl	-928(%rbp), %eax
	cmpl	-916(%rbp), %eax
	jl	.L36
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC35(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -928(%rbp)
	jmp	.L37
.L40:
	movl	-916(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -928(%rbp)
	jne	.L38
	movl	-928(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	jmp	.L39
.L38:
	movl	-928(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEEixEm
	movq	(%rax), %rax
	movq	%rax, %xmm0
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
.L39:
	addl	$1, -928(%rbp)
.L37:
	movl	-928(%rbp), %eax
	cmpl	-916(%rbp), %eax
	jl	.L40
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.LEHE22:
	movl	$0, %ebx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	leaq	-752(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-848(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movl	%ebx, %eax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L84
	jmp	.L108
.L85:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB23:
	call	_Unwind_Resume@PLT
.L86:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L44
.L87:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L46
.L88:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L48
.L89:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L50
.L90:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L52
.L91:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L54
.L92:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIA1_13__mpfr_structED1Ev
	jmp	.L56
.L94:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L58
.L95:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L60
.L96:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L62
.L97:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L64
.L98:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L66
.L99:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L68
.L100:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L70
.L101:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L72
.L102:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L74
.L103:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L76
.L104:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L78
.L105:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L80
.L106:
	endbr64
	movq	%rax, %rbx
	leaq	-904(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L82
.L107:
	endbr64
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L82:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L80:
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L78:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L76:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L74:
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L72:
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L70:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L68:
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L66:
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L64:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L62:
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L60:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	jmp	.L58
.L93:
	endbr64
	movq	%rax, %rbx
.L58:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
.L56:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L54:
	leaq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
.L52:
	leaq	-752(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L50:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
.L48:
	leaq	-816(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L46:
	leaq	-848(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
.L44:
	leaq	-880(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE23:
.L108:
	call	__stack_chk_fail@PLT
.L84:
	addq	$936, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4849:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4849:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4849-.LLSDACSB4849
.LLSDACSB4849:
	.uleb128 .LEHB0-.LFB4849
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L85-.LFB4849
	.uleb128 0
	.uleb128 .LEHB1-.LFB4849
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L86-.LFB4849
	.uleb128 0
	.uleb128 .LEHB2-.LFB4849
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L87-.LFB4849
	.uleb128 0
	.uleb128 .LEHB3-.LFB4849
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L88-.LFB4849
	.uleb128 0
	.uleb128 .LEHB4-.LFB4849
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L89-.LFB4849
	.uleb128 0
	.uleb128 .LEHB5-.LFB4849
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L90-.LFB4849
	.uleb128 0
	.uleb128 .LEHB6-.LFB4849
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L91-.LFB4849
	.uleb128 0
	.uleb128 .LEHB7-.LFB4849
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L92-.LFB4849
	.uleb128 0
	.uleb128 .LEHB8-.LFB4849
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L93-.LFB4849
	.uleb128 0
	.uleb128 .LEHB9-.LFB4849
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L94-.LFB4849
	.uleb128 0
	.uleb128 .LEHB10-.LFB4849
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L95-.LFB4849
	.uleb128 0
	.uleb128 .LEHB11-.LFB4849
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L96-.LFB4849
	.uleb128 0
	.uleb128 .LEHB12-.LFB4849
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L97-.LFB4849
	.uleb128 0
	.uleb128 .LEHB13-.LFB4849
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L98-.LFB4849
	.uleb128 0
	.uleb128 .LEHB14-.LFB4849
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L99-.LFB4849
	.uleb128 0
	.uleb128 .LEHB15-.LFB4849
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L100-.LFB4849
	.uleb128 0
	.uleb128 .LEHB16-.LFB4849
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L101-.LFB4849
	.uleb128 0
	.uleb128 .LEHB17-.LFB4849
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L102-.LFB4849
	.uleb128 0
	.uleb128 .LEHB18-.LFB4849
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L103-.LFB4849
	.uleb128 0
	.uleb128 .LEHB19-.LFB4849
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L104-.LFB4849
	.uleb128 0
	.uleb128 .LEHB20-.LFB4849
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L105-.LFB4849
	.uleb128 0
	.uleb128 .LEHB21-.LFB4849
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L106-.LFB4849
	.uleb128 0
	.uleb128 .LEHB22-.LFB4849
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L107-.LFB4849
	.uleb128 0
	.uleb128 .LEHB23-.LFB4849
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE4849:
	.text
	.size	main, .-main
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB5257:
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
.LFE5257:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB5260:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5260
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
.LFE5260:
	.section	.gcc_except_table
.LLSDA5260:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5260-.LLSDACSB5260
.LLSDACSB5260:
.LLSDACSE5260:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB5263:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5263
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
.LFE5263:
	.section	.gcc_except_table
.LLSDA5263:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5263-.LLSDACSB5263
.LLSDACSB5263:
.LLSDACSE5263:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB5270:
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
.LFE5270:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.type	_ZNSt6vectorIdSaIdEEC2EmRKS0_, @function
_ZNSt6vectorIdSaIdEEC2EmRKS0_:
.LFB5273:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5273
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
.LEHB24:
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
.LEHE24:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
.LEHE25:
	jmp	.L116
.L115:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L116:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5273:
	.section	.gcc_except_table
.LLSDA5273:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5273-.LLSDACSB5273
.LLSDACSB5273:
	.uleb128 .LEHB24-.LFB5273
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB5273
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L115-.LFB5273
	.uleb128 0
	.uleb128 .LEHB26-.LFB5273
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE5273:
	.section	.text._ZNSt6vectorIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2EmRKS0_, .-_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1EmRKS0_
	.set	_ZNSt6vectorIdSaIdEEC1EmRKS0_,_ZNSt6vectorIdSaIdEEC2EmRKS0_
	.section	.text._ZNSaIA1_13__mpfr_structEC2Ev,"axG",@progbits,_ZNSaIA1_13__mpfr_structEC5Ev,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structEC2Ev
	.type	_ZNSaIA1_13__mpfr_structEC2Ev, @function
_ZNSaIA1_13__mpfr_structEC2Ev:
.LFB5276:
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
.LFE5276:
	.size	_ZNSaIA1_13__mpfr_structEC2Ev, .-_ZNSaIA1_13__mpfr_structEC2Ev
	.weak	_ZNSaIA1_13__mpfr_structEC1Ev
	.set	_ZNSaIA1_13__mpfr_structEC1Ev,_ZNSaIA1_13__mpfr_structEC2Ev
	.section	.text._ZNSaIA1_13__mpfr_structED2Ev,"axG",@progbits,_ZNSaIA1_13__mpfr_structED5Ev,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structED2Ev
	.type	_ZNSaIA1_13__mpfr_structED2Ev, @function
_ZNSaIA1_13__mpfr_structED2Ev:
.LFB5279:
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
.LFE5279:
	.size	_ZNSaIA1_13__mpfr_structED2Ev, .-_ZNSaIA1_13__mpfr_structED2Ev
	.weak	_ZNSaIA1_13__mpfr_structED1Ev
	.set	_ZNSaIA1_13__mpfr_structED1Ev,_ZNSaIA1_13__mpfr_structED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_:
.LFB5282:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5282
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
.LEHB27:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
.LEHE27:
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB28:
	call	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
.LEHE28:
	jmp	.L122
.L121:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB29:
	call	_Unwind_Resume@PLT
.LEHE29:
.L122:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5282:
	.section	.gcc_except_table
.LLSDA5282:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5282-.LLSDACSB5282
.LLSDACSB5282:
	.uleb128 .LEHB27-.LFB5282
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB5282
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L121-.LFB5282
	.uleb128 0
	.uleb128 .LEHB29-.LFB5282
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE5282:
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
	.set	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC1EmRKS2_,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev:
.LFB5285:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5285
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
.LFE5285:
	.section	.gcc_except_table
.LLSDA5285:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5285-.LLSDACSB5285
.LLSDACSB5285:
.LLSDACSE5285:
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev
	.set	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED1Ev,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm:
.LFB5287:
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
.LFE5287:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EEixEm
	.section	.text._ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE,"axG",@progbits,_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE
	.type	_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE, @function
_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE:
.LFB5288:
	.cfi_startproc
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
	movq	%rdx, %rcx
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE5beginEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L128
	call	__stack_chk_fail@PLT
.L128:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5288:
	.size	_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE, .-_ZNSt6vectorIdSaIdEEaSESt16initializer_listIdE
	.section	.text._ZNSt6vectorIdSaIdEE5beginEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE5beginEv
	.type	_ZNSt6vectorIdSaIdEE5beginEv, @function
_ZNSt6vectorIdSaIdEE5beginEv:
.LFB5289:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
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
.LFE5289:
	.size	_ZNSt6vectorIdSaIdEE5beginEv, .-_ZNSt6vectorIdSaIdEE5beginEv
	.section	.text._ZNSt6vectorIdSaIdEE3endEv,"axG",@progbits,_ZNSt6vectorIdSaIdEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE3endEv
	.type	_ZNSt6vectorIdSaIdEE3endEv, @function
_ZNSt6vectorIdSaIdEE3endEv:
.LFB5290:
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
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
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
.LFE5290:
	.size	_ZNSt6vectorIdSaIdEE3endEv, .-_ZNSt6vectorIdSaIdEE3endEv
	.section	.text._ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,"axG",@progbits,_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_,comdat
	.weak	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.type	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, @function
_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_:
.LFB5291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5291:
	.size	_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_, .-_ZN9__gnu_cxxneIPdSt6vectorIdSaIdEEEEbRKNS_17__normal_iteratorIT_T0_EESA_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi, @function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi:
.LFB5292:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, (%rdx)
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L139
	call	__stack_chk_fail@PLT
.L139:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5292:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi, .-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEppEi
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv:
.LFB5293:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5293:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEdeEv
	.section	.text._ZNSt6vectorIdSaIdEEixEm,"axG",@progbits,_ZNSt6vectorIdSaIdEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEixEm
	.type	_ZNSt6vectorIdSaIdEEixEm, @function
_ZNSt6vectorIdSaIdEEixEm:
.LFB5294:
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
.LFE5294:
	.size	_ZNSt6vectorIdSaIdEEixEm, .-_ZNSt6vectorIdSaIdEEixEm
	.section	.text._ZNKSt6vectorIdSaIdEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE4sizeEv
	.type	_ZNKSt6vectorIdSaIdEE4sizeEv, @function
_ZNKSt6vectorIdSaIdEE4sizeEv:
.LFB5477:
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
.LFE5477:
	.size	_ZNKSt6vectorIdSaIdEE4sizeEv, .-_ZNKSt6vectorIdSaIdEE4sizeEv
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB5481:
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
.LFE5481:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB5484:
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
.LFE5484:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB5486:
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
	je	.L150
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L150:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5486:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB5487:
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
.LFE5487:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB5488:
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
.LFE5488:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB5491:
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
.LFE5491:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.rodata
	.align 8
.LC36:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB5493:
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
	je	.L156
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L156:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L158
	call	__stack_chk_fail@PLT
.L158:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5493:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_:
.LFB5495:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5495
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
.LEHB30:
	call	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
.LEHE30:
	jmp	.L162
.L161:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB31:
	call	_Unwind_Resume@PLT
.LEHE31:
.L162:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5495:
	.section	.gcc_except_table
.LLSDA5495:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5495-.LLSDACSB5495
.LLSDACSB5495:
	.uleb128 .LEHB30-.LFB5495
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L161-.LFB5495
	.uleb128 0
	.uleb128 .LEHB31-.LFB5495
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE5495:
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1EmRKS0_,_ZNSt12_Vector_baseIdSaIdEEC2EmRKS0_
	.section	.text._ZNSt6vectorIdSaIdEE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIdSaIdEE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.type	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, @function
_ZNSt6vectorIdSaIdEE21_M_default_initializeEm:
.LFB5497:
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
.LFE5497:
	.size	_ZNSt6vectorIdSaIdEE21_M_default_initializeEm, .-_ZNSt6vectorIdSaIdEE21_M_default_initializeEm
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev:
.LFB5499:
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
.LFE5499:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1Ev,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev:
.LFB5502:
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
.LFE5502:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED1Ev,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_,comdat
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_:
.LFB5504:
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
	je	.L167
	leaq	.LC36(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L167:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L169
	call	__stack_chk_fail@PLT
.L169:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5504:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE17_S_check_init_lenEmRKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev:
.LFB5507:
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
.LFE5507:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_:
.LFB5509:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5509
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
.LEHB32:
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
.LEHE32:
	jmp	.L174
.L173:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB33:
	call	_Unwind_Resume@PLT
.LEHE33:
.L174:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5509:
	.section	.gcc_except_table
.LLSDA5509:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5509-.LLSDACSB5509
.LLSDACSB5509:
	.uleb128 .LEHB32-.LFB5509
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L173-.LFB5509
	.uleb128 0
	.uleb128 .LEHB33-.LFB5509
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
.LLSDACSE5509:
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EEC2EmRKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev:
.LFB5512:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5512
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
.LFE5512:
	.section	.gcc_except_table
.LLSDA5512:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5512-.LLSDACSB5512
.LLSDACSB5512:
.LLSDACSE5512:
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EED2Ev
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm,comdat
	.align 2
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm:
.LFB5514:
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
.LFE5514:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE21_M_default_initializeEm
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv:
.LFB5515:
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
.LFE5515:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E
	.type	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E, @function
_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E:
.LFB5516:
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
.LFE5516:
	.size	_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E, .-_ZSt8_DestroyIPA1_13__mpfr_structS1_EvT_S3_RSaIT0_E
	.section	.text._ZNKSt16initializer_listIdE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIdE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE5beginEv
	.type	_ZNKSt16initializer_listIdE5beginEv, @function
_ZNKSt16initializer_listIdE5beginEv:
.LFB5517:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5517:
	.size	_ZNKSt16initializer_listIdE5beginEv, .-_ZNKSt16initializer_listIdE5beginEv
	.section	.text._ZNKSt16initializer_listIdE3endEv,"axG",@progbits,_ZNKSt16initializer_listIdE3endEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE3endEv
	.type	_ZNKSt16initializer_listIdE3endEv, @function
_ZNKSt16initializer_listIdE3endEv:
.LFB5518:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE5beginEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE4sizeEv
	salq	$3, %rax
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5518:
	.size	_ZNKSt16initializer_listIdE3endEv, .-_ZNKSt16initializer_listIdE3endEv
	.section	.text._ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB5520:
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
	call	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5520:
	.size	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.text._ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag, @function
_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag:
.LFB5519:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE8capacityEv
	cmpq	%rax, -32(%rbp)
	seta	%al
	testb	%al, %al
	je	.L187
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L191
.L187:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	cmpq	%rax, -32(%rbp)
	setbe	%al
	testb	%al, %al
	je	.L189
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
	jmp	.L191
.L189:
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt7advanceIPKdmEvRT_T0_
	movq	-56(%rbp), %rax
	movq	(%rax), %rdx
	movq	-40(%rbp), %rcx
	movq	-64(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIdSaIdEE4sizeEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	subq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	movq	-56(%rbp), %rdx
	movq	%rax, 8(%rdx)
.L191:
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L190
	call	__stack_chk_fail@PLT
.L190:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5519:
	.size	_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorIdSaIdEE13_M_assign_auxIPKdEEvT_S5_St20forward_iterator_tag
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_:
.LFB5522:
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
.LFE5522:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEC2ERKS1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv:
.LFB5524:
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
.LFE5524:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEE4baseEv
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB5639:
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
.LFE5639:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB5640:
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
.LFE5640:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB5642:
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
	je	.L199
	call	__stack_chk_fail@PLT
.L199:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5642:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB5644:
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
.LFE5644:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB5647:
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
.LFE5647:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm:
.LFB5649:
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
.LFE5649:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm, .-_ZNSt12_Vector_baseIdSaIdEE17_M_create_storageEm
	.section	.text._ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E:
.LFB5650:
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
.LFE5650:
	.size	_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E
	.section	.text._ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_,"axG",@progbits,_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_,comdat
	.weak	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_
	.type	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_, @function
_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_:
.LFB5651:
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
	je	.L207
	call	__stack_chk_fail@PLT
.L207:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5651:
	.size	_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_, .-_ZNSt6vectorIA1_13__mpfr_structSaIS1_EE11_S_max_sizeERKS2_
	.section	.text._ZNSaIA1_13__mpfr_structEC2ERKS1_,"axG",@progbits,_ZNSaIA1_13__mpfr_structEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.type	_ZNSaIA1_13__mpfr_structEC2ERKS1_, @function
_ZNSaIA1_13__mpfr_structEC2ERKS1_:
.LFB5653:
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
.LFE5653:
	.size	_ZNSaIA1_13__mpfr_structEC2ERKS1_, .-_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.weak	_ZNSaIA1_13__mpfr_structEC1ERKS1_
	.set	_ZNSaIA1_13__mpfr_structEC1ERKS1_,_ZNSaIA1_13__mpfr_structEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_:
.LFB5656:
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
.LFE5656:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm:
.LFB5658:
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
.LFE5658:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_M_create_storageEm
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m:
.LFB5659:
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
	je	.L213
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
.L213:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5659:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E,"axG",@progbits,_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E,comdat
	.weak	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E
	.type	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E, @function
_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E:
.LFB5660:
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
.LFE5660:
	.size	_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E, .-_ZSt27__uninitialized_default_n_aIPA1_13__mpfr_structmS1_ET_S3_T0_RSaIT1_E
	.section	.text._ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_
	.type	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_, @function
_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_:
.LFB5661:
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
.LFE5661:
	.size	_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_, .-_ZSt8_DestroyIPA1_13__mpfr_structEvT_S3_
	.section	.text._ZNKSt16initializer_listIdE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIdE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE4sizeEv
	.type	_ZNKSt16initializer_listIdE4sizeEv, @function
_ZNKSt16initializer_listIdE4sizeEv:
.LFB5663:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5663:
	.size	_ZNKSt16initializer_listIdE4sizeEv, .-_ZNKSt16initializer_listIdE4sizeEv
	.section	.text._ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB5664:
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
.LFE5664:
	.size	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB5665:
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
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5665:
	.size	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNKSt6vectorIdSaIdEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIdSaIdEE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIdSaIdEE8capacityEv
	.type	_ZNKSt6vectorIdSaIdEE8capacityEv, @function
_ZNKSt6vectorIdSaIdEE8capacityEv:
.LFB5666:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5666:
	.size	_ZNKSt6vectorIdSaIdEE8capacityEv, .-_ZNKSt6vectorIdSaIdEE8capacityEv
	.section	.text._ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_,"axG",@progbits,_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_
	.type	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_, @function
_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_:
.LFB5667:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5667
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
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
.LEHE34:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB35:
	call	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
.LEHE35:
	movq	-24(%rbp), %rax
	jmp	.L231
.L229:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB36:
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	call	__cxa_rethrow@PLT
.LEHE36:
.L230:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB37:
	call	_Unwind_Resume@PLT
.LEHE37:
.L231:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5667:
	.section	.gcc_except_table
	.align 4
.LLSDA5667:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT5667-.LLSDATTD5667
.LLSDATTD5667:
	.byte	0x1
	.uleb128 .LLSDACSE5667-.LLSDACSB5667
.LLSDACSB5667:
	.uleb128 .LEHB34-.LFB5667
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB5667
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L229-.LFB5667
	.uleb128 0x1
	.uleb128 .LEHB36-.LFB5667
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L230-.LFB5667
	.uleb128 0
	.uleb128 .LEHB37-.LFB5667
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE5667:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT5667:
	.section	.text._ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_,"axG",@progbits,_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_,comdat
	.size	_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_, .-_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIPKdEEPdmT_S6_
	.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
	.type	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd, @function
_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd:
.LFB5668:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA5668
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
	movq	8(%rax), %rax
	subq	-32(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L234
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L234:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5668:
	.section	.gcc_except_table
.LLSDA5668:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5668-.LLSDACSB5668
.LLSDACSB5668:
.LLSDACSE5668:
	.section	.text._ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,"axG",@progbits,_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd,comdat
	.size	_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd, .-_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd
	.section	.text._ZSt4copyIPKdPdET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKdPdET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKdPdET0_T_S4_S3_
	.type	_ZSt4copyIPKdPdET0_T_S4_S3_, @function
_ZSt4copyIPKdPdET0_T_S4_S3_:
.LFB5669:
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
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5669:
	.size	_ZSt4copyIPKdPdET0_T_S4_S3_, .-_ZSt4copyIPKdPdET0_T_S4_S3_
	.section	.text._ZSt7advanceIPKdmEvRT_T0_,"axG",@progbits,_ZSt7advanceIPKdmEvRT_T0_,comdat
	.weak	_ZSt7advanceIPKdmEvRT_T0_
	.type	_ZSt7advanceIPKdmEvRT_T0_, @function
_ZSt7advanceIPKdmEvRT_T0_:
.LFB5670:
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
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5670:
	.size	_ZSt7advanceIPKdmEvRT_T0_, .-_ZSt7advanceIPKdmEvRT_T0_
	.section	.text._ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E:
.LFB5671:
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
	call	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5671:
	.size	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB5742:
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
.LFE5742:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB5743:
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
.LFE5743:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB5744:
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
.LFE5744:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB5746:
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
.LFE5746:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB5748:
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
	je	.L247
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L249
.L247:
	movl	$0, %eax
.L249:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5748:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZSt25__uninitialized_default_nIPdmET_S1_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPdmET_S1_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.type	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, @function
_ZSt25__uninitialized_default_nIPdmET_S1_T0_:
.LFB5749:
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
.LFE5749:
	.size	_ZSt25__uninitialized_default_nIPdmET_S1_T0_, .-_ZSt25__uninitialized_default_nIPdmET_S1_T0_
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_:
.LFB5750:
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
.LFE5750:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8max_sizeERKS2_
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC5ERKS3_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_:
.LFB5752:
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
.LFE5752:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1ERKS3_
	.set	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC1ERKS3_,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev:
.LFB5755:
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
.LFE5755:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm:
.LFB5757:
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
	je	.L257
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	jmp	.L259
.L257:
	movl	$0, %eax
.L259:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5757:
	.size	_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIA1_13__mpfr_structSaIS1_EE11_M_allocateEm
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m:
.LFB5758:
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
.LFE5758:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE10deallocateERS2_PS1_m
	.section	.text._ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_,"axG",@progbits,_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_,comdat
	.weak	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_
	.type	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_, @function
_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_:
.LFB5759:
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
.LFE5759:
	.size	_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_, .-_ZSt25__uninitialized_default_nIPA1_13__mpfr_structmET_S3_T0_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_:
.LFB5760:
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
.LFE5760:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPA1_13__mpfr_structEEvT_S5_
	.section	.text._ZSt12__miter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKdET_S2_
	.type	_ZSt12__miter_baseIPKdET_S2_, @function
_ZSt12__miter_baseIPKdET_S2_:
.LFB5761:
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
.LFE5761:
	.size	_ZSt12__miter_baseIPKdET_S2_, .-_ZSt12__miter_baseIPKdET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_:
.LFB5762:
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
	call	_ZSt12__niter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdET_S2_
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
.LFE5762:
	.size	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag,comdat
	.weak	_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag
	.type	_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag, @function
_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag:
.LFB5765:
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
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5765:
	.size	_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag, .-_ZSt9__advanceIPKdlEvRT_T0_St26random_access_iterator_tag
	.section	.text._ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_, @function
_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_:
.LFB5766:
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
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5766:
	.size	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB5819:
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
.LFE5819:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB5820:
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
.LFE5820:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZSt11__addressofIdEPT_RS0_,"axG",@progbits,_ZSt11__addressofIdEPT_RS0_,comdat
	.weak	_ZSt11__addressofIdEPT_RS0_
	.type	_ZSt11__addressofIdEPT_RS0_, @function
_ZSt11__addressofIdEPT_RS0_:
.LFB5822:
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
.LFE5822:
	.size	_ZSt11__addressofIdEPT_RS0_, .-_ZSt11__addressofIdEPT_RS0_
	.section	.text._ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_:
.LFB5821:
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
	je	.L278
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
.L278:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5821:
	.size	_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_, .-_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv:
.LFB5823:
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
.LFE5823:
	.size	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m,"axG",@progbits,_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m,comdat
	.weak	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	.type	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m, @function
_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m:
.LFB5824:
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
.LFE5824:
	.size	_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m, .-_ZNSt16allocator_traitsISaIA1_13__mpfr_structEE8allocateERS2_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m:
.LFB5825:
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
.LFE5825:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE10deallocateEPS2_m
	.section	.text._ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_,"axG",@progbits,_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_,comdat
	.weak	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_
	.type	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_, @function
_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_:
.LFB5826:
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
	jmp	.L287
.L288:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	movq	%rax, %rdi
	call	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	subq	$1, -32(%rbp)
	addq	$32, -8(%rbp)
.L287:
	cmpq	$0, -32(%rbp)
	jne	.L288
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5826:
	.size	_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_, .-_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPA1_13__mpfr_structmEET_S5_T0_
	.section	.text._ZSt12__niter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKdET_S2_
	.type	_ZSt12__niter_baseIPKdET_S2_, @function
_ZSt12__niter_baseIPKdET_S2_:
.LFB5827:
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
.LFE5827:
	.size	_ZSt12__niter_baseIPKdET_S2_, .-_ZSt12__niter_baseIPKdET_S2_
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB5828:
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
.LFE5828:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB5829:
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
.LFE5829:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB5830:
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
.LFE5830:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_:
.LFB5831:
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
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5831:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB5863:
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
.LFE5863:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB5864:
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
	je	.L303
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L304
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L304:
	call	_ZSt17__throw_bad_allocv@PLT
.L303:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5864:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZSt10_ConstructIdJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIdJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIdJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIdJEEvPT_DpOT0_, @function
_ZSt10_ConstructIdJEEvPT_DpOT0_:
.LFB5865:
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
	pxor	%xmm0, %xmm0
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5865:
	.size	_ZSt10_ConstructIdJEEvPT_DpOT0_, .-_ZSt10_ConstructIdJEEvPT_DpOT0_
	.section	.text._ZSt6fill_nIPdmdET_S1_T0_RKT1_,"axG",@progbits,_ZSt6fill_nIPdmdET_S1_T0_RKT1_,comdat
	.weak	_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.type	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, @function
_ZSt6fill_nIPdmdET_S1_T0_RKT1_:
.LFB5866:
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
.LFE5866:
	.size	_ZSt6fill_nIPdmdET_S1_T0_RKT1_, .-_ZSt6fill_nIPdmdET_S1_T0_RKT1_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv:
.LFB5867:
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
.LFE5867:
	.size	_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIA1_13__mpfr_structE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv:
.LFB5868:
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
	je	.L312
	movabsq	$576460752303423487, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L313
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L313:
	call	_ZSt17__throw_bad_allocv@PLT
.L312:
	movq	-16(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5868:
	.size	_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIA1_13__mpfr_structE8allocateEmPKv
	.section	.text._ZSt11__addressofIA1_13__mpfr_structEPT_RS2_,"axG",@progbits,_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_,comdat
	.weak	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	.type	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_, @function
_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_:
.LFB5869:
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
.LFE5869:
	.size	_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_, .-_ZSt11__addressofIA1_13__mpfr_structEPT_RS2_
	.section	.text._ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	.type	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_, @function
_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_:
.LFB5870:
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
	jmp	.L318
.L319:
	movq	$0, (%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	addq	$32, %rax
	subq	$1, %rdx
.L318:
	testq	%rdx, %rdx
	jns	.L319
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5870:
	.size	_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_, .-_ZSt10_ConstructIA1_13__mpfr_structJEEvPT_DpOT0_
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB5871:
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
.LFE5871:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,"axG",@progbits,_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_,comdat
	.weak	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.type	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, @function
_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_:
.LFB5884:
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
.LFE5884:
	.size	_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_, .-_ZSt19__iterator_categoryIPdENSt15iterator_traitsIT_E17iterator_categoryERKS2_
	.section	.text._ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.type	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, @function
_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag:
.LFB5885:
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
	jne	.L325
	movq	-8(%rbp), %rax
	jmp	.L326
.L325:
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
.L326:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5885:
	.size	_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag, .-_ZSt10__fill_n_aIPdmdET_S1_T0_RKT1_St26random_access_iterator_tag
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB5886:
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
	je	.L328
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L328:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5886:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.section	.text._ZSt8__fill_aIPddEvT_S1_RKT0_,"axG",@progbits,_ZSt8__fill_aIPddEvT_S1_RKT0_,comdat
	.weak	_ZSt8__fill_aIPddEvT_S1_RKT0_
	.type	_ZSt8__fill_aIPddEvT_S1_RKT0_, @function
_ZSt8__fill_aIPddEvT_S1_RKT0_:
.LFB5889:
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
.LFE5889:
	.size	_ZSt8__fill_aIPddEvT_S1_RKT0_, .-_ZSt8__fill_aIPddEvT_S1_RKT0_
	.section	.text._ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,"axG",@progbits,_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_,comdat
	.weak	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.type	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, @function
_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_:
.LFB5890:
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
	movsd	(%rax), %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.L332
.L333:
	movq	-24(%rbp), %rax
	movsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$8, -24(%rbp)
.L332:
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.L333
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5890:
	.size	_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_, .-_ZSt9__fill_a1IPddEN9__gnu_cxx11__enable_ifIXsrSt11__is_scalarIT0_E7__valueEvE6__typeET_S8_RKS4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB5891:
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
	jne	.L336
	cmpl	$65535, -8(%rbp)
	jne	.L336
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
	leaq	_ZN13matplotlibcpp6detailL9s_backendE(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZN13matplotlibcpp6detailL9s_backendE(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L336:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5891:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB5892:
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
.LFE5892:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 8
.LC9:
	.long	0
	.long	1080623104
	.align 8
.LC10:
	.long	0
	.long	1079574528
	.align 8
.LC11:
	.long	0
	.long	1085507584
	.align 8
.LC12:
	.long	0
	.long	1086556160
	.align 8
.LC13:
	.long	0
	.long	1087196160
	.align 8
.LC14:
	.long	0
	.long	1087604736
	.align 8
.LC15:
	.long	0
	.long	1087924736
	.align 8
.LC16:
	.long	0
	.long	1088244736
	.align 8
.LC17:
	.long	0
	.long	1088653312
	.align 8
.LC18:
	.long	0
	.long	1088973312
	.align 8
.LC19:
	.long	0
	.long	1089621888
	.align 8
.LC20:
	.long	0
	.long	1090021888
	.align 8
.LC21:
	.long	0
	.long	1091070464
	.align 8
.LC22:
	.long	0
	.long	1091719040
	.align 8
.LC23:
	.long	0
	.long	1092119040
	.align 8
.LC24:
	.long	0
	.long	1092519040
	.align 8
.LC25:
	.long	0
	.long	1092817616
	.align 8
.LC26:
	.long	0
	.long	1093067616
	.align 8
.LC27:
	.long	0
	.long	1093317616
	.align 8
.LC28:
	.long	0
	.long	1093567616
	.align 8
.LC29:
	.long	0
	.long	1094116192
	.align 8
.LC30:
	.long	0
	.long	1094616192
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
