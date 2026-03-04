execute store result score #plenty_x chalc run data get entity @s Pos[0] 100
execute store result score #plenty_y chalc run data get entity @s Pos[1] 100
execute store result score #plenty_z chalc run data get entity @s Pos[2] 100
execute as @s[nbt={data:{plenty:1}}] as @e[type=item,distance=..5] at @s run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:2}}] as @e[type=item,distance=..10] at @s run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:3}}] as @e[type=item,distance=..15] at @s run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:4}}] as @e[type=item,distance=..20] at @s run function chalc:pot/plenty/attract