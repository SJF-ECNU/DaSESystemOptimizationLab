	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function tdiff
lCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_tdiff
	.p2align	2
_tdiff:                                 ; @tdiff
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	scvtf	d2, x8
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	scvtf	d1, w8
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	fmadd	d0, d0, d1, d2
	fcvt	s0, d0
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI1_0:
	.quad	0x41dfffffffc00000              ; double 2147483647
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #2
	cset	w9, ne
                                        ; implicit-def: $x8
	mov	x8, x9
	ands	x8, x8, #0x1
	cset	w8, eq
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	adrp	x0, l___func__.main@PAGE
	add	x0, x0, l___func__.main@PAGEOFF
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #18                         ; =0x12
	adrp	x3, l_.str.1@PAGE
	add	x3, x3, l_.str.1@PAGEOFF
	bl	___assert_rtn
LBB1_2:
	b	LBB1_3
LBB1_3:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	_atoi
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, le
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	mov	w8, #-1                         ; =0xffffffff
	stur	w8, [x29, #-4]
	b	LBB1_39
LBB1_6:
	stur	wzr, [x29, #-24]
	b	LBB1_7
LBB1_7:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_9 Depth 2
	ldur	w8, [x29, #-24]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ge
	tbnz	w8, #0, LBB1_14
	b	LBB1_8
LBB1_8:                                 ;   in Loop: Header=BB1_7 Depth=1
	stur	wzr, [x29, #-28]
	b	LBB1_9
LBB1_9:                                 ;   Parent Loop BB1_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-28]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ge
	tbnz	w8, #0, LBB1_12
	b	LBB1_10
LBB1_10:                                ;   in Loop: Header=BB1_9 Depth=2
	bl	_rand
	scvtf	d0, w0
	adrp	x8, lCPI1_0@PAGE
	ldr	d1, [x8, lCPI1_0@PAGEOFF]
	str	d1, [sp, #16]                   ; 8-byte Folded Spill
	fdiv	d0, d0, d1
	ldursw	x9, [x29, #-24]
	adrp	x8, _A@GOTPAGE
	ldr	x8, [x8, _A@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldursw	x9, [x29, #-28]
	str	d0, [x8, x9, lsl #3]
	bl	_rand
	ldr	d1, [sp, #16]                   ; 8-byte Folded Reload
	scvtf	d0, w0
	fdiv	d0, d0, d1
	ldursw	x9, [x29, #-24]
	adrp	x8, _B@GOTPAGE
	ldr	x8, [x8, _B@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldursw	x9, [x29, #-28]
	str	d0, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-24]
	adrp	x8, _C@GOTPAGE
	ldr	x8, [x8, _C@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldursw	x9, [x29, #-28]
	movi	d0, #0000000000000000
	str	d0, [x8, x9, lsl #3]
	b	LBB1_11
LBB1_11:                                ;   in Loop: Header=BB1_9 Depth=2
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	LBB1_9
LBB1_12:                                ;   in Loop: Header=BB1_7 Depth=1
	b	LBB1_13
LBB1_13:                                ;   in Loop: Header=BB1_7 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	LBB1_7
LBB1_14:
	sub	x0, x29, #48
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	str	wzr, [sp, #44]
	b	LBB1_15
LBB1_15:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_17 Depth 2
                                        ;       Child Loop BB1_19 Depth 3
                                        ;         Child Loop BB1_21 Depth 4
                                        ;           Child Loop BB1_23 Depth 5
                                        ;             Child Loop BB1_25 Depth 6
	ldr	w8, [sp, #44]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ge
	tbnz	w8, #0, LBB1_38
	b	LBB1_16
LBB1_16:                                ;   in Loop: Header=BB1_15 Depth=1
	str	wzr, [sp, #40]
	b	LBB1_17
LBB1_17:                                ;   Parent Loop BB1_15 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_19 Depth 3
                                        ;         Child Loop BB1_21 Depth 4
                                        ;           Child Loop BB1_23 Depth 5
                                        ;             Child Loop BB1_25 Depth 6
	ldr	w8, [sp, #40]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ge
	tbnz	w8, #0, LBB1_36
	b	LBB1_18
LBB1_18:                                ;   in Loop: Header=BB1_17 Depth=2
	str	wzr, [sp, #36]
	b	LBB1_19
LBB1_19:                                ;   Parent Loop BB1_15 Depth=1
                                        ;     Parent Loop BB1_17 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_21 Depth 4
                                        ;           Child Loop BB1_23 Depth 5
                                        ;             Child Loop BB1_25 Depth 6
	ldr	w8, [sp, #36]
	subs	w8, w8, #1, lsl #12             ; =4096
	cset	w8, ge
	tbnz	w8, #0, LBB1_34
	b	LBB1_20
LBB1_20:                                ;   in Loop: Header=BB1_19 Depth=3
	str	wzr, [sp, #32]
	b	LBB1_21
LBB1_21:                                ;   Parent Loop BB1_15 Depth=1
                                        ;     Parent Loop BB1_17 Depth=2
                                        ;       Parent Loop BB1_19 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB1_23 Depth 5
                                        ;             Child Loop BB1_25 Depth 6
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_32
	b	LBB1_22
LBB1_22:                                ;   in Loop: Header=BB1_21 Depth=4
	str	wzr, [sp, #28]
	b	LBB1_23
LBB1_23:                                ;   Parent Loop BB1_15 Depth=1
                                        ;     Parent Loop BB1_17 Depth=2
                                        ;       Parent Loop BB1_19 Depth=3
                                        ;         Parent Loop BB1_21 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB1_25 Depth 6
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_30
	b	LBB1_24
LBB1_24:                                ;   in Loop: Header=BB1_23 Depth=5
	str	wzr, [sp, #24]
	b	LBB1_25
LBB1_25:                                ;   Parent Loop BB1_15 Depth=1
                                        ;     Parent Loop BB1_17 Depth=2
                                        ;       Parent Loop BB1_19 Depth=3
                                        ;         Parent Loop BB1_21 Depth=4
                                        ;           Parent Loop BB1_23 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_28
	b	LBB1_26
LBB1_26:                                ;   in Loop: Header=BB1_25 Depth=6
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #32]
	add	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	adrp	x8, _A@GOTPAGE
	ldr	x8, [x8, _A@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldr	w9, [sp, #36]
	ldr	w10, [sp, #28]
	add	w9, w9, w10
	ldr	d0, [x8, w9, sxtw #3]
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #28]
	add	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	adrp	x8, _B@GOTPAGE
	ldr	x8, [x8, _B@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #24]
	add	w9, w9, w10
	ldr	d1, [x8, w9, sxtw #3]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #32]
	add	w9, w8, w9
                                        ; implicit-def: $x8
	mov	x8, x9
	sxtw	x9, w8
	adrp	x8, _C@GOTPAGE
	ldr	x8, [x8, _C@GOTPAGEOFF]
	add	x8, x8, x9, lsl #15
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #24]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #3
	ldr	d2, [x8]
	fmadd	d0, d0, d1, d2
	str	d0, [x8]
	b	LBB1_27
LBB1_27:                                ;   in Loop: Header=BB1_25 Depth=6
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB1_25
LBB1_28:                                ;   in Loop: Header=BB1_23 Depth=5
	b	LBB1_29
LBB1_29:                                ;   in Loop: Header=BB1_23 Depth=5
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB1_23
LBB1_30:                                ;   in Loop: Header=BB1_21 Depth=4
	b	LBB1_31
LBB1_31:                                ;   in Loop: Header=BB1_21 Depth=4
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB1_21
LBB1_32:                                ;   in Loop: Header=BB1_19 Depth=3
	b	LBB1_33
LBB1_33:                                ;   in Loop: Header=BB1_19 Depth=3
	ldur	w9, [x29, #-20]
	ldr	w8, [sp, #36]
	add	w8, w8, w9
	str	w8, [sp, #36]
	b	LBB1_19
LBB1_34:                                ;   in Loop: Header=BB1_17 Depth=2
	b	LBB1_35
LBB1_35:                                ;   in Loop: Header=BB1_17 Depth=2
	ldur	w9, [x29, #-20]
	ldr	w8, [sp, #40]
	add	w8, w8, w9
	str	w8, [sp, #40]
	b	LBB1_17
LBB1_36:                                ;   in Loop: Header=BB1_15 Depth=1
	b	LBB1_37
LBB1_37:                                ;   in Loop: Header=BB1_15 Depth=1
	ldur	w9, [x29, #-20]
	ldr	w8, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #44]
	b	LBB1_15
LBB1_38:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #48
	bl	_tdiff
	fcvt	d0, s0
	mov	x8, sp
	str	d0, [x8]
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	stur	wzr, [x29, #-4]
	b	LBB1_39
LBB1_39:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___func__.main:                        ; @__func__.main
	.asciz	"main"

l_.str:                                 ; @.str
	.asciz	"MatrixMultiplication.c"

l_.str.1:                               ; @.str.1
	.asciz	"argc == 2"

l_.str.2:                               ; @.str.2
	.asciz	"Invalid input values.\n"

	.comm	_A,134217728,3                  ; @A
	.comm	_B,134217728,3                  ; @B
	.comm	_C,134217728,3                  ; @C
l_.str.3:                               ; @.str.3
	.asciz	"%0.6f\n"

.subsections_via_symbols
