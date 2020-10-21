section .data
	GPIO	dw 0x0001
	sp	dw 0x7FFF
	my_var	dw 0xCAFE

section .text
	; init stack ptr
	; movi	r1, sp
	; lw	r1, r1
	; lsp	r1

	; count to max val
	; zero	r2
	; zero	r1
	; movi	r3, 65535

	; addi	r1, 1
	; sw	r1, r0
	; cmp	r1, r3
	; bne	2
	; addi	r4, 1
	; cmp	r0, r2
	; beq	-6

	hlt
	add	r1, r2, r3
	sub	r1, r2, r3
	and	r2, r2, r3
	or	r1, r2, r3
	xor	r1, r2, r3
	nand	r1, r2, r3
	lw	r1, r2
	sw	r1, r2
	asr	r1, r2
	asl	r1, r2
	cmp	r1, r2
	jalr	r1, r2
	push	r1
	pop r1
	lsp r1
	addi	r1, 5
	subi	r1, 5
	lui	r1, 5
	beq	5
	bne	5
	bgt	5
	blt	5
