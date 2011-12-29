
 include "casey-mckinnon/asm/layoutmacros.asm"
 include "casey-mckinnon/casey_layout.asm"

.caseydrawscreen
casey_eat_overscan
 	;bB runs in overscan. Wait for the overscan to run out...
	clc
	lda INTIM
	bmi casey_eat_overscan
	jmp casey_do_vertical_sync

casey_do_vertical_sync
	lda #2
	sta WSYNC ;one line with VSYNC
	sta VSYNC ;enable VSYNC
	sta WSYNC ;one lincaseywith VSYNC
	sta WSYNC ;one line with VSYNC
	lda #0
	sta WSYNC ;one line with VSYNC
	sta VSYNC ;turn off VSYNC

        ;lda #42+128
	ifnconst vblank_time
 	lda #42+128
 	else
 	lda #vblank_time+128
 	endif

	sta TIM64T

caseyframe = missile0x
        inc caseyframe ; increment the frame counter

	#ifconst .title_vblank
	jsr .casey_vblank
	#endif

casey_vblank_loop
	lda INTIM
	bmi casey_vblank_loop
	lda #0
	sta WSYNC
	sta VBLANK
	sta ENAM0
	sta ENABL

casey_playfield

; ======== BEGIN of the custom kernel!!!!! All of the work is done in the playfield.

        lda #230
        sta TIM64T

	lda #1
	sta CTRLPF
	clc

	lda #0
	sta WSYNC
	lda caseyscreencolor
	sta COLUBK

	caseylayout

	jmp CASEY_PFWAIT ; kernel is done. Finish off the screen

 include "casey-mckinnon/casey_color.asm"

	#ifconst casey_mk_48x1_on
	include "casey-mckinnon/asm/48x1_kernel.asm"
	#endif ;casey_mk_48x1_on

	#ifconst casey_mk_48x2_1_on
	include "casey-mckinnon/asm/48x2_1_kernel.asm"
	#endif ;mk_48x2_1_on

	#ifconst casey_mk_48x2_2_on
	include "casey-mckinnon/asm/48x2_2_kernel.asm"
	#endif ;mk_48x2_2_on

	#ifconst casey_mk_48x2_3_on
	include "casey-mckinnon/asm/48x2_3_kernel.asm"
	#endif ;mk_48x2_3_on

CASEY_PFWAIT
        lda INTIM 
        bne CASEY_PFWAIT

CASEY_OVERSCAN
	;lda #35+128 

 	ifnconst overscan_time
 	lda #35+128
 	else
 	lda #overscan_time+128-3-1
 	endif


	sta TIM64T
	lda #%11000010
	sta WSYNC
	sta VBLANK
	RETURN

 #ifconst casey_mk_48x2_1_on
	include "casey-mckinnon/48x2_1_image.asm"
 #endif
 #ifconst casey_mk_48x2_2_on
	include "casey-mckinnon/48x2_2_image.asm"
 #endif
 #ifconst casey_mk_48x2_3_on
	include "casey-mckinnon/48x2_3_image.asm"
 #endif


