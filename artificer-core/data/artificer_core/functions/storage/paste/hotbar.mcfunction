#> artificer_core:storage/paste/hotbar
#
#> Description
#   Restore player hotbar

data remove block -29999999 0 1601 Items.[{tag: {Null: 1b}}]
loot replace entity @s hotbar.0 mine -29999999 0 1601 minecraft:air{drop_contents: 1b}
