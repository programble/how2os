
kernel.elf: start.o kernel.o
	i386-none-elf-ld -nostdlib -T link.ld -o $@ $^

start.o: start.asm
	nasm -f elf32 -g -F dwarf -o $@ $<

kernel.o: kernel.c
	clang -target i386-none-elf -ffreestanding -fno-builtin -ggdb -Wall -Wextra -c -o $@ $<

clean:
	rm -f kernel.elf start.o kernel.o

qemu: kernel.elf
	qemu-system-i386 -kernel kernel.elf

.PHONY: clean qemu
