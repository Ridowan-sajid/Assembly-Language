                     
.model small
.stack 100h 
.data

m db "$"
m2 db "$"
.code

main proc
    mov ax,@data
    mov ds, ax
    
    mov al,'B' 
    mov ah,0
    mov bl,'Z'
     
    cmp al,'A'
    jge start
    jmp end_    
    
    start:
    cmp bl,al
    jle end_
    mov ah,2 
    mov dl,al
    int 21h
    jmp end_ 

    
   end_:
    mov ah,4ch
    int 21h
    main endp





