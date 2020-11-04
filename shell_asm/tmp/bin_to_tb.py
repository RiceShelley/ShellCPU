#!/usr/bin/python3
f = open("prog_text.bin", "r")
last_ins = ""
addr = 0
for l in f:
    if l == "0000000000000000\n":
        if l == last_ins:
            break
    print("mem(" + str(addr) + ") <= \"" + l.replace("\n", "") + "\";")
    addr += 1
    last_ins = l
f.close()
