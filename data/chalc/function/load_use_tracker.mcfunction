$scoreboard objectives add chalc.$(item) minecraft.used:$(item)
$scoreboard objectives add chalc.last_$(item) dummy
$execute as @a run scoreboard players operation @s chalc.last_$(item) = @s chalc.$(item)