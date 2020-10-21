#!/usr/bin/python3

file_name = "prog.asm"
fi = open(file_name, "r")
fw = False
for l in fi:
    if (len(l.split()) > 0 and l.split()[0] == "section"):
        if fw != False:
            fw.close()
        fn = "tmp/" + file_name.split('.')[0]
        fn += l.split()[1]
        fw = open(fn, "w")
    else:
        if fw != False and len(l.split()) > 0:
            # remove unwanted white space and tabs
            l.replace('\t', '')
            l = l.split()
            new_l = l[0]
            for i in range(1, len(l)):
                new_l += " " + l[i]
            new_l += "\n"
            fw.write(new_l)
fi.close()
fw.close()
print("Section Parser Done.")
