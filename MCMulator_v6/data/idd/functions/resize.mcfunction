function idd:remove
execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get storageSizeX mcm
tp @e[name=resize] ~ 5 ~
function idd:flush
