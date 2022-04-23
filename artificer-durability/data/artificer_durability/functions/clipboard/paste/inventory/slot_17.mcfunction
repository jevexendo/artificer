#> artificer_durability:clipboard/paste/inventory/slot_17
#
#> Description 
#   Store item to Slot 17 from artificer durability storage

item replace block -29999999 0 1601 container.0 with minecraft:barrier{Null: 1b}
data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:clipboard Item
data remove block -29999999 0 1601 Items.[{tag: {Null: 1b}}]
loot replace entity @s inventory.8 1 mine -29999999 0 1601 minecraft:air{drop_contents: 1b}
