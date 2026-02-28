# Must be adult
execute store result score #temp chalc run data get entity @s Age
execute unless score #temp chalc matches 0.. run return 0

# Random chance
execute store result score #temp chalc run random value 0..20000
execute unless score #temp chalc matches 0 run return 0

# Summon feather
summon item ~ ~ ~ {Item:{id:"feather",count:1}}
