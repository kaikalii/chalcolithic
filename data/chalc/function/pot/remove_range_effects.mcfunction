execute as @e[type=creeper,tag=nullified] run function chalc:pot/danger/unnullify_creeper
execute as @a[tag=!should_upgrade] at @s run function chalc:pot/skull/downgrade_gear
execute as @a[tag=should_upgrade] run tag @s remove should_upgrade

execute as @e[tag=arms_up] run data modify entity @s NoGravity set value 0b
effect clear @e[tag=arms_up] levitation
tag @e[tag=arms_up] remove arms_up