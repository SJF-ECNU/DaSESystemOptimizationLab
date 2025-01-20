	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.globl	_test                           ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
Lfunc_begin0:
	.file	0 "/Users/harry/work/\350\275\257\344\273\266\347\263\273\347\273\237\344\274\230\345\214\226/\345\256\236\351\252\214\351\241\271\347\233\256A5/recitation3" "example1.c" md5 0x0585044a2df4eba681dcc161f25d791c
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
Ltmp0:
	##DEBUG_VALUE: test:i <- 0
	.loc	0 12 3 prologue_end             ## example1.c:12:3
	leaq	65536(%rsi), %rax
	cmpq	%rdi, %rax
	jbe	LBB0_2
Ltmp1:
## %bb.1:
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	leaq	65536(%rdi), %rax
	cmpq	%rsi, %rax
	jbe	LBB0_2
Ltmp2:
## %bb.4:
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 0 3 is_stmt 0                 ## example1.c:0:3
	xorl	%eax, %eax
Ltmp3:
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	##DEBUG_VALUE: test:i <- $rax
	.loc	0 13 13 is_stmt 1               ## example1.c:13:13
	movzbl	(%rsi,%rax), %ecx
	.loc	0 13 10 is_stmt 0               ## example1.c:13:10
	addb	%cl, (%rdi,%rax)
Ltmp4:
	##DEBUG_VALUE: test:i <- [DW_OP_constu 1, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         ## example1.c:13:13
	movzbl	1(%rsi,%rax), %ecx
	.loc	0 13 10                         ## example1.c:13:10
	addb	%cl, 1(%rdi,%rax)
Ltmp5:
	##DEBUG_VALUE: test:i <- [DW_OP_constu 2, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         ## example1.c:13:13
	movzbl	2(%rsi,%rax), %ecx
	.loc	0 13 10                         ## example1.c:13:10
	addb	%cl, 2(%rdi,%rax)
Ltmp6:
	##DEBUG_VALUE: test:i <- [DW_OP_constu 3, DW_OP_or, DW_OP_stack_value] $rax
	.loc	0 13 13                         ## example1.c:13:13
	movzbl	3(%rsi,%rax), %ecx
	.loc	0 13 10                         ## example1.c:13:10
	addb	%cl, 3(%rdi,%rax)
Ltmp7:
	.loc	0 12 26 is_stmt 1               ## example1.c:12:26
	addq	$4, %rax
Ltmp8:
	##DEBUG_VALUE: test:i <- $rax
	.loc	0 12 17 is_stmt 0               ## example1.c:12:17
	cmpq	$65536, %rax                    ## imm = 0x10000
Ltmp9:
	.loc	0 12 3                          ## example1.c:12:3
	jne	LBB0_5
	jmp	LBB0_6
Ltmp10:
LBB0_2:
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 0 3                           ## example1.c:0:3
	xorl	%eax, %eax
Ltmp11:
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: test:i <- 0
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 13 13 is_stmt 1               ## example1.c:13:13
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
Ltmp12:
	.loc	0 12 26 is_stmt 1               ## example1.c:12:26
	addq	$64, %rax
	cmpq	$65536, %rax                    ## imm = 0x10000
	jne	LBB0_3
Ltmp13:
LBB0_6:
	##DEBUG_VALUE: test:b <- $rsi
	##DEBUG_VALUE: test:a <- $rdi
	.loc	0 15 1 epilogue_begin           ## example1.c:15:1
	popq	%rbp
	retq
Ltmp14:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h" md5 0x8b64ccf8c67b8c006b07b8daf1b49be5
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h" md5 0x77fc5e91653260959605f129691cf9b1
	.section	__DWARF,__debug_loclists,regular,debug
