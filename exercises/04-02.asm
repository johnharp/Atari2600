     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 2
    ; Your goal here is to just store some values into zero-page memory positions.

    seg Code
    org $F000
Start

    lda #$A         ; Load the A register with the hexadecimal value $A
    ldx #%11111111  ; Load the X register with the binary value %11111111
    sta $80         ; Store the value in the A register into memory address $80 
    stx $81         ; Store the value in the X register into memory address $81

NextFrame
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    