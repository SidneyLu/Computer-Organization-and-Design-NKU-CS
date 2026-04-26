	.arch armv8.6-a+crc+sve2
	.file	"armv9_sve2_benchmark.c"
	.text
	.align	2
	.p2align 4,,11
	.type	init_vectors, %function
init_vectors:
.LFB2:
	.cfi_startproc
	adrp	x0, .LANCHOR0
	adrp	x4, .LANCHOR1
	add	x4, x4, :lo12:.LANCHOR1
	add	x1, x0, :lo12:.LANCHOR0
	add	x5, x4, 32
	mov	w7, 1
	str	w7, [x0, #:lo12:.LANCHOR0]
	mov	x0, 0
	add	x3, x1, 4
	add	x2, x1, 1028
	mov	w6, 8
	index	z1.s, #1, #1
	str	w6, [x1, 1024]
	mov	w1, 255
	whilelo	p0.s, wzr, w1
	.p2align 3,,7
.L2:
	mov	z0.d, z1.d
	and	z0.s, z0.s, #0x7
	ld1w	z2.s, p0/z, [x4, z0.s, sxtw 2]
	ld1w	z0.s, p0/z, [x5, z0.s, sxtw 2]
	st1w	z2.s, p0, [x3, x0, lsl 2]
	st1w	z0.s, p0, [x2, x0, lsl 2]
	incw	z1.s
	incw	x0
	whilelo	p0.s, w0, w1
	b.any	.L2
	ret
	.cfi_endproc
.LFE2:
	.size	init_vectors, .-init_vectors
	.align	2
	.p2align 4,,11
	.type	dot_sve2.constprop.0, %function
dot_sve2.constprop.0:
.LFB5:
	.cfi_startproc
	adrp	x3, .LANCHOR0
	add	x3, x3, :lo12:.LANCHOR0
	add	x5, x3, 1024
	mov	w0, 0
	mov	w4, 256
	mov	z0.b, #0
	.p2align 3,,7
.L6:
	whilelt	p0.s, w0, w4
	sbfiz	x1, x0, 2, 32
	incw	x0
	add	x2, x3, x1
	add	x1, x5, x1
	ld1w	z2.s, p0/z, [x2]
	ld1w	z1.s, p0/z, [x1]
	mla	z0.s, p0/m, z2.s, z1.s
	cmp	w0, 255
	ble	.L6
	ptrue	p0.b, all
	saddv	d0, p0, z0.s
	fmov	x0, d0
	ret
	.cfi_endproc
.LFE5:
	.size	dot_sve2.constprop.0, .-dot_sve2.constprop.0
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,11
	.global	main
	.type	main, %function
main:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	w8, 20000
	mov	x9, 0
	mov	x29, sp
	bl	init_vectors
	.p2align 3,,7
.L9:
	bl	dot_sve2.constprop.0
	add	x9, x9, w0, sxtw
	subs	w8, w8, #1
	bne	.L9
	mov	x0, 57344
	movk	x0, 0x493, lsl 16
	cmp	x9, x0
	cset	w0, ne
	ldp	x29, x30, [sp], 16
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR1,. + 0
	.type	q_base.1, %object
	.size	q_base.1, 32
q_base.1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.type	k_base.0, %object
	.size	k_base.0, 32
k_base.0:
	.word	8
	.word	7
	.word	6
	.word	5
	.word	4
	.word	3
	.word	2
	.word	1
	.bss
	.align	3
	.set	.LANCHOR0,. + 0
	.type	q_vec, %object
	.size	q_vec, 1024
q_vec:
	.zero	1024
	.type	k_vec, %object
	.size	k_vec, 1024
k_vec:
	.zero	1024
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.3) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
