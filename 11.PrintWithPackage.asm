
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
    
.CODE
MAIN PROC
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    printn "Hello "
    print "Hello world"
         
    MOV AH , 4CH 
    INT 21H
    MAIN ENDP
END MAIN 


