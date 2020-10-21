#!/usr/bin/python3
f = open("prog_text.bin", "r")
for l in f:
    print(hex(int(l, 2)))
f.close()
