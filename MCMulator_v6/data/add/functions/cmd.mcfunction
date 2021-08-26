#value1 = temp0
execute at @e[name=pr] store result score temp0 mcm run data get storage cmd a[1]
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm
execute at @e[name=rr] store result score temp0 mcm run data get block ~ ~ ~ RecordItem.tag.a

#value2 = temp1
execute at @e[name=pr] store result score temp1 mcm run data get storage cmd a[3]
execute at @e[name=pr] store result score arg2 mcm run data get storage cmd a[2]
execute if score arg2 mcm matches 1 run function add:argnc

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Add  ","bold":true,"color":"dark_red"},{"score":{"name":"temp0","objective":"mcm"}},{"text":" + ","bold":true,"color":"dark_red"},{"score":{"name":"temp1","objective":"mcm"}}]
scoreboard players operation temp0 mcm += temp1 mcm


execute store result entity @e[name=rr,limit=1] Pos[0] double 1 at @e[name=pr] run data get storage cmd a[4]
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get temp0 mcm

scoreboard players set sessionStop mcm 0
