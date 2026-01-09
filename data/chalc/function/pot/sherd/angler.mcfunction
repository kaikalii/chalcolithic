execute as @s[nbt={data:{angler:1}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:1}}] run return run weather rain
execute as @s[nbt={data:{angler:2}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:2}}] run return run weather thunder
execute as @s[nbt={data:{angler:3}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:3}}] run return run weather thunder
execute as @s[nbt={data:{angler:4}}] if predicate chalc:clear run tag @s add clear_weather
execute as @s[nbt={data:{angler:4}}] run return run weather thunder