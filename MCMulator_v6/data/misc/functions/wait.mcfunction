execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Misc  Wait   ","color":"dark_red", "bold":true},{"text":"Waiting ","color":"gold"},{"score":{"name":"arg2","objective":"mcm"}},{"text":" ticks","color":"gold"}]
execute if score arg2 mcm matches 1 run schedule function misc:wait_done 1t replace
execute if score arg2 mcm matches 2 run schedule function misc:wait_done 2t replace
execute if score arg2 mcm matches 3 run schedule function misc:wait_done 3t replace
execute if score arg2 mcm matches 4 run schedule function misc:wait_done 4t replace
execute if score arg2 mcm matches 5 run schedule function misc:wait_done 5t replace
execute if score arg2 mcm matches 10 run schedule function misc:wait_done 10t replace
execute if score arg2 mcm matches 20 run schedule function misc:wait_done 20t replace
