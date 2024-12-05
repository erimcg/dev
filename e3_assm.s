        .section        .rodata
.LC0:
        .string "Enter two integers separated by a space: "
.LC1:
        .string "%d %d"
.LC2:
        .string "arg1: %d, arg2: %d\n"
.LC3:
        .string "%d "
.LC4:
        .string "\n"
.LC5:
        .string "sum: %d\n"

        .text
sum:
        movl    $0, %eax
        
        cmpl    %esi, %edi
        jg      .J5

.J4:
        addl    %edi, %eax
        incl    %edi

        cmpl    %esi, %edi
        jle     .J4

.J5:
        ret

        .globl  main
main:
       	subq	$8, %rsp
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)

	leaq	.LC0(%rip), %rdi
	call	printf@PLT

	leaq	.LC1(%rip), %rdi
	leaq	4(%rsp), %rsi
	leaq	(%rsp), %rdx
	call	__isoc99_scanf@PLT

        movl    4(%rsp), %esi
        cmpl    (%rsp), %esi
        jle     .J1

        movl    %esi, %edx
        movl    (%rsp), %esi
        movl    %edx, (%rsp)
        movl    %esi, 4(%rsp)

.J1:
	leaq	.LC2(%rip), %rdi
	movl	4(%rsp), %esi
	movl	(%rsp), %edx
        call	printf@PLT

        movl    4(%rsp), %r15d

.J2:
        leaq	.LC3(%rip), %rdi
        movl    %r15d, %esi
        call    printf@PLT

        incl    %r15d

        cmpl    (%rsp), %r15d
        jle     .J2

        leaq	.LC4(%rip), %rdi
        call	printf@PLT

        movl    4(%rsp), %edi
        movl    (%rsp), %esi
        call    sum

        leaq	.LC5(%rip), %rdi
        movl    %eax, %esi
        call	printf@PLT


        addq    $8, %rsp
        movl    $1, %eax
        ret
