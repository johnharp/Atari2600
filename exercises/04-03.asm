     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 3
    ; This exercise is about transferring values from registers to other registers.

    seg Code
    org $F000
Start:

    lda #15    ; Load the A register with the literal decimal value 15
    tax        ; Transfer the value from A to X
    tay        ; Transfer the value from A to Y
    txa        ; Transfer the value from X to A
    tya        ; Transfer the value from Y to A
    
    ldx #6     ; Load X with the decimal value 6

               ; Transfer the value from X to Y
               ; No such instruction exists!

    txa        ; Use A to move value from X to Y
    tay        ; note, this clobbers the A value

NextFrame:
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    