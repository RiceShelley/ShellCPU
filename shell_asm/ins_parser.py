#!/usr/bin/python3

def parse_rrr(ins):
    mn = ins[0]
    rtn = "110"
    if mn == "add":
        rtn += "0000"
    elif mn == "sub":
        rtn += "0001"
    elif mn == "and":
        rtn += "0010"
    elif mn == "or":
        rtn += "0011"
    elif mn == "xor":
        rtn += "0100"
    elif mn == "nand":
        rtn += "0101"
    else:
        return "ERROR"
    rtn += str(format(int(ins[1]), '03b'))
    rtn += str(format(int(ins[2]), '03b'))
    rtn += str(format(int(ins[3]), '03b'))
    return rtn

def parse_rr(ins):
    mn = ins[0]
    rtn = ""
    if mn == "lw":
        rtn = "1010000"
    elif mn == "sw":
        rtn = "1000000"
    elif mn == "asr":
        rtn = "1100110"
    elif mn == "asl":
        rtn = "1100111"
    elif mn == "cmp":
        rtn = "1101010"
    elif mn == "jalr":
        rtn = "0100000"
    else:
        return "ERROR"
    rtn += str(format(int(ins[1]), '03b'))
    rtn += str(format(int(ins[2]), '03b'))
    rtn += "000"
    return rtn

def parse_r(ins):
    mn = ins[0]
    rtn = "111"
    if mn == "push":
        rtn += "0000"
    elif mn == "pop":
        rtn += "0001"
    elif mn == "lsp":
        rtn += "0010"
    else:
        return "ERROR"
    rtn += str(format(int(ins[1]), '03b'))
    rtn += "000000"
    return rtn

def parse_ri(ins):
    mn = ins[0]
    rtn = ""
    if mn == "addi":
        rtn = "1101000"
    elif mn == "subi":
        rtn = "1101001"
    elif mn == "lui":
        rtn = "0110000"
    else:
        return "ERROR"
    rtn += str(format(int(ins[1]), '03b'))
    rtn += str(format(int(ins[2]), '06b'))
    return rtn

def parse_b(ins):
    mn = ins[0]
    rtn = "001"
    if mn == "beq":
        rtn += "00"
    elif mn == "bne":
        rtn += "01"
    elif mn == "bgt":
        rtn += "10"
    elif mn == "blt":
        rtn += "11"
    else:
        return "ERROR"
    if int(ins[1]) < 0:
        ins[1] = str(~int(ins[1]) + 1)
        s = ""
        for c in format(int(ins[1]), '011b'):
            if c == "0":
                s += "1"
            else:
                s += "0"
        rtn += str(format(int(s, 2) + 1, '011b'))
    else:
        rtn += str(format(int(ins[1]), '011b'))
    return rtn

def parse_s(ins):
    mn = ins[0]
    rtn = "000"
    if mn == "hlt":
        rtn += str(format(0, '013b'))
    else:
        return "ERROR"
    return rtn

def check_pseudo(ins):
    if (ins[0] == "zero"):
        ins = [['xor', ins[1], ins[1], ins[1]]]
    elif (ins[0] == "movi"):
        imm = int(ins[2])
        if imm > 2**16 - 1:
            print("WARN: movi max size 2^16")
        upper_six = 0
        lower_ten = int(str(format(imm, '016b')[6:]), 2)
        if imm >= 1024:
            upper_six = int(str(format(imm, '016b')[0:6]), 2)
        ins = [['lui', ins[1], upper_six]];
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
        "add" : parse_rrr,
        "sub" : parse_rrr,
        "and" : parse_rrr,
        "or" : parse_rrr,
        "xor" : parse_rrr,
        "nand" : parse_rrr,
        "lw" : parse_rr,
        "sw" : parse_rr,
        "asr" : parse_rr,
        "asl" : parse_rr,
        "cmp" : parse_rr,
        "jalr" : parse_rr,
        "push" : parse_r,
        "pop" : parse_r,
        "lsp" : parse_r,
        "addi" : parse_ri,
        "subi" : parse_ri,
        "lui" : parse_ri,
        "beq" : parse_b,
        "bne" : parse_b,
        "bgt" : parse_b,
        "blt" : parse_b,
        "hlt" : parse_s
        }

fn = "tmp/prog.text"
f = open(fn, "r")
fbin_name = fn.split('.')[0] + "_text.bin"
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
    for i in range(1, len(raw_ins)):
        raw_ins[i] = raw_ins[i].replace('r', ' ')

    list_ins = check_pseudo(raw_ins)

    for ins in list_ins:
        if ins[0] not in ins_parse:
            print("Syntax error '" + ins[0] + "'");
            print("Exiting.")
            exit()
        m_ins = ins_parse[ins[0]](ins)
        if (m_ins == "ERROR"):
            print("ins parse error.")
            f.close()
            fbin.close()
            exit()
        fbin.write(m_ins + "\n")
        addr += 1

print("prog len " + str(addr))

while addr < mem_len:
    fbin.write(str(format(0, '016b')) + "\n");
    addr += 1

print("Generated Machine Code.")

f.close()
fbin.close()
