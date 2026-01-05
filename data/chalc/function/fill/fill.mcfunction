data modify storage chalc:macro fill set from entity @s Item
data modify storage chalc:macro fill merge value {components: {}}
function chalc:fill/fill_with with storage chalc:macro fill
kill @s
