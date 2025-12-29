&fmd "data/minecraft/recipe"
RecipePath ← $"data/minecraft/recipe/_.json"

# Remove recipes
/◇⊂{
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
   {"copper"
    "iron"
    "diamond"}
   ♭⊞⍚$"_\__")

  # From copper or iron ingots
  ({"block" "bars" "chain" "door" "trapdoor"}
   {"copper" "iron"}
   ♭⊞⍚$"_\__")

  # Copper blocks
  ({"" "weathered_" "exposed_" "oxidized_"}
   {"" "waxed_"}
   /⊂⊞⍚⊂
   /⊂≡⊃{
      $"_cut\_copper"
    | $"_cut\_copper\_slab"
    | $"_cut\_copper\_stairs"
    | $"_copper\_grate"
    | $"_chiseled\_copper"
    | $"_copper\_bulb"})

  # Others
  {"bucket"
   "crossbow"
   "shield"
   "lightning_rod"
   "anvil"
   "blast_furnace"
   "minecart"
   "rail"
   "activator_rail"
   "detector_rail"
   "powered_rail"
   "piston"
   "hopper"
   "light_weighted_pressure_plate"
   "heavy_weighted_pressure_plate"
   "crafter"
  }
}
⍚RecipePath
≡⌟&fwa ⊙$ { "type": "minecraft:crafting_decorated_pot" }

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
    $$     ["minecraft:raw\_iron", "minecraft:iron\_ingot"],
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
     $$   "addition": "#stoneage:trim\_materials",
     $$   "base": "#minecraft:trimmable\_armor",
     $$   "pattern": "minecraft:_",
     $$   "template": "minecraft:_\_armor\_trim\_smithing\_template"
     $$ }
  )
)
