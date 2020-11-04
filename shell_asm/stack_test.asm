section .data
	GPIO	dw 0x0001
	sp	dw 0x00FF
	mask	dw 0xFF00

section .text
	; init stack ptr
	zero r1
	zero r2
	addi	r1, 15
	lsp		r1
	addi	r2, 10
	push	r2
	pop		r1
	hlt
