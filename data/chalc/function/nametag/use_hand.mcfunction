$data modify storage chalc:macro nametag.name set from entity @s $(tag_hand_path).components.minecraft:custom_name
$data modify storage chalc:macro nametag merge value {equipment_hand_path:$(equipment_hand_path),tag_hand:$(tag_hand),equipment_hand:$(equipment_hand)}
function chalc:nametag/name_hand with storage chalc:macro nametag