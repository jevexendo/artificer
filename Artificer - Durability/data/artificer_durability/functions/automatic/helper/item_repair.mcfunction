###################################################################################
#
# Author: Jevex
# Description: Trigger repairing an item and updating it
#
###################################################################################

# Clear repair trigger
scoreboard players operation @s dur.repair = @s dur.itemRepair
scoreboard players set @s dur.itemRepair 0

# Place mainhand into storage for data manipulation
data modify block -29999999 0 1601 Items append from entity @s SelectedItem
execute unless data entity @s SelectedItem run replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}
data modify storage artificer_durability:temp object set from block -29999999 0 1601 Items[0]

# Tepair item
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Init:1b}}}]} run function artificer_durability:automatic/handle/item_init
execute positioned -29999999 0 1601 if block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Actual:0}}}]} run function artificer_durability:automatic/handle/item_unbreakable
execute positioned -29999999 0 1601 unless block ~ ~ ~ green_shulker_box{Items:[{Slot:0b,tag:{Durability:{Actual:0}}}]} run function artificer_durability:automatic/handle/item_durability
data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object

# Place offhand into storage for data manipulation
data merge block -29999999 0 1602 {Text1:'[{"translate":"item.durability","color":"#6B6B6B","italic":false,"with":[{"nbt":"Items[0].tag.Durability.Custom","block":"-29999999 0 1601","color":"#6B6B6B","italic":false},{"nbt":"Items[0].tag.Durability.CustomMax","block":"-29999999 0 1601","color":"#6B6B6B","italic":false}]}]'}
data modify block -29999999 0 1601 Items[0].tag.display.Lore[-1] set from block -29999999 0 1602 Text1

# Destroy item if broken
execute if score $out_0 dur.data matches 0 run replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}
execute at @s if score $out_0 dur.data matches 0 run playsound minecraft:entity.item.break player @s

# Return item to player
data remove block -29999999 0 1601 Items.[{tag:{GUI:1b}}]
loot replace entity @s weapon.mainhand 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}