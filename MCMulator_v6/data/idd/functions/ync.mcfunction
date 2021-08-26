execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp2 mcm
execute at @e[name=rr] store result score temp2 mcm run data get block ~ ~ ~ RecordItem.tag.a
