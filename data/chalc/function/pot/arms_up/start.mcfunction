$scoreboard players set #arms_up_y chalc $(height)
$scoreboard players set #arms_up_speed chalc $(speed)
execute store result storage chalc:macro arms_up.motion float 0.05 run scoreboard players get #arms_up_speed chalc
scoreboard players remove #arms_up_speed chalc 1
execute store result storage chalc:macro arms_up.effect int 1 run scoreboard players get #arms_up_speed chalc
function chalc:pot/arms_up/layer