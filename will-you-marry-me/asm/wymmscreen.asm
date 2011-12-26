
 include "will-you-marry-me/asm/layoutmacros.asm"
 include "will-you-marry-me/wymm_layout.asm"

.willyoumarrymedrawscreen
wymm_eat_overscan
 	;bB runs in overscan. Wait for the overscan to run out...
	clc
	lda INTIM
	bmi wymm_eat_overscan
	jmp wymm_do_vertical_sync

wymm_do_vertical_sync
	lda #2
	sta WSYNC ;one line with VSYNC
	sta VSYNC ;enable VSYNC
	sta WSYNC ;one linwymmwith VSYNC
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

wymmframe = missile0x
        inc wymmframe ; increment the frame counter

	#ifconst .title_vblank
	jsr .wymm_vblank
	#endif

wymm_vblank_loop
	lda INTIM
	bmi wymm_vblank_loop
	lda #0
	sta WSYNC
	sta VBLANK
	sta ENAM0
	sta ENABL

wymm_playfield

; ======== BEGIN of the custom kernel!!!!! All of the work is done in the playfield.

        lda #230
        sta TIM64T

	lda #1
	sta CTRLPF
	clc

	lda #0
	sta WSYNC
	lda wymmscreencolor
	sta COLUBK

	wymmlayout

	jmp WYMM_PFWAIT ; kernel is done. Finish off the screen

 include "will-you-marry-me/wymm_color.asm"

	#ifconst wymm_mk_48x1_on
	include "will-you-marry-me/asm/48x1_kernel.asm"
	#endif ;wymm_mk_48x1_on

	#ifconst wymm_mk_48x2_1_on
	include "will-you-marry-me/asm/48x2_1_kernel.asm"
	#endif ;mk_48x2_1_on

	#ifconst wymm_mk_48x2_2_on
	include "will-you-marry-me/asm/48x2_2_kernel.asm"
	#endif ;mk_48x2_2_on

	#ifconst wymm_mk_48x2_3_on
	include "will-you-marry-me/asm/48x2_3_kernel.asm"
	#endif ;mk_48x2_3_on

WYMM_PFWAIT
        lda INTIM 
        bne WYMM_PFWAIT

WYMM_OVERSCAN
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

 #ifconst wymm_mk_48x2_1_on
	include "will-you-marry-me/48x2_1_image.asm"
 #endif
 #ifconst wymm_mk_48x2_2_on
	include "will-you-marry-me/48x2_2_image.asm"
 #endif
 #ifconst wymm_mk_48x2_3_on
	include "will-you-marry-me/48x2_3_image.asm"
 #endif


