execute as @e[type=text_display,tag=pot_node,nbt={data:{}}] at @s unless data block ~ ~ ~ item if function chalc:pot/plenty/distribute_pot run return 1

return 0