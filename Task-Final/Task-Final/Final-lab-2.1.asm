
.model small
.stack 100h

.data
.code

main proc   
    mov bx,0
    
    mov ah,1h
    int 21h
    
    input:
    cmp al,0Dh
    mov cl,16
    je print
    
    and al,0Fh
    shl bx,1
    or bl,al
    int 21h
    jmp input
    
    print:
    cmp cl,0
    je exit
    rcl bx,1
    jc out_1
    jmp out_0
    
    out_1:
    mov ah,02h
    mov dl,'1'
    int 21h
    dec cl
    jmp print
    
    out_0:
    mov ah,02h
    mov dl,'0'
    int 21h
    dec cl
    jmp print
    
    exit:
    mov ah,4ch
    int 21h
    main endp
    
end main
    
    
    






