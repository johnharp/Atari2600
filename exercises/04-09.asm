     processor 6502

    ; From Udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    ; Exercise 9
    ;
    ; Your goal in this exercise is to create a simple loop that goes
    ; from 1 to 10. If possible, try using the CMP instruction. This
    ; instruction that can be used to compare the value of the accumulator
    ; with a certain literal number. Once the comparison is done, the processor
    ; flags will be set (zero if the compared values are equal, non-zero if different).
    
    seg Code
    org $F000
Start:

    lda #1     ; Initialize the A register with the decimal value 1

Loop:
    clc
    adc #1     ; Increment A
    cmp #10    ; Compare the value in A with the decimal value 10
    bne Loop   ; Branch back to loop if the comparison was not equal (to zero)


NextFrame:
    jmp NextFrame

    org $FFFC
    .word Start
    .word Start

    