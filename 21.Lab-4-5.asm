.model small
.stack 100h 
.data

m db "Put 0 in DX$"
m2 db "Put 1 in DX$"
.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov ax,'D' 
    mov bx,'C'
    mov cx,'A'
     
    cmp ax,bx
    jl start
    jg first
    jmp end_    
    
    start:
    mov dx, 0
    mov ah,9
    lea dx,m
    int 21h
    jmp end_
    
    
    first:
    cmp bx,cx
    jl start
    mov ax, 0
    mov ah,9 
    lea dx,m2
    int 21h
    jmp end_ 

    
   end_:
    mov ah,4ch
    int 21h
    main endp








