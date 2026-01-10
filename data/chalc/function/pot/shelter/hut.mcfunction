# Back wall, layer 2
execute positioned ^2 ^ ^2 run function chalc:pot/shelter/solid
execute positioned ^1 ^ ^2 run function chalc:pot/shelter/solid
execute positioned ^0 ^ ^2 run function chalc:pot/shelter/solid
execute positioned ^-1 ^ ^2 run function chalc:pot/shelter/solid
execute positioned ^-2 ^ ^2 run function chalc:pot/shelter/solid

execute positioned ^2 ^1 ^2 run function chalc:pot/shelter/solid
execute positioned ^1 ^1 ^2 run function chalc:pot/shelter/maybe_solid
execute positioned ^0 ^1 ^2 run function chalc:pot/shelter/solid
execute positioned ^-1 ^1 ^2 run function chalc:pot/shelter/maybe_solid
execute positioned ^-2 ^1 ^2 run function chalc:pot/shelter/solid

execute positioned ^2 ^2 ^2 run function chalc:pot/shelter/maybe_solid
execute positioned ^1 ^2 ^2 run function chalc:pot/shelter/solid
execute positioned ^0 ^2 ^2 run function chalc:pot/shelter/solid
execute positioned ^-1 ^2 ^2 run function chalc:pot/shelter/solid
execute positioned ^-2 ^2 ^2 run function chalc:pot/shelter/maybe_solid

# Layer 1
execute positioned ^2 ^ ^1 run function chalc:pot/shelter/solid
execute positioned ^-2 ^ ^1 run function chalc:pot/shelter/solid

execute positioned ^2 ^1 ^1 run function chalc:pot/shelter/solid
execute positioned ^-2 ^1 ^1 run function chalc:pot/shelter/maybe_solid

execute positioned ^1 ^2 ^1 run function chalc:pot/shelter/maybe_solid
execute positioned ^0 ^2 ^1 run function chalc:pot/shelter/maybe_solid
execute positioned ^-1 ^2 ^1 run function chalc:pot/shelter/solid

# Middle, layer 0
execute positioned ^2 ^ ^ run function chalc:pot/shelter/solid
execute positioned ^-2 ^ ^ run function chalc:pot/shelter/solid

execute positioned ^2 ^1 ^ run function chalc:pot/shelter/solid
execute positioned ^-2 ^1 ^ run function chalc:pot/shelter/solid

execute positioned ^2 ^2 ^ run function chalc:pot/shelter/maybe_solid
execute positioned ^1 ^2 ^ run function chalc:pot/shelter/solid
execute positioned ^0 ^2 ^ run function chalc:pot/shelter/solid
execute positioned ^-1 ^2 ^ run function chalc:pot/shelter/solid
execute positioned ^-2 ^2 ^ run function chalc:pot/shelter/maybe_solid

# Layer -1
execute positioned ^2 ^ ^-1 run function chalc:pot/shelter/solid
execute positioned ^-2 ^ ^-1 run function chalc:pot/shelter/solid

execute positioned ^2 ^1 ^-1 run function chalc:pot/shelter/maybe_solid
execute positioned ^-2 ^1 ^-1 run function chalc:pot/shelter/solid

execute positioned ^1 ^2 ^-1 run function chalc:pot/shelter/solid
execute positioned ^0 ^2 ^-1 run function chalc:pot/shelter/maybe_solid
execute positioned ^-1 ^2 ^-1 run function chalc:pot/shelter/maybe_solid

# Front entrance, layer -2
execute positioned ^2 ^ ^-2 run function chalc:pot/shelter/solid
execute positioned ^1 ^ ^-2 run function chalc:pot/shelter/solid
execute positioned ^-1 ^ ^-2 run function chalc:pot/shelter/solid
execute positioned ^-2 ^ ^-2 run function chalc:pot/shelter/solid

execute positioned ^2 ^1 ^-2 run function chalc:pot/shelter/solid
execute positioned ^1 ^1 ^-2 run function chalc:pot/shelter/maybe_solid
execute positioned ^-1 ^1 ^-2 run function chalc:pot/shelter/maybe_solid
execute positioned ^-2 ^1 ^-2 run function chalc:pot/shelter/solid

execute positioned ^2 ^2 ^-2 run function chalc:pot/shelter/maybe_solid
execute positioned ^1 ^2 ^-2 run function chalc:pot/shelter/solid
execute positioned ^0 ^2 ^-2 run function chalc:pot/shelter/solid
execute positioned ^-1 ^2 ^-2 run function chalc:pot/shelter/solid
execute positioned ^-2 ^2 ^-2 run function chalc:pot/shelter/maybe_solid