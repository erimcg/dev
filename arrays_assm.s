	.text
	.section	.rodata
.LC0:
	.string	"elm at %d: %d\n"

	.text
	.globl	main
	.type	main, @function
main:
        subq    $20, %rsp
        movl    $1, 16(%rsp)
        movl    $2, 12(%rsp)
        movl    $3, 8(%rsp)
        movl    $4, 4(%rsp)
        movl    $5, (%rsp)

	movl	$0, %ebx
	jmp	.test

.loop:
	leaq	.LC0(%rip), %rdi
	movl	%ebx,	%esi
	movl	(%rsp,%rbx,4), %edx
	movl	$0, %eax
	call	printf@PLT

	incl	%ebx

.test:
	cmpl	$5, %ebx
	jl	.loop

.done:
	movl	$0, %eax
	addq	$20, %rsp
	ret
