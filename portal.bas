  set romsize 8k
mainmenu

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
