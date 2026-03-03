execute store result score @s chalc.levels run xp query @s levels
$execute unless score @s chalc.levels matches $(level).. run return run function chalc:imbue2/not_enough_levels {level:$(level)}

$xp add @s -$(level) levels
item modify entity @s weapon.mainhand {function:"set_count",count:-1,add:true}
$give @s $(cat)[stored_enchantments={$(en):$(level)}, enchantment_glint_override=1b,custom_name="$(name) Catalyst",consumable={consume_seconds:1000,has_consume_particles:false,animation:"bundle"},lore=["Use to enchant other hand"]] 1
playsound block.enchantment_table.use block
particle enchant ~ ~1.5 ~ 0.6 0.2 0.6 0.1 40

execute store result score #rand chalc run random value 0..19
$execute unless score #rand chalc matches $(level).. run setblock ~ ~-1 ~ air
$execute unless score #rand chalc matches $(level).. run playsound block.beacon.deactivate block

return 1