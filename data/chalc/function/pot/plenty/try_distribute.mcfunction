scoreboard players set #distributed chalc 0

# Pots
scoreboard players set #plenty_item chalc -1
function chalc:pot/plenty/find_fuel {item:iron_ingot,n:1}
function chalc:pot/plenty/find_fuel {item:raw_iron_block,n:0}

execute if score #plenty_item chalc matches 0.. store result score #distributed chalc run function chalc:pot/plenty/distribute_pots
execute if score #distributed chalc matches 1 run return run function chalc:pot/plenty/remove with storage chalc:macro plenty

# Furnaces
scoreboard players set #plenty_item chalc -1
function chalc:pot/plenty/find_fuel {item:coal_block,n:13}
function chalc:pot/plenty/find_fuel {item:dried_kelp,n:12}
function chalc:pot/plenty/find_fuel {item:blaze_rod,n:11}
function chalc:pot/plenty/find_fuel {item:charcoal,n:10}
function chalc:pot/plenty/find_fuel {item:coal,n:9}
function chalc:pot/plenty/find_fuel {item:stick,n:8}
function chalc:pot/plenty/find_fuel {item:leaf_litter,n:7}
function chalc:pot/plenty/find_fuel {item:bamboo,n:6}
function chalc:pot/plenty/find_fuel {item:wooden_sword,n:5}
function chalc:pot/plenty/find_fuel {item:wooden_spear,n:4}
function chalc:pot/plenty/find_fuel {item:wooden_axe,n:3}
function chalc:pot/plenty/find_fuel {item:wooden_pickaxe,n:2}
function chalc:pot/plenty/find_fuel {item:wooden_shovel,n:1}
function chalc:pot/plenty/find_fuel {item:wooden_hoe,n:0}

execute if score #plenty_item chalc matches 0.. store result score #distributed chalc run function chalc:pot/plenty/distribute_furnaces
execute if score #distributed chalc matches 1 run return run function chalc:pot/plenty/remove with storage chalc:macro plenty

# Brewing stands
scoreboard players set #plenty_item chalc -1
function chalc:pot/plenty/find_fuel {item:blaze_powder,n:0}

execute if score #plenty_item chalc matches 0.. store result score #distributed chalc run function chalc:pot/plenty/distribute_brewing_stands
execute if score #distributed chalc matches 1 run return run function chalc:pot/plenty/remove with storage chalc:macro plenty

# Lapis
scoreboard players set #plenty_item chalc -1
function chalc:pot/plenty/find_fuel {item:lapis_block,n:0}

execute if score #plenty_item chalc matches 0.. store result score #distributed chalc run function chalc:pot/plenty/distribute_lapis_blocks
execute if score #distributed chalc matches 1 run return run function chalc:pot/plenty/remove with storage chalc:macro plenty

return 0