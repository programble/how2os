
section .bss
stack_start: resb 0x1000
stack_end:

section .text
extern kmain
global _start
_start:
    mov esp, stack_end
    call kmain
    hlt
