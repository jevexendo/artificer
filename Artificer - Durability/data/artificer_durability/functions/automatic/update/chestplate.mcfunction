###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Update chestplate durability
#
###################################################################################

#Indicate items have been modified and need to be restored
scoreboard players set $restore_inv dur.status 1

# Place chestplate into storage for data manipulation
data modify storage artificer_durability:temp object set from block -29999999 0 1601 Items[4]

# Initialize item if necessary
execute store result score $temp_0 dur.data run data get storage artificer_durability:temp object.tag.Durability.Init
execute unless score $temp_0 dur.data matches 1 run function artificer_durability:operations/general/handle_init

# Update durability values
function artificer_durability:operations/automatic/update_durability

# If item is not broken update lore
execute if score $out_0 dur.data matches 0 run function artificer_durability:operations/general/handle_lore

# Store item back in shulker box to finalize update
data modify block -29999999 0 1601 Items[4] set from storage artificer_durability:temp object

# Destroy item if broken
execute if score $out_0 dur.data matches 1 run replaceitem block -29999999 0 1601 container.4 minecraft:barrier{GUI:1b}
execute at @s if score $out_0 dur.data matches 1 run playsound minecraft:entity.item.break player @s