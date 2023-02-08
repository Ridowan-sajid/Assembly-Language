.model small
.stack 100h 
.data       



msg db "Thank You$"
msg2 db "?$"

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    cmp bl,bh
    jg change
    jmp end_
    
    
    change:
    xchg bl,bh
    
   end_:
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h
     
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h         
           
  
    mov ah,9
    lea dx,msg
    int 21h
   
    mov ah,4ch
    int 21h
    main endp