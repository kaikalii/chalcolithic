scoreboard players set #sherd_count chalc 0
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[0]
$execute if data storage chalc:macro {sherd:"minecraft:$(sherd)_pottery_sherd"} run scoreboard players add #sherd_count chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[1]
$execute if data storage chalc:macro {sherd:"minecraft:$(sherd)_pottery_sherd"} run scoreboard players add #sherd_count chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[2]
$execute if data storage chalc:macro {sherd:"minecraft:$(sherd)_pottery_sherd"} run scoreboard players add #sherd_count chalc 1
data modify storage chalc:macro sherd set from block ~ ~ ~ sherds[3]
$execute if data storage chalc:macro {sherd:"minecraft:$(sherd)_pottery_sherd"} run scoreboard players add #sherd_count chalc 1
$execute if score #sherd_count chalc matches 1.. store result entity @s data.$(sherd) int 1 run scoreboard players get #sherd_count chalc