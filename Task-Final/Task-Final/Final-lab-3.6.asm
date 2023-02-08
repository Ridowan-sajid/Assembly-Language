.model small
.stack 100h
.data


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
    int 21h
    
    xor al,20h
    
    mov ah,2
    mov dl,al
    int 21h
    
    
    RET 

    end main












