###################################################################################
#
# Author: ICY - Datapack Utilities
# Description: Store player equipment
#
###################################################################################

data merge block -29999999 0 1601 {Items:[]}

data modify storage mythic:temp var set from entity @s SelectedItem
data modify storage mythic:temp var.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s SelectedItem run replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}

data modify storage mythic:temp var set from entity @s Inventory[{Slot:-106b}]
data modify storage mythic:temp var.Slot set value 1b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s Inventory[{Slot:-106b}] run replaceitem block -29999999 0 1601 container.1 minecraft:barrier{GUI:1b}

data modify storage mythic:temp var set from entity @s Inventory[{Slot:100b}]
data modify storage mythic:temp var.Slot set value 2b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s Inventory[{Slot:100b}] run replaceitem block -29999999 0 1601 container.2 minecraft:leather_boots{GUI:1b}

data modify storage mythic:temp var set from entity @s Inventory[{Slot:101b}]
data modify storage mythic:temp var.Slot set value 3b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s Inventory[{Slot:101b}] run replaceitem block -29999999 0 1601 container.3 minecraft:leather_leggings{GUI:1b}

data modify storage mythic:temp var set from entity @s Inventory[{Slot:102b}]
data modify storage mythic:temp var.Slot set value 4b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s Inventory[{Slot:102b}] run replaceitem block -29999999 0 1601 container.4 minecraft:leather_chestplate{GUI:1b}

data modify storage mythic:temp var set from entity @s Inventory[{Slot:103b}]
data modify storage mythic:temp var.Slot set value 5b
data modify block -29999999 0 1601 Items append from storage mythic:temp var
execute unless data entity @s Inventory[{Slot:103b}] run replaceitem block -29999999 0 1601 container.5 minecraft:barrier{GUI:1b}