execute store result score @p chalc.levels run xp query @p levels
$execute unless score @p chalc.levels matches $(level).. run return run function chalc:imbue$(level)/not_enough_levels {level:2}

function chalc:imbue2/effect

execute unless score @s chalc.imbue2_timer matches 20.. run return 0

$xp add @p -$(level) levels
$data modify storage chalc:imbue2 stored_enchantments set value {$(en):$(level)}
$data modify entity @s Item.components set value {stored_enchantments:{$(en):$(level)}, enchantment_glint_override:1b,custom_name:"$(en) Catalyst"}
item modify entity @s contents chalc:make_enchanted_book_consumable

scoreboard players set @s chalc.imbue2_timer 0
data modify entity @s NoGravity set value 0b