.model small
.stack 100h 
.data
ans dw ?
.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,49
    mov ax,0
    mov bx,1
    
   sum:
    add ax,bx
    add bx,4
    mov ans,bx
    loop sum     
    
   end_:
    mov ah,4ch
    int 21h
    main endp
   end main









