# %bb.0: # %entry
#DEBUG_VALUE: test:a <- %rdi
#DEBUG_VALUE: test:a <- %rdi
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:i <- 0
.loc 1 12 3 prologue_end # example1.c:12:3
leaq
cmpq
jbe
65536(%rsi), %rax
%rdi, %rax
.LBB0_2
# %bb.1:
# %entry
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:a <- %rdi
leaq 65536(%rdi), %rax
cmpq %rsi, %rax
jbe .LBB0_2
# %bb.4: # %for.body.preheader
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:a <- %rdi
.loc 1 0 3 is_stmt 0 # example1.c:0:3
movq $-65536, %rax # imm = 0xFFFF0000
.p2align 4, 0x90
.LBB0_5: # %for.body
# =>This Inner Loop Header: Depth=1
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:a <- %rdi
.Ltmp0:
.loc 1 13 13 is_stmt 1 # example1.c:13:13
movzbl 65536(%rsi,%rax), %ecx
.loc 1 13 10 is_stmt 0 # example1.c:13:10
addb %cl, 65536(%rdi,%rax)
.loc 1 13 13 # example1.c:13:13
movzbl 65537(%rsi,%rax), %ecx
.loc 1 13 10 # example1.c:13:10
addb %cl, 65537(%rdi,%rax)
.loc 1 13 13 # example1.c:13:13
movzbl 65538(%rsi,%rax), %ecx
.loc 1 13 10 # example1.c:13:10
addb %cl, 65538(%rdi,%rax)
.loc 1 13 13 # example1.c:13:13
movzbl 65539(%rsi,%rax), %ecx
.loc 1 13 10 # example1.c:13:10
addb %cl, 65539(%rdi,%rax)
.Ltmp1:
.loc 1 12 17 is_stmt 1 # example1.c:12:17
addq
.Ltmp2:
.loc
$4, %rax
1 12 3 is_stmt 0 # example1.c:12:3
jne .LBB0_5
jmp .LBB0_6
.LBB0_2: # %vector.body.preheader
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:a <- %rdi
.loc 1 0 3 # example1.c:0:3
movq $-65536, %rax # imm = 0xFFFF0000
.p2align 4, 0x90
.LBB0_3: # %vector.body
# =>This Inner Loop Header: Depth=1
#DEBUG_VALUE: test:b <- %rsi
#DEBUG_VALUE: test:a <- %rdi
.Ltmp3:
.loc 1 13 13 is_stmt 1 # example1.c:13:13
movdqu 65536(%rsi,%rax), %xmm0
movdqu 65552(%rsi,%rax), %xmm1
.loc 1 13 10 is_stmt 0 # example1.c:13:10
movdqu 65536(%rdi,%rax), %xmm2
paddb %xmm0, %xmm2
movdqu 65552(%rdi,%rax), %xmm0
movdqu 65568(%rdi,%rax), %xmm3
movdqu 65584(%rdi,%rax), %xmm4
movdqu %xmm2, 65536(%rdi,%rax)
paddb %xmm1, %xmm0
movdqu %xmm0, 65552(%rdi,%rax)
.loc 1 13 13 # example1.c:13:13
movdqu 65568(%rsi,%rax), %xmm0
.loc 1 13 10 # example1.c:13:10
paddb %xmm3, %xmm0
.loc 1 13 13 # example1.c:13:13
movdqu 65584(%rsi,%rax), %xmm1
.loc 1 13 10 # example1.c:13:10
movdqu %xmm0, 65568(%rdi,%rax)
paddb %xmm4, %xmm1
movdqu %xmm1, 65584(%rdi,%rax)
.Ltmp4:
.loc 1 12 26 is_stmt 1 # example1.c:12:26
addq $64, %rax
jne .LBB0_3