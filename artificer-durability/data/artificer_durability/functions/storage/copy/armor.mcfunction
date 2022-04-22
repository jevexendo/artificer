###################################################################################
#
# Author: Jevex
# Description: Get armor item
#
###################################################################################

# Get targeted armor piece
execute as @s if score $slot du.custom matches 100 run function artificer_durability:storage/copy/equipment/boots
execute as @s if score $slot du.custom matches 101 run function artificer_durability:storage/copy/equipment/leggings
execute as @s if score $slot du.custom matches 102 run function artificer_durability:storage/copy/equipment/chestplate
execute as @s if score $slot du.custom matches 103 run function artificer_durability:storage/copy/equipment/helmet