	.text
	.file	"test_matmul.cpp"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function main
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.long	0x3f800000                      # float 1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %r14
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %rbx
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %r15
	movl	$4000000, %edx                  # imm = 0x3D0900
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$36, %eax
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -144(%r14,%rax,4)
	movups	%xmm0, -128(%r14,%rax,4)
	movups	%xmm0, -144(%rbx,%rax,4)
	movups	%xmm0, -128(%rbx,%rax,4)
	movups	%xmm0, -112(%r14,%rax,4)
	movups	%xmm0, -96(%r14,%rax,4)
	movups	%xmm0, -112(%rbx,%rax,4)
	movups	%xmm0, -96(%rbx,%rax,4)
	movups	%xmm0, -80(%r14,%rax,4)
	movups	%xmm0, -64(%r14,%rax,4)
	movups	%xmm0, -80(%rbx,%rax,4)
	movups	%xmm0, -64(%rbx,%rax,4)
	movups	%xmm0, -48(%r14,%rax,4)
	movups	%xmm0, -32(%r14,%rax,4)
	movups	%xmm0, -48(%rbx,%rax,4)
	movups	%xmm0, -32(%rbx,%rax,4)
	movups	%xmm0, -16(%r14,%rax,4)
	movups	%xmm0, (%r14,%rax,4)
	movups	%xmm0, -16(%rbx,%rax,4)
	movups	%xmm0, (%rbx,%rax,4)
	addq	$40, %rax
	cmpq	$1000036, %rax                  # imm = 0xF4264
	jne	.LBB0_1
# %bb.2:
	leaq	8(%rsp), %rdi
	movl	$1000, %r8d                     # imm = 0x3E8
	movl	$1000, %r9d                     # imm = 0x3E8
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	callq	_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm
	xorps	%xmm0, %xmm0
	movl	$7, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addss	-28(%r15,%rax,4), %xmm0
	addss	-24(%r15,%rax,4), %xmm0
	addss	-20(%r15,%rax,4), %xmm0
	addss	-16(%r15,%rax,4), %xmm0
	addss	-12(%r15,%rax,4), %xmm0
	addss	-8(%r15,%rax,4), %xmm0
	addss	-4(%r15,%rax,4), %xmm0
	addss	(%r15,%rax,4), %xmm0
	addq	$8, %rax
	cmpq	$1000007, %rax                  # imm = 0xF4247
	jne	.LBB0_3
# %bb.4:
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str(%rip), %rsi
	movl	$17, %edx
	movq	%r12, %rdi
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	%r12, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB0_9
# %bb.5:
	cmpb	$0, 56(%r13)
	je	.LBB0_7
# %bb.6:
	movb	67(%r13), %al
	jmp	.LBB0_8
.LBB0_7:
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB0_8:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movq	%r14, %rdi
	callq	_ZdaPv@PLT
	movq	%rbx, %rdi
	callq	_ZdaPv@PLT
	movq	%r15, %rdi
	callq	_ZdaPv@PLT
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_9:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm,"axG",@progbits,_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm,comdat
	.weak	_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm # -- Begin function _ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm
	.p2align	4, 0x90
	.type	_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm,@function
_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm: # @_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$936, %rsp                      # imm = 0x3A8
	.cfi_def_cfa_offset 992
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 248(%rsp)                  # 8-byte Spill
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rsi, 400(%rsp)                 # 8-byte Spill
	testq	%r9, %r9
	je	.LBB1_60
# %bb.1:
	leaq	(%r9,%r9,2), %rax
	imulq	$50, %r9, %r10
	leaq	(,%r9,4), %r14
	leaq	(%r9,%r9), %r8
	leaq	(%r9,%r9,2), %rcx
	addq	$4, %rcx
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	leaq	4(%r9,%r9), %rcx
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	leaq	4(%r9), %rcx
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	imulq	$200, %r9, %rcx
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	movq	%r9, %rcx
	shlq	$4, %rcx
	movq	%rcx, 784(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%r9,4), %rdi
	leaq	(%rcx,%r9,8), %rbp
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	leaq	(%rcx,%rax,4), %rbx
	leaq	12(%rcx,%r9,4), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	leaq	12(%rcx,%r9,8), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	leaq	12(%rcx), %rax
	movq	%rax, 592(%rsp)                 # 8-byte Spill
	leaq	16(%rcx), %rax
	movq	%rax, 664(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	addq	$16, %rax
	movq	%rax, 520(%rsp)                 # 8-byte Spill
	leaq	4(%rcx), %rax
	movq	%rax, 584(%rsp)                 # 8-byte Spill
	movl	$50, %esi
	xorl	%eax, %eax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	movq	%r9, 144(%rsp)                  # 8-byte Spill
	movq	%r8, 464(%rsp)                  # 8-byte Spill
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%r14, %r11
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	%r9, 288(%rsp)                  # 8-byte Spill
	movq	%r10, 472(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	movq	504(%rsp), %rsi                 # 8-byte Reload
	addq	$50, %rsi
	movq	496(%rsp), %rdx                 # 8-byte Reload
	addq	$1, %rdx
	movq	432(%rsp), %rax                 # 8-byte Reload
	movq	176(%rsp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	512(%rsp), %rdi                 # 8-byte Reload
	addq	%rax, %rdi
	movq	192(%rsp), %rbp                 # 8-byte Reload
	addq	%rax, %rbp
	movq	184(%rsp), %rbx                 # 8-byte Reload
	addq	%rax, %rbx
	movq	%r10, %r9
	movq	472(%rsp), %r10                 # 8-byte Reload
	addq	%r10, 152(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 168(%rsp)                 # 8-byte Folded Spill
	addq	%rax, 160(%rsp)                 # 8-byte Folded Spill
	addq	%r10, 136(%rsp)                 # 8-byte Folded Spill
	addq	%r10, 144(%rsp)                 # 8-byte Folded Spill
	movq	488(%rsp), %rax                 # 8-byte Reload
	cmpq	%r9, %rax
	jae	.LBB1_60
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_11 Depth 4
                                        #           Child Loop BB1_18 Depth 5
                                        #           Child Loop BB1_20 Depth 5
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_35 Depth 5
                                        #         Child Loop BB1_39 Depth 4
                                        #           Child Loop BB1_44 Depth 5
                                        #           Child Loop BB1_46 Depth 5
                                        #           Child Loop BB1_54 Depth 5
                                        #           Child Loop BB1_59 Depth 5
	movq	%rax, %r8
	movq	%rdx, 496(%rsp)                 # 8-byte Spill
	imulq	%rdx, %r10
	movq	480(%rsp), %rax                 # 8-byte Reload
	addq	%r10, %rax
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movq	456(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r10), %rax
	movq	%rax, 552(%rsp)                 # 8-byte Spill
	movq	464(%rsp), %rax                 # 8-byte Reload
	addq	%r10, %rax
	movq	%rax, 336(%rsp)                 # 8-byte Spill
	movq	448(%rsp), %rax                 # 8-byte Reload
	addq	%r10, %rax
	movq	%rax, 544(%rsp)                 # 8-byte Spill
	leaq	(%r10,%r9), %rax
	movq	%rax, 328(%rsp)                 # 8-byte Spill
	cmpq	%rsi, %r9
	movq	%rsi, 504(%rsp)                 # 8-byte Spill
	cmovbq	%r9, %rsi
	movq	%r8, 256(%rsp)                  # 8-byte Spill
	leaq	50(%r8), %rax
	cmpq	%r9, %rax
	movq	%rax, 488(%rsp)                 # 8-byte Spill
	movq	%rax, %rdx
	cmovaq	%r9, %rdx
	movq	440(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r10), %rax
	movq	%rax, 536(%rsp)                 # 8-byte Spill
	movq	%r10, 352(%rsp)                 # 8-byte Spill
	leaq	4(%r10), %rax
	movq	%rax, 528(%rsp)                 # 8-byte Spill
	movq	%rdx, 616(%rsp)                 # 8-byte Spill
	leaq	-3(%rdx), %rax
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	movl	$4, %edx
	movq	$-1, 128(%rsp)                  # 8-byte Folded Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	%rbx, 184(%rsp)                 # 8-byte Spill
	movq	%rbx, 224(%rsp)                 # 8-byte Spill
	movq	%rbp, 192(%rsp)                 # 8-byte Spill
	movq	%rbp, 216(%rsp)                 # 8-byte Spill
	movq	%rdi, 512(%rsp)                 # 8-byte Spill
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movl	$50, %eax
	xorl	%ecx, %ecx
	movq	%r9, %r10
	movq	%rsi, %r9
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	movq	568(%rsp), %rax                 # 8-byte Reload
	addq	$50, %rax
	addq	$1, 112(%rsp)                   # 8-byte Folded Spill
	addq	$200, 200(%rsp)                 # 8-byte Folded Spill
	addq	$200, 208(%rsp)                 # 8-byte Folded Spill
	addq	$200, 216(%rsp)                 # 8-byte Folded Spill
	addq	$200, 224(%rsp)                 # 8-byte Folded Spill
	addq	$200, 120(%rsp)                 # 8-byte Folded Spill
	movq	576(%rsp), %rdx                 # 8-byte Reload
	addq	$50, %rdx
	addq	$-50, 128(%rsp)                 # 8-byte Folded Spill
	addq	$200, 232(%rsp)                 # 8-byte Folded Spill
	movq	560(%rsp), %rcx                 # 8-byte Reload
	cmpq	%r10, %rcx
	jae	.LBB1_2
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_8 Depth 3
                                        #         Child Loop BB1_11 Depth 4
                                        #           Child Loop BB1_18 Depth 5
                                        #           Child Loop BB1_20 Depth 5
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_35 Depth 5
                                        #         Child Loop BB1_39 Depth 4
                                        #           Child Loop BB1_44 Depth 5
                                        #           Child Loop BB1_46 Depth 5
                                        #           Child Loop BB1_54 Depth 5
                                        #           Child Loop BB1_59 Depth 5
	cmpq	%rax, %r10
	movq	%rax, 568(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	cmovbq	%r10, %rbx
	leaq	-3(%rbx), %rax
	cmpq	%rax, %rdx
	movq	%rax, %rsi
	movq	%rdx, 576(%rsp)                 # 8-byte Spill
	cmovaq	%rdx, %rsi
	leaq	4(%rcx), %rdx
	cmpq	%rax, %rdx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	cmovaq	%rdx, %rax
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	addq	$50, %rcx
	cmpq	%r10, %rcx
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	cmovaq	%r10, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	cmpq	$0, 248(%rsp)                   # 8-byte Folded Reload
	je	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	addq	128(%rsp), %rsi                 # 8-byte Folded Reload
	shrq	$2, %rsi
	addq	$1, %rsi
	andq	$-4, %rsi
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	imulq	$-50, 112(%rsp), %rcx           # 8-byte Folded Reload
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, %r15
	shrq	$2, %r15
	leaq	1(%r15), %rdi
	movq	%rax, 376(%rsp)                 # 8-byte Spill
	andq	$-4, %rax
	movq	344(%rsp), %r8                  # 8-byte Reload
	movq	-112(%rsp), %rsi                # 8-byte Reload
	leaq	(%r8,%rsi), %rcx
	movq	%rcx, 776(%rsp)                 # 8-byte Spill
	movq	552(%rsp), %rcx                 # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	movq	%r10, %r9
	movq	336(%rsp), %r10                 # 8-byte Reload
	leaq	(%r10,%rsi), %rcx
	movq	%rcx, 760(%rsp)                 # 8-byte Spill
	movq	544(%rsp), %rcx                 # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 752(%rsp)                 # 8-byte Spill
	movq	328(%rsp), %rbp                 # 8-byte Reload
	leaq	(%rsi,%rbp), %rcx
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	movq	536(%rsp), %rcx                 # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 736(%rsp)                 # 8-byte Spill
	movq	528(%rsp), %rcx                 # 8-byte Reload
	addq	%rsi, %rcx
	addq	%rax, %rcx
	movq	%rcx, 728(%rsp)                 # 8-byte Spill
	movq	%rsi, %rcx
	orq	$1, %rcx
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rax), %rcx
	addq	$4, %rcx
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	addq	%rax, 240(%rsp)                 # 8-byte Folded Spill
	movq	%r15, %rax
	movl	$16, %ecx
	mulq	%rcx
	movq	%rax, 608(%rsp)                 # 8-byte Spill
	seto	-114(%rsp)                      # 1-byte Folded Spill
	movq	%rdi, 312(%rsp)                 # 8-byte Spill
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rax, %rdi
	movq	%r15, %rax
	mulq	%rcx
	movq	%rax, 600(%rsp)                 # 8-byte Spill
	seto	-115(%rsp)                      # 1-byte Folded Spill
	movq	352(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rsi), %rcx
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	leaq	3(%rsi), %rcx
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	leaq	2(%rsi), %rcx
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	leaq	(%r8,%rbx), %rcx
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	leaq	(%r10,%rbx), %rcx
	movq	%r9, %r10
	movq	%rcx, 704(%rsp)                 # 8-byte Spill
	leaq	(%rbp,%rbx), %rcx
	movq	%rcx, 696(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rbx), %rax
	movq	%rax, 688(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	leaq	-3(%rax), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rdi,4), %rax
	movq	%rax, 672(%rsp)                 # 8-byte Spill
	movq	%rdi, 304(%rsp)                 # 8-byte Spill
	leaq	(%rsi,%rdi,4), %rax
	movq	%rax, 680(%rsp)                 # 8-byte Spill
	movq	520(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 296(%rsp)                 # 8-byte Spill
	movq	-104(%rsp), %r13                # 8-byte Reload
	movq	120(%rsp), %rcx                 # 8-byte Reload
	xorl	%eax, %eax
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	jmp	.LBB1_8
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_8 Depth=3
	movq	656(%rsp), %rax                 # 8-byte Reload
	addq	$1, %rax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	addq	%rdx, %rcx
	addq	%rdx, %r13
	movq	%rdx, %r11
	addq	%rdx, 296(%rsp)                 # 8-byte Folded Spill
	cmpq	248(%rsp), %rax                 # 8-byte Folded Reload
	je	.LBB1_4
.LBB1_8:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_11 Depth 4
                                        #           Child Loop BB1_18 Depth 5
                                        #           Child Loop BB1_20 Depth 5
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_35 Depth 5
                                        #         Child Loop BB1_39 Depth 4
                                        #           Child Loop BB1_44 Depth 5
                                        #           Child Loop BB1_46 Depth 5
                                        #           Child Loop BB1_54 Depth 5
                                        #           Child Loop BB1_59 Depth 5
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, 656(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	imulq	%r10, %rbp
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%rbp, %rax
	movq	640(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rbp), %rcx
	movq	632(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rbp), %rdx
	movq	624(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rbp), %rsi
	movq	648(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rbp), %rdi
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbp), %rbp
	movq	-104(%rsp), %rbx                # 8-byte Reload
	leaq	(%rbx,%rax,4), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	leaq	(%rbx,%rcx,4), %rax
	movq	%rax, 368(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rdx,4), %rax
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rsi,4), %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rdi,4), %rax
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%rbp,4), %rax
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movq	256(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rdx
	cmpq	384(%rsp), %rax                 # 8-byte Folded Reload
	movq	-96(%rsp), %r9                  # 8-byte Reload
	jae	.LBB1_36
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=3
	movq	608(%rsp), %rdx                 # 8-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rax
	cmpq	%rcx, %rax
	setb	%dil
	movb	-114(%rsp), %bl                 # 1-byte Reload
	orb	%bl, %dil
	movq	272(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rdx), %rcx
	cmpq	%rsi, %rcx
	setb	%al
	orb	%bl, %al
	movq	280(%rsp), %rsi                 # 8-byte Reload
	leaq	(%rsi,%rdx), %rcx
	cmpq	%rsi, %rcx
	setb	%cl
	orb	%bl, %cl
	movq	(%rsp), %rsi                    # 8-byte Reload
	addq	%rsi, %rdx
	cmpq	%rsi, %rdx
	setb	%dl
	orb	%bl, %dl
	orb	%cl, %dl
	movq	%r11, %rcx
	orb	%dil, %al
	orb	%dl, %al
	movb	%al, -113(%rsp)                 # 1-byte Spill
	movq	192(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	184(%rsp), %r8                  # 8-byte Reload
	movq	136(%rsp), %rbp                 # 8-byte Reload
	movq	160(%rsp), %r10                 # 8-byte Reload
	movq	168(%rsp), %r11                 # 8-byte Reload
	movq	152(%rsp), %r12                 # 8-byte Reload
	movq	176(%rsp), %r15                 # 8-byte Reload
	movq	224(%rsp), %rsi                 # 8-byte Reload
	movq	216(%rsp), %rdi                 # 8-byte Reload
	movq	208(%rsp), %rax                 # 8-byte Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	200(%rsp), %rbx                 # 8-byte Reload
	xorl	%r14d, %r14d
	movq	256(%rsp), %rdx                 # 8-byte Reload
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_11 Depth=4
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	$4, %rdx
	addq	$1, %r14
	movq	784(%rsp), %rax                 # 8-byte Reload
	movq	408(%rsp), %rbx                 # 8-byte Reload
	addq	%rax, %rbx
	addq	%rax, %r12
	movq	%r12, -72(%rsp)                 # 8-byte Spill
	movq	416(%rsp), %rdi                 # 8-byte Reload
	addq	%rax, %rdi
	movq	424(%rsp), %rsi                 # 8-byte Reload
	addq	%rax, %rsi
	addq	%rax, %r15
	movq	792(%rsp), %r12                 # 8-byte Reload
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %r12
	addq	%rax, %r11
	addq	%rax, %r10
	movq	88(%rsp), %rbp                  # 8-byte Reload
	addq	%rcx, %rbp
	addq	%rax, %r8
	addq	%rcx, 56(%rsp)                  # 8-byte Folded Spill
	addq	%rax, 64(%rsp)                  # 8-byte Folded Spill
	cmpq	384(%rsp), %rdx                 # 8-byte Folded Reload
	jae	.LBB1_36
.LBB1_11:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_18 Depth 5
                                        #           Child Loop BB1_20 Depth 5
                                        #           Child Loop BB1_29 Depth 5
                                        #           Child Loop BB1_35 Depth 5
	movq	%rbx, 408(%rsp)                 # 8-byte Spill
	movq	%rdi, 416(%rsp)                 # 8-byte Spill
	movq	%rsi, 424(%rsp)                 # 8-byte Spill
	imulq	%r14, %rcx
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	addq	%rdx, %rax
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movss	(%rcx,%rax,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	movss	4(%rcx,%rax,4), %xmm7           # xmm7 = mem[0],zero,zero,zero
	movss	8(%rcx,%rax,4), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	12(%rcx,%rax,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, %rdi
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rax
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	jae	.LBB1_21
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=4
	cmpq	$12, 376(%rsp)                  # 8-byte Folded Reload
	setb	%al
	orb	-113(%rsp), %al                 # 1-byte Folded Reload
	movq	-112(%rsp), %rdi                # 8-byte Reload
	jne	.LBB1_20
# %bb.13:                               #   in Loop: Header=BB1_11 Depth=4
	movq	776(%rsp), %rax                 # 8-byte Reload
	movq	392(%rsp), %rdi                 # 8-byte Reload
	addq	%rdi, %rax
	movq	768(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rdi), %rcx
	movq	760(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rdi), %rbx
	movq	752(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rdi), %rsi
	movq	744(%rsp), %rdx                 # 8-byte Reload
	addq	%rdi, %rdx
	leaq	(%r9,%rax,4), %rax
	leaq	(%r9,%rcx,4), %rcx
	movq	(%rsp), %rbp                    # 8-byte Reload
	cmpq	%rcx, %rbp
	setb	-64(%rsp)                       # 1-byte Folded Spill
	movq	%r14, -88(%rsp)                 # 8-byte Spill
	movq	368(%rsp), %r14                 # 8-byte Reload
	cmpq	%r14, %rax
	movq	736(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	leaq	(%r9,%rbx,4), %rcx
	leaq	(%r9,%rsi,4), %rsi
	setb	-16(%rsp)                       # 1-byte Folded Spill
	cmpq	%rsi, %rbp
	setb	%bl
	cmpq	%r14, %rcx
	movq	720(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rdi), %rsi
	leaq	(%r9,%rdx,4), %rdx
	leaq	(%r9,%rax,4), %rax
	setb	16(%rsp)                        # 1-byte Folded Spill
	cmpq	%rax, %rbp
	setb	%cl
	cmpq	%r14, %rdx
	movq	728(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rdi), %rax
	leaq	(%r9,%rsi,4), %rsi
	leaq	(%r9,%rax,4), %rax
	setb	32(%rsp)                        # 1-byte Folded Spill
	cmpq	%rax, %rbp
	movq	88(%rsp), %rbp                  # 8-byte Reload
	setb	%al
	cmpq	%r14, %rsi
	movq	-88(%rsp), %r14                 # 8-byte Reload
	setb	%sil
	movq	-112(%rsp), %rdi                # 8-byte Reload
	movb	-16(%rsp), %dl                  # 1-byte Reload
	testb	%dl, -64(%rsp)                  # 1-byte Folded Reload
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	jne	.LBB1_20
# %bb.14:                               #   in Loop: Header=BB1_11 Depth=4
	movq	-112(%rsp), %rdi                # 8-byte Reload
	andb	16(%rsp), %bl                   # 1-byte Folded Reload
	jne	.LBB1_20
# %bb.15:                               #   in Loop: Header=BB1_11 Depth=4
	movq	-112(%rsp), %rdi                # 8-byte Reload
	andb	32(%rsp), %cl                   # 1-byte Folded Reload
	jne	.LBB1_20
# %bb.16:                               #   in Loop: Header=BB1_11 Depth=4
	movq	-112(%rsp), %rdi                # 8-byte Reload
	andb	%sil, %al
	jne	.LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_11 Depth=4
	movaps	%xmm7, 832(%rsp)                # 16-byte Spill
	shufps	$0, %xmm7, %xmm7                # xmm7 = xmm7[0,0,0,0]
	movaps	%xmm7, -64(%rsp)                # 16-byte Spill
	movaps	%xmm6, 848(%rsp)                # 16-byte Spill
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	movaps	%xmm6, -16(%rsp)                # 16-byte Spill
	movaps	%xmm2, 816(%rsp)                # 16-byte Spill
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 16(%rsp)                 # 16-byte Spill
	movaps	%xmm3, 800(%rsp)                # 16-byte Spill
	shufps	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 864(%rsp)                # 16-byte Spill
	movq	320(%rsp), %rbp                 # 8-byte Reload
	xorl	%edi, %edi
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	424(%rsp), %rsi                 # 8-byte Reload
	movq	416(%rsp), %rbx                 # 8-byte Reload
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movq	408(%rsp), %r14                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_18:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	(%r14,%rdi), %xmm0
	movups	16(%r14,%rdi), %xmm8
	movups	32(%r14,%rdi), %xmm1
	movups	48(%r14,%rdi), %xmm3
	movaps	%xmm3, %xmm5
	movlhps	%xmm1, %xmm5                    # xmm5 = xmm5[0],xmm1[0]
	movaps	%xmm0, %xmm9
	unpcklps	%xmm8, %xmm9                    # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	shufps	$36, %xmm5, %xmm9               # xmm9 = xmm9[0,1],xmm5[2,0]
	movaps	%xmm1, %xmm5
	unpcklps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0],xmm5[1],xmm3[1]
	movaps	%xmm8, %xmm2
	shufps	$17, %xmm0, %xmm2               # xmm2 = xmm2[1,0],xmm0[1,0]
	shufps	$226, %xmm5, %xmm2              # xmm2 = xmm2[2,0],xmm5[2,3]
	movaps	%xmm2, 96(%rsp)                 # 16-byte Spill
	movaps	%xmm3, %xmm5
	unpckhpd	%xmm1, %xmm5                    # xmm5 = xmm5[1],xmm1[1]
	movaps	%xmm0, %xmm2
	unpckhps	%xmm8, %xmm2                    # xmm2 = xmm2[2],xmm8[2],xmm2[3],xmm8[3]
	shufps	$36, %xmm5, %xmm2               # xmm2 = xmm2[0,1],xmm5[2,0]
	movaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	unpckhps	%xmm3, %xmm1                    # xmm1 = xmm1[2],xmm3[2],xmm1[3],xmm3[3]
	shufps	$51, %xmm0, %xmm8               # xmm8 = xmm8[3,0],xmm0[3,0]
	shufps	$226, %xmm1, %xmm8              # xmm8 = xmm8[2,0],xmm1[2,3]
	movups	(%rcx,%rdi), %xmm10
	movups	16(%rcx,%rdi), %xmm4
	movups	32(%rcx,%rdi), %xmm3
	movups	48(%rcx,%rdi), %xmm11
	movaps	%xmm11, %xmm1
	movlhps	%xmm3, %xmm1                    # xmm1 = xmm1[0],xmm3[0]
	movaps	%xmm10, %xmm0
	unpcklps	%xmm4, %xmm0                    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	shufps	$36, %xmm1, %xmm0               # xmm0 = xmm0[0,1],xmm1[2,0]
	movaps	%xmm3, %xmm1
	unpcklps	%xmm11, %xmm1                   # xmm1 = xmm1[0],xmm11[0],xmm1[1],xmm11[1]
	movaps	%xmm4, %xmm2
	shufps	$17, %xmm10, %xmm2              # xmm2 = xmm2[1,0],xmm10[1,0]
	shufps	$226, %xmm1, %xmm2              # xmm2 = xmm2[2,0],xmm1[2,3]
	movaps	%xmm2, 896(%rsp)                # 16-byte Spill
	movaps	%xmm11, %xmm2
	unpckhpd	%xmm3, %xmm2                    # xmm2 = xmm2[1],xmm3[1]
	movaps	%xmm10, %xmm1
	unpckhps	%xmm4, %xmm1                    # xmm1 = xmm1[2],xmm4[2],xmm1[3],xmm4[3]
	shufps	$36, %xmm2, %xmm1               # xmm1 = xmm1[0,1],xmm2[2,0]
	movaps	%xmm1, 912(%rsp)                # 16-byte Spill
	unpckhps	%xmm11, %xmm3                   # xmm3 = xmm3[2],xmm11[2],xmm3[3],xmm11[3]
	shufps	$51, %xmm10, %xmm4              # xmm4 = xmm4[3,0],xmm10[3,0]
	shufps	$226, %xmm3, %xmm4              # xmm4 = xmm4[2,0],xmm3[2,3]
	movaps	%xmm4, 880(%rsp)                # 16-byte Spill
	mulps	-64(%rsp), %xmm0                # 16-byte Folded Reload
	mulps	-16(%rsp), %xmm9                # 16-byte Folded Reload
	addps	%xmm0, %xmm9
	movups	(%rbx,%rdi), %xmm13
	movups	16(%rbx,%rdi), %xmm6
	movups	32(%rbx,%rdi), %xmm3
	movups	48(%rbx,%rdi), %xmm14
	movaps	%xmm14, %xmm0
	movlhps	%xmm3, %xmm0                    # xmm0 = xmm0[0],xmm3[0]
	movaps	%xmm13, %xmm12
	unpcklps	%xmm6, %xmm12                   # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1]
	shufps	$36, %xmm0, %xmm12              # xmm12 = xmm12[0,1],xmm0[2,0]
	movaps	%xmm3, %xmm2
	unpcklps	%xmm14, %xmm2                   # xmm2 = xmm2[0],xmm14[0],xmm2[1],xmm14[1]
	movaps	%xmm6, %xmm11
	shufps	$17, %xmm13, %xmm11             # xmm11 = xmm11[1,0],xmm13[1,0]
	shufps	$226, %xmm2, %xmm11             # xmm11 = xmm11[2,0],xmm2[2,3]
	movaps	%xmm14, %xmm2
	unpckhpd	%xmm3, %xmm2                    # xmm2 = xmm2[1],xmm3[1]
	movaps	%xmm13, %xmm10
	unpckhps	%xmm6, %xmm10                   # xmm10 = xmm10[2],xmm6[2],xmm10[3],xmm6[3]
	shufps	$36, %xmm2, %xmm10              # xmm10 = xmm10[0,1],xmm2[2,0]
	unpckhps	%xmm14, %xmm3                   # xmm3 = xmm3[2],xmm14[2],xmm3[3],xmm14[3]
	shufps	$51, %xmm13, %xmm6              # xmm6 = xmm6[3,0],xmm13[3,0]
	shufps	$226, %xmm3, %xmm6              # xmm6 = xmm6[2,0],xmm3[2,3]
	mulps	16(%rsp), %xmm12                # 16-byte Folded Reload
	addps	%xmm9, %xmm12
	movups	(%rsi,%rdi), %xmm13
	movups	16(%rsi,%rdi), %xmm3
	movups	32(%rsi,%rdi), %xmm15
	movups	48(%rsi,%rdi), %xmm1
	movaps	%xmm1, %xmm2
	movlhps	%xmm15, %xmm2                   # xmm2 = xmm2[0],xmm15[0]
	movaps	%xmm13, %xmm14
	unpcklps	%xmm3, %xmm14                   # xmm14 = xmm14[0],xmm3[0],xmm14[1],xmm3[1]
	shufps	$36, %xmm2, %xmm14              # xmm14 = xmm14[0,1],xmm2[2,0]
	movaps	%xmm15, %xmm9
	unpcklps	%xmm1, %xmm9                    # xmm9 = xmm9[0],xmm1[0],xmm9[1],xmm1[1]
	movaps	%xmm3, %xmm2
	shufps	$17, %xmm13, %xmm2              # xmm2 = xmm2[1,0],xmm13[1,0]
	shufps	$226, %xmm9, %xmm2              # xmm2 = xmm2[2,0],xmm9[2,3]
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm15, %xmm0                   # xmm0 = xmm0[1],xmm15[1]
	movaps	%xmm13, %xmm9
	unpckhps	%xmm3, %xmm9                    # xmm9 = xmm9[2],xmm3[2],xmm9[3],xmm3[3]
	shufps	$36, %xmm0, %xmm9               # xmm9 = xmm9[0,1],xmm0[2,0]
	unpckhps	%xmm1, %xmm15                   # xmm15 = xmm15[2],xmm1[2],xmm15[3],xmm1[3]
	shufps	$51, %xmm13, %xmm3              # xmm3 = xmm3[3,0],xmm13[3,0]
	shufps	$226, %xmm15, %xmm3             # xmm3 = xmm3[2,0],xmm15[2,3]
	movaps	864(%rsp), %xmm7                # 16-byte Reload
	mulps	%xmm7, %xmm14
	addps	%xmm12, %xmm14
	movups	32(%rax,%rdi), %xmm0
	movups	48(%rax,%rdi), %xmm15
	movaps	%xmm15, %xmm1
	movlhps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	movups	(%rax,%rdi), %xmm12
	movups	16(%rax,%rdi), %xmm4
	movaps	%xmm12, %xmm5
	unpcklps	%xmm4, %xmm5                    # xmm5 = xmm5[0],xmm4[0],xmm5[1],xmm4[1]
	shufps	$36, %xmm1, %xmm5               # xmm5 = xmm5[0,1],xmm1[2,0]
	addps	%xmm14, %xmm5
	movaps	%xmm0, %xmm1
	unpcklps	%xmm15, %xmm1                   # xmm1 = xmm1[0],xmm15[0],xmm1[1],xmm15[1]
	movaps	%xmm4, %xmm13
	shufps	$17, %xmm12, %xmm13             # xmm13 = xmm13[1,0],xmm12[1,0]
	shufps	$226, %xmm1, %xmm13             # xmm13 = xmm13[2,0],xmm1[2,3]
	movaps	%xmm15, %xmm1
	unpckhpd	%xmm0, %xmm1                    # xmm1 = xmm1[1],xmm0[1]
	movaps	%xmm12, %xmm14
	unpckhps	%xmm4, %xmm14                   # xmm14 = xmm14[2],xmm4[2],xmm14[3],xmm4[3]
	shufps	$36, %xmm1, %xmm14              # xmm14 = xmm14[0,1],xmm1[2,0]
	unpckhps	%xmm15, %xmm0                   # xmm0 = xmm0[2],xmm15[2],xmm0[3],xmm15[3]
	shufps	$51, %xmm12, %xmm4              # xmm4 = xmm4[3,0],xmm12[3,0]
	shufps	$226, %xmm0, %xmm4              # xmm4 = xmm4[2,0],xmm0[2,3]
	movaps	-64(%rsp), %xmm15               # 16-byte Reload
	movaps	896(%rsp), %xmm1                # 16-byte Reload
	mulps	%xmm15, %xmm1
	movaps	96(%rsp), %xmm0                 # 16-byte Reload
	movaps	-16(%rsp), %xmm12               # 16-byte Reload
	mulps	%xmm12, %xmm0
	addps	%xmm1, %xmm0
	movaps	16(%rsp), %xmm1                 # 16-byte Reload
	mulps	%xmm1, %xmm11
	addps	%xmm0, %xmm11
	mulps	%xmm7, %xmm2
	addps	%xmm11, %xmm2
	addps	%xmm13, %xmm2
	movaps	912(%rsp), %xmm11               # 16-byte Reload
	mulps	%xmm15, %xmm11
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	mulps	%xmm12, %xmm0
	addps	%xmm11, %xmm0
	mulps	%xmm1, %xmm10
	addps	%xmm0, %xmm10
	movaps	%xmm7, %xmm0
	mulps	%xmm7, %xmm9
	addps	%xmm10, %xmm9
	addps	%xmm14, %xmm9
	movaps	880(%rsp), %xmm7                # 16-byte Reload
	mulps	%xmm15, %xmm7
	mulps	%xmm12, %xmm8
	addps	%xmm7, %xmm8
	mulps	%xmm1, %xmm6
	addps	%xmm8, %xmm6
	mulps	%xmm0, %xmm3
	addps	%xmm6, %xmm3
	addps	%xmm4, %xmm3
	movaps	%xmm3, %xmm0
	movlhps	%xmm9, %xmm0                    # xmm0 = xmm0[0],xmm9[0]
	movaps	%xmm5, %xmm1
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	shufps	$36, %xmm0, %xmm1               # xmm1 = xmm1[0,1],xmm0[2,0]
	movaps	%xmm9, %xmm0
	unpcklps	%xmm3, %xmm0                    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	movaps	%xmm2, %xmm4
	shufps	$17, %xmm5, %xmm4               # xmm4 = xmm4[1,0],xmm5[1,0]
	shufps	$226, %xmm0, %xmm4              # xmm4 = xmm4[2,0],xmm0[2,3]
	movaps	%xmm3, %xmm0
	unpckhpd	%xmm9, %xmm0                    # xmm0 = xmm0[1],xmm9[1]
	movaps	%xmm5, %xmm6
	unpckhps	%xmm2, %xmm6                    # xmm6 = xmm6[2],xmm2[2],xmm6[3],xmm2[3]
	shufps	$36, %xmm0, %xmm6               # xmm6 = xmm6[0,1],xmm0[2,0]
	unpckhps	%xmm3, %xmm9                    # xmm9 = xmm9[2],xmm3[2],xmm9[3],xmm3[3]
	shufps	$51, %xmm5, %xmm2               # xmm2 = xmm2[3,0],xmm5[3,0]
	shufps	$226, %xmm9, %xmm2              # xmm2 = xmm2[2,0],xmm9[2,3]
	movups	%xmm2, 48(%rax,%rdi)
	movups	%xmm6, 32(%rax,%rdi)
	movups	%xmm4, 16(%rax,%rdi)
	movups	%xmm1, (%rax,%rdi)
	addq	$64, %rdi
	addq	$-4, %rbp
	jne	.LBB1_18
# %bb.19:                               #   in Loop: Header=BB1_11 Depth=4
	movq	672(%rsp), %rdi                 # 8-byte Reload
	movq	304(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, 312(%rsp)                 # 8-byte Folded Reload
	movq	88(%rsp), %rbp                  # 8-byte Reload
	movq	-88(%rsp), %r14                 # 8-byte Reload
	movaps	848(%rsp), %xmm6                # 16-byte Reload
	movaps	832(%rsp), %xmm7                # 16-byte Reload
	movaps	816(%rsp), %xmm2                # 16-byte Reload
	movaps	800(%rsp), %xmm3                # 16-byte Reload
	je	.LBB1_21
	.p2align	4, 0x90
.LBB1_20:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leaq	(%r12,%rdi), %rax
	movss	-12(%r11,%rdi,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	movss	(%r15,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	leaq	(%rbp,%rdi), %rcx
	movss	-12(%r10,%rdi,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	(%r8,%rdi,4), %xmm1             # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	addss	(%r13,%rdi,4), %xmm1
	movss	%xmm1, (%r13,%rdi,4)
	shlq	$2, %rax
	orq	$4, %rax
	movss	-8(%r11,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	movss	(%r9,%rax), %xmm1               # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	shlq	$2, %rcx
	orq	$4, %rcx
	movss	(%r9,%rcx), %xmm0               # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	4(%r8,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	addss	4(%r13,%rdi,4), %xmm1
	movss	%xmm1, 4(%r13,%rdi,4)
	movss	-4(%r11,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	movss	8(%r15,%rdi,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movss	-4(%r10,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	8(%r8,%rdi,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	addss	8(%r13,%rdi,4), %xmm1
	movss	%xmm1, 8(%r13,%rdi,4)
	movss	(%r11,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	movss	12(%r15,%rdi,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movss	(%r10,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	12(%r8,%rdi,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	addss	12(%r13,%rdi,4), %xmm1
	movss	%xmm1, 12(%r13,%rdi,4)
	addq	$4, %rdi
	cmpq	%rdx, %rdi
	jb	.LBB1_20
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=4
	movq	%r12, 792(%rsp)                 # 8-byte Spill
	cmpq	72(%rsp), %rdi                  # 8-byte Folded Reload
	movq	-72(%rsp), %r12                 # 8-byte Reload
	jae	.LBB1_10
# %bb.22:                               #   in Loop: Header=BB1_11 Depth=4
	movq	-40(%rsp), %rax                 # 8-byte Reload
	subq	%rdi, %rax
	cmpq	$4, %rax
	jb	.LBB1_33
# %bb.24:                               #   in Loop: Header=BB1_11 Depth=4
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%r14, -88(%rsp)                 # 8-byte Spill
	movq	712(%rsp), %rax                 # 8-byte Reload
	movq	392(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	704(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	696(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	688(%rsp), %rax                 # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	344(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	movq	336(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %rbp
	movq	328(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%rcx), %rdx
	addq	352(%rsp), %rcx                 # 8-byte Folded Reload
	leaq	(%r9,%rsi,4), %r12
	movq	-24(%rsp), %rax                 # 8-byte Reload
	addq	%rdi, %rax
	movq	-104(%rsp), %rsi                # 8-byte Reload
	leaq	(%rsi,%rax,4), %rbx
	addq	%rdi, %r14
	addq	%rdi, %rbp
	addq	%rdi, %rdx
	addq	%rdi, %rcx
	cmpq	%r12, %rbx
	leaq	(%r9,%r14,4), %rsi
	setb	32(%rsp)                        # 1-byte Folded Spill
	movq	360(%rsp), %rax                 # 8-byte Reload
	cmpq	%rax, %rsi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	leaq	(%r9,%rsi,4), %rsi
	setb	%r14b
	cmpq	%rsi, %rbx
	leaq	(%r9,%rbp,4), %rsi
	setb	%bpl
	cmpq	%rax, %rsi
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r9,%rsi,4), %rsi
	setb	-16(%rsp)                       # 1-byte Folded Spill
	cmpq	%rsi, %rbx
	leaq	(%r9,%rdx,4), %rsi
	setb	%r12b
	cmpq	%rax, %rsi
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	leaq	(%r9,%rsi,4), %rsi
	setb	-64(%rsp)                       # 1-byte Folded Spill
	cmpq	%rsi, %rbx
	leaq	(%r9,%rcx,4), %rcx
	setb	%dl
	cmpq	%rax, %rcx
	setb	%al
	testb	%r14b, 32(%rsp)                 # 1-byte Folded Reload
	jne	.LBB1_32
# %bb.25:                               #   in Loop: Header=BB1_11 Depth=4
	andb	-16(%rsp), %bpl                 # 1-byte Folded Reload
	jne	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_11 Depth=4
	andb	-64(%rsp), %r12b                # 1-byte Folded Reload
	movq	-72(%rsp), %r12                 # 8-byte Reload
	movq	-88(%rsp), %r14                 # 8-byte Reload
	jne	.LBB1_33
# %bb.27:                               #   in Loop: Header=BB1_11 Depth=4
	andb	%al, %dl
	jne	.LBB1_33
# %bb.28:                               #   in Loop: Header=BB1_11 Depth=4
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rbp
	andq	$-4, %rbp
	leaq	(%rdi,%rbp), %rcx
	movaps	%xmm7, %xmm8
	shufps	$0, %xmm7, %xmm8                # xmm8 = xmm8[0,0],xmm7[0,0]
	movaps	%xmm6, %xmm9
	shufps	$0, %xmm6, %xmm9                # xmm9 = xmm9[0,0],xmm6[0,0]
	movaps	%xmm2, %xmm0
	shufps	$0, %xmm2, %xmm0                # xmm0 = xmm0[0,0],xmm2[0,0]
	movaps	%xmm3, %xmm1
	shufps	$0, %xmm3, %xmm1                # xmm1 = xmm1[0,0],xmm3[0,0]
	leaq	(%r15,%rdi,4), %r14
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rdi, %rax
	leaq	(%r9,%rax,4), %rsi
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rdi,4), %rdx
	leaq	(%r8,%rdi,4), %r12
	leaq	(,%rdi,4), %rax
	addq	%r13, %rax
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_29:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	(%r14,%rdi,4), %xmm4
	mulps	%xmm9, %xmm4
	movups	(%rsi,%rdi,4), %xmm5
	mulps	%xmm8, %xmm5
	addps	%xmm4, %xmm5
	movups	(%rdx,%rdi,4), %xmm4
	mulps	%xmm0, %xmm4
	addps	%xmm5, %xmm4
	movups	(%r12,%rdi,4), %xmm5
	mulps	%xmm1, %xmm5
	addps	%xmm4, %xmm5
	movups	(%rax,%rdi,4), %xmm4
	addps	%xmm5, %xmm4
	movups	%xmm4, (%rax,%rdi,4)
	addq	$4, %rdi
	cmpq	%rdi, %rbp
	jne	.LBB1_29
# %bb.30:                               #   in Loop: Header=BB1_11 Depth=4
	cmpq	%rbp, %rbx
	movq	-72(%rsp), %r12                 # 8-byte Reload
	movq	-88(%rsp), %r14                 # 8-byte Reload
	je	.LBB1_10
	jmp	.LBB1_34
	.p2align	4, 0x90
.LBB1_33:                               #   in Loop: Header=BB1_11 Depth=4
	movq	%rdi, %rcx
.LBB1_34:                               #   in Loop: Header=BB1_11 Depth=4
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	subq	%rcx, %rdi
	leaq	(,%rcx,4), %rbp
	addq	%r13, %rbp
	leaq	(%r8,%rcx,4), %rsi
	movq	64(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%rcx,4), %rdx
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	%rcx, %rax
	leaq	(%r9,%rax,4), %rax
	leaq	(%r15,%rcx,4), %rbx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_35:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_11 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm0
	movss	(%rbx,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm1
	addss	%xmm0, %xmm1
	movss	(%rdx,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	(%rsi,%rcx,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm1
	addss	%xmm0, %xmm1
	addss	(%rbp,%rcx,4), %xmm1
	movss	%xmm1, (%rbp,%rcx,4)
	addq	$1, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB1_35
	jmp	.LBB1_10
.LBB1_32:                               #   in Loop: Header=BB1_11 Depth=4
	movq	%rdi, %rcx
	movq	-72(%rsp), %r12                 # 8-byte Reload
	movq	-88(%rsp), %r14                 # 8-byte Reload
	jmp	.LBB1_34
	.p2align	4, 0x90
.LBB1_36:                               #   in Loop: Header=BB1_8 Depth=3
	cmpq	616(%rsp), %rdx                 # 8-byte Folded Reload
	movq	288(%rsp), %r10                 # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	jae	.LBB1_7
# %bb.37:                               #   in Loop: Header=BB1_8 Depth=3
	movq	%rdx, %r15
	imulq	%r10, %r15
	leaq	(%rbx,%r15), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%r15, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	240(%rsp), %rax                 # 8-byte Reload
	addq	%r15, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbp
	movq	600(%rsp), %rdx                 # 8-byte Reload
	movq	264(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rdx), %rax
	cmpq	%rcx, %rax
	setb	%sil
	movb	-115(%rsp), %al                 # 1-byte Reload
	orb	%al, %sil
	movq	272(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rdx), %rcx
	cmpq	%rdi, %rcx
	setb	%r11b
	orb	%al, %r11b
	movq	280(%rsp), %rdi                 # 8-byte Reload
	leaq	(%rdi,%rdx), %rcx
	cmpq	%rdi, %rcx
	setb	%cl
	orb	%al, %cl
	movq	(%rsp), %rdi                    # 8-byte Reload
	addq	%rdi, %rdx
	cmpq	%rdi, %rdx
	setb	%dl
	orb	%al, %dl
	orb	%cl, %dl
	orb	%sil, %r11b
	orb	%dl, %r11b
	movq	%rbp, %rdx
	movq	232(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15,4), %rbp
	movq	592(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15,4), %rsi
	movq	584(%rsp), %rax                 # 8-byte Reload
	leaq	(%rax,%r15,4), %r14
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	xorl	%r12d, %r12d
	movb	%r11b, -64(%rsp)                # 1-byte Spill
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_38:                               #   in Loop: Header=BB1_39 Depth=4
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	$1, %rdx
	addq	$1, %r12
	movq	80(%rsp), %rax                  # 8-byte Reload
	addq	%rax, %rbp
	addq	%rax, %rsi
	addq	%r10, %r15
	addq	%rax, %r14
	cmpq	%r9, %rdx
	je	.LBB1_7
.LBB1_39:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_44 Depth 5
                                        #           Child Loop BB1_46 Depth 5
                                        #           Child Loop BB1_54 Depth 5
                                        #           Child Loop BB1_59 Depth 5
	movq	%r12, %rax
	imulq	%r10, %rax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	addq	%rdx, %rcx
	movq	400(%rsp), %rdx                 # 8-byte Reload
	movss	(%rdx,%rcx,4), %xmm9            # xmm9 = mem[0],zero,zero,zero
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, %rdi
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rdx, %rcx
	jae	.LBB1_47
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=4
	cmpq	$12, 376(%rsp)                  # 8-byte Folded Reload
	setb	%cl
	orb	%r11b, %cl
	movq	-112(%rsp), %rdi                # 8-byte Reload
	jne	.LBB1_46
# %bb.41:                               #   in Loop: Header=BB1_39 Depth=4
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	cmpq	%rcx, (%rsp)                    # 8-byte Folded Reload
	jae	.LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_39 Depth=4
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	%rax, %rcx
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	leaq	(%rdx,%rcx,4), %rcx
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	-112(%rsp), %rdi                # 8-byte Reload
	cmpq	368(%rsp), %rcx                 # 8-byte Folded Reload
	jb	.LBB1_46
.LBB1_43:                               #   in Loop: Header=BB1_39 Depth=4
	movaps	%xmm9, %xmm8
	shufps	$0, %xmm9, %xmm8                # xmm8 = xmm8[0,0],xmm9[0,0]
	movq	320(%rsp), %rdi                 # 8-byte Reload
	xorl	%r8d, %r8d
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	.p2align	4, 0x90
.LBB1_44:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	(%rbp,%r8), %xmm6
	movups	16(%rbp,%r8), %xmm2
	movups	32(%rbp,%r8), %xmm7
	movups	48(%rbp,%r8), %xmm0
	movaps	%xmm0, %xmm4
	movlhps	%xmm7, %xmm4                    # xmm4 = xmm4[0],xmm7[0]
	movaps	%xmm6, %xmm3
	unpcklps	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0],xmm3[1],xmm2[1]
	shufps	$36, %xmm4, %xmm3               # xmm3 = xmm3[0,1],xmm4[2,0]
	movaps	%xmm7, %xmm5
	unpcklps	%xmm0, %xmm5                    # xmm5 = xmm5[0],xmm0[0],xmm5[1],xmm0[1]
	movaps	%xmm2, %xmm13
	shufps	$17, %xmm6, %xmm13              # xmm13 = xmm13[1,0],xmm6[1,0]
	shufps	$226, %xmm5, %xmm13             # xmm13 = xmm13[2,0],xmm5[2,3]
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm7, %xmm1                    # xmm1 = xmm1[1],xmm7[1]
	movaps	%xmm6, %xmm5
	unpckhps	%xmm2, %xmm5                    # xmm5 = xmm5[2],xmm2[2],xmm5[3],xmm2[3]
	shufps	$36, %xmm1, %xmm5               # xmm5 = xmm5[0,1],xmm1[2,0]
	unpckhps	%xmm0, %xmm7                    # xmm7 = xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	shufps	$51, %xmm6, %xmm2               # xmm2 = xmm2[3,0],xmm6[3,0]
	shufps	$226, %xmm7, %xmm2              # xmm2 = xmm2[2,0],xmm7[2,3]
	movups	(%rcx,%r8), %xmm10
	movups	16(%rcx,%r8), %xmm6
	movups	32(%rcx,%r8), %xmm1
	movups	48(%rcx,%r8), %xmm11
	movaps	%xmm11, %xmm7
	movlhps	%xmm1, %xmm7                    # xmm7 = xmm7[0],xmm1[0]
	movaps	%xmm10, %xmm12
	unpcklps	%xmm6, %xmm12                   # xmm12 = xmm12[0],xmm6[0],xmm12[1],xmm6[1]
	shufps	$36, %xmm7, %xmm12              # xmm12 = xmm12[0,1],xmm7[2,0]
	movaps	%xmm1, %xmm7
	unpcklps	%xmm11, %xmm7                   # xmm7 = xmm7[0],xmm11[0],xmm7[1],xmm11[1]
	movaps	%xmm6, %xmm0
	shufps	$17, %xmm10, %xmm0              # xmm0 = xmm0[1,0],xmm10[1,0]
	shufps	$226, %xmm7, %xmm0              # xmm0 = xmm0[2,0],xmm7[2,3]
	movaps	%xmm11, %xmm7
	unpckhpd	%xmm1, %xmm7                    # xmm7 = xmm7[1],xmm1[1]
	movaps	%xmm10, %xmm4
	unpckhps	%xmm6, %xmm4                    # xmm4 = xmm4[2],xmm6[2],xmm4[3],xmm6[3]
	shufps	$36, %xmm7, %xmm4               # xmm4 = xmm4[0,1],xmm7[2,0]
	unpckhps	%xmm11, %xmm1                   # xmm1 = xmm1[2],xmm11[2],xmm1[3],xmm11[3]
	shufps	$51, %xmm10, %xmm6              # xmm6 = xmm6[3,0],xmm10[3,0]
	shufps	$226, %xmm1, %xmm6              # xmm6 = xmm6[2,0],xmm1[2,3]
	mulps	%xmm8, %xmm3
	addps	%xmm12, %xmm3
	mulps	%xmm8, %xmm13
	addps	%xmm0, %xmm13
	mulps	%xmm8, %xmm5
	addps	%xmm4, %xmm5
	mulps	%xmm8, %xmm2
	addps	%xmm6, %xmm2
	movaps	%xmm5, %xmm0
	unpcklps	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movaps	%xmm13, %xmm1
	shufps	$17, %xmm3, %xmm1               # xmm1 = xmm1[1,0],xmm3[1,0]
	shufps	$226, %xmm0, %xmm1              # xmm1 = xmm1[2,0],xmm0[2,3]
	movaps	%xmm2, %xmm0
	movlhps	%xmm5, %xmm0                    # xmm0 = xmm0[0],xmm5[0]
	movaps	%xmm3, %xmm4
	unpcklps	%xmm13, %xmm4                   # xmm4 = xmm4[0],xmm13[0],xmm4[1],xmm13[1]
	shufps	$36, %xmm0, %xmm4               # xmm4 = xmm4[0,1],xmm0[2,0]
	movaps	%xmm5, %xmm0
	unpckhps	%xmm2, %xmm0                    # xmm0 = xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	movaps	%xmm13, %xmm6
	shufps	$51, %xmm3, %xmm6               # xmm6 = xmm6[3,0],xmm3[3,0]
	shufps	$226, %xmm0, %xmm6              # xmm6 = xmm6[2,0],xmm0[2,3]
	unpckhpd	%xmm5, %xmm2                    # xmm2 = xmm2[1],xmm5[1]
	unpckhps	%xmm13, %xmm3                   # xmm3 = xmm3[2],xmm13[2],xmm3[3],xmm13[3]
	shufps	$36, %xmm2, %xmm3               # xmm3 = xmm3[0,1],xmm2[2,0]
	movups	%xmm3, 32(%rcx,%r8)
	movups	%xmm6, 48(%rcx,%r8)
	movups	%xmm4, (%rcx,%r8)
	movups	%xmm1, 16(%rcx,%r8)
	addq	$64, %r8
	addq	$-4, %rdi
	jne	.LBB1_44
# %bb.45:                               #   in Loop: Header=BB1_39 Depth=4
	movq	680(%rsp), %rdi                 # 8-byte Reload
	movq	304(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, 312(%rsp)                 # 8-byte Folded Reload
	je	.LBB1_47
	.p2align	4, 0x90
.LBB1_46:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	-12(%rsi,%rdi,4), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	(%r13,%rdi,4), %xmm0
	movss	%xmm0, (%r13,%rdi,4)
	movss	-8(%rsi,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	4(%r13,%rdi,4), %xmm0
	movss	%xmm0, 4(%r13,%rdi,4)
	movss	-4(%rsi,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	8(%r13,%rdi,4), %xmm0
	movss	%xmm0, 8(%r13,%rdi,4)
	movss	(%rsi,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	12(%r13,%rdi,4), %xmm0
	movss	%xmm0, 12(%r13,%rdi,4)
	addq	$4, %rdi
	cmpq	%rdx, %rdi
	jb	.LBB1_46
.LBB1_47:                               #   in Loop: Header=BB1_39 Depth=4
	cmpq	72(%rsp), %rdi                  # 8-byte Folded Reload
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	jae	.LBB1_38
# %bb.48:                               #   in Loop: Header=BB1_39 Depth=4
	movq	%rbx, %r8
	subq	%rdi, %r8
	cmpq	$8, %r8
	jae	.LBB1_50
# %bb.49:                               #   in Loop: Header=BB1_39 Depth=4
	movq	%rdi, %rdx
	jmp	.LBB1_56
	.p2align	4, 0x90
.LBB1_50:                               #   in Loop: Header=BB1_39 Depth=4
	movq	%r10, %r9
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	addq	%rax, %rcx
	movq	-96(%rsp), %r11                 # 8-byte Reload
	leaq	(%r11,%rcx,4), %r10
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rdi), %rdx
	movq	-104(%rsp), %rcx                # 8-byte Reload
	leaq	(%rcx,%rdx,4), %rdx
	cmpq	%r10, %rdx
	jae	.LBB1_53
# %bb.51:                               #   in Loop: Header=BB1_39 Depth=4
	addq	32(%rsp), %rax                  # 8-byte Folded Reload
	addq	%rdi, %rax
	leaq	(%r11,%rax,4), %rax
	cmpq	360(%rsp), %rax                 # 8-byte Folded Reload
	jae	.LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_39 Depth=4
	movq	%rdi, %rdx
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	movq	%r9, %r10
	movq	48(%rsp), %r9                   # 8-byte Reload
	movb	-64(%rsp), %r11b                # 1-byte Reload
	jmp	.LBB1_56
.LBB1_53:                               #   in Loop: Header=BB1_39 Depth=4
	movq	%r8, %rax
	andq	$-8, %rax
	leaq	(%rdi,%rax), %rdx
	movaps	%xmm9, %xmm1
	shufps	$0, %xmm9, %xmm1                # xmm1 = xmm1[0,0],xmm9[0,0]
	leaq	(%rdi,%r15), %rcx
	movq	664(%rsp), %rbx                 # 8-byte Reload
	leaq	(%rbx,%rcx,4), %rcx
	movq	296(%rsp), %rbx                 # 8-byte Reload
	leaq	(%rbx,%rdi,4), %rdi
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB1_54:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	-16(%rcx,%r10,4), %xmm0
	movups	(%rcx,%r10,4), %xmm2
	movups	-16(%rdi,%r10,4), %xmm3
	movups	(%rdi,%r10,4), %xmm4
	mulps	%xmm1, %xmm0
	addps	%xmm3, %xmm0
	mulps	%xmm1, %xmm2
	addps	%xmm4, %xmm2
	movups	%xmm0, -16(%rdi,%r10,4)
	movups	%xmm2, (%rdi,%r10,4)
	addq	$8, %r10
	cmpq	%r10, %rax
	jne	.LBB1_54
# %bb.55:                               #   in Loop: Header=BB1_39 Depth=4
	cmpq	%rax, %r8
	movq	288(%rsp), %r10                 # 8-byte Reload
	movq	48(%rsp), %r9                   # 8-byte Reload
	movq	-40(%rsp), %rbx                 # 8-byte Reload
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	movb	-64(%rsp), %r11b                # 1-byte Reload
	je	.LBB1_38
	.p2align	4, 0x90
.LBB1_56:                               #   in Loop: Header=BB1_39 Depth=4
	movl	%ebx, %ecx
	subl	%edx, %ecx
	leaq	1(%rdx), %rax
	testb	$1, %cl
	je	.LBB1_58
# %bb.57:                               #   in Loop: Header=BB1_39 Depth=4
	movq	8(%rsp), %rcx                   # 8-byte Reload
	imulq	%r10, %rcx
	addq	%rdx, %rcx
	addq	-24(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-96(%rsp), %rdi                 # 8-byte Reload
	movss	(%rdi,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	movq	-104(%rsp), %rcx                # 8-byte Reload
	addss	(%rcx,%rdx,4), %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movq	%rax, %rdx
.LBB1_58:                               #   in Loop: Header=BB1_39 Depth=4
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rax, %rbx
	je	.LBB1_38
	.p2align	4, 0x90
.LBB1_59:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_8 Depth=3
                                        #         Parent Loop BB1_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	-4(%r14,%rdx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	(%r13,%rdx,4), %xmm0
	movss	%xmm0, (%r13,%rdx,4)
	movss	(%r14,%rdx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm0
	addss	4(%r13,%rdx,4), %xmm0
	movss	%xmm0, 4(%r13,%rdx,4)
	addq	$2, %rdx
	cmpq	%rdx, %rbx
	jne	.LBB1_59
	jmp	.LBB1_38
.LBB1_60:
	addq	$936, %rsp                      # imm = 0x3A8
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm, .Lfunc_end1-_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_test_matmul.cpp
	.type	_GLOBAL__sub_I_test_matmul.cpp,@function
_GLOBAL__sub_I_test_matmul.cpp:         # @_GLOBAL__sub_I_test_matmul.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end2:
	.size	_GLOBAL__sub_I_test_matmul.cpp, .Lfunc_end2-_GLOBAL__sub_I_test_matmul.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Result checksum: "
	.size	.L.str, 18

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test_matmul.cpp
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _GLOBAL__sub_I_test_matmul.cpp
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
