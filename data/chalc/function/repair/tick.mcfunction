execute as @a if items entity @s weapon.mainhand #chalc:repair_material run function chalc:repair/tick_hand {material:mainhand,equipment:offhand,equipment_path:equipement.offhand}
execute as @a if items entity @s weapon.offhand #chalc:repair_material run function chalc:repair/tick_hand {material:offhand,equipment:mainhand,equipment_path:SelectedItem}

scoreboard players remove @a chalc.repair_timer 1
execute as @a if score @s chalc.repair_timer matches ..0 run scoreboard players set @s chalc.repair_timer 0