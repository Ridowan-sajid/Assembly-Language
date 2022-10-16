;include "EMU8086.INC"
.model small
.stack 100h 
.data

m db "greater than 0$"
m2 db "less than 0$"
.code

main proc
    
    mov ax,-4 
    mov bx,0 
    
    
    cmp ax,0 ;ax<0
    jl last 
    
    mov bx,1
    
    mov ah,2 
    mov dx,049
    int 21h
    jmp end_ 
    
    
    last: 
    mov bx,-1
    
    mov ah,2 
    mov dx,045
    int 21h
    
    mov ah,2 
    mov dx,049
    int 21h 
    
   end_:
    mov ah,4ch
    int 21h
    main endp

