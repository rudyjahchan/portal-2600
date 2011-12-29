  include div_mul.asm

  set romsize 16k

  const orange = $3A
  const blue = $AA

  dim bmp_48x1_1_color = a
  dim frame = b
  dim screenwait = c

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
  player0y = 68


start
  if switchreset then reboot
  COLUBK = $0F
  COLUPF = $00
  COLUP0 = orange
  COLUP1 = blue
  CTRLPF = $21

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

  drawscreen
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
