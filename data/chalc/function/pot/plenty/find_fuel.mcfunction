$execute unless data block ~ ~-1 ~ Items[{id:"minecraft:$(item)"}] run return 0
$scoreboard players set #plenty_item chalc $(n)
$data modify storage chalc:macro plenty set value {id:"minecraft:$(item)",count:1}
return 1