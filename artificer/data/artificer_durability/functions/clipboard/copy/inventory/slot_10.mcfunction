#> artificer_durability:clipboard/copy/inventory/slot_10
#
#> Description 
#   Store item in Slot 10 to artificer durability storage

data merge storage artificer_durability:temp {object: {id: "minecraft:barrier", tag: {Null: 1b}}}
data modify storage artificer_durability:clipboard Item set from entity @s Inventory[{Slot: 10b}]
