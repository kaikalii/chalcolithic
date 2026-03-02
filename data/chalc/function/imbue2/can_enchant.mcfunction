# Lock in place
execute as @s[nbt=!{Motion:[0.0,0.0,0.0]}] run playsound item.armor.equip_chain block @a
data modify entity @s Motion set value [0.0,0.0,0.0]
data modify entity @s NoGravity set value 1b
execute align xyz run tp ~0.5 ~0.2 ~0.5
execute store result score #temp chalc run data get entity @s PickupDelay
scoreboard players add #temp chalc 1
execute store result entity @s PickupDelay short 1 run scoreboard players get #temp chalc

# Increment timer
scoreboard players add @s chalc.imbue2_timer 1
execute if score @s chalc.imbue2_timer matches 20.. run scoreboard players set @s chalc.imbue2_timer 20
