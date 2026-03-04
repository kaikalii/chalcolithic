# Remove recipes
⍆/◇⊂{
  # Tools and armor
  ({"pickaxe"
    "axe"
    "shovel"
    "hoe"
    "sword"
    "helmet"
    "chestplate"
    "leggings"
    "boots"}
   ⍚$"diamond\__"
  )

  # Ingot smelting
  (SmeltingOre ← ⊃(
    | ˙$"_\_from\_smelting\__\_ore"
    | ˙$"_\_from\_smelting\_deepslate\__\_ore"
    )
   Smelting ← ⊃(
    | $"_\_nugget\_from\_smelting"
    | ˙$"_\_ingot\_from\_smelting\_raw\__"
    | ˙$"_\_ingot\_from\_smelting\__\_ore"
    | ˙$"_\_ingot\_from\_smelting\_deepslate\__\_ore"
    )
   Blasting ← ⊃(
    | $"_\_nugget\_from\_blasting"
    | ˙$"_\_ingot\_from\_blasting\_raw\__"
    | ˙$"_\_ingot\_from\_blasting\__\_ore"
    | ˙$"_\_ingot\_from\_blasting\_deepslate\__\_ore"
    )
   {⊃Smelting Blasting "iron"
    Smelting "copper"
    ⊃Smelting˙$"_\_ingot\_from\_smelting\_nether\__\_ore" "gold"
    SmeltingOre "redstone"
    SmeltingOre "lapis"
    SmeltingOre "diamond"
    SmeltingOre "emerald"
    "lapis_lazuli_from_smelting_lapis_ore"
    "lapis_lazuli_from_smelting_deepslate_lapis_ore"
    "quartz"
    "netherite_scrap"}
  )

  # Others
  {"anvil"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"
   "crafter"
   "enchanting_table"}
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "recipe/_.json"}
{
  "story/shiny_gear"
  "nether/netherite_armor"
  "husbandry/obtain_netherite_hoe"
  "adventure/crafters_crafting_crafters"
}
/◇⊂₃",\n      "⍚$$ {"namespace": "minecraft", "path": "advancement/_.json"}

$$ {
$$   "pack": {
$$     "description": "Lowering of Minecraft's tech level",
$$     "pack\_format": 94,
$$     "max\_format": 94,
$$     "min\_format": 48
$$   },
$$   "filter": {
$$     "block": [
$$       _,
$$       _
$$     ]
$$   }
$$ }
&fwa "pack.mcmeta"

# Add new recipes
&fmd "data/minecraft/recipe"
RecipePath ← $"data/minecraft/recipe/_.json"

# Multiple flint and steel recipes
⇌⁅×64/7 ⇡7
°˜⊏ °⊸⊢ □"" °⋕ +1°⊏
≡(&fwa ⊓(
    RecipePath $"flint\_and\_steel_"
  | ♭↯⊙",\"minecraft:stick\"" +1
    $$ {
    $$   "type": "minecraft:crafting\_shapeless",
    $$   "category": "equipment",
    $$   "ingredients": [
    $$     "minecraft:raw\_iron",
    $$     "minecraft:flint"_
    $$   ],
    $$   "result": {
    $$     "count": 1,
    $$     "id": "minecraft:flint\_and\_steel",
    $$     "components": {
    $$       "damage": _
    $$     }
    $$   },
    $$   "group": "flint\_and\_steel"
    $$ }
  ))

# Remove metals from armor trims
{"sentry"
 "vex"
 "wild"
 "coast"
 "dune"
 "wayfinder"
 "raiser"
 "shaper"
 "host"
 "ward"
 "silence"
 "tide"
 "snout"
 "rib"
 "eye"
 "spire"
 "flow"
 "bolt"}
⍚(&fwa ⊃(
    $"data/minecraft/recipe/_\_armor\_trim\_smithing\_template\_smithing\_trim.json"
  | ˙$$ {
     $$   "type": "minecraft:smithing\_trim",
     $$   "addition": "#chalc:trim\_materials",
     $$   "base": "#minecraft:trimmable\_armor",
     $$   "pattern": "minecraft:_",
     $$   "template": "minecraft:_\_armor\_trim\_smithing\_template"
     $$ }
  )
)

# Show darkness sphere
▽<+0.5⟜(⊸(⍜˙×/+°⍉) ♭₂⧋-⟜(⇡ ↯3 +1×2)) 6
/◇⊂₃@\n⍚°[°$"execute positioned ~_ ~_ ~_ run function chalc:darksight/show\_darkness\_at"]
$$ # Generated file
$$ _
&fwa "data/chalc/function/darksight/show_darkness.mcfunction"

# not_enchantable tag
{"pickaxe" "axe" "shovel" "hoe" "sword" "spear"}
{"iron" "diamond" "netherite"}
{"helmet" "chestplate" "leggings" "boots"}
{"iron" "chainmail" "diamond" "netherite"}
⊂∩(♭⊞⍚$"\"_\__\"")
/◇⊂₃",\n        "
$$ {
$$     "values": [
$$         _
$$     ]
$$ }
&fwa "data/chalc/tags/item/not_enchantable.json"

# Repair tags
Mats      ← {"wooden" "stone" "copper" "golden"}
MatTags   ← ⊞⍚⊂ Mats {"1mat" "2mat" "3mat"}
MatGroups ← ⊞◇(⍚⌞$"_\__") Mats {{"shovel" "spear"} {"hoe" "sword"} {"pickaxe" "axe"}}
MatTags MatGroups
≡≡(&fwa ⊓$"data/chalc/tags/item/_.json"(
    /◇⊂₃",\n        "⍚$"\"_\""
    $$ {
    $$     "values": [
    $$         _
    $$     ]  
    $$ }
  ))

{
  [
    RepairTool ← ⍚⌞₂(
      ⟜₃(⌈÷⋅⋅⊙∘)
      $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) #chalc:__mat run return _"
    ) ⊙⊙(⇡₁3)
    RepairTool "#planks" "wooden" 59
    RepairTool "#stone_tool_materials" "stone" 131
    RepairTool "copper_ingot" "copper" 190
    RepairTool "gold_ingot" "golden" 32
  ]
  [
    ArmorMat ← [5 8 7 4]
    ArmorName ← {"helmet" "chestplate" "leggings" "boots"}
    ArmorDur ← [1 16/11 15/11 13/11]
    RepairArmor ← ⍚⌞₂(
      ⊙⊙⊙(⌈÷⊙×)
      $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) _\__ run return _"
    ) ⊙⊙(ArmorName ArmorMat ArmorDur)
    RepairArmor "leather" "leather" 55
    RepairArmor "copper_ingot" "copper" 176
  ]
  {
    RepairOther ← $"$execute if items entity @s weapon.$(material) _ if items entity @s weapon.$(equipment) _ run return _"
    RepairOther "#planks" "shield" 336/6
    RepairOther "turtle_scute" "turtle_helmet" 275/5
    RepairOther "phantom_membrane" "elytra" 432/3
    RepairOther "armadillo_scute" "wolf_armor" ⌈64/6
    RepairOther "breeze_rod" "mace" 500/10
  }
}
/◇⊂₃"\n\n"♭⍚(/◇⊂₃"\n"♭)

˜⊂$$ 
  $$ 
  $$ return 0
&fwa "data/chalc/function/repair/repair_amount.mcfunction"

# Composter increase
⟜↻₁ ⇡₀8
⍚$"execute if block ~ ~ ~ composter[level=_] run return run setblock ~ ~ ~ composter[level=_]"
⍜⊣(◇□₂"execute if block ~ ~ ~ composter[level=8] run summon item ~ ~ ~ {Item:{id:bone_meal,count:1}}")
⊂{"# This file is generated""playsound block.composter.fill_success block @a"}
/◇⊂₃@\n
&fwa "data/chalc/function/fill/increase.mcfunction"

# Wool clothing recipes
{"white" "orange" "magenta" "light_blue" "yellow" "lime" "pink" "gray" "light_gray" "cyan" "purple" "blue" "brown" "green" "red" "black"}
[16383998 16351261 13061821 3847130 16701501 8439583 15961002 4673362 10329495 1481884 8991416 3949738 8606770 6192150 11546150 1908001]
⍉⊟
{"Hat" "Shirt" "Pants" "Shoes" "Caparison"}
{"helmet" "chestplate" "leggings" "boots" "horse_armor"}
{
  $         "###",
  $         "# #"

  $         "# #",
  $         "###",
  $         "###"

  $         "###",
  $         "# #",
  $         "# #"

  $         "# #",
  $         "# #"

  $         "# #",
  $         "###",
  $         "# #"
}
⍉⊟₃
⊞(⊓°□₃°□₂
  ⊃(⋅⊙⋅⋅∘
    $"wool/_\__"
  | ⊃(⊙⋅⋅⋅∘|⋅⟜⊙⊙∘)
    $$ {
    $$     "type": "minecraft:crafting\_shaped",
    $$     "category":"equipment",
    $$     "pattern": [
    $$ _
    $$     ],
    $$     "key": {
    $$         "#": "_\_wool"
    $$     },
    $$     "group": "wool\__",
    $$     "result": {
    $$         "id": "leather\__",
    $$         "components": {
    $$             "custom\_name": "Wool _",
    $$             "dyed\_color": _,
    $$             "attribute\_modifiers": [
    $$                 {
    $$                     "type": "armor",
    $$                     "operation": "add\_value",
    $$                     "id": "chalc:wool\_armor",
    $$                     "amount": 1,
    $$                     "slot": "any"
    $$                 }
    $$             ]
    $$         }
    $$     }
    $$ }
  )
  ⊃(□$$ "chalc:_"
  | &fwa $$ data/chalc/recipe/_.json
  )
)
/◇⊂₃",\n            "♭
$$ {
$$     "parent": "minecraft:recipes/root",
$$     "criteria": {
$$         "has\_wool": {
$$             "conditions": {
$$                 "items": [
$$                     {
$$                         "items": "#wool"
$$                     }
$$                 ]
$$             },
$$             "trigger": "minecraft:inventory\_changed"
$$         }
$$     },
$$     "requirements": [
$$         [
$$             "has\_wool"
$$         ]
$$     ],
$$     "rewards": {
$$         "recipes": [
$$             _
$$         ]
$$     }
$$ }
&fwa "data/chalc/advancement/recipe/wool_armor.json"

# Plant growth
/◇⊂{
  (
    {"oak""birch""spruce""jungle""acacia""dark_oak""pale_oak""cherry"}
    ⊃(⍚˙$"execute if block ~ ~ ~ _\_sapling[stage=0] run return run setblock ~ ~ ~ _\_sapling[stage=1]"
    | ⍚˙$"execute if block ~ ~ ~ _\_sapling[stage=1] run return run function chalc:pot/sheaf/grow\_sapling {tree:_}")
  )
  (
    {"beetroots"} ⍉⊟⤙+1 ⇡3
    {"wheat" "carrots" "potatoes" "melon_stem" "pumpkin_stem"} ⍉⊟⤙+1 ⇡7
    {"sugar_cane"} ⍉⊟⤙+1 ⇡15
    ∩₃(♭⊞(□$"execute if block ~ ~ ~ _[age=_] run return run setblock ~ ~ ~ _[age=_]" ⊃⊙⊢⊙⊣))
    ˜⊂□"execute if block ~ ~ ~ sugar_cane[age=15] if block ~ ~1 ~ air run return run setblock ~ ~1 ~ sugar_cane"
  )
}
⊂□"particle composter ~ ~0.2 ~ 0.2 0.2 0.2 0 3"
/◇⊂₃@\n
&fwa "data/chalc/function/pot/sheaf/grow_plant.mcfunction"

{
  "chests/abandoned_mineshaft"
  "chests/ancient_city"
  "chests/ancient_city_ice_box"
  "chests/bastion_treasure"
  "chests/bastion_other"
  "chests/buried_treasure"
  "chests/bastion_hoglin_stable"
  "chests/bastion_bridge"
  "chests/simple_dungeon"
  "chests/shipwreck_treasure"
  "chests/spawn_bonus_chest"
  "chests/stronghold_corridor"
  "chests/shipwreck_supply"
  "chests/stronghold_crossing"
  "chests/shipwreck_map"
  "chests/ruined_portal"
  "chests/stronghold_library"
  "chests/underwater_ruin_big"
  "chests/pillager_outpost"
  "chests/nether_bridge"
  "chests/jungle_temple_dispenser"
  "chests/jungle_temple"
  "chests/igloo_chest"
  "chests/end_city_treasure"
  "chests/underwater_ruin_small"
  "chests/desert_pyramid"
  "chests/woodland_mansion"
  "chests/trial_chambers/intersection_barrel"
  "chests/trial_chambers/intersection"
  "chests/trial_chambers/entrance"
  "chests/trial_chambers/reward"
  "chests/trial_chambers/reward_common"
  "chests/trial_chambers/reward_ominous"
  "chests/trial_chambers/reward_ominous_common"
  "chests/trial_chambers/reward_ominous_rare"
  "chests/trial_chambers/reward_ominous_unique"
  "chests/trial_chambers/reward_rare"
  "chests/trial_chambers/reward_unique"
  "chests/trial_chambers/corridor"
  "chests/trial_chambers/supply"
  "chests/village/village_weaponsmith"
  "chests/village/village_toolsmith"
  "chests/village/village_temple"
  "chests/village/village_tannery"
  "chests/village/village_taiga_house"
  "chests/village/village_snowy_house"
  "chests/village/village_shepherd"
  "chests/village/village_savanna_house"
  "chests/village/village_plains_house"
  "chests/village/village_mason"
  "chests/village/village_fletcher"
  "chests/village/village_fisher"
  "chests/village/village_desert_house"
  "chests/village/village_cartographer"
  "chests/village/village_butcher"
  "chests/village/village_armorer"
}
⊃(⍚˙$$         "_": {
    $$             "trigger": "player\_generates\_container\_loot",
    $$             "conditions": {
    $$                 "loot\_table": "_"
    $$             }
    $$         }
  /◇⊂₃",\n"
| /◇⊂₃",\n            " ⍚$$ "_"
)
$$ {
$$     "criteria": {
$$ _
$$     },
$$     "requirements": [
$$         [
$$             _
$$         ]
$$     ],
$$     "rewards": {
$$         "function": "chalc:replace\_loot/chest\_opened"
$$     }
$$ }
&fwa "data/chalc/advancement/open_chest.json"

# Enchantments
[
  En ← ⟜(+×/-"_ "⊸=@_ ⍜⊜⊢⌵⊸≠@_)
  {"fermented_spider_eye" "bane_of_arthropods" "Bane of Arthropods" 0 6}
  {"#chalc:scutes" En "blast_protection" 0 4}
  {"nether_wart" En "channeling" 0 1}
  {"glow_ink_sac" "chalc:darksight" "Darksight" 0 1}
  {"nether_brick" En "density" 0 6}
  {"prismarine_crystals" En "depth_strider" 0 3}
  {"gunpowder" En "efficiency" 0 6}
  {"feather" En "feather_falling" 0 4}
  {"blaze_rod" En "fire_aspect" 0 2}
  {"magma_cream" En "fire_protection" 0 4}
  {"blaze_powder" En "flame" 0 1}
  {"glowstone_dust" En "fortune" 1 3}
  {"pointed_dripstone" En "impaling" 0 1}
  {"breeze_rod" En "knockback" 0 2}
  {"bone" En "looting" 1 3}
  {"echo_shard" En "loyalty" 1 3}
  {"heart_of_the_sea" "luck_of_the_sea" "Luck of the Sea" 0 3}
  {"phantom_membrane" En "lunge" 0 3}
  {"honeycomb" En "lure" 0 3}
  {"prismarine_shard" En "multishot" 0 1}
  {"amethyst_shard" En "piercing" 0 4}
  {"string" En "power" 0 6}
  {"leather" En "projectile_protection" 0 4}
  {"brick" En "protection" 0 4}
  {"wind_charge" En "punch" 0 2}
  {"nautilus_shell" En "respiration" 0 3}
  {"ink_sac" En "riptide" 0 3}
  {"flint" En "sharpness" 0 6}
  {"slime_ball" En "silk_touch" 1 1}
  {"sugar" En "smite" 0 6}
  {"quartz" En "sweeping_edge" 0 3}
  {"cactus" En "thorns" 0 3}
  {"clay_ball" En "unbreaking" 0 3}
]

⊃(/◇⊂₃ ",\n        " ⍚($"\"_\""⊢)
  $$ {
  $$     "values": [
  $$         _
  $$     ]
  $$ }
  &fwa "data/chalc/tags/item/catalyst.json"
| ⍚(⊃⊙⋅⋅⊙∘⋅⊙∘ °□₅
    $$ execute if items entity @s weapon.mainhand _ run return run function chalc:imbue/catalyst {offset:_,max:_,en:"_",name:"_"}
  )
  ⊂"# This file is generated\n" /◇⊂₃@\n
  &fwa "data/chalc/function/imbue/try_enchantments.mcfunction"
)
