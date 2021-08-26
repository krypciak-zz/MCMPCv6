execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]
execute at @e[name=pr] store result score arg2 mcm run data get storage cmd a[2]

execute if score arg1 mcm matches 0 run function misc:exit
execute if score arg1 mcm matches 1 run function misc:wait
execute if score arg1 mcm matches 2 run function misc:system
