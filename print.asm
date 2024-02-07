section .data
   msg db "text", 0xa
   len_msg equ $-msg

section .bss

section .text
   global _start

_start:
   ; print msg
   mov ebx, 1
   mov eax, 4
   mov ecx, msg
   mov edx, 10
   int 80h

   ; exit programm
   mov eax, 1
   int 80h