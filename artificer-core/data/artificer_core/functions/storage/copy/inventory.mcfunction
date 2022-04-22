###################################################################################
#
# Author: ICY - Datapack Utilities
# Description: Store player hotbar
#
###################################################################################

data merge block -29999999 0 1601 {Items:[]}

# Row 1

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:9b}]
data modify storage artificer_core:temp var.Slot set value 0b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:9b}] run item replace block -29999999 0 1601 container.0 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:10b}]
data modify storage artificer_core:temp var.Slot set value 1b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:10b}] run item replace block -29999999 0 1601 container.1 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:11b}]
data modify storage artificer_core:temp var.Slot set value 2b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:11b}] run item replace block -29999999 0 1601 container.2 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:12b}]
data modify storage artificer_core:temp var.Slot set value 3b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:12b}] run item replace block -29999999 0 1601 container.3 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:13b}]
data modify storage artificer_core:temp var.Slot set value 4b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:13b}] run item replace block -29999999 0 1601 container.4 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:14b}]
data modify storage artificer_core:temp var.Slot set value 5b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:14b}] run item replace block -29999999 0 1601 container.5 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:15b}]
data modify storage artificer_core:temp var.Slot set value 6b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:15b}] run item replace block -29999999 0 1601 container.6 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:16b}]
data modify storage artificer_core:temp var.Slot set value 7b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:16b}] run item replace block -29999999 0 1601 container.7 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:17b}]
data modify storage artificer_core:temp var.Slot set value 8b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:17b}] run item replace block -29999999 0 1601 container.8 with minecraft:barrier{Null:1b}

#Row 2

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:18b}]
data modify storage artificer_core:temp var.Slot set value 9b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:18b}] run item replace block -29999999 0 1601 container.9 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:19b}]
data modify storage artificer_core:temp var.Slot set value 10b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:19b}] run item replace block -29999999 0 1601 container.10 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:20b}]
data modify storage artificer_core:temp var.Slot set value 11b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:20b}] run item replace block -29999999 0 1601 container.11 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:21b}]
data modify storage artificer_core:temp var.Slot set value 12b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:21b}] run item replace block -29999999 0 1601 container.12 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:22b}]
data modify storage artificer_core:temp var.Slot set value 13b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:22b}] run item replace block -29999999 0 1601 container.13 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:23b}]
data modify storage artificer_core:temp var.Slot set value 14b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:23b}] run item replace block -29999999 0 1601 container.14 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:24b}]
data modify storage artificer_core:temp var.Slot set value 15b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:24b}] run item replace block -29999999 0 1601 container.15 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:25b}]
data modify storage artificer_core:temp var.Slot set value 16b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:25b}] run item replace block -29999999 0 1601 container.16 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:26b}]
data modify storage artificer_core:temp var.Slot set value 17b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:26b}] run item replace block -29999999 0 1601 container.17 with minecraft:barrier{Null:1b}

#Row 3

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:27b}]
data modify storage artificer_core:temp var.Slot set value 18b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:27b}] run item replace block -29999999 0 1601 container.18 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:28b}]
data modify storage artificer_core:temp var.Slot set value 19b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:28b}] run item replace block -29999999 0 1601 container.19 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:29b}]
data modify storage artificer_core:temp var.Slot set value 20b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:29b}] run item replace block -29999999 0 1601 container.20 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:30b}]
data modify storage artificer_core:temp var.Slot set value 21b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:30b}] run item replace block -29999999 0 1601 container.21 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:31b}]
data modify storage artificer_core:temp var.Slot set value 22b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:31b}] run item replace block -29999999 0 1601 container.22 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:32b}]
data modify storage artificer_core:temp var.Slot set value 23b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:32b}] run item replace block -29999999 0 1601 container.23 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:33b}]
data modify storage artificer_core:temp var.Slot set value 24b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:33b}] run item replace block -29999999 0 1601 container.24 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:34b}]
data modify storage artificer_core:temp var.Slot set value 25b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:34b}] run item replace block -29999999 0 1601 container.25 with minecraft:barrier{Null:1b}

data modify storage artificer_core:temp var set from entity @s Inventory[{Slot:35b}]
data modify storage artificer_core:temp var.Slot set value 26b
data modify block -29999999 0 1601 Items append from storage artificer_core:temp var
execute unless data entity @s Inventory[{Slot:35b}] run item replace block -29999999 0 1601 container.26 with minecraft:barrier{Null:1b}


