#> artificer_durability:clipboard/paste/armor_slot
#
#> Description
#   Restore targeted armor piece

execute as @s if score $slot du.custom matches 100 run function artificer_durability:clipboard/paste/equipment/boots
execute as @s if score $slot du.custom matches 101 run function artificer_durability:clipboard/paste/equipment/leggings
execute as @s if score $slot du.custom matches 102 run function artificer_durability:clipboard/paste/equipment/chestplate
execute as @s if score $slot du.custom matches 103 run function artificer_durability:clipboard/paste/equipment/helmet
