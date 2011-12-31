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
  dim teleported = v
  dim proposalWait = w
  dim soundCounter = x

  bmp_48x1_1_color = blue
  frame = 0
  screenwait = 0
  aimPortal = 0
  level = 0
  soundCounter = 0

mainmenu
  frame = frame + 1
  if frame < 30 then goto drawmainmenu
  if bmp_48x1_1_color = blue then bmp_48x1_1_color = orange else bmp_48x1_1_color = blue
  frame = 0

drawmainmenu
  gosub titledrawscreen bank2
  if joy0fire then aimPortal = 1
  if !joy0fire && aimPortal=1 then goto begin
  soundCounter = soundCounter + 1
  if soundCounter>0 && soundCounter<8 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 27
  if soundCounter>7 && soundCounter<16 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 15
  if soundCounter>15 && soundCounter<24 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 16
  if soundCounter>23 && soundCounter<32 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 18
  if soundCounter>31 && soundCounter<40 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 18
  if soundCounter>39 && soundCounter<48 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 16
  if soundCounter>47 && soundCounter<120 then AUDV0 = 0
  if soundCounter>119 && soundCounter<128 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 27
  if soundCounter>127 && soundCounter<136 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 15
  if soundCounter>135 && soundCounter<144 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 16
  if soundCounter>143 && soundCounter<152 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 18
  if soundCounter>151 && soundCounter<160 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 18
  if soundCounter>159 && soundCounter<168 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 16
  if soundCounter>167 && soundCounter<192 then AUDV0 = 0
  if soundCounter>191 && soundCounter<208 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 20
  if soundCounter>207 && soundCounter<216 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 18
  if soundCounter>215 && soundCounter<224 then AUDV0 = 10 : AUDC0 = 12 : AUDF0 = 27
  if soundCounter>223 && soundCounter<248 then AUDV0 = 0
  if soundCounter>247 then soundCounter = 1
  goto mainmenu

begin
  AUDV0 = 0
  frame = 0
  runDirection = 0
  aimDirection = 0
  missile0height = 4
  missile1height = 4
  initMissile0x = missile0x
  initMissile0y = missile0y
  initMissile1x = missile1x
  initMissile1y = missile1y
  aimPortal = 0
  activePortal = 0
  teleported = 0
  screenwait = 0
  proposalWait = 0
  missile0x = 0
  missile0y = 0
  orangePortalDirection = 8
  missile1x = 0
  missile1y = 0
  bluePortalDirection = 8
  soundCounter = 0

  if level > 6 then goto cakeisalie
  on level goto level1 level2 level3 level4 level5 level6 level7

level1 playfield:
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  X..............................X
  X..............................X
  X..............................X
  X..............................X
  X..............................X
  X.........XX........XX.........X
  X.........XX........XX.........X
  X.........XX........XX.........X
  X.........XX........XX.........X
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 133
  bally = 72
  player0x = 73
  player0y = 80
  goto start

level2 playfield:
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  X..............................X
  X..............................X
  X..............................X
  X.........XXXXXXXXXXXX.........X
  X.........XXXXXXXXXXXX.........X
  X.........XXXXXXXXXXXX.........X
  X.........XXXXXXXXXXXX.........X
  X.........XXXXXXXXXXXX.........X
  X.........XXXXXXXXXXXX.........X
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 135
  bally = 72
  player0x = 17
  player0y = 80
  goto start

level3 playfield:
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  XXXXXXXXXXXX...................X
  XXXXXXXXXXXX...................X
  XXXXXXXXXXXX......XXXXXXX......X
  XXXXXXXXXXXX......XXXXXXX......X
  X.................XXXXXXX......X
  X.................XXXXXXX......X
  X.....XXXXXX......XXXXXXX......X
  X.....XXXXXX......XXXXXXX......X
  X.....XXXXXX......XXXXXXX......X
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 135
  bally = 72
  player0x = 17
  player0y = 80
  goto start

level4 playfield:
  XXX..XXX............XXXXXXXXXXXX
  X..............................X
  X..............................X
  X..............................X
  X..............................X
  X..............................X
  X...................XXXXXXXXXXXX
  X...................XXXXXXXXXXXX
  X...................XXXXXXXXXXXX
  X...................XXXXXXXXXXXX
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 133
  bally = 40
  player0x = 17
  player0y = 80
  goto start

level5 playfield:
  ................................
  ................................
  ................................
  ................................
  X..............................X
  X..............................X
  XXXXXXXX............XXXXXXXXXXXX
  XXXXXXXX............XXXXXXXXXXXX
  XXXXXXXX............XXXXXXXXXXXX
  XXXXXXXX............XXXXXXXXXXXX
  XXXXXXXX............XXXXXXXXXXXX
end
  ballx = 133
  bally = 40
  player0x = 17
  player0y = 48
  goto start

level6 playfield:
  ..........X.....................
  ................................
  X...................X..........X
  X..........xxxx.....X..........X
  X..........XXXX.....X..........X
  X..........XXXX.........XXX....X
  X......XX..XXXX................X
  X..........XXXX.............XXXX
  X.......XXXXXXX..........XXXXXXX
  X.......XXXXXXX..........XXXXXXX
  XXXX..XXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 133
  bally = 48
  player0x = 17
  player0y = 80
  goto start

level7 playfield:
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
  X........XX.............XXXXXXXX
  XXXX.....XX..XXXXXXXXX..XXXXXXXX
  XXXX.....XX..XX.........XXXXXXXX
  XXXX.....XX..XX..XXXXXXXXXX....X
  XXXX.........XX......X.........X
  XXXX.........XX..XX..X..XXX..XXX
  XXXXXXXXXXXXXXX..XX..X..XXX..XXX
  XXXXXXXXXXXXXXX..XX..X..XXXXXXXX
  XXXXXXXXXXXXXXX..XX.....XXXXXXXX
  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end
  ballx = 135
  bally = 42
  player0x = 17
  player0y = 16

start
  drawscreen
  if switchreset then reboot

  if !switchleftb then goto setup
  proposalWait = proposalWait + 1
  if proposalWait = 255 then screenwait = screenwait + 1
  if screenwait = 24 then screenwait=0 : goto cakeisalie

setup
  COLUBK = $0F
  COLUPF = $00
  COLUP0 = orange
  COLUP1 = blue
  CTRLPF = $21
  NUSIZ0=$20
  NUSIZ1=$20

  if collision(player0,ball) then score = score + 1 : level = level + 1 : ballx = ballx + 160 : goto begin

  p0GX = (player0x - 13) / 4
  p0GXRight = (player0x - 9) / 4
  p0GXLeft = (player0x - 17) / 4
  p0GYDown = player0y / 8
  p0GY = (player0y - 4) / 8
  p0GYUp = (player0y - 8) / 8

  if joy0left then player0x = player0x - 1 : runDirection = 4
  if joy0right then player0x = player0x + 1 : runDirection = 0
  if joy0up && jumpCounter=0 && pfread(p0GX,p0GYDown) then jumpCounter = 1

gravity
  if jumpCounter>0 && jumpCounter<11 then player0y = player0y - 2 : jumpCounter = jumpCounter + 1
  if jumpCounter>10 then jumpCounter = 0
  if !pfread(p0GX,p0GYDown) then player0y = player0y + 1

envirocollisions
  if pfread(p0GXRight,p0GY) then player0x = player0x - 1
  if pfread(p0GXLeft,p0GY) then player0x = player0x + 1
  if pfread(p0GX,p0GYUp) then player0y = player0y + 1

  if player0y<0 || player0y>84 then goto begin

  if !collision(playfield,missile0) && orangePortalDirection=0 then missile0x = missile0x + 2
  if !collision(playfield,missile0) && orangePortalDirection=1 then missile0y = missile0y + 2 : missile0x = missile0x + 2
  if !collision(playfield,missile0) && orangePortalDirection=2 then missile0y = missile0y + 2
  if !collision(playfield,missile0) && orangePortalDirection=3 then missile0x = missile0x - 2 : missile0y = missile0y + 2
  if !collision(playfield,missile0) && orangePortalDirection=4 then missile0x = missile0x - 2
  if !collision(playfield,missile0) && orangePortalDirection=5 then missile0x = missile0x - 2 : missile0y = missile0y - 2
  if !collision(playfield,missile0) && orangePortalDirection=6 then missile0y = missile0y - 2
  if !collision(playfield,missile0) && orangePortalDirection=7 then missile0x = missile0x + 2 : missile0y = missile0y - 2
  if missile0x<0 || missile0x>159 then missile0x = 0 : missile0y = 0 : orangePortalDirection = 8
  if missile0y<0 || missile0y>88 then missile0x = 0 : missile0y = 0 : orangePortalDirection = 8
  if !collision(playfield,missile1) && bluePortalDirection=0 then missile1x = missile1x + 2
  if !collision(playfield,missile1) && bluePortalDirection=1 then missile1y = missile1y + 2 : missile1x = missile1x + 2
  if !collision(playfield,missile1) && bluePortalDirection=2 then missile1y = missile1y + 2
  if !collision(playfield,missile1) && bluePortalDirection=3 then missile1x = missile1x - 2 : missile1y = missile1y + 2
  if !collision(playfield,missile1) && bluePortalDirection=4 then missile1x = missile1x - 2
  if !collision(playfield,missile1) && bluePortalDirection=5 then missile1x = missile1x - 2 : missile1y = missile1y - 2
  if !collision(playfield,missile1) && bluePortalDirection=6 then missile1y = missile1y - 2
  if !collision(playfield,missile1) && bluePortalDirection=7 then missile1x = missile1x + 2 : missile1y = missile1y - 2
  if missile1x<0 || missile1x>159 then missile1x = 0 : missile1y = 0 : bluePortalDirection = 8
  if missile1y<0 || missile1y>88 then missile1x = 0 : missile1y = 0 : bluePortalDirection = 8

  if joy0right then aimDirection = 0
  if joy0down then aimDirection = 2
  if joy0left then aimDirection = 4
  if joy0up then aimDirection = 6
  if joy0right && joy0down then aimDirection = 1
  if joy0left && joy0down then aimDirection = 3
  if joy0left && joy0up then aimDirection = 5
  if joy0right && joy0up then aimDirection = 7

  if aimPortal = 30 || !joy0fire then aimPortal = 0
  if joy0fire && aimPortal=0 then AUDV0=5 : AUDC0=7 : AUDF0=6 : soundCounter = 1 
  if joy0fire && aimPortal=0 && activePortal=0 then missile0x = player0x+3 : missile0y=player0y-3 : activePortal=1 : aimPortal=1 : orangePortalDirection=aimDirection 
  if joy0fire && aimPortal=0 && activePortal=1 then missile1x = player0x+3 : missile1y=player0y-2 : activePortal=0 : aimPortal=1 : bluePortalDirection=aimDirection
  if aimPortal <> 0 then aimPortal = aimPortal + 1

  if collision(missile0,missile1) then goto setframe
  if collision(player0,missile0) && collision(playfield,missile0) && collision(playfield,missile1) && teleported=0 then teleported=1 : player0x = missile1x : player0y = missile1y : AUDV0=5 : AUDC0=7 : AUDF0=4 : soundCounter = 1
  if collision(player0,missile1) && collision(playfield,missile1) && collision(playfield,missile0) && teleported=0 then teleported=1 : player0x = missile0x : player0y = missile0y : AUDV0=5 : AUDC0=7 : AUDF0=4 : soundCounter = 1
  if !collision(player0,missile0) && !collision(player0,missile1) then teleported=0

  if soundCounter>0 && soundCounter<6 then soundCounter = soundCounter + 1
  if soundCounter>5 then AUDV0 = 0 : soundCounter = 0

setframe
  if runDirection>2 && runDirection<6 then REFP0 = 8
  if jumpCounter>0 then goto jumpFrame if joy0left || joy0right then goto animate else frame = 0
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

donesetframe goto start


cakeisalie
  gosub cakedrawscreen bank2
  screenwait = screenwait + 1
  if screenwait = 255 then goto ourloveisreal
  goto cakeisalie

ourloveisreal
  gosub lovedrawscreen bank2
  screenwait = screenwait + 1
  if screenwait = 255 then goto willyoumarryme
  goto ourloveisreal

caseymckinnon
  gosub caseydrawscreen bank3
  screenwait = screenwait + 1
  if screenwait = 255 then goto willyoumarryme
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
