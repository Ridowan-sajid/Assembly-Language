
.model small
.stack 100h
.data

a db "TYPE A CHARACTER: $"
b db "The ASCII CODE OF A IN BINARY IS: $"
c db "THE NUMBER OF 1 BITS IS: $"

.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    call task 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    add cl,48
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,cl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp



task proc
    
    xor bx,bx
    mov ah,1
    int 21h
    
    while_:
    cmp al,0dh
    je end_while 
    and al,0fh
    shl bx,1
    or bl,al
    int 21h
    jmp while_
              
              
    end_while:
    
    mov ch,0
    
    mov cl,0
    for:
    cmp ch,16
    je end_for 
    
    rol bx,1
    jc pr1
    jnc pr2

    inc ch
    jmp for
    
    pr1:
    mov ah,2
    mov dl,'1'
    int 21h
    inc ch
    inc cl
    jmp for
    
    pr2:
    mov ah,2
    mov dl,'0'
    int 21h
    inc ch
    jmp for
    
    
    
    
    
    
    
    end_for: 
    
    
    ret
    
    end main
    
    