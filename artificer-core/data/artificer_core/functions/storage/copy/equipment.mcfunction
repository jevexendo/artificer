###################################################################################
#
# Author: ICY - Datapack Utilities
# Description: Store player equipment
#
###################################################################################

data merge block -29999999 0 1601 {Items:[]}

data modify storage artificer_core:temp var set from entity @s SelectedItem
data modify storage artificer_core:temp var.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s SelectedItem run item replace block -29999999 0 1601 container.0 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:-106b}]
data modify storage artificer_core:temp var.Slot set value 1b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:-106b}] run item replace block -29999999 0 1601 container.1 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:100b}]
data modify storage artificer_core:temp var.Slot set value 2b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:100b}] run item replace block -29999999 0 1601 container.2 with minecraft:leather_boots{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:101b}]
data modify storage artificer_core:temp var.Slot set value 3b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:101b}] run item replace block -29999999 0 1601 container.3 with minecraft:leather_leggings{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:102b}]
data modify storage artificer_core:temp var.Slot set value 4b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:102b}] run item replace block -29999999 0 1601 container.4 with minecraft:leather_chestplate{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:103b}]
data modify storage artificer_core:temp var.Slot set value 5b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:103b}] run item replace block -29999999 0 1601 container.5 with minecraft:barrier{Null:1b}