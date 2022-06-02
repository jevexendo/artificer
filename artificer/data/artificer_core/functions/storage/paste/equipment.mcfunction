#> artificer_core:storage/paste/equipment
#
#> Description
#   Restore player equipment

data remove block -29999999 0 1601 Items.[{tag: {Null: 1b}}]
loot replace entity @s weapon.mainhand mine -29999999 0 1601 minecraft:air{drop_contents: 1b}
