	.file	"a6.c"

	.text
	.globl	say_hello
	.type	say_hello, @function
say_hello:
.LFB0:
	.cfi_startproc
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	ret
	.cfi_endproc
.LFE0:
	.size	say_hello, .-say_hello

	.text
	.globl	increment
	.type	increment, @function
increment:
.LFB1:
	.cfi_startproc
	incl	%edi
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	increment, .-increment

	.text
	.globl	add
	.type	add, @function
add:
.LFB2:
	.cfi_startproc
	add	%esi, %edi
	movl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	add, .-add

.text
	.globl	swap
	.type	swap, @function
swap:
.LFB3:
	.cfi_startproc
	movl	(%rdi), %eax
	xorl	%eax, (%rsi)
	xorl	(%rsi), %eax
	xorl	%eax, (%rsi)
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE3:
	.size	swap, .-swap

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
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc

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
	.cfi_endproc	
.LFE4:
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
