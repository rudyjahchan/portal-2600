

 ; *** if you want to modify the bitmap color on the fly, just dim a
 ; *** variable in bB called "bmp_48x1_1_color", and use it to set the
 ; *** color.


 ;*** this is the height of the displayed data
bmp_48x1_1_window = 16

 ;*** this is the height of the bitmap data
bmp_48x1_1_height = 16

 ifnconst bmp_48x1_1_color
bmp_48x1_1_color
 endif
	.byte $4a

   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_00

	BYTE %00000000
	BYTE %00000000
	BYTE %00000011
	BYTE %00001111
	BYTE %00111110
	BYTE %01111101
	BYTE %11110011
	BYTE %11101100
	BYTE %11101100
	BYTE %11110011
	BYTE %01111101
	BYTE %00111110
	BYTE %00011111
	BYTE %00000011
	BYTE %00000000
	BYTE %00000000

   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_01

	BYTE %00000000
	BYTE %11111111
	BYTE %11111111
	BYTE %11000000
	BYTE %00111111
	BYTE %11100000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %11100000
	BYTE %00111111
	BYTE %11000000
	BYTE %11111111
	BYTE %11111111
	BYTE %00000000


   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_02

	BYTE %11111111
	BYTE %11111111
	BYTE %00000000
	BYTE %11111111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %11111111
	BYTE %00000000
	BYTE %11111111
	BYTE %11111111


   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_03

	BYTE %11111111
	BYTE %11111111
	BYTE %00000000
	BYTE %11111111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %11111111
	BYTE %00000000
	BYTE %11111111
	BYTE %11111111



   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_04

	BYTE %00000000
	BYTE %11111111
	BYTE %11111111
	BYTE %00000011
	BYTE %11111100
	BYTE %00000111
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000000
	BYTE %00000111
	BYTE %11111100
	BYTE %00000011
	BYTE %11111111
	BYTE %11111111
	BYTE %00000000

   if >. != >[.+bmp_48x1_1_height]
      align 256
   endif

bmp_48x1_1_05
	BYTE %00000000
	BYTE %00000000
	BYTE %11000000
	BYTE %11110000
	BYTE %01111100
	BYTE %10111110
	BYTE %11001111
	BYTE %00110111
	BYTE %00110111
	BYTE %11001111
	BYTE %10111110
	BYTE %01111100
	BYTE %11111000
	BYTE %11000000
	BYTE %00000000
	BYTE %00000000


