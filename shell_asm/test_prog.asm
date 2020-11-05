section .data
	sp		dw 0x00FF
	mask	dw 0x00FF

section .text
	zero	r1
	zero	r2
	
	; values to mul
	movi	r1, 4
	movi	r2, 3
	
	; jump to mul sub routine
	zero	r4
	addi	r4, mul
	lw		r4, r4
	jalr	r5, r4

	; exit program	
	hlt

	; r1 * r2 -> r1	
	mul:
		zero	r3
		add		r3, r3, r1
		zero	r1
		_mul_loop:
			cmp		r0, r2
			beq		exit
			add		r1, r1, r3
			subi	r2, 1
			cmp		r0, r0
			beq		_mul_loop
		exit:
			jalr	r0, r5

