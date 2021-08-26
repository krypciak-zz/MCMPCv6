function screen:remove

execute if score screenSizeX mcm <= 0 values run scoreboard players set screenSizeX mcm 8
execute if score screenSizeY mcm <= 0 values run scoreboard players set screenSizeY mcm 8
execute if score screenSizeX mcm > 170 values run scoreboard players set screenSizeX mcm 170
execute if score screenSizeY mcm > 170 values run scoreboard players set screenSizeY mcm 170
execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get screenSizeX mcm
execute as @e[name=resize] store result entity @s Pos[2] double 1 run scoreboard players get screenSizeY mcm
execute at @e[name=resize] run fill -1 12 -1 ~ 12 ~ minecraft:sticky_piston[facing=up]

function screen:16cclear
