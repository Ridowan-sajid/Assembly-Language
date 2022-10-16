.model small
.stack 100h

.data
    
a1 db ?
a2 db ?
a3 db 0ah,0dh, "The sum of $"
a4 db " and $"
a5 db " is $"
a6 db "?"



.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a6
    int 21h
    
    mov ah,1
    int 21h
    mov a1,al
    mov bh,a1
    
    mov ah,1
    int 21h
    mov a2,al
    mov bl,a2
    
    mov ah,2
    mov dl,10
    int 21h
    mov al,13
    int 21h
    
    
    add bh,bl
    sub bh,48
    
    
    mov ah,9
    lea dx,a3
    int 21h
    
    mov ah,2
    mov dl,a1
    int 21h
    
    mov ah,9
    lea dx,a4
    int 21h
    
    mov ah,2
    mov dl,a2
    int 21h
    
    mov ah,9
    lea dx,a5
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main





