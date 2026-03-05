execute as @e[type=text_display,tag=pot_node,nbt={data:{}}] at @s unless data block ~ ~ ~ item run return run data modify block ~ ~ ~ item set from storage chalc:macro plenty

return 0