scoreboard objectives add chalc dummy
scoreboard objectives add chalc.levels dummy

# Numbers
scoreboard players set #neg1 chalc -1
scoreboard players set #0 chalc 0
scoreboard players set #20 chalc 20
scoreboard players set #32 chalc 32
scoreboard players set #50 chalc 50
scoreboard players set #100 chalc 100
scoreboard players set #120 chalc 120
scoreboard players set #2032 chalc 2032

# Player on ground tracking
scoreboard objectives add chalc.on_ground dummy
execute as @a store result score @s chalc.on_ground run data get entity @s OnGround

function chalc:repair/load
function chalc:bucket/load
function chalc:fill/load
function chalc:imbue/load
function chalc:pot/load

function chalc:copper_golem/update
function chalc:drain/update
function chalc:darksight/update
function chalc:pot/update