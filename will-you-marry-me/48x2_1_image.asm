
 ;*** The height of the displayed data...
wymm_bmp_48x2_1_window = 5

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
wymm_bmp_48x2_1_height = 5

   if >. != >[.+(wymm_bmp_48x2_1_height)]
      align 256
   endif
 BYTE 0 ; leave this here!


 ;*** The color of each line in the bitmap, in reverse order...
wymm_bmp_48x2_1_colors 
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


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_00
 ; *** replace this block with your bimap_00 data block...
  BYTE %00000100
  BYTE %00000100
  BYTE %00001010
  BYTE %00010001
  BYTE %00010001

   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_01
 ; *** replace this block with your bimap_01 data block...
  BYTE %01111101
  BYTE %01000000
  BYTE %01111101
  BYTE %01000001
  BYTE %01111101

   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_02
 ; *** replace this block with your bimap_02 data block...
  BYTE %11110100
  BYTE %00010010
  BYTE %11110001
  BYTE %00000000
  BYTE %11110000

   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_03
 ; *** replace this block with your bimap_03 data block...
  BYTE %00010001
  BYTE %00010011
  BYTE %00010101
  BYTE %10011001
  BYTE %01010001


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_04
 ; *** replace this block with your bimap_04 data block...
  BYTE %00111000
  BYTE %01000100
  BYTE %01000100
  BYTE %01000101
  BYTE %00111001


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_05
 ; *** replace this block with your bimap_05 data block...
  BYTE %01000000
  BYTE %00000000
  BYTE %01110000
  BYTE %00010000
  BYTE %11110000


