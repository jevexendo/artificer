#> artificer_durability:clipboard/copy/inventory/slot_27
#
#> Description 
#   Store item in Slot 27 to artificer durability storage

data merge storage artificer_durability:temp {object: {id: "minecraft:barrier", tag: {Null: 1b}}}
data modify storage artificer_durability:clipboard Item set from entity @s Inventory[{Slot: 27b}]
