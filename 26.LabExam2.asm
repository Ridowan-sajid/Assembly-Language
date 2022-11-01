.model small
.stack 100h 
.data

msg db "**SAJID***$"
star db "*$"

.code

main proc
    
    mov ax,@data
    mov ds,ax

    mov cl,10 
    mov bl,0 
    mov bh,0
    
    
    start:
    cmp bl,cl 
    je last 
    
    mov ah,9 
    lea dx,star
    int 21h
     
    inc bl
    jmp start
           
    
           
    last:
    mov bl,0
    cmp bh,3
    je second
    inc bh
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp start
    
    
    
    second:
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
    
    mov bl,0 
    mov bh,0
    
    start2:
    cmp bl,cl 
    je last2 
    
    mov ah,9 
    lea dx,star
    int 21h
     
    inc bl
    jmp start2
           
    
           
    last2:
    mov bl,0
    cmp bh,4
    je exit
    inc bh 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    jmp start2
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
