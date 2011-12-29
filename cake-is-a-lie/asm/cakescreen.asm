
 include "cake-is-a-lie/asm/layoutmacros.asm"
 include "cake-is-a-lie/cake_layout.asm"

.cakedrawscreen
cake_eat_overscan
 	;bB runs in overscan. Wait for the overscan to run out...
	clc
	lda INTIM
	bmi cake_eat_overscan
	jmp cake_do_vertical_sync

cake_do_vertical_sync
	lda #2
	sta WSYNC ;one line with VSYNC
	sta VSYNC ;enable VSYNC
	sta WSYNC ;one lincakewith VSYNC
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

cakeframe = missile0x
        inc cakeframe ; increment the frame counter

	#ifconst .title_vblank
	jsr .cake_vblank
	#endif

cake_vblank_loop
	lda INTIM
	bmi cake_vblank_loop
	lda #0
	sta WSYNC
	sta VBLANK
	sta ENAM0
	sta ENABL

cake_playfield

; ======== BEGIN of the custom kernel!!!!! All of the work is done in the playfield.

        lda #230
        sta TIM64T

	lda #1
	sta CTRLPF
	clc

	lda #0
	sta WSYNC
	lda cakescreencolor
	sta COLUBK

	cakelayout

	jmp CAKE_PFWAIT ; kernel is done. Finish off the screen

 include "cake-is-a-lie/cake_color.asm"

	#ifconst cake_mk_48x1_on
	include "cake-is-a-lie/asm/48x1_kernel.asm"
	#endif ;cake_mk_48x1_on

	#ifconst cake_mk_48x2_1_on
	include "cake-is-a-lie/asm/48x2_1_kernel.asm"
	#endif ;mk_48x2_1_on

	#ifconst cake_mk_48x2_2_on
	include "cake-is-a-lie/asm/48x2_2_kernel.asm"
	#endif ;mk_48x2_2_on

	#ifconst cake_mk_48x2_3_on
	include "cake-is-a-lie/asm/48x2_3_kernel.asm"
	#endif ;mk_48x2_3_on

CAKE_PFWAIT
        lda INTIM 
        bne CAKE_PFWAIT

CAKE_OVERSCAN
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

 #ifconst cake_mk_48x2_1_on
	include "cake-is-a-lie/48x2_1_image.asm"
 #endif
 #ifconst cake_mk_48x2_2_on
	include "cake-is-a-lie/48x2_2_image.asm"
 #endif
 #ifconst cake_mk_48x2_3_on
	include "cake-is-a-lie/48x2_3_image.asm"
 #endif


