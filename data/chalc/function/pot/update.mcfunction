# Undo effects
function chalc:pot/remove_range_effects

# Do effects for synced pots
execute as @e[type=text_display,tag=pot_node] if function chalc:pot/synced at @s run function chalc:pot/update_node

schedule function chalc:pot/update 10