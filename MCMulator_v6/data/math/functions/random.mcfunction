execute at @e[name=pr] store result score arg2 mcm run data get storage cmd a[2]

summon minecraft:area_effect_cloud -5 2 -1
execute store result score temp2 mcm run data get entity @e[type=minecraft:area_effect_cloud, limit=1] UUID[0] 1
execute at @e[name=pr] store result score temp3 mcm run data get storage cmd a[3]
scoreboard players operation temp3 mcm -= arg2 mcm
scoreboard players operation temp2 mcm %= temp3 mcm
scoreboard players operation temp2 mcm += arg2 mcm
kill @e[type=minecraft:area_effect_cloud]

scoreboard players add temp2 mcm 1

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Math Random ","bold":true,"color":"dark_red"},{"text":"from ","color":"gold"},{"score":{"name":"arg2","objective":"mcm"}},{"text":" to ","color":"gold"},{"score":{"name":"arg3","objective":"mcm"}},{"text":"  Result: ","color":"gold"},{"score":{"name":"temp2","objective":"mcm"}}]
execute at @e[name=pr] store result score arg4 mcm run data get storage cmd a[4]
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get arg4 mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp2 mcm
