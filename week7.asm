.model small

.data
DATA1   DB  ?
DATA2   DB 'ABCDEFGHIJKLMONPRTSQWXZ'
       
.code

main proc
     mov cx,0 
     mov cl,26
     mov ax,@DATA
     mov ds,ax
     mov es,ax
     mov di,OFFSET DATA2
sc1: 
     mov bl,[di]
     or bl,20h
     mov [di],bl
     inc di
     dec cl
     jnz sc1

    
    hlt
endp
end main