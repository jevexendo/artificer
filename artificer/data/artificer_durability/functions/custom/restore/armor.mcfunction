###################################################################################
#
# Author: Jevex
# Description: Restore armor item
#
###################################################################################

# Restore targeted armor piece
execute as @s if score $slot du.custom matches 100 run function artificer_durability:storage/restore/equipment/boots
execute as @s if score $slot du.custom matches 101 run function artificer_durability:storage/restore/equipment/leggings
execute as @s if score $slot du.custom matches 102 run function artificer_durability:storage/restore/equipment/chestplate
execute as @s if score $slot du.custom matches 103 run function artificer_durability:storage/restore/equipment/helmet