execute as @e[type=item] at @s positioned ~ ~ ~ if block ~ ~ ~ #chalc:chest run function chalc:fill/fill
execute as @e[type=item] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #chalc:full_and_fillable run function chalc:fill/fill
execute as @e[type=item] at @s positioned ~ ~-1 ~ if block ~ ~ ~ barrel[facing=up] run setblock ~ ~ ~ barrel[facing=up,open=true]
execute as @e[type=item] at @s positioned ~ ~-1 ~ if block ~ ~ ~ barrel[facing=up] run function chalc:fill/fill