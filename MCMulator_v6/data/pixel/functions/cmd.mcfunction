execute at @e[name=pr] store result score pixelX mcm run data get storage cmd a[2]
execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]
execute if score arg1 mcm matches 1 run function pixel:xnc


execute at @e[name=pr] store result score pixelY mcm run data get storage cmd a[4]
execute at @e[name=pr] store result score arg3 mcm run data get storage cmd a[3]
execute if score arg3 mcm matches 1 run function pixel:ync

execute at @e[name=pr] store result score arg5 mcm run data get storage cmd a[5]
execute if score screenType mcm matches 1 run function pixel:16c
execute if score screenType mcm matches 0 run function pixel:rgb
