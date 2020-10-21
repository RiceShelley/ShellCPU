section .data
	GPIO	dw 0x0001
	sp	dw 0x7FFF
	my_var	dw 0xCAFE

section .text
	; init stack ptr
	movi	r1, sp
	lw	r1, r1
	lsp	r1

	; count to max val
	zero	r2
	zero	r1
	movi	r3, 65535

	addi	r1, 1
	sw	r1, r0
	cmp	r1, r3
	bne	2
	addi	r4, 1
	cmp	r0, r2
	beq	-6
