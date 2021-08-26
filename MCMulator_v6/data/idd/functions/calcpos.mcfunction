scoreboard players operation temp0 mcm = iddcell mcm
scoreboard players operation temp0 mcm %= storageSizeX mcm
execute store result entity @e[name=ir,limit=1] Pos[0] double 1 run scoreboard players get temp0 mcm

scoreboard players operation temp0 mcm = iddcell mcm
scoreboard players operation temp0 mcm /= storageSizeX mcm
execute store result entity @e[name=ir,limit=1] Pos[2] double 1 run scoreboard players get temp0 mcm
