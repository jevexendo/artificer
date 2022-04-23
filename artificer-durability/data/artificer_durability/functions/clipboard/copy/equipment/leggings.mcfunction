#> artificer_durability:clipboard/copy/equipment/leggings
#
#> Description 
#   Store item in Leggings (Slot 101) to artificer durability storage

data merge storage artificer_durability:temp {object: {id: "minecraft:barrier", tag: {Null: 1b}}}
data modify storage artificer_durability:clipboard Item set from entity @s Inventory[{Slot: 101b}]
