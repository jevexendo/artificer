#> artificer_durability:operations/automatic/detect/root
#
#> Description
#   Detect what items the player has equipped

# Get player equipment to check for item updates
execute as @s run function artificer_core:storage/copy/equipment

# Clear indicator that items need to be restored
scoreboard players set $restore_inv du.status 0

# Detect if player has mainhand or offhand items
execute as @s if data block -29999999 0 1601 Items[{Slot: 0b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_mainhand
execute as @s if data block -29999999 0 1601 Items[{Slot: 1b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_offhand

# Detect what armor pieces the player is wearing [Feet:100b,Legs:101b,Chest:102b,Head:103b]
execute as @s if data block -29999999 0 1601 Items[{Slot: 2b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_boots
execute as @s if data block -29999999 0 1601 Items[{Slot: 3b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_leggings
execute as @s if data block -29999999 0 1601 Items[{Slot: 4b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_chestplate
execute as @s if data block -29999999 0 1601 Items[{Slot: 5b}].tag.Damage run function artificer_durability:operations/automatic/detect/has_helmet

# Reload player inventory if it was stored and adjusted
execute as @s if score $restore_inv du.status matches 1 run function artificer_core:storage/paste/equipment
