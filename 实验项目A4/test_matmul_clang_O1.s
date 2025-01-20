	.text
	.file	"test_matmul.cpp"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %r14
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %r15
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %rbp
	xorl	%ebx, %ebx
	movl	$4000000, %edx                  # imm = 0x3D0900
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset@PLT
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1065353216, (%r14,%rbx,4)      # imm = 0x3F800000
	movl	$1065353216, (%r15,%rbx,4)      # imm = 0x3F800000
	addq	$1, %rbx
	cmpq	$1000000, %rbx                  # imm = 0xF4240
	jne	.LBB0_1
# %bb.2:
	movq	%rsp, %rdi
	movl	$1000, %r8d                     # imm = 0x3E8
	movl	$1000, %r9d                     # imm = 0x3E8
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%rbp, %rcx
	callq	_ZN28matmul_JKI_blocked_unrolled3IfEclEPKfS2_Pfmm
	xorps	%xmm0, %xmm0
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	addss	(%rbp,%rax,4), %xmm0
	addq	$1, %rax
	cmpq	$1000000, %rax                  # imm = 0xF4240
	jne	.LBB0_3
# %bb.4:
	movq	_ZSt4cout@GOTPCREL(%rip), %r12
	leaq	.L.str(%rip), %rsi
	movl	$17, %edx
	movq	%r12, %rdi
	movss	%xmm0, 4(%rsp)                  # 4-byte Spill
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movss	4(%rsp), %xmm0                  # 4-byte Reload
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
	movq	%r15, %rdi
	callq	_ZdaPv@PLT
	movq	%rbp, %rdi
	callq	_ZdaPv@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, -16(%rsp)                  # 8-byte Spill
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	testq	%r9, %r9
	je	.LBB1_27
# %bb.1:
	movq	-96(%rsp), %rax                 # 8-byte Reload
	addq	$12, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	(,%r9,4), %rax
	leaq	(%r9,%r9,2), %r8
	movq	-104(%rsp), %r10                # 8-byte Reload
	leaq	(%r10,%r8,4), %r11
	addq	$12, %r11
	imulq	$200, %r9, %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	%r9, %rbp
	shlq	$4, %rbp
	movq	%rbp, 160(%rsp)                 # 8-byte Spill
	leaq	(%r10,%r9,8), %r14
	addq	$12, %r14
	leaq	12(%r10,%r9,4), %rbx
	leaq	12(%r10), %rdx
	leaq	(%r10,%r8,4), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	leaq	(%r10,%r9,8), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	imulq	$50, %r9, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	$50, %edi
	xorl	%ecx, %ecx
	movq	%r10, -80(%rsp)                 # 8-byte Spill
	movq	%r9, -120(%rsp)                 # 8-byte Spill
	movq	%r9, -112(%rsp)                 # 8-byte Spill
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	movq	88(%rsp), %rdi                  # 8-byte Reload
	addq	$50, %rdi
	movq	120(%rsp), %r11                 # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	%rcx, %r11
	movq	112(%rsp), %r14                 # 8-byte Reload
	addq	%rcx, %r14
	movq	104(%rsp), %rbx                 # 8-byte Reload
	addq	%rcx, %rbx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	addq	%rcx, %rdx
	addq	%rcx, -64(%rsp)                 # 8-byte Folded Spill
	addq	%rcx, -72(%rsp)                 # 8-byte Folded Spill
	movq	-120(%rsp), %rbp                # 8-byte Reload
	addq	56(%rsp), %rbp                  # 8-byte Folded Reload
	movq	%rbp, -120(%rsp)                # 8-byte Spill
	addq	%rcx, -80(%rsp)                 # 8-byte Folded Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
	cmpq	%r9, %rcx
	jae	.LBB1_27
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
                                        #       Child Loop BB1_7 Depth 3
                                        #         Child Loop BB1_9 Depth 4
                                        #           Child Loop BB1_11 Depth 5
                                        #           Child Loop BB1_15 Depth 5
                                        #         Child Loop BB1_19 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	cmpq	%rdi, %r9
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	%rdi, %r8
	cmovbq	%r9, %r8
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	addq	$50, %rcx
	cmpq	%r9, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	cmovaq	%r9, %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	leaq	-3(%rcx), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movl	$2, %ecx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	movq	%r14, 112(%rsp)                 # 8-byte Spill
	movq	%r14, -48(%rsp)                 # 8-byte Spill
	movq	%r11, 120(%rsp)                 # 8-byte Spill
	movq	%r11, -56(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	$50, %ecx
	xorl	%r11d, %r11d
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_5 Depth=2
	movq	136(%rsp), %rcx                 # 8-byte Reload
	addq	$50, %rcx
	addq	$200, -88(%rsp)                 # 8-byte Folded Spill
	addq	$200, -56(%rsp)                 # 8-byte Folded Spill
	addq	$200, -48(%rsp)                 # 8-byte Folded Spill
	addq	$200, -40(%rsp)                 # 8-byte Folded Spill
	addq	$200, -32(%rsp)                 # 8-byte Folded Spill
	addq	$50, -24(%rsp)                  # 8-byte Folded Spill
	movq	-112(%rsp), %r9                 # 8-byte Reload
	movq	128(%rsp), %r11                 # 8-byte Reload
	cmpq	%r9, %r11
	jae	.LBB1_2
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
                                        #         Child Loop BB1_9 Depth 4
                                        #           Child Loop BB1_11 Depth 5
                                        #           Child Loop BB1_15 Depth 5
                                        #         Child Loop BB1_19 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	cmpq	%rcx, %r9
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rcx, %r10
	cmovbq	%r9, %r10
	leaq	50(%r11), %rcx
	cmpq	%r9, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rcx, %r14
	cmovaq	%r9, %r14
	cmpq	$0, -16(%rsp)                   # 8-byte Folded Reload
	je	.LBB1_4
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	leaq	-3(%r14), %r9
	movq	-96(%rsp), %r15                 # 8-byte Reload
	movq	-88(%rsp), %r13                 # 8-byte Reload
	xorl	%ecx, %ecx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	movq	%r10, 8(%rsp)                   # 8-byte Spill
	movq	%r14, 192(%rsp)                 # 8-byte Spill
	movq	%r9, 184(%rsp)                  # 8-byte Spill
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_7 Depth=3
	movq	-128(%rsp), %rdx                # 8-byte Reload
	addq	$1, %rdx
	addq	%rax, %r13
	addq	%rax, %r15
	movq	%rdx, %rcx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	cmpq	-16(%rsp), %rdx                 # 8-byte Folded Reload
	je	.LBB1_4
.LBB1_7:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_9 Depth 4
                                        #           Child Loop BB1_11 Depth 5
                                        #           Child Loop BB1_15 Depth 5
                                        #         Child Loop BB1_19 Depth 4
                                        #           Child Loop BB1_21 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %r12
	cmpq	(%rsp), %rcx                    # 8-byte Folded Reload
	jae	.LBB1_17
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=3
	movq	-128(%rsp), %rcx                # 8-byte Reload
	imulq	-112(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	-72(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	-32(%rsp), %r8                  # 8-byte Reload
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	movq	-48(%rsp), %rdi                 # 8-byte Reload
	movq	-56(%rsp), %rbx                 # 8-byte Reload
	movq	-8(%rsp), %r12                  # 8-byte Reload
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_9 Depth=4
	movq	208(%rsp), %r12                 # 8-byte Reload
	addq	$4, %r12
	movq	160(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, %rbx
	addq	%rcx, %rdi
	addq	%rcx, %rbp
	addq	%rcx, %r8
	addq	%rcx, 16(%rsp)                  # 8-byte Folded Spill
	addq	%rcx, 24(%rsp)                  # 8-byte Folded Spill
	movq	168(%rsp), %rax                 # 8-byte Reload
	addq	%rax, 32(%rsp)                  # 8-byte Folded Spill
	addq	%rcx, 40(%rsp)                  # 8-byte Folded Spill
	cmpq	(%rsp), %r12                    # 8-byte Folded Reload
	movq	176(%rsp), %rsi                 # 8-byte Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	movq	192(%rsp), %r14                 # 8-byte Reload
	movq	184(%rsp), %r9                  # 8-byte Reload
	movq	48(%rsp), %r15                  # 8-byte Reload
	jae	.LBB1_17
.LBB1_9:                                #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_11 Depth 5
                                        #           Child Loop BB1_15 Depth 5
	movq	200(%rsp), %rax                 # 8-byte Reload
	addq	%r12, %rax
	movss	(%rsi,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	4(%rsi,%rax,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsi,%rax,4), %xmm2           # xmm2 = mem[0],zero,zero,zero
	movss	12(%rsi,%rax,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	movq	%r11, %rax
	cmpq	%r9, %r11
	jae	.LBB1_13
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=4
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB1_11:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        #         Parent Loop BB1_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	-12(%rbp,%rax,4), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	movss	-12(%r8,%rax,4), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	movss	-12(%rdi,%rax,4), %xmm4         # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm5, %xmm4
	movss	-12(%rbx,%rax,4), %xmm5         # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	-12(%r13,%rax,4), %xmm5
	movss	%xmm5, -12(%r13,%rax,4)
	movss	-8(%rbp,%rax,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	movss	-8(%r8,%rax,4), %xmm5           # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	movss	-8(%rdi,%rax,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm5, %xmm4
	movss	-8(%rbx,%rax,4), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	-8(%r13,%rax,4), %xmm5
	movss	%xmm5, -8(%r13,%rax,4)
	movss	-4(%rbp,%rax,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	movss	-4(%r8,%rax,4), %xmm5           # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	movss	-4(%rdi,%rax,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm5, %xmm4
	movss	-4(%rbx,%rax,4), %xmm5          # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	-4(%r13,%rax,4), %xmm5
	movss	%xmm5, -4(%r13,%rax,4)
	movss	(%rbp,%rax,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	movss	(%r8,%rax,4), %xmm5             # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	movss	(%rdi,%rax,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm5, %xmm4
	movss	(%rbx,%rax,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	(%r13,%rax,4), %xmm5
	movss	%xmm5, (%r13,%rax,4)
	leaq	(%r11,%rax), %rcx
	addq	$4, %rcx
	addq	$4, %rax
	cmpq	%r9, %rcx
	jb	.LBB1_11
# %bb.12:                               #   in Loop: Header=BB1_9 Depth=4
	addq	%r11, %rax
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=4
	movq	%r12, 208(%rsp)                 # 8-byte Spill
	cmpq	%r14, %rax
	jae	.LBB1_16
# %bb.14:                               #   in Loop: Header=BB1_9 Depth=4
	movq	8(%rsp), %r9                    # 8-byte Reload
	subq	%rax, %r9
	movq	48(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,4), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,4), %r14
	movq	24(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,4), %r12
	movq	32(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rax,%rcx), %rsi
	movq	-104(%rsp), %rcx                # 8-byte Reload
	leaq	(%rcx,%rsi,4), %r10
	movq	40(%rsp), %rcx                  # 8-byte Reload
	leaq	(%rcx,%rax,4), %rax
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_15:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        #         Parent Loop BB1_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	(%r10,%r15,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm4
	movss	(%rax,%r15,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm5
	addss	%xmm4, %xmm5
	movss	(%r12,%r15,4), %xmm4            # xmm4 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm4
	addss	%xmm5, %xmm4
	movss	(%r14,%r15,4), %xmm5            # xmm5 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	(%rdx,%r15,4), %xmm5
	movss	%xmm5, (%rdx,%r15,4)
	addq	$1, %r15
	cmpq	%r15, %r9
	jne	.LBB1_15
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_7 Depth=3
	cmpq	144(%rsp), %r12                 # 8-byte Folded Reload
	movq	152(%rsp), %r8                  # 8-byte Reload
	jae	.LBB1_26
# %bb.18:                               #   in Loop: Header=BB1_7 Depth=3
	movq	-128(%rsp), %rbx                # 8-byte Reload
	movq	-112(%rsp), %rcx                # 8-byte Reload
	imulq	%rcx, %rbx
	imulq	%r12, %rcx
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	addq	%rcx, %rdx
	movq	-104(%rsp), %rdi                # 8-byte Reload
	leaq	(%rdi,%rdx,4), %rdx
	leaq	(%rdi,%rcx,4), %rdi
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=4
	addq	$1, %r12
	addq	%rax, %rdx
	addq	%rax, %rdi
	cmpq	%r8, %r12
	je	.LBB1_26
.LBB1_19:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB1_21 Depth 5
                                        #           Child Loop BB1_24 Depth 5
	leaq	(%r12,%rbx), %rcx
	movss	(%rsi,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	%r11, %rbp
	cmpq	%r9, %r11
	jae	.LBB1_23
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=4
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB1_21:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        #         Parent Loop BB1_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	-8(%rdx,%rbp,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	-12(%r13,%rbp,4), %xmm1
	movss	%xmm1, -12(%r13,%rbp,4)
	movss	-4(%rdx,%rbp,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	-8(%r13,%rbp,4), %xmm1
	movss	%xmm1, -8(%r13,%rbp,4)
	movss	(%rdx,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	-4(%r13,%rbp,4), %xmm1
	movss	%xmm1, -4(%r13,%rbp,4)
	movss	4(%rdx,%rbp,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%r13,%rbp,4), %xmm1
	movss	%xmm1, (%r13,%rbp,4)
	leaq	(%r11,%rbp), %rcx
	addq	$4, %rcx
	addq	$4, %rbp
	cmpq	%r9, %rcx
	jb	.LBB1_21
# %bb.22:                               #   in Loop: Header=BB1_19 Depth=4
	addq	%r11, %rbp
.LBB1_23:                               #   in Loop: Header=BB1_19 Depth=4
	cmpq	%r14, %rbp
	jae	.LBB1_25
	.p2align	4, 0x90
.LBB1_24:                               #   Parent Loop BB1_3 Depth=1
                                        #     Parent Loop BB1_5 Depth=2
                                        #       Parent Loop BB1_7 Depth=3
                                        #         Parent Loop BB1_19 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movss	(%rdi,%rbp,4), %xmm1            # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	(%r15,%rbp,4), %xmm1
	movss	%xmm1, (%r15,%rbp,4)
	addq	$1, %rbp
	cmpq	%rbp, %r10
	jne	.LBB1_24
	jmp	.LBB1_25
.LBB1_27:
	addq	$216, %rsp
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
	callq	__cxa_atexit@PLT
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
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
