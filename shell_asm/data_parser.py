#!/usr/bin/python3
import fileinput

fn = "tmp/prog.data"
text_fn = "tmp/prog.text"

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

for raw_line in f:
    l = raw_line.lower().split()
    mdt.write(l[0] + " \t\t")
    mdt.write("0x" + str(format(addr, '04x')) + "\n")
    if l[1] == "dw":
        if l[2][0:2] == "0x":
            data_mem.write(str(format(int(l[2], 16), '016b')) + "\n")
        elif l[2][0:2] == "0b":
            data_mem.write(str(format(int(l[2], 2), '016b')) + "\n")
        elif l[2][0] == "\"":
            s = raw_line.split("\"")[1]
            replace_all_var_refs(l[0], addr)
            for c in s:
                data_mem.write(str(format(ord(c), '016b')) + "\n")
                addr += 1
            # Null terminate string
            data_mem.write(str(format(0, '016b')) + "\n")
            addr += 1
            continue
        else:
            data_mem.write(str(format(int(l[2]), '016b')) + "\n")
        replace_all_var_refs(l[0], addr)
        addr += 1

f.close()
mdt.close()
data_mem.close()
print("data parse done.")
