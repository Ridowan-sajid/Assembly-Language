.model small
.stack 100h

.data
input db "Enter a hex digit: $"        

A db "In decimal It is: 10$"
B db "In decimal It is: 11$"
C db "In decimal It is: 12$"
D db "In decimal It is: 13$"
E db "In decimal It is: 14$"
F db "In decimal It is: 15$"


.code

main proc
    
    mov ax,@data
    mov ds,ax
             
    mov ah,9 
    lea dx,input
    int 21h  
    
    mov cx,5 
    mov bx,0 
    
    mov ah,1
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    start:
    cmp bl,"A" 
    je last    
    
    
    cmp bl,"B" 
    je last2 
    

    cmp bl,"C" 
    je last3 
    
    
    cmp bl,"D" 
    je last4 
    
    
    cmp bl,"E" 
    je last5 
    
    
    cmp bl,"F" 
    je last6
    
    
    
    last:
    mov ah,9 
    lea dx,A
    int 21h
    jmp end_     
        
    last2:
    mov ah,9 
    lea dx,B
    int 21h 
    jmp end_
    
    last3:
    mov ah,9 
    lea dx,C
    int 21h
    jmp end_
    
    last4:
    mov ah,9 
    lea dx,D
    int 21h
    jmp end_
         
    last5:
    mov ah,9 
    lea dx,E
    int 21h
    jmp end_     
    
    last6:
    mov ah,9 
    lea dx,F
    int 21h
    jmp end_
          
    end_:   
    mov ah,4ch
    int 21h
    main endp
end main







