include "EMU8086.INC"
.model small
.stack 100h
.code

main proc
    inc bx ;bx=bx+1
    dec bx ;bx=bx-1
    
    mov cx,5 ; given value
    mov bx,0 ; intitalizing bx=0
    
    
    start:
    cmp bx,cx ;condition cheacking bx<cx (i<n)
    je last   ; jump equal  (jg=jump greater)
    printn "Hello world"
    inc bx
    jne start ;jump not equal
    
    
    last:
    printn "The program ended"
    
    mov ah,4ch
    int 21h
    main endp


                                               