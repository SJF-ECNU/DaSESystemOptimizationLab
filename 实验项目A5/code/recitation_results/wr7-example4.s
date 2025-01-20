	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.file	0 "/Users/harry/work/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/\345\256\236\351\252\214\351\241\271\347\233\256A5/recitation3" "example4.c" md5 0xdee7868a491240082d8d416269f09af0
	.globl	_test                           ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
Lfunc_begin0:
	.loc	0 10 0                          ## example4.c:10:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: test:a <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
Ltmp0:
	##DEBUG_VALUE: test:x <- $rdi
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
Ltmp1:
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:y <- 0.000000e+00
	xorpd	%xmm1, %xmm1
Ltmp2:
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:x <- $rdi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 18 7 prologue_end             ## example4.c:18:7
	addpd	(%rdi,%rax,8), %xmm0
	addpd	16(%rdi,%rax,8), %xmm1
	addpd	32(%rdi,%rax,8), %xmm0
	addpd	48(%rdi,%rax,8), %xmm1
	addpd	64(%rdi,%rax,8), %xmm0
	addpd	80(%rdi,%rax,8), %xmm1
	addpd	96(%rdi,%rax,8), %xmm0
	addpd	112(%rdi,%rax,8), %xmm1
Ltmp3:
	.loc	0 17 26                         ## example4.c:17:26
	addq	$16, %rax
	cmpq	$65536, %rax                    ## imm = 0x10000
	jne	LBB0_1
Ltmp4:
## %bb.2:
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:x <- $rdi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 17 3 is_stmt 0                ## example4.c:17:3
	addpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
Ltmp5:
	.loc	0 20 3 epilogue_begin is_stmt 1 ## example4.c:20:3
	popq	%rbp
	retq
Ltmp6:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function main
LCPI1_0:
	.long	0                               ## 0x0
	.long	1                               ## 0x1
	.space	4
	.space	4
LCPI1_1:
	.quad	0x3ff0000000000000              ## double 1
	.quad	0x3ff0000000000000              ## double 1
LCPI1_2:
	.long	2                               ## 0x2
	.long	2                               ## 0x2
	.space	4
	.space	4
LCPI1_3:
	.long	4                               ## 0x4
	.long	4                               ## 0x4
	.space	4
	.space	4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin1:
	.loc	0 23 0                          ## example4.c:23:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$524320, %eax                   ## imm = 0x80020
	callq	____chkstk_darwin
Ltmp7:
	subq	%rax, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movdqa	LCPI1_0(%rip), %xmm0            ## xmm0 = <0,1,u,u>
	xorl	%eax, %eax
	##DEBUG_VALUE: i <- 0
	movapd	LCPI1_1(%rip), %xmm1            ## xmm1 = [1.0E+0,1.0E+0]
	movdqa	LCPI1_2(%rip), %xmm2            ## xmm2 = <2,2,u,u>
	movdqa	LCPI1_3(%rip), %xmm3            ## xmm3 = <4,4,u,u>
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp8:
	##DEBUG_VALUE: i <- 0
	.loc	0 26 17 prologue_end            ## example4.c:26:17
	cvtdq2pd	%xmm0, %xmm4
	.loc	0 26 22 is_stmt 0               ## example4.c:26:22
	addpd	%xmm1, %xmm4
	.loc	0 26 15                         ## example4.c:26:15
	movapd	%xmm1, %xmm5
	divpd	%xmm4, %xmm5
	.loc	0 26 17                         ## example4.c:26:17
	movdqa	%xmm0, %xmm4
	paddd	%xmm2, %xmm4
	cvtdq2pd	%xmm4, %xmm4
	.loc	0 26 10                         ## example4.c:26:10
	movapd	%xmm5, -524304(%rbp,%rax,8)
	.loc	0 26 22                         ## example4.c:26:22
	addpd	%xmm1, %xmm4
	.loc	0 26 15                         ## example4.c:26:15
	movapd	%xmm1, %xmm5
	divpd	%xmm4, %xmm5
	.loc	0 26 10                         ## example4.c:26:10
	movapd	%xmm5, -524288(%rbp,%rax,8)
Ltmp9:
	.loc	0 25 30 is_stmt 1               ## example4.c:25:30
	addq	$4, %rax
Ltmp10:
	.loc	0 26 17                         ## example4.c:26:17
	paddd	%xmm3, %xmm0
Ltmp11:
	.loc	0 25 30                         ## example4.c:25:30
	cmpq	$65536, %rax                    ## imm = 0x10000
	jne	LBB1_1
Ltmp12:
## %bb.2:
	##DEBUG_VALUE: i <- 0
	.loc	0 0 30 is_stmt 0                ## example4.c:0:30
	pxor	%xmm0, %xmm0
	movl	$14, %eax
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:x <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:a <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	xorpd	%xmm1, %xmm1
	.p2align	4, 0x90
LBB1_3:                                 ## =>This Inner Loop Header: Depth=1
Ltmp13:
	##DEBUG_VALUE: test:a <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:x <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:i <- 0
	.loc	0 18 7 is_stmt 1                ## example4.c:18:7
	addpd	-524416(%rbp,%rax,8), %xmm0
	addpd	-524400(%rbp,%rax,8), %xmm1
	addpd	-524384(%rbp,%rax,8), %xmm0
	addpd	-524368(%rbp,%rax,8), %xmm1
	addpd	-524352(%rbp,%rax,8), %xmm0
	addpd	-524336(%rbp,%rax,8), %xmm1
	addpd	-524320(%rbp,%rax,8), %xmm0
	addpd	-524304(%rbp,%rax,8), %xmm1
Ltmp14:
	.loc	0 17 26                         ## example4.c:17:26
	addq	$16, %rax
	cmpq	$65550, %rax                    ## imm = 0x1000E
	jne	LBB1_3
Ltmp15:
## %bb.4:
	##DEBUG_VALUE: test:a <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:x <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:i <- 0
	.loc	0 17 3 is_stmt 0                ## example4.c:17:3
	addpd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    ## xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
Ltmp16:
	##DEBUG_VALUE: main:sum <- $xmm0
	.loc	0 0 3                           ## example4.c:0:3
	movapd	%xmm0, -524320(%rbp)            ## 16-byte Spill
Ltmp17:
	.loc	0 29 3 is_stmt 1                ## example4.c:29:3
	leaq	L_.str(%rip), %rdi
Ltmp18:
	##DEBUG_VALUE: main:sum <- [DW_OP_constu 524320, DW_OP_minus] [$rbp+0]
	movb	$1, %al
	callq	_printf
Ltmp19:
	.loc	0 30 3                          ## example4.c:30:3
	leaq	L_.str.1(%rip), %rdi
	movaps	-524320(%rbp), %xmm0            ## 16-byte Reload
	movb	$1, %al
	callq	_printf
Ltmp20:
	.loc	0 0 3 is_stmt 0                 ## example4.c:0:3
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	LBB1_6
Ltmp21:
## %bb.5:
	##DEBUG_VALUE: main:sum <- [DW_OP_constu 524320, DW_OP_minus] [$rbp+0]
	.loc	0 31 1 is_stmt 1                ## example4.c:31:1
	xorl	%eax, %eax
	.loc	0 31 1 epilogue_begin is_stmt 0 ## example4.c:31:1
	addq	$524320, %rsp                   ## imm = 0x80020
	popq	%rbp
	retq
Ltmp22:
LBB1_6:
	##DEBUG_VALUE: main:sum <- [DW_OP_constu 524320, DW_OP_minus] [$rbp+0]
	##DEBUG_VALUE: test:a <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:x <- [DW_OP_constu 524304, DW_OP_minus, DW_OP_stack_value] $rbp
	##DEBUG_VALUE: test:y <- 0.000000e+00
	##DEBUG_VALUE: test:i <- 0
	.loc	0 0 1                           ## example4.c:0:1
	callq	___stack_chk_fail
Ltmp23:
Lfunc_end1:
	.cfi_endproc
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386" "_types.h" md5 0xeb9e401b3b97107c79f668bcc91916e5
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_size_t.h" md5 0xf7981334d28e0c246f35cd24042aa2a4
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "_printf.h" md5 0x1dbdc20fec1369d4ad4aa87b19eddb1b
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"The decimal floating point sum result is: %f\n"

L_.str.1:                               ## @.str.1
	.asciz	"The raw floating point sum result is: %a\n"

	.section	__DWARF,__debug_loclists,regular,debug
Lsection_debug_loc0:
.set Lset0, Ldebug_list_header_end0-Ldebug_list_header_start0 ## Length
	.long	Lset0
Ldebug_list_header_start0:
	.short	5                               ## Version
	.byte	8                               ## Address size
	.byte	0                               ## Segment selector size
	.long	1                               ## Offset entry count
Lloclists_table_base0:
.set Lset1, Ldebug_loc0-Lloclists_table_base0
	.long	Lset1
Ldebug_loc0:
	.byte	4                               ## DW_LLE_offset_pair
	.uleb128 Ltmp16-Lfunc_begin0            ##   starting offset
	.uleb128 Ltmp18-Lfunc_begin0            ##   ending offset
	.byte	1                               ## Loc expr size
	.byte	97                              ## DW_OP_reg17
	.byte	4                               ## DW_LLE_offset_pair
	.uleb128 Ltmp18-Lfunc_begin0            ##   starting offset
	.uleb128 Lfunc_end1-Lfunc_begin0        ##   ending offset
	.byte	4                               ## Loc expr size
	.byte	118                             ## DW_OP_breg6
	.byte	224                             ## -524320
	.byte	255                             ## 
	.byte	95                              ## 
	.byte	0                               ## DW_LLE_end_of_list
Ldebug_list_header_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ## Abbreviation Code
	.byte	17                              ## DW_TAG_compile_unit
	.byte	1                               ## DW_CHILDREN_yes
	.byte	37                              ## DW_AT_producer
	.byte	37                              ## DW_FORM_strx1
	.byte	19                              ## DW_AT_language
	.byte	5                               ## DW_FORM_data2
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.ascii	"\202|"                         ## DW_AT_LLVM_sysroot
	.byte	37                              ## DW_FORM_strx1
	.ascii	"\357\177"                      ## DW_AT_APPLE_sdk
	.byte	37                              ## DW_FORM_strx1
	.byte	114                             ## DW_AT_str_offsets_base
	.byte	23                              ## DW_FORM_sec_offset
	.byte	16                              ## DW_AT_stmt_list
	.byte	23                              ## DW_FORM_sec_offset
	.byte	27                              ## DW_AT_comp_dir
	.byte	37                              ## DW_FORM_strx1
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	17                              ## DW_AT_low_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	115                             ## DW_AT_addr_base
	.byte	23                              ## DW_FORM_sec_offset
	.ascii	"\214\001"                      ## DW_AT_loclists_base
	.byte	23                              ## DW_FORM_sec_offset
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	1                               ## DW_TAG_array_type
	.byte	1                               ## DW_CHILDREN_yes
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	4                               ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	5                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	36                              ## DW_TAG_base_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	11                              ## DW_AT_byte_size
	.byte	11                              ## DW_FORM_data1
	.byte	62                              ## DW_AT_encoding
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	49                              ## DW_AT_abstract_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	8                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	49                              ## DW_AT_abstract_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	9                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	49                              ## DW_AT_abstract_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	10                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	28                              ## DW_AT_const_value
	.byte	15                              ## DW_FORM_udata
	.byte	49                              ## DW_AT_abstract_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	11                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	32                              ## DW_AT_inline
	.byte	33                              ## DW_FORM_implicit_const
	.byte	1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	12                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	13                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	14                              ## Abbreviation Code
	.byte	55                              ## DW_TAG_restrict_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	15                              ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	16                              ## Abbreviation Code
	.byte	22                              ## DW_TAG_typedef
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	17                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	64                              ## DW_AT_frame_base
	.byte	24                              ## DW_FORM_exprloc
	.byte	122                             ## DW_AT_call_all_calls
	.byte	25                              ## DW_FORM_flag_present
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	18                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	19                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	34                              ## DW_FORM_loclistx
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	20                              ## Abbreviation Code
	.byte	11                              ## DW_TAG_lexical_block
	.byte	1                               ## DW_CHILDREN_yes
	.byte	17                              ## DW_AT_low_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	21                              ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	28                              ## DW_AT_const_value
	.byte	13                              ## DW_FORM_sdata
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	22                              ## Abbreviation Code
	.byte	29                              ## DW_TAG_inlined_subroutine
	.byte	1                               ## DW_CHILDREN_yes
	.byte	49                              ## DW_AT_abstract_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	17                              ## DW_AT_low_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	18                              ## DW_AT_high_pc
	.byte	6                               ## DW_FORM_data4
	.byte	88                              ## DW_AT_call_file
	.byte	11                              ## DW_FORM_data1
	.byte	89                              ## DW_AT_call_line
	.byte	11                              ## DW_FORM_data1
	.byte	87                              ## DW_AT_call_column
	.byte	11                              ## DW_FORM_data1
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	23                              ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	0                               ## DW_CHILDREN_no
	.byte	127                             ## DW_AT_call_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	125                             ## DW_AT_call_return_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	24                              ## Abbreviation Code
	.byte	72                              ## DW_TAG_call_site
	.byte	1                               ## DW_CHILDREN_yes
	.byte	127                             ## DW_AT_call_origin
	.byte	19                              ## DW_FORM_ref4
	.byte	125                             ## DW_AT_call_return_pc
	.byte	27                              ## DW_FORM_addrx
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	25                              ## Abbreviation Code
	.byte	73                              ## DW_TAG_call_site_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	2                               ## DW_AT_location
	.byte	24                              ## DW_FORM_exprloc
	.byte	126                             ## DW_AT_call_value
	.byte	24                              ## DW_FORM_exprloc
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	26                              ## Abbreviation Code
	.byte	46                              ## DW_TAG_subprogram
	.byte	1                               ## DW_CHILDREN_yes
	.byte	3                               ## DW_AT_name
	.byte	37                              ## DW_FORM_strx1
	.byte	58                              ## DW_AT_decl_file
	.byte	11                              ## DW_FORM_data1
	.byte	59                              ## DW_AT_decl_line
	.byte	11                              ## DW_FORM_data1
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	60                              ## DW_AT_declaration
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	27                              ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	28                              ## Abbreviation Code
	.byte	24                              ## DW_TAG_unspecified_parameters
	.byte	0                               ## DW_CHILDREN_no
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	29                              ## Abbreviation Code
	.byte	38                              ## DW_TAG_const_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	30                              ## Abbreviation Code
	.byte	33                              ## DW_TAG_subrange_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	55                              ## DW_AT_count
	.byte	6                               ## DW_FORM_data4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset2, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset2
Ldebug_info_start0:
	.short	5                               ## DWARF version number
	.byte	1                               ## DWARF Unit Type
	.byte	8                               ## Address Size (in bytes)
.set Lset3, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset3
	.byte	1                               ## Abbrev [1] 0xc:0x172 DW_TAG_compile_unit
	.byte	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.byte	1                               ## DW_AT_name
	.byte	2                               ## DW_AT_LLVM_sysroot
	.byte	3                               ## DW_AT_APPLE_sdk
.set Lset4, Lstr_offsets_base0-Lsection_str_off ## DW_AT_str_offsets_base
	.long	Lset4
.set Lset5, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset5
	.byte	4                               ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.byte	2                               ## DW_AT_low_pc
.set Lset6, Lfunc_end1-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset6
.set Lset7, Laddr_table_base0-Lsection_info0 ## DW_AT_addr_base
	.long	Lset7
.set Lset8, Lloclists_table_base0-Lsection_debug_loc0 ## DW_AT_loclists_base
	.long	Lset8
	.byte	2                               ## Abbrev [2] 0x29:0xa DW_TAG_variable
	.long	51                              ## DW_AT_type
	.byte	0                               ## DW_AT_decl_file
	.byte	29                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               ## Abbrev [3] 0x33:0xc DW_TAG_array_type
	.long	63                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x38:0x6 DW_TAG_subrange_type
	.long	67                              ## DW_AT_type
	.byte	46                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x3f:0x4 DW_TAG_base_type
	.byte	5                               ## DW_AT_name
	.byte	6                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	6                               ## Abbrev [6] 0x43:0x4 DW_TAG_base_type
	.byte	6                               ## DW_AT_name
	.byte	8                               ## DW_AT_byte_size
	.byte	7                               ## DW_AT_encoding
	.byte	2                               ## Abbrev [2] 0x47:0xa DW_TAG_variable
	.long	81                              ## DW_AT_type
	.byte	0                               ## DW_AT_decl_file
	.byte	30                              ## DW_AT_decl_line
	.byte	2                               ## DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               ## Abbrev [3] 0x51:0xc DW_TAG_array_type
	.long	63                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x56:0x6 DW_TAG_subrange_type
	.long	67                              ## DW_AT_type
	.byte	42                              ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	7                               ## Abbrev [7] 0x5d:0x27 DW_TAG_subprogram
	.byte	2                               ## DW_AT_low_pc
.set Lset9, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset9
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	132                             ## DW_AT_abstract_origin
	.byte	8                               ## Abbrev [8] 0x69:0x7 DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	140                             ## DW_AT_abstract_origin
	.byte	9                               ## Abbrev [9] 0x70:0x7 DW_TAG_variable
	.byte	1                               ## DW_AT_location
	.byte	85
	.long	164                             ## DW_AT_abstract_origin
	.byte	10                              ## Abbrev [10] 0x77:0x6 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.long	148                             ## DW_AT_abstract_origin
	.byte	10                              ## Abbrev [10] 0x7d:0x6 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.long	156                             ## DW_AT_abstract_origin
	.byte	0                               ## End Of Children Mark
	.byte	11                              ## Abbrev [11] 0x84:0x29 DW_TAG_subprogram
	.byte	7                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	173                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
                                        ## DW_AT_inline
	.byte	12                              ## Abbrev [12] 0x8c:0x8 DW_TAG_formal_parameter
	.byte	9                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	177                             ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x94:0x8 DW_TAG_variable
	.byte	10                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	11                              ## DW_AT_decl_line
	.long	187                             ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0x9c:0x8 DW_TAG_variable
	.byte	14                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	15                              ## DW_AT_decl_line
	.long	173                             ## DW_AT_type
	.byte	13                              ## Abbrev [13] 0xa4:0x8 DW_TAG_variable
	.byte	15                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	13                              ## DW_AT_decl_line
	.long	182                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0xad:0x4 DW_TAG_base_type
	.byte	8                               ## DW_AT_name
	.byte	4                               ## DW_AT_encoding
	.byte	8                               ## DW_AT_byte_size
	.byte	14                              ## Abbrev [14] 0xb1:0x5 DW_TAG_restrict_type
	.long	182                             ## DW_AT_type
	.byte	15                              ## Abbrev [15] 0xb6:0x5 DW_TAG_pointer_type
	.long	173                             ## DW_AT_type
	.byte	16                              ## Abbrev [16] 0xbb:0x8 DW_TAG_typedef
	.long	195                             ## DW_AT_type
	.byte	13                              ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	50                              ## DW_AT_decl_line
	.byte	16                              ## Abbrev [16] 0xc3:0x8 DW_TAG_typedef
	.long	203                             ## DW_AT_type
	.byte	12                              ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	111                             ## DW_AT_decl_line
	.byte	5                               ## Abbrev [5] 0xcb:0x4 DW_TAG_base_type
	.byte	11                              ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	8                               ## DW_AT_byte_size
	.byte	17                              ## Abbrev [17] 0xcf:0x7d DW_TAG_subprogram
	.byte	3                               ## DW_AT_low_pc
.set Lset10, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset10
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.byte	18                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	23                              ## DW_AT_decl_line
	.long	347                             ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	18                              ## Abbrev [18] 0xde:0xd DW_TAG_variable
	.byte	4                               ## DW_AT_location
	.byte	145
	.ascii	"\360\377_"
	.byte	9                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	24                              ## DW_AT_decl_line
	.long	366                             ## DW_AT_type
	.byte	19                              ## Abbrev [19] 0xeb:0x9 DW_TAG_variable
	.byte	0                               ## DW_AT_location
	.byte	19                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	28                              ## DW_AT_decl_line
	.long	173                             ## DW_AT_type
	.byte	20                              ## Abbrev [20] 0xf4:0x10 DW_TAG_lexical_block
	.byte	4                               ## DW_AT_low_pc
.set Lset11, Ltmp12-Ltmp8               ## DW_AT_high_pc
	.long	Lset11
	.byte	21                              ## Abbrev [21] 0xfa:0x9 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.byte	10                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	25                              ## DW_AT_decl_line
	.long	347                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	22                              ## Abbrev [22] 0x104:0x30 DW_TAG_inlined_subroutine
	.long	132                             ## DW_AT_abstract_origin
	.byte	5                               ## DW_AT_low_pc
.set Lset12, Ltmp17-Ltmp13              ## DW_AT_high_pc
	.long	Lset12
	.byte	0                               ## DW_AT_call_file
	.byte	28                              ## DW_AT_call_line
	.byte	16                              ## DW_AT_call_column
	.byte	8                               ## Abbrev [8] 0x111:0xb DW_TAG_formal_parameter
	.byte	5                               ## DW_AT_location
	.byte	145
	.ascii	"\360\377_"
	.byte	159
	.long	140                             ## DW_AT_abstract_origin
	.byte	10                              ## Abbrev [10] 0x11c:0x6 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.long	148                             ## DW_AT_abstract_origin
	.byte	10                              ## Abbrev [10] 0x122:0x6 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.long	156                             ## DW_AT_abstract_origin
	.byte	9                               ## Abbrev [9] 0x128:0xb DW_TAG_variable
	.byte	5                               ## DW_AT_location
	.byte	145
	.ascii	"\360\377_"
	.byte	159
	.long	164                             ## DW_AT_abstract_origin
	.byte	0                               ## End Of Children Mark
	.byte	23                              ## Abbrev [23] 0x134:0x6 DW_TAG_call_site
	.long	332                             ## DW_AT_call_origin
	.byte	6                               ## DW_AT_call_return_pc
	.byte	24                              ## Abbrev [24] 0x13a:0x11 DW_TAG_call_site
	.long	332                             ## DW_AT_call_origin
	.byte	7                               ## DW_AT_call_return_pc
	.byte	25                              ## Abbrev [25] 0x140:0xa DW_TAG_call_site_parameter
	.byte	1                               ## DW_AT_location
	.byte	97
	.byte	6                               ## DW_AT_call_value
	.byte	145
	.ascii	"\340\377_"
	.byte	148
	.byte	16
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
	.byte	26                              ## Abbrev [26] 0x14c:0xf DW_TAG_subprogram
	.byte	16                              ## DW_AT_name
	.byte	3                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	347                             ## DW_AT_type
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	27                              ## Abbrev [27] 0x154:0x5 DW_TAG_formal_parameter
	.long	351                             ## DW_AT_type
	.byte	28                              ## Abbrev [28] 0x159:0x1 DW_TAG_unspecified_parameters
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x15b:0x4 DW_TAG_base_type
	.byte	17                              ## DW_AT_name
	.byte	5                               ## DW_AT_encoding
	.byte	4                               ## DW_AT_byte_size
	.byte	14                              ## Abbrev [14] 0x15f:0x5 DW_TAG_restrict_type
	.long	356                             ## DW_AT_type
	.byte	15                              ## Abbrev [15] 0x164:0x5 DW_TAG_pointer_type
	.long	361                             ## DW_AT_type
	.byte	29                              ## Abbrev [29] 0x169:0x5 DW_TAG_const_type
	.long	63                              ## DW_AT_type
	.byte	3                               ## Abbrev [3] 0x16e:0xf DW_TAG_array_type
	.long	173                             ## DW_AT_type
	.byte	30                              ## Abbrev [30] 0x173:0x9 DW_TAG_subrange_type
	.long	67                              ## DW_AT_type
	.long	65536                           ## DW_AT_count
	.byte	0                               ## End Of Children Mark
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	84                              ## Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 16.0.0 (clang-1600.0.26.4)" ## string offset=0
	.asciz	"example4.c"                    ## string offset=47
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=58
	.asciz	"MacOSX.sdk"                    ## string offset=110
	.asciz	"/Users/harry/work/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/\345\256\236\351\252\214\351\241\271\347\233\256A5/recitation3" ## string offset=121
	.asciz	"char"                          ## string offset=185
	.asciz	"__ARRAY_SIZE_TYPE__"           ## string offset=190
	.asciz	"test"                          ## string offset=210
	.asciz	"double"                        ## string offset=215
	.asciz	"a"                             ## string offset=222
	.asciz	"i"                             ## string offset=224
	.asciz	"size_t"                        ## string offset=226
	.asciz	"__darwin_size_t"               ## string offset=233
	.asciz	"unsigned long"                 ## string offset=249
	.asciz	"y"                             ## string offset=263
	.asciz	"x"                             ## string offset=265
	.asciz	"main"                          ## string offset=267
	.asciz	"printf"                        ## string offset=272
	.asciz	"int"                           ## string offset=279
	.asciz	"sum"                           ## string offset=283
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	47
	.long	58
	.long	110
	.long	121
	.long	185
	.long	190
	.long	210
	.long	215
	.long	222
	.long	224
	.long	249
	.long	233
	.long	226
	.long	263
	.long	265
	.long	272
	.long	279
	.long	267
	.long	283
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset13, Ldebug_addr_end0-Ldebug_addr_start0 ## Length of contribution
	.long	Lset13
Ldebug_addr_start0:
	.short	5                               ## DWARF version number
	.byte	8                               ## Address size
	.byte	0                               ## Segment selector size
Laddr_table_base0:
	.quad	L_.str
	.quad	L_.str.1
	.quad	Lfunc_begin0
	.quad	Lfunc_begin1
	.quad	Ltmp8
	.quad	Ltmp13
	.quad	Ltmp19
	.quad	Ltmp20
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset14, Lnames_end0-Lnames_start0  ## Header: unit length
	.long	Lset14
Lnames_start0:
	.short	5                               ## Header: version
	.short	0                               ## Header: padding
	.long	1                               ## Header: compilation unit count
	.long	0                               ## Header: local type unit count
	.long	0                               ## Header: foreign type unit count
	.long	9                               ## Header: bucket count
	.long	9                               ## Header: name count
.set Lset15, Lnames_abbrev_end0-Lnames_abbrev_start0 ## Header: abbreviation table size
	.long	Lset15
	.long	8                               ## Header: augmentation string size
	.ascii	"LLVM0700"                      ## Header: augmentation string
.set Lset16, Lcu_begin0-Lsection_info   ## Compilation unit 0
	.long	Lset16
	.long	1                               ## Bucket 0
	.long	2                               ## Bucket 1
	.long	4                               ## Bucket 2
	.long	0                               ## Bucket 3
	.long	0                               ## Bucket 4
	.long	0                               ## Bucket 5
	.long	5                               ## Bucket 6
	.long	6                               ## Bucket 7
	.long	8                               ## Bucket 8
	.long	-103762318                      ## Hash in Bucket 0
	.long	2090756197                      ## Hash in Bucket 1
	.long	-113419488                      ## Hash in Bucket 1
	.long	193495088                       ## Hash in Bucket 2
	.long	466678419                       ## Hash in Bucket 6
	.long	2090499946                      ## Hash in Bucket 7
	.long	-282664779                      ## Hash in Bucket 7
	.long	217009403                       ## Hash in Bucket 8
	.long	2090147939                      ## Hash in Bucket 8
	.long	249                             ## String in Bucket 0: unsigned long
	.long	210                             ## String in Bucket 1: test
	.long	215                             ## String in Bucket 1: double
	.long	279                             ## String in Bucket 2: int
	.long	226                             ## String in Bucket 6: size_t
	.long	267                             ## String in Bucket 7: main
	.long	233                             ## String in Bucket 7: __darwin_size_t
	.long	190                             ## String in Bucket 8: __ARRAY_SIZE_TYPE__
	.long	185                             ## String in Bucket 8: char
.set Lset17, Lnames6-Lnames_entries0    ## Offset in Bucket 0
	.long	Lset17
.set Lset18, Lnames2-Lnames_entries0    ## Offset in Bucket 1
	.long	Lset18
.set Lset19, Lnames3-Lnames_entries0    ## Offset in Bucket 1
	.long	Lset19
.set Lset20, Lnames8-Lnames_entries0    ## Offset in Bucket 2
	.long	Lset20
.set Lset21, Lnames4-Lnames_entries0    ## Offset in Bucket 6
	.long	Lset21
.set Lset22, Lnames7-Lnames_entries0    ## Offset in Bucket 7
	.long	Lset22
.set Lset23, Lnames5-Lnames_entries0    ## Offset in Bucket 7
	.long	Lset23
.set Lset24, Lnames1-Lnames_entries0    ## Offset in Bucket 8
	.long	Lset24
.set Lset25, Lnames0-Lnames_entries0    ## Offset in Bucket 8
	.long	Lset25
Lnames_abbrev_start0:
	.ascii	"\270\035"                      ## Abbrev code
	.byte	29                              ## DW_TAG_inlined_subroutine
	.byte	3                               ## DW_IDX_die_offset
	.byte	19                              ## DW_FORM_ref4
	.byte	4                               ## DW_IDX_parent
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev
	.ascii	"\230$"                         ## Abbrev code
	.byte	36                              ## DW_TAG_base_type
	.byte	3                               ## DW_IDX_die_offset
	.byte	19                              ## DW_FORM_ref4
	.byte	4                               ## DW_IDX_parent
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev
	.ascii	"\230."                         ## Abbrev code
	.byte	46                              ## DW_TAG_subprogram
	.byte	3                               ## DW_IDX_die_offset
	.byte	19                              ## DW_FORM_ref4
	.byte	4                               ## DW_IDX_parent
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev
	.ascii	"\230\026"                      ## Abbrev code
	.byte	22                              ## DW_TAG_typedef
	.byte	3                               ## DW_IDX_die_offset
	.byte	19                              ## DW_FORM_ref4
	.byte	4                               ## DW_IDX_parent
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames6:
L2:
	.ascii	"\230$"                         ## Abbreviation code
	.long	203                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: unsigned long
Lnames2:
L7:
	.ascii	"\230."                         ## Abbreviation code
	.long	93                              ## DW_IDX_die_offset
L9:                                     ## DW_IDX_parent
	.ascii	"\270\035"                      ## Abbreviation code
	.long	260                             ## DW_IDX_die_offset
.set Lset26, L3-Lnames_entries0         ## DW_IDX_parent
	.long	Lset26
	.byte	0                               ## End of list: test
Lnames3:
L5:
	.ascii	"\230$"                         ## Abbreviation code
	.long	173                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: double
Lnames8:
L4:
	.ascii	"\230$"                         ## Abbreviation code
	.long	347                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: int
Lnames4:
L0:
	.ascii	"\230\026"                      ## Abbreviation code
	.long	187                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: size_t
Lnames7:
L3:
	.ascii	"\230."                         ## Abbreviation code
	.long	207                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: main
Lnames5:
L6:
	.ascii	"\230\026"                      ## Abbreviation code
	.long	195                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: __darwin_size_t
Lnames1:
L8:
	.ascii	"\230$"                         ## Abbreviation code
	.long	67                              ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: __ARRAY_SIZE_TYPE__
Lnames0:
L1:
	.ascii	"\230$"                         ## Abbreviation code
	.long	63                              ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
