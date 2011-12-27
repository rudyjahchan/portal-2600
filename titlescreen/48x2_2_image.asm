
 ;*** The height of the displayed data...
bmp_48x2_2_window = 5

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
bmp_48x2_2_height = 5

   if >. != >[.+(bmp_48x2_2_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
bmp_48x2_2_colors 
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00
	BYTE $00


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_00
 ; *** replace this block with your bimap_00 data block...
	BYTE %00001000
	BYTE %00001000
	BYTE %00001110
	BYTE %00001010
	BYTE %00001110


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_01
 ; *** replace this block with your bimap_01 data block...
	BYTE %10101110
	BYTE %10101000
	BYTE %11001110
	BYTE %10101000
	BYTE %11101110


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_02
 ; *** replace this block with your bimap_02 data block...
	BYTE %11101110
	BYTE %00100010
	BYTE %11101110
	BYTE %10001000
	BYTE %11101110


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_03
 ; *** replace this block with your bimap_03 data block...
	BYTE %00001000
	BYTE %00001000
	BYTE %00001110
	BYTE %00001000
	BYTE %00001110


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_04
 ; *** replace this block with your bimap_04 data block...
	BYTE %11101010
	BYTE %01001010
	BYTE %01001100
	BYTE %01001010
	BYTE %11101110


   if >. != >[.+bmp_48x2_2_height]
      align 256
   endif


bmp_48x2_2_05
 ; *** replace this block with your bimap_05 data block...
	BYTE %11100000
	BYTE %10000000
	BYTE %11100000
	BYTE %10000000
	BYTE %11100000


