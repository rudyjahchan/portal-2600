
cake_draw_bmp_48x2_1

	ldy #(cake_bmp_48x2_1_window-1)

	lda #<(cake_bmp_48x2_1_colors-1)
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta aux5+0
	lda #>(cake_bmp_48x2_1_colors-1)
	sta aux5+1

	iny
	lda (aux5),y
	dey
        sta COLUP0              ;3
        sta COLUP1              ;3
        sta HMCLR               ;3

	;setup score pointers to point at my bitmap slices instead
	lda #<cake_bmp_48x2_1_00
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+0
	lda #>cake_bmp_48x2_1_00
	sta scorepointers+1


	lda #<cake_bmp_48x2_1_01
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+2
	lda #>cake_bmp_48x2_1_01
	sta scorepointers+3


	lda #<cake_bmp_48x2_1_02
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+4
	lda #>cake_bmp_48x2_1_02
	sta scorepointers+5


	lda #<cake_bmp_48x2_1_03
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+6
	lda #>cake_bmp_48x2_1_03
	sta scorepointers+7


	lda #<cake_bmp_48x2_1_04
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+8
	lda #>cake_bmp_48x2_1_04
	sta scorepointers+9


	lda #<cake_bmp_48x2_1_05
	clc
	adc #(#cake_bmp_48x2_1_height-#cake_bmp_48x2_1_window)
 ifconst cake_bmp_48x2_1_index
	sec
	sbc cake_bmp_48x2_1_index
 endif
	sta scorepointers+10
	lda #>cake_bmp_48x2_1_05
	sta scorepointers+11

        lda #0          ;two line kernel
        sta aux3

 	jmp cake_draw_bmp_48x1adv
	
