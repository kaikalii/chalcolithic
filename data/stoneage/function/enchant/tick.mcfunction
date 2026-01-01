# Make book consumable
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run item modify entity @s weapon.mainhand stoneage:make_consumable_brush
execute as @a if entity @s[nbt={equipment:{offhand:{id:"minecraft:enchanted_book"}}}] run item modify entity @s weapon.offhand stoneage:make_consumable_brush
