include "EMU8086.INC"
.model small
.stack 100h
.code

main proc

    mov cl,50 ; given value
    mov bl,0 ; intitalizing bx=0
    
    
    start:
    cmp bl,cl ;condition cheacking bx<cx (i<n) 
    je exit  ; jump equal  (jg=jump greater)
    print "d" 
    inc bl
    jmp start
    
    exit:
    mov ah,4ch
    int 21h
    main endp


                        


