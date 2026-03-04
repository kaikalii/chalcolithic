scoreboard players set #plenty_item chalc -1
execute if data block ~ ~-1 ~ Items[{id:"minecraft:iron_ingot"}] run scoreboard players set #plenty_item chalc 1
execute if data block ~ ~-1 ~ Items[{id:"minecraft:raw_iron_block"}] run scoreboard players set #plenty_item chalc 0
execute if score #plenty_item chalc matches -1 run return 0
execute if score #plenty_item chalc matches 0 run data modify storage chalc:macro plenty set value {id:"minecraft:raw_iron_block"}
execute if score #plenty_item chalc matches 1 run data modify storage chalc:macro plenty set value {id:"minecraft:iron_ingot"}
function chalc:pot/plenty/try_distribute