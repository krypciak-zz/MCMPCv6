function screen:16cgetpixel

execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get arg6 mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get pixelColor mcm
