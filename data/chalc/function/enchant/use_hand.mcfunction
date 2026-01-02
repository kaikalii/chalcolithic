$data modify storage chalc:macro enchant.enchantments set from entity @s $(book_hand_path).components.minecraft:stored_enchantments
$data modify storage chalc:macro enchant merge value {book_hand:$(book_hand),equipment_hand:$(equipment_hand)}
function chalc:enchant/enchant_hand with storage chalc:macro enchant