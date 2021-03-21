###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Detect what items the player has equipped
#
###################################################################################

# Get player equipment to check for item updates
execute as @s run function artificer_core:player_data/get_equipment

# Clear indicator that items need to be restored
scoreboard players set $temp_7 dur.data 0

# Detect if player has mainhand or offhand items
execute as @s if data block -29999999 0 1601 Items[{Slot:0b}].tag.Damage run function artificer_durability:automatic/process/mainhand
execute as @s if data block -29999999 0 1601 Items[{Slot:1b}].tag.Damage run function artificer_durability:automatic/process/offhand

# Detect what armor pieces the player is wearing [Feet:100b,Legs:101b,Chest:102b,Head:103b]
execute as @s if data block -29999999 0 1601 Items[{Slot:2b}].tag.Damage run function artificer_durability:automatic/process/boots
execute as @s if data block -29999999 0 1601 Items[{Slot:3b}].tag.Damage run function artificer_durability:automatic/process/leggings
execute as @s if data block -29999999 0 1601 Items[{Slot:4b}].tag.Damage run function artificer_durability:automatic/process/chestplate
execute as @s if data block -29999999 0 1601 Items[{Slot:5b}].tag.Damage run function artificer_durability:automatic/process/helmet

# Reload player inventory if it was stored and adjusted
execute as @s if score $temp_7 dur.data matches 1 run function artificer_core:player_data/restore_equipment