include "EMU8086.INC"
.model small
.stack 100h
.data

pass db "1234$"

.code



main proc 
    mov ax,@data
    mov ds,ax

    mov cx,"1234$"
    mov bx,pass
    
    
    start:
    cmp bx,cx ;condition cheacking bx<cx (i<n) 
    je exit  ; jump equal  (jg=jump greater)
    print "d" 
    inc bx
    jmp start
    
    exit:
    mov ah,4ch
    int 21h
    main endp
