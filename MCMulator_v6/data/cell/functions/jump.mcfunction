execute at @e[name=pr] store result score pescell mcm run data get storage cmd a[2]
execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Cell Jump ","bold":true,"color":"dark_red"},{"score":{"name":"pescell","objective":"mcm"}}]
