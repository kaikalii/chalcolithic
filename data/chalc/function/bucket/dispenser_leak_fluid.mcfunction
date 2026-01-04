$say leak $(fluid)
$data modify block ~ ~ ~ Items[{id:"minecraft:$(fluid)_bucket"}].id set value "minecraft:bucket"
$function chalc:bucket/dispenser_leak {f:"function chalc:bucket/spawn_$(fluid)"}