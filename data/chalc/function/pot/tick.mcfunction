# Despawn node if pot is gone
execute as @e[type=text_display,tag=pot_node] at @s unless block ~ ~ ~ decorated_pot run return run function chalc:pot/despawn_node

# Do effects
execute as @e[type=text_display,tag=pot_node] if predicate {condition:"entity_properties",entity:"this",predicate:{periodic_tick:10}} at @s run function chalc:pot/update_node