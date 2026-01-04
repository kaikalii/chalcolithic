# Overworld and End
execute unless dimension the_nether run return run function chalc:hitscan {f:"if block ~ ~ ~ lava[level=0] run return run function chalc:bucket/mark {fluid:Lava,time:31}"}
# Nether
function chalc:hitscan {f:"if block ~ ~ ~ lava[level=0] run return run function chalc:bucket/mark {fluid:Lava,time:15}"}