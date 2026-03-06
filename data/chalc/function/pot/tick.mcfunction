# Despawn node if pot is gone
execute as @e[type=text_display,tag=pot_node] at @s unless block ~ ~ ~ decorated_pot run return run function chalc:pot/despawn_node

# Do effects for unsynced pots
execute as @e[type=text_display,tag=pot_node] unless function chalc:pot/synced if predicate {condition:"entity_properties",entity:"this",predicate:{periodic_tick:10}} at @s run function chalc:pot/update_node

# Howl arrows
function chalc:pot/howl/tick