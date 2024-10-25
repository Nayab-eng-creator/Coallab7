.model small
.stack 100h
.data
.code
main proc
      mov cx,5
      mov dx, 49
      
      
      printdigits:
      mov ah,2
      int 21h
      
      inc dx
      inc dx
      
      Loop    printdigits
      mov ah,4ch
      int 21h
      
      main endp
end main
      
