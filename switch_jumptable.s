	.file	"switch_jumptable.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Enter an integer [0-6]: "
.LC1:
	.string	"%ud"
.LC2:
	.string	"result: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movl	$0, 4(%rsp)
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	4(%rsp), %eax
	cmpl	$6, %eax
	ja	.L2
	movl	$0, %edx
	leaq	jt.2512(%rip), %rcx
	movl	%eax, %eax
	jmp	*(%rcx,%rax,8)
.L3:
	endbr64
	movl	$0, %edx
	jmp	.L4
.L5:
	endbr64
	movl	$2, %edx
.L6:
	endbr64
	addl	$3, %edx
	jmp	.L4
.L7:
	endbr64
	movl	$6, %edx
	jmp	.L4
.L2:
	endbr64
	movl	$-1, %edx
.L4:
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	movq	8(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L10
	movl	$0, %eax
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.section	.data.rel.ro.local,"aw"
	.align 32
	.type	jt.2512, @object
	.size	jt.2512, 56
jt.2512:
	.quad	.L3
	.quad	.L2
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.quad	.L2
	.quad	.L7
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
