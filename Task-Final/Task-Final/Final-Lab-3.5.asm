.model small
.stack 100h
.data
gr1 dw "Please User Enter a Hex Digit (A-F)$"   
gr2 dw "Welcome To My Calculator$" 
gr3 dw "In Decimal it is $"
gr4 dw "Thank You For Using my Calculator$"
gr5 dw "Have a good day$"   

.code

main proc
    mov ax,@data
    mov ds, ax 
    
    mov ah,9
    lea dx, gr2
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    call task 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,gr4
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,gr5
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
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,'A'
    jg second
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,48
    int 21h
    
    second:
    cmp bl,'B'
    jg third
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    third:
    cmp bl,'C'
    jg fourth
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,50
    int 21h
    
    
    fourth:
    cmp bl,'D'
    jg fifth
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,51
    int 21h 
    
    fifth:
    cmp bl,'E'
    jg sixth
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,52
    int 21h
    
    
    sixth:
    cmp bl,'F'
    jg end_
    jl end_
    
    mov ah,9
    lea dx,gr3
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
    
    mov ah,2
    mov dl,53
    int 21h
    
    
    
    
    
    
    
    end_:
    RET  
    end main







