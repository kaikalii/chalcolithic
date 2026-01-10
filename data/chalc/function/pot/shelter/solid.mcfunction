execute if entity @a[distance=..1] run return 0

execute store result score #rand chalc run random value 0..2 shelter
execute if score #rand chalc matches 0 run playsound block.stone.place block @a ~ ~ ~ 0.5
execute if score #rand chalc matches 1 run playsound block.mud.place block @a ~ ~ ~ 0.5
execute if score #rand chalc matches 2 run playsound block.gravel.place block @a ~ ~ ~ 0.5

execute store result score #rand chalc run random value 0..7 shelter
execute if score #rand chalc matches 0 run return run function chalc:pot/shelter/block {block:dirt}
execute if score #rand chalc matches 1 run return run function chalc:pot/shelter/block {block:coarse_dirt}
execute if score #rand chalc matches 2 run return run function chalc:pot/shelter/block {block:packed_mud}
execute if score #rand chalc matches 3 run return run function chalc:pot/shelter/block {block:terracotta}
execute if score #rand chalc matches 4 run return run function chalc:pot/shelter/block {block:red_terracotta}
execute if score #rand chalc matches 5 run return run function chalc:pot/shelter/block {block:orange_terracotta}
execute if score #rand chalc matches 6 run return run function chalc:pot/shelter/block {block:brown_terracotta}
execute if score #rand chalc matches 7 run return run function chalc:pot/shelter/block {block:pink_terracotta}