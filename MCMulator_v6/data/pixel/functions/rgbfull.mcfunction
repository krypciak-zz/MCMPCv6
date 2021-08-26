#  R
execute at @e[name=pr] store result score pixelR mcm run data get storage cmd a[6]
execute if score arg5 mcm matches 1 run function pixel:rgbfull_rnc

#  G
execute at @e[name=pr] store result score pixelG mcm run data get storage cmd a[8]
execute at @e[name=pr] store result score arg7 mcm run data get storage cmd a[7]
execute if score arg7 mcm matches 1 run function pixel:rgbfull_gnc
#  B
execute at @e[name=pr] store result score pixelB mcm run data get storage cmd a[10]
execute at @e[name=pr] store result score arg9 mcm run data get storage cmd a[9]
execute if score arg9 mcm matches 1 run function pixel:rgbfull_bnc

execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Pixel Full  ","bold":true,"color":"dark_red"},{"text":" PixelX: ","color":"dark_green"},{"score":{"name":"pixelX","objective":"mcm"}},{"text":" PixelY: ","color":"dark_green"},{"score":{"name":"pixelY","objective":"mcm"}},{"text":" PixelR: ","color":"dark_green"},{"score":{"name":"pixelR","objective":"mcm"}},{"text":" PixelG: ","color":"dark_green"},{"score":{"name":"pixelG","objective":"mcm"}},{"text":" pixelB: ","color":"dark_green"},{"score":{"name":"pixelB","objective":"mcm"}}]
function screen:rgbsetpixel
