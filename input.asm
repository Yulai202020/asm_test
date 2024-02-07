section .data

section .bss
   num resb 1

section .text
   global _start

_start:
   ; input and write to num variable
   mov eax, 3
   mov ebx, 2
   mov ecx, num
   mov edx, 10 ; max lenght is 10
   int 80h

   ; out of input
   mov ebx, 1
   mov eax, 4
   mov ecx, num
   mov edx, 10 ; max out lenght
   int 80h

   ; exit programm
   mov eax, 1
   int 80h