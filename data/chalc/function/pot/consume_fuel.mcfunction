# Requires fuel
execute unless items block ~ ~ ~ contents #chalc:pot_fuel run return run function chalc:pot/remove_my_effects

# Effects
playsound block.fire.ambient block @a
particle large_smoke ~ ~0.7 ~ 0.1 0.1 0.1 0 2

# Consume fuel
item modify block ~ ~ ~ contents {function:set_count,count:-1,add:true}

scoreboard players set @s chalc.pot_timer 0
function chalc:pot/pot_effect