lui 1 0 
addi 1 0 
lw 1 1 
lsp 1 
xor 1 1 1 
xor 2 2 2 
lui 1 0 
addi 1 1 
lw 1 1 
lui 2 0 
addi 2 2 
lw 2 2 
push 1 
push 2 
xor 4 4 4 
addi 4 mul 
lw 4 4 
jalr 5 4 
pop 1 
lui 2 0 
addi 2 3 
sw 1 2 
hlt 
mul:
pop 1 
pop 2 
xor 3 3 3 
add 3 3 1 
xor 1 1 1 
_mul_loop:
cmp 0 2 
beq exit 
add 1 1 3 
subi 2 1 
cmp 0 0 
beq _mul_loop 
exit:
push 1 
jalr 0 5 
