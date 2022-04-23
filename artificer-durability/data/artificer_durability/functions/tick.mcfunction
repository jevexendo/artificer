#> artificer_durability:tick
#
#> Description: 
#   Run regular module operations

# Check if inventory was updated, if so then determine if item durability needs to be updated
execute as @a[advancements={artificer_core:player/inventory_changed=true}] run function artificer_durability:operations/automatic/detect/root

# Schedule this function
schedule function artificer_durability:tick 1t
