execute if score #tries chalc matches 0 if function chalc:random/2 run return 0
execute if score #tries chalc matches 20.. run return 0

$execute store result storage chalc:macro harvest.dx int 1 run random value -$(range)..$(range)
execute store result storage chalc:macro harvest.dy int 1 run random value -1..1
$execute store result storage chalc:macro harvest.dz int 1 run random value -$(range)..$(range)

scoreboard players add #tries chalc 1

execute store result score #harvested_plant chalc run function chalc:pot/scrape/harvest_plant_at with storage chalc:macro harvest
$execute if score #harvested_plant chalc matches 0 run function chalc:pot/scrape/scan_for_plant {range:$(range)}