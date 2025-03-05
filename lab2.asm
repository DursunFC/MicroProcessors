.model small

.data

.code

main proc
    
    mov ax,0ffffh
    mov bx,2222h
    mov cx,01h
    mov dx,0eeeeh
    add ax,cx
    adc bx,dx
        
endp
end main