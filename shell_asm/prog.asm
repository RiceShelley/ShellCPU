section .data
	sp		dw 0x00FF
	num1	dw 6
	num2	dw 7
	ans		dw 0

section .text
	; set stack pointer
	movi	r1, sp
	lw		r1, r1
	lsp		r1

	zero	r1
	zero	r2
	
	; Load values to multiply from memory
	movi	r1, num1
	lw		r1, r1

	movi	r2, num2
	lw		r2, r2
	
	; put params on stack
	push	r1
	push	r2

	; jump to mul sub routine
	zero	r4
	addi	r4, mul
	lw		r4, r4
	jalr	r5, r4

	; pop multiplication result off stack
	pop		r1

	; store multiplication result in memory
	movi	r2, ans
	sw		r1, r2

	; exit program	
	hlt

	; @params two 16-bit numbers on stack
	; @return 16-bit result on stack
	mul:
		pop		r1
		pop		r2
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
			push	r1
			jalr	r0, r5