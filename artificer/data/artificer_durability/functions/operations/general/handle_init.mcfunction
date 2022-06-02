###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Initialize item custom durability attributes if unset
# Note: Operates on whatever item is stored in "artificer_durability:temp" object
#
###################################################################################

# Indicate item has been processed
data modify storage artificer_durability:temp object.tag.Durability.Init set value 1b

# Set default initialization values
data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1
data modify storage artificer_durability:temp object.tag.Durability.Damage set value 0

# Set weapon and tool base durability
execute if data storage artificer_durability:temp object{id:"minecraft:golden_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 32
execute if data storage artificer_durability:temp object{id:"minecraft:golden_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 32
execute if data storage artificer_durability:temp object{id:"minecraft:golden_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 32
execute if data storage artificer_durability:temp object{id:"minecraft:golden_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 32
execute if data storage artificer_durability:temp object{id:"minecraft:golden_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 32

execute if data storage artificer_durability:temp object{id:"minecraft:wooden_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 59
execute if data storage artificer_durability:temp object{id:"minecraft:wooden_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 59
execute if data storage artificer_durability:temp object{id:"minecraft:wooden_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 59
execute if data storage artificer_durability:temp object{id:"minecraft:wooden_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 59
execute if data storage artificer_durability:temp object{id:"minecraft:wooden_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 59

execute if data storage artificer_durability:temp object{id:"minecraft:stone_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 131
execute if data storage artificer_durability:temp object{id:"minecraft:stone_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 131
execute if data storage artificer_durability:temp object{id:"minecraft:stone_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 131
execute if data storage artificer_durability:temp object{id:"minecraft:stone_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 131
execute if data storage artificer_durability:temp object{id:"minecraft:stone_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 131

execute if data storage artificer_durability:temp object{id:"minecraft:iron_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250
execute if data storage artificer_durability:temp object{id:"minecraft:iron_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250
execute if data storage artificer_durability:temp object{id:"minecraft:iron_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250
execute if data storage artificer_durability:temp object{id:"minecraft:iron_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250
execute if data storage artificer_durability:temp object{id:"minecraft:iron_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250

execute if data storage artificer_durability:temp object{id:"minecraft:diamond_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561

execute if data storage artificer_durability:temp object{id:"minecraft:netherite_sword"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 2031
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_pickaxe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 2031
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_axe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 2031
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_shovel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 2031
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_hoe"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 2031

# Set armor durability
execute if data storage artificer_durability:temp object{id:"minecraft:leather_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 55
execute if data storage artificer_durability:temp object{id:"minecraft:leather_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 80
execute if data storage artificer_durability:temp object{id:"minecraft:leather_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 75
execute if data storage artificer_durability:temp object{id:"minecraft:leather_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 65

execute if data storage artificer_durability:temp object{id:"minecraft:golden_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 77
execute if data storage artificer_durability:temp object{id:"minecraft:golden_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 112
execute if data storage artificer_durability:temp object{id:"minecraft:golden_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 105
execute if data storage artificer_durability:temp object{id:"minecraft:golden_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 91

execute if data storage artificer_durability:temp object{id:"minecraft:chainmail_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 165
execute if data storage artificer_durability:temp object{id:"minecraft:chainmail_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 240
execute if data storage artificer_durability:temp object{id:"minecraft:chainmail_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 225
execute if data storage artificer_durability:temp object{id:"minecraft:chainmail_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 195

execute if data storage artificer_durability:temp object{id:"minecraft:iron_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 165
execute if data storage artificer_durability:temp object{id:"minecraft:iron_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 240
execute if data storage artificer_durability:temp object{id:"minecraft:iron_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 225
execute if data storage artificer_durability:temp object{id:"minecraft:iron_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 195

execute if data storage artificer_durability:temp object{id:"minecraft:diamond_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 363
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 528
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 495
execute if data storage artificer_durability:temp object{id:"minecraft:diamond_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 429

execute if data storage artificer_durability:temp object{id:"minecraft:netherite_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 407
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_chestplate"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 592
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_leggings"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 555
execute if data storage artificer_durability:temp object{id:"minecraft:netherite_boots"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 481

# Set miscellaneous durability
execute if data storage artificer_durability:temp object{id:"minecraft:fishing_rod"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 64
execute if data storage artificer_durability:temp object{id:"minecraft:warped_fungus_on_a_stick"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 100
execute if data storage artificer_durability:temp object{id:"minecraft:flint_and_steel"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 64
execute if data storage artificer_durability:temp object{id:"minecraft:carrot_on_a_stick"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 25
execute if data storage artificer_durability:temp object{id:"minecraft:shears"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 238
execute if data storage artificer_durability:temp object{id:"minecraft:shield"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 336
execute if data storage artificer_durability:temp object{id:"minecraft:bow"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 384
execute if data storage artificer_durability:temp object{id:"minecraft:trident"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 250
execute if data storage artificer_durability:temp object{id:"minecraft:elytra"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 1561
execute if data storage artificer_durability:temp object{id:"minecraft:crossbow"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 326
execute if data storage artificer_durability:temp object{id:"minecraft:turtle_helmet"} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 275
execute if data storage artificer_durability:temp object{tag:{Unbreakable:1b}} run data modify storage artificer_durability:temp object.tag.Durability.ActualMax set value 0

# If custom durability settings are not included, assign default parameters
execute unless data storage artificer_durability:temp object.tag.Durability.CustomMax run data modify storage artificer_durability:temp object.tag.Durability.CustomMax set from storage artificer_durability:temp object.tag.Durability.ActualMax
execute unless data storage artificer_durability:temp object.tag.Durability.Custom run data modify storage artificer_durability:temp object.tag.Durability.Custom set from storage artificer_durability:temp object.tag.Durability.CustomMax

# Store durability values to scoreboard
execute store result score $temp_0 du.data run data get storage artificer_durability:temp object.tag.Durability.Custom
execute store result score $temp_1 du.data run data get storage artificer_durability:temp object.tag.Durability.CustomMax

# Assign item lore to indicate durability
data merge block -29999999 0 1602 {Text1:'[{"text":" "}]',Text2:'[{"text":"Durability: ","color":"#6B6B6B","italic":false},{"score":{"name":"$temp_0","objective":"du.data"},"color":"#6B6B6B","italic":false},{"text":" / ","color":"#6B6B6B","italic":false},{"score":{"name":"$temp_1","objective":"du.data"},"color":"#6B6B6B","italic":false}]'}
execute unless data storage artificer_durability:temp object.tag.display.Lore run data modify storage artificer_durability:temp object.tag.display.Lore set value []
data modify storage artificer_durability:temp object.tag.display.Lore append from block -29999999 0 1602 Text1
data modify storage artificer_durability:temp object.tag.display.Lore append from block -29999999 0 1602 Text2