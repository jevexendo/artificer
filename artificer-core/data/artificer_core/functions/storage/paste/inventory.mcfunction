#> artificer_core:storage/paste/inventory
#
#> Description
#   Restore player inventory

data remove block -29999999 0 1601 Items.[{tag: {Null: 1b}}]
loot replace entity @s inventory.0 mine -29999999 0 1601 minecraft:air{drop_contents: 1b}
