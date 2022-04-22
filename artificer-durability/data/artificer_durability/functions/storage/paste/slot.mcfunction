
# Restore inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:storage/paste/hotbar
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:storage/paste/inventory

execute as @s if score $slot du.custom matches 106 run function artificer_durability:storage/paste/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:storage/paste/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:storage/paste/armor