.global multiboot_main
.global _start

.section .multiboot_header

.align 4
header_start:
    .long 0x1BADB002
    .long 0
    .long -(0x1BADB002 + 0)
header_end:

.section .text

.global stack_end
.global stack_begin

.extern main

_start:
    cli
    mov %esp, stack_end
    push %ebx
    push %eax
    call main
    jmp _halt

_halt:
    hlt
    jmp _halt

stack_begin:
    .skip 0x2000
stack_end:
