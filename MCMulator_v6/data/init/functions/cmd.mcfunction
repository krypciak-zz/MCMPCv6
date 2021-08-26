execute at @e[name=pr] store result score readerInput mcm run data get storage cmd a[1]

#execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Init  ","bold":true,"color":"dark_red"},{"score":{"name":"readerInput","objective":"mcm"},"color":"#FFFFFF"},{"text":"    Write to cell: ","color":"gold"},{"score":{"name":"ramcell","objective":"mcm"},"color":"#FFFFFF"}]
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 at @e[name=pr] run data get storage cmd a[2]
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 at @e[name=pr] run data get storage cmd a[1]


scoreboard players set sessionStop mcm 0
