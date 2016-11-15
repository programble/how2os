MAGIC equ 0x1BADB002
FLAGS equ 0x0
CHECKSUM equ -(MAGIC + FLAGS)

section .mboot
dd MAGIC
dd FLAGS
dd CHECKSUM

section .bss
stack_start: resb 0x1000
stack_end:

section .text
global _start
_start:
    mov esp, stack_end
    hlt
