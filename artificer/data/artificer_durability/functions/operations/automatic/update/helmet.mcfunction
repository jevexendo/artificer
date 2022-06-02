#> artificer_durability:operations/automatic/update/helmet
#
#> Description
#   Update helmet durability

#Indicate items have been modified and need to be restored
scoreboard players set $restore_inv du.status 1

# Place helmet into storage for data manipulation
data modify storage artificer_durability:clipboard Item set from block -29999999 0 1601 Items[5]

# Initialize item if necessary
execute unless data storage artificer_durability:clipboard Item.tag.Durability{Init:1b} run function artificer_durability:operations/general/handle_init

# Update durability values
function artificer_durability:operations/automatic/update_durability

# If item is not broken update lore
execute if score $out_0 du.data matches 0 run function artificer_durability:operations/general/handle_lore

# Store item back in shulker box to finalize update
data modify block -29999999 0 1601 Items[5] set from storage artificer_durability:clipboard Item

# Destroy item if broken
execute if score $out_0 du.data matches 1 run item replace block -29999999 0 1601 container.5 with minecraft:barrier{Null: 1b}
execute at @s if score $out_0 du.data matches 1 run playsound minecraft:entity.item.break player @s
