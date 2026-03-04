execute store result score #my_x chalc run data get entity @s Pos[0] 100
execute store result score #my_y chalc run data get entity @s Pos[1] 100
execute store result score #my_z chalc run data get entity @s Pos[2] 100

# Hop up small lips
scoreboard players operation #inner_y chalc = #my_y chalc
scoreboard players operation #inner_y chalc %= #100 chalc
execute as @s[nbt={OnGround:1b}] if score #inner_y chalc matches 85.. align y run tp ~ ~1.1 ~

# Calc distances
execute store result score #x chalc run scoreboard players get #plenty_x chalc
execute store result score #y chalc run scoreboard players get #plenty_y chalc
execute store result score #z chalc run scoreboard players get #plenty_z chalc

scoreboard players operation #x chalc -= #my_x chalc
scoreboard players operation #y chalc -= #my_y chalc
scoreboard players operation #z chalc -= #my_z chalc

# Requires similar y
execute if score #y chalc matches 100.. run return 0
execute if score #y chalc matches ..-100 run return 0

# XZ distance approximation
scoreboard players set #sum chalc 0
execute if score #x chalc matches 0.. run scoreboard players operation #sum chalc += #x chalc
execute if score #x chalc matches ..0 run scoreboard players operation #sum chalc -= #x chalc
execute if score #z chalc matches 0.. run scoreboard players operation #sum chalc += #z chalc
execute if score #z chalc matches ..0 run scoreboard players operation #sum chalc -= #z chalc
scoreboard players operation #x chalc *= #100 chalc
scoreboard players operation #z chalc *= #100 chalc
scoreboard players operation #x chalc /= #sum chalc
scoreboard players operation #z chalc /= #sum chalc

execute store result score #dx chalc run data get entity @s Motion[0] 500
execute store result score #dz chalc run data get entity @s Motion[2] 500
scoreboard players operation #dx chalc += #x chalc
scoreboard players operation #dz chalc += #z chalc

execute store result entity @s Motion[0] double 0.002 run scoreboard players get #dx chalc
execute store result entity @s Motion[2] double 0.002 run scoreboard players get #dz chalc

# Keep alive
execute store result score #age chalc run data get entity @s Age
scoreboard players remove #age chalc 20
execute store result entity @s Age int 1 run scoreboard players get #age chalc
