section .data
	GPIO	dw 0x0001
	sp		dw 0x00FF
	mask	dw 0xFF00
	msg		dw "Hello, World!"

section .text
	; init stack ptr
	zero	r1
	movi	r1, 256
	lsp		r1

	; load address of the first char in msg
	zero	r3
	movi	r3, msg
	
	trav_str_loop:
		; put next character from address r3 in r4
		lw		r4, r3
		; push character onto stack for sub routine
		push	r4

		; jump address to sub routine
		zero	r1
		addi	r1, send_byte
		lw		r1, r1
		jalr	r5, r1

		; inc r3 to point to next address in string
		addi	r3, 1
		; if current char is not 0 continue
		cmp		r4, r0
		bne		trav_str_loop

	; write '0' to uart tx buffer
	zero	r1
	movi	r1, 0
	sw		r1, r0

	; write 0xFF00 to uart to transmit
	movi	r1, mask
	lw		r1, r1
	sw		r1, r0

	; halt processor	
	hlt

	send_byte:	
		; write 'A' to uart tx buffer
		zero	r2
		pop		r2
		sw		r2, r0

		; write 0xFF00 to uart to transmit
		movi	r1, mask
		lw		r1, r1
		sw		r1, r0

		; delay
		zero	r2
		movi	r2, 65535
		zero	r1
	_send_byte_loop:
		addi	r1, 1
		cmp		r1, r2
		bne		_send_byte_loop
		jalr	r0, r5

