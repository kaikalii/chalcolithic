execute unless block ~ ~-1 ~ lapis_block run return 0

# Calc max
scoreboard players set #imbue_max chalc 0
execute positioned ~1 ~-1 ~0 run function chalc:imbue2/max_add
execute positioned ~1 ~-1 ~1 run function chalc:imbue2/max_add
execute positioned ~0 ~-1 ~1 run function chalc:imbue2/max_add
execute positioned ~-1 ~-1 ~1 run function chalc:imbue2/max_add
execute positioned ~-1 ~-1 ~0 run function chalc:imbue2/max_add
execute positioned ~-1 ~-1 ~-1 run function chalc:imbue2/max_add
execute positioned ~0 ~-1 ~-1 run function chalc:imbue2/max_add
execute positioned ~1 ~-1 ~-1 run function chalc:imbue2/max_add

execute if score #imbue_max chalc matches 0 run return run title @s actionbar {text:"No enchanting power",color:"red"}

execute unless items entity @s weapon.mainhand #chalc:catalyst unless items entity @s weapon.mainhand #chalc:imbue_power if data entity @s SelectedItem run return run function chalc:imbue2/invalid_catalyst
execute if items entity @s weapon.mainhand #chalc:catalyst if data entity @s SelectedItem.components."minecraft:stored_enchantments" run return 0

# Do enchantments or show power
execute unless function chalc:imbue2/try_enchantments run title @s actionbar {text:"Enchanting power: ", extra: [{score:{name:"#imbue_max",objective:"chalc"}}]}