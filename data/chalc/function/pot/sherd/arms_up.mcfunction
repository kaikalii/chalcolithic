execute unless data entity @s data.arms_up run return 0
execute as @s[nbt={data:{arms_up:1}}] run function chalc:pot/arms_up/start {height:15,speed:2}
execute as @s[nbt={data:{arms_up:2}}] run function chalc:pot/arms_up/start {height:30,speed:4}
execute as @s[nbt={data:{arms_up:3}}] run function chalc:pot/arms_up/start {height:45,speed:6}
execute as @s[nbt={data:{arms_up:4}}] run function chalc:pot/arms_up/start {height:60,speed:8}