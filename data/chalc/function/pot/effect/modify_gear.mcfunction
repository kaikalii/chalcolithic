$execute as @a[distance=..$(range)] at @s run function chalc:pot/effect/upgrade_gear
$execute as @a[tag=upgraded,distance=$(range)..] at @s run function chalc:pot/effect/downgrade_gear
