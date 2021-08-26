execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]
execute if score arg1 mcm matches 0 run function cell:jump
execute if score arg1 mcm matches 1 run function cell:call
execute if score arg1 mcm matches 2 run function cell:return
scoreboard players set sessionStop mcm 0
