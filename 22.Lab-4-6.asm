.model small
.stack 100h 
.data

m db "Put 0 in AX$"
m2 db "Put 0 in BX$"
m3 db "Put 0 in CX$"
.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov ax,'A' 
    mov bx,'B'
    mov cx,'C'
     
    cmp ax,bx
    jl start
    jge first
    jmp end_    
    
    start:
    mov ax, 0
    mov ah,9
    lea dx,m
    int 21h
    jmp end_
    
    second:
    mov bx, 0
    mov ah,9
    lea dx,m2
    int 21h
    jmp end_
    
    
    first:
    cmp bx,cx
    jl second
    mov cx, 0
    mov ah,9 
    lea dx,m3
    int 21h
    jmp end_ 

    
   end_:
    mov ah,4ch
    int 21h
    main endp










