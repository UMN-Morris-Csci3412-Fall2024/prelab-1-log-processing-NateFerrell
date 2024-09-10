#!/bin/bash

# Regex for r0_input.txt
sed -n -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/p' r0_input.txt > r0_output.txt

# Regex for r1_input.txt
sed -n -E 's/\* I am ([a-zA-Z]+). My favorite sandwich is ([a-zA-Z]+)./1. \1\n2. \2\n/p' r1_input.txt > r1_output.txt

# Regex for r2_input.txt
awk -F' with |. for |. to ' 'BEGIN {OFS = "\n"} {print "1. " $2, "2. " $3 "\n"}' r2_input.txt > r2_output.txt