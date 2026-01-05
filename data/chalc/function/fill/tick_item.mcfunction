execute if block ~ ~-1 ~ composter if items entity @s contents #chalc:compostable align xz run tp ~0.5 ~ ~0.5
execute if block ~ ~ ~ composter if items entity @s contents #chalc:compostable run return run execute if score #compost_timer chalc matches 0 run function chalc:fill/compost

execute positioned ~ ~ ~ if block ~ ~ ~ #chalc:chest run function chalc:fill/fill
execute positioned ~ ~-1 ~ if block ~ ~ ~ #chalc:full_and_fillable run function chalc:fill/fill
execute positioned ~ ~-1 ~ if block ~ ~ ~ barrel[facing=up] run setblock ~ ~ ~ barrel[facing=up,open=true]
execute positioned ~ ~-1 ~ if block ~ ~ ~ barrel[facing=up] run function chalc:fill/fill