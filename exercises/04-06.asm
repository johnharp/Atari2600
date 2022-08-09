     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 6
    ;
    ; This exercise covers the increment and decrement instructions of the 6502.

    
    seg Code
    org $F000
Start:

    lda #1    ; Load the A register with the decimal value 1
    ldx #2    ; Load the X register with the decimal value 2
    ldy #3    ; Load the Y register with the decimal value 3
    inx       ; Increment X
    iny       ; Increment Y

    clc
    adc #1    ; Increment A
              ; Note: increment A not supported in 6502

    dex       ; Decrement X
    dey       ; Decrement Y

    sec
    sbc #1    ; Decrement A
              ; Note: decrement A not supported in 6502

NextFrame:
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    