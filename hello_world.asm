; Sections:
section .data
  hello: db "Hello "
  ending: db "!", 10

section .bss
  input resb 16

section .text
  global _start
_start:
  mov rax, 0
  mov rdi, 0
  mov rsi, input
  mov rdx, 16
  syscall

  mov rax, 1
  mov rdi, 1
  mov rsi, hello
  mov rdx, 6
  syscall

  mov rax, 1
  mov rdi, 1
  mov rsi, input
  mov rdx, 16
  syscall

  mov rax, 1
  mov rdi, 1
  mov rsi, ending
  mov rdx, 2
  syscall
  
  mov rax, 60
  mov rdi, 0
  syscall
; Functions:
