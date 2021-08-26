#base
execute store result score temp3 mcm run data get storage cmd a[2]

#x
execute store result score temp1 mcm run data get storage cmd a[4]
execute store result score arg3 mcm run data get storage cmd a[3]
execute if score arg3 mcm matches 1 run function idd:xnc

#y
execute store result score temp2 mcm run data get storage cmd a[6]
execute store result score arg5 mcm run data get storage cmd a[5]
execute if score arg5 mcm matches 1 run function idd:ync

scoreboard players operation temp3 mcm += temp1 mcm
scoreboard players operation temp3 mcm += temp2 mcm

execute store result entity @e[name=ir,limit=1] Pos[2] double 0.004 run scoreboard players get temp3 mcm
scoreboard players operation temp3 mcm %= storageSizeX mcm
execute store result entity @e[name=ir,limit=1] Pos[0] double 1 run scoreboard players get temp3 mcm

execute at @e[name=ir] store result score temp1 mcm run data get block ~ ~ ~ RecordItem.tag.a

execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run data get storage cmd a[7]
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp1 mcm
