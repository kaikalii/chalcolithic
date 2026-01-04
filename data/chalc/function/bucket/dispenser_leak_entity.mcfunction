$data modify block ~ ~ ~ Items[{id:"minecraft:$(entity)_bucket"}].id set value "minecraft:bucket"
$data remove block ~ ~ ~ Items[{id:"minecraft:$(entity)_bucket"}].components
$function chalc:bucket/dispenser_leak {f:"summon $(entity)"}
function chalc:bucket/dispenser_leak {f:"function chalc:bucket/spawn_water"}
