execute at @e[name=pr] store result score arg3 mcm run data get storage cmd a[3]

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Misc System","bold":true,"color":"dark_red"}]
execute if score arg2 mcm matches 0 run function misc:system_get
execute if score arg2 mcm matches 1 run function misc:system_set
execute if score arg2 mcm matches 2 run function misc:system_call
scoreboard players set sessionStop mcm 0
