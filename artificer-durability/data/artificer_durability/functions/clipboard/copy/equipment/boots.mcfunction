#> artificer_durability:clipboard/copy/equipment/boots
#
#> Description 
#   Store item in Boots (Slot 100) to artificer durability storage

data merge storage artificer_durability:temp {object: {id: "minecraft:barrier", tag: {Null: 1b}}}
data modify storage artificer_durability:clipboard Item set from entity @s Inventory[{Slot: 100b}]
