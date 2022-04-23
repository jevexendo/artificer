#> artificer_core:storage/paste/ender_chest
#
#> Description
#   Restore player ender chest

data remove block -29999999 0 1601 Items.[{tag: {Null: 1b}}]
loot replace entity @s enderchest.0 mine -29999999 0 1601 minecraft:air{drop_contents: 1b}
