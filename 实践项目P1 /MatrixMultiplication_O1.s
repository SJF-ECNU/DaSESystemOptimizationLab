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
	sub	sp, sp, #144
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
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
	.cfi_offset b8, -88
	.cfi_offset b9, -96
	cmp	w0, #2
	b.ne	LBB1_22
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
	b	LBB1_21
LBB1_3:
	mov	x19, x0
	mov	x21, #0                         ; =0x0
Lloh2:
	adrp	x20, _A@GOTPAGE
Lloh3:
	ldr	x20, [x20, _A@GOTPAGEOFF]
Lloh4:
	adrp	x22, _B@GOTPAGE
Lloh5:
	ldr	x22, [x22, _B@GOTPAGEOFF]
Lloh6:
	adrp	x23, _C@GOTPAGE
Lloh7:
	ldr	x23, [x23, _C@GOTPAGEOFF]
	mov	x24, #281474972516352           ; =0xffffffc00000
	movk	x24, #16863, lsl #48
	mov	x25, x20
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_5 Depth 2
	mov	x26, #0                         ; =0x0
LBB1_5:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	bl	_rand
	scvtf	d0, w0
	fmov	d8, x24
	fdiv	d0, d0, d8
	str	d0, [x25, x26]
	bl	_rand
	scvtf	d0, w0
	fdiv	d0, d0, d8
	str	d0, [x22, x26]
	str	xzr, [x23, x26]
	add	x26, x26, #8
	cmp	x26, #8, lsl #12                ; =32768
	b.ne	LBB1_5
; %bb.6:                                ;   in Loop: Header=BB1_4 Depth=1
	add	x21, x21, #1
	add	x25, x25, #8, lsl #12           ; =32768
	add	x22, x22, #8, lsl #12           ; =32768
	add	x23, x23, #8, lsl #12           ; =32768
	cmp	x21, #1, lsl #12                ; =4096
	b.ne	LBB1_4
; %bb.7:
	add	x0, sp, #32
	mov	x1, #0                          ; =0x0
	bl	_gettimeofday
	mov	x8, #0                          ; =0x0
	sxtw	x9, w19
	sbfiz	x10, x19, #3, #32
	sbfiz	x11, x19, #15, #32
Lloh8:
	adrp	x12, _C@GOTPAGE
Lloh9:
	ldr	x12, [x12, _C@GOTPAGEOFF]
Lloh10:
	adrp	x13, _B@GOTPAGE
Lloh11:
	ldr	x13, [x13, _B@GOTPAGEOFF]
	mov	w14, w19
	b	LBB1_9
LBB1_8:                                 ;   in Loop: Header=BB1_9 Depth=1
	add	x8, x8, x9
	add	x12, x12, x11
	cmp	x8, #1, lsl #12                 ; =4096
	b.ge	LBB1_20
LBB1_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_11 Depth 2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;         Child Loop BB1_15 Depth 4
                                        ;           Child Loop BB1_16 Depth 5
                                        ;             Child Loop BB1_17 Depth 6
	mov	x15, #0                         ; =0x0
	mov	x16, x12
	mov	x17, x13
	b	LBB1_11
LBB1_10:                                ;   in Loop: Header=BB1_11 Depth=2
	add	x15, x15, x9
	add	x17, x17, x10
	add	x16, x16, x10
	cmp	x15, #1, lsl #12                ; =4096
	b.ge	LBB1_8
LBB1_11:                                ;   Parent Loop BB1_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_13 Depth 3
                                        ;         Child Loop BB1_15 Depth 4
                                        ;           Child Loop BB1_16 Depth 5
                                        ;             Child Loop BB1_17 Depth 6
	mov	x0, #0                          ; =0x0
	mov	x1, x17
	b	LBB1_13
LBB1_12:                                ;   in Loop: Header=BB1_13 Depth=3
	add	x0, x0, x9
	add	x1, x1, x11
	cmp	x0, #1, lsl #12                 ; =4096
	b.ge	LBB1_10
LBB1_13:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB1_15 Depth 4
                                        ;           Child Loop BB1_16 Depth 5
                                        ;             Child Loop BB1_17 Depth 6
	cmp	w19, #1
	b.lt	LBB1_12
; %bb.14:                               ;   in Loop: Header=BB1_13 Depth=3
	mov	x2, #0                          ; =0x0
	mov	x3, x16
LBB1_15:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB1_16 Depth 5
                                        ;             Child Loop BB1_17 Depth 6
	mov	x4, #0                          ; =0x0
	add	x5, x2, x8
	mov	x6, x1
LBB1_16:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ;         Parent Loop BB1_15 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB1_17 Depth 6
	add	x7, x4, x0
	add	x21, x20, x5, lsl #15
	ldr	d0, [x21, x7, lsl #3]
	mov	x7, x14
	mov	x21, x3
	mov	x22, x6
LBB1_17:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_11 Depth=2
                                        ;       Parent Loop BB1_13 Depth=3
                                        ;         Parent Loop BB1_15 Depth=4
                                        ;           Parent Loop BB1_16 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	d1, [x22], #8
	ldr	d2, [x21]
	fmadd	d1, d0, d1, d2
	str	d1, [x21], #8
	subs	x7, x7, #1
	b.ne	LBB1_17
; %bb.18:                               ;   in Loop: Header=BB1_16 Depth=5
	add	x4, x4, #1
	add	x6, x6, #8, lsl #12             ; =32768
	cmp	x4, x14
	b.ne	LBB1_16
; %bb.19:                               ;   in Loop: Header=BB1_15 Depth=4
	add	x2, x2, #1
	add	x3, x3, #8, lsl #12             ; =32768
	cmp	x2, x14
	b.ne	LBB1_15
	b	LBB1_12
LBB1_20:
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
Lloh12:
	adrp	x0, l_.str.3@PAGE
Lloh13:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	mov	w0, #0                          ; =0x0
LBB1_21:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB1_22:
	bl	_main.cold.1
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpLdrGot	Lloh8, Lloh9
	.loh AdrpAdd	Lloh12, Lloh13
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
Lloh14:
	adrp	x0, l___func__.main@PAGE
Lloh15:
	add	x0, x0, l___func__.main@PAGEOFF
Lloh16:
	adrp	x1, l_.str@PAGE
Lloh17:
	add	x1, x1, l_.str@PAGEOFF
Lloh18:
	adrp	x3, l_.str.1@PAGE
Lloh19:
	add	x3, x3, l_.str.1@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	___assert_rtn
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
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
