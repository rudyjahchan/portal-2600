
 ;*** The height of the displayed data...
bmp_48x2_1_window = 52

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
bmp_48x2_1_height = 52

   if >. != >[.+(bmp_48x2_1_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
bmp_48x2_1_colors 
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_00
 ; *** replace this block with your bimap_00 data block...
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11110000
	BYTE %11111000
	BYTE %11001100
	BYTE %11001100
	BYTE %11111100
	BYTE %11111000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_01
 ; *** replace this block with your bimap_01 data block...
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000001
	BYTE %00000001
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00111000
	BYTE %01111100
	BYTE %11101110
	BYTE %11000110
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %11000011
	BYTE %01100011
	BYTE %01110111
	BYTE %00111110
	BYTE %00011100


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_02
 ; *** replace this block with your bimap_02 data block...
	BYTE %00000001
	BYTE %00000011
	BYTE %00000111
	BYTE %00001111
	BYTE %00011111
	BYTE %00111111
	BYTE %00000011
	BYTE %00000011
	BYTE %00000011
	BYTE %00000011
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000001
	BYTE %00000011
	BYTE %00000011
	BYTE %00000001
	BYTE %00000001
	BYTE %11000000
	BYTE %11110000
	BYTE %01111000
	BYTE %00011100
	BYTE %00011101
	BYTE %00001111
	BYTE %00001111
	BYTE %00000111
	BYTE %00000011
	BYTE %00000001
	BYTE %00011100
	BYTE %00111110
	BYTE %00111110
	BYTE %00111110
	BYTE %00011100
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00110011
	BYTE %00110011
	BYTE %00110110
	BYTE %00110110
	BYTE %00111100
	BYTE %00111111
	BYTE %00110011
	BYTE %00110011
	BYTE %00111111
	BYTE %00111110
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_03
 ; *** replace this block with your bimap_03 data block...
	BYTE %10000000
	BYTE %11000000
	BYTE %11100000
	BYTE %11110000
	BYTE %11111000
	BYTE %11111100
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %00011000
	BYTE %00111000
	BYTE %01110000
	BYTE %11100000
	BYTE %11000000
	BYTE %10000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11100001
	BYTE %11100011
	BYTE %11110111
	BYTE %01111111
	BYTE %11111110
	BYTE %11111100
	BYTE %11111000
	BYTE %11110000
	BYTE %11100011
	BYTE %11000111
	BYTE %11101110
	BYTE %11111100
	BYTE %01111000
	BYTE %00110000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00111111
	BYTE %00111111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_04
 ; *** replace this block with your bimap_04 data block...
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %10000000
	BYTE %11000000
	BYTE %11100000
	BYTE %01110000
	BYTE %00111000
	BYTE %00011000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00110011
	BYTE %00110011
	BYTE %00110011
	BYTE %00110011
	BYTE %00111111
	BYTE %00111111
	BYTE %00110011
	BYTE %00110011
	BYTE %00111111
	BYTE %00011110
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


   if >. != >[.+bmp_48x2_1_height]
      align 256
   endif


bmp_48x2_1_05
 ; *** replace this block with your bimap_05 data block...
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00111111
	BYTE %00111111
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


