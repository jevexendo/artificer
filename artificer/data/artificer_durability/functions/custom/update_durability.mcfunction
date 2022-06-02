###################################################################################
#
# Author: Jevex
# Description: Get designated item and modify durability according to given parameters
#
###################################################################################

# Get equipment item
execute as @s if score $slot du.custom matches 106 run function artificer_durability:storage/get/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:storage/get/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:custom/get/armor

# Get inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:custom/get/hotbar
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:custom/get/inventory

# DEBUG MESSAGE
#execute as @s if score $debug ar.data matches 1.. unless score $slot du.custom matches 100..103 unless score $slot du.custom matches 106 unless score $slot du.custom matches -106 unless score $slot du.custom matches 0..8 unless score $slot du.custom matches 9..35 run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" tried to modify durability of invalid slot: ","color":"yellow"},{"score":{"name":"$slot","objective":"du.custom"},"color":"gold"},{"text":"b","color":"gold"}]
execute as @s if score @s ar.debug matches 1.. run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Updating durability of item in slot: ","color":"yellow"},{"score":{"name":"$slot","objective":"du.custom"},"color":"gold"},{"text":"b","color":"gold"}]



# Initialize item if necessary
execute store result score $temp_0 du.data run data get storage artificer_durability:temp object.tag.Durability.Init
execute unless score $temp_0 du.data matches 1 run function artificer_durability:operations/general/handle_init

# Update durability values
function artificer_durability:operations/custom/update_durability

# DEBUG MESSAGE
execute as @s if score @s ar.debug matches 2.. run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Item broken: ","color":"yellow"},{"score":{"name":"$out_0","objective":"du.data"},"color":"gold"},{"text":"b","color":"gold"}]

# If item is not broken update lore
execute if score $out_0 du.data matches 0 run function artificer_durability:operations/general/handle_lore

# Destroy item if broken
execute if score $out_0 du.data matches 1 run data merge storage artificer_durability:temp {object:{id:"minecraft:barrier",tag:{GUI:1b}}}
execute at @s if score $out_0 du.data matches 1 run playsound minecraft:entity.item.break player @s



# Restore equipment item
execute as @s if score $slot du.custom matches 106 run function artificer_durability:storage/restore/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:storage/restore/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:custom/restore/armor

# Restore inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:custom/restore/hotbar
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:custom/restore/inventory

# If keep settings is false, reset settings
execute if score $keep_settings du.custom matches 0 run function artificer_durability:custom/reset_settings