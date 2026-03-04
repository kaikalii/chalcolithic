execute store result score #plenty_x chalc run data get entity @s Pos[0]
execute store result score #plenty_y chalc run data get entity @s Pos[1]
execute store result score #plenty_z chalc run data get entity @s Pos[2]
execute as @s[nbt={data:{plenty:1}}] as @e[type=item,distance=..5] run return run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:2}}] as @e[type=item,distance=..10] run return run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:3}}] as @e[type=item,distance=..15] run return run function chalc:pot/plenty/attract
execute as @s[nbt={data:{plenty:4}}] as @e[type=item,distance=..20] run return run function chalc:pot/plenty/attract