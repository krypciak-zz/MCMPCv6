execute store result entity @e[name=pr,limit=1] Pos[2] double 0.004 run scoreboard players get pescell mcm
scoreboard players operation temp0 mcm = pescell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=pr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

execute at @e[name=pr] run data modify storage cmd a set from block ~ ~ ~ RecordItem.tag.a

execute at @e[name=pr] store result score arg0 mcm run data get storage cmd a[0]
execute at @e[name=pr] if block ~ ~ ~ air run scoreboard players set arg0 mcm -1


scoreboard players set sessionStop mcm 1

execute if score arg0 mcm < 3 values run function core:cmd_group0
execute if score arg0 mcm > 2 values run function core:cmd_group1

scoreboard players add commandAmount mcm 1

scoreboard players add pescell mcm 1
execute if score coreStop mcm matches 0 if score sessionStop mcm matches 0 run function core:command
