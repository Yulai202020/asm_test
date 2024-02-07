nasm -felf32 $1.asm 
ld -melf_i386 -o $1 $1.o