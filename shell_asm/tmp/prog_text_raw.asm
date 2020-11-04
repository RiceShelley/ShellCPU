xor 1 1 1 
lui 1 0 
addi 1 63 
addi 1 63 
addi 1 63 
addi 1 63 
addi 1 4 
lsp 1 
xor 3 3 3 
lui 3 0 
addi 3 3 
trav_str_loop:
lw 4 3 
push 4 
xor 1 1 1 
addi 1 send_byte 
lw 1 1 
jalr 5 1 
addi 3 1 
cmp 4 0 
bne trav_str_loop 
xor 1 1 1 
lui 1 0 
addi 1 0 
sw 1 0 
lui 1 0 
addi 1 2 
lw 1 1 
sw 1 0 
hlt 
send_byte:
xor 2 2 2 
pop 2 
sw 2 0 
lui 1 0 
addi 1 2 
lw 1 1 
sw 1 0 
xor 2 2 2 
lui 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 63 
addi 2 15 
xor 1 1 1 
_send_byte_loop:
addi 1 1 
cmp 1 2 
bne _send_byte_loop 
jalr 0 5 
