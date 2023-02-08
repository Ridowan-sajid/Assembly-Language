.model small
.stack 100h
.data
gr1 dw "Please user enter a letter 1:$"   
gr2 dw "Please user enter a letter 2:$" 
gr3 dw "Please user enter a letter 3:$" 

.code

main proc
    mov ax,@data
    mov ds, ax
    

    
    call task
    
        mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,ch
    int 21h
    
    mov ah,4ch
    int 21h
    main endp

task proc 
    mov ax,@data
    mov ds, ax

    mov ah,9
    lea dx,gr1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    mov ah,9
    lea dx,gr2
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
     mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al
    
    
    
    
    
    end_:
    RET  
    end main







