execute if score screenSizeX mcm <= 0 values run scoreboard players set screenSizeX 8
execute if score screenSizeY mcm <= 0 values run scoreboard players set screenSizeY 8
execute if score screenSizeX mcm > 240 values run scoreboard players set screenSizeX 240
execute if score screenSizeY mcm > 240 values run scoreboard players set screenSizeY 240

scoreboard players operation temp0 mcm = screenSizeX mcm
scoreboard players operation temp0 mcm /= 3 values
scoreboard players remove temp0 mcm 1
execute as @e[name=resize] store result entity @s Pos[0] double 1 run scoreboard players get temp0 mcm

scoreboard players operation temp0 mcm = screenSizeY mcm
scoreboard players operation temp0 mcm /= 3 values
scoreboard players remove temp0 mcm 1
execute as @e[name=resize] store result entity @s Pos[2] double 1 run scoreboard players get temp0 mcm

execute at @e[name=resize] run fill 0 12 0 ~ 12 ~ minecraft:spawner{SpawnPotentials:[{}],MaxNearbyEntities:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:2}},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:3}}],ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:1}}]}}
execute at @e[name=resize] run fill 0 11 0 ~ 11 ~ minecraft:spawner{SpawnPotentials:[{}],MaxNearbyEntities:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:5}},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:6}}],ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:4}}]}}
execute at @e[name=resize] run fill 0 10 0 ~ 10 ~ minecraft:spawner{SpawnPotentials:[{}],MaxNearbyEntities:0,SpawnData:{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},HandItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:8}},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:9}}],ArmorItems:[{},{},{},{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215},CustomModelData:7}}]}}
