     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 4
    ;
    ; This exercise is about adding and subtracting values.
    ; Adding and subtracting are math operations that are done by
    ; the processor ALU (arithmetic-logic-unit).
    ; 
    ; Since the ALU can only manipulate values from the (A)ccumulator,
    ; all these additions and subtractions must be performed with the values
    ; in the A register.


    seg Code
    org $F000
Start

    lda #100    ; Load the A register with the literal decimal value 100

    clc         ; Clear the carry before add operations
    adc #5      ; Add the decimal value 5 to the accumulator

    sec         ; Set the carry before subtract operations
    sbc #10     ; Subtract the decimal value 10 from the accumulator

    ; Register A should now contain the decimal 95 (or $5F in hexadecimal)

NextFrame
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    