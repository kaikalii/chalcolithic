execute if score #age chalc matches ..8 unless entity @a[distance=..2] run return 0

execute store result score #temp chalc run data get entity @s Motion[0] 1000
scoreboard players set #mx chalc 0
scoreboard players operation #mx chalc -= #temp chalc
execute store result entity @s Motion[0] float 0.001 run scoreboard players get #mx chalc

execute store result score #temp chalc run data get entity @s Motion[1] 1000
scoreboard players set #my chalc 0
scoreboard players operation #my chalc -= #temp chalc
execute store result entity @s Motion[1] float 0.001 run scoreboard players get #my chalc

execute store result score #temp chalc run data get entity @s Motion[2] 1000
scoreboard players set #mz chalc 0
scoreboard players operation #mz chalc -= #temp chalc
execute store result entity @s Motion[2] float 0.001 run scoreboard players get #mz chalc

execute store result score #temp chalc run data get entity @s Rotation[0] 1000
scoreboard players set #rot chalc 0
scoreboard players operation #rot chalc -= #temp chalc
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get #rot chalc

execute store result score #temp chalc run data get entity @s Rotation[1] 1000
scoreboard players set #rot chalc 0
scoreboard players operation #rot chalc -= #temp chalc
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get #rot chalc

playsound entity.wolf_big.ambient block @a ~ ~ ~ 1 2 0.2
particle gust ~ ~ ~ 0 0 0 0 1

tag @s add deflected