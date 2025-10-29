;121353 Samuel Brian//
section .text
    global factorial

factorial:
    ; input: n in edi
    ; output: result in eax
    mov eax, 1
    cmp edi, 1
    jbe .done

.loop:
    imul eax, edi
    dec edi
    cmp edi, 1
    jae .loop

.done:
    ret