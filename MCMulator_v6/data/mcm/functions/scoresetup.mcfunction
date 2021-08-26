scoreboard objectives remove mcm
scoreboard objectives add values dummy
scoreboard objectives add mcm dummy
#scoreboard objectives setdisplay sidebar mcm
#values
scoreboard players set 0 values 0
scoreboard players set 1 values 1
scoreboard players set 2 values 2
scoreboard players set 3 values 3
scoreboard players set 4 values 4
scoreboard players set 5 values 5
scoreboard players set 6 values 6
scoreboard players set 7 values 7
scoreboard players set 8 values 8
scoreboard players set 9 values 9
scoreboard players set 10 values 10
scoreboard players set 11 values 11
scoreboard players set 12 values 12
scoreboard players set 13 values 13
scoreboard players set 14 values 14
scoreboard players set 15 values 15
scoreboard players set 16 values 16
scoreboard players set 17 values 17
scoreboard players set 18 values 18
scoreboard players set 19 values 19
scoreboard players set 20 values 20
scoreboard players set 80 values 80
scoreboard players set 120 values 120
scoreboard players set 170 values 170
scoreboard players set 240 values 240
scoreboard players set 256 values 256
scoreboard players set 65536 values 65536

#screen
scoreboard players set screenSizeX mcm 60
scoreboard players set screenSizeY mcm 60
scoreboard players set pixelX mcm 0
scoreboard players set pixelY mcm 0
scoreboard players set pixelR mcm 0
scoreboard players set pixelG mcm 0
scoreboard players set pixelB mcm 0
scoreboard players set screenType mcm 0


#storage
scoreboard players set storageSizeX mcm 250
scoreboard players set storageSizeZ mcm 250

scoreboard players set pescell mcm 0
scoreboard players set ramcell mcm 0
scoreboard players set iddcell mcm 0

scoreboard players set readerOutput mcm 0
scoreboard players set readerInput mcm 0

scoreboard players set datarodIndex mcm 0

#core
scoreboard players set coreDebug mcm 1
scoreboard players set coreStop mcm 0
scoreboard players set mathWriteCell mcm 0
scoreboard players set mathValue1 mcm 0
scoreboard players set mathValue2 mcm 0
scoreboard players set ifSuccess mcm 0

scoreboard players set arg0 mcm 0
scoreboard players set arg1 mcm 0
scoreboard players set arg2 mcm 0
scoreboard players set arg3 mcm 0
scoreboard players set arg4 mcm 0
scoreboard players set arg5 mcm 0
scoreboard players set arg6 mcm 0
scoreboard players set arg7 mcm 0
scoreboard players set arg8 mcm 0
scoreboard players set arg9 mcm 0
scoreboard players set arg10 mcm 0

#temp
scoreboard players set temp0 mcm 0
scoreboard players set temp1 mcm 0
scoreboard players set temp2 mcm 0
scoreboard players set temp3 mcm 0
scoreboard players set temp4 mcm 0
scoreboard players set temp5 mcm 0
scoreboard players set temp6 mcm 0
scoreboard players set temp7 mcm 0
scoreboard players set temp8 mcm 0
scoreboard players set temp9 mcm 0
scoreboard players set temp10 mcm 0

forceload remove all
forceload add 0 0 249 249

tellraw @a {"text":"Done.","bold":true,"color":"green"}
