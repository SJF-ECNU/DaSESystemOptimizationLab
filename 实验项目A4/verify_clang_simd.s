	.text
	.file	"verify_simd.cpp"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	_ZSt4cout@GOTPCREL(%rip), %rbx
	leaq	.L.str(%rip), %rsi
	movl	$17, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	_Z9test_typeIiEvv
	leaq	.L.str.1(%rip), %rsi
	movl	$15, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	_Z9test_typeIfEvv
	leaq	.L.str.2(%rip), %rsi
	movl	$16, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	callq	_Z9test_typeIdEvv
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z9test_typeIiEvv
.LCPI1_0:
	.long	1                               # 0x1
.LCPI1_1:
	.long	2                               # 0x2
	.section	.text._Z9test_typeIiEvv,"axG",@progbits,_Z9test_typeIiEvv,comdat
	.weak	_Z9test_typeIiEvv
	.p2align	4, 0x90
	.type	_Z9test_typeIiEvv,@function
_Z9test_typeIiEvv:                      # @_Z9test_typeIiEvv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$40000000, %edi                 # imm = 0x2625A00
	callq	_Znwm@PLT
	vbroadcastss	.LCPI1_0(%rip), %ymm0   # ymm0 = [1,1,1,1,1,1,1,1]
	movq	%rax, %r14
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, 40000000(%r14,%rax)
	vmovups	%ymm0, 40000032(%r14,%rax)
	vmovups	%ymm0, 40000064(%r14,%rax)
	vmovups	%ymm0, 40000096(%r14,%rax)
	subq	$-128, %rax
	jne	.LBB1_1
# %bb.2:
.Ltmp0:
	movl	$40000000, %edi                 # imm = 0x2625A00
	vzeroupper
	callq	_Znwm@PLT
.Ltmp1:
# %bb.3:
	vbroadcastss	.LCPI1_1(%rip), %ymm0   # ymm0 = [2,2,2,2,2,2,2,2]
	movq	%rax, %r15
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, 40000000(%r15,%rax)
	vmovups	%ymm0, 40000032(%r15,%rax)
	vmovups	%ymm0, 40000064(%r15,%rax)
	vmovups	%ymm0, 40000096(%r15,%rax)
	subq	$-128, %rax
	jne	.LBB1_4
# %bb.5:
.Ltmp3:
	movl	$40000000, %edi                 # imm = 0x2625A00
	vzeroupper
	callq	_Znwm@PLT
.Ltmp4:
# %bb.6:
	movl	$40000000, %edx                 # imm = 0x2625A00
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	callq	memset@PLT
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	.p2align	4, 0x90
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	40000000(%r14,%rax), %ecx
	movl	40000000(%r15,%rax), %edx
	xorl	%esi, %esi
	imull	%ecx, %edx
	addl	%ecx, %edx
	movl	%edx, 40000000(%rbx,%rax)
	setg	%sil
	addl	%esi, dummy(%rip)
	addq	$4, %rax
	jne	.LBB1_8
# %bb.9:                                #   in Loop: Header=BB1_7 Depth=1
	addl	$1, %ebp
	cmpl	$100, %ebp
	jne	.LBB1_7
# %bb.10:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx      # imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %r12
.Ltmp6:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp7:
# %bb.11:
.Ltmp8:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$4, %esi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp9:
# %bb.12:
.Ltmp10:
	leaq	.L.str.4(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp11:
# %bb.13:
.Ltmp12:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$12, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp13:
# %bb.14:
	movq	%r12, %rax
	sarq	$18, %r12
	shrq	$63, %rax
	addq	%rax, %r12
.Ltmp14:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r12, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.Ltmp15:
# %bb.15:
.Ltmp16:
	leaq	.L.str.6(%rip), %rsi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp17:
# %bb.16:
.Ltmp18:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$13, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp19:
# %bb.17:
	movl	dummy(%rip), %esi
.Ltmp20:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
.Ltmp21:
# %bb.18:
.Ltmp22:
	leaq	.L.str.8(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp23:
# %bb.19:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT                      # TAILCALL
.LBB1_21:
	.cfi_def_cfa_offset 48
.Ltmp5:
	movq	%rax, %r12
	jmp	.LBB1_23
.LBB1_20:
.Ltmp2:
	movq	%rax, %r12
	jmp	.LBB1_24
.LBB1_22:
.Ltmp24:
	movq	%rbx, %rdi
	movq	%rax, %r12
	callq	_ZdlPv@PLT
.LBB1_23:
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB1_24:
	movq	%r14, %rdi
	callq	_ZdlPv@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	_Z9test_typeIiEvv, .Lfunc_end1-_Z9test_typeIiEvv
	.cfi_endproc
	.section	.gcc_except_table._Z9test_typeIiEvv,"aG",@progbits,_Z9test_typeIiEvv,comdat
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp23-.Ltmp6                 #   Call between .Ltmp6 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Lfunc_end1-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function _Z9test_typeIfEvv
.LCPI2_0:
	.long	0x3fc00000                      # float 1.5
.LCPI2_1:
	.long	0x40000000                      # float 2
	.section	.text._Z9test_typeIfEvv,"axG",@progbits,_Z9test_typeIfEvv,comdat
	.weak	_Z9test_typeIfEvv
	.p2align	4, 0x90
	.type	_Z9test_typeIfEvv,@function
_Z9test_typeIfEvv:                      # @_Z9test_typeIfEvv
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$40000000, %edi                 # imm = 0x2625A00
	callq	_Znwm@PLT
	vbroadcastss	.LCPI2_0(%rip), %ymm0   # ymm0 = [1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0,1.5E+0]
	movq	%rax, %r14
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, 40000000(%r14,%rax)
	vmovups	%ymm0, 40000032(%r14,%rax)
	vmovups	%ymm0, 40000064(%r14,%rax)
	vmovups	%ymm0, 40000096(%r14,%rax)
	subq	$-128, %rax
	jne	.LBB2_1
# %bb.2:
.Ltmp25:
	movl	$40000000, %edi                 # imm = 0x2625A00
	vzeroupper
	callq	_Znwm@PLT
.Ltmp26:
# %bb.3:
	vbroadcastss	.LCPI2_1(%rip), %ymm0   # ymm0 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	movq	%rax, %r15
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, 40000000(%r15,%rax)
	vmovups	%ymm0, 40000032(%r15,%rax)
	vmovups	%ymm0, 40000064(%r15,%rax)
	vmovups	%ymm0, 40000096(%r15,%rax)
	subq	$-128, %rax
	jne	.LBB2_4
# %bb.5:
.Ltmp28:
	movl	$40000000, %edi                 # imm = 0x2625A00
	vzeroupper
	callq	_Znwm@PLT
.Ltmp29:
# %bb.6:
	movl	$40000000, %edx                 # imm = 0x2625A00
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	callq	memset@PLT
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB2_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_8 Depth 2
	movq	$-40000000, %rax                # imm = 0xFD9DA600
	.p2align	4, 0x90
.LBB2_8:                                #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovss	40000000(%r14,%rax), %xmm1      # xmm1 = mem[0],zero,zero,zero
	xorl	%ecx, %ecx
	vfmadd231ss	40000000(%r15,%rax), %xmm1, %xmm1 # xmm1 = (xmm1 * mem) + xmm1
	vucomiss	%xmm0, %xmm1
	vmovss	%xmm1, 40000000(%rbx,%rax)
	seta	%cl
	addl	%ecx, dummy(%rip)
	addq	$4, %rax
	jne	.LBB2_8
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	addl	$1, %ebp
	cmpl	$100, %ebp
	jne	.LBB2_7
# %bb.10:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx      # imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %r12
.Ltmp31:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp32:
# %bb.11:
.Ltmp33:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$4, %esi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp34:
# %bb.12:
.Ltmp35:
	leaq	.L.str.4(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp36:
# %bb.13:
.Ltmp37:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$12, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp38:
# %bb.14:
	movq	%r12, %rax
	sarq	$18, %r12
	shrq	$63, %rax
	addq	%rax, %r12
.Ltmp39:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r12, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.Ltmp40:
# %bb.15:
.Ltmp41:
	leaq	.L.str.6(%rip), %rsi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp42:
# %bb.16:
.Ltmp43:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$13, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp44:
# %bb.17:
	movl	dummy(%rip), %esi
.Ltmp45:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
.Ltmp46:
# %bb.18:
.Ltmp47:
	leaq	.L.str.8(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp48:
# %bb.19:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT                      # TAILCALL
.LBB2_21:
	.cfi_def_cfa_offset 48
.Ltmp30:
	movq	%rax, %r12
	jmp	.LBB2_23
.LBB2_20:
.Ltmp27:
	movq	%rax, %r12
	jmp	.LBB2_24
.LBB2_22:
.Ltmp49:
	movq	%rbx, %rdi
	movq	%rax, %r12
	callq	_ZdlPv@PLT
.LBB2_23:
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB2_24:
	movq	%r14, %rdi
	callq	_ZdlPv@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_Z9test_typeIfEvv, .Lfunc_end2-_Z9test_typeIfEvv
	.cfi_endproc
	.section	.gcc_except_table._Z9test_typeIfEvv,"aG",@progbits,_Z9test_typeIfEvv,comdat
	.p2align	2
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp25-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin1          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin1          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp48-.Ltmp31                #   Call between .Ltmp31 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Lfunc_end2-.Ltmp48            #   Call between .Ltmp48 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _Z9test_typeIdEvv
.LCPI3_0:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI3_1:
	.quad	0x4000000000000000              # double 2
	.section	.text._Z9test_typeIdEvv,"axG",@progbits,_Z9test_typeIdEvv,comdat
	.weak	_Z9test_typeIdEvv
	.p2align	4, 0x90
	.type	_Z9test_typeIdEvv,@function
_Z9test_typeIdEvv:                      # @_Z9test_typeIdEvv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$80000000, %edi                 # imm = 0x4C4B400
	callq	_Znwm@PLT
	vbroadcastsd	.LCPI3_0(%rip), %ymm0   # ymm0 = [1.5E+0,1.5E+0,1.5E+0,1.5E+0]
	movq	%rax, %r14
	movq	$-80000000, %rax                # imm = 0xFB3B4C00
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	vmovupd	%ymm0, 80000000(%r14,%rax)
	vmovupd	%ymm0, 80000032(%r14,%rax)
	vmovupd	%ymm0, 80000064(%r14,%rax)
	vmovupd	%ymm0, 80000096(%r14,%rax)
	subq	$-128, %rax
	jne	.LBB3_1
# %bb.2:
.Ltmp50:
	movl	$80000000, %edi                 # imm = 0x4C4B400
	vzeroupper
	callq	_Znwm@PLT
.Ltmp51:
# %bb.3:
	vbroadcastsd	.LCPI3_1(%rip), %ymm0   # ymm0 = [2.0E+0,2.0E+0,2.0E+0,2.0E+0]
	movq	%rax, %r15
	movq	$-80000000, %rax                # imm = 0xFB3B4C00
	.p2align	4, 0x90
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	vmovupd	%ymm0, 80000000(%r15,%rax)
	vmovupd	%ymm0, 80000032(%r15,%rax)
	vmovupd	%ymm0, 80000064(%r15,%rax)
	vmovupd	%ymm0, 80000096(%r15,%rax)
	subq	$-128, %rax
	jne	.LBB3_4
# %bb.5:
.Ltmp53:
	movl	$80000000, %edi                 # imm = 0x4C4B400
	vzeroupper
	callq	_Znwm@PLT
.Ltmp54:
# %bb.6:
	movl	$80000000, %edx                 # imm = 0x4C4B400
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rax, %rbx
	xorl	%ebp, %ebp
	callq	memset@PLT
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, %r12
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
	movq	$-80000000, %rax                # imm = 0xFB3B4C00
	.p2align	4, 0x90
.LBB3_8:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vmovsd	80000000(%r14,%rax), %xmm1      # xmm1 = mem[0],zero
	xorl	%ecx, %ecx
	vfmadd231sd	80000000(%r15,%rax), %xmm1, %xmm1 # xmm1 = (xmm1 * mem) + xmm1
	vucomisd	%xmm0, %xmm1
	vmovsd	%xmm1, 80000000(%rbx,%rax)
	seta	%cl
	addl	%ecx, dummy(%rip)
	addq	$8, %rax
	jne	.LBB3_8
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=1
	addl	$1, %ebp
	cmpl	$100, %ebp
	jne	.LBB3_7
# %bb.10:
	callq	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	subq	%r12, %rax
	movabsq	$4835703278458516699, %rcx      # imm = 0x431BDE82D7B634DB
	imulq	%rcx
	movq	%rdx, %r12
.Ltmp56:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.3(%rip), %rsi
	movl	$11, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp57:
# %bb.11:
.Ltmp58:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movl	$8, %esi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
.Ltmp59:
# %bb.12:
.Ltmp60:
	leaq	.L.str.4(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp61:
# %bb.13:
.Ltmp62:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.5(%rip), %rsi
	movl	$12, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp63:
# %bb.14:
	movq	%r12, %rax
	sarq	$18, %r12
	shrq	$63, %rax
	addq	%rax, %r12
.Ltmp64:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	movq	%r12, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_@PLT
.Ltmp65:
# %bb.15:
.Ltmp66:
	leaq	.L.str.6(%rip), %rsi
	movl	$4, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp67:
# %bb.16:
.Ltmp68:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str.7(%rip), %rsi
	movl	$13, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp69:
# %bb.17:
	movl	dummy(%rip), %esi
.Ltmp70:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSolsEi@PLT
.Ltmp71:
# %bb.18:
.Ltmp72:
	leaq	.L.str.8(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp73:
# %bb.19:
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
	movq	%r14, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT                      # TAILCALL
.LBB3_21:
	.cfi_def_cfa_offset 48
.Ltmp55:
	movq	%rax, %r12
	jmp	.LBB3_23
.LBB3_20:
.Ltmp52:
	movq	%rax, %r12
	jmp	.LBB3_24
.LBB3_22:
.Ltmp74:
	movq	%rbx, %rdi
	movq	%rax, %r12
	callq	_ZdlPv@PLT
.LBB3_23:
	movq	%r15, %rdi
	callq	_ZdlPv@PLT
.LBB3_24:
	movq	%r14, %rdi
	callq	_ZdlPv@PLT
	movq	%r12, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z9test_typeIdEvv, .Lfunc_end3-_Z9test_typeIdEvv
	.cfi_endproc
	.section	.gcc_except_table._Z9test_typeIdEvv,"aG",@progbits,_Z9test_typeIdEvv,comdat
	.p2align	2
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp50-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin2          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin2          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp56-.Ltmp54                #   Call between .Ltmp54 and .Ltmp56
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp73-.Ltmp56                #   Call between .Ltmp56 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin2          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Lfunc_end3-.Ltmp73            #   Call between .Ltmp73 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_verify_simd.cpp
	.type	_GLOBAL__sub_I_verify_simd.cpp,@function
_GLOBAL__sub_I_verify_simd.cpp:         # @_GLOBAL__sub_I_verify_simd.cpp
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
.Lfunc_end4:
	.size	_GLOBAL__sub_I_verify_simd.cpp, .Lfunc_end4-_GLOBAL__sub_I_verify_simd.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	dummy,@object                   # @dummy
	.bss
	.globl	dummy
	.p2align	2
dummy:
	.long	0                               # 0x0
	.size	dummy, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Testing int32_t:\n"
	.size	.L.str, 18

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Testing float:\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Testing double:\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Type size: "
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	" bytes\n"
	.size	.L.str.4, 8

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Time taken: "
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" ms\n"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Dummy value: "
	.size	.L.str.7, 14

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"\n\n"
	.size	.L.str.8, 3

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_verify_simd.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_verify_simd.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym dummy
	.addrsig_sym _ZSt4cout
