execute store result entity @e[name=rr,limit=1] Pos[0] double 1 run scoreboard players get temp3 mcm
execute at @e[name=rr] store result score temp3 mcm run data get block ~ ~ ~ RecordItem.tag.a
