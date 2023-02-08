.model small
.stack 100h

.data
.code

main proc   
    xor bx,bx 
    mov cl,4
    mov ah,1
    int 21h
    
    WHILE:
    cmp al,0Dh
    je end_while 
    
    cmp al,39h
    jg letter
    
    and al,0Fh
    jmp shift
    
    letter:
    sub al,37h
    shift:
    shl bx,cl
    
    or bl,al
    
    int 21h
    
    
    
    jmp WHILE 
    
    
    end_while:

    ;end_:
    mov ah,4ch
    int 21h
    main endp
end main