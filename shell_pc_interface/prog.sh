#!/bin/bash
cd ../shell_asm && ./compile.sh
cd ../shell_pc_interface
cp ../shell_asm/tmp/prog_text.bin .
cp ../shell_asm/tmp/data_mem.bin .
./read.py
