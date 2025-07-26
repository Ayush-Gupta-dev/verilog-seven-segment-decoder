#!/bin/bash
echo "Compiling..."
iverilog -o out src/seven_segment.v testbench/seven_segment_tb.v

echo "Running simulation..."
vvp out

echo "Opening GTKWave..."
gtkwave dump.vcd
