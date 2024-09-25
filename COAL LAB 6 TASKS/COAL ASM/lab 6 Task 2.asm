.model small
.stack 100h
.data

array db 5, 10, 15, 20
array_length db 4
result db 'Sum: ', 0
sum db 0

.code
main proc
    mov ax, @data
    mov ds, ax

    xor al, al
    mov cl, array_length
    lea si, array

add_elements:
    add al, [si]
    inc si
    loop add_elements

    mov sum, al

    lea dx, result
    mov ah, 09h
    int 21h

    add al, '0'
    mov dl, al
    mov ah, 2
    int 21h

    mov ax, 4C00h
    int 21h
main endp
end main
