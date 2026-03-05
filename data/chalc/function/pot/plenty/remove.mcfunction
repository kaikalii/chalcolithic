$execute store result score #count chalc run data get block ~ ~-1 ~ Items[{id:"$(id)"}].count
scoreboard players remove #count chalc 1
$execute if score #count chalc matches ..0 run return run data remove block ~ ~-1 ~ Items[{id:"$(id)"}]
$execute store result block ~ ~-1 ~ Items[{id:"$(id)"}].count int 1 run scoreboard players get #count chalc
return 1