function chalc:bucket/tick
function chalc:campfire/tick
function chalc:chicken/tick
function chalc:drain/tick
function chalc:enchant/tick
function chalc:fill/tick
function chalc:fish/tick
function chalc:imbue/tick
function chalc:nametag/tick
function chalc:pot/tick
function chalc:repair/tick
function chalc:replace_loot/tick
function chalc:replace_trades/tick
function chalc:throw/tick

# On ground updating and checking
execute as @a[nbt={OnGround:1b}] if score @s chalc.on_ground matches 0 at @s run function chalc:land
execute as @a store result score @s chalc.on_ground run data get entity @s OnGround

# Make spash bottle have water effect
execute as @e[type=splash_potion,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_name":"Splash Bottle"}}}] run data modify entity @s Item.components."minecraft:potion_contents" set value {potion:"water"}