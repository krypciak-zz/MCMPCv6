execute store result score temp0 mcm run data get storage cmd a[2]
execute store result entity @e[name=ir,limit=1] Pos[2] double 0.004 run scoreboard players get temp0 mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=ir,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=ir] store result score temp1 mcm run data get block ~ ~ ~ RecordItem.tag.a

execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run data get storage cmd a[3]
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp1 mcm
