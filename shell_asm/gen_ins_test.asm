section .data
	sp		dw 0x00FF

section .text
    addi    r1, 5
    addi    r2, 3
    add     r3, r1, r2
    sub     r3, r1, r2
    and     r3, r1, r2
    or      r3, r1, r2
    xor     r3, r1, r2
    nand    r3, r1, r2
	asr		r3, r1
	asl		r3, r1
	addi	r1, 3
	subi	r1, 3
	lui		r1, 63
    hlt 