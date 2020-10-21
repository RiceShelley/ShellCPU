#!/usr/bin/python3
import fileinput

fn = "tmp/prog.data"
text_fn = "tmp/prog.text"
mem_size = 1024

f = open(fn, "r")
mdt = open("tmp/data_label_addr_table", "w")
data_mem = open("tmp/data_mem.bin", "w")
addr = 0

def replace_all_var_refs(name, addr):
    pt = open(text_fn, "rt")
    data = pt.read()
    data = data.replace(" " + name, str(addr))
    data = data.replace("," + name, "," + str(addr))
    pt.close()
    pt = open(text_fn, "wt")
    pt.write(data)
    pt.close()

for l in f:
    l = l.lower().split()
    mdt.write(l[0] + " \t\t")
    mdt.write("0x" + str(format(addr, '04x')) + "\n")
    if l[1] == "dw":
        if l[2][0:2] == "0x":
            data_mem.write(str(format(int(l[2], 16), '016b')) + "\n")
        elif l[2][0:2] == "0b":
            data_mem.write(str(format(int(l[2], 2), '016b')) + "\n")
        else:
            data_mem.write(str(format(int(l[2]), '016b')) + "\n")
        replace_all_var_refs(l[0], addr)
        addr += 1

print("memory used " + str(addr) + " words or " + str(format((addr / mem_size) * 100, '.2f')) + "%")

while addr < mem_size:
    data_mem.write(str(format(0, '016b')) + "\n")
    addr += 1

f.close()
mdt.close()
data_mem.close()
