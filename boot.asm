mov ah, 0x0e
mov al, 64


lower:
    add al, 32
    inc al
    int 0x10
    jmp upper

upper:
    sub al, 32
    inc al
    int 0x10
    cmp al, 90
    je $
    jmp lower




times 510-($-$$) db 0
db 0x55, 0xaa