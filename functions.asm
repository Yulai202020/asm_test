section .data
   msg1 db "hi", 0xa
   len_msg1 equ $-msg1
   msg2 db "bye", 0xa
   len_msg2 equ $-msg2

.intel_syntax noprefix
section .bss

section .text
   global _start

print_msg:
   mov ebx, 1
   mov eax, 4
   mov ecx, msg1
   mov edx, len_msg1
   int 80h
   ret

_start:
   ; run function
   call print_msg

   ; print msg2
   mov ebx, 1
   mov eax, 4
   mov ecx, msg2
   mov edx, len_msg2
   int 80h

   ; exit programm
   mov rax, 60
   mov rdi, rax
   syscall