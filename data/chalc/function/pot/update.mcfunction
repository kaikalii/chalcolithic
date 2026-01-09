function chalc:pot/remove_range_effects

execute as @e[type=marker,nbt={CustomName:"Pot Node"}] at @s run function chalc:pot/update_node

schedule function chalc:pot/update 20