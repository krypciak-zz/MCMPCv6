execute if score arg5 mcm matches 3 run function pixel:rgbgetpixel
execute if score arg5 mcm matches 2 run function pixel:rgbraw
execute if score arg5 mcm < 2 values run function pixel:rgbfull

scoreboard players set sessionStop mcm 0
