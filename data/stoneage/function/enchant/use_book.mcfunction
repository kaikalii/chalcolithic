advancement revoke @s only stoneage:use_enchanted_book

execute if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run return run function stoneage:enchant/use_mainhand
execute if entity @s[nbt={equipment:{offhand:{id:"minecraft:enchanted_book"}}}] run return run function stoneage:enchant/use_offhand
