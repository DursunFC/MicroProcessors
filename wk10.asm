.model small

.data
    row		db	0           ;Create a label and initialize
    column	db	0           ;Create a label and initialize
    char    db  ?           ;Create a label

.code

main proc
    mov     ax, @data
    mov     ds, ax
    
    call    read 
    mov char,al 
    mov cx,5 
    for_i:              
        mov bx,5
        for_k:             
            call    cursor
            call    display
            inc     row    
            dec     bx
        jnz for_k 
        inc column
        sub row,4
        call cursor   
    loop for_i       
    mov ah,0
    int 21h                 ;0-Program terminate   

QUIT:	RET
        
endp
display proc                ;write
        mov dl,char
        mov ah,2
        int 21h             ;2-Character input with echo
        ret
display endp

read    proc
        mov ah,1
        int 21h             ;1-Character input with echo
        ret
read    endp

cursor proc
        mov ah,02h
        mov bh,00h     
        mov dl,column   
        mov dh,row       
        int 10h
        ret
cursor endp


end main