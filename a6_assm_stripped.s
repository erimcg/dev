
        .section	.rodata
.LC0:
	.string "Please enter two integers (x and y) separated by a space: "
.LC1:
	.string	"%d %d"
.LC2:
	.string	"x + 1 = %d\n"
.LC3:
	.string "x + y = %d\n"
.LC4:
	.string "Hello!\n"

	.text
	.globl	main
main:
	call	say_hello

	subq	$8, %rsp
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)

	leaq	.LC0(%rip), %rdi
	call	printf@PLT

	leaq	.LC1(%rip), %rdi
	leaq	4(%rsp), %rsi
	leaq	(%rsp), %rdx
	call	__isoc99_scanf@PLT

	movl	4(%rsp), %edi
	call	increment

	leaq	.LC2(%rip), %rdi
	movl	%eax, %esi
	call	printf@PLT

	movl	4(%rsp), %edi
	movl	(%rsp), %esi
	call	add

	leaq	.LC3(%rip), %rdi
	movl	%eax, %esi
	call	printf@PLT

	movl	$0, %eax
	addq	$8, %rsp
        ret
say_hello:
	leaq	.LC4(%rip), %rdi
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
