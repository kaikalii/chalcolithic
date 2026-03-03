$scoreboard players set #required_power chalc $(offset)
scoreboard players operation #required_power chalc *= #5 chalc
execute if score #imbue_max chalc < #required_power chalc run return run function chalc:imbue2/not_enough_power

execute store result score #level chalc run scoreboard players get #imbue_max chalc
scoreboard players operation #level chalc /= #5 chalc
scoreboard players add #level chalc 1
$scoreboard players remove #level chalc $(offset)
execute if score #level chalc matches ..0 run scoreboard players set #level chalc 1
$execute if score #level chalc matches $(max).. run scoreboard players set #level chalc $(max)

$data modify storage chalc:macro enchant set value {en:"$(en)",name:"$(name)"}
execute store result storage chalc:macro enchant.level int 1 run scoreboard players get #level chalc
data modify storage chalc:macro enchant merge from entity @s SelectedItem
return run function chalc:imbue2/enchant with storage chalc:macro enchant