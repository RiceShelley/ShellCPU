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

fn = "tmp/prog_text_raw.asm"
f = open(fn, "r")
fbin_name = "tmp/prog_text.bin"
fbin = open(fbin_name, "w")
addr = 0
mem_len = 1024

# find next data mem address available
dmem = open("tmp/data_mem.bin", "r")
cur_data_mem_addr = 0
for l in dmem:
    cur_data_mem_addr += 1
dmem = open("tmp/data_mem.bin", "a")

# generate label table
label_table = []
for l in f:
    ins = l.split()
    if ins[0] not in ins_parse:
        if ins[0][-1] == ":":
            label_table.append([ins[0][:-1], addr])
            continue
    addr += 1

print(label_table)

f.seek(0)
addr = 0
for l in f:
    # ignore labels
    if l.split()[0][-1] == ":":
        continue
    for label in label_table:
        if label[0] in l.split():
            if l.split()[0][0] == "b":
                l = l.replace(label[0], str(label[1] - addr))
            else:
                # append address to data memory
                if len(label) == 2:
                    label.append(cur_data_mem_addr)
                    dmem.write(str(format(int(label[1]), '016b')) + "\n")
                l = l.replace(label[0], str(label[2]))
                cur_data_mem_addr += 1
            print(l)

    ins = l.split()
    if ins[0] not in ins_parse:
        print("Syntax error '" + ins[0] + "'")
        print("Exiting.")
        exit()

    m_ins = ins_parse[ins[0]](ins)
    if (m_ins == "ERROR"):
        print("ins parse error.")
        f.close()
        fbin.close()
        dmem.close()
        exit()
    fbin.write(m_ins + "\n")
    addr += 1

print("prog len " + str(addr))

while addr < mem_len:
    fbin.write(str(format(0, '016b')) + "\n")
    addr += 1

while cur_data_mem_addr < mem_len:
    dmem.write(str(format(0, '016b')) + "\n")
    cur_data_mem_addr += 1


print("Generated Machine Code.")

dmem.close()
f.close()
fbin.close()
