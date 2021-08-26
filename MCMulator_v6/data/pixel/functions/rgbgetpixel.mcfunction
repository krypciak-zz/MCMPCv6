execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Pixel Get ","bold":true,"color":"dark_red"},{"text":" PixelX: ","color":"dark_green"},{"score":{"name":"pixelX","objective":"mcm"}},{"text":" PixelY: ","color":"dark_green"},{"score":{"name":"pixelY","objective":"mcm"}}]
function screen:rgbgetpixel
execute at @e[name=pr] store result score ramcell mcm run data get storage cmd a[6]
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get pixelR mcm
scoreboard players add ramcell mcm 1
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get pixelG mcm
scoreboard players add ramcell mcm 1
execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get ramcell mcm
execute at @e[name=rr] store result block ~ ~ ~ RecordItem.tag.a int 1 run scoreboard players get pixelB mcm
