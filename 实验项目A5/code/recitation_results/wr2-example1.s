	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.globl	_test                           ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
Lfunc_begin0:
	.file	0 "/Users/harry/work/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/\345\256\236\351\252\214\351\241\271\347\233\256A5/recitation3" "example1.c" md5 0x094e920f5f12746d7cc7ddf73cde262d
	.loc	0 9 0                           ## example1.c:9:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: test:a <- $rdi
	##DEBUG_VALUE: test:b <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
Ltmp0:
	##DEBUG_VALUE: test:i <- 0
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 13 13 prologue_end            ## example1.c:13:13
	movdqu	(%rsi,%rax), %xmm0
	movdqu	16(%rsi,%rax), %xmm1
	.loc	0 13 10 is_stmt 0               ## example1.c:13:10
	movdqu	(%rdi,%rax), %xmm2
	paddb	%xmm0, %xmm2
	movdqu	16(%rdi,%rax), %xmm0
	paddb	%xmm1, %xmm0
	movdqu	32(%rdi,%rax), %xmm1
	movdqu	48(%rdi,%rax), %xmm3
	movdqu	%xmm2, (%rdi,%rax)
	movdqu	%xmm0, 16(%rdi,%rax)
	.loc	0 13 13                         ## example1.c:13:13
	movdqu	32(%rsi,%rax), %xmm0
	.loc	0 13 10                         ## example1.c:13:10
	paddb	%xmm1, %xmm0
	.loc	0 13 13                         ## example1.c:13:13
	movdqu	48(%rsi,%rax), %xmm1
	.loc	0 13 10                         ## example1.c:13:10
	paddb	%xmm3, %xmm1
	movdqu	%xmm0, 32(%rdi,%rax)
	movdqu	%xmm1, 48(%rdi,%rax)
Ltmp1:
	.loc	0 12 26 is_stmt 1               ## example1.c:12:26
	addq	$64, %rax
	cmpq	$65536, %rax                    ## imm = 0x10000
	jne	LBB0_1
Ltmp2:
## %bb.2:
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 15 1 epilogue_begin           ## example1.c:15:1
	popq	%rbp
	retq
Ltmp3:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h" md5 0x8b64ccf8c67b8c006b07b8daf1b49be5
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h" md5 0x77fc5e91653260959605f129691cf9b1
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
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	2                               ## Abbreviation Code
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
	.byte	39                              ## DW_AT_prototyped
	.byte	25                              ## DW_FORM_flag_present
	.byte	63                              ## DW_AT_external
	.byte	25                              ## DW_FORM_flag_present
	.ascii	"\341\177"                      ## DW_AT_APPLE_optimized
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	3                               ## Abbreviation Code
	.byte	5                               ## DW_TAG_formal_parameter
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
	.byte	4                               ## Abbreviation Code
	.byte	52                              ## DW_TAG_variable
	.byte	0                               ## DW_CHILDREN_no
	.byte	28                              ## DW_AT_const_value
	.byte	15                              ## DW_FORM_udata
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
	.byte	5                               ## Abbreviation Code
	.byte	55                              ## DW_TAG_restrict_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	6                               ## Abbreviation Code
	.byte	15                              ## DW_TAG_pointer_type
	.byte	0                               ## DW_CHILDREN_no
	.byte	73                              ## DW_AT_type
	.byte	19                              ## DW_FORM_ref4
	.byte	0                               ## EOM(1)
	.byte	0                               ## EOM(2)
	.byte	7                               ## Abbreviation Code
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
	.byte	8                               ## Abbreviation Code
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
	.byte	0                               ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset0, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset0
Ldebug_info_start0:
	.short	5                               ## DWARF version number
	.byte	1                               ## DWARF Unit Type
	.byte	8                               ## Address Size (in bytes)
.set Lset1, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset1
	.byte	1                               ## Abbrev [1] 0xc:0x65 DW_TAG_compile_unit
	.byte	0                               ## DW_AT_producer
	.short	12                              ## DW_AT_language
	.byte	1                               ## DW_AT_name
	.byte	2                               ## DW_AT_LLVM_sysroot
	.byte	3                               ## DW_AT_APPLE_sdk
.set Lset2, Lstr_offsets_base0-Lsection_str_off ## DW_AT_str_offsets_base
	.long	Lset2
.set Lset3, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset3
	.byte	4                               ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.byte	0                               ## DW_AT_low_pc
.set Lset4, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset4
.set Lset5, Laddr_table_base0-Lsection_info0 ## DW_AT_addr_base
	.long	Lset5
	.byte	2                               ## Abbrev [2] 0x25:0x29 DW_TAG_subprogram
	.byte	0                               ## DW_AT_low_pc
.set Lset6, Lfunc_end0-Lfunc_begin0     ## DW_AT_high_pc
	.long	Lset6
	.byte	1                               ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.byte	5                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	3                               ## Abbrev [3] 0x30:0xa DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	85
	.byte	6                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	3                               ## Abbrev [3] 0x3a:0xa DW_TAG_formal_parameter
	.byte	1                               ## DW_AT_location
	.byte	84
	.byte	9                               ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	9                               ## DW_AT_decl_line
	.long	78                              ## DW_AT_type
	.byte	4                               ## Abbrev [4] 0x44:0x9 DW_TAG_variable
	.byte	0                               ## DW_AT_const_value
	.byte	10                              ## DW_AT_name
	.byte	0                               ## DW_AT_decl_file
	.byte	10                              ## DW_AT_decl_line
	.long	100                             ## DW_AT_type
	.byte	0                               ## End Of Children Mark
	.byte	5                               ## Abbrev [5] 0x4e:0x5 DW_TAG_restrict_type
	.long	83                              ## DW_AT_type
	.byte	6                               ## Abbrev [6] 0x53:0x5 DW_TAG_pointer_type
	.long	88                              ## DW_AT_type
	.byte	7                               ## Abbrev [7] 0x58:0x8 DW_TAG_typedef
	.long	96                              ## DW_AT_type
	.byte	8                               ## DW_AT_name
	.byte	1                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	8                               ## Abbrev [8] 0x60:0x4 DW_TAG_base_type
	.byte	7                               ## DW_AT_name
	.byte	8                               ## DW_AT_encoding
	.byte	1                               ## DW_AT_byte_size
	.byte	7                               ## Abbrev [7] 0x64:0x8 DW_TAG_typedef
	.long	108                             ## DW_AT_type
	.byte	12                              ## DW_AT_name
	.byte	2                               ## DW_AT_decl_file
	.byte	31                              ## DW_AT_decl_line
	.byte	8                               ## Abbrev [8] 0x6c:0x4 DW_TAG_base_type
	.byte	11                              ## DW_AT_name
	.byte	7                               ## DW_AT_encoding
	.byte	8                               ## DW_AT_byte_size
	.byte	0                               ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str_offs,regular,debug
Lsection_str_off:
	.long	56                              ## Length of String Offsets Set
	.short	5
	.short	0
Lstr_offsets_base0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 16.0.0 (clang-1600.0.26.4)" ## string offset=0
	.asciz	"example1.c"                    ## string offset=47
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=58
	.asciz	"MacOSX.sdk"                    ## string offset=110
	.asciz	"/Users/harry/work/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/\345\256\236\351\252\214\351\241\271\347\233\256A5/recitation3" ## string offset=121
	.asciz	"test"                          ## string offset=185
	.asciz	"a"                             ## string offset=190
	.asciz	"uint8_t"                       ## string offset=192
	.asciz	"unsigned char"                 ## string offset=200
	.asciz	"b"                             ## string offset=214
	.asciz	"i"                             ## string offset=216
	.asciz	"uint64_t"                      ## string offset=218
	.asciz	"unsigned long long"            ## string offset=227
	.section	__DWARF,__debug_str_offs,regular,debug
	.long	0
	.long	47
	.long	58
	.long	110
	.long	121
	.long	185
	.long	190
	.long	200
	.long	192
	.long	214
	.long	216
	.long	227
	.long	218
	.section	__DWARF,__debug_addr,regular,debug
Lsection_info0:
.set Lset7, Ldebug_addr_end0-Ldebug_addr_start0 ## Length of contribution
	.long	Lset7
Ldebug_addr_start0:
	.short	5                               ## DWARF version number
	.byte	8                               ## Address size
	.byte	0                               ## Segment selector size
Laddr_table_base0:
	.quad	Lfunc_begin0
Ldebug_addr_end0:
	.section	__DWARF,__debug_names,regular,debug
Ldebug_names_begin:
.set Lset8, Lnames_end0-Lnames_start0   ## Header: unit length
	.long	Lset8
Lnames_start0:
	.short	5                               ## Header: version
	.short	0                               ## Header: padding
	.long	1                               ## Header: compilation unit count
	.long	0                               ## Header: local type unit count
	.long	0                               ## Header: foreign type unit count
	.long	5                               ## Header: bucket count
	.long	5                               ## Header: name count
.set Lset9, Lnames_abbrev_end0-Lnames_abbrev_start0 ## Header: abbreviation table size
	.long	Lset9
	.long	8                               ## Header: augmentation string size
	.ascii	"LLVM0700"                      ## Header: augmentation string
.set Lset10, Lcu_begin0-Lsection_info   ## Compilation unit 0
	.long	Lset10
	.long	1                               ## Bucket 0
	.long	2                               ## Bucket 1
	.long	3                               ## Bucket 2
	.long	0                               ## Bucket 3
	.long	4                               ## Bucket 4
	.long	857652610                       ## Hash in Bucket 0
	.long	789719536                       ## Hash in Bucket 1
	.long	2090756197                      ## Hash in Bucket 2
	.long	290821634                       ## Hash in Bucket 4
	.long	-104093792                      ## Hash in Bucket 4
	.long	227                             ## String in Bucket 0: unsigned long long
	.long	192                             ## String in Bucket 1: uint8_t
	.long	185                             ## String in Bucket 2: test
	.long	218                             ## String in Bucket 4: uint64_t
	.long	200                             ## String in Bucket 4: unsigned char
.set Lset11, Lnames4-Lnames_entries0    ## Offset in Bucket 0
	.long	Lset11
.set Lset12, Lnames1-Lnames_entries0    ## Offset in Bucket 1
	.long	Lset12
.set Lset13, Lnames0-Lnames_entries0    ## Offset in Bucket 2
	.long	Lset13
.set Lset14, Lnames3-Lnames_entries0    ## Offset in Bucket 4
	.long	Lset14
.set Lset15, Lnames2-Lnames_entries0    ## Offset in Bucket 4
	.long	Lset15
Lnames_abbrev_start0:
	.ascii	"\230$"                         ## Abbrev code
	.byte	36                              ## DW_TAG_base_type
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
	.ascii	"\230."                         ## Abbrev code
	.byte	46                              ## DW_TAG_subprogram
	.byte	3                               ## DW_IDX_die_offset
	.byte	19                              ## DW_FORM_ref4
	.byte	4                               ## DW_IDX_parent
	.byte	25                              ## DW_FORM_flag_present
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev
	.byte	0                               ## End of abbrev list
Lnames_abbrev_end0:
Lnames_entries0:
Lnames4:
L2:
	.ascii	"\230$"                         ## Abbreviation code
	.long	108                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: unsigned long long
Lnames1:
L4:
	.ascii	"\230\026"                      ## Abbreviation code
	.long	88                              ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: uint8_t
Lnames0:
L3:
	.ascii	"\230."                         ## Abbreviation code
	.long	37                              ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: test
Lnames3:
L0:
	.ascii	"\230\026"                      ## Abbreviation code
	.long	100                             ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: uint64_t
Lnames2:
L1:
	.ascii	"\230$"                         ## Abbreviation code
	.long	96                              ## DW_IDX_die_offset
	.byte	0                               ## DW_IDX_parent
                                        ## End of list: unsigned char
	.p2align	2, 0x0
Lnames_end0:
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
