###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Detect what items the player has equipped
#
###################################################################################

# Set flag to indicate player needs to have inventory stored if necessary
scoreboard players set $temp_7 dur.data 0

# Detect if player has mainhand or offhand items
execute as @s if data entity @s SelectedItem.Count run function artificer_durability:durability/process/mainhand
execute as @s if data entity @s Inventory[{Slot:-106b}].Count run function artificer_durability:durability/process/offhand

# Detect what armor pieces the player is wearing
execute as @s if data entity @s Inventory[{Slot:100b}].Count run function artificer_durability:durability/process/boots
execute as @s if data entity @s Inventory[{Slot:101b}].Count run function artificer_durability:durability/process/leggings
execute as @s if data entity @s Inventory[{Slot:102b}].Count run function artificer_durability:durability/process/chestplate
execute as @s if data entity @s Inventory[{Slot:103b}].Count run function artificer_durability:durability/process/helmet

# Reload player inventory if it was stored and adjusted
execute as @s if score $temp_7 dur.data matches 1 run function artificer_core:player_data/restore_equipment