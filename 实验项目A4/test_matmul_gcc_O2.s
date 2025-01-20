	.file	"test_matmul.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1577:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1577:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Result checksum: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1825:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	$4000000, %edi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	call	_Znam@PLT
	movl	$4000000, %edi
	movq	%rax, %r14
	movq	%rax, 32(%rsp)
	call	_Znam@PLT
	movl	$4000000, %edi
	movq	%rax, %rbx
	movq	%rax, 56(%rsp)
	call	_Znam@PLT
	movss	.LC1(%rip), %xmm0
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%rax, 48(%rsp)
	xorl	%eax, %eax
.L4:
	movss	%xmm0, (%rdx,%rax,4)
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	cmpq	$1000000, %rax
	jne	.L4
	movq	48(%rsp), %rbx
	movl	$4000000, %edx
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	memset@PLT
	movq	56(%rsp), %rax
	movq	$0, (%rsp)
	subq	$200000, %rax
	movq	%rax, 88(%rsp)
	leaq	4000000(%rbx), %rax
	movq	%rax, 8(%rsp)
.L19:
	movq	(%rsp), %rax
	movq	32(%rsp), %rdi
	xorl	%r8d, %r8d
	movq	56(%rsp), %r15
	movq	%rax, %rbx
	movq	%rax, 16(%rsp)
	addq	$50, %rax
	leaq	47(%rbx), %rbp
	movq	48(%rsp), %rbx
	leaq	(%rdi,%rax,4), %rdi
	movq	%rax, (%rsp)
	imulq	$4000, %rax, %rax
	addq	88(%rsp), %rax
	movq	%rdi, 72(%rsp)
	movq	%rbx, 80(%rsp)
	movq	%rax, 24(%rsp)
	movq	%rbx, 64(%rsp)
.L18:
	movq	%r8, %rbx
	addq	$50, %r8
	movq	48(%rsp), %rsi
	xorl	%r14d, %r14d
	leaq	0(,%r8,4), %rax
	movq	64(%rsp), %r13
	movq	72(%rsp), %r12
	movq	%rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L5:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	leaq	-200(%r12), %rcx
	movq	%rax, %rdi
	cmpq	%rbp, %rax
	jnb	.L8
	.p2align 4,,10
	.p2align 3
.L7:
	movss	(%rcx), %xmm2
	movss	4(%rcx), %xmm3
	movss	8(%rcx), %xmm4
	movss	12(%rcx), %xmm5
	cmpq	%rbx, %r8
	jbe	.L9
	movq	%rbx, %rax
	leaq	4000(%rdx), %r11
	leaq	8000(%rdx), %r10
	leaq	12000(%rdx), %r9
	.p2align 4,,10
	.p2align 3
.L6:
	movss	(%r11,%rax,4), %xmm0
	movss	(%rdx,%rax,4), %xmm1
	mulss	%xmm3, %xmm0
	mulss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movss	(%r10,%rax,4), %xmm1
	mulss	%xmm4, %xmm1
	addss	%xmm1, %xmm0
	movss	(%r9,%rax,4), %xmm1
	mulss	%xmm5, %xmm1
	addss	%xmm1, %xmm0
	addss	(%rsi,%rax,4), %xmm0
	movss	%xmm0, (%rsi,%rax,4)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L6
.L9:
	addq	$4, %rdi
	addq	$16, %rcx
	addq	$16000, %rdx
	cmpq	%rbp, %rdi
	jb	.L7
.L8:
	cmpq	%rdi, (%rsp)
	jbe	.L14
	movq	32(%rsp), %rcx
	leaq	(%rdi,%r14), %rax
	imulq	$1000, %rdi, %rdi
	leaq	(%rcx,%rax,4), %rax
	movq	40(%rsp), %rcx
	leaq	(%rcx,%rsi), %r9
.L13:
	movss	(%rax), %xmm0
	leaq	(%r15,%rdi,4), %rcx
	movq	%r13, %rdx
	cmpq	%rbx, %r8
	jbe	.L16
	.p2align 4,,10
	.p2align 3
.L15:
	movss	(%rcx), %xmm1
	addq	$4, %rdx
	addq	$4, %rcx
	mulss	%xmm0, %xmm1
	addss	-4(%rdx), %xmm1
	movss	%xmm1, -4(%rdx)
	cmpq	%r9, %rdx
	jne	.L15
.L16:
	addq	$4, %rax
	addq	$1000, %rdi
	cmpq	%rax, %r12
	jne	.L13
.L14:
	addq	$4000, %r12
	addq	$1000, %r14
	addq	$4000, %r13
	addq	$4000, %rsi
	cmpq	%rsi, 8(%rsp)
	jne	.L5
	addq	$200, 64(%rsp)
	addq	$200, %r15
	cmpq	$1000, %r8
	jne	.L18
	cmpq	$1000, (%rsp)
	jne	.L19
	movq	80(%rsp), %rax
	pxor	%xmm0, %xmm0
.L20:
	addss	(%rax), %xmm0
	addq	$4, %rax
	cmpq	%rax, 8(%rsp)
	jne	.L20
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movss	%xmm0, (%rsp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movss	(%rsp), %xmm0
	movq	%rax, %rdi
	cvtss2sd	%xmm0, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbp
	testq	%rbp, %rbp
	je	.L41
	cmpb	$0, 56(%rbp)
	je	.L22
	movzbl	67(%rbp), %eax
.L23:
	movsbl	%al, %esi
	movq	%r12, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	32(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	56(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	48(%rsp), %rdi
	call	_ZdaPv@PLT
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx
	movq	48(%rax), %rdx
	movl	$10, %eax
	cmpq	%rcx, %rdx
	je	.L23
	movl	$10, %esi
	movq	%rbp, %rdi
	call	*%rdx
	jmp	.L23
.L41:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE1825:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	leaq	_ZStL8__ioinit(%rip), %rbp
	movq	%rbp, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	movq	%rbp, %rsi
	popq	%rbp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2317:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1065353216
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
