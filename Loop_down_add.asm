;//121353 Samuel Brian//
section .data
    result db "Sum = ", 0
    newline db 10, 0

section .bss
    sum resw 1

section .text
    global _start
_start:
    mov cx, 25
    xor ax, ax

loop_dec:
    add ax, cx
    dec cx
    cmp cx, 14
    jne loop_dec

    mov [sum], ax

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80