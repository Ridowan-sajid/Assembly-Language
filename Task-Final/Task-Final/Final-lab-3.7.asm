.model small
.stack 100h
.data

a db "Please User Enter Digit 1: $"
b db "Please User Enter Digit 2: $"
c db "Output: $"

.code

main proc
    mov ax,@data
    mov ds, ax
    
    call task
    
    mov ah,4ch
    int 21h
    main endp



proc task
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1    
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    
    add bh,bl
    sub bh,48
    mov ah,2
    mov dl,bh
    int 21h
    
    ret
    
    end main
    
    