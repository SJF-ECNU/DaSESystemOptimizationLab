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
	b.ne	LBB1_43
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
	b	LBB1_42
LBB1_3:
	mov	x19, x0
	mov	x20, #0                         ; =0x0
Lloh2:
	adrp	x21, _A@GOTPAGE
Lloh3:
	ldr	x21, [x21, _A@GOTPAGEOFF]
Lloh4:
	adrp	x25, _B@GOTPAGE
Lloh5:
	ldr	x25, [x25, _B@GOTPAGEOFF]
Lloh6:
	adrp	x22, _C@GOTPAGE
Lloh7:
	ldr	x22, [x22, _C@GOTPAGEOFF]
	mov	x23, #281474972516352           ; =0xffffffc00000
	movk	x23, #16863, lsl #48
	mov	x24, x22
	mov	x26, x21
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	mov	x27, #0                         ; =0x0
LBB1_5:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_rand
	scvtf	d0, w0
	fmov	d8, x23
	fdiv	d0, d0, d8
	str	d0, [x26, x27]
	bl	_rand
	scvtf	d0, w0
	fdiv	d0, d0, d8
	str	d0, [x25, x27]
	str	xzr, [x24, x27]
	add	x27, x27, #8
	cmp	x27, #8, lsl #12                ; =32768
	b.ne	LBB1_5
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	add	x20, x20, #1
	add	x26, x26, #8, lsl #12           ; =32768
	add	x25, x25, #8, lsl #12           ; =32768
	add	x24, x24, #8, lsl #12           ; =32768
	cmp	x20, #1, lsl #12                ; =4096
	b.ne	LBB1_4
; %bb.7:
	add	x0, sp, #32
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	cmp	w19, #1
	b.lt	LBB1_41
; %bb.8:
	mov	w20, w19
	cmp	w19, #8
	b.hs	LBB1_26
; %bb.9:
	mov	x9, #0                          ; =0x0
	lsl	x10, x20, #15
	lsl	x11, x20, #3
Lloh8:
	adrp	x8, _A@GOTPAGE
Lloh9:
	ldr	x8, [x8, _A@GOTPAGEOFF]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB1_11
LBB1_10:                                ;   in Loop: Header=BB1_11 Depth=1
	add	x9, x9, x20
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x8, x8, x10
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	cmp	x9, #1, lsl #12                 ; =4096
	b.hs	LBB1_41
LBB1_11:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_13 Depth 2
                                        ;       Child Loop BB1_15 Depth 3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;           Child Loop BB1_19 Depth 5
	mov	x13, #0                         ; =0x0
Lloh10:
	adrp	x8, _B@GOTPAGE
Lloh11:
	ldr	x8, [x8, _B@GOTPAGEOFF]
	add	x14, x8, #24
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=2
	add	x13, x13, x20
	add	x14, x14, x11
	cmp	x13, #1, lsl #12                ; =4096
	b.hs	LBB1_10
LBB1_13:                                ;   Parent Loop BB1_11 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_15 Depth 3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;           Child Loop BB1_19 Depth 5
	mov	x15, #0                         ; =0x0
	add	x16, x13, #1
	add	x17, x13, #2
	add	x0, x13, #3
	add	x1, x13, #4
	add	x2, x13, #5
	add	x3, x13, #6
	mov	x4, x14
	ldr	x5, [sp, #8]                    ; 8-byte Folded Reload
	b	LBB1_15
LBB1_14:                                ;   in Loop: Header=BB1_15 Depth=3
	add	x15, x15, x20
	add	x5, x5, x11
	add	x4, x4, x10
	cmp	x15, #1, lsl #12                ; =4096
	b.hs	LBB1_12
LBB1_15:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_17 Depth 4
                                        ;           Child Loop BB1_19 Depth 5
	mov	x6, #0                          ; =0x0
	mov	x7, x5
	b	LBB1_17
LBB1_16:                                ;   in Loop: Header=BB1_17 Depth=4
	str	d0, [x21]
	add	x6, x6, #1
	add	x7, x7, #8, lsl #12             ; =32768
	cmp	x6, x20
	b.eq	LBB1_14
LBB1_17:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ;       Parent Loop BB1_15 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB1_19 Depth 5
	add	x8, x6, x9
	add	x12, x22, x8, lsl #15
	add	x21, x12, x13, lsl #3
	add	x23, x12, x16, lsl #3
	add	x24, x12, x17, lsl #3
	add	x25, x12, x0, lsl #3
	add	x26, x12, x1, lsl #3
	ldr	d0, [x21]
	add	x27, x12, x2, lsl #3
	mov	x28, x4
	mov	x30, x7
	mov	x8, x20
	add	x12, x12, x3, lsl #3
	b	LBB1_19
LBB1_18:                                ;   in Loop: Header=BB1_19 Depth=5
	ldur	d2, [x28, #-24]
	fmadd	d0, d1, d2, d0
	add	x30, x30, #8
	add	x28, x28, #8, lsl #12           ; =32768
	subs	x8, x8, #1
	b.eq	LBB1_16
LBB1_19:                                ;   Parent Loop BB1_11 Depth=1
                                        ;     Parent Loop BB1_13 Depth=2
                                        ;       Parent Loop BB1_15 Depth=3
                                        ;         Parent Loop BB1_17 Depth=4
                                        ; =>        This Inner Loop Header: Depth=5
	ldr	d1, [x30]
	cmp	w19, #1
	b.eq	LBB1_18
; %bb.20:                               ;   in Loop: Header=BB1_19 Depth=5
	ldur	d2, [x28, #-16]
	ldr	d3, [x23]
	fmadd	d2, d1, d2, d3
	str	d2, [x23]
	cmp	w19, #2
	b.eq	LBB1_18
; %bb.21:                               ;   in Loop: Header=BB1_19 Depth=5
	ldur	d2, [x28, #-8]
	ldr	d3, [x24]
	fmadd	d2, d1, d2, d3
	str	d2, [x24]
	cmp	w19, #3
	b.eq	LBB1_18
; %bb.22:                               ;   in Loop: Header=BB1_19 Depth=5
	ldr	d2, [x28]
	ldr	d3, [x25]
	fmadd	d2, d1, d2, d3
	str	d2, [x25]
	cmp	w19, #4
	b.eq	LBB1_18
; %bb.23:                               ;   in Loop: Header=BB1_19 Depth=5
	ldr	d2, [x28, #8]
	ldr	d3, [x26]
	fmadd	d2, d1, d2, d3
	str	d2, [x26]
	cmp	w19, #5
	b.eq	LBB1_18
; %bb.24:                               ;   in Loop: Header=BB1_19 Depth=5
	ldr	d2, [x28, #16]
	ldr	d3, [x27]
	fmadd	d2, d1, d2, d3
	str	d2, [x27]
	cmp	w19, #6
	b.eq	LBB1_18
; %bb.25:                               ;   in Loop: Header=BB1_19 Depth=5
	ldr	d2, [x28, #24]
	ldr	d3, [x12]
	fmadd	d2, d1, d2, d3
	str	d2, [x12]
	b	LBB1_18
LBB1_26:
	mov	x9, #0                          ; =0x0
	and	x10, x20, #0xfffffff8
	lsl	x11, x20, #3
	lsl	x12, x20, #15
	and	x8, x11, #0x7ffffffc0
Lloh12:
	adrp	x13, _B@GOTPAGE
Lloh13:
	ldr	x13, [x13, _B@GOTPAGEOFF]
	add	x13, x13, x8
	add	x14, x22, x8
	sub	x15, x20, x10
	add	x16, x22, #32
	b	LBB1_28
LBB1_27:                                ;   in Loop: Header=BB1_28 Depth=1
	add	x9, x9, x20
	add	x16, x16, x12
	add	x14, x14, x12
	cmp	x9, #1, lsl #12                 ; =4096
	b.hs	LBB1_41
LBB1_28:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_30 Depth 2
                                        ;       Child Loop BB1_32 Depth 3
                                        ;         Child Loop BB1_34 Depth 4
                                        ;           Child Loop BB1_36 Depth 5
                                        ;             Child Loop BB1_37 Depth 6
                                        ;             Child Loop BB1_40 Depth 6
	mov	x17, #0                         ; =0x0
Lloh14:
	adrp	x8, _B@GOTPAGE
Lloh15:
	ldr	x8, [x8, _B@GOTPAGEOFF]
	add	x0, x8, #32
	mov	x1, x14
	mov	x2, x13
	mov	x3, x16
	b	LBB1_30
LBB1_29:                                ;   in Loop: Header=BB1_30 Depth=2
	add	x17, x17, x20
	add	x0, x0, x11
	add	x3, x3, x11
	add	x2, x2, x11
	add	x1, x1, x11
	cmp	x17, #1, lsl #12                ; =4096
	b.hs	LBB1_27
LBB1_30:                                ;   Parent Loop BB1_28 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_32 Depth 3
                                        ;         Child Loop BB1_34 Depth 4
                                        ;           Child Loop BB1_36 Depth 5
                                        ;             Child Loop BB1_37 Depth 6
                                        ;             Child Loop BB1_40 Depth 6
	mov	x4, #0                          ; =0x0
	mov	x5, x2
	mov	x6, x0
	b	LBB1_32
LBB1_31:                                ;   in Loop: Header=BB1_32 Depth=3
	add	x4, x4, x20
	add	x6, x6, x12
	add	x5, x5, x12
	cmp	x4, #1, lsl #12                 ; =4096
	b.hs	LBB1_29
LBB1_32:                                ;   Parent Loop BB1_28 Depth=1
                                        ;     Parent Loop BB1_30 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_34 Depth 4
                                        ;           Child Loop BB1_36 Depth 5
                                        ;             Child Loop BB1_37 Depth 6
                                        ;             Child Loop BB1_40 Depth 6
	mov	x7, #0                          ; =0x0
	mov	x19, x1
	mov	x22, x3
	b	LBB1_34
LBB1_33:                                ;   in Loop: Header=BB1_34 Depth=4
	add	x7, x7, #1
	add	x22, x22, #8, lsl #12           ; =32768
	add	x19, x19, #8, lsl #12           ; =32768
	cmp	x7, x20
	b.eq	LBB1_31
LBB1_34:                                ;   Parent Loop BB1_28 Depth=1
                                        ;     Parent Loop BB1_30 Depth=2
                                        ;       Parent Loop BB1_32 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB1_36 Depth 5
                                        ;             Child Loop BB1_37 Depth 6
                                        ;             Child Loop BB1_40 Depth 6
	mov	x23, #0                         ; =0x0
	add	x24, x7, x9
	mov	x25, x5
	mov	x26, x6
	b	LBB1_36
LBB1_35:                                ;   in Loop: Header=BB1_36 Depth=5
	add	x23, x23, #1
	add	x26, x26, #8, lsl #12           ; =32768
	add	x25, x25, #8, lsl #12           ; =32768
	cmp	x23, x20
	b.eq	LBB1_33
LBB1_36:                                ;   Parent Loop BB1_28 Depth=1
                                        ;     Parent Loop BB1_30 Depth=2
                                        ;       Parent Loop BB1_32 Depth=3
                                        ;         Parent Loop BB1_34 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB1_37 Depth 6
                                        ;             Child Loop BB1_40 Depth 6
	add	x8, x23, x4
	add	x27, x21, x24, lsl #15
	ldr	d0, [x27, x8, lsl #3]
	dup.2d	v1, v0[0]
	mov	x8, x22
	mov	x27, x26
	mov	x28, x10
LBB1_37:                                ;   Parent Loop BB1_28 Depth=1
                                        ;     Parent Loop BB1_30 Depth=2
                                        ;       Parent Loop BB1_32 Depth=3
                                        ;         Parent Loop BB1_34 Depth=4
                                        ;           Parent Loop BB1_36 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldp	q2, q3, [x27, #-32]
	ldp	q4, q5, [x27], #64
	ldp	q6, q7, [x8, #-32]
	ldp	q16, q17, [x8]
	fmla.2d	v6, v2, v1
	fmla.2d	v7, v3, v1
	fmla.2d	v16, v4, v1
	fmla.2d	v17, v5, v1
	stp	q6, q7, [x8, #-32]
	stp	q16, q17, [x8], #64
	subs	x28, x28, #8
	b.ne	LBB1_37
; %bb.38:                               ;   in Loop: Header=BB1_36 Depth=5
	cmp	x20, x10
	b.eq	LBB1_35
; %bb.39:                               ;   in Loop: Header=BB1_36 Depth=5
	mov	x8, x15
	mov	x27, x19
	mov	x28, x25
LBB1_40:                                ;   Parent Loop BB1_28 Depth=1
                                        ;     Parent Loop BB1_30 Depth=2
                                        ;       Parent Loop BB1_32 Depth=3
                                        ;         Parent Loop BB1_34 Depth=4
                                        ;           Parent Loop BB1_36 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	d1, [x28], #8
	ldr	d2, [x27]
	fmadd	d1, d0, d1, d2
	str	d1, [x27], #8
	subs	x8, x8, #1
	b.ne	LBB1_40
	b	LBB1_35
LBB1_41:
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
Lloh16:
	adrp	x0, l_.str.3@PAGE
Lloh17:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
LBB1_42:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB1_43:
	bl	_main.cold.1
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
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
Lloh18:
	adrp	x0, l___func__.main@PAGE
Lloh19:
	add	x0, x0, l___func__.main@PAGEOFF
Lloh20:
	adrp	x1, l_.str@PAGE
Lloh21:
	add	x1, x1, l_.str@PAGEOFF
Lloh22:
	adrp	x3, l_.str.1@PAGE
Lloh23:
	add	x3, x3, l_.str.1@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	___assert_rtn
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
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
