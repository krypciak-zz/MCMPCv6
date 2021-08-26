execute at @e[name=pr] store result score pixelR mcm run data get storage cmd a[6]
execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Pixel  ","bold":true,"color":"dark_red"},{"text":" PixelX: ","color":"dark_green"},{"score":{"name":"pixelX","objective":"mcm"}},{"text":" PixelY: ","color":"dark_green"},{"score":{"name":"pixelY","objective":"mcm"}},{"text":" Raw Pixel Color: ","color":"dark_green"},{"score":{"name":"pixelR","objective":"mcm"}}]
function screen:rgbsetpixel_raw
