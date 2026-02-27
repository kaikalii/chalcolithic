$execute store result score #temp chalc store success score #success chalc run data get entity @s $(path).components."minecraft:custom_data".Alive
execute if score #success chalc matches 0 run return 0
scoreboard players remove #temp chalc 1
execute if score #temp chalc matches ..0 run scoreboard players set #temp chalc 0
$data modify storage chalc:macro slot set value $(slot)
execute store result storage chalc:macro Alive int 1 run scoreboard players get #temp chalc
function chalc:fish/tick_inv2 with storage chalc:macro

$execute if score #temp chalc matches 0 run item modify entity @s $(slot) {function:"set_components", components:{lore:["Dead"], enchantment_glint_override:false}}
$execute if score #temp chalc matches 1.. run item modify entity @s $(slot) {function:"set_components", components:{lore:["Alive"], enchantment_glint_override:true}}