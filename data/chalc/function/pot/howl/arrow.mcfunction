# Tick age
scoreboard players set #age chalc 0
execute if data entity @s data.Age store result score #age chalc run data get entity @s data.Age
scoreboard players add #age chalc 1
execute store result entity @s data.Age long 1 run scoreboard players get #age chalc

execute if entity @e[type=text_display,nbt={data:{howl:1}},distance=..10] run return run function chalc:pot/howl/deflect
execute if entity @e[type=text_display,nbt={data:{howl:2}},distance=..12] run return run function chalc:pot/howl/deflect
execute if entity @e[type=text_display,nbt={data:{howl:3}},distance=..14] run return run function chalc:pot/howl/deflect
execute if entity @e[type=text_display,nbt={data:{howl:4}},distance=..16] run return run function chalc:pot/howl/deflect