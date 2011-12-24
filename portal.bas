  set debug cyclescore

  dim frame = a
  dim p0x = x
  dim p0y = y
  dim grid0x = b
  dim grid0y = c
  dim gravityCounter = d
  dim v0x = e
  dim v0y = f
  dim p0state = g
  dim myjoystick = h
  dim minicycles = z

  minicycles = 255
  p0x = 25
  p0y = 16
  frame = 0
  gravityCounter = 0
  v0y = 0
  p0state = 0

  playfield:
   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   X..............................X
   XXXXX..........................X
   X.....XX.......................X
   X....X.........................X
   X..............................X
   X..XXXXXXXXXX..................X
   X...............X..............X
   X...........XXXXX..............X
   X.....................XX..XX...X
   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end

mainloop
  COLUBK = $0E
  COLUP0 = $3A
  player0x = p0x
  player0y = p0y

  drawscreen

  grid0x = (p0x - 14)/4
  grid0y = (p0y - 1)/8

joystick
  w = p0y/8
  r = pfread(grid0x,w)
  if !r && joy0up && !p0state{0} then v0y = 0-1
  if joy0right then myjoystick = 4
  if joy0left then myjoystick = 1

checkmove
  if myjoystick = 1 then REFP0 = 8
  if joy0right || joy0left then goto move
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
  goto gravity

move
  if !joy0right then goto checkleft
    temp1 = (p0x - 12)/4
    if !pfread(temp1,grid0y) then p0x = p0x + 1
    goto animate

checkleft
    temp1 = (p0x - 15)/4
    if !pfread(temp1,grid0y) then p0x = p0x - 1

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

gravity
  w = (p0y + 1)/8
  if p0state{0} then goto checkfall
  if !pfread(grid0x,w) then p0state{0} = 1 : goto falling
  goto applyforces

checkfall
  if !pfread(grid0x,w) then goto falling
  gravityCounter = 0
  v0y = 0
  p0y = w*8
  p0state{0} = 0
  goto applyforces

falling
  gravityCounter = gravityCounter + 1
  if gravityCounter = 4 then v0y = v0y + 1 : gravityCounter = 0
  p0y = p0y + v0y

applyforces
  p0y = p0y + v0y
  goto mainloop
