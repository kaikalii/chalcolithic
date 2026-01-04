function chalc:tick_use_tracker {item:water_bucket, f:"function chalc:bucket/use_water"}
function chalc:tick_use_tracker {item:lava_bucket, f:"function chalc:bucket/use_lava"}

execute as @n[type=marker,nbt={CustomName:"Water Node"}] at @s run function chalc:bucket/tick_node {fluid:water}
execute as @n[type=marker,nbt={CustomName:"Lava Node"}] at @s run function chalc:bucket/tick_node {fluid:lava}
