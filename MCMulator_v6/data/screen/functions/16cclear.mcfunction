execute if score screenSizeX mcm <= 0 values run scoreboard players set screenSizeX 8
execute if score screenSizeY mcm <= 0 values run scoreboard players set screenSizeY 8
execute if score screenSizeX mcm > 180 values run scoreboard players set screenSizeX 180
execute if score screenSizeY mcm > 180 values run scoreboard players set screenSizeY 180


scoreboard players operation temp0 mcm = screenSizeX mcm
scoreboard players remove temp0 mcm 1
execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get temp0 mcm

scoreboard players operation temp0 mcm = screenSizeY mcm
scoreboard players remove temp0 mcm 1
execute as @e[name=resize] store result entity @s Pos[2] double 1 run scoreboard players get temp0 mcm

execute at @e[name=resize] run fill 0 12 0 ~ 12 ~ minecraft:white_concrete
