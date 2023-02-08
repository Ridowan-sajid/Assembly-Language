.model small
.stack 100h
.code

main proc
    xor cx,cx
    
    mov ah,1
    int 21h
    
   while_:
    cmp al,0dh
    je end_while
    push ax
    inc cx
    int 21h
    
    jmp while_
    
   end_while:
   mov ah,2
   mov dl,0dh
   int 21h
   mov dl,0ah
   int 21h
   
   JCXZ exit
  
  Top:
    pop dx
    int 21h
    Loop Top
  exit:
  mov ah,4ch
  int 21h
  main endp
end main



