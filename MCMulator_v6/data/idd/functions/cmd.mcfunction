execute at @e[name=pr] store result score arg1 mcm run data get storage cmd a[1]
execute if score arg1 mcm matches 0 run function idd:write
execute if score arg1 mcm matches 1 run function idd:read
execute if score arg1 mcm matches 2 run function idd:array1write
execute if score arg1 mcm matches 3 run function idd:array1read
execute if score arg1 mcm matches 4 run function idd:array2write
execute if score arg1 mcm matches 5 run function idd:array2read
scoreboard players set sessionStop mcm 0
