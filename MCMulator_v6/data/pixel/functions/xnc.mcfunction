execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get pixelX mcm
execute at @e[name=rr] store result score pixelX mcm run data get block ~ ~ ~ RecordItem.tag.a
