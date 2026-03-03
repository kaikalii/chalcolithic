execute store result score #level chalc run scoreboard players get #imbue_max chalc
scoreboard players operation #level chalc /= #5 chalc
scoreboard players add #level chalc 1
$scoreboard players remove #level chalc $(offset)
execute if score #level chalc matches ..0 run scoreboard players set #level chalc 1
$execute if score #level chalc matches $(max).. run scoreboard players set #level chalc $(max)

$data modify storage chalc:macro enchant set value {cat:$(cat),en:$(en),name:$(name)}
execute store result storage chalc:macro enchant.level int 1 run scoreboard players get #level chalc
return run function chalc:imbue2/enchant with storage chalc:macro enchant