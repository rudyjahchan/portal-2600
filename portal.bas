  set romsize 8k

  const orange = $3A
  const blue = $AA

  dim bmp_48x1_1_color = a
  dim frame = d
  dim screenwait = e

  bmp_48x1_1_color = blue
  frame = 0
  screenwait = e

mainmenu
  frame = frame + 1
  if frame < 30 then goto drawmainmenu
  if bmp_48x1_1_color = blue then bmp_48x1_1_color = orange else bmp_48x1_1_color = blue
  frame = 0

drawmainmenu
  gosub titledrawscreen
  if joy0fire then goto cakeisalie
  goto mainmenu

cakeisalie
  gosub cakedrawscreen bank2
  screenwait = screenwait + 1
  if screenwait < 120 goto cakeisalie
  if joy0fire then screenwait = 0 : goto willyoumarryme
  goto cakeisalie

willyoumarryme
  gosub willyoumarrymedrawscreen bank2
  goto willyoumarryme

  asm
  include "titlescreen/asm/titlescreen.asm"
end

  bank 2
  asm
  include "cake-is-a-lie/asm/cakescreen.asm"
  include "will-you-marry-me/asm/wymmscreen.asm"
end
