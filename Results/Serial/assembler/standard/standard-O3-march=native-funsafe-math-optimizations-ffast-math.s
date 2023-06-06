	.file	"compare_par.cpp"
	.text
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
	.cfi_offset 13, -24
	.cfi_offset 12, -32
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	movl	$7999992, %edx
	xorl	%esi, %esi
	movq	%rax, %r12
	call	memset@PLT
	movl	$8000000, %edi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	$0x000000000, (%rax)
	leaq	8(%rax), %rdi
	movl	$7999992, %edx
	xorl	%esi, %esi
	movq	%rax, %r13
	call	memset@PLT
	vbroadcastsd	.LC3(%rip), %ymm1
	vbroadcastsd	.LC4(%rip), %ymm0
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L4:
	vmovupd	%ymm1, (%r12,%rax)
	vmovupd	%ymm0, 0(%r13,%rax)
	addq	$32, %rax
	cmpq	$8000000, %rax
	jne	.L4
	movl	$8000000, %esi
	movq	%r13, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	movq	%r12, %rdi
	movl	$8000000, %esi
	call	_ZdlPvm@PLT
	popq	%r12
	popq	%r13
	xorl	%eax, %eax
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L6:
	.cfi_restore_state
	endbr64
	movq	%rax, %r13
	jmp	.L5
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
	.uleb128 .L6-.LFB3676
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
.L5:
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	movl	$8000000, %esi
	movq	%r12, %rdi
	vzeroupper
	call	_ZdlPvm@PLT
	movq	%r13, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
	.cfi_endproc
.LFE3676:
	.section	.gcc_except_table
.LLSDAC3676:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3676-.LLSDACSBC3676
.LLSDACSBC3676:
	.uleb128 .LEHB2-.LCOLDB5
	.uleb128 .LEHE2-.LEHB2
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
.LFB4402:
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
.LFE4402:
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
