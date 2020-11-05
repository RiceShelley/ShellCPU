section .data
	sp		dw 0x00FF

section .text
	addi r1, 1
	jalr r3, r0
	hlt
