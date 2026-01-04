execute store result score #temp chalc run data get entity @s SelectedItem.components."minecraft:custom_name"
execute if score #temp chalc matches 0 run return run item modify entity @s weapon.mainhand chalc:make_nametag_nameable
item modify entity @s weapon.mainhand chalc:make_nametag_usable