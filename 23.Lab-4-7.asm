.model small
.stack 100h 
.data

m db "O$"
m2 db "E$"

.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov ax,3 
    mov bx,'B'
    mov cx,'C'
     
    cmp ax,1
    je start
    jne first
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
    lea dx,m
    int 21h
    jmp end_
    
    
    first:
    cmp ax,3
    je second
    jne third
    jmp end_
    
    third:
    cmp ax,2
    je fourth
    jne fifth
    jmp end_
    
    fourth:
    mov bx, 0
    mov ah,9
    lea dx,m2
    int 21h
    jmp end_ 
    
    fifth:
    mov bx, 0
    mov ah,9
    lea dx,m2
    int 21h
    jmp end_

    
   end_:
    mov ah,4ch
    int 21h
    main endp















