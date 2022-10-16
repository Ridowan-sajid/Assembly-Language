                      ;include "EMU8086.INC"
.model small
.stack 100h 
.data

m db "AL greater than 0$"
m2 db "AL less than 0$"
.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov al,-4 
    mov ah,0 
    
    
    cmp al,0 ;ax<0
    jl last 
    
    mov ah,15h
    
    mov ah,9 
    lea dx,m
    int 21h
    jmp end_ 
    
    
    last: 
    mov bx,0
    
    mov ah,9 
    lea dx,m2
    int 21h
    
   end_:
    mov ah,4ch
    int 21h
    main endp

