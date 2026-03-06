# Description

Chalcolithic is an overhaul datapack that lowers Minecraft's tech level and flattens progression.

High-temperature metallurgy is a lost art, and neither the player nor villagers are capable of it. Advanced equipment and blocks can only be found in the ruins of ancient civilizations.

# Quick Overview of Changes

- Many recipes have been removed, but some items can still be found in the world
  - No crafting of iron, diamond, or netherite weapons, tools, or armor
- Altered recipes for many things
  - Many smelting recipes require a **blast furnace**, which has a new recipe itself
  - Crafting changes mean that **copper is king**
- **Overhauled the enchanting system** to be less random and require different items for different enchantments
- A lot of automation that would utilize pistons or hoppers is replaced with a system that emphasizes archaeology
- **Buckets are nerfed**. The source blocks they place quickly disappear.
- Much more!

The recipe book will help you with new recipes! Advancements are also tweaked to help you progress.

# Full List of Changes

## Crafting

### Removed Recipes

While these recipes are removed, most of the blocks and items can still be found via natural generation and loot. The items are also removed from villager and wandering trader trades.

- Iron smelting and blasting
- Copper and gold smelting
- Iron, diamond, and netherite swords, tools, and armor
- Iron and netherite armor trimming
- Smelting recipes for ore blocks
- Anvil
- Minecart
- All rails
- Piston
- Hopper
- Crafter
- Enchanting Table

### Modified Recipes

- Stone tools and furnaces now require polished versions of stone types, rather than cobbled
- Raw copper and gold smelt into nuggets rather than ingots, and they require a blast furnace
- A copper ingot is equivalent to 4 copper nuggets (down from 9)
- A copper block is equivalent to 4 copper ingot (down from 9)
- A gold ingot is equivalent to 4 gold nuggets (down from 9)
  - Gold ores drop 1-4 raw gold (up from 1)
  - Nether gold ores drop 1-3 nuggets (down from 1-4)
- Glass requires a blast furnace
- Glazed terracotta requires a blast furnace
- Many recipes that take string take other items that are used to tie things:
  - String
  - Vines
  - Weeping Vines
  - Twisting Vines
- Some recipes that previously required an ingot require either a tie item or a sticky item:
  - Brush
  - Saddle
- Flint and Steel use raw iron instead of an ingot, but it requires kindling in the form of sticks. The more sticks added to the recipe, the higher the durability.
- Crafted campfires and soul campfires no longer place already lighted. They must be lit with a flint and steel.
- Shields, crossbows, and buckets are crafted with a copper ingot instead of iron.
- Completely overhauled the recipes for:
  - Blast Furnace
  - Shears
  - Clock
  - Compass
  - Tripwire Hook
  - All lanterns
  - Lodestone
  - Map
  - Smithing Table
  - Cauldron
  - Books

### Added Recipes

- String from wool or carpets. Has diminishing returns.
- Water bottles can be freely crafted to and from splash water bottles. These can be used to extinguish fires but cannot be used in brewing recipes for other splash potions.
- Nametag
- Enchantable books for the new enchanting system
- Wool clothing
  - Must be crafted from the same wool color
  - +4 armor total from a full set (compared to +7 from full leather)

## Enchanting

- Rather than at an enchanting table, all enchanting is now done through items *imbued* with enchantments (including enchanted books)
- Certain *enchantment catalyst* items can be imbued at an *enchanting altar*
  - The altar is constructed from a single block of lapis lazuli surrounded by gold, diamond, or netherite blocks
  - More valuable surrounding blocks increase the power of enchantments
  - Imbuing is carried out by holding a catalyst in the main hand and jumping on the lapis block
  - Imbuing a catalyst costs a few levels
  - There is a chance the lapis block will be destroyed, with stronger enchantments increasing the chance
  - You can find a full list of enchantments and their catalysts [here](https://github.com/kaikalii/chalcolithic/blob/main/enchantments.md)
- Imbued catalysts and enchanted books can be applied to equipment by holding the imbued item in one hand and the equipment in the other and using the imbued item. Armor must be held in the offhand to avoid equipping it instead.
  - This does not work on diamond or netherite gear.
  - Mending cannot be applied to elytra
  - Golden equipment has a high chance to increase the level of enchantments applied to it by 1

### New Enchantments
- *Darksight* for helmets shows blocks that are dark enough for mobs to spawn

## Pottery

Pottery sherds are now magical. 
- Decorated pots can be powered by placing raw iron blocks or iron ingots in them (a new sink for iron)
- A powered pot produces effects depending on its sherds
  - Some sherds provide simple AoE effects
  - Some sherds help in combat, place or break blocks, or do other complex automation tasks
- Some sherds burn fuel faster than others
- Sherd rewards in loot tables have been moved around
- Sherds can be duplicated with a crafting recipe
- You can find a full list of sherd locations and effects [here](https://github.com/kaikalii/chalcolithic/blob/main/sherds.md)

## Other Changes

### Copper
- Copper pickaxes can mine all blocks that iron pickaxes can
- Village chests contain copper ingots and equipment where they once had iron
- Village structures that generated with iron bars generate with copper bars
- Woodland mansions that generated with iron doors generate with copper doors

### Iron
- Iron cannot be smelted in any way, but raw iron has some uses.
- Iron golems are *clay* golems. They are made in the normal shape, but with clay blocks instead of iron blocks. The clay must be surrounded by mud. Clay golems drop clay balls instead of iron ingots.

### Repairing
- Equipment can be repaired by holding a corresponding repair material in one hand and the equipment in the other and holding down the use button. Armor must be held in the offhand to avoid equipping it instead.
- Enchantments are not lost
- Repair amount scales with the material as a fraction of the equipment's crafting recipe
- Each bit of repair costs 1 level of experience
- Iron and diamond gear cannot be repaired

### Buckets
- Buckets are crafted with copper and their textures are changed accordingly
- Water and lava buckets can place source blocks, but they will quickly disappear.
- Placing a water or lava bucket (including fish buckets) in a dispenser will leak the contents.

### Nametags
- Nametags can be used on a sign to change the name
- Nametags can be applied to equipment by holding the nametag in one hand and the equipment in the other and using the nametag. Armor must be held in the offhand to avoid equipping it instead.

### Items and Automation
- Copper trapdoors drain items from containers if placed on the side or underneath
- Copper golems can now pick up items from the ground and sort them
- Composters now automatically compost items dropped inside them
- Some items thrown from a player's inventory will automatically place as blocks or entities when touching the ground:
  - Torches (all kinds)
  - TNT
  - Boats
- Cookable items thrown onto campfires are automatically cooked

### Non-Violence
- "Leather" can be crafted from paper layered with a binding agent
- Chickens occasionally drop feathers
- Fish can be thrown back for a while after being caught

### Miscellaneous
- Vines have a chance to drop without using shears