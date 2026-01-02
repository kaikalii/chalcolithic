# Make book consumable
execute as @a if entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run item modify entity @s weapon.mainhand chalc:make_enchanted_book_consumable
execute as @a if entity @s[nbt={equipment:{offhand:{id:"minecraft:enchanted_book"}}}] run item modify entity @s weapon.offhand chalc:make_enchanted_book_consumable
