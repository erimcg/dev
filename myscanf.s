	.file	"scanf.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter two integers separated by spaces: "
.LC1:
	.string	"%d %d"
.LC2:
	.string	"%d + %d = %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	subq	$16, %rsp

	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

	leaq	.LC1(%rip), %rdi
	leaq	8(%rsp), %rsi
	leaq	(%rsp), %rdx
	movl	$0, %eax
	call	__isoc99_scanf@PLT

	movl	8(%rsp), %edx
	movl	(%rsp), %ecx
	addl	%edx, %ecx

	leaq	.LC2(%rip), %rdi
	movl	8(%rsp), %esi
	movl	(%rsp), %edx
	movl	$0, %eax
	call	printf@PLT

	addq	$16, %rsp
	popq	%rbp

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
