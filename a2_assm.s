	.file	"scanf.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter two integers separated by spaces: "
.LC01:
	.string	"%d %d"
.LC1:
	.string	"%d < %d\n"
.LC2:
    .string "m++: %d == 0\n"
.LC3:
    .string "%d * %d = %d != 20\n"
.LC4:
    .string "sum: %d >= 20\n"
.LC5:
    .string "sum: %d < 20\n"
.LC6:
    .string "sum * 4: %d\n"
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

	leaq	.LC01(%rip), %rdi
	leaq	8(%rsp), %rsi
	leaq	(%rsp), %rdx
	movl	$0, %eax
	call	__isoc99_scanf@PLT

	movl	8(%rsp), %esi
	movl	(%rsp), %edx

	cmpl    %edx, %esi
    jge     .mGreaterEqualk

	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

.mGreaterEqualk:

    incl    8(%rsp)
    movl	8(%rsp), %esi

    testl   %esi, %esi
    jne     .mNotEqualZero

    leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

.mNotEqualZero:

    movl    8(%rsp), %esi
    movl    (%rsp), %edx

    movl    %esi, %ecx
    imull    %edx, %ecx

    cmpl    $20, %ecx
    je      .productEqual20

    leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

.productEqual20:

    movl    8(%rsp), %ebx
    addl    (%rsp), %ebx

    cmpl    $20, %ebx
    jl      .sumLessThan20

    leaq	.LC4(%rip), %rdi
    movl    %ebx, %esi
	movl	$0, %eax
	call	printf@PLT

    jmp .restOfCode

.sumLessThan20:

    leaq	.LC5(%rip), %rdi
    movl    %ebx, %esi
	movl	$0, %eax
	call	printf@PLT

.restOfCode:

    sall    $2, %ebx

    leaq	.LC6(%rip), %rdi
    movl    %ebx, %esi
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
