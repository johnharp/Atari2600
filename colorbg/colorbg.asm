    processor 6502
    include "vcs.h"
    include "macro.h"

    seg code
    org $F000        ; ROM origin

START:
    CLEAN_START      ; macros to clear the memory


    lda #$1e         ; NTSC yellow
                     ; https://en.wikipedia.org/wiki/List_of_video_game_console_palettes#NTSC
    sta COLUBK       ; set background color

NEXTFRAME:
	jmp NEXTFRAME

; ---------------------------------------------------------
; Fill rom to 4KB
; ---------------------------------------------------------
    org $FFFC
    .word START      ; reset vector
    .word START      ; interrupt vector
