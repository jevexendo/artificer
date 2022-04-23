#> artificer_durability:clipboard/paste/slot
#
#> Description
#   Paste item into designated slot

# Paste inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:clipboard/paste/hotbar_slot
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:clipboard/paste/inventory_slot

# Paste equipment item
execute as @s if score $slot du.custom matches 106 run function artificer_durability:clipboard/paste/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:clipboard/paste/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:clipboard/paste/armor_slot
