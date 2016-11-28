
section .text
extern kmain
global _start
_start:
    call kmain
    hlt
