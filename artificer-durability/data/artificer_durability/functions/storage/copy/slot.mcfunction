

# Get inventory item
execute as @s if score $slot du.custom matches 0..8 run function artificer_durability:storage/copy/hotbar
execute as @s if score $slot du.custom matches 9..35 run function artificer_durability:storage/copy/inventory

# Get equipment item
execute as @s if score $slot du.custom matches 106 run function artificer_durability:storage/copy/equipment/mainhand
execute as @s if score $slot du.custom matches -106 run function artificer_durability:storage/copy/equipment/offhand
execute as @s if score $slot du.custom matches 100..103 run function artificer_durability:storage/copy/armor