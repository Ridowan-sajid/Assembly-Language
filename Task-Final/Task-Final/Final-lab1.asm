.model small
.stack 100h
.code
.data

main proc
     XOR BX,BX
        
     mov ah,1
     FOR:    
        int 21h
        cmp al,0Dh
        JE End_
        
        cmp al,41h
        jge Sub_
        
        sub al,48
        jmp shift
        
        sub_:
        sub al,37h
        
        shift:
        shl bx, cl
        or bl,al
        jmp FOR
        
     End_:
       mov cx,4
       mov ah,2
       
     For2:
     mov dl, bh
     shr dl,4
     shl bx,4
     
     cmp dl,10
     jge sub_2
     
     add dl,48
     int 21h
     jmp end_Loop
     
     sub_2:
     add dl, 55
     int 21h
     
     end_Loop:
     Loop For2
     
     mov ah,4ch
     int 21h
     main endp
end main
     
     
     
     
        
        
        

