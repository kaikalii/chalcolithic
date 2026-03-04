# Orient
execute if block ~ ~ ~ decorated_pot[facing=south] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~ decorated_pot[facing=west] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~ decorated_pot[facing=north] run tp @s ~ ~ ~ 180 0
execute if block ~ ~ ~ decorated_pot[facing=east] run tp @s ~ ~ ~ 270 0

# Count sherds
scoreboard players set #sherd_cost chalc 0
function chalc:pot/count_effect {sherd:angler}
function chalc:pot/count_effect {sherd:archer}
function chalc:pot/count_effect {sherd:arms_up}
function chalc:pot/count_effect {sherd:burn}
function chalc:pot/count_effect {sherd:blade}
function chalc:pot/count_effect {sherd:brewer}
function chalc:pot/count_effect {sherd:danger}
function chalc:pot/count_effect {sherd:explorer}
function chalc:pot/count_effect {sherd:flow}
function chalc:pot/count_effect {sherd:friend}
function chalc:pot/count_effect {sherd:guster}
function chalc:pot/count_effect {sherd:heart}
function chalc:pot/count_effect {sherd:heartbreak}
function chalc:pot/count_effect {sherd:howl}
function chalc:pot/count_effect {sherd:miner}
function chalc:pot/count_effect {sherd:mourner}
function chalc:pot/count_effect {sherd:plenty}
function chalc:pot/count_effect {sherd:prize}
function chalc:pot/count_effect {sherd:scrape}
function chalc:pot/count_effect {sherd:sheaf}
function chalc:pot/count_effect {sherd:shelter}
function chalc:pot/count_effect {sherd:skull}
function chalc:pot/count_effect {sherd:snort}

# Determine cost
scoreboard players set @s chalc.pot_fuel_time 1200
scoreboard players operation @s chalc.pot_fuel_time /= #sherd_cost chalc
tellraw @a [{score:{name:"#sherd_cost",objective:"chalc"}}]
tellraw @a [{score:{name:"@s",objective:"chalc.pot_fuel_time"}}]

function chalc:pot/consume_fuel
function chalc:pot/update_node_text