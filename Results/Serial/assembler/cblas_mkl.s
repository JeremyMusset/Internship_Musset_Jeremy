	.file	"compare_par.cpp"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$80000, %edi
	call	malloc@PLT
	movl	$80000, %edi
	movq	%rax, %rbp
	call	malloc@PLT
	movapd	.LC0(%rip), %xmm1
	movapd	.LC1(%rip), %xmm0
	xorl	%edx, %edx
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L2:
	movups	%xmm1, 0(%rbp,%rdx)
	movups	%xmm0, (%rcx,%rdx)
	addq	$16, %rdx
	cmpq	$80000, %rdx
	jne	.L2
	movq	%rbp, %rsi
	movl	$1, %r8d
	movl	$1, %edx
	movl	$10000, %edi
	call	cblas_ddot@PLT
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3112:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	858993459
	.long	1070805811
	.long	858993459
	.long	1070805811
	.align 16
.LC1:
	.long	-1717986918
	.long	1070176665
	.long	-1717986918
	.long	1070176665
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
