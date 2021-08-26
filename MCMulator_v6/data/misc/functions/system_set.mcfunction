execute at @e[name=pr] store result score arg4 mcm run data get storage cmd a[4]
execute if score arg3 mcm matches 0 run scoreboard players operation screenType mcm = arg4 mcm
execute if score arg3 mcm matches 1 run scoreboard players operation screenSizeX mcm = arg4 mcm
execute if score arg3 mcm matches 2 run scoreboard players operation screenSizeY mcm = arg4 mcm
