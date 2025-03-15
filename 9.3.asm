.model small

.data
Number DB 21,42,5,17,8,9,51,12,32,3
.code

main proc
mov cx,0
mov ax,@data 
mov ds,ax
mov di,OFFSET Number

lenght:inc di   
       cmp [di],0
       jnz lenght
       mov [di+1],di ;lenght of array     
mov bx,di
sub bl,[di+1]
mov di,0
  
    mov ax,0
sum:add al,[di]
    inc di   
    cmp [di],0
    jnz sum 
    mov [di+2],al  ;sum of array
avr:div al,[di+1]
    mov [di+3],al  ;average of array
    mov ax,di
int 0    
return1:inc ch    
dist:
     inc cl
     dec ax
     mov di,ax
     
     cmp [di],0
     jz ex1 
     mov bl,[di]
     add dl,cl
     add dl,0x3
     add dx,di
     mov ax,di
     mov di,dx 
     cmp [di],bl
     jc return1
     jnc dist
          
ex1:dec ch
    hlt
endp
end main