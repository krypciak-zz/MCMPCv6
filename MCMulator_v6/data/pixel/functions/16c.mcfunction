execute at @e[name=pr] store result score arg6 mcm run data get storage cmd a[6]

execute if score arg5 mcm matches 3 run function pixel:16cgetpixel
execute if score arg5 mcm < 2 values run function pixel:16csetpixel

scoreboard players set sessionStop mcm 0
