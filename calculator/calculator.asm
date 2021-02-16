%include "io.inc"

section .bss
    OPR RESB 1 ; SOMA = 1, SUBT = 2, MULT = 3, DIVS = 4 

section .text
global CMAIN
CMAIN:
    GET_HEX 4, eax
    GET_CHAR OPR
    GET_UDEC 4, ebx
    
   MOV DL, BYTE[OPR]
   SUB BYTE[OPR], '+'
   JZ SOM
   
   MOV BYTE[OPR], DL
   SUB BYTE[OPR], '-'
   JZ SUBTRACAO
   
   MOV BYTE[OPR], DL
   SUB BYTE[OPR], '*'
   JZ MULTIPLICACAO
   
   MOV BYTE[OPR], DL
   SUB BYTE[OPR], '/'
   JZ DIVISAO
   
   SOM:
   CALL SOMA
   JMP PRINT
   
   SUBTRACAO:
   CALL SUBT
   JMP PRINT
   
   MULTIPLICACAO:
   CALL MULT
   JMP PRINT
   
   DIVISAO:
   CALL DIVS
   JMP PRINT
   
   PRINT:
   PRINT_UDEC 4, EAX   
   
   XOR eax, eax
   RET
;----------------------------------------
SOMA:
;recives: EAX, EBX
;results: EAX = EAX + EBX flags
;----------------------------------------
ADD eax, ebx
RET

;----------------------------------------
SUBT:
;recives: EAX, EBX
;results: EAX = EAX - EBX flags
;----------------------------------------
SUB eax, ebx
RET

;----------------------------------------
MULT:
;recives: EAX, EBX
;results: EAX = EAX * EBX flags
;----------------------------------------
PUSH ecx
MOV ecx, ebx
MOV ebx, eax
XOR eax, eax
    .L1:
    ADD eax, ebx
    LOOP .L1
    POP ecx
RET 

;----------------------------------------
DIVS:
;recives: EAX, EBX
;results: EAX = EAX / EBX flags
;----------------------------------------
PUSH ecx
MOV ecx, eax
XOR eax, eax
    .L2:
     INC eax
     SUB ecx, ebx
     jz .FIM
     jns .L2 

DEC eax

.FIM:
POP ecx
RET
