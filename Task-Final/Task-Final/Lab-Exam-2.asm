

.model small
.stack 100h
.data

b db "THE NUMBER is Odd $"
c db "THE NUMBER is Even $"

.code

main proc
    mov ax,@data
    mov ds, ax
    
    call task 
    

    
    
    
    mov ah,4ch
    int 21h
    main endp



task proc
    mov ax,@data
    mov ds, ax
    
    mov ah,1
    
    while_:
    int 21h
    cmp al,0dh
    je end_while 
    mov bh,al
    jmp while_
              
              
    end_while: 
    mov ah,2
    mov dl,bh
    int 21h
    
    cmp bh,48
    jz even
    mov ah,9
    lea dx,b
    int 21h
    jmp end_for
    
    even:
    mov ah,9
    lea dx,c
    int 21h

    
    end_for: 
    
    
    ret
    
    end main
    
    