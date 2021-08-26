execute store result entity @e[name=screenDraw,limit=1] Pos[0] double 1 run scoreboard players get pixelX mcm
execute store result entity @e[name=screenDraw,limit=1] Pos[2] double 1 run scoreboard players get pixelY mcm

execute at @e[name=screenDraw] if block ~ 12 ~ white_concrete run scoreboard players set pixelColor mcm 0
execute at @e[name=screenDraw] if block ~ 12 ~ yellow_concrete run scoreboard players set pixelColor mcm 1
execute at @e[name=screenDraw] if block ~ 12 ~ orange_concrete run scoreboard players set pixelColor mcm 2
execute at @e[name=screenDraw] if block ~ 12 ~ red_concrete run scoreboard players set pixelColor mcm 3
execute at @e[name=screenDraw] if block ~ 12 ~ magenta_concrete run scoreboard players set pixelColor mcm 4
execute at @e[name=screenDraw] if block ~ 12 ~ purple_concrete run scoreboard players set pixelColor mcm 5
execute at @e[name=screenDraw] if block ~ 12 ~ blue_concrete run scoreboard players set pixelColor mcm 6
execute at @e[name=screenDraw] if block ~ 12 ~ light_blue_concrete run scoreboard players set pixelColor mcm 7
execute at @e[name=screenDraw] if block ~ 12 ~ lime_concrete run scoreboard players set pixelColor mcm 8
execute at @e[name=screenDraw] if block ~ 12 ~ green_concrete run scoreboard players set pixelColor mcm 9
execute at @e[name=screenDraw] if block ~ 12 ~ brown_concrete run scoreboard players set pixelColor mcm 10
execute at @e[name=screenDraw] if block ~ 12 ~ cyan_concrete run scoreboard players set pixelColor mcm 11
execute at @e[name=screenDraw] if block ~ 12 ~ light_gray_concrete run scoreboard players set pixelColor mcm 12
execute at @e[name=screenDraw] if block ~ 12 ~ pink_concrete run scoreboard players set pixelColor mcm 13
execute at @e[name=screenDraw] if block ~ 12 ~ gray_concrete run scoreboard players set pixelColor mcm 14
execute at @e[name=screenDraw] if block ~ 12 ~ black_concrete run scoreboard players set pixelColor mcm 15
