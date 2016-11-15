kernel.elf: start.o
	i386-none-elf-ld -nostdlib -T link.ld -o $@ $^

start.o: start.asm
	nasm -f elf32 -g -F dwarf -o $@ $<

clean:
	rm -f kernel.elf start.o

qemu: kernel.elf
	qemu-system-i386 -kernel kernel.elf

.PHONY: clean qemu
