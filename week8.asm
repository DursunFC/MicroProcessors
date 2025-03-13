.model small

.data
ARRAY DB 'Hello world'

.code

main proc
     mov cx,0
     mov ax,@data
     mov ds,ax
     mov es,ax 
     mov di, OFFSET ARRAY
     
     mov dx,0
     mov ax,0
s1:  mov bl,[di]
     inc di
     inc dl 
     cmp bl,0
     jnz s1
     dec dl
      

quit:    hlt
endp
end main