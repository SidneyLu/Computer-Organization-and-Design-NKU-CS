	.arch armv8.6-a+crc+sve2
	.file	"armv9_sve2_demo.c"
	.text
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"%d\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB26:
	.cfi_startproc
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	adrp	x1, .LANCHOR0
	add	x1, x1, :lo12:.LANCHOR0
	adrp	x2, :got:__stack_chk_guard
	add	x4, sp, 8
	add	x3, sp, 40
	stp	x29, x30, [sp, 80]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 80
	mov	w0, 0
	mov	z0.b, #0
	ldp	q3, q4, [x1]
	mov	w5, 8
	ldp	q1, q2, [x1, 32]
	ldr	x1, [x2, #:got_lo12:__stack_chk_guard]
	ldr	x2, [x1]
	str	x2, [sp, 72]
	mov	x2, 0
	stp	q3, q4, [x4]
	stp	q1, q2, [x3]
	.p2align 3,,7
.L2:
	whilelt	p0.s, w0, w5
	sbfiz	x1, x0, 2, 32
	incw	x0
	add	x2, x4, x1
	add	x1, x3, x1
	ld1w	z2.s, p0/z, [x2]
	ld1w	z1.s, p0/z, [x1]
	mla	z0.s, p0/m, z2.s, z1.s
	cmp	w0, 7
	ble	.L2
	ptrue	p0.b, all
	saddv	d0, p0, z0.s
	fmov	x2, d0
	adrp	x1, .LC2
	mov	w0, 1
	add	x1, x1, :lo12:.LC2
	bl	__printf_chk
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 72]
	ldr	x1, [x0]
	subs	x2, x2, x1
	mov	x1, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp, 80]
	add	sp, sp, 96
	.cfi_remember_state
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
.L7:
	.cfi_restore_state
	bl	__stack_chk_fail
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
.LC1:
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
