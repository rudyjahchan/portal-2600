
 ;*** The height of the displayed data...
bmp_48x2_3_window = 5

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
bmp_48x2_3_height = 5

   if >. != >[.+(bmp_48x2_3_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
bmp_48x2_3_colors 
	BYTE $0f
	BYTE $0f
	BYTE $0f
	BYTE $0f
	BYTE $0f


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_00
 ; *** replace this block with your bimap_00 data block...
	BYTE %00001110
	BYTE %00001010
	BYTE %00001100
	BYTE %00001010
	BYTE %00001110


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_01
 ; *** replace this block with your bimap_01 data block...
	BYTE %10001010
	BYTE %10001010
	BYTE %10101011
	BYTE %11011010
	BYTE %10001011


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_02
 ; *** replace this block with your bimap_02 data block...
	BYTE %01110001
	BYTE %00000001
	BYTE %10000111
	BYTE %10000101
	BYTE %10000101


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_03
 ; *** replace this block with your bimap_03 data block...
	BYTE %01110000
	BYTE %01010101
	BYTE %01110010
	BYTE %01010101
	BYTE %01110000


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_04
 ; *** replace this block with your bimap_04 data block...
	BYTE %01110111
	BYTE %01000000
	BYTE %01110000
	BYTE %00010000
	BYTE %01110000


   if >. != >[.+bmp_48x2_3_height]
      align 256
   endif


bmp_48x2_3_05
 ; *** replace this block with your bimap_05 data block...
	BYTE %01110000
	BYTE %00010000
	BYTE %00110000
	BYTE %00010000
	BYTE %01110000


