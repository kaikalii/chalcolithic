advancement revoke @s only chalc:use/raw_material

execute if items entity @s weapon.mainhand #chalc:repair_material run return run function chalc:repair/use_hand {material:mainhand,equipment:offhand,equipment_path:"equipment.offhand"}
execute if items entity @s weapon.offhand #chalc:repair_material run return run function chalc:repair/use_hand {material:offhand,equipment:mainhand,equipment_path:"SelectedItem"}