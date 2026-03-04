execute unless data entity @s data.prize run return 0
execute store result score #prize_x chalc run data get entity @s Pos[0] 100
execute store result score #prize_y chalc run data get entity @s Pos[1] 100
execute store result score #prize_z chalc run data get entity @s Pos[2] 100
execute as @s[nbt={data:{prize:1}}] as @e[type=item,distance=..5] at @s run function chalc:pot/prize/attract
execute as @s[nbt={data:{prize:2}}] as @e[type=item,distance=..10] at @s run function chalc:pot/prize/attract
execute as @s[nbt={data:{prize:3}}] as @e[type=item,distance=..15] at @s run function chalc:pot/prize/attract
execute as @s[nbt={data:{prize:4}}] as @e[type=item,distance=..20] at @s run function chalc:pot/prize/attract