.model small
.stack 100h 
.data
ans dw ?
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,19
    mov ax,5
    mov bx,100

    sum:    
    add ax,bx
    sub bx,5
    mov ans,ax
    loop sum

    
   end_:
    mov ah,4ch
    int 21h
    main endp
   end main









