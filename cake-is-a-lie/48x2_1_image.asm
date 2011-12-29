
 ;*** The height of the displayed data...
cake_bmp_48x2_1_window = 12

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
cake_bmp_48x2_1_height = 12

   if >. != >[.+(cake_bmp_48x2_1_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
cake_bmp_48x2_1_colors 
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


   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_00
 ; *** replace this block with your bimap_00 data block...
	BYTE %11111011
	BYTE %00100000
	BYTE %00100011
	BYTE %00100010
	BYTE %11111011
  BYTE %00000000
  BYTE %00000000
  BYTE %00100010
  BYTE %00100010
  BYTE %00100011
  BYTE %00100010
  BYTE %11111010

   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_01
 ; *** replace this block with your bimap_01 data block...
  BYTE %11100000
  BYTE %00100000
  BYTE %11100000
  BYTE %00000000
  BYTE %11100000
  BYTE %00000000
  BYTE %00000000
  BYTE %00101111
  BYTE %00101000
  BYTE %11101111
  BYTE %00101000
  BYTE %00101111

   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_02
 ; *** replace this block with your bimap_02 data block...
  BYTE %00100010
  BYTE %00111110
  BYTE %00100010
  BYTE %00100010
  BYTE %00011100
  BYTE %00000000
  BYTE %00000000
  BYTE %10000000
  BYTE %00000000
  BYTE %10000000
  BYTE %00000000
  BYTE %10000000


   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_03
 ; *** replace this block with your bimap_03 data block...
  BYTE %00000011
  BYTE %00000010
  BYTE %00000010
  BYTE %00000010
  BYTE %00000010
  BYTE %00000000
  BYTE %00000000
  BYTE %01111010
  BYTE %10000011
  BYTE %10000010
  BYTE %10000010
  BYTE %01111001


   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_04
 ; *** replace this block with your bimap_04 data block...
  BYTE %11101111
  BYTE %00000010
  BYTE %00000010
  BYTE %00000010
  BYTE %00001111
  BYTE %00000000
  BYTE %00000000
  BYTE %00101000
  BYTE %11101001
  BYTE %00101110
  BYTE %00101001
  BYTE %11001000


   if >. != >[.+cake_bmp_48x2_1_height]
      align 256
   endif


cake_bmp_48x2_1_05
 ; *** replace this block with your bimap_05 data block...
  BYTE %10111110
  BYTE %00100000
  BYTE %00111110
  BYTE %00100000
  BYTE %10111110
  BYTE %00000000
  BYTE %00000000
  BYTE %10111110
  BYTE %00100000
  BYTE %00111110
  BYTE %00100000
  BYTE %10111110


