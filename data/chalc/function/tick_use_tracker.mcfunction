$execute as @a if score @s chalc.$(item) > @s chalc.last_$(item) run $(f)
$execute as @a run scoreboard players operation @s chalc.last_$(item) = @s chalc.$(item)