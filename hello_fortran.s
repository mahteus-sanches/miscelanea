	.file	"hello_fortran.f90"
	.text
	.section	.rodata
.LC0:
	.string	"hello_fortran.f90"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$656, %rsp
	movq	A.0.2(%rip), %rax
	movq	8+A.0.2(%rip), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movl	16+A.0.2(%rip), %eax
	movl	%eax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)
	movq	A.1.1(%rip), %rax
	movq	8+A.1.1(%rip), %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	16+A.1.1(%rip), %eax
	movl	%eax, -48(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, -584(%rbp)
	movl	$8, -576(%rbp)
	movl	$128, -592(%rbp)
	movl	$6, -588(%rbp)
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movq	$4, -624(%rbp)
	movq	$0, -640(%rbp)
	movq	$0, -632(%rbp)
	movq	$4, -640(%rbp)
	movb	$1, -628(%rbp)
	movb	$1, -627(%rbp)
	movq	$1, -608(%rbp)
	movq	$5, -600(%rbp)
	movq	$1, -616(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, -656(%rbp)
	movq	$-1, -648(%rbp)
	leaq	-656(%rbp), %rsi
	leaq	-592(%rbp), %rax
	movl	$0, %ecx
	movl	$4, %edx
	movq	%rax, %rdi
	call	_gfortran_transfer_array_write@PLT
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.4.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 16
	.type	A.0.2, @object
	.size	A.0.2, 20
A.0.2:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.align 16
	.type	A.1.1, @object
	.size	A.1.1, 20
A.1.1:
	.long	9
	.long	8
	.long	7
	.long	6
	.long	5
	.align 16
	.type	options.4.0, @object
	.size	options.4.0, 28
options.4.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
