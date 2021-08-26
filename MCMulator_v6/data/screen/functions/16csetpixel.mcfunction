execute store result entity @e[name=screenDraw,limit=1] Pos[0] double 1 run scoreboard players get pixelX mcm
execute store result entity @e[name=screenDraw,limit=1] Pos[2] double 1 run scoreboard players get pixelY mcm

execute if score pixelColor mcm < 8 values run function screen:16csetpixel_8
execute if score pixelColor mcm > 7 values run function screen:16csetpixel_16
