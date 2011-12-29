
 ; This is where the titlescreen background color gets set. 
 ; You can also do a "dim titlescreencolor=[letter]" in bB
 ; if you want to change the color on the fly.

 ifnconst lovescreencolor
lovescreencolor
 endif
 .byte $0F

