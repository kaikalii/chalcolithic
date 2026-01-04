execute store result storage chalc:macro node.size double 0.00003 run scoreboard players get @s chalc.node_timer
execute store result storage chalc:macro node.count int 0.0001 run scoreboard players get @s chalc.node_timer
function chalc:imbue/effect with storage chalc:macro node

scoreboard players remove @s chalc.node_timer 1
execute unless score @s chalc.node_timer matches ..0 run return run function chalc:imbue/break_block

execute if block ~ ~ ~ light[waterlogged=true] run setblock ~ ~ ~ water
execute if block ~ ~ ~ light run setblock ~ ~ ~ air
kill @s