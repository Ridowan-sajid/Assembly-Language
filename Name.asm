.model small
.stack 100h

.data
    
a3 db 'D'
a4 db 'O'
a5 db 'W'
a6 db 'A'
a7 db 'N'


.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,'R'
    int 21h
    
    mov ah,2
    mov dl,'I'
    int 21h
    
    mov ah,2
    mov dl,a3
    int 21h
    
    mov ah,2
    mov dl,a4
    int 21h
    
    mov ah,2
    mov dl,a5
    int 21h
    
    mov ah,2
    mov dl,a6
    int 21h
    
    mov ah,2
    mov dl,a7
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main



