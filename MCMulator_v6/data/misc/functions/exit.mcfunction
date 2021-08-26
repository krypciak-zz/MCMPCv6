execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Misc  Exit     ","bold":true,"color":"dark_red"}]
#execute if score arg2 mcm matches 0 run scoreboard players set coreStop mcm 1
#execute if score arg2 mcm matches 0 run scoreboard players set sessionStop mcm 1
scoreboard players set sessionStop mcm 1
