.model small
.stack 100h
.data
gr1 dw "Hello from first$" 
gr2 dw "Hello from second$"
gr3 dw "Hello from third$"

.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov ah,9
    lea dx,gr1
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    call second
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    call third
    
    mov ah,4ch
    int 21h
    main endp

second proc 
    mov ax,@data
    mov ds, ax
    
    mov ah,9
    lea dx,gr2
    int 21h
    
    RET 

    
third proc 
    mov ax,@data
    mov ds, ax
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    RET 
    end main







