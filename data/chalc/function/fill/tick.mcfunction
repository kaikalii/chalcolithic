scoreboard players add #compost_timer chalc 1
execute if score #compost_timer chalc matches 5 run scoreboard players set #compost_timer chalc 0

execute as @e[type=item] at @s run function chalc:fill/tick_item