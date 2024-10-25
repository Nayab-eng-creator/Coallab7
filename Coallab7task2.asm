; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h                 

.model small             
.stack 100h              

.data                     
msg db 'Enter a digit: $'
digit db 0                

.code                    
main proc                 
    mov ax, @data       
    mov ds, ax          

  
    mov dx, offset msg
    mov ah, 09h         
    int 21h             

   
    mov ah, 01h          
    int 21h              
    mov digit, al 
    
    mov dl,32
    mov ah,2
    int 21h 
    
     mov dl, 10
     mov ah,2           
    int 21h              
    mov dl, 13 
    mov ah,2          
    int 21h          
   

    
    mov cx, 10          

print_digit:
    mov dl, digit        
    mov ah, 02h          
    int 21h             

    
     mov dl, 10 
    mov ah,2          
    int 21h 
    mov dl, 13
    mov ah,2           
    int 21h              
               

    loop print_digit     

    
    mov ah, 4Ch         
    int 21h             

main endp               
end main                 


ret



