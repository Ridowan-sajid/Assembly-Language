.model small
.stack 100h 
.data

msg db "* SAJID  *$" 
star db "**********$"
star2 db "*        *$"

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9 
    lea dx,star
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,9 
    lea dx,star2
    int 21h
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,msg
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9 
    lea dx,star
    int 21h
     
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
