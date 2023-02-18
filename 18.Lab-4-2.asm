.model small
.stack 100h 

.code

main proc

    
    mov al,-4 
    mov ah,0 
    
    
    cmp al,0 
    jl last 
    
    mov ah,0
    jmp end_ 
    
    
    last: 
    mov ah,11111111b
    
   end_:
    mov ah,4ch
    int 21h
    main endp
