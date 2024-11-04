	.file	"hello.c"
	.text
	.section	.rodata
.LC0:
	.string	"9 / 2 = %ld r %ld\n"
.LC1:
	.string	"-7 / 2 = %d r %d\n"
.LC2:
	.string	"5 / 2 = %hd r %hd\n"
.LC3:
	.string	"-3 / 2 = %hhd r %hhd\n"
.LC4:
	.string	"9 * 2 = %d\n"
.LC5:
	.string	"-7 * 2 = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movq	$9, %rax
	movq	$2, %rcx
	cqto
	idivq	%rcx
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	movl	$-7, %eax
	movl	$2, %ecx
	cdq
	idivl	%ecx
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	movw	$5, %ax
	movw	$2, %cx
	cwd
	idivw	%cx
	movw	%ax, %si
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	movw	$-3, %ax
	movb	$2, %dl
	idivb	%dl
	movb	%al, %sil
	movb	%ah, %dl
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	
	movl	$9, %edx
	movl	$2, %esi
	imull	%edx, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	movw	$-7, %ax
	movzwl	%ax, %eax
	movw	$2, %si
	imulw	%si
	shll	$16, %edx
	orl		%edx, %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
