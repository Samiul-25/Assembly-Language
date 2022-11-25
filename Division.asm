INCLUDE 'emu8086.inc'

.MODEL SMALL
.STACK 100H

.DATA
    NUM1 DB 7
    NUM2 DB 2
    

.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        
        XOR AX, AX
        MOV AL, NUM1
        DIV NUM2
        
        MOV BX, AX
        
        PRINT "RESULT = " 
        
        MOV DL, BL 
        ADD DL, 48
        MOV AH, 02H
        INT 21H
        
        PRINTN
        PRINT "REMAINDER = "
        MOV DL, BH 
        ADD DL, 48
        MOV AH, 02H
        INT 21H
        
        MOV AH, 04CH
        INT 21H
        
    
    
    MAIN ENDP
    
END MAIN
        
        
    