# Place item as block
execute as @s[nbt={OnGround:true}] if items entity @s contents #chalc:throw_place if block ~ ~ ~ air unless block ~ ~-1 ~ #chalc:transparent run function chalc:throw/place with entity @s Item

# Summon item as entity
execute if items entity @s contents #chalc:throw_summon if block ~ ~ ~ #chalc:summon_in unless block ~ ~-0.1 ~ #chalc:transparent_non_fluid run function chalc:throw/summon with entity @s Item