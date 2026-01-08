# 1/3 chance to fail to increase
execute unless function chalc:random/3 run return 0

$execute store result score #temp chalc store success score #has_enchant chalc run data get storage chalc:macro enchant.enchantments."$(enchant)"
# Fail if doesn't have that enchantment
execute if score #has_enchant chalc matches 0 run return 0
# Fail if the enchantment is already maxed
$execute if score #temp chalc matches $(max).. run return 0
# Increase and store
scoreboard players add #temp chalc 1
$execute store result storage chalc:macro enchant.enchantments."$(enchant)" int 1 run scoreboard players get #temp chalc