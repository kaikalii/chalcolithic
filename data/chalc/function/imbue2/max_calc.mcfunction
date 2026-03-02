execute positioned ~1 ~-2 ~0 run function chalc:imbue2/max_add
execute positioned ~1 ~-2 ~1 run function chalc:imbue2/max_add
execute positioned ~0 ~-2 ~1 run function chalc:imbue2/max_add
execute positioned ~-1 ~-2 ~1 run function chalc:imbue2/max_add
execute positioned ~-1 ~-2 ~0 run function chalc:imbue2/max_add
execute positioned ~-1 ~-2 ~-1 run function chalc:imbue2/max_add
execute positioned ~0 ~-2 ~-1 run function chalc:imbue2/max_add
execute positioned ~1 ~-2 ~-1 run function chalc:imbue2/max_add

# Show enchanment power
execute if score #imbue_max chalc matches 0 run title @p[distance=..4] actionbar {text:"No enchanting power",color:"red"}
execute if score #imbue_max chalc matches 1.. run title @p[distance=..4] actionbar {text:"Enchanting power: ", extra: [{score:{name:"#imbue_max",objective:"chalc"}}]}