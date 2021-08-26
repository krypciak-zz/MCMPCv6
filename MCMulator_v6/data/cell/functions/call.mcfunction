execute store result storage s av int 1 run scoreboard players get pescell mcm
data modify storage s a insert 0 from storage s av
execute at @e[name=pr] store result score pescell mcm run data get storage cmd a[2]
execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Cell Call ","bold":true,"color":"dark_red"},{"score":{"name":"pescell","objective":"mcm"}}]
