  include div_mul.asm

  set romsize 16k

  const orange = $3A
  const blue = $AA

  dim bmp_48x1_1_color = a
  dim frame = b
  dim screenwait = c
  dim p0GX = d
  dim p0GXLeft = e
  dim p0GXRight = f
  dim p0GYUp = g
  dim p0GY = h
  dim p0GYDown = i
  dim jumpCounter = j
  dim runDirection = k
  dim aimDirection = l
  dim initMissile0x = m
  dim initMissile0y = n
  dim initMissile1x = o
  dim initMissile1y = p
  dim orangePortalDirection = q
  dim bluePortalDirection = r
  dim activePortal = s
  dim aimPortal = t
  dim level = u

  bmp_48x1_1_color = blue
  frame = 0
  screenwait = e

mainmenu
  frame = frame + 1
  if frame < 30 then goto drawmainmenu
  if bmp_48x1_1_color = blue then bmp_48x1_1_color = orange else bmp_48x1_1_color = blue
  frame = 0

drawmainmenu
  gosub titledrawscreen bank2
  if joy0fire then goto begin
  goto mainmenu

begin
  player0x = 128
  player0y = 13
  frame = 0
  runDirection = 0
  aimDirection = 0
  missile0height = 4
  missile1height = 4
  initMissile0x = missile0x
  initMissile0y = missile0y
  initMissile1x = missile1x
  initMissile1y = missile1y

start
  if switchreset then reboot
  COLUBK = $0F
  COLUPF = $00
  COLUP0 = orange
  COLUP1 = blue
  CTRLPF = $21
  NUSIZ0=$20
  NUSIZ1=$20

level1 playfield:
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  X..............................X
  XXXXXXXXXXXXXXXXXXX............X
  XXXXXXXXXXXXXXXXXX.............X
  X......................XXXXXXXXX
  X........XXXXXXXXXXXXXXX.......X
  X........XXXXXXXXXXXXXX........X
  X..............................X
  XXXXXXXXXXXXXXXXXXXXXXX........X
  XXXXXXXXXXXXXXXXXXXXXXX........X
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 24
  bally = 13

  p0GX = (player0x - 13) / 4
  p0GXRight = (player0x - 9) / 4
  p0GXLeft = (player0x - 17) / 4
  p0GYDown = player0y / 8
  p0GY = (player0y - 4) / 8
  p0GYUp = (player0y - 8) / 8

  if joy0left then player0x = player0x - 1 : runDirection = 4
  if joy0right then player0x = player0x + 1 : runDirection = 0

  if !pfread(p0GX,p0GYDown) then player0y = player0y + 1
  if pfread(p0GXRight,p0GY) then player0x = player0x - 1
  if pfread(p0GXLeft,p0GY) then player0x = player0x + 1
  if pfread(p0GX,p0GYUp) then player0y = player0y + 1

  if joy0right then aimDirection = 0
  if joy0down then aimDirection = 2
  if joy0left then aimDirection = 4
  if joy0up then aimDirection = 6
  if joy0right && joy0down then aimDirection = 1
  if joy0left && joy0down then aimDirection = 3
  if joy0left && joy0up then aimDirection = 5
  if joy0right && joy0up then aimDirection = 7
  score = 0
  score = score + aimDirection

  if joy0up && jumpCounter=0 && pfread(p0GX,p0GYDown) then jumpCounter = 1
  if jumpCounter>0 && jumpCounter<11 then player0y = player0y - 2 : jumpCounter = jumpCounter + 1
  if jumpCounter>10 then jumpCounter = 0

  if runDirection>2 && runDirection<6 then REFP0 = 8
  if jumpCounter>0 then goto jumpFrame
  if joy0left || joy0right then goto animate else frame = 0
  player0:
  %00011000
  %00011000
  %00011000
  %00011000
  %00011100
  %00011000
  %00001100
  %00001100
end
  goto donesetframe

animate
  if frame = 0 then player0:
        %01000100
        %00100100
        %00011100
        %00011000
        %00111100
        %00011000
        %00001100
        %00001100
end

  if frame = 8 then player0:
        %00000100
        %00100010
        %01010100
        %00011000
        %10011110
        %01111001
        %00001100
        %00001100
end

  if frame = 16 then player0:
        %00001000
        %00110100
        %00010100
        %00011000
        %01011110
        %00111000
        %00001100
        %00001100
end

  if frame = 24 then player0:
        %00001000
        %00011000
        %00011000
        %00011000
        %00111100
        %00011000
        %00001100
        %00001100
end

  frame = frame + 1
  if frame > 31 then frame = 0
  goto donesetframe

jumpFrame player0:
        %00000100
        %00100010
        %01010100
        %00011000
        %10011110
        %01111001
        %00001100
        %00001100
end

donesetframe drawscreen
  goto start


cakeisalie
  gosub cakedrawscreen bank2
  screenwait = screenwait + 1
  if screenwait < 30 then goto cakeisalie
  if joy0fire then screenwait = 0 : goto ourloveisreal
  goto cakeisalie

ourloveisreal
  gosub lovedrawscreen bank2
  screenwait = screenwait + 1
  if screenwait < 30 then goto ourloveisreal
  if joy0fire then screenwait = 0 : goto caseymckinnon
  goto ourloveisreal

caseymckinnon
  gosub caseydrawscreen bank3
  screenwait = screenwait + 1
  if screenwait < 30 then goto caseymckinnon
  if joy0fire then goto willyoumarryme
  goto caseymckinnon

willyoumarryme
  gosub willyoumarrymedrawscreen bank3
  goto willyoumarryme

  bank 2
  asm
  include "titlescreen/asm/titlescreen.asm"
  include "cake-is-a-lie/asm/cakescreen.asm"
  include "our-love-is-real/asm/lovescreen.asm"
end

  bank 3
  asm
  include "casey-mckinnon/asm/caseyscreen.asm"
  include "will-you-marry-me/asm/wymmscreen.asm"
end
