# Update compost timer
scoreboard players add #compost_timer chalc 1
execute if score #compost_timer chalc matches 5 run scoreboard players set #compost_timer chalc 0

# Fill
execute as @e[type=item] at @s run function chalc:fill/tick_item

# Keep barrel open
execute as @a run function chalc:hitscan {f:"if block ~ ~ ~ barrel[facing=up] if items block ~ ~ ~ container.* #chalc:props_open_barrel run setblock ~ ~ ~ barrel[facing=up,open=true]"}