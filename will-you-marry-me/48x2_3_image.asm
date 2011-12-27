
 ;*** The height of the displayed data...
wymm_bmp_48x2_3_window = 20

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
wymm_bmp_48x2_3_height = 20

   if >. != >[.+(wymm_bmp_48x2_3_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
wymm_bmp_48x2_3_colors 
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


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_00
 ; *** replace this block with your bimap_00 data block...
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
	BYTE %10001010
	BYTE %10001011
	BYTE %10101001
	BYTE %11011001
	BYTE %10001000
	BYTE %00000000
	BYTE %00000000
	BYTE %10001011
	BYTE %11011000
	BYTE %10101000
	BYTE %10001000
	BYTE %10001011


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_01
 ; *** replace this block with your bimap_01 data block...
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
	BYTE %00101000
	BYTE %11101001
	BYTE %01001111
	BYTE %01001000
	BYTE %10001111
	BYTE %00000000
	BYTE %00000000
	BYTE %11101111
	BYTE %10001000
	BYTE %10001000
	BYTE %10001000
	BYTE %11101000


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_02
 ; *** replace this block with your bimap_02 data block...
  BYTE %00000001
  BYTE %00000000
  BYTE %00000001
  BYTE %00000001
  BYTE %00000100
  BYTE %00000011
  BYTE %00000000
  BYTE %00000000
	BYTE %10100010
	BYTE %00100100
	BYTE %10111110
	BYTE %10100010
	BYTE %10111110
	BYTE %00000000
	BYTE %00000000
	BYTE %10111110
	BYTE %00100000
	BYTE %00100000
	BYTE %00100000
	BYTE %00100000


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_03
 ; *** replace this block with your bimap_03 data block...
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %11000000
  BYTE %00100000
  BYTE %11000000
  BYTE %00000000
  BYTE %00000000
	BYTE %00100000
	BYTE %00100000
	BYTE %01010000
	BYTE %10001000
	BYTE %10001000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000001
	BYTE %00000010
	BYTE %00000010


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_04
 ; *** replace this block with your bimap_04 data block...
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
	BYTE %00001000
	BYTE %00001000
	BYTE %00001010
	BYTE %00001101
	BYTE %00001000
	BYTE %00000000
	BYTE %00000000
	BYTE %10000111
	BYTE %10001000
	BYTE %01001000
	BYTE %00101000
	BYTE %00100111


   if >. != >[.+wymm_bmp_48x2_3_height]
      align 256
   endif


wymm_bmp_48x2_3_05
 ; *** replace this block with your bimap_05 data block...
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
	BYTE %10111110
	BYTE %10100000
	BYTE %10111110
	BYTE %10100000
	BYTE %10111110
	BYTE %00000000
	BYTE %00000000
	BYTE %00011100
	BYTE %10100010
	BYTE %10100010
	BYTE %10100010
	BYTE %00100010


