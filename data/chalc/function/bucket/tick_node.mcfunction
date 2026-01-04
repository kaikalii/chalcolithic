scoreboard players remove @s chalc.fluid_timer 1
$execute if score @s chalc.fluid_timer matches ..0 if block ~ ~ ~ $(fluid)[level=0] run setblock ~ ~ ~ $(fluid)[level=15]
execute if score @s chalc.fluid_timer matches ..0 run kill @s