###################################################################################
#
# Author: Jevex
# Description: Restore hotbar item
#
###################################################################################

# Restore targeted hotbar item
execute as @s if score $slot du.custom matches 0 run function artificer_durability:storage/restore/hotbar/slot_0
execute as @s if score $slot du.custom matches 1 run function artificer_durability:storage/restore/hotbar/slot_1
execute as @s if score $slot du.custom matches 2 run function artificer_durability:storage/restore/hotbar/slot_2
execute as @s if score $slot du.custom matches 3 run function artificer_durability:storage/restore/hotbar/slot_3
execute as @s if score $slot du.custom matches 4 run function artificer_durability:storage/restore/hotbar/slot_4
execute as @s if score $slot du.custom matches 5 run function artificer_durability:storage/restore/hotbar/slot_5
execute as @s if score $slot du.custom matches 6 run function artificer_durability:storage/restore/hotbar/slot_6
execute as @s if score $slot du.custom matches 7 run function artificer_durability:storage/restore/hotbar/slot_7
execute as @s if score $slot du.custom matches 8 run function artificer_durability:storage/restore/hotbar/slot_8