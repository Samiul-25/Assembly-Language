include 'emu8086.inc'

.stack 100h
.model small
.data



.code

    main proc
        
        print 'Enter first number: '
        
        mov ah,01h
        int 21h
        
        mov bl,al
        sub bl,48
        
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        
        print 'Enter second number: '
        
        mov ah,01h
        int 21h
        sub al,48
        
        mul bl
        
        mov bl,al
        add bl,48
        
        mov dl,10
        mov ah,02h
        int 21h
        
        mov dl,13
        mov ah,02h
        int 21h
        
        print 'The Multiplication is: '
        
        mov dl,bl
        mov ah,02h
        int 21h
        
    main endp
end main
        
    