
 ; *** if you want to modify the bitmap color on the fly, just dim a
 ; *** variable in bB called "bmp_96x2_1_color", and use it to set the
 ; *** color.


 ;*** this is the height of the displayed data
bmp_96x2_1_window = 13

 ;*** this is the height of the bitmap data
bmp_96x2_1_height = 13

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif
 
 ;*** this is the color of each line in the bitmap data
bmp_96x2_1_colors 
	BYTE $3f
	BYTE $3f
	BYTE $3f
	BYTE $3f
	BYTE $2f
	BYTE $2f
	BYTE $2f
	BYTE $2f
	BYTE $2f
	BYTE $1f
	BYTE $1f
	BYTE $1f
	BYTE $1f

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_00

	BYTE %11111111
	BYTE %00000000

	BYTE %00111110
	BYTE %01100001
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11000000
	BYTE %11100001

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_01
	BYTE %11111111
	BYTE %00000000

	BYTE %00000001
	BYTE %00000001
	BYTE %10000001
	BYTE %10000011
	BYTE %10000011
	BYTE %10000111
	BYTE %10000111
	BYTE %10001110
	BYTE %10001110
	BYTE %10011100
	BYTE %11011110

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_02
	BYTE %11111111
	BYTE %00000000

	BYTE %00000000
	BYTE %10000000
	BYTE %10000000
	BYTE %11000000
	BYTE %11000000
	BYTE %00100000
	BYTE %00100000
	BYTE %00010000
	BYTE %00010000
	BYTE %00001000
	BYTE %00011100

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_03
	BYTE %11111111
	BYTE %00000000

	BYTE %00001110
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001111
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00011111

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_04
	BYTE %11111111
	BYTE %00000000

	BYTE %00000110
	BYTE %00000110
	BYTE %00000110
	BYTE %00000110
	BYTE %00000110
	BYTE %11000110
	BYTE %11100111
	BYTE %01110110
	BYTE %01110000
	BYTE %01110000
	BYTE %11000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_05
	BYTE %11111111
	BYTE %00000000

	BYTE %00000011
	BYTE %00000100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %00001100
	BYTE %10100100
	BYTE %11100011
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif


bmp_96x2_1_06
	BYTE %11111111
	BYTE %00000000

	BYTE %10000011
	BYTE %01000110
	BYTE %01100110
	BYTE %01100110
	BYTE %01100110
	BYTE %01100110
	BYTE %01000110
	BYTE %10001111
	BYTE %00000110
	BYTE %00000010
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_07
	BYTE %11111111
	BYTE %00000000

	BYTE %00001111
	BYTE %10001100
	BYTE %00011000
	BYTE %00011000
	BYTE %00011111
	BYTE %00011001
	BYTE %00001001
	BYTE %10000111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif


bmp_96x2_1_08
	BYTE %11111111
	BYTE %00000000

	BYTE %00000111
	BYTE %10001110
	BYTE %00011100
	BYTE %00011000
	BYTE %10011000
	BYTE %10011001
	BYTE %10001001
	BYTE %00000111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_09
	BYTE %11111111
	BYTE %00000000

	BYTE %00001100
	BYTE %10011010
	BYTE %00011000
	BYTE %00011000
	BYTE %00011000
	BYTE %10011000
	BYTE %10011000
	BYTE %10111110
	BYTE %00011000
	BYTE %00001000
	BYTE %00000000


   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_10
	BYTE %11111111
	BYTE %00000000

	BYTE %00011100
	BYTE %00100010
	BYTE %01100011
	BYTE %01100011
	BYTE %01100011
	BYTE %01100011
	BYTE %00100010
	BYTE %00011100
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+(bmp_96x2_1_height)]
      align 256
   endif

bmp_96x2_1_11
	BYTE %11111111
	BYTE %00000000

	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00110000
	BYTE %00111101
	BYTE %00110111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000


