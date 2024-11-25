	.text
	.section	.rodata
.LC0:
	.string	"elm at %d, %d: %d\n"

	.text
	.globl	main
	.type	main, @function
main:
        subq    $24, %rsp
        movl    $6, 20(%rsp)
        movl    $5, 16(%rsp)
        movl    $4, 12(%rsp)
        movl    $3, 8(%rsp)
        movl    $2, 4(%rsp)
        movl    $1, (%rsp)

	movl	$0, %ebx
	jmp	.test_row

.outer_loop:
        movl    $0, %r12d
        jmp     .test_col

.inner_loop:
	leaq	.LC0(%rip), %rdi
	movl	%ebx,	%esi
        movl    %r12d,  %edx

        //ptr + (4 * numCols * i) + (4 * j)
        movl    %ebx, %ecx
        imulq   $3, %rcx
        leaq    (%rsp, %rcx, 4), %rcx
        leaq    (%rcx, %r12, 4), %rcx
	movq	(%rcx), %rcx

	movl	$0, %eax
	call	printf@PLT

	incl	%r12d

.test_col:
        cmpl    $3, %r12d
        jl      .inner_loop

        incl    %ebx

.test_row:
	cmpl	$2, %ebx
	jl	.outer_loop

.done:
	movl	$0, %eax
	addq	$24, %rsp
	ret
