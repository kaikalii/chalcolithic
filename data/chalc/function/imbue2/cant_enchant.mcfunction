scoreboard players remove @s chalc.imbue2_timer 1
execute if score @s chalc.imbue2_timer matches ..0 run scoreboard players set @s chalc.imbue2_timer 0
execute if score @s chalc.imbue2_timer matches ..0 run data modify entity @s NoGravity set value 0b
