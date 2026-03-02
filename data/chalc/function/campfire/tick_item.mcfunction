execute store result score #temp chalc run data get block ~ ~ ~ Items
execute if score #temp chalc matches 4 run return 0

data modify storage chalc:macro item set from entity @s Item
data modify storage chalc:macro item.Slot set value 0b
execute unless data block ~ ~ ~ Items[{Slot:0b}] run return run function chalc:campfire/add {slot:0}
data modify storage chalc:macro item.Slot set value 1b
execute unless data block ~ ~ ~ Items[{Slot:1b}] run return run function chalc:campfire/add {slot:1}
data modify storage chalc:macro item.Slot set value 2b
execute unless data block ~ ~ ~ Items[{Slot:2b}] run return run function chalc:campfire/add {slot:2}
data modify storage chalc:macro item.Slot set value 3b
execute unless data block ~ ~ ~ Items[{Slot:3b}] run return run function chalc:campfire/add {slot:3}