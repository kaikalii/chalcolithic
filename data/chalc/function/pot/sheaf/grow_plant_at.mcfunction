$execute positioned ~$(dx) ~$(dy) ~$(dz) as @n[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}},distance=..1.2] if block ~ ~-1 ~ farmland run return run function chalc:pot/sheaf/plant_plant {plant:wheat}
$execute positioned ~$(dx) ~$(dy) ~$(dz) as @n[type=item,nbt={Item:{id:"minecraft:carrot"}},distance=..1.2] if block ~ ~-1 ~ farmland run return run function chalc:pot/sheaf/plant_plant {plant:carrots}
$execute positioned ~$(dx) ~$(dy) ~$(dz) as @n[type=item,nbt={Item:{id:"minecraft:potato"}},distance=..1.2] if block ~ ~-1 ~ farmland run return run function chalc:pot/sheaf/plant_plant {plant:potatoes}
$execute positioned ~$(dx) ~$(dy) ~$(dz) as @n[type=item,nbt={Item:{id:"minecraft:beetroot"}},distance=..1.2] if block ~ ~-1 ~ farmland run return run function chalc:pot/sheaf/plant_plant {plant:beetroots}

$execute unless block ~$(dx) ~$(dy) ~$(dz) #chalc:growable_plant run return 0
$execute positioned ~$(dx) ~$(dy) ~$(dz) run function chalc:pot/sheaf/grow_plant
return 1