include "EMU8086.INC"
.model small
.stack 100h
.code

main proc
    
    mov cx,1 ; given value
    mov bx,0 ; intitalizing bx=0
    
    
    start:
    cmp bx,cx ;condition cheacking bx<cx (i<n)
    jl last   ; jump equal  (jg=jump greater)
    printn "Negative"
    ;inc bx
    jmp exit ;jump not equal
    
    
    last:
    printn "Positive"
    
    exit:
    mov ah,4ch
    int 21h
    main endp


                        