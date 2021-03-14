###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Update leggings durability
#
###################################################################################

# Load items into storage if not already there
execute if score $temp_7 dur.data matches 0 run function artificer_core:player_data/get_equipment
scoreboard players set $temp_7 dur.data 1

# Place leggings into storage for data manipulation
data modify storage artificer_durability:temp object set from block -29999999 0 1601 Items[3]
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:3b,tag:{Durability:{Init:1b}} }]} run function artificer_durability:durability/handle_item_init
execute positioned -29999999 0 1601 if block ~ ~ ~ green_shulker_box{Items:[{Slot:3b,tag:{Durability:{Actual:0}} }]} run function artificer_durability:durability/handle_item_unbreakable
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:3b,tag:{Durability:{Actual:0}} }]} run function artificer_durability:durability/handle_item_durability
data modify block -29999999 0 1601 Items[3] set from storage artificer_durability:temp object

# Place offhand into storage for data manipulation
data merge block -29999999 0 1602 {Text1:'[{"translate":"item.durability","color":"#6B6B6B","italic":false,"with":[{"nbt":"Items[3].tag.Durability.Custom","block":"-29999999 0 1601","color":"#6B6B6B","italic":false},{"nbt":"Items[3].tag.Durability.CustomMax","block":"-29999999 0 1601","color":"#6B6B6B","italic":false}]}]'}
data modify block -29999999 0 1601 Items[3].tag.display.Lore[-1] set from block -29999999 0 1602 Text1

# Destroy item if broken
execute if score $out_0 dur.data matches 0 run replaceitem block -29999999 0 1601 container.3 minecraft:leather_leggings{GUI:1b}
execute at @s if score $out_0 dur.data matches 0 run playsound minecraft:entity.item.break player @s
