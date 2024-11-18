	.file	"jump.c"
.LC1:
	.string	"cmp: %hhd, %hhd \t(CF:%hd ZF:%hd SF:%hd OF:%hd)\n"
	.text
	.globl	foo
	.type	foo, @function
foo:
.LFB0:
	.cfi_startproc
	movb	%dil, %al
	movb	%sil, %dl
	cmpb	%al, %dl
	pushf
	movq	$0, %rbx
	popq	%rbx

    	movzbw    %al, %si
    	movzbw    %dl, %dx

	movw	$0x1, %cx
	andw	%bx, %cx
	
	movw	$0x40, %r8w
	andw	%bx, %r8w
	shrw	$6, %r8w

	movw	$0x80, %r9w
	andw	%bx, %r9w
	shrw	$7, %r9w

	movq	$0x800, %rbp
	andw	%bx, %bp
	shrq	$11, %rbp
    	pushq   %rbp

	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT

    	popq    %rbp
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	foo, .-foo
	.section	.rodata
.LC0:
	.string	"hello %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	movb 	$1, %dil
	movb	$1, %sil
	movl	$0, %eax
	call	foo

	movb 	$1, %dil
	movb	$2, %sil
	movl	$0, %eax
	call	foo

	movb 	$-1, %dil
	movb	$127, %sil
	movl	$0, %eax
	call	foo

	movb 	$-2, %dil
	movb	$-1, %sil
	movl	$0, %eax
	call	foo

	movb 	$-128, %dil
	movb	$1, %sil
	movl	$0, %eax
	call	foo

	movb 	$1, %dil
	movb	$-1, %sil
	movl	$0, %eax
	call	foo
	
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE1:
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
