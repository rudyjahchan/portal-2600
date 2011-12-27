  set romsize 8k

  const orange = $3A
  const blue = $AA

  dim bmp_48x1_1_color = a
  dim frame = d

  bmp_48x1_1_color = blue
  frame = 0

mainmenu
  frame = frame + 1
  if frame < 30 then goto drawmainmenu
  if bmp_48x1_1_color = blue then bmp_48x1_1_color = orange else bmp_48x1_1_color = blue
  frame = 0

drawmainmenu
  gosub titledrawscreen 
  if joy0fire then goto willyoumarryme
  goto mainmenu

willyoumarryme
  gosub willyoumarrymedrawscreen bank2
  goto willyoumarryme

  asm
  include "titlescreen/asm/titlescreen.asm"
end

  bank 2
  asm
  include "will-you-marry-me/asm/wymmscreen.asm"
end
