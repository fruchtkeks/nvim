#!/bin/bash

# Note: The environment variable LNX must be set
# outside of the script.

mkdir -p ~/cscope

# Collect files

find "$LNX" \
	-path "$LNX/arch/*" ! -path "$LNX/arch/i386*" -prune -o \
	-path "$LNX/include/asm-*" ! -path "$LNX/include/asm-i386*" -prune -o \
	-path "$LNX/tmp*" -prune -o \
	-path "$LNX/Documentation*" -prune -o \
	-path "$LNX/scripts*" -prune -o \
	-path "$LNX/drivers*" -prune -o \
	-name "*.[chxsS]" -print > ~/cscope/cscope.files

# Generate cscope database

cd ~/cscope || exit 1

cscope -b -q -k

# Generate ctags

ctags -L cscope.files
