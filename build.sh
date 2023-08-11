#!/bin/sh
gcc -O0 -ffreestanding -nostdlib -m32 -c src/boot.s -o bin/boot.o 
gcc -O0 -ffreestanding -nostdlib -m32 -c src/main.c -o bin/main.o 

mkdir -p iso_dir

ld -nostdlib -static -melf_i386 -T src/link.ld -o iso_dir/kernel.elf bin/boot.o bin/main.o