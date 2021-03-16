###################################################################################
#
# Author: Jevex
# Description: Game loop function that handles Artificer - Durability operations
#
###################################################################################

# Check if inventory was updated, if so then determine if item durability needs to be updated
execute as @a[advancements={artificer_core:player/inventory_changed=true}] run function artificer_durability:durability/handle/item_detection

# Run helper functions if triggers were used
execute as @a[scores={dur.itemDamage=1..}] run function artificer_durability:durability/helper/item_damage
execute as @a[scores={dur.itemInit=1..}] run function artificer_durability:durability/helper/item_init
execute as @a[scores={dur.itemRepair=1..}] run function artificer_durability:durability/helper/item_repair


# Give player trigger access if in admin mode
scoreboard players set @a dur.itemDamage 0
scoreboard players set @a dur.itemInit 0
scoreboard players set @a dur.itemRepair 0

execute as @a[predicate=artificer_core:player_state/admin_mode] run scoreboard players enable @s dur.itemDamage
execute as @a[predicate=artificer_core:player_state/admin_mode] run scoreboard players enable @s dur.itemInit
execute as @a[predicate=artificer_core:player_state/admin_mode] run scoreboard players enable @s dur.itemRepair

# Schedule this function
schedule function artificer_durability:tick 1t