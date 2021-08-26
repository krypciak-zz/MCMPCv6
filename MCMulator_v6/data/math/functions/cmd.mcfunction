execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]

execute if score arg1 mcm matches 0 run function math:sub
execute if score arg1 mcm matches 1 run function math:multi
execute if score arg1 mcm matches 2 run function math:div
execute if score arg1 mcm matches 3 run function math:modulo
execute if score arg1 mcm matches 4 run function math:random

scoreboard players set sessionStop mcm 0
