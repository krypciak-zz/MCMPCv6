scoreboard players set temp2 mcm 0
execute if score temp0 mcm = temp1 mcm run scoreboard players set temp2 mcm 1
execute if score temp2 mcm matches 0 run scoreboard players set arg0 mcm 1
