INCLUDE 'emu8086.inc' ; INCLUDE EMU8086 FOR PRINT FUNCTION

.MODEL SMALL
.STACK 100H

.DATA
    ARRAY DB 4,7,6,8,1,9
    
.CODE
    MAIN PROC
        
        MOV AX, @DATA
        MOV DS, AX
        
        MOV SI, OFFSET ARRAY ; SI ARRAY INDEX
        MOV CX, 6; ARRAY SIZE
        
        PRINT 'SUM : '
        
        LOOP_ARRAY: ; LOOP SECTION 
        
            MOV DL, [SI] ; SI ARRAY INDEX AND [SI] ARRAY VALUE
            
            ADD DL, 48; ASCII VALUE 0 = 48, 1=49
            
            ; PRINT FUNC 02H = 2
            MOV AH, 02H
            INT 21H
            
            ; PRINT SPACE; SPACE = ASCII 32
            MOV DL, 32
            MOV AH, 02H
            INT 21H
            
            INC SI ; INCREMENT SI OR ARRAY INDEX VALUE SI++ 
            LOOP LOOP_ARRAY ; CALL LOOP_ARRAY SECTION (LOOP CMP SI<CX IF TRUE THEN CALL LOOP_ARRAY)
            
         ; RETURN FUNCTION
         MOV AH, 04CH
         INT 21H
            
        
        
        
    MAIN ENDP
    
END MAIN