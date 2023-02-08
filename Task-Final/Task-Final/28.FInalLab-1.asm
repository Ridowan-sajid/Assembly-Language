.model small
.stack 100h 

.code

main proc
    
    mov cx,255 
    
    mov ah,2
    mov dl,0

    loop1: 
    int 21h  
    inc dl
    loop loop1
    

   end_:
    mov ah,4ch
    int 21h
    main endp
   end main









