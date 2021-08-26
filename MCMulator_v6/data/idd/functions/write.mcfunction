#towrite
execute store result score temp1 mcm run data get storage cmd a[3]
execute store result score arg2 mcm run data get storage cmd a[2]
execute if score arg2 mcm matches 1 run function idd:value0nc


execute store result score temp0 mcm run data get storage cmd a[4]
execute store result entity @e[name=ir,limit=1] Pos[2] double 0.004 run scoreboard players get temp0 mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=ir,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=ir] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp1 mcm
