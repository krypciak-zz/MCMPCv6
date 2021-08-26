function screen:remove

execute if score screenSizeX mcm <= 0 values run scoreboard players set screenSizeX mcm 8
execute if score screenSizeY mcm <= 0 values run scoreboard players set screenSizeY mcm 8
execute if score screenSizeY mcm > 240 values run scoreboard players set screenSizeY mcm 240
execute if score screenSizeX mcm > 240 values run scoreboard players set screenSizeX mcm 240

scoreboard players operation temp0 mcm = screenSizeX mcm
scoreboard players operation temp0 mcm /= 3 values

execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get temp0 mcm

scoreboard players operation temp0 mcm = screenSizeY mcm
scoreboard players operation temp0 mcm /= 3 values

execute as @e[name=resize] store result entity @s Pos[2] double 1 run scoreboard players get temp0 mcm
execute at @e[name=resize] run fill -1 12 -1 ~ 12 ~ minecraft:sticky_piston[facing=up]

function screen:rgbclear
