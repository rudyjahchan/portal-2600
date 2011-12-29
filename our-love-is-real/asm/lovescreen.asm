
 include "our-love-is-real/asm/layoutmacros.asm"
 include "our-love-is-real/love_layout.asm"

.lovedrawscreen
love_eat_overscan
 	;bB runs in overscan. Wait for the overscan to run out...
	clc
	lda INTIM
	bmi love_eat_overscan
	jmp love_do_vertical_sync

love_do_vertical_sync
	lda #2
	sta WSYNC ;one line with VSYNC
	sta VSYNC ;enable VSYNC
	sta WSYNC ;one linlovewith VSYNC
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

loveframe = missile0x
        inc loveframe ; increment the frame counter

	#ifconst .title_vblank
	jsr .love_vblank
	#endif

love_vblank_loop
	lda INTIM
	bmi love_vblank_loop
	lda #0
	sta WSYNC
	sta VBLANK
	sta ENAM0
	sta ENABL

love_playfield

; ======== BEGIN of the custom kernel!!!!! All of the work is done in the playfield.

        lda #230
        sta TIM64T

	lda #1
	sta CTRLPF
	clc

	lda #0
	sta WSYNC
	lda lovescreencolor
	sta COLUBK

	lovelayout

	jmp LOVE_PFWAIT ; kernel is done. Finish off the screen

 include "our-love-is-real/love_color.asm"

	#ifconst love_mk_48x1_on
	include "our-love-is-real/asm/48x1_kernel.asm"
	#endif ;love_mk_48x1_on

	#ifconst love_mk_48x2_1_on
	include "our-love-is-real/asm/48x2_1_kernel.asm"
	#endif ;mk_48x2_1_on

	#ifconst love_mk_48x2_2_on
	include "our-love-is-real/asm/48x2_2_kernel.asm"
	#endif ;mk_48x2_2_on

	#ifconst love_mk_48x2_3_on
	include "our-love-is-real/asm/48x2_3_kernel.asm"
	#endif ;mk_48x2_3_on

LOVE_PFWAIT
        lda INTIM 
        bne LOVE_PFWAIT

LOVE_OVERSCAN
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

 #ifconst love_mk_48x2_1_on
	include "our-love-is-real/48x2_1_image.asm"
 #endif
 #ifconst love_mk_48x2_2_on
	include "our-love-is-real/48x2_2_image.asm"
 #endif
 #ifconst love_mk_48x2_3_on
	include "our-love-is-real/48x2_3_image.asm"
 #endif


