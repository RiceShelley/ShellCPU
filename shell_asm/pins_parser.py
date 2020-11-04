#!/usr/bin/python3

def check_pseudo(ins):
    if (ins[0] == "zero"):
        ins = [['xor', ins[1], ins[1], ins[1]]]
    elif (ins[0] == "movi"):
        imm = 0
        if ins[2][0] == "'" and ins[2][-1] == "'":
            imm = ord(ins[2][1:-1])
        else:
            imm = int(ins[2])
        if imm > 2**16 - 1:
            print("WARN: movi max size 2^16")
        upper_six = 0
        lower_ten = int(str(format(imm, '016b')[6:]), 2)
        if imm >= 1024:
            upper_six = int(str(format(imm, '016b')[0:6]), 2)
        ins = [['lui', ins[1], upper_six]]
        remander = lower_ten
        while(True):
            if remander > 63:
                ins.append(['addi', ins[0][1], 63])
                remander -= 63
            else:
                ins.append(['addi', ins[0][1], remander])
                break
    else:
        ins = [ins]
    return ins
        
ins_parse = {
        "add",
        "sub",
        "and",
        "or",
        "xor",
        "nand",
        "lw",
        "sw",
        "asr",
        "asl",
        "cmp",
        "jalr",
        "push",
        "pop",
        "lsp",
        "addi",
        "subi",
        "lui",
        "beq",
        "bne",
        "bgt",
        "blt",
        "hlt"
        }

reg_ins = {
        "add",
        "sub",
        "and",
        "or",
        "xor",
        "nand",
        "lw",
        "sw",
        "asr",
        "asl",
        "cmp",
        "jalr",
        "push",
        "pop",
        "lsp",
        "addi",
        "subi",
        "lui",
        "movi",
        "zero"
        }


fn = "tmp/prog.text"
f = open(fn, "r")
fbin_name = fn.split('.')[0] + "_text_raw.asm"
fbin = open(fbin_name, "w")
addr = 0
mem_len = 1024
for l in f:
    raw_ins = l.lower()
    raw_ins = raw_ins.replace(',', ' ')
    raw_ins = raw_ins.split()
    # ; <- ignore comment symbol
    if raw_ins[0] == ';':
        continue
    if raw_ins[0] in reg_ins:
        for i in range(1, len(raw_ins)):
            raw_ins[i] = raw_ins[i].replace('r', ' ')

    list_ins = check_pseudo(raw_ins)

    for ins in list_ins:
        if ins[0] not in ins_parse:
            if ins[0][-1] == ":":
                fbin.write(ins[0] + "\n")
                continue
            else:
                print("Syntax error '" + ins[0] + "'")
                print("Exiting.")
                exit()
        for i in ins:
            fbin.write(str(i).replace(" ", "") + " ")
        fbin.write("\n")
f.close()
fbin.close()
print("pins done.")
