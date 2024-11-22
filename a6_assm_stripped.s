	.file	"a6.c"

        .section	.rodata
.LC0:
	.string "Hello!\n"
.LC1:
	.string "Please enter two integers (x and y) separated by a space: "
.LC2:
	.string	"%d %d"
.LC3:
	.string	"x + 1 = %d\n"
.LC4:
	.string "x + y = %d\n"
.LC5:
	.string "x: %d, y: %d\n"

	.text
say_hello:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	ret
increment:
	incl	%edi
	movl	%edi, %eax
	ret
add:
	add	%esi, %edi
	movl	%edi, %eax
	ret
swap:
	movl	(%rdi), %eax
	xorl	%eax, (%rsi)
	xorl	(%rsi), %eax
	xorl	%eax, (%rsi)
	movl	%eax, (%rdi)
	ret

	.globl	main
main:
	call	say_hello

	subq	$8, %rsp
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)

	leaq	.LC1(%rip), %rdi
	call	printf@PLT

	leaq	.LC2(%rip), %rdi
	leaq	4(%rsp), %rsi
	leaq	(%rsp), %rdx
	call	__isoc99_scanf@PLT

	movl	4(%rsp), %edi
	call	increment

	leaq	.LC3(%rip), %rdi
	movl	%eax, %esi
	call	printf@PLT

	movl	4(%rsp), %edi
	movl	(%rsp), %esi
	call	add

	leaq	.LC4(%rip), %rdi
	movl	%eax, %esi
	call	printf@PLT

	leaq	4(%rsp), %rdi
	leaq	(%rsp), %rsi
	call swap

	leaq	.LC5(%rip), %rdi
	movl	4(%rsp), %esi
	movl	(%rsp), %edx
	call	printf@PLT

	movl	$0, %eax
	addq	$8, %rsp
