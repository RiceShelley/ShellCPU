#!/bin/bash
echo "SECTION:"
./sec_parser.py
echo ""
echo "DATA:"
./data_parser.py
echo ""
echo "TEXT:"
./pins_parser.py
./ins_parser.py
