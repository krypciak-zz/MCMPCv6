scoreboard players operation temp0 mcm = storageSizeX mcm
scoreboard players remove temp0 mcm 1
execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get temp0 mcm
execute at @e[name=resize] run fill 0 5 0 ~ 5 0 minecraft:jukebox{RecordItem:{id:"minecraft:kelp",Count:1b, tag:{a:-1}}}
