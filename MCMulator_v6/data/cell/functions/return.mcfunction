execute if score coreDebug mcm matches 1 run tellraw @a ["",{"text":"Cell Return","bold":true,"color":"dark_red"}]
execute store result score pescell mcm run data get storage s a[0]
function cell:return_push
