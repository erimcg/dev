	.file	"scanf.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter two integers with a space between them: "
.LC1:
	.string	"%d %d"
.LC2:
	.string	"%d\n"
.LC3:
    .string "sum: %d\n"
.LC4:
    .string "num even: %d\n"
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

	movl	8(%rsp), %ebx
    jmp     .test1

.print_interval:
    leaq	.LC2(%rip), %rdi
    movl    %ebx, %esi
    call	printf@PLT
    incl    %ebx

.test1:
	cmpl     (%rsp), %ebx
    jl      .print_interval

    movl    $0, %ebp
    movl	8(%rsp), %ebx

    jmp     .test2

.compute_sum:
    addl    %ebx, %ebp
    incl    %ebx

.test2:
 	cmpl     (%rsp), %ebx
    jl      .compute_sum

    leaq	.LC3(%rip), %rdi
    movl    %ebp, %esi
    call	printf@PLT

    movl    $0, %ebp
    movl	8(%rsp), %ebx

    jmp .test3

.count_evens:

    movl	%ebx, %eax
	movl	$2, %esi
	cdq
	idivl	%esi
    
    cmpl    $0, %edx
    jne     .increment_i

    incl    %ebp

.increment_i:
    incl    %ebx

.test3:
    cmpl    (%rsp), %ebx
    jl      .count_evens

    leaq	.LC4(%rip), %rdi
    movl    %ebp, %esi
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
