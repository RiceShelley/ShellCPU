#!/usr/bin/python3
import serial
from time import sleep
import math

def write(value):
        if (value > 255 or value < 0):
            return
        ser.write(bytes((value, )))
        return

def read_mem(addr):
        data = b''
        while (data == b''):
            write(0)
            write(addr)
            data = ser.read()
        return int.from_bytes(data, "little")

def write_prog_mem(addr, upper, lower):
        write(255)
        write(addr)
        write(0)
        write(lower)
        write(upper)
        return

def write_data_mem(addr, upper, lower):
        write(254)
        write(addr)
        write(0)
        write(lower)
        write(upper)
        return

prog_mode_high = 253
prog_mode_low = 252
cpu_clk_en_high = 251
cpu_clk_en_low = 251
pc_rst_high = 249
pc_rst_low = 248

def program_ld_state():
        write(prog_mode_high)
        write(cpu_clk_en_low)
        write(pc_rst_high)
        return

def program_run():
        write(prog_mode_low)
        write(prog_mode_low)
        write(cpu_clk_en_high)
        write(pc_rst_low)
        return

# init FPGA COM's
uin = input("press key to program ")
if uin == "q":
    exit()

ser = serial.Serial('/dev/ttyUSB1', 115200, timeout=.5)
print("FPGA memory interface.")
print("Device name: " + ser.name)
program_ld_state()
max_size = 500
print("MAX PROG SIZE = " + str(max_size))
addr = 0
f = open("prog_text.bin", "r")
for l in f:
    upper = int(l[0:8], 2)
    lower = int(l[8:16], 2)
    write_prog_mem(addr, upper, lower)
    addr += 1
    if addr > max_size:
        break
print("Finished Loading Program.")

addr = 0
f = open("data_mem.bin", "r")
for l in f:
    upper = int(l[0:8], 2)
    lower = int(l[8:16], 2)
    write_data_mem(addr, upper, lower)
    addr += 1
    if addr > max_size:
        break
print("Finished Loading Program Data.")
print("DONE.\n")
program_run()
f.close()
print("Shell CPU > ", end='')
while(1):
    data = ser.read()
    if data == b'\x00':
        print("\n")
        break
    print(data.decode(), end='')
ser.close()
