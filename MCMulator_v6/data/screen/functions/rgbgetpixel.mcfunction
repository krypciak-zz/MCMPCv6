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


scoreboard players set temp19 mcm 0

execute if score temp3 mcm matches 2 at @e[name=screenDraw,limit=1] store result score temp10 mcm run data get block ~ ~ ~ SpawnData.ArmorItems[3].tag.display.color
execute if score temp3 mcm matches 1 at @e[name=screenDraw,limit=1] store result score temp10 mcm run data get block ~ ~ ~ SpawnData.HandItems[0].tag.display.color
execute if score temp3 mcm matches 0 at @e[name=screenDraw,limit=1] store result score temp10 mcm run data get block ~ ~ ~ SpawnData.HandItems[1].tag.display.color

scoreboard players operation pixelR mcm = temp10 mcm
scoreboard players operation pixelR mcm /= 65536 values
scoreboard players operation temp6 mcm = pixelR mcm
scoreboard players operation temp6 mcm *= 65536 values
scoreboard players operation pixelG mcm = temp10 mcm
scoreboard players operation pixelG mcm -= temp6 mcm
scoreboard players operation pixelG mcm /= 256 values
scoreboard players operation temp8 mcm = pixelG mcm
scoreboard players operation temp8 mcm *= 256 values
scoreboard players operation pixelB mcm = temp10 mcm
scoreboard players operation pixelB mcm -= temp6 mcm
scoreboard players operation pixelB mcm -= temp8 mcm
