
 ;*** The height of the displayed data...
wymm_bmp_48x2_1_window = 12

 ;*** The height of the bitmap data. This can be larger than 
 ;*** the displayed data height, if you're scrolling or animating 
 ;*** the data...
wymm_bmp_48x2_1_height = 12

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
	BYTE %10001011
	BYTE %10001010
	BYTE %10101011
	BYTE %11011000
	BYTE %10001000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000

   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_01
 ; *** replace this block with your bimap_01 data block...
  BYTE %01000101
  BYTE %01001000
  BYTE %01110000
  BYTE %01001000
  BYTE %01000101
  BYTE %00000000
  BYTE %00000000
  BYTE %00111101
  BYTE %01000001
  BYTE %01000000
  BYTE %01000000
  BYTE %00111100

   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_02
 ; *** replace this block with your bimap_02 data block...
  BYTE %11110100
  BYTE %01000100
  BYTE %01000101
  BYTE %01000110
  BYTE %11110100
  BYTE %00000000
  BYTE %00000000
  BYTE %00010111
  BYTE %11110000
  BYTE %10100011
  BYTE %10100100
  BYTE %01000011


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_03
 ; *** replace this block with your bimap_03 data block...
  BYTE %01010001
  BYTE %11010011
  BYTE %01010101
  BYTE %01011001
  BYTE %01010001
  BYTE %00000000
  BYTE %00000000
  BYTE %10011111
  BYTE %01010000
  BYTE %10011111
  BYTE %00010000
  BYTE %11011111


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_04
 ; *** replace this block with your bimap_04 data block...
  BYTE %00111001
  BYTE %01000101
  BYTE %01000101
  BYTE %01000101
  BYTE %00111001
  BYTE %00000000
  BYTE %00000000
  BYTE %00010000
  BYTE %00010000
  BYTE %00101000
  BYTE %01000100
  BYTE %01000100


   if >. != >[.+wymm_bmp_48x2_1_height]
      align 256
   endif


wymm_bmp_48x2_1_05
 ; *** replace this block with your bimap_05 data block...
  BYTE %00010000
  BYTE %00110000
  BYTE %01010000
  BYTE %10010000
  BYTE %00010000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000
  BYTE %00000000


