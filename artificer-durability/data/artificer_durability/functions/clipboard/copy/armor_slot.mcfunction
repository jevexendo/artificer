#> artificer_durability:clipboard/copy/armor_slot
#
#> Description 
#   Get targeted armor piece

execute as @s if score $slot du.custom matches 100 run function artificer_durability:clipboard/copy/equipment/boots
execute as @s if score $slot du.custom matches 101 run function artificer_durability:clipboard/copy/equipment/leggings
execute as @s if score $slot du.custom matches 102 run function artificer_durability:clipboard/copy/equipment/chestplate
execute as @s if score $slot du.custom matches 103 run function artificer_durability:clipboard/copy/equipment/helmet
