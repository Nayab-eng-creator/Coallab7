
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data
.code
main proc
    
    mov cx,26
    
    mov dx, 97
    
    print:
    
    mov ah,2
    int 21h
    
    inc dx
    Loop print
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    

ret

