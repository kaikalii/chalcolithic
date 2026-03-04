execute store result storage chalc:macro arms_up.y int 1 run scoreboard players get #arms_up_y chalc
function chalc:pot/arms_up/apply with storage chalc:macro arms_up

execute if score #arms_up_y chalc matches ..0 run return 0
scoreboard players remove #arms_up_y chalc 1
function chalc:pot/arms_up/layer