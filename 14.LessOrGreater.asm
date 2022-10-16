include "EMU8086.INC"
.model small
.stack 100h
.code

main proc

    mov cl,5 ; given value
    mov bl,5 ; intitalizing bx=0
    
    
    start:
    cmp bl,cl ;condition cheacking bx<cx (i<n) 
    je eq
    jg last   ; jump equal  (jg=jump greater)
    printn "Greater than 5"
    jmp exit ;jump not equal
    
    
    last:
    printn "Less than 5"  
    jmp exit
    
    eq:
    printn "Equal to 5"
    jmp exit
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp


                        