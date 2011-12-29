
 ;*** The height of the displayed data...
love_bmp_48x2_1_window = 12

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
love_bmp_48x2_1_height = 12

   if >. != >[.+(love_bmp_48x2_1_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
love_bmp_48x2_1_colors 
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


   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_00
 ; *** replace this block with your bimap_00 data block...
	BYTE %11101110
	BYTE %10001010
	BYTE %10001010
	BYTE %10001010
	BYTE %10001110
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000

   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_01
 ; *** replace this block with your bimap_01 data block...
  BYTE %01001110
  BYTE %10101000
  BYTE %10101110
  BYTE %10101000
  BYTE %10101110
  BYTE %00000000
  BYTE %00000000
  BYTE %00111011
  BYTE %00101010
  BYTE %00110010
  BYTE %00101010
  BYTE %00111010

   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_02
 ; *** replace this block with your bimap_02 data block...
  BYTE %00001110
  BYTE %00000100
  BYTE %00000100
  BYTE %00000100
  BYTE %00001110
  BYTE %00000000
  BYTE %00000000
  BYTE %10010000
  BYTE %10010000
  BYTE %10010000
  BYTE %10010000
  BYTE %10111000


   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_03
 ; *** replace this block with your bimap_03 data block...
  BYTE %11100000
  BYTE %00100000
  BYTE %11100000
  BYTE %10000000
  BYTE %11100000
  BYTE %00000000
  BYTE %00000000
  BYTE %00111011
  BYTE %00101010
  BYTE %00101010
  BYTE %00101010
  BYTE %00111010


   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_04
 ; *** replace this block with your bimap_04 data block...
  BYTE %10101110
  BYTE %10101000
  BYTE %11001110
  BYTE %10101000
  BYTE %11101110
  BYTE %00000000
  BYTE %00000000
  BYTE %10101000
  BYTE %10101000
  BYTE %10110000
  BYTE %10101000
  BYTE %10111000


   if >. != >[.+love_bmp_48x2_1_height]
      align 256
   endif


love_bmp_48x2_1_05
 ; *** replace this block with your bimap_05 data block...
  BYTE %10101110
  BYTE %11101000
  BYTE %10101000
  BYTE %10101000
  BYTE %11101000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000


