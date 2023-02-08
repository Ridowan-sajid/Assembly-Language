.model small
.stack 100h 

.data

msg db "Thank You$"

.code

main proc 
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al

    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
           
    mov cx,50
    
    mov ah,2
    mov dl,bl
 
    loop1:
    int 21h
    loop loop1

    
   end_: 
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
   end main
   