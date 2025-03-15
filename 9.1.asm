.model small

.data  
    NUMBER1   DB 4
    NUMBER2   DB 2
    

.code

main proc
     mov cx,0
     mov ax,@data
     mov ds,ax
     mov di,OFFSET NUMBER1
     mov ax,0
addition:    
     mov al,[di]
     add al,[di+1]
     mov [di+2],al
subtraction:     
     mov al,[di]
     sub al,[di+1]
     mov [di+3],al
multiplication:
     mov al,[di]
     mul al,[di+1]
     mov [di+4],al
divison:
     mov al,[di]
     div al,[di+1]
     mov [di+5],al         

  hlt
endp
end main