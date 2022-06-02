#> artificer_durability:clipboard/copy/slot
#
#> Description
#   Copy item from designated slot

# Copy inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:clipboard/copy/hotbar_slot
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:clipboard/copy/inventory_slot

# Copy equipment item
execute as @s if score $slot du.custom matches 106 run function artificer_durability:clipboard/copy/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:clipboard/copy/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:clipboard/copy/armor_slot
