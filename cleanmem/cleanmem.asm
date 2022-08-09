    processor 6502

    ; From udemy course "Learn Assembly Language
    ; by Making Games for the Atari 2600"
    ; Gustavo Pezzi, Pikuma.com

    seg code
    org #$F000     ;  Define the code origin

Start:
    sei           ; Disable interrupts
    cld           ; Disable the BCD decimal mode
    ldx #$FF
    txs           ; Transfer the x register to the stack pointer register

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clear the Page Zero region ($00 to $FF)
; Includes RAM and TIA registers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

    lda #0        ; A = 0

MemLoop:
    sta $0,X      ; store A value to mem address 0 + X
    dex           ; X--
    bne MemLoop   ; loop until X == 0

    sta $0,X      ; loop exits after setting $01, clear the last address $00

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fill the ROM size to exactly 4KB
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org #$FFFC
    .word Start   ; reset vector at $FFFC (where the program starts)
    .word Start   ; interrupt vector at $FFFE (unused in the VCS)