	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_tdiff                          ; -- Begin function tdiff
	.p2align	2
_tdiff:                                 ; @tdiff
	.cfi_startproc
; %bb.0:
	ldr	x8, [x1]
	ldr	x9, [x0]
	sub	x8, x8, x9
	scvtf	d0, x8
	ldr	w8, [x1, #8]
	ldr	w9, [x0, #8]
	sub	w8, w8, w9
	scvtf	d1, w8
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d2, x8
	fmadd	d0, d1, d2, d0
	fcvt	s0, d0
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	cmp	w0, #2
	b.ne	LBB1_27
; %bb.1:
	ldr	x0, [x1, #8]
	bl	_atoi
	mov	w8, #-4097                      ; =0xffffefff
	add	w8, w0, w8
	cmn	w8, #1, lsl #12                 ; =4096
	b.hs	LBB1_3
; %bb.2:
Lloh0:
	adrp	x0, l_str@PAGE
Lloh1:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
	mov	w0, #-1                         ; =0xffffffff
	b	LBB1_26
LBB1_3:
	mov	x19, x0
	mov	x23, #0                         ; =0x0
Lloh2:
	adrp	x20, _A@GOTPAGE
Lloh3:
	ldr	x20, [x20, _A@GOTPAGEOFF]
Lloh4:
	adrp	x21, _B@GOTPAGE
Lloh5:
	ldr	x21, [x21, _B@GOTPAGEOFF]
Lloh6:
	adrp	x22, _C@GOTPAGE
Lloh7:
	ldr	x22, [x22, _C@GOTPAGEOFF]
	mov	x24, #281474972516352           ; =0xffffffc00000
	movk	x24, #16863, lsl #48
	mov	x25, x22
	mov	x26, x21
	mov	x27, x20
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	mov	x28, #0                         ; =0x0
LBB1_5:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_rand
	scvtf	d0, w0
	fmov	d8, x24
	fdiv	d0, d0, d8
	str	d0, [x27, x28]
	bl	_rand
	scvtf	d0, w0
	fdiv	d0, d0, d8
	str	d0, [x26, x28]
	str	xzr, [x25, x28]
	add	x28, x28, #8
	cmp	x28, #8, lsl #12                ; =32768
	b.ne	LBB1_5
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	add	x23, x23, #1
	add	x27, x27, #8, lsl #12           ; =32768
	add	x26, x26, #8, lsl #12           ; =32768
	add	x25, x25, #8, lsl #12           ; =32768
	cmp	x23, #1, lsl #12                ; =4096
	b.ne	LBB1_4
; %bb.7:
	add	x0, sp, #32
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	mov	x8, #0                          ; =0x0
	sxtw	x9, w19
	mov	w10, w19
	and	x11, x10, #0xfffffff8
	sbfiz	x12, x19, #3, #32
	sbfiz	x13, x19, #15, #32
	add	x14, x22, #32
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=1
	add	x8, x8, x9
	add	x14, x14, x13
	add	x22, x22, x13
	cmp	x8, #1, lsl #12                 ; =4096
	b.ge	LBB1_25
LBB1_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_11 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;         Child Loop BB1_16 Depth 4
                                        ;           Child Loop BB1_18 Depth 5
                                        ;             Child Loop BB1_21 Depth 6
                                        ;             Child Loop BB1_24 Depth 6
	mov	x15, #0                         ; =0x0
	add	x16, x21, #32
	mov	x17, x14
	b	LBB1_11
LBB1_10:                                ;   in Loop: Header=BB1_11 Depth=2
	add	x15, x15, x9
	add	x16, x16, x12
	add	x17, x17, x12
	cmp	x15, #1, lsl #12                ; =4096
	b.ge	LBB1_8
LBB1_11:                                ;   Parent Loop BB1_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;         Child Loop BB1_16 Depth 4
                                        ;           Child Loop BB1_18 Depth 5
                                        ;             Child Loop BB1_21 Depth 6
                                        ;             Child Loop BB1_24 Depth 6
	mov	x0, #0                          ; =0x0
	mov	x1, x21
	mov	x2, x16
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=3
	add	x0, x0, x9
	add	x2, x2, x13
	add	x1, x1, x13
	cmp	x0, #1, lsl #12                 ; =4096
	b.ge	LBB1_10
LBB1_13:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_16 Depth 4
                                        ;           Child Loop BB1_18 Depth 5
                                        ;             Child Loop BB1_21 Depth 6
                                        ;             Child Loop BB1_24 Depth 6
	cmp	w19, #1
	b.lt	LBB1_12
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=3
	mov	x3, #0                          ; =0x0
	mov	x4, x22
	mov	x5, x17
	b	LBB1_16
LBB1_15:                                ;   in Loop: Header=BB1_16 Depth=4
	add	x3, x3, #1
	add	x5, x5, #8, lsl #12             ; =32768
	add	x4, x4, #8, lsl #12             ; =32768
	cmp	x3, x10
	b.eq	LBB1_12
LBB1_16:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB1_18 Depth 5
                                        ;             Child Loop BB1_21 Depth 6
                                        ;             Child Loop BB1_24 Depth 6
	mov	x6, #0                          ; =0x0
	add	x7, x3, x8
	mov	x23, x1
	mov	x24, x2
	b	LBB1_18
LBB1_17:                                ;   in Loop: Header=BB1_18 Depth=5
	add	x6, x6, #1
	add	x24, x24, #8, lsl #12           ; =32768
	add	x23, x23, #8, lsl #12           ; =32768
	cmp	x6, x10
	b.eq	LBB1_15
LBB1_18:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ;         Parent Loop BB1_16 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB1_21 Depth 6
                                        ;             Child Loop BB1_24 Depth 6
	add	x25, x6, x0
	add	x26, x20, x7, lsl #15
	ldr	d0, [x26, x25, lsl #3]
	cmp	w19, #8
	b.hs	LBB1_20
; %bb.19:                               ;   in Loop: Header=BB1_18 Depth=5
	mov	x27, #0                         ; =0x0
	b	LBB1_23
LBB1_20:                                ;   in Loop: Header=BB1_18 Depth=5
	dup.2d	v1, v0[0]
	mov	x25, x5
	mov	x26, x24
	mov	x27, x11
LBB1_21:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ;         Parent Loop BB1_16 Depth=4
                                        ;           Parent Loop BB1_18 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldp	q2, q3, [x26, #-32]
	ldp	q4, q5, [x26], #64
	ldp	q6, q7, [x25, #-32]
	ldp	q16, q17, [x25]
	fmla.2d	v6, v2, v1
	fmla.2d	v7, v3, v1
	fmla.2d	v16, v4, v1
	fmla.2d	v17, v5, v1
	stp	q6, q7, [x25, #-32]
	stp	q16, q17, [x25], #64
	subs	x27, x27, #8
	b.ne	LBB1_21
; %bb.22:                               ;   in Loop: Header=BB1_18 Depth=5
	mov	x27, x11
	cmp	x11, x10
	b.eq	LBB1_17
LBB1_23:                                ;   in Loop: Header=BB1_18 Depth=5
	add	x25, x15, x27
	lsl	x26, x25, #3
	add	x25, x23, x26
	add	x26, x4, x26
	sub	x27, x10, x27
LBB1_24:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ;         Parent Loop BB1_16 Depth=4
                                        ;           Parent Loop BB1_18 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	d1, [x25], #8
	ldr	d2, [x26]
	fmadd	d1, d0, d1, d2
	str	d1, [x26], #8
	subs	x27, x27, #1
	b.ne	LBB1_24
	b	LBB1_17
LBB1_25:
	add	x0, sp, #16
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	sub	x8, x8, x9
	scvtf	d0, x8
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #40]
	sub	w8, w8, w9
	scvtf	d1, w8
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d2, x8
	fmadd	d0, d1, d2, d0
	fcvt	s0, d0
	fcvt	d0, s0
	str	d0, [sp]
Lloh8:
	adrp	x0, l_.str.3@PAGE
Lloh9:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
LBB1_26:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB1_27:
	bl	_main.cold.1
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function main.cold.1
_main.cold.1:                           ; @main.cold.1
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh10:
	adrp	x0, l___func__.main@PAGE
Lloh11:
	add	x0, x0, l___func__.main@PAGEOFF
Lloh12:
	adrp	x1, l_.str@PAGE
Lloh13:
	add	x1, x1, l_.str@PAGEOFF
Lloh14:
	adrp	x3, l_.str.1@PAGE
Lloh15:
	add	x3, x3, l_.str.1@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	___assert_rtn
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l___func__.main:                        ; @__func__.main
	.asciz	"main"

l_.str:                                 ; @.str
	.asciz	"MatrixMultiplication.c"

l_.str.1:                               ; @.str.1
	.asciz	"argc == 2"

	.comm	_A,134217728,3                  ; @A
	.comm	_B,134217728,3                  ; @B
	.comm	_C,134217728,3                  ; @C
l_.str.3:                               ; @.str.3
	.asciz	"%0.6f\n"

l_str:                                  ; @str
	.asciz	"Invalid input values."

.subsections_via_symbols
