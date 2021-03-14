###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Force inflict mainhand durability
#
###################################################################################

# Load mainhand into storage if it exists
data merge block -29999999 0 1601 {Items:[]}
data modify storage artificer_durability:temp var set from entity @s SelectedItem
data modify storage artificer_durability:temp var.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage artificer_durability:temp var
execute unless data entity @s SelectedItem run replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}

# Place mainhand into storage for data manipulation
data modify storage artificer_durability:temp object set from block -29999999 0 1601 Items[0]

# Generate new random number
function artificer_core:random/random_number

# Calculate unbreaking
scoreboard players set $temp_8 dur.data 100
scoreboard players set $temp_9 dur.data 0
execute store result score $temp_9 dur.data run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $temp_9 dur.data 1
scoreboard players operation $temp_8 dur.data /= $temp_9 dur.data

# Add item damage
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Init:1b}}}]} run function artificer_durability:durability/handle/item_init
execute if score $rand_0 ar.random <= $temp_8 dur.data positioned -29999999 0 1601 if block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Actual:0}}}]} run function artificer_durability:durability/handle/item_unbreakable
execute if score $rand_0 ar.random <= $temp_8 dur.data positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Actual:0}}}]} run function artificer_durability:durability/force_handle/item_durability
data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object

# Place offhand into storage for data manipulation
data merge block -29999999 0 1602 {Text1:'[{"translate":"item.durability","color":"#6B6B6B","italic":false,"with":[{"nbt":"Items[0].tag.Durability.Custom","block":"-29999999 0 1601","color":"#6B6B6B","italic":false},{"nbt":"Items[0].tag.Durability.CustomMax","block":"-29999999 0 1601","color":"#6B6B6B","italic":false}]}]'}
data modify block -29999999 0 1601 Items[0].tag.display.Lore[-1] set from block -29999999 0 1602 Text1

# Destroy item if broken
execute if score $out_0 dur.data matches 0 run replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}
execute at @s if score $out_0 dur.data matches 0 run playsound minecraft:entity.item.break player @s

# Restore mainhand
data remove block -29999999 0 1601 Items.[{tag:{GUI:1b}}]
loot replace entity @s weapon.mainhand 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}