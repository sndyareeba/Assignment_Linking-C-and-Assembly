;//121353 Samuel Brian//
section .data
    result db "Sum = ", 0
    newline db 10, 0

section .bss
    sum resw 1

section .text
    global _start
_start:
    mov cx, 15      ; start
    xor ax, ax      ; accumulator = 0

loop_start:
    add ax, cx
    inc cx
    cmp cx, 26
    jne loop_start

    ; stores the result in sum
    mov [sum], ax

    ; exit
    mov eax, 1
    xor ebx, ebx
    int 0x80