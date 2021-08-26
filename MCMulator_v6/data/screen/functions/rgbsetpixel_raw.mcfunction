scoreboard players operation temp0 mcm = pixelX mcm
scoreboard players operation temp0 mcm /= 3 values
execute store result entity @e[name=screenDraw,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

scoreboard players operation temp0 mcm = pixelY mcm
scoreboard players operation temp0 mcm /= 3 values
execute store result entity @e[name=screenDraw,limit=1] Pos[2] double 1 run scoreboard players get temp0 mcm


scoreboard players operation temp3 mcm = pixelX mcm
scoreboard players operation temp3 mcm %= 3 values

scoreboard players operation temp4 mcm = pixelY mcm
scoreboard players operation temp4 mcm %= 3 values

execute if score temp4 mcm matches 0 at @e[name=screenDraw] run tp @e[name=screenDraw] ~ 10 ~
execute if score temp4 mcm matches 1 at @e[name=screenDraw] run tp @e[name=screenDraw] ~ 11 ~
execute if score temp4 mcm matches 2 at @e[name=screenDraw] run tp @e[name=screenDraw] ~ 12 ~


execute if score temp3 mcm matches 2 at @e[name=screenDraw,limit=1] store result block ~ ~ ~ SpawnData.ArmorItems[3].tag.display.color int 1 run scoreboard players get pixelR mcm
execute if score temp3 mcm matches 1 at @e[name=screenDraw,limit=1] store result block ~ ~ ~ SpawnData.HandItems[0].tag.display.color int 1 run scoreboard players get pixelR mcm
execute if score temp3 mcm matches 0 at @e[name=screenDraw,limit=1] store result block ~ ~ ~ SpawnData.HandItems[1].tag.display.color int 1 run scoreboard players get pixelR mcm
