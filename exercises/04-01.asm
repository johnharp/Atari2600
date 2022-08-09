     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 1
    ; Your goal here is to simply load the processor registers A, X, and Y
    ; with some values.

    seg Code
    org $F000
Start

    lda #$82    ; Load the A register with the literal hexadecimal value $82
    ldx #82     ; Load the X register with the literal decimal value 82
    ldy $82     ; Load the Y register with the value that is inside memory position $82

NextFrame
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    