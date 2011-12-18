game
.L00 ;  dim frame  =  a

.L01 ;  dim p0x  =  x

.L02 ;  dim p0y  =  y

.L03 ;  dim grid0x  =  b

.L04 ;  dim grid0y  =  c

.L05 ;  dim gravityCounter  =  d

.L06 ;  dim gravity  =  e

.L07 ;  dim jumpCounter  =  f

.L08 ;  dim p0state  =  g

.L09 ;  dim myjoystick  =  h

.
 ; 

.L010 ;  p0x  =  25

	LDA #25
	STA p0x
.L011 ;  p0y  =  16

	LDA #16
	STA p0y
.L012 ;  frame  =  0

	LDA #0
	STA frame
.L013 ;  gravityCounter  =  0

	LDA #0
	STA gravityCounter
.L014 ;  gravity  =  0

	LDA #0
	STA gravity
.L015 ;  jumpCounter  =  0

	LDA #0
	STA jumpCounter
.L016 ;  p0state  =  0

	LDA #0
	STA p0state
.
 ; 

.L017 ;  playfield:

  ifconst pfres
    ldx #4*pfres-1
  else
	  ldx #47
  endif
	jmp pflabel0
PF_data0
	.byte %11111111, %11111111, %11111111, %11111111
	.byte %10000000, %00000000, %00000000, %10000000
	.byte %11111000, %00000000, %00000000, %10000000
	.byte %10000011, %00000000, %00000000, %10000000
	.byte %10000100, %00000000, %00000000, %10000000
	.byte %10000000, %00000000, %00000000, %10000000
	.byte %10011111, %00011111, %00000000, %10000000
	.byte %10000000, %00000000, %10000000, %10000000
	.byte %10000000, %11110000, %10000000, %10000000
	.byte %10000000, %00000000, %00000000, %10000000
	.byte %11111111, %11111111, %11111111, %11111111
pflabel0
	lda PF_data0,x
	sta playfield,x
	dex
	bpl pflabel0
.
 ; 

.mainloop
 ; mainloop

.L018 ;  COLUBK  =  $0E

	LDA #$0E
	STA COLUBK
.L019 ;  COLUP0  =  $3A

	LDA #$3A
	STA COLUP0
.L020 ;  player0x  =  p0x

	LDA p0x
	STA player0x
.L021 ;  player0y  =  p0y

	LDA p0y
	STA player0y
.
 ; 

.L022 ;  drawscreen

 jsr drawscreen
.
 ; 

.L023 ;  grid0x  =   ( p0x  -  14 )  / 4

; complex statement detected
	LDA p0x
	SEC
	SBC #14
	lsr
	lsr
	STA grid0x
.L024 ;  grid0y  =   ( p0y  -  1 )  / 8

; complex statement detected
	LDA p0y
	SEC
	SBC #1
	lsr
	lsr
	lsr
	STA grid0y
.
 ; 

.joystick
 ; joystick

.L025 ;  if joy0right then myjoystick  =  4  :  goto checkmove

 lda #$80
 bit SWCHA
	BNE .skipL025
.condpart0
	LDA #4
	STA myjoystick
 jmp .checkmove

.skipL025
.L026 ;  if joy0left then myjoystick  =  1

 lda #$40
 bit SWCHA
	BNE .skipL026
.condpart1
	LDA #1
	STA myjoystick
.skipL026
.
 ; 

.checkmove
 ; checkmove

.L027 ;  if myjoystick  =  1 then REFP0  =  8

	LDA myjoystick
	CMP #1
     BNE .skipL027
.condpart2
	LDA #8
	STA REFP0
.skipL027
.L028 ;  if joy0right  ||  joy0left then goto move

 lda #$80
 bit SWCHA
	BNE .skipL028
.condpart3
 jmp .condpart4
.skipL028
 lda #$40
 bit SWCHA
	BNE .skip0OR
.condpart4
 jmp .move

.skip0OR
.L029 ;  player0:

	LDA #<playerL029_0

	STA player0pointerlo
	LDA #>playerL029_0

	STA player0pointerhi
	LDA #8
	STA player0height
.L030 ;  goto gravity

 jmp .gravity

.
 ; 

.move
 ; move

.L031 ;  if !joy0right then goto checkleft

 lda #$80
 bit SWCHA
	BEQ .skipL031
.condpart5
 jmp .checkleft

.skipL031
.L032 ;  temp1  =   ( p0x  -  12 )  / 4

; complex statement detected
	LDA p0x
	SEC
	SBC #12
	lsr
	lsr
	STA temp1
.L033 ;  if !pfread ( temp1 , grid0y )  then p0x  =  p0x  +  1

	LDA temp1
	LDY grid0y
 jsr pfread
	BEQ .skipL033
.condpart6
	INC p0x
.skipL033
.L034 ;  goto animate

 jmp .animate

.
 ; 

.checkleft
 ; checkleft

.L035 ;  temp1  =   ( p0x  -  15 )  / 4

; complex statement detected
	LDA p0x
	SEC
	SBC #15
	lsr
	lsr
	STA temp1
.L036 ;  if !pfread ( temp1 , grid0y )  then p0x  =  p0x  -  1

	LDA temp1
	LDY grid0y
 jsr pfread
	BEQ .skipL036
.condpart7
	DEC p0x
.skipL036
.
 ; 

.animate
 ; animate

.L037 ;  if frame  =  0 then player0:

	LDA frame
	CMP #0
     BNE .skipL037
.condpart8
	LDA #<player8then_0

	STA player0pointerlo
	LDA #>player8then_0

	STA player0pointerhi
	LDA #8
	STA player0height
.skipL037
.
 ; 

.L038 ;  if frame  =  8 then player0:

	LDA frame
	CMP #8
     BNE .skipL038
.condpart9
	LDA #<player9then_0

	STA player0pointerlo
	LDA #>player9then_0

	STA player0pointerhi
	LDA #8
	STA player0height
.skipL038
.
 ; 

.L039 ;  if frame  =  16 then player0:

	LDA frame
	CMP #16
     BNE .skipL039
.condpart10
	LDA #<player10then_0

	STA player0pointerlo
	LDA #>player10then_0

	STA player0pointerhi
	LDA #8
	STA player0height
.skipL039
.
 ; 

.L040 ;  if frame  =  24 then player0:

	LDA frame
	CMP #24
     BNE .skipL040
.condpart11
	LDA #<player11then_0

	STA player0pointerlo
	LDA #>player11then_0

	STA player0pointerhi
	LDA #8
	STA player0height
.skipL040
.
 ; 

.L041 ;  frame  =  frame  +  1

	INC frame
.L042 ;  if frame  >  31 then frame  =  0

	LDA #31
	CMP frame
     BCS .skipL042
.condpart12
	LDA #0
	STA frame
.skipL042
.
 ; 

.gravity
 ; gravity

.L043 ;  w  =   ( p0y  +  1 )  / 8

; complex statement detected
	LDA p0y
	CLC
	ADC #1
	lsr
	lsr
	lsr
	STA w
.L044 ;  if p0state{0} then goto checkfall

	LDA p0state
	LSR
	BCC .skipL044
.condpart13
 jmp .checkfall

.skipL044
.L045 ;  if !pfread ( grid0x , w )  then p0state{0}  =  1  :  goto falling

	LDA grid0x
	LDY w
 jsr pfread
	BEQ .skipL045
.condpart14
	LDA p0state
	ORA #1
	STA p0state
 jmp .falling

.skipL045
.L046 ;  goto mainloop

 jmp .mainloop

.
 ; 

.checkfall
 ; checkfall

.L047 ;  if !pfread ( grid0x , w )  then goto falling

	LDA grid0x
	LDY w
 jsr pfread
	BEQ .skipL047
.condpart15
 jmp .falling

.skipL047
.L048 ;  gravityCounter  =  0

	LDA #0
	STA gravityCounter
.L049 ;  gravity  =  0

	LDA #0
	STA gravity
.L050 ;  p0y  =  w * 8

	LDA w
	asl
	asl
	asl
	STA p0y
.L051 ;  p0state{0}  =  0

	LDA p0state
	AND #254
	STA p0state
.L052 ;  goto mainloop

 jmp .mainloop

.
 ; 

.falling
 ; falling

.L053 ;  gravityCounter  =  gravityCounter  +  1

	INC gravityCounter
.L054 ;  if gravityCounter  =  4 then gravity  =  gravity  +  1  :  gravityCounter  =  0

	LDA gravityCounter
	CMP #4
     BNE .skipL054
.condpart16
	INC gravity
	LDA #0
	STA gravityCounter
.skipL054
.L055 ;  p0y  =  p0y  +  gravity

	LDA p0y
	CLC
	ADC gravity
	STA p0y
.L056 ;  goto mainloop

 jmp .mainloop

 if (<*) > (<(*+9))
	repeat ($100-<*)
	.byte 0
	repend
	endif
playerL029_0

	.byte 0
	.byte   %00011000
	.byte   %00011000
	.byte   %00011000
	.byte   %00011000
	.byte   %00011100
	.byte   %00011000
	.byte   %00001100
	.byte   %00001100
 if (<*) > (<(*+9))
	repeat ($100-<*)
	.byte 0
	repend
	endif
player8then_0

	.byte 0
	.byte         %01000100
	.byte         %00100100
	.byte         %00011100
	.byte         %00011000
	.byte         %00111100
	.byte         %00011000
	.byte         %00001100
	.byte         %00001100
 if (<*) > (<(*+9))
	repeat ($100-<*)
	.byte 0
	repend
	endif
player9then_0

	.byte 0
	.byte         %00000100
	.byte         %00100010
	.byte         %01010100
	.byte         %00011000
	.byte         %10011110
	.byte         %01111001
	.byte         %00001100
	.byte         %00001100
 if (<*) > (<(*+9))
	repeat ($100-<*)
	.byte 0
	repend
	endif
player10then_0

	.byte 0
	.byte         %00001000
	.byte         %00110100
	.byte         %00010100
	.byte         %00011000
	.byte         %01011110
	.byte         %00111000
	.byte         %00001100
	.byte         %00001100
 if (<*) > (<(*+9))
	repeat ($100-<*)
	.byte 0
	repend
	endif
player11then_0

	.byte 0
	.byte         %00001000
	.byte         %00011000
	.byte         %00011000
	.byte         %00011000
	.byte         %00111100
	.byte         %00011000
	.byte         %00001100
	.byte         %00001100
       echo "    ",[(scoretable - *)]d , "bytes of ROM space left")
 
 
 
