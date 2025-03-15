.model small

.data
 NUMBERS  DB  5,4,1,7,8,2

.code

main proc
mov cx,0
mov ax,@data
mov ds,ax
mov di,OFFSET NUMBERS    
mov ax,0
       
sum:add al,[di]   
    inc di
    cmp [di],0
    jnz sum
    mov [di+1],di
    mov [di+2],al
avr:div al,[di+1]
    mov [di+3],al
    
mov bx,di
sub bl,[di+1]
mov di,bx
          
    mov bx,0
max:inc di
    cmp [di],0
    jz ex1
    cmp bh,[di]
    jns max
    mov bh,[di]
    jmp max

ex1:
mov [di+4],bh
mov bx,di
sub bl,[di+1]
mov di,bx
 
    mov bh,[di]
min:inc di
    cmp [di],0
    jz ex2
    cmp bh,[di]
    js min
    mov bh,[di]
    jmp min
                
ex2:
mov [di+5],bh
mov bx,di
sub bl,[di+1]
mov di,bx
         
        mov bx,0
evn:    inc cl
evenNum:inc di
        cmp [di],0
        jz ex3
        mov bl,[di]
        shr bl,1
        jnc evn
        jmp evenNum
ex3:    dec cl
        mov [di+6],cl
    
QUIT: hlt
endp 
end main