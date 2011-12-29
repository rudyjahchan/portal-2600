
love_draw_bmp_48x2_2

	ldy #(love_bmp_48x2_2_window-1)

	lda #<(love_bmp_48x2_2_colors-1)
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta aux5+0
	lda #>(love_bmp_48x2_2_colors-1)
	sta aux5+1

	iny
	lda (aux5),y
	dey
        sta COLUP0              ;3
        sta COLUP1              ;3
        sta HMCLR               ;3

	;setup score pointers to point at my bitmap slices instead
	lda #<love_bmp_48x2_2_00
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+0
	lda #>love_bmp_48x2_2_00
	sta scorepointers+1


	lda #<love_bmp_48x2_2_01
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+2
	lda #>love_bmp_48x2_2_01
	sta scorepointers+3


	lda #<love_bmp_48x2_2_02
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+4
	lda #>love_bmp_48x2_2_02
	sta scorepointers+5


	lda #<love_bmp_48x2_2_03
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+6
	lda #>love_bmp_48x2_2_03
	sta scorepointers+7


	lda #<love_bmp_48x2_2_04
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+8
	lda #>love_bmp_48x2_2_04
	sta scorepointers+9


	lda #<love_bmp_48x2_2_05
	clc
	adc #(#love_bmp_48x2_2_height-#love_bmp_48x2_2_window)
 ifconst love_bmp_48x2_2_index
	sec
	sbc love_bmp_48x2_2_index
 endif
	sta scorepointers+10
	lda #>love_bmp_48x2_2_05
	sta scorepointers+11

        lda #0          ;two line kernel
        sta aux3

 	jmp love_draw_bmp_48x1adv
	
