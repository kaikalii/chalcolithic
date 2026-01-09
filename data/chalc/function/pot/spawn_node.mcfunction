execute as @e[type=marker,distance=..0.5,nbt={CustomName:"Pot Node"}] run return 0
summon marker ~ ~ ~ {CustomName:"Pot Node"}
execute as @e[type=marker,distance=..0.5,nbt={CustomName:"Pot Node"}] run function chalc:pot/init_node
