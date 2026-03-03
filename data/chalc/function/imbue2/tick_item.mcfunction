execute as @s[tag=!catalyst] as @n[distance=..2,tag=catalyst] run return 0

# Calc max
scoreboard players set #imbue_max chalc 0
execute if block ~ ~-1 ~ lapis_block run function chalc:imbue2/max_calc

# Try to enchant
execute if score #imbue_max chalc matches 1.. if block ~ ~-1 ~ lapis_block run return run function chalc:imbue2/can_enchant
execute unless block ~ ~-1 ~ lapis_block run scoreboard players set @s chalc.imbue2_timer 0
function chalc:imbue2/cant_enchant
