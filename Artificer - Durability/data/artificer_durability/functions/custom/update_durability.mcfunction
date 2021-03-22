###################################################################################
#
# Author: Jevex
# Description: Get designated item and modify durability according to given parameters
#
###################################################################################

# Get item from indicated slot
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:custom/get/armor
execute as @s if score $slot du.custom matches 106 run function artificer_durability:storage/get/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:storage/get/equipment/offhand

execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:custom/get/hotbar
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:custom/get/hotbar

execute as @s if score $debug ar.data matches 1 unless score $slot du.custom matches 100..103 unless score $slot du.custom matches 106 unless score $slot du.custom matches -106 unless score $slot du.custom matches 0..8 unless score $slot du.custom matches 9..35 run tellraw @a ["",{"text":"Debug","color":"red"},{"text":" > ","bold":true},{"selector":"@s","color":"dark_aqua"},{"text":" Tried to modify invalid slot","color":"yellow"}]